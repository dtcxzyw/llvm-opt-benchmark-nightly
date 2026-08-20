inline.NumInlined: 776
inline.NumDeleted: 471
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN3igl11sharp_edgesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_NS2_IiLin1ELi2ELi0ELin1ELi2EEES5_NS2_IiLin1ELi1ELi0ELin1ELi1EEEiiEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EENS8_6ScalarERNS1_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EERNSH_IT4_EERSt6vectorISU_IT5_SaISV_EESaISX_EERSU_IT6_SaIS11_EE:bb.a
_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.b, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = load ptr, ptr %7, align 8, !tbaa !14     ; 3 uses
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.sroa.789.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 32
  %.sroa.890.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 40
  %.sroa.991.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 56
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 72
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 80
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 88
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 96
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre148155 = phi ptr [ %i.i, %.preheader.lr.ph ], [ %.pre148156, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.o = phi ptr [ %i.i, %.preheader.lr.ph ], [ %i.em, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %indvars.iv141 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next142, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %indvars.iv141 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28   ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !9    ; 3 uses
  %.not136 = icmp eq ptr %i.r, %i.s
  br i1 %.not136, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %.lr.ph131.preheader

.lr.ph131.preheader:                              ; preds = %.preheader
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp ugt i64 %i.v, 4
  br i1 %i.w, label %.lr.ph.preheader, label %.loopexit.thread

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre149 = load ptr, ptr %i.e, align 8, !tbaa !28
  %.pre150 = load ptr, ptr %8, align 8, !tbaa !9
  br label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.x = phi ptr [ %.pre150, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit ], [ %i.d, %_ZNSt6vectorIiSaIiEE5clearEv.exit ]
  %i.y = phi ptr [ %.pre149, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit ], [ %i.d, %_ZNSt6vectorIiSaIiEE5clearEv.exit ]
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = ashr exact i64 %i.ab, 1
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.ad, i64 noundef %i.ac, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader unwind label %bb.l

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !26 ; 8 uses
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph135, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge

.lr.ph135:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.ah = load ptr, ptr %8, align 8, !tbaa !9     ; 3 uses
  %i.ai = load ptr, ptr %5, align 8, !tbaa !24    ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load ptr, ptr %3, align 8, !tbaa !29    ; 3 uses
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !30
  %invariant.gep = getelementptr [4 x i8], ptr %i.ai, i64 %i.al ; 3 uses
  %xtraiter = and i64 %i.af, 1
  %i.am = icmp eq i64 %i.af, 1
  br i1 %i.am, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.epil.preheader, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135
  %unroll_iter = and i64 %i.af, 9223372036854775806
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.c:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit:                                        ; preds = %bb.d
  %i.ao = icmp ugt i64 %i.dn, %indvars.iv.next140201
  br i1 %i.ao, label %.lr.ph131, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %.loopexit
  br i1 %.2, label %bb.f, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.lr.ph131:                                        ; preds = %.loopexit
  %indvars.iv.next = add nuw i64 %indvars.iv199, 1
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv.next140201, 1 ; 2 uses
  %i.ap = ptrtoint ptr %i.di to i64
  %i.aq = ptrtoint ptr %i.dj to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2
  %i.at = icmp ugt i64 %i.as, %indvars.iv.next140
  br i1 %i.at, label %.lr.ph.preheader, label %.loopexit.thread, !llvm.loop !31

.lr.ph.preheader:                                 ; preds = %.lr.ph131.preheader, %.lr.ph131
  %indvars.iv.next140201 = phi i64 [ %indvars.iv.next140, %.lr.ph131 ], [ 1, %.lr.ph131.preheader ] ; 3 uses
  %.055129200 = phi i1 [ %.2, %.lr.ph131 ], [ false, %.lr.ph131.preheader ]
  %indvars.iv199 = phi i64 [ %indvars.iv.next, %.lr.ph131 ], [ 1, %.lr.ph131.preheader ] ; 2 uses
  %indvars.iv139198 = phi i64 [ %indvars.iv.next140201, %.lr.ph131 ], [ 0, %.lr.ph131.preheader ]
  %i.au = phi ptr [ %i.dj, %.lr.ph131 ], [ %i.s, %.lr.ph131.preheader ]
  br label %.lr.ph

.loopexit.thread:                                 ; preds = %.lr.ph131, %.lr.ph131.preheader
  %.pre148154.lcssa = phi ptr [ %.pre148155, %.lr.ph131.preheader ], [ %i.df, %.lr.ph131 ] ; 2 uses
  %.lcssa193 = phi ptr [ %i.o, %.lr.ph131.preheader ], [ %i.df, %.lr.ph131 ] ; 2 uses
  %.055129.lcssa = phi i1 [ false, %.lr.ph131.preheader ], [ %.2, %.lr.ph131 ]
  br i1 %.055129.lcssa, label %bb.f, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %bb.d ], [ %indvars.iv199, %.lr.ph.preheader ] ; 2 uses
  %i.av = phi ptr [ %i.dj, %bb.d ], [ %i.au, %.lr.ph.preheader ] ; 2 uses
  %.1127 = phi i1 [ %.2, %bb.d ], [ %.055129200, %.lr.ph.preheader ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv139198
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !32 ; 2 uses
  %i.ay = srem i32 %i.ax, %i.c
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv137
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !32
  %i.bb = srem i32 %i.ba, %i.c
  %i.bc = sext i32 %i.ay to i64
  %i.bd = load ptr, ptr %9, align 8, !tbaa !33, !noalias !36 ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bc ; 3 uses
  %i.bf = load i64, ptr %i.j, align 8, !tbaa !39  ; 3 uses
  %i.bg = load double, ptr %i.be, align 8, !tbaa !40 ; 3 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !40 ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.bf, 4 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !40 ; 3 uses
  %i.bl = sext i32 %i.bb to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bl ; 3 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !40 ; 3 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bf
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !40 ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.br = load double, ptr %i.bq, align 8, !tbaa !40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.bs = sext i32 %i.ax to i64
  %i.bt = load ptr, ptr %4, align 8, !tbaa !24
  %i.bu = load i64, ptr %i.k, align 8, !tbaa !30
  %i.bv = getelementptr [4 x i8], ptr %i.bt, i64 %i.bs ; 2 uses
  %i.bw = getelementptr [4 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !32
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = load ptr, ptr %0, align 8, !tbaa !42, !noalias !44 ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load i64, ptr %i.l, align 8, !tbaa !47, !noalias !44 ; 2 uses
  %i.cc = load i32, ptr %i.bv, align 4, !tbaa !32
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cd
  store ptr %i.ca, ptr %11, align 8
  store i64 %i.cb, ptr %.sroa.587.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.688.0..sroa_idx, align 8
  store i64 %i.by, ptr %.sroa.789.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.890.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.991.0..sroa_idx, align 8
  store ptr %i.ce, ptr %i.m, align 8
  store i64 %i.cb, ptr %.sroa.583.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.684.0..sroa_idx, align 8
  store i64 %i.cd, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.9.0..sroa_idx, align 8
  invoke void @_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE10normalizedEv(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.57") align 8 %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %.sroa.0100.0.vec.insert = insertelement <2 x double> poison, double %i.bn, i64 0
  %.sroa.0100.8.vec.insert = insertelement <2 x double> %.sroa.0100.0.vec.insert, double %i.bp, i64 1
  %.sroa.0112.0.vec.insert = insertelement <2 x double> poison, double %i.bg, i64 0
  %.sroa.0112.8.vec.insert = insertelement <2 x double> %.sroa.0112.0.vec.insert, double %i.bi, i64 1
  %i.cf = load ptr, ptr %10, align 8, !tbaa !48   ; 3 uses
  %i.cg = load <2 x double>, ptr %i.cf, align 16, !tbaa !50
  %i.ch = getelementptr i8, ptr %i.cf, i64 16
  %i.ci = load double, ptr %i.ch, align 16, !tbaa !40
  call void @free(ptr noundef %i.cf) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.cj = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.br, i64 1
  %i.cl = fneg <2 x double> %i.ck
  %i.cm = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.bg, i64 1
  %i.co = fmul <2 x double> %i.cn, %i.cl
  %i.cp = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.bk, i64 1
  %i.cr = insertelement <2 x double> poison, double %i.br, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.bn, i64 1
  %i.ct = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.cs, <2 x double> %i.co)
  %i.cu = fneg double %i.bn
  %i.cv = fmul double %i.bi, %i.cu
  %i.cw = call double @llvm.fmuladd.f64(double %i.bg, double %i.bp, double %i.cv)
  %i.cx = fmul <2 x double> %i.ct, %i.cg          ; 2 uses
  %shift = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.cx, %shift
  %12 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %13 = fmul double %i.cw, %i.ci
  %14 = fadd double %13, %12
  %15 = fmul <2 x double> %.sroa.0112.8.vec.insert, %.sroa.0100.8.vec.insert ; 2 uses
  %shift205 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop206 = fadd <2 x double> %15, %shift205
  %i.cy = extractelement <2 x double> %foldExtExtBinop206, i64 0
  %16 = fmul double %i.bk, %i.br
  %i.cz = fadd double %16, %i.cy
  %i.da = call double @atan2(double noundef %14, double noundef %i.cz) #18
  %i.db = fsub double f0x400921FB54442D18, %i.da
  %i.dc = fadd double %i.db, f0xC00921FB54442D18
  %i.dd = call noundef double @llvm.fabs.f64(double %i.dc)
  %i.de = fcmp ogt double %i.dd, %2
  %.2 = select i1 %i.de, i1 true, i1 %.1127       ; 4 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.df = load ptr, ptr %7, align 8, !tbaa !14    ; 7 uses
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %indvars.iv141 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !28 ; 2 uses
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !9  ; 4 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 2                 ; 2 uses
  %i.do = icmp ugt i64 %i.dn, %indvars.iv.next138
  br i1 %i.do, label %.lr.ph, label %.loopexit, !llvm.loop !51

bb.e:                                             ; preds = %.lr.ph
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.m

bb.f:                                             ; preds = %.loopexit.thread, %._crit_edge
  %.pre148153175177 = phi ptr [ %.pre148154.lcssa, %.loopexit.thread ], [ %i.df, %._crit_edge ] ; 2 uses
  %i.dq = phi ptr [ %.lcssa193, %.loopexit.thread ], [ %i.df, %._crit_edge ]
  %i.dr = load ptr, ptr %i.e, align 8, !tbaa !28  ; 4 uses
  %i.ds = load ptr, ptr %i.n, align 8, !tbaa !13
  %.not.i = icmp eq ptr %i.dr, %i.ds
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dt = trunc nuw nsw i64 %indvars.iv141 to i32
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !32
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store ptr %i.du, ptr %i.e, align 8, !tbaa !28
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.h:                                             ; preds = %bb.f
  %i.dv = load ptr, ptr %8, align 8, !tbaa !9     ; 4 uses
  %i.dw = ptrtoint ptr %i.dr to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx                    ; 6 uses
  %i.dz = icmp eq i64 %i.dy, 9223372036854775804
  br i1 %i.dz, label %bb.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ea = ashr exact i64 %i.dy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ea, i64 1)
  %i.eb = add nsw i64 %.sroa.speculated.i.i.i, %i.ea ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea
  %i.ed = call i64 @llvm.umin.i64(i64 %i.eb, i64 2305843009213693951)
  %i.ee = select i1 %i.ec, i64 2305843009213693951, i64 %i.ed ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ee, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ef = shl nuw nsw i64 %i.ee, 2
  %i.eg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #21
          to label %.noexc80 unwind label %.loopexit124 ; 4 uses

.noexc80:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %i.dy ; 2 uses
  %i.ei = trunc nuw nsw i64 %indvars.iv141 to i32
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !32
  %i.ej = icmp sgt i64 %i.dy, 0
  br i1 %i.ej, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %.noexc80
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eg, ptr align 4 %i.dv, i64 %i.dy, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %.noexc80
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %.not.i17.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.dy) #19
  %.pre148.pre = load ptr, ptr %7, align 8, !tbaa !14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %.pre148 = phi ptr [ %.pre148.pre, %bb.k ], [ %.pre148153175177, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i ] ; 2 uses
  store ptr %i.eg, ptr %8, align 8, !tbaa !9
  store ptr %i.ek, ptr %i.e, align 8, !tbaa !28
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.ee
  store ptr %i.el, ptr %i.n, align 8, !tbaa !13
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit124:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %.loopexit.thread, %.preheader, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.g, %._crit_edge
  %.pre148156 = phi ptr [ %.pre148155, %.preheader ], [ %.pre148, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.pre148153175177, %bb.g ], [ %i.df, %._crit_edge ], [ %.pre148154.lcssa, %.loopexit.thread ]
  %i.em = phi ptr [ %i.o, %.preheader ], [ %.pre148, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.dq, %bb.g ], [ %i.df, %._crit_edge ], [ %.lcssa193, %.loopexit.thread ] ; 2 uses
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %i.en = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = sdiv exact i64 %i.eq, 24
  %i.es = icmp ugt i64 %i.er, %indvars.iv.next142
  br i1 %i.es, label %.preheader, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit, !llvm.loop !52

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.loopexit.unr-lcssa: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.epil.preheader

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.epil.preheader: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.loopexit.unr-lcssa, %.lr.ph135
  %indvars.iv144.epil.init = phi i64 [ 0, %.lr.ph135 ], [ %indvars.iv.next145.1, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod213 = trunc i64 %i.af to i1
  call void @llvm.assume(i1 %lcmp.mod213)
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv144.epil.init ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !32
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr [4 x i8], ptr %i.ai, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !32
  %i.ey = getelementptr [4 x i8], ptr %i.ak, i64 %indvars.iv144.epil.init ; 2 uses
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !32
  %i.ez = load i32, ptr %i.et, align 4, !tbaa !32
  %i.fa = sext i32 %i.ez to i64
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.fa
  %i.fb = load i32, ptr %gep.epil, align 4, !tbaa !32
  %i.fc = getelementptr [4 x i8], ptr %i.ey, i64 %i.af
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !32
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.epil.preheader, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.loopexit.unr-lcssa, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.fd = load ptr, ptr %9, align 8, !tbaa !33
  call void @free(ptr noundef %i.fd) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  ret void

bb.l:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %.lr.ph135.new
  %indvars.iv144 = phi i64 [ 0, %.lr.ph135.new ], [ %indvars.iv.next145.1, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph135.new ], [ %niter.next.1, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv144 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !32
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr [4 x i8], ptr %i.ai, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !32
  %i.fk = getelementptr [4 x i8], ptr %i.ak, i64 %indvars.iv144 ; 2 uses
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !32
  %i.fl = load i32, ptr %i.ff, align 4, !tbaa !32
  %i.fm = sext i32 %i.fl to i64
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.fm
  %i.fn = load i32, ptr %gep, align 4, !tbaa !32
  %i.fo = getelementptr [4 x i8], ptr %i.fk, i64 %i.af
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !32
  %indvars.iv.next145 = or disjoint i64 %indvars.iv144, 1 ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next145 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !32
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr [4 x i8], ptr %i.ai, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !32
  %i.fu = getelementptr [4 x i8], ptr %i.ak, i64 %indvars.iv.next145 ; 2 uses
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !32
  %i.fv = load i32, ptr %i.fp, align 4, !tbaa !32
  %i.fw = sext i32 %i.fv to i64
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.fw
  %i.fx = load i32, ptr %gep.1, align 4, !tbaa !32
  %i.fy = getelementptr [4 x i8], ptr %i.fu, i64 %i.af
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !32
  %indvars.iv.next145.1 = add nuw nsw i64 %indvars.iv144, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.loopexit.unr-lcssa, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, !llvm.loop !53

bb.m:                                             ; preds = %.loopexit124, %.loopexit.split-lp, %bb.e, %bb.l, %bb.c
  %.pn72.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.an, %bb.c ], [ %i.fe, %bb.l ], [ %i.dp, %bb.e ], [ %lpad.loopexit, %.loopexit124 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.fz = load ptr, ptr %9, align 8, !tbaa !33
  call void @free(ptr noundef %i.fz) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  resume { ptr, i32 } %.pn72.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
begin_hunk_1_@_ZN3igl11sharp_edgesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_S4_S4_NS2_IiLin1ELi1ELi0ELin1ELi1EEEiiEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EENS7_6ScalarERNS1_15PlainObjectBaseIT1_EERNSG_IT2_EERNSG_IT3_EERNSG_IT4_EERSt6vectorIST_IT5_SaISU_EESaISW_EERST_IT6_SaIS10_EE:bb.a
_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.b, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = load ptr, ptr %7, align 8, !tbaa !14     ; 3 uses
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.sroa.789.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 32
  %.sroa.890.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 40
  %.sroa.991.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 56
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 72
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 80
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 88
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 96
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre148155 = phi ptr [ %i.i, %.preheader.lr.ph ], [ %.pre148156, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.o = phi ptr [ %i.i, %.preheader.lr.ph ], [ %i.em, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %indvars.iv141 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next142, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %indvars.iv141 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28   ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !9    ; 3 uses
  %.not136 = icmp eq ptr %i.r, %i.s
  br i1 %.not136, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %.lr.ph131.preheader

.lr.ph131.preheader:                              ; preds = %.preheader
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp ugt i64 %i.v, 4
  br i1 %i.w, label %.lr.ph.preheader, label %.loopexit.thread

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre149 = load ptr, ptr %i.e, align 8, !tbaa !28
  %.pre150 = load ptr, ptr %8, align 8, !tbaa !9
  br label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.x = phi ptr [ %.pre150, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit ], [ %i.d, %_ZNSt6vectorIiSaIiEE5clearEv.exit ]
  %i.y = phi ptr [ %.pre149, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit ], [ %i.d, %_ZNSt6vectorIiSaIiEE5clearEv.exit ]
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = ashr exact i64 %i.ab, 1
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.ad, i64 noundef %i.ac, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader unwind label %bb.l

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !26 ; 8 uses
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph135, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge

.lr.ph135:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.ah = load ptr, ptr %8, align 8, !tbaa !9     ; 3 uses
  %i.ai = load ptr, ptr %5, align 8, !tbaa !29    ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load ptr, ptr %3, align 8, !tbaa !29    ; 3 uses
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !26
  %invariant.gep = getelementptr [4 x i8], ptr %i.ai, i64 %i.al ; 3 uses
  %xtraiter = and i64 %i.af, 1
  %i.am = icmp eq i64 %i.af, 1
  br i1 %i.am, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.epil.preheader, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135
  %unroll_iter = and i64 %i.af, 9223372036854775806
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.c:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit:                                        ; preds = %bb.d
  %i.ao = icmp ugt i64 %i.dn, %indvars.iv.next140201
  br i1 %i.ao, label %.lr.ph131, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %.loopexit
  br i1 %.2, label %bb.f, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.lr.ph131:                                        ; preds = %.loopexit
  %indvars.iv.next = add nuw i64 %indvars.iv199, 1
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv.next140201, 1 ; 2 uses
  %i.ap = ptrtoint ptr %i.di to i64
  %i.aq = ptrtoint ptr %i.dj to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2
  %i.at = icmp ugt i64 %i.as, %indvars.iv.next140
  br i1 %i.at, label %.lr.ph.preheader, label %.loopexit.thread, !llvm.loop !54

.lr.ph.preheader:                                 ; preds = %.lr.ph131.preheader, %.lr.ph131
  %indvars.iv.next140201 = phi i64 [ %indvars.iv.next140, %.lr.ph131 ], [ 1, %.lr.ph131.preheader ] ; 3 uses
  %.055129200 = phi i1 [ %.2, %.lr.ph131 ], [ false, %.lr.ph131.preheader ]
  %indvars.iv199 = phi i64 [ %indvars.iv.next, %.lr.ph131 ], [ 1, %.lr.ph131.preheader ] ; 2 uses
  %indvars.iv139198 = phi i64 [ %indvars.iv.next140201, %.lr.ph131 ], [ 0, %.lr.ph131.preheader ]
  %i.au = phi ptr [ %i.dj, %.lr.ph131 ], [ %i.s, %.lr.ph131.preheader ]
  br label %.lr.ph

.loopexit.thread:                                 ; preds = %.lr.ph131, %.lr.ph131.preheader
  %.pre148154.lcssa = phi ptr [ %.pre148155, %.lr.ph131.preheader ], [ %i.df, %.lr.ph131 ] ; 2 uses
  %.lcssa193 = phi ptr [ %i.o, %.lr.ph131.preheader ], [ %i.df, %.lr.ph131 ] ; 2 uses
  %.055129.lcssa = phi i1 [ false, %.lr.ph131.preheader ], [ %.2, %.lr.ph131 ]
  br i1 %.055129.lcssa, label %bb.f, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %bb.d ], [ %indvars.iv199, %.lr.ph.preheader ] ; 2 uses
  %i.av = phi ptr [ %i.dj, %bb.d ], [ %i.au, %.lr.ph.preheader ] ; 2 uses
  %.1127 = phi i1 [ %.2, %bb.d ], [ %.055129200, %.lr.ph.preheader ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv139198
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !32 ; 2 uses
  %i.ay = srem i32 %i.ax, %i.c
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv137
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !32
  %i.bb = srem i32 %i.ba, %i.c
  %i.bc = sext i32 %i.ay to i64
  %i.bd = load ptr, ptr %9, align 8, !tbaa !33, !noalias !55 ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bc ; 3 uses
  %i.bf = load i64, ptr %i.j, align 8, !tbaa !39  ; 3 uses
  %i.bg = load double, ptr %i.be, align 8, !tbaa !40 ; 3 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !40 ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.bf, 4 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !40 ; 3 uses
  %i.bl = sext i32 %i.bb to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bl ; 3 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !40 ; 3 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bf
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !40 ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.br = load double, ptr %i.bq, align 8, !tbaa !40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.bs = sext i32 %i.ax to i64
  %i.bt = load ptr, ptr %4, align 8, !tbaa !29
  %i.bu = load i64, ptr %i.k, align 8, !tbaa !26
  %i.bv = getelementptr [4 x i8], ptr %i.bt, i64 %i.bs ; 2 uses
  %i.bw = getelementptr [4 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !32
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = load ptr, ptr %0, align 8, !tbaa !42, !noalias !58 ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load i64, ptr %i.l, align 8, !tbaa !47, !noalias !58 ; 2 uses
  %i.cc = load i32, ptr %i.bv, align 4, !tbaa !32
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cd
  store ptr %i.ca, ptr %11, align 8
  store i64 %i.cb, ptr %.sroa.587.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.688.0..sroa_idx, align 8
  store i64 %i.by, ptr %.sroa.789.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.890.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.991.0..sroa_idx, align 8
  store ptr %i.ce, ptr %i.m, align 8
  store i64 %i.cb, ptr %.sroa.583.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.684.0..sroa_idx, align 8
  store i64 %i.cd, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.9.0..sroa_idx, align 8
  invoke void @_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE10normalizedEv(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.57") align 8 %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %.sroa.0100.0.vec.insert = insertelement <2 x double> poison, double %i.bn, i64 0
  %.sroa.0100.8.vec.insert = insertelement <2 x double> %.sroa.0100.0.vec.insert, double %i.bp, i64 1
  %.sroa.0112.0.vec.insert = insertelement <2 x double> poison, double %i.bg, i64 0
  %.sroa.0112.8.vec.insert = insertelement <2 x double> %.sroa.0112.0.vec.insert, double %i.bi, i64 1
  %i.cf = load ptr, ptr %10, align 8, !tbaa !48   ; 3 uses
  %i.cg = load <2 x double>, ptr %i.cf, align 16, !tbaa !50
  %i.ch = getelementptr i8, ptr %i.cf, i64 16
  %i.ci = load double, ptr %i.ch, align 16, !tbaa !40
  call void @free(ptr noundef %i.cf) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.cj = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.br, i64 1
  %i.cl = fneg <2 x double> %i.ck
  %i.cm = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.bg, i64 1
  %i.co = fmul <2 x double> %i.cn, %i.cl
  %i.cp = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.bk, i64 1
  %i.cr = insertelement <2 x double> poison, double %i.br, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.bn, i64 1
  %i.ct = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.cs, <2 x double> %i.co)
  %i.cu = fneg double %i.bn
  %i.cv = fmul double %i.bi, %i.cu
  %i.cw = call double @llvm.fmuladd.f64(double %i.bg, double %i.bp, double %i.cv)
  %i.cx = fmul <2 x double> %i.ct, %i.cg          ; 2 uses
  %shift = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.cx, %shift
  %12 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %13 = fmul double %i.cw, %i.ci
  %14 = fadd double %13, %12
  %15 = fmul <2 x double> %.sroa.0112.8.vec.insert, %.sroa.0100.8.vec.insert ; 2 uses
  %shift205 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop206 = fadd <2 x double> %15, %shift205
  %i.cy = extractelement <2 x double> %foldExtExtBinop206, i64 0
  %16 = fmul double %i.bk, %i.br
  %i.cz = fadd double %16, %i.cy
  %i.da = call double @atan2(double noundef %14, double noundef %i.cz) #18
  %i.db = fsub double f0x400921FB54442D18, %i.da
  %i.dc = fadd double %i.db, f0xC00921FB54442D18
  %i.dd = call noundef double @llvm.fabs.f64(double %i.dc)
  %i.de = fcmp ogt double %i.dd, %2
  %.2 = select i1 %i.de, i1 true, i1 %.1127       ; 4 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.df = load ptr, ptr %7, align 8, !tbaa !14    ; 7 uses
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %indvars.iv141 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !28 ; 2 uses
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !9  ; 4 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 2                 ; 2 uses
  %i.do = icmp ugt i64 %i.dn, %indvars.iv.next138
  br i1 %i.do, label %.lr.ph, label %.loopexit, !llvm.loop !61

bb.e:                                             ; preds = %.lr.ph
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.m

bb.f:                                             ; preds = %.loopexit.thread, %._crit_edge
  %.pre148153175177 = phi ptr [ %.pre148154.lcssa, %.loopexit.thread ], [ %i.df, %._crit_edge ] ; 2 uses
  %i.dq = phi ptr [ %.lcssa193, %.loopexit.thread ], [ %i.df, %._crit_edge ]
  %i.dr = load ptr, ptr %i.e, align 8, !tbaa !28  ; 4 uses
  %i.ds = load ptr, ptr %i.n, align 8, !tbaa !13
  %.not.i = icmp eq ptr %i.dr, %i.ds
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dt = trunc nuw nsw i64 %indvars.iv141 to i32
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !32
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store ptr %i.du, ptr %i.e, align 8, !tbaa !28
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.h:                                             ; preds = %bb.f
  %i.dv = load ptr, ptr %8, align 8, !tbaa !9     ; 4 uses
  %i.dw = ptrtoint ptr %i.dr to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx                    ; 6 uses
  %i.dz = icmp eq i64 %i.dy, 9223372036854775804
  br i1 %i.dz, label %bb.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ea = ashr exact i64 %i.dy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ea, i64 1)
  %i.eb = add nsw i64 %.sroa.speculated.i.i.i, %i.ea ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea
  %i.ed = call i64 @llvm.umin.i64(i64 %i.eb, i64 2305843009213693951)
  %i.ee = select i1 %i.ec, i64 2305843009213693951, i64 %i.ed ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ee, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ef = shl nuw nsw i64 %i.ee, 2
  %i.eg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #21
          to label %.noexc80 unwind label %.loopexit124 ; 4 uses

.noexc80:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %i.dy ; 2 uses
  %i.ei = trunc nuw nsw i64 %indvars.iv141 to i32
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !32
  %i.ej = icmp sgt i64 %i.dy, 0
  br i1 %i.ej, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %.noexc80
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eg, ptr align 4 %i.dv, i64 %i.dy, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %.noexc80
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %.not.i17.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.dy) #19
  %.pre148.pre = load ptr, ptr %7, align 8, !tbaa !14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %.pre148 = phi ptr [ %.pre148.pre, %bb.k ], [ %.pre148153175177, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i ] ; 2 uses
  store ptr %i.eg, ptr %8, align 8, !tbaa !9
  store ptr %i.ek, ptr %i.e, align 8, !tbaa !28
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.ee
  store ptr %i.el, ptr %i.n, align 8, !tbaa !13
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit124:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %.loopexit.thread, %.preheader, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.g, %._crit_edge
  %.pre148156 = phi ptr [ %.pre148155, %.preheader ], [ %.pre148, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.pre148153175177, %bb.g ], [ %i.df, %._crit_edge ], [ %.pre148154.lcssa, %.loopexit.thread ]
  %i.em = phi ptr [ %i.o, %.preheader ], [ %.pre148, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.dq, %bb.g ], [ %i.df, %._crit_edge ], [ %.lcssa193, %.loopexit.thread ] ; 2 uses
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %i.en = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = sdiv exact i64 %i.eq, 24
  %i.es = icmp ugt i64 %i.er, %indvars.iv.next142
  br i1 %i.es, label %.preheader, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit, !llvm.loop !62

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.loopexit.unr-lcssa: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.epil.preheader

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.epil.preheader: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.loopexit.unr-lcssa, %.lr.ph135
  %indvars.iv144.epil.init = phi i64 [ 0, %.lr.ph135 ], [ %indvars.iv.next145.1, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod213 = trunc i64 %i.af to i1
  call void @llvm.assume(i1 %lcmp.mod213)
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv144.epil.init ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !32
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr [4 x i8], ptr %i.ai, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !32
  %i.ey = getelementptr [4 x i8], ptr %i.ak, i64 %indvars.iv144.epil.init ; 2 uses
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !32
  %i.ez = load i32, ptr %i.et, align 4, !tbaa !32
  %i.fa = sext i32 %i.ez to i64
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.fa
  %i.fb = load i32, ptr %gep.epil, align 4, !tbaa !32
  %i.fc = getelementptr [4 x i8], ptr %i.ey, i64 %i.af
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !32
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.epil.preheader, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.loopexit.unr-lcssa, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.fd = load ptr, ptr %9, align 8, !tbaa !33
  call void @free(ptr noundef %i.fd) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  ret void

bb.l:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %.lr.ph135.new
  %indvars.iv144 = phi i64 [ 0, %.lr.ph135.new ], [ %indvars.iv.next145.1, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph135.new ], [ %niter.next.1, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv144 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !32
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr [4 x i8], ptr %i.ai, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !32
  %i.fk = getelementptr [4 x i8], ptr %i.ak, i64 %indvars.iv144 ; 2 uses
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !32
  %i.fl = load i32, ptr %i.ff, align 4, !tbaa !32
  %i.fm = sext i32 %i.fl to i64
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.fm
  %i.fn = load i32, ptr %gep, align 4, !tbaa !32
  %i.fo = getelementptr [4 x i8], ptr %i.fk, i64 %i.af
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !32
  %indvars.iv.next145 = or disjoint i64 %indvars.iv144, 1 ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next145 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !32
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr [4 x i8], ptr %i.ai, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !32
  %i.fu = getelementptr [4 x i8], ptr %i.ak, i64 %indvars.iv.next145 ; 2 uses
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !32
  %i.fv = load i32, ptr %i.fp, align 4, !tbaa !32
  %i.fw = sext i32 %i.fv to i64
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.fw
  %i.fx = load i32, ptr %gep.1, align 4, !tbaa !32
  %i.fy = getelementptr [4 x i8], ptr %i.fu, i64 %i.af
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !32
  %indvars.iv.next145.1 = add nuw nsw i64 %indvars.iv144, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.loopexit.unr-lcssa, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, !llvm.loop !63

bb.m:                                             ; preds = %.loopexit124, %.loopexit.split-lp, %bb.e, %bb.l, %bb.c
  %.pn72.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.an, %bb.c ], [ %i.fe, %bb.l ], [ %i.dp, %bb.e ], [ %lpad.loopexit, %.loopexit124 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.fz = load ptr, ptr %9, align 8, !tbaa !33
  call void @free(ptr noundef %i.fz) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  resume { ptr, i32 } %.pn72.pn.pn.pn.pn.pn
}

declare void @_ZN3igl15unique_edge_mapIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_S3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEiEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERSt6vectorISK_IT3_SaISL_EESaISN_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN3igl16per_face_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

end_hunk_1
