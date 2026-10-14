Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/mesh_boolean?download=true
inline.NumInlined: 2199
inline.NumDeleted: 1039
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN3igl8copyleft4cgal12mesh_booleanIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELin1ELi0ELin1ELin1EEESL_SM_SL_SM_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEbRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKSt8functionIFiNS4_IiLi1ELin1ELi1ELi1ELin1EEEEERKS15_IFiiiEERNS3_15PlainObjectBaseIT3_EERNS1F_IT4_EERNS1F_IT5_EE:bb.a
bb.ba:                                            ; preds = %bb.az, %bb.ay
  fence acquire
  %i.kb = load ptr, ptr %i.jp, align 8, !tbaa !45 ; 3 uses
  %i.kc = icmp eq ptr %i.kb, null
  br i1 %i.kc, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kd = load ptr, ptr %i.kb, align 8, !tbaa !47
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(12) %i.kb) #12, !inline_history !1
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i:                 ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ax, %bb.aw, %.preheader.i.i.i.i
  %.old1.not.i.i.i.i = icmp eq i64 %i.jo, 0
  br i1 %.old1.not.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit, label %.preheader.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %bb.at
  call void @free(ptr noundef %i.ji) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  ret i1 %i.jg

bb.bc:                                            ; preds = %bb.as
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aq, %bb.bc, %bb.ar, %bb.c
  %.pn52.pn = phi { ptr, i32 } [ %i.r, %bb.c ], [ %i.je, %bb.aq ], [ %i.jf, %bb.ar ], [ %i.kg, %bb.bc ]
  %i.kh = load ptr, ptr %19, align 8, !tbaa !52
  call void @free(ptr noundef %i.kh) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #12
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3igl8copyleft4cgal12mesh_booleanIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_S6_S5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEbRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKNS_15MeshBooleanTypeERNS3_15PlainObjectBaseIT3_EERNSS_IT4_EERNSS_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::function", align 8     ; 12 uses
  %9 = alloca %"class.std::function.6", align 8   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  invoke void @_ZN3igl8copyleft4cgal26mesh_boolean_type_to_funcsERKNS_15MeshBooleanTypeERSt8functionIFiN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEEEERS5_IFiiiEE(ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef zeroext i1 @_ZN3igl8copyleft4cgal12mesh_booleanIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_S6_S5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEbRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKSt8functionIFiNS4_IiLi1ELin1ELi1ELi1ELin1EEEEERKSP_IFiiiEERNS3_15PlainObjectBaseIT3_EERNSZ_IT4_EERNSZ_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %.not.i9 = icmp eq ptr %i.h, null
  br i1 %.not.i9, label %_ZNSt14_Function_baseD2Ev.exit10, label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit10 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit10:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  ret i1 %i.a

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27   ; 2 uses
  %.not.i11 = icmp eq ptr %i.n, null
  br i1 %.not.i11, label %_ZNSt14_Function_baseD2Ev.exit12, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit12 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit12:                 ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %.not.i13 = icmp eq ptr %i.s, null
  br i1 %.not.i13, label %_ZNSt14_Function_baseD2Ev.exit14, label %bb.k

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit12
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit14 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit14:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit12, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl8copyleft4cgal12mesh_booleanIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_S6_S5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEbRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKSt8functionIFiNS4_IiLi1ELin1ELi1ELi1ELin1EEEEERKSP_IFiiiEERNS3_15PlainObjectBaseIT3_EERNSZ_IT4_EERNSZ_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"struct.Eigen::internal::evaluator.197", align 8 ; 6 uses
  %10 = alloca %"struct.Eigen::internal::evaluator.193", align 8 ; 5 uses
  %11 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.209", align 8 ; 7 uses
  %12 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %13 = alloca %"struct.Eigen::internal::evaluator.188", align 8 ; 5 uses
  %14 = alloca %"struct.Eigen::internal::evaluator.193", align 8 ; 5 uses
  %15 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %16 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %17 = alloca %"class.Eigen::Matrix.117", align 16 ; 6 uses
  %18 = alloca %"class.Eigen::Matrix.369", align 8 ; 13 uses
  %19 = alloca %"class.Eigen::Matrix.127", align 8 ; 13 uses
  %20 = alloca %"class.Eigen::Block", align 8     ; 10 uses
  %21 = alloca %"class.Eigen::Block", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31
  store i64 %i.b, ptr %17, align 16, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !84
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !84
  %i.j = add nsw i64 %i.i, %i.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %18, i64 noundef %i.j, i64 noundef 3)
          to label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit unwind label %bb.b

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.b ], [ %.pn52.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %18, align 8, !tbaa !86
  call void @free(ptr noundef %i.l) #12
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #12
  %i.m = load i64, ptr %i.a, align 8, !tbaa !31
  %i.n = load i64, ptr %i.c, align 8, !tbaa !31
  %i.o = add nsw i64 %i.n, %i.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef %i.o, i64 noundef 3)
          to label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit.preheader unwind label %bb.c

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit.preheader: ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit
  %i.p = load i64, ptr %i.f, align 8, !tbaa !84   ; 15 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.preheader63.lr.ph, label %.preheader62

