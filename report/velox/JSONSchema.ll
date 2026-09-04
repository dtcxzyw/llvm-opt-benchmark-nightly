Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/JSONSchema?download=true
inline.NumInlined: 10040
inline.NumDeleted: 4349
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJPKclEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
          to label %.noexc27 unwind label %bb.m

.noexc27:                                         ; preds = %.noexc.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.y = add nuw i64 %i.s, 1                      ; 2 uses
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %.noexc9.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !410

.noexc9.i.i:                                      ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #46
          to label %.noexc28 unwind label %bb.m

.noexc28:                                         ; preds = %.noexc9.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #48
          to label %.noexc29 unwind label %bb.m   ; 2 uses

.noexc29:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !447
  store i64 %i.s, ptr %i.t, align 8, !tbaa !413
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc29, %bb.c
  %i.ab = phi ptr [ %i.aa, %.noexc29 ], [ %i.t, %bb.c ] ; 3 uses
  switch i64 %i.s, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.r, align 1, !tbaa !413
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !413
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr align 1 %i.r, i64 %i.s, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.s, ptr %i.ad, align 8, !tbaa !441
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.s
  store i8 0, ptr %i.ae, align 1, !tbaa !413
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.h ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.h ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10516)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !439, !alias.scope !10515, !noalias !10516
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !447, !alias.scope !10516, !noalias !10515 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !441, !alias.scope !10516, !noalias !10515 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !10517
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !447, !alias.scope !10515, !noalias !10516
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !413, !alias.scope !10516, !noalias !10515
  store i64 %i.an, ptr %i.af, align 8, !tbaa !413, !alias.scope !10515, !noalias !10516
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !441, !alias.scope !10516, !noalias !10515
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.i
  %i.ao = phi i64 [ %i.ak, %bb.i ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !441, !alias.scope !10515, !noalias !10516
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !447, !alias.scope !10516, !noalias !10515
  store i64 0, ptr %i.ap, align 8, !tbaa !441, !alias.scope !10516, !noalias !10515
  store i8 0, ptr %i.ah, align 8, !tbaa !413, !alias.scope !10516, !noalias !10515
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !353

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.h
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.h ], [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i30 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i30, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit40, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i37
  %.012.i.i.i32 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i37 ], [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i33 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i37 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10519)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i32, align 8, !tbaa !439, !alias.scope !10518, !noalias !10519
  %i.av = load ptr, ptr %.0911.i.i.i33, align 8, !tbaa !447, !alias.scope !10519, !noalias !10518 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34

