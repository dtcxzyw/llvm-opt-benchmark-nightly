Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypeFunctionRuntimeBuilder?download=true
inline.NumInlined: 4097
inline.NumDeleted: 2192
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt6vectorISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESaISH_EE17_M_realloc_insertIJRS5_RSC_EEEvN9__gnu_cxx17__normal_iteratorIPSH_SJ_EEDpOT_:bb.a

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #26, !noalias !706
  unreachable

_ZNSt10_Head_baseILm0EN4Luau7VariantIJPKNS0_16TypeFunctionTypeEPKNS0_23TypeFunctionTypePackVarEEEELb0EED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aj = load i32, ptr %.0913.i.i.i, align 8, !tbaa !70, !alias.scope !707
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEE9tableDtorE, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !33, !noalias !708
  invoke void %i.am(ptr noundef nonnull %i.y)
          to label %_ZSt19__relocate_object_aISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESH_SaISH_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.d, !noalias !706

bb.d:                                             ; preds = %_ZNSt10_Head_baseILm0EN4Luau7VariantIJPKNS0_16TypeFunctionTypeEPKNS0_23TypeFunctionTypePackVarEEEELb0EED2Ev.exit.i.i.i.i.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #26, !noalias !706
  unreachable

_ZSt19__relocate_object_aISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESH_SaISH_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNSt10_Head_baseILm0EN4Luau7VariantIJPKNS0_16TypeFunctionTypeEPKNS0_23TypeFunctionTypePackVarEEEELb0EED2Ev.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit, label %.lr.ph.i.i.i, !llvm.loop !14

