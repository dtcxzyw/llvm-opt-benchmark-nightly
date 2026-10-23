Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/extract_cells?download=true
inline.NumInlined: 3670
inline.NumDeleted: 1517
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EE:bb.a

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i, %bb.e
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.t, %bb.e ], [ %i.al, %bb.g ], [ %i.y, %._crit_edge.i.i.i.i ]
  %i.am = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  %i.an = icmp slt i64 %i.s, %i.e
  br i1 %i.an, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.h
  %i.ao = sub i64 %i.e, %i.s                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ao, 8
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader2211, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec = and i64 %i.ao, -8                      ; 3 uses
  %i.ap = add i64 %i.s, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.am, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.o, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi2089 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.au, %vector.body ]
  %i.ar = getelementptr [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <4 x i32>, ptr %i.ar, align 4, !tbaa !50
  %wide.load2090 = load <4 x i32>, ptr %i.as, align 4, !tbaa !50
  %i.at = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.au = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi2089, <4 x i32> %wide.load2090) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !268

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.at, <4 x i32> %i.au)
  %i.aw = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader2211

.lr.ph84.i.i.i.i.preheader2211:                   ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.s, %.lr.ph84.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.am, %.lr.ph84.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader2211, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.ba, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader2211 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.az, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader2211 ]
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.o, i64 %.05582.i.i.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !50
  %i.az = tail call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.ay) ; 2 uses
  %i.ba = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ba, %i.e
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !269

bb.i:                                             ; preds = %bb.d
  %i.bb = load i32, ptr %i.o, align 4, !tbaa !50  ; 3 uses
  %i.bc = icmp sgt i64 %i.e, 1
  br i1 %i.bc, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.i
  %i.bd = add nsw i64 %i.e, -1                    ; 2 uses
  %min.iters.check2092 = icmp ult i64 %i.e, 9
  br i1 %min.iters.check2092, label %.lr.ph89.i.i.i.i.preheader2207, label %vector.ph2093

vector.ph2093:                                    ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec2094 = and i64 %i.bd, -8                  ; 3 uses
  %i.be = or disjoint i64 %n.vec2094, 1
  %broadcast.splatinsert2095 = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat2096 = shufflevector <4 x i32> %broadcast.splatinsert2095, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2097

vector.body2097:                                  ; preds = %vector.body2097, %vector.ph2093
  %index2098 = phi i64 [ 0, %vector.ph2093 ], [ %index.next2103, %vector.body2097 ] ; 2 uses
  %vec.phi2099.a = phi <4 x i32> [ %broadcast.splat2096, %vector.ph2093 ], [ %i.bi, %vector.body2097 ]
  %vec.phi2100 = phi <4 x i32> [ %broadcast.splat2096, %vector.ph2093 ], [ %i.bj, %vector.body2097 ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index2098 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %wide.load2101.a = load <4 x i32>, ptr %i.bg, align 4, !tbaa !50
  %wide.load2102 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !50
  %i.bi = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi2099.a, <4 x i32> %wide.load2101.a) ; 2 uses
  %i.bj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi2100, <4 x i32> %wide.load2102) ; 2 uses
  %index.next2103 = add nuw i64 %index2098, 8     ; 2 uses
  %i.bk = icmp eq i64 %index.next2103, %n.vec2094
  br i1 %i.bk, label %middle.block2104, label %vector.body2097, !llvm.loop !270

middle.block2104:                                 ; preds = %vector.body2097
  %rdx.minmax2105 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bi, <4 x i32> %i.bj)
  %i.bl = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax2105) ; 2 uses
  %cmp.n2106 = icmp eq i64 %i.bd, %n.vec2094
  br i1 %cmp.n2106, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader2207

.lr.ph89.i.i.i.i.preheader2207:                   ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block2104
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.be, %middle.block2104 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.bb, %.lr.ph89.i.i.i.i.preheader ], [ %i.bl, %middle.block2104 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader2207, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.bp, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader2207 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.bo, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader2207 ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.087.i.i.i.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !50
  %i.bo = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.bn) ; 2 uses
  %i.bp = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.bp, %i.e
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !271

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %middle.block2104, %bb.h, %bb.i
  %.3.i.i.i.i = phi i32 [ %i.bo, %.lr.ph89.i.i.i.i ], [ %i.bb, %bb.i ], [ %i.am, %bb.h ], [ %i.bl, %middle.block2104 ], [ %i.aw, %middle.block ], [ %i.az, %.lr.ph84.i.i.i.i ]
  %i.bq = add i32 %.3.i.i.i.i, 1                  ; 2 uses
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %i.bs = invoke noundef i32 @_ZN3igl8copyleft4cgal30extract_cells_single_componentIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SM_EEiRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERNS3_15PlainObjectBaseIT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %.noexc.i unwind label %bb.l   ; 4 uses

.noexc.i:                                         ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  store ptr %i.bt, ptr %26, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 30, ptr %i.c, align 8, !tbaa !60
  %i.bu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.bu, ptr %26, align 8, !tbaa !62
  %i.bv = load i64, ptr %i.c, align 8, !tbaa !60  ; 3 uses
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.bu, ptr noundef nonnull align 1 dereferenceable(30) @.str.22, i64 30, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !63
  %i.bx = load ptr, ptr %26, align 8, !tbaa !62
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bv
  store i8 0, ptr %i.by, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.bz = load ptr, ptr %26, align 8, !tbaa !62   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bt
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  %i.cb = load i64, ptr %i.bt, align 8, !tbaa !56
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl27triangle_triangle_adjacencyIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_S3_iiEEvRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EEbRSt6vectorISH_ISH_IT2_SaISI_EESaISK_EESaISM_EERSH_ISH_ISH_IT3_SaISQ_EESaISS_EESaISU_EE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %28)
          to label %.noexc.i262 unwind label %bb.m

.noexc.i262:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  store ptr %i.cd, ptr %29, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 22, ptr %i.b, align 8, !tbaa !60
  %i.ce = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc263 unwind label %bb.m  ; 2 uses

.noexc263:                                        ; preds = %.noexc.i262
  store ptr %i.ce, ptr %29, align 8, !tbaa !62
  %i.cf = load i64, ptr %i.b, align 8, !tbaa !60  ; 3 uses
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.ce, ptr noundef nonnull align 1 dereferenceable(22) @.str.23, i64 22, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !63
  %i.ch = load ptr, ptr %29, align 8, !tbaa !62
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cf
  store i8 0, ptr %i.ci, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.cj = load ptr, ptr %29, align 8, !tbaa !62   ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.cd
  br i1 %i.ck, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265: ; preds = %.noexc263
  %i.cl = load i64, ptr %i.cd, align 8, !tbaa !56
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i266: ; preds = %.noexc263, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl16facet_componentsIiN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_EEvRKSt6vectorIS4_IS4_IT_SaIS5_EESaIS7_EESaIS9_EERNS1_15PlainObjectBaseIT0_EERNSE_IT1_EE(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i266
  %i.cn = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  store ptr %i.cn, ptr %32, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.cn, ptr noundef nonnull align 1 dereferenceable(15) @.str.24, i64 15, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 15, ptr %i.co, align 8, !tbaa !63
  %i.cp = getelementptr inbounds nuw i8, ptr %32, i64 31
  store i8 0, ptr %i.cp, align 1, !tbaa !56
  %i.cq = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !55 ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  %i.cs = icmp ugt i64 %i.cr, 384307168202282325
  br i1 %i.cs, label %bb.j, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #33
          to label %.noexc276 unwind label %bb.o

.noexc276:                                        ; preds = %bb.j
  unreachable

_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  %.not.i.i.i.i275 = icmp eq i64 %i.cr, 0         ; 4 uses
  br i1 %.not.i.i.i.i275, label %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  store i64 0, ptr %33, align 8
  br label %bb.k

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ct = mul nuw nsw i64 %i.cr, 24               ; 3 uses
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #35
          to label %.noexc277 unwind label %bb.o  ; 4 uses

.noexc277:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.cu, ptr %33, align 8, !tbaa !66
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %i.cr
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cu, i8 0, i64 %i.ct, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.cu, i64 %i.ct
  br label %bb.k

bb.k:                                             ; preds = %.noexc277, %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EEC2EmRKS3_.exit.thread.i
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.cv, %.noexc277 ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.noexc277 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.cx, align 8, !tbaa !67
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.cw, align 8, !tbaa !68
  %.not1597 = icmp eq i64 %i.n, 0                 ; 2 uses
  br i1 %.not1597, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, i8 0, i64 24, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !71
  %i.da = trunc i64 %i.cz to i32
  invoke void @_ZN3igl25vertex_triangle_adjacencyIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEmmEEvNT_6ScalarERKNS1_10MatrixBaseIS4_EERSt6vectorISA_IT0_SaISB_EESaISD_EERSA_ISA_IT1_SaISH_EESaISJ_EE(i32 noundef %i.da, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %35)
          to label %_ZNSt6vectorIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i unwind label %bb.az

bb.l:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, %.noexc.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.jw

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc.i262
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.jp

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i266
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.jo

bb.o:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.j
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit699

.lr.ph:                                           ; preds = %bb.k, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %storemerge1570 = phi i64 [ %i.ej, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ 0, %bb.k ] ; 4 uses
  %i.df = load ptr, ptr %30, align 8, !tbaa !48
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %storemerge1570
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !50
  %i.di = sext i32 %i.dh to i64
  %i.dj = load ptr, ptr %33, align 8, !tbaa !66
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %i.di ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !74 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !75
  %.not.i = icmp eq ptr %i.dm, %i.do
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  store i64 %storemerge1570, ptr %i.dm, align 8, !tbaa !60
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.dp, ptr %i.dl, align 8, !tbaa !74
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.q:                                             ; preds = %.lr.ph
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !76 ; 4 uses
  %i.dr = ptrtoint ptr %i.dm to i64
  %i.ds = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.dt = sub i64 %i.dr, %i.ds                    ; 5 uses
  %i.du = icmp eq i64 %i.dt, 9223372036854775800
  br i1 %i.du, label %bb.r, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #33
          to label %.noexc278 unwind label %.loopexit.split-lp1468.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc278:                                        ; preds = %bb.r
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.dv = ashr exact i64 %i.dt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dv, i64 1)
  %i.dw = add nsw i64 %.sroa.speculated.i.i.i, %i.dv ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dv
  %i.dy = call i64 @llvm.umin.i64(i64 %i.dw, i64 1152921504606846975)
  %i.dz = select i1 %i.dx, i64 1152921504606846975, i64 %i.dy ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dz, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ea = shl nuw nsw i64 %i.dz, 3
  %i.eb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #35
          to label %.noexc279 unwind label %.loopexit.split-lp1468.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc279:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 %i.dt ; 2 uses
  store i64 %storemerge1570, ptr %i.ec, align 8, !tbaa !60
  %i.ed = icmp sgt i64 %i.dt, 0
  br i1 %i.ed, label %bb.s, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.s:                                             ; preds = %.noexc279
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eb, ptr align 8 %i.dq, i64 %i.dt, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.s, %.noexc279
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.not.i17.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.ef = load ptr, ptr %i.dn, align 8, !tbaa !75
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = sub i64 %i.eg, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.eh) #34
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.eb, ptr %i.dk, align 8, !tbaa !76
  store ptr %i.ee, ptr %i.dl, align 8, !tbaa !74
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dz
  store ptr %i.ei, ptr %i.dn, align 8, !tbaa !75
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.p
  %i.ej = add nuw i64 %storemerge1570, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.ej, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !272

.loopexit.split-lp1468.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %bb.r
  %lpad.loopexit.split-lp2205 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1468

_ZNSt6vectorIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i275, label %.thread1209, label %.lr.ph.preheader.i.i.i.i.i281

.lr.ph.preheader.i.i.i.i.i281:                    ; preds = %_ZNSt6vectorIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.ek = shl nuw nsw i64 %i.cr, 4                ; 3 uses
  %i.el = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #35
          to label %bb.u unwind label %bb.ba      ; 4 uses

bb.u:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i281
  store ptr %i.el, ptr %36, align 8, !tbaa !79
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.cr
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.el, i8 0, i64 %i.ek, i1 false)
  %scevgep.i.i.i.i.i282 = getelementptr i8, ptr %i.el, i64 %i.ek
  %i.en = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 7 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 7 uses
  store ptr %i.em, ptr %i.eo, align 8, !tbaa !80
  store ptr %scevgep.i.i.i.i.i282, ptr %i.en, align 8, !tbaa !81
  %i.ep = icmp samesign ugt i64 %i.cr, 82351536043346212
  br i1 %i.ep, label %bb.v, label %_ZNSt12_Vector_baseIN4CGAL9AABB_treeINS0_13AABB_traits_3INS0_5EpeckENS0_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EEC2EmRKSK_.exit.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #33
          to label %.noexc289 unwind label %bb.bb

.noexc289:                                        ; preds = %bb.v
  unreachable

_ZNSt12_Vector_baseIN4CGAL9AABB_treeINS0_13AABB_traits_3INS0_5EpeckENS0_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EEC2EmRKSK_.exit.i: ; preds = %bb.u
  %i.eq = mul nuw nsw i64 %i.cr, 112
  %i.er = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eq) #35
          to label %.lr.ph.i.i.i.i.i.preheader unwind label %bb.bb ; 8 uses

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseIN4CGAL9AABB_treeINS0_13AABB_traits_3INS0_5EpeckENS0_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EEC2EmRKSK_.exit.i
  %i.es = add nsw i64 %i.cr, -1
  %xtraiter = and i64 %i.cr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol
end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EE:bb.a

bb.ad:                                            ; preds = %bb.ac
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %42) #22
  br label %.body355

_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit: ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %43, i64 noundef %i.cr, i64 noundef 3)
          to label %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit359 unwind label %bb.ae

bb.ae:                                            ; preds = %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit
  %i.hr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %43) #22
  br label %.body357

_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit359: ; preds = %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #22
  %i.hs = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #35
          to label %bb.af unwind label %bb.bg     ; 7 uses

bb.af:                                            ; preds = %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit359
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store i32 1, ptr %i.ht, align 4, !tbaa !128
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store <2 x double> <double f0xFFEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF>, ptr %i.hu, align 16, !tbaa !56
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  store ptr null, ptr %i.hv, align 16, !tbaa !131
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 40
  store i32 0, ptr %i.hw, align 8, !tbaa !133
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEdEE, i64 16), ptr %i.hs, align 16, !tbaa !45
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 48
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.hx, align 16, !tbaa !142
  store ptr %i.hs, ptr %44, align 8, !tbaa !145
  %i.hy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Eigen9DenseBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEE11setConstantERKSH_(ptr noundef nonnull align 1 dereferenceable(1) %42, ptr noundef nonnull align 8 dereferenceable(9) %44)
          to label %bb.ag unwind label %bb.bh     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.hz = load ptr, ptr %44, align 8, !tbaa !145  ; 4 uses
  %.not.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ia = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i361 = icmp eq i8 %i.ia, 0
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 3 uses
  %i.ic = load atomic i32, ptr %i.ib monotonic, align 4 ; 2 uses
  %i.id = icmp eq i32 %i.ic, 1                    ; 2 uses
  br i1 %.not.i.i.i361, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.id, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ie = load ptr, ptr %i.hz, align 8, !tbaa !45
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(12) %i.hz) #22, !inline_history !2
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.ak:                                            ; preds = %bb.ai
  %i.ih = add nsw i32 %i.ic, -1
  store atomic i32 %i.ih, ptr %i.ib monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.al:                                            ; preds = %bb.ah
  br i1 %i.id, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ii = atomicrmw add ptr %i.ib, i32 -1 release, align 4
  %i.ij = icmp eq i32 %i.ii, 1
  br i1 %i.ij, label %bb.an, label %_ZN4CGAL6HandleD2Ev.exit

bb.an:                                            ; preds = %bb.am, %bb.al
  fence acquire
  %i.ik = load ptr, ptr %44, align 8, !tbaa !145  ; 3 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.im = load ptr, ptr %i.ik, align 8, !tbaa !45
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(12) %i.ik) #22, !inline_history !2
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.ag, %bb.aj, %bb.ak, %bb.am, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #22
  %i.ip = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #35
          to label %bb.ap unwind label %bb.bj     ; 7 uses

bb.ap:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store i32 1, ptr %i.iq, align 4, !tbaa !128
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store <2 x double> <double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %i.ir, align 16, !tbaa !56
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  store ptr null, ptr %i.is, align 16, !tbaa !131
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 40
  store i32 0, ptr %i.it, align 8, !tbaa !133
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEdEE, i64 16), ptr %i.ip, align 16, !tbaa !45
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ip, i64 48
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.iu, align 16, !tbaa !142
  store ptr %i.ip, ptr %45, align 8, !tbaa !145
  %i.iv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Eigen9DenseBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEE11setConstantERKSH_(ptr noundef nonnull align 1 dereferenceable(1) %43, ptr noundef nonnull align 8 dereferenceable(9) %45)
          to label %bb.aq unwind label %bb.bk     ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  %i.iw = load ptr, ptr %45, align 8, !tbaa !145  ; 4 uses
  %.not.i.i364 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i364, label %_ZN4CGAL6HandleD2Ev.exit366, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ix = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i365 = icmp eq i8 %i.ix, 0
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 3 uses
  %i.iz = load atomic i32, ptr %i.iy monotonic, align 4 ; 2 uses
  %i.ja = icmp eq i32 %i.iz, 1                    ; 2 uses
  br i1 %.not.i.i.i365, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  br i1 %i.ja, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jb = load ptr, ptr %i.iw, align 8, !tbaa !45
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(12) %i.iw) #22, !inline_history !2
  br label %_ZN4CGAL6HandleD2Ev.exit366

bb.au:                                            ; preds = %bb.as
  %i.je = add nsw i32 %i.iz, -1
  store atomic i32 %i.je, ptr %i.iy monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit366

bb.av:                                            ; preds = %bb.ar
  br i1 %i.ja, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jf = atomicrmw add ptr %i.iy, i32 -1 release, align 4
  %i.jg = icmp eq i32 %i.jf, 1
  br i1 %i.jg, label %bb.ax, label %_ZN4CGAL6HandleD2Ev.exit366

bb.ax:                                            ; preds = %bb.aw, %bb.av
  fence acquire
  %i.jh = load ptr, ptr %45, align 8, !tbaa !145  ; 3 uses
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %_ZN4CGAL6HandleD2Ev.exit366, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jj = load ptr, ptr %i.jh, align 8, !tbaa !45
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(12) %i.jh) #22, !inline_history !2
  br label %_ZN4CGAL6HandleD2Ev.exit366

_ZN4CGAL6HandleD2Ev.exit366:                      ; preds = %bb.aq, %bb.at, %bb.au, %bb.aw, %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  br i1 %.not1597, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph, label %.lr.ph1574

.lr.ph1574:                                       ; preds = %_ZN4CGAL6HandleD2Ev.exit366
  %i.jm = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.jn = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 12 uses
  %i.jo = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 12 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  br label %bb.bm

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph: ; preds = %bb.bn, %_ZN4CGAL6HandleD2Ev.exit366
  %i.jq = shl nuw nsw i64 %i.cr, 3
  %i.jr = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  %i.js = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jw = getelementptr inbounds nuw i8, ptr %22, i64 8
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
  %i.jx = getelementptr inbounds nuw i8, ptr %22, i64 128
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 144
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 152
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 160
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 168
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 176
  %i.jy = getelementptr inbounds nuw i8, ptr %21, i64 216 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.kb = getelementptr inbounds nuw i8, ptr %25, i64 8
  br label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

bb.az:                                            ; preds = %._crit_edge
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.jh

bb.ba:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i281
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEESaIS2_EED2Ev.exit666

