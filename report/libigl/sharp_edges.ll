Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/sharp_edges?download=true
inline.NumInlined: 776
inline.NumDeleted: 471
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN3igl11sharp_edgesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS6_6ScalarERNS1_15PlainObjectBaseIT1_EE:bb.a
  %.05.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %i.g, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.j = load ptr, ptr %.05.i.i.i, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #19
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.d, %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.p, %i.i
  br i1 %.not.i.i.i9, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.q = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.g, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #19
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.w = load ptr, ptr %6, align 8, !tbaa !45
  call void @free(ptr noundef %i.w) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.x = load ptr, ptr %5, align 8, !tbaa !23
  call void @free(ptr noundef %i.x) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.y = load ptr, ptr %4, align 8, !tbaa !23
  call void @free(ptr noundef %i.y) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

bb.f:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %8, align 8, !tbaa !13    ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIiSaIiEED2Ev.exit11, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !14
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit11

_ZNSt6vectorIiSaIiEED2Ev.exit11:                  ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ag = load ptr, ptr %6, align 8, !tbaa !45
  call void @free(ptr noundef %i.ag) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.ah = load ptr, ptr %5, align 8, !tbaa !23
  call void @free(ptr noundef %i.ah) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.ai = load ptr, ptr %4, align 8, !tbaa !23
  call void @free(ptr noundef %i.ai) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %i.z
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl11sharp_edgesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_NS2_IiLin1ELi2ELi0ELin1ELi2EEES5_NS2_IiLin1ELi1ELi0ELin1ELi1EEEiiEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EENS8_6ScalarERNS1_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EERNSH_IT4_EERSt6vectorISU_IT5_SaISV_EESaISX_EERSU_IT6_SaIS11_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, double noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.Eigen::Matrix.31", align 8  ; 9 uses
  %10 = alloca %"class.Eigen::Matrix.57", align 8 ; 5 uses
  %11 = alloca %"class.Eigen::CwiseBinaryOp", align 8 ; 16 uses
  tail call void @_ZN3igl15unique_edge_mapIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi2ELi0ELin1ELi2EEES4_NS2_IiLin1ELi1ELi0ELin1ELi1EEEiEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSB_IT1_EERNSB_IT2_EERSt6vectorISL_IT3_SaISM_EESaISO_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl16per_face_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = load ptr, ptr %8, align 8, !tbaa !13     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %.not.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.b
  store ptr %i.d, ptr %i.e, align 8, !tbaa !26
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.b, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = load ptr, ptr %7, align 8, !tbaa !17     ; 2 uses
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
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.o = phi ptr [ %i.i, %.preheader.lr.ph ], [ %i.ew, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %indvars.iv142 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next143, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %indvars.iv142 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26   ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !13   ; 3 uses
  %.not136 = icmp eq ptr %i.r, %i.s
  br i1 %.not136, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %.lr.ph131.preheader

.lr.ph131.preheader:                              ; preds = %.preheader
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp ugt i64 %i.v, 4
  br i1 %i.w, label %.lr.ph.preheader, label %.loopexit.thread

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre150 = load ptr, ptr %i.e, align 8, !tbaa !26
  %.pre151 = load ptr, ptr %8, align 8, !tbaa !13
  br label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.x = phi ptr [ %.pre151, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit ], [ %i.d, %_ZNSt6vectorIiSaIiEE5clearEv.exit ]
  %i.y = phi ptr [ %.pre150, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit ], [ %i.d, %_ZNSt6vectorIiSaIiEE5clearEv.exit ]
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = ashr exact i64 %i.ab, 1
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.ad, i64 noundef %i.ac, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !25 ; 8 uses
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph135, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge

.lr.ph135:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.ah = load ptr, ptr %8, align 8, !tbaa !13    ; 3 uses
  %i.ai = load ptr, ptr %5, align 8, !tbaa !23    ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load ptr, ptr %3, align 8, !tbaa !27    ; 3 uses
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !54
  %invariant.gep = getelementptr [4 x i8], ptr %i.ai, i64 %i.al ; 3 uses
  %xtraiter = and i64 %i.af, 1
  %i.am = icmp eq i64 %i.af, 1
  br i1 %i.am, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.epil.preheader, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135
  %unroll_iter = and i64 %i.af, 9223372036854775806
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

.loopexit:                                        ; preds = %bb.c
  %i.an = icmp ugt i64 %i.du, %indvars.iv.next141190
  br i1 %i.an, label %.lr.ph131, label %._crit_edge, !llvm.loop !46

._crit_edge:                                      ; preds = %.loopexit
  br i1 %spec.select, label %bb.e, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.lr.ph131:                                        ; preds = %.loopexit
  %indvars.iv.next = add nuw i64 %indvars.iv188, 1
  %indvars.iv.next141.a = add nuw nsw i64 %indvars.iv.next141190, 1 ; 2 uses
  %i.ao = ptrtoint ptr %i.dp to i64
  %i.ap = ptrtoint ptr %i.dq to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = icmp ugt i64 %i.ar, %indvars.iv.next141.a
  br i1 %i.as, label %.lr.ph.preheader, label %.loopexit.thread, !llvm.loop !46

.lr.ph.preheader:                                 ; preds = %.lr.ph131.preheader, %.lr.ph131
  %indvars.iv.next141190 = phi i64 [ %indvars.iv.next141.a, %.lr.ph131 ], [ 1, %.lr.ph131.preheader ] ; 3 uses
  %.055129189 = phi i1 [ %spec.select, %.lr.ph131 ], [ false, %.lr.ph131.preheader ]
  %indvars.iv188 = phi i64 [ %indvars.iv.next, %.lr.ph131 ], [ 1, %.lr.ph131.preheader ] ; 2 uses
  %indvars.iv140187 = phi i64 [ %indvars.iv.next141190, %.lr.ph131 ], [ 0, %.lr.ph131.preheader ]
  %i.at = phi ptr [ %i.dq, %.lr.ph131 ], [ %i.s, %.lr.ph131.preheader ]
  br label %.lr.ph

.loopexit.thread:                                 ; preds = %.lr.ph131, %.lr.ph131.preheader
  %.lcssa184 = phi ptr [ %i.o, %.lr.ph131.preheader ], [ %i.dm, %.lr.ph131 ] ; 2 uses
  %.055129.lcssa = phi i1 [ false, %.lr.ph131.preheader ], [ %spec.select, %.lr.ph131 ]
  br i1 %.055129.lcssa, label %bb.e, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %bb.c ], [ %indvars.iv188, %.lr.ph.preheader ] ; 2 uses
  %i.au = phi ptr [ %i.dq, %bb.c ], [ %i.at, %.lr.ph.preheader ] ; 2 uses
  %.1127 = phi i1 [ %spec.select, %bb.c ], [ %.055129189, %.lr.ph.preheader ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv140187
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !28 ; 2 uses
  %i.ax = srem i32 %i.aw, %i.c
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv138
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !28
  %i.ba = srem i32 %i.az, %i.c
  %i.bb = sext i32 %i.ax to i64
  %i.bc = load ptr, ptr %9, align 8, !tbaa !31, !noalias !55 ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bb ; 3 uses
  %i.be = load i64, ptr %i.j, align 8, !tbaa !32  ; 3 uses
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !34 ; 3 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !34 ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.be, 4 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !34 ; 3 uses
  %i.bk = sext i32 %i.ba to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bk ; 3 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !34 ; 3 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.be
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !34 ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.br = sext i32 %i.aw to i64
  %i.bs = load ptr, ptr %4, align 8, !tbaa !23
  %i.bt = load i64, ptr %i.k, align 8, !tbaa !54
  %i.bu = getelementptr [4 x i8], ptr %i.bs, i64 %i.br ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !28
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = load ptr, ptr %0, align 8, !tbaa !36, !noalias !56 ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.bx
  %i.ca = load i64, ptr %i.l, align 8, !tbaa !37, !noalias !56 ; 2 uses
  %i.cb = load i32, ptr %i.bu, align 4, !tbaa !28
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cc
  store ptr %i.bz, ptr %11, align 8
  store i64 %i.ca, ptr %.sroa.587.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.688.0..sroa_idx, align 8
  store i64 %i.bx, ptr %.sroa.789.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.890.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.991.0..sroa_idx, align 8
  store ptr %i.cd, ptr %i.m, align 8
  store i64 %i.ca, ptr %.sroa.583.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.684.0..sroa_idx, align 8
  store i64 %i.cc, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.9.0..sroa_idx, align 8
  invoke void @_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE10normalizedEv(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.57") align 8 %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %.sroa.0100.0.vec.insert = insertelement <2 x double> poison, double %i.bm, i64 0
  %.sroa.0100.8.vec.insert = insertelement <2 x double> %.sroa.0100.0.vec.insert, double %i.bo, i64 1
  %.sroa.0112.0.vec.insert = insertelement <2 x double> poison, double %i.bf, i64 0
  %.sroa.0112.8.vec.insert = insertelement <2 x double> %.sroa.0112.0.vec.insert, double %i.bh, i64 1
  %i.ce = load ptr, ptr %10, align 8, !tbaa !39   ; 3 uses
  %i.cf = load <2 x double>, ptr %i.ce, align 16, !tbaa !40
  %i.cg = getelementptr i8, ptr %i.ce, i64 16
  %i.ch = load double, ptr %i.cg, align 16, !tbaa !34
  call void @free(ptr noundef %i.ce) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.ci = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.bq, i64 1
  %i.ck = fneg <2 x double> %i.cj
  %i.cl = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %i.bf, i64 1
  %i.cn = fmul <2 x double> %i.cm, %i.ck
  %i.co = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.cp = insertelement <2 x double> %i.co, double %i.bj, i64 1
  %i.cq = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.bm, i64 1
  %i.cs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.cr, <2 x double> %i.cn)
  %i.ct = fneg double %i.bm
  %i.cu = fmul double %i.bh, %i.ct
  %i.cv = call double @llvm.fmuladd.f64(double %i.bf, double %i.bo, double %i.cu)
  %i.cw = fmul <2 x double> %i.cs, %i.cf          ; 2 uses
  %i.cx = fmul double %i.cv, %i.ch
  %i.cy = fmul <2 x double> %.sroa.0112.8.vec.insert, %.sroa.0100.8.vec.insert ; 2 uses
  %i.cz = shufflevector <2 x double> %i.cw, <2 x double> %i.cy, <2 x i32> <i32 0, i32 2>
  %i.da = shufflevector <2 x double> %i.cw, <2 x double> %i.cy, <2 x i32> <i32 1, i32 3>
  %i.db = fadd <2 x double> %i.cz, %i.da          ; 2 uses
  %i.dc = extractelement <2 x double> %i.db, i64 0
  %i.dd = fadd double %i.cx, %i.dc
  %i.de = fmul double %i.bj, %i.bq
  %i.df = extractelement <2 x double> %i.db, i64 1
  %i.dg = fadd double %i.de, %i.df
  %i.dh = call double @atan2(double noundef %i.dd, double noundef %i.dg) #18
  %i.di = fsub double f0x400921FB54442D18, %i.dh
  %i.dj = fadd double %i.di, f0xC00921FB54442D18
  %i.dk = call noundef double @llvm.fabs.f64(double %i.dj)
  %i.dl = fcmp ogt double %i.dk, %2
  %spec.select = select i1 %i.dl, i1 true, i1 %.1127 ; 4 uses
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.dm = load ptr, ptr %7, align 8, !tbaa !17    ; 4 uses
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %indvars.iv142 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !26 ; 2 uses
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !13 ; 4 uses
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 2                 ; 2 uses
  %i.dv = icmp ugt i64 %i.du, %indvars.iv.next139
  br i1 %i.dv, label %.lr.ph, label %.loopexit, !llvm.loop !51

bb.d:                                             ; preds = %.lr.ph
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.loopexit.thread, %._crit_edge
  %i.dx = phi ptr [ %.lcssa184, %.loopexit.thread ], [ %i.dm, %._crit_edge ]
  %i.dy = load ptr, ptr %i.e, align 8, !tbaa !26  ; 4 uses
  %i.dz = load ptr, ptr %i.n, align 8, !tbaa !14
  %.not.i = icmp eq ptr %i.dy, %i.dz
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ea = trunc nuw nsw i64 %indvars.iv142 to i32
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !28
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store ptr %i.eb, ptr %i.e, align 8, !tbaa !26
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.g:                                             ; preds = %bb.e
  %i.ec = load ptr, ptr %8, align 8, !tbaa !13    ; 4 uses
  %i.ed = ptrtoint ptr %i.dy to i64
  %i.ee = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.ef = sub i64 %i.ed, %i.ee                    ; 5 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775804
  br i1 %i.eg, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.eh = ashr exact i64 %i.ef, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.eh, i64 1)
  %i.ei = add nsw i64 %.sroa.speculated.i.i.i, %i.eh ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eh
  %i.ek = call i64 @llvm.umin.i64(i64 %i.ei, i64 2305843009213693951)
  %i.el = select i1 %i.ej, i64 2305843009213693951, i64 %i.ek ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.el, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.em = shl nuw nsw i64 %i.el, 2
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #21
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc80:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.ef ; 2 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv142 to i32
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !28
  %i.eq = icmp sgt i64 %i.ef, 0
  br i1 %i.eq, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %.noexc80
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.en, ptr align 4 %i.ec, i64 %i.ef, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %.noexc80
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.es = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = sub i64 %i.et, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eu) #19
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.en, ptr %8, align 8, !tbaa !13
  store ptr %i.er, ptr %i.e, align 8, !tbaa !26
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.el
  store ptr %i.ev, ptr %i.n, align 8, !tbaa !14
  %.pre149 = load ptr, ptr %7, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %.loopexit.thread, %.preheader, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.f, %._crit_edge
  %i.ew = phi ptr [ %i.o, %.preheader ], [ %.pre149, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.dx, %bb.f ], [ %i.dm, %._crit_edge ], [ %.lcssa184, %.loopexit.thread ] ; 2 uses
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.ex = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = sdiv exact i64 %i.fa, 24
  %i.fc = icmp ugt i64 %i.fb, %indvars.iv.next143
