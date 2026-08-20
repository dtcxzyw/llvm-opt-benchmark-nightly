inline.NumInlined: 339
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN3igl30find_cross_field_singularitiesIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEES4_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERNS1_15PlainObjectBaseIT2_EESM_:bb.a
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %6 = alloca %"class.std::vector.3", align 8     ; 11 uses
  %7 = alloca %"class.std::vector.3", align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @_ZN3igl16is_border_vertexIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEESt6vectorIbSaIbEERKNS1_10MatrixBaseIT_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl25vertex_triangle_adjacencyIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEiEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERSt6vectorISE_IT1_SaISF_EESaISH_EESK_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.b, i64 noundef 1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = icmp slt i64 %i.d, 1
  br i1 %i.e, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i: ; preds = %.noexc
  %i.f = load ptr, ptr %3, align 8, !tbaa !17
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.d, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.f, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !18
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i, %.noexc
  %i.g = load i64, ptr %i.a, align 8, !tbaa !9
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.g, i64 noundef 1)
          to label %.noexc53 unwind label %bb.h

.noexc53:                                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %i.j = icmp slt i64 %i.i, 1
  br i1 %i.j, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit54, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i51

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i51: ; preds = %.noexc53
  %i.k = load ptr, ptr %4, align 8, !tbaa !17
  %.idx.i.i.i.i.i.i.i.i.i.i.i52 = shl nuw nsw i64 %i.i, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i52, i1 false), !tbaa !18
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit54

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit54: ; preds = %.noexc53, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i51
  %i.l = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge75

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit54
  %i.n = load ptr, ptr %5, align 8, !tbaa !19
  %i.o = load ptr, ptr %6, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i

._crit_edge75:                                    ; preds = %bb.j, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit54
  %i.r = load ptr, ptr %7, align 8, !tbaa !22     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge75, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %i.r, %._crit_edge75 ] ; 3 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #12
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.c, %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !29

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %._crit_edge75
  %i.ab = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %._crit_edge75 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #12
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.ah = load ptr, ptr %6, align 8, !tbaa !22    ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !25 ; 2 uses
  %.not4.i.i.i55 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not4.i.i.i55, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i63, label %.lr.ph.i.i.i56

.lr.ph.i.i.i56:                                   ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i59
  %.05.i.i.i57 = phi ptr [ %i.aq, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i59 ], [ %i.ah, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.ak = load ptr, ptr %.05.i.i.i57, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i.i.i58 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i58, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i59, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i56
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i57, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #12
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i59

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i59: ; preds = %bb.e, %.lr.ph.i.i.i56
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i57, i64 24 ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.aq, %i.aj
  br i1 %.not.i.i.i60, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i61, label %.lr.ph.i.i.i56, !llvm.loop !29

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i61: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i59
  %.pr.i62 = load ptr, ptr %6, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i63

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i63: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i61, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
  %i.ar = phi ptr [ %.pr.i62, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i61 ], [ %i.ah, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i64 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i1.i64, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit65, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i63
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !31
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #12
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit65

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit65:       ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i63, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.ax = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit65
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !32 ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.be
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bc) #12
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit65, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret void

bb.h:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit, %bb.b, %bb.a
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.bh = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %.not.i.i66 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i66, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit67, label %bb.k

bb.i:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv79 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next80, %bb.j ] ; 9 uses
  %i.bi = lshr i64 %indvars.iv79, 6
  %.zext = and i64 %i.bi, 67108863
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.zext
  %i.bk = and i64 %indvars.iv79, 63
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = load i64, ptr %i.bj, align 8, !tbaa !35
  %i.bn = and i64 %i.bm, %i.bl
  %.not = icmp eq i64 %i.bn, 0
  br i1 %.not, label %.preheader68, label %bb.j

.preheader68:                                     ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %indvars.iv79 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !36 ; 2 uses
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !26 ; 3 uses
  %.not76 = icmp eq ptr %i.bq, %i.br
  br i1 %.not76, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader68
  %8 = ptrtoint ptr %i.bq to i64
  %9 = ptrtoint ptr %i.br to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 2
  %i.bs = load ptr, ptr %1, align 8, !tbaa !37
  %i.bt = load i64, ptr %i.p, align 8, !tbaa !39  ; 2 uses
  %i.bu = load ptr, ptr %2, align 8, !tbaa !37
  %i.bv = load i64, ptr %i.q, align 8, !tbaa !39
  %.idx = shl i64 %i.bt, 3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %.03771 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.cs, %.preheader ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !18
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr [4 x i8], ptr %i.bs, i64 %i.by ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !18
  %i.cb = zext i32 %i.ca to i64
  %i.cc = icmp ne i64 %indvars.iv79, %i.cb
  %i.cd = getelementptr [4 x i8], ptr %i.bz, i64 %i.bt
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !18
  %i.cf = zext i32 %i.ce to i64
  %i.cg = icmp eq i64 %indvars.iv79, %i.cf
  %i.ch = getelementptr i8, ptr %i.bz, i64 %.idx
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !18
  %i.cj = zext i32 %i.ci to i64
  %i.ck = icmp eq i64 %indvars.iv79, %i.cj
  %i.cl = sext i1 %i.cc to i64
  %i.cm = select i1 %i.cg, i64 1, i64 %i.cl
  %i.cn = select i1 %i.ck, i64 2, i64 %i.cm
  %i.co = mul nsw i64 %i.bv, %i.cn
  %i.cp = getelementptr [4 x i8], ptr %i.bu, i64 %i.by
  %i.cq = getelementptr [4 x i8], ptr %i.cp, i64 %i.co
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !18
  %i.cs = add nsw i32 %i.cr, %.03771              ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %11
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !40