bb.bb:                                            ; preds = %_ZNSt12_Vector_baseIN4CGAL9AABB_treeINS0_13AABB_traits_3INS0_5EpeckENS0_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EEC2EmRKSK_.exit.i, %bb.v
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL9AABB_treeINS0_13AABB_traits_3INS0_5EpeckENS0_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS3_EES_IS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISI_EED2Ev.exit657

.thread:                                          ; preds = %.lr.ph.preheader.i.i.i.i.i292
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.i.i650.preheader.sink.split

.thread1940:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i299
  %i.kg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %37) #22
  br label %.lr.ph.i.i.i650.preheader.sink.split

bb.bc:                                            ; preds = %bb.z
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  br label %.body321

bb.bd:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i327, %bb.ab
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %.body321

bb.be:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i337
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit626

bb.bf:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i347
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit615

bb.bg:                                            ; preds = %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit359
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.af
  %i.km = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %44) #22
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn = phi { ptr, i32 } [ %i.km, %bb.bh ], [ %i.kl, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %.body743

bb.bj:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bk:                                            ; preds = %bb.ap
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %45) #22
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pn204 = phi { ptr, i32 } [ %i.ko, %bb.bk ], [ %i.kn, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  br label %.body743

bb.bm:                                            ; preds = %.lr.ph1574, %bb.bn
  %.01481573 = phi i64 [ 0, %.lr.ph1574 ], [ %i.kv, %bb.bn ] ; 3 uses
  %i.kp = load ptr, ptr %30, align 8, !tbaa !48
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %.01481573
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !50
  %i.ks = load ptr, ptr %1, align 8, !tbaa !46, !noalias !304
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %.01481573 ; 2 uses
  %i.ku = sext i32 %i.kr to i64                   ; 4 uses
  br label %.preheader1447

.preheader1447:                                   ; preds = %bb.bm, %bb.bo
  %.01471572 = phi i64 [ 0, %bb.bm ], [ %i.kw, %bb.bo ] ; 3 uses
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bo
  %i.kv = add nuw i64 %.01481573, 1               ; 2 uses
  %exitcond1673.not = icmp eq i64 %i.kv, %i.n
  br i1 %exitcond1673.not, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph, label %bb.bm, !llvm.loop !276

bb.bo:                                            ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378
  %i.kw = add nuw nsw i64 %.01471572, 1           ; 2 uses
  %exitcond1672.not = icmp eq i64 %i.kw, 3
  br i1 %exitcond1672.not, label %bb.bn, label %.preheader1447, !llvm.loop !277

bb.bp:                                            ; preds = %.preheader1447, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378
  %.01461571 = phi i64 [ 0, %.preheader1447 ], [ %i.qt, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378 ] ; 7 uses
  %i.kx = load ptr, ptr %42, align 8, !tbaa !147
  %i.ky = load i64, ptr %i.jm, align 8, !tbaa !148
  %i.kz = mul nsw i64 %i.ky, %.01461571
  %i.la = getelementptr [16 x i8], ptr %i.kx, i64 %i.ku
  %i.lb = getelementptr [16 x i8], ptr %i.la, i64 %i.kz ; 5 uses
  %i.lc = load i64, ptr %i.m, align 8, !tbaa !43
  %i.ld = mul nsw i64 %i.lc, %.01471572
  %i.le = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.ld
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !50
  %i.lg = sext i32 %i.lf to i64
  %i.lh = load ptr, ptr %0, align 8, !tbaa !305
  %i.li = load i64, ptr %i.cy, align 8, !tbaa !71
  %i.lj = mul nsw i64 %i.li, %.01461571
  %i.lk = getelementptr [16 x i8], ptr %i.lh, i64 %i.lg
  %i.ll = getelementptr [16 x i8], ptr %i.lk, i64 %i.lj ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !145 ; 6 uses
  %i.ln = load ptr, ptr %i.lb, align 8, !tbaa !145 ; 3 uses
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !56
  %i.ls = load double, ptr %i.lp, align 16, !tbaa !56
  %i.lt = fneg double %i.ls
  %i.lu = fcmp olt double %i.lr, %i.lt
  br i1 %i.lu, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lw = load double, ptr %i.lv, align 16, !tbaa !56
  %i.lx = fneg double %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !56
  %i.ma = fcmp ugt double %i.lz, %i.lx
  %.fr = freeze i1 %i.ma
  %i.mb = select i1 %.fr, i16 256, i16 0
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i:   ; preds = %bb.br, %bb.bq
  %.sroa.0.0.insert.insert.i.i = phi i16 [ 257, %bb.bq ], [ %i.mb, %bb.br ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i16 %.sroa.0.0.insert.insert.i.i to i8
  %.sroa.2.0.extract.shift.i.i = lshr i16 %.sroa.0.0.insert.insert.i.i, 8
  %.sroa.2.0.extract.trunc.i.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i to i8
  %i.mc = icmp eq i8 %.sroa.0.0.extract.trunc.i.i, %.sroa.2.0.extract.trunc.i.i
  br i1 %i.mc, label %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i
  %i.md = getelementptr inbounds nuw i8, ptr %i.lm, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  store ptr %i.lm, ptr %19, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  store ptr %19, ptr %18, align 8, !tbaa !126
  store ptr %18, ptr %i.jn, align 8, !tbaa !126
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jo, align 8, !tbaa !126
  %i.me = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.md, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %.loopexit.split-lp1449.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.bs
  %.not.i.i.i.i742 = icmp eq i32 %i.me, 0
  br i1 %.not.i.i.i.i742, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i, label %bb.bt

bb.bt:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.me) #33
          to label %bb.bu unwind label %.loopexit.split-lp1449.loopexit.split-lp.loopexit.split-lp

bb.bu:                                            ; preds = %bb.bt
  unreachable

.loopexit.split-lp1449.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bs, %bb.bt
  %lpad.loopexit.split-lp2185 = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.jn, align 8, !tbaa !126
  store ptr null, ptr %i.jo, align 8, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %.body743

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.jn, align 8, !tbaa !126
  store ptr null, ptr %i.jo, align 8, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lm, i64 32
  %i.mg = load atomic ptr, ptr %i.mf monotonic, align 8
  %i.mh = load ptr, ptr %i.lb, align 8, !tbaa !145 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  store ptr %i.mh, ptr %17, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store ptr %17, ptr %16, align 8, !tbaa !126
  store ptr %16, ptr %i.jn, align 8, !tbaa !126
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jo, align 8, !tbaa !126
end_hunk_1
begin_hunk_2_@_ZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EE:bb.a
.loopexit.split-lp1423.loopexit.split-lp:         ; preds = %bb.dp, %bb.dq
  %lpad.loopexit.split-lp2127 = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.jr, align 8, !tbaa !126
  store ptr null, ptr %i.js, align 8, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.body778

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i773: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i771
  store ptr null, ptr %i.jr, align 8, !tbaa !126
  store ptr null, ptr %i.js, align 8, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tc, i64 32
  %i.tw = load atomic ptr, ptr %i.tv monotonic, align 8
  %i.tx = load ptr, ptr %i.tb, align 8, !tbaa !145 ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %i.tx, ptr %9, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %9, ptr %8, align 8, !tbaa !126
  store ptr %8, ptr %i.jr, align 8, !tbaa !126
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.js, align 8, !tbaa !126
  %i.tz = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.ty, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i774 unwind label %.loopexit.split-lp1428.loopexit.split-lp ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i774:     ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i773
  %.not.i.i.i11.i775 = icmp eq i32 %i.tz, 0
  br i1 %.not.i.i.i11.i775, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i776, label %bb.ds

bb.ds:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i774
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.tz) #33
          to label %bb.dt unwind label %.loopexit.split-lp1428.loopexit.split-lp

bb.dt:                                            ; preds = %bb.ds
  unreachable

.loopexit.split-lp1428.loopexit.split-lp:         ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i773, %bb.ds
  %lpad.loopexit.split-lp2130 = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.jr, align 8, !tbaa !126
  store ptr null, ptr %i.js, align 8, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.body778

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i776: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i774
  store ptr null, ptr %i.jr, align 8, !tbaa !126
  store ptr null, ptr %i.js, align 8, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 32
  %i.ub = load atomic ptr, ptr %i.ua monotonic, align 8
  %i.uc = invoke noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.tw, ptr noundef nonnull align 16 dereferenceable(64) %i.ub)
          to label %.noexc780 unwind label %.loopexit.split-lp1433.loopexit.split-lp.loopexit.split-lp

.noexc780:                                        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i776
  %i.ud = icmp slt i32 %i.uc, 0
  br i1 %i.ud, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %.noexc780..noexc390.thread_crit_edge

.noexc780..noexc390.thread_crit_edge:             ; preds = %.noexc780
  %.pre = load ptr, ptr %43, align 8, !tbaa !147
  %.pre1686.a = load ptr, ptr %42, align 8, !tbaa !147
  br label %.noexc390.thread

.noexc390:                                        ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i764
  %i.ue = trunc i16 %.sroa.0.0.insert.insert.i.i765 to i1
  br i1 %i.ue, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %.noexc390.thread

.noexc390.thread:                                 ; preds = %.noexc780..noexc390.thread_crit_edge, %bb.dm, %.noexc390
  %i.uf = phi ptr [ %.pre1686.a, %.noexc780..noexc390.thread_crit_edge ], [ %i.ta, %bb.dm ], [ %i.ta, %.noexc390 ]
  %i.ug = phi ptr [ %.pre, %.noexc780..noexc390.thread_crit_edge ], [ %i.sy, %bb.dm ], [ %i.sy, %.noexc390 ]
  %i.uh = load i64, ptr %i.jt, align 8, !tbaa !148
  %i.ui = getelementptr [16 x i8], ptr %i.ug, i64 %storemerge2061584
  %i.uj = getelementptr [16 x i8], ptr %i.ui, i64 %i.uh
  %i.uk = load i64, ptr %i.ju, align 8, !tbaa !148
  %i.ul = getelementptr [16 x i8], ptr %i.uf, i64 %storemerge2171578
  %i.um = getelementptr [16 x i8], ptr %i.ul, i64 %i.uk
  %i.un = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.uj, ptr noundef nonnull align 8 dereferenceable(9) %i.um)
          to label %.noexc391 unwind label %.loopexit.split-lp1433.loopexit.split-lp.loopexit.split-lp

.noexc391:                                        ; preds = %.noexc390.thread
  br i1 %i.un, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %bb.du

bb.du:                                            ; preds = %.noexc391
  %i.uo = load ptr, ptr %43, align 8, !tbaa !147
  %i.up = load i64, ptr %i.jt, align 8, !tbaa !148
  %i.uq = getelementptr [16 x i8], ptr %i.uo, i64 %storemerge2061584
  %.idx.i = shl i64 %i.up, 5
  %i.ur = getelementptr i8, ptr %i.uq, i64 %.idx.i
  %i.us = load ptr, ptr %42, align 8, !tbaa !147
  %i.ut = load i64, ptr %i.ju, align 8, !tbaa !148
  %i.uu = getelementptr [16 x i8], ptr %i.us, i64 %storemerge2171578
  %.idx12.i = shl i64 %i.ut, 5
  %i.uv = getelementptr i8, ptr %i.uu, i64 %.idx12.i
  %i.uw = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.ur, ptr noundef nonnull align 8 dereferenceable(9) %i.uv)
          to label %.noexc392 unwind label %.loopexit.split-lp1433.loopexit.split-lp.loopexit.split-lp

.noexc392:                                        ; preds = %bb.du
  br i1 %i.uw, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %bb.dv

bb.dv:                                            ; preds = %.noexc392
  %i.ux = load ptr, ptr %43, align 8, !tbaa !147
  %i.uy = getelementptr [16 x i8], ptr %i.ux, i64 %storemerge2171578
  %i.uz = load ptr, ptr %42, align 8, !tbaa !147
  %i.va = getelementptr [16 x i8], ptr %i.uz, i64 %storemerge2061584
  %i.vb = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.uy, ptr noundef nonnull align 8 dereferenceable(9) %i.va)
          to label %.noexc393 unwind label %.loopexit.split-lp1433.loopexit.split-lp.loopexit.split-lp

.noexc393:                                        ; preds = %bb.dv
  br i1 %i.vb, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %bb.dw

bb.dw:                                            ; preds = %.noexc393
  %i.vc = load ptr, ptr %43, align 8, !tbaa !147
  %i.vd = load i64, ptr %i.jt, align 8, !tbaa !148
  %i.ve = getelementptr [16 x i8], ptr %i.vc, i64 %storemerge2171578
  %i.vf = getelementptr [16 x i8], ptr %i.ve, i64 %i.vd
  %i.vg = load ptr, ptr %42, align 8, !tbaa !147
  %i.vh = load i64, ptr %i.ju, align 8, !tbaa !148
  %i.vi = getelementptr [16 x i8], ptr %i.vg, i64 %storemerge2061584
  %i.vj = getelementptr [16 x i8], ptr %i.vi, i64 %i.vh
  %i.vk = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.vf, ptr noundef nonnull align 8 dereferenceable(9) %i.vj)
          to label %.noexc394 unwind label %.loopexit.split-lp1433.loopexit.split-lp.loopexit.split-lp

.noexc394:                                        ; preds = %bb.dw
  br i1 %i.vk, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %bb.dx

bb.dx:                                            ; preds = %.noexc394
  %i.vl = load ptr, ptr %43, align 8, !tbaa !147
  %i.vm = load i64, ptr %i.jt, align 8, !tbaa !148
  %i.vn = getelementptr [16 x i8], ptr %i.vl, i64 %storemerge2171578
  %.idx13.i = shl i64 %i.vm, 5
  %i.vo = getelementptr i8, ptr %i.vn, i64 %.idx13.i
  %i.vp = load ptr, ptr %42, align 8, !tbaa !147
  %i.vq = load i64, ptr %i.ju, align 8, !tbaa !148
  %i.vr = getelementptr [16 x i8], ptr %i.vp, i64 %storemerge2061584
  %.idx14.i = shl i64 %i.vq, 5
  %i.vs = getelementptr i8, ptr %i.vr, i64 %.idx14.i
  %i.vt = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.vo, ptr noundef nonnull align 8 dereferenceable(9) %i.vs)
          to label %_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit unwind label %.loopexit.split-lp1433.loopexit.split-lp.loopexit.split-lp

_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit: ; preds = %bb.dx
  br i1 %i.vt, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %bb.dy

bb.dy:                                            ; preds = %_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit
  %.not.i396 = icmp eq ptr %.sroa.14828.01576, %.sroa.21.01577
  br i1 %.not.i396, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  store i64 %storemerge2171578, ptr %.sroa.14828.01576, align 8, !tbaa !60
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.14828.01576, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit405

bb.ea:                                            ; preds = %bb.dy
  %i.vv = ptrtoint ptr %.sroa.21.01577 to i64
  %i.vw = ptrtoint ptr %.sroa.0820.01575 to i64
  %i.vx = sub i64 %i.vv, %i.vw                    ; 6 uses
  %i.vy = icmp eq i64 %i.vx, 9223372036854775800
  br i1 %i.vy, label %bb.eb, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i397

bb.eb:                                            ; preds = %bb.ea
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #33
          to label %.noexc403 unwind label %.loopexit.split-lp1433.loopexit.split-lp.loopexit.split-lp

.noexc403:                                        ; preds = %bb.eb
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i397: ; preds = %bb.ea
  %i.vz = ashr exact i64 %i.vx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i398 = call i64 @llvm.umax.i64(i64 %i.vz, i64 1)
  %i.wa = add nsw i64 %.sroa.speculated.i.i.i398, %i.vz ; 2 uses
  %i.wb = icmp ult i64 %i.wa, %i.vz
  %i.wc = call i64 @llvm.umin.i64(i64 %i.wa, i64 1152921504606846975)
  %i.wd = select i1 %i.wb, i64 1152921504606846975, i64 %i.wc ; 3 uses
  %.not.i.i.i399 = icmp ne i64 %i.wd, 0
  call void @llvm.assume(i1 %.not.i.i.i399)
  %i.we = shl nuw nsw i64 %i.wd, 3
  %i.wf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.we) #35
          to label %.noexc404 unwind label %.loopexit.split-lp1433.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc404:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i397
  %i.wg = getelementptr inbounds i8, ptr %i.wf, i64 %i.vx ; 2 uses
  store i64 %storemerge2171578, ptr %i.wg, align 8, !tbaa !60
  %i.wh = icmp sgt i64 %i.vx, 0
  br i1 %i.wh, label %bb.ec, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i402

bb.ec:                                            ; preds = %.noexc404
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wf, ptr align 8 %.sroa.0820.01575, i64 %i.vx, i1 false)
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i402

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i402: ; preds = %bb.ec, %.noexc404
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wg, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0820.01575, i64 noundef %i.vx) #34
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.wf, i64 %i.wd
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit405

_ZNSt6vectorImSaImEE9push_backERKm.exit405:       ; preds = %.noexc780, %.noexc390, %.noexc391, %.noexc392, %.noexc393, %.noexc394, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i402, %bb.dz, %_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit, %bb.dl
  %.sroa.0820.1 = phi ptr [ %.sroa.0820.01575, %bb.dl ], [ %.sroa.0820.01575, %bb.dz ], [ %.sroa.0820.01575, %_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit ], [ %i.wf, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i402 ], [ %.sroa.0820.01575, %.noexc394 ], [ %.sroa.0820.01575, %.noexc393 ], [ %.sroa.0820.01575, %.noexc392 ], [ %.sroa.0820.01575, %.noexc391 ], [ %.sroa.0820.01575, %.noexc390 ], [ %.sroa.0820.01575, %.noexc780 ] ; 8 uses
  %.sroa.14828.1 = phi ptr [ %.sroa.14828.01576, %bb.dl ], [ %i.vu, %bb.dz ], [ %.sroa.14828.01576, %_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit ], [ %i.wi, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i402 ], [ %.sroa.14828.01576, %.noexc394 ], [ %.sroa.14828.01576, %.noexc393 ], [ %.sroa.14828.01576, %.noexc392 ], [ %.sroa.14828.01576, %.noexc391 ], [ %.sroa.14828.01576, %.noexc390 ], [ %.sroa.14828.01576, %.noexc780 ] ; 3 uses
  %.sroa.21.1 = phi ptr [ %.sroa.21.01577, %bb.dl ], [ %.sroa.21.01577, %bb.dz ], [ %.sroa.21.01577, %_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit ], [ %i.wj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i402 ], [ %.sroa.21.01577, %.noexc394 ], [ %.sroa.21.01577, %.noexc393 ], [ %.sroa.21.01577, %.noexc392 ], [ %.sroa.21.01577, %.noexc391 ], [ %.sroa.21.01577, %.noexc390 ], [ %.sroa.21.01577, %.noexc780 ] ; 4 uses
  %i.wk = add nuw i64 %storemerge2171578, 1       ; 2 uses
  %exitcond1674.not = icmp eq i64 %i.wk, %i.cr
  br i1 %exitcond1674.not, label %bb.dk, label %bb.dl, !llvm.loop !280

bb.ed:                                            ; preds = %bb.dk
  %i.wl = load ptr, ptr %36, align 8, !tbaa !79
  %i.wm = getelementptr inbounds nuw [16 x i8], ptr %i.wl, i64 %storemerge2061584
  %i.wn = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0906.010151062108912071217, i64 %storemerge2061584 ; 2 uses
  %i.wo = load ptr, ptr %37, align 8, !tbaa !111
  %i.wp = getelementptr inbounds nuw [24 x i8], ptr %i.wo, i64 %storemerge2061584
  %i.wq = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0896.0111711971219, i64 %storemerge2061584 ; 2 uses
  invoke void @_ZN3igl8copyleft4cgal17submesh_aabb_treeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEENS5_5EpeckEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERNS5_9AABB_treeINS5_13AABB_traits_3IT2_NS5_25AABB_triangle_primitive_3IS14_NSt6vectorINS14_10Triangle_3ESaIS17_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERS19_RS16_IbSaIbEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.wm, ptr noundef nonnull align 8 dereferenceable(107) %i.wn, ptr noundef nonnull align 8 dereferenceable(24) %i.wp, ptr noundef nonnull align 8 dereferenceable(40) %i.wq)
          to label %bb.ee unwind label %.loopexit.split-lp1433.loopexit

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %46, i64 noundef %i.sv, i64 noundef 3)
          to label %.lr.ph1580 unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.wr = landingpad { ptr, i32 }
          cleanup
  br label %.body406

