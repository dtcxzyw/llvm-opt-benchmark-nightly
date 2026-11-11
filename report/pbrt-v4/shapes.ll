Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/shapes?download=true
inline.NumInlined: 6411
inline.NumDeleted: 1459
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4pbrt11CurveCommonC2EN4pstd4spanIKNS_6Point3IfEEEEffNS_9CurveTypeENS2_IKNS_7Normal3IfEEEEPKNS_9TransformESE_b:bb.a
  %i.bp = fmul float %sqrt.i41.i, 5.000000e-01    ; 2 uses
  %i.bq = fcmp ogt float %i.bp, 1.000000e+00
  %..i.i42.i = select i1 %i.bq, float 1.000000e+00, float %i.bp
  %i.br = tail call noundef float @asinf(float noundef %..i.i42.i) #32
  %i.bs = fmul float %i.br, 2.000000e+00
  br label %_ZN4pbrt12AngleBetweenIfEEfNS_7Normal3IT_EES3_.exit

_ZN4pbrt12AngleBetweenIfEEfNS_7Normal3IT_EES3_.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi float [ %i.bh, %bb.e ], [ %i.bs, %bb.f ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 84
  store float %.0.i, ptr %i.bt, align 4, !tbaa !176
  %i.bu = tail call noundef float @sinf(float noundef %.0.i) #32
  %i.bv = fdiv float 1.000000e+00, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %i.bv, ptr %i.bw, align 8, !tbaa !177
  br label %bb.g

bb.g:                                             ; preds = %_ZN4pbrt12AngleBetweenIfEEfNS_7Normal3IT_EES3_.exit, %bb.c
  %i.bx = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL7nCurvesE) ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !66
  %i.bz = add nsw i64 %i.by, 1
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !66
  ret void
}

declare noundef zeroext i1 @_ZNK4pbrt9Transform15SwapsHandednessEv(ptr noundef nonnull align 4 dereferenceable(128)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA9_KcRA2_S1_S3_RmS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 1 dereferenceable(9) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(2) %8, ptr noundef nonnull align 4 dereferenceable(4) %9) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !59, !alias.scope !374
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !61, !alias.scope !374
  store i8 0, ptr %i.a, align 8, !tbaa !62, !alias.scope !374
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA9_KcJRA2_S2_S4_RmS6_RiEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 1 dereferenceable(9) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(2) %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %_ZN4pbrt12StringPrintfIJRA9_KcRA2_S1_S3_RmS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !63, !alias.scope !374 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !62, !alias.scope !374
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #33
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA9_KcRA2_S1_S3_RmS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !63
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #34
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA9_KcRA2_S1_S3_RmS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA9_KcRA2_S1_S3_RmS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !63    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !62
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt11CurveCommon8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(114) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pstd::span", align 8        ; 5 uses
  %3 = alloca %"class.pstd::span.63", align 8     ; 5 uses
  %4 = alloca %"class.pstd::span.62", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store ptr %i.a, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  store ptr %i.c, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 60
  store ptr %i.e, ptr %4, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !172
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !173
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !59, !alias.scope !377
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !61, !alias.scope !377
  store i8 0, ptr %i.o, align 8, !tbaa !62, !alias.scope !377
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_9CurveTypeEJN4pstd4spanIKNS_6Point3IfEEEENS6_IKfEENS6_IKNS_7Normal3IfEEEERSB_SH_RKNS_9TransformESK_RKbSM_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.45, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(128) %i.j, ptr noundef nonnull align 4 dereferenceable(128) %i.l, ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull align 1 dereferenceable(1) %i.n)
          to label %_ZN4pbrt12StringPrintfIJRKNS_9CurveTypeEN4pstd4spanIKNS_6Point3IfEEEENS5_IKfEENS5_IKNS_7Normal3IfEEEERSA_SG_RKNS_9TransformESJ_RKbSL_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %0, align 8, !tbaa !63, !alias.scope !377 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.o
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.t = load i64, ptr %i.o, align 8, !tbaa !62, !alias.scope !377
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.q

