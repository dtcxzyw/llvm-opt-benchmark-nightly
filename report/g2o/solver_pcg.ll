Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_pcg?download=true
inline.NumInlined: 27367
inline.NumDeleted: 13763
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 191
begin_hunk_0_@_ZN3g2o11BlockSolverINS_17BlockSolverTraitsILin1ELin1EEEE10deallocateEv:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !392 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !393 ; 2 uses
  %.not4.i.i.i.i.i.i.i21 = icmp eq ptr %i.aw, %i.ay
  br i1 %.not4.i.i.i.i.i.i.i21, label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i29, label %.lr.ph.i.i.i.i.i.i.i22

.lr.ph.i.i.i.i.i.i.i22:                           ; preds = %bb.i, %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i25
  %.05.i.i.i.i.i.i.i23 = phi ptr [ %i.bf, %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i25 ], [ %i.aw, %bb.i ] ; 3 uses
  %i.az = load ptr, ptr %.05.i.i.i.i.i.i.i23, align 8, !tbaa !396 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i24 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i24, label %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i25, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i22
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i23, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !397
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #36
  br label %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i25

_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i25: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i22
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i23, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i26 = icmp eq ptr %i.bf, %i.ay
  br i1 %.not.i.i.i.i.i.i.i26, label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i.i27, label %.lr.ph.i.i.i.i.i.i.i22, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i.i27: ; preds = %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i25
  %.pr.i.i.i.i.i28 = load ptr, ptr %i.av, align 8, !tbaa !392
  br label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i29

_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i29: ; preds = %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i.i27, %bb.i
  %i.bg = phi ptr [ %.pr.i.i.i.i.i28, %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i.i27 ], [ %i.aw, %bb.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i30 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i1.i.i.i.i.i30, label %_ZNKSt14default_deleteIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEclEPS5_.exit.i.i31, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i29
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !398
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #36
  br label %_ZNKSt14default_deleteIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEclEPS5_.exit.i.i31

_ZNKSt14default_deleteIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEclEPS5_.exit.i.i31: ; preds = %bb.k, %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 40) #36
  br label %_ZNSt10unique_ptrIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEESt14default_deleteIS5_EE5resetEPS5_.exit32

_ZNSt10unique_ptrIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEESt14default_deleteIS5_EE5resetEPS5_.exit32: ; preds = %_ZNSt10unique_ptrIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEESt14default_deleteIS5_EE5resetEPS5_.exit, %_ZNKSt14default_deleteIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEclEPS5_.exit.i.i31
  ret void
}

declare void @_ZN3g2o6Solver12resizeVectorEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2EPKiS6_iib(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %3 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.idx = shl nsw i64 %i.a, 2                     ; 6 uses
  %i.b = icmp ugt i64 %.idx, 9223372036854775804
  br i1 %i.b, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #38
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.c = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !478
  br label %bb.f

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.e = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #39
          to label %.noexc4.i unwind label %bb.e  ; 4 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  store ptr %i.e, ptr %0, align 8, !tbaa !479
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !478
  %i.h = icmp samesign ugt i64 %.idx, 4
  br i1 %i.h, label %bb.c, label %bb.d, !prof !539

bb.c:                                             ; preds = %.noexc4.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.e, ptr align 4 %1, i64 %.idx, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc4.i
  %i.i = load i32, ptr %1, align 4, !tbaa !91
  store i32 %i.i, ptr %i.e, align 4, !tbaa !91
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !479    ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i5.i, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %bb.d, %bb.c, %.thread.i.i
  %i.l = phi ptr [ %i.f, %bb.c ], [ %i.c, %.thread.i.i ], [ %i.f, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !477
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = sext i32 %4 to i64                       ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %.idx34 = shl nsw i64 %i.o, 2                   ; 6 uses
  %i.p = icmp ugt i64 %.idx34, 9223372036854775804
  br i1 %i.p, label %bb.g, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #38
          to label %.noexc.i21 unwind label %bb.j

.noexc.i21:                                       ; preds = %bb.g
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14: ; preds = %bb.f
  %.not.i.i.i15 = icmp eq i32 %4, 0
  br i1 %.not.i.i.i15, label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx34) #39
          to label %.noexc4.i19 unwind label %bb.j ; 4 uses

.noexc4.i19:                                      ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16
  store ptr %i.q, ptr %i.n, align 8, !tbaa !479
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx34 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.r, ptr %i.s, align 8, !tbaa !478
  %i.t = icmp samesign ugt i64 %.idx34, 4
  br i1 %i.t, label %bb.h, label %bb.i, !prof !539

bb.h:                                             ; preds = %.noexc4.i19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %2, i64 %.idx34, i1 false)
  br label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i

bb.i:                                             ; preds = %.noexc4.i19
  %i.u = load i32, ptr %2, align 4, !tbaa !91
  store i32 %i.u, ptr %i.q, align 4, !tbaa !91
  br label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !479  ; 2 uses
  %.not.i.i5.i17 = icmp eq ptr %i.w, null
  br i1 %.not.i.i5.i17, label %.body22, label %.body22.sink.split

_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14
  %i.x = getelementptr inbounds nuw i8, ptr null, i64 %.idx34 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.x, ptr %i.y, align 8, !tbaa !478
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.z, align 8, !tbaa !477
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i: ; preds = %bb.i, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.r, ptr %i.ab, align 8, !tbaa !477
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %i.ad = mul nuw nsw i64 %i.o, 48
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #39
          to label %.noexc25 unwind label %bb.k   ; 4 uses

.noexc25:                                         ; preds = %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !410
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %i.o
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !480
  %xtraiter = and i64 %i.o, 3
  %i.ah = and i32 %4, 3
  %lcmp.mod.not = icmp eq i32 %i.ah, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc25, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.prol ], [ %i.ae, %.noexc25 ] ; 6 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %.noexc25 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc25 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.prol, i8 0, i64 24, i1 false)
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !380
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !381
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 40
  store i64 0, ptr %i.al, align 8, !tbaa !382
  %i.am = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1210

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc25
  %.lcssa.unr = phi ptr [ poison, %.noexc25 ], [ %i.an, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.ae, %.noexc25 ], [ %i.an, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.o, %.noexc25 ], [ %i.am, %.lr.ph.i.i.i.i.i.prol ]
  %i.ao = icmp ult i32 %4, 4
  br i1 %i.ao, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, i8 0, i64 24, i1 false)
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !380
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !381
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.as, align 8, !tbaa !382
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  store ptr %i.au, ptr %i.av, align 8, !tbaa !380
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !381
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 88
  store i64 0, ptr %i.ax, align 8, !tbaa !382
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !380
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !381
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 136
  store i64 0, ptr %i.bc, align 8, !tbaa !382
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 144
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 152 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !380
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 176
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !381
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 184
  store i64 0, ptr %i.bh, align 8, !tbaa !382
  %i.bi = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1211

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bj, %.lr.ph.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bk, align 8, !tbaa !409
  %i.bl = zext i1 %5 to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.bl, ptr %i.bm, align 8, !tbaa !499
  ret void

bb.k:                                             ; preds = %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !479 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i26, label %.body22, label %.body22.sink.split

.body22.sink.split:                               ; preds = %bb.k, %bb.j
  %.sink42 = phi ptr [ %i.w, %bb.j ], [ %i.bo, %bb.k ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.bn, %bb.k ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !478
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %.sink42 to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink42, i64 noundef %i.bt) #36
  br label %.body22

