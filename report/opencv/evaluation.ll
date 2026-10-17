Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/evaluation?download=true
inline.NumInlined: 1086
inline.NumDeleted: 425
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv4Mat_IdEaSEONS_3MatE:bb.a
bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 6
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !22
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 -2113863674, ptr %3, align 8, !tbaa !29
  store ptr %0, ptr %i.o, align 8, !tbaa !30
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  ret ptr %0
}

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #8

declare void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI16EllipticKeyPointSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !37     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI16EllipticKeyPointSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #26
  unreachable

_ZNKSt6vectorI16EllipticKeyPointSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 56
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !13
  store i64 %i.r, ptr %i.q, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load <2 x double>, ptr %i.t, align 8, !tbaa !11
  store <2 x double> %i.u, ptr %i.s, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.x = load <2 x double>, ptr %i.v, align 8, !tbaa !11
  store <2 x double> %i.x, ptr %i.w, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI16EllipticKeyPointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorI16EllipticKeyPointSaIS0_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorI16EllipticKeyPointSaIS0_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorI16EllipticKeyPointSaIS0_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.aa = load i64, ptr %.0911.i.i.i, align 8, !tbaa !13, !alias.scope !169
  store i64 %i.aa, ptr %.012.i.i.i, align 8, !tbaa !13, !alias.scope !168
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ad = load <2 x double>, ptr %i.ac, align 8, !tbaa !11, !alias.scope !169
  store <2 x double> %i.ad, ptr %i.ab, align 8, !tbaa !11, !alias.scope !168
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ag = load <2 x double>, ptr %i.ae, align 8, !tbaa !11, !alias.scope !169
  store <2 x double> %i.ag, ptr %i.af, align 8, !tbaa !11, !alias.scope !168
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !alias.scope !170
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorI16EllipticKeyPointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt6vectorI16EllipticKeyPointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorI16EllipticKeyPointSaIS0_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorI16EllipticKeyPointSaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.ak, %.lr.ph.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorI16EllipticKeyPointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorI16EllipticKeyPointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.aw, %.lr.ph.i.i.i27 ], [ %i.al, %_ZNSt6vectorI16EllipticKeyPointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.av, %.lr.ph.i.i.i27 ], [ %1, %_ZNSt6vectorI16EllipticKeyPointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.am = load i64, ptr %.0911.i.i.i29, align 8, !tbaa !13, !alias.scope !172
  store i64 %i.am, ptr %.012.i.i.i28, align 8, !tbaa !13, !alias.scope !171
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ap = load <2 x double>, ptr %i.ao, align 8, !tbaa !11, !alias.scope !172
  store <2 x double> %i.ap, ptr %i.an, align 8, !tbaa !11, !alias.scope !171
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 24
  %i.as = load <2 x double>, ptr %i.aq, align 8, !tbaa !11, !alias.scope !172
  store <2 x double> %i.as, ptr %i.ar, align 8, !tbaa !11, !alias.scope !171
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !alias.scope !173
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 56 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 56 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorI16EllipticKeyPointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !1

_ZNSt6vectorI16EllipticKeyPointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32: ; preds = %.lr.ph.i.i.i27, %_ZNSt6vectorI16EllipticKeyPointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.al, %_ZNSt6vectorI16EllipticKeyPointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.aw, %.lr.ph.i.i.i27 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseI16EllipticKeyPointSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI16EllipticKeyPointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !73
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ba) #27
  br label %_ZNSt12_Vector_baseI16EllipticKeyPointSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI16EllipticKeyPointSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorI16EllipticKeyPointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !37
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI16EllipticKeyPointSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = load ptr, ptr %0, align 8, !tbaa !37     ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = sdiv exact i64 %i.c, 56
  %i.l = icmp ugt i64 %i.k, 164703072086692425
  br i1 %i.l, label %bb.c, label %_ZNSt12_Vector_baseI16EllipticKeyPointSaIS0_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #26
  unreachable

_ZNSt12_Vector_baseI16EllipticKeyPointSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #29 ; 3 uses
  %.not11.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not11.i.i.i.i.i, label %_ZNSt6vectorI16EllipticKeyPointSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEES6_mT_S8_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseI16EllipticKeyPointSaIS0_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.m, %_ZNSt12_Vector_baseI16EllipticKeyPointSaIS0_EE11_M_allocateEm.exit.i ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseI16EllipticKeyPointSaIS0_EE11_M_allocateEm.exit.i ] ; 5 uses
  %i.n = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !13
  store i64 %i.n, ptr %.013.i.i.i.i.i, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !11
  store <2 x double> %i.q, ptr %i.o, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  %i.t = load <2 x double>, ptr %i.r, align 8, !tbaa !11
  store <2 x double> %i.t, ptr %i.s, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI16EllipticKeyPointSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEES6_mT_S8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !174

_ZNSt6vectorI16EllipticKeyPointSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEES6_mT_S8_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseI16EllipticKeyPointSaIS0_EE11_M_allocateEm.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %0, align 8, !tbaa !37     ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI16EllipticKeyPointSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI16EllipticKeyPointSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEES6_mT_S8_.exit
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt12_Vector_baseI16EllipticKeyPointSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI16EllipticKeyPointSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorI16EllipticKeyPointSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEES6_mT_S8_.exit, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c ; 2 uses
  store ptr %i.ae, ptr %i.y, align 8, !tbaa !36
  store ptr %i.ae, ptr %i.d, align 8, !tbaa !73
  br label %_ZNSt6vectorI16EllipticKeyPointSaIS0_EE15_M_erase_at_endEPS0_.exit

