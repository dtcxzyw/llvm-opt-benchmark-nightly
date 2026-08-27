Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/mvc?download=true
inline.NumInlined: 8230
inline.NumDeleted: 4298
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 75
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZN3igl3mvcERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_RS2_:bb.a
  %i.qc = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.qe = load double, ptr %i.qc, align 8, !tbaa !22
  %i.qf = getelementptr inbounds [8 x i8], ptr %i.qc, i64 %i.po
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !22
  %i.qh = getelementptr inbounds i8, ptr %i.qc, i64 %.idx.i.i.i.i.i.i.i.i.i.i260.pre-phi
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !22
  %.sroa.0958.8.vec.extract973 = extractelement <2 x double> %i.qa, i64 1
  %.sroa.0958.0.vec.extract970 = extractelement <2 x double> %i.qa, i64 0
  %i.qj = insertelement <2 x double> poison, double %i.qi, i64 0
  %i.qk = insertelement <2 x double> %i.qj, double %i.qe, i64 1
  %i.ql = insertelement <2 x double> poison, double %i.pl, i64 0
  %i.qm = insertelement <2 x double> %i.ql, double %i.pn, i64 1
  %i.qn = fsub <2 x double> %i.qk, %i.qm          ; 4 uses
  %i.qo = shufflevector <2 x double> %i.qn, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.qp = fsub double %i.qg, %i.pm                ; 3 uses
  %.sroa.0819.8.vec.insert = insertelement <2 x double> %i.qo, double %i.qp, i64 1 ; 3 uses
  %i.qq = insertelement <2 x double> %i.qo, double %i.qp, i64 0
  %i.qr = fneg <2 x double> %i.qq
  %i.qs = shufflevector <2 x double> %i.qa, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.qt = insertelement <2 x double> %i.qs, double %i.qb, i64 0
  %i.qu = fmul <2 x double> %i.qt, %i.qr
  %i.qv = insertelement <2 x double> %i.qs, double %i.qb, i64 1
  %i.qw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qv, <2 x double> %i.qn, <2 x double> %i.qu) ; 3 uses
  %i.qx = extractelement <2 x double> %i.qn, i64 1
  %i.qy = fneg double %i.qx
  %i.qz = fmul double %.sroa.0958.8.vec.extract973, %i.qy
  %i.ra = fmul <2 x double> %.sroa.0819.8.vec.insert, %.sroa.0819.8.vec.insert ; 2 uses
  %i.rb = fmul <2 x double> %i.qw, %i.qw          ; 2 uses
  %i.rc = call double @llvm.fmuladd.f64(double %.sroa.0958.0.vec.extract970, double %i.qp, double %i.qz)
  %i.rd = shufflevector <2 x double> %i.ra, <2 x double> %i.rb, <2 x i32> <i32 0, i32 2>
  %i.re = shufflevector <2 x double> %i.ra, <2 x double> %i.rb, <2 x i32> <i32 1, i32 3>
  %i.rf = fadd <2 x double> %i.rd, %i.re
  %i.rg = insertelement <2 x double> %i.qn, double %i.rc, i64 1 ; 3 uses
  %i.rh = fmul <2 x double> %i.rg, %i.rg
  %i.ri = fadd <2 x double> %i.rh, %i.rf
  %i.rj = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ri) ; 3 uses
  %i.rk = shufflevector <2 x double> %i.rj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rl = fdiv <2 x double> %.sroa.0819.8.vec.insert, %i.rk
  %i.rm = shufflevector <2 x double> %i.rj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rn = fdiv <2 x double> %i.qw, %i.rm
  %i.ro = fdiv <2 x double> %i.rg, %i.rj          ; 2 uses
  %i.rp = fmul <2 x double> %i.qa, %i.qa          ; 2 uses
  %shift2152 = shufflevector <2 x double> %i.rp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2153 = fadd <2 x double> %i.rp, %shift2152
  %i.rq = extractelement <2 x double> %foldExtExtBinop2153, i64 0
  %i.rr = fmul double %i.qb, %i.qb
  %i.rs = fadd double %i.rr, %i.rq
  %sqrt1120 = call double @llvm.sqrt.f64(double %i.rs) ; 2 uses
  %i.rt = insertelement <2 x double> poison, double %sqrt1120, i64 0
  %i.ru = shufflevector <2 x double> %i.rt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rv = fdiv <2 x double> %i.qa, %i.ru
  %i.rw = fdiv double %i.qb, %sqrt1120
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.rx = extractelement <2 x double> %i.ro, i64 0
  store double %i.rx, ptr %.sroa.7, align 16, !tbaa !22
  %.sroa.7.8..07.i.i.i.i.ptr.3.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 8
  store <2 x double> %i.rn, ptr %.sroa.7.8..07.i.i.i.i.ptr.3.i.i.i.i.i.i.sroa_idx, align 8, !tbaa !19
  %i.ry = extractelement <2 x double> %i.ro, i64 1
  %.sroa.7.24..07.i.i.i.i.ptr.5.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 24
  store double %i.ry, ptr %.sroa.7.24..07.i.i.i.i.ptr.5.i.i.i.i.i.i.sroa_idx, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.rz = getelementptr inbounds nuw i8, ptr %21, i64 208
  store i8 0, ptr %i.rz, align 16, !tbaa !89, !alias.scope !86
  %i.sa = getelementptr inbounds nuw i8, ptr %21, i64 209
  store i8 0, ptr %i.sa, align 1, !tbaa !113, !alias.scope !86
  store <2 x double> %i.rl, ptr %21, align 16, !tbaa !19, !alias.scope !86
  %i.sb = getelementptr inbounds nuw i8, ptr %21, i64 16
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16. = load <2 x double>, ptr %.sroa.7, align 16, !tbaa !19, !noalias !86
  store <2 x double> %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16., ptr %i.sb, align 16, !tbaa !19, !alias.scope !86
  %i.sc = getelementptr inbounds nuw i8, ptr %21, i64 32
  %.sroa.7.16..07.i.i.i.i.ptr.4.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 16
  %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32. = load <2 x double>, ptr %.sroa.7.16..07.i.i.i.i.ptr.4.i.i.i.i.i.i.sroa_idx, align 16, !tbaa !19, !noalias !86
  store <2 x double> %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32., ptr %i.sc, align 16, !tbaa !19, !alias.scope !86
  %i.sd = getelementptr inbounds nuw i8, ptr %21, i64 48
  store <2 x double> %i.rv, ptr %i.sd, align 16, !tbaa !19, !alias.scope !86
  %i.se = getelementptr inbounds nuw i8, ptr %21, i64 64
  store double %i.rw, ptr %i.se, align 16, !tbaa !22, !alias.scope !86
  invoke void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14computeInPlaceEv(ptr noundef nonnull align 8 dereferenceable(248) %21)
          to label %bb.ax unwind label %bb.ba

bb.ax:                                            ; preds = %._crit_edge
  %i.sf = getelementptr inbounds nuw i8, ptr %15, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  store ptr %15, ptr %23, align 8
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !9
  store ptr %21, ptr %22, align 8
  %.sroa.5758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %23, ptr %.sroa.5758.0..sroa_idx, align 8
  %i.sh = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.si = getelementptr inbounds nuw i8, ptr %22, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sh, i8 0, i64 16, i1 false)
  store i64 %i.sg, ptr %i.si, align 8, !tbaa !37, !alias.scope !114
  %i.sj = getelementptr inbounds nuw i8, ptr %22, i64 40
  store i64 2, ptr %i.sj, align 8, !tbaa !37, !alias.scope !114
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIKNS_9TransposeIKNS_5SolveINS_19ColPivHouseholderQRINS2_IdLi3ELi3ELi0ELi3ELi3EEEEENS5_IS3_EEEEEELin1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  store ptr %16, ptr %25, align 8
  %i.sk = load i64, ptr %i.qd, align 8, !tbaa !9
  store ptr %21, ptr %24, align 8
  %.sroa.5754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %25, ptr %.sroa.5754.0..sroa_idx, align 8
  %i.sl = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.sm = getelementptr inbounds nuw i8, ptr %24, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sl, i8 0, i64 16, i1 false)
  store i64 %i.sk, ptr %i.sm, align 8, !tbaa !37, !alias.scope !117
  %i.sn = getelementptr inbounds nuw i8, ptr %24, i64 40
  store i64 2, ptr %i.sn, align 8, !tbaa !37, !alias.scope !117
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIKNS_9TransposeIKNS_5SolveINS_19ColPivHouseholderQRINS2_IdLi3ELi3ELi0ELi3ELi3EEEEENS5_IS3_EEEEEELin1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.be

