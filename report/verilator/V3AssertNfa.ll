Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3AssertNfa?download=true
inline.NumInlined: 4685
inline.NumDeleted: 1487
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN12_GLOBAL__N_112assertOnCondEP8FileLine11VAssertType20VAssertDirectiveType:bb.a
          to label %.noexc17 unwind label %bb.j   ; 2 uses

.noexc17:                                         ; preds = %.noexc.i14
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !259
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i.i, label %_ZN8AstCExprC2EP8FileLineNS_4PureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit, label %_ZN7AstNode16dtypeSetBitSizedEi8VSigning.exit.sink.split.i.i

_ZN7AstNode16dtypeSetBitSizedEi8VSigning.exit.sink.split.i.i: ; preds = %.noexc17
  store ptr %i.r, ptr %i.q, align 8, !tbaa !259
  %i.t = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90
  br label %_ZN8AstCExprC2EP8FileLineNS_4PureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit

_ZN8AstCExprC2EP8FileLineNS_4PureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit: ; preds = %_ZN7AstNode16dtypeSetBitSizedEi8VSigning.exit.sink.split.i.i, %.noexc17
  %i.v = load ptr, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8AstCExprC2EP8FileLineNS_4PureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !28
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8AstCExprC2EP8FileLineNS_4PureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN8AstConstC2EP8FileLineNS_8BitFalseE.exit

bb.i:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.j:                                             ; preds = %.noexc.i14, %bb.h, %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.j
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !28
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.ab, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 160) #27
  br label %bb.k

_ZN8AstConstC2EP8FileLineNS_8BitFalseE.exit:      ; preds = %bb.c, %.noexc.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0 = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %.noexc.i ], [ %i.c, %bb.c ]
  ret ptr %.0

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local i8 @_ZNK20AstNodeCoverOrAssert8userTypeEv(ptr noundef nonnull align 8 dereferenceable(188) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.sroa.0.0.copyload = load i8, ptr %i.a, align 8, !tbaa !208
  ret i8 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_114SvaNfaLowering5lowerEP8FileLineRNS_8SvaGraphEP11AstNodeExprP10AstSenTreeS6_bS6_bPS6_P6AstVarSB_PSt6vectorIS6_SaIS6_EESF_11VAssertType20VAssertDirectiveType(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5, i1 noundef zeroext %6, ptr noundef %7, i1 noundef zeroext %8, ptr nofree noundef writeonly captures(address_is_null) %9, ptr noundef %10, ptr noundef %11, ptr nofree noundef captures(address_is_null) %12, ptr nofree noundef captures(address_is_null) %13, i8 %14, i8 %15) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %16 = alloca %class.VAccess, align 1            ; 5 uses
  %17 = alloca %class.VAccess, align 1            ; 7 uses
  %18 = alloca %class.VAccess, align 1            ; 7 uses
  %19 = alloca %class.VAccess, align 1            ; 6 uses
  %20 = alloca %class.VAccess, align 1            ; 6 uses
  %21 = alloca %class.VAccess, align 1            ; 7 uses
  %22 = alloca %class.VAccess, align 1            ; 7 uses
  %23 = alloca %class.VAccess, align 1            ; 7 uses
  %24 = alloca %class.VAccess, align 1            ; 7 uses
  %25 = alloca %class.VAccess, align 1            ; 7 uses
  %26 = alloca %class.VAccess, align 1            ; 7 uses
  %27 = alloca %class.VAccess, align 1            ; 7 uses
  %28 = alloca %class.VAccess, align 1            ; 6 uses
  %29 = alloca %class.VAccess, align 1            ; 7 uses
  %30 = alloca %class.VAccess, align 1            ; 7 uses
  %31 = alloca %class.VAccess, align 1            ; 6 uses
  %32 = alloca %class.VAccess, align 1            ; 6 uses
  %33 = alloca %class.VAccess, align 1            ; 8 uses
  %34 = alloca %class.VAccess, align 1            ; 6 uses
  %35 = alloca %class.VAccess, align 1            ; 5 uses
  %36 = alloca %class.VAccess, align 1            ; 5 uses
  %37 = alloca %class.VAccess, align 1            ; 6 uses
  %38 = alloca %class.VAccess, align 1            ; 6 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %41 = alloca %"class.std::vector.325", align 8  ; 11 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %56 = alloca %"struct.(anonymous namespace)::SvaNfaLowering::LowerCtx", align 8 ; 40 uses
  %57 = alloca %class.VAccess, align 1            ; 5 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #26
  %i.b = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 6 uses
  store ptr %i.b, ptr %40, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !27
  store i8 0, ptr %i.b, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN13V3UniqueNames3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %39, ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %40)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.e = load ptr, ptr %40, align 8, !tbaa !26    ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.b, align 8, !tbaa !28
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !590  ; 2 uses
  %.not12202537 = icmp eq ptr %i.j, null          ; 7 uses
  br i1 %.not12202537, label %._crit_edge2542, label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit277

bb.b:                                             ; preds = %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit277
  %i.k = zext nneg i32 %i.v to i64                ; 4 uses
  %i.l = shl nuw nsw i64 %i.k, 3                  ; 3 uses
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #31
          to label %.loopexit1313 unwind label %bb.d ; 6 uses

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %40, align 8, !tbaa !26    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328: ; preds = %bb.c
  %i.q = load i64, ptr %i.b, align 8, !tbaa !28
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1165

_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit277: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit277
  %.01432539 = phi i32 [ %i.v, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit277 ], [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 2 uses
  %.sroa.01213.02538 = phi ptr [ %i.t, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit277 ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01213.02538, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !324  ; 3 uses
  %.not.i = icmp eq ptr %i.t, null                ; 2 uses
  %i.u = select i1 %.not.i, ptr %.sroa.01213.02538, ptr %i.t
  call void @llvm.prefetch.p0(ptr nonnull %i.u, i32 1, i32 3, i32 1)
  %i.v = add nuw nsw i32 %.01432539, 1            ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.01213.02538, i64 64
  store i32 %.01432539, ptr %i.w, align 8, !tbaa !325
  br i1 %.not.i, label %bb.b, label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit277

.loopexit1313:                                    ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, i8 0, i64 %i.l, i1 false), !tbaa !317
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l ; 2 uses
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !590 ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %.not12212540 = icmp eq ptr %.pre, null
  br i1 %.not12212540, label %._crit_edge2542, label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

._crit_edge2542:                                  ; preds = %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %.loopexit1313
  %.not122125403997 = phi i1 [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ true, %.loopexit1313 ], [ false, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit ]
  %.0.i.i.i.i.i.i.i3996 = phi ptr [ null, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.y, %.loopexit1313 ], [ %i.y, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit ] ; 2 uses
  %.sroa.01211.03992 = phi ptr [ null, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.m, %.loopexit1313 ], [ %i.m, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit ] ; 23 uses
  %.sroa.30.03991 = phi i64 [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.z, %.loopexit1313 ], [ %i.z, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit ] ; 2 uses
  %i.aa = phi ptr [ null, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ null, %.loopexit1313 ], [ %.pre, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit ]
  %.0143.lcssa39813990 = phi i32 [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.v, %.loopexit1313 ], [ %i.v, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit ] ; 2 uses
  %i.ab = phi i64 [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.k, %.loopexit1313 ], [ %i.k, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit ] ; 17 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !295
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !325 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !307 ; 2 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit1162

_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit: ; preds = %.loopexit1313, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit
  %.sroa.01205.02541 = phi ptr [ %i.ak, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit ], [ %.pre, %.loopexit1313 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.01205.02541, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !324 ; 3 uses
  %.not.i278 = icmp eq ptr %i.ak, null            ; 2 uses
  %i.al = select i1 %.not.i278, ptr %.sroa.01205.02541, ptr %i.ak
  call void @llvm.prefetch.p0(ptr nonnull %i.al, i32 1, i32 3, i32 1)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.01205.02541, i64 64
  %i.an = load i32, ptr %i.am, align 8, !tbaa !325
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ao
  store ptr %.sroa.01205.02541, ptr %i.ap, align 8, !tbaa !317
  br i1 %.not.i278, label %._crit_edge2542, label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

bb.e:                                             ; preds = %._crit_edge2542
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !325
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge2542, %bb.e
  %i.as = phi i32 [ %i.ar, %bb.e ], [ -1, %._crit_edge2542 ] ; 2 uses
  br i1 %.not122125403997, label %_ZNK12_GLOBAL__N_18SvaGraph8allEdgesEv.exit, label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %bb.f, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i
  %.sroa.11.0 = phi ptr [ %.sroa.11.3, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i ], [ null, %bb.f ] ; 2 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.2, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i ], [ null, %bb.f ]
  %.sroa.01203.0 = phi ptr [ %.sroa.01203.3, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i ], [ null, %bb.f ] ; 2 uses
  %.val.i.i.i38.i = phi ptr [ %.val.i.i.i39.i, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i ], [ null, %bb.f ] ; 2 uses
  %.promoted21.i = phi ptr [ %.promoted2135.i, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i ], [ null, %bb.f ] ; 3 uses
  %.promoted.i = phi ptr [ %.promoted32.i, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i ], [ null, %bb.f ] ; 2 uses
  %.sroa.07.023.i = phi ptr [ %i.ax, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i ], [ %i.aa, %bb.f ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.07.023.i, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !324, !noalias !591 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  %i.av = select i1 %.not.i.i.i, ptr %.sroa.07.023.i, ptr %i.au
  call void @llvm.prefetch.p0(ptr nonnull %i.av, i32 1, i32 3, i32 1), !noalias !591
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.07.023.i, i64 24
  %.sroa.01.018.i = load ptr, ptr %i.aw, align 8, !tbaa !592, !noalias !591 ; 2 uses
  %.not1219.i = icmp eq ptr %.sroa.01.018.i, null
  br i1 %.not1219.i, label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i, label %.lr.ph.i

_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.loopexit.i: ; preds = %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i
  %.pre.i = load ptr, ptr %i.at, align 8, !tbaa !324, !noalias !591
  br label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i

_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i: ; preds = %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.loopexit.i, %.lr.ph24.i
  %.sroa.11.3 = phi ptr [ %.sroa.11.0, %.lr.ph24.i ], [ %.sroa.11.2, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.loopexit.i ] ; 2 uses
  %.sroa.8.2 = phi ptr [ %.sroa.8.0, %.lr.ph24.i ], [ %.sroa.8.1, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.loopexit.i ] ; 2 uses
  %.sroa.01203.3 = phi ptr [ %.sroa.01203.0, %.lr.ph24.i ], [ %.sroa.01203.2, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.loopexit.i ] ; 2 uses
  %i.ax = phi ptr [ %i.au, %.lr.ph24.i ], [ %.pre.i, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.loopexit.i ] ; 2 uses
  %.val.i.i.i39.i = phi ptr [ %.val.i.i.i38.i, %.lr.ph24.i ], [ %.val.i.i.i40.i, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.loopexit.i ]
  %.promoted2135.i = phi ptr [ %.promoted21.i, %.lr.ph24.i ], [ %.promoted2136.i, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.loopexit.i ]
  %.promoted32.i = phi ptr [ %.promoted.i, %.lr.ph24.i ], [ %.sroa.8.1, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.loopexit.i ]
  %.not.i331 = icmp eq ptr %i.ax, null
  br i1 %.not.i331, label %_ZNK12_GLOBAL__N_18SvaGraph8allEdgesEv.exit.loopexit, label %.lr.ph24.i

.lr.ph.i:                                         ; preds = %.lr.ph24.i, %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i
  %.sroa.11.1 = phi ptr [ %.sroa.11.2, %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i ], [ %.sroa.11.0, %.lr.ph24.i ]
  %.sroa.01203.1 = phi ptr [ %.sroa.01203.2, %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i ], [ %.sroa.01203.0, %.lr.ph24.i ]
  %.val.i.i.i.i = phi ptr [ %.val.i.i.i40.i, %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i ], [ %.val.i.i.i38.i, %.lr.ph24.i ] ; 8 uses
  %.promoted2133.i = phi ptr [ %.promoted2136.i, %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i ], [ %.promoted21.i, %.lr.ph24.i ]
  %i.ay = phi ptr [ %i.bs, %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i ], [ %.promoted21.i, %.lr.ph24.i ] ; 4 uses
  %i.az = phi ptr [ %.sroa.8.1, %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i ], [ %.promoted.i, %.lr.ph24.i ] ; 3 uses
  %.sroa.01.020.i = phi ptr [ %.sroa.01.0.i, %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i ], [ %.sroa.01.018.i, %.lr.ph24.i ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.01.020.i, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !593, !noalias !591 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  %i.bc = select i1 %.not.i.i, ptr %.sroa.01.020.i, ptr %i.bb
  call void @llvm.prefetch.p0(ptr nonnull %i.bc, i32 1, i32 3, i32 1), !noalias !591
  %.not.i.i25.i = icmp eq ptr %i.az, %i.ay
  br i1 %.not.i.i25.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  store ptr %.sroa.01.020.i, ptr %i.az, align 8, !tbaa !595, !noalias !591
  br label %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.bd = ptrtoint ptr %i.ay to i64
  %i.be = ptrtoint ptr %.val.i.i.i.i to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 7 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %bb.i, label %_ZNKSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.522) #30
          to label %.noexc.i333 unwind label %.loopexit.split-lp.i, !noalias !591

.noexc.i333:                                      ; preds = %bb.i
  unreachable

_ZNKSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.h
  %i.bh = ashr exact i64 %i.bf, 3                 ; 3 uses
  %i.bi = icmp eq ptr %i.ay, %.val.i.i.i.i
  %.sroa.speculated.i.i.i.i.i = select i1 %i.bi, i64 1, i64 %i.bh
  %i.bj = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bh ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bh
  %i.bl = call i64 @llvm.umin.i64(i64 %i.bj, i64 1152921504606846975)
  %i.bm = select i1 %i.bk, i64 1152921504606846975, i64 %i.bl ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.bm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #31
          to label %.noexc26.i unwind label %.loopexit.i, !noalias !591 ; 5 uses

.noexc26.i:                                       ; preds = %_ZNKSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %i.bf ; 2 uses
  store ptr %.sroa.01.020.i, ptr %i.bp, align 8, !tbaa !595, !noalias !591
  %i.bq = icmp sgt i64 %i.bf, 0
  br i1 %i.bq, label %bb.j, label %_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i.i

bb.j:                                             ; preds = %.noexc26.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bo, ptr align 8 %.val.i.i.i.i, i64 %i.bf, i1 false), !noalias !591
  br label %_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i.i

_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i.i: ; preds = %bb.j, %.noexc26.i
  %.not.i21.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i21.i.i.i.i, label %_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.bf) #27, !noalias !591
  br label %_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i.i
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bm ; 3 uses
  br label %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i