._crit_edge.loopexit:                             ; preds = %.preheader
  %i.ct = srem i32 %i.cs, 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader68
  %.037.lcssa = phi i32 [ 0, %.preheader68 ], [ %i.ct, %._crit_edge.loopexit ] ; 2 uses
  %i.cu = load ptr, ptr %3, align 8, !tbaa !17
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv79
  %i.cw = icmp ne i32 %.037.lcssa, 0
  %i.cx = zext i1 %i.cw to i32
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !18
  %i.cy = load ptr, ptr %4, align 8, !tbaa !17
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv79
  store i32 %.037.lcssa, ptr %i.cz, align 4, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %12 = icmp sgt i64 %i.l, %indvars.iv.next80
  br i1 %12, label %bb.i, label %._crit_edge75, !llvm.loop !41

bb.k:                                             ; preds = %bb.h
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !32 ; 2 uses
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.bh to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 2 uses
  %i.df = ashr exact i64 %i.de, 3
  %i.dg = sub nsw i64 0, %i.df
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dg
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.de) #12
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit67

_ZNSt13_Bvector_baseISaIbEED2Ev.exit67:           ; preds = %bb.h, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  resume { ptr, i32 } %i.bg
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN3igl16is_border_vertexIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEESt6vectorIbSaIbEERKNS1_10MatrixBaseIT_EE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare void @_ZN3igl25vertex_triangle_adjacencyIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEiEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERSt6vectorISE_IT1_SaISF_EESaISH_EESK_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #12
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !29

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #12
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl30find_cross_field_singularitiesIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EESA_SA_RNS1_15PlainObjectBaseIT1_EESI_b(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix.24", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl20cross_field_mismatchIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEES4_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EES9_S9_bRNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3igl30find_cross_field_singularitiesIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEES4_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERNS1_15PlainObjectBaseIT2_EESM_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.a = load ptr, ptr %7, align 8, !tbaa !37
  call void @free(ptr noundef %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %7, align 8, !tbaa !37
  call void @free(ptr noundef %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  resume { ptr, i32 } %i.b
}

declare void @_ZN3igl20cross_field_mismatchIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEES4_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EES9_S9_bRNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl30find_cross_field_singularitiesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERNS1_15PlainObjectBaseIT2_EESM_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %6 = alloca %"class.std::vector.3", align 8     ; 11 uses
  %7 = alloca %"class.std::vector.3", align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @_ZN3igl16is_border_vertexIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEESt6vectorIbSaIbEERKNS1_10MatrixBaseIT_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl25vertex_triangle_adjacencyIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEiEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERSt6vectorISE_IT1_SaISF_EESaISH_EESK_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !42
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.b, i64 noundef 1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = icmp slt i64 %i.d, 1
  br i1 %i.e, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i: ; preds = %.noexc
  %i.f = load ptr, ptr %3, align 8, !tbaa !17
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.d, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.f, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !18
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i, %.noexc
  %i.g = load i64, ptr %i.a, align 8, !tbaa !42
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.g, i64 noundef 1)
          to label %.noexc53 unwind label %bb.h

.noexc53:                                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %i.j = icmp slt i64 %i.i, 1
  br i1 %i.j, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit54, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i51

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i51: ; preds = %.noexc53
  %i.k = load ptr, ptr %4, align 8, !tbaa !17
  %.idx.i.i.i.i.i.i.i.i.i.i.i52 = shl nuw nsw i64 %i.i, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i52, i1 false), !tbaa !18
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit54

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit54: ; preds = %.noexc53, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i51
  %i.l = load i64, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge75

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit54
  %i.n = load ptr, ptr %5, align 8, !tbaa !19
  %i.o = load ptr, ptr %6, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i