.preheader63.lr.ph:                               ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit.preheader
  %i.r = load ptr, ptr %0, align 8, !tbaa !87     ; 5 uses
  %i.s = load ptr, ptr %18, align 8, !tbaa !86    ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !88   ; 6 uses
  %.idx = shl i64 %i.p, 4                         ; 7 uses
  %.idx80 = shl i64 %i.u, 4                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.p, 64
  br i1 %min.iters.check, label %.preheader63.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader63.lr.ph
  %i.v = ptrtoaddr ptr %i.s to i64                ; 7 uses
  %i.w = ptrtoaddr ptr %i.r to i64                ; 7 uses
  %i.x = shl i64 %i.u, 3                          ; 3 uses
  %i.y = add i64 %i.x, -1
  %diff.check = icmp ult i64 %i.y, 31
  %i.z = add i64 %.idx80, -1
  %diff.check83 = icmp ult i64 %i.z, 31
  %conflict.rdx = or i1 %diff.check, %diff.check83
  %i.aa = add i64 %.idx, %i.w
  %i.ab = sub i64 %i.v, %i.aa
  %diff.check84 = icmp ugt i64 %i.ab, -32
  %conflict.rdx85 = or i1 %conflict.rdx, %diff.check84
  %i.ac = shl i64 %i.p, 3                         ; 3 uses
  %i.ad = add i64 %i.ac, %i.w
  %i.ae = sub i64 %i.v, %i.ad
  %diff.check86 = icmp ugt i64 %i.ae, -32
  %conflict.rdx87 = or i1 %conflict.rdx85, %diff.check86
  %i.af = sub i64 %i.w, %i.v
  %diff.check88 = icmp ugt i64 %i.af, -32
  %conflict.rdx89 = or i1 %conflict.rdx87, %diff.check88
  %22 = add i64 %.idx, %i.w
  %23 = add i64 %i.x, %i.v
  %i.ag = sub i64 %23, %22
  %diff.check90 = icmp ugt i64 %i.ag, -32
  %conflict.rdx91 = or i1 %conflict.rdx89, %diff.check90
  %i.ah = add i64 %i.x, %i.v
  %i.ai = sub i64 %i.ah, %i.w                     ; 2 uses
  %i.aj = sub i64 %i.ac, %i.ai
  %diff.check92 = icmp ugt i64 %i.aj, -32
  %conflict.rdx93 = or i1 %conflict.rdx91, %diff.check92
  %i.ak = add i64 %i.ai, -1
  %diff.check94 = icmp ult i64 %i.ak, 31
  %conflict.rdx95 = or i1 %conflict.rdx93, %diff.check94
  %i.al = add i64 %.idx80, %i.v
  %i.am = sub i64 %i.al, %i.w                     ; 2 uses
  %i.an = sub i64 %.idx, %i.am
  %diff.check96 = icmp ugt i64 %i.an, -32
  %conflict.rdx97 = or i1 %conflict.rdx95, %diff.check96
  %i.ao = sub i64 %i.ac, %i.am
  %diff.check98 = icmp ugt i64 %i.ao, -32
  %conflict.rdx99 = or i1 %conflict.rdx97, %diff.check98
  %i.ap = add i64 %.idx80, %i.v
  %24 = sub i64 %i.w, %i.ap
  %diff.check100 = icmp ugt i64 %24, -32
  %conflict.rdx101 = or i1 %conflict.rdx99, %diff.check100
  br i1 %conflict.rdx101, label %.preheader63.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aq = getelementptr [8 x i8], ptr %i.r, i64 %index ; 4 uses
  %i.ar = getelementptr [8 x i8], ptr %i.s, i64 %index ; 4 uses
  %i.as = getelementptr i8, ptr %i.aq, i64 16
  %wide.load = load <2 x double>, ptr %i.aq, align 8, !tbaa !90
  %wide.load102 = load <2 x double>, ptr %i.as, align 8, !tbaa !90
  %i.at = getelementptr i8, ptr %i.ar, i64 16
  store <2 x double> %wide.load, ptr %i.ar, align 8, !tbaa !90
  store <2 x double> %wide.load102, ptr %i.at, align 8, !tbaa !90
  %i.au = getelementptr [8 x i8], ptr %i.aq, i64 %i.p ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %wide.load103 = load <2 x double>, ptr %i.au, align 8, !tbaa !90
  %wide.load104 = load <2 x double>, ptr %i.av, align 8, !tbaa !90
  %i.aw = getelementptr [8 x i8], ptr %i.ar, i64 %i.u ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store <2 x double> %wide.load103, ptr %i.aw, align 8, !tbaa !90
  store <2 x double> %wide.load104, ptr %i.ax, align 8, !tbaa !90
  %i.ay = getelementptr i8, ptr %i.aq, i64 %.idx  ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  %wide.load105 = load <2 x double>, ptr %i.ay, align 8, !tbaa !90
  %wide.load106 = load <2 x double>, ptr %i.az, align 8, !tbaa !90
  %i.ba = getelementptr i8, ptr %i.ar, i64 %.idx80 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  store <2 x double> %wide.load105, ptr %i.ba, align 8, !tbaa !90
  store <2 x double> %wide.load106, ptr %i.bb, align 8, !tbaa !90
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %.preheader62, label %.preheader63.preheader

