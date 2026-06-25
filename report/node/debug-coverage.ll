inline.NumInlined: 1792
inline.NumDeleted: 970
begin_hunk_0_@_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #12 {
bb.a:
  %2 = alloca %"struct.v8::internal::(anonymous namespace)::SharedFunctionInfoAndCount", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.016 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = icmp eq ptr %.sroa.0.016, %1
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.t
  %.sroa.0.018 = phi ptr [ %.sroa.0.016, %.lr.ph ], [ %.sroa.0.0, %bb.t ] ; 7 uses
  %.pn17 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.018, %bb.t ] ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pn17, i64 36
  %i.h = load i32, ptr %i.g, align 4              ; 5 uses
  %i.i = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, %i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.sroa.7.0..val3.sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pn17, i64 40
  %.sroa.7.0.copyload.i.pre = load i32, ptr %.sroa.7.0..val3.sroa_idx.i.phi.trans.insert, align 8
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.pn17, i64 40
  %i.l = load i32, ptr %i.k, align 8              ; 5 uses
  %i.m = load i32, ptr %i.d, align 8              ; 2 uses
  %.not12.i.i = icmp eq i32 %i.l, %i.m
  br i1 %.not12.i.i, label %bb.e, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %.sroa.0.018, align 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, 55
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = load atomic volatile i32, ptr %i.q monotonic, align 4
  %i.s = load ptr, ptr %0, align 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, 55
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i32, ptr %i.v monotonic, align 4
  %i.x = xor i32 %i.w, %i.r
  %i.y = and i32 %i.x, 134217728
  %.not28.i.i = icmp eq i32 %i.y, 0
  br i1 %.not28.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load atomic volatile i32, ptr %i.q monotonic, align 4
  %i.aa = and i32 %i.z, 134217728
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.l, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn17, i64 32
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = load i32, ptr %i.e, align 8
  %i.ae = icmp ugt i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.h, label %bb.l

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit: ; preds = %bb.d
  %i.af = icmp sgt i32 %i.l, %i.m
  br i1 %i.af, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.018, i64 24, i1 false)
  %i.ag = ptrtoint ptr %.sroa.0.018 to i64
  %i.ah = sub i64 %i.ag, %i.f                     ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 24
  br i1 %i.ai, label %bb.i, label %bb.j, !prof !102

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn17, i64 48
  %.neg30 = udiv exact i64 %i.ah, 24
  %.neg30.neg = sub nsw i64 0, %.neg30
  %i.ak = getelementptr inbounds [24 x i8], ptr %i.aj, i64 %.neg30.neg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ah, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.j:                                             ; preds = %bb.h
  %i.al = icmp eq i64 %i.ah, 24
  br i1 %i.al, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.pn17, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(20) %0, i64 20, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.t

bb.l:                                             ; preds = %._crit_edge, %bb.f, %bb.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  %.sroa.7.0.copyload.i = phi i32 [ %.sroa.7.0.copyload.i.pre, %._crit_edge ], [ %i.l, %bb.f ], [ %i.l, %bb.g ], [ %i.l, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit ] ; 3 uses
  %.sroa.05.0.copyload.i = load ptr, ptr %.sroa.0.018, align 8 ; 2 uses
  %.sroa.5.0..val3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn17, i64 32
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..val3.sroa_idx.i, align 8 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.s, %bb.l
  %.sroa.010.0.i = phi ptr [ %.sroa.0.018, %bb.l ], [ %.sroa.0.0.i, %bb.s ] ; 9 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.010.0.i, i64 -24 ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %.sroa.010.0.i, i64 -12
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, %i.ao
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.h, %i.ao
  br i1 %i.ap, label %bb.s, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

bb.o:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds i8, ptr %.sroa.010.0.i, i64 -8
  %i.ar = load i32, ptr %i.aq, align 8            ; 2 uses
  %.not12.i.i.i = icmp eq i32 %.sroa.7.0.copyload.i, %i.ar
  br i1 %.not12.i.i.i, label %bb.p, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i

bb.p:                                             ; preds = %bb.o
  %i.as = load i64, ptr %.sroa.05.0.copyload.i, align 8
  %i.at = add i64 %i.as, 55
  %i.au = inttoptr i64 %i.at to ptr               ; 2 uses
  %i.av = load atomic volatile i32, ptr %i.au monotonic, align 4
  %i.aw = load ptr, ptr %.sroa.0.0.i, align 8
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = add i64 %i.ax, 55
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load atomic volatile i32, ptr %i.az monotonic, align 4
  %i.bb = xor i32 %i.ba, %i.av
  %i.bc = and i32 %i.bb, 134217728
  %.not28.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not28.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = load atomic volatile i32, ptr %i.au monotonic, align 4
  %i.be = and i32 %i.bd, 134217728
  %.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit, label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds i8, ptr %.sroa.010.0.i, i64 -16
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = icmp ugt i32 %.sroa.5.0.copyload.i, %i.bg
  br i1 %i.bh, label %bb.s, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i: ; preds = %bb.o
  %i.bi = icmp sgt i32 %.sroa.7.0.copyload.i, %i.ar
  br i1 %i.bi, label %bb.s, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

