Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_slam2d_linear?download=true
inline.NumInlined: 3204
inline.NumDeleted: 1587
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE28computeSymbolicDecompositionERKNS_17SparseBlockMatrixIS3_EE:bb.a
  br label %bb.y

bb.t:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE13nonZeroBlocksEv.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE18fillBlockStructureEPiS5_.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.u ], [ %i.cp, %bb.t ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #30
  br label %.body

.body:                                            ; preds = %bb.e, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.u, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.x

bb.w:                                             ; preds = %bb.r, %bb.q
  %i.cr = landingpad { ptr, i32 }
          cleanup
  %i.cs = load ptr, ptr %5, align 8, !tbaa !151
  call void @free(ptr noundef %i.cs) #30
  br label %.body25

.body25:                                          ; preds = %bb.p, %bb.w
  %.pn18 = phi { ptr, i32 } [ %i.cr, %bb.w ], [ %i.ci, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.x

bb.x:                                             ; preds = %.body25, %.body
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %.body25 ], [ %.pn.pn, %.body ]
  %i.ct = load ptr, ptr %2, align 8, !tbaa !151
  call void @free(ptr noundef %i.ct) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn18.pn

bb.y:                                             ; preds = %bb.s, %bb.b
  %i.cu = load ptr, ptr @_ZN3g2o18G2OBatchStatistics12_globalStatsE, align 8, !tbaa !133 ; 2 uses
  %.not = icmp eq ptr %i.cu, null
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cv = call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.cw = fsub double %i.cv, %i.a
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  store double %i.cw, ptr %i.cx, align 8, !tbaa !281
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  ret void
}

declare noundef double @_ZN3g2o18get_monotonic_timeEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE11writeOctaveEPKcb(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::basic_ofstream", align 8 ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !296
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.13) #32
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.d, ptr %i.a, align 8, !tbaa !175
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !298
  %i.g = load i64, ptr %i.a, align 8, !tbaa !175
  store i64 %i.g, ptr %i.b, align 8, !tbaa !94
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !94
  store i8 %i.i, ptr %i.h, align 1, !tbaa !94
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !175  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !299
  %i.l = load ptr, ptr %3, align 8, !tbaa !298
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.n = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 46, i64 noundef -1) #30 ; 2 uses
  %.not = icmp eq i64 %i.n, -1
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.n, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !104  ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !101  ; 2 uses
  %.not332 = icmp eq ptr %i.r, %i.s
  br i1 %.not332, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS2_14TripletColSortEEvT_SA_T0_.exit, label %.lr.ph324

.lr.ph324:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.i

._crit_edge325:                                   ; preds = %._crit_edge
  %i.u = ptrtoint ptr %.sroa.13.1.lcssa to i64
  %i.v = ptrtoint ptr %.sroa.0218.1.lcssa to i64  ; 3 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 4                   ; 2 uses
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0218.1.lcssa, %.sroa.13.1.lcssa
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS2_14TripletColSortEEvT_SA_T0_.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge325
  %i.z = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.aa = shl nuw nsw i64 %i.z, 1
  %i.ab = xor i64 %i.aa, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_T0_T1_(ptr %.sroa.0218.1.lcssa, ptr %.sroa.13.1.lcssa, i64 noundef %i.ab)
          to label %.noexc65 unwind label %bb.aq

.noexc65:                                         ; preds = %bb.h
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_T0_(ptr %.sroa.0218.1.lcssa, ptr %.sroa.13.1.lcssa)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS2_14TripletColSortEEvT_SA_T0_.exit unwind label %bb.aq

