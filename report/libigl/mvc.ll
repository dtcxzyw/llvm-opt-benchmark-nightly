Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/mvc?download=true
inline.NumInlined: 8230
inline.NumDeleted: 4298
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZN3igl3mvcERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_RS2_:bb.a
  %shift2130 = shufflevector <2 x double> %i.rm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2131 = fadd <2 x double> %i.rm, %shift2130
  %i.rn = extractelement <2 x double> %foldExtExtBinop2131, i64 0
  %i.ro = fmul double %i.py, %i.py
  %i.rp = fadd double %i.ro, %i.rn
  %sqrt1120 = call double @llvm.sqrt.f64(double %i.rp) ; 2 uses
  %i.rq = insertelement <2 x double> poison, double %sqrt1120, i64 0
  %i.rr = shufflevector <2 x double> %i.rq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rs = fdiv <2 x double> %i.px, %i.rr
  %i.rt = fdiv double %i.py, %sqrt1120
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.ru = extractelement <2 x double> %i.rl, i64 0
  store double %i.ru, ptr %.sroa.7, align 16, !tbaa !21
  %.sroa.7.8..07.i.i.i.i.ptr.3.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 8
  store <2 x double> %i.rk, ptr %.sroa.7.8..07.i.i.i.i.ptr.3.i.i.i.i.i.i.sroa_idx, align 8, !tbaa !18
  %i.rv = extractelement <2 x double> %i.rl, i64 1
  %.sroa.7.24..07.i.i.i.i.ptr.5.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 24
  store double %i.rv, ptr %.sroa.7.24..07.i.i.i.i.ptr.5.i.i.i.i.i.i.sroa_idx, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.rw = getelementptr inbounds nuw i8, ptr %21, i64 208
  store i8 0, ptr %i.rw, align 16, !tbaa !73, !alias.scope !300
  %i.rx = getelementptr inbounds nuw i8, ptr %21, i64 209
  store i8 0, ptr %i.rx, align 1, !tbaa !301, !alias.scope !300
  store <2 x double> %i.ri, ptr %21, align 16, !tbaa !18, !alias.scope !300
  %i.ry = getelementptr inbounds nuw i8, ptr %21, i64 16
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16. = load <2 x double>, ptr %.sroa.7, align 16, !tbaa !18, !noalias !300
  store <2 x double> %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16., ptr %i.ry, align 16, !tbaa !18, !alias.scope !300
  %i.rz = getelementptr inbounds nuw i8, ptr %21, i64 32
  %.sroa.7.16..07.i.i.i.i.ptr.4.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 16
  %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32. = load <2 x double>, ptr %.sroa.7.16..07.i.i.i.i.ptr.4.i.i.i.i.i.i.sroa_idx, align 16, !tbaa !18, !noalias !300
  store <2 x double> %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32., ptr %i.rz, align 16, !tbaa !18, !alias.scope !300
  %i.sa = getelementptr inbounds nuw i8, ptr %21, i64 48
  store <2 x double> %i.rs, ptr %i.sa, align 16, !tbaa !18, !alias.scope !300
  %i.sb = getelementptr inbounds nuw i8, ptr %21, i64 64
  store double %i.rt, ptr %i.sb, align 16, !tbaa !21, !alias.scope !300
  invoke void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14computeInPlaceEv(ptr noundef nonnull align 8 dereferenceable(248) %21)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %._crit_edge
  %i.sc = getelementptr inbounds nuw i8, ptr %15, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  store ptr %15, ptr %23, align 8
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !15
  store ptr %21, ptr %22, align 8
  %.sroa.5758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %23, ptr %.sroa.5758.0..sroa_idx, align 8
  %i.se = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.sf = getelementptr inbounds nuw i8, ptr %22, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.se, i8 0, i64 16, i1 false)
  store i64 %i.sd, ptr %i.sf, align 8, !tbaa !26, !alias.scope !302
  %i.sg = getelementptr inbounds nuw i8, ptr %22, i64 40
  store i64 2, ptr %i.sg, align 8, !tbaa !26, !alias.scope !302
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIKNS_9TransposeIKNS_5SolveINS_19ColPivHouseholderQRINS2_IdLi3ELi3ELi0ELi3ELi3EEEEENS5_IS3_EEEEEELin1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  store ptr %16, ptr %25, align 8
  %i.sh = load i64, ptr %i.qa, align 8, !tbaa !15
  store ptr %21, ptr %24, align 8
  %.sroa.5754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %25, ptr %.sroa.5754.0..sroa_idx, align 8
  %i.si = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.sj = getelementptr inbounds nuw i8, ptr %24, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.si, i8 0, i64 16, i1 false)
  store i64 %i.sh, ptr %i.sj, align 8, !tbaa !26, !alias.scope !303
  %i.sk = getelementptr inbounds nuw i8, ptr %24, i64 40
  store i64 2, ptr %i.sk, align 8, !tbaa !26, !alias.scope !303
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIKNS_9TransposeIKNS_5SolveINS_19ColPivHouseholderQRINS2_IdLi3ELi3ELi0ELi3ELi3EEEEENS5_IS3_EEEEEELin1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.aw unwind label %bb.az

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bb

bb.ax:                                            ; preds = %._crit_edge
  %i.sl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ay:                                            ; preds = %bb.au
  %i.sm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.ba