._crit_edge75:                                    ; preds = %bb.j, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit54
  %i.r = load ptr, ptr %7, align 8, !tbaa !22     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge75, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %i.r, %._crit_edge75 ] ; 3 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #12
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.c, %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !29

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %._crit_edge75
  %i.ab = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %._crit_edge75 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #12
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.ah = load ptr, ptr %6, align 8, !tbaa !22    ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !25 ; 2 uses
  %.not4.i.i.i55 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not4.i.i.i55, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i63, label %.lr.ph.i.i.i56

.lr.ph.i.i.i56:                                   ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i59
  %.05.i.i.i57 = phi ptr [ %i.aq, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i59 ], [ %i.ah, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.ak = load ptr, ptr %.05.i.i.i57, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i.i.i58 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i58, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i59, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i56
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i57, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #12
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i59

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i59: ; preds = %bb.e, %.lr.ph.i.i.i56
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i57, i64 24 ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.aq, %i.aj
  br i1 %.not.i.i.i60, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i61, label %.lr.ph.i.i.i56, !llvm.loop !29

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i61: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i59
  %.pr.i62 = load ptr, ptr %6, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i63

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i63: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i61, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
  %i.ar = phi ptr [ %.pr.i62, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i61 ], [ %i.ah, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i64 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i1.i64, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit65, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i63
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !31
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #12
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit65

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit65:       ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i63, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.ax = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit65
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !32 ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.be
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bc) #12
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit65, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret void

bb.h:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit, %bb.b, %bb.a
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.bh = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %.not.i.i66 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i66, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit67, label %bb.k

bb.i:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv79 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next80, %bb.j ] ; 9 uses
  %i.bi = lshr i64 %indvars.iv79, 6
  %.zext = and i64 %i.bi, 67108863
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.zext
  %i.bk = and i64 %indvars.iv79, 63
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = load i64, ptr %i.bj, align 8, !tbaa !35
  %i.bn = and i64 %i.bm, %i.bl
  %.not = icmp eq i64 %i.bn, 0
  br i1 %.not, label %.preheader68, label %bb.j

.preheader68:                                     ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %indvars.iv79 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !36 ; 2 uses
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !26 ; 3 uses
  %.not76 = icmp eq ptr %i.bq, %i.br
  br i1 %.not76, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader68
  %8 = ptrtoint ptr %i.bq to i64
  %9 = ptrtoint ptr %i.br to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 2
  %i.bs = load ptr, ptr %1, align 8, !tbaa !44
  %i.bt = load i64, ptr %i.p, align 8, !tbaa !46  ; 2 uses
  %i.bu = load ptr, ptr %2, align 8, !tbaa !44
  %i.bv = load i64, ptr %i.q, align 8, !tbaa !46
  %.idx = shl i64 %i.bt, 3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %.03771 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.cs, %.preheader ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !18
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr [4 x i8], ptr %i.bs, i64 %i.by ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !18
  %i.cb = zext i32 %i.ca to i64
  %i.cc = icmp ne i64 %indvars.iv79, %i.cb
  %i.cd = getelementptr [4 x i8], ptr %i.bz, i64 %i.bt
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !18
  %i.cf = zext i32 %i.ce to i64
  %i.cg = icmp eq i64 %indvars.iv79, %i.cf
  %i.ch = getelementptr i8, ptr %i.bz, i64 %.idx
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !18
  %i.cj = zext i32 %i.ci to i64
  %i.ck = icmp eq i64 %indvars.iv79, %i.cj
  %i.cl = sext i1 %i.cc to i64
  %i.cm = select i1 %i.cg, i64 1, i64 %i.cl
  %i.cn = select i1 %i.ck, i64 2, i64 %i.cm
  %i.co = mul nsw i64 %i.bv, %i.cn
  %i.cp = getelementptr [4 x i8], ptr %i.bu, i64 %i.by
  %i.cq = getelementptr [4 x i8], ptr %i.cp, i64 %i.co
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !18
  %i.cs = add nsw i32 %i.cr, %.03771              ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %11
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !47

._crit_edge.loopexit:                             ; preds = %.preheader
  %i.ct = srem i32 %i.cs, 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader68
  %.037.lcssa = phi i32 [ 0, %.preheader68 ], [ %i.ct, %._crit_edge.loopexit ] ; 2 uses
  %i.cu = load ptr, ptr %3, align 8, !tbaa !17
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv79
  %i.cw = icmp ne i32 %.037.lcssa, 0
  %i.cx = zext i1 %i.cw to i32
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !18
  %i.cy = load ptr, ptr %4, align 8, !tbaa !17
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv79
  store i32 %.037.lcssa, ptr %i.cz, align 4, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %12 = icmp sgt i64 %i.l, %indvars.iv.next80
  br i1 %12, label %bb.i, label %._crit_edge75, !llvm.loop !48