.preheader63.preheader:                           ; preds = %vector.memcheck, %.preheader63.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader63.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %i.p, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader63.prol.loopexit, label %.preheader63.prol

.preheader63.prol:                                ; preds = %.preheader63.preheader
  %i.bd = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv.ph ; 3 uses
  %i.be = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv.ph ; 3 uses
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !90
  store double %i.bf, ptr %i.be, align 8, !tbaa !90
  %i.bg = getelementptr [8 x i8], ptr %i.bd, i64 %i.p
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !90
  %i.bi = getelementptr [8 x i8], ptr %i.be, i64 %i.u
  store double %i.bh, ptr %i.bi, align 8, !tbaa !90
  %i.bj = getelementptr i8, ptr %i.bd, i64 %.idx
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !90
  %i.bl = getelementptr i8, ptr %i.be, i64 %.idx80
  store double %i.bk, ptr %i.bl, align 8, !tbaa !90
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.preheader63.prol.loopexit

.preheader63.prol.loopexit:                       ; preds = %.preheader63.prol, %.preheader63.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader63.preheader ], [ %indvars.iv.next.prol, %.preheader63.prol ]
  %i.bm = icmp eq i64 %i.p, %.neg
  br i1 %i.bm, label %.preheader62, label %.preheader63