bb.az:                                            ; preds = %bb.av
  %i.sn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az, %bb.ax
  %.pn160.pn = phi { ptr, i32 } [ %i.sl, %bb.ax ], [ %i.sn, %bb.az ], [ %i.sm, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %.body

bb.bb:                                            ; preds = %bb.aw, %bb.t
  %i.so = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !15 ; 34 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !15 ; 9 uses
  %i.ss = icmp eq i64 %i.sp, 0                    ; 2 uses
  %i.st = icmp eq i64 %i.sr, 0
  %or.cond.i.i.i.i277 = or i1 %i.ss, %i.st        ; 3 uses
  br i1 %or.cond.i.i.i.i277, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i278, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.su = sdiv i64 9223372036854775807, %i.sr
  %i.sv = icmp sgt i64 %i.sp, %i.su
  br i1 %i.sv, label %bb.bd, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i278

bb.bd:                                            ; preds = %bb.bc
  %i.sw = call ptr @__cxa_allocate_exception(i64 8) #22
  br label %.invoke

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i278: ; preds = %bb.bc, %bb.bb
  %i.sx = mul nsw i64 %i.sr, %i.sp                ; 5 uses
  %i.sy = icmp sgt i64 %i.sx, 0                   ; 2 uses
  br i1 %i.sy, label %bb.be, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit

bb.be:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i278
  %i.sz = icmp samesign ugt i64 %i.sx, 2305843009213693951
  br i1 %i.sz, label %bb.bf, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i399

bb.bf:                                            ; preds = %bb.be
  %i.ta = call ptr @__cxa_allocate_exception(i64 8) #22
  br label %.invoke

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i399: ; preds = %bb.be
  %i.tb = shl nuw i64 %i.sx, 3
  %i.tc = call noalias ptr @malloc(i64 noundef %i.tb) #23 ; 2 uses
  %i.td = icmp eq ptr %i.tc, null
  br i1 %i.td, label %bb.bg, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit

bb.bg:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i399
  %i.te = call ptr @__cxa_allocate_exception(i64 8) #22
  br label %.invoke

bb.bh:                                            ; preds = %.invoke
  %i.tf = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i399, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i278
  %.sroa.01038.0 = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i278 ], [ %i.tc, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i399 ] ; 9 uses
  br i1 %or.cond.i.i.i.i277, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i283, label %bb.bi

bb.bi:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit
  %i.tg = sdiv i64 9223372036854775807, %i.sr
  %i.th = icmp sgt i64 %i.sp, %i.tg
  br i1 %i.th, label %.invoke1846, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i283

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i283: ; preds = %bb.bi, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit
  br i1 %i.sy, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i406, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit287

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i406: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i283
  %i.ti = shl nuw i64 %i.sx, 3
  %i.tj = call noalias ptr @malloc(i64 noundef %i.ti) #23 ; 2 uses
  %i.tk = icmp eq ptr %i.tj, null
  br i1 %i.tk, label %.invoke1846, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit287

.invoke1846:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i406, %bb.bi
  %i.tl = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.tl, align 8, !tbaa !48
  invoke void @__cxa_throw(ptr nonnull %i.tl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.cont1847 unwind label %bb.bj

.cont1847:                                        ; preds = %.invoke1846
  unreachable

bb.bj:                                            ; preds = %.invoke1846
  %i.tm = landingpad { ptr, i32 }
          cleanup
  br label %.body285

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit287: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i406, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i283
  %.sroa.0725.0 = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i283 ], [ %i.tj, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i406 ] ; 5 uses
  %i.tn = icmp sgt i64 %i.sp, 0
  br i1 %i.tn, label %.lr.ph1383, label %.preheader

.lr.ph1383:                                       ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit287
  %i.to = add nsw i32 %i.c, -1                    ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.tq = getelementptr inbounds nuw i8, ptr %15, i64 16
  br label %bb.bl

.loopexit1128.loopexit:                           ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit
  %.pre1595 = load i64, ptr %i.so, align 8, !tbaa !15
  br label %.loopexit1128

.loopexit1128:                                    ; preds = %.loopexit1128.loopexit, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit
  %i.tr = phi i64 [ %i.uu, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit ], [ %.pre1595, %.loopexit1128.loopexit ] ; 2 uses
  %i.ts = phi i64 [ %i.uv, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit ], [ %i.akp, %.loopexit1128.loopexit ]
  %.sroa.0710.1.lcssa = phi ptr [ %.sroa.0710.01376, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit ], [ %.sroa.0710.2, %.loopexit1128.loopexit ] ; 6 uses
  %.sroa.12716.1.lcssa = phi ptr [ %.sroa.12716.01377, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit ], [ %.sroa.12716.2, %.loopexit1128.loopexit ] ; 3 uses
  %.sroa.18719.1.lcssa = phi ptr [ %.sroa.18719.01378, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit ], [ %.sroa.18719.2, %.loopexit1128.loopexit ] ; 3 uses
  %.sroa.0696.1.lcssa = phi ptr [ %.sroa.0696.01379, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit ], [ %.sroa.0696.2, %.loopexit1128.loopexit ] ; 6 uses
  %.sroa.12702.1.lcssa = phi ptr [ %.sroa.12702.01380, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit ], [ %.sroa.12702.2, %.loopexit1128.loopexit ] ; 3 uses
  %.sroa.18705.1.lcssa = phi ptr [ %.sroa.18705.01381, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit ], [ %.sroa.18705.2, %.loopexit1128.loopexit ] ; 3 uses
  %26 = zext nneg i32 %27 to i64                  ; 2 uses
  %i.tt = icmp sgt i64 %i.tr, %26
  br i1 %i.tt, label %bb.bl, label %.preheader1125, !llvm.loop !231

.preheader1125:                                   ; preds = %.loopexit1128
  %i.tu = ptrtoint ptr %.sroa.12716.1.lcssa to i64
  %i.tv = ptrtoint ptr %.sroa.0710.1.lcssa to i64 ; 3 uses
  %i.tw = sub i64 %i.tu, %i.tv
  %i.tx = ashr exact i64 %i.tw, 3
  %.not1411 = icmp eq ptr %.sroa.12716.1.lcssa, %.sroa.0710.1.lcssa
  br i1 %.not1411, label %.preheader1124, label %.lr.ph1395

.lr.ph1395:                                       ; preds = %.preheader1125
  %i.ty = load i64, ptr %i.a, align 8, !tbaa !15  ; 4 uses
  %i.tz = icmp sgt i64 %i.ty, 0
  br i1 %i.tz, label %.lr.ph1392.us.preheader, label %.preheader1124

.lr.ph1392.us.preheader:                          ; preds = %.lr.ph1395
  %xtraiter2238 = and i64 %i.ty, 3                ; 3 uses
  %i.ua = icmp ult i64 %i.ty, 4
  %unroll_iter2241 = and i64 %i.ty, 9223372036854775804
  %lcmp.mod2239.not = icmp eq i64 %xtraiter2238, 0
  %lcmp.mod2240 = icmp ne i64 %xtraiter2238, 0
  br label %.lr.ph1392.us