bb.k:                                             ; preds = %bb.h
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !32 ; 2 uses
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.bh to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 2 uses
  %i.df = ashr exact i64 %i.de, 3
  %i.dg = sub nsw i64 0, %i.df
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dg
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.de) #12
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit67

_ZNSt13_Bvector_baseISaIbEED2Ev.exit67:           ; preds = %bb.h, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  resume { ptr, i32 } %i.bg
}

declare void @_ZN3igl16is_border_vertexIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEESt6vectorIbSaIbEERKNS1_10MatrixBaseIT_EE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare void @_ZN3igl25vertex_triangle_adjacencyIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEiEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERSt6vectorISE_IT1_SaISF_EESaISH_EESK_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl30find_cross_field_singularitiesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EES9_S9_RNS1_15PlainObjectBaseIT1_EESH_b(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix.24", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl20cross_field_mismatchIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EESA_SA_bRNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3igl30find_cross_field_singularitiesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi3ELi0ELin1ELi3EEES4_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERNS1_15PlainObjectBaseIT2_EESM_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.a = load ptr, ptr %7, align 8, !tbaa !37
  call void @free(ptr noundef %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %7, align 8, !tbaa !37
  call void @free(ptr noundef %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  resume { ptr, i32 } %i.b
}

declare void @_ZN3igl20cross_field_mismatchIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EESA_SA_bRNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl30find_cross_field_singularitiesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi3ELi0ELin1ELi3EEES4_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERNS1_15PlainObjectBaseIT2_EESM_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %6 = alloca %"class.std::vector.3", align 8     ; 11 uses
  %7 = alloca %"class.std::vector.3", align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @_ZN3igl16is_border_vertexIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEESt6vectorIbSaIbEERKNS1_10MatrixBaseIT_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl25vertex_triangle_adjacencyIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEiEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERSt6vectorISE_IT1_SaISF_EESaISH_EESK_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i unwind label %bb.g

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.b, i64 noundef %i.b, i64 noundef 1)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !49
  %i.g = mul nsw i64 %i.f, %i.d                   ; 2 uses
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE7setZeroEll.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit.loopexit.i: ; preds = %.noexc
  %i.i = load ptr, ptr %3, align 8, !tbaa !44
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !18
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE7setZeroEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE7setZeroEll.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit.loopexit.i, %.noexc
  %i.j = load i64, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.j, i64 noundef %i.j, i64 noundef 1)
          to label %.noexc54 unwind label %bb.g

.noexc54:                                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE7setZeroEll.exit
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !49
  %i.o = mul nsw i64 %i.n, %i.l                   ; 2 uses
  %i.p = icmp slt i64 %i.o, 1
  br i1 %i.p, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE7setZeroEll.exit55, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit.loopexit.i52

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit.loopexit.i52: ; preds = %.noexc54
  %i.q = load ptr, ptr %4, align 8, !tbaa !44
  %.idx.i.i.i.i.i.i.i.i.i.i.i53 = shl nuw nsw i64 %i.o, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.q, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i53, i1 false), !tbaa !18
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE7setZeroEll.exit55

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE7setZeroEll.exit55: ; preds = %.noexc54, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit.loopexit.i52
  %i.r = load i64, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge76

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE7setZeroEll.exit55
  %i.t = load ptr, ptr %5, align 8, !tbaa !19
  %i.u = load ptr, ptr %6, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.h

._crit_edge76:                                    ; preds = %bb.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE7setZeroEll.exit55
  %i.x = load ptr, ptr %7, align 8, !tbaa !22     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge76, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ag, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %i.x, %._crit_edge76 ] ; 3 uses
  %i.aa = load ptr, ptr %.05.i.i.i, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !28
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #12
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.b, %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %i.z
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !29

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %._crit_edge76
  %i.ah = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.x, %._crit_edge76 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !31
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #12
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.an = load ptr, ptr %6, align 8, !tbaa !22    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25 ; 2 uses
  %.not4.i.i.i56 = icmp eq ptr %i.an, %i.ap
  br i1 %.not4.i.i.i56, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i64, label %.lr.ph.i.i.i57