_ZNSt6vectorISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit: ; preds = %_ZSt19__relocate_object_aISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESH_SaISH_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESaISH_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESaISH_EE12_M_check_lenEmPKc.exit ], [ %i.aq, %_ZSt19__relocate_object_aISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESH_SaISH_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not12.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not12.i.i.i27, label %_ZNSt6vectorISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit37, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit, %_ZSt19__relocate_object_aISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESH_SaISH_EEvPT_PT0_RT1_.exit.i.i.i34
  %.014.i.i.i29 = phi ptr [ %i.bm, %_ZSt19__relocate_object_aISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESH_SaISH_EEvPT_PT0_RT1_.exit.i.i.i34 ], [ %i.ar, %_ZNSt6vectorISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit ] ; 5 uses
  %.0913.i.i.i30 = phi ptr [ %i.bl, %_ZSt19__relocate_object_aISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESH_SaISH_EEvPT_PT0_RT1_.exit.i.i.i34 ], [ %1, %_ZNSt6vectorISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %i.as = load i32, ptr %.0913.i.i.i30, align 8, !tbaa !70, !alias.scope !710
  store i32 %i.as, ptr %.014.i.i.i29, align 8, !tbaa !70, !alias.scope !709
  %i.at = getelementptr inbounds nuw i8, ptr %.014.i.i.i29, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.0913.i.i.i30, i64 8 ; 2 uses
  %storemerge.i.i.i.i.i.i.i.i.i31 = load ptr, ptr %i.au, align 8, !tbaa !33, !alias.scope !710
  store ptr %storemerge.i.i.i.i.i.i.i.i.i31, ptr %i.at, align 8, !tbaa !33, !alias.scope !709
  %i.av = getelementptr inbounds nuw i8, ptr %.014.i.i.i29, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.0913.i.i.i30, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !72, !alias.scope !710 ; 2 uses
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !72, !alias.scope !709
  %i.ay = getelementptr inbounds nuw i8, ptr %.014.i.i.i29, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %.0913.i.i.i30, i64 24 ; 2 uses
  %storemerge.i.i.i.i.i.i.i.i32 = load ptr, ptr %i.az, align 8, !tbaa !33, !alias.scope !710
  store ptr %storemerge.i.i.i.i.i.i.i.i32, ptr %i.ay, align 8, !tbaa !33, !alias.scope !709
  %i.ba = sext i32 %i.ax to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_16TypeFunctionTypeEPKNS_23TypeFunctionTypePackVarEEE9tableDtorE, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !33, !noalias !711
  invoke void %i.bc(ptr noundef nonnull %i.az)
          to label %_ZNSt10_Head_baseILm0EN4Luau7VariantIJPKNS0_16TypeFunctionTypeEPKNS0_23TypeFunctionTypePackVarEEEELb0EED2Ev.exit.i.i.i.i.i33 unwind label %bb.e, !noalias !709

bb.e:                                             ; preds = %.lr.ph.i.i.i28
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  tail call void @__clang_call_terminate(ptr %i.be) #26, !noalias !709
  unreachable

_ZNSt10_Head_baseILm0EN4Luau7VariantIJPKNS0_16TypeFunctionTypeEPKNS0_23TypeFunctionTypePackVarEEEELb0EED2Ev.exit.i.i.i.i.i33: ; preds = %.lr.ph.i.i.i28
  %i.bf = load i32, ptr %.0913.i.i.i30, align 8, !tbaa !70, !alias.scope !710
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEE9tableDtorE, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !33, !noalias !711
  invoke void %i.bi(ptr noundef nonnull %i.au)
          to label %_ZSt19__relocate_object_aISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESH_SaISH_EEvPT_PT0_RT1_.exit.i.i.i34 unwind label %bb.f, !noalias !709

bb.f:                                             ; preds = %_ZNSt10_Head_baseILm0EN4Luau7VariantIJPKNS0_16TypeFunctionTypeEPKNS0_23TypeFunctionTypePackVarEEEELb0EED2Ev.exit.i.i.i.i.i33
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  tail call void @__clang_call_terminate(ptr %i.bk) #26, !noalias !709
  unreachable

_ZSt19__relocate_object_aISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESH_SaISH_EEvPT_PT0_RT1_.exit.i.i.i34: ; preds = %_ZNSt10_Head_baseILm0EN4Luau7VariantIJPKNS0_16TypeFunctionTypeEPKNS0_23TypeFunctionTypePackVarEEEELb0EED2Ev.exit.i.i.i.i.i33
  %i.bl = getelementptr inbounds nuw i8, ptr %.0913.i.i.i30, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.014.i.i.i29, i64 32 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bl, %i.b
  br i1 %.not.i.i.i35, label %_ZNSt6vectorISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit37, label %.lr.ph.i.i.i28, !llvm.loop !14

_ZNSt6vectorISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit37: ; preds = %_ZSt19__relocate_object_aISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESH_SaISH_EEvPT_PT0_RT1_.exit.i.i.i34, %_ZNSt6vectorISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit
  %.0.lcssa.i.i.i36 = phi ptr [ %i.ar, %_ZNSt6vectorISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit ], [ %i.bm, %_ZSt19__relocate_object_aISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESH_SaISH_EEvPT_PT0_RT1_.exit.i.i.i34 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i38 = icmp eq ptr %i.c, null
  br i1 %.not.i38, label %_ZNSt12_Vector_baseISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESaISH_EE13_M_deallocateEPSH_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit37
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !166
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bq) #27
  br label %_ZNSt12_Vector_baseISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESaISH_EE13_M_deallocateEPSH_m.exit

_ZNSt12_Vector_baseISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESaISH_EE13_M_deallocateEPSH_m.exit: ; preds = %_ZNSt6vectorISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEENS2_IJPKNS1_4TypeEPKNS1_11TypePackVarEEEEEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit37, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !131
  store ptr %.0.lcssa.i.i.i36, ptr %i.a, align 8, !tbaa !130
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !166
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau24TypeFunctionDeserializer19deserializeChildrenENS_7VariantIJPKNS_16TypeFunctionTypeEPKNS_23TypeFunctionTypePackVarEEEENS1_IJPKNS_4TypeEPKNS_11TypePackVarEEEE(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef align 8 %1, ptr noundef align 8 %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.34", align 1 ; 3 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.b = icmp ne i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load i32, ptr %1, align 8, !tbaa !72     ; 2 uses
  %i.e = icmp ne i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %or.cond = select i1 %i.b, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !93
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !90
  tail call void @_ZN4Luau24TypeFunctionDeserializer19deserializeChildrenEPKNS_16TypeFunctionTypeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef %i.g, ptr noundef %i.h)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ne i32 %i.a, 1
  %i.j = icmp ne i32 %i.d, 1
  %or.cond24 = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !98
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !95
  tail call void @_ZN4Luau24TypeFunctionDeserializer19deserializeChildrenEPKNS_23TypeFunctionTypePackVarEPKNS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef %i.k, ptr noundef %i.l)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !323
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.77, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZNK4Luau21InternalErrorReporter3iceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %3) #28
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %3, align 8, !tbaa !160    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.u = load i64, ptr %i.s, align 8, !tbaa !161
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau24TypeFunctionDeserializer19deserializeChildrenEPKNS_16TypeFunctionTypeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.34", align 1 ; 3 uses
  %i.a = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  %.not.i249 = icmp eq ptr %1, null               ; 2 uses
  br i1 %.not.i.i, label %.thread, label %_ZN4Luau10getMutableINS_13PrimitiveTypeEEEPT_PKNS_4TypeE.exit

