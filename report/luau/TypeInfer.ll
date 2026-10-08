Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypeInfer?download=true
inline.NumInlined: 13251
inline.NumDeleted: 4924
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4Luau11TypeChecker24checkRelationalOperationERKSt10shared_ptrINS_5ScopeEERKNS_13AstExprBinaryEPKNS_4TypeESB_RKSt6vectorINS_7VariantIJNS_15TruthyPredicateENS_12IsAPredicateENS_18TypeGuardPredicateENS_11EqPredicateENS_12AndPredicateENS_11OrPredicateENS_12NotPredicateEEEESaISL_EE:bb.a

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #35
  invoke void @_ZN4Luau3endEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %23, ptr noundef nonnull %i.qy)
          to label %.preheader unwind label %bb.ed

.preheader:                                       ; preds = %bb.ea
  %i.qz = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 4 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.rb = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.re = getelementptr inbounds nuw i8, ptr %22, i64 8
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit905

_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit905: ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i902, %.preheader
  %i.rf = load i64, ptr %i.qz, align 8, !tbaa !832
  %i.rg = icmp eq i64 %i.rf, 0                    ; 2 uses
  %i.rh = load i64, ptr %i.ra, align 8, !tbaa !832
  %i.ri = icmp eq i64 %i.rh, 0                    ; 2 uses
  %brmerge.i.i427 = select i1 %i.rg, i1 true, i1 %i.ri
  br i1 %brmerge.i.i427, label %bb.eb, label %.split881

.split881:                                        ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit905
  %i.rj = load ptr, ptr %22, align 8, !tbaa !833
  %i.rk = load i64, ptr %i.rb, align 8, !tbaa !834
  %i.rl = getelementptr inbounds nuw [16 x i8], ptr %i.rj, i64 %i.rk ; 2 uses
  %i.rm = load ptr, ptr %23, align 8, !tbaa !833
  %i.rn = load i64, ptr %i.rc, align 8, !tbaa !834
  %i.ro = getelementptr inbounds nuw [16 x i8], ptr %i.rm, i64 %i.rn ; 2 uses
  %i.rp = load ptr, ptr %i.rl, align 8, !tbaa !837
  %i.rq = load ptr, ptr %i.ro, align 8, !tbaa !837
  %i.rr = icmp eq ptr %i.rp, %i.rq
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rt = load i64, ptr %i.rs, align 8
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.rv = load i64, ptr %i.ru, align 8
  %i.rw = icmp eq i64 %i.rt, %i.rv
  %i.rx = select i1 %i.rr, i1 %i.rw, i1 false
  br i1 %i.rx, label %.thread674.critedge, label %bb.ee

bb.eb:                                            ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit905
  %.mux.i.i428 = select i1 %i.rg, i1 %i.ri, i1 false
  br i1 %.mux.i.i428, label %.thread674.critedge, label %bb.ee

bb.ec:                                            ; preds = %bb.dz
  %i.ry = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.ed:                                            ; preds = %bb.ea
  %i.rz = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

.loopexit906:                                     ; preds = %bb.ek
  %lpad.loopexit908 = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

.loopexit.split-lp907:                            ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i902
  %lpad.loopexit.split-lp909 = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ee:                                            ; preds = %.split881, %bb.eb
  invoke void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %22)
          to label %.noexc894 unwind label %bb.eh

.noexc894:                                        ; preds = %bb.ee
  %i.sa = load ptr, ptr %22, align 8, !tbaa !833
  %i.sb = load i64, ptr %i.rb, align 8, !tbaa !834
  %i.sc = getelementptr inbounds nuw [16 x i8], ptr %i.sa, i64 %i.sb ; 2 uses
  %.sroa.0.0.copyload.i891 = load ptr, ptr %i.sc, align 8
  %.sroa.4.0..sroa_idx.i892 = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %.sroa.4.0.copyload.i893 = load i64, ptr %.sroa.4.0..sroa_idx.i892, align 8
  %i.sd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %.sroa.0.0.copyload.i891)
          to label %.noexc895 unwind label %bb.eh

.noexc895:                                        ; preds = %.noexc894
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !294
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %.sroa.4.0.copyload.i893
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !269
  %i.sh = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.sg)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit897 unwind label %bb.eh

_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit897: ; preds = %.noexc895
  %i.si = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.sh)
          to label %bb.ef unwind label %bb.ei