bb.s:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i, %bb.r, %bb.q, %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.010.0.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.0.i, i64 20, i1 false)
  br label %bb.m, !llvm.loop !23

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit: ; preds = %bb.n, %bb.q, %bb.r, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i
  store ptr %.sroa.05.0.copyload.i, ptr %.sroa.010.0.i, align 8
  %.sroa.5.0..val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 8
  store i32 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..val.sroa_idx.i, align 8
  %.sroa.6.0..val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 12
  store i32 %i.h, ptr %.sroa.6.0..val.sroa_idx.i, align 4
  %.sroa.7.0..val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 16
  store i32 %.sroa.7.0.copyload.i, ptr %.sroa.7.0..val.sroa_idx.i, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.018, i64 24 ; 2 uses
  %i.bj = icmp eq ptr %.sroa.0.0, %1
  br i1 %i.bj, label %.loopexit, label %bb.b, !llvm.loop !147

.loopexit:                                        ; preds = %bb.t, %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_113SortBlockDataERSt6vectorINS0_13CoverageBlockESaIS3_EE(ptr %.0.val, ptr %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %.0.val, %.8.val
  br i1 %i.a, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %.8.val to i64
  %i.c = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sdiv exact i64 %i.d, 12
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = xor i64 %i.g, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_T1_(ptr %.0.val, ptr %.8.val, i64 noundef %i.h, ptr nonnull @_ZN2v88internal12_GLOBAL__N_120CompareCoverageBlockERKNS0_13CoverageBlockES4_)
  %i.i = icmp sgt i64 %i.d, 192
  %scevgep.i = getelementptr i8, ptr %.0.val, i64 12 ; 3 uses
  br i1 %i.i, label %.lr.ph.i.i, label %bb.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.sroa.0.020.i.idx.i = phi i64 [ 12, %.lr.ph.i.i ], [ %.sroa.0.020.i.add.i, %bb.h ] ; 4 uses
  %.pn19.i.i = phi ptr [ %.0.val, %.lr.ph.i.i ], [ %.sroa.0.020.i.ptr.i, %bb.h ] ; 4 uses
  %.sroa.0.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.020.i.idx.i ; 7 uses
  %i.k = load i32, ptr %.sroa.0.020.i.ptr.i, align 4 ; 7 uses
  %i.l = load i32, ptr %.0.val, align 4           ; 2 uses
  %i.m = icmp eq i32 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.ptr.i, i64 4
  %i.o = load i32, ptr %i.n, align 4              ; 4 uses
  %i.p = load i32, ptr %i.j, align 4
  %i.q = icmp sgt i32 %i.o, %i.p
  %i.r = icmp slt i32 %i.k, %i.l
  %.0.i9 = select i1 %i.m, i1 %i.q, i1 %i.r
  br i1 %.0.i9, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload = load <3 x i32>, ptr %.sroa.0.020.i.ptr.i, align 4
  %i.s = icmp samesign ugt i64 %.sroa.0.020.i.idx.i, 12
  br i1 %i.s, label %bb.e, label %bb.f, !prof !102

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %.0.val, i64 %.sroa.0.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %.0.val, i64 12, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i: ; preds = %bb.f, %bb.e
  store <3 x i32> %.sroa.0.0.copyload, ptr %.0.val, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %.sroa.8.0..sroa.0.020.i.ptr.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.ptr.i, i64 8
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa.0.020.i.ptr.i.sroa_idx, align 4
  %i.u = load i32, ptr %.pn19.i.i, align 4        ; 2 uses
  %i.v = icmp eq i32 %i.k, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp sgt i32 %i.o, %i.x
  %i.z = icmp slt i32 %i.k, %i.u
  %.0.i8 = select i1 %i.v, i1 %i.y, i1 %i.z
  br i1 %.0.i8, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.sroa.0.09.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.pn19.i.i, %bb.g ] ; 5 uses
  %.sroa.04.08.i.i.i = phi ptr [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.020.i.ptr.i, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.09.i.i.i, i64 12, i1 false)
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i, i64 -12 ; 2 uses
  %i.aa = load i32, ptr %.sroa.0.0.i.i.i, align 4 ; 2 uses
  %i.ab = icmp eq i32 %i.k, %i.aa
  %i.ac = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i, i64 -8
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp sgt i32 %i.o, %i.ad
  %i.af = icmp slt i32 %i.k, %i.aa
  %.0.i7 = select i1 %i.ab, i1 %i.ae, i1 %i.af
  br i1 %.0.i7, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i, !llvm.loop !148

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.g
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i, %bb.g ], [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  store i32 %i.k, ptr %.sroa.04.0.lcssa.i.i.i, align 4
  %.sroa.6.0..sroa.04.0.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i, i64 4
  store i32 %i.o, ptr %.sroa.6.0..sroa.04.0.lcssa.i.i.i.sroa_idx, align 4
  %.sroa.8.0..sroa.04.0.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i, i64 8
  store i32 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa.04.0.lcssa.i.i.i.sroa_idx, align 4
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i
  %.sroa.0.020.i.add.i = add nuw nsw i64 %.sroa.0.020.i.idx.i, 12 ; 2 uses
  %i.ag = icmp eq i64 %.sroa.0.020.i.add.i, 192
  br i1 %i.ag, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i, label %bb.c, !llvm.loop !149

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i: ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.val, i64 192 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %.8.val
  br i1 %i.ai, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i
  %.sroa.0.07.i.i = phi ptr [ %i.aw, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i ], [ %i.ah, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i ] ; 7 uses
  %.sroa.06.0.copyload = load i32, ptr %.sroa.0.07.i.i, align 4 ; 5 uses
  %.sroa.69.0..sroa.0.07.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 4 ; 2 uses
  %i.aj = load <2 x i32>, ptr %.sroa.69.0..sroa.0.07.i.i.sroa_idx, align 4
  %.sroa.69.0.copyload = load i32, ptr %.sroa.69.0..sroa.0.07.i.i.sroa_idx, align 4 ; 2 uses
  %.sroa.0.07.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i, i64 -12 ; 2 uses
  %i.ak = load i32, ptr %.sroa.0.07.i.i.i, align 4 ; 2 uses
  %i.al = icmp eq i32 %.sroa.06.0.copyload, %i.ak
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.07.i.i, i64 -8
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = icmp sgt i32 %.sroa.69.0.copyload, %i.an
  %i.ap = icmp slt i32 %.sroa.06.0.copyload, %i.ak
  %.0.i6 = select i1 %i.al, i1 %i.ao, i1 %i.ap
  br i1 %.0.i6, label %.lr.ph.i.i13.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i13.i:                                   ; preds = %.lr.ph.i10.i, %.lr.ph.i.i13.i
  %.sroa.0.09.i.i14.i = phi ptr [ %.sroa.0.0.i.i16.i, %.lr.ph.i.i13.i ], [ %.sroa.0.07.i.i.i, %.lr.ph.i10.i ] ; 5 uses
  %.sroa.04.08.i.i15.i = phi ptr [ %.sroa.0.09.i.i14.i, %.lr.ph.i.i13.i ], [ %.sroa.0.07.i.i, %.lr.ph.i10.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i15.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.09.i.i14.i, i64 12, i1 false)
  %.sroa.0.0.i.i16.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i14.i, i64 -12 ; 2 uses
  %i.aq = load i32, ptr %.sroa.0.0.i.i16.i, align 4 ; 2 uses
  %i.ar = icmp eq i32 %.sroa.06.0.copyload, %i.aq
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.09.i.i14.i, i64 -8
  %i.at = load i32, ptr %i.as, align 4
  %i.au = icmp sgt i32 %.sroa.69.0.copyload, %i.at
  %i.av = icmp slt i32 %.sroa.06.0.copyload, %i.aq
  %.0.i5 = select i1 %i.ar, i1 %i.au, i1 %i.av
  br i1 %.0.i5, label %.lr.ph.i.i13.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i, !llvm.loop !148

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i: ; preds = %.lr.ph.i.i13.i, %.lr.ph.i10.i
  %.sroa.04.0.lcssa.i.i12.i = phi ptr [ %.sroa.0.07.i.i, %.lr.ph.i10.i ], [ %.sroa.0.09.i.i14.i, %.lr.ph.i.i13.i ] ; 2 uses
  store i32 %.sroa.06.0.copyload, ptr %.sroa.04.0.lcssa.i.i12.i, align 4
  %.sroa.69.0..sroa.04.0.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i12.i, i64 4
  store <2 x i32> %i.aj, ptr %.sroa.69.0..sroa.04.0.lcssa.i.i12.i.sroa_idx, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 12 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %.8.val
  br i1 %i.ax, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %.lr.ph.i10.i, !llvm.loop !150

bb.i:                                             ; preds = %bb.b
  %i.ay = icmp eq ptr %scevgep.i, %.8.val
  br i1 %i.ay, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.o
  %.sroa.0.020.i20.i = phi ptr [ %.sroa.0.0.i24.i, %bb.o ], [ %scevgep.i, %.lr.ph.i19.i.preheader ] ; 9 uses
  %.pn19.i21.i = phi ptr [ %.sroa.0.020.i20.i, %bb.o ], [ %.0.val, %.lr.ph.i19.i.preheader ] ; 5 uses
  %i.ba = load i32, ptr %.sroa.0.020.i20.i, align 4 ; 7 uses
  %i.bb = load i32, ptr %.0.val, align 4          ; 2 uses
  %i.bc = icmp eq i32 %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i20.i, i64 4
  %i.be = load i32, ptr %i.bd, align 4            ; 4 uses
  %i.bf = load i32, ptr %i.az, align 4
  %i.bg = icmp sgt i32 %i.be, %i.bf
  %i.bh = icmp slt i32 %i.ba, %i.bb
  %.0.i4 = select i1 %i.bc, i1 %i.bg, i1 %i.bh
  br i1 %.0.i4, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.lr.ph.i19.i
  %.sroa.030.0.copyload = load <3 x i32>, ptr %.sroa.0.020.i20.i, align 4
  %i.bi = ptrtoint ptr %.sroa.0.020.i20.i to i64
  %i.bj = sub i64 %i.bi, %i.c                     ; 4 uses
  %i.bk = icmp sgt i64 %i.bj, 12
  br i1 %i.bk, label %bb.k, label %bb.l, !prof !102

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  %.neg24.i30.i = udiv exact i64 %i.bj, 12
  %.neg24.neg.i31.i = sub nsw i64 0, %.neg24.i30.i
  %i.bm = getelementptr inbounds [12 x i8], ptr %i.bl, i64 %.neg24.neg.i31.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bm, ptr noundef nonnull align 4 dereferenceable(1) %.0.val, i64 %i.bj, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i29.i

bb.l:                                             ; preds = %bb.j
  %i.bn = icmp eq i64 %i.bj, 12
  br i1 %i.bn, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i29.i

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bo, ptr noundef nonnull align 4 dereferenceable(12) %.0.val, i64 12, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i29.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i29.i: ; preds = %bb.m, %bb.l, %bb.k
  store <3 x i32> %.sroa.030.0.copyload, ptr %.0.val, align 4
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.i19.i
  %.sroa.820.0..sroa.0.020.i20.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i20.i, i64 8
  %.sroa.820.0.copyload = load i32, ptr %.sroa.820.0..sroa.0.020.i20.i.sroa_idx, align 4
  %i.bp = load i32, ptr %.pn19.i21.i, align 4     ; 2 uses
  %i.bq = icmp eq i32 %i.ba, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 4
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = icmp sgt i32 %i.be, %i.bs
  %i.bu = icmp slt i32 %i.ba, %i.bp
  %.0.i3 = select i1 %i.bq, i1 %i.bt, i1 %i.bu
  br i1 %.0.i3, label %.lr.ph.i.i25.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i25.i:                                   ; preds = %bb.n, %.lr.ph.i.i25.i
  %.sroa.0.09.i.i26.i = phi ptr [ %.sroa.0.0.i.i28.i, %.lr.ph.i.i25.i ], [ %.pn19.i21.i, %bb.n ] ; 5 uses
  %.sroa.04.08.i.i27.i = phi ptr [ %.sroa.0.09.i.i26.i, %.lr.ph.i.i25.i ], [ %.sroa.0.020.i20.i, %bb.n ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i27.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.09.i.i26.i, i64 12, i1 false)
  %.sroa.0.0.i.i28.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i26.i, i64 -12 ; 2 uses
  %i.bv = load i32, ptr %.sroa.0.0.i.i28.i, align 4 ; 2 uses
  %i.bw = icmp eq i32 %i.ba, %i.bv
  %i.bx = getelementptr inbounds i8, ptr %.sroa.0.09.i.i26.i, i64 -8
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = icmp sgt i32 %i.be, %i.by
  %i.ca = icmp slt i32 %i.ba, %i.bv
  %.0.i = select i1 %i.bw, i1 %i.bz, i1 %i.ca
  br i1 %.0.i, label %.lr.ph.i.i25.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i22.i, !llvm.loop !148

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i22.i: ; preds = %.lr.ph.i.i25.i, %bb.n
  %.sroa.04.0.lcssa.i.i23.i = phi ptr [ %.sroa.0.020.i20.i, %bb.n ], [ %.sroa.0.09.i.i26.i, %.lr.ph.i.i25.i ] ; 3 uses
  store i32 %i.ba, ptr %.sroa.04.0.lcssa.i.i23.i, align 4
  %.sroa.617.0..sroa.04.0.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i23.i, i64 4
  store i32 %i.be, ptr %.sroa.617.0..sroa.04.0.lcssa.i.i23.i.sroa_idx, align 4
  %.sroa.820.0..sroa.04.0.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i23.i, i64 8
  store i32 %.sroa.820.0.copyload, ptr %.sroa.820.0..sroa.04.0.lcssa.i.i23.i.sroa_idx, align 4
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i29.i
  %.sroa.0.0.i24.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i20.i, i64 12 ; 2 uses
  %i.cb = icmp eq ptr %.sroa.0.0.i24.i, %.8.val
  br i1 %i.cb, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !149

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i, %bb.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i, %bb.a
  ret void
}

