inline.NumInlined: 3961
inline.NumDeleted: 1804
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4LuauL18createIntersectionEP9lua_State:bb.a
bb.q:                                             ; preds = %bb.p
  %i.ba = load i32, ptr %2, align 8, !tbaa !102
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE9tableDtorE, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void %i.bd(ptr noundef nonnull %i.be)
          to label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #31
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load i32, ptr %2, align 8, !tbaa !102
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE9tableDtorE, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void %i.bl(ptr noundef nonnull %i.bm)
          to label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEED2Ev.exit37 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #31
  unreachable

bb.u:                                             ; preds = %._crit_edge
  %i.bp = load ptr, ptr %i.j, align 8, !tbaa !98  ; 2 uses
  invoke void @_Z15luaL_checkstackP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.83)
          to label %.noexc38 unwind label %bb.d

.noexc38:                                         ; preds = %bb.u
  %i.bq = load i8, ptr @_ZN5FFlag30LuauUdtfTypeUseTaggedMetatableE, align 8, !tbaa !297, !range !86, !noundef !87
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.noexc38
  %i.bs = invoke noundef ptr @_Z34lua_newuserdatataggedwithmetatableP9lua_Statemi(ptr noundef %0, i64 noundef 8, i32 noundef 42)
          to label %.noexc39 unwind label %bb.d

.noexc39:                                         ; preds = %bb.v
  store ptr %i.bp, ptr %i.bs, align 8, !tbaa !98
  br label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEED2Ev.exit

bb.w:                                             ; preds = %.noexc38
  %i.bt = invoke noundef ptr @_Z21lua_newuserdatataggedP9lua_Statemi(ptr noundef %0, i64 noundef 8, i32 noundef 42)
          to label %.noexc40 unwind label %bb.d

.noexc40:                                         ; preds = %bb.w
  store ptr %i.bp, ptr %i.bt, align 8, !tbaa !98
  %i.bu = invoke noundef i32 @_Z12lua_getfieldP9lua_StateiPKc(ptr noundef %0, i32 noundef -10000, ptr noundef nonnull @.str.84)
          to label %.noexc41 unwind label %bb.d   ; 0 uses

.noexc41:                                         ; preds = %.noexc40
  %i.bv = invoke noundef i32 @_Z16lua_setmetatableP9lua_Statei(ptr noundef %0, i32 noundef -2)
          to label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEED2Ev.exit unwind label %bb.d ; 0 uses

bb.x:                                             ; preds = %._crit_edge
  %i.bw = load ptr, ptr %i.d, align 8, !tbaa !309
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store i32 6, ptr %3, align 8, !tbaa !102
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %i.j, ptr %i.bx, align 8, !tbaa !325
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.k, ptr %i.by, align 8, !tbaa !326
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.bw, ptr %i.bz, align 8, !tbaa !309
  invoke void @_ZN4Luau17allocTypeUserDataEP9lua_StateNS_7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEb(ptr noundef %0, ptr noundef nonnull align 8 %3, i1 noundef zeroext false)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ca = load i32, ptr %3, align 8, !tbaa !102
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE9tableDtorE, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !17
  invoke void %i.cd(ptr noundef nonnull %i.bx)
          to label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEED2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #31
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = load i32, ptr %3, align 8, !tbaa !102
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE9tableDtorE, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !17
  invoke void %i.ck(ptr noundef nonnull %i.bx)
          to label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEED2Ev.exit37 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #31
  unreachable

_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEED2Ev.exit: ; preds = %bb.y, %.noexc39, %.noexc41, %bb.q
  %i.cn = load ptr, ptr %1, align 8, !tbaa !325   ; 3 uses
  %.not.i.i.i47 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEED2Ev.exit
  %i.co = load ptr, ptr %i.d, align 8, !tbaa !309
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cr) #32
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EED2Ev.exit: ; preds = %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEED2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret i32 1

