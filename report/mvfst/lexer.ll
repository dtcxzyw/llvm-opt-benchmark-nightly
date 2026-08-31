Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mvfst/original/lexer?download=true
inline.NumInlined: 123
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5Lexer5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_:bb.a

bb.k:                                             ; preds = %.preheader.15, %.preheader.15, %.preheader.14, %.preheader.14, %.preheader.13, %.preheader.13, %.preheader.12, %.preheader.12, %.preheader.11, %.preheader.11, %.preheader.10, %.preheader.10, %.preheader.9, %.preheader.9, %.preheader.8, %.preheader.8, %.preheader.7, %.preheader.7, %.preheader.6, %.preheader.6, %.preheader.5, %.preheader.5, %.preheader.4, %.preheader.4, %.preheader.3, %.preheader.3, %.preheader.2, %.preheader.2, %.preheader.1, %.preheader.1, %.preheader.preheader, %.preheader.preheader
  %.02865.lcssa = phi i32 [ 0, %.preheader.preheader ], [ 0, %.preheader.preheader ], [ 1, %.preheader.1 ], [ 1, %.preheader.1 ], [ 2, %.preheader.2 ], [ 2, %.preheader.2 ], [ 3, %.preheader.3 ], [ 3, %.preheader.3 ], [ 4, %.preheader.4 ], [ 4, %.preheader.4 ], [ 5, %.preheader.5 ], [ 5, %.preheader.5 ], [ 6, %.preheader.6 ], [ 6, %.preheader.6 ], [ 7, %.preheader.7 ], [ 7, %.preheader.7 ], [ 8, %.preheader.8 ], [ 8, %.preheader.8 ], [ 9, %.preheader.9 ], [ 9, %.preheader.9 ], [ 10, %.preheader.10 ], [ 10, %.preheader.10 ], [ 11, %.preheader.11 ], [ 11, %.preheader.11 ], [ 12, %.preheader.12 ], [ 12, %.preheader.12 ], [ 13, %.preheader.13 ], [ 13, %.preheader.13 ], [ 14, %.preheader.14 ], [ 14, %.preheader.14 ], [ 15, %.preheader.15 ], [ 15, %.preheader.15 ]
  %.lcssa = phi i64 [ 0, %.preheader.preheader ], [ 0, %.preheader.preheader ], [ 1, %.preheader.1 ], [ 1, %.preheader.1 ], [ 2, %.preheader.2 ], [ 2, %.preheader.2 ], [ 3, %.preheader.3 ], [ 3, %.preheader.3 ], [ 4, %.preheader.4 ], [ 4, %.preheader.4 ], [ 5, %.preheader.5 ], [ 5, %.preheader.5 ], [ 6, %.preheader.6 ], [ 6, %.preheader.6 ], [ 7, %.preheader.7 ], [ 7, %.preheader.7 ], [ 8, %.preheader.8 ], [ 8, %.preheader.8 ], [ 9, %.preheader.9 ], [ 9, %.preheader.9 ], [ 10, %.preheader.10 ], [ 10, %.preheader.10 ], [ 11, %.preheader.11 ], [ 11, %.preheader.11 ], [ 12, %.preheader.12 ], [ 12, %.preheader.12 ], [ 13, %.preheader.13 ], [ 13, %.preheader.13 ], [ 14, %.preheader.14 ], [ 14, %.preheader.14 ], [ 15, %.preheader.15 ], [ 15, %.preheader.15 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.hv, ptr %5, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 %.lcssa, ptr %i.b, align 8, !tbaa !29
  br label %._crit_edge.i.i

bb.l:                                             ; preds = %.preheader.16, %.preheader.16, %.preheader.17, %.preheader.17, %.preheader.18, %.preheader.18, %.preheader.19, %.preheader.19, %.preheader.20, %.preheader.20, %.preheader.21, %.preheader.21, %.preheader.22, %.preheader.22, %.preheader.23, %.preheader.23, %.preheader.24, %.preheader.24, %.preheader.25, %.preheader.25, %.preheader.26, %.preheader.26, %.preheader.27, %.preheader.27, %.preheader.28, %.preheader.28, %.preheader.29, %.preheader.29, %.preheader.30, %.preheader.30, %.preheader.31, %.preheader.31, %.preheader.32, %.preheader.32, %.preheader.33, %.preheader.33, %.preheader.34, %.preheader.34, %.preheader.35, %.preheader.35, %.preheader.36, %.preheader.36, %.preheader.37, %.preheader.37, %.preheader.38, %.preheader.38, %.preheader.39, %.preheader.39, %.preheader.40, %.preheader.40, %.preheader.41, %.preheader.41, %.preheader.42, %.preheader.42, %.preheader.43, %.preheader.43, %.preheader.44, %.preheader.44, %.preheader.45, %.preheader.45, %.preheader.46, %.preheader.46, %.preheader.47, %.preheader.47, %.preheader.48, %.preheader.48, %.preheader.49, %.preheader.49, %.preheader.50, %.preheader.50, %.preheader.51, %.preheader.51, %.preheader.52, %.preheader.52, %.preheader.53, %.preheader.53, %.preheader.54, %.preheader.54, %.preheader.55, %.preheader.55, %.preheader.56, %.preheader.56, %.preheader.57, %.preheader.57, %.preheader.58, %.preheader.58, %.preheader.59, %.preheader.59, %.preheader.60, %.preheader.60, %.preheader.61, %.preheader.61, %.preheader.62, %.preheader.62, %.preheader.63, %.preheader.63, %.preheader.64, %.preheader.64, %.preheader.65, %.preheader.65, %.preheader.66, %.preheader.66, %.preheader.67, %.preheader.67, %.preheader.68, %.preheader.68, %.preheader.69, %.preheader.69, %.preheader.70, %.preheader.70, %.preheader.71, %.preheader.71
  %.02865.lcssa.ph = phi i32 [ 71, %.preheader.71 ], [ 71, %.preheader.71 ], [ 70, %.preheader.70 ], [ 70, %.preheader.70 ], [ 69, %.preheader.69 ], [ 69, %.preheader.69 ], [ 68, %.preheader.68 ], [ 68, %.preheader.68 ], [ 67, %.preheader.67 ], [ 67, %.preheader.67 ], [ 66, %.preheader.66 ], [ 66, %.preheader.66 ], [ 65, %.preheader.65 ], [ 65, %.preheader.65 ], [ 64, %.preheader.64 ], [ 64, %.preheader.64 ], [ 63, %.preheader.63 ], [ 63, %.preheader.63 ], [ 62, %.preheader.62 ], [ 62, %.preheader.62 ], [ 61, %.preheader.61 ], [ 61, %.preheader.61 ], [ 60, %.preheader.60 ], [ 60, %.preheader.60 ], [ 59, %.preheader.59 ], [ 59, %.preheader.59 ], [ 58, %.preheader.58 ], [ 58, %.preheader.58 ], [ 57, %.preheader.57 ], [ 57, %.preheader.57 ], [ 56, %.preheader.56 ], [ 56, %.preheader.56 ], [ 55, %.preheader.55 ], [ 55, %.preheader.55 ], [ 54, %.preheader.54 ], [ 54, %.preheader.54 ], [ 53, %.preheader.53 ], [ 53, %.preheader.53 ], [ 52, %.preheader.52 ], [ 52, %.preheader.52 ], [ 51, %.preheader.51 ], [ 51, %.preheader.51 ], [ 50, %.preheader.50 ], [ 50, %.preheader.50 ], [ 49, %.preheader.49 ], [ 49, %.preheader.49 ], [ 48, %.preheader.48 ], [ 48, %.preheader.48 ], [ 47, %.preheader.47 ], [ 47, %.preheader.47 ], [ 46, %.preheader.46 ], [ 46, %.preheader.46 ], [ 45, %.preheader.45 ], [ 45, %.preheader.45 ], [ 44, %.preheader.44 ], [ 44, %.preheader.44 ], [ 43, %.preheader.43 ], [ 43, %.preheader.43 ], [ 42, %.preheader.42 ], [ 42, %.preheader.42 ], [ 41, %.preheader.41 ], [ 41, %.preheader.41 ], [ 40, %.preheader.40 ], [ 40, %.preheader.40 ], [ 39, %.preheader.39 ], [ 39, %.preheader.39 ], [ 38, %.preheader.38 ], [ 38, %.preheader.38 ], [ 37, %.preheader.37 ], [ 37, %.preheader.37 ], [ 36, %.preheader.36 ], [ 36, %.preheader.36 ], [ 35, %.preheader.35 ], [ 35, %.preheader.35 ], [ 34, %.preheader.34 ], [ 34, %.preheader.34 ], [ 33, %.preheader.33 ], [ 33, %.preheader.33 ], [ 32, %.preheader.32 ], [ 32, %.preheader.32 ], [ 31, %.preheader.31 ], [ 31, %.preheader.31 ], [ 30, %.preheader.30 ], [ 30, %.preheader.30 ], [ 29, %.preheader.29 ], [ 29, %.preheader.29 ], [ 28, %.preheader.28 ], [ 28, %.preheader.28 ], [ 27, %.preheader.27 ], [ 27, %.preheader.27 ], [ 26, %.preheader.26 ], [ 26, %.preheader.26 ], [ 25, %.preheader.25 ], [ 25, %.preheader.25 ], [ 24, %.preheader.24 ], [ 24, %.preheader.24 ], [ 23, %.preheader.23 ], [ 23, %.preheader.23 ], [ 22, %.preheader.22 ], [ 22, %.preheader.22 ], [ 21, %.preheader.21 ], [ 21, %.preheader.21 ], [ 20, %.preheader.20 ], [ 20, %.preheader.20 ], [ 19, %.preheader.19 ], [ 19, %.preheader.19 ], [ 18, %.preheader.18 ], [ 18, %.preheader.18 ], [ 17, %.preheader.17 ], [ 17, %.preheader.17 ], [ 16, %.preheader.16 ], [ 16, %.preheader.16 ]
  %.lcssa.ph = phi i64 [ 71, %.preheader.71 ], [ 71, %.preheader.71 ], [ 70, %.preheader.70 ], [ 70, %.preheader.70 ], [ 69, %.preheader.69 ], [ 69, %.preheader.69 ], [ 68, %.preheader.68 ], [ 68, %.preheader.68 ], [ 67, %.preheader.67 ], [ 67, %.preheader.67 ], [ 66, %.preheader.66 ], [ 66, %.preheader.66 ], [ 65, %.preheader.65 ], [ 65, %.preheader.65 ], [ 64, %.preheader.64 ], [ 64, %.preheader.64 ], [ 63, %.preheader.63 ], [ 63, %.preheader.63 ], [ 62, %.preheader.62 ], [ 62, %.preheader.62 ], [ 61, %.preheader.61 ], [ 61, %.preheader.61 ], [ 60, %.preheader.60 ], [ 60, %.preheader.60 ], [ 59, %.preheader.59 ], [ 59, %.preheader.59 ], [ 58, %.preheader.58 ], [ 58, %.preheader.58 ], [ 57, %.preheader.57 ], [ 57, %.preheader.57 ], [ 56, %.preheader.56 ], [ 56, %.preheader.56 ], [ 55, %.preheader.55 ], [ 55, %.preheader.55 ], [ 54, %.preheader.54 ], [ 54, %.preheader.54 ], [ 53, %.preheader.53 ], [ 53, %.preheader.53 ], [ 52, %.preheader.52 ], [ 52, %.preheader.52 ], [ 51, %.preheader.51 ], [ 51, %.preheader.51 ], [ 50, %.preheader.50 ], [ 50, %.preheader.50 ], [ 49, %.preheader.49 ], [ 49, %.preheader.49 ], [ 48, %.preheader.48 ], [ 48, %.preheader.48 ], [ 47, %.preheader.47 ], [ 47, %.preheader.47 ], [ 46, %.preheader.46 ], [ 46, %.preheader.46 ], [ 45, %.preheader.45 ], [ 45, %.preheader.45 ], [ 44, %.preheader.44 ], [ 44, %.preheader.44 ], [ 43, %.preheader.43 ], [ 43, %.preheader.43 ], [ 42, %.preheader.42 ], [ 42, %.preheader.42 ], [ 41, %.preheader.41 ], [ 41, %.preheader.41 ], [ 40, %.preheader.40 ], [ 40, %.preheader.40 ], [ 39, %.preheader.39 ], [ 39, %.preheader.39 ], [ 38, %.preheader.38 ], [ 38, %.preheader.38 ], [ 37, %.preheader.37 ], [ 37, %.preheader.37 ], [ 36, %.preheader.36 ], [ 36, %.preheader.36 ], [ 35, %.preheader.35 ], [ 35, %.preheader.35 ], [ 34, %.preheader.34 ], [ 34, %.preheader.34 ], [ 33, %.preheader.33 ], [ 33, %.preheader.33 ], [ 32, %.preheader.32 ], [ 32, %.preheader.32 ], [ 31, %.preheader.31 ], [ 31, %.preheader.31 ], [ 30, %.preheader.30 ], [ 30, %.preheader.30 ], [ 29, %.preheader.29 ], [ 29, %.preheader.29 ], [ 28, %.preheader.28 ], [ 28, %.preheader.28 ], [ 27, %.preheader.27 ], [ 27, %.preheader.27 ], [ 26, %.preheader.26 ], [ 26, %.preheader.26 ], [ 25, %.preheader.25 ], [ 25, %.preheader.25 ], [ 24, %.preheader.24 ], [ 24, %.preheader.24 ], [ 23, %.preheader.23 ], [ 23, %.preheader.23 ], [ 22, %.preheader.22 ], [ 22, %.preheader.22 ], [ 21, %.preheader.21 ], [ 21, %.preheader.21 ], [ 20, %.preheader.20 ], [ 20, %.preheader.20 ], [ 19, %.preheader.19 ], [ 19, %.preheader.19 ], [ 18, %.preheader.18 ], [ 18, %.preheader.18 ], [ 17, %.preheader.17 ], [ 17, %.preheader.17 ], [ 16, %.preheader.16 ], [ 16, %.preheader.16 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.hw, ptr %5, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 %.lcssa.ph, ptr %i.b, align 8, !tbaa !29
  %i.hx = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #14 ; 2 uses
  store ptr %i.hx, ptr %5, align 8, !tbaa !30
  %i.hy = load i64, ptr %i.b, align 8, !tbaa !29
  store i64 %i.hy, ptr %i.hw, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.k, %bb.l
  %i.hz = phi ptr [ %i.hw, %bb.l ], [ %i.hv, %bb.k ]
  %.lcssa90 = phi i64 [ %.lcssa.ph, %bb.l ], [ %.lcssa, %bb.k ]
  %.02865.lcssa88 = phi i32 [ %.02865.lcssa.ph, %bb.l ], [ %.02865.lcssa, %bb.k ]
  %i.ia = phi ptr [ %i.hx, %bb.l ], [ %i.hv, %bb.k ] ; 2 uses
  switch i32 %.02865.lcssa88, label %bb.n [
    i32 1, label %bb.m
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.ib = load i8, ptr %.030.lcssa, align 1, !tbaa !19
  store i8 %i.ib, ptr %i.ia, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ia, ptr nonnull align 1 %.030.lcssa, i64 %.lcssa90, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.m, %bb.n
  %i.ic = load i64, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ic, ptr %i.id, align 8, !tbaa !32
  %i.ie = load ptr, ptr %5, align 8, !tbaa !30
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ic
  store i8 0, ptr %i.if, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.ig = load i64, ptr %i.id, align 8, !tbaa !32 ; 2 uses
  %i.ih = load i64, ptr %i.as, align 8, !tbaa !32
  %i.ii = sub i64 4611686018427387903, %i.ih
  %i.ij = icmp ult i64 %i.ii, %i.ig
  br i1 %i.ij, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit39

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #15
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  %i.ik = load ptr, ptr %5, align 8, !tbaa !30
  %i.il = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.ik, i64 noundef %i.ig) #14 ; 0 uses
  %i.im = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.hz
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit39
  call void @_ZdlPv(ptr noundef %i.im) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.r

._crit_edge.i.i44:                                ; preds = %.preheader.71
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.io = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.io, ptr %5, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 72, ptr %i.a, align 8, !tbaa !29
  %i.ip = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #14 ; 3 uses
  store ptr %i.ip, ptr %5, align 8, !tbaa !30
  %i.iq = load i64, ptr %i.a, align 8, !tbaa !29  ; 3 uses
  store i64 %i.iq, ptr %i.io, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.ip, ptr noundef nonnull align 1 dereferenceable(72) %.030.lcssa, i64 72, i1 false)
  %i.ir = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.iq, ptr %i.ir, align 8, !tbaa !32
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.iq
  store i8 0, ptr %i.is, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.it = load i64, ptr %i.ir, align 8, !tbaa !32 ; 2 uses
  %i.iu = load i64, ptr %i.as, align 8, !tbaa !32
  %i.iv = sub i64 4611686018427387903, %i.iu
  %i.iw = icmp ult i64 %i.iv, %i.it
  br i1 %i.iw, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46

bb.p:                                             ; preds = %._crit_edge.i.i44
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #15
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46: ; preds = %._crit_edge.i.i44
  %i.ix = load ptr, ptr %5, align 8, !tbaa !30
  %i.iy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.ix, i64 noundef %i.it) #14 ; 0 uses
  %i.iz = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.io
  br i1 %i.ja, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46
  call void @_ZdlPv(ptr noundef %i.iz) #16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.jb = load i64, ptr %i.as, align 8, !tbaa !32
  %i.jc = add i64 %i.jb, -4611686018427387901
  %i.jd = icmp ult i64 %i.jc, 3
  br i1 %i.jd, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i48
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #15
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i48
  %i.je = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.2, i64 noundef 3) #14 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.jf = load i64, ptr %i.as, align 8, !tbaa !32
  %i.jg = icmp eq i64 %i.jf, 4611686018427387903
  br i1 %i.jg, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit50

