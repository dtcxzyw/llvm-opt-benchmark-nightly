Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/UserDefinedTypeFunction?download=true
inline.NumInlined: 1799
inline.NumDeleted: 1070
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4Luau23FreezeTypeFunctionTypesC2Ev:.noexc.i
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 168) (i8, ptr @_ZTVN4Luau23FreezeTypeFunctionTypesE, i64 16), ptr %0, align 8, !tbaa !224
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.o = load i64, ptr %i.b, align 8, !tbaa !45
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  resume { ptr, i32 } %i.l
}

declare void @_ZN4Luau32IterativeTypeFunctionTypeVisitor3runEPKNS_16TypeFunctionTypeE(ptr noundef nonnull align 8 dereferenceable(121), ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau32IterativeTypeFunctionTypeVisitorD2Ev(ptr noundef nonnull align 8 dead_on_return(121) dereferenceable(121) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 168) (i8, ptr @_ZTVN4Luau32IterativeTypeFunctionTypeVisitorE, i64 16), ptr %0, align 8, !tbaa !224
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !45
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !226  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau32IterativeTypeFunctionTypeVisitor8WorkItemESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !229
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #27
  br label %_ZNSt6vectorIN4Luau32IterativeTypeFunctionTypeVisitor8WorkItemESaIS2_EED2Ev.exit

_ZNSt6vectorIN4Luau32IterativeTypeFunctionTypeVisitor8WorkItemESaIS2_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !230  ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i1, label %_ZN4Luau3SetIPKvNS_16DenseHashPointerEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4Luau32IterativeTypeFunctionTypeVisitor8WorkItemESaIS2_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #25
  br label %_ZN4Luau3SetIPKvNS_16DenseHashPointerEED2Ev.exit

_ZN4Luau3SetIPKvNS_16DenseHashPointerEED2Ev.exit: ; preds = %_ZNSt6vectorIN4Luau32IterativeTypeFunctionTypeVisitor8WorkItemESaIS2_EED2Ev.exit, %bb.c
  ret void
}

declare void @_ZN4Luau17allocTypeUserDataEP9lua_StateNS_7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEb(ptr noundef, ptr noundef align 8, i1 noundef zeroext) local_unnamed_addr #9

declare void @_Z17lua_pushcclosurekP9lua_StatePFiS0_EPKciPFiS0_iE(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN4LuauL21evaluateTypeAliasCallEP9lua_State(ptr noundef %0) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Luau::ApplyTypeFunction", align 8 ; 21 uses
  %2 = alloca %"class.std::vector.0", align 8     ; 14 uses
  %3 = alloca %"struct.std::pair.281", align 8    ; 13 uses
  %4 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %5 = alloca %"struct.Luau::FunctionGraphReductionResult", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"struct.Luau::FreezeTypeFunctionTypes", align 8 ; 12 uses
  %9 = alloca %"class.Luau::Variant.204", align 8 ; 5 uses
  %i.a = tail call noundef ptr @_Z19lua_tolightuserdataP9lua_Statei(ptr noundef %0, i32 noundef -10003) ; 7 uses
  %i.b = tail call noundef ptr @_ZN4Luau22getTypeFunctionRuntimeEP9lua_State(ptr noundef %0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !301  ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !302
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !304
  %i.g = tail call noundef ptr @_ZN4Luau6TxnLog5emptyEv()
  call void @_ZN4Luau12SubstitutionC2EPKNS_6TxnLogEPNS_9TypeArenaE(ptr noundef nonnull align 8 dereferenceable(592) %1, ptr noundef %i.g, ptr noundef %i.f)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4Luau17ApplyTypeFunctionE, i64 16), ptr %1, align 8, !tbaa !224
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 472
  store i8 0, ptr %i.h, align 8, !tbaa !307
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 528
  store ptr %i.j, ptr %i.i, align 8, !tbaa !352
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 2 uses
  store i64 1, ptr %i.k, align 8, !tbaa !353
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.m, align 8, !tbaa !354
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 520
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 584
  store ptr %i.p, ptr %i.o, align 8, !tbaa !355
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 2 uses
  store i64 1, ptr %i.q, align 8, !tbaa !356
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 568
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 8, !tbaa !354
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = invoke noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef %0)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !179
  %i.ac = ptrtoint ptr %i.cq to i64
  %i.ad = ptrtoint ptr %.pre to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ag = phi i64 [ %i.af, %._crit_edge.loopexit ], [ 0, %bb.b ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !357
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !358 ; 6 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = sdiv exact i64 %i.am, 24                ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !359 ; 2 uses
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !360 ; 3 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 24                ; 4 uses
  %spec.select180 = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.an) ; 3 uses
  %spec.select181 = call i64 @llvm.usub.sat.i64(i64 %i.ag, i64 %i.an)
  %.not.not = icmp ule i64 %i.ag, %i.an           ; 3 uses
  %.not122 = icmp ne ptr %i.aq, %i.ar             ; 2 uses
  %.not = select i1 %.not.not, i1 true, i1 %.not122
  %spec.select148 = select i1 %.not, i64 0, i64 %spec.select181 ; 3 uses
  %.093 = add nsw i64 %spec.select148, %spec.select180 ; 6 uses
  %not..not.not = xor i1 %.not.not, true
  %narrow = select i1 %not..not.not, i1 %.not122, i1 false
  %.092 = zext i1 %narrow to i64                  ; 4 uses
  %i.aw = icmp ult i64 %.093, %i.an
  br i1 %i.aw, label %.lr.ph200.preheader, label %.preheader184