bb.j:                                             ; preds = %.lr.ph.i.i.i31
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !441, !alias.scope !10519, !noalias !10518 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !10520
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34: ; preds = %.lr.ph.i.i.i31
  store ptr %i.av, ptr %.012.i.i.i32, align 8, !tbaa !447, !alias.scope !10518, !noalias !10519
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !413, !alias.scope !10519, !noalias !10518
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !413, !alias.scope !10518, !noalias !10519
  %.phi.trans.insert.i.i.i.i35 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 8
  %.pre.i.i.i.i36 = load i64, ptr %.phi.trans.insert.i.i.i.i35, align 8, !tbaa !441, !alias.scope !10519, !noalias !10518
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i37

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34, %bb.j
  %i.bd = phi i64 [ %i.az, %bb.j ], [ %.pre.i.i.i.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !441, !alias.scope !10518, !noalias !10519
  store ptr %i.aw, ptr %.0911.i.i.i33, align 8, !tbaa !447, !alias.scope !10519, !noalias !10518
  store i64 0, ptr %i.be, align 8, !tbaa !441, !alias.scope !10519, !noalias !10518
  store i8 0, ptr %i.aw, align 8, !tbaa !413, !alias.scope !10519, !noalias !10518
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 32 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.bg, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit40, label %.lr.ph.i.i.i31, !llvm.loop !353

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit40: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i37, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i39 = phi ptr [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i37 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i41 = icmp eq ptr %i.c, null
  br i1 %.not.i41, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !7188
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bl) #49
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit40, %bb.k
  store ptr %i.p, ptr %0, align 8, !tbaa !7180
  store ptr %.0.lcssa.i.i.i39, ptr %i.a, align 8, !tbaa !7179
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !7188
  ret void

bb.l:                                             ; preds = %bb.m
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc9.i.i, %.noexc.i.i, %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  %i.bq = tail call ptr @__cxa_begin_catch(ptr %i.bp) #23 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #49
  invoke void @__cxa_rethrow() #46
          to label %bb.p unwind label %bb.l

bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bn

bb.o:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  tail call void @__clang_call_terminate(ptr %i.bs) #47
  unreachable

bb.p:                                             ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE15simdSplitByCharISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvcNS_5RangeIPKcEERT_(i8 noundef signext %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #37 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = icmp eq ptr %1, %2
  br i1 %i.i, label %._ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEEEviPT0_SL_RT1_.exit_crit_edge, label %bb.b

._ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEEEviPT0_SL_RT1_.exit_crit_edge: ; preds = %bb.a
  %.pre = ptrtoint ptr %2 to i64
  br label %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEEEviPT0_SL_RT1_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.k = and i64 %i.j, -32                        ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  %4 = ptrtoint ptr %2 to i64                     ; 5 uses
  %i.m = and i64 %4, -32                          ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = and i64 %i.j, 31                         ; 2 uses
  %.not.i = icmp eq i64 %i.k, %i.m
  br i1 %.not.i, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre.a = insertelement <32 x i8> poison, i8 %0, i64 0
  %.pre111 = shufflevector <32 x i8> %.pre.a, <32 x i8> poison, <32 x i32> zeroinitializer
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.p = load <32 x i8>, ptr %i.l, align 32, !tbaa !413
  %i.q = insertelement <32 x i8> poison, i8 %0, i64 0
  %i.r = shufflevector <32 x i8> %i.q, <32 x i8> poison, <32 x i32> zeroinitializer ; 3 uses
  %i.s = icmp eq <32 x i8> %i.p, %i.r
  %i.t = bitcast <32 x i1> %i.s to i32
  %i.u = shl nuw nsw i64 4294967295, %i.o
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.t, %i.v                       ; 2 uses
  %.not.i1382 = icmp eq i32 %i.w, 0
  br i1 %.not.i1382, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.preheader, label %.lr.ph

_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.preheader: ; preds = %.lr.ph, %bb.c
  %.5.lcssa = phi ptr [ %1, %bb.c ], [ %i.ae, %.lr.ph ] ; 2 uses
  %.192 = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %.not.i12.not93 = icmp eq ptr %.192, %i.n
  br i1 %.not.i12.not93, label %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EEEEEEbiRPT_SM_RT0_St17integral_constantImLm1EE.exit, label %.lr.ph96

.lr.ph96:                                         ; preds = %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.0.i85 = phi ptr [ %i.ae, %.lr.ph ], [ %i.l, %bb.c ]
  %.013.i84 = phi i32 [ %i.ab, %.lr.ph ], [ %i.w, %bb.c ] ; 2 uses
  %.583 = phi ptr [ %i.ae, %.lr.ph ], [ %1, %bb.c ] ; 2 uses
  %i.z = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.013.i84, i1 true) ; 2 uses
  %i.aa = lshr exact i32 %.013.i84, %i.z
  %i.ab = lshr i32 %i.aa, 1                       ; 2 uses
  %i.ac = zext nneg i32 %i.z to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i85, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store ptr %.583, ptr %i.e, align 8, !tbaa !7178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %.583 to i64
  %i.ah = sub i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !635
  %i.ai = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKclEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %.not.i13 = icmp eq i32 %i.ab, 0
  br i1 %.not.i13, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.preheader, label %.lr.ph, !llvm.loop !10521

_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.loopexit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKclEEERS5_DpOT_.exit, %bb.d
  %.7.lcssa = phi ptr [ %.394, %bb.d ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKclEEERS5_DpOT_.exit ] ; 2 uses
  %.1 = getelementptr inbounds nuw i8, ptr %.195, i64 32 ; 3 uses
  %.not.i12.not = icmp eq ptr %.1, %i.n
  br i1 %.not.i12.not, label %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EEEEEEbiRPT_SM_RT0_St17integral_constantImLm1EE.exit, label %bb.d, !llvm.loop !10522

bb.d:                                             ; preds = %.lr.ph96, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.loopexit
  %.195 = phi ptr [ %.192, %.lr.ph96 ], [ %.1, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.loopexit ] ; 3 uses
  %.394 = phi ptr [ %.5.lcssa, %.lr.ph96 ], [ %.7.lcssa, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.loopexit ] ; 2 uses
  %i.aj = load <32 x i8>, ptr %.195, align 1, !tbaa !413
  %i.ak = icmp eq <32 x i8> %i.aj, %i.r
  %i.al = bitcast <32 x i1> %i.ak to i32          ; 2 uses
  %.not.i.i86 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i86, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.loopexit, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.d, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKclEEERS5_DpOT_.exit
  %.0.i.i89 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKclEEERS5_DpOT_.exit ], [ %.195, %bb.d ]
  %.013.i.i88 = phi i32 [ %i.ao, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKclEEERS5_DpOT_.exit ], [ %i.al, %bb.d ] ; 2 uses
  %.787 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKclEEERS5_DpOT_.exit ], [ %.394, %bb.d ] ; 5 uses
  %i.am = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.013.i.i88, i1 true) ; 2 uses
  %i.an = lshr exact i32 %.013.i.i88, %i.am
  %i.ao = lshr i32 %i.an, 1                       ; 2 uses
  %i.ap = zext nneg i32 %i.am to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i89, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %.787, ptr %i.a, align 8, !tbaa !7178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %.787 to i64
  %i.au = sub i64 %i.as, %i.at                    ; 9 uses
  store i64 %i.au, ptr %i.b, align 8, !tbaa !635
  %i.av = load ptr, ptr %i.x, align 8, !tbaa !7179 ; 6 uses
  %i.aw = load ptr, ptr %i.y, align 8, !tbaa !7188
  %.not.i18 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i18, label %bb.k, label %bb.e

