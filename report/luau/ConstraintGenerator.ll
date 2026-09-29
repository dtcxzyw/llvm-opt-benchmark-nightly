Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/ConstraintGenerator?download=true
inline.NumInlined: 10936
inline.NumDeleted: 4256
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN4Luau19ConstraintGenerator22prepopulateGlobalScopeERKSt10shared_ptrINS_5ScopeEEPNS_12AstStatBlockE:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.p ], [ %i.co, %bb.t ]
  store ptr getelementptr inbounds nuw inrange(-16, 536) (i8, ptr @_ZTVN4Luau18GlobalPrepopulatorE, i64 16), ptr %5, align 8, !tbaa !97
  %i.cp = load ptr, ptr %i.be, align 8, !tbaa !420 ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i53, label %_ZN4Luau18GlobalPrepopulatorD2Ev.exit54, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdlPv(ptr noundef nonnull %i.cp) #31, !inline_history !423
  br label %_ZN4Luau18GlobalPrepopulatorD2Ev.exit54

_ZN4Luau18GlobalPrepopulatorD2Ev.exit54:          ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.w

bb.w:                                             ; preds = %bb.j, %_ZN4Luau18GlobalPrepopulatorD2Ev.exit54, %bb.c
  %.pn24.pn.pn = phi { ptr, i32 } [ %i.p, %bb.c ], [ %.pn.pn.pn, %_ZN4Luau18GlobalPrepopulatorD2Ev.exit54 ], [ %i.aw, %bb.j ]
  store ptr getelementptr inbounds nuw inrange(-16, 536) (i8, ptr @_ZTVN4Luau18GlobalPrepopulatorE, i64 16), ptr %3, align 8, !tbaa !97
  %i.cq = load ptr, ptr %i.g, align 8, !tbaa !420 ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i55, label %_ZN4Luau18GlobalPrepopulatorD2Ev.exit56, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdlPv(ptr noundef nonnull %i.cq) #31, !inline_history !423
  br label %_ZN4Luau18GlobalPrepopulatorD2Ev.exit56

