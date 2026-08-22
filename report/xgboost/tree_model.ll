Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/tree_model?download=true
inline.NumInlined: 8893
inline.NumDeleted: 2320
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 92
begin_hunk_0_@_ZNSt6vectorIN7xgboost7RegTree22CategoricalSplitMatrix7SegmentESaIS3_EE17_M_default_appendEm:bb.a
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !658
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN7xgboost7RegTree22CategoricalSplitMatrix7SegmentEmS3_ET_S5_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN7xgboost7RegTree22CategoricalSplitMatrix7SegmentEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 4                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !63
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN7xgboost7RegTree22CategoricalSplitMatrix7SegmentESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #34
  unreachable

_ZNKSt6vectorIN7xgboost7RegTree22CategoricalSplitMatrix7SegmentESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 576460752303423487) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #36 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7xgboost7RegTree22CategoricalSplitMatrix7SegmentESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN7xgboost7RegTree22CategoricalSplitMatrix7SegmentESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN7xgboost7RegTree22CategoricalSplitMatrix7SegmentESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN7xgboost7RegTree22CategoricalSplitMatrix7SegmentESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !246, !alias.scope !659
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7xgboost7RegTree22CategoricalSplitMatrix7SegmentESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !663

_ZNSt6vectorIN7xgboost7RegTree22CategoricalSplitMatrix7SegmentESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN7xgboost7RegTree22CategoricalSplitMatrix7SegmentESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN7xgboost7RegTree22CategoricalSplitMatrix7SegmentESaIS3_EE13_M_deallocateEPS3_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7xgboost7RegTree22CategoricalSplitMatrix7SegmentESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.z = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #35
  br label %_ZNSt12_Vector_baseIN7xgboost7RegTree22CategoricalSplitMatrix7SegmentESaIS3_EE13_M_deallocateEPS3_m.exit37

_ZNSt12_Vector_baseIN7xgboost7RegTree22CategoricalSplitMatrix7SegmentESaIS3_EE13_M_deallocateEPS3_m.exit37: ; preds = %_ZNSt6vectorIN7xgboost7RegTree22CategoricalSplitMatrix7SegmentESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !66
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %1
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !658
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN7xgboost7RegTree22CategoricalSplitMatrix7SegmentEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN7xgboost7RegTree22CategoricalSplitMatrix7SegmentESaIS3_EE13_M_deallocateEPS3_m.exit37, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree10TrainParam11__DECLARE__EPN4dmlc9parameter21ParamManagerSingletonIS1_EE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.s = alloca i64, align 8                      ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %i.v = alloca i64, align 8                      ; 5 uses
  %i.w = alloca i64, align 8                      ; 5 uses
  %i.x = alloca i64, align 8                      ; 5 uses
  %i.y = alloca i64, align 8                      ; 5 uses
  %i.z = alloca i64, align 8                      ; 5 uses
  %i.aa = alloca i64, align 8                     ; 5 uses
  %i.ab = alloca i64, align 8                     ; 5 uses
  %i.ac = alloca i64, align 8                     ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.ad = alloca i64, align 8                     ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %57 = alloca %"class.std::vector.11", align 8   ; 9 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.ae, ptr %16, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ae, ptr noundef nonnull align 1 dereferenceable(13) @.str.83, i64 13, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 13, ptr %i.af, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 29
  store i8 0, ptr %i.ag, align 1, !tbaa !15
  %i.ah = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #36
          to label %.noexc223 unwind label %bb.j  ; 14 uses

.noexc223:                                        ; preds = %._crit_edge.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.ah, i8 0, i64 144, i1 false)
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 64 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 133
  store i8 0, ptr %i.ap, align 1, !tbaa !664
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIfEE, i64 16), ptr %i.ah, align 16, !tbaa !47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %.noexc224 unwind label %bb.j

.noexc224:                                        ; preds = %.noexc223
  %i.aq = load i64, ptr %i.am, align 16, !tbaa !12
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %.noexc224
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.as, ptr %15, align 8, !tbaa !8, !alias.scope !668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.as, ptr noundef nonnull align 1 dereferenceable(5) @.str.160, i64 5, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store i64 5, ptr %i.at, align 8, !tbaa !12, !alias.scope !668
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 21
  store i8 0, ptr %i.au, align 1, !tbaa !15, !alias.scope !668
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.av, ptr noundef nonnull align 1 dereferenceable(5) @.str.160, i64 5, i1 false)
  %i.aw = load i64, ptr %i.at, align 8, !tbaa !12 ; 2 uses
  store i64 %i.aw, ptr %i.am, align 16, !tbaa !12
  %i.ax = load ptr, ptr %i.ak, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw
  store i8 0, ptr %i.ay, align 1, !tbaa !15
  %.pre.i.i.i = load ptr, ptr %15, align 8, !tbaa !17
  store i64 0, ptr %i.at, align 8, !tbaa !12
  store i8 0, ptr %.pre.i.i.i, align 1, !tbaa !15
  %i.az = load ptr, ptr %15, align 8, !tbaa !17   ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.as
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.bb = load i64, ptr %i.as, align 8, !tbaa !15
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.noexc224
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  store i64 4, ptr %i.bd, align 8, !tbaa !673
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull %i.ah)
          to label %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit unwind label %bb.j

_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i
  %i.be = load ptr, ptr %i.ah, align 16, !tbaa !47
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef nonnull align 8 dereferenceable(144) ptr %i.bg(ptr noundef nonnull align 8 dereferenceable(144) %i.ah, float noundef 0.000000e+00)
          to label %.noexc.i227 unwind label %bb.j ; 3 uses

.noexc.i227:                                      ; preds = %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  store float 3.000000e-01, ptr %i.bi, align 8, !tbaa !674
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i8 1, ptr %i.bj, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  %i.bk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.bk, ptr %17, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #15
  store i64 35, ptr %i.ad, align 8, !tbaa !16
  %i.bl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i64 noundef 0)
          to label %.noexc228 unwind label %bb.k  ; 3 uses

.noexc228:                                        ; preds = %.noexc.i227
  store ptr %i.bl, ptr %17, align 8, !tbaa !17
  %i.bm = load i64, ptr %i.ad, align 8, !tbaa !16 ; 3 uses
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.bl, ptr noundef nonnull align 1 dereferenceable(35) @.str.84, i64 35, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  store i8 0, ptr %i.bo, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #15
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.l

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc228
  %i.bq = load ptr, ptr %17, align 8, !tbaa !17   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.bk
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bs = load i64, ptr %i.bk, align 8, !tbaa !15
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  %i.bu = load ptr, ptr %16, align 8, !tbaa !17   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.ae
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bw = load i64, ptr %i.ae, align 8, !tbaa !15
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  %i.by = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.by, ptr %18, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.by, ptr noundef nonnull align 1 dereferenceable(14) @.str.85, i64 14, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 14, ptr %i.bz, align 8, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %18, i64 30
  store i8 0, ptr %i.ca, align 2, !tbaa !15
  %i.cb = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #36
          to label %.noexc244 unwind label %bb.n  ; 14 uses

.noexc244:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.cb, i8 0, i64 144, i1 false)
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 56 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 64 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 88
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 104
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 133
  store i8 0, ptr %i.cj, align 1, !tbaa !664
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIfEE, i64 16), ptr %i.cb, align 16, !tbaa !47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %.noexc245 unwind label %bb.n

.noexc245:                                        ; preds = %.noexc244
  %i.ck = load i64, ptr %i.cg, align 16, !tbaa !12
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i239, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i239: ; preds = %.noexc245
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr %i.cm, ptr %14, align 8, !tbaa !8, !alias.scope !676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.cm, ptr noundef nonnull align 1 dereferenceable(5) @.str.160, i64 5, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store i64 5, ptr %i.cn, align 8, !tbaa !12, !alias.scope !676
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 21
  store i8 0, ptr %i.co, align 1, !tbaa !15, !alias.scope !676
  %i.cp = load ptr, ptr %i.ce, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.cp, ptr noundef nonnull align 1 dereferenceable(5) @.str.160, i64 5, i1 false)
  %i.cq = load i64, ptr %i.cn, align 8, !tbaa !12 ; 2 uses
  store i64 %i.cq, ptr %i.cg, align 16, !tbaa !12
  %i.cr = load ptr, ptr %i.ce, align 8, !tbaa !17
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq
  store i8 0, ptr %i.cs, align 1, !tbaa !15
  %.pre.i.i.i240 = load ptr, ptr %14, align 8, !tbaa !17
  store i64 0, ptr %i.cn, align 8, !tbaa !12
  store i8 0, ptr %.pre.i.i.i240, align 1, !tbaa !15
  %i.ct = load ptr, ptr %14, align 8, !tbaa !17   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.cm
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i241: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i239
  %i.cv = load i64, ptr %i.cm, align 8, !tbaa !15
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i242: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i239, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i238

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i238: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i242, %.noexc245
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cb, i64 120
  store i64 8, ptr %i.cx, align 8, !tbaa !673
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull %i.cb)
          to label %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit247 unwind label %bb.n

_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit247: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i238
  %i.cy = load ptr, ptr %i.cb, align 16, !tbaa !47
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = invoke noundef nonnull align 8 dereferenceable(144) ptr %i.da(ptr noundef nonnull align 8 dereferenceable(144) %i.cb, float noundef 0.000000e+00)
          to label %.noexc.i249 unwind label %bb.n ; 3 uses

.noexc.i249:                                      ; preds = %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit247
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 128
  store float 0.000000e+00, ptr %i.dc, align 8, !tbaa !674
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i8 1, ptr %i.dd, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  %i.de = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.de, ptr %19, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #15
  store i64 60, ptr %i.ac, align 8, !tbaa !16
  %i.df = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i64 noundef 0)
          to label %.noexc250 unwind label %bb.o  ; 3 uses

.noexc250:                                        ; preds = %.noexc.i249
  store ptr %i.df, ptr %19, align 8, !tbaa !17
  %i.dg = load i64, ptr %i.ac, align 8, !tbaa !16 ; 3 uses
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.df, ptr noundef nonnull align 1 dereferenceable(60) @.str.86, i64 60, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !12
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  store i8 0, ptr %i.di, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #15
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit253 unwind label %bb.p

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit253: ; preds = %.noexc250
  %i.dk = load ptr, ptr %19, align 8, !tbaa !17   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.de
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit253
  %i.dm = load i64, ptr %i.de, align 8, !tbaa !15
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit253, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  %i.do = load ptr, ptr %18, align 8, !tbaa !17   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.by
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256
  %i.dq = load i64, ptr %i.by, align 8, !tbaa !15
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  %i.ds = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.ds, ptr %20, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ds, ptr noundef nonnull align 1 dereferenceable(9) @.str.87, i64 9, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 9, ptr %i.dt, align 8, !tbaa !12
  %i.du = getelementptr inbounds nuw i8, ptr %20, i64 25
  store i8 0, ptr %i.du, align 1, !tbaa !15
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dw = invoke noundef nonnull align 8 dereferenceable(248) ptr @_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIiEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 4 dereferenceable(4) %i.dv)
          to label %bb.a unwind label %bb.r       ; 2 uses

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !47
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 80
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.dz(ptr noundef nonnull align 8 dereferenceable(144) %i.dw, i32 noundef 0)
          to label %.noexc.i265 unwind label %bb.r ; 3 uses

.noexc.i265:                                      ; preds = %bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 128
  store i32 6, ptr %i.eb, align 8, !tbaa !681
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i8 1, ptr %i.ec, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  %i.ed = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.ed, ptr %21, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #15
  store i64 89, ptr %i.ab, align 8, !tbaa !16
  %i.ee = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i64 noundef 0)
          to label %.noexc266 unwind label %bb.s  ; 3 uses

.noexc266:                                        ; preds = %.noexc.i265
  store ptr %i.ee, ptr %21, align 8, !tbaa !17
  %i.ef = load i64, ptr %i.ab, align 8, !tbaa !16 ; 3 uses
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(89) %i.ee, ptr noundef nonnull align 1 dereferenceable(89) @.str.88, i64 89, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !12
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef
  store i8 0, ptr %i.eh, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #15
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.t

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc266
  %i.ej = load ptr, ptr %21, align 8, !tbaa !17   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.ed
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.el = load i64, ptr %i.ed, align 8, !tbaa !15
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  %i.en = load ptr, ptr %20, align 8, !tbaa !17   ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.ds
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271
  %i.ep = load i64, ptr %i.ds, align 8, !tbaa !15
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  %i.er = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.er, ptr %22, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.er, ptr noundef nonnull align 1 dereferenceable(10) @.str.89, i64 10, i1 false)
  %i.es = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 10, ptr %i.es, align 8, !tbaa !12
  %i.et = getelementptr inbounds nuw i8, ptr %22, i64 26
  store i8 0, ptr %i.et, align 2, !tbaa !15
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ev = invoke noundef nonnull align 8 dereferenceable(248) ptr @_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIiEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 4 dereferenceable(4) %i.eu)
          to label %bb.b unwind label %bb.v       ; 2 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !47
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 80
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.ey(ptr noundef nonnull align 8 dereferenceable(144) %i.ev, i32 noundef 0)
          to label %.noexc.i280 unwind label %bb.v ; 3 uses

.noexc.i280:                                      ; preds = %bb.b
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 128
  store i32 0, ptr %i.fa, align 8, !tbaa !681
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i8 1, ptr %i.fb, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  %i.fc = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.fc, ptr %23, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #15
  store i64 47, ptr %i.aa, align 8, !tbaa !16
  %i.fd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef 0)
          to label %.noexc281 unwind label %bb.w  ; 3 uses

.noexc281:                                        ; preds = %.noexc.i280
  store ptr %i.fd, ptr %23, align 8, !tbaa !17
  %i.fe = load i64, ptr %i.aa, align 8, !tbaa !16 ; 3 uses
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.fd, ptr noundef nonnull align 1 dereferenceable(47) @.str.90, i64 47, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !12
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fe
  store i8 0, ptr %i.fg, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #15
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fh, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit284 unwind label %bb.x

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit284: ; preds = %.noexc281
  %i.fi = load ptr, ptr %23, align 8, !tbaa !17   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.fc
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit284
  %i.fk = load i64, ptr %i.fc, align 8, !tbaa !15
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit284, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  %i.fm = load ptr, ptr %22, align 8, !tbaa !17   ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.er
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287
  %i.fo = load i64, ptr %i.er, align 8, !tbaa !15
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
end_hunk_0
begin_hunk_1_@_ZN7xgboost4tree10TrainParam11__DECLARE__EPN4dmlc9parameter21ParamManagerSingletonIS1_EE:._crit_edge.i.i
.noexc.i296:                                      ; preds = %bb.c
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 128
  store i32 256, ptr %i.fz, align 8, !tbaa !681
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store i8 1, ptr %i.ga, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  %i.gb = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.gb, ptr %25, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #15
  store i64 70, ptr %i.z, align 8, !tbaa !16
  %i.gc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.z, i64 noundef 0)
          to label %.noexc297 unwind label %bb.aa ; 3 uses

.noexc297:                                        ; preds = %.noexc.i296
  store ptr %i.gc, ptr %25, align 8, !tbaa !17
  %i.gd = load i64, ptr %i.z, align 8, !tbaa !16  ; 3 uses
  store i64 %i.gd, ptr %i.gb, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(70) %i.gc, ptr noundef nonnull align 1 dereferenceable(70) @.str.92, i64 70, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !12
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gd
  store i8 0, ptr %i.gf, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #15
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.gg, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit300 unwind label %bb.ab

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit300: ; preds = %.noexc297
  %i.gh = load ptr, ptr %25, align 8, !tbaa !17   ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.gb
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit300
  %i.gj = load i64, ptr %i.gb, align 8, !tbaa !15
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit300, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  %i.gl = load ptr, ptr %24, align 8, !tbaa !17   ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.fq
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303
  %i.gn = load i64, ptr %i.fq, align 8, !tbaa !15
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15
  %i.gp = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.gp, ptr %26, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.gp, ptr noundef nonnull align 1 dereferenceable(11) @.str.93, i64 11, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 11, ptr %i.gq, align 8, !tbaa !12
  %i.gr = getelementptr inbounds nuw i8, ptr %26, i64 27
  store i8 0, ptr %i.gr, align 1, !tbaa !15
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gt = invoke noundef nonnull align 8 dereferenceable(248) ptr @_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIiEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 4 dereferenceable(4) %i.gs)
          to label %._crit_edge.i.i311 unwind label %bb.ad ; 3 uses

._crit_edge.i.i311:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 128
  store i32 0, ptr %i.gu, align 8, !tbaa !681
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store i8 1, ptr %i.gv, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15
  %i.gw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.gw, ptr %27, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.gw, ptr noundef nonnull align 1 dereferenceable(9) @.str.94, i64 9, i1 false)
  %i.gx = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 9, ptr %i.gx, align 8, !tbaa !12
  %i.gy = getelementptr inbounds nuw i8, ptr %27, i64 25
  store i8 0, ptr %i.gy, align 1, !tbaa !15
  %i.gz = invoke noundef nonnull align 8 dereferenceable(248) ptr @_ZN4dmlc9parameter10FieldEntryIiE8add_enumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(248) %i.gt, ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 0)
          to label %._crit_edge.i.i315 unwind label %bb.ae

._crit_edge.i.i315:                               ; preds = %._crit_edge.i.i311
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15
  %i.ha = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.ha, ptr %28, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ha, ptr noundef nonnull align 1 dereferenceable(9) @.str.95, i64 9, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 9, ptr %i.hb, align 8, !tbaa !12
  %i.hc = getelementptr inbounds nuw i8, ptr %28, i64 25
  store i8 0, ptr %i.hc, align 1, !tbaa !15
  %i.hd = invoke noundef nonnull align 8 dereferenceable(248) ptr @_ZN4dmlc9parameter10FieldEntryIiE8add_enumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(248) %i.gz, ptr noundef nonnull align 8 dereferenceable(32) %28, i32 noundef 1)
          to label %.noexc.i320 unwind label %bb.af

.noexc.i320:                                      ; preds = %._crit_edge.i.i315
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #15
  %i.he = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  store ptr %i.he, ptr %29, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #15
  store i64 160, ptr %i.y, align 8, !tbaa !16
  %i.hf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef 0)
          to label %.noexc321 unwind label %bb.ag ; 3 uses