bb.c:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.preheader63:                                     ; preds = %.preheader63.prol.loopexit, %.preheader63
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader63 ], [ %indvars.iv.unr, %.preheader63.prol.loopexit ] ; 4 uses
  %i.bo = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv ; 3 uses
  %i.bp = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv ; 3 uses
  %i.bq = load double, ptr %i.bo, align 8, !tbaa !90
  store double %i.bq, ptr %i.bp, align 8, !tbaa !90
  %i.br = getelementptr [8 x i8], ptr %i.bo, i64 %i.p
  %i.bs = load double, ptr %i.br, align 8, !tbaa !90
  %i.bt = getelementptr [8 x i8], ptr %i.bp, i64 %i.u
  store double %i.bs, ptr %i.bt, align 8, !tbaa !90
  %i.bu = getelementptr i8, ptr %i.bo, i64 %.idx
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !90
  %i.bw = getelementptr i8, ptr %i.bp, i64 %.idx80
  store double %i.bv, ptr %i.bw, align 8, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bx = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv.next ; 3 uses
  %i.by = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv.next ; 3 uses
  %i.bz = load double, ptr %i.bx, align 8, !tbaa !90
  store double %i.bz, ptr %i.by, align 8, !tbaa !90
  %i.ca = getelementptr [8 x i8], ptr %i.bx, i64 %i.p
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !90
  %i.cc = getelementptr [8 x i8], ptr %i.by, i64 %i.u
  store double %i.cb, ptr %i.cc, align 8, !tbaa !90
  %i.cd = getelementptr i8, ptr %i.bx, i64 %.idx
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !90
  %i.cf = getelementptr i8, ptr %i.by, i64 %.idx80
  store double %i.ce, ptr %i.cf, align 8, !tbaa !90
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.p
  br i1 %exitcond.not.1, label %.preheader62, label %.preheader63, !llvm.loop !203

.preheader62:                                     ; preds = %.preheader63.prol.loopexit, %.preheader63, %middle.block, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit.preheader
  %i.cg = load i64, ptr %i.h, align 8, !tbaa !84  ; 13 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %.preheader62
  %i.ci = load ptr, ptr %2, align 8, !tbaa !87    ; 5 uses
  %i.cj = load ptr, ptr %18, align 8, !tbaa !86   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !88 ; 6 uses
  %i.cm = getelementptr [8 x i8], ptr %i.cj, i64 %i.p ; 4 uses
  %.idx81 = shl i64 %i.cg, 4                      ; 7 uses
  %.idx82 = shl i64 %i.cl, 4                      ; 8 uses
  %min.iters.check130 = icmp ult i64 %i.cg, 80
  br i1 %min.iters.check130, label %.preheader.preheader, label %vector.memcheck107