bb.ef:                                            ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit897
  %.sroa.029.0.copyload = load ptr, ptr %i.rd, align 8, !tbaa !265
  %i.sj = invoke { ptr, i8 } @_ZN4Luau12getMetatableEPKNS_4TypeENS_7NotNullINS_12BuiltinTypesEEE(ptr noundef %i.si, ptr %.sroa.029.0.copyload)
          to label %bb.eg unwind label %bb.ei     ; 2 uses

bb.eg:                                            ; preds = %bb.ef
  %i.sk = extractvalue { ptr, i8 } %i.sj, 0
  %i.sl = extractvalue { ptr, i8 } %i.sj, 1
  %i.sm = icmp eq i8 %i.sl, 1
  %i.sn = icmp eq ptr %i.sk, %.sroa.0600.0
  %i.so = select i1 %i.sm, i1 %i.sn, i1 false
  br i1 %i.so, label %bb.eq, label %bb.ej

bb.eh:                                            ; preds = %.noexc895, %.noexc894, %bb.ee
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ei:                                            ; preds = %bb.ef, %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit897
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ej:                                            ; preds = %bb.eg
  %i.sr = load i64, ptr %i.qz, align 8, !tbaa !832
  %i.ss = icmp eq i64 %i.sr, 0
  br i1 %i.ss, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i902, label %.lr.ph.i.i898

.lr.ph.i.i898:                                    ; preds = %bb.ej
  %.pre.i.i899 = load i64, ptr %i.rb, align 8, !tbaa !834
  br label %bb.ek

bb.ek:                                            ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i901, %.lr.ph.i.i898
  %i.st = phi i64 [ %.pre.i.i899, %.lr.ph.i.i898 ], [ %i.tp, %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i901 ]
  %i.su = load ptr, ptr %22, align 8, !tbaa !833
  %i.sv = getelementptr inbounds nuw [16 x i8], ptr %i.su, i64 %i.st ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 8 ; 3 uses
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !608
  %i.sy = add i64 %i.sx, 1
  store i64 %i.sy, ptr %i.sw, align 8, !tbaa !608
  %i.sz = load ptr, ptr %i.sv, align 8, !tbaa !838
  %i.ta = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %i.sz)
          to label %.noexc903 unwind label %.loopexit906 ; 2 uses

.noexc903:                                        ; preds = %bb.ek
  %i.tb = load i64, ptr %i.sw, align 8, !tbaa !608
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !546
  %i.te = load ptr, ptr %i.ta, align 8, !tbaa !294
  %i.tf = ptrtoint ptr %i.td to i64
  %i.tg = ptrtoint ptr %i.te to i64
  %i.th = sub i64 %i.tf, %i.tg
  %i.ti = ashr exact i64 %i.th, 3
  %.not.i.i900 = icmp ult i64 %i.tb, %i.ti
  br i1 %.not.i.i900, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i902, label %bb.el

bb.el:                                            ; preds = %.noexc903
  %i.tj = load i64, ptr %i.rb, align 8, !tbaa !834
  %i.tk = add i64 %i.tj, 1                        ; 3 uses
  store i64 %i.tk, ptr %i.rb, align 8, !tbaa !834
  %i.tl = load i64, ptr %i.qz, align 8, !tbaa !832
  %i.tm = add i64 %i.tl, -1                       ; 2 uses
  store i64 %i.tm, ptr %i.qz, align 8, !tbaa !832
  %i.tn = load i64, ptr %i.re, align 8, !tbaa !839
  %i.to = icmp eq i64 %i.tk, %i.tn
  br i1 %i.to, label %bb.em, label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i901

bb.em:                                            ; preds = %bb.el
  store i64 0, ptr %i.rb, align 8, !tbaa !834
  br label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i901

_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i901: ; preds = %bb.em, %bb.el
  %i.tp = phi i64 [ 0, %bb.em ], [ %i.tk, %bb.el ]
  %i.tq = icmp eq i64 %i.tm, 0
  br i1 %i.tq, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i902, label %bb.ek

_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i902: ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i901, %.noexc903, %bb.ej
  invoke void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %22)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit905 unwind label %.loopexit.split-lp907

bb.en:                                            ; preds = %.loopexit906, %.loopexit.split-lp907, %bb.eh, %bb.ei
  %.pn283 = phi { ptr, i32 } [ %i.sp, %bb.eh ], [ %i.sq, %bb.ei ], [ %lpad.loopexit908, %.loopexit906 ], [ %lpad.loopexit.split-lp909, %.loopexit.split-lp907 ]
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %23) #35
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.ed
  %.pn283.pn = phi { ptr, i32 } [ %.pn283, %bb.en ], [ %i.rz, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %22) #35
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.ec
  %.pn283.pn.pn = phi { ptr, i32 } [ %.pn283.pn, %bb.eo ], [ %i.ry, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481

bb.eq:                                            ; preds = %bb.eg
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %23) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %22) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #35
  br label %_ZN4Luau11TypeChecker17errorRecoveryTypeEPKNS_4TypeE.exit.thread