.lr.ph.i.i.i57:                                   ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i60
  %.05.i.i.i58 = phi ptr [ %i.aw, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i60 ], [ %i.an, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.aq = load ptr, ptr %.05.i.i.i58, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i.i.i59 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i59, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i60, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i57
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i58, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !28
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #12
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i60

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i60: ; preds = %bb.d, %.lr.ph.i.i.i57
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i58, i64 24 ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.aw, %i.ap
  br i1 %.not.i.i.i61, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i62, label %.lr.ph.i.i.i57, !llvm.loop !29

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i62: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i60
  %.pr.i63 = load ptr, ptr %6, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i64

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i64: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i62, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
  %i.ax = phi ptr [ %.pr.i63, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i62 ], [ %i.an, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i65 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i1.i65, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit66, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i64
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !31
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #12
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit66

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit66:       ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i64, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.bd = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit66
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !32 ; 2 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = ashr exact i64 %i.bi, 3
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bk
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bi) #12
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit66, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret void

bb.g:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE7setZeroEll.exit, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.bn = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %.not.i.i67 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i67, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit68, label %bb.j

bb.h:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv80 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next81, %bb.i ] ; 9 uses
  %i.bo = lshr i64 %indvars.iv80, 6
  %.zext = and i64 %i.bo, 67108863
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.zext
  %i.bq = and i64 %indvars.iv80, 63
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = load i64, ptr %i.bp, align 8, !tbaa !35
  %i.bt = and i64 %i.bs, %i.br
  %.not = icmp eq i64 %i.bt, 0
  br i1 %.not, label %.preheader69, label %bb.i

.preheader69:                                     ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv80 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !36 ; 2 uses
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !26 ; 3 uses
  %.not77 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not77, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader69
  %8 = ptrtoint ptr %i.bw to i64
  %9 = ptrtoint ptr %i.bx to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 2
  %i.by = load ptr, ptr %1, align 8, !tbaa !44
  %i.bz = load i64, ptr %i.v, align 8, !tbaa !46  ; 2 uses
  %i.ca = load ptr, ptr %2, align 8, !tbaa !37
  %i.cb = load i64, ptr %i.w, align 8, !tbaa !39
  %.idx = shl i64 %i.bz, 3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %.03772 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.cy, %.preheader ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !18
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr [4 x i8], ptr %i.by, i64 %i.ce ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !18
  %i.ch = zext i32 %i.cg to i64
  %i.ci = icmp ne i64 %indvars.iv80, %i.ch
  %i.cj = getelementptr [4 x i8], ptr %i.cf, i64 %i.bz
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !18
  %i.cl = zext i32 %i.ck to i64
  %i.cm = icmp eq i64 %indvars.iv80, %i.cl
  %i.cn = getelementptr i8, ptr %i.cf, i64 %.idx
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !18
  %i.cp = zext i32 %i.co to i64
  %i.cq = icmp eq i64 %indvars.iv80, %i.cp
  %i.cr = sext i1 %i.ci to i64
  %i.cs = select i1 %i.cm, i64 1, i64 %i.cr
  %i.ct = select i1 %i.cq, i64 2, i64 %i.cs
  %i.cu = mul nsw i64 %i.cb, %i.ct
  %i.cv = getelementptr [4 x i8], ptr %i.ca, i64 %i.ce
  %i.cw = getelementptr [4 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !18
  %i.cy = add nsw i32 %i.cx, %.03772              ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %11
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !50

._crit_edge.loopexit:                             ; preds = %.preheader
  %i.cz = srem i32 %i.cy, 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader69
  %.037.lcssa = phi i32 [ 0, %.preheader69 ], [ %i.cz, %._crit_edge.loopexit ] ; 2 uses
  %i.da = load ptr, ptr %3, align 8, !tbaa !44
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv80
  %i.dc = icmp ne i32 %.037.lcssa, 0
  %i.dd = zext i1 %i.dc to i32
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !18
  %i.de = load ptr, ptr %4, align 8, !tbaa !44
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv80
  store i32 %.037.lcssa, ptr %i.df, align 4, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %12 = icmp sgt i64 %i.r, %indvars.iv.next81
  br i1 %12, label %bb.h, label %._crit_edge76, !llvm.loop !51

bb.j:                                             ; preds = %bb.g
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !32 ; 2 uses
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.bn to i64
  %i.dk = sub i64 %i.di, %i.dj                    ; 2 uses
  %i.dl = ashr exact i64 %i.dk, 3
  %i.dm = sub nsw i64 0, %i.dl
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dm
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dk) #12
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit68

_ZNSt13_Bvector_baseISaIbEED2Ev.exit68:           ; preds = %bb.g, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  resume { ptr, i32 } %i.bm
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl30find_cross_field_singularitiesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_S4_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_15PlainObjectBaseIT2_EESL_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %6 = alloca %"class.std::vector.3", align 8     ; 11 uses
  %7 = alloca %"class.std::vector.3", align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @_ZN3igl16is_border_vertexIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEESt6vectorIbSaIbEERKNS1_10MatrixBaseIT_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl25vertex_triangle_adjacencyIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEiEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERSt6vectorISE_IT1_SaISF_EESaISH_EESK_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i unwind label %bb.g

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.b, i64 noundef %i.b, i64 noundef 1)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !49
  %i.g = mul nsw i64 %i.f, %i.d                   ; 2 uses
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE7setZeroEll.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit.loopexit.i: ; preds = %.noexc
  %i.i = load ptr, ptr %3, align 8, !tbaa !44
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !18
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE7setZeroEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE7setZeroEll.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit.loopexit.i, %.noexc
  %i.j = load i64, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.j, i64 noundef %i.j, i64 noundef 1)
          to label %.noexc54 unwind label %bb.g