.loopexit.split-lp1433.loopexit:                  ; preds = %bb.ed
  %lpad.loopexit1441 = landingpad { ptr, i32 }
          cleanup
  br label %.body778

.loopexit.split-lp1433.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc390.thread, %bb.du, %bb.dv, %bb.dw, %bb.dx, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i397, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i776, %bb.eb
  %lpad.loopexit.split-lp2133 = landingpad { ptr, i32 }
          cleanup
  br label %.body778

.lr.ph1580:                                       ; preds = %bb.ee, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELi1ELin1ELi1ELi1ELin1EEEED2Ev.exit
  %.01451579 = phi i64 [ %i.acj, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELi1ELin1ELi1ELi1ELin1EEEED2Ev.exit ], [ 0, %bb.ee ] ; 3 uses
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0820.1, i64 %.01451579
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #22
  %i.wu = load ptr, ptr %38, align 8, !tbaa !48
  %i.wv = getelementptr inbounds [4 x i8], ptr %i.wu, i64 %i.wt
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !50
  %i.wx = sext i32 %i.ww to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22, !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22, !noalias !306
  %i.wy = load ptr, ptr %1, align 8, !tbaa !46, !noalias !306
  %i.wz = getelementptr [4 x i8], ptr %i.wy, i64 %i.wx ; 3 uses
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !50, !noalias !306
  %i.xb = sext i32 %i.xa to i64                   ; 2 uses
  %i.xc = load ptr, ptr %0, align 8, !tbaa !305, !noalias !307 ; 3 uses
  %i.xd = getelementptr inbounds [16 x i8], ptr %i.xc, i64 %i.xb
  %i.xe = load i64, ptr %i.jv, align 8, !tbaa !308, !noalias !307 ; 3 uses
  %i.xf = load i64, ptr %i.m, align 8, !tbaa !43, !noalias !306 ; 2 uses
  %i.xg = getelementptr [4 x i8], ptr %i.wz, i64 %i.xf
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !50, !noalias !306
  %i.xi = sext i32 %i.xh to i64                   ; 2 uses
  %i.xj = getelementptr inbounds [16 x i8], ptr %i.xc, i64 %i.xi
  %.idx.i409 = shl i64 %i.xf, 3
  %i.xk = getelementptr i8, ptr %i.wz, i64 %.idx.i409
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !50, !noalias !306
  %i.xm = sext i32 %i.xl to i64                   ; 2 uses
  %i.xn = getelementptr inbounds [16 x i8], ptr %i.xc, i64 %i.xm
  store ptr %i.xd, ptr %i.jw, align 8, !noalias !306
  store i64 %i.xe, ptr %.sroa.622.0..sroa_idx.i, align 8, !noalias !306
  store ptr %0, ptr %.sroa.723.0..sroa_idx.i, align 8, !noalias !306
  store i64 %i.xb, ptr %.sroa.824.0..sroa_idx.i, align 8, !noalias !306
  store i64 0, ptr %.sroa.925.0..sroa_idx.i, align 8, !noalias !306
  store i64 1, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !306
  store ptr %i.xj, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !306
  store i64 %i.xe, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !306
  store ptr %0, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !306
  store i64 %i.xi, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !306
  store i64 0, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !306
  store i64 1, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !306
  store ptr %i.xn, ptr %i.jx, align 8, !noalias !306
  store i64 %i.xe, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !306
  store ptr %0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !306
  store i64 %i.xm, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !306
  store i64 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !306
  store i64 1, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !306
  store double 3.000000e+00, ptr %i.a, align 8, !tbaa !152, !noalias !306
  invoke void @_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEESJ_EEKNS1_ISK_KNS_5BlockIKNS_6MatrixISJ_Lin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESQ_EESQ_EEEdvIdEEKNS1_INS2_18scalar_quotient_opISJ_NS2_18promote_scalar_argISJ_T_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsISJ_SY_NSW_ISJ_SY_EEEEEE5valueEE4typeEEEKST_KNS2_19plain_constant_typeIST_S13_E4typeEEERKSY_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::CwiseBinaryOp.304") align 8 %21, ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc412 unwind label %bb.fr

.noexc412:                                        ; preds = %.lr.ph1580
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, i8 0, i64 16, i1 false), !alias.scope !310
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22, !noalias !310
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEELi1ELin1ELi1ELi1ELin1EEENS_13CwiseBinaryOpINS0_18scalar_quotient_opISI_SI_EEKNSK_INS0_13scalar_sum_opISI_SI_EEKNSK_ISO_KNS_5BlockIKNS2_ISI_Lin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEST_EEST_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISI_EEKSJ_EEEENS0_9assign_opISI_SI_EEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull align 8 dereferenceable(233) %21, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.eg unwind label %.body.i

.body.i:                                          ; preds = %.noexc412
  %i.xo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELi1ELin1ELi1ELi1ELin1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %47) #22
  call void @_ZN5Eigen13CwiseBinaryOpINS_8internal18scalar_quotient_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEESI_EEKNS0_INS1_13scalar_sum_opISI_SI_EEKNS0_ISL_KNS_5BlockIKNS_6MatrixISI_Lin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESR_EESR_EEKNS_14CwiseNullaryOpINS1_18scalar_constant_opISI_EEKNSN_ISI_Li1ELin1ELi1ELi1ELin1EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(233) dereferenceable(233) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22, !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22, !noalias !306
  br label %.body413

bb.eg:                                            ; preds = %.noexc412
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22, !noalias !310
  %i.xp = load ptr, ptr %i.jy, align 8, !tbaa !145, !noalias !306 ; 4 uses
  %.not.i.i.i.i.i.i410 = icmp eq ptr %i.xp, null
  br i1 %.not.i.i.i.i.i.i410, label %bb.ep, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.xq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56, !noalias !306
  %.not.i.i.i.i.i.i.i411 = icmp eq i8 %i.xq, 0
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xp, i64 8 ; 3 uses
  %i.xs = load atomic i32, ptr %i.xr monotonic, align 4 ; 2 uses
  %i.xt = icmp eq i32 %i.xs, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i411, label %bb.el, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  br i1 %i.xt, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.xu = load ptr, ptr %i.xp, align 8, !tbaa !45
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.xw = load ptr, ptr %i.xv, align 8
  call void %i.xw(ptr noundef nonnull align 8 dereferenceable(12) %i.xp) #22, !inline_history !287
  br label %bb.ep

bb.ek:                                            ; preds = %bb.ei
  %i.xx = add nsw i32 %i.xs, -1
  store atomic i32 %i.xx, ptr %i.xr monotonic, align 4
  br label %bb.ep

bb.el:                                            ; preds = %bb.eh
  br i1 %i.xt, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.xy = atomicrmw add ptr %i.xr, i32 -1 release, align 4
  %i.xz = icmp eq i32 %i.xy, 1
  br i1 %i.xz, label %bb.en, label %bb.ep

bb.en:                                            ; preds = %bb.em, %bb.el
  fence acquire
  %i.ya = load ptr, ptr %i.jy, align 8, !tbaa !145, !noalias !306 ; 3 uses
  %i.yb = icmp eq ptr %i.ya, null
  br i1 %i.yb, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.yc = load ptr, ptr %i.ya, align 8, !tbaa !45
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %i.ye = load ptr, ptr %i.yd, align 8
  call void %i.ye(ptr noundef nonnull align 8 dereferenceable(12) %i.ya) #22, !inline_history !287
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eg, %bb.ej, %bb.ek, %bb.em, %bb.en, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22, !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22, !noalias !306
  %i.yf = load ptr, ptr %46, align 8, !tbaa !147, !noalias !311
  %i.yg = getelementptr inbounds [16 x i8], ptr %i.yf, i64 %.01451579 ; 6 uses
  %i.yh = load ptr, ptr %47, align 8, !tbaa !154  ; 4 uses
  %i.yi = load i64, ptr %i.jz, align 8, !tbaa !148 ; 2 uses
  %i.yj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.yj, 0
  %i.yk = load ptr, ptr %i.yh, align 8, !tbaa !145
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ep
  %i.ym = atomicrmw add ptr %i.yl, i32 1 monotonic, align 4 ; 0 uses
  %i.yn = load ptr, ptr %i.yg, align 8, !tbaa !145 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.yn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSINS1_ISH_Li1ELin1ELi1ELi1ELin1EEEEERSK_RKNS_9DenseBaseIT_EE.exit.i, label %bb.es

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ep
  %i.yo = load atomic i32, ptr %i.yl monotonic, align 4
  %i.yp = add nsw i32 %i.yo, 1
  store atomic i32 %i.yp, ptr %i.yl monotonic, align 4
  %i.yq = load ptr, ptr %i.yg, align 8, !tbaa !145 ; 4 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.yq, null
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSINS1_ISH_Li1ELin1ELi1ELi1ELin1EEEEERSK_RKNS_9DenseBaseIT_EE.exit.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 8 ; 2 uses
  %i.ys = load atomic i32, ptr %i.yr monotonic, align 4 ; 2 uses
  %i.yt = icmp eq i32 %i.ys, 1
  br i1 %i.yt, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.yu = load ptr, ptr %i.yq, align 8, !tbaa !45
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  %i.yw = load ptr, ptr %i.yv, align 8
  call void %i.yw(ptr noundef nonnull align 8 dereferenceable(12) %i.yq) #22, !inline_history !290
  br label %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSINS1_ISH_Li1ELin1ELi1ELi1ELin1EEEEERSK_RKNS_9DenseBaseIT_EE.exit.i

bb.er:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.yx = add nsw i32 %i.ys, -1
  store atomic i32 %i.yx, ptr %i.yr monotonic, align 4
  br label %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSINS1_ISH_Li1ELin1ELi1ELi1ELin1EEEEERSK_RKNS_9DenseBaseIT_EE.exit.i

bb.es:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yn, i64 8 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EE:bb.a
  %i.afc = call i64 @llvm.umin.i64(i64 %i.afa, i64 1152921504606846975)
  %i.afd = select i1 %i.afb, i64 1152921504606846975, i64 %i.afc ; 3 uses
  %.not.i.i.i.i433 = icmp ne i64 %i.afd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i433)
  %i.afe = shl nuw nsw i64 %i.afd, 3
  %i.aff = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afe) #35
          to label %.noexc435 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc435:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.afg = getelementptr inbounds i8, ptr %i.aff, i64 %i.aex ; 2 uses
  store i64 %i.aeo, ptr %i.afg, align 8, !tbaa !60
  %i.afh = icmp sgt i64 %i.aex, 0
  br i1 %i.afh, label %bb.gd, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.gd:                                            ; preds = %.noexc435
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aff, ptr align 8 %i.aeu, i64 %i.aex, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.gd, %.noexc435
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afg, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aeu, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.ge

bb.ge:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.afj = load ptr, ptr %i.aer, align 8, !tbaa !75
  %i.afk = ptrtoint ptr %i.afj to i64
  %i.afl = sub i64 %i.afk, %i.aew
  call void @_ZdlPvm(ptr noundef nonnull %i.aeu, i64 noundef %i.afl) #34
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.ge, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aff, ptr %i.ael, align 8, !tbaa !76
  store ptr %i.afi, ptr %i.aep, align 8, !tbaa !74
  %i.afm = getelementptr inbounds nuw [8 x i8], ptr %i.aff, i64 %i.afd
  store ptr %i.afm, ptr %i.aer, align 8, !tbaa !75
  %.pre1687.a = load ptr, ptr %40, align 8, !tbaa !48
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %.pre1687.a, i64 %i.adp
  %.pre1688.a = load i32, ptr %.phi.trans.insert, align 4, !tbaa !50
  %.pre1692 = sext i32 %.pre1688.a to i64
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %.pre-phi = phi i64 [ %i.aeo, %bb.gb ], [ %.pre1692, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.afn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0878.0, i64 %.pre-phi ; 4 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 8 ; 3 uses
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !74 ; 4 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afn, i64 16 ; 3 uses
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !75
  %.not.i436 = icmp eq ptr %i.afp, %i.afr
  br i1 %.not.i436, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  store i64 %i.aeh, ptr %i.afp, align 8, !tbaa !60
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afp, i64 8
  store ptr %i.afs, ptr %i.afo, align 8, !tbaa !74
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit445

bb.gh:                                            ; preds = %bb.gf
  %i.aft = load ptr, ptr %i.afn, align 8, !tbaa !76 ; 4 uses
  %i.afu = ptrtoint ptr %i.afp to i64
  %i.afv = ptrtoint ptr %i.aft to i64             ; 2 uses
  %i.afw = sub i64 %i.afu, %i.afv                 ; 5 uses
  %i.afx = icmp eq i64 %i.afw, 9223372036854775800
  br i1 %i.afx, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i437

.invoke:                                          ; preds = %bb.gl, %bb.gh, %bb.gc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #33
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i437: ; preds = %bb.gh
  %i.afy = ashr exact i64 %i.afw, 3               ; 3 uses
  %.sroa.speculated.i.i.i438 = call i64 @llvm.umax.i64(i64 %i.afy, i64 1)
  %i.afz = add nsw i64 %.sroa.speculated.i.i.i438, %i.afy ; 2 uses
  %i.aga = icmp ult i64 %i.afz, %i.afy
  %i.agb = call i64 @llvm.umin.i64(i64 %i.afz, i64 1152921504606846975)
  %i.agc = select i1 %i.aga, i64 1152921504606846975, i64 %i.agb ; 3 uses
  %.not.i.i.i439 = icmp ne i64 %i.agc, 0
  call void @llvm.assume(i1 %.not.i.i.i439)
  %i.agd = shl nuw nsw i64 %i.agc, 3
  %i.age = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agd) #35
          to label %.noexc444 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc444:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i437
  %i.agf = getelementptr inbounds i8, ptr %i.age, i64 %i.afw ; 2 uses
  store i64 %i.aeh, ptr %i.agf, align 8, !tbaa !60
  %i.agg = icmp sgt i64 %i.afw, 0
  br i1 %i.agg, label %bb.gi, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i440

bb.gi:                                            ; preds = %.noexc444
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.age, ptr align 8 %i.aft, i64 %i.afw, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i440

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i440: ; preds = %bb.gi, %.noexc444
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agf, i64 8
  %.not.i17.i.i441 = icmp eq ptr %i.aft, null
  br i1 %.not.i17.i.i441, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i442, label %bb.gj

bb.gj:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i440
  %i.agi = load ptr, ptr %i.afq, align 8, !tbaa !75
  %i.agj = ptrtoint ptr %i.agi to i64
  %i.agk = sub i64 %i.agj, %i.afv
  call void @_ZdlPvm(ptr noundef nonnull %i.aft, i64 noundef %i.agk) #34
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i442

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i442: ; preds = %bb.gj, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i440
  store ptr %i.age, ptr %i.afn, align 8, !tbaa !76
  store ptr %i.agh, ptr %i.afo, align 8, !tbaa !74
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %i.agc
  store ptr %i.agl, ptr %i.afq, align 8, !tbaa !75
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit445

_ZNSt6vectorImSaImEE9push_backERKm.exit445:       ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i442, %bb.gg
  %i.agm = getelementptr inbounds nuw [24 x i8], ptr %i.ho, i64 %i.adp ; 4 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 8 ; 3 uses
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !74 ; 4 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agm, i64 16 ; 3 uses
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !75
  %.not.i446 = icmp eq ptr %i.ago, %i.agq
  br i1 %.not.i446, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit445
  store i64 %storemerge2061584, ptr %i.ago, align 8, !tbaa !60
  %i.agr = getelementptr inbounds nuw i8, ptr %i.ago, i64 8
  store ptr %i.agr, ptr %i.agn, align 8, !tbaa !74
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit455

bb.gl:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit445
  %i.ags = load ptr, ptr %i.agm, align 8, !tbaa !76 ; 4 uses
  %i.agt = ptrtoint ptr %i.ago to i64
  %i.agu = ptrtoint ptr %i.ags to i64             ; 2 uses
  %i.agv = sub i64 %i.agt, %i.agu                 ; 5 uses
  %i.agw = icmp eq i64 %i.agv, 9223372036854775800
  br i1 %i.agw, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i447

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i447: ; preds = %bb.gl
  %i.agx = ashr exact i64 %i.agv, 3               ; 3 uses
  %.sroa.speculated.i.i.i448 = call i64 @llvm.umax.i64(i64 %i.agx, i64 1)
  %i.agy = add nsw i64 %.sroa.speculated.i.i.i448, %i.agx ; 2 uses
  %i.agz = icmp ult i64 %i.agy, %i.agx
  %i.aha = call i64 @llvm.umin.i64(i64 %i.agy, i64 1152921504606846975)
  %i.ahb = select i1 %i.agz, i64 1152921504606846975, i64 %i.aha ; 3 uses
  %.not.i.i.i449 = icmp ne i64 %i.ahb, 0
  call void @llvm.assume(i1 %.not.i.i.i449)
  %i.ahc = shl nuw nsw i64 %i.ahb, 3
  %i.ahd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahc) #35
          to label %.noexc454 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc454:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i447
  %i.ahe = getelementptr inbounds i8, ptr %i.ahd, i64 %i.agv ; 2 uses
  store i64 %storemerge2061584, ptr %i.ahe, align 8, !tbaa !60
  %i.ahf = icmp sgt i64 %i.agv, 0
  br i1 %i.ahf, label %bb.gm, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i450

bb.gm:                                            ; preds = %.noexc454
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ahd, ptr align 8 %i.ags, i64 %i.agv, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i450

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i450: ; preds = %bb.gm, %.noexc454
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahe, i64 8
  %.not.i17.i.i451 = icmp eq ptr %i.ags, null
  br i1 %.not.i17.i.i451, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i452, label %bb.gn

bb.gn:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i450
  %i.ahh = load ptr, ptr %i.agp, align 8, !tbaa !75
  %i.ahi = ptrtoint ptr %i.ahh to i64
  %i.ahj = sub i64 %i.ahi, %i.agu
  call void @_ZdlPvm(ptr noundef nonnull %i.ags, i64 noundef %i.ahj) #34
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i452

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i452: ; preds = %bb.gn, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i450
  store ptr %i.ahd, ptr %i.agm, align 8, !tbaa !76
  store ptr %i.ahg, ptr %i.agn, align 8, !tbaa !74
  %i.ahk = getelementptr inbounds nuw [8 x i8], ptr %i.ahd, i64 %i.ahb
  store ptr %i.ahk, ptr %i.agp, align 8, !tbaa !75
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit455

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i447, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i437, %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit408._crit_edge, %.invoke
  %lpad.loopexit.split-lp2139 = landingpad { ptr, i32 }
          cleanup
  %i.ahl = load ptr, ptr %49, align 8, !tbaa !48
  call void @free(ptr noundef %i.ahl) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  %i.ahm = load ptr, ptr %48, align 8, !tbaa !48
  call void @free(ptr noundef %i.ahm) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  br label %.body406