_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i: ; preds = %_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.g
  %.sroa.11.2 = phi ptr [ %i.br, %_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %.sroa.11.1, %bb.g ] ; 2 uses
  %.pn1222 = phi ptr [ %i.bp, %_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.az, %bb.g ]
  %.sroa.01203.2 = phi ptr [ %i.bo, %_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %.sroa.01203.1, %bb.g ] ; 2 uses
  %.val.i.i.i40.i = phi ptr [ %i.bo, %_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %.val.i.i.i.i, %bb.g ] ; 2 uses
  %.promoted2136.i = phi ptr [ %i.br, %_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %.promoted2133.i, %bb.g ] ; 2 uses
  %i.bs = phi ptr [ %i.br, %_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.ay, %bb.g ]
  %.sroa.8.1 = getelementptr inbounds nuw i8, ptr %.pn1222, i64 8 ; 3 uses
  %.sroa.01.0.i = load ptr, ptr %i.ba, align 8, !tbaa !592, !noalias !591 ; 2 uses
  %.not12.i = icmp eq ptr %.sroa.01.0.i, null
  br i1 %.not12.i, label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp.i:                             ; preds = %bb.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i.i332 = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i.i.i332, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.bf) #27, !noalias !591
  br label %.body

_ZNK12_GLOBAL__N_18SvaGraph8allEdgesEv.exit.loopexit: ; preds = %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIKS0_Lb0EEppEv.exit.i
  %i.bt = ptrtoint ptr %.sroa.11.3 to i64
  br label %_ZNK12_GLOBAL__N_18SvaGraph8allEdgesEv.exit

_ZNK12_GLOBAL__N_18SvaGraph8allEdgesEv.exit:      ; preds = %_ZNK12_GLOBAL__N_18SvaGraph8allEdgesEv.exit.loopexit, %bb.f
  %.sroa.11.4 = phi i64 [ 0, %bb.f ], [ %i.bt, %_ZNK12_GLOBAL__N_18SvaGraph8allEdgesEv.exit.loopexit ] ; 2 uses
  %.sroa.8.3 = phi ptr [ null, %bb.f ], [ %.sroa.8.2, %_ZNK12_GLOBAL__N_18SvaGraph8allEdgesEv.exit.loopexit ] ; 2 uses
  %.sroa.01203.4 = phi ptr [ null, %bb.f ], [ %.sroa.01203.3, %_ZNK12_GLOBAL__N_18SvaGraph8allEdgesEv.exit.loopexit ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #26
  br i1 %.not12202537, label %.preheader.thread, label %.lr.ph.preheader.i.i.i.i.i

.preheader.thread:                                ; preds = %_ZNK12_GLOBAL__N_18SvaGraph8allEdgesEv.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %41, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  br label %._crit_edge2552

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNK12_GLOBAL__N_18SvaGraph8allEdgesEv.exit
  %i.bw = shl nuw nsw i64 %i.ab, 3                ; 3 uses
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #31
          to label %.lr.ph unwind label %bb.n     ; 5 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.bx, ptr %41, align 8, !tbaa !328
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ab
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bx, i8 0, i64 %i.bw, i1 false), !tbaa !597
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.bx, i64 %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !330
  store ptr %scevgep.i.i.i.i.i, ptr %i.bz, align 8, !tbaa !331
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.yx

bb.o:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS1_EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.cc = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #31
          to label %bb.p unwind label %bb.q       ; 3 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cc, i8 0, i64 56, i1 false), !noalias !598
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !332 ; 2 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !332
  %.not.i.i.i.i337 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i337, label %_ZNSt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN12_GLOBAL__N_113SvaVertexDataEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_113SvaVertexDataEEclEPS1_.exit.i.i.i.i: ; preds = %bb.p
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 56) #27
  %.val313.pre = load ptr, ptr %i.cd, align 8, !tbaa !332
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_113SvaVertexDataEEclEPS1_.exit.i.i.i.i, %bb.p
  %.val313 = phi ptr [ %.val313.pre, %_ZNKSt14default_deleteIN12_GLOBAL__N_113SvaVertexDataEEclEPS1_.exit.i.i.i.i ], [ %i.cc, %bb.p ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01211.03992, i64 %indvars.iv
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !317
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  store ptr %.val313, ptr %i.ch, align 8, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %exitcond.not, label %.lr.ph2551, label %bb.o, !llvm.loop !529

bb.q:                                             ; preds = %bb.o
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.yw

._crit_edge2552:                                  ; preds = %._crit_edge2549, %.preheader.thread
  %i.cj = phi ptr [ %i.bu, %.preheader.thread ], [ %i.bz, %._crit_edge2549 ]
  %i.ck = phi ptr [ %i.bv, %.preheader.thread ], [ %i.ca, %._crit_edge2549 ]
  %i.cl = load ptr, ptr %0, align 8, !tbaa !128
  %i.cm = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(152) %i.cl, i8 25)
          to label %bb.t unwind label %bb.ac      ; 2 uses

.lr.ph2551:                                       ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS1_EED2Ev.exit, %._crit_edge2549
  %indvars.iv3635 = phi i64 [ %indvars.iv.next3636, %._crit_edge2549 ], [ 0, %_ZNSt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01211.03992, i64 %indvars.iv3635
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !317
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !599 ; 2 uses
  %.not12262545 = icmp eq ptr %i.cq, null
  br i1 %.not12262545, label %._crit_edge2549, label %.lr.ph2548

._crit_edge2549:                                  ; preds = %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit, %.lr.ph2551
  %indvars.iv.next3636 = add nuw nsw i64 %indvars.iv3635, 1 ; 2 uses
  %exitcond3639.not = icmp eq i64 %indvars.iv.next3636, %i.ab
  br i1 %exitcond3639.not, label %._crit_edge2552, label %.lr.ph2551, !llvm.loop !530

.lr.ph2548:                                       ; preds = %.lr.ph2551, %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit
  %.sroa.01195.02546 = phi ptr [ %i.cs, %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit ], [ %i.cq, %.lr.ph2551 ] ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.01195.02546, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !593 ; 3 uses
  %.not.i282 = icmp eq ptr %i.cs, null            ; 2 uses
  %i.ct = select i1 %.not.i282, ptr %.sroa.01195.02546, ptr %i.cs
  call void @llvm.prefetch.p0(ptr nonnull %i.ct, i32 1, i32 3, i32 1)
  %i.cu = getelementptr i8, ptr %.sroa.01195.02546, i64 48
  %.val315 = load ptr, ptr %i.cu, align 8, !tbaa !600 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val315, i64 64
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !325 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.01195.02546, i64 80
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !313, !range !76, !noundef !77
  %i.cz = trunc nuw i8 %i.cy to i1
  %.not253 = icmp ne i32 %i.cw, %i.as
  %or.cond.not = and i1 %.not253, %i.cz
  br i1 %or.cond.not, label %bb.r, label %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

bb.r:                                             ; preds = %.lr.ph2548
  %i.da = getelementptr inbounds nuw i8, ptr %.val315, i64 160
  %i.db = load i8, ptr %i.da, align 8, !tbaa !333, !range !76, !noundef !77
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dd = sext i32 %i.cw to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01211.03992, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !317
  %i.dg = getelementptr i8, ptr %i.df, i64 72
  %.val324 = load ptr, ptr %i.dg, align 8, !tbaa !28
  %i.dh = getelementptr inbounds nuw i8, ptr %.val324, i64 48
  store i8 1, ptr %i.dh, align 8, !tbaa !602
  br label %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit: ; preds = %.lr.ph2548, %bb.r, %bb.s
  br i1 %.not.i282, label %._crit_edge2549, label %.lr.ph2548

bb.t:                                             ; preds = %._crit_edge2552
  %i.di = invoke noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #31
          to label %bb.u unwind label %bb.ad      ; 6 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.dj = load ptr, ptr %39, align 8, !tbaa !26, !noalias !603
  %i.dk = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 4 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !27, !noalias !603 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 7 uses
  store ptr %i.dm, ptr %42, align 8, !tbaa !29, !alias.scope !604
  %i.dn = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 3 uses
  store i64 0, ptr %i.dn, align 8, !tbaa !27, !alias.scope !604
  store i8 0, ptr %i.dm, align 8, !tbaa !28, !alias.scope !604
  %i.do = add i64 %i.dl, 6
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %42, i64 noundef %i.do)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !27, !alias.scope !604
  %i.dq = sub i64 4611686018427387903, %i.dp
  %i.dr = icmp ult i64 %i.dq, %i.dl
  br i1 %i.dr, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.v
  %i.ds = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef %i.dj, i64 noundef %i.dl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.w ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.dt = load i64, ptr %i.dn, align 8, !tbaa !27, !alias.scope !604
  %i.du = add i64 %i.dt, -4611686018427387898
  %i.dv = icmp ult i64 %i.du, 6
  br i1 %i.dv, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #30
          to label %.cont.i.i unwind label %bb.w

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.dw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @.str.586, i64 noundef 6)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.u
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = load ptr, ptr %42, align 8, !tbaa !26, !alias.scope !604 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dm
  br i1 %i.dz, label %.body339, label %.body339.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  invoke void @_ZN6AstVarC2EP8FileLine8VVarTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP12AstNodeDType(ptr noundef nonnull align 8 dereferenceable(280) %i.di, ptr noundef %1, i8 17, ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef %i.cm)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ea = load ptr, ptr %42, align 8, !tbaa !26   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.dm
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341: ; preds = %bb.x
  %i.ec = load i64, ptr %i.dm, align 8, !tbaa !28
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #26
  %i.ee = getelementptr inbounds nuw i8, ptr %i.di, i64 251
  store i8 3, ptr %i.ee, align 1, !tbaa !260
  %i.ef = load ptr, ptr %0, align 8, !tbaa !128
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(306) %i.ef, ptr noundef nonnull %i.di)
          to label %_ZN13AstNodeModule9addStmtspEP7AstNode.exit.preheader unwind label %bb.ad

_ZN13AstNodeModule9addStmtspEP7AstNode.exit.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343
  br i1 %.not12202537, label %_ZN13AstNodeModule9addStmtspEP7AstNode.exit._crit_edge, label %.lr.ph2555

.lr.ph2555:                                       ; preds = %_ZN13AstNodeModule9addStmtspEP7AstNode.exit.preheader
  %i.eg = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 9 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 7 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 10 uses
  %i.el = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 9 uses
  %i.en = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 7 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 10 uses
  %i.er = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 7 uses
  %i.et = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 9 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 7 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 10 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 7 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 7 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 3 uses
  %i.fg = zext i32 %i.af to i64
  br label %bb.af

_ZN13AstNodeModule9addStmtspEP7AstNode.exit._crit_edge: ; preds = %_ZN13AstNodeModule9addStmtspEP7AstNode.exit, %_ZN13AstNodeModule9addStmtspEP7AstNode.exit.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #26
  store ptr %1, ptr %56, align 8, !tbaa !341
  %i.fh = getelementptr inbounds nuw i8, ptr %56, i64 8
  store i32 %.0143.lcssa39813990, ptr %i.fh, align 8, !tbaa !605
  %i.fi = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 49 uses
  %i.fj = ptrtoint ptr %.0.i.i.i.i.i.i.i3996 to i64
  %i.fk = ptrtoint ptr %.sroa.01211.03992 to i64  ; 2 uses
  %i.fl = sub i64 %i.fj, %i.fk                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, i8 0, i64 24, i1 false)
  %.not.i.i.i.i346 = icmp eq ptr %.0.i.i.i.i.i.i.i3996, %.sroa.01211.03992
  br i1 %.not.i.i.i.i346, label %.thread, label %bb.y

.thread:                                          ; preds = %_ZN13AstNodeModule9addStmtspEP7AstNode.exit._crit_edge
  %i.fm = getelementptr inbounds nuw i8, ptr %56, i64 24
  %i.fn = getelementptr inbounds i8, ptr null, i64 %i.fl ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %56, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, i8 0, i64 16, i1 false)
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !342
  br label %bb.dv

bb.y:                                             ; preds = %_ZN13AstNodeModule9addStmtspEP7AstNode.exit._crit_edge
  %i.fp = icmp ugt i64 %i.fl, 9223372036854775800
  br i1 %i.fp, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i, !prof !20

.noexc.i.i:                                       ; preds = %bb.y
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc347 unwind label %bb.xf

.noexc347:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.y
  %i.fq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #31
          to label %.noexc348 unwind label %bb.xf ; 5 uses

.noexc348:                                        ; preds = %_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.fq, ptr %i.fi, align 8, !tbaa !343
  %i.fr = getelementptr inbounds nuw i8, ptr %56, i64 24 ; 4 uses
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !344
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fl ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %56, i64 32 ; 4 uses
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !342
  %i.fu = icmp samesign ugt i64 %i.fl, 8
  br i1 %i.fu, label %bb.z, label %bb.aa, !prof !345

bb.z:                                             ; preds = %.noexc348
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fq, ptr align 8 %.sroa.01211.03992, i64 %i.fl, i1 false)
  br label %bb.dv

bb.aa:                                            ; preds = %.noexc348
  %i.fv = icmp eq i64 %i.fl, 8
  br i1 %i.fv, label %bb.ab, label %bb.dv

bb.ab:                                            ; preds = %bb.aa
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.01211.03992, align 8, !tbaa !317
  store ptr %.val.i.i.i.i.i.i.i.i.i, ptr %i.fq, align 8, !tbaa !317
  br label %bb.dv

bb.ac:                                            ; preds = %._crit_edge2552
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.yw

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, %bb.t
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.yw

bb.ae:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fz = load ptr, ptr %42, align 8, !tbaa !26   ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.dm
  br i1 %i.ga, label %.body339, label %.body339.sink.split

.body339.sink.split:                              ; preds = %bb.ae, %bb.w
  %.sink = phi ptr [ %i.dy, %bb.w ], [ %i.fz, %bb.ae ]
  %.pn199.ph = phi { ptr, i32 } [ %i.dx, %bb.w ], [ %i.fy, %bb.ae ]
  %i.gb = load i64, ptr %i.dm, align 8, !tbaa !28
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.gc) #27
  br label %.body339

.body339:                                         ; preds = %.body339.sink.split, %bb.ae, %bb.w
  %.pn199 = phi { ptr, i32 } [ %i.dx, %bb.w ], [ %i.fy, %bb.ae ], [ %.pn199.ph, %.body339.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef 280) #27
  br label %bb.yw

bb.af:                                            ; preds = %.lr.ph2555, %_ZN13AstNodeModule9addStmtspEP7AstNode.exit
  %indvars.iv3640 = phi i64 [ 0, %.lr.ph2555 ], [ %indvars.iv.next3641, %_ZN13AstNodeModule9addStmtspEP7AstNode.exit ] ; 15 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01211.03992, i64 %indvars.iv3640 ; 6 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !317 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 121
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !306, !range !76, !noundef !77
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.ag, label %bb.bn

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %i.gi = load ptr, ptr %39, align 8, !tbaa !26, !noalias !606
  %i.gj = load i64, ptr %i.dk, align 8, !tbaa !27, !noalias !606 ; 3 uses
  store ptr %i.ew, ptr %44, align 8, !tbaa !29, !alias.scope !607
  store i64 0, ptr %i.ex, align 8, !tbaa !27, !alias.scope !607
  store i8 0, ptr %i.ew, align 8, !tbaa !28, !alias.scope !607
  %i.gk = add i64 %i.gj, 3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %44, i64 noundef %i.gk)
          to label %bb.ah unwind label %.loopexit1293