bb.ba:                                            ; preds = %._crit_edge
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bb:                                            ; preds = %bb.ax
  %i.sp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ay
  %i.sq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc, %bb.ba
  %.pn160.pn = phi { ptr, i32 } [ %i.so, %bb.ba ], [ %i.sq, %bb.bc ], [ %i.sp, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %.body

bb.be:                                            ; preds = %bb.az, %bb.t
  %i.sr = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !9  ; 34 uses
  %i.st = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.su = load i64, ptr %i.st, align 8, !tbaa !9  ; 9 uses
  %i.sv = icmp eq i64 %i.ss, 0                    ; 2 uses
  %i.sw = icmp eq i64 %i.su, 0
  %or.cond.i.i.i.i277 = or i1 %i.sv, %i.sw        ; 3 uses
  br i1 %or.cond.i.i.i.i277, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i278, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.sx = sdiv i64 9223372036854775807, %i.su
  %i.sy = icmp sgt i64 %i.ss, %i.sx
  br i1 %i.sy, label %.invoke1869, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i278

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i278: ; preds = %bb.bf, %bb.be
  %i.sz = mul nsw i64 %i.su, %i.ss                ; 5 uses
  %i.ta = icmp sgt i64 %i.sz, 0                   ; 2 uses
  br i1 %i.ta, label %bb.bg, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit

bb.bg:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i278
  %i.tb = icmp samesign ugt i64 %i.sz, 2305843009213693951
  br i1 %i.tb, label %.invoke1869, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i399

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i399: ; preds = %bb.bg
  %i.tc = shl nuw i64 %i.sz, 3
  %i.td = call noalias ptr @malloc(i64 noundef %i.tc) #23 ; 2 uses
  %i.te = icmp eq ptr %i.td, null
  br i1 %i.te, label %.invoke1869, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit

.invoke1869:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i399, %bb.bg, %bb.bf
  %i.tf = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.tf, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.tf, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.cont1870 unwind label %bb.bh

.cont1870:                                        ; preds = %.invoke1869
  unreachable

bb.bh:                                            ; preds = %.invoke1869
  %i.tg = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i399, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i278
  %.sroa.01038.0 = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i278 ], [ %i.td, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i399 ] ; 10 uses
  %.sroa.01038.01601 = ptrtoaddr ptr %.sroa.01038.0 to i64
  br i1 %or.cond.i.i.i.i277, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i283, label %bb.bi

bb.bi:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit
  %i.th = sdiv i64 9223372036854775807, %i.su
  %i.ti = icmp sgt i64 %i.ss, %i.th
  br i1 %i.ti, label %.invoke1871, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i283

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i283: ; preds = %bb.bi, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit
  br i1 %i.ta, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i406, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit287

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i406: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i283
  %i.tj = shl nuw i64 %i.sz, 3
  %i.tk = call noalias ptr @malloc(i64 noundef %i.tj) #23 ; 2 uses
  %i.tl = icmp eq ptr %i.tk, null
  br i1 %i.tl, label %.invoke1871, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit287

.invoke1871:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i406, %bb.bi
  %i.tm = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.tm, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.tm, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.cont1872 unwind label %bb.bj

.cont1872:                                        ; preds = %.invoke1871
  unreachable

bb.bj:                                            ; preds = %.invoke1871
  %i.tn = landingpad { ptr, i32 }
          cleanup
  br label %.body285

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit287: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i406, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i283
  %.sroa.0725.0 = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i283 ], [ %i.tk, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i406 ] ; 5 uses
  %i.to = icmp sgt i64 %i.ss, 0
  br i1 %i.to, label %.lr.ph1410, label %.preheader

.lr.ph1410:                                       ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit287
  %i.tp = add nsw i32 %i.c, -1                    ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.tr = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ts = sext i32 %i.tp to i64
  br label %bb.bl

.loopexit1128.loopexit:                           ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit
  %.pre1623 = load i64, ptr %i.sr, align 8, !tbaa !9
  br label %.loopexit1128

.loopexit1128:                                    ; preds = %.loopexit1128.loopexit, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit
  %i.tt = phi i64 [ %i.uw, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit ], [ %.pre1623, %.loopexit1128.loopexit ] ; 2 uses
  %i.tu = phi i64 [ %i.ux, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit ], [ %i.akt, %.loopexit1128.loopexit ]
  %.sroa.0710.1.lcssa = phi ptr [ %.sroa.0710.01403, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit ], [ %.sroa.0710.2, %.loopexit1128.loopexit ] ; 6 uses
  %.sroa.12716.1.lcssa = phi ptr [ %.sroa.12716.01404, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit ], [ %.sroa.12716.2, %.loopexit1128.loopexit ] ; 3 uses
  %.sroa.18719.1.lcssa = phi ptr [ %.sroa.18719.01405, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit ], [ %.sroa.18719.2, %.loopexit1128.loopexit ] ; 3 uses
  %.sroa.0696.1.lcssa = phi ptr [ %.sroa.0696.01406, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit ], [ %.sroa.0696.2, %.loopexit1128.loopexit ] ; 6 uses
  %.sroa.12702.1.lcssa = phi ptr [ %.sroa.12702.01407, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit ], [ %.sroa.12702.2, %.loopexit1128.loopexit ] ; 3 uses
  %.sroa.18705.1.lcssa = phi ptr [ %.sroa.18705.01408, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit ], [ %.sroa.18705.2, %.loopexit1128.loopexit ] ; 3 uses
  %i.tv = icmp sgt i64 %i.tt, %indvars.iv.next1583
  br i1 %i.tv, label %bb.bl, label %.preheader1125, !llvm.loop !120

.preheader1125:                                   ; preds = %.loopexit1128
  %i.tw = ptrtoint ptr %.sroa.12716.1.lcssa to i64
  %i.tx = ptrtoint ptr %.sroa.0710.1.lcssa to i64 ; 3 uses
  %i.ty = sub i64 %i.tw, %i.tx
  %i.tz = ashr exact i64 %i.ty, 3
  %.not1438 = icmp eq ptr %.sroa.12716.1.lcssa, %.sroa.0710.1.lcssa
  br i1 %.not1438, label %.preheader1124, label %.lr.ph1422

.lr.ph1422:                                       ; preds = %.preheader1125
  %i.ua = load i64, ptr %i.a, align 8, !tbaa !9   ; 4 uses
  %i.ub = icmp sgt i64 %i.ua, 0
  br i1 %i.ub, label %.lr.ph1419.us.preheader, label %.preheader1124

.lr.ph1419.us.preheader:                          ; preds = %.lr.ph1422
  %xtraiter2282 = and i64 %i.ua, 3                ; 3 uses
  %i.uc = icmp ult i64 %i.ua, 4
  %unroll_iter2285 = and i64 %i.ua, 9223372036854775804
  %lcmp.mod2283.not = icmp eq i64 %xtraiter2282, 0
  %lcmp.mod2284 = icmp ne i64 %xtraiter2282, 0
  br label %.lr.ph1419.us

.lr.ph1419.us:                                    ; preds = %.lr.ph1419.us.preheader, %._crit_edge1420.us
  %indvars.iv1589 = phi i64 [ %indvars.iv.next1590, %._crit_edge1420.us ], [ 0, %.lr.ph1419.us.preheader ] ; 2 uses
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0710.1.lcssa, i64 %indvars.iv1589 ; 2 uses
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !121
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 4
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !123
  %i.uh = sext i32 %i.ue to i64
  %i.ui = mul nsw i64 %i.ss, %i.uh
  %invariant.gep.us = getelementptr [8 x i8], ptr %.sroa.01038.0, i64 %i.ui ; 5 uses
  %i.uj = zext i32 %i.ug to i64                   ; 5 uses
  br i1 %i.uc, label %.epil.preheader, label %.lr.ph1419.us.new

.lr.ph1419.us.new:                                ; preds = %.lr.ph1419.us, %.lr.ph1419.us.new
  %indvars.iv1585 = phi i64 [ %indvars.iv.next1586.3, %.lr.ph1419.us.new ], [ 0, %.lr.ph1419.us ] ; 6 uses
  %niter2286 = phi i64 [ %niter2286.next.3, %.lr.ph1419.us.new ], [ 0, %.lr.ph1419.us ]
  %gep.us = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %indvars.iv1585
  %i.uk = icmp eq i64 %indvars.iv1585, %i.uj
  %i.ul = uitofp i1 %i.uk to double
  store double %i.ul, ptr %gep.us, align 8, !tbaa !22
  %indvars.iv.next1586 = or disjoint i64 %indvars.iv1585, 1 ; 2 uses
  %gep.us.1 = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %indvars.iv.next1586
  %i.um = icmp eq i64 %indvars.iv.next1586, %i.uj
  %i.un = uitofp i1 %i.um to double
  store double %i.un, ptr %gep.us.1, align 8, !tbaa !22
  %indvars.iv.next1586.1 = or disjoint i64 %indvars.iv1585, 2 ; 2 uses
  %gep.us.2 = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %indvars.iv.next1586.1
  %i.uo = icmp eq i64 %indvars.iv.next1586.1, %i.uj
  %i.up = uitofp i1 %i.uo to double
  store double %i.up, ptr %gep.us.2, align 8, !tbaa !22
  %indvars.iv.next1586.2 = or disjoint i64 %indvars.iv1585, 3 ; 2 uses
  %gep.us.3 = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %indvars.iv.next1586.2
  %i.uq = icmp eq i64 %indvars.iv.next1586.2, %i.uj
  %i.ur = uitofp i1 %i.uq to double
  store double %i.ur, ptr %gep.us.3, align 8, !tbaa !22
  %indvars.iv.next1586.3 = add nuw nsw i64 %indvars.iv1585, 4 ; 2 uses
  %niter2286.next.3 = add nuw nsw i64 %niter2286, 4 ; 2 uses
  %niter2286.ncmp.3 = icmp eq i64 %niter2286.next.3, %unroll_iter2285
  br i1 %niter2286.ncmp.3, label %._crit_edge1420.us.unr-lcssa, label %.lr.ph1419.us.new, !llvm.loop !124

