inline.NumInlined: 2596
inline.NumDeleted: 1514
begin_hunk_0_@_ZN4Luau6ModuleD2Ev:bb.a
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !47 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN4Luau9TypeArenaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !51
  %i.hz = add i64 %i.hy, 1
  tail call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN4Luau9TypeArenaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !47 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !51
  %i.if = add i64 %i.ie, 1
  tail call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  ret void

bb.az:                                            ; preds = %bb.c, %bb.a
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  tail call void @__clang_call_terminate(ptr %i.ih) #26
  unreachable
}

declare void @_ZN4Luau8unfreezeERNS_9TypeArenaE(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau9TypeArenaD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i64, ptr %i.c, align 8, !tbaa !155  ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE7destroyEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i
  %.04.i.i.i.i = phi i64 [ %i.n, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.04.i.i.i.i ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !156, !range !157, !noundef !158
  %i.h = trunc nuw i8 %i.g to i1
  store i8 0, ptr %i.f, align 8, !tbaa !156
  br i1 %i.h, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.l = load i64, ptr %i.j, align 8, !tbaa !51
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #25
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.n = add nuw i64 %.04.i.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.n, %i.d
  br i1 %exitcond.not.i.i.i.i, label %_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyEPS9_m.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !159

_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyEPS9_m.exit.loopexit.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !144
  br label %_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE7destroyEv.exit.i.i

_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE7destroyEv.exit.i.i: ; preds = %_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyEPS9_m.exit.loopexit.i.i.i, %bb.b
  %i.o = phi ptr [ %.pre.i.i.i, %_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyEPS9_m.exit.loopexit.i.i.i ], [ %i.b, %bb.b ]
  tail call void @_ZdlPv(ptr noundef %i.o) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE7destroyEv.exit.i.i, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !156, !range !157, !noundef !158
  %i.r = trunc nuw i8 %i.q to i1
  store i8 0, ptr %i.p, align 8, !tbaa !156
  br i1 %i.r, label %bb.e, label %_ZN4Luau12DenseHashSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt4hashIS8_ESt8equal_toIS8_EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4Luau12DenseHashSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt4hashIS8_ESt8equal_toIS8_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.u, align 8, !tbaa !51
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #25
  br label %_ZN4Luau12DenseHashSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt4hashIS8_ESt8equal_toIS8_EED2Ev.exit

_ZN4Luau12DenseHashSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt4hashIS8_ESt8equal_toIS8_EED2Ev.exit: ; preds = %bb.e, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4Luau14TypedAllocatorINS_11TypePackVarEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.y) #24
  %i.z = load i8, ptr %0, align 8, !tbaa !160, !range !157, !noundef !158
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4Luau12DenseHashSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt4hashIS8_ESt8equal_toIS8_EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !167 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !167 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not7.i.i, label %_ZN4Luau14TypedAllocatorINS_4TypeEE8unfreezeEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.noexc.i
  %.sroa.04.08.i.i = phi ptr [ %i.ag, %.noexc.i ], [ %i.ac, %bb.f ] ; 2 uses
  %i.af = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !168
  invoke void @_ZN4Luau13pagedUnfreezeEPvm(ptr noundef %i.af, i64 noundef 32768)
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.ag, %i.ae
  br i1 %.not.i.i2, label %_ZN4Luau14TypedAllocatorINS_4TypeEE8unfreezeEv.exit.i, label %.lr.ph.i.i

_ZN4Luau14TypedAllocatorINS_4TypeEE8unfreezeEv.exit.i: ; preds = %.noexc.i, %bb.f
  store i8 0, ptr %0, align 8, !tbaa !160
  br label %bb.g

bb.g:                                             ; preds = %_ZN4Luau14TypedAllocatorINS_4TypeEE8unfreezeEv.exit.i, %_ZN4Luau12DenseHashSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt4hashIS8_ESt8equal_toIS8_EED2Ev.exit
  invoke void @_ZN4Luau14TypedAllocatorINS_4TypeEE4freeEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.h unwind label %.loopexit.split-lp.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !169 ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i1, label %_ZN4Luau14TypedAllocatorINS_4TypeEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !170
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #25
  br label %_ZN4Luau14TypedAllocatorINS_4TypeEED2Ev.exit

.loopexit.i:                                      ; preds = %.lr.ph.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ao = extractvalue { ptr, i32 } %lpad.phi.i, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #26
  unreachable

_ZN4Luau14TypedAllocatorINS_4TypeEED2Ev.exit:     ; preds = %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6Module20clonePublicInterfaceENS_7NotNullINS_12BuiltinTypesEEERNS_21InternalErrorReporterENS_10SolverModeE(ptr noundef nonnull align 8 dereferenceable(1097) %0, ptr %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %2, i32 noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"struct.Luau::UnificationTooComplex", align 1 ; 3 uses
  %5 = alloca %"struct.Luau::UnificationTooComplex", align 1 ; 3 uses
  %6 = alloca %"struct.Luau::UnificationTooComplex", align 1 ; 3 uses
  %7 = alloca %"struct.Luau::CloneState", align 8 ; 18 uses
  %8 = alloca %"class.std::shared_ptr.158", align 8 ; 7 uses
  %9 = alloca %"struct.Luau::TxnLog", align 8     ; 15 uses
  %10 = alloca %"struct.Luau::ClonePublicInterface", align 8 ; 23 uses
  %11 = alloca %"struct.Luau::TypeFun", align 16  ; 11 uses
  %12 = alloca %"struct.Luau::TypeFun", align 16  ; 11 uses
  %13 = alloca %"struct.Luau::Location", align 4  ; 5 uses
  %14 = alloca %"struct.Luau::InternalError", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %1, ptr %7, align 8, !tbaa !171
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !173
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store i64 1, ptr %i.e, align 8, !tbaa !175
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !176
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, i8 0, i64 56, i1 false)
  store ptr %i.j, ptr %i.i, align 8, !tbaa !177
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 3 uses
  store i64 1, ptr %i.k, align 8, !tbaa !179
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.m, align 8, !tbaa !176
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183, !noalias !180 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !184, !noalias !180 ; 3 uses
  store ptr %i.r, ptr %8, align 8, !tbaa !184, !alias.scope !180
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131, !noalias !180 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !131, !alias.scope !180
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNK4Luau6Module14getModuleScopeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51, !noalias !180
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr %i.v, align 4, !tbaa !9, !noalias !180
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !9, !noalias !180
  br label %_ZNK4Luau6Module14getModuleScopeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4, !noalias !180 ; 0 uses
  %.pre = load ptr, ptr %8, align 8, !tbaa !184
  br label %_ZNK4Luau6Module14getModuleScopeEv.exit

_ZNK4Luau6Module14getModuleScopeEv.exit:          ; preds = %bb.a, %bb.c, %bb.d
  %i.aa = phi ptr [ %i.r, %bb.a ], [ %i.r, %bb.c ], [ %.pre, %bb.d ] ; 9 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !187
  %i.ad = icmp eq i32 %3, 1
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4Luau6Module14getModuleScopeEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %.sroa.087.0.copyload = load ptr, ptr %i.ae, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 113
  %.sroa.10.sroa.0.0.copyload = load <7 x i8>, ptr %.sroa.10.0..sroa_idx, align 1
  %i.af = trunc nuw i8 %.sroa.7.0.copyload to i1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK4Luau6Module14getModuleScopeEv.exit
  %.sroa.10.sroa.0.0 = phi <7 x i8> [ undef, %_ZNK4Luau6Module14getModuleScopeEv.exit ], [ %.sroa.10.sroa.0.0.copyload, %bb.e ]
  %.sroa.087.0 = phi ptr [ undef, %_ZNK4Luau6Module14getModuleScopeEv.exit ], [ %.sroa.087.0.copyload, %bb.e ]
  %.sroa.7.0 = phi i1 [ false, %_ZNK4Luau6Module14getModuleScopeEv.exit ], [ %i.af, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %9, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ah, i8 0, i64 33, i1 false)
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZN4Luau12SubstitutionC2EPKNS_6TxnLogEPNS_9TypeArenaE(ptr noundef nonnull align 8 dereferenceable(493) %10, ptr noundef nonnull %9, ptr noundef nonnull %i.ak)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4Luau20ClonePublicInterfaceE, i64 16), ptr %10, align 8, !tbaa !135
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 472 ; 4 uses
  store ptr %1, ptr %i.al, align 8, !tbaa !171
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 480 ; 4 uses
  store ptr %0, ptr %i.am, align 8, !tbaa !254
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 488
  store i32 %3, ptr %i.an, align 8, !tbaa !257
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 492 ; 2 uses
  store i8 0, ptr %i.ao, align 4, !tbaa !303
  %i.ap = invoke { ptr, i8 } @_ZN4Luau12Substitution10substituteEPKNS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(493) %10, ptr noundef %i.ac)
          to label %.noexc unwind label %bb.n     ; 2 uses