bb.ah:                                            ; preds = %bb.ag
  %i.gl = load i64, ptr %i.ex, align 8, !tbaa !27, !alias.scope !607
  %i.gm = sub i64 4611686018427387903, %i.gl
  %i.gn = icmp ult i64 %i.gm, %i.gj
  br i1 %i.gn, label %.invoke.i.i358, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i355: ; preds = %bb.ah
  %i.go = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef %i.gi, i64 noundef %i.gj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i356 unwind label %.loopexit1293 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i356: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i355
  %i.gp = load i64, ptr %i.ex, align 8, !tbaa !27, !alias.scope !607
  %i.gq = add i64 %i.gp, -4611686018427387901
  %i.gr = icmp ult i64 %i.gq, 3
  br i1 %i.gr, label %.invoke.i.i358, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i357

.invoke.i.i358:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i356, %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #30
          to label %.cont.i.i359 unwind label %.loopexit.split-lp1294

.cont.i.i359:                                     ; preds = %.invoke.i.i358
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i357: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i356
  %i.gs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull @.str.587, i64 noundef 3)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit362 unwind label %.loopexit1293 ; 0 uses

.loopexit1293:                                    ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i355, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i357
  %lpad.loopexit1295 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp1294:                           ; preds = %.invoke.i.i358
  %lpad.loopexit.split-lp1296 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit.split-lp1294, %.loopexit1293
  %lpad.phi1297 = phi { ptr, i32 } [ %lpad.loopexit1295, %.loopexit1293 ], [ %lpad.loopexit.split-lp1296, %.loopexit.split-lp1294 ] ; 2 uses
  %i.gt = load ptr, ptr %44, align 8, !tbaa !26, !alias.scope !607 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.ew
  br i1 %i.gu, label %.body360, label %.body360.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit362: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i357
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.gv = icmp samesign ult i64 %indvars.iv3640, 10
  br i1 %i.gv, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit362
  %i.gw = trunc nuw nsw i64 %indvars.iv3640 to i32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.ao
  %.030.i.i = phi i32 [ %i.he, %bb.ao ], [ 1, %.lr.ph.i.i.preheader ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.hd, %bb.ao ], [ %i.gw, %.lr.ph.i.i.preheader ] ; 5 uses
  %i.gx = icmp samesign ult i32 %.02329.i.i, 100
  br i1 %i.gx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.gy = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.ak:                                            ; preds = %.lr.ph.i.i
  %i.gz = icmp samesign ult i32 %.02329.i.i, 1000
  br i1 %i.gz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ha = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.hb = icmp samesign ult i32 %.02329.i.i, 10000
  br i1 %i.hb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hc = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.hd = udiv i32 %.02329.i.i, 10000
  %i.he = add i32 %.030.i.i, 4                    ; 2 uses
  %i.hf = icmp samesign ult i32 %.02329.i.i, 100000
  br i1 %i.hf, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !6

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.ao, %bb.an, %bb.al, %bb.aj, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit362
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_114SvaNfaLowering5lowerEP8FileLineRNS_8SvaGraphEP11AstNodeExprP10AstSenTreeS6_bS6_bPS6_P6AstVarSB_PSt6vectorIS6_SaIS6_EESF_11VAssertType20VAssertDirectiveType:._crit_edge.i.i

bb.di:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i548
  %i.wr = landingpad { ptr, i32 }
          catch ptr null
  %i.ws = extractvalue { ptr, i32 } %i.wr, 0
  call void @__clang_call_terminate(ptr %i.ws) #29
  unreachable

_ZNSt7__cxx119to_stringEi.exit559:                ; preds = %bb.dg, %bb.dh
  %storemerge.i.i554 = phi i8 [ %i.wq, %bb.dh ], [ %i.wo, %bb.dg ]
  store i8 %storemerge.i.i554, ptr %i.vo, align 1, !tbaa !28
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.wt = load i64, ptr %i.eh, align 8, !tbaa !27, !noalias !629 ; 4 uses
  %i.wu = load i64, ptr %i.ej, align 8, !tbaa !27, !noalias !629 ; 4 uses
  %i.wv = add i64 %i.wu, %i.wt                    ; 2 uses
  %i.ww = load ptr, ptr %54, align 8, !tbaa !26, !noalias !629 ; 2 uses
  %i.wx = icmp eq ptr %i.ww, %i.eg
  br i1 %i.wx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i572, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i560

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i572: ; preds = %_ZNSt7__cxx119to_stringEi.exit559
  %i.wy = icmp ult i64 %i.wt, 16
  call void @llvm.assume(i1 %i.wy)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i561

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i560: ; preds = %_ZNSt7__cxx119to_stringEi.exit559
  %i.wz = load i64, ptr %i.eg, align 8, !tbaa !28, !noalias !629
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i561

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i561: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i560, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i572
  %i.xa = phi i64 [ %i.wz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i560 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i572 ]
  %i.xb = icmp ugt i64 %i.wv, %i.xa
  br i1 %i.xb, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i561
  %i.xc = load ptr, ptr %55, align 8, !tbaa !26, !noalias !629
  %i.xd = icmp eq ptr %i.xc, %i.ei
  br i1 %i.xd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i571, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i565

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i571: ; preds = %bb.dj
  %i.xe = icmp ult i64 %i.wu, 16
  call void @llvm.assume(i1 %i.xe)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i566

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i565: ; preds = %bb.dj
  %i.xf = load i64, ptr %i.ei, align 8, !tbaa !28, !noalias !629
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i566

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i566: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i565, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i571
  %i.xg = phi i64 [ %i.xf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i565 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i571 ]
  %.not.i567 = icmp ugt i64 %i.wv, %i.xg
  br i1 %.not.i567, label %bb.dl, label %.critedge.i568

.critedge.i568:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i566
  %i.xh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %55, i64 noundef 0, i64 noundef 0, ptr noundef %i.ww, i64 noundef %i.wt)
          to label %.noexc573 unwind label %.loopexit1268 ; 5 uses

.noexc573:                                        ; preds = %.critedge.i568
  store ptr %i.ek, ptr %53, align 8, !tbaa !29, !alias.scope !629
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !26 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xh, i64 16 ; 5 uses
  %i.xk = icmp eq ptr %i.xi, %i.xj
  br i1 %i.xk, label %bb.dk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i569

bb.dk:                                            ; preds = %.noexc573
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %i.xm = load i64, ptr %i.xl, align 8, !tbaa !27 ; 2 uses
  %i.xn = icmp ult i64 %i.xm, 16
  call void @llvm.assume(i1 %i.xn)
  %i.xo = add nuw nsw i64 %i.xm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ek, ptr noundef nonnull align 8 dereferenceable(1) %i.xj, i64 %i.xo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i570

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i569: ; preds = %.noexc573
  store ptr %i.xi, ptr %53, align 8, !tbaa !26, !alias.scope !629
  %i.xp = load i64, ptr %i.xj, align 8, !tbaa !28
  store i64 %i.xp, ptr %i.ek, align 8, !tbaa !28, !alias.scope !629
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i570

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i570: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i569, %bb.dk
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xh, i64 8 ; 2 uses
  %i.xr = load i64, ptr %i.xq, align 8, !tbaa !27
  store i64 %i.xr, ptr %i.el, align 8, !tbaa !27, !alias.scope !629
  store ptr %i.xj, ptr %i.xh, align 8, !tbaa !26
  store i64 0, ptr %i.xq, align 8, !tbaa !27
  store i8 0, ptr %i.xj, align 8, !tbaa !28
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit576

bb.dl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i566, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i561
  %i.xs = sub i64 4611686018427387903, %i.wt
  %i.xt = icmp ult i64 %i.xs, %i.wu
  br i1 %i.xt, label %bb.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i562

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #30
          to label %.noexc574 unwind label %.loopexit.split-lp1269

.noexc574:                                        ; preds = %bb.dm
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i562: ; preds = %bb.dl
  %i.xu = load ptr, ptr %55, align 8, !tbaa !26, !noalias !629
  %i.xv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef %i.xu, i64 noundef %i.wu)
          to label %.noexc575 unwind label %.loopexit1268 ; 5 uses

.noexc575:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i562
  store ptr %i.ek, ptr %53, align 8, !tbaa !29, !alias.scope !629
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !26 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xv, i64 16 ; 5 uses
  %i.xy = icmp eq ptr %i.xw, %i.xx
  br i1 %i.xy, label %bb.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i563

bb.dn:                                            ; preds = %.noexc575
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  %i.ya = load i64, ptr %i.xz, align 8, !tbaa !27 ; 2 uses
  %i.yb = icmp ult i64 %i.ya, 16
  call void @llvm.assume(i1 %i.yb)
  %i.yc = add nuw nsw i64 %i.ya, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ek, ptr noundef nonnull align 8 dereferenceable(1) %i.xx, i64 %i.yc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i564

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i563: ; preds = %.noexc575
  store ptr %i.xw, ptr %53, align 8, !tbaa !26, !alias.scope !629
  %i.yd = load i64, ptr %i.xx, align 8, !tbaa !28
  store i64 %i.yd, ptr %i.ek, align 8, !tbaa !28, !alias.scope !629
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i564

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i564: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i563, %bb.dn
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xv, i64 8 ; 2 uses
  %i.yf = load i64, ptr %i.ye, align 8, !tbaa !27
  store i64 %i.yf, ptr %i.el, align 8, !tbaa !27, !alias.scope !629
  store ptr %i.xx, ptr %i.xv, align 8, !tbaa !26
  store i64 0, ptr %i.ye, align 8, !tbaa !27
  store i8 0, ptr %i.xx, align 8, !tbaa !28
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit576

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit576: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i564, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i570
  %i.yg = load ptr, ptr %55, align 8, !tbaa !26   ; 2 uses
  %i.yh = icmp eq ptr %i.yg, %i.ei
  br i1 %i.yh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit576
  %i.yi = load i64, ptr %i.ei, align 8, !tbaa !28
  %i.yj = add i64 %i.yi, 1
  call void @_ZdlPvm(ptr noundef %i.yg, i64 noundef %i.yj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit576, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26
  %i.yk = load ptr, ptr %54, align 8, !tbaa !26   ; 2 uses
  %i.yl = icmp eq ptr %i.yk, %i.eg
  br i1 %i.yl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579
  %i.ym = load i64, ptr %i.eg, align 8, !tbaa !28
  %i.yn = add i64 %i.ym, 1
  call void @_ZdlPvm(ptr noundef %i.yk, i64 noundef %i.yn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  %i.yo = invoke noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #31
          to label %bb.do unwind label %bb.ds     ; 5 uses

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582
  %i.yp = load ptr, ptr %0, align 8, !tbaa !128
  %i.yq = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(152) %i.yp, i8 1)
          to label %_ZNK7AstNode12findBitDTypeEv.exit584 unwind label %bb.dt

_ZNK7AstNode12findBitDTypeEv.exit584:             ; preds = %bb.do
  invoke void @_ZN6AstVarC2EP8FileLine8VVarTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP12AstNodeDType(ptr noundef nonnull align 8 dereferenceable(280) %i.yo, ptr noundef %1, i8 17, ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef %i.yq)
          to label %bb.dp unwind label %bb.dt

bb.dp:                                            ; preds = %_ZNK7AstNode12findBitDTypeEv.exit584
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yo, i64 251
  store i8 3, ptr %i.yr, align 1, !tbaa !260
  %i.ys = load ptr, ptr %0, align 8, !tbaa !128
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(306) %i.ys, ptr noundef nonnull %i.yo)
          to label %bb.dq unwind label %bb.ds

bb.dq:                                            ; preds = %bb.dp
  %i.yt = load ptr, ptr %i.gd, align 8, !tbaa !317
  %i.yu = getelementptr i8, ptr %i.yt, i64 72
  %.val318 = load ptr, ptr %i.yu, align 8, !tbaa !28
  store ptr %i.yo, ptr %.val318, align 8, !tbaa !630
  %i.yv = load ptr, ptr %53, align 8, !tbaa !26   ; 2 uses
  %i.yw = icmp eq ptr %i.yv, %i.ek
  br i1 %i.yw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588: ; preds = %bb.dq
  %i.yx = load i64, ptr %i.ek, align 8, !tbaa !28
  %i.yy = add i64 %i.yx, 1
  call void @_ZdlPvm(ptr noundef %i.yv, i64 noundef %i.yy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #26
  br label %_ZN13AstNodeModule9addStmtspEP7AstNode.exit

_ZN13AstNodeModule9addStmtspEP7AstNode.exit:      ; preds = %bb.cw, %bb.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415
  %indvars.iv.next3641 = add nuw nsw i64 %indvars.iv3640, 1 ; 2 uses
  %exitcond3644.not = icmp eq i64 %indvars.iv.next3641, %i.ab
  br i1 %exitcond3644.not, label %_ZN13AstNodeModule9addStmtspEP7AstNode.exit._crit_edge, label %bb.af, !llvm.loop !575

.loopexit1268:                                    ; preds = %.critedge.i568, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i562
  %lpad.loopexit1270 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

.loopexit.split-lp1269:                           ; preds = %bb.dm
  %lpad.loopexit.split-lp1271 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dr:                                            ; preds = %.loopexit.split-lp1269, %.loopexit1268
  %lpad.phi1272 = phi { ptr, i32 } [ %lpad.loopexit1270, %.loopexit1268 ], [ %lpad.loopexit.split-lp1271, %.loopexit.split-lp1269 ] ; 2 uses
  %i.yz = load ptr, ptr %55, align 8, !tbaa !26   ; 2 uses
  %i.za = icmp eq ptr %i.yz, %i.ei
  br i1 %i.za, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591: ; preds = %bb.dr
  %i.zb = load i64, ptr %i.ei, align 8, !tbaa !28
  %i.zc = add i64 %i.zb, 1
  call void @_ZdlPvm(ptr noundef %i.yz, i64 noundef %i.zc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26
  %i.zd = load ptr, ptr %54, align 8, !tbaa !26   ; 2 uses
  %i.ze = icmp eq ptr %i.zd, %i.eg
  br i1 %i.ze, label %.body542, label %.body542.sink.split

.body542.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593, %bb.cz
  %.sink6153 = phi ptr [ %i.va, %bb.cz ], [ %i.zd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593 ]
  %.pn225.ph = phi { ptr, i32 } [ %lpad.phi1267, %bb.cz ], [ %lpad.phi1272, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593 ]
  %i.zf = load i64, ptr %i.eg, align 8, !tbaa !28
  %i.zg = add i64 %i.zf, 1
  call void @_ZdlPvm(ptr noundef %.sink6153, i64 noundef %i.zg) #27
  br label %.body542

.body542:                                         ; preds = %.body542.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593, %bb.cz
  %.pn225 = phi { ptr, i32 } [ %lpad.phi1267, %bb.cz ], [ %lpad.phi1272, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593 ], [ %.pn225.ph, %.body542.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599

bb.ds:                                            ; preds = %bb.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582
  %i.zh = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dt:                                            ; preds = %bb.do, %_ZNK7AstNode12findBitDTypeEv.exit584
  %i.zi = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.yo, i64 noundef 280) #27
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.pn227 = phi { ptr, i32 } [ %i.zh, %bb.ds ], [ %i.zi, %bb.dt ] ; 2 uses
  %i.zj = load ptr, ptr %53, align 8, !tbaa !26   ; 2 uses
  %i.zk = icmp eq ptr %i.zj, %i.ek
  br i1 %i.zk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597: ; preds = %bb.du
  %i.zl = load i64, ptr %i.ek, align 8, !tbaa !28
  %i.zm = add i64 %i.zl, 1
  call void @_ZdlPvm(ptr noundef %i.zj, i64 noundef %i.zm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597, %.body542
  %.pn227.pn = phi { ptr, i32 } [ %.pn225, %.body542 ], [ %.pn227, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597 ], [ %.pn227, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #26
  br label %bb.yw

bb.dv:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %.thread
  %i.zn = phi ptr [ %i.ft, %bb.z ], [ %i.ft, %bb.aa ], [ %i.ft, %bb.ab ], [ %i.fo, %.thread ]
  %i.zo = phi ptr [ %i.fs, %bb.z ], [ %i.fs, %bb.aa ], [ %i.fs, %bb.ab ], [ %i.fn, %.thread ]
  %i.zp = phi ptr [ %i.fr, %bb.z ], [ %i.fr, %bb.aa ], [ %i.fr, %bb.ab ], [ %i.fm, %.thread ]
  store ptr %i.zo, ptr %i.zp, align 8, !tbaa !344
  %i.zq = getelementptr inbounds nuw i8, ptr %56, i64 40 ; 7 uses
  %i.zr = ptrtoint ptr %.sroa.8.3 to i64
  %i.zs = ptrtoint ptr %.sroa.01203.4 to i64      ; 2 uses
  %i.zt = sub i64 %i.zr, %i.zs                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zq, i8 0, i64 24, i1 false)
  %.not.i.i.i.i600 = icmp eq ptr %.sroa.8.3, %.sroa.01203.4
  br i1 %.not.i.i.i.i600, label %.thread1.i, label %bb.dw

.thread1.i:                                       ; preds = %bb.dv
  %i.zu = getelementptr inbounds nuw i8, ptr %56, i64 48
  %i.zv = getelementptr inbounds i8, ptr null, i64 %i.zt ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %56, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zq, i8 0, i64 16, i1 false)
  store ptr %i.zv, ptr %i.zw, align 8, !tbaa !631
  br label %bb.eb

bb.dw:                                            ; preds = %bb.dv
  %i.zx = icmp ugt i64 %i.zt, 9223372036854775800
  br i1 %i.zx, label %.noexc.i.i602, label %bb.dx, !prof !20

.noexc.i.i602:                                    ; preds = %bb.dw
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc603 unwind label %bb.xg

.noexc603:                                        ; preds = %.noexc.i.i602
  unreachable

bb.dx:                                            ; preds = %bb.dw
  %i.zy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zt) #31
          to label %.noexc604 unwind label %bb.xg ; 5 uses

.noexc604:                                        ; preds = %bb.dx
  store ptr %i.zy, ptr %i.zq, align 8, !tbaa !632
  %i.zz = getelementptr inbounds nuw i8, ptr %56, i64 48 ; 4 uses
  store ptr %i.zy, ptr %i.zz, align 8, !tbaa !633
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.zt ; 4 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %56, i64 56
  store ptr %i.aaa, ptr %i.aab, align 8, !tbaa !631
  %i.aac = icmp samesign ugt i64 %i.zt, 8
  br i1 %i.aac, label %bb.dy, label %bb.dz, !prof !345

bb.dy:                                            ; preds = %.noexc604
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.zy, ptr align 8 %.sroa.01203.4, i64 %i.zt, i1 false)
  br label %bb.eb

