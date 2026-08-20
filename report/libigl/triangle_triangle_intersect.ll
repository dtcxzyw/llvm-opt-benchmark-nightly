inline.NumInlined: 388
inline.NumDeleted: 118
begin_hunk_0_@_ZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_Rb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlNS0_11OrientationES9_S9_E_clES9_S9_S9_.exit.thread

_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlNS0_11OrientationES9_S9_E_clES9_S9_S9_.exit.thread: ; preds = %bb.b, %bb.a, %bb.y, %_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlNS0_11OrientationES9_S9_E_clES9_S9_S9_.exit168, %_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlNS0_11OrientationES9_S9_E_clES9_S9_S9_.exit
  %.2 = phi i1 [ false, %_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlNS0_11OrientationES9_S9_E_clES9_S9_S9_.exit ], [ %.0, %bb.y ], [ false, %_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlNS0_11OrientationES9_S9_E_clES9_S9_S9_.exit168 ], [ false, %bb.a ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i1 %.2
}

declare void @_ZN3igl10predicates9exactinitEv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #3 comdat align 2 {
bb.a:
  switch i32 %7, label %bb.r [
    i32 1, label %bb.b
    i32 -1, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %8, 1
  br i1 %i.a, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.e = icmp ne i32 %i.d, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.e:                                             ; preds = %bb.b
  %i.f = icmp eq i32 %9, 1
  br i1 %i.f, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.g = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.j = icmp ne i32 %i.i, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.h:                                             ; preds = %bb.e
  %i.k = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.n = icmp ne i32 %i.m, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.j:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %8, -1
  br i1 %i.o, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.p = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.s = icmp ne i32 %i.r, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.m:                                             ; preds = %bb.j
  %i.t = icmp eq i32 %9, -1
  br i1 %i.t, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.u = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.x = icmp ne i32 %i.w, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.p:                                             ; preds = %bb.m
  %i.y = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aa = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.ab = icmp ne i32 %i.aa, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.r:                                             ; preds = %bb.a
  switch i32 %8, label %bb.ac [
    i32 -1, label %bb.s
    i32 1, label %bb.x
  ]

bb.s:                                             ; preds = %bb.r
  %or.cond = icmp ult i32 %9, 2
  br i1 %or.cond, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ac = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ae = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.af = icmp ne i32 %i.ae, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.v:                                             ; preds = %bb.s
  %i.ag = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ai = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.aj = icmp ne i32 %i.ai, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.x:                                             ; preds = %bb.r
  %i.ak = icmp eq i32 %9, 1
  br i1 %i.ak, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.al = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.an = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.ao = icmp ne i32 %i.an, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.aa:                                            ; preds = %bb.x
  %i.ap = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ar = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.as = icmp ne i32 %i.ar, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.ac:                                            ; preds = %bb.r
  switch i32 %9, label %bb.ah [
    i32 1, label %bb.ad
    i32 -1, label %bb.af
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.at = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.av = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.aw = icmp ne i32 %i.av, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.af:                                            ; preds = %bb.ac
  %i.ax = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.az = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.ba = icmp ne i32 %i.az, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.ah:                                            ; preds = %bb.ac
  %i.bb = load ptr, ptr %0, align 8, !tbaa !17, !nonnull !19, !align !20
  %i.bc = tail call noundef zeroext i1 @_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !21, !nonnull !19
  %i.bf = zext i1 %i.bc to i8
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !9
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit: ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v, %bb.u, %bb.t, %bb.q, %bb.p, %bb.o, %bb.n, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.ah
  %.0 = phi i1 [ %i.bc, %bb.ah ], [ %i.e, %bb.d ], [ %i.j, %bb.g ], [ %i.n, %bb.i ], [ %i.s, %bb.l ], [ %i.x, %bb.o ], [ %i.ab, %bb.q ], [ %i.af, %bb.u ], [ %i.aj, %bb.w ], [ %i.ao, %bb.z ], [ %i.as, %bb.ab ], [ %i.aw, %bb.ae ], [ false, %bb.c ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.k ], [ false, %bb.n ], [ false, %bb.p ], [ false, %bb.t ], [ false, %bb.v ], [ false, %bb.y ], [ false, %bb.aa ], [ false, %bb.ad ], [ false, %bb.af ], [ %i.ba, %bb.ag ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix.25", align 16 ; 7 uses
  %8 = alloca %"class.Eigen::Matrix.25", align 16 ; 7 uses
  %9 = alloca %"class.Eigen::Matrix.25", align 16 ; 7 uses
  %10 = alloca %"class.Eigen::Matrix.25", align 16 ; 7 uses
  %11 = alloca %"class.Eigen::Matrix.25", align 16 ; 7 uses
  %12 = alloca %"class.Eigen::Matrix.25", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load double, ptr %i.a, align 8, !tbaa !22, !noalias !24 ; 3 uses
  %i.d = load double, ptr %i.b, align 8, !tbaa !22, !noalias !24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !22, !noalias !24 ; 4 uses
  %i.g = load <2 x double>, ptr %3, align 8, !tbaa !22, !noalias !24 ; 4 uses
  %i.h = load <2 x double>, ptr %1, align 8, !tbaa !22, !noalias !24 ; 5 uses
  %i.i = load <2 x double>, ptr %2, align 8, !tbaa !22, !noalias !24 ; 5 uses
  %i.j = insertelement <2 x double> poison, double %i.f, i64 0
  %i.k = insertelement <2 x double> %i.j, double %i.c, i64 1
  %i.l = insertelement <2 x double> poison, double %i.d, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fsub <2 x double> %i.k, %i.m
  %i.o = insertelement <2 x double> %i.g, double %i.c, i64 0 ; 2 uses
  %i.p = insertelement <2 x double> %i.h, double %i.d, i64 0 ; 2 uses
  %i.q = fsub <2 x double> %i.o, %i.p             ; 2 uses
  %i.r = shufflevector <2 x double> %i.g, <2 x double> %i.i, <2 x i32> <i32 0, i32 3>
  %i.s = fsub <2 x double> %i.r, %i.h             ; 3 uses
  %i.t = insertelement <2 x double> %i.i, double %i.f, i64 1
  %i.u = insertelement <2 x double> %i.h, double %i.d, i64 1
  %i.v = fsub <2 x double> %i.t, %i.u             ; 2 uses
  %i.w = fneg <2 x double> %i.q
  %i.x = fmul <2 x double> %i.v, %i.w
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.s, <2 x double> %i.x) ; 3 uses
  %i.z = extractelement <2 x double> %i.s, i64 0
  %i.aa = fneg double %i.z
  %i.ab = extractelement <2 x double> %i.s, i64 1
  %i.ac = fmul double %i.ab, %i.aa
  %i.ad = extractelement <2 x double> %i.v, i64 0
  %i.ae = extractelement <2 x double> %i.q, i64 1
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ae, double %i.ac) ; 3 uses
  %i.ag = fcmp olt <2 x double> %i.y, zeroinitializer
  %i.ah = fneg <2 x double> %i.y
  %i.ai = select <2 x i1> %i.ag, <2 x double> %i.ah, <2 x double> %i.y ; 2 uses
  %i.aj = fcmp olt double %i.af, 0.000000e+00
  %i.ak = fneg double %i.af
  %i.al = select i1 %i.aj, double %i.ak, double %i.af ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #5
  %i.am = extractelement <2 x double> %i.ai, i64 1 ; 3 uses
  %i.an = fcmp ule double %i.am, %i.al
  %i.ao = extractelement <2 x double> %i.ai, i64 0 ; 3 uses
  %i.ap = fcmp ult double %i.am, %i.ao
  %or.cond = select i1 %i.an, i1 true, i1 %i.ap
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %13 = insertelement <2 x double> %i.i, double %i.f, i64 0
  store <2 x double> %13, ptr %7, align 16, !tbaa !22
  store <2 x double> %i.p, ptr %8, align 16, !tbaa !22
  store <2 x double> %i.o, ptr %9, align 16, !tbaa !22
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.as = load <2 x double>, ptr %i.ar, align 8, !tbaa !22
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.at, ptr %10, align 16, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.av = load <2 x double>, ptr %i.au, align 8, !tbaa !22
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aw, ptr %11, align 16, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ay = load <2 x double>, ptr %i.ax, align 8, !tbaa !22
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.az, ptr %12, align 16, !tbaa !22
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.ba = fcmp ule double %i.ao, %i.al
  %i.bb = fcmp ult double %i.ao, %i.am
  %or.cond50 = or i1 %i.ba, %i.bb
  br i1 %or.cond50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bh = extractelement <2 x double> %i.i, i64 0
  store double %i.bh, ptr %7, align 16, !tbaa !22
  store double %i.f, ptr %i.bg, align 8, !tbaa !22
  %i.bi = extractelement <2 x double> %i.h, i64 0
  store double %i.bi, ptr %8, align 16, !tbaa !22
  store double %i.d, ptr %i.aq, align 8, !tbaa !22
  %i.bj = extractelement <2 x double> %i.g, i64 0
  store double %i.bj, ptr %9, align 16, !tbaa !22
  store double %i.c, ptr %i.bf, align 8, !tbaa !22
  %i.bk = load double, ptr %5, align 8, !tbaa !22
  store double %i.bk, ptr %10, align 16, !tbaa !22
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !22
  store double %i.bm, ptr %i.be, align 8, !tbaa !22
  %i.bn = load double, ptr %4, align 8, !tbaa !22
  store double %i.bn, ptr %11, align 16, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !22
  store double %i.bp, ptr %i.bd, align 8, !tbaa !22
  %i.bq = load double, ptr %6, align 8, !tbaa !22
  store double %i.bq, ptr %12, align 16, !tbaa !22
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !22
  store double %i.bs, ptr %i.bc, align 8, !tbaa !22
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store <2 x double> %i.h, ptr %7, align 16, !tbaa !22
  store <2 x double> %i.i, ptr %8, align 16, !tbaa !22
  store <2 x double> %i.g, ptr %9, align 16, !tbaa !22
  %i.bt = load <2 x double>, ptr %4, align 8, !tbaa !22
  store <2 x double> %i.bt, ptr %10, align 16, !tbaa !22
  %i.bu = load <2 x double>, ptr %5, align 8, !tbaa !22
  store <2 x double> %i.bu, ptr %11, align 16, !tbaa !22
  %i.bv = load <2 x double>, ptr %6, align 8, !tbaa !22
  store <2 x double> %i.bv, ptr %12, align 16, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.bw = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !19, !align !20
  %i.bx = call noundef zeroext i1 @_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKNS3_IdLi2ELi1ELi0ELi2ELi1EEESB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 16 dereferenceable(16) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  ret i1 %i.bx
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_Rb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %7 = alloca %class.anon.17, align 8             ; 6 uses
  %8 = alloca %class.anon.18, align 8             ; 8 uses
  %9 = alloca %class.anon.19, align 8             ; 19 uses
  store i8 0, ptr %6, align 1, !tbaa !9
  tail call void @_ZN3igl10predicates9exactinitEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 -1, ptr %i.b, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !11
  %i.d = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %0) ; 3 uses
  %i.e = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %1) ; 4 uses
  %i.f = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 5 uses
  %i.g = icmp eq i32 %i.d, 1
  %i.h = icmp eq i32 %i.e, 1                      ; 2 uses
  %or.cond.i = and i1 %i.g, %i.h
  %i.i = icmp eq i32 %i.f, 1                      ; 3 uses
  %or.cond3.i = and i1 %or.cond.i, %i.i
  br i1 %or.cond3.i, label %_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlNS0_11OrientationES9_S9_E_clES9_S9_S9_.exit.thread, label %_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlNS0_11OrientationES9_S9_E_clES9_S9_S9_.exit

