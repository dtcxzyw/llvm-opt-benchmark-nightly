Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/structure_only?download=true
inline.NumInlined: 5419
inline.NumDeleted: 3298
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN3g2o19StructureOnlySolverILi3EED2Ev:bb.a
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EED2Ev.exit

_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o21OptimizationAlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o19StructureOnlySolverILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN3g2o19StructureOnlySolverILi3EEE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN3g2o19StructureOnlySolverILi3EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24, !inline_history !183
  br label %_ZN3g2o19StructureOnlySolverILi3EED2Ev.exit

_ZN3g2o19StructureOnlySolverILi3EED2Ev.exit:      ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o21OptimizationAlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(96) %0) #23, !inline_history !183
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o19StructureOnlySolverILi3EE4initEb(ptr noundef nonnull align 8 dereferenceable(96) %0, i1 noundef zeroext %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPPN3g2o16OptimizableGraph6VertexES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN3g2o16OptimizableGraph6VertexES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !36
  br label %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE5clearEv.exit

_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPPN3g2o16OptimizableGraph6VertexES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.e = phi ptr [ %i.d, %bb.a ], [ %i.b, %_ZSt8_DestroyIPPN3g2o16OptimizableGraph6VertexES3_EvT_S5_RSaIT0_E.exit.i.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %.not5 = icmp eq ptr %i.i, %i.k
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE5clearEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE9push_backERKS3_.exit, %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE5clearEv.exit
  ret i1 true

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE9push_backERKS3_.exit
  %i.m = phi ptr [ %i.g, %.lr.ph ], [ %i.an, %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %i.n = phi ptr [ %i.b, %.lr.ph ], [ %i.ao, %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE9push_backERKS3_.exit ] ; 6 uses
  %i.o = phi ptr [ %i.e, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE9push_backERKS3_.exit ] ; 5 uses
  %.sroa.02.06 = phi ptr [ %i.i, %.lr.ph ], [ %i.aq, %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %i.p = load ptr, ptr %.sroa.02.06, align 8, !tbaa !52 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 101
  %i.r = load i8, ptr %i.q, align 1, !tbaa !66, !range !67, !noundef !68
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE9push_backERKS3_.exit

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !35
  %.not.i = icmp eq ptr %i.o, %i.t
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.p, ptr %i.o, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.c, align 8, !tbaa !36
  br label %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.v = ptrtoint ptr %i.o to i64
  %i.w = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w                       ; 5 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.f, label %_ZNKSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
  unreachable

_ZNKSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #26 ; 5 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.x ; 2 uses
  store ptr %i.p, ptr %i.ag, align 8, !tbaa !52
  %i.ah = icmp sgt i64 %i.x, 0
  br i1 %i.ah, label %bb.g, label %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.n, i64 %i.x, i1 false)
  br label %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.al) #24
  br label %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.af, ptr %i.a, align 8, !tbaa !34
  store ptr %i.ai, ptr %i.c, align 8, !tbaa !36
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.am, ptr %i.l, align 8, !tbaa !35
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !49
  br label %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.d, %bb.b
  %i.an = phi ptr [ %.pre, %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.m, %bb.d ], [ %i.m, %bb.b ] ; 2 uses
  %i.ao = phi ptr [ %i.af, %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.n, %bb.d ], [ %i.n, %bb.b ]
  %i.ap = phi ptr [ %i.ai, %_ZNSt6vectorIPN3g2o16OptimizableGraph6VertexESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.u, %bb.d ], [ %i.o, %bb.b ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 336
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !50
  %.not = icmp eq ptr %i.aq, %i.as
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !184
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN3g2o19StructureOnlySolverILi3EE5solveEib(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = tail call noundef i32 @_ZN3g2o19StructureOnlySolverILi3EE4calcERSt6vectorIPNS_16OptimizableGraph6VertexESaIS5_EEii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef 1, i32 noundef 10)
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o19StructureOnlySolverILi3EE16computeMarginalsERNS_17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISA_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o19StructureOnlySolverILi3EE15updateStructureERKSt6vectorIPNS_10HyperGraph6VertexESaIS5_EERKSt3setIPNS3_4EdgeESt4lessISC_ESaISC_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN3g2o19StructureOnlySolverILi3EE4calcERSt6vectorIPNS_16OptimizableGraph6VertexESaIS5_EEii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.g2o::JacobianWorkspace", align 8 ; 9 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 5 uses
  %6 = alloca %"class.Eigen::Matrix.787", align 16 ; 10 uses
  %7 = alloca %"class.Eigen::LDLT.824", align 16  ; 21 uses
  %8 = alloca %"class.Eigen::Matrix", align 16    ; 20 uses
  %9 = alloca %"class.Eigen::Matrix", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN3g2o17JacobianWorkspaceC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %4)
  invoke void @_ZN3g2o17JacobianWorkspace10updateSizeEiib(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2, i32 noundef 50, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef zeroext i1 @_ZN3g2o17JacobianWorkspace8allocateEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %.not239297 = icmp eq ptr %i.b, %i.d
  br i1 %.not239297, label %._crit_edge301, label %.lr.ph300

.lr.ph300:                                        ; preds = %bb.c
  %i.e = icmp sgt i32 %2, 0
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  %.sroa.8.0..sroa_idx200 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.9.0..sroa_idx202 = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %.sroa.12.0..sroa_idx206 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.13.0..sroa_idx208 = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 124 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 84
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 40
  br label %bb.e

._crit_edge301:                                   ; preds = %bb.bk, %bb.c
  call void @_ZN3g2o17JacobianWorkspaceD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i32 1

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.e:                                             ; preds = %.lr.ph300, %bb.bk
  %.sroa.0190.0298 = phi ptr [ %i.b, %.lr.ph300 ], [ %i.kb, %bb.bk ] ; 2 uses
  %i.s = load ptr, ptr %.sroa.0190.0298, align 8, !tbaa !52 ; 20 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 6 uses
  %.not240269 = icmp eq ptr %i.u, %i.v
  br i1 %.not240269, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.m, %bb.e
  %.086.lcssa = phi double [ 0.000000e+00, %bb.e ], [ %.187, %bb.m ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 100
  %i.x = load i8, ptr %i.w, align 4, !tbaa !71, !range !67, !noundef !68
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.bk, label %bb.n

.lr.ph:                                           ; preds = %bb.e, %bb.m
  %.086271 = phi double [ %.187, %bb.m ], [ 0.000000e+00, %bb.e ]
  %.sroa.0184.0270 = phi ptr [ %i.av, %bb.m ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0184.0270, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !73, !nonnull !68, !noundef !68
  %i.ab = call ptr @__dynamic_cast(ptr nonnull %i.aa, ptr nonnull @_ZTIN3g2o10HyperGraph4EdgeE, ptr nonnull @_ZTIN3g2o16OptimizableGraph4EdgeE, i64 0) #23 ; 7 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(176) %i.ab)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !99 ; 3 uses
  %.not141 = icmp eq ptr %i.ag, null
  br i1 %.not141, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef double %i.aj(ptr noundef nonnull align 8 dereferenceable(176) %i.ab)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, double noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ao = load double, ptr %5, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.m

bb.j:                                             ; preds = %bb.l, %.lr.ph
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.bl

bb.l:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %i.ab, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef double %i.at(ptr noundef nonnull align 8 dereferenceable(176) %i.ab)
          to label %bb.m unwind label %bb.j

bb.m:                                             ; preds = %bb.l, %bb.i
  %.pn146 = phi double [ %i.ao, %bb.i ], [ %i.au, %bb.l ]
  %.187 = fadd double %.086271, %.pn146           ; 2 uses
  %i.av = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0184.0270) #28 ; 2 uses
  %.not240 = icmp eq ptr %i.av, %i.v
  br i1 %.not240, label %._crit_edge, label %.lr.ph, !llvm.loop !185

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.aw = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8
  invoke void %i.ay(ptr noundef nonnull align 8 dereferenceable(128) %i.s, ptr noundef nonnull %6)
          to label %.preheader245 unwind label %bb.o

.preheader245:                                    ; preds = %bb.n
  br i1 %i.e, label %.lr.ph295, label %.loopexit246

bb.o:                                             ; preds = %bb.n
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph295:                                        ; preds = %.preheader245, %.loopexit244
  %.083294 = phi i32 [ %i.jz, %.loopexit244 ], [ 0, %.preheader245 ]
  %.084293 = phi double [ %.2230, %.loopexit244 ], [ 2.000000e+00, %.preheader245 ]
  %.288292 = phi double [ %.5213227, %.loopexit244 ], [ %.086.lcssa, %.preheader245 ] ; 2 uses
  %.090291 = phi i8 [ %.292229, %.loopexit244 ], [ 0, %.preheader245 ]
  %.0193290 = phi double [ %.2195228, %.loopexit244 ], [ 1.000000e-02, %.preheader245 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %6, i8 0, i64 72, i1 false)
  %i.ba = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 104
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(128) %i.s)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.lr.ph295
  %i.bd = load ptr, ptr %i.t, align 8, !tbaa !70  ; 2 uses
  %.not241279 = icmp eq ptr %i.bd, %i.v
  br i1 %.not241279, label %._crit_edge283, label %.lr.ph282

._crit_edge283:                                   ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.p
  %i.be = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef ptr %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.s)
          to label %bb.ae unwind label %bb.af     ; 4 uses

bb.q:                                             ; preds = %.lr.ph295
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph282:                                        ; preds = %bb.p, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %.sroa.0180.0280 = phi ptr [ %i.dt, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0180.0280, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !73, !nonnull !68, !noundef !68
  %i.bl = call ptr @__dynamic_cast(ptr nonnull %i.bk, ptr nonnull @_ZTIN3g2o10HyperGraph4EdgeE, ptr nonnull @_ZTIN3g2o16OptimizableGraph4EdgeE, i64 0) #23 ; 8 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !102 ; 3 uses
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !103 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bo, %i.bp
  br i1 %.not.i.i.i, label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit, label %bb.r

bb.r:                                             ; preds = %.lr.ph282
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.br, %i.bq
  %i.bt = ashr exact i64 %i.bs, 3
  %i.bu = add nsw i64 %i.bt, 63                   ; 2 uses
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = and i64 %i.bv, 2305843009213693944
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #26
          to label %bb.s unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i ; 3 uses

bb.s:                                             ; preds = %bb.r
  %i.by = lshr i64 %i.bu, 6                       ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.by
  %.idx.i.i = shl nuw nsw i64 %i.by, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bx, i8 0, i64 %.idx.i.i, i1 false)
  %.pre = load ptr, ptr %i.bn, align 8, !tbaa !102
  %.pre326 = load ptr, ptr %i.bm, align 8, !tbaa !103
  br label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i:         ; preds = %bb.r
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit:               ; preds = %bb.s, %.lr.ph282
  %i.cb = phi ptr [ %i.bp, %.lr.ph282 ], [ %.pre326, %bb.s ] ; 3 uses
  %i.cc = phi ptr [ %i.bo, %.lr.ph282 ], [ %.pre, %bb.s ] ; 2 uses
  %.sroa.0170.0 = phi ptr [ null, %.lr.ph282 ], [ %i.bx, %bb.s ] ; 6 uses
  %.sroa.16176.0 = phi ptr [ null, %.lr.ph282 ], [ %i.bz, %bb.s ] ; 4 uses
  %.not304 = icmp eq ptr %i.cc, %i.cb
  br i1 %.not304, label %._crit_edge275, label %.lr.ph274.preheader

.lr.ph274.preheader:                              ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
end_hunk_0
begin_hunk_1_@_ZN3g2o19StructureOnlySolverILi3EE4calcERSt6vectorIPNS_16OptimizableGraph6VertexESaIS5_EEii:bb.a
  %i.dp = sub i64 %i.dn, %i.do                    ; 2 uses
  %i.dq = ashr exact i64 %i.dp, 3
  %i.dr = sub nsw i64 0, %i.dq
  %i.ds = getelementptr inbounds [8 x i8], ptr %.sroa.16176.0, i64 %i.dr
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dp) #24
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %._crit_edge278, %bb.z
  %i.dt = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0180.0280) #28 ; 2 uses
  %.not241 = icmp eq ptr %i.dt, %i.v
  br i1 %.not241, label %._crit_edge283, label %.lr.ph282, !llvm.loop !187