bb.dz:                                            ; preds = %.noexc604
  %i.aad = icmp eq i64 %i.zt, 8
  br i1 %i.aad, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %.val.i.i.i.i.i.i.i.i.i601 = load ptr, ptr %.sroa.01203.4, align 8, !tbaa !595
  store ptr %.val.i.i.i.i.i.i.i.i.i601, ptr %i.zy, align 8, !tbaa !595
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz, %bb.dy, %.thread1.i
  %i.aae = phi ptr [ %i.aaa, %bb.ea ], [ %i.aaa, %bb.dz ], [ %i.aaa, %bb.dy ], [ %i.zv, %.thread1.i ]
  %i.aaf = phi ptr [ %i.zz, %bb.ea ], [ %i.zz, %bb.dz ], [ %i.zz, %bb.dy ], [ %i.zu, %.thread1.i ]
  store ptr %i.aae, ptr %i.aaf, align 8, !tbaa !633
  %i.aag = getelementptr inbounds nuw i8, ptr %56, i64 64
  store i32 %i.af, ptr %i.aag, align 8, !tbaa !634
  %i.aah = getelementptr inbounds nuw i8, ptr %56, i64 68
  store i32 %i.as, ptr %i.aah, align 4, !tbaa !635
  %i.aai = getelementptr inbounds nuw i8, ptr %56, i64 72
  store ptr %4, ptr %i.aai, align 8, !tbaa !636
  %i.aaj = getelementptr inbounds nuw i8, ptr %56, i64 80 ; 2 uses
  store ptr %7, ptr %i.aaj, align 8, !tbaa !637
  %i.aak = getelementptr inbounds nuw i8, ptr %56, i64 88
  store ptr %5, ptr %i.aak, align 8, !tbaa !638
  %i.aal = getelementptr inbounds nuw i8, ptr %56, i64 96
  store ptr %10, ptr %i.aal, align 8, !tbaa !639
  %i.aam = getelementptr inbounds nuw i8, ptr %56, i64 104
  store ptr %11, ptr %i.aam, align 8, !tbaa !640
  %i.aan = getelementptr inbounds nuw i8, ptr %56, i64 112
  store i8 %14, ptr %i.aan, align 8, !tbaa !208
  %i.aao = getelementptr inbounds nuw i8, ptr %56, i64 113
  store i8 %15, ptr %i.aao, align 1, !tbaa !209
  %i.aap = getelementptr inbounds nuw i8, ptr %56, i64 120
  store ptr %i.di, ptr %i.aap, align 8, !tbaa !347
  %i.aaq = getelementptr inbounds nuw i8, ptr %56, i64 128
  store ptr %2, ptr %i.aaq, align 8, !tbaa !188
  %i.aar = invoke noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %3, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %.noexc617 unwind label %.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc617:                                        ; preds = %bb.eb
  %i.aas = sext i32 %i.af to i64
  %.val206.i = load ptr, ptr %i.fi, align 8, !tbaa !343 ; 2 uses
  %i.aat = getelementptr inbounds nuw [8 x i8], ptr %.val206.i, i64 %i.aas
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !317
  %i.aav = getelementptr i8, ptr %i.aau, i64 72
  %.val231.i = load ptr, ptr %i.aav, align 8, !tbaa !28
  %i.aaw = getelementptr inbounds nuw i8, ptr %.val231.i, i64 40
  store ptr %i.aar, ptr %i.aaw, align 8, !tbaa !641
  br i1 %.not12202537, label %_ZN12_GLOBAL__N_114SvaNfaLowering27emitAndCombinerDoneLatchNbaERNS0_8LowerCtxE.exit, label %.lr.ph.i616

.preheader26.i:                                   ; preds = %bb.ej
  %i.aax = shl nuw nsw i32 %.0143.lcssa39813990, 1
  br label %.preheader25.i

.lr.ph.i616:                                      ; preds = %.noexc617, %bb.ej
  %.val205.i = phi ptr [ %.val205142.i, %bb.ej ], [ %.val206.i, %.noexc617 ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ej ], [ 0, %.noexc617 ] ; 6 uses
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %.val205.i, i64 %indvars.iv.i
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !317
  %i.aba = getelementptr i8, ptr %i.aaz, i64 72
  %.val230.i = load ptr, ptr %i.aba, align 8, !tbaa !28 ; 2 uses
  %i.abb = load ptr, ptr %.val230.i, align 8, !tbaa !630
  %.not169.i = icmp eq ptr %i.abb, null
  br i1 %.not169.i, label %bb.ef, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph.i616
  %i.abc = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #31
          to label %.noexc618 unwind label %.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc618:                                        ; preds = %bb.ec
  %.val204.i = load ptr, ptr %i.fi, align 8, !tbaa !343
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %.val204.i, i64 %indvars.iv.i
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !317
  %i.abf = getelementptr i8, ptr %i.abe, i64 72
  %.val229.i = load ptr, ptr %i.abf, align 8, !tbaa !28
  %i.abg = load ptr, ptr %.val229.i, align 8, !tbaa !630
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  store i8 0, ptr %35, align 1, !tbaa !318
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.abc, ptr noundef %1, ptr noundef %i.abg, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %bb.ed unwind label %bb.ee
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_114SvaNfaLowering5lowerEP8FileLineRNS_8SvaGraphEP11AstNodeExprP10AstSenTreeS6_bS6_bPS6_P6AstVarSB_PSt6vectorIS6_SaIS6_EESF_11VAssertType20VAssertDirectiveType:._crit_edge.i.i
  %i.ccj = load ptr, ptr %i.cci, align 8, !tbaa !259
  %.not.i.i.i276.i = icmp eq ptr %i.ccj, %i.cch
  br i1 %.not.i.i.i276.i, label %_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit277.i, label %bb.wo

bb.wo:                                            ; preds = %.noexc5.i275.i
  store ptr %i.cch, ptr %i.cci, align 8, !tbaa !259
  %i.cck = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90
  %i.ccl = add i64 %i.cck, 1
  store i64 %i.ccl, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90
  br label %_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit277.i

bb.wp:                                            ; preds = %.noexc.i274.i, %.noexc1081
  %i.ccm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ccd, i64 noundef 152) #27
  br label %.body621

_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit277.i: ; preds = %bb.wo, %.noexc5.i275.i
  %i.ccn = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31
          to label %.noexc1082 unwind label %bb.xi ; 11 uses

.noexc1082:                                       ; preds = %_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit277.i
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.ccn, i16 220, ptr noundef %1)
          to label %.noexc280.i unwind label %bb.wr

.noexc280.i:                                      ; preds = %.noexc1082
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.ccn, align 8, !tbaa !79
  %i.cco = getelementptr inbounds nuw i8, ptr %i.ccn, i64 152
  store i64 0, ptr %i.cco, align 8
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.ccn, ptr noundef %i.ccb)
          to label %.noexc281.i unwind label %bb.wr

.noexc281.i:                                      ; preds = %.noexc280.i
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.ccn, ptr noundef nonnull %i.ccd)
          to label %.noexc282.i unwind label %bb.wr

.noexc282.i:                                      ; preds = %.noexc281.i
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV9AstLogAnd, i64 16), ptr %i.ccn, align 8, !tbaa !79
  %i.ccp = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(160) %i.ccn, i8 1)
          to label %.noexc283.i unwind label %bb.wr ; 2 uses

.noexc283.i:                                      ; preds = %.noexc282.i
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.ccn, i64 72 ; 2 uses
  %i.ccr = load ptr, ptr %i.ccq, align 8, !tbaa !259
  %.not.i.i.i279.i = icmp eq ptr %i.ccr, %i.ccp
  br i1 %.not.i.i.i279.i, label %.thread.i990, label %bb.wq

bb.wq:                                            ; preds = %.noexc283.i
  store ptr %i.ccp, ptr %i.ccq, align 8, !tbaa !259
  %i.ccs = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90
  %i.cct = add i64 %i.ccs, 1
  store i64 %i.cct, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90
  br label %.thread.i990

bb.wr:                                            ; preds = %.noexc282.i, %.noexc281.i, %.noexc280.i, %.noexc1082
  %i.ccu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ccn, i64 noundef 160) #27
  br label %.body621

.thread.i990:                                     ; preds = %bb.wq, %.noexc283.i, %.noexc1079
  %.0.i = phi ptr [ %i.ccb, %.noexc1079 ], [ %i.ccn, %.noexc283.i ], [ %i.ccn, %bb.wq ]
  store ptr %.0.i, ptr %9, align 8, !tbaa !182
  br label %bb.wt

bb.ws:                                            ; preds = %_ZN9AstLogAndC2EP8FileLineP11AstNodeExprS3_.exit273.i
  %.not163.i = icmp eq ptr %.sroa.01172.3, null
  br i1 %.not163.i, label %.noexc1083, label %bb.wt

bb.wt:                                            ; preds = %bb.ws, %.thread.i990
  invoke void @_ZN7AstNode10deleteTreeEv(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.01172.3)
          to label %.noexc1083 unwind label %bb.xi

.noexc1083:                                       ; preds = %bb.wt, %bb.ws
  %.not164.i = icmp eq ptr %.sroa.28.2, null
  br i1 %.not164.i, label %.noexc1084, label %bb.wu

bb.wu:                                            ; preds = %.noexc1083
  %i.ccv = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_114SvaNfaLowering7orExprsEP8FileLineP11AstNodeExprS4_(ptr noundef %1, ptr noundef %.0115.i, ptr noundef nonnull %.sroa.28.2)
          to label %.noexc1084 unwind label %bb.xi

.noexc1084:                                       ; preds = %bb.wu, %.noexc1083
  %.1.i = phi ptr [ %.0115.i, %.noexc1083 ], [ %i.ccv, %bb.wu ] ; 2 uses
  %.not165.i = icmp eq ptr %.sroa.23.3, null
  br i1 %.not165.i, label %.noexc1085, label %bb.wv

bb.wv:                                            ; preds = %.noexc1084
  %i.ccw = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_114SvaNfaLowering7orExprsEP8FileLineP11AstNodeExprS4_(ptr noundef %1, ptr noundef %.1.i, ptr noundef nonnull %.sroa.23.3)
          to label %.noexc1085 unwind label %bb.xi

.noexc1085:                                       ; preds = %bb.wv, %.noexc1084
  %.2.i991 = phi ptr [ %.1.i, %.noexc1084 ], [ %i.ccw, %bb.wv ] ; 3 uses
  %.not166.i = icmp eq ptr %.2.i991, null
  br i1 %.not166.i, label %bb.ww, label %bb.xa

bb.ww:                                            ; preds = %.noexc1085
  %i.ccx = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #31
          to label %.noexc1086 unwind label %bb.xi ; 9 uses

.noexc1086:                                       ; preds = %bb.ww
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.ccx, i16 121, ptr noundef %1)
          to label %.noexc287.i996 unwind label %bb.wz

.noexc287.i996:                                   ; preds = %.noexc1086
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.ccx, align 8, !tbaa !79
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.ccx, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.ccy, ptr noundef nonnull align 8 dereferenceable(208) %i.ccx, i32 noundef 1, i32 noundef 1, i1 noundef zeroext true)
          to label %.noexc288.i unwind label %bb.wz

.noexc288.i:                                      ; preds = %.noexc287.i996
  %i.ccz = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(208) %i.ccx, i8 1)
          to label %.noexc.i285.i unwind label %bb.wy ; 2 uses

.noexc.i285.i:                                    ; preds = %.noexc288.i
  %i.cda = getelementptr inbounds nuw i8, ptr %i.ccx, i64 72 ; 2 uses
  %i.cdb = load ptr, ptr %i.cda, align 8, !tbaa !259
  %.not.i.i.i286.i = icmp eq ptr %i.cdb, %i.ccz
  br i1 %.not.i.i.i286.i, label %_ZN12_GLOBAL__N_114SvaNfaLowering14assembleResultEP8FileLinebbP11AstNodeExprS4_S4_S4_S4_PS4_.exit, label %bb.wx

bb.wx:                                            ; preds = %.noexc.i285.i
  store ptr %i.ccz, ptr %i.cda, align 8, !tbaa !259
  br label %_ZN8AstConstC2EP8FileLineNS_8BitFalseE.exit.sink.split.i

bb.wy:                                            ; preds = %.noexc288.i
  %i.cdc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ccy) #26
  br label %.body289.i