bb.i:                                             ; preds = %.lr.ph324, %._crit_edge
  %i.ac = phi ptr [ %i.s, %.lr.ph324 ], [ %i.ak, %._crit_edge ] ; 2 uses
  %i.ad = phi ptr [ %i.r, %.lr.ph324 ], [ %i.al, %._crit_edge ]
  %.049323 = phi i64 [ 0, %.lr.ph324 ], [ %i.am, %._crit_edge ] ; 5 uses
  %.sroa.0218.0322 = phi ptr [ null, %.lr.ph324 ], [ %.sroa.0218.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.13.0321 = phi ptr [ null, %.lr.ph324 ], [ %.sroa.13.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.24.0320 = phi ptr [ null, %.lr.ph324 ], [ %.sroa.24.1.lcssa, %._crit_edge ] ; 2 uses
  %i.ae = trunc i64 %.049323 to i32               ; 2 uses
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %.049323 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.not238313 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not238313, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %.not.i67 = icmp eq i32 %i.ae, 0
  %sext = shl i64 %.049323, 32
  %i.aj = ashr exact i64 %sext, 30
  br label %.preheader

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE9push_backEOS1_.exit86
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !104
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %i.ak = phi ptr [ %i.ac, %bb.i ], [ %i.dd, %._crit_edge.loopexit ] ; 2 uses
  %i.al = phi ptr [ %i.ad, %bb.i ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.24.1.lcssa = phi ptr [ %.sroa.24.0320, %bb.i ], [ %.sroa.24.4, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.13.1.lcssa = phi ptr [ %.sroa.13.0321, %bb.i ], [ %.sroa.13.4, %._crit_edge.loopexit ] ; 7 uses
  %.sroa.0218.1.lcssa = phi ptr [ %.sroa.0218.0322, %bb.i ], [ %.sroa.0218.4, %._crit_edge.loopexit ] ; 8 uses
  %i.am = add nuw i64 %.049323, 1                 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = sdiv exact i64 %i.ap, 48
  %i.ar = icmp ult i64 %i.am, %i.aq
  br i1 %i.ar, label %bb.i, label %._crit_edge325, !llvm.loop !282

.preheader:                                       ; preds = %.lr.ph, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE9push_backEOS1_.exit86
  %.sroa.0218.1317 = phi ptr [ %.sroa.0218.0322, %.lr.ph ], [ %.sroa.0218.4, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE9push_backEOS1_.exit86 ] ; 7 uses
  %.sroa.13.1316 = phi ptr [ %.sroa.13.0321, %.lr.ph ], [ %.sroa.13.4, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE9push_backEOS1_.exit86 ] ; 9 uses
  %.sroa.24.1315 = phi ptr [ %.sroa.24.0320, %.lr.ph ], [ %.sroa.24.4, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE9push_backEOS1_.exit86 ] ; 2 uses
  %.sroa.0214.0314 = phi ptr [ %i.ah, %.lr.ph ], [ %i.dc, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE9push_backEOS1_.exit86 ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0214.0314, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0214.0314, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !116 ; 2 uses
  %i.av = load i32, ptr %i.as, align 8, !tbaa !33 ; 2 uses
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE14rowBaseOfBlockEi.exit, label %bb.j

bb.j:                                             ; preds = %.preheader
  %i.aw = load ptr, ptr %0, align 8, !tbaa !97
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 -4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !33
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE14rowBaseOfBlockEi.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE14rowBaseOfBlockEi.exit: ; preds = %.preheader, %bb.j
  %i.bb = phi i32 [ %i.ba, %bb.j ], [ 0, %.preheader ] ; 4 uses
  br i1 %.not.i67, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE14rowBaseOfBlockEi.exit
  %i.bc = load ptr, ptr %i.t, align 8, !tbaa !97
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.aj
  %i.be = getelementptr i8, ptr %i.bd, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE14rowBaseOfBlockEi.exit
  %i.bg = phi i32 [ %i.bf, %bb.k ], [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE14rowBaseOfBlockEi.exit ] ; 4 uses
  %i.bh = load double, ptr %i.au, align 8, !tbaa !57 ; 2 uses
  %.not.i.i68 = icmp eq ptr %.sroa.13.1316, %.sroa.24.1315
  br i1 %.not.i.i68, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.bb, ptr %.sroa.13.1316, align 8, !tbaa !33
  %.sroa.6207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.1316, i64 4
  store i32 %i.bg, ptr %.sroa.6207.0..sroa_idx, align 4, !tbaa !33
  %.sroa.7210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.1316, i64 8
  store double %i.bh, ptr %.sroa.7210.0..sroa_idx, align 8, !tbaa !57
  br label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE9push_backEOS1_.exit

bb.n:                                             ; preds = %bb.l
  %i.bi = ptrtoint ptr %.sroa.13.1316 to i64
  %i.bj = ptrtoint ptr %.sroa.0218.1317 to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 4 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775792
  br i1 %i.bl, label %bb.o, label %_ZNKSt6vectorIN3g2o12TripletEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #32
          to label %.noexc69 unwind label %.loopexit.split-lp241.loopexit.split-lp

.noexc69:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorIN3g2o12TripletEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.bm = ashr exact i64 %i.bk, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = call i64 @llvm.umin.i64(i64 %i.bn, i64 576460752303423487)
  %i.bq = select i1 %i.bo, i64 576460752303423487, i64 %i.bp ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.br = shl nuw nsw i64 %i.bq, 4
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #33
          to label %.noexc70 unwind label %.loopexit.split-lp241.loopexit.split-lp ; 5 uses

.noexc70:                                         ; preds = %_ZNKSt6vectorIN3g2o12TripletEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk ; 3 uses
  store i32 %i.bb, ptr %i.bt, align 8, !tbaa !33
  %.sroa.6207.0..sroa_idx208 = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %i.bg, ptr %.sroa.6207.0..sroa_idx208, align 4, !tbaa !33
  %.sroa.7210.0..sroa_idx211 = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store double %i.bh, ptr %.sroa.7210.0..sroa_idx211, align 8, !tbaa !57
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0218.1317, %.sroa.13.1316
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc70, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i ], [ %i.bs, %.noexc70 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0218.1317, %.noexc70 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !176, !alias.scope !300
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bu, %.sroa.13.1316
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !286

_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc70
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bs, %.noexc70 ], [ %i.bv, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0218.1317, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0218.1317, i64 noundef %i.bk) #31
  br label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.bq
  br label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.m
  %.sroa.24.7 = phi ptr [ %i.bw, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.24.1315, %bb.m ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.13.1316, %bb.m ] ; 6 uses
  %.sroa.0218.7 = phi ptr [ %i.bs, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0218.1317, %bb.m ] ; 10 uses
  %.0.lcssa.i.i.i.i.i.i.pn433 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i.pn to i64
  %.sroa.13.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16 ; 4 uses
  br i1 %2, label %bb.q, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE9push_backEOS1_.exit86

bb.q:                                             ; preds = %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE9push_backEOS1_.exit
  %i.bx = load i32, ptr %i.as, align 8, !tbaa !33
  %.not57 = icmp eq i32 %i.bx, %i.ae
  br i1 %.not57, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE9push_backEOS1_.exit86, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = load double, ptr %i.au, align 8, !tbaa !57 ; 2 uses
  %.not.i.i71 = icmp eq ptr %.sroa.13.5, %.sroa.24.7
  br i1 %.not.i.i71, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %i.bg, ptr %.sroa.13.5, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 20
  store i32 %i.bb, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !33
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 24
  store double %i.by, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !57
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 32
  br label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE9push_backEOS1_.exit86

bb.t:                                             ; preds = %bb.r
  %i.ca = ptrtoint ptr %.sroa.24.7 to i64
  %i.cb = ptrtoint ptr %.sroa.0218.7 to i64       ; 2 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 4 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775792
  br i1 %i.cd, label %bb.u, label %_ZNKSt6vectorIN3g2o12TripletEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i72

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #32
          to label %.noexc84 unwind label %.loopexit.split-lp246.loopexit.split-lp

.noexc84:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorIN3g2o12TripletEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i72: ; preds = %bb.t
  %i.ce = ashr exact i64 %i.cc, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i73 = call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i.i73, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cf, i64 576460752303423487)
  %i.ci = select i1 %i.cg, i64 576460752303423487, i64 %i.ch ; 3 uses
  %.not.i.i.i.i74 = icmp ne i64 %i.ci, 0
  call void @llvm.assume(i1 %.not.i.i.i.i74)
  %i.cj = shl nuw nsw i64 %i.ci, 4
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #33
          to label %.noexc85 unwind label %.loopexit.split-lp246.loopexit.split-lp ; 6 uses

.noexc85:                                         ; preds = %_ZNKSt6vectorIN3g2o12TripletEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i72
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cc ; 3 uses
  store i32 %i.bg, ptr %i.cl, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx201 = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 %i.bb, ptr %.sroa.6.0..sroa_idx201, align 4, !tbaa !33
  %.sroa.7.0..sroa_idx203 = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store double %i.by, ptr %.sroa.7.0..sroa_idx203, align 8, !tbaa !57
  %.not10.i.i.i.i.i.i75 = icmp eq ptr %.sroa.0218.7, %.sroa.24.7
  br i1 %.not10.i.i.i.i.i.i75, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i80, label %.lr.ph.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i76.preheader:                   ; preds = %.noexc85
  %i.cm = sub i64 %.0.lcssa.i.i.i.i.i.i.pn433, %i.cb ; 2 uses
  %i.cn = lshr i64 %i.cm, 4
  %i.co = add nuw nsw i64 %i.cn, 1
  %xtraiter = and i64 %i.co, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i76.prol.loopexit, label %.lr.ph.i.i.i.i.i.i76.prol

.lr.ph.i.i.i.i.i.i76.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i76.prol
  %.012.i.i.i.i.i.i77.prol = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i76.prol ], [ %i.ck, %.lr.ph.i.i.i.i.i.i76.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i78.prol = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i76.prol ], [ %.sroa.0218.7, %.lr.ph.i.i.i.i.i.i76.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i76.prol ], [ 0, %.lr.ph.i.i.i.i.i.i76.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i77.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i78.prol, i64 16, i1 false), !tbaa.struct !176, !alias.scope !301
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i78.prol, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i77.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i76.prol.loopexit, label %.lr.ph.i.i.i.i.i.i76.prol, !llvm.loop !290

.lr.ph.i.i.i.i.i.i76.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i76.prol, %.lr.ph.i.i.i.i.i.i76.preheader
  %.lcssa415.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i76.preheader ], [ %i.cq, %.lr.ph.i.i.i.i.i.i76.prol ]
  %.012.i.i.i.i.i.i77.unr = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i76.preheader ], [ %i.cq, %.lr.ph.i.i.i.i.i.i76.prol ]
  %.0911.i.i.i.i.i.i78.unr = phi ptr [ %.sroa.0218.7, %.lr.ph.i.i.i.i.i.i76.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.i.i76.prol ]
  %i.cr = icmp ult i64 %i.cm, 48
  br i1 %i.cr, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i80, label %.lr.ph.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i76:                             ; preds = %.lr.ph.i.i.i.i.i.i76.prol.loopexit, %.lr.ph.i.i.i.i.i.i76
  %.012.i.i.i.i.i.i77 = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i76 ], [ %.012.i.i.i.i.i.i77.unr, %.lr.ph.i.i.i.i.i.i76.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i.i78 = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i76 ], [ %.0911.i.i.i.i.i.i78.unr, %.lr.ph.i.i.i.i.i.i76.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i77, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i78, i64 16, i1 false), !tbaa.struct !176, !alias.scope !301
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i78, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i77, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i64 16, i1 false), !tbaa.struct !176, !alias.scope !301
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i78, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i77, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i64 16, i1 false), !tbaa.struct !176, !alias.scope !301
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i78, i64 48 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i77, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !176, !alias.scope !301
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i78, i64 64
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i77, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i79.3 = icmp eq ptr %i.cw, %.0.lcssa.i.i.i.i.i.i.pn
  br i1 %.not.i.i.i.i.i.i79.3, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i80, label %.lr.ph.i.i.i.i.i.i76, !llvm.loop !286