.noexc:                                           ; preds = %bb.g
  %i.aq = extractvalue { ptr, i8 } %i.ap, 0
  %i.ar = extractvalue { ptr, i8 } %i.ap, 1
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZN4Luau20ClonePublicInterface13cloneTypePackEPKNS_11TypePackVarE.exit, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !254 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 312
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !127 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 864 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !57 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 872
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !61
  %.not.i.i = icmp eq ptr %i.ax, %i.az
  br i1 %.not.i.i, label %bb.i, label %_ZNSt15__new_allocatorIN4Luau9TypeErrorEE9constructIS1_JRNS0_8LocationENS0_21UnificationTooComplexEEEEvPT_DpOT0_.exit.i.i

_ZNSt15__new_allocatorIN4Luau9TypeErrorEE9constructIS1_JRNS0_8LocationENS0_21UnificationTooComplexEEEEvPT_DpOT0_.exit.i.i: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ax, ptr noundef nonnull align 4 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !304
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !305
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i64 0, ptr %i.bc, align 8, !tbaa !306
  store i8 0, ptr %i.bb, align 8, !tbaa !51
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  store i32 16, ptr %i.bd, align 8, !tbaa !58
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !57
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 184
  store ptr %i.bf, ptr %i.aw, align 8, !tbaa !57
  br label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 856
  invoke void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE17_M_realloc_insertIJRNS0_8LocationENS0_21UnificationTooComplexEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr %i.ax, ptr noundef nonnull align 4 dereferenceable(16) %i.av, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i unwind label %bb.n

_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i: ; preds = %bb.i, %_ZNSt15__new_allocatorIN4Luau9TypeErrorEE9constructIS1_JRNS0_8LocationENS0_21UnificationTooComplexEEEEvPT_DpOT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.bh = load ptr, ptr %i.al, align 8, !tbaa !307
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 264
  %.0.in.sroa.speculate.load._ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i = load ptr, ptr %i.bi, align 8, !tbaa !308
  br label %_ZN4Luau20ClonePublicInterface13cloneTypePackEPKNS_11TypePackVarE.exit