_ZN4Luau18GlobalPrepopulatorD2Ev.exit56:          ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %.pn24.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN4Luau19ConstraintGenerator27visitBlockWithoutChildScopeERKSt10shared_ptrINS_5ScopeEEPNS_12AstStatBlockE(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::Location", align 16  ; 4 uses
  %4 = alloca %"struct.Luau::CodeTooComplex", align 1 ; 3 uses
  %5 = alloca %"struct.Luau::RecursionCounter", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  call void @_ZN4Luau16RecursionCounterC1EPi(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.a)
  %i.b = load i32, ptr %i.a, align 8, !tbaa !236
  %i.c = load i32, ptr @_ZN5DFInt37LuauConstraintGeneratorRecursionLimitE, align 8, !tbaa !426
  %.not = icmp slt i32 %i.b, %i.c
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.e = load <2 x i64>, ptr %i.d, align 4, !tbaa !70
  store <2 x i64> %i.e, ptr %3, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.j = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14CodeTooComplexEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.d     ; 0 uses

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !243  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN4Luau19ConstraintGenerator20reportCodeTooComplexENS_8LocationE.exit, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !270
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -184
  invoke void @_ZN4Luau9DcrLogger22captureGenerationErrorERKNS_9TypeErrorE(ptr noundef nonnull align 8 dereferenceable(944) %i.l, ptr noundef nonnull align 8 dereferenceable(184) %i.o)
          to label %_ZN4Luau19ConstraintGenerator20reportCodeTooComplexENS_8LocationE.exit unwind label %bb.d

_ZN4Luau19ConstraintGenerator20reportCodeTooComplexENS_8LocationE.exit: ; preds = %bb.c, %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i8 1, ptr %i.p, align 8, !tbaa !244
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %._crit_edge

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  invoke void @_ZN4Luau19ConstraintGenerator24prototypeTypeDefinitionsERKSt10shared_ptrINS_5ScopeEEPNS_12AstStatBlockE(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !429  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !430  ; 2 uses
  %.idx = shl nuw nsw i64 %i.u, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %.not1827 = icmp eq i64 %i.u, 0
  br i1 %.not1827, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.w = trunc nuw i8 %.sroa.5.1 to i1
  %i.x = select i1 %i.w, i32 %.sroa.023.1, i32 1
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.030 = phi ptr [ %i.ac, %bb.g ], [ %i.s, %bb.f ] ; 2 uses
  %.sroa.5.029 = phi i8 [ %.sroa.5.1, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.028 = phi i32 [ %.sroa.023.1, %bb.g ], [ undef, %bb.f ]
  %i.y = load ptr, ptr %.030, align 8, !tbaa !432
  %i.z = invoke noundef i32 @_ZN4Luau19ConstraintGenerator5visitERKSt10shared_ptrINS_5ScopeEEPNS_7AstStatE(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.y)
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %.lr.ph
  %.not19 = icmp eq i32 %i.z, 1                   ; 2 uses
  %i.aa = trunc nuw i8 %.sroa.5.029 to i1
  %i.ab = select i1 %.not19, i1 true, i1 %i.aa
  %.sroa.023.1 = select i1 %i.ab, i32 %.sroa.023.028, i32 %i.z ; 2 uses
  %.sroa.5.1 = select i1 %.not19, i8 %.sroa.5.029, i8 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.030, i64 8 ; 2 uses
  %.not18 = icmp eq ptr %i.ac, %i.v
  br i1 %.not18, label %._crit_edge.loopexit, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

._crit_edge:                                      ; preds = %bb.f, %._crit_edge.loopexit, %_ZN4Luau19ConstraintGenerator20reportCodeTooComplexENS_8LocationE.exit
  %.015 = phi i32 [ 1, %_ZN4Luau19ConstraintGenerator20reportCodeTooComplexENS_8LocationE.exit ], [ 1, %bb.f ], [ %i.x, %._crit_edge.loopexit ]
  call void @_ZN4Luau16RecursionCounterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret i32 %.015

bb.i:                                             ; preds = %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.ad, %bb.h ]
  call void @_ZN4Luau16RecursionCounterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local ptr @_ZN4Luau19ConstraintGenerator13addConstraintERKSt10shared_ptrINS_5ScopeEERKNS_8LocationENS_7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(888) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef align 8 %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.21", align 16 ; 5 uses
  %i.a = load i8, ptr @_ZN5FFlag35DebugLuauCyclicRequireTypeInferenceE, align 8, !tbaa !257, !range !258, !noundef !259
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !350  ; 4 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #35 ; 5 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !238
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !88   ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.g, align 8, !tbaa !78
  store <2 x ptr> %i.k, ptr %4, align 16, !tbaa !78
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
  %.not.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.l, align 4, !tbaa !70
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !70
  br label %_ZNSt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

_ZNSt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit: ; preds = %bb.b, %bb.d, %bb.e
  invoke void @_ZN4Luau10ConstraintC1ENS_7NotNullINS_5ScopeEEERKNS_8LocationEONS_7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEEESt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(168) %i.e, ptr %i.f, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 %4)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %_ZNSt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !352  ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !263
  %.not.i = icmp eq ptr %i.r, %i.t
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.e, ptr %i.r, align 8, !tbaa !434
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.u, ptr %i.q, align 8, !tbaa !352
  br label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !351  ; 10 uses
  %i.w = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 4 uses
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.i, label %_ZNKSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #34
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i10 = icmp ne i64 %i.ae, 0
  call void @llvm.assume(i1 %.not.i.i.i10)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #35
          to label %.noexc11 unwind label %.thread ; 10 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  store ptr %i.e, ptr %i.ah, align 8, !tbaa !434
  %.not10.i.i.i.i.i = icmp eq ptr %i.v, %i.r
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc11
  %i.ai = add i64 %i.w, -8
  %i.aj = sub i64 %i.ai, %i.x                     ; 2 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check60 = icmp ult i64 %i.aj, 136
  br i1 %min.iters.check60, label %.lr.ph.i.i.i.i.i.preheader74, label %vector.memcheck53

vector.memcheck53:                                ; preds = %.lr.ph.i.i.i.i.i.preheader
  %5 = add i64 %i.w, -8
  %6 = sub i64 %5, %i.x
  %i.am = and i64 %6, -8
  %i.an = add i64 %i.am, 8                        ; 2 uses
  %scevgep54 = getelementptr i8, ptr %i.ag, i64 %i.an
  %scevgep55 = getelementptr i8, ptr %i.v, i64 %i.an
  %bound056 = icmp ult ptr %i.ag, %scevgep55
  %bound157 = icmp ult ptr %i.v, %scevgep54
  %found.conflict58 = and i1 %bound056, %bound157
  br i1 %found.conflict58, label %.lr.ph.i.i.i.i.i.preheader74, label %vector.ph61

vector.ph61:                                      ; preds = %vector.memcheck53
  %n.vec62 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ao = shl i64 %n.vec62, 3                     ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.v, i64 %i.ao
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph61
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next69, %vector.body63 ] ; 2 uses
  %i.ar = shl i64 %index64, 3                     ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.ag, i64 %i.ar ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.v, i64 %i.ar ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %i.as = getelementptr i8, ptr %next.gep66, i64 16
  %wide.load67 = load <2 x i64>, ptr %next.gep66, align 8, !tbaa !434, !alias.scope !1230, !noalias !1228
  %wide.load68 = load <2 x i64>, ptr %i.as, align 8, !tbaa !434, !alias.scope !1230, !noalias !1228
  %i.at = getelementptr i8, ptr %next.gep65, i64 16
  store <2 x i64> %wide.load67, ptr %next.gep65, align 8, !tbaa !434, !alias.scope !1231, !noalias !1230
  store <2 x i64> %wide.load68, ptr %i.at, align 8, !tbaa !434, !alias.scope !1231, !noalias !1230
  %i.au = getelementptr i8, ptr %next.gep66, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep66, align 8, !tbaa !434, !alias.scope !1230, !noalias !1228
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !434, !alias.scope !1230, !noalias !1228
  %index.next69 = add nuw i64 %index64, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next69, %n.vec62
  br i1 %i.av, label %middle.block70, label %vector.body63, !llvm.loop !1218

middle.block70:                                   ; preds = %vector.body63
  %cmp.n71 = icmp eq i64 %i.al, %n.vec62
  br i1 %cmp.n71, label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader74

.lr.ph.i.i.i.i.i.preheader74:                     ; preds = %vector.memcheck53, %.lr.ph.i.i.i.i.i.preheader, %middle.block70
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck53 ], [ %i.ag, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %middle.block70 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck53 ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aq, %middle.block70 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader74, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader74 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader74 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %i.aw = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !434, !alias.scope !1229, !noalias !1228
  store i64 %i.aw, ptr %.012.i.i.i.i.i, align 8, !tbaa !434, !alias.scope !1228, !noalias !1229
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !434, !alias.scope !1229, !noalias !1228
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1219

_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block70, %.noexc11
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ag, %.noexc11 ], [ %i.ap, %middle.block70 ], [ %i.ay, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.ba = load ptr, ptr %i.s, align 8, !tbaa !263
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.bc) #33
  br label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.ag, ptr %i.d, align 8, !tbaa !351
  store ptr %i.az, ptr %i.q, align 8, !tbaa !352
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.bd, ptr %i.s, align 8, !tbaa !263
  %.pre37 = load ptr, ptr %.0.lcssa.i.i.i.i.i, align 8, !tbaa !434
  br label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.g
  %i.be = phi ptr [ %.pre37, %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.e, %bb.g ] ; 4 uses
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !88  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.bg, align 8, !tbaa !94
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !95
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !97
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #31, !inline_history !11
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !97
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #31, !inline_history !11
  br label %_ZNSt12__shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
  %.not.i.i.i12 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i12, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.bj, %bb.n ], [ %i.bt, %bb.o ]
  %i.bu = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bu, label %bb.p, label %_ZNSt12__shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !81

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #31
  br label %_ZNSt12__shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.thread:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #31
  br label %bb.y

