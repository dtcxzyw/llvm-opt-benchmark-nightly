Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/wasmedge?download=true
inline.NumInlined: 10558
inline.NumDeleted: 5948
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 29
begin_hunk_0_@WasmEdge_LoaderParseFromBytes:bb.a
  %i.i = call ptr @__cxa_begin_catch(ptr %i.h) #33 ; 0 uses
  %i.j = call fastcc i32 @_ZN12_GLOBAL__N_115handleCAPIErrorEv() #33
  invoke void @__cxa_end_catch()
          to label %"_ZN12_GLOBAL__N_14wrapIZ29WasmEdge_LoaderParseFromBytesE3$_0Z29WasmEdge_LoaderParseFromBytesE3$_1J22WasmEdge_LoaderContextP25WasmEdge_ASTModuleContextEEE15WasmEdge_ResultOT_OT0_DpPT1_.exit" unwind label %bb.f

bb.d:                                             ; preds = %"_ZZ29WasmEdge_LoaderParseFromBytesENK3$_0clEv.exit.i"
  %.val6.i = load i32, ptr %i.f, align 8, !tbaa !65
  br label %_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS5_EENS3_7ErrCodeELb0ELb1EED2Ev.exit.i

bb.e:                                             ; preds = %"_ZZ29WasmEdge_LoaderParseFromBytesENK3$_0clEv.exit.i"
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !136
  store ptr %i.k, ptr %1, align 8, !tbaa !265
  br label %_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS5_EENS3_7ErrCodeELb0ELb1EED2Ev.exit.i

_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS5_EENS3_7ErrCodeELb0ELb1EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.0.04.i = phi i32 [ %.val6.i, %bb.d ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %"_ZN12_GLOBAL__N_14wrapIZ29WasmEdge_LoaderParseFromBytesE3$_0Z29WasmEdge_LoaderParseFromBytesE3$_1J22WasmEdge_LoaderContextP25WasmEdge_ASTModuleContextEEE15WasmEdge_ResultOT_OT0_DpPT1_.exit"

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #32
  unreachable

"_ZN12_GLOBAL__N_14wrapIZ29WasmEdge_LoaderParseFromBytesE3$_0Z29WasmEdge_LoaderParseFromBytesE3$_1J22WasmEdge_LoaderContextP25WasmEdge_ASTModuleContextEEE15WasmEdge_ResultOT_OT0_DpPT1_.exit": ; preds = %bb.a, %bb.c, %_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS5_EENS3_7ErrCodeELb0ELb1EED2Ev.exit.i
  %.sroa.0.1.i = phi i32 [ %.sroa.0.04.i, %_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS5_EENS3_7ErrCodeELb0ELb1EED2Ev.exit.i ], [ %i.j, %bb.c ], [ 4, %bb.a ]
  ret i32 %.sroa.0.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define i32 @WasmEdge_LoaderSerializeASTModule(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cxx20::expected.2091", align 8 ; 9 uses
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %"_ZN12_GLOBAL__N_14wrapIZ33WasmEdge_LoaderSerializeASTModuleE3$_0Z33WasmEdge_LoaderSerializeASTModuleE3$_1J22WasmEdge_LoaderContextK25WasmEdge_ASTModuleContext14WasmEdge_BytesEEE15WasmEdge_ResultOT_OT0_DpPT1_.exit", label %_ZN12_GLOBAL__N_19isContextI22WasmEdge_LoaderContextJK25WasmEdge_ASTModuleContext14WasmEdge_BytesEEEbPT_DpPT0_.exit.i

_ZN12_GLOBAL__N_19isContextI22WasmEdge_LoaderContextJK25WasmEdge_ASTModuleContext14WasmEdge_BytesEEEbPT_DpPT0_.exit.i: ; preds = %bb.a
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %2, null
  %spec.select.i.i.i = and i1 %i.a, %i.b
  br i1 %spec.select.i.i.i, label %bb.b, label %"_ZN12_GLOBAL__N_14wrapIZ33WasmEdge_LoaderSerializeASTModuleE3$_0Z33WasmEdge_LoaderSerializeASTModuleE3$_1J22WasmEdge_LoaderContextK25WasmEdge_ASTModuleContext14WasmEdge_BytesEEE15WasmEdge_ResultOT_OT0_DpPT1_.exit"

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_19isContextI22WasmEdge_LoaderContextJK25WasmEdge_ASTModuleContext14WasmEdge_BytesEEEbPT_DpPT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  invoke void @_ZN8WasmEdge6Loader6Loader15serializeModuleERKNS_3AST6ModuleE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.2091") align 8 %3, ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(705) %1)
          to label %"_ZZ33WasmEdge_LoaderSerializeASTModuleENK3$_0clEv.exit.i" unwind label %bb.e

"_ZZ33WasmEdge_LoaderSerializeASTModuleENK3$_0clEv.exit.i": ; preds = %bb.b
  %i.c = load i8, ptr %3, align 8, !tbaa !255, !range !101, !noundef !102
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %"_ZZ33WasmEdge_LoaderSerializeASTModuleENK3$_0clEv.exit.i"
  %.val11.i = load ptr, ptr %i.e, align 8, !tbaa !246 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val12.i = load ptr, ptr %i.f, align 8, !tbaa !248
  %i.g = ptrtoint ptr %.val12.i to i64
  %i.h = ptrtoint ptr %.val11.i to i64            ; 3 uses
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = and i64 %i.i, 4294967295                 ; 2 uses
  %i.l = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #35
          to label %.noexc.i unwind label %bb.f   ; 4 uses

.noexc.i:                                         ; preds = %bb.c
  switch i32 %i.j, label %bb.d [
    i32 0, label %bb.i
    i32 1, label %.thread.i
  ], !prof !75

bb.d:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %.val11.i, i64 %i.k, i1 false)
  br label %bb.i

.thread.i:                                        ; preds = %.noexc.i
  %i.m = load i8, ptr %.val11.i, align 1, !tbaa !65
  store i8 %i.m, ptr %i.l, align 1, !tbaa !65
  store i32 1, ptr %2, align 8, !tbaa !1122
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !1123
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit.i

bb.f:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val11.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !247
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %.val11.i, i64 noundef %i.t) #37
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit.i