._crit_edge1420.us.unr-lcssa:                     ; preds = %.lr.ph1419.us.new
  br i1 %lcmp.mod2283.not, label %._crit_edge1420.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge1420.us.unr-lcssa, %.lr.ph1419.us
  %indvars.iv1585.epil.init = phi i64 [ 0, %.lr.ph1419.us ], [ %indvars.iv.next1586.3, %._crit_edge1420.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2284)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.epil.preheader
  %indvars.iv1585.epil = phi i64 [ %indvars.iv1585.epil.init, %.epil.preheader ], [ %indvars.iv.next1586.epil, %bb.bk ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bk ]
  %gep.us.epil = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %indvars.iv1585.epil
  %i.us = icmp eq i64 %indvars.iv1585.epil, %i.uj
  %i.ut = uitofp i1 %i.us to double
  store double %i.ut, ptr %gep.us.epil, align 8, !tbaa !22
  %indvars.iv.next1586.epil = add nuw nsw i64 %indvars.iv1585.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2282
  br i1 %epil.iter.cmp.not, label %._crit_edge1420.us, label %bb.bk, !llvm.loop !125

._crit_edge1420.us:                               ; preds = %bb.bk, %._crit_edge1420.us.unr-lcssa
  %indvars.iv.next1590 = add i64 %indvars.iv1589, 1 ; 2 uses
  %i.uu = and i64 %indvars.iv.next1590, 4294967295
  %i.uv = icmp ugt i64 %i.tz, %i.uu
  br i1 %i.uv, label %.lr.ph1419.us, label %.preheader1124, !llvm.loop !126

bb.bl:                                            ; preds = %.lr.ph1410, %.loopexit1128
  %i.uw = phi i64 [ %i.ss, %.lr.ph1410 ], [ %i.tt, %.loopexit1128 ] ; 4 uses
  %i.ux = phi i64 [ %i.su, %.lr.ph1410 ], [ %i.tu, %.loopexit1128 ] ; 3 uses
  %indvars.iv1582 = phi i64 [ 0, %.lr.ph1410 ], [ %indvars.iv.next1583, %.loopexit1128 ] ; 9 uses
  %.sroa.18705.01408 = phi ptr [ null, %.lr.ph1410 ], [ %.sroa.18705.1.lcssa, %.loopexit1128 ] ; 2 uses
  %.sroa.12702.01407 = phi ptr [ null, %.lr.ph1410 ], [ %.sroa.12702.1.lcssa, %.loopexit1128 ] ; 2 uses
  %.sroa.0696.01406 = phi ptr [ null, %.lr.ph1410 ], [ %.sroa.0696.1.lcssa, %.loopexit1128 ] ; 2 uses
  %.sroa.18719.01405 = phi ptr [ null, %.lr.ph1410 ], [ %.sroa.18719.1.lcssa, %.loopexit1128 ] ; 2 uses
  %.sroa.12716.01404 = phi ptr [ null, %.lr.ph1410 ], [ %.sroa.12716.1.lcssa, %.loopexit1128 ] ; 2 uses
  %.sroa.0710.01403 = phi ptr [ null, %.lr.ph1410 ], [ %.sroa.0710.1.lcssa, %.loopexit1128 ] ; 2 uses
  %.not1119 = icmp eq i64 %indvars.iv1582, 0
  %i.uy = trunc i64 %indvars.iv1582 to i32
  %i.uz = add i32 %i.uy, -1
  %i.va = select i1 %.not1119, i32 %i.tp, i32 %i.uz
  %i.vb = load ptr, ptr %16, align 8, !tbaa !15, !noalias !127 ; 2 uses
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %indvars.iv1582 ; 4 uses
  %i.vd = icmp slt i64 %indvars.iv1582, %i.ts
  %indvars.iv.next1583 = add nuw nsw i64 %indvars.iv1582, 1 ; 3 uses
  %i.ve = select i1 %i.vd, i64 %indvars.iv.next1583, i64 0 ; 2 uses
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %i.ve ; 4 uses
  %i.vg = load i64, ptr %i.tq, align 8, !tbaa !14, !noalias !130 ; 4 uses
  %i.vh = icmp eq i64 %i.vg, 0
  br i1 %i.vh, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.vi = load double, ptr %i.vc, align 8, !tbaa !22
  %i.vj = load double, ptr %i.vf, align 8, !tbaa !22
  %i.vk = fsub double %i.vi, %i.vj                ; 2 uses
  %i.vl = fmul double %i.vk, %i.vk                ; 3 uses
  %i.vm = icmp sgt i64 %i.vg, 1
  br i1 %i.vm, label %.lr.ph.i.i.i.i.i289.preheader, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit

.lr.ph.i.i.i.i.i289.preheader:                    ; preds = %bb.bm
  %i.vn = add nsw i64 %i.vg, -1                   ; 3 uses
  %xtraiter2263 = and i64 %i.vn, 1
  %i.vo = icmp eq i64 %i.vg, 2
  br i1 %i.vo, label %.lr.ph.i.i.i.i.i289.epil.preheader, label %.lr.ph.i.i.i.i.i289.preheader.new

.lr.ph.i.i.i.i.i289.preheader.new:                ; preds = %.lr.ph.i.i.i.i.i289.preheader
  %unroll_iter = and i64 %i.vn, -2
  br label %.lr.ph.i.i.i.i.i289

.lr.ph.i.i.i.i.i289:                              ; preds = %.lr.ph.i.i.i.i.i289, %.lr.ph.i.i.i.i.i289.preheader.new
  %.01724.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i289.preheader.new ], [ %i.wg, %.lr.ph.i.i.i.i.i289 ] ; 3 uses
  %.02223.i.i.i.i.i = phi double [ %i.vl, %.lr.ph.i.i.i.i.i289.preheader.new ], [ %i.wf, %.lr.ph.i.i.i.i.i289 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i289.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i289 ]
  %i.vp = mul nsw i64 %.01724.i.i.i.i.i, %i.uw    ; 2 uses
  %i.vq = getelementptr [8 x i8], ptr %i.vc, i64 %i.vp
  %i.vr = getelementptr [8 x i8], ptr %i.vf, i64 %i.vp
  %i.vs = load double, ptr %i.vq, align 8, !tbaa !22
  %i.vt = load double, ptr %i.vr, align 8, !tbaa !22
  %i.vu = fsub double %i.vs, %i.vt                ; 2 uses
  %i.vv = fmul double %i.vu, %i.vu
  %i.vw = fadd double %.02223.i.i.i.i.i, %i.vv
  %i.vx = add nuw nsw i64 %.01724.i.i.i.i.i, 1
  %i.vy = mul nsw i64 %i.vx, %i.uw                ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3igl3mvcERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_RS2_:bb.a
.loopexit1130:                                    ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit1132 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit.split-lp1131:                           ; preds = %bb.ci
  %lpad.loopexit.split-lp1133 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.ck:                                            ; preds = %.loopexit1126
  %i.ajj = fadd double %i.ahi, %i.aew
  %i.ajk = fdiv double %i.ajj, %i.wp
  %i.ajl = fadd double %i.ajk, -1.000000e+00
  %i.ajm = call noundef double @llvm.fabs.f64(double %i.ajl)
  %i.ajn = fcmp olt double %i.ajm, 1.000000e-10
  br i1 %i.ajn, label %bb.cl, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit

bb.cl:                                            ; preds = %bb.ck
  %.sroa.0.0.insert.insert.i336 = or disjoint i64 %.sroa.2.0.insert.shift.i334, %indvars.iv1579 ; 2 uses
  %.not.i.i337 = icmp eq ptr %.sroa.12702.11393, %.sroa.18705.11394
  br i1 %.not.i.i337, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  store i64 %.sroa.0.0.insert.insert.i336, ptr %.sroa.12702.11393, align 4
  %i.ajo = getelementptr inbounds nuw i8, ptr %.sroa.12702.11393, i64 8
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit

bb.cn:                                            ; preds = %bb.cl
  %i.ajp = ptrtoint ptr %.sroa.18705.11394 to i64 ; 2 uses
  %i.ajq = ptrtoint ptr %.sroa.0696.11392 to i64  ; 3 uses
  %i.ajr = sub i64 %i.ajp, %i.ajq                 ; 4 uses
  %i.ajs = icmp eq i64 %i.ajr, 9223372036854775800
  br i1 %i.ajs, label %bb.co, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i338

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #24
          to label %.noexc350 unwind label %.loopexit.split-lp

.noexc350:                                        ; preds = %bb.co
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i338: ; preds = %bb.cn
  %i.ajt = ashr exact i64 %i.ajr, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i339 = call i64 @llvm.umax.i64(i64 %i.ajt, i64 1)
  %i.aju = add nsw i64 %.sroa.speculated.i.i.i.i339, %i.ajt ; 2 uses
  %i.ajv = icmp ult i64 %i.aju, %i.ajt
  %i.ajw = call i64 @llvm.umin.i64(i64 %i.aju, i64 1152921504606846975)
  %i.ajx = select i1 %i.ajv, i64 1152921504606846975, i64 %i.ajw ; 3 uses
  %.not.i.i.i.i340 = icmp ne i64 %i.ajx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i340)
  %i.ajy = shl nuw nsw i64 %i.ajx, 3
  %i.ajz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajy) #25
          to label %.noexc351 unwind label %.loopexit1129 ; 8 uses