bb.q:                                             ; preds = %_ZNSt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 168) #33
  br label %bb.y

bb.r:                                             ; preds = %bb.a
  %i.bv = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #35 ; 5 uses
  %i.bw = load ptr, ptr %1, align 8, !tbaa !238
  invoke void @_ZN4Luau10ConstraintC1ENS_7NotNullINS_5ScopeEEERKNS_8LocationEONS_7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEEE(ptr noundef nonnull align 8 dereferenceable(168) %i.bv, ptr %i.bw, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !352 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !263
  %.not.i13 = icmp eq ptr %i.bz, %i.cb
  br i1 %.not.i13, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.bv, ptr %i.bz, align 8, !tbaa !434
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.cc, ptr %i.by, align 8, !tbaa !352
  br label %_ZNSt12__shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !351 ; 10 uses
  %i.ce = ptrtoint ptr %i.bz to i64               ; 3 uses
  %i.cf = ptrtoint ptr %i.cd to i64               ; 4 uses
  %i.cg = sub i64 %i.ce, %i.cf                    ; 3 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775800
  br i1 %i.ch, label %bb.v, label %_ZNKSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i14

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #34
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i14: ; preds = %bb.u
  %i.ci = ashr exact i64 %i.cg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i15 = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i.i15, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 1152921504606846975)
  %i.cm = select i1 %i.ck, i64 1152921504606846975, i64 %i.cl ; 3 uses
  %.not.i.i.i16 = icmp ne i64 %i.cm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i16)
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #35 ; 10 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cg
  store ptr %i.bv, ptr %i.cp, align 8, !tbaa !434
  %.not10.i.i.i.i.i17 = icmp eq ptr %i.cd, %i.bz
  br i1 %.not10.i.i.i.i.i17, label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i22, label %.lr.ph.i.i.i.i.i18.preheader

.lr.ph.i.i.i.i.i18.preheader:                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i14
  %i.cq = add i64 %i.ce, -8
  %i.cr = sub i64 %i.cq, %i.cf                    ; 2 uses
  %i.cs = lshr i64 %i.cr, 3
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cr, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i18.preheader75, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i18.preheader
  %7 = add i64 %i.ce, -8
  %8 = sub i64 %7, %i.cf
  %i.cu = and i64 %8, -8
  %i.cv = add i64 %i.cu, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.co, i64 %i.cv
  %scevgep49 = getelementptr i8, ptr %i.cd, i64 %i.cv
  %bound0 = icmp ult ptr %i.co, %scevgep49
  %bound1 = icmp ult ptr %i.cd, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i18.preheader75, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ct, 4611686018427387900     ; 3 uses
  %i.cw = shl i64 %n.vec, 3                       ; 2 uses
  %i.cx = getelementptr i8, ptr %i.co, i64 %i.cw  ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cd, i64 %i.cw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.co, i64 %i.cz ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.cd, i64 %i.cz ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  %i.da = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep50, align 8, !tbaa !434, !alias.scope !1234, !noalias !1232
  %wide.load51 = load <2 x i64>, ptr %i.da, align 8, !tbaa !434, !alias.scope !1234, !noalias !1232
  %i.db = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !434, !alias.scope !1235, !noalias !1234
  store <2 x i64> %wide.load51, ptr %i.db, align 8, !tbaa !434, !alias.scope !1235, !noalias !1234
  %i.dc = getelementptr i8, ptr %next.gep50, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep50, align 8, !tbaa !434, !alias.scope !1234, !noalias !1232
  store <2 x ptr> splat (ptr null), ptr %i.dc, align 8, !tbaa !434, !alias.scope !1234, !noalias !1232
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !1226

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i22, label %.lr.ph.i.i.i.i.i18.preheader75

.lr.ph.i.i.i.i.i18.preheader75:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i18.preheader, %middle.block
  %.012.i.i.i.i.i19.ph = phi ptr [ %i.co, %vector.memcheck ], [ %i.co, %.lr.ph.i.i.i.i.i18.preheader ], [ %i.cx, %middle.block ]
  %.0911.i.i.i.i.i20.ph = phi ptr [ %i.cd, %vector.memcheck ], [ %i.cd, %.lr.ph.i.i.i.i.i18.preheader ], [ %i.cy, %middle.block ]
  br label %.lr.ph.i.i.i.i.i18

.lr.ph.i.i.i.i.i18:                               ; preds = %.lr.ph.i.i.i.i.i18.preheader75, %.lr.ph.i.i.i.i.i18
  %.012.i.i.i.i.i19 = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i18 ], [ %.012.i.i.i.i.i19.ph, %.lr.ph.i.i.i.i.i18.preheader75 ] ; 2 uses
  %.0911.i.i.i.i.i20 = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i18 ], [ %.0911.i.i.i.i.i20.ph, %.lr.ph.i.i.i.i.i18.preheader75 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  %i.de = load i64, ptr %.0911.i.i.i.i.i20, align 8, !tbaa !434, !alias.scope !1233, !noalias !1232
  store i64 %i.de, ptr %.012.i.i.i.i.i19, align 8, !tbaa !434, !alias.scope !1232, !noalias !1233
  store ptr null, ptr %.0911.i.i.i.i.i20, align 8, !tbaa !434, !alias.scope !1233, !noalias !1232
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i20, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i19, i64 8 ; 2 uses
  %.not.i.i.i.i.i21 = icmp eq ptr %i.df, %i.bz
  br i1 %.not.i.i.i.i.i21, label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i22, label %.lr.ph.i.i.i.i.i18, !llvm.loop !1227

_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i22: ; preds = %.lr.ph.i.i.i.i.i18, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i14
  %.0.lcssa.i.i.i.i.i23 = phi ptr [ %i.co, %_ZNKSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i14 ], [ %i.cx, %middle.block ], [ %i.dg, %.lr.ph.i.i.i.i.i18 ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i23, i64 8
  %.not.i23.i.i24 = icmp eq ptr %i.cd, null
  br i1 %.not.i23.i.i24, label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i25, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i22
  %i.di = load ptr, ptr %i.ca, align 8, !tbaa !263
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.dj, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.dk) #33
  br label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i25

_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i25: ; preds = %bb.w, %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i22
  store ptr %i.co, ptr %i.bx, align 8, !tbaa !351
  store ptr %i.dh, ptr %i.by, align 8, !tbaa !352
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cm
  store ptr %i.dl, ptr %i.ca, align 8, !tbaa !263
  %.pre = load ptr, ptr %.0.lcssa.i.i.i.i.i23, align 8, !tbaa !434
  br label %_ZNSt12__shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 168) #33
  br label %bb.y