bb.aa:                                            ; preds = %bb.y, %bb.x, %._crit_edge275
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i151 = icmp eq ptr %.sroa.0170.0, null
  br i1 %.not.i.i151, label %.body, label %bb.ad

.lr.ph277:                                        ; preds = %.lr.ph277.preheader, %bb.ac
  %.081276 = phi i64 [ %i.eh, %bb.ac ], [ 0, %.lr.ph277.preheader ] ; 5 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.081276
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !105 ; 2 uses
  %.not133 = icmp eq ptr %i.dw, %i.s
  br i1 %.not133, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph277
  %i.dx = sdiv i64 %.081276, 64
  %i.dy = getelementptr inbounds [8 x i8], ptr %.sroa.0170.0, i64 %i.dx
  %i.dz = and i64 %.081276, -9223372036854775745
  %i.ea = icmp ugt i64 %i.dz, -9223372036854775808
  %storemerge.idx.i.i.i.i.i147 = select i1 %i.ea, i64 -8, i64 0
  %storemerge.i.i.i.i.i148 = getelementptr inbounds i8, ptr %i.dy, i64 %storemerge.idx.i.i.i.i.i147
  %i.eb = and i64 %.081276, 63
  %i.ec = load i64, ptr %storemerge.i.i.i.i.i148, align 8, !tbaa !18
  %i.ed = lshr i64 %i.ec, %i.eb
  %i.ee = trunc i64 %i.ed to i8
  %i.ef = and i8 %i.ee, 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 100
  store i8 %i.ef, ptr %i.eg, align 4, !tbaa !71
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph277
  %i.eh = add nuw i64 %.081276, 1                 ; 2 uses
  %exitcond325.not = icmp eq i64 %i.eh, %i.dm
  br i1 %exitcond325.not, label %._crit_edge278, label %.lr.ph277, !llvm.loop !188