.noexc351:                                        ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i338
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 %i.ajr
  store i64 %.sroa.0.0.insert.insert.i336, ptr %i.aka, align 4
  %.not10.i.i.i.i.i.i341 = icmp eq ptr %.sroa.0696.11392, %.sroa.18705.11394
  br i1 %.not10.i.i.i.i.i.i341, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i346, label %.lr.ph.i.i.i.i.i.i342.preheader

.lr.ph.i.i.i.i.i.i342.preheader:                  ; preds = %.noexc351
  %i.akb = ptrtoaddr ptr %i.ajz to i64
  %i.akc = add i64 %i.ajp, -8
  %i.akd = sub i64 %i.akc, %i.ajq                 ; 2 uses
  %i.ake = lshr i64 %i.akd, 3
  %i.akf = add nuw nsw i64 %i.ake, 1              ; 2 uses
  %min.iters.check2028 = icmp ult i64 %i.akd, 24
  %i.akg = sub i64 %i.ajq, %i.akb
  %diff.check2026 = icmp ugt i64 %i.akg, -32
  %or.cond2140 = or i1 %min.iters.check2028, %diff.check2026
  br i1 %or.cond2140, label %.lr.ph.i.i.i.i.i.i342.preheader2172, label %vector.ph2029

vector.ph2029:                                    ; preds = %.lr.ph.i.i.i.i.i.i342.preheader
  %n.vec2030 = and i64 %i.akf, 4611686018427387900 ; 3 uses
  %i.akh = shl i64 %n.vec2030, 3                  ; 2 uses
  %i.aki = getelementptr i8, ptr %i.ajz, i64 %i.akh ; 2 uses
  %i.akj = getelementptr i8, ptr %.sroa.0696.11392, i64 %i.akh
  br label %vector.body2031

vector.body2031:                                  ; preds = %vector.body2031, %vector.ph2029
  %index2032 = phi i64 [ 0, %vector.ph2029 ], [ %index.next2037, %vector.body2031 ] ; 2 uses
  %i.akk = shl i64 %index2032, 3                  ; 2 uses
  %next.gep2033 = getelementptr i8, ptr %i.ajz, i64 %i.akk ; 2 uses
  %next.gep2034 = getelementptr i8, ptr %.sroa.0696.11392, i64 %i.akk ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.akl = getelementptr i8, ptr %next.gep2034, i64 16
  %wide.load2035 = load <2 x i64>, ptr %next.gep2034, align 4, !alias.scope !160, !noalias !157
  %wide.load2036 = load <2 x i64>, ptr %i.akl, align 4, !alias.scope !160, !noalias !157
  %i.akm = getelementptr i8, ptr %next.gep2033, i64 16
  store <2 x i64> %wide.load2035, ptr %next.gep2033, align 4, !alias.scope !157, !noalias !160
  store <2 x i64> %wide.load2036, ptr %i.akm, align 4, !alias.scope !157, !noalias !160
  %index.next2037 = add nuw i64 %index2032, 4     ; 2 uses
  %i.akn = icmp eq i64 %index.next2037, %n.vec2030
  br i1 %i.akn, label %middle.block2038, label %vector.body2031, !llvm.loop !162

middle.block2038:                                 ; preds = %vector.body2031
  %cmp.n2039 = icmp eq i64 %i.akf, %n.vec2030
  br i1 %cmp.n2039, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i346, label %.lr.ph.i.i.i.i.i.i342.preheader2172

.lr.ph.i.i.i.i.i.i342.preheader2172:              ; preds = %.lr.ph.i.i.i.i.i.i342.preheader, %middle.block2038
  %.012.i.i.i.i.i.i343.ph = phi ptr [ %i.ajz, %.lr.ph.i.i.i.i.i.i342.preheader ], [ %i.aki, %middle.block2038 ]
  %.0911.i.i.i.i.i.i344.ph = phi ptr [ %.sroa.0696.11392, %.lr.ph.i.i.i.i.i.i342.preheader ], [ %i.akj, %middle.block2038 ]
  br label %.lr.ph.i.i.i.i.i.i342

.lr.ph.i.i.i.i.i.i342:                            ; preds = %.lr.ph.i.i.i.i.i.i342.preheader2172, %.lr.ph.i.i.i.i.i.i342
  %.012.i.i.i.i.i.i343 = phi ptr [ %i.akq, %.lr.ph.i.i.i.i.i.i342 ], [ %.012.i.i.i.i.i.i343.ph, %.lr.ph.i.i.i.i.i.i342.preheader2172 ] ; 2 uses
  %.0911.i.i.i.i.i.i344 = phi ptr [ %i.akp, %.lr.ph.i.i.i.i.i.i342 ], [ %.0911.i.i.i.i.i.i344.ph, %.lr.ph.i.i.i.i.i.i342.preheader2172 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.ako = load i64, ptr %.0911.i.i.i.i.i.i344, align 4, !alias.scope !160, !noalias !157
  store i64 %i.ako, ptr %.012.i.i.i.i.i.i343, align 4, !alias.scope !157, !noalias !160
  %i.akp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i344, i64 8 ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i343, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i345 = icmp eq ptr %i.akp, %.sroa.18705.11394
  br i1 %.not.i.i.i.i.i.i345, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i346, label %.lr.ph.i.i.i.i.i.i342, !llvm.loop !163

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i346: ; preds = %.lr.ph.i.i.i.i.i.i342, %middle.block2038, %.noexc351
  %.0.lcssa.i.i.i.i.i.i347 = phi ptr [ %i.ajz, %.noexc351 ], [ %i.aki, %middle.block2038 ], [ %i.akq, %.lr.ph.i.i.i.i.i.i342 ]
  %i.akr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i347, i64 8
  %.not.i23.i.i.i348 = icmp eq ptr %.sroa.0696.11392, null
  br i1 %.not.i23.i.i.i348, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i349, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i346
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0696.11392, i64 noundef %i.ajr) #26
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i349

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i349: ; preds = %bb.cp, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i346
  %i.aks = getelementptr inbounds nuw [8 x i8], ptr %i.ajz, i64 %i.ajx
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit

.loopexit1129:                                    ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i338
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit.split-lp:                               ; preds = %bb.co
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.cm, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i349, %bb.cg, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ck
  %.sroa.0710.2 = phi ptr [ %.sroa.0710.11389, %bb.ck ], [ %.sroa.0710.11389, %bb.cg ], [ %i.aip, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0710.11389, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i349 ], [ %.sroa.0710.11389, %bb.cm ] ; 2 uses
  %.sroa.12716.2 = phi ptr [ %.sroa.12716.11390, %bb.ck ], [ %i.aie, %bb.cg ], [ %i.ajh, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.12716.11390, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i349 ], [ %.sroa.12716.11390, %bb.cm ] ; 2 uses
  %.sroa.18719.2 = phi ptr [ %.sroa.18719.11391, %bb.ck ], [ %.sroa.18719.11391, %bb.cg ], [ %i.aji, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.18719.11391, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i349 ], [ %.sroa.18719.11391, %bb.cm ] ; 2 uses
  %.sroa.0696.2 = phi ptr [ %.sroa.0696.11392, %bb.ck ], [ %.sroa.0696.11392, %bb.cg ], [ %.sroa.0696.11392, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ajz, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i349 ], [ %.sroa.0696.11392, %bb.cm ] ; 2 uses
  %.sroa.12702.2 = phi ptr [ %.sroa.12702.11393, %bb.ck ], [ %.sroa.12702.11393, %bb.cg ], [ %.sroa.12702.11393, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.akr, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i349 ], [ %i.ajo, %bb.cm ] ; 2 uses
  %.sroa.18705.2 = phi ptr [ %.sroa.18705.11394, %bb.ck ], [ %.sroa.18705.11394, %bb.cg ], [ %.sroa.18705.11394, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.aks, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i349 ], [ %.sroa.18705.11394, %bb.cm ] ; 2 uses
  call void @free(ptr noundef nonnull %.sroa.0514.31087.ph) #22
  call void @free(ptr noundef nonnull %.sroa.0556.31079.ph) #22
  call void @free(ptr noundef nonnull %.sroa.0600.31068.ph) #22
  %indvars.iv.next1580 = add nuw nsw i64 %indvars.iv1579, 1 ; 2 uses
  %i.akt = load i64, ptr %i.st, align 8, !tbaa !9 ; 3 uses
  %i.aku = icmp sgt i64 %i.akt, %indvars.iv.next1580
  br i1 %i.aku, label %bb.bn, label %.loopexit1128.loopexit, !llvm.loop !164

bb.cq:                                            ; preds = %.loopexit1129, %.loopexit.split-lp, %.loopexit1130, %.loopexit.split-lp1131
  %.pn190.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp1133, %.loopexit.split-lp1131 ], [ %lpad.loopexit1132, %.loopexit1130 ], [ %lpad.loopexit, %.loopexit1129 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @free(ptr noundef nonnull %.sroa.0514.31087.ph) #22
  br label %.body435

.body435:                                         ; preds = %bb.bu, %bb.cq
  %.pn190.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn190.pn.pn.pn, %bb.cq ], [ %i.aco, %bb.bu ]
  call void @free(ptr noundef %.sroa.0556.31079.ph) #22
  br label %.body423