.noexc54:                                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE7setZeroEll.exit
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !49
  %i.o = mul nsw i64 %i.n, %i.l                   ; 2 uses
  %i.p = icmp slt i64 %i.o, 1
  br i1 %i.p, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE7setZeroEll.exit55, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit.loopexit.i52

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit.loopexit.i52: ; preds = %.noexc54
  %i.q = load ptr, ptr %4, align 8, !tbaa !44
  %.idx.i.i.i.i.i.i.i.i.i.i.i53 = shl nuw nsw i64 %i.o, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.q, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i53, i1 false), !tbaa !18
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE7setZeroEll.exit55

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE7setZeroEll.exit55: ; preds = %.noexc54, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit.loopexit.i52
  %i.r = load i64, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge76

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE7setZeroEll.exit55
  %i.t = load ptr, ptr %5, align 8, !tbaa !19
  %i.u = load ptr, ptr %6, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.h

._crit_edge76:                                    ; preds = %bb.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE7setZeroEll.exit55
  %i.x = load ptr, ptr %7, align 8, !tbaa !22     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge76, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ag, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %i.x, %._crit_edge76 ] ; 3 uses
  %i.aa = load ptr, ptr %.05.i.i.i, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !28
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #12
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.b, %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %i.z
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !29

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %._crit_edge76
  %i.ah = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.x, %._crit_edge76 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !31
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #12
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.an = load ptr, ptr %6, align 8, !tbaa !22    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25 ; 2 uses
  %.not4.i.i.i56 = icmp eq ptr %i.an, %i.ap
  br i1 %.not4.i.i.i56, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i64, label %.lr.ph.i.i.i57

.lr.ph.i.i.i57:                                   ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i60
  %.05.i.i.i58 = phi ptr [ %i.aw, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i60 ], [ %i.an, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.aq = load ptr, ptr %.05.i.i.i58, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i.i.i59 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i59, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i60, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i57
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i58, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !28
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #12
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i60

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i60: ; preds = %bb.d, %.lr.ph.i.i.i57
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i58, i64 24 ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.aw, %i.ap
  br i1 %.not.i.i.i61, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i62, label %.lr.ph.i.i.i57, !llvm.loop !29

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i62: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i60
  %.pr.i63 = load ptr, ptr %6, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i64

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i64: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i62, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
  %i.ax = phi ptr [ %.pr.i63, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i62 ], [ %i.an, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i65 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i1.i65, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit66, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i64
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !31
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #12
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit66

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit66:       ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i64, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.bd = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit66
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !32 ; 2 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = ashr exact i64 %i.bi, 3
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bk
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bi) #12
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit66, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret void

bb.g:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE7setZeroEll.exit, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.bn = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %.not.i.i67 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i67, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit68, label %bb.j

bb.h:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv80 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next81, %bb.i ] ; 9 uses
  %i.bo = lshr i64 %indvars.iv80, 6
  %.zext = and i64 %i.bo, 67108863
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.zext
  %i.bq = and i64 %indvars.iv80, 63
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = load i64, ptr %i.bp, align 8, !tbaa !35
  %i.bt = and i64 %i.bs, %i.br
  %.not = icmp eq i64 %i.bt, 0
  br i1 %.not, label %.preheader69, label %bb.i