bb.wz:                                            ; preds = %.noexc287.i996, %.noexc1086
  %i.cdd = landingpad { ptr, i32 }
          cleanup
  br label %.body289.i

.body289.i:                                       ; preds = %bb.wz, %bb.wy
  %eh.lpad-body290.i = phi { ptr, i32 } [ %i.cdd, %bb.wz ], [ %i.cdc, %bb.wy ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ccx, i64 noundef 208) #27
  br label %.body621

bb.xa:                                            ; preds = %.noexc1085
  %i.cde = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #31
          to label %.noexc1087 unwind label %bb.xi ; 11 uses

.noexc1087:                                       ; preds = %bb.xa
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(168) %i.cde, i16 325, ptr noundef %1)
          to label %bb.xb unwind label %bb.xe

bb.xb:                                            ; preds = %.noexc1087
  store ptr getelementptr inbounds nuw inrange(-16, 432) (i8, ptr @_ZTV12AstNodeUniop, i64 16), ptr %i.cde, align 8, !tbaa !79
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.cde, i64 152
  store i64 0, ptr %i.cdf, align 8
  %i.cdg = getelementptr inbounds nuw i8, ptr %.2.i991, i64 72
  %i.cdh = load ptr, ptr %i.cdg, align 8, !tbaa !259 ; 2 uses
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.cde, i64 72 ; 4 uses
  %i.cdj = load ptr, ptr %i.cdi, align 8, !tbaa !259
  %.not.i.i.i.i292.i = icmp eq ptr %i.cdj, %i.cdh
  br i1 %.not.i.i.i.i292.i, label %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i293.i, label %bb.xc

bb.xc:                                            ; preds = %bb.xb
  store ptr %i.cdh, ptr %i.cdi, align 8, !tbaa !259
  %i.cdk = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90
  %i.cdl = add i64 %i.cdk, 1
  store i64 %i.cdl, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90
  br label %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i293.i

_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i293.i: ; preds = %bb.xc, %bb.xb
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(168) %i.cde, ptr noundef nonnull %.2.i991)
          to label %.noexc296.i unwind label %bb.xe

.noexc296.i:                                      ; preds = %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i293.i
  store ptr getelementptr inbounds nuw inrange(-16, 432) (i8, ptr @_ZTV9AstLogNot, i64 16), ptr %i.cde, align 8, !tbaa !79
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.cde, i64 160
  store i8 0, ptr %i.cdm, align 8, !tbaa !354
  %i.cdn = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(168) %i.cde, i8 1)
          to label %.noexc297.i994 unwind label %bb.xe ; 2 uses

.noexc297.i994:                                   ; preds = %.noexc296.i
  %i.cdo = load ptr, ptr %i.cdi, align 8, !tbaa !259
  %.not.i.i5.i294.i = icmp eq ptr %i.cdo, %i.cdn
  br i1 %.not.i.i5.i294.i, label %_ZN12_GLOBAL__N_114SvaNfaLowering14assembleResultEP8FileLinebbP11AstNodeExprS4_S4_S4_S4_PS4_.exit, label %bb.xd

bb.xd:                                            ; preds = %.noexc297.i994
  store ptr %i.cdn, ptr %i.cdi, align 8, !tbaa !259
  br label %_ZN8AstConstC2EP8FileLineNS_8BitFalseE.exit.sink.split.i

bb.xe:                                            ; preds = %.noexc296.i, %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i293.i, %.noexc1087
  %i.cdp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cde, i64 noundef 168) #27
  br label %.body621

_ZN8AstConstC2EP8FileLineNS_8BitFalseE.exit.sink.split.i: ; preds = %bb.xd, %bb.wx, %bb.vx, %bb.vn, %bb.uj
  %.1121.ph.i = phi ptr [ %i.cde, %bb.xd ], [ %i.can, %bb.vx ], [ %i.ccx, %bb.wx ], [ %i.bzp, %bb.vn ], [ %i.bxb, %bb.uj ]
  %i.cdq = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90
  %i.cdr = add i64 %i.cdq, 1
  store i64 %i.cdr, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90
  br label %_ZN12_GLOBAL__N_114SvaNfaLowering14assembleResultEP8FileLinebbP11AstNodeExprS4_S4_S4_S4_PS4_.exit

_ZN12_GLOBAL__N_114SvaNfaLowering14assembleResultEP8FileLinebbP11AstNodeExprS4_S4_S4_S4_PS4_.exit: ; preds = %.noexc1052, %.noexc.i201.i, %.noexc242.i1013, %.noexc1071, %.noexc253.i1009, %.noexc.i285.i, %.noexc297.i994, %_ZN8AstConstC2EP8FileLineNS_8BitFalseE.exit.sink.split.i
  %.1121.i = phi ptr [ %.sroa.01172.3, %.noexc1071 ], [ %.2134.i, %.noexc1052 ], [ %i.bzp, %.noexc242.i1013 ], [ %i.can, %.noexc253.i1009 ], [ %i.ccx, %.noexc.i285.i ], [ %i.cde, %.noexc297.i994 ], [ %i.bxb, %.noexc.i201.i ], [ %.1121.ph.i, %_ZN8AstConstC2EP8FileLineNS_8BitFalseE.exit.sink.split.i ]
  br i1 %.not12202537, label %._crit_edge2563, label %.lr.ph2558

._crit_edge2559:                                  ; preds = %_ZN8AstLogOrC2EP8FileLineP11AstNodeExprS3_.exit
  %.not201 = icmp eq ptr %.2, null
  br i1 %.not201, label %.lr.ph2562.preheader.a, label %bb.xt

.lr.ph2562.preheader.a:                           ; preds = %bb.yn, %._crit_edge2559
  %60 = add nsw i64 %i.ab, -1
  %xtraiter = and i64 %i.ab, 7                    ; 3 uses
  %61 = icmp ult i64 %60, 7
  br i1 %61, label %.lr.ph2562.epil.preheader, label %.lr.ph2562.preheader.new.a

.lr.ph2562.preheader.new.a:                       ; preds = %.lr.ph2562.preheader.a
  %unroll_iter = and i64 %i.ab, 2147483640
  br label %.lr.ph2562

bb.xf:                                            ; preds = %_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.cds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit

bb.xg:                                            ; preds = %bb.dx, %.noexc.i.i602
  %i.cdt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val286 = load ptr, ptr %i.fi, align 8         ; 3 uses
  %.not.i.i.i1088 = icmp eq ptr %.val286, null
  br i1 %.not.i.i.i1088, label %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit, label %bb.xh

bb.xh:                                            ; preds = %bb.xg
  %.val287 = load ptr, ptr %i.zn, align 8
  %i.cdu = ptrtoint ptr %.val287 to i64
  %i.cdv = ptrtoint ptr %.val286 to i64
  %i.cdw = sub i64 %i.cdu, %i.cdv
  call void @_ZdlPvm(ptr noundef nonnull %.val286, i64 noundef %i.cdw) #27
  br label %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit

.loopexit1237:                                    ; preds = %.critedge.i825, %.noexc828, %.noexc829, %.noexc830, %.critedge162.i, %_ZN7V3Error10v3errorStrB5cxx11Ev.exit.i823, %.noexc835, %.noexc836, %bb.mk, %bb.mr, %.noexc839, %.noexc840, %bb.ms, %_ZN9AstLogNotC2EP8FileLineP11AstNodeExprb.exit.i795, %_ZN9AstLogAndC2EP8FileLineP11AstNodeExprS3_.exit.i796, %_ZN9AstLogNotC2EP8FileLineP11AstNodeExprb.exit224.i, %_ZN9AstLogAndC2EP8FileLineP11AstNodeExprS3_.exit231.i, %bb.nr, %bb.ns, %bb.nz, %bb.oa, %.noexc850, %_ZN8AstLogOrC2EP8FileLineP11AstNodeExprS3_.exit.i815, %bb.od, %_ZN9AstAlwaysC2EP8FileLine10VAlwaysKwdP10AstSenTreeP7AstNode.exit.i821
  %lpad.loopexit1239 = landingpad { ptr, i32 }
          cleanup
  br label %.body621

.loopexit.split-lp1238.loopexit:                  ; preds = %bb.ij, %_ZN9AstLogNotC2EP8FileLineP11AstNodeExprb.exit.i737, %bb.ic, %bb.hz, %bb.hy, %.noexc746, %_ZN7V3Error10v3errorStrB5cxx11Ev.exit.i739, %bb.ht
  %lpad.loopexit1242 = landingpad { ptr, i32 }
          cleanup
  br label %.body621

.loopexit.split-lp1238.loopexit.split-lp.loopexit: ; preds = %._crit_edge.thread.i718, %.noexc753, %.noexc754, %.noexc755, %.noexc756, %bb.io, %_ZN9AstLogAndC2EP8FileLineP11AstNodeExprS3_.exit250.i, %bb.iy, %_ZN8AstLogOrC2EP8FileLineP11AstNodeExprS3_.exit267.i, %bb.jj, %_ZN7AstNode9dtypeFromEPKS_.exit.i, %bb.ju, %bb.jv, %bb.kc, %bb.ki, %.noexc767, %bb.kk, %bb.kn, %_ZN9AstAlwaysC2EP8FileLine10VAlwaysKwdP10AstSenTreeP7AstNode.exit.i716
  %lpad.loopexit1245 = landingpad { ptr, i32 }
          cleanup
  br label %.body621

.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.gq, %_ZN9AstLogNotC2EP8FileLineP11AstNodeExprb.exit.i, %bb.gj, %bb.gg, %bb.gf, %.noexc668, %_ZN7V3Error10v3errorStrB5cxx11Ev.exit.i662, %bb.ga
  %lpad.loopexit1248 = landingpad { ptr, i32 }
          cleanup
  br label %.body621

.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %._crit_edge.thread.i, %.noexc675, %.noexc676, %.noexc677, %.noexc678, %.noexc679, %bb.gz
  %lpad.loopexit1251 = landingpad { ptr, i32 }
          cleanup
  br label %.body621

.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.fx, %bb.fu, %bb.fp, %bb.fo
  %lpad.loopexit1254 = landingpad { ptr, i32 }
          cleanup
  br label %.body621

.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.critedge.i614, %_ZN7V3Error10v3errorStrB5cxx11Ev.exit.i, %.noexc623, %bb.et, %.noexc625, %.noexc626, %_ZN8AstLogOrC2EP8FileLineP11AstNodeExprS3_.exit.i, %_ZN8AstLogOrC2EP8FileLineP11AstNodeExprS3_.exit240.i, %_ZN9AstLogAndC2EP8FileLineP11AstNodeExprS3_.exit.i, %_ZN8AstLogOrC2EP8FileLineP11AstNodeExprS3_.exit254.i
  %lpad.loopexit1257 = landingpad { ptr, i32 }
          cleanup
  br label %.body621

.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.eg, %bb.ec
  %lpad.loopexit1260 = landingpad { ptr, i32 }
          cleanup
  br label %.body621

.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc683, %_ZN9AstAlwaysC2EP8FileLine10VAlwaysKwdP10AstSenTreeP7AstNode.exit.i862, %bb.ou, %_ZN12_GLOBAL__N_114SvaNfaLowering27emitAndCombinerDoneLatchNbaERNS0_8LowerCtxE.exit, %_ZN9AstAlwaysC2EP8FileLine10VAlwaysKwdP10AstSenTreeP7AstNode.exit.i, %bb.hm, %_ZN7AstNode7addNextEPS_.exit.i, %bb.hd, %.noexc684, %.noexc682, %bb.hc, %bb.eb
  %lpad.loopexit.split-lp1261 = landingpad { ptr, i32 }
          cleanup
  br label %.body621

.loopexit:                                        ; preds = %bb.sn
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body621

.loopexit.split-lp.loopexit:                      ; preds = %bb.ro, %.noexc953, %.lr.ph.i146.i
  %lpad.loopexit1227 = landingpad { ptr, i32 }
          cleanup
  br label %.body621

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.rd, %bb.rh, %.noexc947, %.noexc948, %.noexc949, %bb.ri, %._crit_edge.i151.i, %_ZN9AstLogNotC2EP8FileLineP11AstNodeExprb.exit.i.i, %_ZN9AstLogAndC2EP8FileLineP11AstNodeExprS3_.exit80.i.i
  %lpad.loopexit1230 = landingpad { ptr, i32 }
          cleanup
  br label %.body621

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNSt6vectorIP11AstNodeExprSaIS1_EE9push_backEOS1_.exit.i, %_ZNKSt6vectorIP11AstNodeExprSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i167.i, %bb.sg, %_ZN9AstLogAndC2EP8FileLineP11AstNodeExprS3_.exit.i906, %_ZN9AstLogNotC2EP8FileLineP11AstNodeExprb.exit.i905, %.noexc970, %bb.sb, %.noexc968, %.noexc967, %.noexc966, %bb.rz, %.critedge126.i, %.noexc963, %.noexc962, %.noexc961, %.critedge.i907
  %lpad.loopexit1232 = landingpad { ptr, i32 }
          cleanup
  br label %.body621

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.pw, %.noexc920, %.noexc921, %.noexc922, %bb.px, %bb.py, %bb.qb, %bb.qe, %bb.qf, %_ZNKSt6vectorIP11AstNodeExprSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.qo, %.noexc933, %.noexc934, %bb.qt, %_ZN9AstLogAndC2EP8FileLineP11AstNodeExprS3_.exit128.i.i, %._crit_edge66.i.i, %bb.ra, %.noexc939, %.noexc940
  %lpad.loopexit1235 = landingpad { ptr, i32 }
          cleanup
  br label %.body621

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.pg, %.noexc915, %.noexc917, %bb.ph, %._crit_edge.i.thread.i, %.noexc942, %.noexc943, %.noexc944, %_ZN12_GLOBAL__N_114SvaNfaLowering23computeThroughoutRejectERNS0_8LowerCtxERNS0_9SignalSetE.exit.i, %.noexc958, %.noexc959, %bb.sp, %_ZN9AstLogNotC2EP8FileLineP11AstNodeExprb.exit180.i, %bb.su, %_ZN9AstLogNotC2EP8FileLineP11AstNodeExprb.exit197.i, %bb.td, %_ZN9AstLogNotC2EP8FileLineP11AstNodeExprb.exit214.i, %bb.tk, %_ZN9AstLogNotC2EP8FileLineP11AstNodeExprb.exit231.i, %bb.tr, %bb.ts, %.noexc916
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body621

bb.xi:                                            ; preds = %bb.xa, %bb.ww, %bb.wv, %bb.wu, %bb.wt, %_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit277.i, %.noexc1080, %bb.wn, %bb.wm, %bb.wl, %_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit258.i, %.noexc1075, %bb.wa, %_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit247.i, %.noexc1072, %bb.vu, %bb.vt, %bb.vs, %bb.vr, %.noexc1067, %bb.vk, %bb.vj, %bb.vi, %.noexc1063, %bb.vg, %.noexc1061, %bb.vf, %bb.ve, %_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit219.i, %.noexc1057, %bb.ut, %_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit208.i, %.noexc1054, %bb.un, %bb.ui, %bb.uh, %bb.ug, %bb.uf, %_ZN9AstLogNotC2EP8FileLineP11AstNodeExprb.exit.i1040, %_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit.i1033, %.noexc1044, %bb.tw, %bb.tv
  %i.cdx = landingpad { ptr, i32 }
          cleanup
  br label %.body621