.body423:                                         ; preds = %bb.bs, %.body435
  %.pn190.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn190.pn.pn.pn.pn, %.body435 ], [ %i.aas, %bb.bs ]
  call void @free(ptr noundef %.sroa.0600.31068.ph) #22
  br label %.body412

.preheader1124:                                   ; preds = %._crit_edge1420.us, %.lr.ph1422, %.preheader1125
  %i.akv = ptrtoint ptr %.sroa.12702.1.lcssa to i64
  %i.akw = ptrtoint ptr %.sroa.0696.1.lcssa to i64 ; 3 uses
  %i.akx = sub i64 %i.akv, %i.akw
  %i.aky = ashr exact i64 %i.akx, 3
  %.not1439 = icmp eq ptr %.sroa.12702.1.lcssa, %.sroa.0696.1.lcssa
  br i1 %.not1439, label %.preheader, label %.lr.ph1433

.lr.ph1433:                                       ; preds = %.preheader1124
  %i.akz = add nsw i32 %i.c, -1
  %i.ala = load i64, ptr %i.a, align 8, !tbaa !9  ; 2 uses
  %i.alb = icmp sgt i64 %i.ala, 0
  br label %bb.cr

.preheader:                                       ; preds = %._crit_edge1427, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit287, %.preheader1124
  %i.alc = phi i64 [ 0, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit287 ], [ %i.akw, %.preheader1124 ], [ %i.akw, %._crit_edge1427 ]
  %.sroa.0710.0.lcssa17061751 = phi ptr [ null, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit287 ], [ %.sroa.0710.1.lcssa, %.preheader1124 ], [ %.sroa.0710.1.lcssa, %._crit_edge1427 ] ; 3 uses
  %.sroa.18719.0.lcssa17071750 = phi ptr [ null, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit287 ], [ %.sroa.18719.1.lcssa, %.preheader1124 ], [ %.sroa.18719.1.lcssa, %._crit_edge1427 ] ; 2 uses
  %.sroa.0696.0.lcssa17081749 = phi ptr [ null, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit287 ], [ %.sroa.0696.1.lcssa, %.preheader1124 ], [ %.sroa.0696.1.lcssa, %._crit_edge1427 ] ; 3 uses
  %.sroa.18705.0.lcssa17101748 = phi ptr [ null, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit287 ], [ %.sroa.18705.1.lcssa, %.preheader1124 ], [ %.sroa.18705.1.lcssa, %._crit_edge1427 ] ; 2 uses
  %i.ald = phi i64 [ 0, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit287 ], [ %i.tx, %.preheader1124 ], [ %i.tx, %._crit_edge1427 ]
  %i.ale = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.alf = load i64, ptr %i.ale, align 8, !tbaa !9 ; 2 uses
  %i.alg = icmp sgt i64 %i.alf, 0
  br i1 %i.alg, label %.lr.ph1436, label %._crit_edge1437

.lr.ph1436:                                       ; preds = %.preheader
  %i.alh = icmp sgt i64 %i.ss, 1
  %26 = and i64 %.sroa.01038.01601, 7             ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %26, 0
  %.not.i.i.i.i.i.i.i353 = icmp eq i64 %26, 0
  %i.ali = add i64 %i.ss, -1                      ; 2 uses
  %i.alj = add i64 %i.ss, -2
  %xtraiter2294 = and i64 %i.ali, 7               ; 3 uses
  %i.alk = icmp ult i64 %i.alj, 7
  %unroll_iter2299 = and i64 %i.ali, -8
  %lcmp.mod2296.not = icmp eq i64 %xtraiter2294, 0
  %lcmp.mod2298 = icmp ne i64 %xtraiter2294, 0
  br label %bb.cy

bb.cr:                                            ; preds = %.lr.ph1433, %._crit_edge1427
  %indvars.iv1597 = phi i64 [ 0, %.lr.ph1433 ], [ %indvars.iv.next1598, %._crit_edge1427 ] ; 2 uses
  br i1 %i.alb, label %.lr.ph1426, label %._crit_edge1427

.lr.ph1426:                                       ; preds = %bb.cr
  %i.all = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0696.1.lcssa, i64 %indvars.iv1597 ; 2 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 4
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !123 ; 4 uses
  %i.alo = icmp slt i32 %i.aln, %i.akz
  %i.alp = add nsw i32 %i.aln, 1
  %i.alq = select i1 %i.alo, i32 %i.alp, i32 0    ; 2 uses
  %i.alr = load i32, ptr %i.all, align 4, !tbaa !121
  %i.als = sext i32 %i.alr to i64
  %i.alt = mul nsw i64 %i.ss, %i.als              ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.sroa.01038.0, i64 %i.alt ; 3 uses
  %i.alu = sext i32 %i.aln to i64
  %i.alv = getelementptr [8 x i8], ptr %.sroa.0725.0, i64 %i.alu
  %i.alw = getelementptr [8 x i8], ptr %i.alv, i64 %i.alt
  %i.alx = sext i32 %i.alq to i64
  %i.aly = getelementptr [8 x i8], ptr %.sroa.0725.0, i64 %i.alx
  %i.alz = getelementptr [8 x i8], ptr %i.aly, i64 %i.alt
  %i.ama = zext i32 %i.alq to i64                 ; 2 uses
  %i.amb = zext i32 %i.aln to i64                 ; 2 uses
  %gep1429 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ama
  %gep1431 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.amb
  br label %bb.cs

._crit_edge1427:                                  ; preds = %bb.cx, %bb.cr
  %indvars.iv.next1598 = add i64 %indvars.iv1597, 1 ; 2 uses
  %i.amc = and i64 %indvars.iv.next1598, 4294967295
  %i.amd = icmp ugt i64 %i.aky, %i.amc
  br i1 %i.amd, label %bb.cr, label %.preheader, !llvm.loop !165

bb.cs:                                            ; preds = %.lr.ph1426, %bb.cx
  %indvars.iv1592 = phi i64 [ 0, %.lr.ph1426 ], [ %indvars.iv.next1593, %bb.cx ] ; 4 uses
  %i.ame = icmp eq i64 %indvars.iv1592, %i.amb
  br i1 %i.ame, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.amf = load double, ptr %i.alz, align 8, !tbaa !22
  store double %i.amf, ptr %gep1431, align 8, !tbaa !22
  br label %bb.cx

bb.cu:                                            ; preds = %bb.cs
  %i.amg = icmp eq i64 %indvars.iv1592, %i.ama
  br i1 %i.amg, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.amh = load double, ptr %i.alw, align 8, !tbaa !22
  store double %i.amh, ptr %gep1429, align 8, !tbaa !22
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1592
  store double 0.000000e+00, ptr %gep, align 8, !tbaa !22
  br label %bb.cx

bb.cx:                                            ; preds = %bb.ct, %bb.cw, %bb.cv
  %indvars.iv.next1593 = add nuw nsw i64 %indvars.iv1592, 1 ; 2 uses
  %exitcond1596.not = icmp eq i64 %indvars.iv.next1593, %i.ala
  br i1 %exitcond1596.not, label %._crit_edge1427, label %bb.cs, !llvm.loop !166

bb.cy:                                            ; preds = %.lr.ph1436, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEdVERKd.exit
  %indvars.iv1602 = phi i64 [ 0, %.lr.ph1436 ], [ %indvars.iv.next1603, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEdVERKd.exit ] ; 2 uses
  %i.ami = mul nsw i64 %indvars.iv1602, %i.ss
  %i.amj = getelementptr inbounds [8 x i8], ptr %.sroa.01038.0, i64 %i.ami ; 30 uses
  %.pre1629.a = ptrtoint ptr %i.amj to i64        ; 2 uses
  br i1 %i.sv, label %.loopexit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  br i1 %.not.i.i.i.i.i.i.i, label %bb.da, label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i

bb.da:                                            ; preds = %bb.cz
  %i.amk = lshr exact i64 %.pre1629.a, 3
  %i.aml = and i64 %i.amk, 1
  %i.amm = call i64 @llvm.smin.i64(i64 %i.aml, i64 %i.ss)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i: ; preds = %bb.da, %bb.cz
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.amm, %bb.da ], [ %i.ss, %bb.cz ] ; 10 uses
  %i.amn = sub nsw i64 %i.ss, %.0.i.i.i.i.i.i.i   ; 5 uses
  %i.amo = sdiv i64 %i.amn, 4
  %i.amp = shl nsw i64 %i.amo, 2                  ; 2 uses
  %i.amq = sdiv i64 %i.amn, 2
  %i.amr = shl nsw i64 %i.amq, 1                  ; 2 uses
  %i.ams = add nsw i64 %i.amp, %.0.i.i.i.i.i.i.i  ; 2 uses
  %i.amt = add nsw i64 %i.amr, %.0.i.i.i.i.i.i.i  ; 2 uses
  %.off.i.i.i = add i64 %i.amn, 1
  %.not.i.i.i = icmp ult i64 %.off.i.i.i, 3
  br i1 %.not.i.i.i, label %bb.df, label %bb.db