_ZN4pbrt12StringPrintfIJRKNS_9CurveTypeEN4pstd4spanIKNS_6Point3IfEEEENS5_IKfEENS5_IKNS_7Normal3IfEEEERSA_SG_RKNS_9TransformESJ_RKbSL_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt11CreateCurveEPKNS_9TransformES2_bN4pstd4spanIKNS_6Point3IfEEEEffNS_9CurveTypeENS4_IKNS_7Normal3IfEEEEiNS3_3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind noalias writable sret(%"class.pstd::vector") align 8 initializes((0, 32)) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr nofree readonly captures(none) %4, i64 %5, float noundef %6, float noundef %7, i32 noundef %8, ptr nofree noundef readonly byval(%"class.pstd::span.62") align 8 captures(none) %9, i32 noundef %10, i64 %11) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEEC2EmRKS5_.exit:
  %i.a = inttoptr i64 %11 to ptr                  ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 120, i64 noundef 8), !inline_history !378 ; 5 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %9, align 8, !tbaa !159
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !66
  tail call void @_ZN4pbrt11CurveCommonC2EN4pstd4spanIKNS_6Point3IfEEEEffNS_9CurveTypeENS2_IKNS_7Normal3IfEEEEPKNS_9TransformESE_b(ptr noundef nonnull align 8 dereferenceable(114) %i.e, ptr %4, i64 %5, float noundef %6, float noundef %7, i32 noundef %8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3)
  %i.f = shl nuw i32 1, %10                       ; 5 uses
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  store i64 %11, ptr %0, align 8, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = shl nsw i64 %i.g, 3                      ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.k, i64 noundef 8), !inline_history !0 ; 6 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !65
  store i64 %i.g, ptr %i.i, align 8, !tbaa !108
  store ptr %i.o, ptr %i.h, align 8, !tbaa !109
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, i8 0, i64 %i.k, i1 false), !tbaa !111
  store i64 %i.g, ptr %i.j, align 8, !tbaa !107
  %i.p = shl nsw i64 %i.g, 4                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.p, i64 noundef 8)
          to label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt5CurveEEEPT_m.exit.preheader unwind label %bb.b, !inline_history !379 ; 8 uses

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt5CurveEEEPT_m.exit.preheader: ; preds = %_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEEC2EmRKS5_.exit
  %.not = icmp eq i32 %10, 31
  br i1 %.not, label %bb.a, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt5CurveEEEPT_m.exit.preheader
  %i.t = sitofp i32 %i.f to float                 ; 4 uses
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL12nSplitCurvesE) ; 2 uses
  %.promoted = load i64, ptr %i.u, align 8, !tbaa !66
  %smax = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 2 uses
  %min.iters.check = icmp slt i32 %i.f, 4
  br i1 %min.iters.check, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt5CurveEEEPT_m.exit, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.t, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert38 = insertelement <4 x ptr> poison, ptr %i.e, i64 0
  %broadcast.splat39 = shufflevector <4 x ptr> %broadcast.splatinsert38, <4 x ptr> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind40 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next43, %vector.body ] ; 2 uses
  %12 = uitofp nneg <4 x i32> %vec.ind40 to <4 x float>
  %13 = fdiv <4 x float> %12, %broadcast.splat
  %14 = trunc <4 x i64> %vec.ind to <4 x i32>
  %15 = add <4 x i32> %14, splat (i32 1)
  %i.v = uitofp nneg <4 x i32> %15 to <4 x float>
  %i.w = fdiv <4 x float> %i.v, %broadcast.splat
  %wide.gep = getelementptr inbounds nuw [16 x i8], ptr %i.s, <4 x i64> %vec.ind ; 4 uses
  tail call void @llvm.masked.scatter.v4p0.v4p0(<4 x ptr> %broadcast.splat39, <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !180
  %wide.gep41 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %13, <4 x ptr> align 8 %wide.gep41, <4 x i1> splat (i1 true)), !tbaa !181
  %wide.gep42 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 12
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.w, <4 x ptr> align 4 %wide.gep42, <4 x i1> splat (i1 true)), !tbaa !182
  %i.x = ptrtoint <4 x ptr> %wide.gep to <4 x i64>
  %i.y = or <4 x i64> %i.x, splat (i64 864691128455135232)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index
  store <4 x i64> %i.y, ptr %i.z, align 8, !tbaa !111
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next43 = add <4 x i32> %vec.ind40, splat (i32 4)
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt5CurveEEEPT_m.exit._crit_edge, label %vector.body, !llvm.loop !380

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt5CurveEEEPT_m.exit._crit_edge: ; preds = %vector.body, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt5CurveEEEPT_m.exit, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt5CurveEEEPT_m.exit.1, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt5CurveEEEPT_m.exit.2
  %i.ab = add i64 %.promoted, %wide.trip.count
  store i64 %i.ab, ptr %i.u, align 8, !tbaa !66
  br label %bb.a