.body22:                                          ; preds = %.body22.sink.split, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.bn, %bb.k ], [ %.pn.ph, %.body22.sink.split ] ; 2 uses
  %i.bu = load ptr, ptr %0, align 8, !tbaa !479   ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i28, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body22, %bb.e
  %.sink49 = phi ptr [ %i.k, %bb.e ], [ %i.bu, %.body22 ] ; 2 uses
  %.pn.pn.ph = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn, %.body22 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !478
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %.sink49 to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink49, i64 noundef %i.bz) #36
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body22, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn, %.body22 ], [ %.pn.pn.ph, %.body.sink.split ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !382
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !100  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !91
  %i.i = load i32, ptr %2, align 4, !tbaa !91
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !100 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4, !tbaa !91     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !91   ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !100 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !1212

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !380
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #40 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !91
  %.pre82 = load i32, ptr %2, align 4, !tbaa !91
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp slt i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4, !tbaa !91     ; 8 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !91   ; 2 uses
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !100 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #40 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !91
  %i.ag = icmp slt i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !524
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !100 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4, !tbaa !91 ; 2 uses
  %i.an = icmp slt i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !100 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !1212

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #40 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !91
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp slt i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp slt i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !100 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #40 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !91
  %i.az = icmp slt i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !524
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !100 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !91 ; 2 uses
  %i.bg = icmp slt i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !100 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !1212

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !380
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #40 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !91
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp slt i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !459  ; 11 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !458    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !470
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 56                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 164703072086692426
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 164703072086692425, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.q, ptr %i.b, align 8, !tbaa !468
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.r, align 8, !tbaa !469
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.p, align 8, !tbaa !532
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = add nsw i64 %1, -1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %i.w = icmp eq i64 %1, 1
  br i1 %i.w, label %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32 ; 2 uses
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  store ptr %i.y, ptr %.08.i.i.i, align 8, !tbaa !468
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i64 1, ptr %i.z, align 8, !tbaa !469
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 8, !tbaa !532
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88 ; 2 uses
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 104
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !468
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  store i64 1, ptr %i.af, align 8, !tbaa !469
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ad, align 8, !tbaa !532
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = add nsw i64 %.057.i.i.i, -2             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.1, label %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1213

_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !459
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.n, %1
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #38
  unreachable

_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 164703072086692425) ; 2 uses
  %i.an = mul nuw nsw i64 %i.am, 56
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #39 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 9 uses
  %xtraiter48 = and i64 %1, 1
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  store i64 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !468
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 1, ptr %i.as, align 8, !tbaa !469
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aq, align 8, !tbaa !532
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.av = add nsw i64 %1, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  br label %.lr.ph.i.i.i30.prol.loopexit

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ap, %_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i30.prol ]
  %i.ax = icmp eq i64 %1, 1
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bk, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 13 uses
  %.057.i.i.i32 = phi i64 [ %i.bj, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 32 ; 2 uses
  store i64 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  store ptr %i.az, ptr %.08.i.i.i31, align 8, !tbaa !468
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  store i64 1, ptr %i.ba, align 8, !tbaa !469
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ay, align 8, !tbaa !532
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 88 ; 2 uses
  store i64 0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 104
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !468
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64
  store i64 1, ptr %i.bg, align 8, !tbaa !469
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.be, align 8, !tbaa !532
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bj = add nsw i64 %.057.i.i.i32, -2           ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 112
  %.not.i.i.i33.1 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i33.1, label %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !1213

_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35, %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.cj, %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35 ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.ci, %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35 ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  %i.bl = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !468, !alias.scope !1219, !noalias !1218 ; 3 uses
  store ptr %i.bl, ptr %.012.i.i.i, align 8, !tbaa !468, !alias.scope !1218, !noalias !1219
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !469, !alias.scope !1219, !noalias !1218 ; 2 uses
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !469, !alias.scope !1218, !noalias !1219
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !466, !alias.scope !1219, !noalias !1218 ; 3 uses
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !467, !alias.scope !1218, !noalias !1219
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !527, !alias.scope !1219, !noalias !1218
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !527, !alias.scope !1218, !noalias !1219
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !tbaa.struct !534, !alias.scope !1220
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 4 uses
  store ptr null, ptr %i.bx, align 8, !tbaa !540, !alias.scope !1218, !noalias !1219
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 4 uses
  %i.bz = icmp eq ptr %i.bl, %i.by
  br i1 %i.bz, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i37
  store ptr %i.bx, ptr %.012.i.i.i, align 8, !tbaa !468, !alias.scope !1218, !noalias !1219
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !540, !alias.scope !1219, !noalias !1218
  store ptr %i.ca, ptr %i.bx, align 8, !tbaa !540, !alias.scope !1218, !noalias !1219
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.i37
  %i.cb = phi ptr [ %i.bx, %bb.e ], [ %i.bl, %.lr.ph.i.i.i37 ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !91, !noalias !1219
  %i.ce = sext i32 %i.cd to i64
  %i.cf = urem i64 %i.ce, %i.bo
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cf
  store ptr %i.bp, ptr %i.cg, align 8, !tbaa !528, !noalias !1219
  br label %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  store i64 0, ptr %i.ch, align 8, !tbaa !541, !alias.scope !1219, !noalias !1218
  store i64 1, ptr %i.bn, align 8, !tbaa !469, !alias.scope !1219, !noalias !1218
  store ptr %i.by, ptr %.0911.i.i.i, align 8, !tbaa !468, !alias.scope !1219, !noalias !1218
  store i64 0, ptr %i.by, align 8, !alias.scope !1219, !noalias !1218
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false), !alias.scope !1219, !noalias !1218
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %.not.i.i.i38 = icmp eq ptr %i.ci, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit, label %.lr.ph.i.i.i37, !llvm.loop !1217

_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit: ; preds = %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE13_M_deallocateEPSD_m.exit41, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit
  %i.ck = load ptr, ptr %i.h, align 8, !tbaa !470
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %i.cl, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cm) #36
  br label %_ZNSt12_Vector_baseISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE13_M_deallocateEPSD_m.exit41

_ZNSt12_Vector_baseISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE13_M_deallocateEPSD_m.exit41: ; preds = %_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit, %bb.h
  store ptr %i.ao, ptr %0, align 8, !tbaa !458
  %i.cn = getelementptr inbounds nuw [56 x i8], ptr %i.ap, i64 %1
  store ptr %i.cn, ptr %i.a, align 8, !tbaa !459
  %i.co = getelementptr inbounds nuw [56 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.co, ptr %i.h, align 8, !tbaa !470
  br label %bb.i

bb.i:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE13_M_deallocateEPSD_m.exit41, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4hashIiESt8equal_toIiESaISt4pairIKiS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !466  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !467 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #36
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !468
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !469
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !468    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !469
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #36
  br label %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !541
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !469
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !527
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #35 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !541
  invoke void @__cxa_rethrow() #38
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #37
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !469
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !468    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !528  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !467
  store ptr %i.w, ptr %3, align 8, !tbaa !467
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !528
  store ptr %3, ptr %i.x, align 8, !tbaa !467
  br label %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !466
  store ptr %i.z, ptr %3, align 8, !tbaa !467
end_hunk_0
begin_hunk_1_@_ZN3g2o11BlockSolverINS_17BlockSolverTraitsILi3ELi2EEEE10deallocateEv:bb.a

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEEESt14default_deleteIS5_EE5resetEPS5_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !646 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !647 ; 2 uses
  %.not4.i.i.i.i.i.i.i12 = icmp eq ptr %i.ar, %i.at
  br i1 %.not4.i.i.i.i.i.i.i12, label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i13

.lr.ph.i.i.i.i.i.i.i13:                           ; preds = %bb.i, %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i14 = phi ptr [ %i.ba, %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.ar, %bb.i ] ; 3 uses
  %i.au = load ptr, ptr %.05.i.i.i.i.i.i.i14, align 8, !tbaa !650 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i15 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i15, label %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i13
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i14, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !651
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #36
  br label %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i13
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i14, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i16 = icmp eq ptr %i.ba, %i.at
  br i1 %.not.i.i.i.i.i.i.i16, label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i13, !llvm.loop !30

_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i17 = load ptr, ptr %i.aq, align 8, !tbaa !646
  br label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %bb.i
  %i.bb = phi ptr [ %.pr.i.i.i.i.i17, %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.ar, %bb.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i18 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i1.i.i.i.i.i18, label %_ZNKSt14default_deleteIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEEEclEPS5_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !652
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #36
  br label %_ZNKSt14default_deleteIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEEEclEPS5_.exit.i.i: ; preds = %bb.k, %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 40) #36
  br label %_ZNSt10unique_ptrIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEESt14default_deleteIS5_EE5resetEPS5_.exit

_ZNSt10unique_ptrIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEESt14default_deleteIS5_EE5resetEPS5_.exit: ; preds = %_ZNSt10unique_ptrIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEEESt14default_deleteIS5_EE5resetEPS5_.exit, %_ZNKSt14default_deleteIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEEEclEPS5_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEC2EPKiS6_iib(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %3 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.idx = shl nsw i64 %i.a, 2                     ; 6 uses
  %i.b = icmp ugt i64 %.idx, 9223372036854775804
  br i1 %i.b, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #38
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.c = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !478
  br label %bb.f

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.e = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #39
          to label %.noexc4.i unwind label %bb.e  ; 4 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  store ptr %i.e, ptr %0, align 8, !tbaa !479
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !478
  %i.h = icmp samesign ugt i64 %.idx, 4
  br i1 %i.h, label %bb.c, label %bb.d, !prof !539

bb.c:                                             ; preds = %.noexc4.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.e, ptr align 4 %1, i64 %.idx, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc4.i
  %i.i = load i32, ptr %1, align 4, !tbaa !91
  store i32 %i.i, ptr %i.e, align 4, !tbaa !91
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !479    ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i5.i, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %bb.d, %bb.c, %.thread.i.i
  %i.l = phi ptr [ %i.f, %bb.c ], [ %i.c, %.thread.i.i ], [ %i.f, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !477
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = sext i32 %4 to i64                       ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %.idx34 = shl nsw i64 %i.o, 2                   ; 6 uses
  %i.p = icmp ugt i64 %.idx34, 9223372036854775804
  br i1 %i.p, label %bb.g, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #38
          to label %.noexc.i21 unwind label %bb.j

.noexc.i21:                                       ; preds = %bb.g
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14: ; preds = %bb.f
  %.not.i.i.i15 = icmp eq i32 %4, 0
  br i1 %.not.i.i.i15, label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx34) #39
          to label %.noexc4.i19 unwind label %bb.j ; 4 uses

.noexc4.i19:                                      ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16
  store ptr %i.q, ptr %i.n, align 8, !tbaa !479
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx34 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.r, ptr %i.s, align 8, !tbaa !478
  %i.t = icmp samesign ugt i64 %.idx34, 4
  br i1 %i.t, label %bb.h, label %bb.i, !prof !539

bb.h:                                             ; preds = %.noexc4.i19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %2, i64 %.idx34, i1 false)
  br label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i

bb.i:                                             ; preds = %.noexc4.i19
  %i.u = load i32, ptr %2, align 4, !tbaa !91
  store i32 %i.u, ptr %i.q, align 4, !tbaa !91
  br label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !479  ; 2 uses
  %.not.i.i5.i17 = icmp eq ptr %i.w, null
  br i1 %.not.i.i5.i17, label %.body22, label %.body22.sink.split

_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14
  %i.x = getelementptr inbounds nuw i8, ptr null, i64 %.idx34 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.x, ptr %i.y, align 8, !tbaa !478
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.z, align 8, !tbaa !477
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i: ; preds = %bb.i, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.r, ptr %i.ab, align 8, !tbaa !477
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %i.ad = mul nuw nsw i64 %i.o, 48
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #39
          to label %.noexc25 unwind label %bb.k   ; 4 uses

.noexc25:                                         ; preds = %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !674
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %i.o
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !709
  %xtraiter = and i64 %i.o, 3
  %i.ah = and i32 %4, 3
  %lcmp.mod.not = icmp eq i32 %i.ah, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc25, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.prol ], [ %i.ae, %.noexc25 ] ; 6 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %.noexc25 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc25 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.prol, i8 0, i64 24, i1 false)
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !380
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !381
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 40
  store i64 0, ptr %i.al, align 8, !tbaa !382
  %i.am = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2176

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc25
  %.lcssa.unr = phi ptr [ poison, %.noexc25 ], [ %i.an, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.ae, %.noexc25 ], [ %i.an, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.o, %.noexc25 ], [ %i.am, %.lr.ph.i.i.i.i.i.prol ]
  %i.ao = icmp ult i32 %4, 4
  br i1 %i.ao, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, i8 0, i64 24, i1 false)
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !380
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !381
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.as, align 8, !tbaa !382
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  store ptr %i.au, ptr %i.av, align 8, !tbaa !380
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !381
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 88
  store i64 0, ptr %i.ax, align 8, !tbaa !382
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !380
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !381
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 136
  store i64 0, ptr %i.bc, align 8, !tbaa !382
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 144
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 152 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !380
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 176
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !381
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 184
  store i64 0, ptr %i.bh, align 8, !tbaa !382
  %i.bi = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2177

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bj, %.lr.ph.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bk, align 8, !tbaa !673
  %i.bl = zext i1 %5 to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.bl, ptr %i.bm, align 8, !tbaa !714
  ret void