end_hunk_0
begin_hunk_1_@_ZN3igl11sharp_edgesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_NS2_IiLin1ELi2ELi0ELin1ELi2EEES5_NS2_IiLin1ELi1ELi0ELin1ELi1EEEiiEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EENS8_6ScalarERNS1_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EERNSH_IT4_EERSt6vectorISU_IT5_SaISV_EESaISX_EERSU_IT6_SaIS11_EE:bb.a
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !28
  %indvars.iv.next146 = or disjoint i64 %indvars.iv145, 1 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next146 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !28
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr [4 x i8], ptr %i.ai, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !28
  %i.gd = getelementptr [4 x i8], ptr %i.ak, i64 %indvars.iv.next146 ; 2 uses
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !28
  %i.ge = load i32, ptr %i.fy, align 4, !tbaa !28
  %i.gf = sext i32 %i.ge to i64
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.gf
  %i.gg = load i32, ptr %gep.1, align 4, !tbaa !28
  %i.gh = getelementptr [4 x i8], ptr %i.gd, i64 %i.af
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !28
  %indvars.iv.next146.1 = add nuw nsw i64 %indvars.iv145, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.loopexit.unr-lcssa, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, !llvm.loop !53

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.h, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.a
  %lpad.loopexit.split-lp192 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.d
  %.pn72.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dw, %bb.d ], [ %lpad.loopexit.split-lp192, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.gi = load ptr, ptr %9, align 8, !tbaa !31
  call void @free(ptr noundef %i.gi) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  resume { ptr, i32 } %.pn72.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #19
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #19
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl11sharp_edgesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_S4_S4_NS2_IiLin1ELi1ELi0ELin1ELi1EEEiiEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EENS7_6ScalarERNS1_15PlainObjectBaseIT1_EERNSG_IT2_EERNSG_IT3_EERNSG_IT4_EERSt6vectorIST_IT5_SaISU_EESaISW_EERST_IT6_SaIS10_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, double noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.Eigen::Matrix.31", align 8  ; 9 uses
  %10 = alloca %"class.Eigen::Matrix.57", align 8 ; 5 uses
  %11 = alloca %"class.Eigen::CwiseBinaryOp", align 8 ; 16 uses
  tail call void @_ZN3igl15unique_edge_mapIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_S3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEiEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERSt6vectorISK_IT3_SaISL_EESaISN_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl16per_face_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = load ptr, ptr %8, align 8, !tbaa !13     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %.not.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.b
  store ptr %i.d, ptr %i.e, align 8, !tbaa !26
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.b, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = load ptr, ptr %7, align 8, !tbaa !17     ; 2 uses
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
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.o = phi ptr [ %i.i, %.preheader.lr.ph ], [ %i.ew, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %indvars.iv142 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next143, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %indvars.iv142 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26   ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !13   ; 3 uses
  %.not136 = icmp eq ptr %i.r, %i.s
  br i1 %.not136, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %.lr.ph131.preheader

.lr.ph131.preheader:                              ; preds = %.preheader
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp ugt i64 %i.v, 4
  br i1 %i.w, label %.lr.ph.preheader, label %.loopexit.thread

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre150 = load ptr, ptr %i.e, align 8, !tbaa !26
  %.pre151 = load ptr, ptr %8, align 8, !tbaa !13
  br label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.x = phi ptr [ %.pre151, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit ], [ %i.d, %_ZNSt6vectorIiSaIiEE5clearEv.exit ]
  %i.y = phi ptr [ %.pre150, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit ], [ %i.d, %_ZNSt6vectorIiSaIiEE5clearEv.exit ]
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = ashr exact i64 %i.ab, 1
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.ad, i64 noundef %i.ac, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !25 ; 8 uses
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph135, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge

.lr.ph135:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.ah = load ptr, ptr %8, align 8, !tbaa !13    ; 3 uses
  %i.ai = load ptr, ptr %5, align 8, !tbaa !27    ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load ptr, ptr %3, align 8, !tbaa !27    ; 3 uses
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !25
  %invariant.gep = getelementptr [4 x i8], ptr %i.ai, i64 %i.al ; 3 uses
  %xtraiter = and i64 %i.af, 1
  %i.am = icmp eq i64 %i.af, 1
  br i1 %i.am, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.epil.preheader, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135
  %unroll_iter = and i64 %i.af, 9223372036854775806
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

.loopexit:                                        ; preds = %bb.c
  %i.an = icmp ugt i64 %i.du, %indvars.iv.next141190
  br i1 %i.an, label %.lr.ph131, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %.loopexit
  br i1 %spec.select, label %bb.e, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.lr.ph131:                                        ; preds = %.loopexit
  %indvars.iv.next = add nuw i64 %indvars.iv188, 1
  %indvars.iv.next141.a = add nuw nsw i64 %indvars.iv.next141190, 1 ; 2 uses
  %i.ao = ptrtoint ptr %i.dp to i64
  %i.ap = ptrtoint ptr %i.dq to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = icmp ugt i64 %i.ar, %indvars.iv.next141.a
  br i1 %i.as, label %.lr.ph.preheader, label %.loopexit.thread, !llvm.loop !57

.lr.ph.preheader:                                 ; preds = %.lr.ph131.preheader, %.lr.ph131
  %indvars.iv.next141190 = phi i64 [ %indvars.iv.next141.a, %.lr.ph131 ], [ 1, %.lr.ph131.preheader ] ; 3 uses
  %.055129189 = phi i1 [ %spec.select, %.lr.ph131 ], [ false, %.lr.ph131.preheader ]
  %indvars.iv188 = phi i64 [ %indvars.iv.next, %.lr.ph131 ], [ 1, %.lr.ph131.preheader ] ; 2 uses
  %indvars.iv140187 = phi i64 [ %indvars.iv.next141190, %.lr.ph131 ], [ 0, %.lr.ph131.preheader ]
  %i.at = phi ptr [ %i.dq, %.lr.ph131 ], [ %i.s, %.lr.ph131.preheader ]
  br label %.lr.ph

.loopexit.thread:                                 ; preds = %.lr.ph131, %.lr.ph131.preheader
  %.lcssa184 = phi ptr [ %i.o, %.lr.ph131.preheader ], [ %i.dm, %.lr.ph131 ] ; 2 uses
  %.055129.lcssa = phi i1 [ false, %.lr.ph131.preheader ], [ %spec.select, %.lr.ph131 ]
  br i1 %.055129.lcssa, label %bb.e, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %bb.c ], [ %indvars.iv188, %.lr.ph.preheader ] ; 2 uses
  %i.au = phi ptr [ %i.dq, %bb.c ], [ %i.at, %.lr.ph.preheader ] ; 2 uses
  %.1127 = phi i1 [ %spec.select, %bb.c ], [ %.055129189, %.lr.ph.preheader ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv140187
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !28 ; 2 uses
  %i.ax = srem i32 %i.aw, %i.c
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv138
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !28
  %i.ba = srem i32 %i.az, %i.c
  %i.bb = sext i32 %i.ax to i64
  %i.bc = load ptr, ptr %9, align 8, !tbaa !31, !noalias !65 ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bb ; 3 uses
  %i.be = load i64, ptr %i.j, align 8, !tbaa !32  ; 3 uses
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !34 ; 3 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !34 ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.be, 4 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !34 ; 3 uses
  %i.bk = sext i32 %i.ba to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bk ; 3 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !34 ; 3 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.be
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !34 ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.br = sext i32 %i.aw to i64
  %i.bs = load ptr, ptr %4, align 8, !tbaa !27
  %i.bt = load i64, ptr %i.k, align 8, !tbaa !25
  %i.bu = getelementptr [4 x i8], ptr %i.bs, i64 %i.br ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !28
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = load ptr, ptr %0, align 8, !tbaa !36, !noalias !66 ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.bx
  %i.ca = load i64, ptr %i.l, align 8, !tbaa !37, !noalias !66 ; 2 uses
  %i.cb = load i32, ptr %i.bu, align 4, !tbaa !28
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cc
  store ptr %i.bz, ptr %11, align 8
  store i64 %i.ca, ptr %.sroa.587.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.688.0..sroa_idx, align 8
  store i64 %i.bx, ptr %.sroa.789.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.890.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.991.0..sroa_idx, align 8
  store ptr %i.cd, ptr %i.m, align 8
  store i64 %i.ca, ptr %.sroa.583.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.684.0..sroa_idx, align 8
  store i64 %i.cc, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.9.0..sroa_idx, align 8
  invoke void @_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE10normalizedEv(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.57") align 8 %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %.sroa.0100.0.vec.insert = insertelement <2 x double> poison, double %i.bm, i64 0
  %.sroa.0100.8.vec.insert = insertelement <2 x double> %.sroa.0100.0.vec.insert, double %i.bo, i64 1
  %.sroa.0112.0.vec.insert = insertelement <2 x double> poison, double %i.bf, i64 0
  %.sroa.0112.8.vec.insert = insertelement <2 x double> %.sroa.0112.0.vec.insert, double %i.bh, i64 1
  %i.ce = load ptr, ptr %10, align 8, !tbaa !39   ; 3 uses
  %i.cf = load <2 x double>, ptr %i.ce, align 16, !tbaa !40
  %i.cg = getelementptr i8, ptr %i.ce, i64 16
  %i.ch = load double, ptr %i.cg, align 16, !tbaa !34
  call void @free(ptr noundef %i.ce) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.ci = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.bq, i64 1
  %i.ck = fneg <2 x double> %i.cj
  %i.cl = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %i.bf, i64 1
  %i.cn = fmul <2 x double> %i.cm, %i.ck
  %i.co = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.cp = insertelement <2 x double> %i.co, double %i.bj, i64 1
  %i.cq = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.bm, i64 1
  %i.cs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.cr, <2 x double> %i.cn)
  %i.ct = fneg double %i.bm
  %i.cu = fmul double %i.bh, %i.ct
  %i.cv = call double @llvm.fmuladd.f64(double %i.bf, double %i.bo, double %i.cu)
  %i.cw = fmul <2 x double> %i.cs, %i.cf          ; 2 uses
  %i.cx = fmul double %i.cv, %i.ch
  %i.cy = fmul <2 x double> %.sroa.0112.8.vec.insert, %.sroa.0100.8.vec.insert ; 2 uses
  %i.cz = shufflevector <2 x double> %i.cw, <2 x double> %i.cy, <2 x i32> <i32 0, i32 2>
  %i.da = shufflevector <2 x double> %i.cw, <2 x double> %i.cy, <2 x i32> <i32 1, i32 3>
  %i.db = fadd <2 x double> %i.cz, %i.da          ; 2 uses
  %i.dc = extractelement <2 x double> %i.db, i64 0
  %i.dd = fadd double %i.cx, %i.dc
  %i.de = fmul double %i.bj, %i.bq
  %i.df = extractelement <2 x double> %i.db, i64 1
  %i.dg = fadd double %i.de, %i.df
  %i.dh = call double @atan2(double noundef %i.dd, double noundef %i.dg) #18
  %i.di = fsub double f0x400921FB54442D18, %i.dh
  %i.dj = fadd double %i.di, f0xC00921FB54442D18
  %i.dk = call noundef double @llvm.fabs.f64(double %i.dj)
  %i.dl = fcmp ogt double %i.dk, %2
  %spec.select = select i1 %i.dl, i1 true, i1 %.1127 ; 4 uses
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.dm = load ptr, ptr %7, align 8, !tbaa !17    ; 4 uses
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %indvars.iv142 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !26 ; 2 uses
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !13 ; 4 uses
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 2                 ; 2 uses
  %i.dv = icmp ugt i64 %i.du, %indvars.iv.next139
  br i1 %i.dv, label %.lr.ph, label %.loopexit, !llvm.loop !62

bb.d:                                             ; preds = %.lr.ph
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.loopexit.thread, %._crit_edge
  %i.dx = phi ptr [ %.lcssa184, %.loopexit.thread ], [ %i.dm, %._crit_edge ]
  %i.dy = load ptr, ptr %i.e, align 8, !tbaa !26  ; 4 uses
  %i.dz = load ptr, ptr %i.n, align 8, !tbaa !14
  %.not.i = icmp eq ptr %i.dy, %i.dz
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ea = trunc nuw nsw i64 %indvars.iv142 to i32
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !28
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store ptr %i.eb, ptr %i.e, align 8, !tbaa !26
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.g:                                             ; preds = %bb.e
  %i.ec = load ptr, ptr %8, align 8, !tbaa !13    ; 4 uses
  %i.ed = ptrtoint ptr %i.dy to i64
  %i.ee = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.ef = sub i64 %i.ed, %i.ee                    ; 5 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775804
  br i1 %i.eg, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.eh = ashr exact i64 %i.ef, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.eh, i64 1)
  %i.ei = add nsw i64 %.sroa.speculated.i.i.i, %i.eh ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eh
  %i.ek = call i64 @llvm.umin.i64(i64 %i.ei, i64 2305843009213693951)
  %i.el = select i1 %i.ej, i64 2305843009213693951, i64 %i.ek ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.el, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.em = shl nuw nsw i64 %i.el, 2
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #21
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc80:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.ef ; 2 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv142 to i32
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !28
  %i.eq = icmp sgt i64 %i.ef, 0
  br i1 %i.eq, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %.noexc80
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.en, ptr align 4 %i.ec, i64 %i.ef, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %.noexc80
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.es = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = sub i64 %i.et, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eu) #19
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.en, ptr %8, align 8, !tbaa !13
  store ptr %i.er, ptr %i.e, align 8, !tbaa !26
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.el
  store ptr %i.ev, ptr %i.n, align 8, !tbaa !14
  %.pre149 = load ptr, ptr %7, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %.loopexit.thread, %.preheader, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.f, %._crit_edge
  %i.ew = phi ptr [ %i.o, %.preheader ], [ %.pre149, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.dx, %bb.f ], [ %i.dm, %._crit_edge ], [ %.lcssa184, %.loopexit.thread ] ; 2 uses
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.ex = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = sdiv exact i64 %i.fa, 24
  %i.fc = icmp ugt i64 %i.fb, %indvars.iv.next143
end_hunk_1