.thread674.critedge:                              ; preds = %.split881, %bb.eb
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %23) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %22) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #35
  br label %.thread674

.thread674:                                       ; preds = %.thread674.critedge, %.thread668, %bb.dy, %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #35
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef %.1.i)
          to label %bb.er unwind label %bb.ey

bb.er:                                            ; preds = %.thread674
  %i.tr = load ptr, ptr %26, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #35
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef %.1.i341)
          to label %bb.es unwind label %bb.ez

bb.es:                                            ; preds = %bb.er
  %i.ts = load ptr, ptr %27, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #35
  %i.tt = load i32, ptr %i.e, align 4, !tbaa !866
  invoke void @_ZN4Luau8toStringB5cxx11ENS_13AstExprBinary2OpE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, i32 noundef %i.tt)
          to label %bb.et unwind label %bb.fa

bb.et:                                            ; preds = %bb.es
  %i.tu = load ptr, ptr %28, align 8, !tbaa !81
  invoke void (ptr, ptr, ...) @_ZN4Luau6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull @.str.120, ptr noundef %i.tr, ptr noundef %i.ts, ptr noundef %i.tu)
          to label %bb.eu unwind label %bb.fb

bb.eu:                                            ; preds = %bb.et
  store i32 18, ptr %24, align 8, !tbaa !303
  %i.tv = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 3 uses
  store ptr %i.tw, ptr %i.tv, align 8, !tbaa !287
  %i.tx = load ptr, ptr %25, align 8, !tbaa !81   ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 9 uses
  %i.tz = icmp eq ptr %i.tx, %i.ty
  br i1 %i.tz, label %bb.ev, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i432

bb.ev:                                            ; preds = %bb.eu
  %i.ua = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ub = load i64, ptr %i.ua, align 8, !tbaa !133 ; 3 uses
  %i.uc = icmp ult i64 %i.ub, 16
  call void @llvm.assume(i1 %i.uc)
  %i.ud = add nuw nsw i64 %i.ub, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.tw, ptr noundef nonnull align 8 dereferenceable(1) %i.ty, i64 %i.ud, i1 false)
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter434

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i432: ; preds = %bb.eu
  store ptr %i.tx, ptr %i.tv, align 8, !tbaa !81
  %i.ue = load i64, ptr %i.ty, align 8, !tbaa !288
  store i64 %i.ue, ptr %i.tw, align 8, !tbaa !288
  %.phi.trans.insert735 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.pre736 = load i64, ptr %.phi.trans.insert735, align 8, !tbaa !133
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter434

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter434: ; preds = %bb.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i432
  %i.uf = phi i64 [ %i.ub, %bb.ev ], [ %.pre736, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i432 ]
  %i.ug = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.uh = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i64 %i.uf, ptr %i.uh, align 8, !tbaa !133
  store ptr %i.ty, ptr %25, align 8, !tbaa !81
  store i64 0, ptr %i.ug, align 8, !tbaa !133
  store i8 0, ptr %i.ty, align 8, !tbaa !288
  invoke void @_ZN4Luau11TypeChecker11reportErrorERKNS_8LocationENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEEE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.iy, ptr noundef nonnull align 8 %24)
          to label %bb.ew unwind label %bb.fc

bb.ew:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter434
  %i.ui = load i32, ptr %24, align 8, !tbaa !303
  %i.uj = sext i32 %i.ui to i64
  %i.uk = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.uj
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !82
  invoke void %i.ul(ptr noundef nonnull %i.tv)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter436 unwind label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.um = landingpad { ptr, i32 }
          catch ptr null
  %i.un = extractvalue { ptr, i32 } %i.um, 0
  call void @__clang_call_terminate(ptr %i.un) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter436: ; preds = %bb.ew
  %i.uo = load ptr, ptr %25, align 8, !tbaa !81   ; 2 uses
  %i.up = icmp eq ptr %i.uo, %i.ty
  br i1 %i.up, label %_ZN4Luau12GenericErrorD2Ev.exit439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i437

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i437: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter436
  %i.uq = load i64, ptr %i.ty, align 8, !tbaa !288
  %i.ur = add i64 %i.uq, 1
  call void @_ZdlPvm(ptr noundef %i.uo, i64 noundef %i.ur) #36
  br label %_ZN4Luau12GenericErrorD2Ev.exit439