bb.k:                                             ; preds = %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !479 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i26, label %.body22, label %.body22.sink.split

.body22.sink.split:                               ; preds = %bb.k, %bb.j
  %.sink42 = phi ptr [ %i.w, %bb.j ], [ %i.bo, %bb.k ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.bn, %bb.k ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !478
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %.sink42 to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink42, i64 noundef %i.bt) #36
  br label %.body22

.body22:                                          ; preds = %.body22.sink.split, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.bn, %bb.k ], [ %.pn.ph, %.body22.sink.split ] ; 2 uses
  %i.bu = load ptr, ptr %0, align 8, !tbaa !479   ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i28, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body22, %bb.e
  %.sink49 = phi ptr [ %i.k, %bb.e ], [ %i.bu, %.body22 ] ; 2 uses
  %.pn.pn.ph = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn, %.body22 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !478
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %.sink49 to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink49, i64 noundef %i.bz) #36
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body22, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn, %.body22 ], [ %.pn.pn.ph, %.body.sink.split ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEEEC2EPKiS6_iib(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %3 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.idx = shl nsw i64 %i.a, 2                     ; 6 uses
  %i.b = icmp ugt i64 %.idx, 9223372036854775804
  br i1 %i.b, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #38
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.c = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !478
  br label %bb.f

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.e = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #39
          to label %.noexc4.i unwind label %bb.e  ; 4 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  store ptr %i.e, ptr %0, align 8, !tbaa !479
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !478
  %i.h = icmp samesign ugt i64 %.idx, 4
  br i1 %i.h, label %bb.c, label %bb.d, !prof !539

bb.c:                                             ; preds = %.noexc4.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.e, ptr align 4 %1, i64 %.idx, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc4.i
  %i.i = load i32, ptr %1, align 4, !tbaa !91
  store i32 %i.i, ptr %i.e, align 4, !tbaa !91
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !479    ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i5.i, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %bb.d, %bb.c, %.thread.i.i
  %i.l = phi ptr [ %i.f, %bb.c ], [ %i.c, %.thread.i.i ], [ %i.f, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !477
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = sext i32 %4 to i64                       ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %.idx34 = shl nsw i64 %i.o, 2                   ; 6 uses
  %i.p = icmp ugt i64 %.idx34, 9223372036854775804
  br i1 %i.p, label %bb.g, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #38
          to label %.noexc.i21 unwind label %bb.j

.noexc.i21:                                       ; preds = %bb.g
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14: ; preds = %bb.f
  %.not.i.i.i15 = icmp eq i32 %4, 0
  br i1 %.not.i.i.i15, label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx34) #39
          to label %.noexc4.i19 unwind label %bb.j ; 4 uses

.noexc4.i19:                                      ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16
  store ptr %i.q, ptr %i.n, align 8, !tbaa !479
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx34 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.r, ptr %i.s, align 8, !tbaa !478
  %i.t = icmp samesign ugt i64 %.idx34, 4
  br i1 %i.t, label %bb.h, label %bb.i, !prof !539

bb.h:                                             ; preds = %.noexc4.i19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %2, i64 %.idx34, i1 false)
  br label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i

bb.i:                                             ; preds = %.noexc4.i19
  %i.u = load i32, ptr %2, align 4, !tbaa !91
  store i32 %i.u, ptr %i.q, align 4, !tbaa !91
  br label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !479  ; 2 uses
  %.not.i.i5.i17 = icmp eq ptr %i.w, null
  br i1 %.not.i.i5.i17, label %.body22, label %.body22.sink.split

_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14
  %i.x = getelementptr inbounds nuw i8, ptr null, i64 %.idx34 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.x, ptr %i.y, align 8, !tbaa !478
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.z, align 8, !tbaa !477
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i: ; preds = %bb.i, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.r, ptr %i.ab, align 8, !tbaa !477
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %i.ad = mul nuw nsw i64 %i.o, 48
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #39
          to label %.noexc25 unwind label %bb.k   ; 4 uses

.noexc25:                                         ; preds = %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !687
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %i.o
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !730
  %xtraiter = and i64 %i.o, 3
  %i.ah = and i32 %4, 3
  %lcmp.mod.not = icmp eq i32 %i.ah, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc25, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.prol ], [ %i.ae, %.noexc25 ] ; 6 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %.noexc25 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc25 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.prol, i8 0, i64 24, i1 false)
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !380
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !381
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 40
  store i64 0, ptr %i.al, align 8, !tbaa !382
  %i.am = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2178

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc25
  %.lcssa.unr = phi ptr [ poison, %.noexc25 ], [ %i.an, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.ae, %.noexc25 ], [ %i.an, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.o, %.noexc25 ], [ %i.am, %.lr.ph.i.i.i.i.i.prol ]
  %i.ao = icmp ult i32 %4, 4
  br i1 %i.ao, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, i8 0, i64 24, i1 false)
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !380
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !381
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.as, align 8, !tbaa !382
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  store ptr %i.au, ptr %i.av, align 8, !tbaa !380
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !381
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 88
  store i64 0, ptr %i.ax, align 8, !tbaa !382
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !380
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !381
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 136
  store i64 0, ptr %i.bc, align 8, !tbaa !382
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 144
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 152 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !380
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 176
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !381
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 184
  store i64 0, ptr %i.bh, align 8, !tbaa !382
  %i.bi = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2179

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bj, %.lr.ph.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bk, align 8, !tbaa !686
  %i.bl = zext i1 %5 to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.bl, ptr %i.bm, align 8, !tbaa !729
  ret void

bb.k:                                             ; preds = %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !479 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i26, label %.body22, label %.body22.sink.split

.body22.sink.split:                               ; preds = %bb.k, %bb.j
  %.sink42 = phi ptr [ %i.w, %bb.j ], [ %i.bo, %bb.k ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.bn, %bb.k ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !478
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %.sink42 to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink42, i64 noundef %i.bt) #36
  br label %.body22

.body22:                                          ; preds = %.body22.sink.split, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.bn, %bb.k ], [ %.pn.ph, %.body22.sink.split ] ; 2 uses
  %i.bu = load ptr, ptr %0, align 8, !tbaa !479   ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i28, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body22, %bb.e
  %.sink49 = phi ptr [ %i.k, %bb.e ], [ %i.bu, %.body22 ] ; 2 uses
  %.pn.pn.ph = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn, %.body22 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !478
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %.sink49 to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink49, i64 noundef %i.bz) #36
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body22, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn, %.body22 ], [ %.pn.pn.ph, %.body.sink.split ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEEC2EPKiS6_iib(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %3 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.idx = shl nsw i64 %i.a, 2                     ; 6 uses
  %i.b = icmp ugt i64 %.idx, 9223372036854775804
  br i1 %i.b, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #38
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.c = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !478
  br label %bb.f

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.e = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #39
          to label %.noexc4.i unwind label %bb.e  ; 4 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  store ptr %i.e, ptr %0, align 8, !tbaa !479
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !478
  %i.h = icmp samesign ugt i64 %.idx, 4
  br i1 %i.h, label %bb.c, label %bb.d, !prof !539

bb.c:                                             ; preds = %.noexc4.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.e, ptr align 4 %1, i64 %.idx, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc4.i
  %i.i = load i32, ptr %1, align 4, !tbaa !91
  store i32 %i.i, ptr %i.e, align 4, !tbaa !91
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !479    ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i5.i, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %bb.d, %bb.c, %.thread.i.i
  %i.l = phi ptr [ %i.f, %bb.c ], [ %i.c, %.thread.i.i ], [ %i.f, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !477
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = sext i32 %4 to i64                       ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %.idx34 = shl nsw i64 %i.o, 2                   ; 6 uses
  %i.p = icmp ugt i64 %.idx34, 9223372036854775804
  br i1 %i.p, label %bb.g, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #38
          to label %.noexc.i21 unwind label %bb.j

.noexc.i21:                                       ; preds = %bb.g
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14: ; preds = %bb.f
  %.not.i.i.i15 = icmp eq i32 %4, 0
  br i1 %.not.i.i.i15, label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx34) #39
          to label %.noexc4.i19 unwind label %bb.j ; 4 uses

.noexc4.i19:                                      ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16
  store ptr %i.q, ptr %i.n, align 8, !tbaa !479
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx34 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.r, ptr %i.s, align 8, !tbaa !478
  %i.t = icmp samesign ugt i64 %.idx34, 4
  br i1 %i.t, label %bb.h, label %bb.i, !prof !539

bb.h:                                             ; preds = %.noexc4.i19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %2, i64 %.idx34, i1 false)
  br label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i

bb.i:                                             ; preds = %.noexc4.i19
  %i.u = load i32, ptr %2, align 4, !tbaa !91
  store i32 %i.u, ptr %i.q, align 4, !tbaa !91
  br label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !479  ; 2 uses
  %.not.i.i5.i17 = icmp eq ptr %i.w, null
  br i1 %.not.i.i5.i17, label %.body22, label %.body22.sink.split

_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14
  %i.x = getelementptr inbounds nuw i8, ptr null, i64 %.idx34 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.x, ptr %i.y, align 8, !tbaa !478
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.z, align 8, !tbaa !477
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i: ; preds = %bb.i, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.r, ptr %i.ab, align 8, !tbaa !477
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %i.ad = mul nuw nsw i64 %i.o, 48
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #39
          to label %.noexc25 unwind label %bb.k   ; 4 uses

.noexc25:                                         ; preds = %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !680
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %i.o
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !724
  %xtraiter = and i64 %i.o, 3
  %i.ah = and i32 %4, 3
  %lcmp.mod.not = icmp eq i32 %i.ah, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc25, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.prol ], [ %i.ae, %.noexc25 ] ; 6 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %.noexc25 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc25 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.prol, i8 0, i64 24, i1 false)
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !380
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !381
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 40
  store i64 0, ptr %i.al, align 8, !tbaa !382
  %i.am = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2180

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc25
  %.lcssa.unr = phi ptr [ poison, %.noexc25 ], [ %i.an, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.ae, %.noexc25 ], [ %i.an, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.o, %.noexc25 ], [ %i.am, %.lr.ph.i.i.i.i.i.prol ]
  %i.ao = icmp ult i32 %4, 4
  br i1 %i.ao, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, i8 0, i64 24, i1 false)
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !380
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !381
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.as, align 8, !tbaa !382
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  store ptr %i.au, ptr %i.av, align 8, !tbaa !380
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !381
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 88
  store i64 0, ptr %i.ax, align 8, !tbaa !382
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !380
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !381
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 136
  store i64 0, ptr %i.bc, align 8, !tbaa !382
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 144
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 152 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !380
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 176
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !381
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 184
  store i64 0, ptr %i.bh, align 8, !tbaa !382
  %i.bi = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2181

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bj, %.lr.ph.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bk, align 8, !tbaa !679
  %i.bl = zext i1 %5 to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.bl, ptr %i.bm, align 8, !tbaa !723
  ret void