.lr.ph200.preheader:                              ; preds = %._crit_edge
  %i.ax = add i64 %spec.select148, %spec.select180
  %i.ay = sub i64 %i.an, %i.ax
  %xtraiter = and i64 %i.ay, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph200.prol.loopexit, label %.lr.ph200.prol

.lr.ph200.prol:                                   ; preds = %.lr.ph200.preheader, %.lr.ph200.prol
  %.091198.prol = phi i64 [ %i.bd, %.lr.ph200.prol ], [ %.093, %.lr.ph200.preheader ] ; 2 uses
  %.194197.prol = phi i64 [ %spec.select.prol, %.lr.ph200.prol ], [ %.093, %.lr.ph200.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph200.prol ], [ 0, %.lr.ph200.preheader ]
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.091198.prol
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !138, !range !48, !noundef !49
  %i.bc = zext nneg i8 %i.bb to i64
  %spec.select.prol = add i64 %.194197.prol, %i.bc ; 3 uses
  %i.bd = add nuw i64 %.091198.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph200.prol.loopexit, label %.lr.ph200.prol, !llvm.loop !361

.lr.ph200.prol.loopexit:                          ; preds = %.lr.ph200.prol, %.lr.ph200.preheader
  %.091198.unr.a = phi i64 [ poison, %.lr.ph200.preheader ], [ %spec.select.prol, %.lr.ph200.prol ]
  %.194197.unr.a = phi i64 [ %.093, %.lr.ph200.preheader ], [ %i.bd, %.lr.ph200.prol ]
  %spec.select.lcssa.unr = phi i64 [ %.093, %.lr.ph200.preheader ], [ %spec.select.prol, %.lr.ph200.prol ]
  %i.be = sub i64 %spec.select148, %i.an
  %i.bf = add i64 %i.be, %spec.select180
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %.preheader184, label %.lr.ph200