declare i64 @_ZNK2v88internal18SharedFunctionInfo12GetDebugInfoEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %.val3 = load i32, ptr %i.a, align 4            ; 10 uses
  %i.b = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.b, align 8         ; 5 uses
  %i.c = getelementptr i8, ptr %.val, i64 32
  %.val.val4 = load ptr, ptr %i.c, align 8
  %i.d = add nsw i32 %.val3, 1
  %i.e = ptrtoint ptr %.val.val4 to i64
  %i.f = ptrtoint ptr %.val.val to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp slt i32 %i.d, %i.i                  ; 2 uses
  br i1 %i.j, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !range !60, !noundef !61
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.o = load i8, ptr %i.n, align 1, !range !60
  %i.p = trunc nuw i8 %i.o to i1
  %or.cond = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17MaybeWriteCurrentEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp sgt i32 %.val3, -1
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.s, %.val3
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = zext nneg i32 %.val3 to i64
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %.val.val, i64 %i.t
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %.val.val, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.w, ptr noundef nonnull align 4 dereferenceable(12) %i.u, i64 12, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 8
  br label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17MaybeWriteCurrentEv.exit

_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17MaybeWriteCurrentEv.exit: ; preds = %bb.f, %bb.b
  store i8 1, ptr %i.k, align 8
  br label %.critedge