.noexc321:                                        ; preds = %.noexc.i320
  store ptr %i.hf, ptr %29, align 8, !tbaa !17
  %i.hg = load i64, ptr %i.y, align 8, !tbaa !16  ; 3 uses
  store i64 %i.hg, ptr %i.he, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(160) %i.hf, ptr noundef nonnull align 1 dereferenceable(160) @.str.96, i64 160, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.hg, ptr %i.hh, align 8, !tbaa !12
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hg
  store i8 0, ptr %i.hi, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #15
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.hj, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit324 unwind label %bb.ah

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit324: ; preds = %.noexc321
  %i.hk = load ptr, ptr %29, align 8, !tbaa !17   ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.he
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit324
  %i.hm = load i64, ptr %i.he, align 8, !tbaa !15
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.hn) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit324, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  %i.ho = load ptr, ptr %28, align 8, !tbaa !17   ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.ha
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327
  %i.hq = load i64, ptr %i.ha, align 8, !tbaa !15
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hr) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  %i.hs = load ptr, ptr %27, align 8, !tbaa !17   ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.gw
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330
  %i.hu = load i64, ptr %i.gw, align 8, !tbaa !15
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  %i.hw = load ptr, ptr %26, align 8, !tbaa !17   ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.gp
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333
  %i.hy = load i64, ptr %i.gp, align 8, !tbaa !15
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hz) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #15
  %i.ia = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  store ptr %i.ia, ptr %30, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #15
  store i64 17, ptr %i.x, align 8, !tbaa !16
  %i.ib = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.x, i64 noundef 0)
          to label %.noexc339 unwind label %bb.al ; 2 uses

.noexc339:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336
  store ptr %i.ib, ptr %30, align 8, !tbaa !17
  %i.ic = load i64, ptr %i.x, align 8, !tbaa !16  ; 3 uses
  store i64 %i.ic, ptr %i.ia, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ib, ptr noundef nonnull align 1 dereferenceable(17) @.str.97, i64 17, i1 false)
  %i.id = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 %i.ic, ptr %i.id, align 8, !tbaa !12
  %i.ie = load ptr, ptr %30, align 8, !tbaa !17
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ic
  store i8 0, ptr %i.if, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #15
  %i.ig = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #36
          to label %.noexc341 unwind label %bb.am ; 15 uses

.noexc341:                                        ; preds = %.noexc339
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.ig, i8 0, i64 144, i1 false)
  store ptr %i.ij, ptr %i.ii, align 8, !tbaa !8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 56
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 72
  store ptr %i.il, ptr %i.ik, align 8, !tbaa !8
  %i.im = getelementptr inbounds nuw i8, ptr %i.ig, i64 88
  %i.in = getelementptr inbounds nuw i8, ptr %i.ig, i64 104
  store ptr %i.in, ptr %i.im, align 8, !tbaa !8
  %i.io = getelementptr inbounds nuw i8, ptr %i.ig, i64 133
  store i8 0, ptr %i.io, align 1, !tbaa !683
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIjEE, i64 16), ptr %i.ig, align 16, !tbaa !47
  invoke void @_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIjEEjE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRj(ptr noundef nonnull align 8 dereferenceable(132) %i.ig, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ih)
          to label %.noexc342 unwind label %bb.am

.noexc342:                                        ; preds = %.noexc341
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull %i.ig)
          to label %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIjEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit unwind label %bb.am

_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIjEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit: ; preds = %.noexc342
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ig, i64 128
  store i32 4, ptr %i.ip, align 16, !tbaa !686
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store i8 1, ptr %i.iq, align 8, !tbaa !675
  %i.ir = load ptr, ptr %i.ig, align 16, !tbaa !47
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 80
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = invoke noundef nonnull align 8 dereferenceable(144) ptr %i.it(ptr noundef nonnull align 8 dereferenceable(144) %i.ig, i32 noundef 1)
          to label %.noexc.i345 unwind label %bb.an

.noexc.i345:                                      ; preds = %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIjEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #15
  %i.iv = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  store ptr %i.iv, ptr %31, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #15
  store i64 65, ptr %i.w, align 8, !tbaa !16
  %i.iw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef 0)
          to label %.noexc346 unwind label %bb.ao ; 3 uses

.noexc346:                                        ; preds = %.noexc.i345
  store ptr %i.iw, ptr %31, align 8, !tbaa !17
  %i.ix = load i64, ptr %i.w, align 8, !tbaa !16  ; 3 uses
  store i64 %i.ix, ptr %i.iv, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(65) %i.iw, ptr noundef nonnull align 1 dereferenceable(65) @.str.98, i64 65, i1 false)
  %i.iy = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 %i.ix, ptr %i.iy, align 8, !tbaa !12
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.ix
  store i8 0, ptr %i.iz, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #15
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iu, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ja, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIjEEjE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.ap

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIjEEjE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc346
  %i.jb = load ptr, ptr %31, align 8, !tbaa !17   ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.iv
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIjEEjE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.jd = load i64, ptr %i.iv, align 8, !tbaa !15
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIjEEjE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #15
  %i.jf = load ptr, ptr %30, align 8, !tbaa !17   ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.ia
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351
  %i.jh = load i64, ptr %i.ia, align 8, !tbaa !15
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #15
  %i.jj = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 6 uses
  store ptr %i.jj, ptr %32, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #15
  store i64 17, ptr %i.v, align 8, !tbaa !16
  %i.jk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef 0)
          to label %.noexc357 unwind label %bb.ar ; 2 uses

.noexc357:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354
  store ptr %i.jk, ptr %32, align 8, !tbaa !17
  %i.jl = load i64, ptr %i.v, align 8, !tbaa !16  ; 3 uses
  store i64 %i.jl, ptr %i.jj, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.jk, ptr noundef nonnull align 1 dereferenceable(17) @.str.99, i64 17, i1 false)
  %i.jm = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 %i.jl, ptr %i.jm, align 8, !tbaa !12
  %i.jn = load ptr, ptr %32, align 8, !tbaa !17
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jl
  store i8 0, ptr %i.jo, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #15
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jq = invoke noundef nonnull align 8 dereferenceable(248) ptr @_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIiEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 4 dereferenceable(4) %i.jp)
          to label %bb.d unwind label %bb.as      ; 4 uses

bb.d:                                             ; preds = %.noexc357
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 128
  store i32 64, ptr %i.jr, align 8, !tbaa !681
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  store i8 1, ptr %i.js, align 8, !tbaa !675
  %i.jt = load ptr, ptr %i.jq, align 8, !tbaa !47
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 80
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.jv(ptr noundef nonnull align 8 dereferenceable(144) %i.jq, i32 noundef 1)
          to label %.noexc.i360 unwind label %bb.at

.noexc.i360:                                      ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #15
  %i.jx = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  store ptr %i.jx, ptr %33, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #15
  store i64 86, ptr %i.u, align 8, !tbaa !16
  %i.jy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef 0)
          to label %.noexc361 unwind label %bb.au ; 3 uses

.noexc361:                                        ; preds = %.noexc.i360
  store ptr %i.jy, ptr %33, align 8, !tbaa !17
  %i.jz = load i64, ptr %i.u, align 8, !tbaa !16  ; 3 uses
  store i64 %i.jz, ptr %i.jx, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(86) %i.jy, ptr noundef nonnull align 1 dereferenceable(86) @.str.100, i64 86, i1 false)
  %i.ka = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 %i.jz, ptr %i.ka, align 8, !tbaa !12
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jz
  store i8 0, ptr %i.kb, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #15
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jw, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.kc, ptr noundef nonnull align 8 dereferenceable(32) %33)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit364 unwind label %bb.av

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit364: ; preds = %.noexc361
  %i.kd = load ptr, ptr %33, align 8, !tbaa !17   ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.jx
  br i1 %i.ke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i365

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i365: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit364
  %i.kf = load i64, ptr %i.jx, align 8, !tbaa !15
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kg) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit364, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i365
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #15
  %i.kh = load ptr, ptr %32, align 8, !tbaa !17   ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.jj
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367
  %i.kj = load i64, ptr %i.jj, align 8, !tbaa !15
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kk) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #15
  %i.kl = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 6 uses
  store ptr %i.kl, ptr %34, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #15
  store i64 16, ptr %i.t, align 8, !tbaa !16
  %i.km = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef 0)
          to label %.noexc373 unwind label %bb.ax ; 2 uses

.noexc373:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370
  store ptr %i.km, ptr %34, align 8, !tbaa !17
  %i.kn = load i64, ptr %i.t, align 8, !tbaa !16  ; 3 uses
  store i64 %i.kn, ptr %i.kl, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.km, ptr noundef nonnull align 1 dereferenceable(16) @.str.101, i64 16, i1 false)
  %i.ko = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 %i.kn, ptr %i.ko, align 8, !tbaa !12
  %i.kp = load ptr, ptr %34, align 8, !tbaa !17
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kn
  store i8 0, ptr %i.kq, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #15
  %i.kr = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #36
          to label %.noexc381 unwind label %bb.ay ; 14 uses

.noexc381:                                        ; preds = %.noexc373
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 24 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.kr, i8 0, i64 144, i1 false)
  store ptr %i.kt, ptr %i.ks, align 8, !tbaa !8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 56 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 72
  store ptr %i.kv, ptr %i.ku, align 8, !tbaa !8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 64 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 88
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kr, i64 104
  store ptr %i.ky, ptr %i.kx, align 8, !tbaa !8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kr, i64 133
  store i8 0, ptr %i.kz, align 1, !tbaa !664
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIfEE, i64 16), ptr %i.kr, align 16, !tbaa !47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ks, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %.noexc382 unwind label %bb.ay

.noexc382:                                        ; preds = %.noexc381
  %i.la = load i64, ptr %i.kw, align 16, !tbaa !12
  %i.lb = icmp eq i64 %i.la, 0
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i376, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i375

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i376: ; preds = %.noexc382
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.lc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.lc, ptr %13, align 8, !tbaa !8, !alias.scope !687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.lc, ptr noundef nonnull align 1 dereferenceable(5) @.str.160, i64 5, i1 false)
  %i.ld = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i64 5, ptr %i.ld, align 8, !tbaa !12, !alias.scope !687
  %i.le = getelementptr inbounds nuw i8, ptr %13, i64 21
  store i8 0, ptr %i.le, align 1, !tbaa !15, !alias.scope !687
  %i.lf = load ptr, ptr %i.ku, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.lf, ptr noundef nonnull align 1 dereferenceable(5) @.str.160, i64 5, i1 false)
  %i.lg = load i64, ptr %i.ld, align 8, !tbaa !12 ; 2 uses
  store i64 %i.lg, ptr %i.kw, align 16, !tbaa !12
  %i.lh = load ptr, ptr %i.ku, align 8, !tbaa !17
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lg
  store i8 0, ptr %i.li, align 1, !tbaa !15
  %.pre.i.i.i377 = load ptr, ptr %13, align 8, !tbaa !17
  store i64 0, ptr %i.ld, align 8, !tbaa !12
  store i8 0, ptr %.pre.i.i.i377, align 1, !tbaa !15
  %i.lj = load ptr, ptr %13, align 8, !tbaa !17   ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.lc
  br i1 %i.lk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i379, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i378

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i378: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i376
  %i.ll = load i64, ptr %i.lc, align 8, !tbaa !15
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.lm) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i379

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i379: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i376, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i378
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i375

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i375: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i379, %.noexc382
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kr, i64 120
  store i64 36, ptr %i.ln, align 8, !tbaa !673
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull %i.kr)
          to label %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit384 unwind label %bb.ay

_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit384: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i375
  %i.lo = load ptr, ptr %i.kr, align 16, !tbaa !47
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 80
  %i.lq = load ptr, ptr %i.lp, align 8
  %i.lr = invoke noundef nonnull align 8 dereferenceable(144) ptr %i.lq(ptr noundef nonnull align 8 dereferenceable(144) %i.kr, float noundef 0.000000e+00)
          to label %.noexc.i386 unwind label %bb.ay ; 3 uses

.noexc.i386:                                      ; preds = %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit384
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 128
  store float 1.000000e+00, ptr %i.ls, align 8, !tbaa !674
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  store i8 1, ptr %i.lt, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #15
  %i.lu = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  store ptr %i.lu, ptr %35, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #15
  store i64 58, ptr %i.s, align 8, !tbaa !16
  %i.lv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef 0)
          to label %.noexc387 unwind label %bb.az ; 3 uses

.noexc387:                                        ; preds = %.noexc.i386
  store ptr %i.lv, ptr %35, align 8, !tbaa !17
  %i.lw = load i64, ptr %i.s, align 8, !tbaa !16  ; 3 uses
  store i64 %i.lw, ptr %i.lu, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.lv, ptr noundef nonnull align 1 dereferenceable(58) @.str.102, i64 58, i1 false)
  %i.lx = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %i.lw, ptr %i.lx, align 8, !tbaa !12
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lw
  store i8 0, ptr %i.ly, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #15
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lr, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.lz, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit390 unwind label %bb.ba

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit390: ; preds = %.noexc387
  %i.ma = load ptr, ptr %35, align 8, !tbaa !17   ; 2 uses
  %i.mb = icmp eq ptr %i.ma, %i.lu
  br i1 %i.mb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit390
  %i.mc = load i64, ptr %i.lu, align 8, !tbaa !15
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.md) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit390, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #15
  %i.me = load ptr, ptr %34, align 8, !tbaa !17   ; 2 uses
  %i.mf = icmp eq ptr %i.me, %i.kl
  br i1 %i.mf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393
  %i.mg = load i64, ptr %i.kl, align 8, !tbaa !15
  %i.mh = add i64 %i.mg, 1
  call void @_ZdlPvm(ptr noundef %i.me, i64 noundef %i.mh) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #15
  %i.mi = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 6 uses
  store ptr %i.mi, ptr %36, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.mi, ptr noundef nonnull align 1 dereferenceable(10) @.str.103, i64 10, i1 false)
  %i.mj = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 10, ptr %i.mj, align 8, !tbaa !12
  %i.mk = getelementptr inbounds nuw i8, ptr %36, i64 26
  store i8 0, ptr %i.mk, align 2, !tbaa !15
  %i.ml = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #36
          to label %.noexc407 unwind label %bb.bc ; 14 uses

.noexc407:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 24 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.ml, i8 0, i64 144, i1 false)
  store ptr %i.mn, ptr %i.mm, align 8, !tbaa !8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 56 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 72
  store ptr %i.mp, ptr %i.mo, align 8, !tbaa !8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ml, i64 64 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ml, i64 88
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ml, i64 104
  store ptr %i.ms, ptr %i.mr, align 8, !tbaa !8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ml, i64 133
  store i8 0, ptr %i.mt, align 1, !tbaa !664
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIfEE, i64 16), ptr %i.ml, align 16, !tbaa !47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.mm, ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %.noexc408 unwind label %bb.bc

.noexc408:                                        ; preds = %.noexc407
  %i.mu = load i64, ptr %i.mq, align 16, !tbaa !12
  %i.mv = icmp eq i64 %i.mu, 0
  br i1 %i.mv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i402, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i401

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i402: ; preds = %.noexc408
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.mw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.mw, ptr %12, align 8, !tbaa !8, !alias.scope !692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.mw, ptr noundef nonnull align 1 dereferenceable(5) @.str.160, i64 5, i1 false)
  %i.mx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i64 5, ptr %i.mx, align 8, !tbaa !12, !alias.scope !692
  %i.my = getelementptr inbounds nuw i8, ptr %12, i64 21
  store i8 0, ptr %i.my, align 1, !tbaa !15, !alias.scope !692
  %i.mz = load ptr, ptr %i.mo, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.mz, ptr noundef nonnull align 1 dereferenceable(5) @.str.160, i64 5, i1 false)
  %i.na = load i64, ptr %i.mx, align 8, !tbaa !12 ; 2 uses
  store i64 %i.na, ptr %i.mq, align 16, !tbaa !12
  %i.nb = load ptr, ptr %i.mo, align 8, !tbaa !17
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.na
  store i8 0, ptr %i.nc, align 1, !tbaa !15
  %.pre.i.i.i403 = load ptr, ptr %12, align 8, !tbaa !17
  store i64 0, ptr %i.mx, align 8, !tbaa !12
  store i8 0, ptr %.pre.i.i.i403, align 1, !tbaa !15
  %i.nd = load ptr, ptr %12, align 8, !tbaa !17   ; 2 uses
  %i.ne = icmp eq ptr %i.nd, %i.mw
  br i1 %i.ne, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i404: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i402
  %i.nf = load i64, ptr %i.mw, align 8, !tbaa !15
  %i.ng = add i64 %i.nf, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.ng) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i405

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i405: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i402, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i404
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i401

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i401: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i405, %.noexc408
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ml, i64 120
  store i64 40, ptr %i.nh, align 8, !tbaa !673
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull %i.ml)
          to label %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit410 unwind label %bb.bc

_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit410: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i401
  %i.ni = load ptr, ptr %i.ml, align 16, !tbaa !47
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 80
  %i.nk = load ptr, ptr %i.nj, align 8
  %i.nl = invoke noundef nonnull align 8 dereferenceable(144) ptr %i.nk(ptr noundef nonnull align 8 dereferenceable(144) %i.ml, float noundef 0.000000e+00)
          to label %.noexc.i412 unwind label %bb.bc ; 3 uses

.noexc.i412:                                      ; preds = %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit410
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 128
  store float 1.000000e+00, ptr %i.nm, align 8, !tbaa !674
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  store i8 1, ptr %i.nn, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #15
  %i.no = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 6 uses
  store ptr %i.no, ptr %37, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #15
  store i64 32, ptr %i.r, align 8, !tbaa !16
  %i.np = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef 0)
          to label %.noexc413 unwind label %bb.bd ; 2 uses

.noexc413:                                        ; preds = %.noexc.i412
  store ptr %i.np, ptr %37, align 8, !tbaa !17
  %i.nq = load i64, ptr %i.r, align 8, !tbaa !16  ; 3 uses
  store i64 %i.nq, ptr %i.no, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.np, ptr noundef nonnull align 1 dereferenceable(32) @.str.104, i64 32, i1 false)
  %i.nr = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 %i.nq, ptr %i.nr, align 8, !tbaa !12
  %i.ns = load ptr, ptr %37, align 8, !tbaa !17
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nq
  store i8 0, ptr %i.nt, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #15
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nl, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.nu, ptr noundef nonnull align 8 dereferenceable(32) %37)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit416 unwind label %bb.be

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit416: ; preds = %.noexc413
  %i.nv = load ptr, ptr %37, align 8, !tbaa !17   ; 2 uses
  %i.nw = icmp eq ptr %i.nv, %i.no
  br i1 %i.nw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit416
  %i.nx = load i64, ptr %i.no, align 8, !tbaa !15
  %i.ny = add i64 %i.nx, 1
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.ny) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit416, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #15
  %i.nz = load ptr, ptr %36, align 8, !tbaa !17   ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %i.mi
  br i1 %i.oa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419
  %i.ob = load i64, ptr %i.mi, align 8, !tbaa !15
  %i.oc = add i64 %i.ob, 1
  call void @_ZdlPvm(ptr noundef %i.nz, i64 noundef %i.oc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #15
  %i.od = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 6 uses
  store ptr %i.od, ptr %38, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.od, ptr noundef nonnull align 1 dereferenceable(9) @.str.105, i64 9, i1 false)
  %i.oe = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 9, ptr %i.oe, align 8, !tbaa !12
  %i.of = getelementptr inbounds nuw i8, ptr %38, i64 25
  store i8 0, ptr %i.of, align 1, !tbaa !15
  %i.og = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #36
          to label %.noexc433 unwind label %bb.bg ; 14 uses