_ZN4Luau20ClonePublicInterface13cloneTypePackEPKNS_11TypePackVarE.exit: ; preds = %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i, %.noexc
  %.0.in.sroa.speculated.i = phi ptr [ %.0.in.sroa.speculate.load._ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i, %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i ], [ %i.aq, %.noexc ]
  store ptr %.0.in.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !187
  br i1 %.sroa.7.0, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_ZN4Luau20ClonePublicInterface13cloneTypePackEPKNS_11TypePackVarE.exit
  %i.bj = invoke { ptr, i8 } @_ZN4Luau12Substitution10substituteEPKNS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(493) %10, ptr noundef %.sroa.087.0)
          to label %.noexc40 unwind label %bb.o   ; 2 uses

.noexc40:                                         ; preds = %bb.j
  %i.bk = extractvalue { ptr, i8 } %i.bj, 0
  %i.bl = extractvalue { ptr, i8 } %i.bj, 1
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZN4Luau20ClonePublicInterface13cloneTypePackEPKNS_11TypePackVarE.exit42, label %bb.k

bb.k:                                             ; preds = %.noexc40
  %i.bn = load ptr, ptr %i.am, align 8, !tbaa !254 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 312
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !127 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 864 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !57 ; 7 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 872
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !61
  %.not.i.i35 = icmp eq ptr %i.br, %i.bt
  br i1 %.not.i.i35, label %bb.l, label %_ZNSt15__new_allocatorIN4Luau9TypeErrorEE9constructIS1_JRNS0_8LocationENS0_21UnificationTooComplexEEEEvPT_DpOT0_.exit.i.i36

_ZNSt15__new_allocatorIN4Luau9TypeErrorEE9constructIS1_JRNS0_8LocationENS0_21UnificationTooComplexEEEEvPT_DpOT0_.exit.i.i36: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.br, ptr noundef nonnull align 4 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !304
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 2 uses
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !305
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store i64 0, ptr %i.bw, align 8, !tbaa !306
  store i8 0, ptr %i.bv, align 8, !tbaa !51
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  store i32 16, ptr %i.bx, align 8, !tbaa !58
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !57
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 184
  store ptr %i.bz, ptr %i.bq, align 8, !tbaa !57
  br label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i37

bb.l:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 856
  invoke void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE17_M_realloc_insertIJRNS0_8LocationENS0_21UnificationTooComplexEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr %i.br, ptr noundef nonnull align 4 dereferenceable(16) %i.bp, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i37 unwind label %bb.o

_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i37: ; preds = %bb.l, %_ZNSt15__new_allocatorIN4Luau9TypeErrorEE9constructIS1_JRNS0_8LocationENS0_21UnificationTooComplexEEEEvPT_DpOT0_.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.cb = load ptr, ptr %i.al, align 8, !tbaa !307
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 264
  %.0.in.sroa.speculate.load._ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i38 = load ptr, ptr %i.cc, align 8, !tbaa !308
  br label %_ZN4Luau20ClonePublicInterface13cloneTypePackEPKNS_11TypePackVarE.exit42

_ZN4Luau20ClonePublicInterface13cloneTypePackEPKNS_11TypePackVarE.exit42: ; preds = %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i37, %.noexc40
  %.0.in.sroa.speculated.i39 = phi ptr [ %.0.in.sroa.speculate.load._ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i38, %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i37 ], [ %i.bk, %.noexc40 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  store ptr %.0.in.sroa.speculated.i39, ptr %i.cd, align 8
  %.sroa.7.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  store i8 1, ptr %.sroa.7.0..sroa_idx89, align 8
  %.sroa.10.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.aa, i64 113
  store <7 x i8> %.sroa.10.sroa.0.0, ptr %.sroa.10.0..sroa_idx91, align 1
  br label %bb.p

bb.m:                                             ; preds = %bb.f
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.n:                                             ; preds = %bb.aj, %bb.i, %bb.g
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.o:                                             ; preds = %bb.l, %bb.j
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.p:                                             ; preds = %_ZN4Luau20ClonePublicInterface13cloneTypePackEPKNS_11TypePackVarE.exit42, %_ZN4Luau20ClonePublicInterface13cloneTypePackEPKNS_11TypePackVarE.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  %.sroa.083.095 = load ptr, ptr %i.ch, align 8, !tbaa !64 ; 2 uses
  %.not96 = icmp eq ptr %.sroa.083.095, null
  br i1 %.not96, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  br label %bb.q

._crit_edge:                                      ; preds = %_ZN4Luau7TypeFunD2Ev.exit, %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 816
  %.sroa.079.098 = load ptr, ptr %i.cm, align 8, !tbaa !64 ; 2 uses
  %.not9399 = icmp eq ptr %.sroa.079.098, null
  br i1 %.not9399, label %._crit_edge103, label %.lr.ph102

bb.q:                                             ; preds = %.lr.ph, %_ZN4Luau7TypeFunD2Ev.exit
  %.sroa.083.097 = phi ptr [ %.sroa.083.095, %.lr.ph ], [ %.sroa.083.0, %_ZN4Luau7TypeFunD2Ev.exit ] ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.083.097, i64 40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  invoke void @_ZN4Luau20ClonePublicInterface12cloneTypeFunERKNS_7TypeFunE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeFun") align 8 %11, ptr noundef nonnull align 8 dereferenceable(493) %10, ptr noundef nonnull align 8 dereferenceable(76) %i.cn)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !78 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.083.097, i64 56 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !81
  %i.cr = load <2 x ptr>, ptr %11, align 16, !tbaa !309
  store <2 x ptr> %i.cr, ptr %i.cn, align 8, !tbaa !309
  %i.cs = load ptr, ptr %i.ci, align 16, !tbaa !81
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !81
  %.not.i.i.i.i.i.i = icmp eq ptr %i.co, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %11, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEaSEOS3_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = ptrtoint ptr %i.co to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cv) #25
  br label %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEaSEOS3_.exit.i