bb.e:                                             ; preds = %.lr.ph90
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !439
  %i.ay = icmp eq ptr %.787, null
  br i1 %i.ay, label %.noexc.i.i, label %bb.f

.noexc.i.i:                                       ; preds = %bb.e
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.31) #46
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.az = icmp ugt i64 %i.au, 15
  br i1 %i.az, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ba = icmp slt i64 %i.au, 0
  br i1 %i.ba, label %.noexc.i.i.i, label %bb.h

.noexc.i.i.i:                                     ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #46
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.bb = add nuw i64 %i.au, 1                    ; 2 uses
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !410

.noexc9.i.i.i:                                    ; preds = %bb.h
  call void @_ZSt17__throw_bad_allocv() #46
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.h
  %i.bd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #48 ; 2 uses
  store ptr %i.bd, ptr %i.av, align 8, !tbaa !447
  store i64 %i.au, ptr %i.ax, align 8, !tbaa !413
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.f
  %i.be = phi ptr [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.ax, %bb.f ] ; 3 uses
  switch i64 %i.au, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKclEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bf = load i8, ptr %.787, align 1, !tbaa !413
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !413
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKclEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr nonnull align 1 %.787, i64 %i.au, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKclEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKclEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.au, ptr %i.bg, align 8, !tbaa !441
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.au
  store i8 0, ptr %i.bh, align 1, !tbaa !413
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !7179
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store ptr %i.bj, ptr %i.x, align 8, !tbaa !7179
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKclEEERS5_DpOT_.exit

bb.k:                                             ; preds = %.lr.ph90
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJPKclEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKclEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKclEEERS5_DpOT_.exit: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKclEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.loopexit, label %.lr.ph90, !llvm.loop !10521