_ZNSt12__shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i25, %bb.t, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l, %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %.sroa.031.0 = phi ptr [ %i.be, %bb.p ], [ %i.be, %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ], [ %i.be, %bb.l ], [ %i.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %.pre, %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i25 ], [ %i.bv, %bb.t ]
  ret ptr %.sroa.031.0

bb.y:                                             ; preds = %bb.q, %.thread, %bb.x
  %.pn = phi { ptr, i32 } [ %i.dm, %bb.x ], [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.q ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau9TypeArena7addTypeINS_11BlockedTypeEEEPKNS_4TypeET_(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 %1, ptr %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::Type", align 8       ; 13 uses
  %4 = alloca %"class.Luau::Variant.563", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store i32 6, ptr %4, align 8, !tbaa !379
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 %1, ptr %i.a, align 8, !tbaa !70
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !434
  store i32 6, ptr %3, align 8, !tbaa !379
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !437
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 336
  store i8 0, ptr %i.c, align 8, !tbaa !412
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 376 ; 3 uses
  store i8 0, ptr %i.d, align 8, !tbaa !349
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 384
  store ptr null, ptr %i.e, align 8, !tbaa !413
  %i.f = invoke noundef ptr @_ZN4Luau9TypeArena5addTVEONS_4TypeE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.d, align 8, !tbaa !349, !range !258, !noundef !259
  %i.h = trunc nuw i8 %i.g to i1
  store i8 0, ptr %i.d, align 8, !tbaa !349
  br i1 %i.h, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 344
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !103  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 360 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !89
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.b
  %i.o = load i32, ptr %3, align 8, !tbaa !379
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !78
  invoke void %i.r(ptr noundef nonnull %i.b)
          to label %_ZN4Luau4TypeD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #32
  unreachable

_ZN4Luau4TypeD2Ev.exit:                           ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.u = load i32, ptr %4, align 8, !tbaa !379
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !78
  invoke void %i.x(ptr noundef nonnull %i.a)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN4Luau4TypeD2Ev.exit
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #32
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit: ; preds = %_ZN4Luau4TypeD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret ptr %i.f

bb.f:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau4TypeD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %3) #31
  %i.ab = load i32, ptr %4, align 8, !tbaa !379
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !78
  invoke void %i.ae(ptr noundef nonnull %i.a)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit2 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #32
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit2: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %i.aa
}

declare void @_ZN4Luau11BlockedTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #9

declare void @_ZN4Luau11BlockedType8setOwnerEPKNS_10ConstraintE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline uwtable
end_hunk_0
begin_hunk_1_@"_ZZN4Luau19ConstraintGenerator24prototypeTypeDefinitionsERKSt10shared_ptrINS_5ScopeEEPNS_12AstStatBlockEENK3$_2clERNS_23UserDefinedFunctionDataES3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7TypeFunEm":bb.a
  br label %_ZN4Luau7BindingaSEOS0_.exit

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !103
  br label %_ZN4Luau7BindingaSEOS0_.exit

_ZN4Luau7BindingaSEOS0_.exit:                     ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.r, %bb.s
  %i.ck = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.br, %bb.r ], [ %i.bg, %bb.s ], [ %i.bu, %bb.n ]
  store i64 0, ptr %i.bh, align 8, !tbaa !104
  store i8 0, ptr %i.ck, align 1, !tbaa !89
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.cl, ptr noundef nonnull align 8 dereferenceable(40) %i.bi) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.cm = load i8, ptr %i.bj, align 8, !tbaa !349, !range !258, !noundef !259
  %i.cn = trunc nuw i8 %i.cm to i1
  store i8 0, ptr %i.bj, align 8, !tbaa !349
  br i1 %i.cn, label %bb.t, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.t:                                             ; preds = %_ZN4Luau7BindingaSEOS0_.exit
  %i.co = load ptr, ptr %i.bi, align 8, !tbaa !103 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !89
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZN4Luau7BindingaSEOS0_.exit
  %i.ct = load ptr, ptr %i.bf, align 8, !tbaa !103 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bg
  br i1 %i.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.cv = load i64, ptr %i.bg, align 8, !tbaa !89
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.u:                                             ; preds = %bb.m
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @_ZN4Luau7BindingD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZNSt14_Optional_baseIN4Luau7BindingELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %common.resume

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %.pre = load i8, ptr %i.ax, align 8, !tbaa !762, !range !258
  %i.cy = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.ax, align 8, !tbaa !762
  br i1 %i.cy, label %bb.v, label %_ZNSt14_Optional_baseIN4Luau7BindingELb0ELb0EED2Ev.exit

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !349, !range !258, !noundef !259
  %i.db = trunc nuw i8 %i.da to i1
  store i8 0, ptr %i.cz, align 8, !tbaa !349
  br i1 %i.db, label %bb.w, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !103 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.w
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !89
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.v
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !103 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt14_Optional_baseIN4Luau7BindingELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i41: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !89
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #33
  br label %_ZNSt14_Optional_baseIN4Luau7BindingELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4Luau7BindingELb0ELb0EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i, %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit44