bb.a:                                             ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt5CurveEEEPT_m.exit._crit_edge, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt5CurveEEEPT_m.exit.preheader
  %i.ac = add nsw i64 %i.p, 120
  %i.ad = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL10curveBytesE) ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !66
  %i.af = add i64 %i.ac, %i.ae
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !66
  ret void

bb.b:                                             ; preds = %_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEEC2EmRKS5_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  resume { ptr, i32 } %i.ag

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt5CurveEEEPT_m.exit: ; preds = %.lr.ph
  store ptr %i.e, ptr %i.s, align 8, !tbaa !180
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ai = insertelement <2 x float> poison, float %i.t, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fdiv <2 x float> <float 0.000000e+00, float 1.000000e+00>, %i.aj
  store <2 x float> %i.ak, ptr %i.ah, align 8, !tbaa !28
  %i.al = ptrtoint ptr %i.s to i64
  %i.am = or i64 %i.al, 864691128455135232
  store i64 %i.am, ptr %i.o, align 8, !tbaa !111
  %exitcond.not = icmp slt i32 %i.f, 2
  br i1 %exitcond.not, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt5CurveEEEPT_m.exit._crit_edge, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt5CurveEEEPT_m.exit.1

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt5CurveEEEPT_m.exit.1: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt5CurveEEEPT_m.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.an, align 8, !tbaa !180
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ap = insertelement <2 x float> poison, float %i.t, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fdiv <2 x float> <float 1.000000e+00, float 2.000000e+00>, %i.aq
  store <2 x float> %i.ar, ptr %i.ao, align 8, !tbaa !28
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = or i64 %i.as, 864691128455135232
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !111
  %exitcond.not.1 = icmp eq i32 %10, 1
  br i1 %exitcond.not.1, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt5CurveEEEPT_m.exit._crit_edge, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt5CurveEEEPT_m.exit.2

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt5CurveEEEPT_m.exit.2: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt5CurveEEEPT_m.exit.1
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  store ptr %i.e, ptr %i.av, align 8, !tbaa !180
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ax = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = fdiv <2 x float> <float 2.000000e+00, float 3.000000e+00>, %i.ay
  store <2 x float> %i.az, ptr %i.aw, align 8, !tbaa !28
  %i.ba = ptrtoint ptr %i.av to i64
  %i.bb = or i64 %i.ba, 864691128455135232
  %i.bc = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !111
  br label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt5CurveEEEPT_m.exit._crit_edge
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt5Curve6BoundsEv(ptr dead_on_unwind noalias writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pstd::array.64", align 8    ; 11 uses
  %3 = alloca %"class.pbrt::Bounds3", align 8     ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !180    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !181 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !182 ; 2 uses
  %i.g = fcmp oeq float %i.d, 0.000000e+00
  %i.h = fcmp oeq float %i.f, 1.000000e+00
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.013.0.copyload.i.i = load <2 x float>, ptr %i.b, align 4, !noalias !387 ; 4 uses
  %.sroa.214.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.214.0.copyload.i.i = load float, ptr %.sroa.214.0..sroa_idx.i.i, align 4, !noalias !387 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.011.0.copyload.i.i = load <2 x float>, ptr %i.i, align 4, !noalias !387 ; 4 uses
  %.sroa.212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.212.0.copyload.i.i = load float, ptr %.sroa.212.0..sroa_idx.i.i, align 4, !noalias !387 ; 4 uses
  %i.j = fcmp olt float %.sroa.212.0.copyload.i.i, %.sroa.214.0.copyload.i.i
  %.sroa.speculated.i.i.i.i = select i1 %i.j, float %.sroa.212.0.copyload.i.i, float %.sroa.214.0.copyload.i.i ; 2 uses
  %i.k = fcmp olt float %.sroa.214.0.copyload.i.i, %.sroa.212.0.copyload.i.i
  %.sroa.speculated.i34.i.i.i = select i1 %i.k, float %.sroa.212.0.copyload.i.i, float %.sroa.214.0.copyload.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.05.0.copyload.i.i = load <2 x float>, ptr %i.l, align 4, !noalias !387 ; 4 uses
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %.sroa.26.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i, align 4, !noalias !387 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.m, align 4, !noalias !387 ; 4 uses
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.24.0..sroa_idx.i.i, align 4, !noalias !387 ; 4 uses
  %i.n = fcmp olt float %.sroa.24.0.copyload.i.i, %.sroa.26.0.copyload.i.i
  %.sroa.speculated.i.i19.i.i = select i1 %i.n, float %.sroa.24.0.copyload.i.i, float %.sroa.26.0.copyload.i.i ; 2 uses
  %i.o = fcmp olt float %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i
  %.sroa.speculated.i34.i23.i.i = select i1 %i.o, float %.sroa.24.0.copyload.i.i, float %.sroa.26.0.copyload.i.i ; 2 uses
  %i.p = fcmp olt <2 x float> %.sroa.011.0.copyload.i.i, %.sroa.013.0.copyload.i.i
  %i.q = select <2 x i1> %i.p, <2 x float> %.sroa.011.0.copyload.i.i, <2 x float> %.sroa.013.0.copyload.i.i ; 2 uses
  %i.r = fcmp olt <2 x float> %.sroa.03.0.copyload.i.i, %.sroa.05.0.copyload.i.i
  %i.s = select <2 x i1> %i.r, <2 x float> %.sroa.03.0.copyload.i.i, <2 x float> %.sroa.05.0.copyload.i.i ; 2 uses
  %i.t = fcmp olt <2 x float> %i.s, %i.q
  %i.u = select <2 x i1> %i.t, <2 x float> %i.s, <2 x float> %i.q
  %i.v = fcmp olt float %.sroa.speculated.i.i19.i.i, %.sroa.speculated.i.i.i.i
  %.sroa.speculated.i.i31.i.i = select i1 %i.v, float %.sroa.speculated.i.i19.i.i, float %.sroa.speculated.i.i.i.i
  %i.w = fcmp olt <2 x float> %.sroa.013.0.copyload.i.i, %.sroa.011.0.copyload.i.i
  %i.x = select <2 x i1> %i.w, <2 x float> %.sroa.011.0.copyload.i.i, <2 x float> %.sroa.013.0.copyload.i.i ; 2 uses
  %i.y = fcmp olt <2 x float> %.sroa.05.0.copyload.i.i, %.sroa.03.0.copyload.i.i
  %i.z = select <2 x i1> %i.y, <2 x float> %.sroa.03.0.copyload.i.i, <2 x float> %.sroa.05.0.copyload.i.i ; 2 uses
  %i.aa = fcmp olt <2 x float> %i.x, %i.z
  %i.ab = select <2 x i1> %i.aa, <2 x float> %i.z, <2 x float> %i.x
  %i.ac = fcmp olt float %.sroa.speculated.i34.i.i.i, %.sroa.speculated.i34.i23.i.i
  %.sroa.speculated.i31.i.i.i = select i1 %i.ac, float %.sroa.speculated.i34.i23.i.i, float %.sroa.speculated.i34.i.i.i
  br label %_ZN4pbrt16BoundCubicBezierEN4pstd4spanIKNS_6Point3IfEEEEff.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !388
  call void @_ZN4pbrt24CubicBezierControlPointsEN4pstd4spanIKNS_6Point3IfEEEEff(ptr dead_on_unwind nonnull writable sret(%"class.pstd::array.64") align 4 %2, ptr nonnull %i.b, i64 4, float noundef %i.d, float noundef %i.f), !noalias !388
  %.sroa.013.0.copyload.i9.i = load <2 x float>, ptr %2, align 8, !noalias !389 ; 4 uses
  %.sroa.214.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.214.0.copyload.i11.i = load float, ptr %.sroa.214.0..sroa_idx.i10.i, align 8, !noalias !389 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.011.0.copyload.i12.i = load <2 x float>, ptr %i.ad, align 4, !noalias !389 ; 4 uses
  %.sroa.212.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.212.0.copyload.i14.i = load float, ptr %.sroa.212.0..sroa_idx.i13.i, align 4, !noalias !389 ; 4 uses
  %i.ae = fcmp olt float %.sroa.212.0.copyload.i14.i, %.sroa.214.0.copyload.i11.i
  %.sroa.speculated.i.i.i19.i = select i1 %i.ae, float %.sroa.212.0.copyload.i14.i, float %.sroa.214.0.copyload.i11.i ; 2 uses
  %i.af = fcmp olt float %.sroa.214.0.copyload.i11.i, %.sroa.212.0.copyload.i14.i
  %.sroa.speculated.i34.i.i20.i = select i1 %i.af, float %.sroa.212.0.copyload.i14.i, float %.sroa.214.0.copyload.i11.i ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.05.0.copyload.i21.i = load <2 x float>, ptr %i.ag, align 8, !noalias !389 ; 4 uses
  %.sroa.26.0..sroa_idx.i22.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.26.0.copyload.i23.i = load float, ptr %.sroa.26.0..sroa_idx.i22.i, align 8, !noalias !389 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.sroa.03.0.copyload.i24.i = load <2 x float>, ptr %i.ah, align 4, !noalias !389 ; 4 uses
  %.sroa.24.0..sroa_idx.i25.i = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.sroa.24.0.copyload.i26.i = load float, ptr %.sroa.24.0..sroa_idx.i25.i, align 4, !noalias !389 ; 4 uses
  %i.ai = fcmp olt float %.sroa.24.0.copyload.i26.i, %.sroa.26.0.copyload.i23.i
  %.sroa.speculated.i.i19.i31.i = select i1 %i.ai, float %.sroa.24.0.copyload.i26.i, float %.sroa.26.0.copyload.i23.i ; 2 uses
  %i.aj = fcmp olt float %.sroa.26.0.copyload.i23.i, %.sroa.24.0.copyload.i26.i
  %.sroa.speculated.i34.i23.i32.i = select i1 %i.aj, float %.sroa.24.0.copyload.i26.i, float %.sroa.26.0.copyload.i23.i ; 2 uses
  %i.ak = fcmp olt <2 x float> %.sroa.011.0.copyload.i12.i, %.sroa.013.0.copyload.i9.i
  %i.al = select <2 x i1> %i.ak, <2 x float> %.sroa.011.0.copyload.i12.i, <2 x float> %.sroa.013.0.copyload.i9.i ; 2 uses
  %i.am = fcmp olt <2 x float> %.sroa.03.0.copyload.i24.i, %.sroa.05.0.copyload.i21.i
  %i.an = select <2 x i1> %i.am, <2 x float> %.sroa.03.0.copyload.i24.i, <2 x float> %.sroa.05.0.copyload.i21.i ; 2 uses
  %i.ao = fcmp olt <2 x float> %i.an, %i.al
  %i.ap = select <2 x i1> %i.ao, <2 x float> %i.an, <2 x float> %i.al
  %i.aq = fcmp olt float %.sroa.speculated.i.i19.i31.i, %.sroa.speculated.i.i.i19.i
  %.sroa.speculated.i.i31.i33.i = select i1 %i.aq, float %.sroa.speculated.i.i19.i31.i, float %.sroa.speculated.i.i.i19.i
  %i.ar = fcmp olt <2 x float> %.sroa.013.0.copyload.i9.i, %.sroa.011.0.copyload.i12.i
  %i.as = select <2 x i1> %i.ar, <2 x float> %.sroa.011.0.copyload.i12.i, <2 x float> %.sroa.013.0.copyload.i9.i ; 2 uses
  %i.at = fcmp olt <2 x float> %.sroa.05.0.copyload.i21.i, %.sroa.03.0.copyload.i24.i
  %i.au = select <2 x i1> %i.at, <2 x float> %.sroa.03.0.copyload.i24.i, <2 x float> %.sroa.05.0.copyload.i21.i ; 2 uses
  %i.av = fcmp olt <2 x float> %i.as, %i.au
  %i.aw = select <2 x i1> %i.av, <2 x float> %i.au, <2 x float> %i.as
  %i.ax = fcmp olt float %.sroa.speculated.i34.i.i20.i, %.sroa.speculated.i34.i23.i32.i
  %.sroa.speculated.i31.i.i36.i = select i1 %i.ax, float %.sroa.speculated.i34.i23.i32.i, float %.sroa.speculated.i34.i.i20.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !388
  %.pre = load float, ptr %i.c, align 8, !tbaa !181
  %.pre6 = load ptr, ptr %1, align 8, !tbaa !180
  %.pre7 = load float, ptr %i.e, align 4, !tbaa !182
  br label %_ZN4pbrt16BoundCubicBezierEN4pstd4spanIKNS_6Point3IfEEEEff.exit

_ZN4pbrt16BoundCubicBezierEN4pstd4spanIKNS_6Point3IfEEEEff.exit: ; preds = %bb.b, %bb.c
  %i.ay = phi float [ 1.000000e+00, %bb.b ], [ %.pre7, %bb.c ] ; 2 uses
  %i.az = phi ptr [ %i.a, %bb.b ], [ %.pre6, %bb.c ] ; 3 uses
  %i.ba = phi float [ %i.d, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %.sroa.015.4.vec.insert.i.i33.i35.i.sink = phi <2 x float> [ %i.u, %bb.b ], [ %i.ap, %bb.c ]
  %.sroa.speculated.i.i31.i33.sink.i = phi float [ %.sroa.speculated.i.i31.i.i, %bb.b ], [ %.sroa.speculated.i.i31.i33.i, %bb.c ]
  %.sroa.015.4.vec.insert.i33.i.i38.sink.i = phi <2 x float> [ %i.ab, %bb.b ], [ %i.aw, %bb.c ]
  %.sroa.speculated.i31.i.i36.sink.i = phi float [ %.sroa.speculated.i31.i.i.i, %bb.b ], [ %.sroa.speculated.i31.i.i36.i, %bb.c ]
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 52
  %i.bf = load float, ptr %i.be, align 4, !tbaa !28 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !28 ; 2 uses
  %i.bi = fsub float 1.000000e+00, %i.ba
  %i.bj = fmul float %i.bi, %i.bf
  %i.bk = fmul float %i.ba, %i.bh
  %i.bl = fadd float %i.bj, %i.bk                 ; 2 uses
  %i.bm = fsub float 1.000000e+00, %i.ay
  %i.bn = fmul float %i.bf, %i.bm
  %i.bo = fmul float %i.bh, %i.ay
  %i.bp = fadd float %i.bo, %i.bn                 ; 2 uses
  %i.bq = fcmp olt float %i.bl, %i.bp
  %.sroa.speculated = select i1 %i.bq, float %i.bp, float %i.bl
  %i.br = fmul float %.sroa.speculated, 5.000000e-01 ; 3 uses
  %i.bs = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
end_hunk_0