bb.c:                                             ; preds = %bb.a
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit
  %.096196 = phi i32 [ 0, %.lr.ph ], [ %i.bi, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit ]
  %i.bi = add nuw nsw i32 %.096196, 1             ; 4 uses
  %i.bj = invoke noundef ptr @_ZN4Luau15getTypeUserDataEP9lua_Statei(ptr noundef %0, i32 noundef %i.bi)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.bk = invoke noundef ptr @_ZN4Luau11deserializeEPKNS_16TypeFunctionTypeEPNS_31TypeFunctionRuntimeBuilderStateE(ptr noundef %i.bj, ptr noundef nonnull %i.d)
          to label %bb.f unwind label %.loopexit185 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.bl = load i8, ptr @_ZN5FFlag32LuauTypeFunctionStructuredErrorsE, align 8, !tbaa !188, !range !48, !noundef !49
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bn = load ptr, ptr %i.y, align 8, !tbaa !221
  %i.bo = load ptr, ptr %i.z, align 8, !tbaa !221
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.l, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bq = load ptr, ptr %i.w, align 8, !tbaa !223
  %i.br = load ptr, ptr %i.x, align 8, !tbaa !223
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  invoke void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.71, i32 noundef %i.bi) #28
          to label %bb.j unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.d
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.loopexit185:                                     ; preds = %bb.e, %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.loopexit.split-lp:                               ; preds = %bb.i, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.l:                                             ; preds = %bb.h, %bb.g
  %i.bu = load ptr, ptr %i.aa, align 8, !tbaa !180 ; 4 uses
  %i.bv = load ptr, ptr %i.ab, align 8, !tbaa !181
  %.not.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.bk, ptr %i.bu, align 8, !tbaa !136
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  store ptr %i.bw, ptr %i.aa, align 8, !tbaa !180
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit

bb.n:                                             ; preds = %bb.l
  %i.bx = load ptr, ptr %2, align 8, !tbaa !179   ; 4 uses
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 5 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %bb.o, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #28
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.o
  unreachable

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.cc = ashr exact i64 %i.ca, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = call i64 @llvm.umin.i64(i64 %i.cd, i64 1152921504606846975)
  %i.cg = select i1 %i.ce, i64 1152921504606846975, i64 %i.cf ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cg, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #29
          to label %.noexc150 unwind label %.loopexit185 ; 4 uses

.noexc150:                                        ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %i.ca ; 2 uses
  store ptr %i.bk, ptr %i.cj, align 8, !tbaa !136
  %i.ck = icmp sgt i64 %i.ca, 0
  br i1 %i.ck, label %bb.p, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.p:                                             ; preds = %.noexc150
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ci, ptr align 8 %i.bx, i64 %i.ca, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.p, %.noexc150
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.cm = load ptr, ptr %i.ab, align 8, !tbaa !181
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.co) #27
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.ci, ptr %2, align 8, !tbaa !179
  store ptr %i.cl, ptr %i.aa, align 8, !tbaa !180
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg
  store ptr %i.cp, ptr %i.ab, align 8, !tbaa !181
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.m
  %i.cq = phi ptr [ %i.cl, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.bw, %bb.m ]
  %exitcond.not = icmp eq i32 %i.bi, %i.u
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !363

.preheader184:                                    ; preds = %.lr.ph200.prol.loopexit, %.lr.ph200, %._crit_edge
  %.194.lcssa = phi i64 [ %.093, %._crit_edge ], [ %.091198.unr.a, %.lr.ph200.prol.loopexit ], [ %spec.select.3, %.lr.ph200 ]
  %i.cr = icmp ugt i64 %i.av, %.092
  br i1 %i.cr, label %.lr.ph203, label %._crit_edge204

.lr.ph200:                                        ; preds = %.lr.ph200.prol.loopexit, %.lr.ph200
  %.091198 = phi i64 [ %i.di, %.lr.ph200 ], [ %.194197.unr.a, %.lr.ph200.prol.loopexit ] ; 5 uses
  %.194197 = phi i64 [ %spec.select.3, %.lr.ph200 ], [ %spec.select.lcssa.unr, %.lr.ph200.prol.loopexit ]
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.091198
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !138, !range !48, !noundef !49
  %i.cv = zext nneg i8 %i.cu to i64
  %spec.select = add i64 %.194197, %i.cv
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.091198
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !138, !range !48, !noundef !49
  %i.cz = zext nneg i8 %i.cy to i64
  %spec.select.1 = add i64 %spec.select, %i.cz
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.091198
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !138, !range !48, !noundef !49
  %i.dd = zext nneg i8 %i.dc to i64
  %spec.select.2 = add i64 %spec.select.1, %i.dd
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.091198
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 88
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !138, !range !48, !noundef !49
  %i.dh = zext nneg i8 %i.dg to i64
  %spec.select.3 = add i64 %spec.select.2, %i.dh  ; 2 uses
  %i.di = add nuw i64 %.091198, 4                 ; 2 uses
  %exitcond224.not.3 = icmp eq i64 %i.di, %i.an
  br i1 %exitcond224.not.3, label %.preheader184, label %.lr.ph200, !llvm.loop !364