.noexc433:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 24 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.og, i8 0, i64 144, i1 false)
  store ptr %i.oi, ptr %i.oh, align 8, !tbaa !8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 56 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 72
  store ptr %i.ok, ptr %i.oj, align 8, !tbaa !8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.og, i64 64 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.og, i64 88
  %i.on = getelementptr inbounds nuw i8, ptr %i.og, i64 104
  store ptr %i.on, ptr %i.om, align 8, !tbaa !8
  %i.oo = getelementptr inbounds nuw i8, ptr %i.og, i64 133
  store i8 0, ptr %i.oo, align 1, !tbaa !664
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIfEE, i64 16), ptr %i.og, align 16, !tbaa !47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.oh, ptr noundef nonnull align 8 dereferenceable(32) %38)
          to label %.noexc434 unwind label %bb.bg

.noexc434:                                        ; preds = %.noexc433
  %i.op = load i64, ptr %i.ol, align 16, !tbaa !12
  %i.oq = icmp eq i64 %i.op, 0
  br i1 %i.oq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i428, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i427

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i428: ; preds = %.noexc434
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.or = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.or, ptr %11, align 8, !tbaa !8, !alias.scope !697
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.or, ptr noundef nonnull align 1 dereferenceable(5) @.str.160, i64 5, i1 false)
  %i.os = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i64 5, ptr %i.os, align 8, !tbaa !12, !alias.scope !697
  %i.ot = getelementptr inbounds nuw i8, ptr %11, i64 21
  store i8 0, ptr %i.ot, align 1, !tbaa !15, !alias.scope !697
  %i.ou = load ptr, ptr %i.oj, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ou, ptr noundef nonnull align 1 dereferenceable(5) @.str.160, i64 5, i1 false)
  %i.ov = load i64, ptr %i.os, align 8, !tbaa !12 ; 2 uses
  store i64 %i.ov, ptr %i.ol, align 16, !tbaa !12
  %i.ow = load ptr, ptr %i.oj, align 8, !tbaa !17
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.ov
  store i8 0, ptr %i.ox, align 1, !tbaa !15
  %.pre.i.i.i429 = load ptr, ptr %11, align 8, !tbaa !17
  store i64 0, ptr %i.os, align 8, !tbaa !12
  store i8 0, ptr %.pre.i.i.i429, align 1, !tbaa !15
  %i.oy = load ptr, ptr %11, align 8, !tbaa !17   ; 2 uses
  %i.oz = icmp eq ptr %i.oy, %i.or
  br i1 %i.oz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i431, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i430

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i430: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i428
  %i.pa = load i64, ptr %i.or, align 8, !tbaa !15
  %i.pb = add i64 %i.pa, 1
  call void @_ZdlPvm(ptr noundef %i.oy, i64 noundef %i.pb) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i431

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i431: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i428, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i430
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i427

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i427: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i431, %.noexc434
  %i.pc = getelementptr inbounds nuw i8, ptr %i.og, i64 120
  store i64 44, ptr %i.pc, align 8, !tbaa !673
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull %i.og)
          to label %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit436 unwind label %bb.bg

_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit436: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i427
  %i.pd = load ptr, ptr %i.og, align 16, !tbaa !47
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 80
  %i.pf = load ptr, ptr %i.pe, align 8
  %i.pg = invoke noundef nonnull align 8 dereferenceable(144) ptr %i.pf(ptr noundef nonnull align 8 dereferenceable(144) %i.og, float noundef 0.000000e+00)
          to label %.noexc.i438 unwind label %bb.bg ; 3 uses

.noexc.i438:                                      ; preds = %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit436
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 128
  store float 0.000000e+00, ptr %i.ph, align 8, !tbaa !674
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  store i8 1, ptr %i.pi, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #15
  %i.pj = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 6 uses
  store ptr %i.pj, ptr %39, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #15
  store i64 32, ptr %i.q, align 8, !tbaa !16
  %i.pk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0)
          to label %.noexc439 unwind label %bb.bh ; 2 uses

.noexc439:                                        ; preds = %.noexc.i438
  store ptr %i.pk, ptr %39, align 8, !tbaa !17
  %i.pl = load i64, ptr %i.q, align 8, !tbaa !16  ; 3 uses
  store i64 %i.pl, ptr %i.pj, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.pk, ptr noundef nonnull align 1 dereferenceable(32) @.str.106, i64 32, i1 false)
  %i.pm = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i64 %i.pl, ptr %i.pm, align 8, !tbaa !12
  %i.pn = load ptr, ptr %39, align 8, !tbaa !17
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.pl
  store i8 0, ptr %i.po, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #15
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pg, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.pp, ptr noundef nonnull align 8 dereferenceable(32) %39)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit442 unwind label %bb.bi

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit442: ; preds = %.noexc439
  %i.pq = load ptr, ptr %39, align 8, !tbaa !17   ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.pj
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit442
  %i.ps = load i64, ptr %i.pj, align 8, !tbaa !15
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pq, i64 noundef %i.pt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit442, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #15
  %i.pu = load ptr, ptr %38, align 8, !tbaa !17   ; 2 uses
  %i.pv = icmp eq ptr %i.pu, %i.od
  br i1 %i.pv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445
  %i.pw = load i64, ptr %i.od, align 8, !tbaa !15
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pu, i64 noundef %i.px) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #15
  %i.py = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 6 uses
  store ptr %i.py, ptr %40, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.py, ptr noundef nonnull align 1 dereferenceable(14) @.str.107, i64 14, i1 false)
  %i.pz = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 14, ptr %i.pz, align 8, !tbaa !12
  %i.qa = getelementptr inbounds nuw i8, ptr %40, i64 30
  store i8 0, ptr %i.qa, align 2, !tbaa !15
  %i.qb = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #36
          to label %.noexc459 unwind label %bb.bk ; 14 uses

.noexc459:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 24 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.qb, i8 0, i64 144, i1 false)
  store ptr %i.qd, ptr %i.qc, align 8, !tbaa !8
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qb, i64 56 ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qb, i64 72
  store ptr %i.qf, ptr %i.qe, align 8, !tbaa !8
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qb, i64 64 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qb, i64 88
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qb, i64 104
  store ptr %i.qi, ptr %i.qh, align 8, !tbaa !8
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qb, i64 133
  store i8 0, ptr %i.qj, align 1, !tbaa !664
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIfEE, i64 16), ptr %i.qb, align 16, !tbaa !47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.qc, ptr noundef nonnull align 8 dereferenceable(32) %40)
          to label %.noexc460 unwind label %bb.bk

.noexc460:                                        ; preds = %.noexc459
  %i.qk = load i64, ptr %i.qg, align 16, !tbaa !12
  %i.ql = icmp eq i64 %i.qk, 0
  br i1 %i.ql, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i454, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i453

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i454: ; preds = %.noexc460
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.qm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.qm, ptr %10, align 8, !tbaa !8, !alias.scope !702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.qm, ptr noundef nonnull align 1 dereferenceable(5) @.str.160, i64 5, i1 false)
  %i.qn = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 5, ptr %i.qn, align 8, !tbaa !12, !alias.scope !702
  %i.qo = getelementptr inbounds nuw i8, ptr %10, i64 21
  store i8 0, ptr %i.qo, align 1, !tbaa !15, !alias.scope !702
  %i.qp = load ptr, ptr %i.qe, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.qp, ptr noundef nonnull align 1 dereferenceable(5) @.str.160, i64 5, i1 false)
  %i.qq = load i64, ptr %i.qn, align 8, !tbaa !12 ; 2 uses
  store i64 %i.qq, ptr %i.qg, align 16, !tbaa !12
  %i.qr = load ptr, ptr %i.qe, align 8, !tbaa !17
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.qq
  store i8 0, ptr %i.qs, align 1, !tbaa !15
  %.pre.i.i.i455 = load ptr, ptr %10, align 8, !tbaa !17
  store i64 0, ptr %i.qn, align 8, !tbaa !12
  store i8 0, ptr %.pre.i.i.i455, align 1, !tbaa !15
  %i.qt = load ptr, ptr %10, align 8, !tbaa !17   ; 2 uses
  %i.qu = icmp eq ptr %i.qt, %i.qm
  br i1 %i.qu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i457, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i456

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i456: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i454
  %i.qv = load i64, ptr %i.qm, align 8, !tbaa !15
  %i.qw = add i64 %i.qv, 1
  call void @_ZdlPvm(ptr noundef %i.qt, i64 noundef %i.qw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i457

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i457: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i454, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i456
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i453

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i453: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i457, %.noexc460
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qb, i64 120
  store i64 48, ptr %i.qx, align 8, !tbaa !673
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull %i.qb)
          to label %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit462 unwind label %bb.bk

_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit462: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i453
  %i.qy = load ptr, ptr %i.qb, align 16, !tbaa !47
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 80
  %i.ra = load ptr, ptr %i.qz, align 8
  %i.rb = invoke noundef nonnull align 8 dereferenceable(144) ptr %i.ra(ptr noundef nonnull align 8 dereferenceable(144) %i.qb, float noundef 0.000000e+00)
          to label %.noexc.i464 unwind label %bb.bk ; 3 uses

.noexc.i464:                                      ; preds = %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit462
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 128
  store float 0.000000e+00, ptr %i.rc, align 8, !tbaa !674
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  store i8 1, ptr %i.rd, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #15
  %i.re = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 6 uses
  store ptr %i.re, ptr %41, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #15
  store i64 120, ptr %i.p, align 8, !tbaa !16
  %i.rf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %.noexc465 unwind label %bb.bl ; 3 uses

.noexc465:                                        ; preds = %.noexc.i464
  store ptr %i.rf, ptr %41, align 8, !tbaa !17
  %i.rg = load i64, ptr %i.p, align 8, !tbaa !16  ; 3 uses
  store i64 %i.rg, ptr %i.re, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %i.rf, ptr noundef nonnull align 1 dereferenceable(120) @.str.108, i64 120, i1 false)
  %i.rh = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i64 %i.rg, ptr %i.rh, align 8, !tbaa !12
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.rg
  store i8 0, ptr %i.ri, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #15
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rb, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.rj, ptr noundef nonnull align 8 dereferenceable(32) %41)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit468 unwind label %bb.bm

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit468: ; preds = %.noexc465
  %i.rk = load ptr, ptr %41, align 8, !tbaa !17   ; 2 uses
  %i.rl = icmp eq ptr %i.rk, %i.re
  br i1 %i.rl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit468
  %i.rm = load i64, ptr %i.re, align 8, !tbaa !15
  %i.rn = add i64 %i.rm, 1
  call void @_ZdlPvm(ptr noundef %i.rk, i64 noundef %i.rn) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit468, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #15
  %i.ro = load ptr, ptr %40, align 8, !tbaa !17   ; 2 uses
  %i.rp = icmp eq ptr %i.ro, %i.py
  br i1 %i.rp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471
  %i.rq = load i64, ptr %i.py, align 8, !tbaa !15
  %i.rr = add i64 %i.rq, 1
  call void @_ZdlPvm(ptr noundef %i.ro, i64 noundef %i.rr) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #15
  %i.rs = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 6 uses
  store ptr %i.rs, ptr %42, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.rs, ptr noundef nonnull align 1 dereferenceable(9) @.str.109, i64 9, i1 false)
  %i.rt = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 9, ptr %i.rt, align 8, !tbaa !12
  %i.ru = getelementptr inbounds nuw i8, ptr %42, i64 25
  store i8 0, ptr %i.ru, align 1, !tbaa !15
  %i.rv = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #36
          to label %.noexc485 unwind label %bb.bo ; 14 uses

.noexc485:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 24 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.rv, i8 0, i64 144, i1 false)
  store ptr %i.rx, ptr %i.rw, align 8, !tbaa !8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 56 ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rv, i64 72
  store ptr %i.rz, ptr %i.ry, align 8, !tbaa !8
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rv, i64 64 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rv, i64 88
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rv, i64 104
  store ptr %i.sc, ptr %i.sb, align 8, !tbaa !8
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rv, i64 133
  store i8 0, ptr %i.sd, align 1, !tbaa !664
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIfEE, i64 16), ptr %i.rv, align 16, !tbaa !47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.rw, ptr noundef nonnull align 8 dereferenceable(32) %42)
          to label %.noexc486 unwind label %bb.bo

.noexc486:                                        ; preds = %.noexc485
  %i.se = load i64, ptr %i.sa, align 16, !tbaa !12
  %i.sf = icmp eq i64 %i.se, 0
  br i1 %i.sf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i480, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i479

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i480: ; preds = %.noexc486
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.sg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.sg, ptr %9, align 8, !tbaa !8, !alias.scope !707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.sg, ptr noundef nonnull align 1 dereferenceable(5) @.str.160, i64 5, i1 false)
  %i.sh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 5, ptr %i.sh, align 8, !tbaa !12, !alias.scope !707
  %i.si = getelementptr inbounds nuw i8, ptr %9, i64 21
  store i8 0, ptr %i.si, align 1, !tbaa !15, !alias.scope !707
  %i.sj = load ptr, ptr %i.ry, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.sj, ptr noundef nonnull align 1 dereferenceable(5) @.str.160, i64 5, i1 false)
  %i.sk = load i64, ptr %i.sh, align 8, !tbaa !12 ; 2 uses
  store i64 %i.sk, ptr %i.sa, align 16, !tbaa !12
  %i.sl = load ptr, ptr %i.ry, align 8, !tbaa !17
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.sk
  store i8 0, ptr %i.sm, align 1, !tbaa !15
  %.pre.i.i.i481 = load ptr, ptr %9, align 8, !tbaa !17
  store i64 0, ptr %i.sh, align 8, !tbaa !12
  store i8 0, ptr %.pre.i.i.i481, align 1, !tbaa !15
  %i.sn = load ptr, ptr %9, align 8, !tbaa !17    ; 2 uses
  %i.so = icmp eq ptr %i.sn, %i.sg
  br i1 %i.so, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i483, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i482

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i482: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i480
  %i.sp = load i64, ptr %i.sg, align 8, !tbaa !15
  %i.sq = add i64 %i.sp, 1
  call void @_ZdlPvm(ptr noundef %i.sn, i64 noundef %i.sq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i483

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i483: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i480, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i482
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i479

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i479: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i483, %.noexc486
  %i.sr = getelementptr inbounds nuw i8, ptr %i.rv, i64 120
  store i64 52, ptr %i.sr, align 8, !tbaa !673
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull %i.rv)
          to label %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit488 unwind label %bb.bo

_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit488: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i479
  %i.ss = load ptr, ptr %i.rv, align 16, !tbaa !47
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 72
  %i.su = load ptr, ptr %i.st, align 8
  %i.sv = invoke noundef nonnull align 8 dereferenceable(144) ptr %i.su(ptr noundef nonnull align 8 dereferenceable(144) %i.rv, float noundef 0.000000e+00, float noundef 1.000000e+00)
          to label %.noexc.i490 unwind label %bb.bo ; 3 uses

.noexc.i490:                                      ; preds = %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit488
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 128
  store float 1.000000e+00, ptr %i.sw, align 8, !tbaa !674
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  store i8 1, ptr %i.sx, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #15
  %i.sy = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 6 uses
  store ptr %i.sy, ptr %43, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #15
  store i64 41, ptr %i.o, align 8, !tbaa !16
  %i.sz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0)
          to label %.noexc491 unwind label %bb.bp ; 3 uses

.noexc491:                                        ; preds = %.noexc.i490
  store ptr %i.sz, ptr %43, align 8, !tbaa !17
  %i.ta = load i64, ptr %i.o, align 8, !tbaa !16  ; 3 uses
  store i64 %i.ta, ptr %i.sy, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.sz, ptr noundef nonnull align 1 dereferenceable(41) @.str.110, i64 41, i1 false)
  %i.tb = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 %i.ta, ptr %i.tb, align 8, !tbaa !12
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.ta
  store i8 0, ptr %i.tc, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #15
  %i.td = getelementptr inbounds nuw i8, ptr %i.sv, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.td, ptr noundef nonnull align 8 dereferenceable(32) %43)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit494 unwind label %bb.bq

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit494: ; preds = %.noexc491
  %i.te = load ptr, ptr %43, align 8, !tbaa !17   ; 2 uses
  %i.tf = icmp eq ptr %i.te, %i.sy
  br i1 %i.tf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i495

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i495: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit494
  %i.tg = load i64, ptr %i.sy, align 8, !tbaa !15
  %i.th = add i64 %i.tg, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.th) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit494, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i495
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #15
  %i.ti = load ptr, ptr %42, align 8, !tbaa !17   ; 2 uses
  %i.tj = icmp eq ptr %i.ti, %i.rs
  br i1 %i.tj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i498

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i498: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497
  %i.tk = load i64, ptr %i.rs, align 8, !tbaa !15
  %i.tl = add i64 %i.tk, 1
  call void @_ZdlPvm(ptr noundef %i.ti, i64 noundef %i.tl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i498
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #15
  %i.tm = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 6 uses
  store ptr %i.tm, ptr %44, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.tm, ptr noundef nonnull align 1 dereferenceable(15) @.str.111, i64 15, i1 false)
  %i.tn = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 15, ptr %i.tn, align 8, !tbaa !12
  %i.to = getelementptr inbounds nuw i8, ptr %44, i64 31
  store i8 0, ptr %i.to, align 1, !tbaa !15
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.tq = invoke noundef nonnull align 8 dereferenceable(248) ptr @_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIiEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull align 4 dereferenceable(4) %i.tp)
          to label %._crit_edge.i.i505 unwind label %bb.bs ; 3 uses