_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit
  %i.do = load ptr, ptr %i.b, align 8, !tbaa !590
  %i.dp = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.do) ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i43, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit.thread
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !379
  %i.dr = icmp eq i32 %i.dq, 20
  br i1 %i.dr, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit44, label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit.thread
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.dt = tail call noundef ptr @_ZNK4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_7TypeFunEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE4findERSD_(ptr noundef nonnull align 8 dereferenceable(64) %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %.not.i45 = icmp eq ptr %i.dt, null
  br i1 %.not.i45, label %bb.z, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit44

bb.z:                                             ; preds = %bb.y
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !87
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 288
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !1353
  %i.dy = load ptr, ptr %3, align 8, !tbaa !103
  %i.dz = tail call ptr @_ZNK4Luau12AstNameTable3getEPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.dx, ptr noundef %i.dy) ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1354, !nonnull !259, !align !485 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !763
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit44, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !421 ; 2 uses
  %i.ei = icmp eq ptr %i.dz, %i.eh
  br i1 %i.ei, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit44, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !419
  %i.el = add i64 %i.ek, -1                       ; 2 uses
  %i.em = ptrtoint ptr %i.dz to i64               ; 3 uses
  %i.en = lshr i64 %i.em, 4
  %i.eo = lshr i64 %i.em, 9
  %i.ep = xor i64 %i.en, %i.eo
  %i.eq = load ptr, ptr %i.ec, align 8, !tbaa !420
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %bb.ab
  %.pn.i.i46 = phi i64 [ %i.ep, %bb.ab ], [ %i.ew, %bb.ae ]
  %.01832.i.i = phi i64 [ 0, %bb.ab ], [ %i.ev, %bb.ae ]
  %.01933.i.i = and i64 %.pn.i.i46, %i.el         ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.01933.i.i
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !421 ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.dz
  br i1 %i.et, label %_ZNK4Luau12DenseHashSetINS_7AstNameESt4hashIS1_ESt8equal_toIS1_EE4findERKS1_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = icmp eq ptr %i.es, %i.eh
  br i1 %i.eu, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit44, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ev = add i64 %.01832.i.i, 1                  ; 3 uses
  %i.ew = add i64 %i.ev, %.01933.i.i
  %.not.i.i47 = icmp ugt i64 %i.ev, %i.el
  br i1 %.not.i.i47, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit44, label %bb.ac, !llvm.loop !39

_ZNK4Luau12DenseHashSetINS_7AstNameESt4hashIS1_ESt8equal_toIS1_EE4findERKS1_.exit: ; preds = %bb.ac
  %i.ex = load ptr, ptr %i.du, align 8, !tbaa !87 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 776 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  %i.ez = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #35, !noalias !1355 ; 4 uses
  invoke void @_ZN4Luau7TypeFunC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(76) %i.ez, ptr noundef nonnull align 8 dereferenceable(76) %4)
          to label %_ZSt11make_uniqueIN4Luau7TypeFunEJRS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.af, !noalias !1355

common.resume:                                    ; preds = %bb.u, %bb.at, %bb.as, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %i.fa, %bb.af ], [ %i.cx, %bb.u ], [ %i.ji, %bb.at ], [ %i.jh, %bb.as ]
  resume { ptr, i32 } %common.resume.op

bb.af:                                            ; preds = %_ZNK4Luau12DenseHashSetINS_7AstNameESt4hashIS1_ESt8equal_toIS1_EE4findERKS1_.exit
  %i.fa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef 80) #33, !noalias !1355
  br label %common.resume

_ZSt11make_uniqueIN4Luau7TypeFunEJRS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZNK4Luau12DenseHashSetINS_7AstNameESt4hashIS1_ESt8equal_toIS1_EE4findERKS1_.exit
  store ptr %i.ez, ptr %9, align 8, !tbaa !720, !alias.scope !1355
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 784 ; 3 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1358 ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 792 ; 3 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !1359
  %.not.i.i49 = icmp eq ptr %i.fc, %i.fe
  %i.ff = ptrtoint ptr %i.ez to i64               ; 2 uses
  br i1 %.not.i.i49, label %bb.ag, label %_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %_ZSt11make_uniqueIN4Luau7TypeFunEJRS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store i64 %i.ff, ptr %i.fc, align 8, !tbaa !720
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr %i.fg, ptr %i.fb, align 8, !tbaa !1358
  br label %_ZNSt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS1_EED2Ev.exit

bb.ag:                                            ; preds = %_ZSt11make_uniqueIN4Luau7TypeFunEJRS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.fh = load ptr, ptr %i.ey, align 8, !tbaa !1360 ; 10 uses
  %i.fi = ptrtoint ptr %i.fc to i64               ; 3 uses
  %i.fj = ptrtoint ptr %i.fh to i64               ; 4 uses
  %i.fk = sub i64 %i.fi, %i.fj                    ; 3 uses
  %i.fl = icmp eq i64 %i.fk, 9223372036854775800
  br i1 %i.fl, label %bb.ah, label %_ZNKSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #34
          to label %.noexc75 unwind label %bb.as

.noexc75:                                         ; preds = %bb.ah
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ag
  %i.fm = ashr exact i64 %i.fk, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.fm, i64 1)
  %i.fn = add nsw i64 %.sroa.speculated.i.i, %i.fm ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.fm
  %i.fp = tail call i64 @llvm.umin.i64(i64 %i.fn, i64 1152921504606846975)
  %i.fq = select i1 %i.fo, i64 1152921504606846975, i64 %i.fp ; 3 uses
  %.not.i.i74 = icmp ne i64 %i.fq, 0
  tail call void @llvm.assume(i1 %.not.i.i74)
  %i.fr = shl nuw nsw i64 %i.fq, 3
  %i.fs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #35
          to label %.noexc76 unwind label %bb.as  ; 10 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fk
  store i64 %i.ff, ptr %i.ft, align 8, !tbaa !720
  %.not10.i.i.i.i = icmp eq ptr %i.fh, %i.fc
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc76
  %i.fu = add i64 %i.fi, -8
  %i.fv = sub i64 %i.fu, %i.fj                    ; 2 uses
  %i.fw = lshr i64 %i.fv, 3
  %i.fx = add nuw nsw i64 %i.fw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fv, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader156, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %12 = add i64 %i.fi, -8
  %13 = sub i64 %12, %i.fj
  %i.fy = and i64 %13, -8
  %i.fz = add i64 %i.fy, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.fs, i64 %i.fz
  %scevgep152 = getelementptr i8, ptr %i.fh, i64 %i.fz
  %bound0 = icmp ult ptr %i.fs, %scevgep152
  %bound1 = icmp ult ptr %i.fh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader156, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fx, 4611686018427387900     ; 3 uses
  %i.ga = shl i64 %n.vec, 3                       ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fs, i64 %i.ga  ; 2 uses
  %i.gc = getelementptr i8, ptr %i.fh, i64 %i.ga
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fs, i64 %i.gd ; 2 uses
  %next.gep153 = getelementptr i8, ptr %i.fh, i64 %i.gd ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  %i.ge = getelementptr i8, ptr %next.gep153, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep153, align 8, !tbaa !720, !alias.scope !1363, !noalias !1361
  %wide.load154 = load <2 x i64>, ptr %i.ge, align 8, !tbaa !720, !alias.scope !1363, !noalias !1361
  %i.gf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !720, !alias.scope !1364, !noalias !1363
  store <2 x i64> %wide.load154, ptr %i.gf, align 8, !tbaa !720, !alias.scope !1364, !noalias !1363
  %i.gg = getelementptr i8, ptr %next.gep153, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep153, align 8, !tbaa !720, !alias.scope !1363, !noalias !1361
  store <2 x ptr> splat (ptr null), ptr %i.gg, align 8, !tbaa !720, !alias.scope !1363, !noalias !1361
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gh = icmp eq i64 %index.next, %n.vec
  br i1 %i.gh, label %middle.block, label %vector.body, !llvm.loop !1347

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fx, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader156