_ZN4Luau10getMutableINS_13PrimitiveTypeEEEPT_PKNS_4TypeE.exit: ; preds = %bb.a
  br i1 %.not.i249, label %.thread223.thread, label %_ZN4Luau10getMutableINS_25TypeFunctionPrimitiveTypeEEEPT_PKNS_16TypeFunctionTypeE.exit

_ZN4Luau10getMutableINS_25TypeFunctionPrimitiveTypeEEEPT_PKNS_16TypeFunctionTypeE.exit: ; preds = %_ZN4Luau10getMutableINS_13PrimitiveTypeEEEPT_PKNS_4TypeE.exit
  %i.b = load i32, ptr %i.a, align 8, !tbaa !174
  %i.c = icmp ne i32 %i.b, 4
  %i.d = load i32, ptr %1, align 8, !tbaa !190
  %i.e = icmp ne i32 %i.d, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.a, %_ZN4Luau10getMutableINS_25TypeFunctionPrimitiveTypeEEEPT_PKNS_16TypeFunctionTypeE.exit
  %.not.i250 = phi i1 [ false, %_ZN4Luau10getMutableINS_25TypeFunctionPrimitiveTypeEEEPT_PKNS_16TypeFunctionTypeE.exit ], [ %.not.i249, %bb.a ] ; 2 uses
  %i.f = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 2 uses
  %.not.i.i133 = icmp eq ptr %i.f, null
  %brmerge = or i1 %.not.i250, %.not.i.i133
  br i1 %brmerge, label %.thread214, label %_ZN4Luau10getMutableINS_23TypeFunctionUnknownTypeEEEPT_PKNS_16TypeFunctionTypeE.exit

_ZN4Luau10getMutableINS_23TypeFunctionUnknownTypeEEEPT_PKNS_16TypeFunctionTypeE.exit: ; preds = %.thread
  %i.g = load i32, ptr %i.f, align 8, !tbaa !174
  %i.h = icmp ne i32 %i.g, 16
  %i.i = load i32, ptr %1, align 8, !tbaa !190
  %i.j = icmp ne i32 %i.i, 2
  %or.cond294 = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond294, label %.thread214, label %bb.l

.thread214:                                       ; preds = %.thread, %_ZN4Luau10getMutableINS_23TypeFunctionUnknownTypeEEEPT_PKNS_16TypeFunctionTypeE.exit
  %.not.i250329 = phi i1 [ false, %_ZN4Luau10getMutableINS_23TypeFunctionUnknownTypeEEEPT_PKNS_16TypeFunctionTypeE.exit ], [ %.not.i250, %.thread ] ; 2 uses
  %i.k = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 2 uses
  %.not.i.i135 = icmp eq ptr %i.k, null
  %brmerge306 = or i1 %.not.i250329, %.not.i.i135
  br i1 %brmerge306, label %.thread217, label %_ZN4Luau10getMutableINS_21TypeFunctionNeverTypeEEEPT_PKNS_16TypeFunctionTypeE.exit

_ZN4Luau10getMutableINS_21TypeFunctionNeverTypeEEEPT_PKNS_16TypeFunctionTypeE.exit: ; preds = %.thread214
  %i.l = load i32, ptr %i.k, align 8, !tbaa !174
  %i.m = icmp ne i32 %i.l, 17
  %i.n = load i32, ptr %1, align 8, !tbaa !190
  %i.o = icmp ne i32 %i.n, 3
  %or.cond295 = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond295, label %.thread217, label %bb.l

.thread217:                                       ; preds = %.thread214, %_ZN4Luau10getMutableINS_21TypeFunctionNeverTypeEEEPT_PKNS_16TypeFunctionTypeE.exit
  %.not.i250329333 = phi i1 [ false, %_ZN4Luau10getMutableINS_21TypeFunctionNeverTypeEEEPT_PKNS_16TypeFunctionTypeE.exit ], [ %.not.i250329, %.thread214 ] ; 2 uses
  %i.p = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 2 uses
  %.not.i.i137 = icmp eq ptr %i.p, null
  %brmerge307 = or i1 %.not.i250329333, %.not.i.i137
  br i1 %brmerge307, label %.thread220, label %_ZN4Luau10getMutableINS_19TypeFunctionAnyTypeEEEPT_PKNS_16TypeFunctionTypeE.exit