bb.k:                                             ; preds = %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !479 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i26, label %.body22, label %.body22.sink.split

.body22.sink.split:                               ; preds = %bb.k, %bb.j
  %.sink42 = phi ptr [ %i.w, %bb.j ], [ %i.bo, %bb.k ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.bn, %bb.k ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !478
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %.sink42 to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink42, i64 noundef %i.bt) #36
  br label %.body22

.body22:                                          ; preds = %.body22.sink.split, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.bn, %bb.k ], [ %.pn.ph, %.body22.sink.split ] ; 2 uses
  %i.bu = load ptr, ptr %0, align 8, !tbaa !479   ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i28, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body22, %bb.e
  %.sink49 = phi ptr [ %i.k, %bb.e ], [ %i.bu, %.body22 ] ; 2 uses
  %.pn.pn.ph = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn, %.body22 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !478
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %.sink49 to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink49, i64 noundef %i.bz) #36
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body22, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn, %.body22 ], [ %.pn.pn.ph, %.body.sink.split ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !382
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !100  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !91
  %i.i = load i32, ptr %2, align 4, !tbaa !91
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !100 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4, !tbaa !91     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !91   ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !100 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !2182

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !380
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #40 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !91
  %.pre82 = load i32, ptr %2, align 4, !tbaa !91
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp slt i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4, !tbaa !91     ; 8 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !91   ; 2 uses
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !100 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #40 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !91
  %i.ag = icmp slt i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !524
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !100 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4, !tbaa !91 ; 2 uses
  %i.an = icmp slt i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !100 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !2182

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #40 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !91
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp slt i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp slt i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !100 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_:bb.a
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !100 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4, !tbaa !91 ; 2 uses
  %i.an = icmp slt i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !100 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !2183

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #40 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !91
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp slt i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp slt i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !100 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #40 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !91
  %i.az = icmp slt i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !524
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !100 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !91 ; 2 uses
  %i.bg = icmp slt i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !100 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !2183

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !380
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #40 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !91
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp slt i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !707  ; 11 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !697    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !708
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 56                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 164703072086692426
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 164703072086692425, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.q, ptr %i.b, align 8, !tbaa !701
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.r, align 8, !tbaa !700
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.p, align 8, !tbaa !532
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = add nsw i64 %1, -1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %i.w = icmp eq i64 %1, 1
  br i1 %i.w, label %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32 ; 2 uses
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  store ptr %i.y, ptr %.08.i.i.i, align 8, !tbaa !701
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i64 1, ptr %i.z, align 8, !tbaa !700
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 8, !tbaa !532
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88 ; 2 uses
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 104
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !701
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  store i64 1, ptr %i.af, align 8, !tbaa !700
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ad, align 8, !tbaa !532
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = add nsw i64 %.057.i.i.i, -2             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.1, label %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !2184

_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !707
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.n, %1
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #38
  unreachable

_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 164703072086692425) ; 2 uses
  %i.an = mul nuw nsw i64 %i.am, 56
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #39 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 9 uses
  %xtraiter48 = and i64 %1, 1
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  store i64 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !701
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 1, ptr %i.as, align 8, !tbaa !700
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aq, align 8, !tbaa !532
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.av = add nsw i64 %1, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  br label %.lr.ph.i.i.i30.prol.loopexit

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ap, %_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i30.prol ]
  %i.ax = icmp eq i64 %1, 1
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bk, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 13 uses
  %.057.i.i.i32 = phi i64 [ %i.bj, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 32 ; 2 uses
  store i64 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  store ptr %i.az, ptr %.08.i.i.i31, align 8, !tbaa !701
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  store i64 1, ptr %i.ba, align 8, !tbaa !700
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ay, align 8, !tbaa !532
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 88 ; 2 uses
  store i64 0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 104
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !701
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64
  store i64 1, ptr %i.bg, align 8, !tbaa !700
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.be, align 8, !tbaa !532
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bj = add nsw i64 %.057.i.i.i32, -2           ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 112
  %.not.i.i.i33.1 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i33.1, label %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !2184

_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35, %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.cj, %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35 ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.ci, %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35 ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2190)
  %i.bl = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !701, !alias.scope !2190, !noalias !2189 ; 3 uses
  store ptr %i.bl, ptr %.012.i.i.i, align 8, !tbaa !701, !alias.scope !2189, !noalias !2190
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !700, !alias.scope !2190, !noalias !2189 ; 2 uses
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !700, !alias.scope !2189, !noalias !2190
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !703, !alias.scope !2190, !noalias !2189 ; 3 uses
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !467, !alias.scope !2189, !noalias !2190
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !699, !alias.scope !2190, !noalias !2189
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !699, !alias.scope !2189, !noalias !2190
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !tbaa.struct !534, !alias.scope !2191
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 4 uses
  store ptr null, ptr %i.bx, align 8, !tbaa !702, !alias.scope !2189, !noalias !2190
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 4 uses
  %i.bz = icmp eq ptr %i.bl, %i.by
  br i1 %i.bz, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i37
  store ptr %i.bx, ptr %.012.i.i.i, align 8, !tbaa !701, !alias.scope !2189, !noalias !2190
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !702, !alias.scope !2190, !noalias !2189
  store ptr %i.ca, ptr %i.bx, align 8, !tbaa !702, !alias.scope !2189, !noalias !2190
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.i37
  %i.cb = phi ptr [ %i.bx, %bb.e ], [ %i.bl, %.lr.ph.i.i.i37 ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !91, !noalias !2190
  %i.ce = sext i32 %i.cd to i64
  %i.cf = urem i64 %i.ce, %i.bo
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cf
  store ptr %i.bp, ptr %i.cg, align 8, !tbaa !528, !noalias !2190
  br label %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  store i64 0, ptr %i.ch, align 8, !tbaa !541, !alias.scope !2190, !noalias !2189
  store i64 1, ptr %i.bn, align 8, !tbaa !700, !alias.scope !2190, !noalias !2189
  store ptr %i.by, ptr %.0911.i.i.i, align 8, !tbaa !701, !alias.scope !2190, !noalias !2189
  store i64 0, ptr %i.by, align 8, !alias.scope !2190, !noalias !2189
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false), !alias.scope !2190, !noalias !2189
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %.not.i.i.i38 = icmp eq ptr %i.ci, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit, label %.lr.ph.i.i.i37, !llvm.loop !2188

_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit: ; preds = %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE13_M_deallocateEPSD_m.exit41, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit
  %i.ck = load ptr, ptr %i.h, align 8, !tbaa !708
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %i.cl, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cm) #36
  br label %_ZNSt12_Vector_baseISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE13_M_deallocateEPSD_m.exit41