.lr.ph2558:                                       ; preds = %_ZN12_GLOBAL__N_114SvaNfaLowering14assembleResultEP8FileLinebbP11AstNodeExprS4_S4_S4_S4_PS4_.exit, %_ZN8AstLogOrC2EP8FileLineP11AstNodeExprS3_.exit
  %indvars.iv3653 = phi i64 [ %indvars.iv.next3654, %_ZN8AstLogOrC2EP8FileLineP11AstNodeExprS3_.exit ], [ 0, %_ZN12_GLOBAL__N_114SvaNfaLowering14assembleResultEP8FileLinebbP11AstNodeExprS4_S4_S4_S4_PS4_.exit ] ; 2 uses
  %.01392556 = phi ptr [ %.2, %_ZN8AstLogOrC2EP8FileLineP11AstNodeExprS3_.exit ], [ null, %_ZN12_GLOBAL__N_114SvaNfaLowering14assembleResultEP8FileLinebbP11AstNodeExprS4_S4_S4_S4_PS4_.exit ] ; 4 uses
  %i.cdy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01211.03992, i64 %indvars.iv3653 ; 2 uses
  %i.cdz = load ptr, ptr %i.cdy, align 8, !tbaa !317 ; 2 uses
  %i.cea = getelementptr inbounds nuw i8, ptr %i.cdz, i64 161
  %i.ceb = load i8, ptr %i.cea, align 1, !tbaa !359, !range !76, !noundef !77
  %i.cec = trunc nuw i8 %i.ceb to i1
  br i1 %i.cec, label %bb.xj, label %_ZN8AstLogOrC2EP8FileLineP11AstNodeExprS3_.exit

bb.xj:                                            ; preds = %.lr.ph2558
  %i.ced = getelementptr i8, ptr %i.cdz, i64 72
  %.val317 = load ptr, ptr %i.ced, align 8, !tbaa !28
  %i.cee = load ptr, ptr %.val317, align 8, !tbaa !630
  %.not213 = icmp eq ptr %i.cee, null
  br i1 %.not213, label %_ZN8AstLogOrC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.xk

bb.xk:                                            ; preds = %bb.xj
  %i.cef = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #31
          to label %bb.xl unwind label %bb.xn     ; 4 uses

bb.xl:                                            ; preds = %bb.xk
  %i.ceg = load ptr, ptr %i.cdy, align 8, !tbaa !317
  %i.ceh = getelementptr i8, ptr %i.ceg, i64 72
  %.val316 = load ptr, ptr %i.ceh, align 8, !tbaa !28
  %i.cei = load ptr, ptr %.val316, align 8, !tbaa !630
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #26
  store i8 0, ptr %57, align 1, !tbaa !318
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.cef, ptr noundef %1, ptr noundef %i.cei, ptr noundef nonnull align 1 dereferenceable(1) %57)
          to label %bb.xm unwind label %bb.xo

bb.xm:                                            ; preds = %bb.xl
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #26
  %.not216 = icmp eq ptr %.01392556, null
  br i1 %.not216, label %_ZN8AstLogOrC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.xp

bb.xn:                                            ; preds = %bb.xp, %bb.xk
  %i.cej = landingpad { ptr, i32 }
          cleanup
  br label %.body621

bb.xo:                                            ; preds = %bb.xl
  %i.cek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.cef, i64 noundef 232) #27
  br label %.body621

bb.xp:                                            ; preds = %bb.xm
  %i.cel = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31
          to label %bb.xq unwind label %bb.xn     ; 11 uses

bb.xq:                                            ; preds = %bb.xp
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.cel, i16 222, ptr noundef %1)
          to label %.noexc1091 unwind label %bb.xs

.noexc1091:                                       ; preds = %bb.xq
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.cel, align 8, !tbaa !79
  %i.cem = getelementptr inbounds nuw i8, ptr %i.cel, i64 152
  store i64 0, ptr %i.cem, align 8
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.cel, ptr noundef nonnull %.01392556)
          to label %.noexc1092 unwind label %bb.xs

.noexc1092:                                       ; preds = %.noexc1091
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.cel, ptr noundef nonnull %i.cef)
          to label %.noexc1093 unwind label %bb.xs

.noexc1093:                                       ; preds = %.noexc1092
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV8AstLogOr, i64 16), ptr %i.cel, align 8, !tbaa !79
  %i.cen = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(160) %i.cel, i8 1)
          to label %.noexc1094 unwind label %bb.xs ; 2 uses

.noexc1094:                                       ; preds = %.noexc1093
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.cel, i64 72 ; 2 uses
  %i.cep = load ptr, ptr %i.ceo, align 8, !tbaa !259
  %.not.i.i.i1090 = icmp eq ptr %i.cep, %i.cen
  br i1 %.not.i.i.i1090, label %_ZN8AstLogOrC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.xr

bb.xr:                                            ; preds = %.noexc1094
  store ptr %i.cen, ptr %i.ceo, align 8, !tbaa !259
  %i.ceq = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90
  %i.cer = add i64 %i.ceq, 1
  store i64 %i.cer, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90
  br label %_ZN8AstLogOrC2EP8FileLineP11AstNodeExprS3_.exit

bb.xs:                                            ; preds = %.noexc1093, %.noexc1092, %.noexc1091, %bb.xq
  %i.ces = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cel, i64 noundef 160) #27
  br label %.body621

_ZN8AstLogOrC2EP8FileLineP11AstNodeExprS3_.exit:  ; preds = %bb.xr, %.noexc1094, %bb.xm, %.lr.ph2558, %bb.xj
  %.2 = phi ptr [ %.01392556, %.lr.ph2558 ], [ %.01392556, %bb.xj ], [ %i.cef, %bb.xm ], [ %i.cel, %.noexc1094 ], [ %i.cel, %bb.xr ] ; 3 uses
  %indvars.iv.next3654 = add nuw nsw i64 %indvars.iv3653, 1 ; 2 uses
  %exitcond3657.not = icmp eq i64 %indvars.iv.next3654, %i.ab
  br i1 %exitcond3657.not, label %._crit_edge2559, label %.lr.ph2558, !llvm.loop !587

bb.xt:                                            ; preds = %._crit_edge2559
  %i.cet = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31
          to label %.noexc.i1096 unwind label %bb.yb ; 8 uses

.noexc.i1096:                                     ; preds = %bb.xt
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #26
  %i.ceu = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 6 uses
  store ptr %i.ceu, ptr %58, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 35, ptr %i.a, align 8, !tbaa !90
  %i.cev = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %58, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc1097 unwind label %bb.yc ; 3 uses

.noexc1097:                                       ; preds = %.noexc.i1096
  store ptr %i.cev, ptr %58, align 8, !tbaa !26
  %i.cew = load i64, ptr %i.a, align 8, !tbaa !90 ; 3 uses
  store i64 %i.cew, ptr %i.ceu, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.cev, ptr noundef nonnull align 1 dereferenceable(35) @.str.594, i64 35, i1 false)
  %i.cex = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 2 uses
  store i64 %i.cew, ptr %i.cex, align 8, !tbaa !27
  %i.cey = getelementptr inbounds nuw i8, ptr %i.cev, i64 %i.cew
  store i8 0, ptr %i.cey, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.cet, i16 105, ptr noundef %1)
          to label %.noexc1101 unwind label %bb.yd

.noexc1101:                                       ; preds = %.noexc1097
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstCExpr, i64 16), ptr %i.cet, align 8, !tbaa !79
  %i.cez = getelementptr inbounds nuw i8, ptr %i.cet, i64 152
  store i8 1, ptr %i.cez, align 8, !tbaa !323
  %i.cfa = load i64, ptr %i.cex, align 8, !tbaa !27
  %i.cfb = icmp eq i64 %i.cfa, 0
  br i1 %i.cfb, label %.noexc.i1099, label %bb.xu

bb.xu:                                            ; preds = %.noexc1101
  invoke void @_ZN8AstCExpr3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %i.cet, ptr noundef nonnull align 8 dereferenceable(32) %58)
          to label %.noexc.i1099 unwind label %bb.yd

.noexc.i1099:                                     ; preds = %bb.xu, %.noexc1101
  %i.cfc = getelementptr inbounds nuw i8, ptr %i.cet, i64 72 ; 2 uses
  %i.cfd = invoke noundef ptr @_ZNK7AstNode12findBitDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(160) %i.cet, i32 noundef 1, i32 noundef 1, i8 0)
          to label %.noexc1103 unwind label %bb.yd ; 2 uses

.noexc1103:                                       ; preds = %.noexc.i1099
  %i.cfe = load ptr, ptr %i.cfc, align 8, !tbaa !259
  %.not.i.i.i.i1100 = icmp eq ptr %i.cfe, %i.cfd
  br i1 %.not.i.i.i.i1100, label %_ZN8AstCExprC2EP8FileLineNS_4PureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit, label %_ZN7AstNode16dtypeSetBitSizedEi8VSigning.exit.sink.split.i.i

_ZN7AstNode16dtypeSetBitSizedEi8VSigning.exit.sink.split.i.i: ; preds = %.noexc1103
  store ptr %i.cfd, ptr %i.cfc, align 8, !tbaa !259
  %i.cff = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90
  %i.cfg = add i64 %i.cff, 1
  store i64 %i.cfg, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90
  br label %_ZN8AstCExprC2EP8FileLineNS_4PureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit

_ZN8AstCExprC2EP8FileLineNS_4PureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit: ; preds = %_ZN7AstNode16dtypeSetBitSizedEi8VSigning.exit.sink.split.i.i, %.noexc1103
  %i.cfh = load ptr, ptr %58, align 8, !tbaa !26  ; 2 uses
  %i.cfi = icmp eq ptr %i.cfh, %i.ceu
  br i1 %i.cfi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1104: ; preds = %_ZN8AstCExprC2EP8FileLineNS_4PureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit
  %i.cfj = load i64, ptr %i.ceu, align 8, !tbaa !28
  %i.cfk = add i64 %i.cfj, 1
  call void @_ZdlPvm(ptr noundef %i.cfh, i64 noundef %i.cfk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1106: ; preds = %_ZN8AstCExprC2EP8FileLineNS_4PureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1104
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #26
  %i.cfl = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31
          to label %bb.xv unwind label %bb.ye     ; 10 uses

bb.xv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1106
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.cfl, i16 220, ptr noundef %1)
          to label %.noexc1109 unwind label %bb.yf

.noexc1109:                                       ; preds = %bb.xv
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.cfl, align 8, !tbaa !79
  %i.cfm = getelementptr inbounds nuw i8, ptr %i.cfl, i64 152
  store i64 0, ptr %i.cfm, align 8
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.cfl, ptr noundef nonnull %i.cet)
          to label %.noexc1110 unwind label %bb.yf

.noexc1110:                                       ; preds = %.noexc1109
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.cfl, ptr noundef nonnull %.2)
          to label %.noexc1111 unwind label %bb.yf

.noexc1111:                                       ; preds = %.noexc1110
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV9AstLogAnd, i64 16), ptr %i.cfl, align 8, !tbaa !79
  %i.cfn = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(160) %i.cfl, i8 1)
          to label %.noexc1112 unwind label %bb.yf ; 2 uses

.noexc1112:                                       ; preds = %.noexc1111
  %i.cfo = getelementptr inbounds nuw i8, ptr %i.cfl, i64 72 ; 2 uses
  %i.cfp = load ptr, ptr %i.cfo, align 8, !tbaa !259
  %.not.i.i.i1108 = icmp eq ptr %i.cfp, %i.cfn
  br i1 %.not.i.i.i1108, label %_ZN9AstLogAndC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.xw

bb.xw:                                            ; preds = %.noexc1112
  store ptr %i.cfn, ptr %i.cfo, align 8, !tbaa !259
  %i.cfq = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90
  %i.cfr = add i64 %i.cfq, 1
  store i64 %i.cfr, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90
  br label %_ZN9AstLogAndC2EP8FileLineP11AstNodeExprS3_.exit

_ZN9AstLogAndC2EP8FileLineP11AstNodeExprS3_.exit: ; preds = %bb.xw, %.noexc1112
  %i.cfs = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31
          to label %._crit_edge.i.i1113 unwind label %bb.yg ; 8 uses

._crit_edge.i.i1113:                              ; preds = %_ZN9AstLogAndC2EP8FileLineP11AstNodeExprS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #26
  %i.cft = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 6 uses
  store ptr %i.cft, ptr %59, align 8, !tbaa !29
  %i.cfu = getelementptr inbounds nuw i8, ptr %59, i64 8
  store i64 0, ptr %i.cfu, align 8, !tbaa !27
  store i8 0, ptr %i.cft, align 8, !tbaa !28
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.cfs, i16 422, ptr noundef %1)
          to label %.noexc1117 unwind label %bb.yh

.noexc1117:                                       ; preds = %._crit_edge.i.i1113
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV10AstDisplay, i64 16), ptr %i.cfs, align 8, !tbaa !79
  %i.cfv = getelementptr inbounds nuw i8, ptr %i.cfs, i64 152
  store i8 5, ptr %i.cfv, align 8, !tbaa !646
  %i.cfw = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #31
          to label %.noexc1118 unwind label %bb.yh ; 3 uses

.noexc1118:                                       ; preds = %.noexc1117
  invoke void @_ZN11AstSFormatFC2EP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbP11AstNodeExprc(ptr noundef nonnull align 8 dereferenceable(192) %i.cfw, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %59, i1 noundef zeroext true, ptr noundef null, i8 noundef signext 100)
          to label %_ZN10AstDisplay4fmtpEP11AstSFormatF.exit.i unwind label %bb.xx

_ZN10AstDisplay4fmtpEP11AstSFormatF.exit.i:       ; preds = %.noexc1118
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.cfs, ptr noundef nonnull %i.cfw)
          to label %_ZN10AstDisplayC2EP8FileLine12VDisplayTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11AstNodeExprSC_c.exit unwind label %bb.yh

bb.xx:                                            ; preds = %.noexc1118
  %i.cfx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cfw, i64 noundef 192) #27
  br label %.body1120

_ZN10AstDisplayC2EP8FileLine12VDisplayTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11AstNodeExprSC_c.exit: ; preds = %_ZN10AstDisplay4fmtpEP11AstSFormatF.exit.i
  %i.cfy = load ptr, ptr %59, align 8, !tbaa !26  ; 2 uses
  %i.cfz = icmp eq ptr %i.cfy, %i.cft
  br i1 %i.cfz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1122: ; preds = %_ZN10AstDisplayC2EP8FileLine12VDisplayTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11AstNodeExprSC_c.exit
  %i.cga = load i64, ptr %i.cft, align 8, !tbaa !28
  %i.cgb = add i64 %i.cga, 1
  call void @_ZdlPvm(ptr noundef %i.cfy, i64 noundef %i.cgb) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1123: ; preds = %_ZN10AstDisplayC2EP8FileLine12VDisplayTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11AstNodeExprSC_c.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1122
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #26
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.cfs, i64 24
  %i.cgd = load ptr, ptr %i.cgc, align 8, !tbaa !159
  %i.cge = load ptr, ptr %0, align 8, !tbaa !128  ; 2 uses
  %i.cgf = getelementptr inbounds nuw i8, ptr %i.cge, i64 289
  %.sroa.0.0.copyload.i1125 = load i8, ptr %i.cgf, align 1, !tbaa !647
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.cgd, i64 188
  store i8 %.sroa.0.0.copyload.i1125, ptr %i.cgg, align 4, !tbaa !647
  %i.cgh = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1169), align 1, !tbaa !648, !range !76, !noundef !77
  %i.cgi = trunc nuw i8 %i.cgh to i1
  br i1 %i.cgi, label %bb.xy, label %_ZN11AstNodeStmt7addNextEPS_.exit