_ZN4Luau10getMutableINS_19TypeFunctionAnyTypeEEEPT_PKNS_16TypeFunctionTypeE.exit: ; preds = %.thread217
  %i.q = load i32, ptr %i.p, align 8, !tbaa !174
  %i.r = icmp ne i32 %i.q, 12
  %i.s = load i32, ptr %1, align 8, !tbaa !190
  %i.t = icmp ne i32 %i.s, 1
  %or.cond296 = select i1 %i.r, i1 true, i1 %i.t
  br i1 %or.cond296, label %.thread220, label %bb.l

.thread220:                                       ; preds = %.thread217, %_ZN4Luau10getMutableINS_19TypeFunctionAnyTypeEEEPT_PKNS_16TypeFunctionTypeE.exit
  %.not.i250329333337 = phi i1 [ false, %_ZN4Luau10getMutableINS_19TypeFunctionAnyTypeEEEPT_PKNS_16TypeFunctionTypeE.exit ], [ %.not.i250329333, %.thread217 ] ; 3 uses
  %i.u = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 2 uses
  %.not.i.i139 = icmp eq ptr %i.u, null
  %brmerge308 = or i1 %.not.i250329333337, %.not.i.i139
  br i1 %brmerge308, label %.thread223, label %_ZN4Luau10getMutableINS_25TypeFunctionSingletonTypeEEEPT_PKNS_16TypeFunctionTypeE.exit

_ZN4Luau10getMutableINS_25TypeFunctionSingletonTypeEEEPT_PKNS_16TypeFunctionTypeE.exit: ; preds = %.thread220
  %i.v = load i32, ptr %i.u, align 8, !tbaa !174
  %i.w = icmp ne i32 %i.v, 5
  %i.x = load i32, ptr %1, align 8, !tbaa !190
  %i.y = icmp ne i32 %i.x, 4
  %or.cond297 = select i1 %i.w, i1 true, i1 %i.y
  br i1 %or.cond297, label %.thread223, label %bb.l

.thread223:                                       ; preds = %.thread220, %_ZN4Luau10getMutableINS_25TypeFunctionSingletonTypeEEEPT_PKNS_16TypeFunctionTypeE.exit
  %i.z = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 3 uses
  %.not.i.i141 = icmp eq ptr %i.z, null
  br i1 %.not.i.i141, label %.thread226, label %_ZN4Luau10getMutableINS_9UnionTypeEEEPT_PKNS_4TypeE.exit

.thread223.thread:                                ; preds = %_ZN4Luau10getMutableINS_13PrimitiveTypeEEEPT_PKNS_4TypeE.exit
  %i.aa = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 0 uses
  %i.ab = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 0 uses
  %i.ac = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 0 uses
  %i.ad = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 0 uses
  %i.ae = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 0 uses
  br label %.thread226

_ZN4Luau10getMutableINS_9UnionTypeEEEPT_PKNS_4TypeE.exit: ; preds = %.thread223
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  br i1 %.not.i250329333337, label %.thread226, label %_ZN4Luau10getMutableINS_21TypeFunctionUnionTypeEEEPT_PKNS_16TypeFunctionTypeE.exit

_ZN4Luau10getMutableINS_21TypeFunctionUnionTypeEEEPT_PKNS_16TypeFunctionTypeE.exit: ; preds = %_ZN4Luau10getMutableINS_9UnionTypeEEEPT_PKNS_4TypeE.exit
  %i.ag = load i32, ptr %i.z, align 8, !tbaa !174
  %i.ah = icmp ne i32 %i.ag, 13
  %i.ai = load i32, ptr %1, align 8, !tbaa !190
  %i.aj = icmp ne i32 %i.ai, 5
  %or.cond298 = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond298, label %.thread226, label %bb.b

bb.b:                                             ; preds = %_ZN4Luau10getMutableINS_21TypeFunctionUnionTypeEEEPT_PKNS_16TypeFunctionTypeE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4Luau24TypeFunctionDeserializer19deserializeChildrenEPNS_21TypeFunctionUnionTypeEPNS_9UnionTypeE(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.af)
  br label %bb.l