_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i80: ; preds = %.lr.ph.i.i.i.i.i.i76.prol.loopexit, %.lr.ph.i.i.i.i.i.i76, %.noexc85
  %.0.lcssa.i.i.i.i.i.i81 = phi ptr [ %i.ck, %.noexc85 ], [ %.lcssa415.unr, %.lr.ph.i.i.i.i.i.i76.prol.loopexit ], [ %i.cz, %.lr.ph.i.i.i.i.i.i76 ]
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i81, i64 16
  %.not.i23.i.i.i82 = icmp eq ptr %.sroa.0218.7, null
  br i1 %.not.i23.i.i.i82, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i83, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i80
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0218.7, i64 noundef %i.cc) #31
  br label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i83

_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i83: ; preds = %bb.v, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i80
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.ci
  br label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE9push_backEOS1_.exit86

.loopexit.split-lp241.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIN3g2o12TripletEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp246.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIN3g2o12TripletEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i72, %bb.u
  %lpad.loopexit.split-lp413 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE9push_backEOS1_.exit86: ; preds = %bb.s, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i83, %bb.q, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE9push_backEOS1_.exit
  %.sroa.24.4 = phi ptr [ %.sroa.24.7, %bb.q ], [ %.sroa.24.7, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE9push_backEOS1_.exit ], [ %i.db, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i83 ], [ %.sroa.24.7, %bb.s ] ; 2 uses
  %.sroa.13.4 = phi ptr [ %.sroa.13.5, %bb.q ], [ %.sroa.13.5, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE9push_backEOS1_.exit ], [ %i.da, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i83 ], [ %i.bz, %bb.s ] ; 2 uses
  %.sroa.0218.4 = phi ptr [ %.sroa.0218.7, %bb.q ], [ %.sroa.0218.7, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE9push_backEOS1_.exit ], [ %i.ck, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i83 ], [ %.sroa.0218.7, %bb.s ] ; 2 uses
  %i.dc = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0214.0314) #34 ; 2 uses
  %i.dd = load ptr, ptr %i.p, align 8, !tbaa !101 ; 2 uses
  %i.de = getelementptr inbounds nuw [48 x i8], ptr %i.dd, i64 %.049323
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.not238 = icmp eq ptr %i.dc, %i.df
  br i1 %.not238, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !291

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS2_14TripletColSortEEvT_SA_T0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, %._crit_edge325, %.noexc65
  %.not.i.i380 = phi i1 [ false, %.noexc65 ], [ true, %._crit_edge325 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ]
  %i.dg = phi i32 [ %i.y, %.noexc65 ], [ %i.y, %._crit_edge325 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ]
  %i.dh = phi i64 [ %i.v, %.noexc65 ], [ %i.v, %._crit_edge325 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ]
  %.sroa.0218.0.lcssa377 = phi ptr [ %.sroa.0218.1.lcssa, %.noexc65 ], [ %.sroa.0218.1.lcssa, %._crit_edge325 ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ] ; 4 uses
  %.sroa.13.0.lcssa376 = phi ptr [ %.sroa.13.1.lcssa, %.noexc65 ], [ %.sroa.13.1.lcssa, %._crit_edge325 ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ]
  %.sroa.24.0.lcssa373 = phi ptr [ %.sroa.24.1.lcssa, %.noexc65 ], [ %.sroa.24.1.lcssa, %._crit_edge325 ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %4, ptr noundef nonnull %1, i32 noundef 16)
          to label %bb.w unwind label %bb.ar