_ZNSt12_Vector_baseISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE13_M_deallocateEPSD_m.exit41: ; preds = %_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit, %bb.h
  store ptr %i.ao, ptr %0, align 8, !tbaa !697
  %i.cn = getelementptr inbounds nuw [56 x i8], ptr %i.ap, i64 %1
  store ptr %i.cn, ptr %i.a, align 8, !tbaa !707
  %i.co = getelementptr inbounds nuw [56 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.co, ptr %i.h, align 8, !tbaa !708
  br label %bb.i

bb.i:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE13_M_deallocateEPSD_m.exit41, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESt4hashIiESt8equal_toIiESaISt4pairIKiS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !703  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !467 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #36
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !40

_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !701
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !700
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !701    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !700
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #36
  br label %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !382
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !100  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !91
  %i.i = load i32, ptr %2, align 4, !tbaa !91
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !100 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4, !tbaa !91     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !91   ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !100 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !2192

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !380
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #40 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !91
  %.pre82 = load i32, ptr %2, align 4, !tbaa !91
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp slt i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_2
begin_hunk_3_@_ZN3g2o11BlockSolverINS_17BlockSolverTraitsILi6ELi3EEEE10deallocateEv:bb.a

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEEESt14default_deleteIS5_EE5resetEPS5_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !748 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !749 ; 2 uses
  %.not4.i.i.i.i.i.i.i12 = icmp eq ptr %i.ar, %i.at
  br i1 %.not4.i.i.i.i.i.i.i12, label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i13

.lr.ph.i.i.i.i.i.i.i13:                           ; preds = %bb.i, %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i14 = phi ptr [ %i.ba, %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.ar, %bb.i ] ; 3 uses
  %i.au = load ptr, ptr %.05.i.i.i.i.i.i.i14, align 8, !tbaa !752 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i15 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i15, label %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i13
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i14, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !753
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #36
  br label %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i13
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i14, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i16 = icmp eq ptr %i.ba, %i.at
  br i1 %.not.i.i.i.i.i.i.i16, label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i13, !llvm.loop !44

_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i17 = load ptr, ptr %i.aq, align 8, !tbaa !748
  br label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %bb.i
  %i.bb = phi ptr [ %.pr.i.i.i.i.i17, %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.ar, %bb.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i18 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i1.i.i.i.i.i18, label %_ZNKSt14default_deleteIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEEEclEPS5_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !754
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #36
  br label %_ZNKSt14default_deleteIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEEEclEPS5_.exit.i.i: ; preds = %bb.k, %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 40) #36
  br label %_ZNSt10unique_ptrIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEESt14default_deleteIS5_EE5resetEPS5_.exit

_ZNSt10unique_ptrIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEESt14default_deleteIS5_EE5resetEPS5_.exit: ; preds = %_ZNSt10unique_ptrIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEEESt14default_deleteIS5_EE5resetEPS5_.exit, %_ZNKSt14default_deleteIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEEEclEPS5_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEC2EPKiS6_iib(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %3 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.idx = shl nsw i64 %i.a, 2                     ; 6 uses
  %i.b = icmp ugt i64 %.idx, 9223372036854775804
  br i1 %i.b, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #38
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.c = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !478
  br label %bb.f

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.e = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #39
          to label %.noexc4.i unwind label %bb.e  ; 4 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  store ptr %i.e, ptr %0, align 8, !tbaa !479
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !478
  %i.h = icmp samesign ugt i64 %.idx, 4
  br i1 %i.h, label %bb.c, label %bb.d, !prof !539

bb.c:                                             ; preds = %.noexc4.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.e, ptr align 4 %1, i64 %.idx, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc4.i
  %i.i = load i32, ptr %1, align 4, !tbaa !91
  store i32 %i.i, ptr %i.e, align 4, !tbaa !91
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !479    ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i5.i, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %bb.d, %bb.c, %.thread.i.i
  %i.l = phi ptr [ %i.f, %bb.c ], [ %i.c, %.thread.i.i ], [ %i.f, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !477
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = sext i32 %4 to i64                       ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %.idx34 = shl nsw i64 %i.o, 2                   ; 6 uses
  %i.p = icmp ugt i64 %.idx34, 9223372036854775804
  br i1 %i.p, label %bb.g, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #38
          to label %.noexc.i21 unwind label %bb.j

.noexc.i21:                                       ; preds = %bb.g
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14: ; preds = %bb.f
  %.not.i.i.i15 = icmp eq i32 %4, 0
  br i1 %.not.i.i.i15, label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx34) #39
          to label %.noexc4.i19 unwind label %bb.j ; 4 uses

.noexc4.i19:                                      ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16
  store ptr %i.q, ptr %i.n, align 8, !tbaa !479
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx34 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.r, ptr %i.s, align 8, !tbaa !478
  %i.t = icmp samesign ugt i64 %.idx34, 4
  br i1 %i.t, label %bb.h, label %bb.i, !prof !539

bb.h:                                             ; preds = %.noexc4.i19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %2, i64 %.idx34, i1 false)
  br label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i

bb.i:                                             ; preds = %.noexc4.i19
  %i.u = load i32, ptr %2, align 4, !tbaa !91
  store i32 %i.u, ptr %i.q, align 4, !tbaa !91
  br label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !479  ; 2 uses
  %.not.i.i5.i17 = icmp eq ptr %i.w, null
  br i1 %.not.i.i5.i17, label %.body22, label %.body22.sink.split

_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14
  %i.x = getelementptr inbounds nuw i8, ptr null, i64 %.idx34 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.x, ptr %i.y, align 8, !tbaa !478
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.z, align 8, !tbaa !477
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i: ; preds = %bb.i, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.r, ptr %i.ab, align 8, !tbaa !477
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %i.ad = mul nuw nsw i64 %i.o, 48
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #39
          to label %.noexc25 unwind label %bb.k   ; 4 uses

.noexc25:                                         ; preds = %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !771
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %i.o
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !799
  %xtraiter = and i64 %i.o, 3
  %i.ah = and i32 %4, 3
  %lcmp.mod.not = icmp eq i32 %i.ah, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc25, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.prol ], [ %i.ae, %.noexc25 ] ; 6 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %.noexc25 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc25 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.prol, i8 0, i64 24, i1 false)
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !380
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !381
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 40
  store i64 0, ptr %i.al, align 8, !tbaa !382
  %i.am = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2458

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc25
  %.lcssa.unr = phi ptr [ poison, %.noexc25 ], [ %i.an, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.ae, %.noexc25 ], [ %i.an, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.o, %.noexc25 ], [ %i.am, %.lr.ph.i.i.i.i.i.prol ]
  %i.ao = icmp ult i32 %4, 4
  br i1 %i.ao, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, i8 0, i64 24, i1 false)
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !380
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !381
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.as, align 8, !tbaa !382
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  store ptr %i.au, ptr %i.av, align 8, !tbaa !380
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !381
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 88
  store i64 0, ptr %i.ax, align 8, !tbaa !382
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !380
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !381
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 136
  store i64 0, ptr %i.bc, align 8, !tbaa !382
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 144
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 152 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !380
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 176
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !381
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 184
  store i64 0, ptr %i.bh, align 8, !tbaa !382
  %i.bi = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2459

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bj, %.lr.ph.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bk, align 8, !tbaa !770
  %i.bl = zext i1 %5 to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.bl, ptr %i.bm, align 8, !tbaa !804
  ret void

bb.k:                                             ; preds = %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !479 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i26, label %.body22, label %.body22.sink.split

.body22.sink.split:                               ; preds = %bb.k, %bb.j
  %.sink42 = phi ptr [ %i.w, %bb.j ], [ %i.bo, %bb.k ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.bn, %bb.k ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !478
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %.sink42 to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink42, i64 noundef %i.bt) #36
  br label %.body22

.body22:                                          ; preds = %.body22.sink.split, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.bn, %bb.k ], [ %.pn.ph, %.body22.sink.split ] ; 2 uses
  %i.bu = load ptr, ptr %0, align 8, !tbaa !479   ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i28, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body22, %bb.e
  %.sink49 = phi ptr [ %i.k, %bb.e ], [ %i.bu, %.body22 ] ; 2 uses
  %.pn.pn.ph = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn, %.body22 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !478
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %.sink49 to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink49, i64 noundef %i.bz) #36
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body22, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn, %.body22 ], [ %.pn.pn.ph, %.body.sink.split ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEEC2EPKiS6_iib(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %3 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.idx = shl nsw i64 %i.a, 2                     ; 6 uses
  %i.b = icmp ugt i64 %.idx, 9223372036854775804
  br i1 %i.b, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #38
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.c = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !478
  br label %bb.f

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.e = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #39
          to label %.noexc4.i unwind label %bb.e  ; 4 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  store ptr %i.e, ptr %0, align 8, !tbaa !479
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !478
  %i.h = icmp samesign ugt i64 %.idx, 4
  br i1 %i.h, label %bb.c, label %bb.d, !prof !539

bb.c:                                             ; preds = %.noexc4.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.e, ptr align 4 %1, i64 %.idx, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc4.i
  %i.i = load i32, ptr %1, align 4, !tbaa !91
  store i32 %i.i, ptr %i.e, align 4, !tbaa !91
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !479    ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i5.i, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %bb.d, %bb.c, %.thread.i.i
  %i.l = phi ptr [ %i.f, %bb.c ], [ %i.c, %.thread.i.i ], [ %i.f, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !477
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = sext i32 %4 to i64                       ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %.idx34 = shl nsw i64 %i.o, 2                   ; 6 uses
  %i.p = icmp ugt i64 %.idx34, 9223372036854775804
  br i1 %i.p, label %bb.g, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #38
          to label %.noexc.i21 unwind label %bb.j

.noexc.i21:                                       ; preds = %bb.g
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14: ; preds = %bb.f
  %.not.i.i.i15 = icmp eq i32 %4, 0
  br i1 %.not.i.i.i15, label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx34) #39
          to label %.noexc4.i19 unwind label %bb.j ; 4 uses

.noexc4.i19:                                      ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16
  store ptr %i.q, ptr %i.n, align 8, !tbaa !479
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx34 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.r, ptr %i.s, align 8, !tbaa !478
  %i.t = icmp samesign ugt i64 %.idx34, 4
  br i1 %i.t, label %bb.h, label %bb.i, !prof !539

bb.h:                                             ; preds = %.noexc4.i19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %2, i64 %.idx34, i1 false)
  br label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i

bb.i:                                             ; preds = %.noexc4.i19
  %i.u = load i32, ptr %2, align 4, !tbaa !91
  store i32 %i.u, ptr %i.q, align 4, !tbaa !91
  br label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !479  ; 2 uses
  %.not.i.i5.i17 = icmp eq ptr %i.w, null
  br i1 %.not.i.i5.i17, label %.body22, label %.body22.sink.split

_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14
  %i.x = getelementptr inbounds nuw i8, ptr null, i64 %.idx34 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.x, ptr %i.y, align 8, !tbaa !478
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.z, align 8, !tbaa !477
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i: ; preds = %bb.i, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.r, ptr %i.ab, align 8, !tbaa !477
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %i.ad = mul nuw nsw i64 %i.o, 48
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #39
          to label %.noexc25 unwind label %bb.k   ; 4 uses

.noexc25:                                         ; preds = %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !777
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %i.o
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !812
  %xtraiter = and i64 %i.o, 3
  %i.ah = and i32 %4, 3
  %lcmp.mod.not = icmp eq i32 %i.ah, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc25, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.prol ], [ %i.ae, %.noexc25 ] ; 6 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %.noexc25 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc25 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.prol, i8 0, i64 24, i1 false)
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !380
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !381
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 40
  store i64 0, ptr %i.al, align 8, !tbaa !382
  %i.am = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2460

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc25
  %.lcssa.unr = phi ptr [ poison, %.noexc25 ], [ %i.an, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.ae, %.noexc25 ], [ %i.an, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.o, %.noexc25 ], [ %i.am, %.lr.ph.i.i.i.i.i.prol ]
  %i.ao = icmp ult i32 %4, 4
  br i1 %i.ao, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, i8 0, i64 24, i1 false)
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !380
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !381
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.as, align 8, !tbaa !382
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  store ptr %i.au, ptr %i.av, align 8, !tbaa !380
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !381
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 88
  store i64 0, ptr %i.ax, align 8, !tbaa !382
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !380
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !381
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 136
  store i64 0, ptr %i.bc, align 8, !tbaa !382
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 144
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 152 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !380
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 176
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !381
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 184
  store i64 0, ptr %i.bh, align 8, !tbaa !382
  %i.bi = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2461

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bj, %.lr.ph.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bk, align 8, !tbaa !776
  %i.bl = zext i1 %5 to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.bl, ptr %i.bm, align 8, !tbaa !811
  ret void