._crit_edge.i.i505:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 128
  store i32 0, ptr %i.tr, align 8, !tbaa !681
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  store i8 1, ptr %i.ts, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #15
  %i.tt = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 6 uses
  store ptr %i.tt, ptr %45, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.tt, ptr noundef nonnull align 1 dereferenceable(7) @.str.112, i64 7, i1 false)
  %i.tu = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 7, ptr %i.tu, align 8, !tbaa !12
  %i.tv = getelementptr inbounds nuw i8, ptr %45, i64 23
  store i8 0, ptr %i.tv, align 1, !tbaa !15
  %i.tw = invoke noundef nonnull align 8 dereferenceable(248) ptr @_ZN4dmlc9parameter10FieldEntryIiE8add_enumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(248) %i.tq, ptr noundef nonnull align 8 dereferenceable(32) %45, i32 noundef 0)
          to label %._crit_edge.i.i509 unwind label %bb.bt

._crit_edge.i.i509:                               ; preds = %._crit_edge.i.i505
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #15
  %i.tx = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 6 uses
  store ptr %i.tx, ptr %46, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.tx, ptr noundef nonnull align 1 dereferenceable(14) @.str.113, i64 14, i1 false)
  %i.ty = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 14, ptr %i.ty, align 8, !tbaa !12
  %i.tz = getelementptr inbounds nuw i8, ptr %46, i64 30
  store i8 0, ptr %i.tz, align 2, !tbaa !15
  %i.ua = invoke noundef nonnull align 8 dereferenceable(248) ptr @_ZN4dmlc9parameter10FieldEntryIiE8add_enumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(248) %i.tw, ptr noundef nonnull align 8 dereferenceable(32) %46, i32 noundef 1)
          to label %.noexc.i514 unwind label %bb.bu

.noexc.i514:                                      ; preds = %._crit_edge.i.i509
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #15
  %i.ub = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 6 uses
  store ptr %i.ub, ptr %47, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #15
  store i64 180, ptr %i.n, align 8, !tbaa !16
  %i.uc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc515 unwind label %bb.bv ; 3 uses

.noexc515:                                        ; preds = %.noexc.i514
  store ptr %i.uc, ptr %47, align 8, !tbaa !17
  %i.ud = load i64, ptr %i.n, align 8, !tbaa !16  ; 3 uses
  store i64 %i.ud, ptr %i.ub, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(180) %i.uc, ptr noundef nonnull align 1 dereferenceable(180) @.str.114, i64 180, i1 false)
  %i.ue = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %i.ud, ptr %i.ue, align 8, !tbaa !12
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.ud
  store i8 0, ptr %i.uf, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ua, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ug, ptr noundef nonnull align 8 dereferenceable(32) %47)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit518 unwind label %bb.bw

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit518: ; preds = %.noexc515
  %i.uh = load ptr, ptr %47, align 8, !tbaa !17   ; 2 uses
  %i.ui = icmp eq ptr %i.uh, %i.ub
  br i1 %i.ui, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit518
  %i.uj = load i64, ptr %i.ub, align 8, !tbaa !15
  %i.uk = add i64 %i.uj, 1
  call void @_ZdlPvm(ptr noundef %i.uh, i64 noundef %i.uk) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit518, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #15
  %i.ul = load ptr, ptr %46, align 8, !tbaa !17   ; 2 uses
  %i.um = icmp eq ptr %i.ul, %i.tx
  br i1 %i.um, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i522

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i522: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521
  %i.un = load i64, ptr %i.tx, align 8, !tbaa !15
  %i.uo = add i64 %i.un, 1
  call void @_ZdlPvm(ptr noundef %i.ul, i64 noundef %i.uo) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i522
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #15
  %i.up = load ptr, ptr %45, align 8, !tbaa !17   ; 2 uses
  %i.uq = icmp eq ptr %i.up, %i.tt
  br i1 %i.uq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i525

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i525: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524
  %i.ur = load i64, ptr %i.tt, align 8, !tbaa !15
  %i.us = add i64 %i.ur, 1
  call void @_ZdlPvm(ptr noundef %i.up, i64 noundef %i.us) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i525
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #15
  %i.ut = load ptr, ptr %44, align 8, !tbaa !17   ; 2 uses
  %i.uu = icmp eq ptr %i.ut, %i.tm
  br i1 %i.uu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit530, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i528

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i528: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527
  %i.uv = load i64, ptr %i.tm, align 8, !tbaa !15
  %i.uw = add i64 %i.uv, 1
  call void @_ZdlPvm(ptr noundef %i.ut, i64 noundef %i.uw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit530

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit530: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i528
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #15
  %i.ux = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 6 uses
  store ptr %i.ux, ptr %48, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #15
  store i64 16, ptr %i.m, align 8, !tbaa !16
  %i.uy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc533 unwind label %bb.ca ; 2 uses

.noexc533:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit530
  store ptr %i.uy, ptr %48, align 8, !tbaa !17
  %i.uz = load i64, ptr %i.m, align 8, !tbaa !16  ; 3 uses
  store i64 %i.uz, ptr %i.ux, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.uy, ptr noundef nonnull align 1 dereferenceable(16) @.str.115, i64 16, i1 false)
  %i.va = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i64 %i.uz, ptr %i.va, align 8, !tbaa !12
  %i.vb = load ptr, ptr %48, align 8, !tbaa !17
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 %i.uz
  store i8 0, ptr %i.vc, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  %i.vd = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #36
          to label %.noexc541 unwind label %bb.cb ; 14 uses

.noexc541:                                        ; preds = %.noexc533
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 24 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vd, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.vd, i8 0, i64 144, i1 false)
  store ptr %i.vf, ptr %i.ve, align 8, !tbaa !8
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vd, i64 56 ; 3 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vd, i64 72
  store ptr %i.vh, ptr %i.vg, align 8, !tbaa !8
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vd, i64 64 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vd, i64 88
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vd, i64 104
  store ptr %i.vk, ptr %i.vj, align 8, !tbaa !8
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vd, i64 133
  store i8 0, ptr %i.vl, align 1, !tbaa !664
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIfEE, i64 16), ptr %i.vd, align 16, !tbaa !47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ve, ptr noundef nonnull align 8 dereferenceable(32) %48)
          to label %.noexc542 unwind label %bb.cb

.noexc542:                                        ; preds = %.noexc541
  %i.vm = load i64, ptr %i.vi, align 16, !tbaa !12
  %i.vn = icmp eq i64 %i.vm, 0
  br i1 %i.vn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i536, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i535

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i536: ; preds = %.noexc542
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.vo = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.vo, ptr %8, align 8, !tbaa !8, !alias.scope !712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.vo, ptr noundef nonnull align 1 dereferenceable(5) @.str.160, i64 5, i1 false)
  %i.vp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 5, ptr %i.vp, align 8, !tbaa !12, !alias.scope !712
  %i.vq = getelementptr inbounds nuw i8, ptr %8, i64 21
  store i8 0, ptr %i.vq, align 1, !tbaa !15, !alias.scope !712
  %i.vr = load ptr, ptr %i.vg, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.vr, ptr noundef nonnull align 1 dereferenceable(5) @.str.160, i64 5, i1 false)
  %i.vs = load i64, ptr %i.vp, align 8, !tbaa !12 ; 2 uses
  store i64 %i.vs, ptr %i.vi, align 16, !tbaa !12
  %i.vt = load ptr, ptr %i.vg, align 8, !tbaa !17
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 %i.vs
  store i8 0, ptr %i.vu, align 1, !tbaa !15
  %.pre.i.i.i537 = load ptr, ptr %8, align 8, !tbaa !17
  store i64 0, ptr %i.vp, align 8, !tbaa !12
  store i8 0, ptr %.pre.i.i.i537, align 1, !tbaa !15
  %i.vv = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.vw = icmp eq ptr %i.vv, %i.vo
  br i1 %i.vw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i539, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i538

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i538: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i536
  %i.vx = load i64, ptr %i.vo, align 8, !tbaa !15
  %i.vy = add i64 %i.vx, 1
  call void @_ZdlPvm(ptr noundef %i.vv, i64 noundef %i.vy) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i539

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i539: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i536, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i538
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i535

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i535: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i539, %.noexc542
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vd, i64 120
  store i64 60, ptr %i.vz, align 8, !tbaa !673
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull %i.vd)
          to label %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit544 unwind label %bb.cb

_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit544: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i535
  %i.wa = load ptr, ptr %i.vd, align 16, !tbaa !47
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 72
  %i.wc = load ptr, ptr %i.wb, align 8
  %i.wd = invoke noundef nonnull align 8 dereferenceable(144) ptr %i.wc(ptr noundef nonnull align 8 dereferenceable(144) %i.vd, float noundef 0.000000e+00, float noundef 1.000000e+00)
          to label %.noexc.i546 unwind label %bb.cb ; 3 uses

.noexc.i546:                                      ; preds = %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit544
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 128
  store float 1.000000e+00, ptr %i.we, align 8, !tbaa !674
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  store i8 1, ptr %i.wf, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #15
  %i.wg = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 6 uses
  store ptr %i.wg, ptr %49, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #15
  store i64 58, ptr %i.l, align 8, !tbaa !16
  %i.wh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc547 unwind label %bb.cc ; 3 uses

.noexc547:                                        ; preds = %.noexc.i546
  store ptr %i.wh, ptr %49, align 8, !tbaa !17
  %i.wi = load i64, ptr %i.l, align 8, !tbaa !16  ; 3 uses
  store i64 %i.wi, ptr %i.wg, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.wh, ptr noundef nonnull align 1 dereferenceable(58) @.str.116, i64 58, i1 false)
  %i.wj = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i64 %i.wi, ptr %i.wj, align 8, !tbaa !12
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.wi
  store i8 0, ptr %i.wk, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wd, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.wl, ptr noundef nonnull align 8 dereferenceable(32) %49)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit550 unwind label %bb.cd

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit550: ; preds = %.noexc547
  %i.wm = load ptr, ptr %49, align 8, !tbaa !17   ; 2 uses
  %i.wn = icmp eq ptr %i.wm, %i.wg
  br i1 %i.wn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit550
  %i.wo = load i64, ptr %i.wg, align 8, !tbaa !15
  %i.wp = add i64 %i.wo, 1
  call void @_ZdlPvm(ptr noundef %i.wm, i64 noundef %i.wp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit550, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #15
  %i.wq = load ptr, ptr %48, align 8, !tbaa !17   ; 2 uses
  %i.wr = icmp eq ptr %i.wq, %i.ux
  br i1 %i.wr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553
  %i.ws = load i64, ptr %i.ux, align 8, !tbaa !15
  %i.wt = add i64 %i.ws, 1
  call void @_ZdlPvm(ptr noundef %i.wq, i64 noundef %i.wt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #15
  %i.wu = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 6 uses
  store ptr %i.wu, ptr %50, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #15
  store i64 17, ptr %i.k, align 8, !tbaa !16
  %i.wv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc559 unwind label %bb.cf ; 2 uses

.noexc559:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556
  store ptr %i.wv, ptr %50, align 8, !tbaa !17
  %i.ww = load i64, ptr %i.k, align 8, !tbaa !16  ; 3 uses
  store i64 %i.ww, ptr %i.wu, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.wv, ptr noundef nonnull align 1 dereferenceable(17) @.str.117, i64 17, i1 false)
  %i.wx = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i64 %i.ww, ptr %i.wx, align 8, !tbaa !12
  %i.wy = load ptr, ptr %50, align 8, !tbaa !17
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 %i.ww
  store i8 0, ptr %i.wz, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #15
  %i.xa = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #36
          to label %.noexc567 unwind label %bb.cg ; 14 uses

.noexc567:                                        ; preds = %.noexc559
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 24 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xa, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.xa, i8 0, i64 144, i1 false)
  store ptr %i.xc, ptr %i.xb, align 8, !tbaa !8
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xa, i64 56 ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xa, i64 72
  store ptr %i.xe, ptr %i.xd, align 8, !tbaa !8
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xa, i64 64 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xa, i64 88
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xa, i64 104
  store ptr %i.xh, ptr %i.xg, align 8, !tbaa !8
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xa, i64 133
  store i8 0, ptr %i.xi, align 1, !tbaa !664
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIfEE, i64 16), ptr %i.xa, align 16, !tbaa !47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.xb, ptr noundef nonnull align 8 dereferenceable(32) %50)
          to label %.noexc568 unwind label %bb.cg

.noexc568:                                        ; preds = %.noexc567
  %i.xj = load i64, ptr %i.xf, align 16, !tbaa !12
  %i.xk = icmp eq i64 %i.xj, 0
  br i1 %i.xk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i562, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i561

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i562: ; preds = %.noexc568
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.xl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.xl, ptr %7, align 8, !tbaa !8, !alias.scope !717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.xl, ptr noundef nonnull align 1 dereferenceable(5) @.str.160, i64 5, i1 false)
  %i.xm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 5, ptr %i.xm, align 8, !tbaa !12, !alias.scope !717
  %i.xn = getelementptr inbounds nuw i8, ptr %7, i64 21
  store i8 0, ptr %i.xn, align 1, !tbaa !15, !alias.scope !717
  %i.xo = load ptr, ptr %i.xd, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.xo, ptr noundef nonnull align 1 dereferenceable(5) @.str.160, i64 5, i1 false)
  %i.xp = load i64, ptr %i.xm, align 8, !tbaa !12 ; 2 uses
  store i64 %i.xp, ptr %i.xf, align 16, !tbaa !12
  %i.xq = load ptr, ptr %i.xd, align 8, !tbaa !17
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 %i.xp
  store i8 0, ptr %i.xr, align 1, !tbaa !15
  %.pre.i.i.i563 = load ptr, ptr %7, align 8, !tbaa !17
  store i64 0, ptr %i.xm, align 8, !tbaa !12
  store i8 0, ptr %.pre.i.i.i563, align 1, !tbaa !15
  %i.xs = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.xt = icmp eq ptr %i.xs, %i.xl
  br i1 %i.xt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i565, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i564

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i564: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i562
  %i.xu = load i64, ptr %i.xl, align 8, !tbaa !15
  %i.xv = add i64 %i.xu, 1
  call void @_ZdlPvm(ptr noundef %i.xs, i64 noundef %i.xv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i565

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i565: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i562, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i564
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i561

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i561: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i565, %.noexc568
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xa, i64 120
  store i64 64, ptr %i.xw, align 8, !tbaa !673
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull %i.xa)
          to label %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit570 unwind label %bb.cg

_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit570: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i561
  %i.xx = load ptr, ptr %i.xa, align 16, !tbaa !47
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 72
  %i.xz = load ptr, ptr %i.xy, align 8
  %i.ya = invoke noundef nonnull align 8 dereferenceable(144) ptr %i.xz(ptr noundef nonnull align 8 dereferenceable(144) %i.xa, float noundef 0.000000e+00, float noundef 1.000000e+00)
          to label %.noexc.i572 unwind label %bb.cg ; 3 uses

.noexc.i572:                                      ; preds = %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit570
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 128
  store float 1.000000e+00, ptr %i.yb, align 8, !tbaa !674
  %i.yc = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  store i8 1, ptr %i.yc, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #15
  %i.yd = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 6 uses
  store ptr %i.yd, ptr %51, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #15
  store i64 51, ptr %i.j, align 8, !tbaa !16
  %i.ye = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc573 unwind label %bb.ch ; 3 uses

.noexc573:                                        ; preds = %.noexc.i572
  store ptr %i.ye, ptr %51, align 8, !tbaa !17
  %i.yf = load i64, ptr %i.j, align 8, !tbaa !16  ; 3 uses
  store i64 %i.yf, ptr %i.yd, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.ye, ptr noundef nonnull align 1 dereferenceable(51) @.str.118, i64 51, i1 false)
  %i.yg = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 %i.yf, ptr %i.yg, align 8, !tbaa !12
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ye, i64 %i.yf
  store i8 0, ptr %i.yh, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  %i.yi = getelementptr inbounds nuw i8, ptr %i.ya, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.yi, ptr noundef nonnull align 8 dereferenceable(32) %51)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit576 unwind label %bb.ci

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit576: ; preds = %.noexc573
  %i.yj = load ptr, ptr %51, align 8, !tbaa !17   ; 2 uses
  %i.yk = icmp eq ptr %i.yj, %i.yd
  br i1 %i.yk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit576
  %i.yl = load i64, ptr %i.yd, align 8, !tbaa !15
  %i.ym = add i64 %i.yl, 1
  call void @_ZdlPvm(ptr noundef %i.yj, i64 noundef %i.ym) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit576, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #15
  %i.yn = load ptr, ptr %50, align 8, !tbaa !17   ; 2 uses
  %i.yo = icmp eq ptr %i.yn, %i.wu
  br i1 %i.yo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579
  %i.yp = load i64, ptr %i.wu, align 8, !tbaa !15
  %i.yq = add i64 %i.yp, 1
  call void @_ZdlPvm(ptr noundef %i.yn, i64 noundef %i.yq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #15
  %i.yr = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 6 uses
  store ptr %i.yr, ptr %52, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #15
  store i64 16, ptr %i.i, align 8, !tbaa !16
  %i.ys = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc585 unwind label %bb.ck ; 2 uses

.noexc585:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582
  store ptr %i.ys, ptr %52, align 8, !tbaa !17
  %i.yt = load i64, ptr %i.i, align 8, !tbaa !16  ; 3 uses
  store i64 %i.yt, ptr %i.yr, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ys, ptr noundef nonnull align 1 dereferenceable(16) @.str.119, i64 16, i1 false)
  %i.yu = getelementptr inbounds nuw i8, ptr %52, i64 8
  store i64 %i.yt, ptr %i.yu, align 8, !tbaa !12
  %i.yv = load ptr, ptr %52, align 8, !tbaa !17
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 %i.yt
  store i8 0, ptr %i.yw, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  %i.yx = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #36
          to label %.noexc593 unwind label %bb.cl ; 14 uses

.noexc593:                                        ; preds = %.noexc585
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 24 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yx, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.yx, i8 0, i64 144, i1 false)
  store ptr %i.yz, ptr %i.yy, align 8, !tbaa !8
  %i.za = getelementptr inbounds nuw i8, ptr %i.yx, i64 56 ; 3 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yx, i64 72
  store ptr %i.zb, ptr %i.za, align 8, !tbaa !8
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yx, i64 64 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yx, i64 88
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yx, i64 104
  store ptr %i.ze, ptr %i.zd, align 8, !tbaa !8
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yx, i64 133
  store i8 0, ptr %i.zf, align 1, !tbaa !664
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIfEE, i64 16), ptr %i.yx, align 16, !tbaa !47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.yy, ptr noundef nonnull align 8 dereferenceable(32) %52)
          to label %.noexc594 unwind label %bb.cl