_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEED2Ev.exit37: ; preds = %.loopexit62, %.loopexit.split-lp63, %.loopexit, %.loopexit.split-lp, %bb.aa, %bb.s, %bb.j, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.s ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.p, %bb.d ], [ %i.cg, %bb.aa ], [ %i.af, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit64, %.loopexit62 ], [ %lpad.loopexit.split-lp65, %.loopexit.split-lp63 ]
  %i.cs = load ptr, ptr %1, align 8, !tbaa !325   ; 3 uses
  %.not.i.i.i48 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EED2Ev.exit49, label %bb.ad

bb.ad:                                            ; preds = %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEED2Ev.exit37
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !309
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cx) #32
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EED2Ev.exit49

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EED2Ev.exit49: ; preds = %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEED2Ev.exit37, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN4LuauL14createOptionalEP9lua_State(ptr noundef %0) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Luau::Variant.154", align 8 ; 6 uses
  %2 = alloca %"class.std::vector.164", align 16  ; 20 uses
  %3 = alloca %"class.Luau::Variant.154", align 8 ; 5 uses
  %4 = alloca %"class.Luau::Variant.154", align 8 ; 6 uses
  %i.a = tail call noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef %0) ; 2 uses
  %.not = icmp eq i32 %i.a, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.167, i32 noundef %i.a) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr @_ZN5FFlag30LuauUdtfTypeUseTaggedMetatableE, align 8, !tbaa !297, !range !86, !noundef !87
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef ptr @_Z21luaL_checkudatataggedP9lua_Stateii(ptr noundef %0, i32 noundef 1, i32 noundef 42)
  br label %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit

bb.e:                                             ; preds = %bb.c
  %i.e = tail call noundef ptr @_Z20lua_touserdatataggedP9lua_Stateii(ptr noundef %0, i32 noundef 1, i32 noundef 42) ; 2 uses
  %.not.not.i = icmp eq ptr %i.e, null
  br i1 %.not.not.i, label %bb.f, label %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Z15luaL_typeerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.84) #33
  unreachable

_ZN4Luau15getTypeUserDataEP9lua_Statei.exit:      ; preds = %bb.d, %bb.e
  %.1.in.i = phi ptr [ %i.d, %bb.d ], [ %i.e, %bb.e ]
  %.1.i = load ptr, ptr %.1.in.i, align 8, !tbaa !98 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i = icmp eq ptr %.1.i, null
  br i1 %.not.i, label %_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i, label %_ZN4Luau6get_ifINS_21TypeFunctionUnionTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeES1_NS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i

_ZN4Luau6get_ifINS_21TypeFunctionUnionTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeES1_NS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i: ; preds = %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit
  %i.f = load i32, ptr %.1.i, align 8, !tbaa !102
  %i.g = icmp eq i32 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 2 uses
  br i1 %i.g, label %_ZN4Luau3getINS_21TypeFunctionUnionTypeEEEPKT_PKNS_16TypeFunctionTypeE.exit, label %_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

_ZN4Luau3getINS_21TypeFunctionUnionTypeEEEPKT_PKNS_16TypeFunctionTypeE.exit: ; preds = %_ZN4Luau6get_ifINS_21TypeFunctionUnionTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeES1_NS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %.1.i, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !326  ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !325  ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3
  %i.p = add nsw i64 %i.o, 1                      ; 4 uses
  %i.q = icmp ugt i64 %i.p, 1152921504606846975
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4Luau3getINS_21TypeFunctionUnionTypeEEEPKT_PKNS_16TypeFunctionTypeE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #33
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN4Luau3getINS_21TypeFunctionUnionTypeEEEPKT_PKNS_16TypeFunctionTypeE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.not67 = icmp eq i64 %i.p, 0
  br i1 %.not67, label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.h
  %i.s = shl nuw nsw i64 %i.p, 3
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #34
          to label %.noexc22 unwind label %bb.i   ; 4 uses