bb.g:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 1, !range !60, !noundef !61
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17MaybeWriteCurrentEv.exit10, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp sgt i32 %.val3, -1
  br i1 %i.ad, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load i32, ptr %i.ae, align 8            ; 2 uses
  %.not.i9 = icmp eq i32 %i.af, %.val3
  br i1 %.not.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = zext nneg i32 %.val3 to i64
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %.val.val, i64 %i.ag
  %i.ai = sext i32 %i.af to i64
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %.val.val, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aj, ptr noundef nonnull align 4 dereferenceable(12) %i.ah, i64 12, i1 false)
  %.pre.pre = load i32, ptr %i.a, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.pre = phi i32 [ %.pre.pre, %bb.j ], [ %.val3, %bb.i ], [ %.val3, %bb.h ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8
  br label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17MaybeWriteCurrentEv.exit10

_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17MaybeWriteCurrentEv.exit10: ; preds = %bb.g, %bb.k
  %i.an = phi i32 [ %.val3, %bb.g ], [ %.pre, %bb.k ] ; 2 uses
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17MaybeWriteCurrentEv.exit10
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %0, align 8               ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = tail call noundef nonnull align 4 dereferenceable(12) ptr @_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12emplace_backIJRiS6_RjEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.as) ; 0 uses
  br label %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit

bb.m:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17MaybeWriteCurrentEv.exit10
  %i.au = load i8, ptr %i.aa, align 1, !range !60, !noundef !61
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val7 = load ptr, ptr %0, align 8
  %i.ax = getelementptr i8, ptr %.val7, i64 24
  %.val7.val = load ptr, ptr %i.ax, align 8
  %i.ay = sext i32 %i.an to i64
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %.val7.val, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  %.not.i11 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not.i11, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bb, ptr noundef nonnull align 4 dereferenceable(12) %i.az, i64 12, i1 false)
  %i.be = load ptr, ptr %i.ba, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store ptr %i.bf, ptr %i.ba, align 8
  br label %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit

bb.p:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %i.aw, align 8            ; 5 uses
  %i.bh = ptrtoint ptr %i.bb to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 4 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775800
  br i1 %i.bk, label %bb.q, label %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
  unreachable

_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.bl = sdiv exact i64 %i.bj, 12                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 768614336404564650)
  %i.bp = select i1 %i.bn, i64 768614336404564650, i64 %i.bo ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bq = mul nuw nsw i64 %i.bp, 12
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE17_M_default_appendEm:bb.a
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 12                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 768614336404564650, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.057.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store i32 -1, ptr %.08.i.i.i.prol, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 4
  store i32 -1, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 8
  store i32 0, ptr %i.q, align 4
  %i.r = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 12 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !156

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.t = icmp ult i64 %1, 4
  br i1 %i.t, label %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 4
  store i32 -1, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i32 0, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 12
  store i32 -1, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  store i32 -1, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 20
  store i32 0, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  store i32 -1, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 28
  store i32 -1, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  store i32 0, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 36
  store i32 -1, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  store i32 -1, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 44
  store i32 0, ptr %i.ae, align 4
  %i.af = add i64 %.057.i.i.i, -4                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !45

_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ag, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ah = icmp ult i64 %i.n, %1
  br i1 %i.ah, label %bb.d, label %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ai = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 768614336404564650) ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 12
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #22 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f ; 3 uses
  %xtraiter37 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol

.lr.ph.i.i.i25.prol:                              ; preds = %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i25.prol
  %.08.i.i.i26.prol = phi ptr [ %i.aq, %.lr.ph.i.i.i25.prol ], [ %i.am, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.057.i.i.i27.prol = phi i64 [ %i.ap, %.lr.ph.i.i.i25.prol ], [ %1, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter39 = phi i64 [ %prol.iter39.next, %.lr.ph.i.i.i25.prol ], [ 0, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit ]
  store i32 -1, ptr %.08.i.i.i26.prol, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 4
  store i32 -1, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 8
  store i32 0, ptr %i.ao, align 4
  %i.ap = add i64 %.057.i.i.i27.prol, -1          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 12 ; 2 uses
  %prol.iter39.next = add i64 %prol.iter39, 1     ; 2 uses
  %prol.iter39.cmp.not = icmp eq i64 %prol.iter39.next, %xtraiter37
  br i1 %prol.iter39.cmp.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol, !llvm.loop !157

.lr.ph.i.i.i25.prol.loopexit:                     ; preds = %.lr.ph.i.i.i25.prol, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i26.unr = phi ptr [ %i.am, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aq, %.lr.ph.i.i.i25.prol ]
  %.057.i.i.i27.unr = phi i64 [ %1, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ap, %.lr.ph.i.i.i25.prol ]
  %i.ar = icmp ult i64 %1, 4
  br i1 %i.ar, label %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %.lr.ph.i.i.i25.prol.loopexit, %.lr.ph.i.i.i25
  %.08.i.i.i26 = phi ptr [ %i.be, %.lr.ph.i.i.i25 ], [ %.08.i.i.i26.unr, %.lr.ph.i.i.i25.prol.loopexit ] ; 13 uses
  %.057.i.i.i27 = phi i64 [ %i.bd, %.lr.ph.i.i.i25 ], [ %.057.i.i.i27.unr, %.lr.ph.i.i.i25.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i26, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 4
  store i32 -1, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 8
  store i32 0, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 12
  store i32 -1, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 16
  store i32 -1, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 20
  store i32 0, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 24
  store i32 -1, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 28
  store i32 -1, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 32
  store i32 0, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 36
  store i32 -1, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 40
  store i32 -1, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 44
  store i32 0, ptr %i.bc, align 4
  %i.bd = add i64 %.057.i.i.i27, -4               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 48
  %.not.i.i.i28.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i28.3, label %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25, !llvm.loop !45

_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30: ; preds = %.lr.ph.i.i.i25, %.lr.ph.i.i.i25.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30, %.lr.ph.i.i.i31
  %.012.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i31 ], [ %i.al, %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i31 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, i64 12, i1 false), !alias.scope !158
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  %.not.i.i.i32 = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i31, !llvm.loop !39

_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i31, %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN2v88internal13CoverageBlockESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.bh = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bh) #23
  br label %_ZNSt12_Vector_baseIN2v88internal13CoverageBlockESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN2v88internal13CoverageBlockESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.al, ptr %0, align 8
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %1
  store ptr %i.bi, ptr %i.a, align 8
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bj, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2v88internal13CoverageBlockESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120CompareCoverageBlockERKNS0_13CoverageBlockES4_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) #14 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = load i32, ptr %1, align 4                ; 2 uses
  %i.c = icmp eq i32 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp sgt i32 %i.e, %i.g
  %i.i = icmp slt i32 %i.a, %i.b
  %.0 = select i1 %i.c, i1 %i.h, i1 %i.i
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.v8::internal::CoverageBlock", align 8 ; 6 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 192
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 8 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph34

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEET_SH_SH_T0_.exit
  %i.g = icmp eq i64 %i.al, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph34, !llvm.loop !162

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa30 = phi i64 [ %i.c, %.lr.ph ], [ %i.ay, %bb.b ]
  %storemerge19.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %i.h = udiv exact i64 %.lcssa30, 12             ; 3 uses
  %i.i = add nsw i64 %i.h, -2                     ; 2 uses
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %i.h, -1
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %i.h, 1
  %i.n = icmp eq i64 %i.m, 0
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = or disjoint i64 %i.i, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i, %._crit_edge
  %.012.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.aj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i ] ; 8 uses
  %i.r = getelementptr inbounds [12 x i8], ptr %0, i64 %.012.i.i ; 2 uses
  %.sroa.05.0.copyload.i.i = load i64, ptr %i.r, align 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4
  %i.s = icmp slt i64 %.012.i.i, %i.l
  br i1 %i.s, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.043.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.012.i.i, %bb.c ] ; 2 uses
  %i.t = shl i64 %.043.i.i.i, 1                   ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [12 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [12 x i8], ptr %0, i64 %i.w
  %i.y = call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %i.v, ptr noundef nonnull align 4 dereferenceable(12) %i.x) #20, !inline_history !163
  %spec.select.i.i.i = select i1 %i.y, i64 %i.w, i64 %i.u ; 4 uses
  %i.z = getelementptr inbounds [12 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.aa = getelementptr inbounds [12 x i8], ptr %0, i64 %.043.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aa, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false)
  %i.ab = icmp slt i64 %spec.select.i.i.i, %i.l
  br i1 %i.ab, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !164

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.012.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ac = icmp eq i64 %.0.lcssa.i.i.i, %i.j
  %or.cond.i.i = select i1 %i.n, i1 %i.ac, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.q, ptr noundef nonnull align 4 dereferenceable(12) %i.p, i64 12, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.o, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.05.0.copyload.i.i, ptr %4, align 8
  store i32 %.sroa.4.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.ad = icmp sgt i64 %.1.i.i.i, %.012.i.i
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.019.i.i.i.i = phi i64 [ %.01020.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.01020.in.i.i.i.i = add nsw i64 %.019.i.i.i.i, -1
  %.01020.i.i.i.i = sdiv i64 %.01020.in.i.i.i.i, 2 ; 4 uses
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.01020.i.i.i.i ; 2 uses
  %i.af = call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %4) #20, !inline_history !165
  br i1 %i.af, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.019.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ag, ptr noundef nonnull align 4 dereferenceable(12) %i.ae, i64 12, i1 false)
  %i.ah = icmp sgt i64 %.01020.i.i.i.i, %.012.i.i
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i, !llvm.loop !166

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.e ], [ %.01020.i.i.i.i, %bb.f ], [ %.019.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ai, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i.i14 = icmp eq i64 %.012.i.i, 0
  %i.aj = add nsw i64 %.012.i.i, -1
  br i1 %.not.i.i14, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit, label %bb.c, !llvm.loop !167

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_(ptr nonnull %0, ptr %storemerge19.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph34:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1933 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02032 = phi i64 [ %i.al, %bb.b ], [ %2, %.lr.ph ]
  %i.ak = phi i64 [ %i.ay, %bb.b ], [ %i.c, %.lr.ph ]
  %i.al = add nsw i64 %.02032, -1                 ; 3 uses
  %i.am = udiv i64 %i.ak, 24
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.am ; 7 uses
  %i.ao = getelementptr inbounds i8, ptr %storemerge1933, i64 -12 ; 8 uses
  %i.ap = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.an) #20, !inline_history !168
  br i1 %i.ap, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph34
  %i.aq = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %i.an, ptr noundef nonnull align 4 dereferenceable(12) %i.ao) #20, !inline_history !168
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload = load <3 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.an, i64 12, i1 false)
  store <3 x i32> %.sroa.0.0.copyload, ptr %i.an, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.ar = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.ao) #20, !inline_history !168
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.040.0.copyload = load <3 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.ao, i64 12, i1 false)
  store <3 x i32> %.sroa.040.0.copyload, ptr %i.ao, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  %.sroa.042.0.copyload = load <3 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false)
  store <3 x i32> %.sroa.042.0.copyload, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.l:                                             ; preds = %.lr.ph34
  %i.as = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.ao) #20, !inline_history !168
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.044.0.copyload = load <3 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false)
  store <3 x i32> %.sroa.044.0.copyload, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.at = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %i.an, ptr noundef nonnull align 4 dereferenceable(12) %i.ao) #20, !inline_history !168
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.046.0.copyload = load <3 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.ao, i64 12, i1 false)
  store <3 x i32> %.sroa.046.0.copyload, ptr %i.ao, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  %.sroa.048.0.copyload = load <3 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.an, i64 12, i1 false)
  store <3 x i32> %.sroa.048.0.copyload, ptr %i.an, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader: ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.j, %bb.h
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader, %bb.s
  %.sroa.011.0.i.i = phi ptr [ %.sroa.011.1.i.i, %bb.s ], [ %storemerge1933, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  %.sroa.014.0.i.i = phi ptr [ %i.av, %bb.s ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i ], [ %i.av, %bb.q ] ; 9 uses
  %i.au = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.014.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %0) #20, !inline_history !169
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 12 ; 2 uses
  br i1 %i.au, label %bb.q, label %.preheader.i.i, !llvm.loop !170