bb.e:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !36 ; 3 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.h                     ; 4 uses
  %.not = icmp ult i64 %i.ai, %i.c
  br i1 %.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = icmp sgt i64 %i.c, 0
  br i1 %i.aj, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.f
  %i.ak = udiv exact i64 %i.c, 56
  br label %.lr.ph.i.i.i.i.i18

.lr.ph.i.i.i.i.i18:                               ; preds = %.lr.ph.i.i.i.i.i18, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i18 ], [ %i.ak, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i18 ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i18 ], [ %1, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %i.al = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !13
  store i64 %i.al, ptr %.0811.i.i.i.i.i, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !11
  store double %i.ao, ptr %i.am, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  store double %i.aq, ptr %i.ar, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.at = load double, ptr %i.as, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  store double %i.at, ptr %i.au, align 8, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.aw = load double, ptr %i.av, align 8, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  store double %i.aw, ptr %i.ax, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56 ; 2 uses
  %i.bc = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bd = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i18, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.loopexit, !llvm.loop !175

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i18
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !36
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.loopexit, %bb.f
  %i.be = phi ptr [ %i.ag, %bb.f ], [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.loopexit ]
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.f, %bb.f ], [ %i.bb, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.loopexit ] ; 2 uses
  %.not.i19 = icmp eq ptr %i.be, %.08.lcssa.i.i.i.i.i
  br i1 %.not.i19, label %_ZNSt6vectorI16EllipticKeyPointSaIS0_EE15_M_erase_at_endEPS0_.exit, label %_ZSt8_DestroyIP16EllipticKeyPointS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP16EllipticKeyPointS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit
  store ptr %.08.lcssa.i.i.i.i.i, ptr %i.af, align 8, !tbaa !36
  br label %_ZNSt6vectorI16EllipticKeyPointSaIS0_EE15_M_erase_at_endEPS0_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.ai ; 2 uses
  %i.bf = icmp sgt i64 %i.ai, 0
  br i1 %i.bf, label %.lr.ph.preheader.i.i.i.i.i21, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit26

.lr.ph.preheader.i.i.i.i.i21:                     ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bg = udiv exact i64 %i.ai, 56
  br label %.lr.ph.i.i.i.i.i22

.lr.ph.i.i.i.i.i22:                               ; preds = %.lr.ph.i.i.i.i.i22, %.lr.ph.preheader.i.i.i.i.i21
  %.012.i.i.i.i.i23 = phi i64 [ %i.by, %.lr.ph.i.i.i.i.i22 ], [ %i.bg, %.lr.ph.preheader.i.i.i.i.i21 ] ; 2 uses
  %.0811.i.i.i.i.i24 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i22 ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i21 ] ; 7 uses
  %.0910.i.i.i.i.i25 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i22 ], [ %1, %.lr.ph.preheader.i.i.i.i.i21 ] ; 7 uses
  %i.bh = load i64, ptr %.0910.i.i.i.i.i25, align 8, !tbaa !13
  store i64 %i.bh, ptr %.0811.i.i.i.i.i24, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 8
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !11
  store double %i.bk, ptr %i.bi, align 8, !tbaa !11
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 16
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !11
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 16
  store double %i.bm, ptr %i.bn, align 8, !tbaa !11
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 24
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 24
  store double %i.bp, ptr %i.bq, align 8, !tbaa !11
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 32
  %i.bs = load double, ptr %i.br, align 8, !tbaa !11
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 32
  store double %i.bs, ptr %i.bt, align 8, !tbaa !11
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 56
  %i.bx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 56
  %i.by = add nsw i64 %.012.i.i.i.i.i23, -1
  %i.bz = icmp samesign ugt i64 %.012.i.i.i.i.i23, 1
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i22, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit26.loopexit, !llvm.loop !175

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit26.loopexit: ; preds = %.lr.ph.i.i.i.i.i22
  %.pre33 = load ptr, ptr %i.af, align 8, !tbaa !36
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit26

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit26: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit26.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ca = phi ptr [ %.pre33, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit26.loopexit ], [ %i.ag, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.not11.i.i.i.i = icmp eq ptr %.sink.i, %2
  br i1 %.not11.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_S2_ET0_T_S9_S8_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit26, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i ], [ %i.ca, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit26 ] ; 7 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %.sink.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit26 ] ; 7 uses
  %i.cb = load i64, ptr %.sroa.08.012.i.i.i.i, align 8, !tbaa !13
  store i64 %i.cb, ptr %.013.i.i.i.i, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 8
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !11
  store double %i.ce, ptr %i.cc, align 8, !tbaa !11
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 16
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !11
  %i.ch = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 16
  store double %i.cg, ptr %i.ch, align 8, !tbaa !11
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 24
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 24
  store double %i.cj, ptr %i.ck, align 8, !tbaa !11
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 32
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !11
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  store double %i.cm, ptr %i.cn, align 8, !tbaa !11
  %i.co = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 56 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_S2_ET0_T_S9_S8_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !174

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_S2_ET0_T_S9_S8_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit26
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ca, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit26 ], [ %i.cr, %.lr.ph.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.af, align 8, !tbaa !36
  br label %_ZNSt6vectorI16EllipticKeyPointSaIS0_EE15_M_erase_at_endEPS0_.exit

_ZNSt6vectorI16EllipticKeyPointSaIS0_EE15_M_erase_at_endEPS0_.exit: ; preds = %_ZSt8_DestroyIP16EllipticKeyPointS0_EvT_S2_RSaIT0_E.exit.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_S2_ET0_T_S9_S8_RSaIT1_E.exit, %_ZNSt12_Vector_baseI16EllipticKeyPointSaIS0_EE13_M_deallocateEPS0_m.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse2.cvtsd2si(<2 x double>) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN20IntersectAreaCounterclERKN2cv12BlockedRangeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.6", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.6", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !178  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !65   ; 2 uses
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 262) #26
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
end_hunk_0