bb.h:                                             ; preds = %"_ZZ33WasmEdge_LoaderSerializeASTModuleENK3$_0clEv.exit.i"
  %.val7.i = load i32, ptr %i.e, align 8, !tbaa !65
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit14.i

bb.i:                                             ; preds = %bb.d, %.noexc.i
  store i32 %i.j, ptr %2, align 8, !tbaa !1122
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.l, ptr %i.u, align 8, !tbaa !1123
  %.not.i.i.i.i.i13.i = icmp eq ptr %.val11.i, null
  br i1 %.not.i.i.i.i.i13.i, label %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit14.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread.i
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !247
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %.val11.i, i64 noundef %i.y) #37
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit14.i

_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit14.i: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.0.04.i = phi i32 [ %.val7.i, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %"_ZN12_GLOBAL__N_14wrapIZ33WasmEdge_LoaderSerializeASTModuleE3$_0Z33WasmEdge_LoaderSerializeASTModuleE3$_1J22WasmEdge_LoaderContextK25WasmEdge_ASTModuleContext14WasmEdge_BytesEEE15WasmEdge_ResultOT_OT0_DpPT1_.exit"

_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.p, %bb.f ], [ %i.p, %bb.g ]
  %.0.i = extractvalue { ptr, i32 } %.pn.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.z = call ptr @__cxa_begin_catch(ptr %.0.i) #33 ; 0 uses
  %i.aa = call fastcc i32 @_ZN12_GLOBAL__N_115handleCAPIErrorEv() #33
  invoke void @__cxa_end_catch()
          to label %"_ZN12_GLOBAL__N_14wrapIZ33WasmEdge_LoaderSerializeASTModuleE3$_0Z33WasmEdge_LoaderSerializeASTModuleE3$_1J22WasmEdge_LoaderContextK25WasmEdge_ASTModuleContext14WasmEdge_BytesEEE15WasmEdge_ResultOT_OT0_DpPT1_.exit" unwind label %bb.k