_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEaSEOS3_.exit.i: ; preds = %bb.s, %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.083.097, i64 64 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !74 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.083.097, i64 80 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !77
  %i.da = load <2 x ptr>, ptr %i.cj, align 8, !tbaa !310
  store <2 x ptr> %i.da, ptr %i.cw, align 8, !tbaa !310
  %i.db = load ptr, ptr %i.ck, align 8, !tbaa !77
  store ptr %i.db, ptr %i.cy, align 8, !tbaa !77
  %.not.i.i.i.i.i4.i = icmp eq ptr %i.cx, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i4.i, label %_ZN4Luau7TypeFunaSEOS0_.exit.thread, label %_ZN4Luau7TypeFunaSEOS0_.exit

_ZN4Luau7TypeFunaSEOS0_.exit.thread:              ; preds = %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEaSEOS3_.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.083.097, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dc, ptr noundef nonnull align 16 dereferenceable(28) %i.cl, i64 28, i1 false)
  br label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i

_ZN4Luau7TypeFunaSEOS0_.exit:                     ; preds = %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEaSEOS3_.exit.i
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = ptrtoint ptr %i.cx to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.df) #25
  %.pr = load ptr, ptr %i.cj, align 8, !tbaa !74  ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.083.097, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dg, ptr noundef nonnull align 16 dereferenceable(28) %i.cl, i64 28, i1 false)
  %.not.i.i.i.i43 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i43, label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN4Luau7TypeFunaSEOS0_.exit
  %i.dh = load ptr, ptr %i.ck, align 8, !tbaa !77
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %.pr to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.dk) #25
  br label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i: ; preds = %_ZN4Luau7TypeFunaSEOS0_.exit.thread, %bb.t, %_ZN4Luau7TypeFunaSEOS0_.exit
  %i.dl = load ptr, ptr %11, align 16, !tbaa !78  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i1.i, label %_ZN4Luau7TypeFunD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i
  %i.dm = load ptr, ptr %i.ci, align 16, !tbaa !81
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dp) #25
  br label %_ZN4Luau7TypeFunD2Ev.exit

_ZN4Luau7TypeFunD2Ev.exit:                        ; preds = %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %.sroa.083.0 = load ptr, ptr %.sroa.083.097, align 8, !tbaa !64 ; 2 uses
  %.not = icmp eq ptr %.sroa.083.0, null
  br i1 %.not, label %._crit_edge, label %bb.q

bb.v:                                             ; preds = %bb.q
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.bg

._crit_edge103:                                   ; preds = %_ZN4Luau20ClonePublicInterface9cloneTypeEPKNS_4TypeE.exit, %._crit_edge
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !311 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !311 ; 2 uses
  %.not94104 = icmp eq ptr %i.ds, %i.du
  br i1 %.not94104, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %._crit_edge103
  %i.dv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  br label %bb.z

.lr.ph102:                                        ; preds = %._crit_edge, %_ZN4Luau20ClonePublicInterface9cloneTypeEPKNS_4TypeE.exit
  %.sroa.079.0100 = phi ptr [ %.sroa.079.0, %_ZN4Luau20ClonePublicInterface9cloneTypeEPKNS_4TypeE.exit ], [ %.sroa.079.098, %._crit_edge ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.079.0100, i64 40 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !168
  %i.eb = invoke { ptr, i8 } @_ZN4Luau12Substitution10substituteEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(493) %10, ptr noundef %i.ea)
          to label %.noexc49 unwind label %bb.y   ; 2 uses

.noexc49:                                         ; preds = %.lr.ph102
  %i.ec = extractvalue { ptr, i8 } %i.eb, 0
  %i.ed = extractvalue { ptr, i8 } %i.eb, 1
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %_ZN4Luau20ClonePublicInterface9cloneTypeEPKNS_4TypeE.exit, label %bb.w

bb.w:                                             ; preds = %.noexc49
  %i.ef = load ptr, ptr %i.am, align 8, !tbaa !254 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 312
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !127 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 864 ; 3 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !57 ; 7 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 872
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !61
  %.not.i.i44 = icmp eq ptr %i.ej, %i.el
  br i1 %.not.i.i44, label %bb.x, label %_ZNSt15__new_allocatorIN4Luau9TypeErrorEE9constructIS1_JRNS0_8LocationENS0_21UnificationTooComplexEEEEvPT_DpOT0_.exit.i.i45

_ZNSt15__new_allocatorIN4Luau9TypeErrorEE9constructIS1_JRNS0_8LocationENS0_21UnificationTooComplexEEEEvPT_DpOT0_.exit.i.i45: ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ej, ptr noundef nonnull align 4 dereferenceable(16) %i.eh, i64 16, i1 false), !tbaa.struct !304
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 32 ; 2 uses
  store ptr %i.en, ptr %i.em, align 8, !tbaa !305
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store i64 0, ptr %i.eo, align 8, !tbaa !306
  store i8 0, ptr %i.en, align 8, !tbaa !51
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  store i32 16, ptr %i.ep, align 8, !tbaa !58
  %i.eq = load ptr, ptr %i.ei, align 8, !tbaa !57
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 184
  store ptr %i.er, ptr %i.ei, align 8, !tbaa !57
  br label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i46