.noexc22:                                         ; preds = %_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE11_M_allocateEm.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.t, ptr %2, align 16, !tbaa !325
  store ptr %i.t, ptr %i.u, align 8, !tbaa !326
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.p
  store ptr %5, ptr %i.r, align 16, !tbaa !309
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !97
  %.pre58 = load ptr, ptr %i.i, align 8, !tbaa !97
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE7reserveEm.exit

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE7reserveEm.exit: ; preds = %.noexc22, %bb.h
  %i.v = phi ptr [ %.pre58, %.noexc22 ], [ %i.j, %bb.h ]
  %i.w = phi ptr [ %.pre, %.noexc22 ], [ %i.k, %bb.h ]
  %i.x = phi ptr [ %i.t, %.noexc22 ], [ null, %bb.h ]
  invoke void @_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvNS8_IPS3_S5_EET_SE_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.x, ptr %i.w, ptr %i.v)
          to label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit unwind label %bb.j

bb.i:                                             ; preds = %_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %_ZNSt12_Vector_baseIPKN4Luau16TypeFunctionTypeESaIS3_EE11_M_allocateEm.exit.i, %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEED2Ev.exit40

bb.j:                                             ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE7reserveEm.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEED2Ev.exit40

_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %_ZN4Luau6get_ifINS_21TypeFunctionUnionTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeES1_NS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i, %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit
  %i.aa = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %.noexc26 unwind label %bb.i   ; 3 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.1.i, ptr %i.aa, align 8, !tbaa !98
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.aa, ptr %2, align 16, !tbaa !325
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !326
  store ptr %i.ad, ptr %i.ab, align 16, !tbaa !309
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit: ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE7reserveEm.exit, %.noexc26
  store i32 0, ptr %3, align 8, !tbaa !102
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !300
  %i.af = invoke noundef ptr @_Z14lua_mainthreadP9lua_State(ptr noundef %0)
          to label %.noexc27 unwind label %bb.x

.noexc27:                                         ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit
  %i.ag = invoke noundef ptr @_Z17lua_getthreaddataP9lua_State(ptr noundef %i.af)
          to label %.noexc28 unwind label %bb.x   ; 3 uses

.noexc28:                                         ; preds = %.noexc27
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !43 ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, 214
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc28
  invoke void @_ZN4Luau14TypedAllocatorINS_16TypeFunctionTypeEE11appendBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ag)
          to label %.noexc29 unwind label %bb.x

.noexc29:                                         ; preds = %bb.k
  %.pre.i.i = load i64, ptr %i.ah, align 8, !tbaa !43
  br label %bb.l

bb.l:                                             ; preds = %.noexc29, %.noexc28
  %i.ak = phi i64 [ %.pre.i.i, %.noexc29 ], [ %i.ai, %.noexc28 ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !97
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !98
  %i.ap = getelementptr inbounds nuw [152 x i8], ptr %i.ao, i64 %i.ak ; 5 uses
  %i.aq = load i32, ptr %3, align 8, !tbaa !102   ; 2 uses
  store i32 %i.aq, ptr %1, align 8, !tbaa !102
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE9tableMoveE, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void %i.at(ptr noundef nonnull %i.au, ptr noundef nonnull %i.ae) #30, !inline_history !312
  %i.av = load i32, ptr %1, align 8, !tbaa !102   ; 2 uses
  store i32 %i.av, ptr %i.ap, align 8, !tbaa !102
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE9tableMoveE, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void %i.ay(ptr noundef nonnull %i.az, ptr noundef nonnull %i.au) #30, !inline_history !313
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  store i8 0, ptr %i.ba, align 8, !tbaa !304
  %i.bb = load i32, ptr %1, align 8, !tbaa !102
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE9tableDtorE, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !17
  invoke void %i.be(ptr noundef nonnull %i.au)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #31
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bh = load i64, ptr %i.ah, align 8, !tbaa !43
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.ah, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !326 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 16, !tbaa !309
  %.not.i30 = icmp eq ptr %i.bk, %i.bm
  br i1 %.not.i30, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.ap, ptr %i.bk, align 8, !tbaa !98
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bn, ptr %i.bj, align 8, !tbaa !326
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12emplace_backIJPS1_EEERS3_DpOT_.exit

bb.p:                                             ; preds = %bb.n
  %i.bo = load ptr, ptr %2, align 16, !tbaa !325  ; 4 uses
  %i.bp = ptrtoint ptr %i.bk to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 6 uses
  %i.bs = icmp eq i64 %i.br, 9223372036854775800
  br i1 %i.bs, label %bb.q, label %_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i31

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.166) #33
          to label %.noexc36 unwind label %bb.x