.preheader69:                                     ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv80 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !36 ; 2 uses
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !26 ; 3 uses
  %.not77 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not77, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader69
  %8 = ptrtoint ptr %i.bw to i64
  %9 = ptrtoint ptr %i.bx to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 2
  %i.by = load ptr, ptr %1, align 8, !tbaa !44
  %i.bz = load i64, ptr %i.v, align 8, !tbaa !46  ; 2 uses
  %i.ca = load ptr, ptr %2, align 8, !tbaa !44
  %i.cb = load i64, ptr %i.w, align 8, !tbaa !46
  %.idx = shl i64 %i.bz, 3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %.03772 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.cy, %.preheader ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !18
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr [4 x i8], ptr %i.by, i64 %i.ce ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !18
  %i.ch = zext i32 %i.cg to i64
  %i.ci = icmp ne i64 %indvars.iv80, %i.ch
  %i.cj = getelementptr [4 x i8], ptr %i.cf, i64 %i.bz
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !18
  %i.cl = zext i32 %i.ck to i64
  %i.cm = icmp eq i64 %indvars.iv80, %i.cl
  %i.cn = getelementptr i8, ptr %i.cf, i64 %.idx
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !18
  %i.cp = zext i32 %i.co to i64
  %i.cq = icmp eq i64 %indvars.iv80, %i.cp
  %i.cr = sext i1 %i.ci to i64
  %i.cs = select i1 %i.cm, i64 1, i64 %i.cr
  %i.ct = select i1 %i.cq, i64 2, i64 %i.cs
  %i.cu = mul nsw i64 %i.cb, %i.ct
  %i.cv = getelementptr [4 x i8], ptr %i.ca, i64 %i.ce
  %i.cw = getelementptr [4 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !18
  %i.cy = add nsw i32 %i.cx, %.03772              ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %11
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !52

._crit_edge.loopexit:                             ; preds = %.preheader
  %i.cz = srem i32 %i.cy, 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader69
  %.037.lcssa = phi i32 [ 0, %.preheader69 ], [ %i.cz, %._crit_edge.loopexit ] ; 2 uses
  %i.da = load ptr, ptr %3, align 8, !tbaa !44
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv80
  %i.dc = icmp ne i32 %.037.lcssa, 0
  %i.dd = zext i1 %i.dc to i32
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !18
  %i.de = load ptr, ptr %4, align 8, !tbaa !44
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv80
  store i32 %.037.lcssa, ptr %i.df, align 4, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %12 = icmp sgt i64 %i.r, %indvars.iv.next81
  br i1 %12, label %bb.h, label %._crit_edge76, !llvm.loop !53

bb.j:                                             ; preds = %bb.g
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !32 ; 2 uses
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.bn to i64
  %i.dk = sub i64 %i.di, %i.dj                    ; 2 uses
  %i.dl = ashr exact i64 %i.dk, 3
  %i.dm = sub nsw i64 0, %i.dl
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dm
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dk) #12
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit68

_ZNSt13_Bvector_baseISaIbEED2Ev.exit68:           ; preds = %bb.g, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  resume { ptr, i32 } %i.bm
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl30find_cross_field_singularitiesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERNS1_15PlainObjectBaseIT2_EESN_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %6 = alloca %"class.std::vector.3", align 8     ; 11 uses
  %7 = alloca %"class.std::vector.3", align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @_ZN3igl16is_border_vertexIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEESt6vectorIbSaIbEERKNS1_10MatrixBaseIT_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl25vertex_triangle_adjacencyIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEiEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERSt6vectorISE_IT1_SaISF_EESaISH_EESK_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !42
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.b, i64 noundef 1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = icmp slt i64 %i.d, 1
  br i1 %i.e, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i: ; preds = %.noexc
  %i.f = load ptr, ptr %3, align 8, !tbaa !17
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.d, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.f, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !18
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i, %.noexc
  %i.g = load i64, ptr %i.a, align 8, !tbaa !42
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.g, i64 noundef 1)
          to label %.noexc53 unwind label %bb.h

.noexc53:                                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %i.j = icmp slt i64 %i.i, 1
  br i1 %i.j, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit54, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i51

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i51: ; preds = %.noexc53
  %i.k = load ptr, ptr %4, align 8, !tbaa !17
  %.idx.i.i.i.i.i.i.i.i.i.i.i52 = shl nuw nsw i64 %i.i, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i52, i1 false), !tbaa !18
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit54

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit54: ; preds = %.noexc53, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i51
  %i.l = load i64, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge75

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit54
  %i.n = load ptr, ptr %5, align 8, !tbaa !19
  %i.o = load ptr, ptr %6, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i

._crit_edge75:                                    ; preds = %bb.j, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit54
  %i.r = load ptr, ptr %7, align 8, !tbaa !22     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge75, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %i.r, %._crit_edge75 ] ; 3 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #12
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.c, %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !29

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %._crit_edge75
  %i.ab = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %._crit_edge75 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #12
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.ah = load ptr, ptr %6, align 8, !tbaa !22    ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !25 ; 2 uses
  %.not4.i.i.i55 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not4.i.i.i55, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i63, label %.lr.ph.i.i.i56

.lr.ph.i.i.i56:                                   ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i59
  %.05.i.i.i57 = phi ptr [ %i.aq, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i59 ], [ %i.ah, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.ak = load ptr, ptr %.05.i.i.i57, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i.i.i58 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i58, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i59, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i56
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i57, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #12
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i59

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i59: ; preds = %bb.e, %.lr.ph.i.i.i56
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i57, i64 24 ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.aq, %i.aj
  br i1 %.not.i.i.i60, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i61, label %.lr.ph.i.i.i56, !llvm.loop !29

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i61: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i59
  %.pr.i62 = load ptr, ptr %6, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i63

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i63: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i61, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
  %i.ar = phi ptr [ %.pr.i62, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i61 ], [ %i.ah, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i64 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i1.i64, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit65, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i63
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !31
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #12
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit65

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit65:       ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i63, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.ax = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit65
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !32 ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.be
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bc) #12
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit65, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret void

bb.h:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit, %bb.b, %bb.a
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.bh = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %.not.i.i66 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i66, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit67, label %bb.k

bb.i:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv79 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next80, %bb.j ] ; 9 uses
  %i.bi = lshr i64 %indvars.iv79, 6
  %.zext = and i64 %i.bi, 67108863
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.zext
  %i.bk = and i64 %indvars.iv79, 63
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = load i64, ptr %i.bj, align 8, !tbaa !35
  %i.bn = and i64 %i.bm, %i.bl
  %.not = icmp eq i64 %i.bn, 0
  br i1 %.not, label %.preheader68, label %bb.j