bb.x:                                             ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %i.ef, i64 856
  invoke void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE17_M_realloc_insertIJRNS0_8LocationENS0_21UnificationTooComplexEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr %i.ej, ptr noundef nonnull align 4 dereferenceable(16) %i.eh, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i46 unwind label %bb.y

_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i46: ; preds = %bb.x, %_ZNSt15__new_allocatorIN4Luau9TypeErrorEE9constructIS1_JRNS0_8LocationENS0_21UnificationTooComplexEEEEvPT_DpOT0_.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.et = load ptr, ptr %i.al, align 8, !tbaa !307
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 168
  %.0.in.sroa.speculate.load._ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i47 = load ptr, ptr %i.eu, align 8, !tbaa !168
  br label %_ZN4Luau20ClonePublicInterface9cloneTypeEPKNS_4TypeE.exit

_ZN4Luau20ClonePublicInterface9cloneTypeEPKNS_4TypeE.exit: ; preds = %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i46, %.noexc49
  %.0.in.sroa.speculated.i48 = phi ptr [ %.0.in.sroa.speculate.load._ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i47, %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i46 ], [ %i.ec, %.noexc49 ]
  store ptr %.0.in.sroa.speculated.i48, ptr %i.dz, align 8, !tbaa !168
  %.sroa.079.0 = load ptr, ptr %.sroa.079.0100, align 8, !tbaa !64 ; 2 uses
  %.not93 = icmp eq ptr %.sroa.079.0, null
  br i1 %.not93, label %._crit_edge103, label %.lr.ph102

bb.y:                                             ; preds = %bb.x, %.lr.ph102
  %i.ev = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN4Luau6Module20clonePublicInterfaceENS_7NotNullINS_12BuiltinTypesEEERNS_21InternalErrorReporterENS_10SolverModeE:bb.a
  br i1 %.not.i.i.i, label %_ZN4Luau12DenseHashSetIPKNS_11TypePackVarENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEaSERKSG_.exit
  call void @_ZdlPv(ptr noundef nonnull %i.hc) #24
  br label %_ZN4Luau12DenseHashSetIPKNS_11TypePackVarENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i

_ZN4Luau12DenseHashSetIPKNS_11TypePackVarENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i: ; preds = %bb.ak, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEaSERKSG_.exit
  %i.hd = getelementptr inbounds nuw i8, ptr %10, i64 392
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !369 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i1.i, label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZN4Luau12DenseHashSetIPKNS_11TypePackVarENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.he) #24
  br label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i

_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i: ; preds = %bb.al, %_ZN4Luau12DenseHashSetIPKNS_11TypePackVarENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i
  %i.hf = getelementptr inbounds nuw i8, ptr %10, i64 352
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !368 ; 2 uses
  %.not.i.i2.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i2.i, label %_ZN4Luau12DenseHashSetIPKNS_11TypePackVarENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit3.i, label %bb.am

bb.am:                                            ; preds = %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.hg) #24
  br label %_ZN4Luau12DenseHashSetIPKNS_11TypePackVarENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit3.i

_ZN4Luau12DenseHashSetIPKNS_11TypePackVarENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit3.i: ; preds = %bb.am, %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i
  %i.hh = getelementptr inbounds nuw i8, ptr %10, i64 312
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !369 ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i4.i, label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit5.i, label %bb.an

bb.an:                                            ; preds = %_ZN4Luau12DenseHashSetIPKNS_11TypePackVarENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit3.i
  call void @_ZdlPv(ptr noundef nonnull %i.hi) #24
  br label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit5.i

_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit5.i: ; preds = %bb.an, %_ZN4Luau12DenseHashSetIPKNS_11TypePackVarENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit3.i
  %i.hj = getelementptr inbounds nuw i8, ptr %10, i64 272
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !370 ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i6.i, label %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit5.i
  call void @_ZdlPv(ptr noundef nonnull %i.hk) #24
  br label %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i

_ZN4Luau12DenseHashMapIPKNS_11TypePackVarES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i: ; preds = %bb.ao, %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit5.i
  %i.hl = getelementptr inbounds nuw i8, ptr %10, i64 232
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !371 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i7.i, label %_ZN4Luau12SubstitutionD2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.hm) #24
  br label %_ZN4Luau12SubstitutionD2Ev.exit

_ZN4Luau12SubstitutionD2Ev.exit:                  ; preds = %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i, %bb.ap
  call void @_ZN4Luau6TarjanD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(493) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.hn = load ptr, ptr %i.ai, align 8, !tbaa !372 ; 3 uses
  %.not.i.i.i.i64 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i.i64, label %_ZNSt6vectorISt4pairIPKvS2_ESaIS3_EED2Ev.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN4Luau12SubstitutionD2Ev.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !373
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = ptrtoint ptr %i.hn to i64
  %i.hs = sub i64 %i.hq, %i.hr
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.hs) #25
  br label %_ZNSt6vectorISt4pairIPKvS2_ESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPKvS2_ESaIS3_EED2Ev.exit.i:  ; preds = %bb.aq, %_ZN4Luau12SubstitutionD2Ev.exit
  %i.ht = load ptr, ptr %i.ag, align 8, !tbaa !374 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i65, label %_ZN4Luau6TxnLogD2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIPKvS2_ESaIS3_EED2Ev.exit.i
  %i.hu = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !375 ; 2 uses
  %.not.i.i.i.i.i66 = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i.i.i.i66, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ar, %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  %.04.i.i.i.i.i = phi i64 [ %i.ig, %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ 0, %bb.ar ] ; 2 uses
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %.04.i.i.i.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !376 ; 4 uses
  %.not.i.i.i.i.i.i67 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i.i.i.i67, label %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !378
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.ia
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !10
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  invoke void %i.ic(ptr noundef nonnull %i.id)
          to label %_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i.i.i.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  %i.if = extractvalue { ptr, i32 } %i.ie, 0
  call void @__clang_call_terminate(ptr %i.if) #26
  unreachable