_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlNS0_11OrientationES9_S9_E_clES9_S9_S9_.exit: ; preds = %bb.a
  %i.j = and i32 %i.e, %i.d
  %i.k = and i32 %i.j, %i.f
  %spec.select.i = icmp eq i32 %i.k, -1
  br i1 %spec.select.i, label %_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlNS0_11OrientationES9_S9_E_clES9_S9_S9_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlNS0_11OrientationES9_S9_E_clES9_S9_S9_.exit
  %i.l = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 14 uses
  %i.m = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 14 uses
  %i.n = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %5) ; 14 uses
  %i.o = icmp eq i32 %i.l, 1
  %i.p = icmp eq i32 %i.m, 1
  %or.cond.i165 = and i1 %i.o, %i.p
  %i.q = icmp eq i32 %i.n, 1
  %or.cond3.i166 = and i1 %or.cond.i165, %i.q
  br i1 %or.cond3.i166, label %_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlNS0_11OrientationES9_S9_E_clES9_S9_S9_.exit.thread, label %_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlNS0_11OrientationES9_S9_E_clES9_S9_S9_.exit168

_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlNS0_11OrientationES9_S9_E_clES9_S9_S9_.exit168: ; preds = %bb.b
  %i.r = and i32 %i.m, %i.l
  %i.s = and i32 %i.r, %i.n
  %spec.select.i167 = icmp eq i32 %i.s, -1
  br i1 %spec.select.i167, label %_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlNS0_11OrientationES9_S9_E_clES9_S9_S9_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlNS0_11OrientationES9_S9_E_clES9_S9_S9_.exit168
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  store ptr %i.b, ptr %7, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.a, ptr %i.t, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.c, ptr %i.u, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  store ptr %7, ptr %8, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.b, ptr %i.v, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.w, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.c, ptr %i.x, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  store ptr %8, ptr %9, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %6, ptr %i.y, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.b, ptr %i.z, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.a, ptr %i.aa, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.c, ptr %i.ab, align 8, !tbaa !13
  switch i32 %i.d, label %bb.n [
    i32 1, label %bb.d
    i32 -1, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = call noundef zeroext i1 @_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.l, i32 noundef %i.n, i32 noundef %i.m)
  br label %bb.y