.preheader.i.i:                                   ; preds = %bb.q, %.preheader.i.i
  %.sroa.011.0.pn.i.i = phi ptr [ %.sroa.011.1.i.i, %.preheader.i.i ], [ %.sroa.011.0.i.i, %bb.q ]
  %.sroa.011.1.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.pn.i.i, i64 -12 ; 6 uses
  %i.aw = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.011.1.i.i) #20, !inline_history !169
  br i1 %i.aw, label %.preheader.i.i, label %bb.r, !llvm.loop !171

bb.r:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.011.1.i.i
  br i1 %.not.i.i, label %bb.s, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEET_SH_SH_T0_.exit

bb.s:                                             ; preds = %bb.r
  %.sroa.050.0.copyload = load <3 x i32>, ptr %.sroa.014.1.i.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.014.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.011.1.i.i, i64 12, i1 false)
  store <3 x i32> %.sroa.050.0.copyload, ptr %.sroa.011.1.i.i, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i, !llvm.loop !172

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEET_SH_SH_T0_.exit: ; preds = %bb.r
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge1933, i64 noundef %i.al, ptr %3)
  %i.ax = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.ay = sub i64 %i.ax, %i.a                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 192
  br i1 %i.az, label %bb.b, label %.loopexit, !llvm.loop !162

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEET_SH_SH_T0_.exit, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.v8::internal::CoverageBlock", align 8 ; 8 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 12
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -12 ; 4 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.e, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false)
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.a                       ; 3 uses
  %i.h = sdiv exact i64 %i.g, 12                  ; 3 uses
  %.sroa.01.0.copyload.i = load ptr, ptr %2, align 8 ; 2 uses
  %i.i = add nsw i64 %i.h, -1
  %i.j = sdiv i64 %i.i, 2
  %i.k = icmp sgt i64 %i.g, 24
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.043.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.l = shl i64 %.043.i.i, 1                     ; 2 uses
  %i.m = add i64 %i.l, 2                          ; 2 uses
  %i.n = getelementptr inbounds [12 x i8], ptr %0, i64 %i.m
  %i.o = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.p = getelementptr inbounds [12 x i8], ptr %0, i64 %i.o
  %i.q = call noundef zeroext i1 %.sroa.01.0.copyload.i(ptr noundef nonnull align 4 dereferenceable(12) %i.n, ptr noundef nonnull align 4 dereferenceable(12) %i.p) #20, !inline_history !173
  %spec.select.i.i = select i1 %i.q, i64 %i.o, i64 %i.m ; 4 uses
  %i.r = getelementptr inbounds [12 x i8], ptr %0, i64 %spec.select.i.i
  %i.s = getelementptr inbounds [12 x i8], ptr %0, i64 %.043.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.r, i64 12, i1 false)
  %i.t = icmp slt i64 %spec.select.i.i, %i.j
  br i1 %i.t, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !164

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.u = and i64 %i.h, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.w = add nsw i64 %i.h, -2
  %i.x = ashr exact i64 %i.w, 1
  %i.y = icmp eq i64 %.0.lcssa.i.i, %i.x
  br i1 %i.y, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.z = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.aa = or disjoint i64 %i.z, 1                 ; 2 uses
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds [12 x i8], ptr %0, i64 %.0.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ac, ptr noundef nonnull align 4 dereferenceable(12) %i.ab, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.05.0.copyload.i, ptr %3, align 8
  store i32 %.sroa.4.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.05.0.copyload.i, ptr %3, align 8
  store i32 %.sroa.4.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.019.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.aa, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.019.i.i.i = phi i64 [ %.01020.i.i1011.i, %bb.e ], [ %.019.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.01020.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.01020.i.i1011.i = lshr i64 %.01020.in.i.i.i, 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.01020.i.i1011.i ; 2 uses
  %i.ae = call noundef zeroext i1 %.sroa.01.0.copyload.i(ptr noundef nonnull align 4 dereferenceable(12) %i.ad, ptr noundef nonnull align 4 dereferenceable(12) %3) #20, !inline_history !174
  br i1 %i.ae, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.af = getelementptr inbounds [12 x i8], ptr %0, i64 %.019.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.af, ptr noundef nonnull align 4 dereferenceable(12) %i.ad, i64 12, i1 false)
  %.not12.i = icmp eq i64 %.01020.i.i1011.i, 0
  br i1 %.not12.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !166

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.ag = getelementptr inbounds [12 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ag, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ah = icmp sgt i64 %i.g, 12
  br i1 %i.ah, label %bb.b, label %._crit_edge, !llvm.loop !175

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit, %bb.a
  ret void
}