bb.w:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS2_14TripletColSortEEvT_SA_T0_.exit
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.7, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.w
  %i.dj = load ptr, ptr %3, align 8, !tbaa !298
  %i.dk = load i64, ptr %i.k, align 8, !tbaa !299
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.dj, i64 noundef %i.dk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !18
  %i.dn = getelementptr i8, ptr %i.dm, i64 -24
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 240
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !316 ; 6 uses
  %.not.i.i.i123 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i123, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

.invoke:                                          ; preds = %_ZNSolsEd.exit, %bb.am, %bb.aj, %bb.af, %bb.ab, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt16__throw_bad_castv() #32
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 56
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !321
  %.not.i1.i.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i1.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 67
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !94
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dr)
          to label %.noexc125 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc125:                                        ; preds = %bb.y
  %i.dw = load ptr, ptr %i.dr, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = invoke noundef signext i8 %i.dy(ptr noundef nonnull align 8 dereferenceable(570) %i.dr, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !292

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc125, %bb.x
  %.0.i.i.i = phi i8 [ %i.dv, %bb.x ], [ %i.dz, %.noexc125 ]
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, i8 noundef signext %.0.i.i.i)
          to label %.noexc127 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc127:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ea)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc127
  %i.ec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.8, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ed = load ptr, ptr %4, align 8, !tbaa !18
  %i.ee = getelementptr i8, ptr %i.ed, i64 -24
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds i8, ptr %4, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 240
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !316 ; 6 uses
  %.not.i.i.i129 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i129, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i130

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i130: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 56
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !321
  %.not.i1.i.i131 = icmp eq i8 %i.ek, 0
  br i1 %.not.i1.i.i131, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i130
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 67
  %i.em = load i8, ptr %i.el, align 1, !tbaa !94
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i132

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i130
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ei)
          to label %.noexc135 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc135:                                        ; preds = %bb.aa
  %i.en = load ptr, ptr %i.ei, align 8, !tbaa !18
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = invoke noundef signext i8 %i.ep(ptr noundef nonnull align 8 dereferenceable(570) %i.ei, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i132 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !292

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i132: ; preds = %.noexc135, %bb.z
  %.0.i.i.i133 = phi i8 [ %i.em, %bb.z ], [ %i.eq, %.noexc135 ]
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext %.0.i.i.i133)
          to label %.noexc137 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc137:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i132
  %i.es = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.er)
          to label %_ZNSolsEPFRSoS_E.exit93 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit93:                          ; preds = %.noexc137
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.9, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95: ; preds = %_ZNSolsEPFRSoS_E.exit93
  %i.eu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.dg)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !18
  %i.ew = getelementptr i8, ptr %i.ev, i64 -24
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds i8, ptr %i.eu, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 240
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !316 ; 6 uses
  %.not.i.i.i140 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i140, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i141

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i141: ; preds = %bb.ab
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !321
  %.not.i1.i.i142 = icmp eq i8 %i.fc, 0
  br i1 %.not.i1.i.i142, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i141
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 67
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !94
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i143