bb.k:                                             ; preds = %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #32
  unreachable

"_ZN12_GLOBAL__N_14wrapIZ33WasmEdge_LoaderSerializeASTModuleE3$_0Z33WasmEdge_LoaderSerializeASTModuleE3$_1J22WasmEdge_LoaderContextK25WasmEdge_ASTModuleContext14WasmEdge_BytesEEE15WasmEdge_ResultOT_OT0_DpPT1_.exit": ; preds = %bb.a, %_ZN12_GLOBAL__N_19isContextI22WasmEdge_LoaderContextJK25WasmEdge_ASTModuleContext14WasmEdge_BytesEEEbPT_DpPT0_.exit.i, %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit14.i, %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit.i
  %.sroa.0.1.i = phi i32 [ %.sroa.0.04.i, %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit14.i ], [ %i.aa, %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit.i ], [ 4, %_ZN12_GLOBAL__N_19isContextI22WasmEdge_LoaderContextJK25WasmEdge_ASTModuleContext14WasmEdge_BytesEEEbPT_DpPT0_.exit.i ], [ 4, %bb.a ]
  ret i32 %.sroa.0.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define void @WasmEdge_LoaderDelete(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8WasmEdge6Loader6LoaderD2Ev(ptr noundef nonnull align 8 dead_on_return(368) dereferenceable(368) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 368) #37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8WasmEdge6Loader6LoaderD2Ev(ptr noundef nonnull align 8 dead_on_return(368) dereferenceable(368) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !246  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !247
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #37
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !246  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIhSaIhEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !247
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #37
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit2

_ZNSt6vectorIhSaIhEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !222, !range !101, !noundef !102
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %_ZNSt14_Optional_baseISt6vectorIhSaIhEELb0ELb0EED2Ev.exit.i

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.o, align 8, !tbaa !222
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !246  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt6vectorIhSaIhEELb0ELb0EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !247
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #37
  br label %_ZNSt14_Optional_baseISt6vectorIhSaIhEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseISt6vectorIhSaIhEELb0ELb0EED2Ev.exit.i: ; preds = %bb.e, %bb.d, %_ZNSt6vectorIhSaIhEED2Ev.exit2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !221, !range !101, !noundef !102
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.f, label %_ZN8WasmEdge7FileMgrD2Ev.exit

bb.f:                                             ; preds = %_ZNSt14_Optional_baseISt6vectorIhSaIhEELb0ELb0EED2Ev.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.y, align 8, !tbaa !221
  tail call void @_ZN8WasmEdge4MMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %i.ab) #33
  br label %_ZN8WasmEdge7FileMgrD2Ev.exit

_ZN8WasmEdge7FileMgrD2Ev.exit:                    ; preds = %_ZNSt14_Optional_baseISt6vectorIhSaIhEELb0ELb0EED2Ev.exit.i, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !103 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_EN8WasmEdge4Hash4HashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN8WasmEdge7FileMgrD2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.af, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i ], [ %i.ae, %_ZN8WasmEdge7FileMgrD2Ev.exit ] ; 4 uses
  %i.af = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !104 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !70 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !65
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #37
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 40) #37
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_EN8WasmEdge4Hash4HashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_EN8WasmEdge4Hash4HashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i, %_ZN8WasmEdge7FileMgrD2Ev.exit
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !90
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !91
  %i.ap = shl i64 %i.ao, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.am, i8 0, i64 %i.ap, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !90 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN8WasmEdge9ConfigureD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_EN8WasmEdge4Hash4HashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i
  %i.at = load i64, ptr %i.an, align 8, !tbaa !91
  %i.au = shl i64 %i.at, 3
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #37
  br label %_ZN8WasmEdge9ConfigureD2Ev.exit