_ZNSt6vectorImSaImEE9push_backERKm.exit455:       ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i452, %bb.gk, %.lr.ph1582
  %i.ahn = add nuw i64 %.01441581, 1              ; 2 uses
  %exitcond1678.not.a = icmp eq i64 %i.ahn, %i.sv
  br i1 %exitcond1678.not.a, label %._crit_edge1583, label %.lr.ph1582, !llvm.loop !294

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.dk, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit431
  %i.aho = ptrtoint ptr %.sroa.21.1 to i64
  %i.ahp = sub i64 %i.aho, %i.st
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0820.1, i64 noundef %i.ahp) #34
  %i.ahq = add nuw i64 %storemerge2061584, 1      ; 2 uses
  %exitcond1679.not = icmp eq i64 %i.ahq, %i.cr
  br i1 %exitcond1679.not, label %._crit_edge1586, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, !llvm.loop !295

.body406:                                         ; preds = %.body413, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ef
  %.pn227.pn.pn = phi { ptr, i32 } [ %i.wr, %bb.ef ], [ %.pn227, %.body413 ], [ %lpad.loopexit.split-lp2139, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %46) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  br label %.body778

.body778:                                         ; preds = %.loopexit.split-lp1423.loopexit.split-lp, %.loopexit.split-lp1428.loopexit.split-lp, %.body406, %.loopexit.split-lp1433.loopexit, %.loopexit.split-lp1433.loopexit.split-lp.loopexit.split-lp
  %.sroa.0820.01522 = phi ptr [ %.sroa.0820.01575, %.loopexit.split-lp1423.loopexit.split-lp ], [ %.sroa.0820.01575, %.loopexit.split-lp1428.loopexit.split-lp ], [ %.sroa.0820.1, %.body406 ], [ %.sroa.0820.01575, %.loopexit.split-lp1433.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0820.1, %.loopexit.split-lp1433.loopexit ] ; 2 uses
  %.sroa.21.01491 = phi ptr [ %.sroa.21.01577, %.loopexit.split-lp1423.loopexit.split-lp ], [ %.sroa.21.01577, %.loopexit.split-lp1428.loopexit.split-lp ], [ %.sroa.21.1, %.body406 ], [ %.sroa.21.01577, %.loopexit.split-lp1433.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.21.1, %.loopexit.split-lp1433.loopexit ]
  %.pn232 = phi { ptr, i32 } [ %lpad.loopexit.split-lp2127, %.loopexit.split-lp1423.loopexit.split-lp ], [ %lpad.loopexit.split-lp2130, %.loopexit.split-lp1428.loopexit.split-lp ], [ %.pn227.pn.pn, %.body406 ], [ %lpad.loopexit.split-lp2133, %.loopexit.split-lp1433.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit1441, %.loopexit.split-lp1433.loopexit ]
  %i.ahr = ptrtoint ptr %.sroa.21.01491 to i64
  %i.ahs = ptrtoint ptr %.sroa.0820.01522 to i64
  %i.aht = sub i64 %i.ahr, %i.ahs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0820.01522, i64 noundef %i.aht) #34
  br label %.body743

.body743:                                         ; preds = %.body778.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body778, %.loopexit.split-lp1453.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1449.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1458.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1463.loopexit.split-lp.loopexit.split-lp, %bb.bl, %bb.bi
  %.pn234.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bi ], [ %lpad.loopexit.split-lp2193, %.loopexit.split-lp1463.loopexit.split-lp.loopexit.split-lp ], [ %.pn204, %bb.bl ], [ %.pn232, %.body778 ], [ %lpad.loopexit.split-lp2188, %.loopexit.split-lp1453.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp2185, %.loopexit.split-lp1449.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp1458.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp2136, %.body778.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ahu = load ptr, ptr %43, align 8, !tbaa !147 ; 3 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.ahw = load i64, ptr %i.ahv, align 8, !tbaa !148 ; 2 uses
  %i.ahx = icmp ne ptr %i.ahu, null
  %i.ahy = icmp ne i64 %i.ahw, 0
  %or.cond.i.i.i.i459 = and i1 %i.ahx, %i.ahy
  br i1 %or.cond.i.i.i.i459, label %.preheader.i.i.preheader.i.i460, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit467

.preheader.i.i.preheader.i.i460:                  ; preds = %.body743
  %i.ahz = mul nsw i64 %i.ahw, 3
  br label %.preheader.i.i.i.i461

.preheader.i.i.i.i461:                            ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i465, %.preheader.i.i.preheader.i.i460
  %.0.i.i.i.i462 = phi i64 [ %i.aia, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i465 ], [ %i.ahz, %.preheader.i.i.preheader.i.i460 ]
  %i.aia = add i64 %.0.i.i.i.i462, -1             ; 3 uses
  %i.aib = getelementptr inbounds nuw [16 x i8], ptr %i.ahu, i64 %i.aia ; 2 uses
  %i.aic = load ptr, ptr %i.aib, align 8, !tbaa !145 ; 4 uses
  %.not.i.i.i.i.i.i463 = icmp eq ptr %i.aic, null
  br i1 %.not.i.i.i.i.i.i463, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i465, label %bb.go

bb.go:                                            ; preds = %.preheader.i.i.i.i461
  %i.aid = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i.i464 = icmp eq i8 %i.aid, 0
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aic, i64 8 ; 3 uses
  %i.aif = load atomic i32, ptr %i.aie monotonic, align 4 ; 2 uses
  %i.aig = icmp eq i32 %i.aif, 1                  ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i464, label %bb.gs, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  br i1 %i.aig, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.aih = load ptr, ptr %i.aic, align 8, !tbaa !45
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 8
  %i.aij = load ptr, ptr %i.aii, align 8
  call void %i.aij(ptr noundef nonnull align 8 dereferenceable(12) %i.aic) #22, !inline_history !279
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i465

bb.gr:                                            ; preds = %bb.gp
  %i.aik = add nsw i32 %i.aif, -1
  store atomic i32 %i.aik, ptr %i.aie monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i465

bb.gs:                                            ; preds = %bb.go
  br i1 %i.aig, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.ail = atomicrmw add ptr %i.aie, i32 -1 release, align 4
  %i.aim = icmp eq i32 %i.ail, 1
  br i1 %i.aim, label %bb.gu, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i465

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  fence acquire
  %i.ain = load ptr, ptr %i.aib, align 8, !tbaa !145 ; 3 uses
  %i.aio = icmp eq ptr %i.ain, null
  br i1 %i.aio, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i465, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.aip = load ptr, ptr %i.ain, align 8, !tbaa !45
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 8
  %i.air = load ptr, ptr %i.aiq, align 8
  call void %i.air(ptr noundef nonnull align 8 dereferenceable(12) %i.ain) #22, !inline_history !279
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i465

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i465:              ; preds = %bb.gv, %bb.gu, %bb.gt, %bb.gr, %bb.gq, %.preheader.i.i.i.i461
  %.old1.not.i.i.i.i466 = icmp eq i64 %i.aia, 0
  br i1 %.old1.not.i.i.i.i466, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit467, label %.preheader.i.i.i.i461

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit467: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i465, %.body743
  call void @free(ptr noundef %i.ahu) #22
  br label %.body357

.body357:                                         ; preds = %bb.ae, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit467
  %.pn234.pn.pn.pn = phi { ptr, i32 } [ %.pn234.pn.pn, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit467 ], [ %i.hr, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  %i.ais = load ptr, ptr %42, align 8, !tbaa !147 ; 3 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.aiu = load i64, ptr %i.ait, align 8, !tbaa !148 ; 2 uses
  %i.aiv = icmp ne ptr %i.ais, null
  %i.aiw = icmp ne i64 %i.aiu, 0
  %or.cond.i.i.i.i468 = and i1 %i.aiv, %i.aiw
  br i1 %or.cond.i.i.i.i468, label %.preheader.i.i.preheader.i.i469, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit476

.preheader.i.i.preheader.i.i469:                  ; preds = %.body357
  %i.aix = mul nsw i64 %i.aiu, 3
  br label %.preheader.i.i.i.i470

.preheader.i.i.i.i470:                            ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i474, %.preheader.i.i.preheader.i.i469
  %.0.i.i.i.i471 = phi i64 [ %i.aiy, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i474 ], [ %i.aix, %.preheader.i.i.preheader.i.i469 ]
  %i.aiy = add i64 %.0.i.i.i.i471, -1             ; 3 uses
  %i.aiz = getelementptr inbounds nuw [16 x i8], ptr %i.ais, i64 %i.aiy ; 2 uses
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !145 ; 4 uses
  %.not.i.i.i.i.i.i472 = icmp eq ptr %i.aja, null
  br i1 %.not.i.i.i.i.i.i472, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i474, label %bb.gw

bb.gw:                                            ; preds = %.preheader.i.i.i.i470
  %i.ajb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i.i473 = icmp eq i8 %i.ajb, 0
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aja, i64 8 ; 3 uses
  %i.ajd = load atomic i32, ptr %i.ajc monotonic, align 4 ; 2 uses
  %i.aje = icmp eq i32 %i.ajd, 1                  ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i473, label %bb.ha, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  br i1 %i.aje, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.ajf = load ptr, ptr %i.aja, align 8, !tbaa !45
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 8
  %i.ajh = load ptr, ptr %i.ajg, align 8
  call void %i.ajh(ptr noundef nonnull align 8 dereferenceable(12) %i.aja) #22, !inline_history !279
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i474

bb.gz:                                            ; preds = %bb.gx
  %i.aji = add nsw i32 %i.ajd, -1
  store atomic i32 %i.aji, ptr %i.ajc monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i474

bb.ha:                                            ; preds = %bb.gw
  br i1 %i.aje, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.ajj = atomicrmw add ptr %i.ajc, i32 -1 release, align 4
  %i.ajk = icmp eq i32 %i.ajj, 1
  br i1 %i.ajk, label %bb.hc, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i474

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  fence acquire
  %i.ajl = load ptr, ptr %i.aiz, align 8, !tbaa !145 ; 3 uses
  %i.ajm = icmp eq ptr %i.ajl, null
  br i1 %i.ajm, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i474, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.ajn = load ptr, ptr %i.ajl, align 8, !tbaa !45
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 8
  %i.ajp = load ptr, ptr %i.ajo, align 8
  call void %i.ajp(ptr noundef nonnull align 8 dereferenceable(12) %i.ajl) #22, !inline_history !279
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i474

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i474:              ; preds = %bb.hd, %bb.hc, %bb.hb, %bb.gz, %bb.gy, %.preheader.i.i.i.i470
  %.old1.not.i.i.i.i475 = icmp eq i64 %i.aiy, 0
  br i1 %.old1.not.i.i.i.i475, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit476, label %.preheader.i.i.i.i470

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit476: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i474, %.body357
  call void @free(ptr noundef %i.ais) #22
  br label %.body355

.body355:                                         ; preds = %bb.ad, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit476
  %.pn234.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn234.pn.pn.pn, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit476 ], [ %i.hq, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit604

.loopexit1419:                                    ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i385, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit
  call void @free(ptr noundef %i.rs) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.loopexit1419, %_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i345, %_ZNSt6vectorIS_ImSaImEESaIS1_EEC2EmRKS2_.exit354
  %.sroa.0869.012911382 = phi ptr [ %i.ho, %.loopexit1419 ], [ %i.ho, %_ZNSt6vectorIS_ImSaImEESaIS1_EEC2EmRKS2_.exit354 ], [ null, %_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i345 ] ; 10 uses
  %.sink.i34913081380 = phi ptr [ %i.hp, %.loopexit1419 ], [ %i.hp, %_ZNSt6vectorIS_ImSaImEESaIS1_EEC2EmRKS2_.exit354 ], [ null, %_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i345 ] ; 4 uses
  %.0.lcssa.i.i.i.i.i35013251378 = phi ptr [ %scevgep.i.i.i.i.i348, %.loopexit1419 ], [ %scevgep.i.i.i.i.i348, %_ZNSt6vectorIS_ImSaImEESaIS1_EEC2EmRKS2_.exit354 ], [ null, %_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i345 ] ; 5 uses
  br i1 %.not.i.i.i.i326, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, label %bb.he

bb.he:                                            ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ajq = shl nuw nsw i64 %i.hf, 3               ; 2 uses
  %i.ajr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajq) #35
          to label %.noexc479 unwind label %bb.hf ; 3 uses

.noexc479:                                        ; preds = %bb.he
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ajr, i8 -1, i64 %i.ajq, i1 false), !tbaa !60
  %i.ajs = getelementptr inbounds nuw [8 x i8], ptr %i.ajr, i64 %i.hf
  %i.ajt = ptrtoint ptr %i.ajs to i64
  br label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %.noexc479, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0797.0 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ajr, %.noexc479 ] ; 9 uses
  %.sroa.15805.0 = phi i64 [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ajt, %.noexc479 ] ; 2 uses
  br i1 %.not.i.i.i.i275, label %.preheader, label %.lr.ph1590

.lr.ph1590:                                       ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
end_hunk_3
begin_hunk_4_@_ZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EE:bb.a

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i, %bb.e
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.t, %bb.e ], [ %i.al, %bb.g ], [ %i.y, %._crit_edge.i.i.i.i ]
  %i.am = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  %i.an = icmp slt i64 %i.s, %i.e
  br i1 %i.an, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.h
  %i.ao = sub i64 %i.e, %i.s                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ao, 8
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader2212, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec = and i64 %i.ao, -8                      ; 3 uses
  %i.ap = add i64 %i.s, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.am, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.o, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi2090 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.au, %vector.body ]
  %i.ar = getelementptr [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <4 x i32>, ptr %i.ar, align 4, !tbaa !50
  %wide.load2091 = load <4 x i32>, ptr %i.as, align 4, !tbaa !50
  %i.at = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.au = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi2090, <4 x i32> %wide.load2091) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !312

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.at, <4 x i32> %i.au)
  %i.aw = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader2212

.lr.ph84.i.i.i.i.preheader2212:                   ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.s, %.lr.ph84.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.am, %.lr.ph84.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader2212, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.ba, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader2212 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.az, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader2212 ]
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.o, i64 %.05582.i.i.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !50
  %i.az = tail call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.ay) ; 2 uses
  %i.ba = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ba, %i.e
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !313

bb.i:                                             ; preds = %bb.d
  %i.bb = load i32, ptr %i.o, align 4, !tbaa !50  ; 3 uses
  %i.bc = icmp sgt i64 %i.e, 1
  br i1 %i.bc, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.i
  %i.bd = add nsw i64 %i.e, -1                    ; 2 uses
  %min.iters.check2093 = icmp ult i64 %i.e, 9
  br i1 %min.iters.check2093, label %.lr.ph89.i.i.i.i.preheader2208, label %vector.ph2094

vector.ph2094:                                    ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec2095 = and i64 %i.bd, -8                  ; 3 uses
  %i.be = or disjoint i64 %n.vec2095, 1
  %broadcast.splatinsert2096 = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat2097 = shufflevector <4 x i32> %broadcast.splatinsert2096, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2098

vector.body2098:                                  ; preds = %vector.body2098, %vector.ph2094
  %index2099 = phi i64 [ 0, %vector.ph2094 ], [ %index.next2104, %vector.body2098 ] ; 2 uses
  %vec.phi2100.a = phi <4 x i32> [ %broadcast.splat2097, %vector.ph2094 ], [ %i.bi, %vector.body2098 ]
  %vec.phi2101 = phi <4 x i32> [ %broadcast.splat2097, %vector.ph2094 ], [ %i.bj, %vector.body2098 ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index2099 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %wide.load2102.a = load <4 x i32>, ptr %i.bg, align 4, !tbaa !50
  %wide.load2103 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !50
  %i.bi = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi2100.a, <4 x i32> %wide.load2102.a) ; 2 uses
  %i.bj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi2101, <4 x i32> %wide.load2103) ; 2 uses
  %index.next2104 = add nuw i64 %index2099, 8     ; 2 uses
  %i.bk = icmp eq i64 %index.next2104, %n.vec2095
  br i1 %i.bk, label %middle.block2105, label %vector.body2098, !llvm.loop !314

middle.block2105:                                 ; preds = %vector.body2098
  %rdx.minmax2106 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bi, <4 x i32> %i.bj)
  %i.bl = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax2106) ; 2 uses
  %cmp.n2107 = icmp eq i64 %i.bd, %n.vec2095
  br i1 %cmp.n2107, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader2208

.lr.ph89.i.i.i.i.preheader2208:                   ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block2105
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.be, %middle.block2105 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.bb, %.lr.ph89.i.i.i.i.preheader ], [ %i.bl, %middle.block2105 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader2208, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.bp, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader2208 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.bo, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader2208 ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.087.i.i.i.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !50
  %i.bo = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.bn) ; 2 uses
  %i.bp = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.bp, %i.e
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !315

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %middle.block2105, %bb.h, %bb.i
  %.3.i.i.i.i = phi i32 [ %i.bo, %.lr.ph89.i.i.i.i ], [ %i.bb, %bb.i ], [ %i.am, %bb.h ], [ %i.bl, %middle.block2105 ], [ %i.aw, %middle.block ], [ %i.az, %.lr.ph84.i.i.i.i ]
  %i.bq = add i32 %.3.i.i.i.i, 1                  ; 2 uses
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %i.bs = invoke noundef i32 @_ZN3igl8copyleft4cgal30extract_cells_single_componentIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SM_EEiRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERNS3_15PlainObjectBaseIT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %.noexc.i unwind label %bb.l   ; 4 uses

.noexc.i:                                         ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  store ptr %i.bt, ptr %26, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 30, ptr %i.c, align 8, !tbaa !60
  %i.bu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.bu, ptr %26, align 8, !tbaa !62
  %i.bv = load i64, ptr %i.c, align 8, !tbaa !60  ; 3 uses
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.bu, ptr noundef nonnull align 1 dereferenceable(30) @.str.22, i64 30, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !63
  %i.bx = load ptr, ptr %26, align 8, !tbaa !62
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bv
  store i8 0, ptr %i.by, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.bz = load ptr, ptr %26, align 8, !tbaa !62   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bt
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  %i.cb = load i64, ptr %i.bt, align 8, !tbaa !56
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl27triangle_triangle_adjacencyIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_S3_iiEEvRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EEbRSt6vectorISH_ISH_IT2_SaISI_EESaISK_EESaISM_EERSH_ISH_ISH_IT3_SaISQ_EESaISS_EESaISU_EE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %28)
          to label %.noexc.i262 unwind label %bb.m

.noexc.i262:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  store ptr %i.cd, ptr %29, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 22, ptr %i.b, align 8, !tbaa !60
  %i.ce = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc263 unwind label %bb.m  ; 2 uses