bb.s:                                             ; preds = %bb.r
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #15
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit50: ; preds = %bb.r
  %i.jh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.1, i64 noundef 1) #14 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.ji = zext nneg i32 %i.w to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.jj, ptr %6, align 8, !tbaa !27
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ji, i8 noundef signext 32) #14
  %i.jk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !32 ; 2 uses
  %i.jm = load i64, ptr %i.as, align 8, !tbaa !32
  %i.jn = sub i64 4611686018427387903, %i.jm
  %i.jo = icmp ult i64 %i.jn, %i.jl
  br i1 %i.jo, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit50
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #15
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit50
  %i.jp = load ptr, ptr %6, align 8, !tbaa !30
  %i.jq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.jp, i64 noundef %i.jl) #14 ; 0 uses
  %i.jr = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.js = icmp eq ptr %i.jr, %i.jj
  br i1 %i.js, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51
  call void @_ZdlPv(ptr noundef %i.jr) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.jt = load i64, ptr %i.as, align 8, !tbaa !32
  %i.ju = add i64 %i.jt, -4611686018427387893
  %i.jv = icmp ult i64 %i.ju, 11
  br i1 %i.jv, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit55

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #15
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.jw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.3, i64 noundef 11) #14 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN5LexerC2EPKc(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  store ptr @.str.4, ptr %0, align 8, !tbaa !41
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !29
  store ptr %1, ptr %i.a, align 8, !tbaa !41
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.c, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.d, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN5Lexer5StartE11StringPieceS0_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #4 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !41
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.a, align 8, !tbaa !41
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %4, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %3, ptr %i.b, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.c, align 8, !tbaa !18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @_ZN5Lexer9TokenNameENS_5TokenE(i32 noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp ult i32 %0, 16
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5Lexer9TokenNameENS_5TokenE, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN5Lexer14TokenErrorHintENS_5TokenE(i32 noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %cond = icmp eq i32 %0, 2
  %.str.21..str.22 = select i1 %cond, ptr @.str.21, ptr @.str.22
  ret ptr %.str.21..str.22
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5Lexer17DescribeLastErrorB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %._crit_edge.i.i1, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 1, !tbaa !19
  %cond = icmp eq i8 %i.d, 9
  br i1 %cond, label %._crit_edge.i.i, label %._crit_edge.i.i1

._crit_edge.i.i:                                  ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 32, ptr %i.a, align 8, !tbaa !29
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #14 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !30
  %i.g = load i64, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.f, ptr noundef nonnull align 1 dereferenceable(32) @.str.23, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !32
  %i.i = load ptr, ptr %0, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  store i8 0, ptr %i.j, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.c

._crit_edge.i.i1:                                 ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.k, ptr noundef nonnull align 1 dereferenceable(12) @.str.5, i64 12, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 12, ptr %i.l, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.m, align 4, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i1, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN5Lexer11UnreadTokenEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((32, 40)) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.c, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 16) i32 @_ZN5Lexer9ReadTokenEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  br label %bb.b

bb.b:                                             ; preds = %bb.bv, %bb.a
  %.0148 = phi ptr [ %i.b, %bb.a ], [ %i.fk, %bb.bv ] ; 113 uses
  %i.c = load i8, ptr %.0148, align 1, !tbaa !19  ; 20 uses
  %.not.not = icmp eq i8 %i.c, 32
  br i1 %.not.not, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ult i8 %i.c, 95
  br i1 %i.d, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.e = icmp samesign ult i8 %i.c, 45
  br i1 %i.e, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.f = icmp samesign ult i8 %i.c, 13
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  switch i8 %i.c, label %.loopexit [
    i8 0, label %bb.bw
    i8 10, label %bb.v
  ]

bb.g:                                             ; preds = %bb.e
  switch i8 %i.c, label %.loopexit [
    i8 13, label %bb.w
    i8 35, label %bb.aa
  ]

bb.h:                                             ; preds = %bb.d
  %i.g = icmp samesign ult i8 %i.c, 59
  br i1 %i.g, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  switch i8 %i.c, label %bb.ab [
    i8 47, label %.loopexit
    i8 58, label %bb.ad
  ]

bb.j:                                             ; preds = %bb.h
  %i.h = icmp samesign ult i8 %i.c, 62
  br i1 %i.h, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.not164 = icmp eq i8 %i.c, 61
  br i1 %.not164, label %bb.ae, label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.i = add nsw i8 %i.c, -65
  %or.cond4 = icmp ult i8 %i.i, 26
  br i1 %or.cond4, label %bb.ab, label %.loopexit

bb.m:                                             ; preds = %bb.c
  %i.j = icmp ult i8 %i.c, 106
  br i1 %i.j, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.k = icmp samesign ult i8 %i.c, 99
  br i1 %i.k, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  switch i8 %i.c, label %bb.ab [
    i8 96, label %.loopexit
    i8 98, label %bb.af
  ]

bb.p:                                             ; preds = %bb.n
  switch i8 %i.c, label %bb.ab [
    i8 100, label %bb.ag
    i8 105, label %bb.ah
  ]

bb.q:                                             ; preds = %bb.m
  %i.l = icmp ult i8 %i.c, 115
  br i1 %i.l, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  switch i8 %i.c, label %bb.ab [
    i8 112, label %bb.ai
    i8 114, label %bb.aj
  ]

bb.s:                                             ; preds = %bb.q
  %i.m = icmp ult i8 %i.c, 123
  br i1 %i.m, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.n = icmp eq i8 %i.c, 115
  br i1 %i.n, label %bb.ak, label %bb.ab

bb.u:                                             ; preds = %bb.s
  %i.o = icmp eq i8 %i.c, 124
  br i1 %i.o, label %bb.al, label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.o, %bb.i, %bb.f, %bb.u, %bb.l, %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %.0148, i64 1
  br label %.thread

bb.v:                                             ; preds = %bb.f
  br label %bb.bw

bb.w:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.0148, i64 1 ; 3 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !19
  %i.s = icmp eq i8 %i.r, 10
  br i1 %i.s, label %bb.bw, label %.thread

.preheader:                                       ; preds = %bb.b, %.preheader
  %.3 = phi ptr [ %i.t, %.preheader ], [ %.0148, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 8 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !19    ; 4 uses
  %.not167.not = icmp eq i8 %i.u, 32
  br i1 %.not167.not, label %.preheader, label %bb.x

bb.x:                                             ; preds = %.preheader
  %i.v = icmp ult i8 %i.u, 13
  br i1 %i.v, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.w = icmp eq i8 %i.u, 10
  br i1 %i.w, label %bb.bw, label %.thread

bb.z:                                             ; preds = %bb.x
  switch i8 %i.u, label %.thread [
    i8 13, label %bb.am
    i8 35, label %bb.ao
  ]

bb.aa:                                            ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.0148, i64 1 ; 4 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !19    ; 2 uses
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %.thread, label %bb.ap

bb.ab:                                            ; preds = %bb.r, %bb.p, %bb.o, %bb.i, %bb.l, %bb.bu, %bb.bs, %bb.br, %bb.bk, %bb.bi, %bb.bh, %bb.ac, %bb.t
  %.0148385 = phi ptr [ %.0148, %bb.i ], [ %.0148384, %bb.ac ], [ %.0148, %bb.l ], [ %.0148, %bb.o ], [ %.0148, %bb.bk ], [ %.0148, %bb.br ], [ %.0148, %bb.p ], [ %.0148, %bb.bs ], [ %.0148, %bb.bh ], [ %.0148, %bb.r ], [ %.0148, %bb.bi ], [ %.0148, %bb.bu ], [ %.0148, %bb.t ]
  %.5 = phi ptr [ %.0148, %bb.i ], [ %.6, %bb.ac ], [ %.0148, %bb.l ], [ %.0148, %bb.o ], [ %i.ds, %bb.bk ], [ %i.eq, %bb.br ], [ %.0148, %bb.p ], [ %i.ew, %bb.bs ], [ %i.dd, %bb.bh ], [ %.0148, %bb.r ], [ %i.dj, %bb.bi ], [ %i.fe, %bb.bu ], [ %.0148, %bb.t ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !19
  br label %bb.ac

bb.ac:                                            ; preds = %bb.bt, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bj, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ab
  %.0148384 = phi ptr [ %.0148385, %bb.ab ], [ %.0148, %bb.be ], [ %.0148, %bb.ay ], [ %.0148, %bb.aq ], [ %.0148, %bb.af ], [ %.0148, %bb.bo ], [ %.0148, %bb.bl ], [ %.0148, %bb.bf ], [ %.0148, %bb.az ], [ %.0148, %bb.ar ], [ %.0148, %bb.ag ], [ %.0148, %bb.bp ], [ %.0148, %bb.bm ], [ %.0148, %bb.bg ], [ %.0148, %bb.ba ], [ %.0148, %bb.as ], [ %.0148, %bb.ah ], [ %.0148, %bb.bb ], [ %.0148, %bb.at ], [ %.0148, %bb.ai ], [ %.0148, %bb.bc ], [ %.0148, %bb.au ], [ %.0148, %bb.aj ], [ %.0148, %bb.bt ], [ %.0148, %bb.bq ], [ %.0148, %bb.bn ], [ %.0148, %bb.bj ], [ %.0148, %bb.bd ], [ %.0148, %bb.av ], [ %.0148, %bb.ak ] ; 2 uses
  %.6 = phi ptr [ %i.aa, %bb.ab ], [ %i.cu, %bb.be ], [ %i.cc, %bb.ay ], [ %i.bi, %bb.aq ], [ %i.ai, %bb.af ], [ %i.eh, %bb.bo ], [ %i.dy, %bb.bl ], [ %i.cx, %bb.bf ], [ %i.cf, %bb.az ], [ %i.bl, %bb.ar ], [ %i.al, %bb.ag ], [ %i.ek, %bb.bp ], [ %i.eb, %bb.bm ], [ %i.da, %bb.bg ], [ %i.ci, %bb.ba ], [ %i.bo, %bb.as ], [ %i.ao, %bb.ah ], [ %i.cl, %bb.bb ], [ %i.br, %bb.at ], [ %i.ar, %bb.ai ], [ %i.co, %bb.bc ], [ %i.bu, %bb.au ], [ %i.au, %bb.aj ], [ %i.fc, %bb.bt ], [ %i.en, %bb.bq ], [ %i.ee, %bb.bn ], [ %i.dp, %bb.bj ], [ %i.cr, %bb.bd ], [ %i.bx, %bb.av ], [ %i.ax, %bb.ak ] ; 2 uses
  %.0141 = phi i8 [ %i.ab, %bb.ab ], [ %i.cv, %bb.be ], [ %i.cd, %bb.ay ], [ %i.bj, %bb.aq ], [ %i.aj, %bb.af ], [ %i.ei, %bb.bo ], [ %i.dz, %bb.bl ], [ %i.cy, %bb.bf ], [ %i.cg, %bb.az ], [ %i.bm, %bb.ar ], [ %i.am, %bb.ag ], [ %i.el, %bb.bp ], [ %i.ec, %bb.bm ], [ %i.db, %bb.bg ], [ %i.cj, %bb.ba ], [ %i.bp, %bb.as ], [ %i.ap, %bb.ah ], [ %i.cm, %bb.bb ], [ %i.bs, %bb.at ], [ %i.as, %bb.ai ], [ %i.cp, %bb.bc ], [ %i.bv, %bb.au ], [ %i.av, %bb.aj ], [ %i.fd, %bb.bt ], [ %i.eo, %bb.bq ], [ %i.ef, %bb.bn ], [ %i.dq, %bb.bj ], [ %i.cs, %bb.bd ], [ %i.by, %bb.av ], [ %i.ay, %bb.ak ]
  %i.ac = zext i8 %.0141 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZZN5Lexer9ReadTokenEvE4yybm, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !19
  %i.af = and i8 %i.ae, 64
  %.not166 = icmp eq i8 %i.af, 0
  br i1 %.not166, label %.thread, label %bb.ab

bb.ad:                                            ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0148, i64 1
  br label %.thread

bb.ae:                                            ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.0148, i64 1
  br label %.thread

bb.af:                                            ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %.0148, i64 1 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !19  ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 117
  br i1 %i.ak, label %bb.aq, label %bb.ac

bb.ag:                                            ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %.0148, i64 1 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !19  ; 2 uses
  %i.an = icmp eq i8 %i.am, 101
  br i1 %i.an, label %bb.ar, label %bb.ac

bb.ah:                                            ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %.0148, i64 1 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !19  ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 110
  br i1 %i.aq, label %bb.as, label %bb.ac

bb.ai:                                            ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %.0148, i64 1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !19  ; 2 uses
  %i.at = icmp eq i8 %i.as, 111
  br i1 %i.at, label %bb.at, label %bb.ac

bb.aj:                                            ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %.0148, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !19  ; 2 uses
  %i.aw = icmp eq i8 %i.av, 117
  br i1 %i.aw, label %bb.au, label %bb.ac

bb.ak:                                            ; preds = %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %.0148, i64 1 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !19  ; 2 uses
  %i.az = icmp eq i8 %i.ay, 117
  br i1 %i.az, label %bb.av, label %bb.ac

bb.al:                                            ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %.0148, i64 1 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !19
  switch i8 %i.bb, label %.thread [
    i8 64, label %bb.aw
    i8 124, label %bb.ax
  ]

bb.am:                                            ; preds = %bb.z
  %i.bc = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !19
  %i.be = icmp eq i8 %i.bd, 10
  br i1 %i.be, label %bb.bw, label %.thread

bb.an:                                            ; preds = %bb.ap
  %i.bf = icmp eq i32 %.2, 0
  %spec.select = select i1 %i.bf, i32 7, i32 0
  br label %.thread

bb.ao:                                            ; preds = %bb.ap, %bb.z
  %.8 = phi ptr [ %i.t, %bb.z ], [ %.9, %bb.ap ]
  %.1146 = phi ptr [ %i.t, %bb.z ], [ %.2147, %bb.ap ]
  %.1 = phi i32 [ 0, %bb.z ], [ %.2, %bb.ap ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.8, i64 1 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !19
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aa, %bb.ao
  %.9 = phi ptr [ %i.bg, %bb.ao ], [ %i.x, %bb.aa ] ; 2 uses
  %.2147 = phi ptr [ %.1146, %bb.ao ], [ %i.x, %bb.aa ] ; 2 uses
  %.1142 = phi i8 [ %i.bh, %bb.ao ], [ %i.y, %bb.aa ]
  %.2 = phi i32 [ %.1, %bb.ao ], [ 1, %bb.aa ]    ; 2 uses
  switch i8 %.1142, label %bb.ao [
    i8 0, label %bb.an
    i8 10, label %bb.bv
  ]

bb.aq:                                            ; preds = %bb.af
  %i.bi = getelementptr inbounds nuw i8, ptr %.0148, i64 2 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !19  ; 2 uses
  %i.bk = icmp eq i8 %i.bj, 105
  br i1 %i.bk, label %bb.ay, label %bb.ac

bb.ar:                                            ; preds = %bb.ag
  %i.bl = getelementptr inbounds nuw i8, ptr %.0148, i64 2 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !19  ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 102
  br i1 %i.bn, label %bb.az, label %bb.ac

bb.as:                                            ; preds = %bb.ah
  %i.bo = getelementptr inbounds nuw i8, ptr %.0148, i64 2 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !19  ; 2 uses
  %i.bq = icmp eq i8 %i.bp, 99
  br i1 %i.bq, label %bb.ba, label %bb.ac

bb.at:                                            ; preds = %bb.ai
  %i.br = getelementptr inbounds nuw i8, ptr %.0148, i64 2 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !19  ; 2 uses
  %i.bt = icmp eq i8 %i.bs, 111
  br i1 %i.bt, label %bb.bb, label %bb.ac

bb.au:                                            ; preds = %bb.aj
  %i.bu = getelementptr inbounds nuw i8, ptr %.0148, i64 2 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !19  ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 108
  br i1 %i.bw, label %bb.bc, label %bb.ac

bb.av:                                            ; preds = %bb.ak
  %i.bx = getelementptr inbounds nuw i8, ptr %.0148, i64 2 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !19  ; 2 uses
  %i.bz = icmp eq i8 %i.by, 98
  br i1 %i.bz, label %bb.bd, label %bb.ac

bb.aw:                                            ; preds = %bb.al
  %i.ca = getelementptr inbounds nuw i8, ptr %.0148, i64 2
  br label %.thread

bb.ax:                                            ; preds = %bb.al
  %i.cb = getelementptr inbounds nuw i8, ptr %.0148, i64 2
  br label %.thread

bb.ay:                                            ; preds = %bb.aq
  %i.cc = getelementptr inbounds nuw i8, ptr %.0148, i64 3 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !19  ; 2 uses
  %i.ce = icmp eq i8 %i.cd, 108
  br i1 %i.ce, label %bb.be, label %bb.ac

bb.az:                                            ; preds = %bb.ar
  %i.cf = getelementptr inbounds nuw i8, ptr %.0148, i64 3 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !19  ; 2 uses
  %i.ch = icmp eq i8 %i.cg, 97
  br i1 %i.ch, label %bb.bf, label %bb.ac

bb.ba:                                            ; preds = %bb.as
  %i.ci = getelementptr inbounds nuw i8, ptr %.0148, i64 3 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !19  ; 2 uses
  %i.ck = icmp eq i8 %i.cj, 108
  br i1 %i.ck, label %bb.bg, label %bb.ac

bb.bb:                                            ; preds = %bb.at
  %i.cl = getelementptr inbounds nuw i8, ptr %.0148, i64 3 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !19  ; 2 uses
  %i.cn = icmp eq i8 %i.cm, 108
  br i1 %i.cn, label %bb.bh, label %bb.ac

bb.bc:                                            ; preds = %bb.au
  %i.co = getelementptr inbounds nuw i8, ptr %.0148, i64 3 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !19  ; 2 uses
  %i.cq = icmp eq i8 %i.cp, 101
  br i1 %i.cq, label %bb.bi, label %bb.ac

bb.bd:                                            ; preds = %bb.av
  %i.cr = getelementptr inbounds nuw i8, ptr %.0148, i64 3 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !19  ; 2 uses
  %i.ct = icmp eq i8 %i.cs, 110
  br i1 %i.ct, label %bb.bj, label %bb.ac

bb.be:                                            ; preds = %bb.ay
  %i.cu = getelementptr inbounds nuw i8, ptr %.0148, i64 4 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !19  ; 2 uses
  %i.cw = icmp eq i8 %i.cv, 100
  br i1 %i.cw, label %bb.bk, label %bb.ac

bb.bf:                                            ; preds = %bb.az
  %i.cx = getelementptr inbounds nuw i8, ptr %.0148, i64 4 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !19  ; 2 uses
  %i.cz = icmp eq i8 %i.cy, 117
  br i1 %i.cz, label %bb.bl, label %bb.ac

bb.bg:                                            ; preds = %bb.ba
  %i.da = getelementptr inbounds nuw i8, ptr %.0148, i64 4 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !19  ; 2 uses
  %i.dc = icmp eq i8 %i.db, 117
  br i1 %i.dc, label %bb.bm, label %bb.ac

bb.bh:                                            ; preds = %bb.bb
  %i.dd = getelementptr inbounds nuw i8, ptr %.0148, i64 4 ; 3 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !19
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @_ZZN5Lexer9ReadTokenEvE4yybm, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !19
  %i.di = and i8 %i.dh, 64
  %.not158 = icmp eq i8 %i.di, 0
  br i1 %.not158, label %.thread, label %bb.ab

bb.bi:                                            ; preds = %bb.bc
  %i.dj = getelementptr inbounds nuw i8, ptr %.0148, i64 4 ; 3 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !19
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr @_ZZN5Lexer9ReadTokenEvE4yybm, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !19
  %i.do = and i8 %i.dn, 64
  %.not157.a = icmp eq i8 %i.do, 0
  br i1 %.not157.a, label %.thread, label %bb.ab

bb.bj:                                            ; preds = %bb.bd
  %i.dp = getelementptr inbounds nuw i8, ptr %.0148, i64 4 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !19  ; 2 uses
  %i.dr = icmp eq i8 %i.dq, 105
  br i1 %i.dr, label %bb.bn, label %bb.ac

bb.bk:                                            ; preds = %bb.be
  %i.ds = getelementptr inbounds nuw i8, ptr %.0148, i64 5 ; 3 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !19
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @_ZZN5Lexer9ReadTokenEvE4yybm, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !19
  %i.dx = and i8 %i.dw, 64
  %.not163 = icmp eq i8 %i.dx, 0
  br i1 %.not163, label %.thread, label %bb.ab

bb.bl:                                            ; preds = %bb.bf
  %i.dy = getelementptr inbounds nuw i8, ptr %.0148, i64 5 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !19  ; 2 uses
  %i.ea = icmp eq i8 %i.dz, 108
  br i1 %i.ea, label %bb.bo, label %bb.ac

bb.bm:                                            ; preds = %bb.bg
  %i.eb = getelementptr inbounds nuw i8, ptr %.0148, i64 5 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !19  ; 2 uses
  %i.ed = icmp eq i8 %i.ec, 100
  br i1 %i.ed, label %bb.bp, label %bb.ac

bb.bn:                                            ; preds = %bb.bj
  %i.ee = getelementptr inbounds nuw i8, ptr %.0148, i64 5 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !19  ; 2 uses
  %i.eg = icmp eq i8 %i.ef, 110
  br i1 %i.eg, label %bb.bq, label %bb.ac

bb.bo:                                            ; preds = %bb.bl
  %i.eh = getelementptr inbounds nuw i8, ptr %.0148, i64 6 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !19  ; 2 uses
  %i.ej = icmp eq i8 %i.ei, 116
  br i1 %i.ej, label %bb.br, label %bb.ac

bb.bp:                                            ; preds = %bb.bm
  %i.ek = getelementptr inbounds nuw i8, ptr %.0148, i64 6 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !19  ; 2 uses
  %i.em = icmp eq i8 %i.el, 101
  br i1 %i.em, label %bb.bs, label %bb.ac

bb.bq:                                            ; preds = %bb.bn
  %i.en = getelementptr inbounds nuw i8, ptr %.0148, i64 6 ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !19  ; 2 uses
  %i.ep = icmp eq i8 %i.eo, 106
  br i1 %i.ep, label %bb.bt, label %bb.ac

bb.br:                                            ; preds = %bb.bo
  %i.eq = getelementptr inbounds nuw i8, ptr %.0148, i64 7 ; 3 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !19
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr @_ZZN5Lexer9ReadTokenEvE4yybm, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !19
  %i.ev = and i8 %i.eu, 64
  %.not161 = icmp eq i8 %i.ev, 0
  br i1 %.not161, label %.thread, label %bb.ab

bb.bs:                                            ; preds = %bb.bp
  %i.ew = getelementptr inbounds nuw i8, ptr %.0148, i64 7 ; 3 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !19
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr @_ZZN5Lexer9ReadTokenEvE4yybm, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !19
  %i.fb = and i8 %i.fa, 64
  %.not160 = icmp eq i8 %i.fb, 0
  br i1 %.not160, label %.thread, label %bb.ab

bb.bt:                                            ; preds = %bb.bq
  %i.fc = getelementptr inbounds nuw i8, ptr %.0148, i64 7 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !19  ; 2 uses
  %.not = icmp eq i8 %i.fd, 97
  br i1 %.not, label %bb.bu, label %bb.ac

bb.bu:                                            ; preds = %bb.bt
  %i.fe = getelementptr inbounds nuw i8, ptr %.0148, i64 8 ; 3 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !19
  %i.fg = zext i8 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr @_ZZN5Lexer9ReadTokenEvE4yybm, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !19
  %i.fj = and i8 %i.fi, 64
  %.not155 = icmp eq i8 %i.fj, 0
  br i1 %.not155, label %.thread, label %bb.ab

bb.bv:                                            ; preds = %bb.ap
  %i.fk = getelementptr inbounds nuw i8, ptr %.9, i64 1
  br label %bb.b

bb.bw:                                            ; preds = %bb.w, %bb.am, %bb.y, %bb.f, %bb.v
  %.2150.sink = phi ptr [ %.0148, %bb.f ], [ %.0148, %bb.v ], [ %i.t, %bb.y ], [ %i.bc, %bb.am ], [ %i.q, %bb.w ]
  %.1144.ph = phi i32 [ 15, %bb.f ], [ 8, %bb.v ], [ 8, %bb.y ], [ 8, %bb.am ], [ 8, %bb.w ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.2150.sink, i64 1
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.0148, ptr %i.fm, align 8, !tbaa !18
  store ptr %i.fl, ptr %i.a, align 8, !tbaa !42
  br label %_ZN5Lexer13EatWhitespaceEv.exit

.thread:                                          ; preds = %bb.z, %bb.aa, %bb.an, %bb.am, %bb.w, %bb.y, %bb.ax, %bb.aw, %bb.bs, %bb.bh, %bb.al, %bb.br, %bb.bk, %bb.bi, %bb.ae, %bb.ad, %bb.bu, %bb.ac, %.loopexit
  %.0148382 = phi ptr [ %.0148, %bb.an ], [ %.0148384, %bb.ac ], [ %.0148, %bb.bu ], [ %.0148, %bb.ad ], [ %.0148, %bb.ae ], [ %.0148, %bb.bi ], [ %.0148, %bb.bk ], [ %.0148, %bb.br ], [ %.0148, %bb.al ], [ %.0148, %bb.bh ], [ %.0148, %bb.bs ], [ %.0148, %bb.aw ], [ %.0148, %bb.ax ], [ %.0148, %bb.am ], [ %.0148, %.loopexit ], [ %.0148, %bb.w ], [ %.0148, %bb.y ], [ %.0148, %bb.aa ], [ %.0148, %bb.z ]
  %.10.ph.ph = phi ptr [ %.2147, %bb.an ], [ %.6, %bb.ac ], [ %i.fe, %bb.bu ], [ %i.ag, %bb.ad ], [ %i.ah, %bb.ae ], [ %i.dj, %bb.bi ], [ %i.ds, %bb.bk ], [ %i.eq, %bb.br ], [ %i.ba, %bb.al ], [ %i.dd, %bb.bh ], [ %i.ew, %bb.bs ], [ %i.ca, %bb.aw ], [ %i.cb, %bb.ax ], [ %i.t, %bb.am ], [ %i.p, %.loopexit ], [ %i.q, %bb.w ], [ %i.t, %bb.y ], [ %i.t, %bb.z ], [ %i.x, %bb.aa ]
  %.1144.ph.ph = phi i32 [ %spec.select, %bb.an ], [ 5, %bb.ac ], [ 14, %bb.bu ], [ 2, %bb.ad ], [ 4, %bb.ae ], [ 13, %bb.bi ], [ 1, %bb.bk ], [ 3, %bb.br ], [ 9, %bb.al ], [ 12, %bb.bh ], [ 6, %bb.bs ], [ 11, %bb.aw ], [ 10, %bb.ax ], [ 7, %bb.am ], [ 0, %.loopexit ], [ 0, %bb.w ], [ 7, %bb.y ], [ 7, %bb.z ], [ 0, %bb.aa ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.0148382, ptr %i.fn, align 8, !tbaa !18
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %select.unfold.i.backedge, %.thread
  %.018.i = phi ptr [ %.10.ph.ph, %.thread ], [ %.018.i.be, %select.unfold.i.backedge ] ; 7 uses
  store ptr %.018.i, ptr %i.a, align 8, !tbaa !42
  %i.fo = load i8, ptr %.018.i, align 1, !tbaa !19
  switch i8 %i.fo, label %_ZN5Lexer13EatWhitespaceEv.exit [
    i8 32, label %.preheader.i
    i8 36, label %bb.bx
  ]

.preheader.i:                                     ; preds = %select.unfold.i, %.preheader.i
  %.2.i = phi ptr [ %i.fp, %.preheader.i ], [ %.018.i, %select.unfold.i ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.2.i, i64 1 ; 3 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !19
  %.not.not21.i = icmp eq i8 %i.fq, 32
  br i1 %.not.not21.i, label %.preheader.i, label %select.unfold.i.backedge, !llvm.loop !43

bb.bx:                                            ; preds = %select.unfold.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.018.i, i64 1
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !19
  switch i8 %i.fs, label %_ZN5Lexer13EatWhitespaceEv.exit [
    i8 10, label %bb.by
    i8 13, label %bb.bz
  ]

bb.by:                                            ; preds = %bb.bx
  %i.ft = getelementptr inbounds nuw i8, ptr %.018.i, i64 2
  br label %select.unfold.i.backedge

bb.bz:                                            ; preds = %bb.bx
  %i.fu = getelementptr inbounds nuw i8, ptr %.018.i, i64 2
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !19
  %i.fw = icmp eq i8 %i.fv, 10
  %i.fx = getelementptr inbounds nuw i8, ptr %.018.i, i64 3
  br i1 %i.fw, label %select.unfold.i.backedge, label %_ZN5Lexer13EatWhitespaceEv.exit

select.unfold.i.backedge:                         ; preds = %.preheader.i, %bb.bz, %bb.by
  %.018.i.be = phi ptr [ %i.ft, %bb.by ], [ %i.fx, %bb.bz ], [ %i.fp, %.preheader.i ]
  br label %select.unfold.i, !llvm.loop !43

_ZN5Lexer13EatWhitespaceEv.exit:                  ; preds = %bb.bz, %bb.bx, %select.unfold.i, %bb.bw
  %.1144.ph185 = phi i32 [ %.1144.ph, %bb.bw ], [ %.1144.ph.ph, %select.unfold.i ], [ %.1144.ph.ph, %bb.bx ], [ %.1144.ph.ph, %bb.bz ]
  ret i32 %.1144.ph185
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5Lexer13EatWhitespaceEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.backedge, %bb.a
  %.018 = phi ptr [ %i.b, %bb.a ], [ %.018.be, %select.unfold.backedge ] ; 7 uses
  store ptr %.018, ptr %i.a, align 8, !tbaa !42
  %i.c = load i8, ptr %.018, align 1, !tbaa !19
  switch i8 %i.c, label %bb.e [
    i8 32, label %.preheader
    i8 36, label %bb.b
  ]

.preheader:                                       ; preds = %select.unfold, %.preheader
  %.2 = phi ptr [ %i.d, %.preheader ], [ %.018, %select.unfold ]
  %i.d = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !19
  %.not.not21 = icmp eq i8 %i.e, 32
  br i1 %.not.not21, label %.preheader, label %select.unfold.backedge, !llvm.loop !43

bb.b:                                             ; preds = %select.unfold
  %i.f = getelementptr inbounds nuw i8, ptr %.018, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !19
  switch i8 %i.g, label %bb.e [
    i8 10, label %bb.c
    i8 13, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.018, i64 2
  br label %select.unfold.backedge

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.018, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !19
  %i.k = icmp eq i8 %i.j, 10
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 3
  br i1 %i.k, label %select.unfold.backedge, label %bb.e

select.unfold.backedge:                           ; preds = %.preheader, %bb.d, %bb.c
  %.018.be = phi ptr [ %i.h, %bb.c ], [ %i.l, %bb.d ], [ %i.d, %.preheader ]
  br label %select.unfold, !llvm.loop !43

bb.e:                                             ; preds = %select.unfold, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN5Lexer9PeekTokenENS_5TokenE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5Lexer9ReadTokenEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.b = icmp eq i32 %i.a, %1                     ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %i.e, align 8, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN5Lexer9ReadIdentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 6 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !19
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN5Lexer9ReadIdentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4yybm, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !19
  %.not = icmp slt i8 %i.f, 0                     ; 2 uses
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  %.015 = phi ptr [ %i.g, %.preheader ], [ %i.b, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.015, i64 1 ; 4 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !19
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @_ZZN5Lexer9ReadIdentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4yybm, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !19
  %.not18 = icmp sgt i8 %i.k, -1
  br i1 %.not18, label %bb.c, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.b, ptr %i.l, align 8, !tbaa !18
  br label %_ZN5Lexer13EatWhitespaceEv.exit

bb.c:                                             ; preds = %.preheader
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = ptrtoint ptr %i.b to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !32
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.q, ptr noundef nonnull %i.b, i64 noundef %i.o) #14 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.b, ptr %i.s, align 8, !tbaa !18
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %select.unfold.i.backedge, %bb.c
  %.018.i = phi ptr [ %i.g, %bb.c ], [ %.018.i.be, %select.unfold.i.backedge ] ; 7 uses
  store ptr %.018.i, ptr %i.a, align 8, !tbaa !42
  %i.t = load i8, ptr %.018.i, align 1, !tbaa !19
  switch i8 %i.t, label %_ZN5Lexer13EatWhitespaceEv.exit [
    i8 32, label %.preheader.i
    i8 36, label %bb.d
  ]

.preheader.i:                                     ; preds = %select.unfold.i, %.preheader.i
  %.2.i = phi ptr [ %i.u, %.preheader.i ], [ %.018.i, %select.unfold.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.2.i, i64 1 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !19
  %.not.not21.i = icmp eq i8 %i.v, 32
  br i1 %.not.not21.i, label %.preheader.i, label %select.unfold.i.backedge, !llvm.loop !43

bb.d:                                             ; preds = %select.unfold.i
  %i.w = getelementptr inbounds nuw i8, ptr %.018.i, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !19
  switch i8 %i.x, label %_ZN5Lexer13EatWhitespaceEv.exit [
    i8 10, label %bb.e
    i8 13, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i, i64 2
  br label %select.unfold.i.backedge

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.018.i, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !19
  %i.ab = icmp eq i8 %i.aa, 10
  %i.ac = getelementptr inbounds nuw i8, ptr %.018.i, i64 3
  br i1 %i.ab, label %select.unfold.i.backedge, label %_ZN5Lexer13EatWhitespaceEv.exit

select.unfold.i.backedge:                         ; preds = %.preheader.i, %bb.f, %bb.e
  %.018.i.be = phi ptr [ %i.y, %bb.e ], [ %i.ac, %bb.f ], [ %i.u, %.preheader.i ]
  br label %select.unfold.i, !llvm.loop !43

_ZN5Lexer13EatWhitespaceEv.exit:                  ; preds = %bb.f, %bb.d, %select.unfold.i, %bb.b
  ret i1 %.not
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN5Lexer14ReadEvalStringEP10EvalStringbPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
end_hunk_0