.lr.ph.i.i.i.i.preheader156:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.fs, %vector.memcheck ], [ %i.fs, %.lr.ph.i.i.i.i.preheader ], [ %i.gb, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.fh, %vector.memcheck ], [ %i.fh, %.lr.ph.i.i.i.i.preheader ], [ %i.gc, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader156, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.gk, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader156 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.gj, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader156 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  %i.gi = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !720, !alias.scope !1362, !noalias !1361
  store i64 %i.gi, ptr %.012.i.i.i.i, align 8, !tbaa !720, !alias.scope !1361, !noalias !1362
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !720, !alias.scope !1362, !noalias !1361
  %i.gj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gj, %i.fc
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1348

_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc76
  %.0.lcssa.i.i.i.i = phi ptr [ %i.fs, %.noexc76 ], [ %i.gb, %middle.block ], [ %i.gk, %.lr.ph.i.i.i.i ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.fh, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.gm = load ptr, ptr %i.fd, align 8, !tbaa !1359
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = sub i64 %i.gn, %i.fj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.go) #33
  br label %_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.ai
  store ptr %i.fs, ptr %i.ey, align 8, !tbaa !1360
  store ptr %i.gl, ptr %i.fb, align 8, !tbaa !1358
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fq
  store ptr %i.gp, ptr %i.fd, align 8, !tbaa !1359
  br label %_ZNSt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.gq = load ptr, ptr %i.du, align 8, !tbaa !87
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 784
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !1365
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 -8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !720
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !714
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !712
  %i.gz = mul i64 %i.gy, 3
  %i.ha = lshr i64 %i.gz, 2
  %.not.i.i53 = icmp ult i64 %i.gw, %i.ha
  br i1 %.not.i.i53, label %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS1_EED2Ev.exit
  %i.hb = tail call noundef ptr @_ZNK4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_7TypeFunEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE4findERSD_(ptr noundef nonnull align 8 dereferenceable(64) %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %.not2.i.i54 = icmp eq ptr %i.hb, null
  br i1 %.not2.i.i54, label %bb.ak, label %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_7TypeFunEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ds)
  br label %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit

_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit: ; preds = %_ZNSt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS1_EED2Ev.exit, %bb.aj, %bb.ak
  %i.hc = tail call noundef ptr @_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_7TypeFunEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE13insert_unsafeERSD_(ptr noundef nonnull align 8 dereferenceable(64) %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  store ptr %i.gu, ptr %i.hd, align 8, !tbaa !721
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  store i64 %5, ptr %i.he, align 8, !tbaa !717
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !330
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 144
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !764
  store ptr %i.hi, ptr %10, align 8, !tbaa !442
  %i.hj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !578, !range !258, !noundef !259
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit.cont.then, label %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit.cont.cont

_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit.cont.then: ; preds = %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ho = load <2 x i64>, ptr %i.hn, align 8, !tbaa !70
  br label %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit.cont.cont

_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit.cont.cont: ; preds = %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit, %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit.cont.then
  %i.hp = phi <2 x i64> [ %i.ho, %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit.cont.then ], [ zeroinitializer, %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit ]
  store <2 x i64> %i.hp, ptr %i.hj, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i8 0, ptr %i.hq, align 8, !tbaa !443
  %i.hr = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 6 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 10 uses
  store ptr %i.hs, ptr %i.hr, align 8, !tbaa !100
  %i.ht = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 6 uses
  store i64 0, ptr %i.ht, align 8, !tbaa !104
  store i8 0, ptr %i.hs, align 8, !tbaa !89
  %i.hu = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 3 uses
  store i8 0, ptr %i.hv, align 8, !tbaa !349
  %i.hw = load ptr, ptr %2, align 8, !tbaa !238
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  store ptr null, ptr %11, align 8, !tbaa !662
  %i.hy = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.em, ptr %i.hy, align 8, !tbaa !422
  %i.hz = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNSt8__detail9_Map_baseIN4Luau6SymbolESt4pairIKS2_NS1_7BindingEESaIS6_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.hx, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %_ZNSt13unordered_mapIN4Luau6SymbolENS0_7BindingESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixEOS1_.exit58 unwind label %bb.at ; 8 uses

_ZNSt13unordered_mapIN4Luau6SymbolENS0_7BindingESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixEOS1_.exit58: ; preds = %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit.cont.cont
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.hz, ptr noundef nonnull align 8 dereferenceable(104) %10, i64 25, i1 false)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 32 ; 4 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !103 ; 6 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 48 ; 4 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  %i.ie = load ptr, ptr %i.hr, align 8, !tbaa !103 ; 6 uses
  %i.if = icmp eq ptr %i.ie, %i.hs                ; 2 uses
  br i1 %i.id, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt13unordered_mapIN4Luau6SymbolENS0_7BindingESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixEOS1_.exit58
  br i1 %i.if, label %bb.al, label %.thread.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i59: ; preds = %_ZNSt13unordered_mapIN4Luau6SymbolENS0_7BindingESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixEOS1_.exit58
  br i1 %i.if, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i60

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  %i.ig = load i64, ptr %i.ht, align 8, !tbaa !104 ; 3 uses
  %i.ih = icmp ult i64 %i.ig, 16
  call void @llvm.assume(i1 %i.ih)
  %.not21.i.i62 = icmp eq ptr %10, %i.hz
  br i1 %.not21.i.i62, label %_ZN4Luau7BindingaSEOS0_.exit67, label %bb.am, !prof !81

bb.am:                                            ; preds = %bb.al
  switch i64 %i.ig, label %bb.ao [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i63
    i64 1, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  %i.ii = load i8, ptr %i.ie, align 1, !tbaa !89
  store i8 %i.ii, ptr %i.ib, align 1, !tbaa !89
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i63

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ib, ptr align 1 %i.ie, i64 %i.ig, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i63: ; preds = %bb.ao, %bb.an, %bb.am
  %i.ij = load i64, ptr %i.ht, align 8, !tbaa !104 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  store i64 %i.ij, ptr %i.ik, align 8, !tbaa !104
  %i.il = load ptr, ptr %i.ia, align 8, !tbaa !103
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ij
  store i8 0, ptr %i.im, align 1, !tbaa !89
  %.pre.i.i64 = load ptr, ptr %i.hr, align 8, !tbaa !103
  br label %_ZN4Luau7BindingaSEOS0_.exit67

.thread.i.i66:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  %i.in = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  store ptr %i.ie, ptr %i.ia, align 8, !tbaa !103
  %i.io = load i64, ptr %i.ht, align 8, !tbaa !104
end_hunk_1
begin_hunk_2_@_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEE6fnMoveIS8_EEvPvSO_:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEE6fnMoveIS9_EEvPvSO_(ptr noundef %0, ptr noundef %1) #7 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEE6fnMoveISA_EEvPvSO_(ptr noundef %0, ptr noundef %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(54) %0, ptr noundef nonnull align 8 dereferenceable(54) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !100
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !104  ; 2 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZN4Luau17HasPropConstraintC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !103
  %i.k = load i64, ptr %i.e, align 8, !tbaa !89
  store i64 %i.k, ptr %i.c, align 8, !tbaa !89
  br label %_ZN4Luau17HasPropConstraintC2EOS0_.exit

_ZN4Luau17HasPropConstraintC2EOS0_.exit:          ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.m, ptr %i.n, align 8, !tbaa !104
  store ptr %i.e, ptr %i.b, align 8, !tbaa !103
  store i64 0, ptr %i.l, align 8, !tbaa !104
  store i8 0, ptr %i.e, align 8, !tbaa !89
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.o, ptr noundef nonnull align 8 dereferenceable(6) %i.p, i64 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEE6fnMoveISB_EEvPvSO_(ptr noundef %0, ptr noundef %1) #7 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !1065
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEE6fnMoveISC_EEvPvSO_(ptr noundef %0, ptr noundef %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !897
  store ptr %i.a, ptr %0, align 8, !tbaa !897
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !100
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !103  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !104  ; 2 uses
  %i.j = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZN4Luau20AssignPropConstraintC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.e, ptr %i.b, align 8, !tbaa !103
  %i.l = load i64, ptr %i.f, align 8, !tbaa !89
  store i64 %i.l, ptr %i.d, align 8, !tbaa !89
  br label %_ZN4Luau20AssignPropConstraintC2EOS0_.exit

_ZN4Luau20AssignPropConstraintC2EOS0_.exit:       ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !104
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !104
  store ptr %i.f, ptr %i.c, align 8, !tbaa !103
  store i64 0, ptr %i.m, align 8, !tbaa !104
  store i8 0, ptr %i.f, align 8, !tbaa !89
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.p, ptr noundef nonnull align 8 dereferenceable(41) %i.q, i64 41, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEE6fnMoveISD_EEvPvSO_(ptr noundef %0, ptr noundef %1) #7 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !1066
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEE6fnMoveISE_EEvPvSO_(ptr noundef %0, ptr noundef %1) #7 comdat align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !265
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !265
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !250
  store ptr %i.d, ptr %i.b, align 8, !tbaa !250
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !795
  store ptr %i.g, ptr %i.e, align 8, !tbaa !795
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEE6fnMoveISF_EEvPvSO_(ptr noundef %0, ptr noundef %1) #7 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !358
  store i64 %i.a, ptr %0, align 8, !tbaa !358
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEE6fnMoveISG_EEvPvSO_(ptr noundef %0, ptr noundef %1) #7 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !356
  store i64 %i.a, ptr %0, align 8, !tbaa !356
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEE6fnMoveISH_EEvPvSO_(ptr noundef %0, ptr noundef %1) #7 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1062
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEE6fnMoveISI_EEvPvSO_(ptr noundef %0, ptr noundef %1) #7 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !358
  store i64 %i.a, ptr %0, align 8, !tbaa !358
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEE6fnMoveISJ_EEvPvSO_(ptr noundef %0, ptr noundef %1) #7 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !1067
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEE6fnMoveISK_EEvPvSO_(ptr noundef %0, ptr noundef %1) #7 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !1068
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEE6fnMoveISL_EEvPvSO_(ptr noundef %0, ptr noundef %1) #7 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !265
  store <2 x ptr> %i.c, ptr %i.a, align 8, !tbaa !265
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !250
  store ptr %i.f, ptr %i.d, align 8, !tbaa !250
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !368
  store <2 x ptr> %i.i, ptr %i.g, align 8, !tbaa !368
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !367
  store ptr %i.l, ptr %i.j, align 8, !tbaa !367
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !352  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !351    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #34
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !434
  store i64 %i.r, ptr %i.q, align 8, !tbaa !434
  store ptr null, ptr %2, align 8, !tbaa !434
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %3 = add i64 %i.m, -8
  %4 = sub i64 %3, %i.e
  %i.w = and i64 %4, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.x
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.x
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.ab ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1868)
  %i.ac = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !434, !alias.scope !1869, !noalias !1867
  %wide.load37 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !434, !alias.scope !1869, !noalias !1867
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !434, !alias.scope !1870, !noalias !1869
  store <2 x i64> %wide.load37, ptr %i.ad, align 8, !tbaa !434, !alias.scope !1870, !noalias !1869
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !434, !alias.scope !1869, !noalias !1867
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !434, !alias.scope !1869, !noalias !1867
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1857

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader61

.lr.ph.i.i.i.preheader61:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader61, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1868)
  %i.ag = load i64, ptr %.0911.i.i.i, align 8, !tbaa !434, !alias.scope !1868, !noalias !1867
  store i64 %i.ag, ptr %.012.i.i.i, align 8, !tbaa !434, !alias.scope !1867, !noalias !1868
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !434, !alias.scope !1868, !noalias !1867
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1858

_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.z, %middle.block ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.ak = add i64 %i.d, -8
  %i.al = sub i64 %i.ak, %i.m                     ; 2 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.al, 152
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader60, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %5 = add i64 %i.d, -8
  %6 = sub i64 %5, %i.m
  %i.ao = and i64 %6, -8                          ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ao
  %scevgep40 = getelementptr i8, ptr %i.ap, i64 16
  %i.aq = getelementptr i8, ptr %1, i64 %i.ao
  %scevgep41 = getelementptr i8, ptr %i.aq, i64 8
  %bound042 = icmp ult ptr %i.aj, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader60, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.an, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec48, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.au = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.aj, i64 %i.au ; 2 uses
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1872)
  %i.av = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !434, !alias.scope !1873, !noalias !1871
  %wide.load54 = load <2 x i64>, ptr %i.av, align 8, !tbaa !434, !alias.scope !1873, !noalias !1871
  %i.aw = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !tbaa !434, !alias.scope !1874, !noalias !1873
  store <2 x i64> %wide.load54, ptr %i.aw, align 8, !tbaa !434, !alias.scope !1874, !noalias !1873
  %i.ax = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !434, !alias.scope !1873, !noalias !1871
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !434, !alias.scope !1873, !noalias !1871
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.ay, label %middle.block56, label %vector.body49, !llvm.loop !1865

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.an, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader60