bb.ad:                                            ; preds = %bb.aa
  %i.ei = ptrtoint ptr %.sroa.16176.0 to i64
  %i.ej = ptrtoint ptr %.sroa.0170.0 to i64
  %i.ek = sub i64 %i.ei, %i.ej                    ; 2 uses
  %i.el = ashr exact i64 %i.ek, 3
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr inbounds [8 x i8], ptr %.sroa.16176.0, i64 %i.em
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.ek) #24
  br label %.body

bb.ae:                                            ; preds = %._crit_edge283
  %i.eo = load <2 x double>, ptr %i.bh, align 1, !tbaa !19 ; 2 uses
  %i.ep = fmul <2 x double> %i.eo, %i.eo          ; 2 uses
  %shift = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ep, %shift
  %i.eq = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.er = getelementptr i8, ptr %i.bh, i64 16     ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !101 ; 2 uses
  %i.et = fmul double %i.es, %i.es
  %i.eu = fadd double %i.et, %i.eq
  %.scalar.i = call noundef double @llvm.sqrt.f64(double %i.eu)
  %i.ev = fcmp olt double %.scalar.i, 1.000000e-03
  br i1 %i.ev, label %.loopexit246, label %.preheader243.preheader

.preheader243.preheader:                          ; preds = %bb.ae
  %i.ew = icmp eq ptr %8, %i.bh
  br label %.preheader243