.preheader68:                                     ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %indvars.iv79 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !36 ; 2 uses
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !26 ; 3 uses
  %.not76 = icmp eq ptr %i.bq, %i.br
  br i1 %.not76, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader68
  %8 = ptrtoint ptr %i.bq to i64
  %9 = ptrtoint ptr %i.br to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 2
  %i.bs = load ptr, ptr %1, align 8, !tbaa !44
  %i.bt = load i64, ptr %i.p, align 8, !tbaa !46  ; 2 uses
  %i.bu = load ptr, ptr %2, align 8, !tbaa !37
  %i.bv = load i64, ptr %i.q, align 8, !tbaa !39
  %.idx = shl i64 %i.bt, 3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %.03771 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.cs, %.preheader ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !18
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr [4 x i8], ptr %i.bs, i64 %i.by ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !18
  %i.cb = zext i32 %i.ca to i64
  %i.cc = icmp ne i64 %indvars.iv79, %i.cb
  %i.cd = getelementptr [4 x i8], ptr %i.bz, i64 %i.bt
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !18
  %i.cf = zext i32 %i.ce to i64
  %i.cg = icmp eq i64 %indvars.iv79, %i.cf
  %i.ch = getelementptr i8, ptr %i.bz, i64 %.idx
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !18
  %i.cj = zext i32 %i.ci to i64
  %i.ck = icmp eq i64 %indvars.iv79, %i.cj
  %i.cl = sext i1 %i.cc to i64
  %i.cm = select i1 %i.cg, i64 1, i64 %i.cl
  %i.cn = select i1 %i.ck, i64 2, i64 %i.cm
  %i.co = mul nsw i64 %i.bv, %i.cn
  %i.cp = getelementptr [4 x i8], ptr %i.bu, i64 %i.by
  %i.cq = getelementptr [4 x i8], ptr %i.cp, i64 %i.co
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !18
  %i.cs = add nsw i32 %i.cr, %.03771              ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %11
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !54

._crit_edge.loopexit:                             ; preds = %.preheader
  %i.ct = srem i32 %i.cs, 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader68
  %.037.lcssa = phi i32 [ 0, %.preheader68 ], [ %i.ct, %._crit_edge.loopexit ] ; 2 uses
  %i.cu = load ptr, ptr %3, align 8, !tbaa !17
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv79
  %i.cw = icmp ne i32 %.037.lcssa, 0
  %i.cx = zext i1 %i.cw to i32
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !18
  %i.cy = load ptr, ptr %4, align 8, !tbaa !17
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv79
  store i32 %.037.lcssa, ptr %i.cz, align 4, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %12 = icmp sgt i64 %i.l, %indvars.iv.next80
  br i1 %12, label %bb.i, label %._crit_edge75, !llvm.loop !55

bb.k:                                             ; preds = %bb.h
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !32 ; 2 uses
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.bh to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 2 uses
  %i.df = ashr exact i64 %i.de, 3
  %i.dg = sub nsw i64 0, %i.df
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dg
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.de) #12
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit67

_ZNSt13_Bvector_baseISaIbEED2Ev.exit67:           ; preds = %bb.h, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  resume { ptr, i32 } %i.bg
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
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
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !56
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.i) #11
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !56
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #14 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !56
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !17
  br label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !14
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !44
  tail call void @free(ptr noundef %i.f) #11
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !56
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #14 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !56
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !44
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !46
  store i64 %3, ptr %i.c, align 8, !tbaa !49
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !13, i64 8}
!10 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EEE", !11, i64 0, !13, i64 8}
!11 = !{!"p1 double", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!15, !13, i64 8}
!15 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !16, i64 0, !13, i64 8}
!16 = !{!"p1 int", !12, i64 0}
!17 = !{!15, !16, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{!20, !21, i64 0}
!20 = !{!"_ZTSSt18_Bit_iterator_base", !21, i64 0, !6, i64 8}
!21 = !{!"p1 long", !12, i64 0}
!22 = !{!23, !24, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!24 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !12, i64 0}
!25 = !{!23, !24, i64 8}
!26 = !{!27, !16, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
end_hunk_0