bb.k:                                             ; preds = %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !479 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i26, label %.body22, label %.body22.sink.split

.body22.sink.split:                               ; preds = %bb.k, %bb.j
  %.sink42 = phi ptr [ %i.w, %bb.j ], [ %i.bo, %bb.k ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.bn, %bb.k ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !478
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %.sink42 to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink42, i64 noundef %i.bt) #36
  br label %.body22

.body22:                                          ; preds = %.body22.sink.split, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.bn, %bb.k ], [ %.pn.ph, %.body22.sink.split ] ; 2 uses
  %i.bu = load ptr, ptr %0, align 8, !tbaa !479   ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i28, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body22, %bb.e
  %.sink49 = phi ptr [ %i.k, %bb.e ], [ %i.bu, %.body22 ] ; 2 uses
  %.pn.pn.ph = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn, %.body22 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !478
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %.sink49 to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink49, i64 noundef %i.bz) #36
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body22, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn, %.body22 ], [ %.pn.pn.ph, %.body.sink.split ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !382
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !100  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !91
  %i.i = load i32, ptr %2, align 4, !tbaa !91
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !100 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4, !tbaa !91     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !91   ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !100 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !2462

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !380
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #40 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !91
  %.pre82 = load i32, ptr %2, align 4, !tbaa !91
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp slt i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4, !tbaa !91     ; 8 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !91   ; 2 uses
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !100 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #40 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !91
  %i.ag = icmp slt i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !524
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !100 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4, !tbaa !91 ; 2 uses
  %i.an = icmp slt i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !100 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !2462

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #40 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !91
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp slt i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp slt i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !100 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #40 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !91
  %i.az = icmp slt i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !524
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !100 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !91 ; 2 uses
  %i.bg = icmp slt i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !100 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !2462

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !380
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #40 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !91
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp slt i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !797  ; 11 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !788    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !798
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 56                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 164703072086692426
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 164703072086692425, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.q, ptr %i.b, align 8, !tbaa !792
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.r, align 8, !tbaa !791
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.p, align 8, !tbaa !532
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = add nsw i64 %1, -1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %i.w = icmp eq i64 %1, 1
  br i1 %i.w, label %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32 ; 2 uses
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  store ptr %i.y, ptr %.08.i.i.i, align 8, !tbaa !792
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i64 1, ptr %i.z, align 8, !tbaa !791
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 8, !tbaa !532
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88 ; 2 uses
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 104
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !792
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  store i64 1, ptr %i.af, align 8, !tbaa !791
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ad, align 8, !tbaa !532
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = add nsw i64 %.057.i.i.i, -2             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.1, label %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !2463

_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !797
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.n, %1
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #38
  unreachable

_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 164703072086692425) ; 2 uses
  %i.an = mul nuw nsw i64 %i.am, 56
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #39 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 9 uses
  %xtraiter48 = and i64 %1, 1
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  store i64 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !792
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 1, ptr %i.as, align 8, !tbaa !791
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aq, align 8, !tbaa !532
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.av = add nsw i64 %1, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  br label %.lr.ph.i.i.i30.prol.loopexit

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ap, %_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i30.prol ]
  %i.ax = icmp eq i64 %1, 1
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bk, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 13 uses
  %.057.i.i.i32 = phi i64 [ %i.bj, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 32 ; 2 uses
  store i64 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  store ptr %i.az, ptr %.08.i.i.i31, align 8, !tbaa !792
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  store i64 1, ptr %i.ba, align 8, !tbaa !791
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ay, align 8, !tbaa !532
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 88 ; 2 uses
  store i64 0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 104
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !792
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64
  store i64 1, ptr %i.bg, align 8, !tbaa !791
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.be, align 8, !tbaa !532
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bj = add nsw i64 %.057.i.i.i32, -2           ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 112
  %.not.i.i.i33.1 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i33.1, label %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !2463

_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35, %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.cj, %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35 ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.ci, %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35 ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2469)
  %i.bl = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !792, !alias.scope !2469, !noalias !2468 ; 3 uses
  store ptr %i.bl, ptr %.012.i.i.i, align 8, !tbaa !792, !alias.scope !2468, !noalias !2469
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !791, !alias.scope !2469, !noalias !2468 ; 2 uses
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !791, !alias.scope !2468, !noalias !2469
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !794, !alias.scope !2469, !noalias !2468 ; 3 uses
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !467, !alias.scope !2468, !noalias !2469
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !790, !alias.scope !2469, !noalias !2468
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !790, !alias.scope !2468, !noalias !2469
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !tbaa.struct !534, !alias.scope !2470
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 4 uses
  store ptr null, ptr %i.bx, align 8, !tbaa !793, !alias.scope !2468, !noalias !2469
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 4 uses
  %i.bz = icmp eq ptr %i.bl, %i.by
  br i1 %i.bz, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i37
  store ptr %i.bx, ptr %.012.i.i.i, align 8, !tbaa !792, !alias.scope !2468, !noalias !2469
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !793, !alias.scope !2469, !noalias !2468
  store ptr %i.ca, ptr %i.bx, align 8, !tbaa !793, !alias.scope !2468, !noalias !2469
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.i37
  %i.cb = phi ptr [ %i.bx, %bb.e ], [ %i.bl, %.lr.ph.i.i.i37 ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !91, !noalias !2469
  %i.ce = sext i32 %i.cd to i64
  %i.cf = urem i64 %i.ce, %i.bo
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cf
  store ptr %i.bp, ptr %i.cg, align 8, !tbaa !528, !noalias !2469
  br label %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  store i64 0, ptr %i.ch, align 8, !tbaa !541, !alias.scope !2469, !noalias !2468
  store i64 1, ptr %i.bn, align 8, !tbaa !791, !alias.scope !2469, !noalias !2468
  store ptr %i.by, ptr %.0911.i.i.i, align 8, !tbaa !792, !alias.scope !2469, !noalias !2468
  store i64 0, ptr %i.by, align 8, !alias.scope !2469, !noalias !2468
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false), !alias.scope !2469, !noalias !2468
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %.not.i.i.i38 = icmp eq ptr %i.ci, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit, label %.lr.ph.i.i.i37, !llvm.loop !2467

_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit: ; preds = %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE13_M_deallocateEPSD_m.exit41, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit
  %i.ck = load ptr, ptr %i.h, align 8, !tbaa !798
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %i.cl, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cm) #36
  br label %_ZNSt12_Vector_baseISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE13_M_deallocateEPSD_m.exit41