bb.af:                                            ; preds = %._crit_edge283
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body

.preheader243:                                    ; preds = %.preheader243.preheader, %.thread
  %.1194 = phi double [ %i.ju, %.thread ], [ %.0193290, %.preheader243.preheader ] ; 5 uses
  %.191 = phi i8 [ 0, %.thread ], [ %.090291, %.preheader243.preheader ] ; 3 uses
  %.185 = phi double [ %i.jv, %.thread ], [ %.084293, %.preheader243.preheader ] ; 2 uses
  %.079 = phi i32 [ %i.jw, %.thread ], [ 0, %.preheader243.preheader ]
  %.sroa.0.0.copyload = load <2 x double>, ptr %6, align 16 ; 3 uses
  %.sroa.8.0.copyload = load <2 x double>, ptr %.sroa.8.0..sroa_idx, align 16 ; 2 uses
  %.sroa.9.0.copyload = load <2 x double>, ptr %.sroa.9.0..sroa_idx, align 16 ; 3 uses
  %.sroa.12.0.copyload = load <2 x double>, ptr %.sroa.12.0..sroa_idx, align 16
  %.sroa.13.0.copyload = load double, ptr %.sroa.13.0..sroa_idx, align 16, !tbaa !19
  %.sroa.0.0.vec.extract = extractelement <2 x double> %.sroa.0.0.copyload, i64 0
  %i.ey = fadd double %.1194, %.sroa.0.0.vec.extract
  %.sroa.0.0.vec.insert = insertelement <2 x double> %.sroa.0.0.copyload, double %i.ey, i64 0 ; 2 uses
  %.sroa.9.32.vec.extract = extractelement <2 x double> %.sroa.9.0.copyload, i64 0
  %i.ez = fadd double %.1194, %.sroa.9.32.vec.extract
  %.sroa.9.32.vec.insert = insertelement <2 x double> %.sroa.9.0.copyload, double %i.ez, i64 0 ; 2 uses
  %i.fa = fadd double %.1194, %.sroa.13.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store <2 x double> %.sroa.0.0.vec.insert, ptr %7, align 16, !tbaa !19
  store <2 x double> %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx200, align 16, !tbaa !19
  store <2 x double> %.sroa.9.32.vec.insert, ptr %.sroa.9.0..sroa_idx202, align 16, !tbaa !19
  store <2 x double> %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx206, align 16, !tbaa !19
  store double %i.fa, ptr %.sroa.13.0..sroa_idx208, align 16, !tbaa !101
  %i.fb = extractelement <2 x double> %.sroa.8.0.copyload, i64 0
  %i.fc = extractelement <2 x double> %.sroa.0.0.copyload, i64 1
  %i.fd = extractelement <2 x double> %.sroa.9.0.copyload, i64 1
  %i.fe = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %.sroa.0.0.vec.insert) ; 2 uses
  %shift397 = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop398 = fadd <2 x double> %i.fe, %shift397
  %i.ff = extractelement <2 x double> %foldExtExtBinop398, i64 0
  %i.fg = call noundef double @llvm.fabs.f64(double %i.fb) ; 2 uses
  %i.fh = fadd double %i.fg, %i.ff                ; 2 uses
  %i.fi = fcmp ogt double %i.fh, 0.000000e+00
  %i.fj = select i1 %i.fi, double %i.fh, double 0.000000e+00 ; 2 uses
  %i.fk = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %.sroa.9.32.vec.insert) ; 2 uses
  %shift400 = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop401 = fadd <2 x double> %i.fk, %shift400
  %i.fl = extractelement <2 x double> %foldExtExtBinop401, i64 0
  %i.fm = call noundef double @llvm.fabs.f64(double %i.fc)
  %i.fn = fadd double %i.fm, %i.fl                ; 2 uses
  %i.fo = fcmp ogt double %i.fn, %i.fj
  %i.fp = select i1 %i.fo, double %i.fn, double %i.fj ; 2 uses
  %i.fq = call noundef double @llvm.fabs.f64(double %i.fa)
  %i.fr = call noundef double @llvm.fabs.f64(double %i.fd)
  %i.fs = fadd double %i.fg, %i.fr
  %i.ft = fadd double %i.fs, %i.fq                ; 2 uses
  %i.fu = fcmp ogt double %i.ft, %i.fp
  %spec.select.i = select i1 %i.fu, double %i.ft, double %i.fp
  store double %spec.select.i, ptr %i.h, align 8, !tbaa !207
  store i8 0, ptr %i.g, align 4, !tbaa !208
  store i32 2, ptr %i.f, align 8, !tbaa !209
  %i.fv = invoke noundef zeroext i1 @_ZN5Eigen8internal12ldlt_inplaceILi1EE9unblockedINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEENS_14TranspositionsILi3ELi3EiEENS4_IdLi3ELi1ELi0ELi3ELi1EEEEEbRT_RT0_RT1_RNS0_10SignMatrixE(ptr noundef nonnull align 8 dereferenceable(132) %7, ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.ag unwind label %bb.av

bb.ag:                                            ; preds = %.preheader243
  %not..i.i = xor i1 %i.fv, true
  %i.fw = zext i1 %not..i.i to i32
  store i32 %i.fw, ptr %i.k, align 16, !tbaa !210
  store i8 1, ptr %i.g, align 4, !tbaa !208
  %i.fx = load i32, ptr %i.f, align 8, !tbaa !209
  %i.fy = and i32 %i.fx, -3
  %spec.select.i153 = icmp eq i32 %i.fy, 0
  br i1 %spec.select.i153, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  br i1 %i.ew, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fz = load <2 x double>, ptr %i.bh, align 8, !tbaa !19 ; 2 uses
  store <2 x double> %i.fz, ptr %8, align 16, !tbaa !19
  %i.ga = load double, ptr %i.er, align 8, !tbaa !101
  store double %i.ga, ptr %i.l, align 16, !tbaa !101
  %i.gb = extractelement <2 x double> %i.fz, i64 0
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gc = phi double [ %i.gb, %bb.ai ], [ undef, %bb.ah ]
  %i.gd = load i32, ptr %i.i, align 16, !tbaa !29 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.gd, 0  ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %8, i64 %i.ge ; 2 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !101
  store double %i.gg, ptr %8, align 16, !tbaa !101
  store double %i.gc, ptr %i.gf, align 8, !tbaa !101
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gh = load i32, ptr %i.m, align 4, !tbaa !29  ; 3 uses
  %.not.1.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.gh, 1 ; 2 uses
  br i1 %.not.1.i.i.i.i.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %8, i64 %i.gi ; 2 uses
  %i.gk = load double, ptr %i.n, align 8, !tbaa !101
  %i.gl = load double, ptr %i.gj, align 8, !tbaa !101
  store double %i.gl, ptr %i.n, align 8, !tbaa !101
  store double %i.gk, ptr %i.gj, align 8, !tbaa !101
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gm = load i32, ptr %i.o, align 8, !tbaa !29  ; 3 uses
  %.not.2.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.gm, 2 ; 2 uses
  %.pre328 = load double, ptr %i.l, align 16, !tbaa !101 ; 2 uses
  br i1 %.not.2.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_14TranspositionsILi3ELi3EiEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEELi2EEEEERS1_RKNS_9DenseBaseIT_EE.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [8 x i8], ptr %8, i64 %i.gn ; 2 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !101
  store double %i.gp, ptr %i.l, align 16, !tbaa !101
  store double %.pre328, ptr %i.go, align 8, !tbaa !101
  %.pre327 = load double, ptr %i.l, align 16, !tbaa !101
  br label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_14TranspositionsILi3ELi3EiEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEELi2EEEEERS1_RKNS_9DenseBaseIT_EE.exit.i

_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_14TranspositionsILi3ELi3EiEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEELi2EEEEERS1_RKNS_9DenseBaseIT_EE.exit.i: ; preds = %bb.ao, %bb.an
  %i.gq = phi double [ %.pre327, %bb.ao ], [ %.pre328, %bb.an ]
  %10 = load <2 x double>, ptr %8, align 16       ; 2 uses
  %i.gr = load double, ptr %i.n, align 8, !tbaa !101
  %11 = load <2 x double>, ptr %i.p, align 8, !tbaa !101
  %12 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = fmul <2 x double> %12, %11                ; 2 uses
  %14 = extractelement <2 x double> %13, i64 0
  %15 = fsub double %i.gr, %14                    ; 2 uses
  %i.gs = load double, ptr %i.q, align 8, !tbaa !101 ; 2 uses
  %i.gt = fmul double %15, %i.gs
  %16 = extractelement <2 x double> %13, i64 1
  %i.gu = fadd double %16, %i.gt
  %i.gv = fsub double %i.gq, %i.gu
  %i.gw = load <2 x double>, ptr %7, align 16
  %i.gx = load double, ptr %.sroa.9.0..sroa_idx202, align 16, !tbaa !101
  %i.gy = insertelement <2 x double> %i.gw, double %i.gx, i64 1 ; 2 uses
  %i.gz = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.gy)
  %i.ha = fcmp ogt <2 x double> %i.gz, splat (double f0x0010000000000000)
  %i.hb = insertelement <2 x double> %10, double %15, i64 1
  %i.hc = fdiv <2 x double> %i.hb, %i.gy
  %i.hd = select <2 x i1> %i.ha, <2 x double> %i.hc, <2 x double> zeroinitializer ; 2 uses
  %i.he = load double, ptr %.sroa.13.0..sroa_idx208, align 16, !tbaa !101 ; 2 uses
  %i.hf = call noundef double @llvm.fabs.f64(double %i.he)
  %i.hg = fcmp ogt double %i.hf, f0x0010000000000000
  %i.hh = fdiv double %i.gv, %i.he
  %storemerge49.i = select i1 %i.hg, double %i.hh, double 0.000000e+00 ; 2 uses
  store double %storemerge49.i, ptr %i.l, align 16, !tbaa !101
  %i.hi = fmul double %i.gs, %storemerge49.i
  %i.hj = extractelement <2 x double> %i.hd, i64 1
  %i.hk = fsub double %i.hj, %i.hi
  store double %i.hk, ptr %i.n, align 8, !tbaa !101
  %i.hl = load <2 x double>, ptr %i.p, align 8, !tbaa !19
  %i.hm = load <2 x double>, ptr %i.n, align 8    ; 2 uses
  %i.hn = fmul <2 x double> %i.hl, %i.hm          ; 2 uses
  %shift403 = shufflevector <2 x double> %i.hn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop404 = fadd <2 x double> %i.hn, %shift403
  %foldExtExtBinop406 = fsub <2 x double> %i.hd, %foldExtExtBinop404
  %i.ho = extractelement <2 x double> %foldExtExtBinop406, i64 0
  store double %i.ho, ptr %8, align 16, !tbaa !101
  br i1 %.not.2.i.i.i.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_14TranspositionsILi3ELi3EiEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEELi2EEEEERS1_RKNS_9DenseBaseIT_EE.exit.i
  %i.hp = extractelement <2 x double> %i.hm, i64 1
  %i.hq = sext i32 %i.gm to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %8, i64 %i.hq ; 2 uses
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !101
  store double %i.hs, ptr %i.l, align 16, !tbaa !101
  store double %i.hp, ptr %i.hr, align 8, !tbaa !101
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_14TranspositionsILi3ELi3EiEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEELi2EEEEERS1_RKNS_9DenseBaseIT_EE.exit.i
  br i1 %.not.1.i.i.i.i.i.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ht = sext i32 %i.gh to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %8, i64 %i.ht ; 2 uses
  %i.hv = load double, ptr %i.n, align 8, !tbaa !101
  %i.hw = load double, ptr %i.hu, align 8, !tbaa !101
  store double %i.hw, ptr %i.n, align 8, !tbaa !101
  store double %i.hv, ptr %i.hu, align 8, !tbaa !101
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEC2INS_5SolveINS_4LDLTINS0_IdLi3ELi3ELi0ELi3ELi3EEELi1EEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEEEERKNS_9EigenBaseIT_EE.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hx = sext i32 %i.gd to i64
  %i.hy = getelementptr inbounds [8 x i8], ptr %8, i64 %i.hx ; 2 uses
  %i.hz = load double, ptr %8, align 16, !tbaa !101
  %i.ia = load double, ptr %i.hy, align 8, !tbaa !101
  store double %i.ia, ptr %8, align 16, !tbaa !101
  store double %i.hz, ptr %i.hy, align 8, !tbaa !101
  br label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEC2INS_5SolveINS_4LDLTINS0_IdLi3ELi3ELi0ELi3ELi3EEELi1EEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEEEERKNS_9EigenBaseIT_EE.exit