.lr.ph.i.i.i17.preheader60:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block56
  %.012.i.i.i18.ph = phi ptr [ %i.aj, %vector.memcheck39 ], [ %i.aj, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block56 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block56 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader60, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader60 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1872)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !434, !alias.scope !1872, !noalias !1871
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !434, !alias.scope !1871, !noalias !1872
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !434, !alias.scope !1872, !noalias !1871
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !1866

_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block56, %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aj, %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.as, %middle.block56 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !263
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #33
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !351
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !352
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !263
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !481  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !482    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #34
  unreachable

_ZNKSt6vectorISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !449
  store i64 %i.r, ptr %i.q, align 8, !tbaa !449
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.t, align 8, !tbaa !265
  store <2 x ptr> %i.u, ptr %i.s, align 8, !tbaa !265
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !250
  store ptr %i.x, ptr %i.v, align 8, !tbaa !250
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.t, i8 0, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !484, !range !258, !noundef !259
  store i8 %i.aa, ptr %i.y, align 8, !tbaa !484
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  %i.ab = load i64, ptr %.0911.i.i.i, align 8, !tbaa !449, !alias.scope !1883, !noalias !1882
  store i64 %i.ab, ptr %.012.i.i.i, align 8, !tbaa !449, !alias.scope !1882, !noalias !1883
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !265, !alias.scope !1883, !noalias !1882
  store <2 x ptr> %i.ae, ptr %i.ac, align 8, !tbaa !265, !alias.scope !1882, !noalias !1883
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250, !alias.scope !1883, !noalias !1882
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !250, !alias.scope !1882, !noalias !1883
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ad, i8 0, i64 24, i1 false), !alias.scope !1883, !noalias !1882
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !484, !range !258, !alias.scope !1883, !noalias !1882, !noundef !259
  store i8 %i.ak, ptr %i.ai, align 8, !tbaa !484, !alias.scope !1882, !noalias !1883
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i, !llvm.loop !1878