_ZNSt12_Vector_baseISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE13_M_deallocateEPSD_m.exit41: ; preds = %_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit, %bb.h
  store ptr %i.ao, ptr %0, align 8, !tbaa !788
  %i.cn = getelementptr inbounds nuw [56 x i8], ptr %i.ap, i64 %1
  store ptr %i.cn, ptr %i.a, align 8, !tbaa !797
  %i.co = getelementptr inbounds nuw [56 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.co, ptr %i.h, align 8, !tbaa !798
  br label %bb.i

bb.i:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE13_M_deallocateEPSD_m.exit41, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEESt4hashIiESt8equal_toIiESaISt4pairIKiS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !794  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !467 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #36
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !51

_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !792
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !791
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !792    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !791
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #36
  br label %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !382
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !100  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !91
  %i.i = load i32, ptr %2, align 4, !tbaa !91
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !100 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4, !tbaa !91     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !91   ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !100 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !2471

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !380
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #40 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !91
  %.pre82 = load i32, ptr %2, align 4, !tbaa !91
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp slt i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_3
begin_hunk_4_@_ZN3g2o11BlockSolverINS_17BlockSolverTraitsILi7ELi3EEEE10deallocateEv:bb.a

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi3ELi0ELi7ELi3EEEEESt14default_deleteIS5_EE5resetEPS5_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !864 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !865 ; 2 uses
  %.not4.i.i.i.i.i.i.i12 = icmp eq ptr %i.ar, %i.at
  br i1 %.not4.i.i.i.i.i.i.i12, label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i13

.lr.ph.i.i.i.i.i.i.i13:                           ; preds = %bb.i, %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i14 = phi ptr [ %i.ba, %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.ar, %bb.i ] ; 3 uses
  %i.au = load ptr, ptr %.05.i.i.i.i.i.i.i14, align 8, !tbaa !868 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i15 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i15, label %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i13
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i14, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !869
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #36
  br label %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i13
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i14, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i16 = icmp eq ptr %i.ba, %i.at
  br i1 %.not.i.i.i.i.i.i.i16, label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i13, !llvm.loop !54

_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i17 = load ptr, ptr %i.aq, align 8, !tbaa !864
  br label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %bb.i
  %i.bb = phi ptr [ %.pr.i.i.i.i.i17, %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.ar, %bb.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i18 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i1.i.i.i.i.i18, label %_ZNKSt14default_deleteIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEEEEclEPS5_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !870
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #36
  br label %_ZNKSt14default_deleteIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEEEEclEPS5_.exit.i.i: ; preds = %bb.k, %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 40) #36
  br label %_ZNSt10unique_ptrIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEEESt14default_deleteIS5_EE5resetEPS5_.exit

_ZNSt10unique_ptrIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEEESt14default_deleteIS5_EE5resetEPS5_.exit: ; preds = %_ZNSt10unique_ptrIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi3ELi0ELi7ELi3EEEEESt14default_deleteIS5_EE5resetEPS5_.exit, %_ZNKSt14default_deleteIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEEEEclEPS5_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEEC2EPKiS6_iib(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %3 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.idx = shl nsw i64 %i.a, 2                     ; 6 uses
  %i.b = icmp ugt i64 %.idx, 9223372036854775804
  br i1 %i.b, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #38
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.c = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !478
  br label %bb.f

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.e = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #39
          to label %.noexc4.i unwind label %bb.e  ; 4 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  store ptr %i.e, ptr %0, align 8, !tbaa !479
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !478
  %i.h = icmp samesign ugt i64 %.idx, 4
  br i1 %i.h, label %bb.c, label %bb.d, !prof !539

bb.c:                                             ; preds = %.noexc4.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.e, ptr align 4 %1, i64 %.idx, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc4.i
  %i.i = load i32, ptr %1, align 4, !tbaa !91
  store i32 %i.i, ptr %i.e, align 4, !tbaa !91
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !479    ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i5.i, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %bb.d, %bb.c, %.thread.i.i
  %i.l = phi ptr [ %i.f, %bb.c ], [ %i.c, %.thread.i.i ], [ %i.f, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !477
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = sext i32 %4 to i64                       ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %.idx34 = shl nsw i64 %i.o, 2                   ; 6 uses
  %i.p = icmp ugt i64 %.idx34, 9223372036854775804
  br i1 %i.p, label %bb.g, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #38
          to label %.noexc.i21 unwind label %bb.j

.noexc.i21:                                       ; preds = %bb.g
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14: ; preds = %bb.f
  %.not.i.i.i15 = icmp eq i32 %4, 0
  br i1 %.not.i.i.i15, label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx34) #39
          to label %.noexc4.i19 unwind label %bb.j ; 4 uses

.noexc4.i19:                                      ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16
  store ptr %i.q, ptr %i.n, align 8, !tbaa !479
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx34 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.r, ptr %i.s, align 8, !tbaa !478
  %i.t = icmp samesign ugt i64 %.idx34, 4
  br i1 %i.t, label %bb.h, label %bb.i, !prof !539

bb.h:                                             ; preds = %.noexc4.i19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %2, i64 %.idx34, i1 false)
  br label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i

bb.i:                                             ; preds = %.noexc4.i19
  %i.u = load i32, ptr %2, align 4, !tbaa !91
  store i32 %i.u, ptr %i.q, align 4, !tbaa !91
  br label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !479  ; 2 uses
  %.not.i.i5.i17 = icmp eq ptr %i.w, null
  br i1 %.not.i.i5.i17, label %.body22, label %.body22.sink.split

_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14
  %i.x = getelementptr inbounds nuw i8, ptr null, i64 %.idx34 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.x, ptr %i.y, align 8, !tbaa !478
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.z, align 8, !tbaa !477
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i: ; preds = %bb.i, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.r, ptr %i.ab, align 8, !tbaa !477
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %i.ad = mul nuw nsw i64 %i.o, 48
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #39
          to label %.noexc25 unwind label %bb.k   ; 4 uses

.noexc25:                                         ; preds = %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !886
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %i.o
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !914
  %xtraiter = and i64 %i.o, 3
  %i.ah = and i32 %4, 3
  %lcmp.mod.not = icmp eq i32 %i.ah, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc25, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.prol ], [ %i.ae, %.noexc25 ] ; 6 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %.noexc25 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc25 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.prol, i8 0, i64 24, i1 false)
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !380
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !381
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 40
  store i64 0, ptr %i.al, align 8, !tbaa !382
  %i.am = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2816

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc25
  %.lcssa.unr = phi ptr [ poison, %.noexc25 ], [ %i.an, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.ae, %.noexc25 ], [ %i.an, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.o, %.noexc25 ], [ %i.am, %.lr.ph.i.i.i.i.i.prol ]
  %i.ao = icmp ult i32 %4, 4
  br i1 %i.ao, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, i8 0, i64 24, i1 false)
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !380
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !381
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.as, align 8, !tbaa !382
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  store ptr %i.au, ptr %i.av, align 8, !tbaa !380
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !381
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 88
  store i64 0, ptr %i.ax, align 8, !tbaa !382
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !380
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !381
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 136
  store i64 0, ptr %i.bc, align 8, !tbaa !382
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 144
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 152 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !380
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 176
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !381
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 184
  store i64 0, ptr %i.bh, align 8, !tbaa !382
  %i.bi = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2817

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bj, %.lr.ph.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bk, align 8, !tbaa !885
  %i.bl = zext i1 %5 to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.bl, ptr %i.bm, align 8, !tbaa !919
  ret void

bb.k:                                             ; preds = %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !479 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i26, label %.body22, label %.body22.sink.split

.body22.sink.split:                               ; preds = %bb.k, %bb.j
  %.sink42 = phi ptr [ %i.w, %bb.j ], [ %i.bo, %bb.k ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.bn, %bb.k ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !478
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %.sink42 to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink42, i64 noundef %i.bt) #36
  br label %.body22

.body22:                                          ; preds = %.body22.sink.split, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.bn, %bb.k ], [ %.pn.ph, %.body22.sink.split ] ; 2 uses
  %i.bu = load ptr, ptr %0, align 8, !tbaa !479   ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i28, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body22, %bb.e
  %.sink49 = phi ptr [ %i.k, %bb.e ], [ %i.bu, %.body22 ] ; 2 uses
  %.pn.pn.ph = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn, %.body22 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !478
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %.sink49 to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink49, i64 noundef %i.bz) #36
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body22, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn, %.body22 ], [ %.pn.pn.ph, %.body.sink.split ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi3ELi0ELi7ELi3EEEEC2EPKiS6_iib(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %3 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.idx = shl nsw i64 %i.a, 2                     ; 6 uses
  %i.b = icmp ugt i64 %.idx, 9223372036854775804
  br i1 %i.b, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #38
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.c = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !478
  br label %bb.f

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.e = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #39
          to label %.noexc4.i unwind label %bb.e  ; 4 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  store ptr %i.e, ptr %0, align 8, !tbaa !479
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !478
  %i.h = icmp samesign ugt i64 %.idx, 4
  br i1 %i.h, label %bb.c, label %bb.d, !prof !539

bb.c:                                             ; preds = %.noexc4.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.e, ptr align 4 %1, i64 %.idx, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc4.i
  %i.i = load i32, ptr %1, align 4, !tbaa !91
  store i32 %i.i, ptr %i.e, align 4, !tbaa !91
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !479    ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i5.i, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %bb.d, %bb.c, %.thread.i.i
  %i.l = phi ptr [ %i.f, %bb.c ], [ %i.c, %.thread.i.i ], [ %i.f, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !477
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = sext i32 %4 to i64                       ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %.idx34 = shl nsw i64 %i.o, 2                   ; 6 uses
  %i.p = icmp ugt i64 %.idx34, 9223372036854775804
  br i1 %i.p, label %bb.g, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #38
          to label %.noexc.i21 unwind label %bb.j

.noexc.i21:                                       ; preds = %bb.g
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14: ; preds = %bb.f
  %.not.i.i.i15 = icmp eq i32 %4, 0
  br i1 %.not.i.i.i15, label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi7ELi3ELi0ELi7ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx34) #39
          to label %.noexc4.i19 unwind label %bb.j ; 4 uses

.noexc4.i19:                                      ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16
  store ptr %i.q, ptr %i.n, align 8, !tbaa !479
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx34 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.r, ptr %i.s, align 8, !tbaa !478
  %i.t = icmp samesign ugt i64 %.idx34, 4
  br i1 %i.t, label %bb.h, label %bb.i, !prof !539

bb.h:                                             ; preds = %.noexc4.i19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %2, i64 %.idx34, i1 false)
  br label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi7ELi3ELi0ELi7ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i

bb.i:                                             ; preds = %.noexc4.i19
  %i.u = load i32, ptr %2, align 4, !tbaa !91
  store i32 %i.u, ptr %i.q, align 4, !tbaa !91
  br label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi7ELi3ELi0ELi7ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i16, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !479  ; 2 uses
  %.not.i.i5.i17 = icmp eq ptr %i.w, null
  br i1 %.not.i.i5.i17, label %.body22, label %.body22.sink.split

_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi7ELi3ELi0ELi7ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i14
  %i.x = getelementptr inbounds nuw i8, ptr null, i64 %.idx34 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.x, ptr %i.y, align 8, !tbaa !478
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.z, align 8, !tbaa !477
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi7ELi3ELi0ELi7ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i: ; preds = %bb.i, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.r, ptr %i.ab, align 8, !tbaa !477
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %i.ad = mul nuw nsw i64 %i.o, 48
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #39
          to label %.noexc25 unwind label %bb.k   ; 4 uses

.noexc25:                                         ; preds = %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi7ELi3ELi0ELi7ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !892
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %i.o
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !935
  %xtraiter = and i64 %i.o, 3
  %i.ah = and i32 %4, 3
  %lcmp.mod.not = icmp eq i32 %i.ah, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc25, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.prol ], [ %i.ae, %.noexc25 ] ; 6 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %.noexc25 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc25 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.prol, i8 0, i64 24, i1 false)
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !380
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !381
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 40
  store i64 0, ptr %i.al, align 8, !tbaa !382
  %i.am = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2818

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc25
  %.lcssa.unr = phi ptr [ poison, %.noexc25 ], [ %i.an, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.ae, %.noexc25 ], [ %i.an, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.o, %.noexc25 ], [ %i.am, %.lr.ph.i.i.i.i.i.prol ]
  %i.ao = icmp ult i32 %4, 4
  br i1 %i.ao, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, i8 0, i64 24, i1 false)
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !380
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !381
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.as, align 8, !tbaa !382
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  store ptr %i.au, ptr %i.av, align 8, !tbaa !380
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !381
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 88
  store i64 0, ptr %i.ax, align 8, !tbaa !382
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !380
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !381
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 136
  store i64 0, ptr %i.bc, align 8, !tbaa !382
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 144
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 152 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !380
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 176
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !381
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 184
  store i64 0, ptr %i.bh, align 8, !tbaa !382
  %i.bi = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2819

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi7ELi3ELi0ELi7ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi7ELi3ELi0ELi7ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bj, %.lr.ph.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bk, align 8, !tbaa !891
  %i.bl = zext i1 %5 to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.bl, ptr %i.bm, align 8, !tbaa !934
  ret void