_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.as
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef 88) #25
  br label %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ig = add nuw i64 %.04.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ig, %i.hv
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN4Luau6detail16ItemInterfaceMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS6_EEE7destroyEPSt4pairIS4_S9_Em.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !380

_ZN4Luau6detail16ItemInterfaceMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS6_EEE7destroyEPSt4pairIS4_S9_Em.exit.loopexit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !374
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i.i.i

_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i.i.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS6_EEE7destroyEPSt4pairIS4_S9_Em.exit.loopexit.i.i.i.i, %bb.ar
  %i.ih = phi ptr [ %.pre.i.i.i.i, %_ZN4Luau6detail16ItemInterfaceMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS6_EEE7destroyEPSt4pairIS4_S9_Em.exit.loopexit.i.i.i.i ], [ %i.ht, %bb.ar ]
  call void @_ZdlPv(ptr noundef %i.ih) #24
  br label %_ZN4Luau6TxnLogD2Ev.exit

_ZN4Luau6TxnLogD2Ev.exit:                         ; preds = %_ZNSt6vectorISt4pairIPKvS2_ESaIS3_EED2Ev.exit.i, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i.i.i
  %i.ii = load ptr, ptr %9, align 8, !tbaa !381   ; 3 uses
  %.not.i = icmp eq ptr %i.ii, null
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZN4Luau6TxnLogD2Ev.exit
  %i.ij = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !382 ; 2 uses
  %.not.i.i.i72 = icmp eq i64 %i.ik, 0
  br i1 %.not.i.i.i72, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.au, %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %.04.i.i.i = phi i64 [ %i.je, %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i.i ], [ 0, %bb.au ] ; 2 uses
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.ii, i64 %.04.i.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !383 ; 7 uses
  %.not.i.i.i.i73 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i.i73, label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 376 ; 2 uses
  %i.ip = load i8, ptr %i.io, align 8, !tbaa !156, !range !157, !noundef !158
  %i.iq = trunc nuw i8 %i.ip to i1
  store i8 0, ptr %i.io, align 8, !tbaa !156
  br i1 %i.iq, label %bb.aw, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 344
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !47 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 360 ; 2 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aw
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !51
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iw) #25
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.av
  %i.ix = load i32, ptr %i.in, align 8, !tbaa !385
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.iy
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !10
  %i.jb = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  invoke void %i.ja(ptr noundef nonnull %i.jb)
          to label %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i.i unwind label %bb.ax

bb.ax:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i
  %i.jc = landingpad { ptr, i32 }
          catch ptr null
  %i.jd = extractvalue { ptr, i32 } %i.jc, 0
  call void @__clang_call_terminate(ptr %i.jd) #26
  unreachable

_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef 400) #25
  br label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.je = add nuw i64 %.04.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.je, %i.ik
  br i1 %exitcond.not.i.i.i, label %_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE7destroyEPSt4pairIS4_S9_Em.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !387

_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE7destroyEPSt4pairIS4_S9_Em.exit.loopexit.i.i: ; preds = %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %9, align 8, !tbaa !381
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE7destroyEPSt4pairIS4_S9_Em.exit.loopexit.i.i, %bb.au
  %i.jf = phi ptr [ %.pre.i.i, %_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE7destroyEPSt4pairIS4_S9_Em.exit.loopexit.i.i ], [ %i.ii, %bb.au ]
  call void @_ZdlPv(ptr noundef %i.jf) #24
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev.exit: ; preds = %_ZN4Luau6TxnLogD2Ev.exit, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.jg = load ptr, ptr %i.s, align 8, !tbaa !131 ; 8 uses
  %.not.i.i68 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i68, label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev.exit
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 4 uses
  %i.ji = load atomic i64, ptr %i.jh acquire, align 8 ; 2 uses
  %i.jj = icmp eq i64 %i.ji, 4294967297
  %i.jk = trunc i64 %i.ji to i32                  ; 2 uses
  br i1 %i.jj, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.jh, align 8, !tbaa !132
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  store i32 0, ptr %i.jl, align 4, !tbaa !134
  %i.jm = load ptr, ptr %i.jg, align 8, !tbaa !135
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #24, !inline_history !388
  %i.jp = load ptr, ptr %i.jg, align 8, !tbaa !135
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #24, !inline_history !388
  br label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  %i.js = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i69 = icmp eq i8 %i.js, 0
  br i1 %.not.i.i.i69, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jt = add nsw i32 %i.jk, -1
  store i32 %i.jt, ptr %i.jh, align 8, !tbaa !9
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.ju = atomicrmw volatile add ptr %i.jh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i = phi i32 [ %i.jk, %bb.bb ], [ %i.ju, %bb.bc ]
  %i.jv = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.jv, label %bb.bd, label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !138

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #24
  br label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev.exit, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.jw = load ptr, ptr %i.l, align 8, !tbaa !389 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.jw, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.lr.ph.i.i.i.i.i70
  %.06.i.i.i.i.i = phi ptr [ %i.jx, %.lr.ph.i.i.i.i.i70 ], [ %i.jw, %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.jx = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !64 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #25
  %.not.i.i.i.i.i71 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i.i.i71, label %_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i70, !llvm.loop !390

_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i70, %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.jy = load ptr, ptr %i.i, align 8, !tbaa !177
  %i.jz = load i64, ptr %i.k, align 8, !tbaa !179
  %i.ka = shl i64 %i.jz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.jy, i8 0, i64 %i.ka, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.kb = load ptr, ptr %i.i, align 8, !tbaa !177 ; 2 uses
  %i.kc = icmp eq ptr %i.kb, %i.j
  br i1 %i.kc, label %_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.kd = load i64, ptr %i.k, align 8, !tbaa !179
  %i.ke = shl i64 %i.kd, 3
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.ke) #25
  br label %_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i