bb.ad:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i141
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fa)
          to label %.noexc146 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc146:                                        ; preds = %bb.ad
  %i.ff = load ptr, ptr %i.fa, align 8, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = invoke noundef signext i8 %i.fh(ptr noundef nonnull align 8 dereferenceable(570) %i.fa, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i143 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !292

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i143: ; preds = %.noexc146, %bb.ac
  %.0.i.i.i144 = phi i8 [ %i.fe, %bb.ac ], [ %i.fi, %.noexc146 ]
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, i8 noundef signext %.0.i.i.i144)
          to label %.noexc148 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc148:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i143
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fj)
          to label %_ZNSolsEPFRSoS_E.exit97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit97:                          ; preds = %.noexc148
  %i.fl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.10, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99: ; preds = %_ZNSolsEPFRSoS_E.exit97
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !98 ; 2 uses
  %i.fo = load ptr, ptr %0, align 8, !tbaa !97
  %.not.i100 = icmp eq ptr %i.fn, %i.fo
  br i1 %.not.i100, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE4rowsEv.exit, label %bb.ae
end_hunk_0
begin_hunk_1_@_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE11writeOctaveEPKcb:bb.a
  %i.hc = load ptr, ptr %i.gx, align 8, !tbaa !18
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = invoke noundef signext i8 %i.he(ptr noundef nonnull align 8 dereferenceable(570) %i.gx, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i165 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !292

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i165: ; preds = %.noexc168, %bb.ak
  %.0.i.i.i166 = phi i8 [ %i.hb, %bb.ak ], [ %i.hf, %.noexc168 ]
  %i.hg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gr, i8 noundef signext %.0.i.i.i166)
          to label %.noexc170 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc170:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i165
  %i.hh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hg)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.am:                                            ; preds = %.noexc170
  %i.hi = load ptr, ptr %4, align 8, !tbaa !18
  %i.hj = getelementptr i8, ptr %i.hi, i64 -24    ; 3 uses
  %i.hk = load i64, ptr %i.hj, align 8
  %i.hl = getelementptr inbounds i8, ptr %4, i64 %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store i64 9, ptr %i.hm, align 8, !tbaa !322
  %i.hn = load i64, ptr %i.hj, align 8
  %i.ho = getelementptr inbounds i8, ptr %4, i64 %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !323
  %i.hr = and i32 %i.hq, -261
  %i.hs = or disjoint i32 %i.hr, 4
  store i32 %i.hs, ptr %i.hp, align 8, !tbaa !324
  %i.ht = load i64, ptr %i.hj, align 8
  %i.hu = getelementptr inbounds i8, ptr %4, i64 %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 240
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !316 ; 6 uses
  %.not.i.i.i173 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i173, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i174

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i174: ; preds = %bb.am
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 56
  %i.hy = load i8, ptr %i.hx, align 8, !tbaa !321
  %.not.i1.i.i175 = icmp eq i8 %i.hy, 0
  br i1 %.not.i1.i.i175, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i174
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 67
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !94
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176

bb.ao:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i174
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hw)
          to label %.noexc179 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc179:                                        ; preds = %bb.ao
  %i.ib = load ptr, ptr %i.hw, align 8, !tbaa !18
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 48
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = invoke noundef signext i8 %i.id(ptr noundef nonnull align 8 dereferenceable(570) %i.hw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !292

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176: ; preds = %.noexc179, %bb.an
  %.0.i.i.i177 = phi i8 [ %i.ia, %bb.an ], [ %i.ie, %.noexc179 ]
  %i.if = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext %.0.i.i.i177)
          to label %.noexc181 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc181:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176
  %i.ig = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.if)
          to label %_ZNSolsEPFRSoS_E.exit110.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit110.preheader:               ; preds = %.noexc181
  br i1 %.not.i.i380, label %_ZNSolsEPFRSoS_E.exit110._crit_edge, label %.lr.ph331

_ZNSolsEPFRSoS_E.exit110._crit_edge:              ; preds = %_ZNSolsEPFRSoS_E.exit117, %_ZNSolsEPFRSoS_E.exit110.preheader
  %i.ih = load ptr, ptr %4, align 8, !tbaa !18
  %i.ii = getelementptr i8, ptr %i.ih, i64 -24
  %i.ij = load i64, ptr %i.ii, align 8
  %i.ik = getelementptr inbounds i8, ptr %4, i64 %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  %i.im = load i32, ptr %i.il, align 8, !tbaa !325
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.not.i.i.i = icmp eq ptr %.sroa.0218.0.lcssa377, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSolsEPFRSoS_E.exit110._crit_edge
  %i.in = ptrtoint ptr %.sroa.24.0.lcssa373 to i64
  %i.io = sub i64 %i.in, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0218.0.lcssa377, i64 noundef %i.io) #31
  br label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EED2Ev.exit

_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit110._crit_edge, %bb.ap
  %i.ip = load ptr, ptr %3, align 8, !tbaa !298   ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.b
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EED2Ev.exit
  %i.ir = load i64, ptr %i.b, align 8, !tbaa !94
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.it = icmp eq i32 %i.im, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret i1 %i.it