._crit_edge204:                                   ; preds = %.lr.ph203, %.preheader184
  %.1.lcssa = phi i64 [ %.092, %.preheader184 ], [ %spec.select146, %.lr.ph203 ] ; 2 uses
  %i.dj = add i64 %.1.lcssa, 1
  %i.dk = icmp eq i64 %i.dj, %i.av
  %i.dl = select i1 %.not.not, i1 %i.dk, i1 false
  %.not123 = icmp eq i64 %.194.lcssa, %i.an
  %.not124182 = icmp eq i64 %.1.lcssa, %i.av
  %.not124 = select i1 %i.dl, i1 true, i1 %.not124182
  %or.cond = select i1 %.not123, i1 %.not124, i1 false
  br i1 %or.cond, label %bb.u, label %bb.r

.lr.ph203:                                        ; preds = %.preheader184, %.lr.ph203
  %.090202 = phi i64 [ %i.dq, %.lr.ph203 ], [ %.092, %.preheader184 ] ; 2 uses
  %.1201 = phi i64 [ %spec.select146, %.lr.ph203 ], [ %.092, %.preheader184 ]
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %.090202
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !365, !range !48, !noundef !49
  %i.dp = zext nneg i8 %i.do to i64
  %spec.select146 = add i64 %.1201, %i.dp         ; 2 uses
  %i.dq = add nuw i64 %.090202, 1                 ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.av
  br i1 %i.dr, label %.lr.ph203, label %._crit_edge204, !llvm.loop !367

bb.r:                                             ; preds = %._crit_edge204
  invoke void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.72) #28
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.u:                                             ; preds = %._crit_edge204
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !302 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !304
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.sroa.017.0.copyload = load ptr, ptr %i.dv, align 8, !tbaa !368
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN4Luau17saturateArgumentsEPNS_9TypeArenaENS_7NotNullINS_12BuiltinTypesEEERKNS_7TypeFunERKSt6vectorIPKNS_4TypeESaISB_EERKS8_IPKNS_11TypePackVarESaISI_EE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.281") align 8 %3, ptr noundef %i.du, ptr %.sroa.017.0.copyload, ptr noundef nonnull align 8 dereferenceable(76) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dw = load ptr, ptr %4, align 8, !tbaa !199   ; 3 uses
  %.not.i.i.i151 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i151, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !200
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = sub i64 %i.dz, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.eb) #27
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !180 ; 2 uses
  %i.ef = load ptr, ptr %3, align 8, !tbaa !179   ; 2 uses
  %.not211 = icmp eq ptr %i.ee, %i.ef
  br i1 %.not211, label %.preheader, label %.lr.ph207

.preheader:                                       ; preds = %.loopexit183, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !369 ; 2 uses
  %i.ei = load ptr, ptr %i.ec, align 8, !tbaa !199 ; 2 uses
  %.not212 = icmp eq ptr %i.eh, %i.ei
  br i1 %.not212, label %._crit_edge210, label %.lr.ph209

bb.x:                                             ; preds = %bb.u
  %i.ej = landingpad { ptr, i32 }
          cleanup
  %i.ek = load ptr, ptr %4, align 8, !tbaa !199   ; 3 uses
  %.not.i.i.i152 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i152, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit153, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !200
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.ep) #27
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit153

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit153: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.cd

.lr.ph207:                                        ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, %.loopexit183
  %i.eq = phi ptr [ %i.ft, %.loopexit183 ], [ %i.ef, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit ] ; 3 uses
  %i.er = phi ptr [ %i.fu, %.loopexit183 ], [ %i.ee, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit ] ; 2 uses
  %.089206 = phi i64 [ %i.fv, %.loopexit183 ], [ 0, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit ] ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.089206
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !136
  %i.eu = load ptr, ptr %i.a, align 8, !tbaa !358
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.eu, i64 %.089206 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !136 ; 3 uses
  %i.ex = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.ey = load i64, ptr %i.k, align 8, !tbaa !353 ; 2 uses
  %i.ez = urem i64 %i.ex, %i.ey                   ; 3 uses
  %i.fa = load ptr, ptr %i.i, align 8, !tbaa !352
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ez
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !370 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph207
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !371 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !136
  %i.fg = icmp eq ptr %i.ew, %i.ff
  br i1 %i.fg, label %.loopexit183, label %.lr.ph.i.i.i.i