_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEC2INS_5SolveINS_4LDLTINS0_IdLi3ELi3ELi0ELi3ELi3EEELi1EEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %bb.as, %bb.at
  %i.ib = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 168
  %i.id = load ptr, ptr %i.ic, align 8
  invoke void %i.id(ptr noundef nonnull align 8 dereferenceable(128) %i.s)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEC2INS_5SolveINS_4LDLTINS0_IdLi3ELi3ELi0ELi3ELi3EEELi1EEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEEEERKNS_9EigenBaseIT_EE.exit
  %i.ie = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 224
  %i.ig = load ptr, ptr %i.if, align 8
  invoke void %i.ig(ptr noundef nonnull align 8 dereferenceable(128) %i.s, ptr noundef nonnull %8)
          to label %.noexc unwind label %bb.aw, !inline_history !1

.noexc:                                           ; preds = %bb.au
  %i.ih = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 216
  %i.ij = load ptr, ptr %i.ii, align 8
  invoke void %i.ij(ptr noundef nonnull align 8 dereferenceable(128) %i.s)
          to label %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit unwind label %bb.aw, !inline_history !1

_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit:  ; preds = %.noexc
  %i.ik = load ptr, ptr %i.t, align 8, !tbaa !70  ; 2 uses
  %.not242284 = icmp eq ptr %i.ik, %i.v
  br i1 %.not242284, label %._crit_edge288, label %.lr.ph287