.noexc36:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i31: ; preds = %bb.p
  %i.bt = ashr exact i64 %i.br, 3                 ; 3 uses
  %.sroa.speculated.i.i.i32 = call i64 @llvm.umax.i64(i64 %i.bt, i64 1)
  %i.bu = add nsw i64 %.sroa.speculated.i.i.i32, %i.bt ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bt
  %i.bw = call i64 @llvm.umin.i64(i64 %i.bu, i64 1152921504606846975)
  %i.bx = select i1 %i.bv, i64 1152921504606846975, i64 %i.bw ; 3 uses
  %.not.i.i.i33 = icmp ne i64 %i.bx, 0
  call void @llvm.assume(i1 %.not.i.i.i33)
  %i.by = shl nuw nsw i64 %i.bx, 3
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #34
          to label %.noexc37 unwind label %bb.x   ; 4 uses

.noexc37:                                         ; preds = %_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i31
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %i.br ; 2 uses
  store ptr %i.ap, ptr %i.ca, align 8, !tbaa !98
  %i.cb = icmp sgt i64 %i.br, 0
  br i1 %i.cb, label %bb.r, label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i34

bb.r:                                             ; preds = %.noexc37
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bz, ptr align 8 %i.bo, i64 %i.br, i1 false)
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i34

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i34: ; preds = %bb.r, %.noexc37
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.not.i17.i.i35 = icmp eq ptr %i.bo, null
  br i1 %.not.i17.i.i35, label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i34
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.br) #32
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i34
  store ptr %i.bz, ptr %2, align 16, !tbaa !325
  store ptr %i.cc, ptr %i.bj, align 8, !tbaa !326
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.bx
  store ptr %i.cd, ptr %i.bl, align 16, !tbaa !309
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12emplace_backIJPS1_EEERS3_DpOT_.exit

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12emplace_backIJPS1_EEERS3_DpOT_.exit: ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.o
  %i.ce = load i32, ptr %3, align 8, !tbaa !102
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE9tableDtorE, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !17
  invoke void %i.ch(ptr noundef nonnull %i.ae)
          to label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEED2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12emplace_backIJPS1_EEERS3_DpOT_.exit
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #31
  unreachable

_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEED2Ev.exit: ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12emplace_backIJPS1_EEERS3_DpOT_.exit
  %i.ck = load ptr, ptr %i.bl, align 16, !tbaa !309
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.cm = load <2 x ptr>, ptr %2, align 16, !tbaa !97
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store i32 5, ptr %4, align 8, !tbaa !102
  store <2 x ptr> %i.cm, ptr %i.cl, align 8, !tbaa !97
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.ck, ptr %i.cn, align 8, !tbaa !309
  invoke void @_ZN4Luau17allocTypeUserDataEP9lua_StateNS_7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEb(ptr noundef %0, ptr noundef nonnull align 8 %4, i1 noundef zeroext false)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEED2Ev.exit
  %i.co = load i32, ptr %4, align 8, !tbaa !102
  %i.cp = sext i32 %i.co to i64
end_hunk_0