.noexc594:                                        ; preds = %.noexc593
  %i.zg = load i64, ptr %i.zc, align 16, !tbaa !12
  %i.zh = icmp eq i64 %i.zg, 0
  br i1 %i.zh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i588, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i587

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i588: ; preds = %.noexc594
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.zi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.zi, ptr %6, align 8, !tbaa !8, !alias.scope !722
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.zi, ptr noundef nonnull align 1 dereferenceable(5) @.str.160, i64 5, i1 false)
  %i.zj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 5, ptr %i.zj, align 8, !tbaa !12, !alias.scope !722
  %i.zk = getelementptr inbounds nuw i8, ptr %6, i64 21
  store i8 0, ptr %i.zk, align 1, !tbaa !15, !alias.scope !722
  %i.zl = load ptr, ptr %i.za, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.zl, ptr noundef nonnull align 1 dereferenceable(5) @.str.160, i64 5, i1 false)
  %i.zm = load i64, ptr %i.zj, align 8, !tbaa !12 ; 2 uses
  store i64 %i.zm, ptr %i.zc, align 16, !tbaa !12
  %i.zn = load ptr, ptr %i.za, align 8, !tbaa !17
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 %i.zm
  store i8 0, ptr %i.zo, align 1, !tbaa !15
  %.pre.i.i.i589 = load ptr, ptr %6, align 8, !tbaa !17
  store i64 0, ptr %i.zj, align 8, !tbaa !12
  store i8 0, ptr %.pre.i.i.i589, align 1, !tbaa !15
  %i.zp = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.zq = icmp eq ptr %i.zp, %i.zi
  br i1 %i.zq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i591, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i590

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i590: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i588
  %i.zr = load i64, ptr %i.zi, align 8, !tbaa !15
  %i.zs = add i64 %i.zr, 1
  call void @_ZdlPvm(ptr noundef %i.zp, i64 noundef %i.zs) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i591

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i591: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i588, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i590
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i587

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i587: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i591, %.noexc594
  %i.zt = getelementptr inbounds nuw i8, ptr %i.yx, i64 120
  store i64 68, ptr %i.zt, align 8, !tbaa !673
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull %i.yx)
          to label %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit596 unwind label %bb.cl

_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit596: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i587
  %i.zu = load ptr, ptr %i.yx, align 16, !tbaa !47
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 72
  %i.zw = load ptr, ptr %i.zv, align 8
  %i.zx = invoke noundef nonnull align 8 dereferenceable(144) ptr %i.zw(ptr noundef nonnull align 8 dereferenceable(144) %i.yx, float noundef 0.000000e+00, float noundef 1.000000e+00)
          to label %.noexc.i598 unwind label %bb.cl ; 3 uses

.noexc.i598:                                      ; preds = %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit596
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 128
  store float 1.000000e+00, ptr %i.zy, align 8, !tbaa !674
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zx, i64 8
  store i8 1, ptr %i.zz, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #15
  %i.aaa = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 6 uses
  store ptr %i.aaa, ptr %53, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  store i64 63, ptr %i.h, align 8, !tbaa !16
  %i.aab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc599 unwind label %bb.cm ; 3 uses

.noexc599:                                        ; preds = %.noexc.i598
  store ptr %i.aab, ptr %53, align 8, !tbaa !17
  %i.aac = load i64, ptr %i.h, align 8, !tbaa !16 ; 3 uses
  store i64 %i.aac, ptr %i.aaa, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.aab, ptr noundef nonnull align 1 dereferenceable(63) @.str.120, i64 63, i1 false)
  %i.aad = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i64 %i.aac, ptr %i.aad, align 8, !tbaa !12
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aab, i64 %i.aac
  store i8 0, ptr %i.aae, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zx, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aaf, ptr noundef nonnull align 8 dereferenceable(32) %53)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit602 unwind label %bb.cn

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit602: ; preds = %.noexc599
  %i.aag = load ptr, ptr %53, align 8, !tbaa !17  ; 2 uses
  %i.aah = icmp eq ptr %i.aag, %i.aaa
  br i1 %i.aah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i603

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i603: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit602
  %i.aai = load i64, ptr %i.aaa, align 8, !tbaa !15
  %i.aaj = add i64 %i.aai, 1
  call void @_ZdlPvm(ptr noundef %i.aag, i64 noundef %i.aaj) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit602, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i603
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #15
  %i.aak = load ptr, ptr %52, align 8, !tbaa !17  ; 2 uses
  %i.aal = icmp eq ptr %i.aak, %i.yr
  br i1 %i.aal, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i606

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i606: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605
  %i.aam = load i64, ptr %i.yr, align 8, !tbaa !15
  %i.aan = add i64 %i.aam, 1
  call void @_ZdlPvm(ptr noundef %i.aak, i64 noundef %i.aan) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i606
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #15
  %i.aao = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 6 uses
  store ptr %i.aao, ptr %54, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aao, ptr noundef nonnull align 1 dereferenceable(12) @.str.121, i64 12, i1 false)
  %i.aap = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i64 12, ptr %i.aap, align 8, !tbaa !12
  %i.aaq = getelementptr inbounds nuw i8, ptr %54, i64 28
  store i8 0, ptr %i.aaq, align 4, !tbaa !15
  %i.aar = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #36
          to label %.noexc618 unwind label %bb.cp ; 13 uses

.noexc618:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 24 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aar, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %i.aar, i8 0, i64 136, i1 false)
  store ptr %i.aat, ptr %i.aas, align 8, !tbaa !8
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aar, i64 56 ; 3 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aar, i64 72
  store ptr %i.aav, ptr %i.aau, align 8, !tbaa !8
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aar, i64 64 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aar, i64 88 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aar, i64 104
  store ptr %i.aay, ptr %i.aax, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIbEE, i64 16), ptr %i.aar, align 16, !tbaa !47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aas, ptr noundef nonnull align 8 dereferenceable(32) %54)
          to label %.noexc619 unwind label %bb.cp

.noexc619:                                        ; preds = %.noexc618
  %i.aaz = load i64, ptr %i.aaw, align 16, !tbaa !12
  %i.aba = icmp eq i64 %i.aaz, 0
  br i1 %i.aba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i613, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRb.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i613: ; preds = %.noexc619
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.abb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.abb, ptr %5, align 8, !tbaa !8, !alias.scope !727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.abb, ptr noundef nonnull align 1 dereferenceable(7) @.str.182, i64 7, i1 false)
  %i.abc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 7, ptr %i.abc, align 8, !tbaa !12, !alias.scope !727
  %i.abd = getelementptr inbounds nuw i8, ptr %5, i64 23
  store i8 0, ptr %i.abd, align 1, !tbaa !15, !alias.scope !727
  %i.abe = load ptr, ptr %i.aau, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.abe, ptr noundef nonnull align 1 dereferenceable(7) @.str.182, i64 7, i1 false)
  %i.abf = load i64, ptr %i.abc, align 8, !tbaa !12 ; 2 uses
  store i64 %i.abf, ptr %i.aaw, align 16, !tbaa !12
  %i.abg = load ptr, ptr %i.aau, align 8, !tbaa !17
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 %i.abf
  store i8 0, ptr %i.abh, align 1, !tbaa !15
  %.pre.i.i.i614 = load ptr, ptr %5, align 8, !tbaa !17
  store i64 0, ptr %i.abc, align 8, !tbaa !12
  store i8 0, ptr %.pre.i.i.i614, align 1, !tbaa !15
  %i.abi = load ptr, ptr %5, align 8, !tbaa !17   ; 2 uses
  %i.abj = icmp eq ptr %i.abi, %i.abb
  br i1 %i.abj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i616, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i615

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i615: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i613
  %i.abk = load i64, ptr %i.abb, align 8, !tbaa !15
  %i.abl = add i64 %i.abk, 1
  call void @_ZdlPvm(ptr noundef %i.abi, i64 noundef %i.abl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i616

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i616: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i613, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i615
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRb.exit.i

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRb.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i616, %.noexc619
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aar, i64 120
  store i64 72, ptr %i.abm, align 8, !tbaa !673
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull %i.aar)
          to label %.noexc.i622 unwind label %bb.cp

.noexc.i622:                                      ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRb.exit.i
  %i.abn = getelementptr inbounds nuw i8, ptr %i.aar, i64 128
  store i8 1, ptr %i.abn, align 16, !tbaa !732
  %i.abo = getelementptr inbounds nuw i8, ptr %i.aar, i64 8
  store i8 1, ptr %i.abo, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #15
  %i.abp = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 6 uses
  store ptr %i.abp, ptr %55, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  store i64 56, ptr %i.g, align 8, !tbaa !16
  %i.abq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %55, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc623 unwind label %bb.cq ; 3 uses

.noexc623:                                        ; preds = %.noexc.i622
  store ptr %i.abq, ptr %55, align 8, !tbaa !17
  %i.abr = load i64, ptr %i.g, align 8, !tbaa !16 ; 3 uses
  store i64 %i.abr, ptr %i.abp, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.abq, ptr noundef nonnull align 1 dereferenceable(56) @.str.122, i64 56, i1 false)
  %i.abs = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i64 %i.abr, ptr %i.abs, align 8, !tbaa !12
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abq, i64 %i.abr
  store i8 0, ptr %i.abt, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aax, ptr noundef nonnull align 8 dereferenceable(32) %55)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.cr

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc623
  %i.abu = load ptr, ptr %55, align 8, !tbaa !17  ; 2 uses
  %i.abv = icmp eq ptr %i.abu, %i.abp
  br i1 %i.abv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i626

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i626: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.abw = load i64, ptr %i.abp, align 8, !tbaa !15
  %i.abx = add i64 %i.abw, 1
  call void @_ZdlPvm(ptr noundef %i.abu, i64 noundef %i.abx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i626
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #15
  %i.aby = load ptr, ptr %54, align 8, !tbaa !17  ; 2 uses
  %i.abz = icmp eq ptr %i.aby, %i.aao
  br i1 %i.abz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit631, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i629

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i629: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628
  %i.aca = load i64, ptr %i.aao, align 8, !tbaa !15
  %i.acb = add i64 %i.aca, 1
  call void @_ZdlPvm(ptr noundef %i.aby, i64 noundef %i.acb) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit631

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit631: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i629
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #15
  %i.acc = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 6 uses
  store ptr %i.acc, ptr %56, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  store i64 20, ptr %i.f, align 8, !tbaa !16
  %i.acd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc634 unwind label %bb.ct ; 2 uses

.noexc634:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit631
  store ptr %i.acd, ptr %56, align 8, !tbaa !17
  %i.ace = load i64, ptr %i.f, align 8, !tbaa !16 ; 3 uses
  store i64 %i.ace, ptr %i.acc, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.acd, ptr noundef nonnull align 1 dereferenceable(20) @.str.123, i64 20, i1 false)
  %i.acf = getelementptr inbounds nuw i8, ptr %56, i64 8
  store i64 %i.ace, ptr %i.acf, align 8, !tbaa !12
  %i.acg = load ptr, ptr %56, align 8, !tbaa !17
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.ace
  store i8 0, ptr %i.ach, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  %i.aci = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #36
          to label %.noexc641 unwind label %bb.cu ; 13 uses

.noexc641:                                        ; preds = %.noexc634
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 24 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.aci, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.aci, i8 0, i64 128, i1 false)
  store ptr %i.ack, ptr %i.acj, align 8, !tbaa !8
  %i.acl = getelementptr inbounds nuw i8, ptr %i.aci, i64 56 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.aci, i64 72
  store ptr %i.acm, ptr %i.acl, align 8, !tbaa !8
  %i.acn = getelementptr inbounds nuw i8, ptr %i.aci, i64 88 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.aci, i64 104
  store ptr %i.aco, ptr %i.acn, align 8, !tbaa !8
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aci, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.acp, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryISt6vectorIiSaIiEEEE, i64 16), ptr %i.aci, align 16, !tbaa !47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.acj, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %.noexc642 unwind label %bb.cu

.noexc642:                                        ; preds = %.noexc641
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aci, i64 64
  %i.acr = load i64, ptr %i.acq, align 16, !tbaa !12
  %i.acs = icmp eq i64 %i.acr, 0
  br i1 %i.acs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i636, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryISt6vectorIiSaIiEEEES5_E4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRS5_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i636: ; preds = %.noexc642
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.act = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.act, ptr %4, align 8, !tbaa !8, !alias.scope !734
  %i.acu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.act, align 8, !tbaa !15, !alias.scope !734
  %i.acv = load ptr, ptr %i.acl, align 8, !tbaa !17
  store i8 0, ptr %i.acv, align 1, !tbaa !15
  %.pre.i.i.i637 = load ptr, ptr %4, align 8, !tbaa !17
  store i64 0, ptr %i.acu, align 8, !tbaa !12
  store i8 0, ptr %.pre.i.i.i637, align 1, !tbaa !15
  %i.acw = load ptr, ptr %4, align 8, !tbaa !17   ; 2 uses
  %i.acx = icmp eq ptr %i.acw, %i.act
  br i1 %i.acx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i639, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i638

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i638: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i636
  %i.acy = load i64, ptr %i.act, align 8, !tbaa !15
  %i.acz = add i64 %i.acy, 1
  call void @_ZdlPvm(ptr noundef %i.acw, i64 noundef %i.acz) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i639

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i639: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i636, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i638
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryISt6vectorIiSaIiEEEES5_E4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRS5_.exit.i

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryISt6vectorIiSaIiEEEES5_E4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRS5_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i639, %.noexc642
  %i.ada = getelementptr inbounds nuw i8, ptr %i.aci, i64 120
  store i64 80, ptr %i.ada, align 8, !tbaa !673
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull %i.aci)
          to label %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREISt6vectorIiSaIiEEEERNS_9parameter10FieldEntryIT_EEPNS9_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_.exit unwind label %bb.cu

_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREISt6vectorIiSaIiEEEERNS_9parameter10FieldEntryIT_EEPNS9_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_.exit: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryISt6vectorIiSaIiEEEES5_E4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRS5_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %57, i8 0, i64 24, i1 false)
  %i.adb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.acp, ptr noundef nonnull align 8 dereferenceable(24) %57)
          to label %.noexc.i646 unwind label %bb.cv ; 0 uses

.noexc.i646:                                      ; preds = %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREISt6vectorIiSaIiEEEERNS_9parameter10FieldEntryIT_EEPNS9_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_.exit
  %i.adc = getelementptr inbounds nuw i8, ptr %i.aci, i64 8
  store i8 1, ptr %i.adc, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #15
  %i.add = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 6 uses
  store ptr %i.add, ptr %58, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store i64 35, ptr %i.e, align 8, !tbaa !16
  %i.ade = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %58, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc647 unwind label %bb.cw ; 3 uses

.noexc647:                                        ; preds = %.noexc.i646
  store ptr %i.ade, ptr %58, align 8, !tbaa !17
  %i.adf = load i64, ptr %i.e, align 8, !tbaa !16 ; 3 uses
  store i64 %i.adf, ptr %i.add, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.ade, ptr noundef nonnull align 1 dereferenceable(35) @.str.124, i64 35, i1 false)
  %i.adg = getelementptr inbounds nuw i8, ptr %58, i64 8
  store i64 %i.adf, ptr %i.adg, align 8, !tbaa !12
  %i.adh = getelementptr inbounds nuw i8, ptr %i.ade, i64 %i.adf
  store i8 0, ptr %i.adh, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.acn, ptr noundef nonnull align 8 dereferenceable(32) %58)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryISt6vectorIiSaIiEEEES5_E8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.cx

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryISt6vectorIiSaIiEEEES5_E8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc647
  %i.adi = load ptr, ptr %58, align 8, !tbaa !17  ; 2 uses
  %i.adj = icmp eq ptr %i.adi, %i.add
  br i1 %i.adj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i650

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i650: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryISt6vectorIiSaIiEEEES5_E8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.adk = load i64, ptr %i.add, align 8, !tbaa !15
  %i.adl = add i64 %i.adk, 1
  call void @_ZdlPvm(ptr noundef %i.adi, i64 noundef %i.adl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryISt6vectorIiSaIiEEEES5_E8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i650
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #15
  %i.adm = load ptr, ptr %57, align 8, !tbaa !42  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.adm, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652
  %i.adn = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !43
  %i.adp = ptrtoint ptr %i.ado to i64
  %i.adq = ptrtoint ptr %i.adm to i64
  %i.adr = sub i64 %i.adp, %i.adq
  call void @_ZdlPvm(ptr noundef nonnull %i.adm, i64 noundef %i.adr) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #15
  %i.ads = load ptr, ptr %56, align 8, !tbaa !17  ; 2 uses
  %i.adt = icmp eq ptr %i.ads, %i.acc
  br i1 %i.adt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i653

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i653: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.adu = load i64, ptr %i.acc, align 8, !tbaa !15
  %i.adv = add i64 %i.adu, 1
  call void @_ZdlPvm(ptr noundef %i.ads, i64 noundef %i.adv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i653
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #15
  %i.adw = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 6 uses
  store ptr %i.adw, ptr %59, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i64 23, ptr %i.d, align 8, !tbaa !16
  %i.adx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc658 unwind label %bb.db ; 2 uses

.noexc658:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655
  store ptr %i.adx, ptr %59, align 8, !tbaa !17
  %i.ady = load i64, ptr %i.d, align 8, !tbaa !16 ; 3 uses
  store i64 %i.ady, ptr %i.adw, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.adx, ptr noundef nonnull align 1 dereferenceable(23) @.str.125, i64 23, i1 false)
  %i.adz = getelementptr inbounds nuw i8, ptr %59, i64 8
  store i64 %i.ady, ptr %i.adz, align 8, !tbaa !12
  %i.aea = load ptr, ptr %59, align 8, !tbaa !17
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 %i.ady
  store i8 0, ptr %i.aeb, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  %i.aec = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #36
          to label %.noexc665 unwind label %bb.dc ; 14 uses

.noexc665:                                        ; preds = %.noexc658
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 24 ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aec, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.aec, i8 0, i64 160, i1 false)
  store ptr %i.aee, ptr %i.aed, align 8, !tbaa !8
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aec, i64 56 ; 3 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aec, i64 72
  store ptr %i.aeg, ptr %i.aef, align 8, !tbaa !8
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aec, i64 64 ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aec, i64 88 ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aec, i64 104
  store ptr %i.aej, ptr %i.aei, align 8, !tbaa !8
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aec, i64 128 ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aec, i64 144
  store ptr %i.ael, ptr %i.aek, align 16, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.aec, align 16, !tbaa !47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aed, ptr noundef nonnull align 8 dereferenceable(32) %59)
          to label %.noexc666 unwind label %bb.dc