._crit_edge288:                                   ; preds = %bb.be, %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit
  %.0.lcssa = phi double [ 0.000000e+00, %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit ], [ %.1, %bb.be ] ; 3 uses
  %i.il = fcmp ogt double %.288292, %.0.lcssa
  %i.im = call double @llvm.fabs.f64(double %.0.lcssa)
  %i.in = fcmp one double %i.im, +inf
  %or.cond238 = and i1 %i.il, %i.in
  %i.io = load ptr, ptr %i.s, align 8, !tbaa !28  ; 2 uses
  br i1 %or.cond238, label %bb.bf, label %bb.bg

bb.av:                                            ; preds = %.preheader243
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.aw:                                            ; preds = %.noexc, %bb.au, %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEC2INS_5SolveINS_4LDLTINS0_IdLi3ELi3ELi0ELi3ELi3EEELi1EEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEEEERKNS_9EigenBaseIT_EE.exit
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.lr.ph287:                                        ; preds = %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit, %bb.be
  %.0286 = phi double [ %.1, %bb.be ], [ 0.000000e+00, %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit ]
  %.sroa.0156.0285 = phi ptr [ %i.jn, %bb.be ], [ %i.ik, %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0156.0285, i64 32
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !73, !nonnull !68, !noundef !68
  %i.it = call ptr @__dynamic_cast(ptr nonnull %i.is, ptr nonnull @_ZTIN3g2o10HyperGraph4EdgeE, ptr nonnull @_ZTIN3g2o16OptimizableGraph4EdgeE, i64 0) #23 ; 7 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !28
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 40
  %i.iw = load ptr, ptr %i.iv, align 8
  invoke void %i.iw(ptr noundef nonnull align 8 dereferenceable(176) %i.it)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %.lr.ph287
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 64
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !99 ; 3 uses
  %.not125 = icmp eq ptr %i.iy, null
  br i1 %.not125, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.iz = load ptr, ptr %i.it, align 8, !tbaa !28
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 112
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = invoke noundef double %i.jb(ptr noundef nonnull align 8 dereferenceable(176) %i.it)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.jd = load ptr, ptr %i.iy, align 8, !tbaa !28
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jf = load ptr, ptr %i.je, align 8
  invoke void %i.jf(ptr noundef nonnull align 8 dereferenceable(16) %i.iy, double noundef %i.jc, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.jg = load double, ptr %9, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.be

bb.bb:                                            ; preds = %bb.bd, %.lr.ph287
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bc:                                            ; preds = %bb.az, %bb.ay
  %i.ji = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bh

bb.bd:                                            ; preds = %bb.ax
  %i.jj = load ptr, ptr %i.it, align 8, !tbaa !28
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 112
  %i.jl = load ptr, ptr %i.jk, align 8
  %i.jm = invoke noundef double %i.jl(ptr noundef nonnull align 8 dereferenceable(176) %i.it)
          to label %bb.be unwind label %bb.bb

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %.pn132 = phi double [ %i.jg, %bb.ba ], [ %i.jm, %bb.bd ]
  %.1 = fadd double %.0286, %.pn132               ; 2 uses
  %i.jn = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0156.0285) #28 ; 2 uses
  %.not242 = icmp eq ptr %i.jn, %i.v
  br i1 %.not242, label %._crit_edge288, label %.lr.ph287, !llvm.loop !189

bb.bf:                                            ; preds = %._crit_edge288
  %i.jo = getelementptr inbounds nuw i8, ptr %i.io, i64 184
  %i.jp = load ptr, ptr %i.jo, align 8
  invoke void %i.jp(ptr noundef nonnull align 8 dereferenceable(128) %i.s)
          to label %.thread219 unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.bg
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.loopexit.split-lp:                               ; preds = %bb.bf
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %._crit_edge288
  %i.jq = getelementptr inbounds nuw i8, ptr %i.io, i64 176
  %i.jr = load ptr, ptr %i.jq, align 8
  invoke void %i.jr(ptr noundef nonnull align 8 dereferenceable(128) %i.s)
          to label %bb.bi unwind label %.loopexit

bb.bh:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bb, %bb.bc, %bb.aw
  %.pn.pn.pn = phi { ptr, i32 } [ %i.jh, %bb.bb ], [ %i.iq, %bb.aw ], [ %i.ji, %bb.bc ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.thread

.thread219:                                       ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.js = fmul double %.1194, f0x3FD5555555555555
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.jt = trunc nuw i8 %.191 to i1
  br label %.loopexit244
end_hunk_1