vector.memcheck107:                               ; preds = %.preheader.lr.ph
  %i.cn = ptrtoaddr ptr %i.cj to i64              ; 8 uses
  %i.co = ptrtoaddr ptr %i.ci to i64              ; 9 uses
  %i.cp = shl i64 %i.cl, 3                        ; 3 uses
  %i.cq = add i64 %i.cp, -1
  %diff.check108 = icmp ult i64 %i.cq, 31
  %i.cr = add i64 %.idx82, -1
  %diff.check109 = icmp ult i64 %i.cr, 31
  %conflict.rdx110 = or i1 %diff.check108, %diff.check109
  %25 = add i64 %.idx81, %i.co
  %26 = shl i64 %i.p, 3                           ; 8 uses
  %i.cs = add i64 %26, %i.cn
  %i.ct = sub i64 %i.cs, %25
  %diff.check111 = icmp ugt i64 %i.ct, -32
  %conflict.rdx112 = or i1 %conflict.rdx110, %diff.check111
  %i.cu = shl i64 %i.cg, 3                        ; 3 uses
  %i.cv = add i64 %i.cu, %i.co
  %i.cw = add i64 %26, %i.cn
  %i.cx = sub i64 %i.cw, %i.cv
  %diff.check113 = icmp ugt i64 %i.cx, -32
  %conflict.rdx114 = or i1 %conflict.rdx112, %diff.check113
  %i.cy = add i64 %26, %i.cn
  %i.cz = sub i64 %i.co, %i.cy
  %diff.check115 = icmp ugt i64 %i.cz, -32
  %conflict.rdx116 = or i1 %conflict.rdx114, %diff.check115
  %27 = add i64 %.idx81, %i.co
  %i.da = add i64 %i.cp, %i.cn
  %i.db = add i64 %i.da, %26                      ; 2 uses
  %i.dc = sub i64 %i.db, %27
  %diff.check117 = icmp ugt i64 %i.dc, -32
  %conflict.rdx118 = or i1 %conflict.rdx116, %diff.check117
  %28 = add i64 %i.cu, %i.co
  %i.dd = sub i64 %28, %i.db
  %diff.check119.a = icmp ugt i64 %i.dd, -32
  %conflict.rdx120 = or i1 %conflict.rdx118, %diff.check119.a
  %29 = add i64 %i.cp, %i.cn
  %i.de = add i64 %29, %26
  %30 = sub i64 %i.co, %i.de
  %diff.check121 = icmp ugt i64 %30, -32
  %conflict.rdx122 = or i1 %conflict.rdx120, %diff.check121
  %i.df = add i64 %.idx82, %i.cn
  %i.dg = add i64 %i.df, %26
  %31 = add i64 %.idx81, %i.co
  %i.dh = sub i64 %31, %i.dg
  %diff.check123 = icmp ugt i64 %i.dh, -32
  %conflict.rdx124 = or i1 %conflict.rdx122, %diff.check123
  %32 = add i64 %.idx82, %i.cn
  %33 = add i64 %32, %26
  %34 = add i64 %i.cu, %i.co
  %i.di = sub i64 %34, %33
  %diff.check125 = icmp ugt i64 %i.di, -32
  %conflict.rdx126 = or i1 %conflict.rdx124, %diff.check125
  %35 = add i64 %.idx82, %i.cn
  %i.dj = add i64 %35, %26
  %36 = sub i64 %i.co, %i.dj
  %diff.check127 = icmp ugt i64 %36, -32
  %conflict.rdx128 = or i1 %conflict.rdx126, %diff.check127
  br i1 %conflict.rdx128, label %.preheader.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %vector.memcheck107
  %n.vec132 = and i64 %i.cg, 9223372036854775804  ; 3 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph131
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next141, %vector.body133 ] ; 3 uses
  %i.dk = getelementptr [8 x i8], ptr %i.ci, i64 %index134 ; 4 uses
  %i.dl = getelementptr [8 x i8], ptr %i.cm, i64 %index134 ; 4 uses
  %i.dm = getelementptr i8, ptr %i.dk, i64 16
  %wide.load135 = load <2 x double>, ptr %i.dk, align 8, !tbaa !90
  %wide.load136 = load <2 x double>, ptr %i.dm, align 8, !tbaa !90
  %i.dn = getelementptr i8, ptr %i.dl, i64 16
  store <2 x double> %wide.load135, ptr %i.dl, align 8, !tbaa !90
  store <2 x double> %wide.load136, ptr %i.dn, align 8, !tbaa !90
  %i.do = getelementptr [8 x i8], ptr %i.dk, i64 %i.cg ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  %wide.load137 = load <2 x double>, ptr %i.do, align 8, !tbaa !90
  %wide.load138 = load <2 x double>, ptr %i.dp, align 8, !tbaa !90
  %i.dq = getelementptr [8 x i8], ptr %i.dl, i64 %i.cl ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 16
  store <2 x double> %wide.load137, ptr %i.dq, align 8, !tbaa !90
  store <2 x double> %wide.load138, ptr %i.dr, align 8, !tbaa !90
  %i.ds = getelementptr i8, ptr %i.dk, i64 %.idx81 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 16
  %wide.load139 = load <2 x double>, ptr %i.ds, align 8, !tbaa !90
  %wide.load140 = load <2 x double>, ptr %i.dt, align 8, !tbaa !90
  %i.du = getelementptr i8, ptr %i.dl, i64 %.idx82 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 16
  store <2 x double> %wide.load139, ptr %i.du, align 8, !tbaa !90
  store <2 x double> %wide.load140, ptr %i.dv, align 8, !tbaa !90
  %index.next141 = add nuw i64 %index134, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next141, %n.vec132
  br i1 %i.dw, label %middle.block142, label %vector.body133, !llvm.loop !204