.thread226:                                       ; preds = %.thread223.thread, %_ZN4Luau10getMutableINS_9UnionTypeEEEPT_PKNS_4TypeE.exit, %.thread223, %_ZN4Luau10getMutableINS_21TypeFunctionUnionTypeEEEPT_PKNS_16TypeFunctionTypeE.exit
  %.not.i250329333337341345 = phi i1 [ true, %.thread223.thread ], [ true, %_ZN4Luau10getMutableINS_9UnionTypeEEEPT_PKNS_4TypeE.exit ], [ %.not.i250329333337, %.thread223 ], [ false, %_ZN4Luau10getMutableINS_21TypeFunctionUnionTypeEEEPT_PKNS_16TypeFunctionTypeE.exit ] ; 7 uses
  %i.al = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 3 uses
  %.not.i.i143 = icmp eq ptr %i.al, null
  br i1 %.not.i.i143, label %.thread229, label %_ZN4Luau10getMutableINS_16IntersectionTypeEEEPT_PKNS_4TypeE.exit

_ZN4Luau10getMutableINS_16IntersectionTypeEEEPT_PKNS_4TypeE.exit: ; preds = %.thread226
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  br i1 %.not.i250329333337341345, label %.thread229.thread348, label %_ZN4Luau10getMutableINS_28TypeFunctionIntersectionTypeEEEPT_PKNS_16TypeFunctionTypeE.exit

_ZN4Luau10getMutableINS_28TypeFunctionIntersectionTypeEEEPT_PKNS_16TypeFunctionTypeE.exit: ; preds = %_ZN4Luau10getMutableINS_16IntersectionTypeEEEPT_PKNS_4TypeE.exit
  %i.an = load i32, ptr %i.al, align 8, !tbaa !174
  %i.ao = icmp ne i32 %i.an, 14
  %i.ap = load i32, ptr %1, align 8, !tbaa !190
  %i.aq = icmp ne i32 %i.ap, 6
  %or.cond299 = select i1 %i.ao, i1 true, i1 %i.aq
  br i1 %or.cond299, label %.thread229.thread, label %bb.c

bb.c:                                             ; preds = %_ZN4Luau10getMutableINS_28TypeFunctionIntersectionTypeEEEPT_PKNS_16TypeFunctionTypeE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4Luau24TypeFunctionDeserializer19deserializeChildrenEPNS_28TypeFunctionIntersectionTypeEPNS_16IntersectionTypeE(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.am)
  br label %bb.l

.thread229:                                       ; preds = %.thread226
  %i.as = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 2 uses
  %.not.i.i145 = icmp eq ptr %i.as, null
  %brmerge356 = or i1 %.not.i.i145, %.not.i250329333337341345
  br i1 %brmerge356, label %.thread232, label %_ZN4Luau10getMutableINS_24TypeFunctionNegationTypeEEEPT_PKNS_16TypeFunctionTypeE.exit

.thread229.thread348:                             ; preds = %_ZN4Luau10getMutableINS_16IntersectionTypeEEEPT_PKNS_4TypeE.exit
  %i.at = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 0 uses
  br label %.thread232

.thread229.thread:                                ; preds = %_ZN4Luau10getMutableINS_28TypeFunctionIntersectionTypeEEEPT_PKNS_16TypeFunctionTypeE.exit
  %i.au = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 2 uses
  %.not.i.i145347 = icmp eq ptr %i.au, null
  br i1 %.not.i.i145347, label %.thread232, label %_ZN4Luau10getMutableINS_24TypeFunctionNegationTypeEEEPT_PKNS_16TypeFunctionTypeE.exit

_ZN4Luau10getMutableINS_24TypeFunctionNegationTypeEEEPT_PKNS_16TypeFunctionTypeE.exit: ; preds = %.thread229, %.thread229.thread
  %i.av = phi ptr [ %i.as, %.thread229 ], [ %i.au, %.thread229.thread ] ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !174
  %i.ax = icmp ne i32 %i.aw, 18
  %i.ay = load i32, ptr %1, align 8, !tbaa !190
  %i.az = icmp ne i32 %i.ay, 7
  %or.cond300 = select i1 %i.ax, i1 true, i1 %i.az
  br i1 %or.cond300, label %.thread232, label %bb.d