bb.db:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i
  %i.amu = getelementptr [8 x i8], ptr %i.amj, i64 %.0.i.i.i.i.i.i.i ; 2 uses
  %i.amv = load <2 x double>, ptr %i.amu, align 1, !tbaa !19 ; 3 uses
  %i.amw = icmp sgt i64 %i.amn, 3
  br i1 %i.amw, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.amx = getelementptr i8, ptr %i.amu, i64 16
  %i.amy = load <2 x double>, ptr %i.amx, align 1, !tbaa !19 ; 2 uses
  %i.amz = icmp samesign ugt i64 %i.amn, 7
  br i1 %i.amz, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.dc
  %.05475.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i, 4
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.dc
  %.073.lcssa.i.i.i = phi <2 x double> [ %i.amy, %bb.dc ], [ %i.ani, %.lr.ph.i.i.i ]
  %.070.lcssa.i.i.i = phi <2 x double> [ %i.amv, %bb.dc ], [ %i.ane, %.lr.ph.i.i.i ]
  %i.ana = fadd <2 x double> %.073.lcssa.i.i.i, %.070.lcssa.i.i.i ; 2 uses
  %i.anb = icmp sgt i64 %i.amr, %i.amp
  br i1 %i.anb, label %bb.dd, label %bb.de

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.05479.i.i.i = phi i64 [ %.054.i.i.i, %.lr.ph.i.i.i ], [ %.05475.i.i.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.054.in78.i.i.i = phi i64 [ %.05479.i.i.i, %.lr.ph.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i ]
  %.07077.i.i.i = phi <2 x double> [ %i.ane, %.lr.ph.i.i.i ], [ %i.amv, %.lr.ph.preheader.i.i.i ]
  %.07376.i.i.i = phi <2 x double> [ %i.ani, %.lr.ph.i.i.i ], [ %i.amy, %.lr.ph.preheader.i.i.i ]
  %i.anc = getelementptr inbounds [8 x i8], ptr %i.amj, i64 %.05479.i.i.i
  %i.and = load <2 x double>, ptr %i.anc, align 1, !tbaa !19
  %i.ane = fadd <2 x double> %.07077.i.i.i, %i.and ; 2 uses
  %i.anf = getelementptr [8 x i8], ptr %i.amj, i64 %.054.in78.i.i.i
  %i.ang = getelementptr i8, ptr %i.anf, i64 48
  %i.anh = load <2 x double>, ptr %i.ang, align 1, !tbaa !19
  %i.ani = fadd <2 x double> %.07376.i.i.i, %i.anh ; 2 uses
  %.054.i.i.i = add nsw i64 %.05479.i.i.i, 4      ; 2 uses
  %i.anj = icmp slt i64 %.054.i.i.i, %i.ams
  br i1 %i.anj, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !167

bb.dd:                                            ; preds = %._crit_edge.i.i.i
  %i.ank = getelementptr inbounds [8 x i8], ptr %i.amj, i64 %i.ams
  %i.anl = load <2 x double>, ptr %i.ank, align 1, !tbaa !19
  %i.anm = fadd <2 x double> %i.ana, %i.anl
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %._crit_edge.i.i.i, %bb.db
  %.272.i.i.i = phi <2 x double> [ %i.amv, %bb.db ], [ %i.anm, %bb.dd ], [ %i.ana, %._crit_edge.i.i.i ] ; 2 uses
  %shift2161 = shufflevector <2 x double> %.272.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2162 = fadd <2 x double> %.272.i.i.i, %shift2161
  %i.ann = extractelement <2 x double> %foldExtExtBinop2162, i64 0 ; 3 uses
  %i.ano = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.ano, label %.lr.ph84.i.i.i.preheader, label %.preheader.i.i.i

.lr.ph84.i.i.i.preheader:                         ; preds = %bb.de
  %xtraiter2287 = and i64 %.0.i.i.i.i.i.i.i, 7    ; 3 uses
  %i.anp = icmp ult i64 %.0.i.i.i.i.i.i.i, 8
  br i1 %i.anp, label %.lr.ph84.i.i.i.epil.preheader, label %.lr.ph84.i.i.i.preheader.new

.lr.ph84.i.i.i.preheader.new:                     ; preds = %.lr.ph84.i.i.i.preheader
  %unroll_iter2292 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775800
  br label %.lr.ph84.i.i.i

.preheader.i.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph84.i.i.i
  %lcmp.mod2289.not = icmp eq i64 %xtraiter2287, 0
  br i1 %lcmp.mod2289.not, label %.preheader.i.i.i, label %.lr.ph84.i.i.i.epil.preheader

.lr.ph84.i.i.i.epil.preheader:                    ; preds = %.preheader.i.i.i.loopexit.unr-lcssa, %.lr.ph84.i.i.i.preheader
  %.05382.i.i.i.epil.init = phi i64 [ 0, %.lr.ph84.i.i.i.preheader ], [ %i.apa, %.preheader.i.i.i.loopexit.unr-lcssa ]
  %.06981.i.i.i.epil.init = phi double [ %i.ann, %.lr.ph84.i.i.i.preheader ], [ %i.aoz, %.preheader.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod2291 = icmp ne i64 %xtraiter2287, 0
  call void @llvm.assume(i1 %lcmp.mod2291)
  br label %.lr.ph84.i.i.i.epil

.lr.ph84.i.i.i.epil:                              ; preds = %.lr.ph84.i.i.i.epil, %.lr.ph84.i.i.i.epil.preheader
  %.05382.i.i.i.epil = phi i64 [ %i.ant, %.lr.ph84.i.i.i.epil ], [ %.05382.i.i.i.epil.init, %.lr.ph84.i.i.i.epil.preheader ] ; 2 uses
  %.06981.i.i.i.epil = phi double [ %i.ans, %.lr.ph84.i.i.i.epil ], [ %.06981.i.i.i.epil.init, %.lr.ph84.i.i.i.epil.preheader ]
  %epil.iter2288 = phi i64 [ %epil.iter2288.next, %.lr.ph84.i.i.i.epil ], [ 0, %.lr.ph84.i.i.i.epil.preheader ]
  %i.anq = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %.05382.i.i.i.epil
  %i.anr = load double, ptr %i.anq, align 8, !tbaa !22
  %i.ans = fadd double %.06981.i.i.i.epil, %i.anr ; 2 uses
  %i.ant = add nuw nsw i64 %.05382.i.i.i.epil, 1
  %epil.iter2288.next = add i64 %epil.iter2288, 1 ; 2 uses
  %epil.iter2288.cmp.not = icmp eq i64 %epil.iter2288.next, %xtraiter2287
  br i1 %epil.iter2288.cmp.not, label %.preheader.i.i.i, label %.lr.ph84.i.i.i.epil, !llvm.loop !168

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.loopexit.unr-lcssa, %.lr.ph84.i.i.i.epil, %bb.de
  %.069.lcssa.i.i.i = phi double [ %i.ann, %bb.de ], [ %i.aoz, %.preheader.i.i.i.loopexit.unr-lcssa ], [ %i.ans, %.lr.ph84.i.i.i.epil ] ; 2 uses
  %i.anu = icmp slt i64 %i.amt, %i.ss
  br i1 %i.anu, label %.lr.ph88.i.i.i, label %.loopexit

.lr.ph84.i.i.i:                                   ; preds = %.lr.ph84.i.i.i, %.lr.ph84.i.i.i.preheader.new
  %.05382.i.i.i = phi i64 [ 0, %.lr.ph84.i.i.i.preheader.new ], [ %i.apa, %.lr.ph84.i.i.i ] ; 9 uses
  %.06981.i.i.i = phi double [ %i.ann, %.lr.ph84.i.i.i.preheader.new ], [ %i.aoz, %.lr.ph84.i.i.i ]
  %niter2293 = phi i64 [ 0, %.lr.ph84.i.i.i.preheader.new ], [ %niter2293.next.7, %.lr.ph84.i.i.i ]
  %i.anv = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %.05382.i.i.i
  %i.anw = load double, ptr %i.anv, align 8, !tbaa !22
  %i.anx = fadd double %.06981.i.i.i, %i.anw
  %i.any = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %.05382.i.i.i
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 8
  %i.aoa = load double, ptr %i.anz, align 8, !tbaa !22
  %i.aob = fadd double %i.anx, %i.aoa
  %i.aoc = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %.05382.i.i.i
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 16
  %i.aoe = load double, ptr %i.aod, align 8, !tbaa !22
  %i.aof = fadd double %i.aob, %i.aoe
  %i.aog = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %.05382.i.i.i
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aog, i64 24
  %i.aoi = load double, ptr %i.aoh, align 8, !tbaa !22
  %i.aoj = fadd double %i.aof, %i.aoi
  %i.aok = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %.05382.i.i.i
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 32
  %i.aom = load double, ptr %i.aol, align 8, !tbaa !22
  %i.aon = fadd double %i.aoj, %i.aom
  %i.aoo = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %.05382.i.i.i
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 40
  %i.aoq = load double, ptr %i.aop, align 8, !tbaa !22
  %i.aor = fadd double %i.aon, %i.aoq
  %i.aos = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %.05382.i.i.i
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 48
  %i.aou = load double, ptr %i.aot, align 8, !tbaa !22
  %i.aov = fadd double %i.aor, %i.aou
  %i.aow = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %.05382.i.i.i
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 56
  %i.aoy = load double, ptr %i.aox, align 8, !tbaa !22
  %i.aoz = fadd double %i.aov, %i.aoy             ; 3 uses
  %i.apa = add nuw nsw i64 %.05382.i.i.i, 8       ; 2 uses
  %niter2293.next.7 = add nuw nsw i64 %niter2293, 8 ; 2 uses
  %niter2293.ncmp.7 = icmp eq i64 %niter2293.next.7, %unroll_iter2292
  br i1 %niter2293.ncmp.7, label %.preheader.i.i.i.loopexit.unr-lcssa, label %.lr.ph84.i.i.i, !llvm.loop !169

.lr.ph88.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph88.i.i.i
  %.05287.i.i.i = phi i64 [ %i.ape, %.lr.ph88.i.i.i ], [ %i.amt, %.preheader.i.i.i ] ; 2 uses
  %.186.i.i.i = phi double [ %i.apd, %.lr.ph88.i.i.i ], [ %.069.lcssa.i.i.i, %.preheader.i.i.i ]
  %i.apb = getelementptr inbounds [8 x i8], ptr %i.amj, i64 %.05287.i.i.i
  %i.apc = load double, ptr %i.apb, align 8, !tbaa !22
  %i.apd = fadd double %.186.i.i.i, %i.apc        ; 2 uses
  %i.ape = add nsw i64 %.05287.i.i.i, 1           ; 2 uses
  %i.apf = icmp slt i64 %i.ape, %i.ss
  br i1 %i.apf, label %.lr.ph88.i.i.i, label %.loopexit, !llvm.loop !170

bb.df:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i
  %i.apg = load double, ptr %i.amj, align 8, !tbaa !22 ; 3 uses
  br i1 %i.alh, label %.lr.ph93.i.i.i.preheader, label %.loopexit

.lr.ph93.i.i.i.preheader:                         ; preds = %bb.df
  br i1 %i.alk, label %.lr.ph93.i.i.i.epil.preheader, label %.lr.ph93.i.i.i

.lr.ph93.i.i.i:                                   ; preds = %.lr.ph93.i.i.i.preheader, %.lr.ph93.i.i.i
  %.091.i.i.i = phi i64 [ %i.aqm, %.lr.ph93.i.i.i ], [ 1, %.lr.ph93.i.i.i.preheader ] ; 9 uses
  %.290.i.i.i = phi double [ %i.aql, %.lr.ph93.i.i.i ], [ %i.apg, %.lr.ph93.i.i.i.preheader ]
  %niter2300 = phi i64 [ %niter2300.next.7, %.lr.ph93.i.i.i ], [ 0, %.lr.ph93.i.i.i.preheader ]
  %i.aph = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %.091.i.i.i
  %i.api = load double, ptr %i.aph, align 8, !tbaa !22
  %i.apj = fadd double %.290.i.i.i, %i.api
  %i.apk = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %.091.i.i.i
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 8
  %i.apm = load double, ptr %i.apl, align 8, !tbaa !22
  %i.apn = fadd double %i.apj, %i.apm
  %i.apo = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %.091.i.i.i
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 16
  %i.apq = load double, ptr %i.app, align 8, !tbaa !22
  %i.apr = fadd double %i.apn, %i.apq
  %i.aps = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %.091.i.i.i
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aps, i64 24
  %i.apu = load double, ptr %i.apt, align 8, !tbaa !22
  %i.apv = fadd double %i.apr, %i.apu
  %i.apw = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %.091.i.i.i
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 32
  %i.apy = load double, ptr %i.apx, align 8, !tbaa !22
  %i.apz = fadd double %i.apv, %i.apy
  %i.aqa = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %.091.i.i.i
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 40
  %i.aqc = load double, ptr %i.aqb, align 8, !tbaa !22
  %i.aqd = fadd double %i.apz, %i.aqc
  %i.aqe = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %.091.i.i.i
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 48
  %i.aqg = load double, ptr %i.aqf, align 8, !tbaa !22
  %i.aqh = fadd double %i.aqd, %i.aqg
  %i.aqi = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %.091.i.i.i
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 56
  %i.aqk = load double, ptr %i.aqj, align 8, !tbaa !22
  %i.aql = fadd double %i.aqh, %i.aqk             ; 3 uses
  %i.aqm = add nuw nsw i64 %.091.i.i.i, 8         ; 2 uses
  %niter2300.next.7 = add i64 %niter2300, 8       ; 2 uses
  %niter2300.ncmp.7 = icmp eq i64 %niter2300.next.7, %unroll_iter2299
  br i1 %niter2300.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph93.i.i.i, !llvm.loop !171

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph93.i.i.i
  br i1 %lcmp.mod2296.not, label %.loopexit, label %.lr.ph93.i.i.i.epil.preheader

.lr.ph93.i.i.i.epil.preheader:                    ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph93.i.i.i.preheader
  %.091.i.i.i.epil.init = phi i64 [ 1, %.lr.ph93.i.i.i.preheader ], [ %i.aqm, %.loopexit.loopexit.unr-lcssa ]
  %.290.i.i.i.epil.init = phi double [ %i.apg, %.lr.ph93.i.i.i.preheader ], [ %i.aql, %.loopexit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2298)
  br label %.lr.ph93.i.i.i.epil

.lr.ph93.i.i.i.epil:                              ; preds = %.lr.ph93.i.i.i.epil, %.lr.ph93.i.i.i.epil.preheader
  %.091.i.i.i.epil = phi i64 [ %i.aqq, %.lr.ph93.i.i.i.epil ], [ %.091.i.i.i.epil.init, %.lr.ph93.i.i.i.epil.preheader ] ; 2 uses
  %.290.i.i.i.epil = phi double [ %i.aqp, %.lr.ph93.i.i.i.epil ], [ %.290.i.i.i.epil.init, %.lr.ph93.i.i.i.epil.preheader ]
  %epil.iter2295 = phi i64 [ %epil.iter2295.next, %.lr.ph93.i.i.i.epil ], [ 0, %.lr.ph93.i.i.i.epil.preheader ]
  %i.aqn = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %.091.i.i.i.epil
  %i.aqo = load double, ptr %i.aqn, align 8, !tbaa !22
  %i.aqp = fadd double %.290.i.i.i.epil, %i.aqo   ; 2 uses
  %i.aqq = add nuw nsw i64 %.091.i.i.i.epil, 1
  %epil.iter2295.next = add i64 %epil.iter2295, 1 ; 2 uses
  %epil.iter2295.cmp.not = icmp eq i64 %epil.iter2295.next, %xtraiter2294
  br i1 %epil.iter2295.cmp.not, label %.loopexit, label %.lr.ph93.i.i.i.epil, !llvm.loop !172

.loopexit:                                        ; preds = %.lr.ph88.i.i.i, %.loopexit.loopexit.unr-lcssa, %.lr.ph93.i.i.i.epil, %bb.cy, %.preheader.i.i.i, %bb.df
  %.0.i = phi double [ %i.aqp, %.lr.ph93.i.i.i.epil ], [ 0.000000e+00, %bb.cy ], [ %i.apg, %bb.df ], [ %.069.lcssa.i.i.i, %.preheader.i.i.i ], [ %i.aql, %.loopexit.loopexit.unr-lcssa ], [ %i.apd, %.lr.ph88.i.i.i ] ; 5 uses
  br i1 %.not.i.i.i.i.i.i.i353, label %bb.dg, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.dg:                                            ; preds = %.loopexit
  %i.aqr = lshr exact i64 %.pre1629.a, 3
  %i.aqs = and i64 %i.aqr, 1
  %i.aqt = call i64 @llvm.smin.i64(i64 %i.aqs, i64 %i.ss)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.dg, %.loopexit
  %.0.i.i.i.i.i.i.i354 = phi i64 [ %i.aqt, %bb.dg ], [ %i.ss, %.loopexit ] ; 9 uses
  %i.aqu = sub nsw i64 %i.ss, %.0.i.i.i.i.i.i.i354 ; 2 uses
  %i.aqv = sdiv i64 %i.aqu, 2
  %i.aqw = shl nsw i64 %i.aqv, 1                  ; 2 uses
  %i.aqx = add nsw i64 %i.aqw, %.0.i.i.i.i.i.i.i354 ; 5 uses
  %i.aqy = icmp sgt i64 %.0.i.i.i.i.i.i.i354, 0
  br i1 %i.aqy, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check2103 = icmp eq i64 %.0.i.i.i.i.i.i.i354, 1
  br i1 %min.iters.check2103, label %.lr.ph.i.i.i.i.i.i.i.preheader2165, label %vector.ph2104

vector.ph2104:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec2105 = and i64 %.0.i.i.i.i.i.i.i354, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert2106 = insertelement <2 x double> poison, double %.0.i, i64 0
  %broadcast.splat2107 = shufflevector <2 x double> %broadcast.splatinsert2106, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body2108

vector.body2108:                                  ; preds = %vector.body2108, %vector.ph2104
  %index2109 = phi i64 [ 0, %vector.ph2104 ], [ %index.next2111, %vector.body2108 ] ; 2 uses
  %i.aqz = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %index2109 ; 2 uses
  %wide.load2110 = load <2 x double>, ptr %i.aqz, align 8, !tbaa !22
  %i.ara = fdiv <2 x double> %wide.load2110, %broadcast.splat2107
  store <2 x double> %i.ara, ptr %i.aqz, align 8, !tbaa !22
  %index.next2111 = add nuw i64 %index2109, 2     ; 2 uses
  %i.arb = icmp eq i64 %index.next2111, %n.vec2105
  br i1 %i.arb, label %middle.block2112, label %vector.body2108, !llvm.loop !173

middle.block2112:                                 ; preds = %vector.body2108
  %cmp.n2113 = icmp eq i64 %.0.i.i.i.i.i.i.i354, %n.vec2105
  br i1 %cmp.n2113, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader2165

.lr.ph.i.i.i.i.i.i.i.preheader2165:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block2112
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec2105, %middle.block2112 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader2165, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.arf, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader2165 ] ; 2 uses
  %i.arc = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.ard = load double, ptr %i.arc, align 8, !tbaa !22
  %i.are = fdiv double %i.ard, %.0.i
  store double %i.are, ptr %i.arc, align 8, !tbaa !22
  %i.arf = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.arf, %.0.i.i.i.i.i.i.i354
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !174

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block2112, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.arg = icmp sgt i64 %i.aqu, 1
  br i1 %i.arg, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.arh = insertelement <2 x double> poison, double %.0.i, i64 0
  %i.ari = shufflevector <2 x double> %i.arh, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i355

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i355, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.arj = icmp slt i64 %i.aqx, %i.ss
  br i1 %i.arj, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEdVERKd.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ark = add i64 %.0.i.i.i.i.i.i.i354, %i.aqw
  %i.arl = sub i64 %i.ss, %i.ark                  ; 3 uses
  %min.iters.check2092 = icmp ult i64 %i.arl, 2
  br i1 %min.iters.check2092, label %.lr.ph.i17.i.i.i.i.i.i.preheader2164, label %vector.ph2093

vector.ph2093:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %n.vec2094 = and i64 %i.arl, -2                 ; 3 uses
  %i.arm = add i64 %i.aqx, %n.vec2094
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.0.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.arn = getelementptr [8 x i8], ptr %i.amj, i64 %i.aqx
  br label %vector.body2095

vector.body2095:                                  ; preds = %vector.body2095, %vector.ph2093
  %index2096 = phi i64 [ 0, %vector.ph2093 ], [ %index.next2098, %vector.body2095 ] ; 2 uses
  %i.aro = getelementptr [8 x i8], ptr %i.arn, i64 %index2096 ; 2 uses
  %wide.load2097 = load <2 x double>, ptr %i.aro, align 8, !tbaa !22
  %i.arp = fdiv <2 x double> %wide.load2097, %broadcast.splat
  store <2 x double> %i.arp, ptr %i.aro, align 8, !tbaa !22
  %index.next2098 = add nuw i64 %index2096, 2     ; 2 uses
  %i.arq = icmp eq i64 %index.next2098, %n.vec2094
  br i1 %i.arq, label %middle.block2099, label %vector.body2095, !llvm.loop !175

middle.block2099:                                 ; preds = %vector.body2095
  %cmp.n2100 = icmp eq i64 %i.arl, %n.vec2094
  br i1 %cmp.n2100, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader2164

.lr.ph.i17.i.i.i.i.i.i.preheader2164:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block2099
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.aqx, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.arm, %middle.block2099 ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader2164, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.aru, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader2164 ] ; 2 uses
  %i.arr = getelementptr inbounds [8 x i8], ptr %i.amj, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.ars = load double, ptr %i.arr, align 8, !tbaa !22
  %i.art = fdiv double %i.ars, %.0.i
  store double %i.art, ptr %i.arr, align 8, !tbaa !22
  %i.aru = add nsw i64 %.05.i18.i.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.aru, %i.ss
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !176

