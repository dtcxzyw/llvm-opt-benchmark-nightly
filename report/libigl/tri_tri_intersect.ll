Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tri_tri_intersect?download=true
inline.NumInlined: 3274
inline.NumDeleted: 656
begin_hunk_0_@_ZN3igl28tri_tri_intersection_test_3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_S3_S3_S3_S3_EEbRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERKNS4_IT3_EERKNS4_IT4_EERbRNS4_IT5_EERNS4_IT6_EE:bb.a
bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %6, align 1, !tbaa !18
  %i.do = call noundef zeroext i1 @_ZN3igl8internal18coplanar_tri_tri3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EERKNS5_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %9)
  br label %bb.ad

bb.e:                                             ; preds = %bb.c
  %i.dp = fcmp ogt double %i.bd, 0.000000e+00
  br i1 %i.dp, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.dq = fcmp ogt double %i.be, 0.000000e+00
  br i1 %i.dq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dr = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_dddS4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EET5_T6_T7_RbRNS5_IT8_EERNS5_IT9_EERKNS5_IT10_EERKNS5_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.ch, double noundef %i.cv, double noundef %i.co, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.h:                                             ; preds = %bb.f
  %i.ds = fcmp ogt double %i.bc, 0.000000e+00
  br i1 %i.ds, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dt = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_dddS4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EET5_T6_T7_RbRNS5_IT8_EERNS5_IT9_EERKNS5_IT10_EERKNS5_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.ch, double noundef %i.cv, double noundef %i.co, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.j:                                             ; preds = %bb.h
  %i.du = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_dddS4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EET5_T6_T7_RbRNS5_IT8_EERNS5_IT9_EERKNS5_IT10_EERKNS5_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.ch, double noundef %i.co, double noundef %i.cv, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.k:                                             ; preds = %bb.e
  %i.dv = fcmp olt double %i.bd, 0.000000e+00
  %i.dw = fcmp olt double %i.be, 0.000000e+00     ; 2 uses
  br i1 %i.dv, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  br i1 %i.dw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dx = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_dddS4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EET5_T6_T7_RbRNS5_IT8_EERNS5_IT9_EERKNS5_IT10_EERKNS5_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.ch, double noundef %i.co, double noundef %i.cv, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.n:                                             ; preds = %bb.l
  %i.dy = fcmp olt double %i.bc, 0.000000e+00
  br i1 %i.dy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dz = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_dddS4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EET5_T6_T7_RbRNS5_IT8_EERNS5_IT9_EERKNS5_IT10_EERKNS5_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.ch, double noundef %i.co, double noundef %i.cv, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.p:                                             ; preds = %bb.n
  %i.ea = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_dddS4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EET5_T6_T7_RbRNS5_IT8_EERNS5_IT9_EERKNS5_IT10_EERKNS5_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.ch, double noundef %i.cv, double noundef %i.co, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.q:                                             ; preds = %bb.k
  br i1 %i.dw, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.eb = fcmp ult double %i.bc, 0.000000e+00
  br i1 %i.eb, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ec = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_dddS4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EET5_T6_T7_RbRNS5_IT8_EERNS5_IT9_EERKNS5_IT10_EERKNS5_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.ch, double noundef %i.cv, double noundef %i.co, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.t:                                             ; preds = %bb.r
  %i.ed = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_dddS4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EET5_T6_T7_RbRNS5_IT8_EERNS5_IT9_EERKNS5_IT10_EERKNS5_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.ch, double noundef %i.co, double noundef %i.cv, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.u:                                             ; preds = %bb.q
  %i.ee = fcmp ogt double %i.be, 0.000000e+00
  %i.ef = fcmp ogt double %i.bc, 0.000000e+00     ; 2 uses
  br i1 %i.ee, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  br i1 %i.ef, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.eg = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_dddS4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EET5_T6_T7_RbRNS5_IT8_EERNS5_IT9_EERKNS5_IT10_EERKNS5_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.ch, double noundef %i.cv, double noundef %i.co, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.x:                                             ; preds = %bb.v
  %i.eh = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_dddS4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EET5_T6_T7_RbRNS5_IT8_EERNS5_IT9_EERKNS5_IT10_EERKNS5_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.ch, double noundef %i.co, double noundef %i.cv, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.y:                                             ; preds = %bb.u
  br i1 %i.ef, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ei = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_dddS4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EET5_T6_T7_RbRNS5_IT8_EERNS5_IT9_EERKNS5_IT10_EERKNS5_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.ch, double noundef %i.co, double noundef %i.cv, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.ej = fcmp olt double %i.bc, 0.000000e+00
  br i1 %i.ej, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ek = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_dddS4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EET5_T6_T7_RbRNS5_IT8_EERNS5_IT9_EERKNS5_IT10_EERKNS5_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.ch, double noundef %i.cv, double noundef %i.co, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  store i8 1, ptr %6, align 1, !tbaa !18
  %i.el = call noundef zeroext i1 @_ZN3igl8internal18coplanar_tri_tri3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EERKNS5_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %9)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.d, %bb.g, %bb.i, %bb.j, %bb.m, %bb.o, %bb.p, %bb.s, %bb.t, %bb.w, %bb.x, %bb.z, %bb.ab, %bb.ac, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.do, %bb.d ], [ %i.dr, %bb.g ], [ %i.dt, %bb.i ], [ %i.du, %bb.j ], [ %i.dx, %bb.m ], [ %i.dz, %bb.o ], [ %i.ea, %bb.p ], [ %i.ec, %bb.s ], [ %i.ed, %bb.t ], [ %i.eg, %bb.w ], [ %i.eh, %bb.x ], [ %i.ei, %bb.z ], [ %i.ek, %bb.ab ], [ %i.el, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl8internal18coplanar_tri_tri3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EERKNS5_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix.111", align 16 ; 7 uses
  %8 = alloca %"class.Eigen::Matrix.111", align 16 ; 7 uses
  %9 = alloca %"class.Eigen::Matrix.111", align 16 ; 7 uses
  %10 = alloca %"class.Eigen::Matrix.111", align 16 ; 7 uses
  %11 = alloca %"class.Eigen::Matrix.111", align 16 ; 7 uses
  %12 = alloca %"class.Eigen::Matrix.111", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  %i.a = load <2 x double>, ptr %6, align 8, !tbaa !15 ; 3 uses
  %i.b = fcmp olt <2 x double> %i.a, zeroinitializer
  %i.c = fneg <2 x double> %i.a
  %i.d = select <2 x i1> %i.b, <2 x double> %i.c, <2 x double> %i.a ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !15 ; 3 uses
  %i.g = fcmp olt double %i.f, 0.000000e+00
  %i.h = fneg double %i.f
  %i.i = select i1 %i.g, double %i.h, double %i.f ; 2 uses
  %i.j = extractelement <2 x double> %i.d, i64 0  ; 3 uses
  %i.k = fcmp ule double %i.j, %i.i
  %i.l = extractelement <2 x double> %i.d, i64 1  ; 3 uses
  %i.m = fcmp ult double %i.j, %i.l
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load <2 x double>, ptr %i.n, align 8, !tbaa !15
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.p, ptr %7, align 16, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load <2 x double>, ptr %i.q, align 8, !tbaa !15
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.s, ptr %8, align 16, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load <2 x double>, ptr %i.t, align 8, !tbaa !15
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.v, ptr %9, align 16, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load <2 x double>, ptr %i.w, align 8, !tbaa !15
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.y, ptr %10, align 16, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load <2 x double>, ptr %i.z, align 8, !tbaa !15
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ab, ptr %11, align 16, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.ad = fcmp ule double %i.l, %i.i
  %i.ae = fcmp ult double %i.l, %i.j
  %or.cond54 = or i1 %i.ae, %i.ad
  br i1 %or.cond54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aj = load double, ptr %1, align 8, !tbaa !15
  store double %i.aj, ptr %7, align 16, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load double, ptr %i.ak, align 8, !tbaa !15
  store double %i.al, ptr %i.ai, align 8, !tbaa !15
  %i.am = load double, ptr %0, align 8, !tbaa !15
  store double %i.am, ptr %8, align 16, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load double, ptr %i.an, align 8, !tbaa !15
  store double %i.ao, ptr %i.ah, align 8, !tbaa !15
  %i.ap = load double, ptr %2, align 8, !tbaa !15
  store double %i.ap, ptr %9, align 16, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !15
  store double %i.ar, ptr %i.ag, align 8, !tbaa !15
  %i.as = load double, ptr %4, align 8, !tbaa !15
  store double %i.as, ptr %10, align 16, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = load double, ptr %i.at, align 8, !tbaa !15
  store double %i.au, ptr %i.af, align 8, !tbaa !15
  %i.av = load double, ptr %3, align 8, !tbaa !15
  store double %i.av, ptr %11, align 16, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %13 = load double, ptr %i.aw, align 8, !tbaa !15
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store double %13, ptr %14, align 8, !tbaa !15
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ax = load <2 x double>, ptr %0, align 8, !tbaa !15
  store <2 x double> %i.ax, ptr %7, align 16, !tbaa !15
  %i.ay = load <2 x double>, ptr %1, align 8, !tbaa !15
  store <2 x double> %i.ay, ptr %8, align 16, !tbaa !15
  %i.az = load <2 x double>, ptr %2, align 8, !tbaa !15
  store <2 x double> %i.az, ptr %9, align 16, !tbaa !15
  %i.ba = load <2 x double>, ptr %3, align 8, !tbaa !15
  store <2 x double> %i.ba, ptr %10, align 16, !tbaa !15
  %15 = load <2 x double>, ptr %4, align 8, !tbaa !15
  store <2 x double> %15, ptr %11, align 16, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sink57.in = phi ptr [ %5, %bb.d ], [ %5, %bb.e ], [ %i.ac, %bb.b ]
  %.sink = phi i64 [ 16, %bb.d ], [ 8, %bb.e ], [ 8, %bb.b ]
  %.sink57 = load double, ptr %.sink57.in, align 8, !tbaa !15
  store double %.sink57, ptr %12, align 16, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 %.sink
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 8
  store double %i.bc, ptr %i.bd, align 8, !tbaa !15
  %i.be = call noundef zeroext i1 @_ZN3igl23tri_tri_overlap_test_2dIN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEES3_S3_S3_S3_S3_EEbRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERKNS4_IT3_EERKNS4_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  ret i1 %i.be
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_dddS4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EET5_T6_T7_RbRNS5_IT8_EERNS5_IT9_EERKNS5_IT10_EERKNS5_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %6, double noundef %7, double noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = fcmp ogt double %6, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ogt double %7, 0.000000e+00
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_ZN3igl8internal27_IGL_CONSTRUCT_INTERSECTIONIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_S4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EERNS5_IT5_EERNS5_IT6_EERKNS5_IT7_EERKNS5_IT8_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
  br label %bb.z

bb.d:                                             ; preds = %bb.b
  %i.d = fcmp ogt double %8, 0.000000e+00
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef zeroext i1 @_ZN3igl8internal27_IGL_CONSTRUCT_INTERSECTIONIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_S4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EERNS5_IT5_EERNS5_IT6_EERKNS5_IT7_EERKNS5_IT8_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
  br label %bb.z

bb.f:                                             ; preds = %bb.d
  %i.f = tail call noundef zeroext i1 @_ZN3igl8internal27_IGL_CONSTRUCT_INTERSECTIONIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_S4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EERNS5_IT5_EERNS5_IT6_EERKNS5_IT7_EERKNS5_IT8_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
  br label %bb.z

bb.g:                                             ; preds = %bb.a
  %i.g = fcmp olt double %6, 0.000000e+00
  %i.h = fcmp olt double %7, 0.000000e+00         ; 2 uses
  br i1 %i.g, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  br i1 %i.h, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.i = tail call noundef zeroext i1 @_ZN3igl8internal27_IGL_CONSTRUCT_INTERSECTIONIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_S4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EERNS5_IT5_EERNS5_IT6_EERKNS5_IT7_EERKNS5_IT8_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
  br label %bb.z

bb.j:                                             ; preds = %bb.h
  %i.j = fcmp olt double %8, 0.000000e+00
  br i1 %i.j, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.k = tail call noundef zeroext i1 @_ZN3igl8internal27_IGL_CONSTRUCT_INTERSECTIONIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_S4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EERNS5_IT5_EERNS5_IT6_EERKNS5_IT7_EERKNS5_IT8_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
  br label %bb.z

bb.l:                                             ; preds = %bb.j
  %i.l = tail call noundef zeroext i1 @_ZN3igl8internal27_IGL_CONSTRUCT_INTERSECTIONIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_S4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EERNS5_IT5_EERNS5_IT6_EERKNS5_IT7_EERKNS5_IT8_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
  br label %bb.z

bb.m:                                             ; preds = %bb.g
  br i1 %i.h, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.m = fcmp ult double %8, 0.000000e+00
  br i1 %i.m, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.n = tail call noundef zeroext i1 @_ZN3igl8internal27_IGL_CONSTRUCT_INTERSECTIONIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_S4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EERNS5_IT5_EERNS5_IT6_EERKNS5_IT7_EERKNS5_IT8_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
  br label %bb.z

bb.p:                                             ; preds = %bb.n
  %i.o = tail call noundef zeroext i1 @_ZN3igl8internal27_IGL_CONSTRUCT_INTERSECTIONIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_S4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EERNS5_IT5_EERNS5_IT6_EERKNS5_IT7_EERKNS5_IT8_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
  br label %bb.z

bb.q:                                             ; preds = %bb.m
  %i.p = fcmp ogt double %7, 0.000000e+00
  %i.q = fcmp ogt double %8, 0.000000e+00         ; 2 uses
  br i1 %i.p, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  br i1 %i.q, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.r = tail call noundef zeroext i1 @_ZN3igl8internal27_IGL_CONSTRUCT_INTERSECTIONIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_S4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EERNS5_IT5_EERNS5_IT6_EERKNS5_IT7_EERKNS5_IT8_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
  br label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.s = tail call noundef zeroext i1 @_ZN3igl8internal27_IGL_CONSTRUCT_INTERSECTIONIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_S4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EERNS5_IT5_EERNS5_IT6_EERKNS5_IT7_EERKNS5_IT8_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
  br label %bb.z

bb.u:                                             ; preds = %bb.q
  br i1 %i.q, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.t = tail call noundef zeroext i1 @_ZN3igl8internal27_IGL_CONSTRUCT_INTERSECTIONIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_S4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EERNS5_IT5_EERNS5_IT6_EERKNS5_IT7_EERKNS5_IT8_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.u = fcmp olt double %8, 0.000000e+00
  br i1 %i.u, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.v = tail call noundef zeroext i1 @_ZN3igl8internal27_IGL_CONSTRUCT_INTERSECTIONIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_S4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EERNS5_IT5_EERNS5_IT6_EERKNS5_IT7_EERKNS5_IT8_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  store i8 1, ptr %9, align 1, !tbaa !18
  %i.w = tail call noundef zeroext i1 @_ZN3igl8internal18coplanar_tri_tri3dIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_S4_S4_S4_EEbRKNS2_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERKNS5_IT4_EERKNS5_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %12)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.v, %bb.t, %bb.s, %bb.p, %bb.o, %bb.l, %bb.k, %bb.i, %bb.f, %bb.e, %bb.c
  %.0 = phi i1 [ %i.c, %bb.c ], [ %i.e, %bb.e ], [ %i.f, %bb.f ], [ %i.i, %bb.i ], [ %i.k, %bb.k ], [ %i.l, %bb.l ], [ %i.n, %bb.o ], [ %i.o, %bb.p ], [ %i.r, %bb.s ], [ %i.s, %bb.t ], [ %i.t, %bb.v ], [ %i.v, %bb.x ], [ %i.w, %bb.y ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3igl23tri_tri_overlap_test_3dIN5Eigen5BlockIKNS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES6_S6_NS2_IS4_Li1ELin1ELb0EEES6_S6_EEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Eigen::Matrix", align 16    ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %.sroa.0252.0.copyload = load ptr, ptr %3, align 8 ; 6 uses
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.4254.0.copyload = load ptr, ptr %.sroa.4254.0..sroa_idx, align 8
  %.sroa.5256.56.copyload = load ptr, ptr %5, align 8 ; 3 uses
  %.sroa.7258.56..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %.sroa.7258.56.copyload = load ptr, ptr %.sroa.7258.56..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.4254.0.copyload, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.7258.56.copyload, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = load double, ptr %.sroa.5256.56.copyload, align 8, !tbaa !15 ; 5 uses
  %i.f = load double, ptr %.sroa.0252.0.copyload, align 8, !tbaa !15
  %i.g = getelementptr inbounds [8 x i8], ptr %.sroa.0252.0.copyload, i64 %i.b
  %i.h = getelementptr inbounds [8 x i8], ptr %.sroa.5256.56.copyload, i64 %i.d
  %i.i = load double, ptr %i.h, align 8, !tbaa !15 ; 4 uses
  %i.j = load double, ptr %i.g, align 8, !tbaa !15
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.b, 4
  %i.k = getelementptr inbounds i8, ptr %.sroa.0252.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %.idx2.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.d, 4
  %i.l = getelementptr inbounds i8, ptr %.sroa.5256.56.copyload, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i
  %i.m = load double, ptr %i.l, align 8, !tbaa !15 ; 5 uses
  %i.n = load double, ptr %i.k, align 8, !tbaa !15 ; 2 uses
  %.sroa.0244.0.copyload = load ptr, ptr %4, align 8 ; 3 uses
  %.sroa.4246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4246.0.copyload = load ptr, ptr %.sroa.4246.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.4246.0.copyload, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13   ; 2 uses
  %i.q = load double, ptr %.sroa.0244.0.copyload, align 8, !tbaa !15 ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %.sroa.0244.0.copyload, i64 %i.p
  %i.s = load double, ptr %i.r, align 8, !tbaa !15 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i161 = shl nsw i64 %i.p, 4
  %i.t = getelementptr inbounds i8, ptr %.sroa.0244.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i161
  %i.u = load double, ptr %i.t, align 8, !tbaa !15 ; 3 uses
  %i.v = insertelement <2 x double> poison, double %i.n, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.f, i64 1
  %i.x = insertelement <2 x double> poison, double %i.m, i64 0 ; 2 uses
  %i.y = insertelement <2 x double> %i.x, double %i.e, i64 1
  %i.z = fsub <2 x double> %i.w, %i.y             ; 2 uses
  %i.aa = insertelement <2 x double> poison, double %i.j, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.q, i64 1
  %i.ac = insertelement <2 x double> poison, double %i.i, i64 0 ; 2 uses
  %i.ad = insertelement <2 x double> %i.ac, double %i.e, i64 1
  %i.ae = fsub <2 x double> %i.ab, %i.ad          ; 3 uses
  %i.af = insertelement <2 x double> poison, double %i.u, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.n, i64 1
  %i.ah = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fsub <2 x double> %i.ag, %i.ah
  %i.aj = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.u, i64 1
  %i.al = insertelement <2 x double> %i.ac, double %i.m, i64 1
  %i.am = fsub <2 x double> %i.ak, %i.al          ; 2 uses
  %i.an = fneg <2 x double> %i.am
  %i.ao = fmul <2 x double> %i.z, %i.an
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ae, <2 x double> %i.ao) ; 3 uses
  %i.aq = extractelement <2 x double> %i.ae, i64 1
  %i.ar = fneg double %i.aq
  %i.as = extractelement <2 x double> %i.ae, i64 0
  %i.at = fmul double %i.as, %i.ar
  %i.au = extractelement <2 x double> %i.z, i64 1
  %i.av = extractelement <2 x double> %i.am, i64 0
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.au, double %i.av, double %i.at) ; 3 uses
  %.sroa.0233.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.4235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4235.0.copyload = load ptr, ptr %.sroa.4235.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.4235.0.copyload, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !13 ; 2 uses
  %i.az = load double, ptr %.sroa.0233.0.copyload, align 8, !tbaa !15 ; 3 uses
  %i.ba = fsub double %i.az, %i.e
  %i.bb = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bc = getelementptr inbounds [8 x i8], ptr %.sroa.0233.0.copyload, i64 %i.ay
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !15 ; 2 uses
  %i.be = fsub double %i.bd, %i.i
  %.sroa.0271.8.vec.insert297 = insertelement <2 x double> %i.bb, double %i.be, i64 1
end_hunk_0