bb.d:                                             ; preds = %_ZN4Luau10getMutableINS_24TypeFunctionNegationTypeEEEPT_PKNS_16TypeFunctionTypeE.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !205
  %i.bd = tail call noundef ptr @_ZN4Luau24TypeFunctionDeserializer18shallowDeserializeEPKNS_16TypeFunctionTypeE(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef %i.bc)
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !325
  br label %bb.l

.thread232:                                       ; preds = %.thread229, %.thread229.thread348, %.thread229.thread, %_ZN4Luau10getMutableINS_24TypeFunctionNegationTypeEEEPT_PKNS_16TypeFunctionTypeE.exit
  %i.be = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 3 uses
  %.not.i.i147 = icmp eq ptr %i.be, null
  br i1 %.not.i.i147, label %.thread235, label %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit

_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit: ; preds = %.thread232
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  br i1 %.not.i250329333337341345, label %.thread235.thread, label %_ZN4Luau10getMutableINS_21TypeFunctionTableTypeEEEPT_PKNS_16TypeFunctionTypeE.exit

_ZN4Luau10getMutableINS_21TypeFunctionTableTypeEEEPT_PKNS_16TypeFunctionTypeE.exit: ; preds = %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit
  %i.bg = load i32, ptr %i.be, align 8, !tbaa !174
  %i.bh = icmp ne i32 %i.bg, 9
  %i.bi = load i32, ptr %1, align 8, !tbaa !190
  %i.bj = icmp ne i32 %i.bi, 9
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %or.cond301 = select i1 %i.bh, i1 true, i1 %i.bj
  br i1 %or.cond301, label %.thread235, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau10getMutableINS_21TypeFunctionTableTypeEEEPT_PKNS_16TypeFunctionTypeE.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !216, !range !81, !noundef !82
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %.thread235, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4Luau24TypeFunctionDeserializer19deserializeChildrenEPNS_21TypeFunctionTableTypeEPNS_9TableTypeE(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bf)
  br label %bb.l

.thread235:                                       ; preds = %.thread232, %bb.e, %_ZN4Luau10getMutableINS_21TypeFunctionTableTypeEEEPT_PKNS_16TypeFunctionTypeE.exit
  %i.bo = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 3 uses
  %.not.i.i149 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i149, label %.thread238, label %_ZN4Luau10getMutableINS_13MetatableTypeEEEPT_PKNS_4TypeE.exit

.thread235.thread:                                ; preds = %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit
  %i.bp = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 0 uses
  br label %.thread238

_ZN4Luau10getMutableINS_13MetatableTypeEEEPT_PKNS_4TypeE.exit: ; preds = %.thread235
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  br i1 %.not.i250329333337341345, label %.thread238, label %_ZN4Luau10getMutableINS_21TypeFunctionTableTypeEEEPT_PKNS_16TypeFunctionTypeE.exit152

_ZN4Luau10getMutableINS_21TypeFunctionTableTypeEEEPT_PKNS_16TypeFunctionTypeE.exit152: ; preds = %_ZN4Luau10getMutableINS_13MetatableTypeEEEPT_PKNS_4TypeE.exit
  %i.br = load i32, ptr %i.bo, align 8, !tbaa !174
  %i.bs = icmp ne i32 %i.br, 10
  %i.bt = load i32, ptr %1, align 8, !tbaa !190
  %i.bu = icmp ne i32 %i.bt, 9
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %or.cond302 = select i1 %i.bs, i1 true, i1 %i.bu
  br i1 %or.cond302, label %.thread238, label %bb.g

bb.g:                                             ; preds = %_ZN4Luau10getMutableINS_21TypeFunctionTableTypeEEEPT_PKNS_16TypeFunctionTypeE.exit152
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !216, !range !81, !noundef !82
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.h, label %.thread238

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4Luau24TypeFunctionDeserializer19deserializeChildrenEPNS_21TypeFunctionTableTypeEPNS_13MetatableTypeE(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bq)
  br label %bb.l

.thread238:                                       ; preds = %.thread235.thread, %_ZN4Luau10getMutableINS_13MetatableTypeEEEPT_PKNS_4TypeE.exit, %.thread235, %bb.g, %_ZN4Luau10getMutableINS_21TypeFunctionTableTypeEEEPT_PKNS_16TypeFunctionTypeE.exit152
  %i.bz = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 3 uses
  %.not.i.i153 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i153, label %.thread241, label %_ZN4Luau10getMutableINS_12FunctionTypeEEEPT_PKNS_4TypeE.exit