_ZN4Luau12GenericErrorD2Ev.exit439:               ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter436, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i437
  %i.us = load ptr, ptr %28, align 8, !tbaa !81   ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.uu = icmp eq ptr %i.us, %i.ut
  br i1 %i.uu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440: ; preds = %_ZN4Luau12GenericErrorD2Ev.exit439
  %i.uv = load i64, ptr %i.ut, align 8, !tbaa !288
  %i.uw = add i64 %i.uv, 1
  call void @_ZdlPvm(ptr noundef %i.us, i64 noundef %i.uw) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442: ; preds = %_ZN4Luau12GenericErrorD2Ev.exit439, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  %i.ux = load ptr, ptr %27, align 8, !tbaa !81   ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.uz = icmp eq ptr %i.ux, %i.uy
  br i1 %i.uz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442
  %i.va = load i64, ptr %i.uy, align 8, !tbaa !288
  %i.vb = add i64 %i.va, 1
  call void @_ZdlPvm(ptr noundef %i.ux, i64 noundef %i.vb) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #35
  %i.vc = load ptr, ptr %26, align 8, !tbaa !81   ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.ve = icmp eq ptr %i.vc, %i.vd
  br i1 %i.ve, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445
  %i.vf = load i64, ptr %i.vd, align 8, !tbaa !288
  %i.vg = add i64 %i.vf, 1
  call void @_ZdlPvm(ptr noundef %i.vc, i64 noundef %i.vg) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #35
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !766
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !539
  %i.vl = invoke noundef ptr @_ZNK4Luau12BuiltinTypes17errorRecoveryTypeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(272) %i.vk, ptr noundef %i.vi)
          to label %_ZN4Luau11TypeChecker17errorRecoveryTypeEPKNS_4TypeE.exit unwind label %bb.fe

bb.ey:                                            ; preds = %.thread674
  %i.vm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463

bb.ez:                                            ; preds = %bb.er
  %i.vn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460

bb.fa:                                            ; preds = %bb.es
  %i.vo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457

bb.fb:                                            ; preds = %bb.et
  %i.vp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau12GenericErrorD2Ev.exit454

bb.fc:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter434
  %i.vq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vr = load i32, ptr %24, align 8, !tbaa !303
  %i.vs = sext i32 %i.vr to i64
  %i.vt = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.vs
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !82
  invoke void %i.vu(ptr noundef nonnull %i.tv)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter451 unwind label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.vv = landingpad { ptr, i32 }
          catch ptr null
  %i.vw = extractvalue { ptr, i32 } %i.vv, 0
  call void @__clang_call_terminate(ptr %i.vw) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter451: ; preds = %bb.fc
  %i.vx = load ptr, ptr %25, align 8, !tbaa !81   ; 2 uses
  %i.vy = icmp eq ptr %i.vx, %i.ty
  br i1 %i.vy, label %_ZN4Luau12GenericErrorD2Ev.exit454, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i452

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i452: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter451
  %i.vz = load i64, ptr %i.ty, align 8, !tbaa !288
  %i.wa = add i64 %i.vz, 1
  call void @_ZdlPvm(ptr noundef %i.vx, i64 noundef %i.wa) #36
  br label %_ZN4Luau12GenericErrorD2Ev.exit454

_ZN4Luau12GenericErrorD2Ev.exit454:               ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter451, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i452, %bb.fb
  %.pn288 = phi { ptr, i32 } [ %i.vp, %bb.fb ], [ %i.vq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i452 ], [ %i.vq, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter451 ] ; 2 uses
  %i.wb = load ptr, ptr %28, align 8, !tbaa !81   ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.wd = icmp eq ptr %i.wb, %i.wc
  br i1 %i.wd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i455

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i455: ; preds = %_ZN4Luau12GenericErrorD2Ev.exit454
  %i.we = load i64, ptr %i.wc, align 8, !tbaa !288
  %i.wf = add i64 %i.we, 1
  call void @_ZdlPvm(ptr noundef %i.wb, i64 noundef %i.wf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457: ; preds = %_ZN4Luau12GenericErrorD2Ev.exit454, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i455, %bb.fa
  %.pn288.pn = phi { ptr, i32 } [ %i.vo, %bb.fa ], [ %.pn288, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i455 ], [ %.pn288, %_ZN4Luau12GenericErrorD2Ev.exit454 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  %i.wg = load ptr, ptr %27, align 8, !tbaa !81   ; 2 uses
end_hunk_0