bb.xy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1123
  %i.cgj = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31
          to label %bb.xz unwind label %bb.yi     ; 5 uses

bb.xz:                                            ; preds = %bb.xy
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.cgj, i16 457, ptr noundef %1)
          to label %bb.ya unwind label %bb.yj

bb.ya:                                            ; preds = %bb.xz
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV7AstStop, i64 16), ptr %i.cgj, align 8, !tbaa !79
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.cgj, i64 152
  store i8 0, ptr %i.cgk, align 8, !tbaa !650
  %i.cgl = invoke noundef ptr @_ZN7AstNode7addNextIS_S_EEPT_S2_PT0_(ptr noundef nonnull align 8 dereferenceable(152) %i.cfs, ptr noundef nonnull %i.cgj)
          to label %._ZN11AstNodeStmt7addNextEPS_.exit_crit_edge unwind label %bb.yi ; 0 uses

._ZN11AstNodeStmt7addNextEPS_.exit_crit_edge:     ; preds = %bb.ya
  %.pre3670 = load ptr, ptr %0, align 8, !tbaa !128
  br label %_ZN11AstNodeStmt7addNextEPS_.exit

bb.yb:                                            ; preds = %bb.xt
  %i.cgm = landingpad { ptr, i32 }
          cleanup
  br label %.body621

bb.yc:                                            ; preds = %.noexc.i1096
  %i.cgn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1132

bb.yd:                                            ; preds = %.noexc.i1099, %bb.xu, %.noexc1097
  %i.cgo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cgp = load ptr, ptr %58, align 8, !tbaa !26  ; 2 uses
  %i.cgq = icmp eq ptr %i.cgp, %i.ceu
  br i1 %i.cgq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1130: ; preds = %bb.yd
  %i.cgr = load i64, ptr %i.ceu, align 8, !tbaa !28
  %i.cgs = add i64 %i.cgr, 1
  call void @_ZdlPvm(ptr noundef %i.cgp, i64 noundef %i.cgs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1132: ; preds = %bb.yd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1130, %bb.yc
  %.pn202 = phi { ptr, i32 } [ %i.cgn, %bb.yc ], [ %i.cgo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1130 ], [ %i.cgo, %bb.yd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.cet, i64 noundef 160) #27
  br label %.body621

bb.ye:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1106
  %i.cgt = landingpad { ptr, i32 }
          cleanup
  br label %.body621

bb.yf:                                            ; preds = %.noexc1111, %.noexc1110, %.noexc1109, %bb.xv
  %i.cgu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cfl, i64 noundef 160) #27
  br label %.body621

bb.yg:                                            ; preds = %_ZN9AstLogAndC2EP8FileLineP11AstNodeExprS3_.exit
  %i.cgv = landingpad { ptr, i32 }
          cleanup
  br label %.body621

bb.yh:                                            ; preds = %_ZN10AstDisplay4fmtpEP11AstSFormatF.exit.i, %.noexc1117, %._crit_edge.i.i1113
  %i.cgw = landingpad { ptr, i32 }
          cleanup
  br label %.body1120

.body1120:                                        ; preds = %bb.xx, %bb.yh
  %eh.lpad-body1121 = phi { ptr, i32 } [ %i.cgw, %bb.yh ], [ %i.cfx, %bb.xx ]
  %i.cgx = load ptr, ptr %59, align 8, !tbaa !26  ; 2 uses
  %i.cgy = icmp eq ptr %i.cgx, %i.cft
  br i1 %i.cgy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1133: ; preds = %.body1120
  %i.cgz = load i64, ptr %i.cft, align 8, !tbaa !28
  %i.cha = add i64 %i.cgz, 1
  call void @_ZdlPvm(ptr noundef %i.cgx, i64 noundef %i.cha) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135: ; preds = %.body1120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1133
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.cfs, i64 noundef 160) #27
  br label %.body621

bb.yi:                                            ; preds = %bb.yn, %bb.ya, %_ZN11AstNodeStmt7addNextEPS_.exit, %bb.xy
  %i.chb = landingpad { ptr, i32 }
          cleanup
  br label %.body621

bb.yj:                                            ; preds = %bb.xz
  %i.chc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cgj, i64 noundef 160) #27
  br label %.body621

_ZN11AstNodeStmt7addNextEPS_.exit:                ; preds = %._ZN11AstNodeStmt7addNextEPS_.exit_crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1123
  %i.chd = phi ptr [ %.pre3670, %._ZN11AstNodeStmt7addNextEPS_.exit_crit_edge ], [ %i.cge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1123 ]
  %i.che = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31
          to label %bb.yk unwind label %bb.yi     ; 7 uses

bb.yk:                                            ; preds = %_ZN11AstNodeStmt7addNextEPS_.exit
  %i.chf = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31
          to label %bb.yl unwind label %bb.yo     ; 9 uses

bb.yl:                                            ; preds = %bb.yk
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.chf, i16 481, ptr noundef %1)
          to label %.noexc1137 unwind label %bb.yp

.noexc1137:                                       ; preds = %bb.yl
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV9AstNodeIf, i64 16), ptr %i.chf, align 8, !tbaa !79
  %i.chg = getelementptr inbounds nuw i8, ptr %i.chf, i64 152
  store i8 0, ptr %i.chg, align 8, !tbaa !357
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.chf, ptr noundef nonnull %i.cfl)
          to label %.noexc1138 unwind label %bb.yp

.noexc1138:                                       ; preds = %.noexc1137
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.chf, ptr noundef nonnull %i.cfs)
          to label %bb.ym unwind label %bb.yp

bb.ym:                                            ; preds = %.noexc1138
  %i.chh = getelementptr inbounds nuw i8, ptr %i.chf, i64 153
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV5AstIf, i64 16), ptr %i.chf, align 8, !tbaa !79
  store <4 x i8> zeroinitializer, ptr %i.chh, align 1, !tbaa !167
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.che, i16 397, ptr noundef %1)
          to label %.noexc1141 unwind label %bb.yo

.noexc1141:                                       ; preds = %bb.ym
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV16AstNodeProcedure, i64 16), ptr %i.che, align 8, !tbaa !79
  %i.chi = getelementptr inbounds nuw i8, ptr %i.che, i64 152 ; 2 uses
  %i.chj = load i8, ptr %i.chi, align 8
  %i.chk = and i8 %i.chj, -4
  store i8 %i.chk, ptr %i.chi, align 8
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.che, ptr noundef nonnull %i.chf)
          to label %bb.yn unwind label %bb.yo

bb.yn:                                            ; preds = %.noexc1141
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV8AstFinal, i64 16), ptr %i.che, align 8, !tbaa !79
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(306) %i.chd, ptr noundef nonnull %i.che)
          to label %.lr.ph2562.preheader.a unwind label %bb.yi

bb.yo:                                            ; preds = %.noexc1141, %bb.ym, %bb.yk
  %i.chl = landingpad { ptr, i32 }
          cleanup
  br label %bb.yq

bb.yp:                                            ; preds = %.noexc1138, %.noexc1137, %bb.yl
  %i.chm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.chf, i64 noundef 160) #27
  br label %bb.yq

bb.yq:                                            ; preds = %bb.yp, %bb.yo
  %.pn206 = phi { ptr, i32 } [ %i.chl, %bb.yo ], [ %i.chm, %bb.yp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.che, i64 noundef 160) #27
  br label %.body621

._crit_edge2563.loopexit.unr-lcssa:               ; preds = %.lr.ph2562
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge2563, label %.lr.ph2562.epil.preheader

.lr.ph2562.epil.preheader:                        ; preds = %._crit_edge2563.loopexit.unr-lcssa, %.lr.ph2562.preheader.a
  %indvars.iv3658.epil.init = phi i64 [ 0, %.lr.ph2562.preheader.a ], [ %indvars.iv.next3659.7, %._crit_edge2563.loopexit.unr-lcssa ]
  %lcmp.mod7221 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod7221)
  br label %.lr.ph2562.epil

.lr.ph2562.epil:                                  ; preds = %.lr.ph2562.epil, %.lr.ph2562.epil.preheader
  %indvars.iv3658.epil = phi i64 [ %indvars.iv.next3659.epil, %.lr.ph2562.epil ], [ %indvars.iv3658.epil.init, %.lr.ph2562.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph2562.epil ], [ 0, %.lr.ph2562.epil.preheader ]
  %i.chn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01211.03992, i64 %indvars.iv3658.epil
  %i.cho = load ptr, ptr %i.chn, align 8, !tbaa !317
  %i.chp = getelementptr inbounds nuw i8, ptr %i.cho, i64 72
  store ptr null, ptr %i.chp, align 8, !tbaa !28
  %indvars.iv.next3659.epil = add nuw nsw i64 %indvars.iv3658.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge2563, label %.lr.ph2562.epil, !llvm.loop !588

._crit_edge2563:                                  ; preds = %._crit_edge2563.loopexit.unr-lcssa, %.lr.ph2562.epil, %_ZN12_GLOBAL__N_114SvaNfaLowering14assembleResultEP8FileLinebbP11AstNodeExprS4_S4_S4_S4_PS4_.exit
  %.val2.i = load ptr, ptr %i.zq, align 8         ; 3 uses
  %.not.i.i.i.i1146 = icmp eq ptr %.val2.i, null
  br i1 %.not.i.i.i.i1146, label %_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EED2Ev.exit.i1147, label %bb.yr

bb.yr:                                            ; preds = %._crit_edge2563
  %i.chq = getelementptr inbounds nuw i8, ptr %56, i64 56
  %.val3.i = load ptr, ptr %i.chq, align 8
  %i.chr = ptrtoint ptr %.val3.i to i64
  %i.chs = ptrtoint ptr %.val2.i to i64
  %i.cht = sub i64 %i.chr, %i.chs
  call void @_ZdlPvm(ptr noundef nonnull %.val2.i, i64 noundef %i.cht) #27
  br label %_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EED2Ev.exit.i1147

_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EED2Ev.exit.i1147: ; preds = %bb.yr, %._crit_edge2563
  %.val.i1148 = load ptr, ptr %i.fi, align 8      ; 3 uses
  %.not.i.i.i4.i = icmp eq ptr %.val.i1148, null
  br i1 %.not.i.i.i4.i, label %_ZN12_GLOBAL__N_114SvaNfaLowering8LowerCtxD2Ev.exit, label %bb.ys

bb.ys:                                            ; preds = %_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EED2Ev.exit.i1147
  %i.chu = getelementptr inbounds nuw i8, ptr %56, i64 32
  %.val1.i = load ptr, ptr %i.chu, align 8
  %i.chv = ptrtoint ptr %.val1.i to i64
  %i.chw = ptrtoint ptr %.val.i1148 to i64
  %i.chx = sub i64 %i.chv, %i.chw
  call void @_ZdlPvm(ptr noundef nonnull %.val.i1148, i64 noundef %i.chx) #27
  br label %_ZN12_GLOBAL__N_114SvaNfaLowering8LowerCtxD2Ev.exit

_ZN12_GLOBAL__N_114SvaNfaLowering8LowerCtxD2Ev.exit: ; preds = %_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EED2Ev.exit.i1147, %bb.ys
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #26
  %i.chy = load ptr, ptr %41, align 8, !tbaa !328 ; 5 uses
  %i.chz = load ptr, ptr %i.cj, align 8, !tbaa !331 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.chy, %i.chz
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN12_GLOBAL__N_114SvaNfaLowering8LowerCtxD2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cia, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.chy, %_ZN12_GLOBAL__N_114SvaNfaLowering8LowerCtxD2Ev.exit ] ; 2 uses
  %.0.val.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !332 ; 2 uses
  %.not.i.i.i.i.i1149 = icmp eq ptr %.0.val.i.i.i, null
  br i1 %.not.i.i.i.i.i1149, label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_113SvaVertexDataEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_113SvaVertexDataEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.0.val.i.i.i, i64 noundef 56) #27
  br label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_113SvaVertexDataEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.cia = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i1150 = icmp eq ptr %i.cia, %i.chz
  br i1 %.not.i.i.i1150, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %_ZN12_GLOBAL__N_114SvaNfaLowering8LowerCtxD2Ev.exit
  %.not.i.i2.i = icmp eq ptr %i.chy, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.yt

bb.yt:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %.val1.i1152 = load ptr, ptr %i.ck, align 8, !tbaa !330
  %i.cib = ptrtoint ptr %.val1.i1152 to i64
  %i.cic = ptrtoint ptr %i.chy to i64
  %i.cid = sub i64 %i.cib, %i.cic
  call void @_ZdlPvm(ptr noundef nonnull %i.chy, i64 noundef %i.cid) #27
  br label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.yt
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #26
  %.not.i.i.i1153 = icmp eq ptr %.sroa.01203.4, null
  br i1 %.not.i.i.i1153, label %_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EED2Ev.exit, label %bb.yu

bb.yu:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.cie = sub i64 %.sroa.11.4, %i.zs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01203.4, i64 noundef %i.cie) #27
  br label %_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %bb.yu
  %.not.i.i.i1154 = icmp eq ptr %.sroa.01211.03992, null
  br i1 %.not.i.i.i1154, label %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit1155, label %bb.yv

bb.yv:                                            ; preds = %_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EED2Ev.exit
  %i.cif = sub i64 %.sroa.30.03991, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01211.03992, i64 noundef %i.cif) #27
  br label %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit1155

_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit1155: ; preds = %_ZNSt6vectorIPKN12_GLOBAL__N_112SvaTransEdgeESaIS3_EED2Ev.exit, %bb.yv
  %i.cig = load ptr, ptr %39, align 8, !tbaa !26  ; 2 uses
  %i.cih = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.cii = icmp eq ptr %i.cig, %i.cih
  br i1 %i.cii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1156: ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit1155
  %i.cij = load i64, ptr %i.cih, align 8, !tbaa !28
  %i.cik = add i64 %i.cij, 1
  call void @_ZdlPvm(ptr noundef %i.cig, i64 noundef %i.cik) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1158: ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit1155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1156
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  ret ptr %.1121.i