.lr.ph1392.us:                                    ; preds = %.lr.ph1392.us.preheader, %._crit_edge1393.us
  %indvars.iv1562.a = phi i64 [ %indvars.iv.next1563.a, %._crit_edge1393.us ], [ 0, %.lr.ph1392.us.preheader ] ; 2 uses
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0710.1.lcssa, i64 %indvars.iv1562.a ; 2 uses
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !305
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 4
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !306
  %i.uf = sext i32 %i.uc to i64
  %i.ug = mul nsw i64 %i.sp, %i.uf
  %invariant.gep.us = getelementptr [8 x i8], ptr %.sroa.01038.0, i64 %i.ug ; 5 uses
  %i.uh = zext i32 %i.ue to i64                   ; 5 uses
  br i1 %i.ua, label %.epil.preheader, label %.lr.ph1392.us.new

.lr.ph1392.us.new:                                ; preds = %.lr.ph1392.us, %.lr.ph1392.us.new
  %indvars.iv1558 = phi i64 [ %indvars.iv.next1559.3, %.lr.ph1392.us.new ], [ 0, %.lr.ph1392.us ] ; 6 uses
  %niter2242 = phi i64 [ %niter2242.next.3, %.lr.ph1392.us.new ], [ 0, %.lr.ph1392.us ]
  %gep.us = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %indvars.iv1558
  %i.ui = icmp eq i64 %indvars.iv1558, %i.uh
  %i.uj = uitofp i1 %i.ui to double
  store double %i.uj, ptr %gep.us, align 8, !tbaa !21
  %indvars.iv.next1559 = or disjoint i64 %indvars.iv1558, 1 ; 2 uses
  %gep.us.1 = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %indvars.iv.next1559
  %i.uk = icmp eq i64 %indvars.iv.next1559, %i.uh
  %i.ul = uitofp i1 %i.uk to double
  store double %i.ul, ptr %gep.us.1, align 8, !tbaa !21
  %indvars.iv.next1559.1 = or disjoint i64 %indvars.iv1558, 2 ; 2 uses
  %gep.us.2 = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %indvars.iv.next1559.1
  %i.um = icmp eq i64 %indvars.iv.next1559.1, %i.uh
  %i.un = uitofp i1 %i.um to double
  store double %i.un, ptr %gep.us.2, align 8, !tbaa !21
  %indvars.iv.next1559.2 = or disjoint i64 %indvars.iv1558, 3 ; 2 uses
  %gep.us.3 = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %indvars.iv.next1559.2
  %i.uo = icmp eq i64 %indvars.iv.next1559.2, %i.uh
  %i.up = uitofp i1 %i.uo to double
  store double %i.up, ptr %gep.us.3, align 8, !tbaa !21
  %indvars.iv.next1559.3 = add nuw nsw i64 %indvars.iv1558, 4 ; 2 uses
  %niter2242.next.3 = add nuw nsw i64 %niter2242, 4 ; 2 uses
  %niter2242.ncmp.3 = icmp eq i64 %niter2242.next.3, %unroll_iter2241
  br i1 %niter2242.ncmp.3, label %._crit_edge1393.us.unr-lcssa, label %.lr.ph1392.us.new, !llvm.loop !232

._crit_edge1393.us.unr-lcssa:                     ; preds = %.lr.ph1392.us.new
  br i1 %lcmp.mod2239.not, label %._crit_edge1393.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge1393.us.unr-lcssa, %.lr.ph1392.us
  %indvars.iv1558.epil.init = phi i64 [ 0, %.lr.ph1392.us ], [ %indvars.iv.next1559.3, %._crit_edge1393.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2240)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.epil.preheader
  %indvars.iv1558.epil = phi i64 [ %indvars.iv1558.epil.init, %.epil.preheader ], [ %indvars.iv.next1559.epil, %bb.bk ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bk ]
  %gep.us.epil = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %indvars.iv1558.epil
  %i.uq = icmp eq i64 %indvars.iv1558.epil, %i.uh
  %i.ur = uitofp i1 %i.uq to double
  store double %i.ur, ptr %gep.us.epil, align 8, !tbaa !21
  %indvars.iv.next1559.epil = add nuw nsw i64 %indvars.iv1558.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2238
  br i1 %epil.iter.cmp.not, label %._crit_edge1393.us, label %bb.bk, !llvm.loop !233

._crit_edge1393.us:                               ; preds = %bb.bk, %._crit_edge1393.us.unr-lcssa
  %indvars.iv.next1563.a = add i64 %indvars.iv1562.a, 1 ; 2 uses
  %i.us = and i64 %indvars.iv.next1563.a, 4294967295
  %i.ut = icmp ugt i64 %i.tx, %i.us
  br i1 %i.ut, label %.lr.ph1392.us, label %.preheader1124, !llvm.loop !234

bb.bl:                                            ; preds = %.lr.ph1383, %.loopexit1128
  %i.uu = phi i64 [ %i.sp, %.lr.ph1383 ], [ %i.tr, %.loopexit1128 ] ; 4 uses
  %i.uv = phi i64 [ %i.sr, %.lr.ph1383 ], [ %i.ts, %.loopexit1128 ] ; 3 uses
  %indvars.iv1555 = phi i64 [ 0, %.lr.ph1383 ], [ %26, %.loopexit1128 ] ; 4 uses
  %storemerge1382 = phi i32 [ 0, %.lr.ph1383 ], [ %27, %.loopexit1128 ] ; 5 uses
  %.sroa.18705.01381 = phi ptr [ null, %.lr.ph1383 ], [ %.sroa.18705.1.lcssa, %.loopexit1128 ] ; 2 uses
  %.sroa.12702.01380 = phi ptr [ null, %.lr.ph1383 ], [ %.sroa.12702.1.lcssa, %.loopexit1128 ] ; 2 uses
  %.sroa.0696.01379 = phi ptr [ null, %.lr.ph1383 ], [ %.sroa.0696.1.lcssa, %.loopexit1128 ] ; 2 uses
  %.sroa.18719.01378 = phi ptr [ null, %.lr.ph1383 ], [ %.sroa.18719.1.lcssa, %.loopexit1128 ] ; 2 uses
  %.sroa.12716.01377 = phi ptr [ null, %.lr.ph1383 ], [ %.sroa.12716.1.lcssa, %.loopexit1128 ] ; 2 uses
  %.sroa.0710.01376 = phi ptr [ null, %.lr.ph1383 ], [ %.sroa.0710.1.lcssa, %.loopexit1128 ] ; 2 uses
  %.not1119 = icmp eq i32 %storemerge1382, 0
  %i.uw = add nsw i32 %storemerge1382, -1
  %i.ux = select i1 %.not1119, i32 %i.to, i32 %i.uw
  %i.uy = load ptr, ptr %16, align 8, !tbaa !17, !noalias !307 ; 2 uses
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.uy, i64 %indvars.iv1555 ; 4 uses
  %i.va = icmp slt i32 %storemerge1382, %i.to
  %27 = add nuw nsw i32 %storemerge1382, 1        ; 3 uses
  %28 = select i1 %i.va, i32 %27, i32 0
  %29 = zext nneg i32 %28 to i64                  ; 2 uses
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.uy, i64 %29 ; 4 uses
  %i.vc = load i64, ptr %i.tp, align 8, !tbaa !16, !noalias !308 ; 4 uses
  %i.vd = icmp eq i64 %i.vc, 0
  br i1 %i.vd, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ve = load double, ptr %i.uz, align 8, !tbaa !21
  %i.vf = load double, ptr %i.vb, align 8, !tbaa !21
  %i.vg = fsub double %i.ve, %i.vf                ; 2 uses
  %i.vh = fmul double %i.vg, %i.vg                ; 3 uses
  %i.vi = icmp sgt i64 %i.vc, 1
  br i1 %i.vi, label %.lr.ph.i.i.i.i.i289.preheader, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit

.lr.ph.i.i.i.i.i289.preheader:                    ; preds = %bb.bm
  %i.vj = add nsw i64 %i.vc, -1                   ; 3 uses
  %xtraiter2219 = and i64 %i.vj, 1
  %i.vk = icmp eq i64 %i.vc, 2
  br i1 %i.vk, label %.lr.ph.i.i.i.i.i289.epil.preheader, label %.lr.ph.i.i.i.i.i289.preheader.new

.lr.ph.i.i.i.i.i289.preheader.new:                ; preds = %.lr.ph.i.i.i.i.i289.preheader
  %unroll_iter = and i64 %i.vj, -2
  br label %.lr.ph.i.i.i.i.i289

.lr.ph.i.i.i.i.i289:                              ; preds = %.lr.ph.i.i.i.i.i289, %.lr.ph.i.i.i.i.i289.preheader.new
  %.01724.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i289.preheader.new ], [ %i.wc, %.lr.ph.i.i.i.i.i289 ] ; 3 uses
  %.02223.i.i.i.i.i = phi double [ %i.vh, %.lr.ph.i.i.i.i.i289.preheader.new ], [ %i.wb, %.lr.ph.i.i.i.i.i289 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i289.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i289 ]
  %i.vl = mul nuw nsw i64 %.01724.i.i.i.i.i, %i.uu ; 2 uses
  %i.vm = getelementptr [8 x i8], ptr %i.uz, i64 %i.vl
  %i.vn = getelementptr [8 x i8], ptr %i.vb, i64 %i.vl
  %i.vo = load double, ptr %i.vm, align 8, !tbaa !21
  %i.vp = load double, ptr %i.vn, align 8, !tbaa !21
  %i.vq = fsub double %i.vo, %i.vp                ; 2 uses
  %i.vr = fmul double %i.vq, %i.vq
  %i.vs = fadd double %.02223.i.i.i.i.i, %i.vr
  %i.vt = add nuw nsw i64 %.01724.i.i.i.i.i, 1
  %i.vu = mul nuw nsw i64 %i.vt, %i.uu            ; 2 uses
  %i.vv = getelementptr [8 x i8], ptr %i.uz, i64 %i.vu
  %i.vw = getelementptr [8 x i8], ptr %i.vb, i64 %i.vu
  %i.vx = load double, ptr %i.vv, align 8, !tbaa !21
  %i.vy = load double, ptr %i.vw, align 8, !tbaa !21
  %i.vz = fsub double %i.vx, %i.vy                ; 2 uses
  %i.wa = fmul double %i.vz, %i.vz
  %i.wb = fadd double %i.vs, %i.wa                ; 3 uses
  %i.wc = add nuw nsw i64 %.01724.i.i.i.i.i, 2    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i289, !llvm.loop !239

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i289
  %lcmp.mod2220.not = icmp eq i64 %xtraiter2219, 0
  br i1 %lcmp.mod2220.not, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit, label %.lr.ph.i.i.i.i.i289.epil.preheader