_ZN8WasmEdge9ConfigureD2Ev.exit:                  ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_EN8WasmEdge4Hash4HashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @WasmEdge_ValidatorCreate(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.WasmEdge::Configure", align 8 ; 19 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noalias noundef nonnull dereferenceable(624) ptr @_Znwm(i64 noundef 624) #35
          to label %bb.c unwind label %bb.e       ; 10 uses

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN8WasmEdge9ConfigureC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(624) %i.a, ptr noundef nonnull align 8 dereferenceable(168) %0) #33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.b, i8 0, i64 168, i1 false)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !250
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store i64 1, ptr %i.e, align 8, !tbaa !251
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.h, i8 0, i64 248, i1 false)
  invoke void @_ZNSt11_Deque_baseIN8WasmEdge9Validator16ComponentContext7ContextESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 noundef 0)
          to label %_ZN8WasmEdge9Validator9ValidatorC2ERKNS_9ConfigureE.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #32
  unreachable

bb.e:                                             ; preds = %bb.f, %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #33 ; 0 uses
  %i.o = tail call fastcc i32 @_ZN12_GLOBAL__N_115handleCAPIErrorEv() #33 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN8WasmEdge9Validator9ValidatorC2ERKNS_9ConfigureE.exit unwind label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.p = invoke noalias noundef nonnull dereferenceable(624) ptr @_Znwm(i64 noundef 624) #35
          to label %bb.g unwind label %bb.e       ; 10 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %1, i8 0, i64 72, i1 false)
  store ptr %i.s, ptr %i.r, align 8, !tbaa !90
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store i64 1, ptr %i.t, align 8, !tbaa !91
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.v, align 8, !tbaa !92
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 128
  store <4 x i8> <i8 3, i8 1, i8 0, i8 0>, ptr %i.x, align 8, !tbaa !65
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 132
  store i8 0, ptr %i.y, align 4, !tbaa !95
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 65536, ptr %i.z, align 8, !tbaa !97
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i8 0, ptr %i.ab, align 8, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 153
  store i8 0, ptr %i.ac, align 1, !tbaa !95
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 154
  store i8 0, ptr %i.ad, align 2, !tbaa !95
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 -1, ptr %i.ae, align 8, !tbaa !97
  store i64 57343, ptr %i.q, align 8, !tbaa !98
  call void @_ZN8WasmEdge9ConfigureC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(624) %i.p, ptr noundef nonnull align 8 dereferenceable(168) %1) #33
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 336
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.af, i8 0, i64 168, i1 false)
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !250
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 344
  store i64 1, ptr %i.ai, align 8, !tbaa !251
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 352
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ak, align 8, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 376
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.al, i8 0, i64 248, i1 false)
  invoke void @_ZNSt11_Deque_baseIN8WasmEdge9Validator16ComponentContext7ContextESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.am, i64 noundef 0)
          to label %_ZN8WasmEdge9Validator9ValidatorC2ERKNS_9ConfigureE.exit5 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #32
  unreachable

_ZN8WasmEdge9Validator9ValidatorC2ERKNS_9ConfigureE.exit5: ; preds = %bb.g
  %i.ap = load ptr, ptr %i.u, align 8, !tbaa !103 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_EN8WasmEdge4Hash4HashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN8WasmEdge9Validator9ValidatorC2ERKNS_9ConfigureE.exit5, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.aq, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i ], [ %i.ap, %_ZN8WasmEdge9Validator9ValidatorC2ERKNS_9ConfigureE.exit5 ] ; 4 uses
  %i.aq = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !104 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !70 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !65
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #37
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 40) #37
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_EN8WasmEdge4Hash4HashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_EN8WasmEdge4Hash4HashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i, %_ZN8WasmEdge9Validator9ValidatorC2ERKNS_9ConfigureE.exit5
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !90
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !91
  %i.az = shl i64 %i.ay, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ax, i8 0, i64 %i.az, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.ba = load ptr, ptr %i.r, align 8, !tbaa !90  ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.s
  br i1 %i.bb, label %_ZN8WasmEdge9ConfigureD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_EN8WasmEdge4Hash4HashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i
  %i.bc = load i64, ptr %i.t, align 8, !tbaa !91
  %i.bd = shl i64 %i.bc, 3
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #37
  br label %_ZN8WasmEdge9ConfigureD2Ev.exit

end_hunk_0