middle.block142:                                  ; preds = %vector.body133
  %cmp.n143 = icmp eq i64 %i.cg, %n.vec132
  br i1 %cmp.n143, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck107, %.preheader.lr.ph, %middle.block142
  %indvars.iv74.ph = phi i64 [ 0, %vector.memcheck107 ], [ 0, %.preheader.lr.ph ], [ %n.vec132, %middle.block142 ] ; 5 uses
  %.neg147 = or disjoint i64 %indvars.iv74.ph, 1
  %xtraiter145 = and i64 %i.cg, 1
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %i.dx = getelementptr [8 x i8], ptr %i.ci, i64 %indvars.iv74.ph ; 3 uses
  %i.dy = getelementptr [8 x i8], ptr %i.cm, i64 %indvars.iv74.ph ; 3 uses
  %i.dz = load double, ptr %i.dx, align 8, !tbaa !90
  store double %i.dz, ptr %i.dy, align 8, !tbaa !90
  %i.ea = getelementptr [8 x i8], ptr %i.dx, i64 %i.cg
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !90
  %i.ec = getelementptr [8 x i8], ptr %i.dy, i64 %i.cl
  store double %i.eb, ptr %i.ec, align 8, !tbaa !90
  %i.ed = getelementptr i8, ptr %i.dx, i64 %.idx81
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !90
  %i.ef = getelementptr i8, ptr %i.dy, i64 %.idx82
  store double %i.ee, ptr %i.ef, align 8, !tbaa !90
  %indvars.iv.next75.prol = or disjoint i64 %indvars.iv74.ph, 1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %indvars.iv74.unr = phi i64 [ %indvars.iv74.ph, %.preheader.preheader ], [ %indvars.iv.next75.prol, %.preheader.prol ]
  %i.eg = icmp eq i64 %i.cg, %.neg147
  br i1 %i.eg, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv74 = phi i64 [ %indvars.iv.next75.1, %.preheader ], [ %indvars.iv74.unr, %.preheader.prol.loopexit ] ; 4 uses
  %i.eh = getelementptr [8 x i8], ptr %i.ci, i64 %indvars.iv74 ; 3 uses
  %i.ei = getelementptr [8 x i8], ptr %i.cm, i64 %indvars.iv74 ; 3 uses
  %i.ej = load double, ptr %i.eh, align 8, !tbaa !90
  store double %i.ej, ptr %i.ei, align 8, !tbaa !90
  %i.ek = getelementptr [8 x i8], ptr %i.eh, i64 %i.cg
  %i.el = load double, ptr %i.ek, align 8, !tbaa !90
  %i.em = getelementptr [8 x i8], ptr %i.ei, i64 %i.cl
  store double %i.el, ptr %i.em, align 8, !tbaa !90
  %i.en = getelementptr i8, ptr %i.eh, i64 %.idx81
  %i.eo = load double, ptr %i.en, align 8, !tbaa !90
  %i.ep = getelementptr i8, ptr %i.ei, i64 %.idx82
  store double %i.eo, ptr %i.ep, align 8, !tbaa !90
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %i.eq = getelementptr [8 x i8], ptr %i.ci, i64 %indvars.iv.next75 ; 3 uses
  %i.er = getelementptr [8 x i8], ptr %i.cm, i64 %indvars.iv.next75 ; 3 uses
  %i.es = load double, ptr %i.eq, align 8, !tbaa !90
  store double %i.es, ptr %i.er, align 8, !tbaa !90
  %i.et = getelementptr [8 x i8], ptr %i.eq, i64 %i.cg
  %i.eu = load double, ptr %i.et, align 8, !tbaa !90
  %i.ev = getelementptr [8 x i8], ptr %i.er, i64 %i.cl
  store double %i.eu, ptr %i.ev, align 8, !tbaa !90
  %i.ew = getelementptr i8, ptr %i.eq, i64 %.idx81
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !90
  %i.ey = getelementptr i8, ptr %i.er, i64 %.idx82
  store double %i.ex, ptr %i.ey, align 8, !tbaa !90
  %indvars.iv.next75.1 = add nuw nsw i64 %indvars.iv74, 2 ; 2 uses
  %exitcond77.not.1 = icmp eq i64 %indvars.iv.next75.1, %i.cg
  br i1 %exitcond77.not.1, label %._crit_edge, label %.preheader, !llvm.loop !205