_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i: ; preds = %bb.be, %_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.kf = load ptr, ptr %i.f, align 8, !tbaa !391 ; 2 uses
  %.not5.i.i.i.i1.i = icmp eq ptr %i.kf, null
  br i1 %.not5.i.i.i.i1.i, label %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i2.i

.lr.ph.i.i.i.i2.i:                                ; preds = %_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i, %.lr.ph.i.i.i.i2.i
  %.06.i.i.i.i3.i = phi ptr [ %i.kg, %.lr.ph.i.i.i.i2.i ], [ %i.kf, %_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i ] ; 2 uses
  %i.kg = load ptr, ptr %.06.i.i.i.i3.i, align 8, !tbaa !64 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i3.i, i64 noundef 24) #25
  %.not.i.i.i.i4.i = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.i.i4.i, label %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i2.i, !llvm.loop !392

_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i2.i, %_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i
  %i.kh = load ptr, ptr %i.b, align 8, !tbaa !173
  %i.ki = load i64, ptr %i.e, align 8, !tbaa !175
  %i.kj = shl i64 %i.ki, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.kh, i8 0, i64 %i.kj, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.kk = load ptr, ptr %i.b, align 8, !tbaa !173 ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.d
  br i1 %i.kl, label %_ZN4Luau10CloneStateD2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.km = load i64, ptr %i.e, align 8, !tbaa !175
  %i.kn = shl i64 %i.km, 3
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.kn) #25
  br label %_ZN4Luau10CloneStateD2Ev.exit

_ZN4Luau10CloneStateD2Ev.exit:                    ; preds = %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void

bb.bg:                                            ; preds = %_ZN4Luau13InternalErrorD2Ev.exit62, %bb.ae, %bb.y, %bb.v, %bb.o, %bb.n
  %.pn30 = phi { ptr, i32 } [ %i.dq, %bb.v ], [ %i.ev, %bb.y ], [ %i.gd, %bb.ae ], [ %i.cf, %bb.n ], [ %.pn, %_ZN4Luau13InternalErrorD2Ev.exit62 ], [ %i.cg, %bb.o ]
  call void @_ZN4Luau12SubstitutionD2Ev(ptr noundef nonnull align 8 dead_on_return(493) dereferenceable(493) %10) #24
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.m
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.bg ], [ %i.ce, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @_ZN4Luau6TxnLogD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @_ZN4Luau10CloneStateD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress norecurse nounwind uwtable
define dso_local void @_ZNK4Luau6Module14getModuleScopeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.158") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1097) %1) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131  ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !10
  store <2 x ptr> %i.f, ptr %0, align 8, !tbaa !10
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN4Luau5ScopeEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !9
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !9
  br label %_ZNSt10shared_ptrIN4Luau5ScopeEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4Luau5ScopeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN4Luau5ScopeEEC2ERKS2_.exit:    ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau20ClonePublicInterface12cloneTypeFunERKNS_7TypeFunE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::TypeFun") align 8 %0, ptr noundef nonnull align 8 dereferenceable(493) %1, ptr noundef nonnull align 8 dereferenceable(76) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::UnificationTooComplex", align 1 ; 3 uses
  %4 = alloca %"struct.Luau::UnificationTooComplex", align 1 ; 3 uses
  %5 = alloca %"struct.Luau::UnificationTooComplex", align 1 ; 3 uses
  %6 = alloca %"struct.Luau::UnificationTooComplex", align 1 ; 3 uses
  %7 = alloca %"struct.Luau::UnificationTooComplex", align 1 ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !309    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !309  ; 2 uses
  %.not196 = icmp eq ptr %i.a, %i.c
  br i1 %.not196, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EE9push_backEOS1_.exit, %bb.a
  %.sroa.15143.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.15143.1, %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.10140.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.10140.1, %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EE9push_backEOS1_.exit ]
  %.sroa.0136.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0136.1, %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !310  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !310  ; 2 uses
  %.not153204 = icmp eq ptr %i.g, %i.i
  br i1 %.not153204, label %._crit_edge212, label %.lr.ph211