bb.f:                                             ; preds = %bb.d
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = call noundef zeroext i1 @_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.l, i32 noundef %i.n, i32 noundef %i.m)
  br label %bb.y

bb.h:                                             ; preds = %bb.f
  %i.ae = call noundef zeroext i1 @_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.l, i32 noundef %i.m, i32 noundef %i.n)
  br label %bb.y

bb.i:                                             ; preds = %bb.c
  %i.af = icmp eq i32 %i.e, -1
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = call noundef zeroext i1 @_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.l, i32 noundef %i.m, i32 noundef %i.n)
  br label %bb.y

bb.k:                                             ; preds = %bb.i
  %i.ah = icmp eq i32 %i.f, -1
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = call noundef zeroext i1 @_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.l, i32 noundef %i.m, i32 noundef %i.n)
  br label %bb.y

bb.m:                                             ; preds = %bb.k
  %i.aj = call noundef zeroext i1 @_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.l, i32 noundef %i.n, i32 noundef %i.m)
  br label %bb.y

bb.n:                                             ; preds = %bb.c
  switch i32 %i.e, label %bb.u [
    i32 -1, label %bb.o
end_hunk_0
begin_hunk_1_@_ZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_Rb:bb.a
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.t, %bb.s, %bb.q, %bb.p, %bb.m, %bb.l, %bb.j, %bb.h, %bb.g, %bb.e
  %.0 = phi i1 [ %i.ac, %bb.e ], [ %i.ad, %bb.g ], [ %i.ae, %bb.h ], [ %i.ag, %bb.j ], [ %i.ai, %bb.l ], [ %i.aj, %bb.m ], [ %i.ak, %bb.p ], [ %i.al, %bb.q ], [ %i.am, %bb.s ], [ %i.an, %bb.t ], [ %i.ao, %bb.v ], [ %i.ap, %bb.w ], [ %i.aq, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlNS0_11OrientationES9_S9_E_clES9_S9_S9_.exit.thread

_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlNS0_11OrientationES9_S9_E_clES9_S9_S9_.exit.thread: ; preds = %bb.b, %bb.a, %bb.y, %_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlNS0_11OrientationES9_S9_E_clES9_S9_S9_.exit168, %_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlNS0_11OrientationES9_S9_E_clES9_S9_S9_.exit
  %.2 = phi i1 [ false, %_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlNS0_11OrientationES9_S9_E_clES9_S9_S9_.exit ], [ %.0, %bb.y ], [ false, %_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlNS0_11OrientationES9_S9_E_clES9_S9_S9_.exit168 ], [ false, %bb.a ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i1 %.2
}

declare noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #3 comdat align 2 {
bb.a:
  switch i32 %7, label %bb.r [
    i32 1, label %bb.b
    i32 -1, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %8, 1
  br i1 %i.a, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.e = icmp ne i32 %i.d, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.e:                                             ; preds = %bb.b
  %i.f = icmp eq i32 %9, 1
  br i1 %i.f, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.g = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.j = icmp ne i32 %i.i, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.h:                                             ; preds = %bb.e
  %i.k = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.n = icmp ne i32 %i.m, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.j:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %8, -1
  br i1 %i.o, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.p = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.s = icmp ne i32 %i.r, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.m:                                             ; preds = %bb.j
  %i.t = icmp eq i32 %9, -1
  br i1 %i.t, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.u = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.x = icmp ne i32 %i.w, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.p:                                             ; preds = %bb.m
  %i.y = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aa = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.ab = icmp ne i32 %i.aa, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.r:                                             ; preds = %bb.a
  switch i32 %8, label %bb.ac [
    i32 -1, label %bb.s
    i32 1, label %bb.x
  ]

bb.s:                                             ; preds = %bb.r
  %or.cond = icmp ult i32 %9, 2
  br i1 %or.cond, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ac = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ae = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.af = icmp ne i32 %i.ae, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.v:                                             ; preds = %bb.s
  %i.ag = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ai = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.aj = icmp ne i32 %i.ai, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.x:                                             ; preds = %bb.r
  %i.ak = icmp eq i32 %9, 1
  br i1 %i.ak, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.al = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.an = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.ao = icmp ne i32 %i.an, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.aa:                                            ; preds = %bb.x
  %i.ap = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ar = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.as = icmp ne i32 %i.ar, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.ac:                                            ; preds = %bb.r
  switch i32 %9, label %bb.ah [
    i32 1, label %bb.ad
    i32 -1, label %bb.af
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.at = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.av = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.aw = icmp ne i32 %i.av, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.af:                                            ; preds = %bb.ac
  %i.ax = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.az = tail call noundef i32 @_ZN3igl10predicates8orient3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.ba = icmp ne i32 %i.az, 1
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

bb.ah:                                            ; preds = %bb.ac
  %i.bb = load ptr, ptr %0, align 8, !tbaa !29, !nonnull !19, !align !20
  %i.bc = tail call noundef zeroext i1 @_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !31, !nonnull !19
  %i.bf = zext i1 %i.bc to i8
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !9
  br label %_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit

_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_NS0_11OrientationESB_SB_E_clESA_SA_SA_SA_SA_SA_SB_SB_SB_ENKUlSA_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_.exit: ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v, %bb.u, %bb.t, %bb.q, %bb.p, %bb.o, %bb.n, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.ah
  %.0 = phi i1 [ %i.bc, %bb.ah ], [ %i.e, %bb.d ], [ %i.j, %bb.g ], [ %i.n, %bb.i ], [ %i.s, %bb.l ], [ %i.x, %bb.o ], [ %i.ab, %bb.q ], [ %i.af, %bb.u ], [ %i.aj, %bb.w ], [ %i.ao, %bb.z ], [ %i.as, %bb.ab ], [ %i.aw, %bb.ae ], [ false, %bb.c ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.k ], [ false, %bb.n ], [ false, %bb.p ], [ false, %bb.t ], [ false, %bb.v ], [ false, %bb.y ], [ false, %bb.aa ], [ false, %bb.ad ], [ false, %bb.af ], [ %i.ba, %bb.ag ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKS4_SA_SA_SA_SA_SA_E_clESA_SA_SA_SA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix.25", align 16 ; 7 uses
  %8 = alloca %"class.Eigen::Matrix.25", align 16 ; 7 uses
  %9 = alloca %"class.Eigen::Matrix.25", align 16 ; 7 uses
  %10 = alloca %"class.Eigen::Matrix.25", align 16 ; 7 uses
  %11 = alloca %"class.Eigen::Matrix.25", align 16 ; 7 uses
  %12 = alloca %"class.Eigen::Matrix.25", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load double, ptr %i.a, align 8, !tbaa !22, !noalias !32 ; 3 uses
  %i.d = load double, ptr %i.b, align 8, !tbaa !22, !noalias !32 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !22, !noalias !32 ; 4 uses
  %i.g = load <2 x double>, ptr %3, align 8, !tbaa !22, !noalias !32 ; 4 uses
  %i.h = load <2 x double>, ptr %1, align 8, !tbaa !22, !noalias !32 ; 5 uses
  %i.i = load <2 x double>, ptr %2, align 8, !tbaa !22, !noalias !32 ; 5 uses
  %i.j = insertelement <2 x double> poison, double %i.f, i64 0
  %i.k = insertelement <2 x double> %i.j, double %i.c, i64 1
  %i.l = insertelement <2 x double> poison, double %i.d, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fsub <2 x double> %i.k, %i.m
  %i.o = insertelement <2 x double> %i.g, double %i.c, i64 0 ; 2 uses
  %i.p = insertelement <2 x double> %i.h, double %i.d, i64 0 ; 2 uses
  %i.q = fsub <2 x double> %i.o, %i.p             ; 2 uses
  %i.r = shufflevector <2 x double> %i.g, <2 x double> %i.i, <2 x i32> <i32 0, i32 3>
  %i.s = fsub <2 x double> %i.r, %i.h             ; 3 uses
  %i.t = insertelement <2 x double> %i.i, double %i.f, i64 1
  %i.u = insertelement <2 x double> %i.h, double %i.d, i64 1
  %i.v = fsub <2 x double> %i.t, %i.u             ; 2 uses
  %i.w = fneg <2 x double> %i.q
  %i.x = fmul <2 x double> %i.v, %i.w
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.s, <2 x double> %i.x) ; 3 uses
  %i.z = extractelement <2 x double> %i.s, i64 0
  %i.aa = fneg double %i.z
  %i.ab = extractelement <2 x double> %i.s, i64 1
  %i.ac = fmul double %i.ab, %i.aa
  %i.ad = extractelement <2 x double> %i.v, i64 0
  %i.ae = extractelement <2 x double> %i.q, i64 1
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ae, double %i.ac) ; 3 uses
  %i.ag = fcmp olt <2 x double> %i.y, zeroinitializer
  %i.ah = fneg <2 x double> %i.y
  %i.ai = select <2 x i1> %i.ag, <2 x double> %i.ah, <2 x double> %i.y ; 2 uses
  %i.aj = fcmp olt double %i.af, 0.000000e+00
  %i.ak = fneg double %i.af
  %i.al = select i1 %i.aj, double %i.ak, double %i.af ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #5
  %i.am = extractelement <2 x double> %i.ai, i64 1 ; 3 uses
  %i.an = fcmp ule double %i.am, %i.al
  %i.ao = extractelement <2 x double> %i.ai, i64 0 ; 3 uses
  %i.ap = fcmp ult double %i.am, %i.ao
  %or.cond = select i1 %i.an, i1 true, i1 %i.ap
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %13 = insertelement <2 x double> %i.i, double %i.f, i64 0
  store <2 x double> %13, ptr %7, align 16, !tbaa !22
  store <2 x double> %i.p, ptr %8, align 16, !tbaa !22
  store <2 x double> %i.o, ptr %9, align 16, !tbaa !22
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.as = load <2 x double>, ptr %i.ar, align 8, !tbaa !22
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.at, ptr %10, align 16, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.av = load <2 x double>, ptr %i.au, align 8, !tbaa !22
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aw, ptr %11, align 16, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ay = load <2 x double>, ptr %i.ax, align 8, !tbaa !22
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.az, ptr %12, align 16, !tbaa !22
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.ba = fcmp ule double %i.ao, %i.al
  %i.bb = fcmp ult double %i.ao, %i.am
  %or.cond50 = or i1 %i.ba, %i.bb
  br i1 %or.cond50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bh = extractelement <2 x double> %i.i, i64 0
  store double %i.bh, ptr %7, align 16, !tbaa !22
  store double %i.f, ptr %i.bg, align 8, !tbaa !22
  %i.bi = extractelement <2 x double> %i.h, i64 0
  store double %i.bi, ptr %8, align 16, !tbaa !22
  store double %i.d, ptr %i.aq, align 8, !tbaa !22
  %i.bj = extractelement <2 x double> %i.g, i64 0
  store double %i.bj, ptr %9, align 16, !tbaa !22
  store double %i.c, ptr %i.bf, align 8, !tbaa !22
  %i.bk = load double, ptr %5, align 8, !tbaa !22
  store double %i.bk, ptr %10, align 16, !tbaa !22
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !22
  store double %i.bm, ptr %i.be, align 8, !tbaa !22
  %i.bn = load double, ptr %4, align 8, !tbaa !22
  store double %i.bn, ptr %11, align 16, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !22
  store double %i.bp, ptr %i.bd, align 8, !tbaa !22
  %i.bq = load double, ptr %6, align 8, !tbaa !22
  store double %i.bq, ptr %12, align 16, !tbaa !22
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !22
  store double %i.bs, ptr %i.bc, align 8, !tbaa !22
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store <2 x double> %i.h, ptr %7, align 16, !tbaa !22
  store <2 x double> %i.i, ptr %8, align 16, !tbaa !22
  store <2 x double> %i.g, ptr %9, align 16, !tbaa !22
  %i.bt = load <2 x double>, ptr %4, align 8, !tbaa !22
  store <2 x double> %i.bt, ptr %10, align 16, !tbaa !22
  %i.bu = load <2 x double>, ptr %5, align 8, !tbaa !22
  store <2 x double> %i.bu, ptr %11, align 16, !tbaa !22
  %i.bv = load <2 x double>, ptr %6, align 8, !tbaa !22
  store <2 x double> %i.bv, ptr %12, align 16, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.bw = load ptr, ptr %0, align 8, !tbaa !35, !nonnull !19, !align !20
  %i.bx = call noundef zeroext i1 @_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKNS3_IdLi2ELi1ELi0ELi2ELi1EEESB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 16 dereferenceable(16) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  ret i1 %i.bx
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKNS3_IdLi2ELi1ELi0ELi2ELi1EEESB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %7 = alloca %class.anon.44, align 16            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.a = load <2 x ptr>, ptr %0, align 8, !tbaa !13
  store <2 x ptr> %i.a, ptr %7, align 16, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37, !nonnull !19, !align !39
  store ptr %i.d, ptr %i.b, align 16, !tbaa !13
  %i.e = tail call noundef i32 @_ZN3igl10predicates8orient2dIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.f = icmp eq i32 %i.e, -1
  %i.g = tail call noundef i32 @_ZN3igl10predicates8orient2dIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %i.h = icmp eq i32 %i.g, -1                     ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef zeroext i1 @_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKNS3_IdLi2ELi1ELi0ELi2ELi1EEESB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_ENKUlSB_SB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %5)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.j = call noundef zeroext i1 @_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKNS3_IdLi2ELi1ELi0ELi2ELi1EEESB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_ENKUlSB_SB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = call noundef zeroext i1 @_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKNS3_IdLi2ELi1ELi0ELi2ELi1EEESB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_ENKUlSB_SB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %5)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.l = call noundef zeroext i1 @_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKNS3_IdLi2ELi1ELi0ELi2ELi1EEESB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_ENKUlSB_SB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.f ], [ %i.l, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare i32 @__gxx_personality_v0(...)

declare noundef i32 @_ZN3igl10predicates8orient2dIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKNS3_IdLi2ELi1ELi0ELi2ELi1EEESB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_ENKUlSB_SB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %7 = alloca %class.anon.45, align 8             ; 8 uses
  %8 = alloca %class.anon.46, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.a = load ptr, ptr %0, align 8, !tbaa !40, !nonnull !19, !align !39 ; 2 uses
  store ptr %i.a, ptr %7, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42, !nonnull !19, !align !39 ; 2 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43, !nonnull !19, !align !39 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  store ptr %i.a, ptr %8, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.d, ptr %i.h, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.g, ptr %i.i, align 8, !tbaa !13
  %i.j = tail call noundef i32 @_ZN3igl10predicates8orient2dIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %1)
  %.not = icmp eq i32 %i.j, -1
  %i.k = tail call noundef i32 @_ZN3igl10predicates8orient2dIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %1)
  %.not56 = icmp eq i32 %i.k, -1                  ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef i32 @_ZN3igl10predicates8orient2dIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %1)
  %.not59 = icmp eq i32 %i.l, -1                  ; 2 uses
  br i1 %.not56, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not59, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_ZZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKNS3_IdLi2ELi1ELi0ELi2ELi1EEESB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_ENKUlSB_SB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_ENKUlSB_SB_SB_SB_SB_SB_E0_clESB_SB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6)
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  br i1 %.not59, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call noundef zeroext i1 @_ZZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKNS3_IdLi2ELi1ELi0ELi2ELi1EEESB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_ENKUlSB_SB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_ENKUlSB_SB_SB_SB_SB_SB_E0_clESB_SB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.o = call noundef zeroext i1 @_ZZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKNS3_IdLi2ELi1ELi0ELi2ELi1EEESB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_ENKUlSB_SB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_ENKUlSB_SB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6)
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  br i1 %.not56, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call noundef i32 @_ZN3igl10predicates8orient2dIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %1)
  %.not57 = icmp eq i32 %i.p, -1
  br i1 %.not57, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = call noundef zeroext i1 @_ZZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKNS3_IdLi2ELi1ELi0ELi2ELi1EEESB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_ENKUlSB_SB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_ENKUlSB_SB_SB_SB_SB_SB_E0_clESB_SB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %4)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.r = call noundef zeroext i1 @_ZZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKNS3_IdLi2ELi1ELi0ELi2ELi1EEESB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_ENKUlSB_SB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_ENKUlSB_SB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %4)
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.s = call noundef zeroext i1 @_ZZZZN3igl10predicates27triangle_triangle_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEbRKT_S7_S7_S7_S7_S7_RbENKUlRKNS3_IdLi2ELi1ELi0ELi2ELi1EEESB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_ENKUlSB_SB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_ENKUlSB_SB_SB_SB_SB_SB_E_clESB_SB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5)
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.d
end_hunk_1
