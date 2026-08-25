Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/vertex_se3_euler?download=true
inline.NumInlined: 6903
inline.NumDeleted: 4021
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataERSt6vectorIdSaIdEE:bb.a
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.f
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw nsw i64 %i.f, %i.m
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.o)
  %.pre = load ptr, ptr %1, align 8, !tbaa !103
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %i.m, %i.f
  br i1 %i.p, label %bb.e, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.q, ptr %i.g, align 8, !tbaa !101
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %i.r)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %.0 = phi i1 [ %i.v, %_ZNSt6vectorIdSaIdEE6resizeEm.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o9VertexSE324minimalEstimateDimensionEv(ptr noundef nonnull align 16 dereferenceable(348) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE4pushEv(ptr noundef nonnull align 16 dereferenceable(344) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !28
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.d, ptr noundef nonnull align 16 dereferenceable(128) %i.b, i64 128, i1 false), !tbaa.struct !105
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store ptr %i.h, ptr %i.c, align 8, !tbaa !104
  br label %_ZNSt5stackIN5Eigen9TransformIdLi3ELi1ELi0EEESt6vectorIS2_SaIS2_EEE4pushERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 16, !tbaa !25  ; 5 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775680
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #21
  unreachable

_ZNKSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 7                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 72057594037927935)
  %i.r = select i1 %i.p, i64 72057594037927935, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 7
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #22 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.u, ptr noundef nonnull align 16 dereferenceable(128) %i.b, i64 128, i1 false), !tbaa.struct !105
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %_ZNKSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %_ZNKSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.012.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(128) %.0911.i.i.i.i.i.i, i64 128, i1 false), !tbaa.struct !105, !alias.scope !106
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 128 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !110

_ZNSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 128
  %.not.i33.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i33.i.i.i, label %_ZNSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i.i
  %i.y = load ptr, ptr %i.e, align 16, !tbaa !28
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.aa) #20
  br label %_ZNSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i.i
  store ptr %i.t, ptr %i.a, align 16, !tbaa !25
  store ptr %i.x, ptr %i.c, align 8, !tbaa !104
  %i.ab = getelementptr inbounds nuw [128 x i8], ptr %i.t, i64 %i.r
  store ptr %i.ab, ptr %i.e, align 16, !tbaa !28
  br label %_ZNSt5stackIN5Eigen9TransformIdLi3ELi1ELi0EEESt6vectorIS2_SaIS2_EEE4pushERKS2_.exit