bb.aq:                                            ; preds = %.noexc65, %bb.h
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ar:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS2_14TripletColSortEEvT_SA_T0_.exit
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.lr.ph331:                                        ; preds = %_ZNSolsEPFRSoS_E.exit110.preheader, %_ZNSolsEPFRSoS_E.exit117
  %.sroa.0196.0330 = phi ptr [ %i.jy, %_ZNSolsEPFRSoS_E.exit117 ], [ %.sroa.0218.0.lcssa377, %_ZNSolsEPFRSoS_E.exit110.preheader ] ; 4 uses
  %i.iw = load i32, ptr %.sroa.0196.0330, align 8, !tbaa !178
  %i.ix = add nsw i32 %i.iw, 1
  %i.iy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.ix)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.as:                                            ; preds = %.lr.ph331
  %i.iz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112: ; preds = %bb.as
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0196.0330, i64 4
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !179
  %i.jc = add nsw i32 %i.jb, 1
  %i.jd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, i32 noundef %i.jc)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.at:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112
  %i.je = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jd, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114: ; preds = %bb.at
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0196.0330, i64 8
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !326
  %i.jh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jd, double noundef %i.jg)
          to label %_ZNSolsEd.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !18
  %i.jj = getelementptr i8, ptr %i.ji, i64 -24
  %i.jk = load i64, ptr %i.jj, align 8
  %i.jl = getelementptr inbounds i8, ptr %i.jh, i64 %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 240
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !316 ; 6 uses
  %.not.i.i.i184 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i184, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i185

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i185: ; preds = %_ZNSolsEd.exit
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 56
  %i.jp = load i8, ptr %i.jo, align 8, !tbaa !321
  %.not.i1.i.i186 = icmp eq i8 %i.jp, 0
  br i1 %.not.i1.i.i186, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i185
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 67
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !94
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i187

bb.av:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i185
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jn)
          to label %.noexc190 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc190:                                        ; preds = %bb.av
  %i.js = load ptr, ptr %i.jn, align 8, !tbaa !18
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 48
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = invoke noundef signext i8 %i.ju(ptr noundef nonnull align 8 dereferenceable(570) %i.jn, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i187 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !292

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i187: ; preds = %.noexc190, %bb.au
  %.0.i.i.i188 = phi i8 [ %i.jr, %bb.au ], [ %i.jv, %.noexc190 ]
  %i.jw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.jh, i8 noundef signext %.0.i.i.i188)
          to label %.noexc192 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc192:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i187
  %i.jx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jw)
          to label %_ZNSolsEPFRSoS_E.exit117 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit117:                         ; preds = %.noexc192
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.0196.0330, i64 16 ; 2 uses
  %.not237 = icmp eq ptr %i.jy, %.sroa.13.0.lcssa376
  br i1 %.not237, label %_ZNSolsEPFRSoS_E.exit110._crit_edge, label %.lr.ph331, !llvm.loop !293

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc192, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i187, %.noexc190, %bb.av, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114, %bb.at, %bb.as, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112, %.lr.ph331, %.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE4rowsEv.exit, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE4colsEv.exit, %bb.w, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEPFRSoS_E.exit, %_ZNSolsEPFRSoS_E.exit93, %_ZNSolsEPFRSoS_E.exit97, %_ZNSolsEPFRSoS_E.exit102, %bb.y, %.noexc125, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc127, %bb.aa, %.noexc135, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i132, %.noexc137, %bb.ad, %.noexc146, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i143, %.noexc148, %bb.ah, %.noexc157, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i154, %.noexc159, %bb.al, %.noexc168, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i165, %.noexc170, %bb.ao, %.noexc179, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176, %.noexc181
  %lpad.loopexit.split-lp409 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #30
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ar
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp409, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.iv, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp246.loopexit.split-lp, %.loopexit.split-lp241.loopexit.split-lp, %bb.aq, %bb.aw
  %.sroa.24.6 = phi ptr [ %.sroa.24.1.lcssa, %bb.aq ], [ %.sroa.24.0.lcssa373, %bb.aw ], [ %.sroa.13.1316, %.loopexit.split-lp241.loopexit.split-lp ], [ %.sroa.24.7, %.loopexit.split-lp246.loopexit.split-lp ]
  %.sroa.0218.6 = phi ptr [ %.sroa.0218.1.lcssa, %bb.aq ], [ %.sroa.0218.0.lcssa377, %bb.aw ], [ %.sroa.0218.1317, %.loopexit.split-lp241.loopexit.split-lp ], [ %.sroa.0218.7, %.loopexit.split-lp246.loopexit.split-lp ] ; 3 uses
  %.pn58.pn = phi { ptr, i32 } [ %i.iu, %bb.aq ], [ %.pn.pn, %bb.aw ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp241.loopexit.split-lp ], [ %lpad.loopexit.split-lp413, %.loopexit.split-lp246.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %.sroa.0218.6, null
  br i1 %.not.i.i.i118, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EED2Ev.exit119, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jz = ptrtoint ptr %.sroa.24.6 to i64
  %i.ka = ptrtoint ptr %.sroa.0218.6 to i64
  %i.kb = sub i64 %i.jz, %i.ka
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0218.6, i64 noundef %i.kb) #31
  br label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EED2Ev.exit119