.lr.ph211:                                        ; preds = %._crit_edge
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 2 uses
  br label %bb.p

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EE9push_backEOS1_.exit
  %.sroa.0136.0201 = phi ptr [ null, %.lr.ph ], [ %.sroa.0136.1, %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EE9push_backEOS1_.exit ] ; 10 uses
  %.sroa.10140.0200 = phi ptr [ null, %.lr.ph ], [ %.sroa.10140.1, %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EE9push_backEOS1_.exit ] ; 10 uses
  %.sroa.15143.0199 = phi ptr [ null, %.lr.ph ], [ %.sroa.15143.1, %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %.sroa.0124.0198 = phi ptr [ %i.a, %.lr.ph ], [ %i.br, %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %.sroa.0114.0197 = phi ptr [ undef, %.lr.ph ], [ %.sroa.0114.1, %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EE9push_backEOS1_.exit ]
  %.sroa.0119.0.copyload = load ptr, ptr %.sroa.0124.0198, align 8
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0124.0198, i64 8
  %.sroa.5120.0.copyload = load ptr, ptr %.sroa.5120.0..sroa_idx, align 8
  %.sroa.6121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0124.0198, i64 16
  %.sroa.6121.0.copyload = load i8, ptr %.sroa.6121.0..sroa_idx, align 8
  %i.l = invoke { ptr, i8 } @_ZN4Luau12Substitution10substituteEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(493) %1, ptr noundef %.sroa.0119.0.copyload)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.m = extractvalue { ptr, i8 } %i.l, 0
  %i.n = extractvalue { ptr, i8 } %i.l, 1
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN4Luau20ClonePublicInterface9cloneTypeEPKNS_4TypeE.exit, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !254  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 312
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !127  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 864 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !57   ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 872
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !61
  %.not.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not.i.i, label %bb.d, label %_ZNSt15__new_allocatorIN4Luau9TypeErrorEE9constructIS1_JRNS0_8LocationENS0_21UnificationTooComplexEEEEvPT_DpOT0_.exit.i.i

_ZNSt15__new_allocatorIN4Luau9TypeErrorEE9constructIS1_JRNS0_8LocationENS0_21UnificationTooComplexEEEEvPT_DpOT0_.exit.i.i: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.t, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !304
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !305
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 0, ptr %i.y, align 8, !tbaa !306
  store i8 0, ptr %i.x, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store i32 16, ptr %i.z, align 8, !tbaa !58
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !57
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 184
  store ptr %i.ab, ptr %i.s, align 8, !tbaa !57
  br label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 856
  invoke void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE17_M_realloc_insertIJRNS0_8LocationENS0_21UnificationTooComplexEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(16) %i.r, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i unwind label %bb.h

_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i: ; preds = %bb.d, %_ZNSt15__new_allocatorIN4Luau9TypeErrorEE9constructIS1_JRNS0_8LocationENS0_21UnificationTooComplexEEEEvPT_DpOT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !307
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 168
  %.0.in.sroa.speculate.load._ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i = load ptr, ptr %i.ae, align 8, !tbaa !168
  br label %_ZN4Luau20ClonePublicInterface9cloneTypeEPKNS_4TypeE.exit

_ZN4Luau20ClonePublicInterface9cloneTypeEPKNS_4TypeE.exit: ; preds = %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i, %.noexc
  %.0.in.sroa.speculated.i = phi ptr [ %.0.in.sroa.speculate.load._ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i, %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i ], [ %i.m, %.noexc ] ; 2 uses
  %i.af = trunc nuw i8 %.sroa.6121.0.copyload to i1
  br i1 %i.af, label %bb.e, label %_ZN4Luau20ClonePublicInterface9cloneTypeEPKNS_4TypeE.exit32

bb.e:                                             ; preds = %_ZN4Luau20ClonePublicInterface9cloneTypeEPKNS_4TypeE.exit
  %i.ag = invoke { ptr, i8 } @_ZN4Luau12Substitution10substituteEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(493) %1, ptr noundef %.sroa.5120.0.copyload)
          to label %.noexc30 unwind label %bb.i   ; 2 uses

.noexc30:                                         ; preds = %bb.e
  %i.ah = extractvalue { ptr, i8 } %i.ag, 0
  %i.ai = extractvalue { ptr, i8 } %i.ag, 1
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZN4Luau20ClonePublicInterface9cloneTypeEPKNS_4TypeE.exit32, label %bb.f

bb.f:                                             ; preds = %.noexc30
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !254 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 312
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !127 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 864 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !57 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 872
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !61
  %.not.i.i25 = icmp eq ptr %i.ao, %i.aq
  br i1 %.not.i.i25, label %bb.g, label %_ZNSt15__new_allocatorIN4Luau9TypeErrorEE9constructIS1_JRNS0_8LocationENS0_21UnificationTooComplexEEEEvPT_DpOT0_.exit.i.i26

_ZNSt15__new_allocatorIN4Luau9TypeErrorEE9constructIS1_JRNS0_8LocationENS0_21UnificationTooComplexEEEEvPT_DpOT0_.exit.i.i26: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ao, ptr noundef nonnull align 4 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !304
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !305
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 0, ptr %i.at, align 8, !tbaa !306
  store i8 0, ptr %i.as, align 8, !tbaa !51
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store i32 16, ptr %i.au, align 8, !tbaa !58
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !57
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 184
  store ptr %i.aw, ptr %i.an, align 8, !tbaa !57
  br label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i27

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 856
  invoke void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE17_M_realloc_insertIJRNS0_8LocationENS0_21UnificationTooComplexEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr %i.ao, ptr noundef nonnull align 4 dereferenceable(16) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i27 unwind label %bb.i

_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i27: ; preds = %bb.g, %_ZNSt15__new_allocatorIN4Luau9TypeErrorEE9constructIS1_JRNS0_8LocationENS0_21UnificationTooComplexEEEEvPT_DpOT0_.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !307
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 168
  %.0.in.sroa.speculate.load._ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_21UnificationTooComplexEEEERS1_DpOT_.exit.i28 = load ptr, ptr %i.az, align 8, !tbaa !168
  br label %_ZN4Luau20ClonePublicInterface9cloneTypeEPKNS_4TypeE.exit32

bb.h:                                             ; preds = %bb.d, %bb.b
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit77

bb.i:                                             ; preds = %bb.g, %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit77
end_hunk_1