_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EEEEEEbiRPT_SM_RT0_St17integral_constantImLm1EE.exit: ; preds = %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.loopexit, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.preheader
  %.3.lcssa = phi ptr [ %.5.lcssa, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.preheader ], [ %.7.lcssa, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.loopexit ] ; 2 uses
  %.1.lcssa = phi ptr [ %.192, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.preheader ], [ %.1, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.loopexit ] ; 2 uses
  %i.bk = icmp eq ptr %.1.lcssa, %2
  br i1 %i.bk, label %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEEEviPT0_SL_RT1_.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EEEEEEbiRPT_SM_RT0_St17integral_constantImLm1EE.exit
  %.pre-phi112 = phi <32 x i8> [ %.pre111, %._crit_edge ], [ %i.r, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EEEEEEbiRPT_SM_RT0_St17integral_constantImLm1EE.exit ]
  %.071 = phi ptr [ %1, %._crit_edge ], [ %.3.lcssa, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EEEEEEbiRPT_SM_RT0_St17integral_constantImLm1EE.exit ] ; 2 uses
  %.0 = phi ptr [ %i.l, %._crit_edge ], [ %.1.lcssa, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EEEEEEbiRPT_SM_RT0_St17integral_constantImLm1EE.exit ] ; 3 uses
  %.sroa.02.0.i = phi i64 [ %i.o, %._crit_edge ], [ 0, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EEEEEEbiRPT_SM_RT0_St17integral_constantImLm1EE.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %4
  %i.bo = load <32 x i8>, ptr %.0, align 1, !tbaa !413
  %i.bp = icmp eq <32 x i8> %i.bo, %.pre-phi112
  %.sroa.2.0.extract.trunc.i.i = trunc i64 %i.bn to i32 ; 2 uses
  %i.bq = bitcast <32 x i1> %i.bp to i32
  %i.br = shl nuw nsw i64 4294967295, %.sroa.02.0.i
  %i.bs = trunc i64 %i.br to i32
  %i.bt = and i32 %i.bq, %i.bs
  %i.bu = icmp ult i32 %.sroa.2.0.extract.trunc.i.i, 33
  call void @llvm.assume(i1 %i.bu)
  %i.bv = sub nuw nsw i32 32, %.sroa.2.0.extract.trunc.i.i
  %i.bw = call noundef i32 @llvm.x86.bmi.bzhi.32(i32 %i.bt, i32 %i.bv) ; 2 uses
  %.not.i1699 = icmp eq i32 %i.bw, 0
  br i1 %.not.i1699, label %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEEEviPT0_SL_RT1_.exit, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.l, %.lr.ph103
  %.0.i15102 = phi ptr [ %i.cc, %.lr.ph103 ], [ %.0, %bb.l ]
  %.013.i14101 = phi i32 [ %i.bz, %.lr.ph103 ], [ %i.bw, %bb.l ] ; 2 uses
  %.6100 = phi ptr [ %i.cc, %.lr.ph103 ], [ %.071, %bb.l ] ; 2 uses
  %i.bx = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.013.i14101, i1 true) ; 2 uses
  %i.by = lshr exact i32 %.013.i14101, %i.bx
  %i.bz = lshr i32 %i.by, 1                       ; 2 uses
  %i.ca = zext nneg i32 %i.bx to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i15102, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %.6100, ptr %i.c, align 8, !tbaa !7178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %.6100 to i64
  %i.cf = sub i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.d, align 8, !tbaa !635
  %i.cg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKclEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %.not.i16 = icmp eq i32 %i.bz, 0
  br i1 %.not.i16, label %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEEEviPT0_SL_RT1_.exit, label %.lr.ph103, !llvm.loop !10521