_ZNSt6vectorISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE12_M_check_lenEmPKc.exit ], [ %i.am, %.lr.ph.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.az, %.lr.ph.i.i.i17 ], [ %i.an, %_ZNSt6vectorISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.ay, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  %i.ao = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !449, !alias.scope !1885, !noalias !1884
  store i64 %i.ao, ptr %.012.i.i.i18, align 8, !tbaa !449, !alias.scope !1884, !noalias !1885
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !265, !alias.scope !1885, !noalias !1884
  store <2 x ptr> %i.ar, ptr %i.ap, align 8, !tbaa !265, !alias.scope !1884, !noalias !1885
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !250, !alias.scope !1885, !noalias !1884
  store ptr %i.au, ptr %i.as, align 8, !tbaa !250, !alias.scope !1884, !noalias !1885
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.aq, i8 0, i64 24, i1 false), !alias.scope !1885, !noalias !1884
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !484, !range !258, !alias.scope !1885, !noalias !1884, !noundef !259
  store i8 %i.ax, ptr %i.av, align 8, !tbaa !484, !alias.scope !1884, !noalias !1885
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !1878

_ZNSt6vectorISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.an, %_ZNSt6vectorISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ], [ %i.az, %.lr.ph.i.i.i17 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE13_M_deallocateEPS8_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !488
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bd) #33
  br label %_ZNSt12_Vector_baseISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE13_M_deallocateEPS8_m.exit

_ZNSt12_Vector_baseISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE13_M_deallocateEPS8_m.exit: ; preds = %_ZNSt6vectorISt4pairIN4Luau7NotNullIKNS1_3DefEEENS1_19ConstraintGenerator19RefinementPartitionEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !482
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !481
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
end_hunk_2