.noexc666:                                        ; preds = %.noexc665
  %i.aem = load i64, ptr %i.aeh, align 16, !tbaa !12
  %i.aen = icmp eq i64 %i.aem, 0
  br i1 %i.aen, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i660, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i660: ; preds = %.noexc666
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.aeo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.aeo, ptr %3, align 8, !tbaa !8, !alias.scope !739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.aeo, ptr noundef nonnull align 1 dereferenceable(6) @.str.183, i64 6, i1 false)
  %i.aep = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 6, ptr %i.aep, align 8, !tbaa !12, !alias.scope !739
  %i.aeq = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i8 0, ptr %i.aeq, align 2, !tbaa !15, !alias.scope !739
  %i.aer = load ptr, ptr %i.aef, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aer, ptr noundef nonnull align 1 dereferenceable(6) @.str.183, i64 6, i1 false)
  %i.aes = load i64, ptr %i.aep, align 8, !tbaa !12 ; 2 uses
  store i64 %i.aes, ptr %i.aeh, align 16, !tbaa !12
  %i.aet = load ptr, ptr %i.aef, align 8, !tbaa !17
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 %i.aes
  store i8 0, ptr %i.aeu, align 1, !tbaa !15
  %.pre.i.i.i661 = load ptr, ptr %3, align 8, !tbaa !17
  store i64 0, ptr %i.aep, align 8, !tbaa !12
  store i8 0, ptr %.pre.i.i.i661, align 1, !tbaa !15
  %i.aev = load ptr, ptr %3, align 8, !tbaa !17   ; 2 uses
  %i.aew = icmp eq ptr %i.aev, %i.aeo
  br i1 %i.aew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i663, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i662

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i662: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i660
  %i.aex = load i64, ptr %i.aeo, align 8, !tbaa !15
  %i.aey = add i64 %i.aex, 1
  call void @_ZdlPvm(ptr noundef %i.aev, i64 noundef %i.aey) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i663

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i663: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i660, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i662
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i663, %.noexc666
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aec, i64 120
  store i64 104, ptr %i.aez, align 8, !tbaa !673
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull %i.aec)
          to label %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSC_21ParamManagerSingletonIS3_EERKSB_RSE_.exit unwind label %bb.dc

_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSC_21ParamManagerSingletonIS3_EERKSB_RSE_.exit: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #15
  %i.afa = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 6 uses
  store ptr %i.afa, ptr %60, align 8, !tbaa !8
  %i.afb = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i64 0, ptr %i.afb, align 8, !tbaa !12
  store i8 0, ptr %i.afa, align 8, !tbaa !15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aek, ptr noundef nonnull align 8 dereferenceable(32) %60)
          to label %.noexc.i674 unwind label %bb.dd

.noexc.i674:                                      ; preds = %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSC_21ParamManagerSingletonIS3_EERKSB_RSE_.exit
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  store i8 1, ptr %i.afc, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #15
  %i.afd = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 6 uses
  store ptr %i.afd, ptr %61, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i64 284, ptr %i.c, align 8, !tbaa !16
  %i.afe = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc675 unwind label %bb.de ; 3 uses

.noexc675:                                        ; preds = %.noexc.i674
  store ptr %i.afe, ptr %61, align 8, !tbaa !17
  %i.aff = load i64, ptr %i.c, align 8, !tbaa !16 ; 3 uses
  store i64 %i.aff, ptr %i.afd, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(284) %i.afe, ptr noundef nonnull align 1 dereferenceable(284) @.str.126, i64 284, i1 false)
  %i.afg = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i64 %i.aff, ptr %i.afg, align 8, !tbaa !12
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afe, i64 %i.aff
  store i8 0, ptr %i.afh, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aei, ptr noundef nonnull align 8 dereferenceable(32) %61)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit unwind label %bb.df

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit: ; preds = %.noexc675
  %i.afi = load ptr, ptr %61, align 8, !tbaa !17  ; 2 uses
  %i.afj = icmp eq ptr %i.afi, %i.afd
  br i1 %i.afj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit
  %i.afk = load i64, ptr %i.afd, align 8, !tbaa !15
  %i.afl = add i64 %i.afk, 1
  call void @_ZdlPvm(ptr noundef %i.afi, i64 noundef %i.afl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #15
  %i.afm = load ptr, ptr %60, align 8, !tbaa !17  ; 2 uses
  %i.afn = icmp eq ptr %i.afm, %i.afa
  br i1 %i.afn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680
  %i.afo = load i64, ptr %i.afa, align 8, !tbaa !15
  %i.afp = add i64 %i.afo, 1
  call void @_ZdlPvm(ptr noundef %i.afm, i64 noundef %i.afp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #15
  %i.afq = load ptr, ptr %59, align 8, !tbaa !17  ; 2 uses
  %i.afr = icmp eq ptr %i.afq, %i.adw
  br i1 %i.afr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i684

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i684: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683
  %i.afs = load i64, ptr %i.adw, align 8, !tbaa !15
  %i.aft = add i64 %i.afs, 1
  call void @_ZdlPvm(ptr noundef %i.afq, i64 noundef %i.aft) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i684
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #15
  %i.afu = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 6 uses
  store ptr %i.afu, ptr %62, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 16, ptr %i.b, align 8, !tbaa !16
  %i.afv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc689 unwind label %bb.di ; 2 uses

.noexc689:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686
  store ptr %i.afv, ptr %62, align 8, !tbaa !17
  %i.afw = load i64, ptr %i.b, align 8, !tbaa !16 ; 3 uses
  store i64 %i.afw, ptr %i.afu, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.afv, ptr noundef nonnull align 1 dereferenceable(16) @.str.127, i64 16, i1 false)
  %i.afx = getelementptr inbounds nuw i8, ptr %62, i64 8
  store i64 %i.afw, ptr %i.afx, align 8, !tbaa !12
  %i.afy = load ptr, ptr %62, align 8, !tbaa !17
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 %i.afw
  store i8 0, ptr %i.afz, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.aga = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #36
          to label %.noexc696 unwind label %bb.dj ; 14 uses

.noexc696:                                        ; preds = %.noexc689
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 24 ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.aga, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.aga, i8 0, i64 160, i1 false)
  store ptr %i.agc, ptr %i.agb, align 8, !tbaa !8
  %i.agd = getelementptr inbounds nuw i8, ptr %i.aga, i64 56 ; 3 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.aga, i64 72
  store ptr %i.age, ptr %i.agd, align 8, !tbaa !8
  %i.agf = getelementptr inbounds nuw i8, ptr %i.aga, i64 64 ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.aga, i64 88
  %i.agh = getelementptr inbounds nuw i8, ptr %i.aga, i64 104
  store ptr %i.agh, ptr %i.agg, align 8, !tbaa !8
  %i.agi = getelementptr inbounds nuw i8, ptr %i.aga, i64 137
  store i8 0, ptr %i.agi, align 1, !tbaa !744
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIdEE, i64 16), ptr %i.aga, align 16, !tbaa !47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.agb, ptr noundef nonnull align 8 dereferenceable(32) %62)
          to label %.noexc697 unwind label %bb.dj

.noexc697:                                        ; preds = %.noexc696
  %i.agj = load i64, ptr %i.agf, align 16, !tbaa !12
  %i.agk = icmp eq i64 %i.agj, 0
  br i1 %i.agk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i691, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIdEEdE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRd.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i691: ; preds = %.noexc697
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.agl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.agl, ptr %2, align 8, !tbaa !8, !alias.scope !747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.agl, ptr noundef nonnull align 1 dereferenceable(6) @.str.184, i64 6, i1 false)
  %i.agm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 6, ptr %i.agm, align 8, !tbaa !12, !alias.scope !747
  %i.agn = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i8 0, ptr %i.agn, align 2, !tbaa !15, !alias.scope !747
  %i.ago = load ptr, ptr %i.agd, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ago, ptr noundef nonnull align 1 dereferenceable(6) @.str.184, i64 6, i1 false)
  %i.agp = load i64, ptr %i.agm, align 8, !tbaa !12 ; 2 uses
  store i64 %i.agp, ptr %i.agf, align 16, !tbaa !12
  %i.agq = load ptr, ptr %i.agd, align 8, !tbaa !17
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 %i.agp
  store i8 0, ptr %i.agr, align 1, !tbaa !15
  %.pre.i.i.i692 = load ptr, ptr %2, align 8, !tbaa !17
  store i64 0, ptr %i.agm, align 8, !tbaa !12
  store i8 0, ptr %.pre.i.i.i692, align 1, !tbaa !15
  %i.ags = load ptr, ptr %2, align 8, !tbaa !17   ; 2 uses
  %i.agt = icmp eq ptr %i.ags, %i.agl
  br i1 %i.agt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i694, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i693

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i693: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i691
  %i.agu = load i64, ptr %i.agl, align 8, !tbaa !15
  %i.agv = add i64 %i.agu, 1
  call void @_ZdlPvm(ptr noundef %i.ags, i64 noundef %i.agv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i694

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i694: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i691, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i693
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIdEEdE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRd.exit.i

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIdEEdE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRd.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i694, %.noexc697
  %i.agw = getelementptr inbounds nuw i8, ptr %i.aga, i64 120
  store i64 136, ptr %i.agw, align 8, !tbaa !673
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull %i.aga)
          to label %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIdEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit unwind label %bb.dj

_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIdEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIdEEdE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRd.exit.i
  %i.agx = load ptr, ptr %i.aga, align 16, !tbaa !47
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 72
  %i.agz = load ptr, ptr %i.agy, align 8
  %i.aha = invoke noundef nonnull align 8 dereferenceable(160) ptr %i.agz(ptr noundef nonnull align 8 dereferenceable(160) %i.aga, double noundef 0.000000e+00, double noundef 1.000000e+00)
          to label %.noexc.i700 unwind label %bb.dj ; 3 uses

.noexc.i700:                                      ; preds = %_ZN4dmlc9ParameterIN7xgboost4tree10TrainParamEE7DECLAREIdEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 128
  store double 2.000000e-01, ptr %i.ahb, align 8, !tbaa !752
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.aha, i64 8
  store i8 1, ptr %i.ahc, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #15
  %i.ahd = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 6 uses
  store ptr %i.ahd, ptr %63, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 53, ptr %i.a, align 8, !tbaa !16
  %i.ahe = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc701 unwind label %bb.dk ; 3 uses

.noexc701:                                        ; preds = %.noexc.i700
  store ptr %i.ahe, ptr %63, align 8, !tbaa !17
  %i.ahf = load i64, ptr %i.a, align 8, !tbaa !16 ; 3 uses
  store i64 %i.ahf, ptr %i.ahd, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %i.ahe, ptr noundef nonnull align 1 dereferenceable(53) @.str.128, i64 53, i1 false)
  %i.ahg = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i64 %i.ahf, ptr %i.ahg, align 8, !tbaa !12
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahe, i64 %i.ahf
  store i8 0, ptr %i.ahh, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.aha, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ahi, ptr noundef nonnull align 8 dereferenceable(32) %63)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIdEEdE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.dl

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIdEEdE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc701
  %i.ahj = load ptr, ptr %63, align 8, !tbaa !17  ; 2 uses
  %i.ahk = icmp eq ptr %i.ahj, %i.ahd
  br i1 %i.ahk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit706, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i704

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i704: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIdEEdE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ahl = load i64, ptr %i.ahd, align 8, !tbaa !15
  %i.ahm = add i64 %i.ahl, 1
  call void @_ZdlPvm(ptr noundef %i.ahj, i64 noundef %i.ahm) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit706

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit706: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIdEEdE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i704
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #15
  %i.ahn = load ptr, ptr %62, align 8, !tbaa !17  ; 2 uses
  %i.aho = icmp eq ptr %i.ahn, %i.afu
  br i1 %i.aho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i707

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i707: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit706
  %i.ahp = load i64, ptr %i.afu, align 8, !tbaa !15
  %i.ahq = add i64 %i.ahp, 1
  call void @_ZdlPvm(ptr noundef %i.ahn, i64 noundef %i.ahq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit706, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i707
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #15
  %i.ahr = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 6 uses
  store ptr %i.ahr, ptr %64, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ahr, ptr noundef nonnull align 1 dereferenceable(10) @.str.103, i64 10, i1 false)
  %i.ahs = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i64 10, ptr %i.ahs, align 8, !tbaa !12
  %i.aht = getelementptr inbounds nuw i8, ptr %64, i64 26
  store i8 0, ptr %i.aht, align 2, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #15
  %i.ahu = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 6 uses
  store ptr %i.ahu, ptr %65, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ahu, ptr noundef nonnull align 1 dereferenceable(6) @.str.129, i64 6, i1 false)
  %i.ahv = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i64 6, ptr %i.ahv, align 8, !tbaa !12
  %i.ahw = getelementptr inbounds nuw i8, ptr %65, i64 22
  store i8 0, ptr %i.ahw, align 2, !tbaa !15
  invoke void @_ZN4dmlc9parameter12ParamManager8AddAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef nonnull align 8 dereferenceable(32) %65)
          to label %bb.f unwind label %bb.dn

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709
  %i.ahx = load ptr, ptr %65, align 8, !tbaa !17  ; 2 uses
  %i.ahy = icmp eq ptr %i.ahx, %i.ahu
  br i1 %i.ahy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit720, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i718

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i718: ; preds = %bb.f
  %i.ahz = load i64, ptr %i.ahu, align 8, !tbaa !15
  %i.aia = add i64 %i.ahz, 1
  call void @_ZdlPvm(ptr noundef %i.ahx, i64 noundef %i.aia) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit720

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit720: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i718
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #15
  %i.aib = load ptr, ptr %64, align 8, !tbaa !17  ; 2 uses
  %i.aic = icmp eq ptr %i.aib, %i.ahr
  br i1 %i.aic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit723, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i721

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i721: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit720
  %i.aid = load i64, ptr %i.ahr, align 8, !tbaa !15
  %i.aie = add i64 %i.aid, 1
  call void @_ZdlPvm(ptr noundef %i.aib, i64 noundef %i.aie) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit723

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit723: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit720, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i721
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #15
  %i.aif = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 6 uses
  store ptr %i.aif, ptr %66, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.aif, ptr noundef nonnull align 1 dereferenceable(9) @.str.105, i64 9, i1 false)
  %i.aig = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i64 9, ptr %i.aig, align 8, !tbaa !12
  %i.aih = getelementptr inbounds nuw i8, ptr %66, i64 25
  store i8 0, ptr %i.aih, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #15
  %i.aii = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 6 uses
  store ptr %i.aii, ptr %67, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.aii, ptr noundef nonnull align 1 dereferenceable(5) @.str.130, i64 5, i1 false)
  %i.aij = getelementptr inbounds nuw i8, ptr %67, i64 8
  store i64 5, ptr %i.aij, align 8, !tbaa !12
  %i.aik = getelementptr inbounds nuw i8, ptr %67, i64 21
  store i8 0, ptr %i.aik, align 1, !tbaa !15
  invoke void @_ZN4dmlc9parameter12ParamManager8AddAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %66, ptr noundef nonnull align 8 dereferenceable(32) %67)
          to label %bb.g unwind label %bb.do

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit723
  %i.ail = load ptr, ptr %67, align 8, !tbaa !17  ; 2 uses
  %i.aim = icmp eq ptr %i.ail, %i.aii
  br i1 %i.aim, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i732

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i732: ; preds = %bb.g
  %i.ain = load i64, ptr %i.aii, align 8, !tbaa !15
  %i.aio = add i64 %i.ain, 1
  call void @_ZdlPvm(ptr noundef %i.ail, i64 noundef %i.aio) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i732
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #15
  %i.aip = load ptr, ptr %66, align 8, !tbaa !17  ; 2 uses
  %i.aiq = icmp eq ptr %i.aip, %i.aif
  br i1 %i.aiq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i735

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i735: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734
  %i.air = load i64, ptr %i.aif, align 8, !tbaa !15
  %i.ais = add i64 %i.air, 1
  call void @_ZdlPvm(ptr noundef %i.aip, i64 noundef %i.ais) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i735
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #15
  %i.ait = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 6 uses
  store ptr %i.ait, ptr %68, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ait, ptr noundef nonnull align 1 dereferenceable(14) @.str.85, i64 14, i1 false)
  %i.aiu = getelementptr inbounds nuw i8, ptr %68, i64 8
  store i64 14, ptr %i.aiu, align 8, !tbaa !12
  %i.aiv = getelementptr inbounds nuw i8, ptr %68, i64 30
  store i8 0, ptr %i.aiv, align 2, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #15
  %i.aiw = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 6 uses
  store ptr %i.aiw, ptr %69, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.aiw, ptr noundef nonnull align 1 dereferenceable(5) @.str.131, i64 5, i1 false)
  %i.aix = getelementptr inbounds nuw i8, ptr %69, i64 8
  store i64 5, ptr %i.aix, align 8, !tbaa !12
  %i.aiy = getelementptr inbounds nuw i8, ptr %69, i64 21
  store i8 0, ptr %i.aiy, align 1, !tbaa !15
  invoke void @_ZN4dmlc9parameter12ParamManager8AddAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %68, ptr noundef nonnull align 8 dereferenceable(32) %69)
          to label %bb.h unwind label %bb.dp

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737
  %i.aiz = load ptr, ptr %69, align 8, !tbaa !17  ; 2 uses
  %i.aja = icmp eq ptr %i.aiz, %i.aiw
  br i1 %i.aja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i746

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i746: ; preds = %bb.h
  %i.ajb = load i64, ptr %i.aiw, align 8, !tbaa !15
  %i.ajc = add i64 %i.ajb, 1
  call void @_ZdlPvm(ptr noundef %i.aiz, i64 noundef %i.ajc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i746
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #15
  %i.ajd = load ptr, ptr %68, align 8, !tbaa !17  ; 2 uses
  %i.aje = icmp eq ptr %i.ajd, %i.ait
  br i1 %i.aje, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i749

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i749: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748
  %i.ajf = load i64, ptr %i.ait, align 8, !tbaa !15
  %i.ajg = add i64 %i.ajf, 1
  call void @_ZdlPvm(ptr noundef %i.ajd, i64 noundef %i.ajg) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i749
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #15
  %i.ajh = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 6 uses
  store ptr %i.ajh, ptr %70, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ajh, ptr noundef nonnull align 1 dereferenceable(13) @.str.83, i64 13, i1 false)
  %i.aji = getelementptr inbounds nuw i8, ptr %70, i64 8
  store i64 13, ptr %i.aji, align 8, !tbaa !12
  %i.ajj = getelementptr inbounds nuw i8, ptr %70, i64 29
  store i8 0, ptr %i.ajj, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #15
  %i.ajk = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 6 uses
  store ptr %i.ajk, ptr %71, align 8, !tbaa !8