.lr.ph2562:                                       ; preds = %.lr.ph2562, %.lr.ph2562.preheader.new.a
  %indvars.iv3658 = phi i64 [ 0, %.lr.ph2562.preheader.new.a ], [ %indvars.iv.next3659.7, %.lr.ph2562 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph2562.preheader.new.a ], [ %niter.next.7, %.lr.ph2562 ]
  %i.cil = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01211.03992, i64 %indvars.iv3658
  %i.cim = load ptr, ptr %i.cil, align 8, !tbaa !317
  %i.cin = getelementptr inbounds nuw i8, ptr %i.cim, i64 72
  store ptr null, ptr %i.cin, align 8, !tbaa !28
  %i.cio = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01211.03992, i64 %indvars.iv3658
  %i.cip = getelementptr inbounds nuw i8, ptr %i.cio, i64 8
  %i.ciq = load ptr, ptr %i.cip, align 8, !tbaa !317
  %i.cir = getelementptr inbounds nuw i8, ptr %i.ciq, i64 72
  store ptr null, ptr %i.cir, align 8, !tbaa !28
  %i.cis = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01211.03992, i64 %indvars.iv3658
  %i.cit = getelementptr inbounds nuw i8, ptr %i.cis, i64 16
  %i.ciu = load ptr, ptr %i.cit, align 8, !tbaa !317
  %i.civ = getelementptr inbounds nuw i8, ptr %i.ciu, i64 72
  store ptr null, ptr %i.civ, align 8, !tbaa !28
  %i.ciw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01211.03992, i64 %indvars.iv3658
  %i.cix = getelementptr inbounds nuw i8, ptr %i.ciw, i64 24
  %i.ciy = load ptr, ptr %i.cix, align 8, !tbaa !317
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.ciy, i64 72
  store ptr null, ptr %i.ciz, align 8, !tbaa !28
  %i.cja = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01211.03992, i64 %indvars.iv3658
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.cja, i64 32
  %i.cjc = load ptr, ptr %i.cjb, align 8, !tbaa !317
  %i.cjd = getelementptr inbounds nuw i8, ptr %i.cjc, i64 72
  store ptr null, ptr %i.cjd, align 8, !tbaa !28
  %i.cje = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01211.03992, i64 %indvars.iv3658
  %i.cjf = getelementptr inbounds nuw i8, ptr %i.cje, i64 40
  %i.cjg = load ptr, ptr %i.cjf, align 8, !tbaa !317
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.cjg, i64 72
  store ptr null, ptr %i.cjh, align 8, !tbaa !28
  %i.cji = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01211.03992, i64 %indvars.iv3658
  %i.cjj = getelementptr inbounds nuw i8, ptr %i.cji, i64 48
  %i.cjk = load ptr, ptr %i.cjj, align 8, !tbaa !317
  %i.cjl = getelementptr inbounds nuw i8, ptr %i.cjk, i64 72
  store ptr null, ptr %i.cjl, align 8, !tbaa !28
  %i.cjm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01211.03992, i64 %indvars.iv3658
  %i.cjn = getelementptr inbounds nuw i8, ptr %i.cjm, i64 56
  %i.cjo = load ptr, ptr %i.cjn, align 8, !tbaa !317
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cjo, i64 72
  store ptr null, ptr %i.cjp, align 8, !tbaa !28
  %indvars.iv.next3659.7 = add nuw nsw i64 %indvars.iv3658, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge2563.loopexit.unr-lcssa, label %.lr.ph2562, !llvm.loop !589

.body621:                                         ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %.loopexit1237, %.loopexit.split-lp1238.loopexit.split-lp.loopexit, %.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp1238.loopexit, %bb.xn, %bb.xs, %bb.xo, %bb.ye, %bb.yf, %bb.yi, %bb.yj, %bb.yq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135, %bb.yg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1132, %bb.yb, %bb.ps, %common.resume.i.i, %bb.rf, %bb.rn, %bb.rq, %bb.rs, %bb.rt, %bb.sl, %bb.sm, %bb.sz, %bb.ta, %bb.tb, %bb.tc, %bb.ti, %bb.tj, %bb.tp, %bb.tq, %bb.ty, %bb.uc, %bb.ud, %.body.i1027, %bb.up, %bb.ur, %bb.uv, %bb.vc, %bb.vo, %bb.vw, %bb.vy, %bb.wc, %bb.wj, %bb.wp, %bb.wr, %.body289.i, %bb.xe, %bb.xi, %bb.fw, %bb.fr, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.ff, %bb.eq, %bb.ei, %bb.ee, %bb.lu, %bb.lt, %bb.lq, %bb.lp, %bb.ll, %bb.lh, %bb.lg, %bb.ld, %bb.kz, %bb.kv, %bb.ks, %.body242.i, %.body.i699, %bb.il, %bb.ii, %bb.ih, %bb.ib, %bb.hx, %bb.pe, %bb.pb, %bb.md, %bb.nd, %bb.ng, %bb.nh, %bb.ni, %bb.nj, %bb.nk, %bb.oh, %bb.oi, %bb.ol, %bb.om, %bb.on, %bb.oo, %bb.op, %bb.ge, %bb.gi, %bb.go, %bb.gp, %bb.gs, %bb.gy, %.thread182.i, %bb.hp
  %.pn217.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.i, %bb.pb ], [ %i.agg, %bb.fi ], [ %i.acr, %bb.eq ], [ %i.ahv, %bb.fr ], [ %i.aim, %bb.fw ], [ %i.agi, %bb.fk ], [ %i.abl, %bb.ee ], [ %i.agh, %bb.fj ], [ %i.aby, %bb.ei ], [ %.pn.pn.i, %bb.ff ], [ %.pn161.pn.i, %bb.fh ], [ %i.ald, %bb.gp ], [ %i.ajq, %bb.ge ], [ %i.akf, %bb.gi ], [ %i.all, %bb.gs ], [ %i.alc, %bb.go ], [ %i.anc, %bb.hp ], [ %.pn.pn185.i, %.thread182.i ], [ %.pn94.pn.i, %bb.gy ], [ %i.aps, %bb.ih ], [ %i.aog, %bb.hx ], [ %i.aov, %bb.ib ], [ %i.aqb, %bb.il ], [ %.pn177.i, %bb.lt ], [ %eh.lpad-body.i, %.body.i699 ], [ %eh.lpad-body243.i, %.body242.i ], [ %.pn.pn.i704, %bb.ks ], [ %.pn161.i, %bb.kv ], [ %.pn163.pn.i, %bb.kz ], [ %.pn166.pn.i, %bb.ld ], [ %.pn169.i, %bb.lg ], [ %i.avu, %bb.lh ], [ %.pn171.pn.i, %bb.ll ], [ %.pn174.pn.i, %bb.lp ], [ %i.avz, %bb.lq ], [ %i.awb, %bb.lu ], [ %i.apt, %bb.ii ], [ %i.bff, %bb.oo ], [ %i.axs, %bb.md ], [ %.pn.pn.pn.i, %bb.nd ], [ %.pn135.pn.pn.i, %bb.ng ], [ %i.bcb, %bb.nj ], [ %i.bbz, %bb.nh ], [ %i.bca, %bb.ni ], [ %i.bcc, %bb.nk ], [ %.pn143.pn.pn.i, %bb.oh ], [ %i.bfa, %bb.oi ], [ %.pn147.pn.pn.i, %bb.ol ], [ %i.bfd, %bb.om ], [ %i.bfe, %bb.on ], [ %i.bfg, %bb.op ], [ %i.ccu, %bb.wr ], [ %.pn21.i, %bb.pe ], [ %i.chc, %bb.yj ], [ %i.brq, %bb.sl ], [ %i.cek, %bb.xo ], [ %.pn.i997, %bb.wj ], [ %i.ces, %bb.xs ], [ %i.cej, %bb.xn ], [ %i.cgm, %bb.yb ], [ %.pn202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1132 ], [ %i.cgt, %bb.ye ], [ %i.cgu, %bb.yf ], [ %eh.lpad-body1121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135 ], [ %i.cgv, %bb.yg ], [ %i.chb, %bb.yi ], [ %.pn206, %bb.yq ], [ %lpad.loopexit.split-lp1261, %.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %common.resume.op.i.i, %common.resume.i.i ], [ %i.bof, %bb.rs ], [ %i.bnm, %bb.rn ], [ %i.bmd, %bb.rf ], [ %i.bnw, %bb.rq ], [ %i.bog, %bb.rt ], [ %i.bvp, %bb.tp ], [ %.pn.pn.i870, %bb.ps ], [ %i.bur, %bb.ti ], [ %i.btt, %bb.tb ], [ %i.btr, %bb.sz ], [ %i.bts, %bb.ta ], [ %i.btu, %bb.tc ], [ %i.bus, %bb.tj ], [ %i.bvq, %bb.tq ], [ %i.brr, %bb.sm ], [ %i.cdx, %bb.xi ], [ %i.bwd, %bb.ty ], [ %i.bxt, %bb.up ], [ %i.byn, %bb.uv ], [ %i.cam, %bb.vw ], [ %i.cbf, %bb.wc ], [ %i.ccm, %bb.wp ], [ %i.byb, %bb.ur ], [ %i.bwx, %bb.uc ], [ %i.cas, %bb.vy ], [ %eh.lpad-body.i1028, %.body.i1027 ], [ %i.bwy, %bb.ud ], [ %i.cab, %bb.vo ], [ %.pn174.i, %bb.vc ], [ %i.cdp, %bb.xe ], [ %eh.lpad-body290.i, %.body289.i ], [ %lpad.loopexit1239, %.loopexit1237 ], [ %lpad.loopexit1242, %.loopexit.split-lp1238.loopexit ], [ %lpad.loopexit1245, %.loopexit.split-lp1238.loopexit.split-lp.loopexit ], [ %lpad.loopexit1248, %.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit1251, %.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit1254, %.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit1257, %.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit1260, %.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit1227, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit1230, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit1232, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit1235, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_ZN12_GLOBAL__N_114SvaNfaLowering8LowerCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %56) #26
  br label %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit

_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit: ; preds = %bb.xh, %bb.xg, %.body621, %bb.xf
  %.pn217.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn217.pn.pn.pn.pn.pn, %.body621 ], [ %i.cds, %bb.xf ], [ %i.cdt, %bb.xg ], [ %i.cdt, %bb.xh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #26
  br label %bb.yw

bb.yw:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599, %.body339, %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit, %bb.ad, %bb.q
  %.pn259 = phi { ptr, i32 } [ %i.ci, %bb.q ], [ %.pn227.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599 ], [ %i.fw, %bb.ac ], [ %.pn199, %.body339 ], [ %.pn217.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit ], [ %i.fx, %bb.ad ], [ %.pn246.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430 ], [ %.pn236.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533 ]
  call fastcc void @_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %41) #26
  br label %bb.yx

bb.yx:                                            ; preds = %bb.yw, %bb.n
  %.pn259.pn = phi { ptr, i32 } [ %.pn259, %bb.yw ], [ %i.cb, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #26
  %.not.i.i.i1159 = icmp eq ptr %.sroa.01203.4, null
  br i1 %.not.i.i.i1159, label %.body, label %bb.yy

bb.yy:                                            ; preds = %bb.yx
  %i.cjq = ptrtoint ptr %.sroa.01203.4 to i64
  %i.cjr = sub i64 %.sroa.11.4, %i.cjq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01203.4, i64 noundef %i.cjr) #27
  br label %.body

.body:                                            ; preds = %bb.l, %bb.m, %bb.yx, %bb.yy
  %.pn263.pn.pn = phi { ptr, i32 } [ %.pn259.pn, %bb.yy ], [ %lpad.phi.i, %bb.l ], [ %.pn259.pn, %bb.yx ], [ %lpad.phi.i, %bb.m ] ; 2 uses
  %.not.i.i.i1161 = icmp eq ptr %.sroa.01211.03992, null
  br i1 %.not.i.i.i1161, label %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit1162, label %bb.yz

bb.yz:                                            ; preds = %.body
  %i.cjs = ptrtoint ptr %.sroa.01211.03992 to i64
  %i.cjt = sub i64 %.sroa.30.03991, %i.cjs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01211.03992, i64 noundef %i.cjt) #27
  br label %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit1162

_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit1162: ; preds = %bb.d, %.body, %bb.yz
  %.pn268.pn.pn = phi { ptr, i32 } [ %.pn263.pn.pn, %bb.yz ], [ %i.ai, %bb.d ], [ %.pn263.pn.pn, %.body ] ; 2 uses
  %i.cju = load ptr, ptr %39, align 8, !tbaa !26  ; 2 uses
  %i.cjv = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.cjw = icmp eq ptr %i.cju, %i.cjv
  br i1 %i.cjw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1163: ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit1162
  %i.cjx = load i64, ptr %i.cjv, align 8, !tbaa !28
  %i.cjy = add i64 %i.cjx, 1
  call void @_ZdlPvm(ptr noundef %i.cju, i64 noundef %i.cjy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1165: ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit1162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330
  %.pn268.pn.pn.pn = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330 ], [ %.pn268.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1163 ], [ %.pn268.pn.pn, %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit1162 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  resume { ptr, i32 } %.pn268.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode5backpEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN16AssertNfaVisitor27splitImplicationPassActionsEP9AstAssertRKNS_13PropertyPartsEP11AstNodeExpr(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207
  %i.e = tail call noundef ptr @_ZN7AstNode20unlinkFrBackWithNextEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %i.d, ptr noundef null) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.g = load i8, ptr %i.f, align 2, !tbaa !177, !range !76, !noundef !77
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #31 ; 10 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !276
  %i.k = invoke noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %i.j, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %_ZN11AstNodeExpr13cloneTreePureEb.exit unwind label %bb.g ; 3 uses

_ZN11AstNodeExpr13cloneTreePureEb.exit:           ; preds = %bb.b
  %i.l = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #31
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZN11AstNodeExpr13cloneTreePureEb.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !184
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !259  ; 2 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.l, i16 178, ptr noundef %i.n)
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %.noexc
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV10AstSampled, i64 16), ptr %i.l, align 8, !tbaa !79
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.l, ptr noundef nonnull %i.k)
          to label %.noexc5.i unwind label %bb.d

.noexc5.i:                                        ; preds = %.noexc.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !259
  %.not.i.i.i = icmp eq ptr %i.r, %i.p
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit, label %bb.c

bb.c:                                             ; preds = %.noexc5.i
  store ptr %i.p, ptr %i.q, align 8, !tbaa !259
  %i.s = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90
  br label %_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit

bb.d:                                             ; preds = %.noexc.i, %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 152) #27
  br label %.body

_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit:    ; preds = %bb.c, %.noexc5.i
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(168) %i.i, i16 325, ptr noundef %i.b)
          to label %.noexc27 unwind label %bb.g

.noexc27:                                         ; preds = %_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit
  store ptr getelementptr inbounds nuw inrange(-16, 432) (i8, ptr @_ZTV12AstNodeUniop, i64 16), ptr %i.i, align 8, !tbaa !79
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  store i64 0, ptr %i.v, align 8
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !259  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !259
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.w
  br i1 %.not.i.i.i.i, label %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i, label %bb.e

bb.e:                                             ; preds = %.noexc27
  store ptr %i.w, ptr %i.x, align 8, !tbaa !259
  %i.z = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90
  br label %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i

_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i: ; preds = %bb.e, %.noexc27
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(168) %i.i, ptr noundef nonnull %i.l)
          to label %.noexc28 unwind label %bb.g

.noexc28:                                         ; preds = %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 432) (i8, ptr @_ZTV9AstLogNot, i64 16), ptr %i.i, align 8, !tbaa !79
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  store i8 0, ptr %i.ab, align 8, !tbaa !354
  %i.ac = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(168) %i.i, i8 1)
          to label %.noexc29 unwind label %bb.g   ; 2 uses

.noexc29:                                         ; preds = %.noexc28
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !259
  %.not.i.i5.i = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i.i5.i, label %_ZN9AstLogNotC2EP8FileLineP11AstNodeExprb.exit, label %bb.f
end_hunk_2