.lr.ph.i.i.i.i.i.i355:                            ; preds = %.lr.ph.i.i.i.i.i.i355, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.ary, %.lr.ph.i.i.i.i.i.i355 ], [ %.0.i.i.i.i.i.i.i354, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.arv = getelementptr inbounds [8 x i8], ptr %i.amj, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.arw = load <2 x double>, ptr %i.arv, align 16, !tbaa !19
  %i.arx = fdiv <2 x double> %i.arw, %i.ari
  store <2 x double> %i.arx, ptr %i.arv, align 16, !tbaa !19
  %i.ary = add nsw i64 %.021.i.i.i.i.i.i, 2       ; 2 uses
  %i.arz = icmp slt i64 %i.ary, %i.aqx
  br i1 %i.arz, label %.lr.ph.i.i.i.i.i.i355, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !177

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEdVERKd.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block2099, %._crit_edge.i.i.i.i.i.i
  %indvars.iv.next1603 = add nuw nsw i64 %indvars.iv1602, 1 ; 2 uses
  %exitcond1606.not = icmp eq i64 %indvars.iv.next1603, %i.alf
  br i1 %exitcond1606.not, label %._crit_edge1437, label %bb.cy, !llvm.loop !178

._crit_edge1437:                                  ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEdVERKd.exit, %.preheader
  %i.asa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.asb = load i64, ptr %i.asa, align 8, !tbaa !9
  %.not.i.i.i.i.i.i.i.i356 = icmp eq i64 %i.asb, %i.su
  %i.asc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.asd = load i64, ptr %i.asc, align 8
  %.not8.i.i.i.i.i.i.i.i357 = icmp eq i64 %i.asd, %i.ss
  %or.cond.i.i.i.i.i.i.i.i358 = select i1 %.not.i.i.i.i.i.i.i.i356, i1 %.not8.i.i.i.i.i.i.i.i357, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i358, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %._crit_edge1437
  br i1 %or.cond.i.i.i.i277, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i360, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ase = sdiv i64 9223372036854775807, %i.ss
  %i.asf = icmp sgt i64 %i.su, %i.ase
  br i1 %i.asf, label %.noexc.i.i.i.i.i.i.i363, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i360

.noexc.i.i.i.i.i.i.i363:                          ; preds = %bb.di
  %i.asg = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.asg, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.asg, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.noexc364 unwind label %bb.dm

.noexc364:                                        ; preds = %.noexc.i.i.i.i.i.i.i363
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i360: ; preds = %bb.di, %bb.dh
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.sz, i64 noundef %i.su, i64 noundef %i.ss)
          to label %.noexc365 unwind label %bb.dm