end_hunk_1
begin_hunk_2_@_ZN4dmlc10ParseFloatIdLb1EEET_PKcPPc:bb.a
  br i1 %i.eb, label %.lr.ph211, label %._crit_edge212, !llvm.loop !988

._crit_edge212:                                   ; preds = %.lr.ph211
  %i.ec = icmp ugt i32 %i.dx, 308
  br i1 %i.ec, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %._crit_edge212
  %i.ed = tail call ptr @__errno_location() #38
  store i32 34, ptr %i.ed, align 4, !tbaa !57
  %.not154 = icmp eq ptr %1, null
  br i1 %.not154, label %.thread170, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.dy, ptr %1, align 8, !tbaa !54
  br label %.thread170

bb.ae:                                            ; preds = %._crit_edge212
  %i.ee = icmp eq i32 %i.dx, 308
  br i1 %i.ee, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.ef = fcmp ogt double %.0121, f0x3FFCC359E067A348
  %i.eg = fcmp olt double %.0121, f0x4001CCF385EBC8A0
  %or.cond = select i1 %i.dm, i1 %i.eg, i1 %i.ef
  br i1 %or.cond, label %bb.ag, label %.lr.ph218.preheader

bb.ag:                                            ; preds = %bb.af
  %i.eh = tail call ptr @__errno_location() #38
  store i32 34, ptr %i.eh, align 4, !tbaa !57
  %.not153 = icmp eq ptr %1, null
  br i1 %.not153, label %.thread170, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.dy, ptr %1, align 8, !tbaa !54
  br label %.thread170

bb.ai:                                            ; preds = %bb.ae
  %i.ei = icmp samesign ugt i32 %i.dx, 7
  br i1 %i.ei, label %.lr.ph218.preheader, label %.preheader

.lr.ph218.preheader:                              ; preds = %bb.af, %bb.ai
  %.1216.ph = phi i32 [ 308, %bb.af ], [ %i.dx, %bb.ai ]
  br label %.lr.ph218

.preheader:                                       ; preds = %.lr.ph218, %bb.ai
  %.0113.lcssa = phi double [ 1.000000e+00, %bb.ai ], [ %i.ej, %.lr.ph218 ] ; 2 uses
  %.1.lcssa = phi i32 [ %i.dx, %bb.ai ], [ %i.ek, %.lr.ph218 ] ; 7 uses
  %.not221 = icmp eq i32 %.1.lcssa, 0
  br i1 %.not221, label %._crit_edge225, label %.lr.ph224

.lr.ph218:                                        ; preds = %.lr.ph218.preheader, %.lr.ph218
  %.1216 = phi i32 [ %i.ek, %.lr.ph218 ], [ %.1216.ph, %.lr.ph218.preheader ]
  %.0113215 = phi double [ %i.ej, %.lr.ph218 ], [ 1.000000e+00, %.lr.ph218.preheader ]
  %i.ej = fmul double %.0113215, 1.000000e+08     ; 2 uses
  %i.ek = add nsw i32 %.1216, -8                  ; 3 uses
  %i.el = icmp ugt i32 %i.ek, 7
  br i1 %i.el, label %.lr.ph218, label %.preheader, !llvm.loop !989

.lr.ph224:                                        ; preds = %.preheader
  %i.em = fmul double %.0113.lcssa, 1.000000e+01  ; 2 uses
  %.not = icmp eq i32 %.1.lcssa, 1
  br i1 %.not, label %._crit_edge225, label %.lr.ph224.1

.lr.ph224.1:                                      ; preds = %.lr.ph224
  %i.en = fmul double %i.em, 1.000000e+01         ; 2 uses
  %.not.1 = icmp eq i32 %.1.lcssa, 2
  br i1 %.not.1, label %._crit_edge225, label %.lr.ph224.2

.lr.ph224.2:                                      ; preds = %.lr.ph224.1
  %i.eo = fmul double %i.en, 1.000000e+01         ; 2 uses
  %.not.2 = icmp eq i32 %.1.lcssa, 3
  br i1 %.not.2, label %._crit_edge225, label %.lr.ph224.3

.lr.ph224.3:                                      ; preds = %.lr.ph224.2
  %i.ep = fmul double %i.eo, 1.000000e+01         ; 2 uses
  %.not.3 = icmp eq i32 %.1.lcssa, 4
  br i1 %.not.3, label %._crit_edge225, label %.lr.ph224.4

.lr.ph224.4:                                      ; preds = %.lr.ph224.3
  %i.eq = fmul double %i.ep, 1.000000e+01         ; 2 uses
  %.not.4 = icmp eq i32 %.1.lcssa, 5
  br i1 %.not.4, label %._crit_edge225, label %.lr.ph224.5

.lr.ph224.5:                                      ; preds = %.lr.ph224.4
  %i.er = fmul double %i.eq, 1.000000e+01         ; 2 uses
  %.not.5 = icmp eq i32 %.1.lcssa, 6
  br i1 %.not.5, label %._crit_edge225, label %.lr.ph224.6

.lr.ph224.6:                                      ; preds = %.lr.ph224.5
  %i.es = fmul double %i.er, 1.000000e+01
  br label %._crit_edge225

._crit_edge225:                                   ; preds = %.lr.ph224, %.lr.ph224.1, %.lr.ph224.2, %.lr.ph224.3, %.lr.ph224.4, %.lr.ph224.5, %.lr.ph224.6, %bb.ab, %.preheader
  %.pr179261269274289 = phi i8 [ %i.dz, %.preheader ], [ %i.dq, %bb.ab ], [ %i.dz, %.lr.ph224.6 ], [ %i.dz, %.lr.ph224.5 ], [ %i.dz, %.lr.ph224.4 ], [ %i.dz, %.lr.ph224.3 ], [ %i.dz, %.lr.ph224.2 ], [ %i.dz, %.lr.ph224.1 ], [ %i.dz, %.lr.ph224 ]
  %.11.lcssa262268276288 = phi ptr [ %i.dy, %.preheader ], [ %.10, %bb.ab ], [ %i.dy, %.lr.ph224.6 ], [ %i.dy, %.lr.ph224.5 ], [ %i.dy, %.lr.ph224.4 ], [ %i.dy, %.lr.ph224.3 ], [ %i.dy, %.lr.ph224.2 ], [ %i.dy, %.lr.ph224.1 ], [ %i.dy, %.lr.ph224 ]
  %.1114.lcssa = phi double [ %.0113.lcssa, %.preheader ], [ 1.000000e+00, %bb.ab ], [ %i.em, %.lr.ph224 ], [ %i.en, %.lr.ph224.1 ], [ %i.eo, %.lr.ph224.2 ], [ %i.ep, %.lr.ph224.3 ], [ %i.eq, %.lr.ph224.4 ], [ %i.er, %.lr.ph224.5 ], [ %i.es, %.lr.ph224.6 ] ; 2 uses
  %i.et = fdiv double %.0121, %.1114.lcssa
  %i.eu = fmul double %.0121, %.1114.lcssa
  %i.ev = select i1 %i.dm, double %i.et, double %i.eu
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge225, %._crit_edge204
  %i.ew = phi i8 [ %.pr179261269274289, %._crit_edge225 ], [ %i.dj, %._crit_edge204 ]
  %.12 = phi ptr [ %.11.lcssa262268276288, %._crit_edge225 ], [ %.9, %._crit_edge204 ] ; 2 uses
  %.2123 = phi double [ %i.ev, %._crit_edge225 ], [ %.0121, %._crit_edge204 ] ; 2 uses
  switch i8 %i.ew, label %bb.al [
    i8 102, label %bb.ak
    i8 70, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj
  %i.ex = getelementptr inbounds nuw i8, ptr %.12, i64 1
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %.13 = phi ptr [ %i.ex, %bb.ak ], [ %.12, %bb.aj ]
  %.not155 = icmp eq ptr %1, null
  br i1 %.not155, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store ptr %.13, ptr %1, align 8, !tbaa !54
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ey = fneg double %.2123
  %i.ez = select i1 %.not151, double %i.ey, double %.2123
  br label %.thread170

.thread170:                                       ; preds = %bb.ag, %bb.ah, %bb.ad, %bb.ac, %bb.x, %bb.y, %bb.l, %bb.an
  %.3138 = phi double [ %i.ak, %bb.l ], [ %i.ez, %bb.an ], [ +qnan, %bb.x ], [ +qnan, %bb.y ], [ +inf, %bb.ac ], [ +inf, %bb.ad ], [ +inf, %bb.ah ], [ +inf, %bb.ag ]
  ret double %.3138

bb.ao:                                            ; preds = %bb.t
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7xgboost13GraphvizParam11__DECLARE__EPN4dmlc9parameter21ParamManagerSingletonIS0_EE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.i, ptr %8, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.i, ptr noundef nonnull align 1 dereferenceable(9) @.str.187, i64 9, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 9, ptr %i.j, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 25
  store i8 0, ptr %i.k, align 1, !tbaa !15
  %i.l = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #36
          to label %.noexc76 unwind label %bb.a   ; 14 uses

.noexc76:                                         ; preds = %._crit_edge.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.l, i8 0, i64 160, i1 false)
  store ptr %i.n, ptr %i.m, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store ptr %i.p, ptr %i.o, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 88 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store ptr %i.s, ptr %i.r, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 128 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  store ptr %i.u, ptr %i.t, align 16, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.l, align 16, !tbaa !47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc77 unwind label %bb.a

.noexc77:                                         ; preds = %.noexc76
  %i.v = load i64, ptr %i.q, align 16, !tbaa !12
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %.noexc77
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.x, ptr %7, align 8, !tbaa !8, !alias.scope !990
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.x, ptr noundef nonnull align 1 dereferenceable(6) @.str.183, i64 6, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 6, ptr %i.y, align 8, !tbaa !12, !alias.scope !990
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i8 0, ptr %i.z, align 2, !tbaa !15, !alias.scope !990
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aa, ptr noundef nonnull align 1 dereferenceable(6) @.str.183, i64 6, i1 false)
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !12  ; 2 uses
  store i64 %i.ab, ptr %i.q, align 16, !tbaa !12
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 0, ptr %i.ad, align 1, !tbaa !15
  %.pre.i.i.i = load ptr, ptr %7, align 8, !tbaa !17
  store i64 0, ptr %i.y, align 8, !tbaa !12
  store i8 0, ptr %.pre.i.i.i, align 1, !tbaa !15
  %i.ae = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.x
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.ag = load i64, ptr %i.x, align 8, !tbaa !15
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.noexc77
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  store i64 8, ptr %i.ai, align 8, !tbaa !673
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %i.l)
          to label %_ZN4dmlc9ParameterIN7xgboost13GraphvizParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit unwind label %bb.a

_ZN4dmlc9ParameterIN7xgboost13GraphvizParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.aj, ptr %9, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.aj, ptr noundef nonnull align 1 dereferenceable(7) @.str.188, i64 7, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 7, ptr %i.ak, align 8, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 23
  store i8 0, ptr %i.al, align 1, !tbaa !15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc.i85 unwind label %bb.b

.noexc.i85:                                       ; preds = %_ZN4dmlc9ParameterIN7xgboost13GraphvizParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i8 1, ptr %i.am, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.an, ptr %10, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  store i64 41, ptr %i.h, align 8, !tbaa !16
  %i.ao = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc86 unwind label %bb.c   ; 3 uses

.noexc86:                                         ; preds = %.noexc.i85
  store ptr %i.ao, ptr %10, align 8, !tbaa !17
  %i.ap = load i64, ptr %i.h, align 8, !tbaa !16  ; 3 uses
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.ao, ptr noundef nonnull align 1 dereferenceable(41) @.str.189, i64 41, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  store i8 0, ptr %i.ar, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit unwind label %bb.d

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit: ; preds = %.noexc86
  %i.as = load ptr, ptr %10, align 8, !tbaa !17   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.an
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit
  %i.au = load i64, ptr %i.an, align 8, !tbaa !15
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.aw = load ptr, ptr %9, align 8, !tbaa !17    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.aj
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load i64, ptr %i.aj, align 8, !tbaa !15
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.ba = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.i
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.bc = load i64, ptr %i.i, align 8, !tbaa !15
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.be, ptr %11, align 8, !tbaa !8
  store i64 8245928668403036014, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 8, ptr %i.bf, align 8, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i8 0, ptr %i.bg, align 8, !tbaa !15
  %i.bh = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #36
          to label %.noexc105 unwind label %bb.g  ; 14 uses

.noexc105:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.bh, i8 0, i64 160, i1 false)
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 56 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 64 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 88 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 104
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 128 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 144
  store ptr %i.bq, ptr %i.bp, align 16, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.bh, align 16, !tbaa !47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.noexc106 unwind label %bb.g

.noexc106:                                        ; preds = %.noexc105
  %i.br = load i64, ptr %i.bm, align 16, !tbaa !12
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i100, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i100: ; preds = %.noexc106
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.bt, ptr %6, align 8, !tbaa !8, !alias.scope !995
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bt, ptr noundef nonnull align 1 dereferenceable(6) @.str.183, i64 6, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 6, ptr %i.bu, align 8, !tbaa !12, !alias.scope !995
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i8 0, ptr %i.bv, align 2, !tbaa !15, !alias.scope !995
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bw, ptr noundef nonnull align 1 dereferenceable(6) @.str.183, i64 6, i1 false)
  %i.bx = load i64, ptr %i.bu, align 8, !tbaa !12 ; 2 uses
  store i64 %i.bx, ptr %i.bm, align 16, !tbaa !12
  %i.by = load ptr, ptr %i.bk, align 8, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bx
  store i8 0, ptr %i.bz, align 1, !tbaa !15
  %.pre.i.i.i101 = load ptr, ptr %6, align 8, !tbaa !17
  store i64 0, ptr %i.bu, align 8, !tbaa !12
  store i8 0, ptr %.pre.i.i.i101, align 1, !tbaa !15
  %i.ca = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bt
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i100
  %i.cc = load i64, ptr %i.bt, align 8, !tbaa !15
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i99

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i103, %.noexc106
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 120
  store i64 40, ptr %i.ce, align 8, !tbaa !673
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %i.bh)
          to label %_ZN4dmlc9ParameterIN7xgboost13GraphvizParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit108 unwind label %bb.g

_ZN4dmlc9ParameterIN7xgboost13GraphvizParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit108: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i99
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.cf, ptr %12, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.cf, ptr noundef nonnull align 1 dereferenceable(7) @.str.191, i64 7, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 7, ptr %i.cg, align 8, !tbaa !12
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 23
  store i8 0, ptr %i.ch, align 1, !tbaa !15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.noexc.i116 unwind label %bb.h

.noexc.i116:                                      ; preds = %_ZN4dmlc9ParameterIN7xgboost13GraphvizParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit108
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i8 1, ptr %i.ci, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.cj, ptr %13, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  store i64 48, ptr %i.g, align 8, !tbaa !16
  %i.ck = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc117 unwind label %bb.i  ; 3 uses

.noexc117:                                        ; preds = %.noexc.i116
  store ptr %i.ck, ptr %13, align 8, !tbaa !17
  %i.cl = load i64, ptr %i.g, align 8, !tbaa !16  ; 3 uses
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.ck, ptr noundef nonnull align 1 dereferenceable(48) @.str.192, i64 48, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl
  store i8 0, ptr %i.cn, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit120 unwind label %bb.j

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit120: ; preds = %.noexc117
  %i.co = load ptr, ptr %13, align 8, !tbaa !17   ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.cj
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit120
  %i.cq = load i64, ptr %i.cj, align 8, !tbaa !15
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  %i.cs = load ptr, ptr %12, align 8, !tbaa !17   ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.cf
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  %i.cu = load i64, ptr %i.cf, align 8, !tbaa !15
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %i.cw = load ptr, ptr %11, align 8, !tbaa !17   ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.be
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  %i.cy = load i64, ptr %i.be, align 8, !tbaa !15
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.da, ptr %14, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.da, ptr noundef nonnull align 1 dereferenceable(7) @.str.193, i64 7, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 7, ptr %i.db, align 8, !tbaa !12
  %i.dc = getelementptr inbounds nuw i8, ptr %14, i64 23
  store i8 0, ptr %i.dc, align 1, !tbaa !15
  %i.dd = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #36
          to label %.noexc140 unwind label %bb.m  ; 14 uses

.noexc140:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.dd, i8 0, i64 160, i1 false)
  store ptr %i.df, ptr %i.de, align 8, !tbaa !8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 56 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  store ptr %i.dh, ptr %i.dg, align 8, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 64 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 88 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 104
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 128 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 144
  store ptr %i.dm, ptr %i.dl, align 16, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.dd, align 16, !tbaa !47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.de, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %.noexc141 unwind label %bb.m

.noexc141:                                        ; preds = %.noexc140
  %i.dn = load i64, ptr %i.di, align 16, !tbaa !12
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i135, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i135: ; preds = %.noexc141
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.dp, ptr %5, align 8, !tbaa !8, !alias.scope !1000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dp, ptr noundef nonnull align 1 dereferenceable(6) @.str.183, i64 6, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 6, ptr %i.dq, align 8, !tbaa !12, !alias.scope !1000
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i8 0, ptr %i.dr, align 2, !tbaa !15, !alias.scope !1000
  %i.ds = load ptr, ptr %i.dg, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ds, ptr noundef nonnull align 1 dereferenceable(6) @.str.183, i64 6, i1 false)
  %i.dt = load i64, ptr %i.dq, align 8, !tbaa !12 ; 2 uses
  store i64 %i.dt, ptr %i.di, align 16, !tbaa !12
  %i.du = load ptr, ptr %i.dg, align 8, !tbaa !17
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dt
  store i8 0, ptr %i.dv, align 1, !tbaa !15
  %.pre.i.i.i136 = load ptr, ptr %5, align 8, !tbaa !17
  store i64 0, ptr %i.dq, align 8, !tbaa !12
  store i8 0, ptr %.pre.i.i.i136, align 1, !tbaa !15
  %i.dw = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.dp
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i135
  %i.dy = load i64, ptr %i.dp, align 8, !tbaa !15
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i134

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i138, %.noexc141
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dd, i64 120
  store i64 72, ptr %i.ea, align 8, !tbaa !673
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull %i.dd)
          to label %_ZN4dmlc9ParameterIN7xgboost13GraphvizParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit143 unwind label %bb.m