.noexc263:                                        ; preds = %.noexc.i262
  store ptr %i.ce, ptr %29, align 8, !tbaa !62
  %i.cf = load i64, ptr %i.b, align 8, !tbaa !60  ; 3 uses
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.ce, ptr noundef nonnull align 1 dereferenceable(22) @.str.23, i64 22, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !63
  %i.ch = load ptr, ptr %29, align 8, !tbaa !62
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cf
  store i8 0, ptr %i.ci, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.cj = load ptr, ptr %29, align 8, !tbaa !62   ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.cd
  br i1 %i.ck, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265: ; preds = %.noexc263
  %i.cl = load i64, ptr %i.cd, align 8, !tbaa !56
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i266: ; preds = %.noexc263, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl16facet_componentsIiN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_EEvRKSt6vectorIS4_IS4_IT_SaIS5_EESaIS7_EESaIS9_EERNS1_15PlainObjectBaseIT0_EERNSE_IT1_EE(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i266
  %i.cn = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  store ptr %i.cn, ptr %32, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.cn, ptr noundef nonnull align 1 dereferenceable(15) @.str.24, i64 15, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 15, ptr %i.co, align 8, !tbaa !63
  %i.cp = getelementptr inbounds nuw i8, ptr %32, i64 31
  store i8 0, ptr %i.cp, align 1, !tbaa !56
  %i.cq = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !55 ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  %i.cs = icmp ugt i64 %i.cr, 384307168202282325
  br i1 %i.cs, label %bb.j, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #33
          to label %.noexc276 unwind label %bb.o

.noexc276:                                        ; preds = %bb.j
  unreachable

_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  %.not.i.i.i.i275 = icmp eq i64 %i.cr, 0         ; 4 uses
  br i1 %.not.i.i.i.i275, label %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  store i64 0, ptr %33, align 8
  br label %bb.k

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ct = mul nuw nsw i64 %i.cr, 24               ; 3 uses
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #35
          to label %.noexc277 unwind label %bb.o  ; 4 uses

.noexc277:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.cu, ptr %33, align 8, !tbaa !66
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %i.cr
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cu, i8 0, i64 %i.ct, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.cu, i64 %i.ct
  br label %bb.k

bb.k:                                             ; preds = %.noexc277, %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EEC2EmRKS3_.exit.thread.i
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.cv, %.noexc277 ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.noexc277 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.cx, align 8, !tbaa !67
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.cw, align 8, !tbaa !68
  %.not1598 = icmp eq i64 %i.n, 0                 ; 2 uses
  br i1 %.not1598, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, i8 0, i64 24, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !347
  %i.da = trunc i64 %i.cz to i32
  invoke void @_ZN3igl25vertex_triangle_adjacencyIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEmmEEvNT_6ScalarERKNS1_10MatrixBaseIS4_EERSt6vectorISA_IT0_SaISB_EESaISD_EERSA_ISA_IT1_SaISH_EESaISJ_EE(i32 noundef %i.da, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %35)
          to label %_ZNSt6vectorIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i unwind label %bb.az

bb.l:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, %.noexc.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.jw

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc.i262
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.jp

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i266
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.jo

bb.o:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.j
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit702

.lr.ph:                                           ; preds = %bb.k, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %storemerge1571 = phi i64 [ %i.ej, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ 0, %bb.k ] ; 4 uses
  %i.df = load ptr, ptr %30, align 8, !tbaa !48
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %storemerge1571
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !50
  %i.di = sext i32 %i.dh to i64
  %i.dj = load ptr, ptr %33, align 8, !tbaa !66
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %i.di ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !74 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !75
  %.not.i = icmp eq ptr %i.dm, %i.do
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  store i64 %storemerge1571, ptr %i.dm, align 8, !tbaa !60
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.dp, ptr %i.dl, align 8, !tbaa !74
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.q:                                             ; preds = %.lr.ph
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !76 ; 4 uses
  %i.dr = ptrtoint ptr %i.dm to i64
  %i.ds = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.dt = sub i64 %i.dr, %i.ds                    ; 5 uses
  %i.du = icmp eq i64 %i.dt, 9223372036854775800
  br i1 %i.du, label %bb.r, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #33
          to label %.noexc278 unwind label %.loopexit.split-lp1469.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc278:                                        ; preds = %bb.r
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.dv = ashr exact i64 %i.dt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dv, i64 1)
  %i.dw = add nsw i64 %.sroa.speculated.i.i.i, %i.dv ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dv
  %i.dy = call i64 @llvm.umin.i64(i64 %i.dw, i64 1152921504606846975)
  %i.dz = select i1 %i.dx, i64 1152921504606846975, i64 %i.dy ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dz, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ea = shl nuw nsw i64 %i.dz, 3
  %i.eb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #35
          to label %.noexc279 unwind label %.loopexit.split-lp1469.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc279:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 %i.dt ; 2 uses
  store i64 %storemerge1571, ptr %i.ec, align 8, !tbaa !60
  %i.ed = icmp sgt i64 %i.dt, 0
  br i1 %i.ed, label %bb.s, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.s:                                             ; preds = %.noexc279
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eb, ptr align 8 %i.dq, i64 %i.dt, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.s, %.noexc279
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.not.i17.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.ef = load ptr, ptr %i.dn, align 8, !tbaa !75
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = sub i64 %i.eg, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.eh) #34
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.eb, ptr %i.dk, align 8, !tbaa !76
  store ptr %i.ee, ptr %i.dl, align 8, !tbaa !74
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dz
  store ptr %i.ei, ptr %i.dn, align 8, !tbaa !75
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.p
  %i.ej = add nuw i64 %storemerge1571, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.ej, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !316

.loopexit.split-lp1469.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %bb.r
  %lpad.loopexit.split-lp2206 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1469

_ZNSt6vectorIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i275, label %.thread1210, label %.lr.ph.preheader.i.i.i.i.i281

.lr.ph.preheader.i.i.i.i.i281:                    ; preds = %_ZNSt6vectorIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.ek = shl nuw nsw i64 %i.cr, 4                ; 3 uses
  %i.el = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #35
          to label %bb.u unwind label %bb.ba      ; 4 uses

bb.u:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i281
  store ptr %i.el, ptr %36, align 8, !tbaa !79
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.cr
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.el, i8 0, i64 %i.ek, i1 false)
  %scevgep.i.i.i.i.i282 = getelementptr i8, ptr %i.el, i64 %i.ek
  %i.en = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 7 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 7 uses
  store ptr %i.em, ptr %i.eo, align 8, !tbaa !80
  store ptr %scevgep.i.i.i.i.i282, ptr %i.en, align 8, !tbaa !81
  %i.ep = icmp samesign ugt i64 %i.cr, 82351536043346212
  br i1 %i.ep, label %bb.v, label %_ZNSt12_Vector_baseIN4CGAL9AABB_treeINS0_13AABB_traits_3INS0_5EpeckENS0_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EEC2EmRKSK_.exit.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #33
          to label %.noexc289 unwind label %bb.bb

.noexc289:                                        ; preds = %bb.v
  unreachable

_ZNSt12_Vector_baseIN4CGAL9AABB_treeINS0_13AABB_traits_3INS0_5EpeckENS0_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EEC2EmRKSK_.exit.i: ; preds = %bb.u
  %i.eq = mul nuw nsw i64 %i.cr, 112
  %i.er = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eq) #35
          to label %.lr.ph.i.i.i.i.i.preheader unwind label %bb.bb ; 8 uses

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseIN4CGAL9AABB_treeINS0_13AABB_traits_3INS0_5EpeckENS0_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EEC2EmRKSK_.exit.i
  %i.es = add nsw i64 %i.cr, -1
  %xtraiter = and i64 %i.cr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol
end_hunk_4
begin_hunk_5_@_ZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %42, i64 noundef %i.cr, i64 noundef 3)
          to label %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEC2ImiEERKT_RKT0_.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %42) #22
  br label %.body355

_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEC2ImiEERKT_RKT0_.exit: ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %43, i64 noundef %i.cr, i64 noundef 3)
          to label %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEC2ImiEERKT_RKT0_.exit359 unwind label %bb.ae

bb.ae:                                            ; preds = %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEC2ImiEERKT_RKT0_.exit
  %i.hr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %43) #22
  br label %.body357

_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEC2ImiEERKT_RKT0_.exit359: ; preds = %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEC2ImiEERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #22
  %i.hs = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #35
          to label %bb.af unwind label %bb.bg     ; 7 uses

bb.af:                                            ; preds = %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEC2ImiEERKT_RKT0_.exit359
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store i32 1, ptr %i.ht, align 4, !tbaa !128
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store <2 x double> <double f0xFFEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF>, ptr %i.hu, align 16, !tbaa !56
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  store ptr null, ptr %i.hv, align 16, !tbaa !131
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 40
  store i32 0, ptr %i.hw, align 8, !tbaa !133
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEdEE, i64 16), ptr %i.hs, align 16, !tbaa !45
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 48
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.hx, align 16, !tbaa !142
  store ptr %i.hs, ptr %44, align 8, !tbaa !145
  %i.hy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Eigen9DenseBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEE11setConstantERKSH_(ptr noundef nonnull align 1 dereferenceable(1) %42, ptr noundef nonnull align 8 dereferenceable(9) %44)
          to label %bb.ag unwind label %bb.bh     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.hz = load ptr, ptr %44, align 8, !tbaa !145  ; 4 uses
  %.not.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ia = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i361 = icmp eq i8 %i.ia, 0
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 3 uses
  %i.ic = load atomic i32, ptr %i.ib monotonic, align 4 ; 2 uses
  %i.id = icmp eq i32 %i.ic, 1                    ; 2 uses
  br i1 %.not.i.i.i361, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.id, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ie = load ptr, ptr %i.hz, align 8, !tbaa !45
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(12) %i.hz) #22, !inline_history !2
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.ak:                                            ; preds = %bb.ai
  %i.ih = add nsw i32 %i.ic, -1
  store atomic i32 %i.ih, ptr %i.ib monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.al:                                            ; preds = %bb.ah
  br i1 %i.id, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ii = atomicrmw add ptr %i.ib, i32 -1 release, align 4
  %i.ij = icmp eq i32 %i.ii, 1
  br i1 %i.ij, label %bb.an, label %_ZN4CGAL6HandleD2Ev.exit

bb.an:                                            ; preds = %bb.am, %bb.al
  fence acquire
  %i.ik = load ptr, ptr %44, align 8, !tbaa !145  ; 3 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.im = load ptr, ptr %i.ik, align 8, !tbaa !45
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(12) %i.ik) #22, !inline_history !2
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.ag, %bb.aj, %bb.ak, %bb.am, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #22
  %i.ip = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #35
          to label %bb.ap unwind label %bb.bj     ; 7 uses

bb.ap:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store i32 1, ptr %i.iq, align 4, !tbaa !128
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store <2 x double> <double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %i.ir, align 16, !tbaa !56
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  store ptr null, ptr %i.is, align 16, !tbaa !131
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 40
  store i32 0, ptr %i.it, align 8, !tbaa !133
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEdEE, i64 16), ptr %i.ip, align 16, !tbaa !45
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ip, i64 48
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.iu, align 16, !tbaa !142
  store ptr %i.ip, ptr %45, align 8, !tbaa !145
  %i.iv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Eigen9DenseBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEE11setConstantERKSH_(ptr noundef nonnull align 1 dereferenceable(1) %43, ptr noundef nonnull align 8 dereferenceable(9) %45)
          to label %bb.aq unwind label %bb.bk     ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  %i.iw = load ptr, ptr %45, align 8, !tbaa !145  ; 4 uses
  %.not.i.i364 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i364, label %_ZN4CGAL6HandleD2Ev.exit366, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ix = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i365 = icmp eq i8 %i.ix, 0
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 3 uses
  %i.iz = load atomic i32, ptr %i.iy monotonic, align 4 ; 2 uses
  %i.ja = icmp eq i32 %i.iz, 1                    ; 2 uses
  br i1 %.not.i.i.i365, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  br i1 %i.ja, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jb = load ptr, ptr %i.iw, align 8, !tbaa !45
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(12) %i.iw) #22, !inline_history !2
  br label %_ZN4CGAL6HandleD2Ev.exit366

bb.au:                                            ; preds = %bb.as
  %i.je = add nsw i32 %i.iz, -1
  store atomic i32 %i.je, ptr %i.iy monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit366

bb.av:                                            ; preds = %bb.ar
  br i1 %i.ja, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jf = atomicrmw add ptr %i.iy, i32 -1 release, align 4
  %i.jg = icmp eq i32 %i.jf, 1
  br i1 %i.jg, label %bb.ax, label %_ZN4CGAL6HandleD2Ev.exit366

bb.ax:                                            ; preds = %bb.aw, %bb.av
  fence acquire
  %i.jh = load ptr, ptr %45, align 8, !tbaa !145  ; 3 uses
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %_ZN4CGAL6HandleD2Ev.exit366, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jj = load ptr, ptr %i.jh, align 8, !tbaa !45
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(12) %i.jh) #22, !inline_history !2
  br label %_ZN4CGAL6HandleD2Ev.exit366

_ZN4CGAL6HandleD2Ev.exit366:                      ; preds = %bb.aq, %bb.at, %bb.au, %bb.aw, %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  br i1 %.not1598, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph, label %.lr.ph1575

.lr.ph1575:                                       ; preds = %_ZN4CGAL6HandleD2Ev.exit366
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jn = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 12 uses
  %i.jo = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 12 uses
  br label %bb.bm

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph: ; preds = %bb.bn, %_ZN4CGAL6HandleD2Ev.exit366
  %i.jp = shl nuw nsw i64 %i.cr, 3
  %i.jq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  %i.jr = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jt = getelementptr inbounds nuw i8, ptr %22, i64 8
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
  %i.ju = getelementptr inbounds nuw i8, ptr %22, i64 128
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 144
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 152
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 160
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 168
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 176
  %i.jv = getelementptr inbounds nuw i8, ptr %21, i64 216 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %46, i64 8
  br label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

bb.az:                                            ; preds = %._crit_edge
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.jh

bb.ba:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i281
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEESaIS2_EED2Ev.exit669

bb.bb:                                            ; preds = %_ZNSt12_Vector_baseIN4CGAL9AABB_treeINS0_13AABB_traits_3INS0_5EpeckENS0_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EEC2EmRKSK_.exit.i, %bb.v
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL9AABB_treeINS0_13AABB_traits_3INS0_5EpeckENS0_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS3_EES_IS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISI_EED2Ev.exit660

.thread:                                          ; preds = %.lr.ph.preheader.i.i.i.i.i292
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.i.i653.preheader.sink.split

.thread1941:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i299
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %37) #22
  br label %.lr.ph.i.i.i653.preheader.sink.split

bb.bc:                                            ; preds = %bb.z
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  br label %.body321

bb.bd:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i327, %bb.ab
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %.body321

bb.be:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i337
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit629

bb.bf:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i347
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit618

bb.bg:                                            ; preds = %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEC2ImiEERKT_RKT0_.exit359
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.af
  %i.kj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %44) #22
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn = phi { ptr, i32 } [ %i.kj, %bb.bh ], [ %i.ki, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %.body746

bb.bj:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bk:                                            ; preds = %bb.ap
  %i.kl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %45) #22
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pn204 = phi { ptr, i32 } [ %i.kl, %bb.bk ], [ %i.kk, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  br label %.body746

bb.bm:                                            ; preds = %.lr.ph1575, %bb.bn
  %.01481574 = phi i64 [ 0, %.lr.ph1575 ], [ %i.ks, %bb.bn ] ; 3 uses
  %i.km = load ptr, ptr %30, align 8, !tbaa !48
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.km, i64 %.01481574
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !50
  %i.kp = load ptr, ptr %1, align 8, !tbaa !46, !noalias !349
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %.01481574 ; 2 uses
  %i.kr = sext i32 %i.ko to i64
  %.idx.i.i.i = mul nsw i64 %i.kr, 48             ; 4 uses
  br label %.preheader1448

.preheader1448:                                   ; preds = %bb.bm, %bb.bo
  %.01471573 = phi i64 [ 0, %bb.bm ], [ %i.kt, %bb.bo ] ; 3 uses
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bo
  %i.ks = add nuw i64 %.01481574, 1               ; 2 uses
  %exitcond1674.not = icmp eq i64 %i.ks, %i.n
  br i1 %exitcond1674.not, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph, label %bb.bm, !llvm.loop !320

bb.bo:                                            ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381
  %i.kt = add nuw nsw i64 %.01471573, 1           ; 2 uses
  %exitcond1673.not = icmp eq i64 %i.kt, 3
  br i1 %exitcond1673.not, label %bb.bn, label %.preheader1448, !llvm.loop !321

bb.bp:                                            ; preds = %.preheader1448, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381
  %.01461572 = phi i64 [ 0, %.preheader1448 ], [ %i.qi, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381 ] ; 7 uses
  %i.ku = load ptr, ptr %42, align 8, !tbaa !177
  %i.kv = getelementptr i8, ptr %i.ku, i64 %.idx.i.i.i
  %i.kw = getelementptr [16 x i8], ptr %i.kv, i64 %.01461572 ; 5 uses
  %i.kx = load i64, ptr %i.m, align 8, !tbaa !43
  %i.ky = mul nsw i64 %i.kx, %.01471573
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.kq, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !50
  %i.lb = sext i32 %i.la to i64
  %i.lc = load ptr, ptr %0, align 8, !tbaa !350
  %i.ld = load i64, ptr %i.jm, align 8, !tbaa !178
  %i.le = mul nsw i64 %i.ld, %i.lb
  %i.lf = getelementptr [16 x i8], ptr %i.lc, i64 %i.le
  %i.lg = getelementptr [16 x i8], ptr %i.lf, i64 %.01461572 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !145 ; 6 uses
  %i.li = load ptr, ptr %i.kw, align 8, !tbaa !145 ; 3 uses
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !56
  %i.ln = load double, ptr %i.lk, align 16, !tbaa !56
  %i.lo = fneg double %i.ln
  %i.lp = fcmp olt double %i.lm, %i.lo
  br i1 %i.lp, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lr = load double, ptr %i.lq, align 16, !tbaa !56
  %i.ls = fneg double %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !56
  %i.lv = fcmp ugt double %i.lu, %i.ls
  %.fr = freeze i1 %i.lv
  %i.lw = select i1 %.fr, i16 256, i16 0
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i:   ; preds = %bb.br, %bb.bq
  %.sroa.0.0.insert.insert.i.i = phi i16 [ 257, %bb.bq ], [ %i.lw, %bb.br ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i16 %.sroa.0.0.insert.insert.i.i to i8
  %.sroa.2.0.extract.shift.i.i = lshr i16 %.sroa.0.0.insert.insert.i.i, 8
  %.sroa.2.0.extract.trunc.i.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i to i8
  %i.lx = icmp eq i8 %.sroa.0.0.extract.trunc.i.i, %.sroa.2.0.extract.trunc.i.i
  br i1 %i.lx, label %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lh, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  store ptr %i.lh, ptr %19, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  store ptr %19, ptr %18, align 8, !tbaa !126
  store ptr %18, ptr %i.jn, align 8, !tbaa !126
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jo, align 8, !tbaa !126
  %i.lz = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.ly, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %.loopexit.split-lp1450.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.bs
  %.not.i.i.i.i745 = icmp eq i32 %i.lz, 0
  br i1 %.not.i.i.i.i745, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i, label %bb.bt

bb.bt:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.lz) #33
          to label %bb.bu unwind label %.loopexit.split-lp1450.loopexit.split-lp.loopexit.split-lp

bb.bu:                                            ; preds = %bb.bt
  unreachable

.loopexit.split-lp1450.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bs, %bb.bt
  %lpad.loopexit.split-lp2186 = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.jn, align 8, !tbaa !126
  store ptr null, ptr %i.jo, align 8, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %.body746

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.jn, align 8, !tbaa !126
  store ptr null, ptr %i.jo, align 8, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lh, i64 32
  %i.mb = load atomic ptr, ptr %i.ma monotonic, align 8
  %i.mc = load ptr, ptr %i.kw, align 8, !tbaa !145 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  store ptr %i.mc, ptr %17, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store ptr %17, ptr %16, align 8, !tbaa !126
  store ptr %16, ptr %i.jn, align 8, !tbaa !126
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jo, align 8, !tbaa !126
  %i.me = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.md, ptr noundef nonnull @__once_proxy)
end_hunk_5
begin_hunk_6_@_ZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EE:bb.a

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i774:       ; preds = %bb.dp
  %.not.i.i.i.i775 = icmp eq i32 %i.tj, 0
  br i1 %.not.i.i.i.i775, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i776, label %bb.dq

bb.dq:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i774
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.tj) #33
          to label %bb.dr unwind label %.loopexit.split-lp1424.loopexit.split-lp

bb.dr:                                            ; preds = %bb.dq
  unreachable