.noexc365:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i360
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.asc, align 8, !tbaa !14
  %.pre.i.i.i.i.i.i.i361 = load i64, ptr %i.asa, align 8, !tbaa !9
  br label %bb.dj

bb.dj:                                            ; preds = %.noexc365, %._crit_edge1437
  %i.ash = phi i64 [ %.pre.i.i.i.i.i.i.i361, %.noexc365 ], [ %i.su, %._crit_edge1437 ] ; 11 uses
  %i.asi = phi i64 [ %.pr.i.i.i.i.i.i.i, %.noexc365 ], [ %i.ss, %._crit_edge1437 ] ; 4 uses
  %i.asj = load ptr, ptr %2, align 8, !tbaa !15   ; 3 uses
  %i.ask = icmp sgt i64 %i.asi, 0
  %i.asl = icmp sgt i64 %i.ash, 0
  %or.cond.i.i.i.i.i.i.i = select i1 %i.ask, i1 %i.asl, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_9TransposeIS1_EEEERS1_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.dj
  %i.asm = mul i64 %i.asi, %i.ash
  %i.asn = shl i64 %i.asm, 3
  %scevgep = getelementptr i8, ptr %i.asj, i64 %i.asn
  %i.aso = add nuw i64 %i.asi, %i.ash
  %i.asp = shl i64 %i.aso, 3
  %i.asq = getelementptr i8, ptr %.sroa.01038.0, i64 %i.asp
  %scevgep2118 = getelementptr i8, ptr %i.asq, i64 -8
  %min.iters.check2120 = icmp ugt i64 %i.ash, 7
  %ident.check2116.not = icmp eq i64 %i.ss, 1
  %or.cond2141 = and i1 %min.iters.check2120, %ident.check2116.not
  %bound0 = icmp ult ptr %i.asj, %scevgep2118
  %bound1 = icmp ult ptr %.sroa.01038.0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.ash, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %i.asr = or i1 %found.conflict, %stride.check
  %n.vec2122 = and i64 %i.ash, 8070450532247928828 ; 3 uses
  %cmp.n2129 = icmp eq i64 %i.ash, %n.vec2122
  %xtraiter2301 = and i64 %i.ash, 3               ; 2 uses
  %lcmp.mod2302.not = icmp eq i64 %xtraiter2301, 0
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i362
  %.0810.i.i.i.i.i.i.i.i = phi i64 [ %i.atf, %._crit_edge.i.i.i.i.i.i.i.i362 ], [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ass = mul nuw nsw i64 %.0810.i.i.i.i.i.i.i.i, %i.ash
  %invariant.gep.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.asj, i64 %i.ass ; 6 uses
  %i.ast = getelementptr [8 x i8], ptr %.sroa.01038.0, i64 %.0810.i.i.i.i.i.i.i.i ; 6 uses
  %or.cond2141.not = xor i1 %or.cond2141, true
  %brmerge = select i1 %or.cond2141.not, i1 true, i1 %i.asr
end_hunk_1