_ZNSt5stackIN5Eigen9TransformIdLi3ELi1ELi0EEESt6vectorIS2_SaIS2_EEE4pushERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE3popEv(ptr noundef nonnull align 16 dereferenceable(344) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 8 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -128 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load <2 x double>, ptr %i.c, align 16, !tbaa !8
  store <2 x double> %i.e, ptr %i.d, align 16, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -112
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !8
  store <2 x double> %i.h, ptr %i.f, align 16, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 -96
  %i.k = load <2 x double>, ptr %i.j, align 16, !tbaa !8
  store <2 x double> %i.k, ptr %i.i, align 16, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 -80
  %i.n = load <2 x double>, ptr %i.m, align 16, !tbaa !8
  store <2 x double> %i.n, ptr %i.l, align 16, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 -64
  %i.q = load <2 x double>, ptr %i.p, align 16, !tbaa !8
  store <2 x double> %i.q, ptr %i.o, align 16, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.s = getelementptr inbounds i8, ptr %i.b, i64 -48
  %i.t = load <2 x double>, ptr %i.s, align 16, !tbaa !8
  store <2 x double> %i.t, ptr %i.r, align 16, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.v = getelementptr inbounds i8, ptr %i.b, i64 -32
  %i.w = load <2 x double>, ptr %i.v, align 16, !tbaa !8
  store <2 x double> %i.w, ptr %i.u, align 16, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.y = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.z = load <2 x double>, ptr %i.y, align 16, !tbaa !8
  store <2 x double> %i.z, ptr %i.x, align 16, !tbaa !8
  store ptr %i.c, ptr %i.a, align 8, !tbaa !104
  %i.aa = load ptr, ptr %0, align 16, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 216
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(128) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE10discardTopEv(ptr noundef nonnull align 16 dereferenceable(344) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -128
  store ptr %i.c, ptr %i.a, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE9stackSizeEv(ptr noundef nonnull align 16 dereferenceable(344) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 7
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

declare void @_ZN3g2o16OptimizableGraph6Vertex11updateCacheEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o9VertexSE39oplusImplEPKd(ptr noundef nonnull align 16 dereferenceable(348) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca [9 x double], align 16      ; 19 uses
  %2 = alloca %"class.Eigen::Transform", align 16 ; 15 uses
  %3 = alloca %"class.Eigen::Matrix", align 16    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !8
  store <2 x double> %i.a, ptr %3, align 16, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x double>, ptr %i.c, align 1, !tbaa !8
  store <2 x double> %i.d, ptr %i.b, align 16, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x double>, ptr %i.f, align 1, !tbaa !8
  store <2 x double> %i.g, ptr %i.e, align 16, !tbaa !8
  call void @_ZN3g2o8internal13fromVectorMQTERKN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Transform") align 16 %2, ptr noundef nonnull align 16 dereferenceable(48) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.i = load <2 x double>, ptr %i.h, align 16, !tbaa !8, !noalias !112 ; 4 uses
  %i.j = load double, ptr %2, align 16, !tbaa !23, !noalias !112 ; 2 uses
  %i.k = insertelement <2 x double> poison, double %i.j, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x double> %i.i, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.o = load <2 x double>, ptr %i.n, align 16, !tbaa !8, !noalias !112 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !23, !noalias !112 ; 2 uses
  %i.r = insertelement <2 x double> poison, double %i.q, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x double> %i.o, %i.s
  %i.u = fadd <2 x double> %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.w = load <2 x double>, ptr %i.v, align 16, !tbaa !8, !noalias !112 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load double, ptr %i.x, align 16, !tbaa !23, !noalias !112 ; 2 uses
  %i.z = insertelement <2 x double> poison, double %i.y, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x double> %i.w, %i.aa
  %i.ac = fadd <2 x double> %i.u, %i.ab           ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.ae = load double, ptr %i.ad, align 16, !tbaa !23, !noalias !112 ; 4 uses
  %i.af = fmul double %i.j, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.ah = load double, ptr %i.ag, align 16, !tbaa !23, !noalias !112 ; 4 uses
  %i.ai = fmul double %i.q, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.ak = load double, ptr %i.aj, align 16, !tbaa !23, !noalias !112 ; 4 uses
  %i.al = fmul double %i.y, %i.ak
  %i.am = fadd double %i.ai, %i.al
  %i.an = fadd double %i.af, %i.am                ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = load double, ptr %i.ao, align 16, !tbaa !23, !noalias !112 ; 2 uses
  %i.aq = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = fmul <2 x double> %i.i, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.au = load double, ptr %i.at, align 8, !tbaa !23, !noalias !112 ; 2 uses
  %i.av = insertelement <2 x double> poison, double %i.au, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x double> %i.o, %i.aw
  %i.ay = fadd <2 x double> %i.as, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ba = load double, ptr %i.az, align 16, !tbaa !23, !noalias !112 ; 2 uses
  %i.bb = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x double> %i.w, %i.bc
  %i.be = fadd <2 x double> %i.ay, %i.bd          ; 7 uses
  %i.bf = fmul double %i.ae, %i.ap
  %i.bg = fmul double %i.ah, %i.au
  %i.bh = fmul double %i.ak, %i.ba
  %i.bi = fadd double %i.bg, %i.bh
  %i.bj = fadd double %i.bf, %i.bi                ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bl = load double, ptr %i.bk, align 16, !tbaa !23, !noalias !112 ; 2 uses
  %i.bm = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x double> %i.i, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !23, !noalias !112 ; 2 uses
  %i.br = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x double> %i.o, %i.bs
  %i.bu = fadd <2 x double> %i.bo, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bw = load double, ptr %i.bv, align 16, !tbaa !23, !noalias !112 ; 2 uses
  %i.bx = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x double> %i.w, %i.by
  %i.ca = fadd <2 x double> %i.bu, %i.bz          ; 7 uses
  %i.cb = fmul double %i.ae, %i.bl
  %i.cc = fmul double %i.ah, %i.bq
  %i.cd = fmul double %i.ak, %i.bw
  %i.ce = fadd double %i.cc, %i.cd
  %i.cf = fadd double %i.cb, %i.ce                ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ci = load double, ptr %i.cg, align 16, !tbaa !23, !noalias !112 ; 2 uses
  %i.cj = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x double> %i.i, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !23, !noalias !112 ; 2 uses
  %i.co = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x double> %i.o, %i.cp
  %i.cr = fadd <2 x double> %i.cl, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ct = load double, ptr %i.cs, align 16, !tbaa !23, !noalias !112 ; 2 uses
  %i.cu = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = fmul <2 x double> %i.w, %i.cv
  %i.cx = fadd <2 x double> %i.cr, %i.cw
  %i.cy = fmul double %i.ae, %i.ci
  %i.cz = fmul double %i.ah, %i.cn
  %i.da = fmul double %i.ak, %i.ct
  %i.db = fadd double %i.cz, %i.da
  %i.dc = fadd double %i.cy, %i.db
  %i.dd = load <2 x double>, ptr %i.ch, align 16, !tbaa !8, !noalias !112
  %i.de = fadd <2 x double> %i.dd, %i.cx
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.dg = load double, ptr %i.df, align 16, !tbaa !23, !noalias !112
  %i.dh = fadd double %i.dg, %i.dc
  %.sroa.44.24.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.an, i64 0
  %.sroa.9.56.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bj, i64 0
  %.sroa.14.88.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.cf, i64 0
  %.sroa.19.120.vec.insert = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.dh, i64 0
  store <2 x double> %i.ac, ptr %i.h, align 16, !tbaa !8
  store <2 x double> %.sroa.44.24.vec.insert, ptr %i.ad, align 16, !tbaa !8
  store <2 x double> %i.be, ptr %i.n, align 16, !tbaa !8
  store <2 x double> %.sroa.9.56.vec.insert, ptr %i.ag, align 16, !tbaa !8
  store <2 x double> %i.ca, ptr %i.v, align 16, !tbaa !8
  store <2 x double> %.sroa.14.88.vec.insert, ptr %i.aj, align 16, !tbaa !8
  store <2 x double> %i.de, ptr %i.ch, align 16, !tbaa !8
  store <2 x double> %.sroa.19.120.vec.insert, ptr %i.df, align 16, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !117 ; 2 uses
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 8, !tbaa !117
  %i.dl = icmp sgt i32 %i.dj, 999
  br i1 %i.dl, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.di, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.dm = fmul <2 x double> %i.ac, %i.ac          ; 2 uses
  %shift = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.dm, %shift
  %i.dn = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.do = fmul double %i.an, %i.an
  %i.dp = fadd double %i.dn, %i.do
  %i.dq = fmul <2 x double> %i.ac, %i.be          ; 2 uses
  %shift17 = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop18 = fadd <2 x double> %i.dq, %shift17
  %i.dr = extractelement <2 x double> %foldExtExtBinop18, i64 0
  %i.ds = fmul double %i.an, %i.bj
  %i.dt = fadd double %i.dr, %i.ds                ; 2 uses
  %.sroa.0.i.8.i.8.i.8..sroa_idx32 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 8
  store double %i.dt, ptr %.sroa.0.i.8.i.8.i.8..sroa_idx32, align 8, !tbaa !23
  %i.du = fmul <2 x double> %i.ac, %i.ca          ; 2 uses
  %shift20 = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop21 = fadd <2 x double> %i.du, %shift20
  %i.dv = extractelement <2 x double> %foldExtExtBinop21, i64 0
  %i.dw = fmul double %i.an, %i.cf
  %i.dx = fadd double %i.dv, %i.dw                ; 2 uses
  %.sroa.0.i.16.i.16.i.16..sroa_idx33 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  store double %i.dx, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx33, align 16, !tbaa !23
  %.sroa.0.i.24.i.24.i.24..sroa_idx.a = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  store double %i.dt, ptr %.sroa.0.i.24.i.24.i.24..sroa_idx.a, align 8, !tbaa !23
  %i.dy = fmul <2 x double> %i.be, %i.be          ; 2 uses
  %shift23 = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop24 = fadd <2 x double> %i.dy, %shift23
  %i.dz = extractelement <2 x double> %foldExtExtBinop24, i64 0
  %i.ea = fmul double %i.bj, %i.bj
  %i.eb = fadd double %i.dz, %i.ea
  %i.ec = fmul <2 x double> %i.be, %i.ca          ; 2 uses
  %shift26 = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop27 = fadd <2 x double> %i.ec, %shift26
  %i.ed = extractelement <2 x double> %foldExtExtBinop27, i64 0
  %i.ee = fmul double %i.bj, %i.cf
  %i.ef = fadd double %i.ed, %i.ee                ; 2 uses
  %.sroa.0.i.40.i.40.i.40..sroa_idx46 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 40
  store double %i.ef, ptr %.sroa.0.i.40.i.40.i.40..sroa_idx46, align 8, !tbaa !23
  %.sroa.0.i.48.i.48.i.48..sroa_idx47 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 48
  store double %i.dx, ptr %.sroa.0.i.48.i.48.i.48..sroa_idx47, align 16, !tbaa !23
  %.sroa.0.i.56.i.56.i.56..sroa_idx48 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 56
  store double %i.ef, ptr %.sroa.0.i.56.i.56.i.56..sroa_idx48, align 8, !tbaa !23
  %i.eg = fmul <2 x double> %i.ca, %i.ca          ; 2 uses
  %shift29 = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop30 = fadd <2 x double> %i.eg, %shift29
  %i.eh = extractelement <2 x double> %foldExtExtBinop30, i64 0
  %i.ei = fmul double %i.cf, %i.cf
  %i.ej = fadd double %i.eh, %i.ei
  %i.ek = fadd double %i.dp, -1.000000e+00
  store double %i.ek, ptr %.sroa.0.i, align 16, !tbaa !23
  %i.el = fadd double %i.eb, -1.000000e+00
  %.sroa.0.i.32.i.32.i.32..sroa_idx45 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 32
  store double %i.el, ptr %.sroa.0.i.32.i.32.i.32..sroa_idx45, align 16, !tbaa !23
  %i.em = fadd double %i.ej, -1.000000e+00
  %.sroa.0.i.64.i.64.i.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 64
  store double %i.em, ptr %.sroa.0.i.64.i.64.i.64..sroa_idx, align 16, !tbaa !23
  %i.en = fmul <2 x double> %i.ac, splat (double 5.000000e-01) ; 3 uses
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i = load <2 x double>, ptr %.sroa.0.i, align 16 ; 2 uses
  %i.eo = shufflevector <2 x double> %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = fmul <2 x double> %i.en, %i.eo
  %i.eq = fmul <2 x double> %i.be, splat (double 5.000000e-01) ; 3 uses
  %.sroa.0.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 8
  %.sroa.0.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..i = load <2 x double>, ptr %.sroa.0.i.8.i.8.i.8..sroa_idx, align 8 ; 2 uses
  %i.er = shufflevector <2 x double> %.sroa.0.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.es = fmul <2 x double> %i.eq, %i.er
  %i.et = fadd <2 x double> %i.ep, %i.es
  %i.eu = fmul <2 x double> %i.ca, splat (double 5.000000e-01) ; 3 uses
  %.sroa.0.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  %.sroa.0.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..sroa.0.16..i = load <2 x double>, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx, align 16 ; 2 uses
  %i.ev = shufflevector <2 x double> %.sroa.0.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..sroa.0.16..i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ew = fmul <2 x double> %i.eu, %i.ev
  %i.ex = fadd <2 x double> %i.et, %i.ew
  %i.ey = fmul double %i.an, 5.000000e-01         ; 3 uses
  %i.ez = extractelement <2 x double> %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i, i64 0
  %i.fa = fmul double %i.ey, %i.ez
  %i.fb = fmul double %i.bj, 5.000000e-01         ; 3 uses
  %i.fc = extractelement <2 x double> %.sroa.0.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..i, i64 0
  %i.fd = fmul double %i.fb, %i.fc
  %i.fe = fmul double %i.cf, 5.000000e-01         ; 3 uses
  %i.ff = extractelement <2 x double> %.sroa.0.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..sroa.0.16..i, i64 0
  %i.fg = fmul double %i.fe, %i.ff
  %i.fh = fadd double %i.fd, %i.fg
  %i.fi = fadd double %i.fa, %i.fh
  %.sroa.0.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  %.sroa.0.i.24..sroa.0.i.24..sroa.0.i.24..sroa.0.24..sroa.0.24..sroa.0.24..i = load <2 x double>, ptr %.sroa.0.i.24.i.24.i.24..sroa_idx, align 8 ; 2 uses
  %4 = shufflevector <2 x double> %.sroa.0.i.24..sroa.0.i.24..sroa.0.i.24..sroa.0.24..sroa.0.24..sroa.0.24..i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x double> %i.en, %4
  %.sroa.0.i.32.i.32.i.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 32
  %.sroa.0.i.32..sroa.0.i.32..sroa.0.i.32..sroa.0.32..sroa.0.32..sroa.0.32..i = load <2 x double>, ptr %.sroa.0.i.32.i.32.i.32..sroa_idx, align 16 ; 2 uses
  %i.fk = shufflevector <2 x double> %.sroa.0.i.32..sroa.0.i.32..sroa.0.i.32..sroa.0.32..sroa.0.32..sroa.0.32..i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = fmul <2 x double> %i.eq, %i.fk
  %i.fm = fadd <2 x double> %i.fj, %i.fl
  %.sroa.0.i.40.i.40.i.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 40
  %.sroa.0.i.40..sroa.0.i.40..sroa.0.i.40..sroa.0.40..sroa.0.40..sroa.0.40..i = load <2 x double>, ptr %.sroa.0.i.40.i.40.i.40..sroa_idx, align 8 ; 2 uses
  %i.fn = shufflevector <2 x double> %.sroa.0.i.40..sroa.0.i.40..sroa.0.i.40..sroa.0.40..sroa.0.40..sroa.0.40..i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fo = fmul <2 x double> %i.eu, %i.fn
  %i.fp = fadd <2 x double> %i.fm, %i.fo
  %5 = extractelement <2 x double> %.sroa.0.i.24..sroa.0.i.24..sroa.0.i.24..sroa.0.24..sroa.0.24..sroa.0.24..i, i64 0
  %i.fq = fmul double %i.ey, %5
  %6 = extractelement <2 x double> %.sroa.0.i.32..sroa.0.i.32..sroa.0.i.32..sroa.0.32..sroa.0.32..sroa.0.32..i, i64 0
  %i.fr = fmul double %i.fb, %6
  %7 = extractelement <2 x double> %.sroa.0.i.40..sroa.0.i.40..sroa.0.i.40..sroa.0.40..sroa.0.40..sroa.0.40..i, i64 0
  %i.fs = fmul double %i.fe, %7
  %i.ft = fadd double %i.fr, %i.fs
  %i.fu = fadd double %i.fq, %i.ft
  %.sroa.0.i.48.i.48.i.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 48
  %.sroa.0.i.48..sroa.0.i.48..sroa.0.i.48..sroa.0.48..sroa.0.48..sroa.0.48..i = load <2 x double>, ptr %.sroa.0.i.48.i.48.i.48..sroa_idx, align 16 ; 2 uses
  %i.fv = shufflevector <2 x double> %.sroa.0.i.48..sroa.0.i.48..sroa.0.i.48..sroa.0.48..sroa.0.48..sroa.0.48..i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fw = fmul <2 x double> %i.en, %i.fv
  %.sroa.0.i.56.i.56.i.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 56
  %.sroa.0.i.56..sroa.0.i.56..sroa.0.i.56..sroa.0.56..sroa.0.56..sroa.0.56..i = load <2 x double>, ptr %.sroa.0.i.56.i.56.i.56..sroa_idx, align 8 ; 4 uses
  %8 = shufflevector <2 x double> %.sroa.0.i.56..sroa.0.i.56..sroa.0.i.56..sroa.0.56..sroa.0.56..sroa.0.56..i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fx = fmul <2 x double> %i.eq, %8
  %i.fy = fadd <2 x double> %i.fw, %i.fx
  %9 = shufflevector <2 x double> %.sroa.0.i.56..sroa.0.i.56..sroa.0.i.56..sroa.0.56..sroa.0.56..sroa.0.56..i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %10 = fmul <2 x double> %i.eu, %9
  %11 = fadd <2 x double> %10, %i.fy
  %12 = extractelement <2 x double> %.sroa.0.i.48..sroa.0.i.48..sroa.0.i.48..sroa.0.48..sroa.0.48..sroa.0.48..i, i64 0
  %i.fz = fmul double %i.ey, %12
  %13 = extractelement <2 x double> %.sroa.0.i.56..sroa.0.i.56..sroa.0.i.56..sroa.0.56..sroa.0.56..sroa.0.56..i, i64 0
  %i.ga = fmul double %i.fb, %13
  %14 = extractelement <2 x double> %.sroa.0.i.56..sroa.0.i.56..sroa.0.i.56..sroa.0.56..sroa.0.56..sroa.0.56..i, i64 1
  %i.gb = fmul double %i.fe, %14
  %i.gc = fadd double %i.ga, %i.gb
  %i.gd = fadd double %i.fz, %i.gc
  %i.ge = fsub <2 x double> %i.ac, %i.ex
  store <2 x double> %i.ge, ptr %i.h, align 16, !tbaa !8
  %i.gf = fsub double %i.an, %i.fi
  store double %i.gf, ptr %i.ad, align 16, !tbaa !23
  %i.gg = fsub <2 x double> %i.be, %i.fp
  store <2 x double> %i.gg, ptr %i.n, align 16, !tbaa !8
  %i.gh = fsub double %i.bj, %i.fu
  store double %i.gh, ptr %i.ag, align 16, !tbaa !23
  %i.gi = fsub <2 x double> %i.ca, %11
  store <2 x double> %i.gi, ptr %i.v, align 16, !tbaa !8
  %i.gj = fsub double %i.cf, %i.gd
  store double %i.gj, ptr %i.aj, align 16, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o9VertexSE315setToOriginImplEv(ptr noundef nonnull align 16 dereferenceable(348) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.a, align 16, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x double> zeroinitializer, ptr %i.b, align 16, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.c, align 16, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.e, align 16, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <2 x double> zeroinitializer, ptr %i.f, align 16, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.g, align 16, !tbaa !8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o9VertexSE319setEstimateDataImplEPKd(ptr noundef nonnull align 16 dereferenceable(348) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Transform", align 16 ; 4 uses
  %3 = alloca %"class.Eigen::Matrix.44", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !8
  store <2 x double> %i.a, ptr %3, align 16, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x double>, ptr %i.c, align 1, !tbaa !8
  store <2 x double> %i.d, ptr %i.b, align 16, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x double>, ptr %i.f, align 1, !tbaa !8
  store <2 x double> %i.g, ptr %i.e, align 16, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.i = getelementptr i8, ptr %1, i64 48
  %i.j = load double, ptr %i.i, align 8, !tbaa !23
  store double %i.j, ptr %i.h, align 16, !tbaa !23
  call void @_ZN3g2o8internal12fromVectorQTERKN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Transform") align 16 %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.k, ptr noundef nonnull align 16 dereferenceable(128) %2, i64 128, i1 false), !tbaa.struct !105
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o9VertexSE326setMinimalEstimateDataImplEPKd(ptr noundef nonnull align 16 dereferenceable(348) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Transform", align 16 ; 4 uses
  %3 = alloca %"class.Eigen::Matrix", align 16    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !8
  store <2 x double> %i.a, ptr %3, align 16, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x double>, ptr %i.c, align 1, !tbaa !8
  store <2 x double> %i.d, ptr %i.b, align 16, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x double>, ptr %i.f, align 1, !tbaa !8
  store <2 x double> %i.g, ptr %i.e, align 16, !tbaa !8
  call void @_ZN3g2o8internal13fromVectorMQTERKN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Transform") align 16 %2, ptr noundef nonnull align 16 dereferenceable(48) %3)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.h, ptr noundef nonnull align 16 dereferenceable(128) %2, i64 128, i1 false), !tbaa.struct !105
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i1 true
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o14VertexSE3EulerD1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEEE, i64 16), ptr %i.a, align 16, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEEE, i64 288), ptr %0, align 16, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !25  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !28
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20, !inline_history !29
  br label %_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED2Ev.exit

_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(348) %i.a) #19, !inline_history !29
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o14VertexSE3EulerD0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEEE, i64 16), ptr %i.a, align 16, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEEE, i64 288), ptr %0, align 16, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !25  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3g2o14VertexSE3EulerD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !28
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20, !inline_history !29
  br label %_ZN3g2o14VertexSE3EulerD0Ev.exit

_ZN3g2o14VertexSE3EulerD0Ev.exit:                 ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(348) %i.a) #19, !inline_history !29
  tail call void @_ZdlPvm(ptr noundef nonnull align 16 dereferenceable(348) %i.a, i64 noundef 352) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED2Ev(ptr noundef nonnull align 16 dead_on_return(344) dereferenceable(344) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEEE, i64 16), ptr %0, align 16, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEEE, i64 288), ptr %i.a, align 16, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !25  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt5stackIN5Eigen9TransformIdLi3ELi1ELi0EEESt6vectorIS2_SaIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !28
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20
  br label %_ZNSt5stackIN5Eigen9TransformIdLi3ELi1ELi0EEESt6vectorIS2_SaIS2_EEED2Ev.exit

_ZNSt5stackIN5Eigen9TransformIdLi3ELi1ELi0EEESt6vectorIS2_SaIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED0Ev(ptr noundef nonnull align 16 dereferenceable(344) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

declare noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex15getEstimateDataEPd(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #3

declare noundef i32 @_ZNK3g2o16OptimizableGraph6Vertex17estimateDimensionEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataEPd(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #3

declare noundef i32 @_ZNK3g2o16OptimizableGraph6Vertex24minimalEstimateDimensionEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o16OptimizableGraph6Vertex19setEstimateDataImplEPKd(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o16OptimizableGraph6Vertex26setMinimalEstimateDataImplEPKd(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEEE, i64 16), ptr %i.a, align 16, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEEE, i64 288), ptr %0, align 16, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
end_hunk_0