_ZN4dmlc9ParameterIN7xgboost13GraphvizParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit143: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i134
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.eb = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.eb, ptr %15, align 8, !tbaa !8
  store i16 16980, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 2, ptr %i.ec, align 8, !tbaa !12
  %i.ed = getelementptr inbounds nuw i8, ptr %15, i64 18
  store i8 0, ptr %i.ed, align 2, !tbaa !15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.noexc.i151 unwind label %bb.n

.noexc.i151:                                      ; preds = %_ZN4dmlc9ParameterIN7xgboost13GraphvizParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit143
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i8 1, ptr %i.ee, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %i.ef = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.ef, ptr %16, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  store i64 33, ptr %i.f, align 8, !tbaa !16
  %i.eg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc152 unwind label %bb.o  ; 3 uses

.noexc152:                                        ; preds = %.noexc.i151
  store ptr %i.eg, ptr %16, align 8, !tbaa !17
  %i.eh = load i64, ptr %i.f, align 8, !tbaa !16  ; 3 uses
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.eg, ptr noundef nonnull align 1 dereferenceable(33) @.str.195, i64 33, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !12
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.eh
  store i8 0, ptr %i.ej, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit155 unwind label %bb.p

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit155: ; preds = %.noexc152
  %i.ek = load ptr, ptr %16, align 8, !tbaa !17   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.ef
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit155
  %i.em = load i64, ptr %i.ef, align 8, !tbaa !15
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  %i.eo = load ptr, ptr %15, align 8, !tbaa !17   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.eb
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.eq = load i64, ptr %i.eb, align 8, !tbaa !15
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  %i.es = load ptr, ptr %14, align 8, !tbaa !17   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.da
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.eu = load i64, ptr %i.da, align 8, !tbaa !15
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  %i.ew = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.ew, ptr %17, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store i64 21, ptr %i.e, align 8, !tbaa !16
  %i.ex = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc167 unwind label %bb.s  ; 2 uses

.noexc167:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  store ptr %i.ex, ptr %17, align 8, !tbaa !17
  %i.ey = load i64, ptr %i.e, align 8, !tbaa !16  ; 3 uses
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ex, ptr noundef nonnull align 1 dereferenceable(21) @.str.196, i64 21, i1 false)
  %i.ez = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !12
  %i.fa = load ptr, ptr %17, align 8, !tbaa !17
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ey
  store i8 0, ptr %i.fb, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  %i.fc = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #36
          to label %.noexc175 unwind label %bb.t  ; 14 uses

.noexc175:                                        ; preds = %.noexc167
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.fc, i8 0, i64 160, i1 false)
  store ptr %i.fe, ptr %i.fd, align 8, !tbaa !8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 56 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 72
  store ptr %i.fg, ptr %i.ff, align 8, !tbaa !8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 64 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 88 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 104
  store ptr %i.fj, ptr %i.fi, align 8, !tbaa !8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 128 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fc, i64 144
  store ptr %i.fl, ptr %i.fk, align 16, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.fc, align 16, !tbaa !47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fd, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %.noexc176 unwind label %bb.t

.noexc176:                                        ; preds = %.noexc175
  %i.fm = load i64, ptr %i.fh, align 16, !tbaa !12
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i170, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i170: ; preds = %.noexc176
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.fo, ptr %4, align 8, !tbaa !8, !alias.scope !1005
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.fo, ptr noundef nonnull align 1 dereferenceable(6) @.str.183, i64 6, i1 false)
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 6, ptr %i.fp, align 8, !tbaa !12, !alias.scope !1005
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i8 0, ptr %i.fq, align 2, !tbaa !15, !alias.scope !1005
  %i.fr = load ptr, ptr %i.ff, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.fr, ptr noundef nonnull align 1 dereferenceable(6) @.str.183, i64 6, i1 false)
  %i.fs = load i64, ptr %i.fp, align 8, !tbaa !12 ; 2 uses
  store i64 %i.fs, ptr %i.fh, align 16, !tbaa !12
  %i.ft = load ptr, ptr %i.ff, align 8, !tbaa !17
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fs
  store i8 0, ptr %i.fu, align 1, !tbaa !15
  %.pre.i.i.i171 = load ptr, ptr %4, align 8, !tbaa !17
  store i64 0, ptr %i.fp, align 8, !tbaa !12
  store i8 0, ptr %.pre.i.i.i171, align 1, !tbaa !15
  %i.fv = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.fo
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i170
  %i.fx = load i64, ptr %i.fo, align 8, !tbaa !15
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i169

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i173, %.noexc176
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fc, i64 120
  store i64 104, ptr %i.fz, align 8, !tbaa !673
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull %i.fc)
          to label %_ZN4dmlc9ParameterIN7xgboost13GraphvizParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit178 unwind label %bb.t

_ZN4dmlc9ParameterIN7xgboost13GraphvizParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit178: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i169
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  %i.ga = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.ga, ptr %18, align 8, !tbaa !8
  %i.gb = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.gb, align 8, !tbaa !12
  store i8 0, ptr %i.ga, align 8, !tbaa !15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %.noexc.i186 unwind label %bb.u

.noexc.i186:                                      ; preds = %_ZN4dmlc9ParameterIN7xgboost13GraphvizParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit178
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i8 1, ptr %i.gc, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  %i.gd = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.gd, ptr %19, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i64 30, ptr %i.d, align 8, !tbaa !16
  %i.ge = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc187 unwind label %bb.v  ; 2 uses

.noexc187:                                        ; preds = %.noexc.i186
  store ptr %i.ge, ptr %19, align 8, !tbaa !17
  %i.gf = load i64, ptr %i.d, align 8, !tbaa !16  ; 3 uses
  store i64 %i.gf, ptr %i.gd, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.ge, ptr noundef nonnull align 1 dereferenceable(30) @.str.197, i64 30, i1 false)
  %i.gg = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.gf, ptr %i.gg, align 8, !tbaa !12
  %i.gh = load ptr, ptr %19, align 8, !tbaa !17
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gf
  store i8 0, ptr %i.gi, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fi, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit190 unwind label %bb.w

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit190: ; preds = %.noexc187
  %i.gj = load ptr, ptr %19, align 8, !tbaa !17   ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.gd
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit190
  %i.gl = load i64, ptr %i.gd, align 8, !tbaa !15
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  %i.gn = load ptr, ptr %18, align 8, !tbaa !17   ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.ga
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  %i.gp = load i64, ptr %i.ga, align 8, !tbaa !15
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  %i.gr = load ptr, ptr %17, align 8, !tbaa !17   ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.ew
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196
  %i.gt = load i64, ptr %i.ew, align 8, !tbaa !15
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  %i.gv = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.gv, ptr %20, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i64 16, ptr %i.c, align 8, !tbaa !16
  %i.gw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc202 unwind label %bb.z  ; 2 uses

.noexc202:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199
  store ptr %i.gw, ptr %20, align 8, !tbaa !17
  %i.gx = load i64, ptr %i.c, align 8, !tbaa !16  ; 3 uses
  store i64 %i.gx, ptr %i.gv, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gw, ptr noundef nonnull align 1 dereferenceable(16) @.str.198, i64 16, i1 false)
  %i.gy = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.gx, ptr %i.gy, align 8, !tbaa !12
  %i.gz = load ptr, ptr %20, align 8, !tbaa !17
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gx
  store i8 0, ptr %i.ha, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.hb = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #36
          to label %.noexc210 unwind label %bb.aa ; 14 uses

.noexc210:                                        ; preds = %.noexc202
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.hb, i8 0, i64 160, i1 false)
  store ptr %i.hd, ptr %i.hc, align 8, !tbaa !8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 56 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 72
  store ptr %i.hf, ptr %i.he, align 8, !tbaa !8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 64 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 88 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hb, i64 104
  store ptr %i.hi, ptr %i.hh, align 8, !tbaa !8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 128 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hb, i64 144
  store ptr %i.hk, ptr %i.hj, align 16, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.hb, align 16, !tbaa !47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.hc, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %.noexc211 unwind label %bb.aa

.noexc211:                                        ; preds = %.noexc210
  %i.hl = load i64, ptr %i.hg, align 16, !tbaa !12
  %i.hm = icmp eq i64 %i.hl, 0
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i205, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i205: ; preds = %.noexc211
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.hn, ptr %3, align 8, !tbaa !8, !alias.scope !1010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.hn, ptr noundef nonnull align 1 dereferenceable(6) @.str.183, i64 6, i1 false)
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 6, ptr %i.ho, align 8, !tbaa !12, !alias.scope !1010
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i8 0, ptr %i.hp, align 2, !tbaa !15, !alias.scope !1010
  %i.hq = load ptr, ptr %i.he, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.hq, ptr noundef nonnull align 1 dereferenceable(6) @.str.183, i64 6, i1 false)
  %i.hr = load i64, ptr %i.ho, align 8, !tbaa !12 ; 2 uses
  store i64 %i.hr, ptr %i.hg, align 16, !tbaa !12
  %i.hs = load ptr, ptr %i.he, align 8, !tbaa !17
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hr
  store i8 0, ptr %i.ht, align 1, !tbaa !15
  %.pre.i.i.i206 = load ptr, ptr %3, align 8, !tbaa !17
  store i64 0, ptr %i.ho, align 8, !tbaa !12
  store i8 0, ptr %.pre.i.i.i206, align 1, !tbaa !15
  %i.hu = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.hn
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i205
  %i.hw = load i64, ptr %i.hn, align 8, !tbaa !15
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i205, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i204

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i204: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i208, %.noexc211
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hb, i64 120
  store i64 136, ptr %i.hy, align 8, !tbaa !673
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull %i.hb)
          to label %_ZN4dmlc9ParameterIN7xgboost13GraphvizParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit213 unwind label %bb.aa

_ZN4dmlc9ParameterIN7xgboost13GraphvizParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit213: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i204
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  %i.hz = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.hz, ptr %21, align 8, !tbaa !8
  %i.ia = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.ia, align 8, !tbaa !12
  store i8 0, ptr %i.hz, align 8, !tbaa !15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.hj, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %.noexc.i221 unwind label %bb.ab

.noexc.i221:                                      ; preds = %_ZN4dmlc9ParameterIN7xgboost13GraphvizParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit213
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store i8 1, ptr %i.ib, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  %i.ic = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.ic, ptr %22, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 23, ptr %i.b, align 8, !tbaa !16
  %i.id = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc222 unwind label %bb.ac ; 2 uses

.noexc222:                                        ; preds = %.noexc.i221
  store ptr %i.id, ptr %22, align 8, !tbaa !17
  %i.ie = load i64, ptr %i.b, align 8, !tbaa !16  ; 3 uses
  store i64 %i.ie, ptr %i.ic, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.id, ptr noundef nonnull align 1 dereferenceable(23) @.str.199, i64 23, i1 false)
  %i.if = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.ie, ptr %i.if, align 8, !tbaa !12
  %i.ig = load ptr, ptr %22, align 8, !tbaa !17
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ie
  store i8 0, ptr %i.ih, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.hh, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit225 unwind label %bb.ad

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit225: ; preds = %.noexc222
  %i.ii = load ptr, ptr %22, align 8, !tbaa !17   ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.ic
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit225
  %i.ik = load i64, ptr %i.ic, align 8, !tbaa !15
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit225, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  %i.im = load ptr, ptr %21, align 8, !tbaa !17   ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.hz
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228
  %i.io = load i64, ptr %i.hz, align 8, !tbaa !15
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  %i.iq = load ptr, ptr %20, align 8, !tbaa !17   ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.gv
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231
  %i.is = load i64, ptr %i.gv, align 8, !tbaa !15
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.it) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  %i.iu = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.iu, ptr %23, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.iu, ptr noundef nonnull align 1 dereferenceable(11) @.str.200, i64 11, i1 false)
  %i.iv = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 11, ptr %i.iv, align 8, !tbaa !12
  %i.iw = getelementptr inbounds nuw i8, ptr %23, i64 27
  store i8 0, ptr %i.iw, align 1, !tbaa !15
  %i.ix = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #36
          to label %.noexc245 unwind label %bb.ag ; 14 uses

.noexc245:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.ix, i8 0, i64 160, i1 false)
  store ptr %i.iz, ptr %i.iy, align 8, !tbaa !8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 56 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 72
  store ptr %i.jb, ptr %i.ja, align 8, !tbaa !8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 64 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 88 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ix, i64 104
  store ptr %i.je, ptr %i.jd, align 8, !tbaa !8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ix, i64 128 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ix, i64 144
  store ptr %i.jg, ptr %i.jf, align 16, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.ix, align 16, !tbaa !47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.iy, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %.noexc246 unwind label %bb.ag

.noexc246:                                        ; preds = %.noexc245
  %i.jh = load i64, ptr %i.jc, align 16, !tbaa !12
  %i.ji = icmp eq i64 %i.jh, 0
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i240, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i240: ; preds = %.noexc246
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.jj, ptr %2, align 8, !tbaa !8, !alias.scope !1015
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.jj, ptr noundef nonnull align 1 dereferenceable(6) @.str.183, i64 6, i1 false)
  %i.jk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 6, ptr %i.jk, align 8, !tbaa !12, !alias.scope !1015
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i8 0, ptr %i.jl, align 2, !tbaa !15, !alias.scope !1015
  %i.jm = load ptr, ptr %i.ja, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.jm, ptr noundef nonnull align 1 dereferenceable(6) @.str.183, i64 6, i1 false)
  %i.jn = load i64, ptr %i.jk, align 8, !tbaa !12 ; 2 uses
  store i64 %i.jn, ptr %i.jc, align 16, !tbaa !12
  %i.jo = load ptr, ptr %i.ja, align 8, !tbaa !17
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jn
  store i8 0, ptr %i.jp, align 1, !tbaa !15
  %.pre.i.i.i241 = load ptr, ptr %2, align 8, !tbaa !17
  store i64 0, ptr %i.jk, align 8, !tbaa !12
  store i8 0, ptr %.pre.i.i.i241, align 1, !tbaa !15
  %i.jq = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.jj
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i242: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i240
  %i.js = load i64, ptr %i.jj, align 8, !tbaa !15
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i243: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i240, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i239

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i239: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i243, %.noexc246
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ix, i64 120
  store i64 168, ptr %i.ju, align 8, !tbaa !673
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull %i.ix)
          to label %_ZN4dmlc9ParameterIN7xgboost13GraphvizParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit248 unwind label %bb.ag

_ZN4dmlc9ParameterIN7xgboost13GraphvizParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit248: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i239
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  %i.jv = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.jv, ptr %24, align 8, !tbaa !8
  %i.jw = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 0, ptr %i.jw, align 8, !tbaa !12
  store i8 0, ptr %i.jv, align 8, !tbaa !15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.jf, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %.noexc.i256 unwind label %bb.ah

.noexc.i256:                                      ; preds = %_ZN4dmlc9ParameterIN7xgboost13GraphvizParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit248
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store i8 1, ptr %i.jx, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  %i.jy = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.jy, ptr %25, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 53, ptr %i.a, align 8, !tbaa !16
  %i.jz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc257 unwind label %bb.ai ; 3 uses

.noexc257:                                        ; preds = %.noexc.i256
  store ptr %i.jz, ptr %25, align 8, !tbaa !17
  %i.ka = load i64, ptr %i.a, align 8, !tbaa !16  ; 3 uses
  store i64 %i.ka, ptr %i.jy, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %i.jz, ptr noundef nonnull align 1 dereferenceable(53) @.str.201, i64 53, i1 false)
  %i.kb = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.ka, ptr %i.kb, align 8, !tbaa !12
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.ka
  store i8 0, ptr %i.kc, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.jd, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit260 unwind label %bb.aj

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit260: ; preds = %.noexc257
  %i.kd = load ptr, ptr %25, align 8, !tbaa !17   ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.jy
  br i1 %i.ke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit260
  %i.kf = load i64, ptr %i.jy, align 8, !tbaa !15
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kg) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit260, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  %i.kh = load ptr, ptr %24, align 8, !tbaa !17   ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.jv
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263
  %i.kj = load i64, ptr %i.jv, align 8, !tbaa !15
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kk) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  %i.kl = load ptr, ptr %23, align 8, !tbaa !17   ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.iu
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266
  %i.kn = load i64, ptr %i.iu, align 8, !tbaa !15
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.ko) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  ret void

bb.a:                                             ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i, %.noexc76, %._crit_edge.i.i
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.b:                                             ; preds = %_ZN4dmlc9ParameterIN7xgboost13GraphvizParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.c:                                             ; preds = %.noexc.i85
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

bb.d:                                             ; preds = %.noexc86
  %i.ks = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kt = load ptr, ptr %10, align 8, !tbaa !17   ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.an
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270: ; preds = %bb.d
  %i.kv = load i64, ptr %i.an, align 8, !tbaa !15
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270, %bb.c
  %.pn = phi { ptr, i32 } [ %i.kr, %bb.c ], [ %i.ks, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270 ], [ %i.ks, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272 ], [ %i.kq, %bb.b ]
  %i.kx = load ptr, ptr %9, align 8, !tbaa !17    ; 2 uses
  %i.ky = icmp eq ptr %i.kx, %i.aj
  br i1 %i.ky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %bb.e
  %i.kz = load i64, ptr %i.aj, align 8, !tbaa !15
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %i.kx, i64 noundef %i.la) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, %bb.a
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275 ], [ %i.kp, %bb.a ]
  %i.lb = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.i
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276: ; preds = %bb.f
  %i.ld = load i64, ptr %i.i, align 8, !tbaa !15
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.le) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.am

bb.g:                                             ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i99, %.noexc105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.h:                                             ; preds = %_ZN4dmlc9ParameterIN7xgboost13GraphvizParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit108
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %.noexc.i116
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281

bb.j:                                             ; preds = %.noexc117
  %i.li = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lj = load ptr, ptr %13, align 8, !tbaa !17   ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.cj
  br i1 %i.lk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279: ; preds = %bb.j
  %i.ll = load i64, ptr %i.cj, align 8, !tbaa !15
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.lm) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279, %bb.i
  %.pn45 = phi { ptr, i32 } [ %i.lh, %bb.i ], [ %i.li, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279 ], [ %i.li, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, %bb.h
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281 ], [ %i.lg, %bb.h ]
  %i.ln = load ptr, ptr %12, align 8, !tbaa !17   ; 2 uses
end_hunk_2