declare void @_ZN2v88internal12CoverageInfo15ResetBlockCountEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare void @_ZN2v88internal6String9ToCStringEPm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.979") align 8, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare void @_ZN2v88internal6PrintFEPKcz(ptr noundef, ...) local_unnamed_addr #1

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal15IsCompiledScopeC2ENS0_6TaggedINS0_18SharedFunctionInfoEEEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %0, i64 %1, ptr noundef %2) unnamed_addr #15 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.a, align 8
  %i.b = add i64 %1, 7
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load atomic volatile i64, ptr %i.c acquire, align 8 ; 6 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread

_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i: ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.i = add i64 %i.h, 11
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i16, ptr %i.j monotonic, align 2
  %i.l = icmp eq i16 %i.k, 185
  br i1 %i.l, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread

_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit: ; preds = %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i
  %i.m = add i64 %i.d, 51
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i32, ptr %i.n monotonic, align 4
  %i.p = and i32 %i.o, 15
  %i.q = icmp eq i32 %i.p, 10
  br i1 %i.q, label %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit, label %bb.b, !prof !102

bb.b:                                             ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #21
  unreachable

_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit: ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit
  %i.r = add i64 %i.d, 7
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 8
  br label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread

_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread: ; preds = %bb.a, %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i, %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit
  %.sroa.027.0 = phi i64 [ %i.t, %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit ], [ %i.d, %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.u = trunc i64 %.sroa.027.0 to i1
  br i1 %i.u, label %_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i, label %_ZN2v88internal16IsUncompiledDataENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i: ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread
  %i.v = add nsw i64 %.sroa.027.0, -1
  %i.w = inttoptr i64 %i.v to ptr                 ; 4 uses
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.y = add i64 %i.x, 11
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i16, ptr %i.z monotonic, align 2
  %i.ab = icmp eq i16 %i.aa, 184
  br i1 %i.ab, label %_ZN2v88internal7TryCastINS0_13BytecodeArrayENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit, label %_ZN2v88internal2IsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i

_ZN2v88internal7TryCastINS0_13BytecodeArrayENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit: ; preds = %_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 568
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.c, label %_ZN2v88internal6HandleINS0_13BytecodeArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !12

bb.c:                                             ; preds = %_ZN2v88internal7TryCastINS0_13BytecodeArrayENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit
  %i.ah = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #20
  br label %_ZN2v88internal6HandleINS0_13BytecodeArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_13BytecodeArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal7TryCastINS0_13BytecodeArrayENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit, %bb.c
  %.0.i.i = phi ptr [ %i.ah, %bb.c ], [ %i.ad, %_ZN2v88internal7TryCastINS0_13BytecodeArrayENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit ] ; 2 uses
  %i.ai = ptrtoint ptr %.0.i.i to i64             ; 2 uses
  %i.aj = add i64 %i.ai, 8
  %i.ak = inttoptr i64 %i.aj to ptr
end_hunk_1