.loopexit.split-lp1424.loopexit.split-lp:         ; preds = %bb.dp, %bb.dq
  %lpad.loopexit.split-lp2128 = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.jq, align 8, !tbaa !126
  store ptr null, ptr %i.jr, align 8, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.body781

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i776: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i774
  store ptr null, ptr %i.jq, align 8, !tbaa !126
  store ptr null, ptr %i.jr, align 8, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sr, i64 32
  %i.tl = load atomic ptr, ptr %i.tk monotonic, align 8
  %i.tm = load ptr, ptr %i.sq, align 8, !tbaa !145 ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %i.tm, ptr %9, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %9, ptr %8, align 8, !tbaa !126
  store ptr %8, ptr %i.jq, align 8, !tbaa !126
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jr, align 8, !tbaa !126
  %i.to = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.tn, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i777 unwind label %.loopexit.split-lp1429.loopexit.split-lp ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i777:     ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i776
  %.not.i.i.i11.i778 = icmp eq i32 %i.to, 0
  br i1 %.not.i.i.i11.i778, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i779, label %bb.ds

bb.ds:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i777
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.to) #33
          to label %bb.dt unwind label %.loopexit.split-lp1429.loopexit.split-lp

bb.dt:                                            ; preds = %bb.ds
  unreachable

.loopexit.split-lp1429.loopexit.split-lp:         ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i776, %bb.ds
  %lpad.loopexit.split-lp2131 = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.jq, align 8, !tbaa !126
  store ptr null, ptr %i.jr, align 8, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.body781

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i779: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i777
  store ptr null, ptr %i.jq, align 8, !tbaa !126
  store ptr null, ptr %i.jr, align 8, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 32
  %i.tq = load atomic ptr, ptr %i.tp monotonic, align 8
  %i.tr = invoke noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.tl, ptr noundef nonnull align 16 dereferenceable(64) %i.tq)
          to label %.noexc783 unwind label %.loopexit.split-lp1434.loopexit.split-lp.loopexit.split-lp

.noexc783:                                        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i779
  %i.ts = icmp slt i32 %i.tr, 0
  br i1 %i.ts, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %.noexc783..noexc393.thread_crit_edge

.noexc783..noexc393.thread_crit_edge:             ; preds = %.noexc783
  %.pre = load ptr, ptr %43, align 8, !tbaa !177
  %.pre1687.a = load ptr, ptr %42, align 8, !tbaa !177
  br label %.noexc393.thread

.noexc393:                                        ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i767
  %i.tt = trunc i16 %.sroa.0.0.insert.insert.i.i768 to i1
  br i1 %i.tt, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %.noexc393.thread

.noexc393.thread:                                 ; preds = %.noexc783..noexc393.thread_crit_edge, %bb.dm, %.noexc393
  %i.tu = phi ptr [ %.pre1687.a, %.noexc783..noexc393.thread_crit_edge ], [ %i.sp, %bb.dm ], [ %i.sp, %.noexc393 ]
  %i.tv = phi ptr [ %.pre, %.noexc783..noexc393.thread_crit_edge ], [ %i.sn, %bb.dm ], [ %i.sn, %.noexc393 ]
  %i.tw = getelementptr i8, ptr %i.tv, i64 %.idx.i.i.i.i
  %i.tx = getelementptr i8, ptr %i.tw, i64 16
  %i.ty = getelementptr i8, ptr %i.tu, i64 %.idx.i.i.i12.i
  %i.tz = getelementptr i8, ptr %i.ty, i64 16
  %i.ua = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.tx, ptr noundef nonnull align 8 dereferenceable(9) %i.tz)
          to label %.noexc394 unwind label %.loopexit.split-lp1434.loopexit.split-lp.loopexit.split-lp

.noexc394:                                        ; preds = %.noexc393.thread
  br i1 %i.ua, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %bb.du

bb.du:                                            ; preds = %.noexc394
  %i.ub = load ptr, ptr %43, align 8, !tbaa !177
  %i.uc = getelementptr i8, ptr %i.ub, i64 %.idx.i.i.i.i
  %i.ud = getelementptr i8, ptr %i.uc, i64 32
  %i.ue = load ptr, ptr %42, align 8, !tbaa !177
  %i.uf = getelementptr i8, ptr %i.ue, i64 %.idx.i.i.i12.i
  %i.ug = getelementptr i8, ptr %i.uf, i64 32
  %i.uh = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.ud, ptr noundef nonnull align 8 dereferenceable(9) %i.ug)
          to label %.noexc395 unwind label %.loopexit.split-lp1434.loopexit.split-lp.loopexit.split-lp

.noexc395:                                        ; preds = %bb.du
  br i1 %i.uh, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %bb.dv

bb.dv:                                            ; preds = %.noexc395
  %i.ui = load ptr, ptr %43, align 8, !tbaa !177
  %i.uj = getelementptr i8, ptr %i.ui, i64 %.idx.i.i.i12.i
  %i.uk = load ptr, ptr %42, align 8, !tbaa !177
  %i.ul = getelementptr i8, ptr %i.uk, i64 %.idx.i.i.i.i
  %i.um = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.uj, ptr noundef nonnull align 8 dereferenceable(9) %i.ul)
          to label %.noexc396 unwind label %.loopexit.split-lp1434.loopexit.split-lp.loopexit.split-lp

.noexc396:                                        ; preds = %bb.dv
  br i1 %i.um, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %bb.dw

bb.dw:                                            ; preds = %.noexc396
  %i.un = load ptr, ptr %43, align 8, !tbaa !177
  %i.uo = getelementptr i8, ptr %i.un, i64 %.idx.i.i.i12.i
  %i.up = getelementptr i8, ptr %i.uo, i64 16
  %i.uq = load ptr, ptr %42, align 8, !tbaa !177
  %i.ur = getelementptr i8, ptr %i.uq, i64 %.idx.i.i.i.i
  %i.us = getelementptr i8, ptr %i.ur, i64 16
  %i.ut = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.up, ptr noundef nonnull align 8 dereferenceable(9) %i.us)
          to label %.noexc397 unwind label %.loopexit.split-lp1434.loopexit.split-lp.loopexit.split-lp

.noexc397:                                        ; preds = %bb.dw
  br i1 %i.ut, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %bb.dx

bb.dx:                                            ; preds = %.noexc397
  %i.uu = load ptr, ptr %43, align 8, !tbaa !177
  %i.uv = getelementptr i8, ptr %i.uu, i64 %.idx.i.i.i12.i
  %i.uw = getelementptr i8, ptr %i.uv, i64 32
  %i.ux = load ptr, ptr %42, align 8, !tbaa !177
  %i.uy = getelementptr i8, ptr %i.ux, i64 %.idx.i.i.i.i
  %i.uz = getelementptr i8, ptr %i.uy, i64 32
  %i.va = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.uw, ptr noundef nonnull align 8 dereferenceable(9) %i.uz)
          to label %_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit unwind label %.loopexit.split-lp1434.loopexit.split-lp.loopexit.split-lp

_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit: ; preds = %bb.dx
  br i1 %i.va, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %bb.dy

bb.dy:                                            ; preds = %_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit
  %.not.i399 = icmp eq ptr %.sroa.14831.01577, %.sroa.21.01578
  br i1 %.not.i399, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  store i64 %storemerge2171579, ptr %.sroa.14831.01577, align 8, !tbaa !60
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.14831.01577, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit408

bb.ea:                                            ; preds = %bb.dy
  %i.vc = ptrtoint ptr %.sroa.21.01578 to i64
  %i.vd = ptrtoint ptr %.sroa.0823.01576 to i64
  %i.ve = sub i64 %i.vc, %i.vd                    ; 6 uses
  %i.vf = icmp eq i64 %i.ve, 9223372036854775800
  br i1 %i.vf, label %bb.eb, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i400

bb.eb:                                            ; preds = %bb.ea
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #33
          to label %.noexc406 unwind label %.loopexit.split-lp1434.loopexit.split-lp.loopexit.split-lp

.noexc406:                                        ; preds = %bb.eb
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i400: ; preds = %bb.ea
  %i.vg = ashr exact i64 %i.ve, 3                 ; 3 uses
  %.sroa.speculated.i.i.i401 = call i64 @llvm.umax.i64(i64 %i.vg, i64 1)
  %i.vh = add nsw i64 %.sroa.speculated.i.i.i401, %i.vg ; 2 uses
  %i.vi = icmp ult i64 %i.vh, %i.vg
  %i.vj = call i64 @llvm.umin.i64(i64 %i.vh, i64 1152921504606846975)
  %i.vk = select i1 %i.vi, i64 1152921504606846975, i64 %i.vj ; 3 uses
  %.not.i.i.i402 = icmp ne i64 %i.vk, 0
  call void @llvm.assume(i1 %.not.i.i.i402)
  %i.vl = shl nuw nsw i64 %i.vk, 3
  %i.vm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vl) #35
          to label %.noexc407 unwind label %.loopexit.split-lp1434.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc407:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i400
  %i.vn = getelementptr inbounds i8, ptr %i.vm, i64 %i.ve ; 2 uses
  store i64 %storemerge2171579, ptr %i.vn, align 8, !tbaa !60
  %i.vo = icmp sgt i64 %i.ve, 0
  br i1 %i.vo, label %bb.ec, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i405

bb.ec:                                            ; preds = %.noexc407
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.vm, ptr align 8 %.sroa.0823.01576, i64 %i.ve, i1 false)
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i405

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i405: ; preds = %bb.ec, %.noexc407
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0823.01576, i64 noundef %i.ve) #34
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.vm, i64 %i.vk
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit408

_ZNSt6vectorImSaImEE9push_backERKm.exit408:       ; preds = %.noexc783, %.noexc393, %.noexc394, %.noexc395, %.noexc396, %.noexc397, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i405, %bb.dz, %_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit, %bb.dl
  %.sroa.0823.1 = phi ptr [ %.sroa.0823.01576, %bb.dl ], [ %.sroa.0823.01576, %bb.dz ], [ %.sroa.0823.01576, %_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit ], [ %i.vm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i405 ], [ %.sroa.0823.01576, %.noexc397 ], [ %.sroa.0823.01576, %.noexc396 ], [ %.sroa.0823.01576, %.noexc395 ], [ %.sroa.0823.01576, %.noexc394 ], [ %.sroa.0823.01576, %.noexc393 ], [ %.sroa.0823.01576, %.noexc783 ] ; 8 uses
  %.sroa.14831.1 = phi ptr [ %.sroa.14831.01577, %bb.dl ], [ %i.vb, %bb.dz ], [ %.sroa.14831.01577, %_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit ], [ %i.vp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i405 ], [ %.sroa.14831.01577, %.noexc397 ], [ %.sroa.14831.01577, %.noexc396 ], [ %.sroa.14831.01577, %.noexc395 ], [ %.sroa.14831.01577, %.noexc394 ], [ %.sroa.14831.01577, %.noexc393 ], [ %.sroa.14831.01577, %.noexc783 ] ; 3 uses
  %.sroa.21.1 = phi ptr [ %.sroa.21.01578, %bb.dl ], [ %.sroa.21.01578, %bb.dz ], [ %.sroa.21.01578, %_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit ], [ %i.vq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i405 ], [ %.sroa.21.01578, %.noexc397 ], [ %.sroa.21.01578, %.noexc396 ], [ %.sroa.21.01578, %.noexc395 ], [ %.sroa.21.01578, %.noexc394 ], [ %.sroa.21.01578, %.noexc393 ], [ %.sroa.21.01578, %.noexc783 ] ; 4 uses
  %i.vr = add nuw i64 %storemerge2171579, 1       ; 2 uses
  %exitcond1675.not = icmp eq i64 %i.vr, %i.cr
  br i1 %exitcond1675.not, label %bb.dk, label %bb.dl, !llvm.loop !324

bb.ed:                                            ; preds = %bb.dk
  %i.vs = load ptr, ptr %36, align 8, !tbaa !79
  %i.vt = getelementptr inbounds nuw [16 x i8], ptr %i.vs, i64 %storemerge2061585
  %i.vu = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0909.010161063109012081218, i64 %storemerge2061585 ; 2 uses
  %i.vv = load ptr, ptr %37, align 8, !tbaa !111
  %i.vw = getelementptr inbounds nuw [24 x i8], ptr %i.vv, i64 %storemerge2061585
  %i.vx = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0899.0111811981220, i64 %storemerge2061585 ; 2 uses
  invoke void @_ZN3igl8copyleft4cgal17submesh_aabb_treeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEENS5_5EpeckEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERNS5_9AABB_treeINS5_13AABB_traits_3IT2_NS5_25AABB_triangle_primitive_3IS14_NSt6vectorINS14_10Triangle_3ESaIS17_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERS19_RS16_IbSaIbEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.vt, ptr noundef nonnull align 8 dereferenceable(107) %i.vu, ptr noundef nonnull align 8 dereferenceable(24) %i.vw, ptr noundef nonnull align 8 dereferenceable(40) %i.vx)
          to label %bb.ee unwind label %.loopexit.split-lp1434.loopexit

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %46, i64 noundef %i.sk, i64 noundef 3)
          to label %.lr.ph1581 unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %.body409

.loopexit.split-lp1434.loopexit:                  ; preds = %bb.ed
  %lpad.loopexit1442 = landingpad { ptr, i32 }
          cleanup
  br label %.body781

.loopexit.split-lp1434.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc393.thread, %bb.du, %bb.dv, %bb.dw, %bb.dx, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i400, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i779, %bb.eb
  %lpad.loopexit.split-lp2134 = landingpad { ptr, i32 }
          cleanup
  br label %.body781

.lr.ph1581:                                       ; preds = %bb.ee, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELi1ELin1ELi1ELi1ELin1EEEED2Ev.exit
  %.01451580 = phi i64 [ %i.abs, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELi1ELin1ELi1ELi1ELin1EEEED2Ev.exit ], [ 0, %bb.ee ] ; 3 uses
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0823.1, i64 %.01451580
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #22
  %i.wb = load ptr, ptr %38, align 8, !tbaa !48
  %i.wc = getelementptr inbounds [4 x i8], ptr %i.wb, i64 %i.wa
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !50
  %i.we = sext i32 %i.wd to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22, !noalias !351
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22, !noalias !351
  %i.wf = load ptr, ptr %1, align 8, !tbaa !46, !noalias !351
  %i.wg = getelementptr [4 x i8], ptr %i.wf, i64 %i.we ; 3 uses
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !50, !noalias !351
  %i.wi = sext i32 %i.wh to i64                   ; 2 uses
  %i.wj = load ptr, ptr %0, align 8, !tbaa !350, !noalias !352 ; 3 uses
  %i.wk = load i64, ptr %i.js, align 8, !tbaa !178, !noalias !352 ; 9 uses
  %i.wl = mul nsw i64 %i.wk, %i.wi
  %i.wm = getelementptr inbounds [16 x i8], ptr %i.wj, i64 %i.wl
  %i.wn = load i64, ptr %i.m, align 8, !tbaa !43, !noalias !351 ; 2 uses
  %i.wo = getelementptr [4 x i8], ptr %i.wg, i64 %i.wn
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !50, !noalias !351
  %i.wq = sext i32 %i.wp to i64                   ; 2 uses
  %i.wr = mul nsw i64 %i.wk, %i.wq
  %i.ws = getelementptr inbounds [16 x i8], ptr %i.wj, i64 %i.wr
  %.idx.i = shl i64 %i.wn, 3
  %i.wt = getelementptr i8, ptr %i.wg, i64 %.idx.i
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !50, !noalias !351
  %i.wv = sext i32 %i.wu to i64                   ; 2 uses
  %i.ww = mul nsw i64 %i.wk, %i.wv
  %i.wx = getelementptr inbounds [16 x i8], ptr %i.wj, i64 %i.ww
  store ptr %i.wm, ptr %i.jt, align 8, !noalias !351
  store i64 %i.wk, ptr %.sroa.622.0..sroa_idx.i, align 8, !noalias !351
  store ptr %0, ptr %.sroa.723.0..sroa_idx.i, align 8, !noalias !351
  store i64 %i.wi, ptr %.sroa.824.0..sroa_idx.i, align 8, !noalias !351
  store i64 0, ptr %.sroa.925.0..sroa_idx.i, align 8, !noalias !351
  store i64 %i.wk, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !351
  store ptr %i.ws, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !351
  store i64 %i.wk, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !351
  store ptr %0, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !351
  store i64 %i.wq, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !351
  store i64 0, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !351
  store i64 %i.wk, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !351
  store ptr %i.wx, ptr %i.ju, align 8, !noalias !351
  store i64 %i.wk, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !351
  store ptr %0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !351
  store i64 %i.wv, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !351
  store i64 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !351
  store i64 %i.wk, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !351
  store double 3.000000e+00, ptr %i.a, align 8, !tbaa !152, !noalias !351
  invoke void @_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEESJ_EEKNS1_ISK_KNS_5BlockIKNS_6MatrixISJ_Lin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEESQ_EESQ_EEEdvIdEEKNS1_INS2_18scalar_quotient_opISJ_NS2_18promote_scalar_argISJ_T_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsISJ_SY_NSW_ISJ_SY_EEEEEE5valueEE4typeEEEKST_KNS2_19plain_constant_typeIST_S13_E4typeEEERKSY_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::CwiseBinaryOp") align 8 %21, ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc414 unwind label %bb.fr

.noexc414:                                        ; preds = %.lr.ph1581
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, i8 0, i64 16, i1 false), !alias.scope !354
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22, !noalias !354
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEELi1ELin1ELi1ELi1ELin1EEENS_13CwiseBinaryOpINS0_18scalar_quotient_opISI_SI_EEKNSK_INS0_13scalar_sum_opISI_SI_EEKNSK_ISO_KNS_5BlockIKNS2_ISI_Lin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEST_EEST_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISI_EEKSJ_EEEENS0_9assign_opISI_SI_EEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull align 8 dereferenceable(233) %21, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.eg unwind label %.body.i

.body.i:                                          ; preds = %.noexc414
  %i.wy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELi1ELin1ELi1ELi1ELin1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %47) #22
  call void @_ZN5Eigen13CwiseBinaryOpINS_8internal18scalar_quotient_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEESI_EEKNS0_INS1_13scalar_sum_opISI_SI_EEKNS0_ISL_KNS_5BlockIKNS_6MatrixISI_Lin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEESR_EESR_EEKNS_14CwiseNullaryOpINS1_18scalar_constant_opISI_EEKNSN_ISI_Li1ELin1ELi1ELi1ELin1EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(233) dereferenceable(233) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22, !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22, !noalias !351
  br label %.body415

bb.eg:                                            ; preds = %.noexc414
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22, !noalias !354
  %i.wz = load ptr, ptr %i.jv, align 8, !tbaa !145, !noalias !351 ; 4 uses
  %.not.i.i.i.i.i.i412 = icmp eq ptr %i.wz, null
  br i1 %.not.i.i.i.i.i.i412, label %bb.ep, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.xa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56, !noalias !351
  %.not.i.i.i.i.i.i.i413 = icmp eq i8 %i.xa, 0
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wz, i64 8 ; 3 uses
  %i.xc = load atomic i32, ptr %i.xb monotonic, align 4 ; 2 uses
  %i.xd = icmp eq i32 %i.xc, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i413, label %bb.el, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  br i1 %i.xd, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.xe = load ptr, ptr %i.wz, align 8, !tbaa !45
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  %i.xg = load ptr, ptr %i.xf, align 8
  call void %i.xg(ptr noundef nonnull align 8 dereferenceable(12) %i.wz) #22, !inline_history !331
  br label %bb.ep

bb.ek:                                            ; preds = %bb.ei
  %i.xh = add nsw i32 %i.xc, -1
  store atomic i32 %i.xh, ptr %i.xb monotonic, align 4
  br label %bb.ep