bb.k:                                             ; preds = %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLi7ELi3ELi0ELi7ELi3EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEC2EmRKSC_.exit.i
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !479 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i26, label %.body22, label %.body22.sink.split

.body22.sink.split:                               ; preds = %bb.k, %bb.j
  %.sink42 = phi ptr [ %i.w, %bb.j ], [ %i.bo, %bb.k ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.bn, %bb.k ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !478
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %.sink42 to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink42, i64 noundef %i.bt) #36
  br label %.body22

.body22:                                          ; preds = %.body22.sink.split, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.bn, %bb.k ], [ %.pn.ph, %.body22.sink.split ] ; 2 uses
  %i.bu = load ptr, ptr %0, align 8, !tbaa !479   ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i28, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body22, %bb.e
  %.sink49 = phi ptr [ %i.k, %bb.e ], [ %i.bu, %.body22 ] ; 2 uses
  %.pn.pn.ph = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn, %.body22 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !478
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %.sink49 to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink49, i64 noundef %i.bz) #36
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body22, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn, %.body22 ], [ %.pn.pn.ph, %.body.sink.split ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !382
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !100  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !91
  %i.i = load i32, ptr %2, align 4, !tbaa !91
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !100 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4, !tbaa !91     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !91   ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !100 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !2820

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !380
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #40 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !91
  %.pre82 = load i32, ptr %2, align 4, !tbaa !91
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp slt i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4, !tbaa !91     ; 8 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !91   ; 2 uses
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !100 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #40 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !91
  %i.ag = icmp slt i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !524
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !100 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4, !tbaa !91 ; 2 uses
  %i.an = icmp slt i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !100 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !2820

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #40 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !91
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp slt i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp slt i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !100 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #40 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !91
  %i.az = icmp slt i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !524
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !100 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !91 ; 2 uses
  %i.bg = icmp slt i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !100 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !2820

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !380
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #40 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !91
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp slt i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !912  ; 11 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !903    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !913
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 56                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 164703072086692426
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 164703072086692425, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.q, ptr %i.b, align 8, !tbaa !907
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.r, align 8, !tbaa !906
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.p, align 8, !tbaa !532
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = add nsw i64 %1, -1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %i.w = icmp eq i64 %1, 1
  br i1 %i.w, label %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32 ; 2 uses
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  store ptr %i.y, ptr %.08.i.i.i, align 8, !tbaa !907
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i64 1, ptr %i.z, align 8, !tbaa !906
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 8, !tbaa !532
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88 ; 2 uses
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 104
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !907
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  store i64 1, ptr %i.af, align 8, !tbaa !906
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ad, align 8, !tbaa !532
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = add nsw i64 %.057.i.i.i, -2             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.1, label %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !2821

_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !912
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.n, %1
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #38
  unreachable

_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 164703072086692425) ; 2 uses
  %i.an = mul nuw nsw i64 %i.am, 56
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #39 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 9 uses
  %xtraiter48 = and i64 %1, 1
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  store i64 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !907
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 1, ptr %i.as, align 8, !tbaa !906
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aq, align 8, !tbaa !532
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.av = add nsw i64 %1, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  br label %.lr.ph.i.i.i30.prol.loopexit

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ap, %_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i30.prol ]
  %i.ax = icmp eq i64 %1, 1
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bk, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 13 uses
  %.057.i.i.i32 = phi i64 [ %i.bj, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 32 ; 2 uses
  store i64 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  store ptr %i.az, ptr %.08.i.i.i31, align 8, !tbaa !907
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  store i64 1, ptr %i.ba, align 8, !tbaa !906
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ay, align 8, !tbaa !532
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 88 ; 2 uses
  store i64 0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 104
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !907
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64
  store i64 1, ptr %i.bg, align 8, !tbaa !906
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.be, align 8, !tbaa !532
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bj = add nsw i64 %.057.i.i.i32, -2           ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 112
  %.not.i.i.i33.1 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i33.1, label %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !2821

_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35, %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.cj, %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35 ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.ci, %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35 ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2827)
  %i.bl = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !907, !alias.scope !2827, !noalias !2826 ; 3 uses
  store ptr %i.bl, ptr %.012.i.i.i, align 8, !tbaa !907, !alias.scope !2826, !noalias !2827
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !906, !alias.scope !2827, !noalias !2826 ; 2 uses
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !906, !alias.scope !2826, !noalias !2827
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !909, !alias.scope !2827, !noalias !2826 ; 3 uses
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !467, !alias.scope !2826, !noalias !2827
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !905, !alias.scope !2827, !noalias !2826
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !905, !alias.scope !2826, !noalias !2827
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !tbaa.struct !534, !alias.scope !2828
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 4 uses
  store ptr null, ptr %i.bx, align 8, !tbaa !908, !alias.scope !2826, !noalias !2827
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 4 uses
  %i.bz = icmp eq ptr %i.bl, %i.by
  br i1 %i.bz, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i37
  store ptr %i.bx, ptr %.012.i.i.i, align 8, !tbaa !907, !alias.scope !2826, !noalias !2827
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !908, !alias.scope !2827, !noalias !2826
  store ptr %i.ca, ptr %i.bx, align 8, !tbaa !908, !alias.scope !2826, !noalias !2827
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.i37
  %i.cb = phi ptr [ %i.bx, %bb.e ], [ %i.bl, %.lr.ph.i.i.i37 ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !91, !noalias !2827
  %i.ce = sext i32 %i.cd to i64
  %i.cf = urem i64 %i.ce, %i.bo
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cf
  store ptr %i.bp, ptr %i.cg, align 8, !tbaa !528, !noalias !2827
  br label %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  store i64 0, ptr %i.ch, align 8, !tbaa !541, !alias.scope !2827, !noalias !2826
  store i64 1, ptr %i.bn, align 8, !tbaa !906, !alias.scope !2827, !noalias !2826
  store ptr %i.by, ptr %.0911.i.i.i, align 8, !tbaa !907, !alias.scope !2827, !noalias !2826
  store i64 0, ptr %i.by, align 8, !alias.scope !2827, !noalias !2826
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false), !alias.scope !2827, !noalias !2826
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %.not.i.i.i38 = icmp eq ptr %i.ci, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit, label %.lr.ph.i.i.i37, !llvm.loop !2825

_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit: ; preds = %_ZSt19__relocate_object_aISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE13_M_deallocateEPSD_m.exit41, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit
  %i.ck = load ptr, ptr %i.h, align 8, !tbaa !913
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %i.cl, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cm) #36
  br label %_ZNSt12_Vector_baseISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE13_M_deallocateEPSD_m.exit41

_ZNSt12_Vector_baseISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE13_M_deallocateEPSD_m.exit41: ; preds = %_ZNSt6vectorISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit, %bb.h
  store ptr %i.ao, ptr %0, align 8, !tbaa !903
  %i.cn = getelementptr inbounds nuw [56 x i8], ptr %i.ap, i64 %1
  store ptr %i.cn, ptr %i.a, align 8, !tbaa !912
  %i.co = getelementptr inbounds nuw [56 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.co, ptr %i.h, align 8, !tbaa !913
  br label %bb.i

bb.i:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEmSD_ET_SF_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEESaISD_EE13_M_deallocateEPSD_m.exit41, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEESt4hashIiESt8equal_toIiESaISt4pairIKiS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !909  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !467 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #36
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !61

_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !907
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !906
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !907    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !906
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #36
  br label %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi3ELi0ELi7ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !382
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !100  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !91
  %i.i = load i32, ptr %2, align 4, !tbaa !91
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi3ELi0ELi7ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !100 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4, !tbaa !91     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !91   ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !100 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !2829

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !380
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi3ELi0ELi7ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #40 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !91
  %.pre82 = load i32, ptr %2, align 4, !tbaa !91
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp slt i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi3ELi0ELi7ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_4