_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EED2Ev.exit119: ; preds = %bb.ay, %bb.ax, %bb.g
  %.pn58.pn.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %.pn58.pn, %bb.ax ], [ %.pn58.pn, %bb.ay ]
  %i.kc = load ptr, ptr %3, align 8, !tbaa !298   ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.b
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EED2Ev.exit119
  %i.ke = load i64, ptr %i.b, align 8, !tbaa !94
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EED2Ev.exit119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn58.pn.pn
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE19initMatrixStructureERKNS_17SparseBlockMatrixIS3_EE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !142  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !143  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !146 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !147
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #31
  br label %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.g
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.d, align 8, !tbaa !142
  br label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.o = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i, label %_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !148
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #31
  br label %_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEED2Ev.exit

_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #31
  br label %bb.e

bb.e:                                             ; preds = %_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEED2Ev.exit, %bb.a
  %i.u = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %1, ptr %i.u, align 8, !tbaa !327
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !327
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store ptr %i.u, ptr %i.a, align 8, !tbaa !118
  %i.y = tail call noundef i32 @_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE24fillSparseBlockMatrixCCSERNS_20SparseBlockMatrixCCSIS3_EE(ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.u) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE24fillSparseBlockMatrixCCSERNS_20SparseBlockMatrixCCSIS3_EE(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !101
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 48                  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !143  ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !142  ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 24                  ; 3 uses
  %i.q = icmp ugt i64 %i.i, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = sub nuw nsw i64 %i.i, %i.p
  tail call void @_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.r)
  br label %_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.s = icmp ult i64 %i.i, %i.p
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.i ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, %i.t
  br i1 %.not.i.i, label %_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i ], [ %i.t, %bb.d ] ; 3 uses
  %i.u = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !146 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !147
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #31
  br label %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i
  store ptr %i.t, ptr %i.j, align 8, !tbaa !143
  br label %_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE6resizeEm.exit

_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !101 ; 2 uses
  %.not42 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not42, label %._crit_edge40, label %.lr.ph39

._crit_edge40:                                    ; preds = %._crit_edge, %_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE6resizeEm.exit
  %.014.lcssa = phi i32 [ 0, %_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE6resizeEm.exit ], [ %.1.lcssa, %._crit_edge ]
  ret i32 %.014.lcssa