bb.el:                                            ; preds = %bb.eh
  br i1 %i.xd, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.xi = atomicrmw add ptr %i.xb, i32 -1 release, align 4
  %i.xj = icmp eq i32 %i.xi, 1
  br i1 %i.xj, label %bb.en, label %bb.ep

bb.en:                                            ; preds = %bb.em, %bb.el
  fence acquire
  %i.xk = load ptr, ptr %i.jv, align 8, !tbaa !145, !noalias !351 ; 3 uses
  %i.xl = icmp eq ptr %i.xk, null
  br i1 %i.xl, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.xm = load ptr, ptr %i.xk, align 8, !tbaa !45
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  %i.xo = load ptr, ptr %i.xn, align 8
  call void %i.xo(ptr noundef nonnull align 8 dereferenceable(12) %i.xk) #22, !inline_history !331
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eg, %bb.ej, %bb.ek, %bb.em, %bb.en, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22, !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22, !noalias !351
  %i.xp = load ptr, ptr %46, align 8, !tbaa !177, !noalias !355
  %.idx.i.i.i.i417 = mul nsw i64 %.01451580, 48
  %i.xq = getelementptr inbounds i8, ptr %i.xp, i64 %.idx.i.i.i.i417 ; 6 uses
  %i.xr = load ptr, ptr %47, align 8, !tbaa !154  ; 4 uses
  %i.xs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.xs, 0
  %i.xt = load ptr, ptr %i.xr, align 8, !tbaa !145
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ep
  %i.xv = atomicrmw add ptr %i.xu, i32 1 monotonic, align 4 ; 0 uses
  %i.xw = load ptr, ptr %i.xq, align 8, !tbaa !145 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.xw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1ENS_5DenseEEaSINS1_ISH_Li1ELin1ELi1ELi1ELin1EEEEERSK_RKNS_9DenseBaseIT_EE.exit.i, label %bb.es

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ep
  %i.xx = load atomic i32, ptr %i.xu monotonic, align 4
  %i.xy = add nsw i32 %i.xx, 1
  store atomic i32 %i.xy, ptr %i.xu monotonic, align 4
  %i.xz = load ptr, ptr %i.xq, align 8, !tbaa !145 ; 4 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.xz, null
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1ENS_5DenseEEaSINS1_ISH_Li1ELin1ELi1ELi1ELin1EEEEERSK_RKNS_9DenseBaseIT_EE.exit.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 8 ; 2 uses
  %i.yb = load atomic i32, ptr %i.ya monotonic, align 4 ; 2 uses
  %i.yc = icmp eq i32 %i.yb, 1
  br i1 %i.yc, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.yd = load ptr, ptr %i.xz, align 8, !tbaa !45
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %i.yf = load ptr, ptr %i.ye, align 8
  call void %i.yf(ptr noundef nonnull align 8 dereferenceable(12) %i.xz) #22, !inline_history !334
  br label %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1ENS_5DenseEEaSINS1_ISH_Li1ELin1ELi1ELi1ELin1EEEEERSK_RKNS_9DenseBaseIT_EE.exit.i

bb.er:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.yg = add nsw i32 %i.yb, -1
  store atomic i32 %i.yg, ptr %i.ya monotonic, align 4
  br label %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1ENS_5DenseEEaSINS1_ISH_Li1ELin1ELi1ELi1ELin1EEEEERSK_RKNS_9DenseBaseIT_EE.exit.i
end_hunk_6
begin_hunk_7_@_ZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EE:bb.a
  %i.ael = call i64 @llvm.umin.i64(i64 %i.aej, i64 1152921504606846975)
  %i.aem = select i1 %i.aek, i64 1152921504606846975, i64 %i.ael ; 3 uses
  %.not.i.i.i.i436 = icmp ne i64 %i.aem, 0
  call void @llvm.assume(i1 %.not.i.i.i.i436)
  %i.aen = shl nuw nsw i64 %i.aem, 3
  %i.aeo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aen) #35
          to label %.noexc438 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc438:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.aep = getelementptr inbounds i8, ptr %i.aeo, i64 %i.aeg ; 2 uses
  store i64 %i.adx, ptr %i.aep, align 8, !tbaa !60
  %i.aeq = icmp sgt i64 %i.aeg, 0
  br i1 %i.aeq, label %bb.gd, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.gd:                                            ; preds = %.noexc438
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aeo, ptr align 8 %i.aed, i64 %i.aeg, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.gd, %.noexc438
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aep, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aed, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.ge

bb.ge:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.aes = load ptr, ptr %i.aea, align 8, !tbaa !75
  %i.aet = ptrtoint ptr %i.aes to i64
  %i.aeu = sub i64 %i.aet, %i.aef
  call void @_ZdlPvm(ptr noundef nonnull %i.aed, i64 noundef %i.aeu) #34
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.ge, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aeo, ptr %i.adu, align 8, !tbaa !76
  store ptr %i.aer, ptr %i.ady, align 8, !tbaa !74
  %i.aev = getelementptr inbounds nuw [8 x i8], ptr %i.aeo, i64 %i.aem
  store ptr %i.aev, ptr %i.aea, align 8, !tbaa !75
  %.pre1688.a = load ptr, ptr %40, align 8, !tbaa !48
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %.pre1688.a, i64 %i.acy
  %.pre1689.a = load i32, ptr %.phi.trans.insert, align 4, !tbaa !50
  %.pre1693 = sext i32 %.pre1689.a to i64
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %.pre-phi = phi i64 [ %i.adx, %bb.gb ], [ %.pre1693, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.aew = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0881.0, i64 %.pre-phi ; 4 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 8 ; 3 uses
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !74 ; 4 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aew, i64 16 ; 3 uses
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !75
  %.not.i439 = icmp eq ptr %i.aey, %i.afa
  br i1 %.not.i439, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  store i64 %i.adq, ptr %i.aey, align 8, !tbaa !60
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aey, i64 8
  store ptr %i.afb, ptr %i.aex, align 8, !tbaa !74
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit448

bb.gh:                                            ; preds = %bb.gf
  %i.afc = load ptr, ptr %i.aew, align 8, !tbaa !76 ; 4 uses
  %i.afd = ptrtoint ptr %i.aey to i64
  %i.afe = ptrtoint ptr %i.afc to i64             ; 2 uses
  %i.aff = sub i64 %i.afd, %i.afe                 ; 5 uses
  %i.afg = icmp eq i64 %i.aff, 9223372036854775800
  br i1 %i.afg, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i440

.invoke:                                          ; preds = %bb.gl, %bb.gh, %bb.gc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #33
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i440: ; preds = %bb.gh
  %i.afh = ashr exact i64 %i.aff, 3               ; 3 uses
  %.sroa.speculated.i.i.i441 = call i64 @llvm.umax.i64(i64 %i.afh, i64 1)
  %i.afi = add nsw i64 %.sroa.speculated.i.i.i441, %i.afh ; 2 uses
  %i.afj = icmp ult i64 %i.afi, %i.afh
  %i.afk = call i64 @llvm.umin.i64(i64 %i.afi, i64 1152921504606846975)
  %i.afl = select i1 %i.afj, i64 1152921504606846975, i64 %i.afk ; 3 uses
  %.not.i.i.i442 = icmp ne i64 %i.afl, 0
  call void @llvm.assume(i1 %.not.i.i.i442)
  %i.afm = shl nuw nsw i64 %i.afl, 3
  %i.afn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afm) #35
          to label %.noexc447 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc447:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i440
  %i.afo = getelementptr inbounds i8, ptr %i.afn, i64 %i.aff ; 2 uses
  store i64 %i.adq, ptr %i.afo, align 8, !tbaa !60
  %i.afp = icmp sgt i64 %i.aff, 0
  br i1 %i.afp, label %bb.gi, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i443

bb.gi:                                            ; preds = %.noexc447
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.afn, ptr align 8 %i.afc, i64 %i.aff, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i443

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i443: ; preds = %bb.gi, %.noexc447
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afo, i64 8
  %.not.i17.i.i444 = icmp eq ptr %i.afc, null
  br i1 %.not.i17.i.i444, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i445, label %bb.gj

bb.gj:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i443
  %i.afr = load ptr, ptr %i.aez, align 8, !tbaa !75
  %i.afs = ptrtoint ptr %i.afr to i64
  %i.aft = sub i64 %i.afs, %i.afe
  call void @_ZdlPvm(ptr noundef nonnull %i.afc, i64 noundef %i.aft) #34
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i445

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i445: ; preds = %bb.gj, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i443
  store ptr %i.afn, ptr %i.aew, align 8, !tbaa !76
  store ptr %i.afq, ptr %i.aex, align 8, !tbaa !74
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %i.afn, i64 %i.afl
  store ptr %i.afu, ptr %i.aez, align 8, !tbaa !75
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit448

_ZNSt6vectorImSaImEE9push_backERKm.exit448:       ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i445, %bb.gg
  %i.afv = getelementptr inbounds nuw [24 x i8], ptr %i.ho, i64 %i.acy ; 4 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 8 ; 3 uses
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !74 ; 4 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afv, i64 16 ; 3 uses
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !75
  %.not.i449 = icmp eq ptr %i.afx, %i.afz
  br i1 %.not.i449, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit448
  store i64 %storemerge2061585, ptr %i.afx, align 8, !tbaa !60
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afx, i64 8
  store ptr %i.aga, ptr %i.afw, align 8, !tbaa !74
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit458

bb.gl:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit448
  %i.agb = load ptr, ptr %i.afv, align 8, !tbaa !76 ; 4 uses
  %i.agc = ptrtoint ptr %i.afx to i64
  %i.agd = ptrtoint ptr %i.agb to i64             ; 2 uses
  %i.age = sub i64 %i.agc, %i.agd                 ; 5 uses
  %i.agf = icmp eq i64 %i.age, 9223372036854775800
  br i1 %i.agf, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i450

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i450: ; preds = %bb.gl
  %i.agg = ashr exact i64 %i.age, 3               ; 3 uses
  %.sroa.speculated.i.i.i451 = call i64 @llvm.umax.i64(i64 %i.agg, i64 1)
  %i.agh = add nsw i64 %.sroa.speculated.i.i.i451, %i.agg ; 2 uses
  %i.agi = icmp ult i64 %i.agh, %i.agg
  %i.agj = call i64 @llvm.umin.i64(i64 %i.agh, i64 1152921504606846975)
  %i.agk = select i1 %i.agi, i64 1152921504606846975, i64 %i.agj ; 3 uses
  %.not.i.i.i452 = icmp ne i64 %i.agk, 0
  call void @llvm.assume(i1 %.not.i.i.i452)
  %i.agl = shl nuw nsw i64 %i.agk, 3
  %i.agm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agl) #35
          to label %.noexc457 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc457:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i450
  %i.agn = getelementptr inbounds i8, ptr %i.agm, i64 %i.age ; 2 uses
  store i64 %storemerge2061585, ptr %i.agn, align 8, !tbaa !60
  %i.ago = icmp sgt i64 %i.age, 0
  br i1 %i.ago, label %bb.gm, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i453

bb.gm:                                            ; preds = %.noexc457
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.agm, ptr align 8 %i.agb, i64 %i.age, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i453

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i453: ; preds = %bb.gm, %.noexc457
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agn, i64 8
  %.not.i17.i.i454 = icmp eq ptr %i.agb, null
  br i1 %.not.i17.i.i454, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i455, label %bb.gn

bb.gn:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i453
  %i.agq = load ptr, ptr %i.afy, align 8, !tbaa !75
  %i.agr = ptrtoint ptr %i.agq to i64
  %i.ags = sub i64 %i.agr, %i.agd
  call void @_ZdlPvm(ptr noundef nonnull %i.agb, i64 noundef %i.ags) #34
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i455

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i455: ; preds = %bb.gn, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i453
  store ptr %i.agm, ptr %i.afv, align 8, !tbaa !76
  store ptr %i.agp, ptr %i.afw, align 8, !tbaa !74
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %i.agm, i64 %i.agk
  store ptr %i.agt, ptr %i.afy, align 8, !tbaa !75
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit458

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i450, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i440, %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEC2ImiEERKT_RKT0_.exit411._crit_edge, %.invoke
  %lpad.loopexit.split-lp2140 = landingpad { ptr, i32 }
          cleanup
  %i.agu = load ptr, ptr %49, align 8, !tbaa !48
  call void @free(ptr noundef %i.agu) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  %i.agv = load ptr, ptr %48, align 8, !tbaa !48
  call void @free(ptr noundef %i.agv) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  br label %.body409

_ZNSt6vectorImSaImEE9push_backERKm.exit458:       ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i455, %bb.gk, %.lr.ph1583
  %i.agw = add nuw i64 %.01441582, 1              ; 2 uses
  %exitcond1679.not.a = icmp eq i64 %i.agw, %i.sk
  br i1 %exitcond1679.not.a, label %._crit_edge1584, label %.lr.ph1583, !llvm.loop !338

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.dk, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit434
  %i.agx = ptrtoint ptr %.sroa.21.1 to i64
  %i.agy = sub i64 %i.agx, %i.si
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0823.1, i64 noundef %i.agy) #34
  %i.agz = add nuw i64 %storemerge2061585, 1      ; 2 uses
  %exitcond1680.not = icmp eq i64 %i.agz, %i.cr
  br i1 %exitcond1680.not, label %._crit_edge1587, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, !llvm.loop !339

.body409:                                         ; preds = %.body415, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ef
  %.pn227.pn.pn = phi { ptr, i32 } [ %i.vy, %bb.ef ], [ %.pn227, %.body415 ], [ %lpad.loopexit.split-lp2140, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %46) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  br label %.body781

.body781:                                         ; preds = %.loopexit.split-lp1424.loopexit.split-lp, %.loopexit.split-lp1429.loopexit.split-lp, %.body409, %.loopexit.split-lp1434.loopexit, %.loopexit.split-lp1434.loopexit.split-lp.loopexit.split-lp
  %.sroa.0823.01523 = phi ptr [ %.sroa.0823.01576, %.loopexit.split-lp1424.loopexit.split-lp ], [ %.sroa.0823.01576, %.loopexit.split-lp1429.loopexit.split-lp ], [ %.sroa.0823.1, %.body409 ], [ %.sroa.0823.01576, %.loopexit.split-lp1434.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0823.1, %.loopexit.split-lp1434.loopexit ] ; 2 uses
  %.sroa.21.01492 = phi ptr [ %.sroa.21.01578, %.loopexit.split-lp1424.loopexit.split-lp ], [ %.sroa.21.01578, %.loopexit.split-lp1429.loopexit.split-lp ], [ %.sroa.21.1, %.body409 ], [ %.sroa.21.01578, %.loopexit.split-lp1434.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.21.1, %.loopexit.split-lp1434.loopexit ]
  %.pn232 = phi { ptr, i32 } [ %lpad.loopexit.split-lp2128, %.loopexit.split-lp1424.loopexit.split-lp ], [ %lpad.loopexit.split-lp2131, %.loopexit.split-lp1429.loopexit.split-lp ], [ %.pn227.pn.pn, %.body409 ], [ %lpad.loopexit.split-lp2134, %.loopexit.split-lp1434.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit1442, %.loopexit.split-lp1434.loopexit ]
  %i.aha = ptrtoint ptr %.sroa.21.01492 to i64
  %i.ahb = ptrtoint ptr %.sroa.0823.01523 to i64
  %i.ahc = sub i64 %i.aha, %i.ahb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0823.01523, i64 noundef %i.ahc) #34
  br label %.body746