.lr.ph.i.i.i.i.i289.epil.preheader:               ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i289.preheader
  %.01724.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i289.preheader ], [ %i.wc, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.epil.init = phi double [ %i.vh, %.lr.ph.i.i.i.i.i289.preheader ], [ %i.wb, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit.loopexit.unr-lcssa ]
  %lcmp.mod2222 = trunc i64 %i.vj to i1
  call void @llvm.assume(i1 %lcmp.mod2222)
  %i.wd = mul nuw nsw i64 %.01724.i.i.i.i.i.epil.init, %i.uu ; 2 uses
  %i.we = getelementptr [8 x i8], ptr %i.uz, i64 %i.wd
  %i.wf = getelementptr [8 x i8], ptr %i.vb, i64 %i.wd
  %i.wg = load double, ptr %i.we, align 8, !tbaa !21
  %i.wh = load double, ptr %i.wf, align 8, !tbaa !21
  %i.wi = fsub double %i.wg, %i.wh                ; 2 uses
  %i.wj = fmul double %i.wi, %i.wi
  %i.wk = fadd double %.02223.i.i.i.i.i.epil.init, %i.wj
  br label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit: ; preds = %.lr.ph.i.i.i.i.i289.epil.preheader, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit.loopexit.unr-lcssa, %bb.bm, %bb.bl
  %.0.i.i.i288 = phi double [ 0.000000e+00, %bb.bl ], [ %i.vh, %bb.bm ], [ %i.wb, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit.loopexit.unr-lcssa ], [ %i.wk, %.lr.ph.i.i.i.i.i289.epil.preheader ]
  %i.wl = call double @sqrt(double noundef %.0.i.i.i288) #22
  %i.wm = icmp sgt i64 %i.uv, 0
  br i1 %i.wm, label %.lr.ph1369, label %.loopexit1128

.lr.ph1369:                                       ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit
  %i.wn = sext i32 %i.ux to i64
  %i.wo = getelementptr [8 x i8], ptr %.sroa.0725.0, i64 %indvars.iv1555
  %i.wp = getelementptr [8 x i8], ptr %.sroa.01038.0, i64 %indvars.iv1555
  %.sroa.2.0.insert.ext.i333 = zext nneg i32 %storemerge1382 to i64
  %.sroa.2.0.insert.shift.i334 = shl nuw nsw i64 %.sroa.2.0.insert.ext.i333, 32 ; 2 uses
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph1369, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit
  %indvars.iv1552 = phi i64 [ 0, %.lr.ph1369 ], [ %indvars.iv.next1553, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %i.wq = phi i64 [ %i.uv, %.lr.ph1369 ], [ %i.akp, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit ] ; 12 uses
  %.sroa.18705.11367 = phi ptr [ %.sroa.18705.01381, %.lr.ph1369 ], [ %.sroa.18705.2, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit ] ; 10 uses
  %.sroa.12702.11366 = phi ptr [ %.sroa.12702.01380, %.lr.ph1369 ], [ %.sroa.12702.2, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit ] ; 6 uses
  %.sroa.0696.11365 = phi ptr [ %.sroa.0696.01379, %.lr.ph1369 ], [ %.sroa.0696.2, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit ] ; 13 uses
  %.sroa.18719.11364 = phi ptr [ %.sroa.18719.01378, %.lr.ph1369 ], [ %.sroa.18719.2, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit ] ; 10 uses
  %.sroa.12716.11363 = phi ptr [ %.sroa.12716.01377, %.lr.ph1369 ], [ %.sroa.12716.2, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit ] ; 6 uses
  %.sroa.0710.11362 = phi ptr [ %.sroa.0710.01376, %.lr.ph1369 ], [ %.sroa.0710.2, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit ] ; 13 uses
  %i.wr = load ptr, ptr %16, align 8, !tbaa !17, !noalias !309 ; 3 uses
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %indvars.iv1555 ; 4 uses
  %i.wt = load ptr, ptr %15, align 8, !tbaa !17, !noalias !310
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.wt, i64 %indvars.iv1552 ; 12 uses
  %i.wv = load i64, ptr %i.tq, align 8, !tbaa !16, !noalias !310 ; 47 uses
  %i.ww = icmp ne i64 %i.wv, 0
  call void @llvm.assume(i1 %i.ww)
  %i.wx = sdiv i64 9223372036854775807, %i.wv
  %i.wy = icmp slt i64 %i.wx, 1
  br i1 %i.wy, label %.invoke2115.a, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i441

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i441: ; preds = %bb.bn
  %i.wz = icmp sgt i64 %i.wv, 0
  br i1 %i.wz, label %bb.bo, label %.loopexit1733

bb.bo:                                            ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i441
  %i.xa = icmp samesign ugt i64 %i.wv, 2305843009213693951
  br i1 %i.xa, label %.invoke2115.a, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i445

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i445: ; preds = %bb.bo
  %i.xb = shl nuw i64 %i.wv, 3
  %i.xc = call noalias ptr @malloc(i64 noundef %i.xb) #23 ; 8 uses
  %i.xd = icmp eq ptr %i.xc, null
  br i1 %i.xd, label %.invoke2115.a, label %bb.bp

.invoke2115.a:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i445, %bb.bo, %bb.bn
  %i.xe = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.xe, align 8, !tbaa !48
  invoke void @__cxa_throw(ptr nonnull %i.xe, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.cont2116.a unwind label %bb.bq

.cont2116.a:                                      ; preds = %.invoke2115.a
  unreachable

bb.bp:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i445
  %i.xf = load i64, ptr %i.so, align 8, !tbaa !15 ; 4 uses
  %min.iters.check2058 = icmp ult i64 %i.wv, 6
  br i1 %min.iters.check2058, label %.lr.ph.i.i.i.i.i.i410.preheader, label %vector.scevcheck2054

vector.scevcheck2054:                             ; preds = %bb.bp
  %ident.check2055 = icmp ne i64 %i.xf, 1
  %ident.check2056 = icmp ne i64 %i.wq, 1
  %i.xg = or i1 %ident.check2055, %ident.check2056
  br i1 %i.xg, label %.lr.ph.i.i.i.i.i.i410.preheader, label %vector.ph2059

vector.ph2059:                                    ; preds = %vector.scevcheck2054
  %n.vec2060 = and i64 %i.wv, 2305843009213693948 ; 3 uses
  br label %vector.body2061

vector.body2061:                                  ; preds = %vector.body2061, %vector.ph2059
  %index2062 = phi i64 [ 0, %vector.ph2059 ], [ %index.next2067, %vector.body2061 ] ; 4 uses
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %index2062 ; 2 uses
  %i.xi = getelementptr inbounds [8 x i8], ptr %i.ws, i64 %index2062 ; 2 uses
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.wu, i64 %index2062 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xi, i64 16
  %wide.load2063.a = load <2 x double>, ptr %i.xi, align 8, !tbaa !21
  %wide.load2064.a = load <2 x double>, ptr %i.xk, align 8, !tbaa !21
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  %wide.load2065 = load <2 x double>, ptr %i.xj, align 8, !tbaa !21
  %wide.load2066 = load <2 x double>, ptr %i.xl, align 8, !tbaa !21
  %i.xm = fsub <2 x double> %wide.load2063.a, %wide.load2065
  %i.xn = fsub <2 x double> %wide.load2064.a, %wide.load2066
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xh, i64 16
  store <2 x double> %i.xm, ptr %i.xh, align 8, !tbaa !21
  store <2 x double> %i.xn, ptr %i.xo, align 8, !tbaa !21
  %index.next2067 = add nuw i64 %index2062, 4     ; 2 uses
  %i.xp = icmp eq i64 %index.next2067, %n.vec2060
  br i1 %i.xp, label %middle.block2068, label %vector.body2061, !llvm.loop !244

middle.block2068:                                 ; preds = %vector.body2061
  %cmp.n2069 = icmp eq i64 %i.wv, %n.vec2060
  br i1 %cmp.n2069, label %.loopexit1733, label %.lr.ph.i.i.i.i.i.i410.preheader

.lr.ph.i.i.i.i.i.i410.preheader:                  ; preds = %vector.scevcheck2054, %bb.bp, %middle.block2068
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.scevcheck2054 ], [ 0, %bb.bp ], [ %n.vec2060, %middle.block2068 ] ; 6 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter2223 = and i64 %i.wv, 1
  %lcmp.mod2224.not = icmp eq i64 %xtraiter2223, 0
  br i1 %lcmp.mod2224.not, label %.lr.ph.i.i.i.i.i.i410.prol.loopexit, label %.lr.ph.i.i.i.i.i.i410.prol

.lr.ph.i.i.i.i.i.i410.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i410.preheader
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %.05.i.i.i.i.i.i.ph
  %i.xr = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.xf
  %i.xs = getelementptr inbounds [8 x i8], ptr %i.ws, i64 %i.xr
  %i.xt = mul nuw nsw i64 %.05.i.i.i.i.i.i.ph, %i.wq
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.wu, i64 %i.xt
  %i.xv = load double, ptr %i.xs, align 8, !tbaa !21
  %i.xw = load double, ptr %i.xu, align 8, !tbaa !21
  %i.xx = fsub double %i.xv, %i.xw
  store double %i.xx, ptr %i.xq, align 8, !tbaa !21
  %i.xy = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i410.prol.loopexit

.lr.ph.i.i.i.i.i.i410.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i410.prol, %.lr.ph.i.i.i.i.i.i410.preheader
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i410.preheader ], [ %i.xy, %.lr.ph.i.i.i.i.i.i410.prol ]
  %i.xz = icmp eq i64 %i.wv, %.neg
  br i1 %i.xz, label %.loopexit1733, label %.lr.ph.i.i.i.i.i.i410

.lr.ph.i.i.i.i.i.i410:                            ; preds = %.lr.ph.i.i.i.i.i.i410.prol.loopexit, %.lr.ph.i.i.i.i.i.i410
  %.05.i.i.i.i.i.i = phi i64 [ %i.yr, %.lr.ph.i.i.i.i.i.i410 ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i410.prol.loopexit ] ; 5 uses
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %.05.i.i.i.i.i.i
  %i.yb = mul nsw i64 %.05.i.i.i.i.i.i, %i.xf
  %i.yc = getelementptr inbounds [8 x i8], ptr %i.ws, i64 %i.yb
  %i.yd = mul nuw nsw i64 %.05.i.i.i.i.i.i, %i.wq
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %i.wu, i64 %i.yd
  %i.yf = load double, ptr %i.yc, align 8, !tbaa !21
  %i.yg = load double, ptr %i.ye, align 8, !tbaa !21
  %i.yh = fsub double %i.yf, %i.yg
  store double %i.yh, ptr %i.ya, align 8, !tbaa !21
  %i.yi = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 3 uses
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %i.yi
  %i.yk = mul nsw i64 %i.yi, %i.xf
  %i.yl = getelementptr inbounds [8 x i8], ptr %i.ws, i64 %i.yk
  %i.ym = mul nuw nsw i64 %i.yi, %i.wq
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %i.wu, i64 %i.ym
  %i.yo = load double, ptr %i.yl, align 8, !tbaa !21
  %i.yp = load double, ptr %i.yn, align 8, !tbaa !21
  %i.yq = fsub double %i.yo, %i.yp
  store double %i.yq, ptr %i.yj, align 8, !tbaa !21
  %i.yr = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.yr, %i.wv
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %.loopexit1733, label %.lr.ph.i.i.i.i.i.i410, !llvm.loop !245

bb.bq:                                            ; preds = %.invoke2115.a
  %i.ys = landingpad { ptr, i32 }
          cleanup
  br label %.body412

.loopexit1733:                                    ; preds = %.lr.ph.i.i.i.i.i.i410.prol.loopexit, %.lr.ph.i.i.i.i.i.i410, %middle.block2068, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i441
  %.sroa.0600.31068.ph = phi ptr [ null, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i441 ], [ %i.xc, %middle.block2068 ], [ %i.xc, %.lr.ph.i.i.i.i.i.i410 ], [ %i.xc, %.lr.ph.i.i.i.i.i.i410.prol.loopexit ] ; 15 uses
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %29 ; 4 uses
  %i.yu = sdiv i64 9223372036854775807, %i.wv
  %i.yv = icmp slt i64 %i.yu, 1
  br i1 %i.yv, label %.invoke2117.a, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i457

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i457: ; preds = %.loopexit1733
  %i.yw = icmp sgt i64 %i.wv, 0
  br i1 %i.yw, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i461, label %.loopexit1732

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i461: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i457
  %i.yx = shl nuw i64 %i.wv, 3
  %i.yy = call noalias ptr @malloc(i64 noundef %i.yx) #23 ; 8 uses
  %i.yz = icmp eq ptr %i.yy, null
  br i1 %i.yz, label %.invoke2117.a, label %bb.br

.invoke2117.a:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i461, %.loopexit1733
  %i.za = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.za, align 8, !tbaa !48
  invoke void @__cxa_throw(ptr nonnull %i.za, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.cont2118.a unwind label %bb.bs

.cont2118.a:                                      ; preds = %.invoke2117.a
  unreachable

bb.br:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i461
  %i.zb = load i64, ptr %i.so, align 8, !tbaa !15 ; 4 uses
  %min.iters.check2041 = icmp ult i64 %i.wv, 6
  br i1 %min.iters.check2041, label %.lr.ph.i.i.i.i.i.i419.preheader, label %vector.scevcheck2037

vector.scevcheck2037:                             ; preds = %bb.br
  %ident.check2038 = icmp ne i64 %i.zb, 1
  %ident.check2039 = icmp ne i64 %i.wq, 1
  %i.zc = or i1 %ident.check2038, %ident.check2039
  br i1 %i.zc, label %.lr.ph.i.i.i.i.i.i419.preheader, label %vector.ph2042

vector.ph2042:                                    ; preds = %vector.scevcheck2037
  %n.vec2043 = and i64 %i.wv, 9223372036854775804 ; 3 uses
  br label %vector.body2044

vector.body2044:                                  ; preds = %vector.body2044, %vector.ph2042
  %index2045 = phi i64 [ 0, %vector.ph2042 ], [ %index.next2050, %vector.body2044 ] ; 4 uses
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %i.yy, i64 %index2045 ; 2 uses
  %i.ze = getelementptr inbounds [8 x i8], ptr %i.yt, i64 %index2045 ; 2 uses
  %i.zf = getelementptr inbounds [8 x i8], ptr %i.wu, i64 %index2045 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %wide.load2046.a = load <2 x double>, ptr %i.ze, align 8, !tbaa !21
  %wide.load2047.a = load <2 x double>, ptr %i.zg, align 8, !tbaa !21
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zf, i64 16
  %wide.load2048 = load <2 x double>, ptr %i.zf, align 8, !tbaa !21
  %wide.load2049 = load <2 x double>, ptr %i.zh, align 8, !tbaa !21
  %i.zi = fsub <2 x double> %wide.load2046.a, %wide.load2048
  %i.zj = fsub <2 x double> %wide.load2047.a, %wide.load2049
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zd, i64 16
  store <2 x double> %i.zi, ptr %i.zd, align 8, !tbaa !21
  store <2 x double> %i.zj, ptr %i.zk, align 8, !tbaa !21
  %index.next2050 = add nuw i64 %index2045, 4     ; 2 uses
  %i.zl = icmp eq i64 %index.next2050, %n.vec2043
  br i1 %i.zl, label %middle.block2051, label %vector.body2044, !llvm.loop !246

middle.block2051:                                 ; preds = %vector.body2044
  %cmp.n2052 = icmp eq i64 %i.wv, %n.vec2043
  br i1 %cmp.n2052, label %.loopexit1732, label %.lr.ph.i.i.i.i.i.i419.preheader

.lr.ph.i.i.i.i.i.i419.preheader:                  ; preds = %vector.scevcheck2037, %bb.br, %middle.block2051
  %.05.i.i.i.i.i.i420.ph = phi i64 [ 0, %vector.scevcheck2037 ], [ 0, %bb.br ], [ %n.vec2043, %middle.block2051 ] ; 6 uses
  %.neg2260 = or disjoint i64 %.05.i.i.i.i.i.i420.ph, 1
  %xtraiter2226 = and i64 %i.wv, 1
  %lcmp.mod2227.not = icmp eq i64 %xtraiter2226, 0
  br i1 %lcmp.mod2227.not, label %.lr.ph.i.i.i.i.i.i419.prol.loopexit, label %.lr.ph.i.i.i.i.i.i419.prol

.lr.ph.i.i.i.i.i.i419.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i419.preheader
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.yy, i64 %.05.i.i.i.i.i.i420.ph
  %i.zn = mul nsw i64 %.05.i.i.i.i.i.i420.ph, %i.zb
  %i.zo = getelementptr inbounds [8 x i8], ptr %i.yt, i64 %i.zn
  %i.zp = mul nsw i64 %.05.i.i.i.i.i.i420.ph, %i.wq
  %i.zq = getelementptr inbounds [8 x i8], ptr %i.wu, i64 %i.zp
  %i.zr = load double, ptr %i.zo, align 8, !tbaa !21
  %i.zs = load double, ptr %i.zq, align 8, !tbaa !21
  %i.zt = fsub double %i.zr, %i.zs
  store double %i.zt, ptr %i.zm, align 8, !tbaa !21
  %i.zu = or disjoint i64 %.05.i.i.i.i.i.i420.ph, 1
  br label %.lr.ph.i.i.i.i.i.i419.prol.loopexit

.lr.ph.i.i.i.i.i.i419.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i419.prol, %.lr.ph.i.i.i.i.i.i419.preheader
  %.05.i.i.i.i.i.i420.unr = phi i64 [ %.05.i.i.i.i.i.i420.ph, %.lr.ph.i.i.i.i.i.i419.preheader ], [ %i.zu, %.lr.ph.i.i.i.i.i.i419.prol ]
  %i.zv = icmp eq i64 %i.wv, %.neg2260
  br i1 %i.zv, label %.loopexit1732, label %.lr.ph.i.i.i.i.i.i419

.lr.ph.i.i.i.i.i.i419:                            ; preds = %.lr.ph.i.i.i.i.i.i419.prol.loopexit, %.lr.ph.i.i.i.i.i.i419
  %.05.i.i.i.i.i.i420 = phi i64 [ %i.aan, %.lr.ph.i.i.i.i.i.i419 ], [ %.05.i.i.i.i.i.i420.unr, %.lr.ph.i.i.i.i.i.i419.prol.loopexit ] ; 5 uses
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %i.yy, i64 %.05.i.i.i.i.i.i420
  %i.zx = mul nsw i64 %.05.i.i.i.i.i.i420, %i.zb
  %i.zy = getelementptr inbounds [8 x i8], ptr %i.yt, i64 %i.zx
  %i.zz = mul nsw i64 %.05.i.i.i.i.i.i420, %i.wq
  %i.aaa = getelementptr inbounds [8 x i8], ptr %i.wu, i64 %i.zz
  %i.aab = load double, ptr %i.zy, align 8, !tbaa !21
  %i.aac = load double, ptr %i.aaa, align 8, !tbaa !21
  %i.aad = fsub double %i.aab, %i.aac
  store double %i.aad, ptr %i.zw, align 8, !tbaa !21
  %i.aae = add nuw nsw i64 %.05.i.i.i.i.i.i420, 1 ; 3 uses
  %i.aaf = getelementptr inbounds nuw [8 x i8], ptr %i.yy, i64 %i.aae
  %i.aag = mul nsw i64 %i.aae, %i.zb
  %i.aah = getelementptr inbounds [8 x i8], ptr %i.yt, i64 %i.aag
  %i.aai = mul nsw i64 %i.aae, %i.wq
  %i.aaj = getelementptr inbounds [8 x i8], ptr %i.wu, i64 %i.aai
  %i.aak = load double, ptr %i.aah, align 8, !tbaa !21
  %i.aal = load double, ptr %i.aaj, align 8, !tbaa !21
  %i.aam = fsub double %i.aak, %i.aal
  store double %i.aam, ptr %i.aaf, align 8, !tbaa !21
  %i.aan = add nuw nsw i64 %.05.i.i.i.i.i.i420, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i421.1 = icmp eq i64 %i.aan, %i.wv
  br i1 %exitcond.not.i.i.i.i.i.i421.1, label %.loopexit1732, label %.lr.ph.i.i.i.i.i.i419, !llvm.loop !247

bb.bs:                                            ; preds = %.invoke2117.a
  %i.aao = landingpad { ptr, i32 }
          cleanup
  br label %.body423

.loopexit1732:                                    ; preds = %.lr.ph.i.i.i.i.i.i419.prol.loopexit, %.lr.ph.i.i.i.i.i.i419, %middle.block2051, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i457
  %.sroa.0556.31079.ph = phi ptr [ null, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i457 ], [ %i.yy, %middle.block2051 ], [ %i.yy, %.lr.ph.i.i.i.i.i.i419 ], [ %i.yy, %.lr.ph.i.i.i.i.i.i419.prol.loopexit ] ; 14 uses
  %i.aap = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.wn ; 4 uses
  %i.aaq = sdiv i64 9223372036854775807, %i.wv
  %i.aar = icmp slt i64 %i.aaq, 1
  br i1 %i.aar, label %.invoke2119, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i473

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i473: ; preds = %.loopexit1732
  %i.aas = icmp sgt i64 %i.wv, 0
  br i1 %i.aas, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i477, label %.loopexit1731

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i477: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i473
  %i.aat = shl nuw i64 %i.wv, 3
  %i.aau = call noalias ptr @malloc(i64 noundef %i.aat) #23 ; 8 uses
  %i.aav = icmp eq ptr %i.aau, null
  br i1 %i.aav, label %.invoke2119, label %bb.bt

.invoke2119:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i477, %.loopexit1732
  %i.aaw = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aaw, align 8, !tbaa !48
  invoke void @__cxa_throw(ptr nonnull %i.aaw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.cont2120 unwind label %bb.bu

.cont2120:                                        ; preds = %.invoke2119
  unreachable

bb.bt:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i477
  %i.aax = load i64, ptr %i.so, align 8, !tbaa !15 ; 4 uses
  %min.iters.check2024 = icmp ult i64 %i.wv, 6
  br i1 %min.iters.check2024, label %.lr.ph.i.i.i.i.i.i431.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.bt
  %ident.check = icmp ne i64 %i.aax, 1
  %ident.check2022 = icmp ne i64 %i.wq, 1
  %i.aay = or i1 %ident.check, %ident.check2022
  br i1 %i.aay, label %.lr.ph.i.i.i.i.i.i431.preheader, label %vector.ph2025

vector.ph2025:                                    ; preds = %vector.scevcheck
  %n.vec2026 = and i64 %i.wv, 9223372036854775804 ; 3 uses
  br label %vector.body2027

vector.body2027:                                  ; preds = %vector.body2027, %vector.ph2025
  %index2028 = phi i64 [ 0, %vector.ph2025 ], [ %index.next2033, %vector.body2027 ] ; 4 uses
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.aau, i64 %index2028 ; 2 uses
  %i.aba = getelementptr inbounds [8 x i8], ptr %i.aap, i64 %index2028 ; 2 uses
  %i.abb = getelementptr inbounds [8 x i8], ptr %i.wu, i64 %index2028 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aba, i64 16
  %wide.load2029.a = load <2 x double>, ptr %i.aba, align 8, !tbaa !21
  %wide.load2030.a = load <2 x double>, ptr %i.abc, align 8, !tbaa !21
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abb, i64 16
  %wide.load2031 = load <2 x double>, ptr %i.abb, align 8, !tbaa !21
  %wide.load2032 = load <2 x double>, ptr %i.abd, align 8, !tbaa !21
  %i.abe = fsub <2 x double> %wide.load2029.a, %wide.load2031
  %i.abf = fsub <2 x double> %wide.load2030.a, %wide.load2032
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aaz, i64 16
  store <2 x double> %i.abe, ptr %i.aaz, align 8, !tbaa !21
  store <2 x double> %i.abf, ptr %i.abg, align 8, !tbaa !21
  %index.next2033 = add nuw i64 %index2028, 4     ; 2 uses
  %i.abh = icmp eq i64 %index.next2033, %n.vec2026
  br i1 %i.abh, label %middle.block2034, label %vector.body2027, !llvm.loop !248

middle.block2034:                                 ; preds = %vector.body2027
  %cmp.n2035 = icmp eq i64 %i.wv, %n.vec2026
  br i1 %cmp.n2035, label %.loopexit1731, label %.lr.ph.i.i.i.i.i.i431.preheader

.lr.ph.i.i.i.i.i.i431.preheader:                  ; preds = %vector.scevcheck, %bb.bt, %middle.block2034
  %.05.i.i.i.i.i.i432.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %bb.bt ], [ %n.vec2026, %middle.block2034 ] ; 6 uses
  %.neg2261 = or disjoint i64 %.05.i.i.i.i.i.i432.ph, 1
  %xtraiter2229 = and i64 %i.wv, 1
  %lcmp.mod2230.not = icmp eq i64 %xtraiter2229, 0
  br i1 %lcmp.mod2230.not, label %.lr.ph.i.i.i.i.i.i431.prol.loopexit, label %.lr.ph.i.i.i.i.i.i431.prol

.lr.ph.i.i.i.i.i.i431.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i431.preheader
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %i.aau, i64 %.05.i.i.i.i.i.i432.ph
  %i.abj = mul nsw i64 %.05.i.i.i.i.i.i432.ph, %i.aax
  %i.abk = getelementptr inbounds [8 x i8], ptr %i.aap, i64 %i.abj
  %i.abl = mul nsw i64 %.05.i.i.i.i.i.i432.ph, %i.wq
  %i.abm = getelementptr inbounds [8 x i8], ptr %i.wu, i64 %i.abl
  %i.abn = load double, ptr %i.abk, align 8, !tbaa !21
  %i.abo = load double, ptr %i.abm, align 8, !tbaa !21
  %i.abp = fsub double %i.abn, %i.abo
  store double %i.abp, ptr %i.abi, align 8, !tbaa !21
  %i.abq = or disjoint i64 %.05.i.i.i.i.i.i432.ph, 1
end_hunk_0