bb.aa:                                            ; preds = %bb.ab
  %i.fh = icmp eq ptr %i.ew, %i.fk
  br i1 %i.fh, label %.loopexit183, label %.lr.ph.i.i.i.i, !llvm.loop !372

.lr.ph.i.i.i.i:                                   ; preds = %bb.z, %bb.aa
  %.020.i.i.i.i = phi ptr [ %i.fi, %bb.aa ], [ %i.fd, %bb.z ]
  %i.fi = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !371 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !136 ; 2 uses
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = urem i64 %i.fl, %i.ey
  %.not19.i.i.i.i = icmp eq i64 %i.fm, %i.ez
  br i1 %.not19.i.i.i.i, label %bb.aa, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !372

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.ab
  br label %.loopexit.i.i, !llvm.loop !372

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %.lr.ph207
  %i.fn = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %.noexc154 unwind label %bb.ac ; 5 uses

.noexc154:                                        ; preds = %.loopexit.i.i
  store ptr null, ptr %i.fn, align 8, !tbaa !371
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.ev, align 8, !tbaa !136
  store ptr %i.fp, ptr %i.fo, align 8, !tbaa !373
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store ptr null, ptr %i.fq, align 8, !tbaa !375
  %i.fr = invoke ptr @_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 noundef %i.ez, i64 noundef %i.ex, ptr noundef nonnull %i.fn, i64 noundef 1)
          to label %.noexc154..loopexit183_crit_edge unwind label %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

.noexc154..loopexit183_crit_edge:                 ; preds = %.noexc154
  %.pre224 = load ptr, ptr %i.ed, align 8, !tbaa !180
  %.pre225 = load ptr, ptr %3, align 8, !tbaa !179
  br label %.loopexit183

_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc154
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef 24) #27
  br label %.body

.loopexit183:                                     ; preds = %bb.aa, %.noexc154..loopexit183_crit_edge, %bb.z
  %i.ft = phi ptr [ %.pre225, %.noexc154..loopexit183_crit_edge ], [ %i.eq, %bb.z ], [ %i.eq, %bb.aa ] ; 2 uses
  %i.fu = phi ptr [ %.pre224, %.noexc154..loopexit183_crit_edge ], [ %i.er, %bb.z ], [ %i.er, %bb.aa ] ; 2 uses
  %.pn.i.i = phi ptr [ %i.fr, %.noexc154..loopexit183_crit_edge ], [ %i.fd, %bb.z ], [ %i.fi, %bb.aa ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store ptr %i.et, ptr %.1.i.i, align 8, !tbaa !136
  %i.fv = add nuw i64 %.089206, 1                 ; 2 uses
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = ptrtoint ptr %i.ft to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = ashr exact i64 %i.fy, 3
  %i.ga = icmp ult i64 %i.fv, %i.fz
  br i1 %i.ga, label %.lr.ph207, label %.preheader, !llvm.loop !376

bb.ac:                                            ; preds = %.loopexit.i.i
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge210:                                   ; preds = %.loopexit, %.preheader
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !164
  %i.ge = invoke { ptr, i8 } @_ZN4Luau12Substitution10substituteEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef %i.gd)
          to label %bb.ah unwind label %bb.ak     ; 2 uses

.lr.ph209:                                        ; preds = %.preheader, %.loopexit
  %i.gf = phi ptr [ %i.hi, %.loopexit ], [ %i.ei, %.preheader ] ; 3 uses
  %i.gg = phi ptr [ %i.hj, %.loopexit ], [ %i.eh, %.preheader ] ; 2 uses
  %.0208 = phi i64 [ %i.hk, %.loopexit ], [ 0, %.preheader ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %.0208
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !298
  %i.gj = load ptr, ptr %i.ao, align 8, !tbaa !360
end_hunk_0