_ZN4Luau10getMutableINS_12FunctionTypeEEEPT_PKNS_4TypeE.exit: ; preds = %.thread238
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  br i1 %.not.i250329333337341345, label %.thread244.thread, label %_ZN4Luau10getMutableINS_24TypeFunctionFunctionTypeEEEPT_PKNS_16TypeFunctionTypeE.exit

.thread244.thread:                                ; preds = %_ZN4Luau10getMutableINS_12FunctionTypeEEEPT_PKNS_4TypeE.exit
  %i.cb = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 0 uses
  %i.cc = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 0 uses
  br label %.thread247

_ZN4Luau10getMutableINS_24TypeFunctionFunctionTypeEEEPT_PKNS_16TypeFunctionTypeE.exit: ; preds = %_ZN4Luau10getMutableINS_12FunctionTypeEEEPT_PKNS_4TypeE.exit
  %i.cd = load i32, ptr %i.bz, align 8, !tbaa !174
  %i.ce = icmp ne i32 %i.cd, 8
  %i.cf = load i32, ptr %1, align 8, !tbaa !190
  %i.cg = icmp ne i32 %i.cf, 8
  %or.cond303 = select i1 %i.ce, i1 true, i1 %i.cg
  br i1 %or.cond303, label %.thread241, label %bb.i

bb.i:                                             ; preds = %_ZN4Luau10getMutableINS_24TypeFunctionFunctionTypeEEEPT_PKNS_16TypeFunctionTypeE.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4Luau24TypeFunctionDeserializer19deserializeChildrenEPNS_24TypeFunctionFunctionTypeEPNS_12FunctionTypeE(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.ca)
  br label %bb.l

.thread241:                                       ; preds = %.thread238, %_ZN4Luau10getMutableINS_24TypeFunctionFunctionTypeEEEPT_PKNS_16TypeFunctionTypeE.exit
  %i.ci = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 2 uses
  %.not.i.i155 = icmp eq ptr %i.ci, null
  %brmerge309 = or i1 %.not.i250329333337341345, %.not.i.i155
  br i1 %brmerge309, label %.thread244, label %_ZN4Luau10getMutableINS_22TypeFunctionExternTypeEEEPT_PKNS_16TypeFunctionTypeE.exit

_ZN4Luau10getMutableINS_22TypeFunctionExternTypeEEEPT_PKNS_16TypeFunctionTypeE.exit: ; preds = %.thread241
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !174
  %i.ck = icmp ne i32 %i.cj, 11
  %i.cl = load i32, ptr %1, align 8, !tbaa !190
  %i.cm = icmp ne i32 %i.cl, 10
  %or.cond304 = select i1 %i.ck, i1 true, i1 %i.cm
  br i1 %or.cond304, label %.thread244, label %bb.l

.thread244:                                       ; preds = %.thread241, %_ZN4Luau10getMutableINS_22TypeFunctionExternTypeEEEPT_PKNS_16TypeFunctionTypeE.exit
  %i.cn = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %2) ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.cn, null
  %brmerge310 = or i1 %.not.i250329333337341345, %.not.i.i157
  br i1 %brmerge310, label %.thread247, label %_ZN4Luau10getMutableINS_23TypeFunctionGenericTypeEEEPT_PKNS_16TypeFunctionTypeE.exit

_ZN4Luau10getMutableINS_23TypeFunctionGenericTypeEEEPT_PKNS_16TypeFunctionTypeE.exit: ; preds = %.thread244
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !174
  %i.cp = icmp ne i32 %i.co, 3
  %i.cq = load i32, ptr %1, align 8, !tbaa !190
  %i.cr = icmp ne i32 %i.cq, 11
  %or.cond305 = select i1 %i.cp, i1 true, i1 %i.cr
  br i1 %or.cond305, label %.thread247, label %bb.l

.thread247:                                       ; preds = %.thread244.thread, %.thread244, %_ZN4Luau10getMutableINS_23TypeFunctionGenericTypeEEEPT_PKNS_16TypeFunctionTypeE.exit
  %i.cs = load ptr, ptr %0, align 8, !tbaa !128
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !62
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !323
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.74, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZNK4Luau21InternalErrorReporter3iceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %3) #28
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.thread247
  unreachable

bb.k:                                             ; preds = %.thread247
  %i.cw = landingpad { ptr, i32 }
          cleanup
  %i.cx = load ptr, ptr %3, align 8, !tbaa !160   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !161
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.cw
end_hunk_0