.lr.ph39:                                         ; preds = %_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE6resizeEm.exit, %._crit_edge
  %i.ad = phi ptr [ %i.br, %._crit_edge ], [ %i.ac, %_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE6resizeEm.exit ]
  %.038 = phi i64 [ %i.bp, %._crit_edge ], [ 0, %_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE6resizeEm.exit ] ; 3 uses
  %.01437 = phi i32 [ %.1.lcssa, %._crit_edge ], [ 0, %_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE6resizeEm.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %.038 ; 3 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !142
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.038 ; 6 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !146 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 6 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !337 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.aj, %i.ah
  br i1 %.not.i.i15, label %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE5clearEv.exit, label %_ZSt8_DestroyIPN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockES6_EvT_S8_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %.lr.ph39
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !337
  br label %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE5clearEv.exit

_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE5clearEv.exit: ; preds = %.lr.ph39, %_ZSt8_DestroyIPN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockES6_EvT_S8_RSaIT0_E.exit.i.i
  %i.ak = phi ptr [ %i.aj, %.lr.ph39 ], [ %i.ah, %_ZSt8_DestroyIPN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockES6_EvT_S8_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !40 ; 4 uses
  %i.an = icmp ugt i64 %i.am, 576460752303423487
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE5clearEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #32
  unreachable

bb.g:                                             ; preds = %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE5clearEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !147 ; 2 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 4
  %i.au = icmp ult i64 %i.at, %i.am
  br i1 %i.au, label %_ZNSt12_Vector_baseIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.g
  %i.av = ptrtoint ptr %i.ak to i64
  %i.aw = sub i64 %i.av, %i.ar
  %i.ax = shl nuw nsw i64 %i.am, 4
  %i.ay = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #33 ; 5 uses
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !146 ; 5 uses
  %i.ba = load ptr, ptr %i.ai, align 8, !tbaa !337 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.az, %i.ba
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i16

.lr.ph.i.i.i.i16:                                 ; preds = %_ZNSt12_Vector_baseIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i16
  %.012.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i16 ], [ %i.ay, %_ZNSt12_Vector_baseIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i16 ], [ %i.az, %_ZNSt12_Vector_baseIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !339, !alias.scope !340
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i17 = icmp eq ptr %i.bb, %i.ba
  br i1 %.not.i.i.i.i17, label %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i16, !llvm.loop !331

_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i16, %_ZNSt12_Vector_baseIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.az, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.bd = load ptr, ptr %i.ao, align 8, !tbaa !147
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.az to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bg) #31
  br label %_ZNSt12_Vector_baseIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.ay, ptr %i.ag, align 8, !tbaa !146
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw ; 2 uses
  store ptr %i.bh, ptr %i.ai, align 8, !tbaa !337
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.am ; 2 uses
  store ptr %i.bi, ptr %i.ao, align 8, !tbaa !147
  br label %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE7reserveEm.exit: ; preds = %bb.g, %_ZNSt12_Vector_baseIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.bj = phi ptr [ %i.ah, %bb.g ], [ %i.ay, %_ZNSt12_Vector_baseIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bk = phi ptr [ %i.ap, %bb.g ], [ %i.bi, %_ZNSt12_Vector_baseIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bl = phi ptr [ %i.ak, %bb.g ], [ %i.bh, %_ZNSt12_Vector_baseIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !38 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %.not34 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not34, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE9push_backEOS6_.exit, %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE7reserveEm.exit
  %.1.lcssa = phi i32 [ %.01437, %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE7reserveEm.exit ], [ %i.db, %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE9push_backEOS6_.exit ] ; 2 uses
  %i.bp = add nuw i64 %.038, 1                    ; 2 uses
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !101 ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = sdiv exact i64 %i.bu, 48
  %i.bw = icmp ult i64 %i.bp, %i.bv
  br i1 %i.bw, label %.lr.ph39, label %._crit_edge40, !llvm.loop !332

.lr.ph:                                           ; preds = %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE7reserveEm.exit, %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE9push_backEOS6_.exit
  %i.bx = phi ptr [ %i.cy, %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE9push_backEOS6_.exit ], [ %i.bj, %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE7reserveEm.exit ] ; 6 uses
  %i.by = phi ptr [ %i.cz, %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE9push_backEOS6_.exit ], [ %i.bk, %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE7reserveEm.exit ] ; 5 uses
  %i.bz = phi ptr [ %i.da, %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE9push_backEOS6_.exit ], [ %i.bl, %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE7reserveEm.exit ] ; 4 uses
  %.136 = phi i32 [ %i.db, %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE9push_backEOS6_.exit ], [ %.01437, %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE7reserveEm.exit ]
  %.sroa.027.035 = phi ptr [ %i.dc, %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE9push_backEOS6_.exit ], [ %i.bn, %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE7reserveEm.exit ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.027.035, i64 32
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !115 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.027.035, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !116 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.bz, %i.by
  br i1 %.not.i.i18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  store i32 %i.cb, ptr %i.bz, align 8, !tbaa !33
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.cd, ptr %.sroa.523.0..sroa_idx, align 8, !tbaa !338
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  store ptr %i.ce, ptr %i.ai, align 8, !tbaa !337
  br label %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE9push_backEOS6_.exit

bb.j:                                             ; preds = %.lr.ph
  %i.cf = ptrtoint ptr %i.by to i64
  %i.cg = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 3 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775792
  br i1 %i.ci, label %bb.k, label %_ZNKSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #32
  unreachable

_ZNKSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.cj = ashr exact i64 %i.ch, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cj, i64 1)
  %i.ck = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cj ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.cj
  %i.cm = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 576460752303423487)
  %i.cn = select i1 %i.cl, i64 576460752303423487, i64 %i.cm ; 3 uses
  %.not.i.i.i.i19 = icmp ne i64 %i.cn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i19)
  %i.co = shl nuw nsw i64 %i.cn, 4
  %i.cp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #33 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ch ; 2 uses
  store i32 %i.cb, ptr %i.cq, align 8, !tbaa !33
  %.sroa.523.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cd, ptr %.sroa.523.0..sroa_idx24, align 8, !tbaa !338
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.by
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i ], [ %i.cp, %_ZNKSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i ], [ %i.bx, %_ZNKSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !339, !alias.scope !341
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cr, %i.by
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !331

_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cp, %_ZNKSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cs, %.lr.ph.i.i.i.i.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  %i.cu = load ptr, ptr %i.ao, align 8, !tbaa !147
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = sub i64 %i.cv, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cw) #31
  br label %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.cp, ptr %i.ag, align 8, !tbaa !146
  store ptr %i.ct, ptr %i.ai, align 8, !tbaa !337
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.cn ; 2 uses
  store ptr %i.cx, ptr %i.ao, align 8, !tbaa !147
  br label %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.i, %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cy = phi ptr [ %i.bx, %bb.i ], [ %i.cp, %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  %i.cz = phi ptr [ %i.by, %bb.i ], [ %i.cx, %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  %i.da = phi ptr [ %i.ce, %bb.i ], [ %i.ct, %_ZNSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  %i.db = add nsw i32 %.136, 1                    ; 2 uses
  %i.dc = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.027.035) #34 ; 2 uses
  %.not = icmp eq ptr %i.dc, %i.bo
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !336
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !142    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EEmS9_ET_SB_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EEmS9_ET_SB_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !143
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #32
  unreachable

_ZNKSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #33 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !172, !alias.scope !347
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !172, !alias.scope !346
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !147, !alias.scope !347
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !147, !alias.scope !346
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !347
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i, !llvm.loop !345

_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EESaIS9_EE13_M_deallocateEPS9_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #31
  br label %_ZNSt12_Vector_baseISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EESaIS9_EE13_M_deallocateEPS9_m.exit37

_ZNSt12_Vector_baseISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EESaIS9_EE13_M_deallocateEPS9_m.exit37: ; preds = %_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS6_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !142
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !143
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !148
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EEmS9_ET_SB_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE8RowBlockESaIS7_EESaIS9_EE13_M_deallocateEPS9_m.exit37, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, double noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !180
  %i.c = icmp slt i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sitofp i64 %1 to double
  %i.e = fmul double %2, %i.d
  %i.f = fptosi double %i.e to i64
  %i.g = add nsw i64 %1, %i.f
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.g, i64 2147483647) ; 7 uses
  %i.h = icmp slt i64 %.sroa.speculated, %1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !18
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %.sroa.speculated, 2305843009213693951
  %i.k = shl nuw i64 %.sroa.speculated, 3
  %i.l = select i1 %i.j, i64 -1, i64 %i.k
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #33 ; 3 uses
  %i.n = icmp ugt i64 %.sroa.speculated, 4611686018427387903
  %i.o = shl nuw i64 %.sroa.speculated, 2
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #33
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i ; 2 uses

end_hunk_1