._crit_edge:                                      ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block142, %.preheader62
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #12
  %i.ez = load i64, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.fa = load ptr, ptr %19, align 8, !tbaa !52, !noalias !210 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !53, !noalias !210 ; 2 uses
  store ptr %i.fa, ptr %20, align 8, !tbaa !56, !alias.scope !210
  %i.fd = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.ez, ptr %i.fd, align 8, !tbaa !57, !alias.scope !210
  %i.fe = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i64 3, ptr %i.fe, align 8, !tbaa !57, !alias.scope !210
  %i.ff = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr %19, ptr %i.ff, align 8, !tbaa !59, !alias.scope !210
  %i.fg = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.fh = getelementptr inbounds nuw i8, ptr %20, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i8 0, i64 16, i1 false)
  store i64 %i.fc, ptr %i.fh, align 8, !tbaa !62, !alias.scope !210
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.fi = load ptr, ptr %1, align 8, !tbaa !63
  store ptr %i.fi, ptr %13, align 8, !tbaa !65
  %i.fj = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.ez, ptr %i.fj, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  store ptr %i.fa, ptr %14, align 8, !tbaa !69
  %i.fk = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.fc, ptr %i.fk, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  store ptr %14, ptr %15, align 8, !tbaa !71
  %i.fl = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %13, ptr %i.fl, align 8, !tbaa !73
  %i.fm = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %16, ptr %i.fm, align 8, !tbaa !75
  %i.fn = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %20, ptr %i.fn, align 8, !tbaa !77
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEELin1ELin1ELb0EEEEENS3_INS5_IiLin1ELin1ELi0ELin1ELin1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSD_(ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #12
  %i.fo = load i64, ptr %i.c, align 8, !tbaa !31  ; 3 uses
  %i.fp = icmp sgt i64 %i.fo, 0
  br i1 %i.fp, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.fq = load i64, ptr %i.f, align 8, !tbaa !84
  %i.fr = trunc i64 %i.fq to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #12
  %i.fs = load i64, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.ft = load ptr, ptr %19, align 8, !tbaa !52, !noalias !211
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.fs ; 2 uses
  %i.fv = load i64, ptr %i.fb, align 8, !tbaa !53, !noalias !211 ; 2 uses
  store ptr %i.fu, ptr %21, align 8, !tbaa !56, !alias.scope !211
  %i.fw = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.fo, ptr %i.fw, align 8, !tbaa !57, !alias.scope !211
  %i.fx = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i64 3, ptr %i.fx, align 8, !tbaa !57, !alias.scope !211
  %i.fy = getelementptr inbounds nuw i8, ptr %21, i64 24
  store ptr %19, ptr %i.fy, align 8, !tbaa !59, !alias.scope !211
  %i.fz = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i64 %i.fs, ptr %i.fz, align 8, !tbaa !57, !alias.scope !211
  %i.ga = getelementptr inbounds nuw i8, ptr %21, i64 40
  store i64 0, ptr %i.ga, align 8, !tbaa !57, !alias.scope !211
  %i.gb = getelementptr inbounds nuw i8, ptr %21, i64 48
  store i64 %i.fv, ptr %i.gb, align 8, !tbaa !62, !alias.scope !211
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.gc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gd = load ptr, ptr %3, align 8, !tbaa !63
  store ptr %i.gd, ptr %i.gc, align 8, !tbaa !65
  %i.ge = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.fo, ptr %i.ge, align 8, !tbaa !66
  %i.gf = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %i.fr, ptr %i.gf, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  store ptr %i.fu, ptr %10, align 8, !tbaa !69
  %i.gg = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.fv, ptr %i.gg, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  store ptr %10, ptr %11, align 8, !tbaa !71
  %i.gh = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %9, ptr %i.gh, align 8, !tbaa !81
  %i.gi = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %12, ptr %i.gi, align 8, !tbaa !75
  %i.gj = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %21, ptr %i.gj, align 8, !tbaa !77
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS_12ArrayWrapperIKNS5_IiLin1ELin1ELi0ELin1ELin1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEEEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERST_(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #12
end_hunk_0