_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEEEviPT0_SL_RT1_.exit: ; preds = %.lr.ph103, %._ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEEEviPT0_SL_RT1_.exit_crit_edge, %bb.l, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EEEEEEbiRPT_SM_RT0_St17integral_constantImLm1EE.exit
  %.pre-phi = phi i64 [ %.pre, %._ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEEEviPT0_SL_RT1_.exit_crit_edge ], [ %4, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EEEEEEbiRPT_SM_RT0_St17integral_constantImLm1EE.exit ], [ %4, %bb.l ], [ %4, %.lr.ph103 ]
  %.2 = phi ptr [ %1, %._ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEEEviPT0_SL_RT1_.exit_crit_edge ], [ %.3.lcssa, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EEEEEEbiRPT_SM_RT0_St17integral_constantImLm1EE.exit ], [ %.071, %bb.l ], [ %i.cc, %.lr.ph103 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store ptr %.2, ptr %i.g, align 8, !tbaa !7178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  %i.ch = ptrtoint ptr %.2 to i64
  %i.ci = sub i64 %.pre-phi, %i.ch
  store i64 %i.ci, ptr %i.h, align 8, !tbaa !635
  %i.cj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKclEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIPKcNS0_8is_equalEEENS1_13const_formatFINS_14iterator_rangeISB_EEEENSF_IN9__gnu_cxx17__normal_iteratorIPcS8_EEEESG_EEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef byval(%"struct.boost::algorithm::detail::first_finderF") align 8 %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef byval(%"class.boost::iterator_range") align 8 %6) local_unnamed_addr #25 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::_Deque_iterator", align 8 ; 6 uses
  %8 = alloca %"struct.std::_Deque_iterator", align 8 ; 6 uses
  %9 = alloca %"struct.boost::algorithm::detail::process_segment_helper", align 1 ; 3 uses
  %10 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %11 = alloca %"struct.boost::algorithm::detail::process_segment_helper", align 1 ; 3 uses
  %12 = alloca %"class.std::deque", align 8       ; 22 uses
  %.sroa.10.16.copyload = load ptr, ptr %6, align 8
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.13.16.copyload = load ptr, ptr %.sroa.13.16..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %12, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %12, i64 noundef 0)
  %i.a = load ptr, ptr %0, align 8, !tbaa !447    ; 5 uses
  %.not.i58 = icmp eq ptr %4, %5
  br i1 %.not.i58, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !441
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit
  %.sroa.017.064 = phi ptr [ %i.a, %.lr.ph ], [ %i.i, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ]
  %.sroa.016.063 = phi ptr [ %i.a, %.lr.ph ], [ %.sroa.7.060, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ]
  %.sroa.13.062 = phi ptr [ %.sroa.13.16.copyload, %.lr.ph ], [ %spec.select51, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ] ; 2 uses
  %.sroa.10.061 = phi ptr [ %.sroa.10.16.copyload, %.lr.ph ], [ %spec.select, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ] ; 2 uses
  %.sroa.7.060 = phi ptr [ %5, %.lr.ph ], [ %.sroa.0.0.lcssa.ph.i, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ] ; 7 uses
  %.sroa.039.059 = phi ptr [ %4, %.lr.ph ], [ %.sroa.018.032.i, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.i = invoke ptr @_ZN5boost9algorithm6detail22process_segment_helperILb0EEclISt5dequeIcSaIcEENSt7__cxx1112basic_stringIcSt11char_traitsIcES6_EEN9__gnu_cxx17__normal_iteratorIPcSC_EEEET1_RT_RT0_SH_SH_SH_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.sroa.017.064, ptr %.sroa.016.063, ptr %.sroa.039.059)
          to label %bb.c unwind label %bb.f       ; 5 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !9127, !noalias !10533
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !9128, !noalias !10533 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.experimental.noalias.scope.decl(metadata !10534)
  store ptr %i.j, ptr %10, align 8, !tbaa !9127, !alias.scope !10534, !noalias !10535
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !7178, !noalias !10536 ; 2 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !9129, !alias.scope !10534, !noalias !10535
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 512
  store ptr %i.m, ptr %i.e, align 8, !tbaa !9130, !alias.scope !10534, !noalias !10535
  store ptr %i.k, ptr %i.f, align 8, !tbaa !9128, !alias.scope !10534, !noalias !10535
  invoke void @_ZNSt5dequeIcSaIcEE19_M_range_insert_auxIPKcEEvSt15_Deque_iteratorIcRcPcET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef %.sroa.10.061, ptr noundef %.sroa.13.062)
          to label %bb.d unwind label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.n = load ptr, ptr %0, align 8, !tbaa !447    ; 5 uses
  %i.o = load i64, ptr %i.g, align 8, !tbaa !441  ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 3 uses
  %i.q = icmp eq ptr %.sroa.7.060, %i.p
  br i1 %i.q, label %._crit_edge, label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %bb.d
  %i.r = load ptr, ptr %1, align 8, !tbaa !10538  ; 2 uses
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !10539 ; 3 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %._crit_edge, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph33.i, %.critedge15.i
  %.sroa.018.032.i = phi ptr [ %i.aa, %.critedge15.i ], [ %.sroa.7.060, %.lr.ph33.i ] ; 5 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %.01227.i = phi ptr [ %i.y, %bb.e ], [ %i.r, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.0.026.i = phi ptr [ %i.x, %bb.e ], [ %.sroa.018.032.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.u = load i8, ptr %.sroa.0.026.i, align 1, !tbaa !413
  %i.v = load i8, ptr %.01227.i, align 1, !tbaa !413
  %i.w = icmp eq i8 %i.u, %i.v
  br i1 %i.w, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i, i64 1 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01227.i, i64 1 ; 3 uses
  %i.z = icmp eq ptr %i.x, %i.p
  %.not.i33 = icmp eq ptr %i.y, %i.s
  %or.cond.i = select i1 %i.z, i1 true, i1 %.not.i33
  br i1 %or.cond.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !261

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i
  %.sroa.0.0.lcssa.ph.i = phi ptr [ %.sroa.0.026.i, %.lr.ph.i ], [ %i.x, %bb.e ] ; 3 uses
  %.012.lcssa.ph.i = phi ptr [ %.01227.i, %.lr.ph.i ], [ %i.y, %bb.e ]
  %.not13.i = icmp eq ptr %.012.lcssa.ph.i, %i.s
  br i1 %.not13.i, label %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit, label %.critedge15.i

.critedge15.i:                                    ; preds = %.critedge.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.018.032.i, i64 1 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.p
  br i1 %i.ab, label %._crit_edge, label %.lr.ph.preheader.i, !llvm.loop !262

_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit: ; preds = %.critedge.i
  %i.ac = icmp eq ptr %.sroa.018.032.i, %.sroa.0.0.lcssa.ph.i ; 2 uses
  %spec.select = select i1 %i.ac, ptr %.sroa.10.061, ptr %2
  %spec.select51 = select i1 %i.ac, ptr %.sroa.13.062, ptr %3
  %.not.i = icmp eq ptr %.sroa.018.032.i, %.sroa.0.0.lcssa.ph.i
  br i1 %.not.i, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

._crit_edge:                                      ; preds = %.lr.ph33.i, %bb.d, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit, %.critedge15.i, %.._crit_edge_crit_edge
  %i.ae = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.o, %.critedge15.i ], [ %i.o, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ], [ %i.o, %bb.d ], [ %i.o, %.lr.ph33.i ]
  %i.af = phi ptr [ %i.a, %.._crit_edge_crit_edge ], [ %i.n, %.critedge15.i ], [ %i.n, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ], [ %i.n, %bb.d ], [ %i.n, %.lr.ph33.i ]
  %.sroa.016.0.lcssa = phi ptr [ %i.a, %.._crit_edge_crit_edge ], [ %.sroa.7.060, %.critedge15.i ], [ %.sroa.7.060, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ], [ %.sroa.7.060, %bb.d ], [ %.sroa.7.060, %.lr.ph33.i ]
  %.sroa.017.0.lcssa = phi ptr [ %i.a, %.._crit_edge_crit_edge ], [ %i.i, %.critedge15.i ], [ %i.i, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ], [ %i.i, %bb.d ], [ %i.i, %.lr.ph33.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.ai = invoke ptr @_ZN5boost9algorithm6detail22process_segment_helperILb0EEclISt5dequeIcSaIcEENSt7__cxx1112basic_stringIcSt11char_traitsIcES6_EEN9__gnu_cxx17__normal_iteratorIPcSC_EEEET1_RT_RT0_SH_SH_SH_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.sroa.017.0.lcssa, ptr %.sroa.016.0.lcssa, ptr %i.ah)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !9127 ; 2 uses
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !9127 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  %i.ao = load ptr, ptr %0, align 8, !tbaa !447   ; 3 uses
  br i1 %i.an, label %_ZN5boost9algorithm6detail5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENT_8iteratorERS9_SA_SA_.exit, label %bb.i

_ZN5boost9algorithm6detail5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENT_8iteratorERS9_SA_SA_.exit: ; preds = %bb.g
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 2 uses
  store i64 %i.ar, ptr %i.ag, align 8, !tbaa !441
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  store i8 0, ptr %i.as, align 1, !tbaa !413
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.au = load i64, ptr %i.ag, align 8, !tbaa !441
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !9128, !noalias !10540
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !9128, !noalias !10541
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.am, ptr %7, align 8, !tbaa !9127
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bd = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !7178, !noalias !10540
  store <2 x ptr> %i.bd, ptr %i.bc, align 8, !tbaa !7178
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.ay, ptr %i.be, align 8, !tbaa !9128
  store ptr %i.al, ptr %8, align 8, !tbaa !9127
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load <2 x ptr>, ptr %i.az, align 8, !tbaa !7178, !noalias !10541
  store <2 x ptr> %i.bg, ptr %i.bf, align 8, !tbaa !7178
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.bb, ptr %i.bh, align 8, !tbaa !9128
  %i.bi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE19_M_replace_dispatchISt15_Deque_iteratorIcRcPcEEERS4_N9__gnu_cxx17__normal_iteratorIPKcS4_EESF_T_SG_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %i.av, ptr %i.av, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8)
          to label %_ZN5boost9algorithm6detail6insertINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt15_Deque_iteratorIcRcPcEEEvRT_NSD_8iteratorET0_SG_.exit unwind label %.loopexit.split-lp ; 0 uses

_ZN5boost9algorithm6detail6insertINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt15_Deque_iteratorIcRcPcEEEvRT_NSD_8iteratorET0_SG_.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.j

end_hunk_0