.body746:                                         ; preds = %.body781.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body781, %.loopexit.split-lp1454.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1450.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1459.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1464.loopexit.split-lp.loopexit.split-lp, %bb.bl, %bb.bi
  %.pn234.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bi ], [ %lpad.loopexit.split-lp2194, %.loopexit.split-lp1464.loopexit.split-lp.loopexit.split-lp ], [ %.pn204, %bb.bl ], [ %.pn232, %.body781 ], [ %lpad.loopexit.split-lp2189, %.loopexit.split-lp1454.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp2186, %.loopexit.split-lp1450.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp1459.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp2137, %.body781.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ahd = load ptr, ptr %43, align 8, !tbaa !177 ; 3 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.ahf = load i64, ptr %i.ahe, align 8, !tbaa !179 ; 2 uses
  %i.ahg = icmp ne ptr %i.ahd, null
  %i.ahh = icmp ne i64 %i.ahf, 0
  %or.cond.i.i.i.i462 = and i1 %i.ahg, %i.ahh
  br i1 %or.cond.i.i.i.i462, label %.preheader.i.i.preheader.i.i463, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit470

.preheader.i.i.preheader.i.i463:                  ; preds = %.body746
  %i.ahi = mul nsw i64 %i.ahf, 3
  br label %.preheader.i.i.i.i464

.preheader.i.i.i.i464:                            ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i468, %.preheader.i.i.preheader.i.i463
  %.0.i.i.i.i465 = phi i64 [ %i.ahj, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i468 ], [ %i.ahi, %.preheader.i.i.preheader.i.i463 ]
  %i.ahj = add i64 %.0.i.i.i.i465, -1             ; 3 uses
  %i.ahk = getelementptr inbounds nuw [16 x i8], ptr %i.ahd, i64 %i.ahj ; 2 uses
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !145 ; 4 uses
  %.not.i.i.i.i.i.i466 = icmp eq ptr %i.ahl, null
  br i1 %.not.i.i.i.i.i.i466, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i468, label %bb.go

bb.go:                                            ; preds = %.preheader.i.i.i.i464
  %i.ahm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i.i467 = icmp eq i8 %i.ahm, 0
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8 ; 3 uses
  %i.aho = load atomic i32, ptr %i.ahn monotonic, align 4 ; 2 uses
  %i.ahp = icmp eq i32 %i.aho, 1                  ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i467, label %bb.gs, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  br i1 %i.ahp, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.ahq = load ptr, ptr %i.ahl, align 8, !tbaa !45
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8
  %i.ahs = load ptr, ptr %i.ahr, align 8
  call void %i.ahs(ptr noundef nonnull align 8 dereferenceable(12) %i.ahl) #22, !inline_history !323
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i468

bb.gr:                                            ; preds = %bb.gp
  %i.aht = add nsw i32 %i.aho, -1
  store atomic i32 %i.aht, ptr %i.ahn monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i468

bb.gs:                                            ; preds = %bb.go
  br i1 %i.ahp, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.ahu = atomicrmw add ptr %i.ahn, i32 -1 release, align 4
  %i.ahv = icmp eq i32 %i.ahu, 1
  br i1 %i.ahv, label %bb.gu, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i468

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  fence acquire
  %i.ahw = load ptr, ptr %i.ahk, align 8, !tbaa !145 ; 3 uses
  %i.ahx = icmp eq ptr %i.ahw, null
  br i1 %i.ahx, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i468, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.ahy = load ptr, ptr %i.ahw, align 8, !tbaa !45
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 8
  %i.aia = load ptr, ptr %i.ahz, align 8
  call void %i.aia(ptr noundef nonnull align 8 dereferenceable(12) %i.ahw) #22, !inline_history !323
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i468

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i468:              ; preds = %bb.gv, %bb.gu, %bb.gt, %bb.gr, %bb.gq, %.preheader.i.i.i.i464
  %.old1.not.i.i.i.i469 = icmp eq i64 %i.ahj, 0
  br i1 %.old1.not.i.i.i.i469, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit470, label %.preheader.i.i.i.i464

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit470: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i468, %.body746
  call void @free(ptr noundef %i.ahd) #22
  br label %.body357

.body357:                                         ; preds = %bb.ae, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit470
  %.pn234.pn.pn.pn = phi { ptr, i32 } [ %.pn234.pn.pn, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit470 ], [ %i.hr, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  %i.aib = load ptr, ptr %42, align 8, !tbaa !177 ; 3 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.aid = load i64, ptr %i.aic, align 8, !tbaa !179 ; 2 uses
  %i.aie = icmp ne ptr %i.aib, null
  %i.aif = icmp ne i64 %i.aid, 0
  %or.cond.i.i.i.i471 = and i1 %i.aie, %i.aif
  br i1 %or.cond.i.i.i.i471, label %.preheader.i.i.preheader.i.i472, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit479

.preheader.i.i.preheader.i.i472:                  ; preds = %.body357
  %i.aig = mul nsw i64 %i.aid, 3
  br label %.preheader.i.i.i.i473

.preheader.i.i.i.i473:                            ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i477, %.preheader.i.i.preheader.i.i472
  %.0.i.i.i.i474 = phi i64 [ %i.aih, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i477 ], [ %i.aig, %.preheader.i.i.preheader.i.i472 ]
  %i.aih = add i64 %.0.i.i.i.i474, -1             ; 3 uses
  %i.aii = getelementptr inbounds nuw [16 x i8], ptr %i.aib, i64 %i.aih ; 2 uses
  %i.aij = load ptr, ptr %i.aii, align 8, !tbaa !145 ; 4 uses
  %.not.i.i.i.i.i.i475 = icmp eq ptr %i.aij, null
  br i1 %.not.i.i.i.i.i.i475, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i477, label %bb.gw

bb.gw:                                            ; preds = %.preheader.i.i.i.i473
  %i.aik = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i.i476 = icmp eq i8 %i.aik, 0
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aij, i64 8 ; 3 uses
  %i.aim = load atomic i32, ptr %i.ail monotonic, align 4 ; 2 uses
  %i.ain = icmp eq i32 %i.aim, 1                  ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i476, label %bb.ha, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  br i1 %i.ain, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.aio = load ptr, ptr %i.aij, align 8, !tbaa !45
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 8
  %i.aiq = load ptr, ptr %i.aip, align 8
  call void %i.aiq(ptr noundef nonnull align 8 dereferenceable(12) %i.aij) #22, !inline_history !323
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i477

bb.gz:                                            ; preds = %bb.gx
  %i.air = add nsw i32 %i.aim, -1
  store atomic i32 %i.air, ptr %i.ail monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i477

bb.ha:                                            ; preds = %bb.gw
  br i1 %i.ain, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.ais = atomicrmw add ptr %i.ail, i32 -1 release, align 4
  %i.ait = icmp eq i32 %i.ais, 1
  br i1 %i.ait, label %bb.hc, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i477

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  fence acquire
  %i.aiu = load ptr, ptr %i.aii, align 8, !tbaa !145 ; 3 uses
  %i.aiv = icmp eq ptr %i.aiu, null
  br i1 %i.aiv, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i477, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.aiw = load ptr, ptr %i.aiu, align 8, !tbaa !45
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 8
  %i.aiy = load ptr, ptr %i.aix, align 8
  call void %i.aiy(ptr noundef nonnull align 8 dereferenceable(12) %i.aiu) #22, !inline_history !323
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i477

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i477:              ; preds = %bb.hd, %bb.hc, %bb.hb, %bb.gz, %bb.gy, %.preheader.i.i.i.i473
  %.old1.not.i.i.i.i478 = icmp eq i64 %i.aih, 0
  br i1 %.old1.not.i.i.i.i478, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit479, label %.preheader.i.i.i.i473

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit479: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i477, %.body357
  call void @free(ptr noundef %i.aib) #22
  br label %.body355

.body355:                                         ; preds = %bb.ad, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit479
  %.pn234.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn234.pn.pn.pn, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit479 ], [ %i.hq, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit607

.loopexit1420:                                    ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i388, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit
  call void @free(ptr noundef %i.rh) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.loopexit1420, %_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i345, %_ZNSt6vectorIS_ImSaImEESaIS1_EEC2EmRKS2_.exit354
  %.sroa.0872.012921383 = phi ptr [ %i.ho, %.loopexit1420 ], [ %i.ho, %_ZNSt6vectorIS_ImSaImEESaIS1_EEC2EmRKS2_.exit354 ], [ null, %_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i345 ] ; 10 uses
  %.sink.i34913091381 = phi ptr [ %i.hp, %.loopexit1420 ], [ %i.hp, %_ZNSt6vectorIS_ImSaImEESaIS1_EEC2EmRKS2_.exit354 ], [ null, %_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i345 ] ; 4 uses
  %.0.lcssa.i.i.i.i.i35013261379 = phi ptr [ %scevgep.i.i.i.i.i348, %.loopexit1420 ], [ %scevgep.i.i.i.i.i348, %_ZNSt6vectorIS_ImSaImEESaIS1_EEC2EmRKS2_.exit354 ], [ null, %_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i345 ] ; 5 uses
  br i1 %.not.i.i.i.i326, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, label %bb.he

bb.he:                                            ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.aiz = shl nuw nsw i64 %i.hf, 3               ; 2 uses
  %i.aja = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aiz) #35
          to label %.noexc482 unwind label %bb.hf ; 3 uses

.noexc482:                                        ; preds = %bb.he
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aja, i8 -1, i64 %i.aiz, i1 false), !tbaa !60
  %i.ajb = getelementptr inbounds nuw [8 x i8], ptr %i.aja, i64 %i.hf
  %i.ajc = ptrtoint ptr %i.ajb to i64
  br label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %.noexc482, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0800.0 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aja, %.noexc482 ] ; 9 uses
  %.sroa.15808.0 = phi i64 [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ajc, %.noexc482 ] ; 2 uses
  br i1 %.not.i.i.i.i275, label %.preheader, label %.lr.ph1591

.lr.ph1591:                                       ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
end_hunk_7
begin_hunk_8_@_ZN5boost14multiprecision8backends15setup_karatsubaILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_fixed_precisionINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_RKS9_SE_:bb.a
  %i.p = shl i64 %i.o, 3
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.p) #34
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load i8, ptr %i.k, align 8, !tbaa !210, !range !186, !noundef !187
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit21, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %3, align 8, !tbaa !212
  %i.u = load i64, ptr %i.i, align 8, !tbaa !209
  %i.v = shl i64 %i.u, 3
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.v) #34
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit21

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit21: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.g, ptr %i.w, align 8, !tbaa !209
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.x, align 8, !tbaa !216
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i8 0, ptr %i.y, align 8, !tbaa !210
  %i.z = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.z, label %bb.h, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageC2ERKS5_m.exit, !prof !211

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.aa, label %.noexc.i, label %.noexc5.i

.noexc.i:                                         ; preds = %bb.h
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

.noexc5.i:                                        ; preds = %bb.h
  tail call void @_ZSt17__throw_bad_allocv() #33
  unreachable

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageC2ERKS5_m.exit: ; preds = %bb.g
  %i.ab = mul i64 %i.f, 40
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #35
  store ptr %i.ac, ptr %4, align 8, !tbaa !212
  invoke void @_ZN5boost14multiprecision8backends18multiply_karatsubaILm0ELm0ELNS0_18cpp_int_check_typeE0ESaIyEEEvRNS1_15cpp_int_backendIXT_EXT0_ELNS0_16cpp_integer_typeE1EXT1_ET2_EERKS8_SB_RNS8_21scoped_shared_storageE(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %2, ptr noundef nonnull align 8 dereferenceable(25) %4)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageC2ERKS5_m.exit
  %i.ad = load i8, ptr %i.y, align 8, !tbaa !210, !range !186, !noundef !187
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit22, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %4, align 8, !tbaa !212
  %i.ag = load i64, ptr %i.w, align 8, !tbaa !209
  %i.ah = shl i64 %i.ag, 3
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ah) #34
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit22

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit22: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.m

bb.k:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageC2ERKS5_m.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load i8, ptr %i.y, align 8, !tbaa !210, !range !186, !noundef !187
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit23, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %4, align 8, !tbaa !212
  %i.am = load i64, ptr %i.w, align 8, !tbaa !209
  %i.an = shl i64 %i.am, 3
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #34
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit23

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit23: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.n

bb.m:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit22, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit
  ret void

bb.n:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit23, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit21
  %.pn = phi { ptr, i32 } [ %i.q, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit21 ], [ %i.ai, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit23 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends18multiply_karatsubaILm0ELm0ELNS0_18cpp_int_check_typeE0ESaIyEEEvRNS1_15cpp_int_backendIXT_EXT0_ELNS0_16cpp_integer_typeE1EXT1_ET2_EERKS8_SB_RNS8_21scoped_shared_storageE(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %5 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %7 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %8 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 18 uses
  %9 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 14 uses
  %10 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 14 uses
  %11 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %12 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %13 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 16, !tbaa !184 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i64, ptr %i.d, align 16, !tbaa !184 ; 5 uses
  %i.f = icmp ult i64 %i.c, 40
  %i.g = icmp ult i64 %i.e, 40
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %2)
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.c, i64 %i.e) ; 5 uses
  %i.i = lshr i64 %i.h, 1                         ; 3 uses
  %i.j = add nuw i64 %i.i, 1                      ; 11 uses
  %i.k = icmp ult i64 %i.j, %i.c                  ; 2 uses
  %.sroa.speculated134 = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.c) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.m = load i8, ptr %i.l, align 1, !tbaa !185, !range !186, !noundef !187
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %i.n, ptr %1, ptr %i.p         ; 3 uses
  store i64 %.sroa.speculated134, ptr %4, align 16, !tbaa !214
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !215
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 %.sroa.speculated134, ptr %i.s, align 16, !tbaa !184
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.t, align 8, !tbaa !195
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 25 ; 3 uses
  store i8 0, ptr %i.u, align 1, !tbaa !185
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 26 ; 3 uses
  store i8 1, ptr %i.v, align 2, !tbaa !196
  %i.w = add i64 %.sroa.speculated134, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %i.x = phi i64 [ %i.aa, %bb.d ], [ %i.w, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !189
  %.not2.i.i = icmp eq i64 %i.z, 0
  br i1 %.not2.i.i, label %bb.d, label %.lr.ph.i101.preheader

bb.d:                                             ; preds = %.lr.ph.i
  store i64 %i.x, ptr %i.s, align 16, !tbaa !184
  %i.aa = add nsw i64 %i.x, -1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %.lr.ph.i101.preheader, label %.lr.ph.i, !llvm.loop !14

.lr.ph.i101.preheader:                            ; preds = %bb.d, %.lr.ph.i
  %i.ab = icmp ult i64 %i.j, %i.e                 ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.e) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !185, !range !186, !noundef !187
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = select i1 %i.ae, ptr %2, ptr %i.ag      ; 3 uses
  store i64 %.sroa.speculated, ptr %5, align 16, !tbaa !214
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !215
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.aj, align 16, !tbaa !184
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.ak, align 8, !tbaa !195
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 25 ; 3 uses
  store i8 0, ptr %i.al, align 1, !tbaa !185
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 26 ; 3 uses
  store i8 1, ptr %i.am, align 2, !tbaa !196
  %i.an = add i64 %.sroa.speculated, -1
  br label %.lr.ph.i101

.lr.ph.i101:                                      ; preds = %.lr.ph.i101.preheader, %bb.e
  %i.ao = phi i64 [ %i.ar, %bb.e ], [ %i.an, %.lr.ph.i101.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !189
  %.not2.i.i102 = icmp eq i64 %i.aq, 0
  br i1 %.not2.i.i102, label %bb.e, label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit104

bb.e:                                             ; preds = %.lr.ph.i101
  store i64 %i.ao, ptr %i.aj, align 16, !tbaa !184
  %i.ar = add nsw i64 %i.ao, -1                   ; 2 uses
  %.not.i.i103 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i103, label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit104, label %.lr.ph.i101, !llvm.loop !14

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit104: ; preds = %.lr.ph.i101, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 0, ptr %i.a, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.j
  %spec.select = select i1 %i.k, ptr %i.as, ptr %i.a ; 2 uses
  %i.at = sub i64 %i.c, %i.j
  %i.au = select i1 %i.k, i64 %i.at, i64 1        ; 3 uses
  store i64 %i.au, ptr %6, align 16, !tbaa !214
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %spec.select, ptr %i.av, align 8, !tbaa !215
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 %i.au, ptr %i.aw, align 16, !tbaa !184
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 0, ptr %i.ax, align 8, !tbaa !195
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 25 ; 3 uses
  store i8 0, ptr %i.ay, align 1, !tbaa !185
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 26 ; 3 uses
  store i8 1, ptr %i.az, align 2, !tbaa !196
  %i.ba = add i64 %i.au, -1                       ; 2 uses
  %.not.i3.i105 = icmp eq i64 %i.ba, 0
  br i1 %.not.i3.i105, label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit109, label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit104, %bb.f
  %i.bb = phi i64 [ %i.be, %bb.f ], [ %i.ba, %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit104 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !189
  %.not2.i.i107 = icmp eq i64 %i.bd, 0
  br i1 %.not2.i.i107, label %bb.f, label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit109

bb.f:                                             ; preds = %.lr.ph.i106
  store i64 %i.bb, ptr %i.aw, align 16, !tbaa !184
  %i.be = add i64 %i.bb, -1                       ; 2 uses
  %.not.i.i108 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i108, label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit109, label %.lr.ph.i106, !llvm.loop !14

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit109: ; preds = %.lr.ph.i106, %bb.f, %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit104
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.j
  %spec.select165 = select i1 %i.ab, ptr %i.bf, ptr %i.a ; 2 uses
  %i.bg = sub i64 %i.e, %i.j
  %i.bh = select i1 %i.ab, i64 %i.bg, i64 1       ; 3 uses
  store i64 %i.bh, ptr %7, align 16, !tbaa !214
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %spec.select165, ptr %i.bi, align 8, !tbaa !215
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store i64 %i.bh, ptr %i.bj, align 16, !tbaa !184
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 0, ptr %i.bk, align 8, !tbaa !195
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 25 ; 3 uses
  store i8 0, ptr %i.bl, align 1, !tbaa !185
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 26 ; 3 uses
  store i8 1, ptr %i.bm, align 2, !tbaa !196
  %i.bn = add i64 %i.bh, -1                       ; 2 uses
  %.not.i3.i110 = icmp eq i64 %i.bn, 0
  br i1 %.not.i3.i110, label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit114, label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit109, %bb.g
  %i.bo = phi i64 [ %i.br, %bb.g ], [ %i.bn, %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit109 ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %spec.select165, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !189
  %.not2.i.i112 = icmp eq i64 %i.bq, 0
  br i1 %.not2.i.i112, label %bb.g, label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit114

bb.g:                                             ; preds = %.lr.ph.i111
  store i64 %i.bo, ptr %i.bj, align 16, !tbaa !184
  %i.br = add i64 %i.bo, -1                       ; 2 uses
  %.not.i.i113 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i113, label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit114, label %.lr.ph.i111, !llvm.loop !14

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit114: ; preds = %.lr.ph.i111, %bb.g, %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit109
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.bs = shl i64 %i.j, 1                         ; 8 uses
  %i.bt = add i64 %i.bs, 2                        ; 3 uses
  %i.bu = load ptr, ptr %3, align 8, !tbaa !212   ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !216 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bw
  %i.by = add i64 %i.bw, %i.bt                    ; 2 uses
  store i64 %i.bt, ptr %8, align 16, !tbaa !214
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !215
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.bt, ptr %i.ca, align 16, !tbaa !184
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.cb, align 8, !tbaa !195
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 25 ; 4 uses
  store i8 0, ptr %i.cc, align 1, !tbaa !185
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 26 ; 3 uses
  store i8 1, ptr %i.cd, align 2, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.ce = add nuw i64 %i.i, 2                     ; 6 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.by
  %i.cg = add i64 %i.by, %i.ce                    ; 2 uses
  store i64 %i.ce, ptr %9, align 16, !tbaa !214
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !215
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.ce, ptr %i.ci, align 16, !tbaa !184
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 0, ptr %i.cj, align 8, !tbaa !195
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 25 ; 4 uses
  store i8 0, ptr %i.ck, align 1, !tbaa !185
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 26 ; 3 uses
  store i8 1, ptr %i.cl, align 2, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.cg
  %i.cn = add i64 %i.cg, %i.ce
  store i64 %i.cn, ptr %i.bv, align 8, !tbaa !216
  store i64 %i.ce, ptr %10, align 16, !tbaa !214
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store ptr %i.cm, ptr %i.co, align 8, !tbaa !215
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.ce, ptr %i.cp, align 16, !tbaa !184
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i8 0, ptr %i.cq, align 8, !tbaa !195
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 25 ; 4 uses
  store i8 0, ptr %i.cr, align 1, !tbaa !185
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 26 ; 3 uses
  store i8 1, ptr %i.cs, align 2, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 5 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !185, !range !186, !noundef !187
  %i.cv = trunc nuw i8 %i.cu to i1
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = select i1 %i.cv, ptr %0, ptr %i.cx      ; 2 uses
  store i64 %i.bs, ptr %11, align 16, !tbaa !214
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !215
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store i64 %i.bs, ptr %i.da, align 16, !tbaa !184
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i8 0, ptr %i.db, align 8, !tbaa !195
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 25 ; 3 uses
  store i8 0, ptr %i.dc, align 1, !tbaa !185
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 26 ; 3 uses
  store i8 1, ptr %i.dd, align 2, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.df = load i64, ptr %i.de, align 16, !tbaa !184
  %i.dg = sub i64 %i.df, %i.bs                    ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.bs
  store i64 %i.dg, ptr %12, align 16, !tbaa !214
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !215
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store i64 %i.dg, ptr %i.dj, align 16, !tbaa !184
  %i.dk = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i8 0, ptr %i.dk, align 8, !tbaa !195
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 25 ; 3 uses
  store i8 0, ptr %i.dl, align 1, !tbaa !185
  %i.dm = getelementptr inbounds nuw i8, ptr %12, i64 26 ; 3 uses
  store i8 1, ptr %i.dm, align 2, !tbaa !196
  invoke void @_ZN5boost14multiprecision8backends18multiply_karatsubaILm0ELm0ELNS0_18cpp_int_check_typeE0ESaIyEEEvRNS1_15cpp_int_backendIXT_EXT0_ELNS0_16cpp_integer_typeE1EXT1_ET2_EERKS8_SB_RNS8_21scoped_shared_storageE(ptr noundef nonnull align 16 dereferenceable(27) %11, ptr noundef nonnull align 16 dereferenceable(27) %4, ptr noundef nonnull align 16 dereferenceable(27) %5, ptr noundef nonnull align 8 dereferenceable(25) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit114
  %i.dn = load i64, ptr %i.da, align 16, !tbaa !184 ; 7 uses
  %i.do = icmp ult i64 %i.dn, %i.bs
  br i1 %i.do, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.dp = load i8, ptr %i.ct, align 1, !tbaa !185, !range !186, !noundef !187
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.dr = and i64 %i.h, 2
  %i.ds = xor i64 %i.dr, 2
  %i.dt = sub i64 %i.ds, %i.dn
  %i.du = or i64 %i.h, 1
  %i.dv = sub i64 %i.du, %i.dn
  %xtraiter = and i64 %i.dt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader, %.lr.ph.split.prol
  %.035167.prol = phi i64 [ %i.dy, %.lr.ph.split.prol ], [ %i.dn, %.lr.ph.split.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.prol ], [ 0, %.lr.ph.split.preheader ]
  %i.dw = load ptr, ptr %i.cw, align 8
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.035167.prol
  store i64 0, ptr %i.dx, align 8, !tbaa !189
  %i.dy = add nuw i64 %.035167.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol, !llvm.loop !476

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader
  %.035167.unr = phi i64 [ %i.dn, %.lr.ph.split.preheader ], [ %i.dy, %.lr.ph.split.prol ]
  %i.dz = icmp ult i64 %i.dv, 3
  br i1 %i.dz, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ea = shl i64 %i.dn, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.ea
  %i.eb = and i64 %i.h, -2
end_hunk_8
