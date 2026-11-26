Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/configuration?download=true
inline.NumInlined: 2494
inline.NumDeleted: 1084
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK5vcpkg14RegistryConfig15pretty_locationEv:bb.a
          to label %_ZNKR5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13value_or_exitERKNS_8LineInfoE.exit4 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #23
  unreachable

_ZNKR5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13value_or_exitERKNS_8LineInfoE.exit4: ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ba) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.m

bb.l:                                             ; preds = %_ZN5vcpkgeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13StringLiteralEEEDTeqdecldtfp_3getEfp0_ERKNS_8OptionalIT_EERKT0_.exit3.thread, %_ZN5vcpkgeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13StringLiteralEEEDTeqdecldtfp_3getEfp0_ERKNS_8OptionalIT_EERKT0_.exit3
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store i32 746, ptr %9, align 8, !tbaa !37
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str, ptr %i.bb, align 8, !tbaa !38
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @__func__._ZNK5vcpkg14RegistryConfig15pretty_locationEv, ptr %i.bc, align 8, !tbaa !39
  call void @_ZN5vcpkg6Checks11unreachableERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24) %9) #25
  unreachable

bb.m:                                             ; preds = %_ZNKR5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13value_or_exitERKNS_8LineInfoE.exit4, %_ZNKR5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13value_or_exitERKNS_8LineInfoE.exit, %_ZNKR5vcpkg8OptionalINS_4PathEE13value_or_exitERKNS_8LineInfoE.exit, %bb.b
  %.fca.0.load = load ptr, ptr %5, align 8
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nounwind
declare { ptr, i64 } @_ZNK5vcpkg4PathcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN5vcpkg6Checks11unreachableERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef { ptr, i64 } @_ZN5vcpkg13Configuration12known_fieldsEv() local_unnamed_addr #6 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @_ZZN5vcpkg13Configuration12known_fieldsEvE12known_fields, i64 11 }
}

; Function Attrs: mustprogress uwtable
define dso_local { ptr, i64 } @_ZN5vcpkg30configuration_source_file_nameENS_19ConfigurationSourceE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"struct.vcpkg::LineInfo", align 8  ; 5 uses
  %i.a = icmp ult i32 %0, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store i32 776, ptr %1, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @__func__._ZN5vcpkg30configuration_source_file_nameENS_19ConfigurationSourceE, ptr %i.c, align 8, !tbaa !39
  call void @_ZN5vcpkg6Checks11unreachableERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1) #25
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5vcpkg30configuration_source_file_nameENS_19ConfigurationSourceE, i64 %i.d
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.e = zext nneg i32 %0 to i64
  %switch.gep3 = getelementptr inbounds nuw i8, ptr @switch.table._ZN5vcpkg30configuration_source_file_nameENS_19ConfigurationSourceE.76, i64 %i.e
  %switch.load4 = load i8, ptr %switch.gep3, align 1
  %switch.ext = zext i8 %switch.load4 to i64
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %switch.load, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %switch.ext, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local { ptr, i64 } @_ZN5vcpkg26configuration_source_fieldENS_19ConfigurationSourceE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"struct.vcpkg::LineInfo", align 8  ; 5 uses
  %i.a = icmp ult i32 %0, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store i32 788, ptr %1, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @__func__._ZN5vcpkg26configuration_source_fieldENS_19ConfigurationSourceE, ptr %i.c, align 8, !tbaa !39
  call void @_ZN5vcpkg6Checks11unreachableERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1) #25
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN5vcpkg26configuration_source_fieldENS_19ConfigurationSourceE, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i32 %0 to i64
  %switch.gep3 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5vcpkg26configuration_source_fieldENS_19ConfigurationSourceE.77, i64 %i.e
  %switch.load4 = load ptr, ptr %switch.gep3, align 8
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %switch.load4, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %switch.ext, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK5vcpkg13Configuration18validate_as_activeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(472) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 13 uses
  %2 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  %3 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !alias.scope !218
  invoke fastcc void @_ZN12_GLOBAL__N_124find_unknown_fields_implERKN5vcpkg4Json6ObjectERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EENS0_10StringViewE(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull @.str.15, i64 1)
          to label %_ZN5vcpkg19find_unknown_fieldsB5cxx11ERKNS_13ConfigurationE.exit unwind label %bb.c

common.resume:                                    ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit35, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %.pn.pn.pn.pn, %_ZN5vcpkg15LocalizedStringD2Ev.exit35 ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #22
  br label %common.resume

_ZN5vcpkg19find_unknown_fieldsB5cxx11ERKNS_13ConfigurationE.exit: ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !68     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN5vcpkg19find_unknown_fieldsB5cxx11ERKNS_13ConfigurationE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %.sroa.01.0.copyload = load i64, ptr @_ZN5vcpkg26msgUnrecognizedConfigFieldE, align 8, !tbaa !51
  invoke void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %2, i64 %.sroa.01.0.copyload)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.k = load ptr, ptr %1, align 8, !tbaa !68, !noalias !219 ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !68, !noalias !219 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.m, ptr %6, align 8, !tbaa !48, !alias.scope !220
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.n, align 8, !tbaa !47, !alias.scope !220
  store i8 0, ptr %i.m, align 8, !tbaa !44, !alias.scope !220
  %i.o = icmp eq ptr %i.k, %i.l
  br i1 %i.o, label %_ZN5vcpkg7Strings4joinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_NS_13StringLiteralERKT_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %.sroa.04.0.i.i = phi ptr [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i ], [ %i.k, %bb.e ] ; 2 uses
  invoke void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.0.i.i)
          to label %_ZN5vcpkg7Strings6appendIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS7_S8_DpRKT_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5vcpkg7Strings6appendIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS7_S8_DpRKT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i, i64 32 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.l
  br i1 %i.q, label %_ZN5vcpkg7Strings4joinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_NS_13StringLiteralERKT_.exit, label %bb.f

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.g
  %lpad.loopexit.split-lp73 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %6, align 8, !tbaa !43, !alias.scope !220 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.m
  br i1 %i.s, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %_ZN5vcpkg7Strings6appendIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS7_S8_DpRKT_.exit.i.i
  %i.t = load i64, ptr %i.n, align 8, !tbaa !47, !alias.scope !220
  %i.u = icmp eq i64 %i.t, 4611686018427387903
  br i1 %i.u, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #25
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.f
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN5vcpkg7Strings4joinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_NS_13StringLiteralERKT_.exit: ; preds = %_ZN5vcpkg7Strings6appendIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS7_S8_DpRKT_.exit.i.i, %bb.e
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %.noexc unwind label %bb.p     ; 6 uses

.noexc:                                           ; preds = %_ZN5vcpkg7Strings4joinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_NS_13StringLiteralERKT_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.x, ptr %5, align 8, !tbaa !48, !alias.scope !221
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !43   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.h:                                             ; preds = %.noexc
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !47 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.y, ptr %5, align 8, !tbaa !43, !alias.scope !221
  %i.af = load i64, ptr %i.z, align 8, !tbaa !44
  store i64 %i.af, ptr %i.x, align 8, !tbaa !44, !alias.scope !221
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !47
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %i.ag = phi i64 [ %i.ac, %bb.h ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !47, !alias.scope !221
  store ptr %i.z, ptr %i.w, align 8, !tbaa !43
  store i64 0, ptr %i.ah, align 8, !tbaa !47
  store i8 0, ptr %i.z, align 8, !tbaa !44
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !47, !noalias !222
  %i.ak = icmp eq i64 %i.aj, 4611686018427387903
  br i1 %i.ak, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #25
          to label %.noexc14 unwind label %bb.q

.noexc14:                                         ; preds = %bb.j
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.i
  %i.al = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %.noexc15 unwind label %bb.q   ; 6 uses

.noexc15:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.am, ptr %4, align 8, !tbaa !48, !alias.scope !222
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !43 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

bb.k:                                             ; preds = %.noexc15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !47 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %.noexc15
  store ptr %i.an, ptr %4, align 8, !tbaa !43, !alias.scope !222
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !44
  store i64 %i.au, ptr %i.am, align 8, !tbaa !44, !alias.scope !222
  %.phi.trans.insert.i12 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.pre.i13 = load i64, ptr %.phi.trans.insert.i12, align 8, !tbaa !47
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.k
  %i.av = phi i64 [ %i.ar, %bb.k ], [ %.pre.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !47, !alias.scope !222
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !43
  store i64 0, ptr %i.aw, align 8, !tbaa !47
  store i8 0, ptr %i.ao, align 8, !tbaa !44
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #22
  %i.ay = load ptr, ptr %3, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNO5vcpkg15LocalizedString10append_rawENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %i.ay, i64 %i.ba)
          to label %bb.m unwind label %bb.r       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload = load i64, ptr @_ZN5vcpkg32msgDocumentedFieldsSuggestUpdateE, align 8, !tbaa !51
  invoke void @_ZN5vcpkg3msg9format_toIJEJEEEvRNS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS5_E4typeET0_EE(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 %.sroa.0.0.copyload)
          to label %_ZNO5vcpkg15LocalizedString6appendIJEJEEEOS0_NS_3msg8MessageTIJDpT_EEEDpNS3_6TagArgINS_8identityIS5_E4typeET0_EE.exit unwind label %bb.r

_ZNO5vcpkg15LocalizedString6appendIJEJEEEOS0_NS_3msg8MessageTIJDpT_EEEDpNS3_6TagArgINS_8identityIS5_E4typeET0_EE.exit: ; preds = %bb.m
  invoke void @_ZN5vcpkg3msg15println_warningERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %_ZNO5vcpkg15LocalizedString6appendIJEJEEEOS0_NS_3msg8MessageTIJDpT_EEEDpNS3_6TagArgINS_8identityIS5_E4typeET0_EE.exit
  %i.bc = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.am
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.n
  %i.be = load i64, ptr %i.am, align 8, !tbaa !44
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  %i.bg = load ptr, ptr %5, align 8, !tbaa !43    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.x
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = load i64, ptr %i.x, align 8, !tbaa !44
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  %i.bk = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.m
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.bm = load i64, ptr %i.m, align 8, !tbaa !44
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bo = load ptr, ptr %2, align 8, !tbaa !43    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !44
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.o:                                             ; preds = %bb.d
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit35

bb.p:                                             ; preds = %_ZN5vcpkg7Strings4joinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_NS_13StringLiteralERKT_.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.r:                                             ; preds = %bb.m, %_ZNO5vcpkg15LocalizedString6appendIJEJEEEOS0_NS_3msg8MessageTIJDpT_EEEDpNS3_6TagArgINS_8identityIS5_E4typeET0_EE.exit, %bb.l
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.am
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.r
  %i.bz = load i64, ptr %i.am, align 8, !tbaa !44
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.q ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %i.bw, %bb.r ] ; 2 uses
  %i.cb = load ptr, ptr %5, align 8, !tbaa !43    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.x
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.cd = load i64, ptr %i.x, align 8, !tbaa !44
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.bu, %bb.p ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ] ; 2 uses
  %i.cf = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.m
  br i1 %i.cg, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.sink = phi ptr [ %i.r, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp73, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  %i.ch = load i64, ptr %i.m, align 8, !tbaa !44
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ci) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp73, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %.pn.pn.pn.ph, %.body.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cj = load ptr, ptr %2, align 8, !tbaa !43    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZN5vcpkg15LocalizedStringD2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33: ; preds = %.body
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !44
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit35

_ZN5vcpkg15LocalizedStringD2Ev.exit35:            ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33, %bb.o
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bt, %bb.o ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33 ], [ %.pn.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %common.resume

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %.pre = load ptr, ptr %1, align 8, !tbaa !70    ; 3 uses
  %.pre37 = load ptr, ptr %i.h, align 8, !tbaa !71 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre37
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ct, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ] ; 3 uses
  %i.co = load ptr, ptr %.05.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !44
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ct, %.pre37
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

end_hunk_0
begin_hunk_1_@_ZN5vcpkg19parse_configurationENS_10StringViewES0_RNS_11MessageSinkE:bb.a
  %8 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  %9 = alloca %"struct.vcpkg::ExpectedT.52", align 8 ; 11 uses
  %10 = alloca %"struct.vcpkg::Json::Value", align 8 ; 7 uses
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.b, align 8, !tbaa !44
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN5vcpkg4Json5parseENS_10StringViewES1_(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT.52") align 8 %9, ptr %1, i64 %2, ptr %3, i64 %4)
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !81, !range !32, !noundef !33
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZNR5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEE5errorEv.exit, label %_ZNO5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEE5valueERKNS_8LineInfoE.exit

_ZNR5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEE5errorEv.exit: ; preds = %bb.c
  %i.f = load ptr, ptr %5, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext 49, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNR5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEE5errorEv.exit
  store i8 0, ptr %0, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.i, align 8, !tbaa !44
  br label %bb.k

bb.e:                                             ; preds = %_ZNR5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEE5errorEv.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZNO5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEE5valueERKNS_8LineInfoE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @_ZN5vcpkg4Json5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9) #22
  %i.k = call noundef ptr @_ZN5vcpkg4Json5Value12maybe_objectEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #22 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZNO5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEE5valueERKNS_8LineInfoE.exit
  invoke void @_ZN5vcpkg19parse_configurationERKNS_4Json6ObjectENS_10StringViewERNS_11MessageSinkE(ptr dead_on_unwind writable sret(%"struct.vcpkg::Optional.48") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.j unwind label %bb.i

.critedge:                                        ; preds = %_ZNO5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEE5valueERKNS_8LineInfoE.exit
  %.sroa.01.0.copyload = load i64, ptr @_ZN5vcpkg29msgFailedToParseNoTopLevelObjE, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %3, ptr %7, align 8, !noalias !228
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %4, ptr %i.l, align 8, !noalias !228
  %i.m = load ptr, ptr @_ZN5vcpkg3msg6path_t4nameE, align 8, !tbaa !53, !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !229
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr %i.n, ptr %6, align 16, !tbaa !56, !noalias !229
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.o, align 8, !tbaa !57, !noalias !229
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %7, ptr %i.p, align 16, !tbaa !44, !noalias !229
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5vcpkg10StringViewEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.q, align 8, !tbaa !44, !noalias !229
  store ptr %i.m, ptr %i.n, align 16, !tbaa !58, !noalias !229
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !59, !noalias !229
  invoke void @_ZN5vcpkg3msg6detail23format_message_by_indexEmN3fmt3v1217basic_format_argsINS3_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %8, i64 noundef %.sroa.01.0.copyload, i64 4611686018427387919, ptr nonnull %i.p)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.r = load ptr, ptr %5, align 8, !tbaa !83
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc
  %i.u = load ptr, ptr %8, align 8, !tbaa !43     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.x = load i64, ptr %i.v, align 8, !tbaa !44
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %8, align 8, !tbaa !43    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN5vcpkg15LocalizedStringD2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i: ; preds = %bb.h
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !44
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit8.i

_ZN5vcpkg15LocalizedStringD2Ev.exit8.i:           ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  store i8 0, ptr %0, align 8, !tbaa !79
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.af, align 8, !tbaa !44
  br label %bb.j

bb.i:                                             ; preds = %.critedge, %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit8.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.z, %_ZN5vcpkg15LocalizedStringD2Ev.exit8.i ]
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.n

bb.j:                                             ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d
  %i.ah = load i8, ptr %i.c, align 8, !tbaa !81, !range !32, !noundef !33
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %9, align 8, !tbaa !43    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20: ; preds = %bb.l
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !44
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #24
  br label %_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit

bb.m:                                             ; preds = %bb.k
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(33) %9) #22
  br label %_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit

_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.o

bb.n:                                             ; preds = %.body, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.j, %bb.e ]
  call void @_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  resume { ptr, i32 } %.pn.pn

bb.o:                                             ; preds = %_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit, %bb.b
  ret void
}

declare void @_ZN5vcpkg4Json5parseENS_10StringViewES1_(ptr dead_on_unwind writable sret(%"struct.vcpkg::ExpectedT.52") align 8, ptr, i64, ptr, i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5vcpkg4Json5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare noundef ptr @_ZN5vcpkg4Json5Value12maybe_objectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5vcpkg19parse_configurationERKNS_4Json6ObjectENS_10StringViewERNS_11MessageSinkE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.48") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v12::detail::format_arg_store.181", align 16 ; 8 uses
  %6 = alloca %"struct.vcpkg::msg::TagArg.76", align 8 ; 5 uses
  %7 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  %8 = alloca %"struct.vcpkg::Json::Reader", align 8 ; 12 uses
  %9 = alloca %"struct.vcpkg::Optional.48", align 8 ; 22 uses
  %10 = alloca %"struct.vcpkg::DiagnosticLine", align 8 ; 11 uses
  %11 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  %12 = alloca %"struct.vcpkg::DiagnosticLine", align 8 ; 13 uses
  %13 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN5vcpkg4Json6ReaderC1ENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr %2, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.a = load ptr, ptr @_ZN12_GLOBAL__N_125ConfigurationDeserializer8instanceE, align 8, !tbaa !83, !noalias !237
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !noalias !237
  %i.d = call { ptr, i64 } %i.c(ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_125ConfigurationDeserializer8instanceE) #22, !noalias !237, !inline_history !232 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !237
  %i.e = load ptr, ptr @_ZN12_GLOBAL__N_125ConfigurationDeserializer8instanceE, align 8, !tbaa !83, !noalias !237
  %i.f = load ptr, ptr %i.e, align 8, !noalias !237
  invoke void %i.f(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_125ConfigurationDeserializer8instanceE)
          to label %.noexc unwind label %bb.j, !inline_history !232

.noexc:                                           ; preds = %bb.a
  %i.g = extractvalue { ptr, i64 } %i.d, 1
  %i.h = extractvalue { ptr, i64 } %i.d, 0
  invoke void @_ZN5vcpkg4Json6Reader27check_for_unexpected_fieldsERKNS0_6ObjectENS_4SpanIKNS_13StringLiteralEEERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.h, i64 %i.g, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.b unwind label %bb.c, !noalias !237

bb.b:                                             ; preds = %.noexc
  %i.i = load ptr, ptr %7, align 8, !tbaa !43, !noalias !237 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN5vcpkg15LocalizedStringD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8, !tbaa !44, !noalias !237
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #24, !noalias !237
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit.i

_ZN5vcpkg15LocalizedStringD2Ev.exit.i:            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !237
  %i.n = load ptr, ptr @_ZN12_GLOBAL__N_125ConfigurationDeserializer8instanceE, align 8, !tbaa !83, !noalias !237
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !noalias !237
  invoke void %i.p(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Optional.48") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_125ConfigurationDeserializer8instanceE, ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNK5vcpkg4Json13IDeserializerINS_13ConfigurationEE5visitERNS0_6ReaderERKNS0_6ObjectE.exit unwind label %bb.j, !inline_history !232

bb.c:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %7, align 8, !tbaa !43, !noalias !237 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN5vcpkg15LocalizedStringD2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.s, align 8, !tbaa !44, !noalias !237
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #24, !noalias !237
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit8.i

_ZN5vcpkg15LocalizedStringD2Ev.exit8.i:           ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !237
  br label %.body

_ZNK5vcpkg4Json13IDeserializerINS_13ConfigurationEE5visitERNS0_6ReaderERKNS0_6ObjectE.exit: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.x = load i8, ptr %i.w, align 8, !tbaa !238, !range !32, !noundef !33
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.y, label %bb.d

bb.d:                                             ; preds = %_ZNK5vcpkg4Json13IDeserializerINS_13ConfigurationEE5visitERNS0_6ReaderERKNS0_6ObjectE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !90
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %.sroa.04.0.copyload = load i64, ptr @_ZN5vcpkg22msgFailedToParseConfigE, align 8, !tbaa !51
  invoke void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %11, i64 %.sroa.04.0.copyload)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5vcpkg14DiagnosticLineC2INS_15LocalizedStringETnNSt9enable_ifIXsr3stdE16is_convertible_vIT_S2_EEiE4typeELi0EEENS_8DiagKindENS_10StringViewEOS4_(ptr noundef nonnull align 8 dereferenceable(88) %10, i32 noundef 2, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK5vcpkg14DiagnosticLine8print_toERNS_11MessageSinkE(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN5vcpkg15LocalizedStringD2Ev.exit.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !44
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit.i30

_ZN5vcpkg15LocalizedStringD2Ev.exit.i30:          ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !31, !range !32, !noundef !33
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.i, label %_ZN5vcpkg14DiagnosticLineD2Ev.exit

bb.i:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit.i30
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !43 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN5vcpkg14DiagnosticLineD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %bb.i
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !44
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #24
  br label %_ZN5vcpkg14DiagnosticLineD2Ev.exit

_ZN5vcpkg14DiagnosticLineD2Ev.exit:               ; preds = %bb.i, %_ZN5vcpkg15LocalizedStringD2Ev.exit.i30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  %i.aq = load ptr, ptr %11, align 8, !tbaa !43   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN5vcpkg15LocalizedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5vcpkg14DiagnosticLineD2Ev.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !44
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %_ZN5vcpkg14DiagnosticLineD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.o

bb.j:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit.i, %bb.a
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit34

bb.l:                                             ; preds = %bb.f
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5vcpkg14DiagnosticLineD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %10) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %i.ax, %bb.l ] ; 2 uses
  %i.az = load ptr, ptr %11, align 8, !tbaa !43   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZN5vcpkg15LocalizedStringD2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32: ; preds = %bb.n
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !44
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit34

_ZN5vcpkg15LocalizedStringD2Ev.exit34:            ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32 ], [ %.pn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ac

bb.o:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit, %bb.d
  %i.be = load ptr, ptr %8, align 8, !tbaa !239   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !239 ; 2 uses
  %.not5355 = icmp eq ptr %i.be, %i.bg
  br i1 %.not5355, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %.sroa.01.0.copyload = load i64, ptr @_ZN5vcpkg29msgExtendedDocumentationAtUrlE, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr @.str.98, ptr %6, align 8, !noalias !240
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 79, ptr %i.bh, align 8, !noalias !240
  %i.bi = load ptr, ptr @_ZN5vcpkg3msg5url_t4nameE, align 8, !tbaa !53, !noalias !240
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !241
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.bj, ptr %5, align 16, !tbaa !56, !noalias !241
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.bk, align 8, !tbaa !57, !noalias !241
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %6, ptr %i.bl, align 16, !tbaa !44, !noalias !241
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5vcpkg10StringViewEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.bm, align 8, !tbaa !44, !noalias !241
  store ptr %i.bi, ptr %i.bj, align 16, !tbaa !58, !noalias !241
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !59, !noalias !241
  invoke void @_ZN5vcpkg3msg6detail23format_message_by_indexEmN3fmt3v1217basic_format_argsINS3_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %13, i64 noundef %.sroa.01.0.copyload, i64 4611686018427387919, ptr nonnull %i.bl)
          to label %bb.r unwind label %bb.w

.lr.ph:                                           ; preds = %bb.o, %bb.p
  %.sroa.050.056 = phi ptr [ %i.bn, %bb.p ], [ %i.be, %bb.o ] ; 2 uses
  invoke void @_ZNK5vcpkg14DiagnosticLine8print_toERNS_11MessageSinkE(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.050.056, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.050.056, i64 88 ; 2 uses
  %.not53 = icmp eq ptr %i.bn, %i.bg
end_hunk_1
begin_hunk_2_@_ZNK5vcpkg13Configuration24instantiate_registry_setERKNS_10VcpkgPathsERKNS_4PathE:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.045.052, i64 280
  %i.l = load i8, ptr %i.k, align 8, !tbaa !108, !range !32, !noundef !33
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.045.052, i64 288 ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.045.052, i64 296 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !71   ; 3 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !70   ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i.i.i.i, label %.noexc23, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = icmp ugt i64 %i.t, 9223372036854775776
  br i1 %i.u, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !109

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #26
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc23_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc23_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !68
  %.pre54 = load ptr, ptr %i.o, align 8, !tbaa !68
  br label %.noexc23

.noexc23:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc23_crit_edge, %bb.c
  %i.w = phi ptr [ %i.p, %bb.c ], [ %.pre54, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc23_crit_edge ]
  %i.x = phi ptr [ %i.q, %bb.c ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc23_crit_edge ]
  %i.y = phi ptr [ null, %bb.c ], [ %i.v, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc23_crit_edge ] ; 4 uses
  store ptr %i.y, ptr %5, align 8, !tbaa !70
  store ptr %i.y, ptr %i.e, align 8, !tbaa !71
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.t
  store ptr %i.z, ptr %i.f, align 8, !tbaa !73
  %i.aa = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.x, ptr %i.w, ptr noundef %i.y)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %.noexc23
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %5, align 8, !tbaa !70    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #24
  br label %.body

bb.g:                                             ; preds = %.noexc23
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke fastcc void @_ZN5vcpkgL19instantiate_rconfigERKNS_10VcpkgPathsERKNS_14RegistryConfigERKNS_4PathE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(400) %2, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.045.052, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !112 ; 3 uses
  %i.ai = load ptr, ptr %i.h, align 16, !tbaa !113
  %.not.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5vcpkg8RegistryC1EOSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEOSt10unique_ptrINS_22RegistryImplementationESt14default_deleteISC_EE(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc24 unwind label %bb.m

.noexc24:                                         ; preds = %bb.i
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !112
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.ak, ptr %i.g, align 8, !tbaa !112
  br label %_ZNSt6vectorIN5vcpkg8RegistryESaIS1_EE12emplace_backIJS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESt10unique_ptrINS0_22RegistryImplementationESt14default_deleteISE_EEEEERS1_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorIN5vcpkg8RegistryESaIS1_EE17_M_realloc_insertIJS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESt10unique_ptrINS0_22RegistryImplementationESt14default_deleteISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZNSt6vectorIN5vcpkg8RegistryESaIS1_EE12emplace_backIJS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESt10unique_ptrINS0_22RegistryImplementationESt14default_deleteISE_EEEEERS1_DpOT_.exit unwind label %bb.m

_ZNSt6vectorIN5vcpkg8RegistryESaIS1_EE12emplace_backIJS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESt10unique_ptrINS0_22RegistryImplementationESt14default_deleteISE_EEEEERS1_DpOT_.exit: ; preds = %bb.j, %.noexc24
  %i.al = load ptr, ptr %6, align 8, !tbaa !115   ; 3 uses
  %.not.i26 = icmp eq ptr %i.al, null
  br i1 %.not.i26, label %_ZNSt10unique_ptrIN5vcpkg22RegistryImplementationESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg22RegistryImplementationEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5vcpkg22RegistryImplementationEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN5vcpkg8RegistryESaIS1_EE12emplace_backIJS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESt10unique_ptrINS0_22RegistryImplementationESt14default_deleteISE_EEEEERS1_DpOT_.exit
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !83
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.al) #22, !inline_history !253
  br label %_ZNSt10unique_ptrIN5vcpkg22RegistryImplementationESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg22RegistryImplementationESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN5vcpkg8RegistryESaIS1_EE12emplace_backIJS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESt10unique_ptrINS0_22RegistryImplementationESt14default_deleteISE_EEEEERS1_DpOT_.exit, %_ZNKSt14default_deleteIN5vcpkg22RegistryImplementationEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.ap = load ptr, ptr %5, align 8, !tbaa !70    ; 3 uses
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !71  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN5vcpkg22RegistryImplementationESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ap, %_ZNSt10unique_ptrIN5vcpkg22RegistryImplementationESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.ar = load ptr, ptr %.05.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !44
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.aw, %i.aq
  br i1 %.not.i.i.i27, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !70
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN5vcpkg22RegistryImplementationESt14default_deleteIS1_EED2Ev.exit
  %i.ax = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ap, %_ZNSt10unique_ptrIN5vcpkg22RegistryImplementationESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bb) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.n

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %lpad.loopexit.split-lp72 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.g
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5vcpkg22RegistryImplementationESt14default_deleteIS1_EED2Ev.exit31

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %6, align 8, !tbaa !115   ; 3 uses
  %.not.i29 = icmp eq ptr %i.be, null
  br i1 %.not.i29, label %_ZNSt10unique_ptrIN5vcpkg22RegistryImplementationESt14default_deleteIS1_EED2Ev.exit31, label %_ZNKSt14default_deleteIN5vcpkg22RegistryImplementationEEclEPS1_.exit.i30

_ZNKSt14default_deleteIN5vcpkg22RegistryImplementationEEclEPS1_.exit.i30: ; preds = %bb.m
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !83
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be) #22, !inline_history !253
  br label %_ZNSt10unique_ptrIN5vcpkg22RegistryImplementationESt14default_deleteIS1_EED2Ev.exit31

_ZNSt10unique_ptrIN5vcpkg22RegistryImplementationESt14default_deleteIS1_EED2Ev.exit31: ; preds = %_ZNKSt14default_deleteIN5vcpkg22RegistryImplementationEEclEPS1_.exit.i30, %bb.m, %bb.l
  %.pn19 = phi { ptr, i32 } [ %i.bc, %bb.l ], [ %i.bd, %bb.m ], [ %i.bd, %_ZNKSt14default_deleteIN5vcpkg22RegistryImplementationEEclEPS1_.exit.i30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #22
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f, %bb.e, %_ZNSt10unique_ptrIN5vcpkg22RegistryImplementationESt14default_deleteIS1_EED2Ev.exit31
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %_ZNSt10unique_ptrIN5vcpkg22RegistryImplementationESt14default_deleteIS1_EED2Ev.exit31 ], [ %i.ab, %bb.e ], [ %i.ab, %bb.f ], [ %lpad.loopexit.split-lp72, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.t

bb.n:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.045.052, i64 344 ; 2 uses
  %.not48 = icmp eq ptr %i.bi, %i.d
  br i1 %.not48, label %._crit_edge, label %bb.b

bb.o:                                             ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @_ZN5vcpkgL19instantiate_rconfigERKNS_10VcpkgPathsERKNS_14RegistryConfigERKNS_4PathE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(400) %2, ptr noundef nonnull align 8 dereferenceable(344) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.q unwind label %bb.r

bb.p:                                             ; preds = %._crit_edge
  invoke void @_ZN5vcpkg21make_builtin_registryERKNS_10VcpkgPathsE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.90") align 8 %7, ptr noundef nonnull align 8 dereferenceable(400) %2)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.bk = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %_ZNSt10unique_ptrIN5vcpkg22RegistryImplementationESt14default_deleteIS1_EED2Ev.exit35 unwind label %bb.s ; 4 uses

_ZNSt10unique_ptrIN5vcpkg22RegistryImplementationESt14default_deleteIS1_EED2Ev.exit35: ; preds = %bb.q
  %i.bl = load i64, ptr %7, align 8, !tbaa !115, !noalias !256
  store i64 %i.bl, ptr %i.bk, align 8, !tbaa !115, !noalias !256
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load <2 x ptr>, ptr %4, align 16, !tbaa !257, !noalias !256
  store <2 x ptr> %i.bn, ptr %i.bm, align 8, !tbaa !257, !noalias !256
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bq = load ptr, ptr %i.bp, align 16, !tbaa !113, !noalias !256
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !113, !noalias !256
  store ptr %i.bk, ptr %0, align 8, !tbaa !259, !alias.scope !256
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5vcpkg22RegistryImplementationESt14default_deleteIS1_EED2Ev.exit44

bb.s:                                             ; preds = %bb.q
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %7, align 8, !tbaa !115   ; 3 uses
  %.not.i42 = icmp eq ptr %i.bt, null
  br i1 %.not.i42, label %_ZNSt10unique_ptrIN5vcpkg22RegistryImplementationESt14default_deleteIS1_EED2Ev.exit44, label %_ZNKSt14default_deleteIN5vcpkg22RegistryImplementationEEclEPS1_.exit.i43

_ZNKSt14default_deleteIN5vcpkg22RegistryImplementationEEclEPS1_.exit.i43: ; preds = %bb.s
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !83
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bt) #22, !inline_history !253
  br label %_ZNSt10unique_ptrIN5vcpkg22RegistryImplementationESt14default_deleteIS1_EED2Ev.exit44

_ZNSt10unique_ptrIN5vcpkg22RegistryImplementationESt14default_deleteIS1_EED2Ev.exit44: ; preds = %_ZNKSt14default_deleteIN5vcpkg22RegistryImplementationEEclEPS1_.exit.i43, %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.br, %bb.r ], [ %i.bs, %bb.s ], [ %i.bs, %_ZNKSt14default_deleteIN5vcpkg22RegistryImplementationEEclEPS1_.exit.i43 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN5vcpkg22RegistryImplementationESt14default_deleteIS1_EED2Ev.exit44, %.body
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %.body ], [ %.pn, %_ZNSt10unique_ptrIN5vcpkg22RegistryImplementationESt14default_deleteIS1_EED2Ev.exit44 ]
  call void @_ZNSt6vectorIN5vcpkg8RegistryESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn19.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5vcpkgL19instantiate_rconfigERKNS_10VcpkgPathsERKNS_14RegistryConfigERKNS_4PathE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef nonnull align 8 dereferenceable(344) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"struct.vcpkg::LineInfo", align 8  ; 7 uses
  %7 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"struct.vcpkg::LineInfo", align 8  ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %13 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %14 = alloca %"struct.vcpkg::Path", align 8     ; 6 uses
  %15 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.vcpkg::LineInfo", align 8 ; 5 uses
  %i.d = load i8, ptr %2, align 8, !tbaa !31, !range !32, !noundef !33
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.f) #22
  %i.g = load ptr, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = call noundef zeroext i1 @_ZN5vcpkgeqENS_10StringViewES0_(ptr %i.g, i64 %i.i, ptr nonnull @.str.18, i64 7) #22
  br i1 %i.j, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i32 893, ptr %6, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str, ptr %i.l, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @__func__._ZN5vcpkgL19instantiate_rconfigERKNS_10VcpkgPathsERKNS_14RegistryConfigERKNS_4PathE, ptr %i.m, align 8, !tbaa !39
  %i.n = load i8, ptr %i.k, align 8, !tbaa !31, !range !32, !noundef !33
  %i.o = trunc nuw i8 %i.n to i1
  invoke void @_ZN5vcpkg6Checks10check_exitERKNS_8LineInfoEbNS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.o, ptr nonnull @.str.116, i64 14)
          to label %_ZNKR5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13value_or_exitERKNS_8LineInfoE.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #23
  unreachable

_ZNKR5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13value_or_exitERKNS_8LineInfoE.exit: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !48
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !43   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.v = load i64, ptr %i.u, align 8, !tbaa !47   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 %i.v, ptr %i.c, align 8, !tbaa !51
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKR5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13value_or_exitERKNS_8LineInfoE.exit
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.x, ptr %5, align 8, !tbaa !43
  %i.y = load i64, ptr %i.c, align 8, !tbaa !51
  store i64 %i.y, ptr %i.s, align 8, !tbaa !44
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZNKR5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13value_or_exitERKNS_8LineInfoE.exit
  %i.z = phi ptr [ %i.x, %.noexc.i ], [ %i.s, %_ZNKR5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13value_or_exitERKNS_8LineInfoE.exit ] ; 2 uses
  switch i64 %i.v, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !44
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !51  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !47
  %i.ad = load ptr, ptr %5, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  invoke void @_ZN5vcpkg21make_builtin_registryERKNS_10VcpkgPathsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.90") align 8 %0, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef nonnull align 8 %5)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.af = load ptr, ptr %5, align 8, !tbaa !43    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.s
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ah = load i64, ptr %i.s, align 8, !tbaa !44
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.af

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %5, align 8, !tbaa !43    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.s
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.h
  %i.am = load i64, ptr %i.s, align 8, !tbaa !44
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ag

bb.i:                                             ; preds = %bb.b
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.f) #22
  %i.ao = load ptr, ptr %7, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = call noundef zeroext i1 @_ZN5vcpkgeqENS_10StringViewES0_(ptr %i.ao, i64 %i.aq, ptr nonnull @.str.16, i64 3) #22
  br i1 %i.ar, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store i32 898, ptr %9, align 8, !tbaa !37
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str, ptr %i.at, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @__func__._ZN5vcpkgL19instantiate_rconfigERKNS_10VcpkgPathsERKNS_14RegistryConfigERKNS_4PathE, ptr %i.au, align 8, !tbaa !39
  %i.av = load i8, ptr %i.as, align 8, !tbaa !31, !range !32, !noundef !33
  %i.aw = trunc nuw i8 %i.av to i1
  invoke void @_ZN5vcpkg6Checks10check_exitERKNS_8LineInfoEbNS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext %i.aw, ptr nonnull @.str.116, i64 14)
          to label %_ZNKR5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13value_or_exitERKNS_8LineInfoE.exit36 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_2
begin_hunk_3_@_ZNK12_GLOBAL__N_125ConfigurationDeserializer12visit_objectERN5vcpkg4Json6ReaderERKNS2_6ObjectE:bb.a
  invoke void @_ZN5vcpkg3msg6detail26format_message_by_index_toERNS_15LocalizedStringEmN3fmt3v1217basic_format_argsINS5_7contextEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ll, i64 noundef %.sroa.01.0.copyload.i91.i, i64 4611686018427387919, ptr nonnull %i.df)
          to label %.noexc97.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97.i:                                       ; preds = %.noexc96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !337
  %i.ln = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNR5vcpkg15LocalizedString10append_rawEc(ptr noundef nonnull align 8 dereferenceable(32) %i.ll, i8 noundef signext 10)
          to label %_ZN12_GLOBAL__N_126append_declaration_warningERN5vcpkg15LocalizedStringENS0_10StringViewES3_m.exit88.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bj:                                            ; preds = %bb.ay
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit102.i

bb.bk:                                            ; preds = %_ZNO5vcpkg15LocalizedString6appendIJEJEEEOS0_NS_3msg8MessageTIJDpT_EEEDpNS3_6TagArgINS_8identityIS5_E4typeET0_EE.exit.i, %bb.bb, %bb.ba, %bb.az
  %i.lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lq = load ptr, ptr %23, align 8, !tbaa !43, !noalias !337 ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.cc
  br i1 %i.lr, label %_ZN5vcpkg15LocalizedStringD2Ev.exit102.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.i: ; preds = %bb.bk
  %i.ls = load i64, ptr %i.cc, align 8, !tbaa !44, !noalias !337
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lt) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit102.i

_ZN5vcpkg15LocalizedStringD2Ev.exit102.i:         ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.i, %bb.bj
  %.pn.i = phi { ptr, i32 } [ %i.lo, %bb.bj ], [ %i.lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.i ], [ %i.lp, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22, !noalias !337
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit105.i

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc97.i, %.noexc96.i, %.noexc95.i, %.noexc94.i, %.noexc93.i, %bb.bi, %bb.bh, %bb.bp, %.noexc.i.i.i.i, %.noexc86.i, %.noexc85.i, %.noexc84.i, %.noexc83.i, %.noexc82.i, %bb.bg, %_ZNR5vcpkg15LocalizedString6appendIJEJEEERS0_NS_3msg8MessageTIJDpT_EEEDpNS3_6TagArgINS_8identityIS5_E4typeET0_EE.exit.i, %bb.bf, %bb.be, %_ZN12_GLOBAL__N_126append_declaration_warningERN5vcpkg15LocalizedStringENS0_10StringViewES3_m.exit.i, %.noexc75.i, %.noexc74.i, %.noexc73.i, %.noexc72.i, %.noexc71.i, %_ZN5vcpkg15LocalizedStringD2Ev.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lu = load ptr, ptr %22, align 8, !tbaa !43, !noalias !337 ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.ca
  br i1 %i.lv, label %_ZN5vcpkg15LocalizedStringD2Ev.exit105.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i103.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i103.i: ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.lw = load i64, ptr %i.ca, align 8, !tbaa !44, !noalias !337
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.lx) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit105.i

bb.bl:                                            ; preds = %_ZN12_GLOBAL__N_126append_declaration_warningERN5vcpkg15LocalizedStringENS0_10StringViewES3_m.exit88.i
  %i.ly = load ptr, ptr %i.dh, align 8, !tbaa !136, !alias.scope !337 ; 8 uses
  %i.lz = load ptr, ptr %i.di, align 8, !tbaa !137, !alias.scope !337
  %.not.i106.i = icmp eq ptr %i.ly, %i.lz
  br i1 %.not.i106.i, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 16 ; 3 uses
  store ptr %i.ma, ptr %i.ly, align 8, !tbaa !48
  %i.mb = load ptr, ptr %22, align 8, !tbaa !43, !noalias !337 ; 2 uses
  %i.mc = load i64, ptr %i.cb, align 8, !tbaa !47, !noalias !337 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !337
  store i64 %i.mc, ptr %i.a, align 8, !tbaa !51, !noalias !337
  %i.md = icmp ugt i64 %i.mc, 15
  br i1 %i.md, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.bm
  %i.me = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ly, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc108.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc108.i:                                      ; preds = %.noexc.i.i.i.i
  store ptr %i.me, ptr %i.ly, align 8, !tbaa !43
  %i.mf = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !337
  store i64 %i.mf, ptr %i.ma, align 8, !tbaa !44
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc108.i, %bb.bm
  %i.mg = phi ptr [ %i.me, %.noexc108.i ], [ %i.ma, %bb.bm ] ; 2 uses
  switch i64 %i.mc, label %bb.bo [
    i64 1, label %bb.bn
    i64 0, label %_ZN5vcpkg15LocalizedStringC2ERKS0_.exit.i.i
  ]

bb.bn:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.mh = load i8, ptr %i.mb, align 1, !tbaa !44
  store i8 %i.mh, ptr %i.mg, align 1, !tbaa !44
  br label %_ZN5vcpkg15LocalizedStringC2ERKS0_.exit.i.i

bb.bo:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mg, ptr align 1 %i.mb, i64 %i.mc, i1 false)
  br label %_ZN5vcpkg15LocalizedStringC2ERKS0_.exit.i.i

_ZN5vcpkg15LocalizedStringC2ERKS0_.exit.i.i:      ; preds = %bb.bo, %bb.bn, %._crit_edge.i.i.i.i.i
  %i.mi = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !337 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  store i64 %i.mi, ptr %i.mj, align 8, !tbaa !47
  %i.mk = load ptr, ptr %i.ly, align 8, !tbaa !43
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mi
  store i8 0, ptr %i.ml, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !337
  %i.mm = load ptr, ptr %i.dh, align 8, !tbaa !136, !alias.scope !337
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 32
  store ptr %i.mn, ptr %i.dh, align 8, !tbaa !136, !alias.scope !337
  br label %_ZNSt6vectorIN5vcpkg15LocalizedStringESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit.i

bb.bp:                                            ; preds = %bb.bl
  invoke void @_ZNSt6vectorIN5vcpkg15LocalizedStringESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr %i.ly, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %_ZNSt6vectorIN5vcpkg15LocalizedStringESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN5vcpkg15LocalizedStringESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit.i: ; preds = %bb.bp, %_ZN5vcpkg15LocalizedStringC2ERKS0_.exit.i.i
  %i.mo = load ptr, ptr %22, align 8, !tbaa !43, !noalias !337 ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.ca
  br i1 %i.mp, label %_ZN5vcpkg15LocalizedStringD2Ev.exit112.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i110.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i110.i: ; preds = %_ZNSt6vectorIN5vcpkg15LocalizedStringESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit.i
  %i.mq = load i64, ptr %i.ca, align 8, !tbaa !44, !noalias !337
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.mr) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit112.i

_ZN5vcpkg15LocalizedStringD2Ev.exit112.i:         ; preds = %_ZNSt6vectorIN5vcpkg15LocalizedStringESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i110.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22, !noalias !337
  br label %bb.bq

_ZN5vcpkg15LocalizedStringD2Ev.exit105.i:         ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i103.i, %_ZN5vcpkg15LocalizedStringD2Ev.exit102.i
  %.pn42.i = phi { ptr, i32 } [ %.pn.i, %_ZN5vcpkg15LocalizedStringD2Ev.exit102.i ], [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i103.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22, !noalias !337
  call void @_ZNSt6vectorIN5vcpkg15LocalizedStringESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #22
  br label %.body.i

bb.bq:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit112.i, %bb.ax
  %i.ms = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.04.041.i) #27 ; 2 uses
  %.not17.i = icmp eq ptr %i.ms, %i.bo
  br i1 %.not17.i, label %.loopexit, label %bb.ax

.body.i:                                          ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit105.i, %.loopexit.split-lp21.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aw, %bb.aa
  %.pn44.pn.i = phi { ptr, i32 } [ %.pn42.i, %_ZN5vcpkg15LocalizedStringD2Ev.exit105.i ], [ %lpad.loopexit.split-lp305, %.loopexit.split-lp21.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.jm, %bb.aw ], [ %i.eu, %bb.aa ]
  %.val52.i = load ptr, ptr %i.bp, align 8, !tbaa !340, !noalias !337
  call fastcc void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIZN12_GLOBAL__N_132collect_package_pattern_warningsERKS8_IN5vcpkg14RegistryConfigESaISB_EEE19LocationAndRegistrySaISG_EEESt10_Select1stISJ_ESt4lessIS5_ESaISJ_EE8_M_eraseEPSt13_Rb_tree_nodeISJ_E(ptr noundef %.val52.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22, !noalias !337
  br label %.body

.loopexit:                                        ; preds = %bb.bq, %._crit_edge.i, %._crit_edge.thread.i
  %.val53.i = load ptr, ptr %i.bp, align 8, !tbaa !340, !noalias !337
  call fastcc void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIZN12_GLOBAL__N_132collect_package_pattern_warningsERKS8_IN5vcpkg14RegistryConfigESaISB_EEE19LocationAndRegistrySaISG_EEESt10_Select1stISJ_ESt4lessIS5_ESaISJ_EE8_M_eraseEPSt13_Rb_tree_nodeISJ_E(ptr noundef %.val53.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22, !noalias !337
  %i.mt = load ptr, ptr %31, align 8, !tbaa !354  ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !354 ; 2 uses
  %.not158170 = icmp eq ptr %i.mt, %i.mv
  br i1 %.not158170, label %_ZSt8_DestroyIPN5vcpkg15LocalizedStringES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph173

.lr.ph173:                                        ; preds = %.loopexit
  %i.mw = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  br label %bb.bv

._crit_edge174:                                   ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit120
  %.pre = load ptr, ptr %31, align 8, !tbaa !138  ; 3 uses
  %.pre188 = load ptr, ptr %i.mu, align 8, !tbaa !136 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre188
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5vcpkg15LocalizedStringES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i107

.lr.ph.i.i.i107:                                  ; preds = %._crit_edge174, %_ZSt8_DestroyIN5vcpkg15LocalizedStringEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.nc, %_ZSt8_DestroyIN5vcpkg15LocalizedStringEEvPT_.exit.i.i.i ], [ %.pre, %._crit_edge174 ] ; 3 uses
  %i.mx = load ptr, ptr %.05.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.mz = icmp eq ptr %i.mx, %i.my
  br i1 %i.mz, label %_ZSt8_DestroyIN5vcpkg15LocalizedStringEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i107
  %i.na = load i64, ptr %i.my, align 8, !tbaa !44
  %i.nb = add i64 %i.na, 1
  call void @_ZdlPvm(ptr noundef %i.mx, i64 noundef %i.nb) #24
  br label %_ZSt8_DestroyIN5vcpkg15LocalizedStringEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5vcpkg15LocalizedStringEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.nc, %.pre188
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5vcpkg15LocalizedStringES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i107, !llvm.loop !5

_ZSt8_DestroyIPN5vcpkg15LocalizedStringES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5vcpkg15LocalizedStringEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %31, align 8, !tbaa !138
  br label %_ZSt8_DestroyIPN5vcpkg15LocalizedStringES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5vcpkg15LocalizedStringES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %.loopexit, %_ZSt8_DestroyIPN5vcpkg15LocalizedStringES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %._crit_edge174
  %i.nd = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5vcpkg15LocalizedStringES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %._crit_edge174 ], [ %i.mt, %.loopexit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.nd, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5vcpkg15LocalizedStringESaIS1_EED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %_ZSt8_DestroyIPN5vcpkg15LocalizedStringES1_EvT_S3_RSaIT0_E.exit.i
  %i.ne = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !137
  %i.ng = ptrtoint ptr %i.nf to i64
  %i.nh = ptrtoint ptr %i.nd to i64
  %i.ni = sub i64 %i.ng, %i.nh
  call void @_ZdlPvm(ptr noundef nonnull %i.nd, i64 noundef %i.ni) #24
  br label %_ZNSt6vectorIN5vcpkg15LocalizedStringESaIS1_EED2Ev.exit

_ZNSt6vectorIN5vcpkg15LocalizedStringESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5vcpkg15LocalizedStringES1_EvT_S3_RSaIT0_E.exit.i, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  %i.nj = getelementptr inbounds nuw i8, ptr %24, i64 376 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !355
  %.sroa.0.0.copyload.i138 = load i64, ptr @_ZN5vcpkg43msgAnObjectContainingVcpkgArtifactsMetadataE, align 8, !tbaa !51, !noalias !356
  invoke void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %4, i64 %.sroa.0.0.copyload.i138)
          to label %.noexc111 unwind label %bb.ca

.noexc111:                                        ; preds = %_ZNSt6vectorIN5vcpkg15LocalizedStringESaIS1_EED2Ev.exit
  invoke void @_ZN5vcpkg4Json6Reader27check_for_unexpected_fieldsERKNS0_6ObjectENS_4SpanIKNS_13StringLiteralEEERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.bs unwind label %bb.bt, !noalias !355

bb.bs:                                            ; preds = %.noexc111
  %i.nk = load ptr, ptr %4, align 8, !tbaa !43, !noalias !355 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.nm = icmp eq ptr %i.nk, %i.nl
  br i1 %i.nm, label %_ZN5vcpkg15LocalizedStringD2Ev.exit.i109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i108: ; preds = %bb.bs
  %i.nn = load i64, ptr %i.nl, align 8, !tbaa !44, !noalias !355
  %i.no = add i64 %i.nn, 1
  call void @_ZdlPvm(ptr noundef %i.nk, i64 noundef %i.no) #24, !noalias !355
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit.i109

_ZN5vcpkg15LocalizedStringD2Ev.exit.i109:         ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !355
  invoke fastcc void @_ZNK12_GLOBAL__N_122CeMetadataDeserializer12visit_objectERN5vcpkg4Json6ReaderERKNS2_6ObjectE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Optional.117") align 8 %33, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNK5vcpkg4Json13IDeserializerINS0_6ObjectEE5visitERNS0_6ReaderERKS2_.exit unwind label %bb.ca, !inline_history !6

bb.bt:                                            ; preds = %.noexc111
  %i.np = landingpad { ptr, i32 }
          cleanup
  %i.nq = load ptr, ptr %4, align 8, !tbaa !43, !noalias !355 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ns = icmp eq ptr %i.nq, %i.nr
  br i1 %i.ns, label %_ZN5vcpkg15LocalizedStringD2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i: ; preds = %bb.bt
  %i.nt = load i64, ptr %i.nr, align 8, !tbaa !44, !noalias !355
  %i.nu = add i64 %i.nt, 1
  call void @_ZdlPvm(ptr noundef %i.nq, i64 noundef %i.nu) #24, !noalias !355
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit8.i

_ZN5vcpkg15LocalizedStringD2Ev.exit8.i:           ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !355
  br label %.body113

bb.bu:                                            ; preds = %bb.t, %_ZN5vcpkg7details15OptionalStorageINS_14RegistryConfigELb1EE7emplaceIJEEERS2_DpOT_.exit.i, %bb.i, %bb.b
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bv:                                            ; preds = %.lr.ph173, %_ZN5vcpkg15LocalizedStringD2Ev.exit120
  %.sroa.0144.0171 = phi ptr [ %i.mt, %.lr.ph173 ], [ %i.od, %_ZN5vcpkg15LocalizedStringD2Ev.exit120 ] ; 2 uses
  %.sroa.0.0.copyload.i115 = load i64, ptr @_ZN5vcpkg23msgAConfigurationObjectE, align 8, !tbaa !51, !noalias !357
  invoke void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %32, i64 %.sroa.0.0.copyload.i115)
          to label %_ZNK12_GLOBAL__N_125ConfigurationDeserializer9type_nameEv.exit117 unwind label %bb.bx

_ZNK12_GLOBAL__N_125ConfigurationDeserializer9type_nameEv.exit117: ; preds = %bb.bv
  %i.nw = call { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0144.0171) #22 ; 2 uses
  %i.nx = extractvalue { ptr, i64 } %i.nw, 0
  %i.ny = extractvalue { ptr, i64 } %i.nw, 1
  invoke void @_ZN5vcpkg4Json6Reader11add_warningENS_15LocalizedStringENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 %32, ptr %i.nx, i64 %i.ny)
          to label %bb.bw unwind label %bb.by

bb.bw:                                            ; preds = %_ZNK12_GLOBAL__N_125ConfigurationDeserializer9type_nameEv.exit117
  %i.nz = load ptr, ptr %32, align 8, !tbaa !43   ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %i.mw
  br i1 %i.oa, label %_ZN5vcpkg15LocalizedStringD2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118: ; preds = %bb.bw
  %i.ob = load i64, ptr %i.mw, align 8, !tbaa !44
  %i.oc = add i64 %i.ob, 1
  call void @_ZdlPvm(ptr noundef %i.nz, i64 noundef %i.oc) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit120

_ZN5vcpkg15LocalizedStringD2Ev.exit120:           ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.0144.0171, i64 32 ; 2 uses
  %.not158 = icmp eq ptr %i.od, %i.mv
  br i1 %.not158, label %._crit_edge174, label %bb.bv

bb.bx:                                            ; preds = %bb.bv
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit123

bb.by:                                            ; preds = %_ZNK12_GLOBAL__N_125ConfigurationDeserializer9type_nameEv.exit117
  %i.of = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.og = load ptr, ptr %32, align 8, !tbaa !43   ; 2 uses
  %i.oh = icmp eq ptr %i.og, %i.mw
  br i1 %i.oh, label %_ZN5vcpkg15LocalizedStringD2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121: ; preds = %bb.by
  %i.oi = load i64, ptr %i.mw, align 8, !tbaa !44
  %i.oj = add i64 %i.oi, 1
  call void @_ZdlPvm(ptr noundef %i.og, i64 noundef %i.oj) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit123

_ZN5vcpkg15LocalizedStringD2Ev.exit123:           ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121, %bb.bx
  %.pn78 = phi { ptr, i32 } [ %i.oe, %bb.bx ], [ %i.of, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121 ], [ %i.of, %bb.by ]
  call void @_ZNSt6vectorIN5vcpkg15LocalizedStringESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br label %.body

_ZNK5vcpkg4Json13IDeserializerINS0_6ObjectEE5visitERNS0_6ReaderERKS2_.exit: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit.i109
  %i.ok = load i8, ptr %33, align 8, !tbaa !140, !range !32, !noundef !33
  %i.ol = trunc nuw i8 %i.ok to i1
  %i.om = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 3 uses
  br i1 %i.ol, label %bb.bz, label %_ZN5vcpkg4Json6ObjectaSERKS1_.exit

bb.bz:                                            ; preds = %_ZNK5vcpkg4Json13IDeserializerINS0_6ObjectEE5visitERNS0_6ReaderERKS2_.exit
  %i.on = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESaISA_EEaSERKSC_(ptr noundef nonnull align 8 dereferenceable(24) %i.nj, ptr noundef nonnull align 8 dereferenceable(24) %i.om)
          to label %_ZN5vcpkg4Json6ObjectaSERKS1_.exit unwind label %bb.cb ; 0 uses

bb.ca:                                            ; preds = %_ZNSt6vectorIN5vcpkg15LocalizedStringESaIS1_EED2Ev.exit, %_ZN5vcpkg15LocalizedStringD2Ev.exit.i109
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %.body113

bb.cb:                                            ; preds = %bb.bz
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

_ZN5vcpkg4Json6ObjectaSERKS1_.exit:               ; preds = %bb.bz, %_ZNK5vcpkg4Json13IDeserializerINS0_6ObjectEE5visitERNS0_6ReaderERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false)
  %i.oq = call noundef ptr @_ZNK5vcpkg4Json6Object3getENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull @.str.12, i64 7) #22 ; 2 uses
  %.not.i125.not = icmp eq ptr %i.oq, null
  br i1 %.not.i125.not, label %_ZN5vcpkg4Json6Reader21optional_object_fieldINS0_6ObjectEEEbRKS3_NS_10StringViewERT_RKNS0_13IDeserializerIS7_EE.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZN5vcpkg4Json6ObjectaSERKS1_.exit
  invoke void @_ZN5vcpkg4Json6Reader12visit_in_keyINS0_6ObjectEEEvRKNS0_5ValueENS_10StringViewERT_RKNS0_13IDeserializerIS8_EE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.oq, ptr nonnull @.str.12, i64 7, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_119DemandsDeserializer8instanceE)
          to label %bb.cd unwind label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.or = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5vcpkg4Json6Object17insert_or_replaceENS_10StringViewERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.nj, ptr nonnull @.str.12, i64 7, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %_ZN5vcpkg4Json6Reader21optional_object_fieldINS0_6ObjectEEEbRKS3_NS_10StringViewERT_RKNS0_13IDeserializerIS7_EE.exit unwind label %bb.ce ; 0 uses

bb.ce:                                            ; preds = %bb.cc, %bb.cd
  %i.os = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5vcpkg4Json6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %34) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  br label %bb.cl

_ZN5vcpkg4Json6Reader21optional_object_fieldINS0_6ObjectEEEbRKS3_NS_10StringViewERT_RKNS0_13IDeserializerIS7_EE.exit: ; preds = %_ZN5vcpkg4Json6ObjectaSERKS1_.exit, %bb.cd
  %i.ot = load ptr, ptr %25, align 8, !tbaa !68   ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !68 ; 2 uses
  %.not175 = icmp eq ptr %i.ot, %i.ov
  br i1 %.not175, label %._crit_edge178, label %.lr.ph177

.lr.ph177:                                        ; preds = %_ZN5vcpkg4Json6Reader21optional_object_fieldINS0_6ObjectEEEbRKS3_NS_10StringViewERT_RKNS0_13IDeserializerIS7_EE.exit
  %i.ow = getelementptr inbounds nuw i8, ptr %35, i64 8
  br label %bb.ck

._crit_edge178:                                   ; preds = %bb.ck, %_ZN5vcpkg4Json6Reader21optional_object_fieldINS0_6ObjectEEEbRKS3_NS_10StringViewERT_RKNS0_13IDeserializerIS7_EE.exit
  store i8 1, ptr %0, align 8, !tbaa !79
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.ox, align 8, !tbaa !75
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 0, ptr %i.oy, align 8, !tbaa !44
  %i.oz = load i8, ptr %24, align 8, !tbaa !75, !range !32, !noundef !33
  %i.pa = trunc nuw i8 %i.oz to i1
  br i1 %i.pa, label %bb.cf, label %_ZN5vcpkg8OptionalINS_13ConfigurationEEC2IS1_TnNSt9enable_ifIXaantsr3stdE9is_same_vINSt5decayIT_E4typeES2_Esr3stdE18is_constructible_vINS_7details15OptionalStorageIS1_Lb1EEES6_EEiE4typeELi0EEEOS6_.exit

bb.cf:                                            ; preds = %._crit_edge178
  store i8 1, ptr %i.ox, align 8, !tbaa !75
  call void @_ZN5vcpkg14RegistryConfigC2EOS0_(ptr noundef nonnull align 8 dereferenceable(344) %i.oy, ptr noundef nonnull align 8 dereferenceable(344) %i.c) #22
  br label %_ZN5vcpkg8OptionalINS_13ConfigurationEEC2IS1_TnNSt9enable_ifIXaantsr3stdE9is_same_vINSt5decayIT_E4typeES2_Esr3stdE18is_constructible_vINS_7details15OptionalStorageIS1_Lb1EEES6_EEiE4typeELi0EEEOS6_.exit

_ZN5vcpkg8OptionalINS_13ConfigurationEEC2IS1_TnNSt9enable_ifIXaantsr3stdE9is_same_vINSt5decayIT_E4typeES2_Esr3stdE18is_constructible_vINS_7details15OptionalStorageIS1_Lb1EEES6_EEiE4typeELi0EEEOS6_.exit: ; preds = %._crit_edge178, %bb.cf
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.pc = load <2 x ptr>, ptr %i.d, align 8, !tbaa !77
  store <2 x ptr> %i.pc, ptr %i.pb, align 8, !tbaa !77
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.pe = getelementptr inbounds nuw i8, ptr %24, i64 368
  %i.pf = getelementptr inbounds nuw i8, ptr %24, i64 384
  %i.pg = load ptr, ptr %i.pe, align 8, !tbaa !99
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.ph = load ptr, ptr %i.nj, align 8, !tbaa !66
  %i.pi = load <2 x ptr>, ptr %i.pf, align 8, !tbaa !100
  %i.pj = insertelement <4 x ptr> poison, ptr %i.pg, i64 0
  %i.pk = insertelement <4 x ptr> %i.pj, ptr %i.ph, i64 1
  %i.pl = shufflevector <2 x ptr> %i.pi, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pm = shufflevector <4 x ptr> %i.pk, <4 x ptr> %i.pl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.pm, ptr %i.pd, align 8, !tbaa !101
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nj, i8 0, i64 24, i1 false)
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.po = load ptr, ptr %i.e, align 8, !tbaa !66
  store ptr %i.po, ptr %i.pn, align 8, !tbaa !66
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.pq = getelementptr inbounds nuw i8, ptr %24, i64 408
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !65
  store ptr %i.pr, ptr %i.pp, align 8, !tbaa !65
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.pt = getelementptr inbounds nuw i8, ptr %24, i64 416
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !102
  store ptr %i.pu, ptr %i.ps, align 8, !tbaa !102
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.pw = load <2 x ptr>, ptr %i.l, align 8, !tbaa !68
  store <2 x ptr> %i.pw, ptr %i.pv, align 8, !tbaa !68
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.py = getelementptr inbounds nuw i8, ptr %24, i64 440
end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE:bb.a
bb.bi:                                            ; preds = %bb.bg
  br label %_ZN3fmt3v126detail11parse_alignEc.exit76

_ZN3fmt3v126detail11parse_alignEc.exit76:         ; preds = %bb.bg, %bb.bh, %bb.bi
  %.0.i75 = phi i32 [ 8, %bb.bg ], [ 24, %bb.bi ], [ 16, %bb.bh ]
  %i.ez = icmp eq i32 %.sroa.0113.0, 0
  br i1 %i.ez, label %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78, label %_ZN3fmt3v126detail11parse_alignEc.exit76.thread

_ZN3fmt3v126detail11parse_alignEc.exit76.thread:  ; preds = %bb.bg, %_ZN3fmt3v126detail11parse_alignEc.exit76
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.65) #25
  unreachable

_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78: ; preds = %_ZN3fmt3v126detail11parse_alignEc.exit76
  %i.fa = load i32, ptr %2, align 8, !tbaa !153
  %i.fb = and i32 %i.fa, -229377
  %i.fc = trunc nuw nsw i64 %i.er to i32
  %i.fd = shl nuw nsw i32 %i.fc, 15
  %i.fe = add nuw nsw i32 %i.fd, 32768
  %i.ff = or disjoint i32 %i.fb, %i.fe            ; 2 uses
  store i32 %i.ff, ptr %2, align 8, !tbaa !153
  %cond = icmp eq i64 %i.er, 0
  br i1 %cond, label %bb.bj, label %.lr.ph.i

bb.bj:                                            ; preds = %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78
  %i.fg = load i8, ptr %.0145, align 1, !tbaa !44
  store i8 %i.fg, ptr %i.q, align 4, !tbaa !44
  store i8 0, ptr %i.t, align 1, !tbaa !44
  store i8 0, ptr %i.u, align 2, !tbaa !44
  br label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit

.lr.ph.i:                                         ; preds = %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78
  %i.fh = load i8, ptr %.0145, align 1, !tbaa !44
  store i8 %i.fh, ptr %i.q, align 4, !tbaa !44
  %i.fi = getelementptr inbounds nuw i8, ptr %.0145, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !44
  store i8 %i.fj, ptr %i.v, align 1, !tbaa !44
  %exitcond.not.i.1 = icmp eq i64 %i.er, 1
  br i1 %exitcond.not.i.1, label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.0145, i64 2
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !44
  store i8 %i.fl, ptr %i.w, align 2, !tbaa !44
  %exitcond.not.i.2 = icmp eq i64 %i.er, 2
  br i1 %exitcond.not.i.2, label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.fm = getelementptr inbounds nuw i8, ptr %.0145, i64 3
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !44
  store i8 %i.fn, ptr %i.x, align 1, !tbaa !44
  br label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit

_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit: ; preds = %.lr.ph.i, %.lr.ph.i.2, %.lr.ph.i.3, %bb.bj
  %i.fo = and i32 %i.ff, -57
  %i.fp = or disjoint i32 %i.fo, %.0.i75
  store i32 %i.fp, ptr %2, align 8, !tbaa !153
  %i.fq = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit63, %_ZN3fmt3v126detail15parse_precisionIcEEPKT_S5_S5_RNS0_12format_specsERNS1_7arg_refIS3_EERNS0_13parse_contextIS3_EE.exit, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit59, %bb.t, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit55, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit53, %_ZN3fmt3v126detail11parse_alignEc.exit52
  %.1146 = phi ptr [ %i.fq, %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit ], [ %i.ac, %_ZN3fmt3v126detail11parse_alignEc.exit52 ], [ %i.aj, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit53 ], [ %i.an, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit55 ], [ %i.au, %bb.t ], [ %i.ax, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit59 ], [ %i.bh, %_ZN3fmt3v126detail15parse_precisionIcEEPKT_S5_S5_RNS0_12format_specsERNS1_7arg_refIS3_EERNS0_13parse_contextIS3_EE.exit ], [ %i.bq, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit63 ] ; 4 uses
  %.sroa.0113.1 = phi i32 [ 1, %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit ], [ 1, %_ZN3fmt3v126detail11parse_alignEc.exit52 ], [ 2, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit53 ], [ 3, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit55 ], [ 4, %bb.t ], [ 5, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit59 ], [ 6, %_ZN3fmt3v126detail15parse_precisionIcEEPKT_S5_S5_RNS0_12format_specsERNS1_7arg_refIS3_EERNS0_13parse_contextIS3_EE.exit ], [ 7, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit63 ]
  %i.fr = icmp eq ptr %.1146, %1
  br i1 %i.fr, label %.loopexit155, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fs = load i8, ptr %.1146, align 1, !tbaa !44
  br label %bb.d, !llvm.loop !436

.loopexit155.sink.split:                          ; preds = %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit74, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit73, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit72, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit71, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit70, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit69, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit68, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit67, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit66, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit65, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit64, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit
  %.sink = phi i32 [ %i.bv, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit ], [ %i.cc, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit64 ], [ %i.ch, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit65 ], [ %i.co, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit66 ], [ %i.cv, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit67 ], [ %i.dc, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit68 ], [ %i.dj, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit69 ], [ %i.dq, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit70 ], [ %i.dv, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit71 ], [ %i.ea, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit72 ], [ %i.ef, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit73 ], [ %i.ek, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit74 ]
  store i32 %.sink, ptr %2, align 8, !tbaa !153
  %i.ft = getelementptr inbounds nuw i8, ptr %.0145, i64 1
  br label %.loopexit155

.loopexit155:                                     ; preds = %bb.bb, %bb.bk, %bb.d, %.loopexit155.sink.split, %bb.c
  %.1 = phi ptr [ %0, %bb.c ], [ %i.ft, %.loopexit155.sink.split ], [ %.0145, %bb.d ], [ %.0145, %bb.bb ], [ %.1146, %bb.bk ]
  ret ptr %.1
}

; Function Attrs: noreturn
declare void @_ZN3fmt3v1212report_errorEPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.fmt::v12::detail::dynamic_spec_handler", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !160
  %i.b = load i8, ptr %0, align 1, !tbaa !44      ; 3 uses
  %i.c = add i8 %i.b, -48
  %or.cond23 = icmp ult i8 %i.c, 10
  br i1 %or.cond23, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.e = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.f = xor i64 %i.e, -1
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.d ; 2 uses
  %i.h = sub i64 %i.d, %i.e
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.h ; 2 uses
  %i.i = zext nneg i8 %i.b to i32
  %i.j = add nsw i32 %i.i, -48                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i35 = icmp eq ptr %i.k, %1
  br i1 %.not34.i35, label %.critedge.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = mul i32 %i.r, 10
  %i.m = zext nneg i8 %i.s to i32
  %i.n = add nsw i32 %i.m, -48
  %i.o = add i32 %i.n, %i.l                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.p, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !11

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.k, %bb.b ] ; 4 uses
  %i.r = phi i32 [ %i.o, %bb.c ], [ %i.j, %bb.b ] ; 4 uses
  %.0.i37 = phi ptr [ %i.q, %bb.c ], [ %0, %bb.b ]
  %.027.i36 = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ]
  %i.s = load i8, ptr %i.q, align 1, !tbaa !44    ; 2 uses
  %i.t = add i8 %i.s, -48
  %or.cond.i = icmp ult i8 %i.t, 10
  br i1 %or.cond.i, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !11

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !11

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.027.i.lcssa = phi i32 [ %.027.i36, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ %i.r, %bb.c ]
  %.lcssa = phi i32 [ %i.r, %..critedge.i_crit_edge ], [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.0.i37, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.b ], [ %scevgep.i, %bb.c ]
  %.lcssa.i = phi ptr [ %i.q, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.b ], [ %scevgep37.i, %bb.c ] ; 2 uses
  %i.u = ptrtoint ptr %.lcssa.i to i64
  %i.v = ptrtoint ptr %0 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp slt i64 %i.w, 10
  br i1 %i.x, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.y = icmp eq i64 %i.w, 10
  br i1 %i.y, label %bb.e, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = zext i32 %.027.i.lcssa to i64
  %i.aa = mul nuw nsw i64 %i.z, 10
  %i.ab = load i8, ptr %.0.lcssa.i, align 1, !tbaa !44
  %i.ac = sext i8 %i.ab to i64
  %i.ad = add nsw i64 %i.ac, 4294967248
  %i.ae = and i64 %i.ad, 4294967294
  %i.af = add nuw nsw i64 %i.ae, %i.aa
  %i.ag = icmp samesign ugt i64 %i.af, 2147483647
  %i.ah = icmp eq i32 %.lcssa, -1
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %.critedge.i
  %.old = icmp eq i32 %.lcssa, -1
  br i1 %.old, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread: ; preds = %bb.e, %bb.d, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.67) #25
  unreachable

bb.f:                                             ; preds = %bb.e, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  store i32 %.lcssa, ptr %2, align 4, !tbaa !59
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.ai = icmp eq i8 %i.b, 123
  br i1 %i.ai, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %.not = icmp eq ptr %i.aj, %1
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !44
  switch i8 %i.ak, label %bb.l [
    i8 125, label %bb.j
    i8 58, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !162 ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.69) #25
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.j
  %i.ao = add nuw nsw i32 %i.am, 1
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !162
  store i32 %i.am, ptr %3, align 8
  store i32 1, ptr %i.a, align 4, !tbaa !160
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %4, ptr %5, align 8, !tbaa !437
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.ap, align 8, !tbaa !438
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.aq, align 8, !tbaa !101
  %i.ar = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.aj, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit, %bb.l, %bb.h
  %.0 = phi ptr [ %i.aj, %bb.h ], [ %i.ar, %bb.l ], [ %i.aj, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit ] ; 3 uses
  %.not22 = icmp eq ptr %.0, %1
  br i1 %.not22, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load i8, ptr %.0, align 1, !tbaa !44
  %i.at = icmp eq i8 %i.as, 125
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.sroa.3.0.pre = load i32, ptr %i.a, align 4, !tbaa !160
  br label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.g
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.68) #25
  unreachable

bb.q:                                             ; preds = %bb.f, %bb.o
  %.sroa.3.0 = phi i32 [ 0, %bb.f ], [ %.sroa.3.0.pre, %bb.o ]
  %.sroa.0.0 = phi ptr [ %.lcssa.i, %bb.f ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !44      ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.c, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = xor i64 %i.a, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.g = sub i64 %i.b, %i.a
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.c to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i47 = icmp eq ptr %i.j, %1
  br i1 %.not34.i47, label %.critedge.i, label %.lr.ph50

bb.d:                                             ; preds = %.lr.ph50
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.o, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph50, !llvm.loop !11

.lr.ph50:                                         ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i49 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  %.027.i48 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !44    ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !11

..critedge.i_crit_edge:                           ; preds = %.lr.ph50
  br label %.critedge.i, !llvm.loop !11

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i48, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.q, %bb.d ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.0.i49, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.p, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.c ], [ %scevgep37.i, %bb.d ] ; 4 uses
  %i.t = ptrtoint ptr %.lcssa.i to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 10
  br i1 %i.w, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %.027.i.lcssa to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = load i8, ptr %.0.lcssa.i, align 1, !tbaa !44
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4294967248
  %i.ad = and i64 %i.ac, 4294967294
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = icmp samesign ult i64 %i.ae, 2147483648
  br i1 %i.af, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.037 = phi ptr [ %i.ag, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.021 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ]
  %i.ah = icmp eq ptr %.037, %1
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ai = load i8, ptr %.037, align 1, !tbaa !44
  switch i8 %i.ai, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.68) #25
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !441, !nonnull !33, !align !125
  store i32 %.021, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !442, !nonnull !33, !align !443
  store i32 1, ptr %i.am, align 4, !tbaa !160
  %i.an = load ptr, ptr %2, align 8, !tbaa !444, !nonnull !33, !align !125
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !162
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.70) #25
  unreachable

_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.ao, align 8, !tbaa !162
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.ar = and i8 %i.c, -33
  %i.as = add i8 %i.ar, -65
  %or.cond10.i = icmp ult i8 %i.as, 26
  %i.at = icmp eq i8 %i.c, 95
  %i.au = or i1 %i.at, %or.cond10.i
  br i1 %i.au, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.av = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.av  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.aw, %1
  br i1 %.not45, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.68) #25
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ax, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !439

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.ay = phi ptr [ %i.ax, %.critedge4 ], [ %i.aw, %.critedge4.preheader ] ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !44  ; 3 uses
  %i.ba = and i8 %i.az, -33
  %i.bb = add i8 %i.ba, -65
  %or.cond10.i32 = icmp ult i8 %i.bb, 26
  %i.bc = icmp eq i8 %i.az, 95
  %i.bd = or i1 %i.bc, %or.cond10.i32
  %i.be = add i8 %i.az, -48
  %or.cond31 = icmp ult i8 %i.be, 10
  %or.cond38 = or i1 %or.cond31, %i.bd
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !439

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !439

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.ay, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bf = ptrtoint ptr %.lcssa40 to i64
  %i.bg = ptrtoint ptr %0 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !441, !nonnull !33, !align !125 ; 2 uses
  store ptr %0, ptr %i.bj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.bh, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !44
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !442, !nonnull !33, !align !443
  store i32 2, ptr %i.bl, align 4, !tbaa !160
  %i.bm = load ptr, ptr %2, align 8, !tbaa !444, !nonnull !33, !align !125
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 -1, ptr %i.bn, align 8, !tbaa !162
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat {
bb.a:
  switch i32 %0, label %bb.h [
    i32 0, label %bb.ag
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %2, align 8, !tbaa !44     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !456, !noalias !457 ; 3 uses
  %i.d = icmp sgt i64 %i.c, -1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %i.c to i32
  %i.f = icmp slt i32 %i.a, %i.e
  br i1 %i.f, label %bb.d, label %_ZNK3fmt3v127context3argEi.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44, !noalias !457
  %i.i = sext i32 %i.a to i64
  %i.j = getelementptr inbounds [32 x i8], ptr %i.h, i64 %i.i
  br label %_ZNK3fmt3v127context3argEi.exit

bb.e:                                             ; preds = %bb.b
  %i.k = icmp ugt i32 %i.a, 14
  br i1 %i.k, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = shl nuw nsw i32 %i.a, 2
  %i.m = zext nneg i32 %i.l to i64
  %i.n = lshr i64 %i.c, %i.m
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 15                         ; 2 uses
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44, !noalias !457
  br label %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split

bb.h:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !58
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !51 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !456, !noalias !458 ; 5 uses
  %i.u = and i64 %i.t, 4611686018427387904
  %.not13.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not13.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !458 ; 3 uses
  %i.x = icmp slt i64 %i.t, 0
  %.v.i.i.i = select i1 %i.x, i64 -32, i64 -16
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %.v.i.i.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !57, !noalias !458 ; 2 uses
  %.not14.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not14.not.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !56, !noalias !458
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.ac = add nuw i64 %.01215.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ac, %i.aa
  br i1 %exitcond.not.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.k, !llvm.loop !453

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %.01215.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.01215.i.i.i ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !460, !noalias !458 ; 2 uses
  %i.af = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #22, !noalias !458 ; 2 uses
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %i.af, i64 %.sroa.2.0.copyload)
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ae, ptr %.sroa.0.0.copyload, i64 %i.ag), !noalias !458
  %.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  %i.ah = icmp eq i64 %i.af, %.sroa.2.0.copyload
  %i.ai = select i1 %.not.i.i.i.i.i, i1 %i.ah, i1 false
  br i1 %i.ai, label %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, label %bb.j

_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i: ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !461, !noalias !458 ; 6 uses
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %bb.l, label %_ZNK3fmt3v127context3argEi.exit.thread

bb.l:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i
  %i.am = icmp sgt i64 %i.t, -1
  br i1 %i.am, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = trunc i64 %i.t to i32
  %i.ao = icmp slt i32 %i.ak, %i.an
  br i1 %i.ao, label %bb.n, label %_ZNK3fmt3v127context3argEi.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ap = zext nneg i32 %i.ak to i64
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.ap
  br label %_ZNK3fmt3v127context3argEi.exit

bb.o:                                             ; preds = %bb.l
  %i.ar = icmp samesign ugt i32 %i.ak, 14
  br i1 %i.ar, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = shl nuw nsw i32 %i.ak, 2
  %i.at = zext nneg i32 %i.as to i64
  %i.au = lshr i64 %i.t, %i.at
  %i.av = trunc i64 %i.au to i32
  %i.aw = and i32 %i.av, 15                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split

_ZNK3fmt3v127context3argEi.exit:                  ; preds = %bb.n, %bb.d
  %storemerge.in = phi ptr [ %i.aq, %bb.n ], [ %i.j, %bb.d ] ; 2 uses
  %storemerge = load i128, ptr %storemerge.in, align 16, !tbaa !44 ; 3 uses
  %.sroa.010.sroa.0.sroa.0.0.extract.trunc73 = trunc i128 %storemerge to i32
  %.sroa.010.sroa.0.sroa.11.0.extract.shift88101 = lshr i128 %storemerge, 32
  %.sroa.010.sroa.0.sroa.11.0.extract.trunc89 = trunc i128 %.sroa.010.sroa.0.sroa.11.0.extract.shift88101 to i32
  %.sroa.010.sroa.11.0.extract.shift61 = lshr i128 %storemerge, 64
  %.sroa.010.sroa.11.0.extract.trunc62 = trunc nuw i128 %.sroa.010.sroa.11.0.extract.shift61 to i64
  %.sroa.23.0.in = getelementptr inbounds nuw i8, ptr %storemerge.in, i64 16
  %.sroa.23.0 = load i32, ptr %.sroa.23.0.in, align 16, !tbaa !463 ; 2 uses
  %.not = icmp eq i32 %.sroa.23.0, 0
  br i1 %.not, label %_ZNK3fmt3v127context3argEi.exit.thread, label %_ZNK3fmt3v127context3argEi.exit.thread37

_ZNK3fmt3v127context3argEi.exit.thread:           ; preds = %bb.j, %bb.h, %bb.i, %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, %bb.p, %bb.o, %bb.m, %bb.f, %bb.e, %bb.c, %_ZNK3fmt3v127context3argEi.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.77) #25
  unreachable

_ZNK3fmt3v127context3argEi.exit.thread37.sink.split: ; preds = %bb.p, %bb.g
  %.sink = phi i32 [ %i.a, %bb.g ], [ %i.ak, %bb.p ]
  %.sink107 = phi ptr [ %i.r, %bb.g ], [ %i.w, %bb.p ]
  %.sroa.23.039.ph = phi i32 [ %i.p, %bb.g ], [ %i.aw, %bb.p ]
  %i.ax = zext nneg i32 %.sink to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.sink107, i64 %i.ax
  %.sroa.010.0.copyload25 = load i128, ptr %i.ay, align 16, !tbaa !44 ; 3 uses
  %.sroa.010.sroa.0.sroa.0.0.extract.trunc = trunc i128 %.sroa.010.0.copyload25 to i32
  %.sroa.010.sroa.0.sroa.11.0.extract.shift102 = lshr i128 %.sroa.010.0.copyload25, 32
  %.sroa.010.sroa.0.sroa.11.0.extract.trunc = trunc i128 %.sroa.010.sroa.0.sroa.11.0.extract.shift102 to i32
  %.sroa.010.sroa.11.0.extract.shift = lshr i128 %.sroa.010.0.copyload25, 64
  %.sroa.010.sroa.11.0.extract.trunc = trunc nuw i128 %.sroa.010.sroa.11.0.extract.shift to i64
  br label %_ZNK3fmt3v127context3argEi.exit.thread37

_ZNK3fmt3v127context3argEi.exit.thread37:         ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split, %_ZNK3fmt3v127context3argEi.exit
  %.sroa.010.sroa.0.sroa.11.0 = phi i32 [ %.sroa.010.sroa.0.sroa.11.0.extract.trunc89, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.0.sroa.11.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ] ; 4 uses
  %.sroa.010.sroa.0.sroa.0.0 = phi i32 [ %.sroa.010.sroa.0.sroa.0.0.extract.trunc73, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.0.sroa.0.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ] ; 7 uses
  %.sroa.010.sroa.11.0 = phi i64 [ %.sroa.010.sroa.11.0.extract.trunc62, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.11.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ]
  %.sroa.23.039 = phi i32 [ %.sroa.23.0, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.23.039.ph, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ]
  switch i32 %.sroa.23.039, label %bb.af [
    i32 15, label %bb.ae
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.v
    i32 7, label %bb.w
    i32 8, label %bb.x
    i32 9, label %bb.y
    i32 10, label %bb.z
    i32 11, label %bb.aa
    i32 12, label %bb.ab
    i32 13, label %bb.ac
    i32 14, label %bb.ad
  ]

bb.q:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %i.az = icmp slt i32 %.sroa.010.sroa.0.sroa.0.0, 0
  %i.ba = zext nneg i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  br i1 %i.az, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

bb.r:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %i.bb = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.s:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext74 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
end_hunk_4
begin_hunk_5_@_ZNK12_GLOBAL__N_119DemandsDeserializer12visit_objectERN5vcpkg4Json6ReaderERKNS2_6ObjectE:bb.a
  %i.ai = load ptr, ptr @_ZN5vcpkg3msg12json_field_t4nameE, align 8, !tbaa !53, !noalias !643
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !644
  store ptr %i.q, ptr %7, align 16, !tbaa !56, !noalias !644
  store i64 1, ptr %i.r, align 8, !tbaa !57, !noalias !644
  store ptr %8, ptr %i.s, align 16, !tbaa !44, !noalias !644
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5vcpkg10StringViewEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.t, align 8, !tbaa !44, !noalias !644
  store ptr %i.ai, ptr %i.q, align 16, !tbaa !58, !noalias !644
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !59, !noalias !644
  invoke void @_ZN5vcpkg3msg6detail23format_message_by_indexEmN3fmt3v1217basic_format_argsINS3_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %13, i64 noundef %.sroa.011.0.copyload, i64 4611686018427387919, ptr nonnull %i.s)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNK12_GLOBAL__N_119DemandsDeserializer9type_nameEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !644
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.aj = call { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %13) #22 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  invoke void @_ZN5vcpkg4Json6Reader17add_generic_errorERKNS_15LocalizedStringENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr %i.ak, i64 %i.al)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %13, align 8, !tbaa !43   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.u
  br i1 %i.an, label %_ZN5vcpkg15LocalizedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.ao = load i64, ptr %i.u, align 8, !tbaa !44
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.aq = load ptr, ptr %12, align 8, !tbaa !43   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.v
  br i1 %i.ar, label %_ZN5vcpkg15LocalizedStringD2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit
  %i.as = load i64, ptr %i.v, align 8, !tbaa !44
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit59

_ZN5vcpkg15LocalizedStringD2Ev.exit59:            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.ab

bb.i:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit65

bb.j:                                             ; preds = %_ZNK12_GLOBAL__N_119DemandsDeserializer9type_nameEv.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit62

bb.k:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %13, align 8, !tbaa !43   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.u
  br i1 %i.ay, label %_ZN5vcpkg15LocalizedStringD2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %bb.k
  %i.az = load i64, ptr %i.u, align 8, !tbaa !44
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit62

_ZN5vcpkg15LocalizedStringD2Ev.exit62:            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60, %bb.j
  %.pn = phi { ptr, i32 } [ %i.av, %bb.j ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60 ], [ %i.aw, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.bb = load ptr, ptr %12, align 8, !tbaa !43   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.v
  br i1 %i.bc, label %_ZN5vcpkg15LocalizedStringD2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit62
  %i.bd = load i64, ptr %i.v, align 8, !tbaa !44
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit65

_ZN5vcpkg15LocalizedStringD2Ev.exit65:            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.au, %bb.i ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63 ], [ %.pn, %_ZN5vcpkg15LocalizedStringD2Ev.exit62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.ac

bb.l:                                             ; preds = %bb.e
  %i.bf = call noundef ptr @_ZNK5vcpkg4Json6Object3getENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr nonnull @.str.12, i64 7) #22
  %.not95 = icmp eq ptr %i.bf, null
  br i1 %.not95, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %.sroa.0.0.copyload.i66 = load i64, ptr @_ZN5vcpkg16msgADemandObjectE, align 8, !tbaa !51, !noalias !645
  invoke void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %14, i64 %.sroa.0.0.copyload.i66)
          to label %_ZNK12_GLOBAL__N_119DemandsDeserializer9type_nameEv.exit67 unwind label %bb.p

_ZNK12_GLOBAL__N_119DemandsDeserializer9type_nameEv.exit67: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %.sroa.04.0.copyload = load i64, ptr @_ZN5vcpkg29msgConfigurationNestedDemandsE, align 8, !tbaa !51
  %.sroa.0.0.copyload.i68 = load ptr, ptr %10, align 8, !tbaa !58
  %.sroa.2.0.copyload.i70 = load i64, ptr %.sroa.2.0..0..sroa_idx.i69, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.sroa.0.0.copyload.i68, ptr %6, align 8, !noalias !646
  store i64 %.sroa.2.0.copyload.i70, ptr %i.e, align 8, !noalias !646
  %i.bg = load ptr, ptr @_ZN5vcpkg3msg12json_field_t4nameE, align 8, !tbaa !53, !noalias !646
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !647
  store ptr %i.f, ptr %5, align 16, !tbaa !56, !noalias !647
  store i64 1, ptr %i.g, align 8, !tbaa !57, !noalias !647
  store ptr %6, ptr %i.h, align 16, !tbaa !44, !noalias !647
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5vcpkg10StringViewEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.i, align 8, !tbaa !44, !noalias !647
  store ptr %i.bg, ptr %i.f, align 16, !tbaa !58, !noalias !647
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i73, align 8, !tbaa !59, !noalias !647
  invoke void @_ZN5vcpkg3msg6detail23format_message_by_indexEmN3fmt3v1217basic_format_argsINS3_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %15, i64 noundef %.sroa.04.0.copyload, i64 4611686018427387919, ptr nonnull %i.h)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %_ZNK12_GLOBAL__N_119DemandsDeserializer9type_nameEv.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !647
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bh = call { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #22 ; 2 uses
  %i.bi = extractvalue { ptr, i64 } %i.bh, 0
  %i.bj = extractvalue { ptr, i64 } %i.bh, 1
  invoke void @_ZN5vcpkg4Json6Reader17add_generic_errorERKNS_15LocalizedStringENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr %i.bi, i64 %i.bj)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr %15, align 8, !tbaa !43   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.j
  br i1 %i.bl, label %_ZN5vcpkg15LocalizedStringD2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75: ; preds = %bb.o
  %i.bm = load i64, ptr %i.j, align 8, !tbaa !44
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit77

_ZN5vcpkg15LocalizedStringD2Ev.exit77:            ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.bo = load ptr, ptr %14, align 8, !tbaa !43   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.k
  br i1 %i.bp, label %_ZN5vcpkg15LocalizedStringD2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit77
  %i.bq = load i64, ptr %i.k, align 8, !tbaa !44
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit80

_ZN5vcpkg15LocalizedStringD2Ev.exit80:            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit86

bb.q:                                             ; preds = %_ZNK12_GLOBAL__N_119DemandsDeserializer9type_nameEv.exit67
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit83

bb.r:                                             ; preds = %bb.n
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %15, align 8, !tbaa !43   ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.j
  br i1 %i.bw, label %_ZN5vcpkg15LocalizedStringD2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81: ; preds = %bb.r
  %i.bx = load i64, ptr %i.j, align 8, !tbaa !44
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit83

_ZN5vcpkg15LocalizedStringD2Ev.exit83:            ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81, %bb.q
  %.pn47 = phi { ptr, i32 } [ %i.bt, %bb.q ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81 ], [ %i.bu, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.bz = load ptr, ptr %14, align 8, !tbaa !43   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.k
  br i1 %i.ca, label %_ZN5vcpkg15LocalizedStringD2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit83
  %i.cb = load i64, ptr %i.k, align 8, !tbaa !44
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit86

_ZN5vcpkg15LocalizedStringD2Ev.exit86:            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84, %bb.p
  %.pn47.pn = phi { ptr, i32 } [ %i.bs, %bb.p ], [ %.pn47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84 ], [ %.pn47, %_ZN5vcpkg15LocalizedStringD2Ev.exit83 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.ac

bb.s:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit80, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !648
  %.sroa.0.0.copyload.i88 = load i64, ptr @_ZN5vcpkg43msgAnObjectContainingVcpkgArtifactsMetadataE, align 8, !tbaa !51, !noalias !649
  invoke void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %4, i64 %.sroa.0.0.copyload.i88)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.s
  invoke void @_ZN5vcpkg4Json6Reader27check_for_unexpected_fieldsERKNS0_6ObjectENS_4SpanIKNS_13StringLiteralEEERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.t unwind label %bb.u, !noalias !648

bb.t:                                             ; preds = %.noexc
  %i.cd = load ptr, ptr %4, align 8, !tbaa !43, !noalias !648 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.l
  br i1 %i.ce, label %_ZN5vcpkg15LocalizedStringD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.t
  %i.cf = load i64, ptr %i.l, align 8, !tbaa !44, !noalias !648
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #24, !noalias !648
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit.i

_ZN5vcpkg15LocalizedStringD2Ev.exit.i:            ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !648
  invoke fastcc void @_ZNK12_GLOBAL__N_122CeMetadataDeserializer12visit_objectERN5vcpkg4Json6ReaderERKNS2_6ObjectE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Optional.117") align 8 %16, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_ZNK5vcpkg4Json13IDeserializerINS0_6ObjectEE5visitERNS0_6ReaderERKS2_.exit unwind label %bb.w, !inline_history !6

bb.u:                                             ; preds = %.noexc
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %4, align 8, !tbaa !43, !noalias !648 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.l
  br i1 %i.cj, label %_ZN5vcpkg15LocalizedStringD2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i: ; preds = %bb.u
  %i.ck = load i64, ptr %i.l, align 8, !tbaa !44, !noalias !648
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #24, !noalias !648
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit8.i

_ZN5vcpkg15LocalizedStringD2Ev.exit8.i:           ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !648
  br label %.body

_ZNK5vcpkg4Json13IDeserializerINS0_6ObjectEE5visitERNS0_6ReaderERKS2_.exit: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit.i
  %i.cm = load i8, ptr %16, align 8, !tbaa !140, !range !32, !noundef !33
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.v, label %_ZN5vcpkg7details19OptionalStorageDtorINS_4Json6ObjectELb0EED2Ev.exit

bb.v:                                             ; preds = %_ZNK5vcpkg4Json13IDeserializerINS0_6ObjectEE5visitERNS0_6ReaderERKS2_.exit
  %.sroa.0.0.copyload = load ptr, ptr %11, align 8, !tbaa !58
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !51
  %i.co = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5vcpkg4Json6Object17insert_or_replaceENS_10StringViewERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.y unwind label %bb.x       ; 0 uses

bb.w:                                             ; preds = %bb.s, %_ZN5vcpkg15LocalizedStringD2Ev.exit.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.v
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5vcpkg7details19OptionalStorageDtorINS_4Json6ObjectELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %16) #22
  br label %.body

bb.y:                                             ; preds = %bb.v
  %.pre = load i8, ptr %16, align 8, !tbaa !140, !range !32
  %i.cr = trunc nuw i8 %.pre to i1
  br i1 %i.cr, label %bb.z, label %_ZN5vcpkg7details19OptionalStorageDtorINS_4Json6ObjectELb0EED2Ev.exit

bb.z:                                             ; preds = %bb.y
  %i.cs = load ptr, ptr %i.m, align 8, !tbaa !66  ; 3 uses
  %i.ct = load ptr, ptr %i.n, align 8, !tbaa !65  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.cs, %i.ct
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.z, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.da, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i.i ], [ %i.cs, %bb.z ] ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cu) #22
  %i.cv = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !44
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #24
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.da, %i.ct
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !66
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.z
  %i.db = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.cs, %bb.z ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i1.i.i.i, label %_ZN5vcpkg7details19OptionalStorageDtorINS_4Json6ObjectELb0EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i.i
  %i.dc = load ptr, ptr %i.o, align 8, !tbaa !102
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.df) #24
  br label %_ZN5vcpkg7details19OptionalStorageDtorINS_4Json6ObjectELb0EED2Ev.exit

_ZN5vcpkg7details19OptionalStorageDtorINS_4Json6ObjectELb0EED2Ev.exit: ; preds = %_ZNK5vcpkg4Json13IDeserializerINS0_6ObjectEE5visitERNS0_6ReaderERKS2_.exit, %bb.y, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit59, %_ZN5vcpkg7details19OptionalStorageDtorINS_4Json6ObjectELb0EED2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.090.097, i64 40 ; 2 uses
  %.not94 = icmp eq ptr %i.dg, %i.c
  br i1 %.not94, label %_ZN5vcpkg4Json6ObjectD2Ev.exit.loopexit, label %bb.b

.body:                                            ; preds = %bb.w, %_ZN5vcpkg15LocalizedStringD2Ev.exit8.i, %bb.x
  %.pn51 = phi { ptr, i32 } [ %i.cq, %bb.x ], [ %i.cp, %bb.w ], [ %i.ch, %_ZN5vcpkg15LocalizedStringD2Ev.exit8.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit65, %_ZN5vcpkg15LocalizedStringD2Ev.exit86, %.body, %bb.d
  %.pn54 = phi { ptr, i32 } [ %i.af, %bb.d ], [ %.pn51, %.body ], [ %.pn47.pn, %_ZN5vcpkg15LocalizedStringD2Ev.exit86 ], [ %.pn.pn, %_ZN5vcpkg15LocalizedStringD2Ev.exit65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @_ZN5vcpkg4Json6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  resume { ptr, i32 } %.pn54
}

; Function Attrs: nounwind
declare noundef ptr @_ZNK5vcpkg4Json5Value12maybe_objectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #2

declare void @_ZN5vcpkg21make_builtin_registryERKNS_10VcpkgPathsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.90") align 8, ptr noundef nonnull align 8 dereferenceable(400), ptr noundef align 8) local_unnamed_addr #3

declare void @_ZN5vcpkg17make_git_registryERKNS_10VcpkgPathsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.90") align 8, ptr noundef nonnull align 8 dereferenceable(400), ptr noundef align 8, ptr noundef align 8, ptr noundef align 8) local_unnamed_addr #3

declare void @_ZN5vcpkg24make_filesystem_registryERKNS_18ReadOnlyFilesystemENS_4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.90") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8, ptr noundef align 8) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5vcpkg10VcpkgPaths14get_filesystemEv(ptr noundef nonnull align 8 dereferenceable(400)) local_unnamed_addr #3

declare void @_ZNKR5vcpkg4PathdvENS_10StringViewE(ptr dead_on_unwind writable sret(%"struct.vcpkg::Path") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr, i64) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN5vcpkg4Json6Object17insert_or_replaceENS_10StringViewEOS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5vcpkg10StringView8containsEc(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef signext) local_unnamed_addr #2

declare void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

declare void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64) local_unnamed_addr #3

declare void @_ZN5vcpkg6Checks10check_exitERKNS_8LineInfoEbNS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, ptr, i64) local_unnamed_addr #3

declare void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN5vcpkg6Checks11unreachableERKNS_8LineInfoENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !48
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !43 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !47   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.e, ptr %i.a, align 8, !tbaa !51
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !43
  %i.h = load i64, ptr %i.a, align 8, !tbaa !51
  store i64 %i.h, ptr %i.b, align 8, !tbaa !44
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
end_hunk_5
begin_hunk_6_@llvm.smin.i64
!156 = !{!"_ZTSN3fmt3v1217basic_string_viewIcEE", !35, i64 0, !41, i64 8}
!157 = !{!156, !35, i64 0}
!158 = !{!156, !41, i64 8}
!159 = !{!"_ZTSN3fmt3v1211arg_id_kindE", !25, i64 0}
!160 = !{!159, !159, i64 0}
!161 = !{!"_ZTSN3fmt3v1213parse_contextIcEE", !156, i64 0, !26, i64 16}
!162 = !{!161, !26, i64 16}
!163 = !{!"p1 _ZTSN3fmt3v1213parse_contextIcEE", !34, i64 0}
!164 = !{!"p1 _ZTSN3fmt3v126detail7arg_refIcEE", !34, i64 0}
!165 = !{!29, !29, i64 0}
!166 = !{!154, !26, i64 8}
!167 = !{!"_ZTSN3fmt3v126detail6bufferIcEE", !35, i64 0, !41, i64 8, !41, i64 16, !34, i64 24}
!168 = !{!167, !41, i64 8}
!169 = !{!167, !41, i64 16}
!170 = !{!167, !34, i64 24}
!171 = !{!167, !35, i64 0}
!172 = !{!"llvm.loop.isvectorized", i32 1}
!173 = !{!"llvm.loop.unroll.runtime.disable"}
!174 = !{!"branch_weights", i32 4, i32 28}
!175 = !{!"llvm.loop.unroll.disable"}
!176 = !{!"p1 bool", !34, i64 0}
!177 = !{!176, !176, i64 0}
!178 = !{!"p1 long", !34, i64 0}
!179 = !{!178, !178, i64 0}
!180 = !{!"p1 _ZTSN3fmt3v1217basic_string_viewIcEE", !34, i64 0}
!181 = !{!180, !180, i64 0}
!182 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEUlS4_E_", !29, i64 0, !41, i64 8, !156, i64 16}
!183 = !{!182, !29, i64 0}
!184 = !{!182, !41, i64 8}
!185 = !{!"_ZTSN3fmt3v126detail18find_escape_resultIcEE", !35, i64 0, !35, i64 8, !26, i64 16}
!186 = !{!185, !35, i64 0}
!187 = !{!185, !35, i64 8}
!188 = !{!185, !26, i64 16}
!189 = !{!"branch_weights", i32 8, i32 24}
!190 = !{!"_ZTSN3fmt3v126detail15counting_bufferIcEE", !167, i64 0, !25, i64 32, !41, i64 288}
!191 = !{!190, !41, i64 288}
!192 = !{!"_ZTSN5vcpkg7details19OptionalStorageDtorISt6vectorINS_14RegistryConfigESaIS3_EELb0EEE", !29, i64 0, !25, i64 8}
!193 = !{!192, !29, i64 0}
!194 = !{!"_ZTSN5vcpkg7details19OptionalStorageDtorINS_25PackagePatternDeclarationELb0EEE", !29, i64 0, !25, i64 8}
!195 = !{!194, !29, i64 0}
!196 = distinct !{!196, i1 true, !"_ZN5vcpkg3msg6formatIJNS0_6path_tEEJNS_10StringViewEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS6_E4typeET0_EE"}
!197 = distinct !{!197, !196, !"_ZN5vcpkg3msg6formatIJNS0_6path_tEEJNS_10StringViewEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS6_E4typeET0_EE: argument 0"}
!198 = distinct !{!198, i1 true, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_"}
!199 = distinct !{!199, !198, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_: argument 0"}
!200 = !{!197}
!201 = !{!199, !197}
!202 = distinct !{!202, i1 true, !"_ZN5vcpkg3msg6formatIJNS0_5url_tEEJNS_10StringViewEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS6_E4typeET0_EE"}
!203 = distinct !{!203, !202, !"_ZN5vcpkg3msg6formatIJNS0_5url_tEEJNS_10StringViewEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS6_E4typeET0_EE: argument 0"}
!204 = distinct !{!204, i1 true, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_"}
!205 = distinct !{!205, !204, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_: argument 0"}
!206 = !{!203}
!207 = !{!205, !203}
!208 = distinct !{!208, i1 true, !"_ZN5vcpkg19find_unknown_fieldsB5cxx11ERKNS_13ConfigurationE"}
!209 = distinct !{!209, !208, !"_ZN5vcpkg19find_unknown_fieldsB5cxx11ERKNS_13ConfigurationE: argument 0"}
!210 = distinct !{!210, i1 true, !"_ZN5vcpkg7Strings4joinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_NS_13StringLiteralERKT_"}
!211 = distinct !{!211, !210, !"_ZN5vcpkg7Strings4joinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_NS_13StringLiteralERKT_: argument 0"}
!212 = distinct !{!212, i1 true, !"_ZN5vcpkg7Strings4joinIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEENS0_7details19IdentityTransformerEEES9_NS_13StringLiteralET_SJ_T0_"}
!213 = distinct !{!213, !212, !"_ZN5vcpkg7Strings4joinIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEENS0_7details19IdentityTransformerEEES9_NS_13StringLiteralET_SJ_T0_: argument 0"}
!214 = distinct !{!214, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!215 = distinct !{!215, !214, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!216 = distinct !{!216, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!217 = distinct !{!217, !216, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!218 = !{!209}
!219 = !{!211}
!220 = !{!213, !211}
!221 = !{!215}
!222 = !{!217}
!223 = distinct !{!223, !72}
!224 = distinct !{!224, i1 true, !"_ZN5vcpkg3msg6formatIJNS0_6path_tEEJNS_10StringViewEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS6_E4typeET0_EE"}
!225 = distinct !{!225, !224, !"_ZN5vcpkg3msg6formatIJNS0_6path_tEEJNS_10StringViewEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS6_E4typeET0_EE: argument 0"}
!226 = distinct !{!226, i1 true, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_"}
!227 = distinct !{!227, !226, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_: argument 0"}
!228 = !{!225}
!229 = !{!227, !225}
!230 = distinct !{!230, i1 true, !"_ZNK5vcpkg4Json13IDeserializerINS_13ConfigurationEE5visitERNS0_6ReaderERKNS0_6ObjectE"}
!231 = distinct !{!231, !230, !"_ZNK5vcpkg4Json13IDeserializerINS_13ConfigurationEE5visitERNS0_6ReaderERKNS0_6ObjectE: argument 0"}
!232 = distinct !{null}
!233 = distinct !{!233, i1 true, !"_ZN5vcpkg3msg6formatIJNS0_5url_tEEJNS_10StringViewEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS6_E4typeET0_EE"}
!234 = distinct !{!234, !233, !"_ZN5vcpkg3msg6formatIJNS0_5url_tEEJNS_10StringViewEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS6_E4typeET0_EE: argument 0"}
!235 = distinct !{!235, i1 true, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_"}
!236 = distinct !{!236, !235, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_: argument 0"}
!237 = !{!231}
!238 = !{!89, !29, i64 24}
!239 = !{!84, !84, i64 0}
!240 = !{!234}
!241 = !{!236, !234}
!242 = !{!52, !41, i64 8}
!243 = distinct !{!243, !72}
!244 = !{!"p1 _ZTSSt6atomicImE", !34, i64 0}
!245 = !{!"_ZTSSt13__atomic_baseIlE", !41, i64 0}
!246 = !{!"_ZTSSt6atomicIlE", !245, i64 0}
!247 = !{!"_ZTSN5vcpkg12ElapsedTimerE", !246, i64 0}
!248 = !{!"_ZTSN5vcpkg10StatsTimerE", !244, i64 0, !247, i64 8}
!249 = !{!248, !244, i64 0}
!250 = !{!85, !84, i64 0}
!251 = !{!85, !84, i64 8}
!252 = !{!85, !84, i64 16}
!253 = distinct !{null, null}
!254 = distinct !{!254, i1 true, !"_ZSt11make_uniqueIN5vcpkg11RegistrySetEJSt10unique_ptrINS0_22RegistryImplementationESt14default_deleteIS3_EESt6vectorINS0_8RegistryESaIS8_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!255 = distinct !{!255, !254, !"_ZSt11make_uniqueIN5vcpkg11RegistrySetEJSt10unique_ptrINS0_22RegistryImplementationESt14default_deleteIS3_EESt6vectorINS0_8RegistryESaIS8_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!256 = !{!255}
!257 = !{!110, !110, i64 0}
!258 = !{!"p1 _ZTSN5vcpkg11RegistrySetE", !34, i64 0}
!259 = !{!258, !258, i64 0}
!260 = !{!"_ZTSSt10_Head_baseILm0EPN5vcpkg22RegistryImplementationELb0EE", !114, i64 0}
!261 = !{!260, !114, i64 0}
!262 = distinct !{null, null, null, null, null, null}
!263 = distinct !{!263, !72}
!264 = distinct !{!264, i1 true, !"_ZNK5vcpkg4Json6Object14const_iteratordeEv"}
!265 = distinct !{!265, !264, !"_ZNK5vcpkg4Json6Object14const_iteratordeEv: argument 0"}
!266 = !{!265}
!267 = distinct !{!267, i1 true, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_"}
!268 = distinct !{!268, !267, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_: argument 0"}
!269 = distinct !{!269, i1 true, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_"}
!270 = distinct !{!270, !269, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_: argument 0"}
!271 = distinct !{!271, i1 true, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_"}
!272 = distinct !{!272, !271, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_: argument 0"}
!273 = distinct !{!273, i1 true, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_"}
!274 = distinct !{!274, !273, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_: argument 0"}
!275 = distinct !{!275, i1 true, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_"}
!276 = distinct !{!276, !275, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_: argument 0"}
!277 = distinct !{!277, i1 true, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_"}
!278 = distinct !{!278, !277, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_: argument 0"}
!279 = distinct !{!279, i1 true, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_"}
!280 = distinct !{!280, !279, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_: argument 0"}
!281 = distinct !{!281, i1 true, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_"}
!282 = distinct !{!282, !281, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_: argument 0"}
!283 = !{!268}
!284 = !{!270}
!285 = !{!272}
!286 = !{!274}
!287 = !{!276}
!288 = !{!278}
!289 = !{!280}
!290 = !{!282}
!291 = distinct !{null}
!292 = distinct !{!292, i1 true, !"_ZNK5vcpkg4Json6Object14const_iteratordeEv"}
!293 = distinct !{!293, !292, !"_ZNK5vcpkg4Json6Object14const_iteratordeEv: argument 0"}
!294 = distinct !{!294, i1 true, !"_ZNK5vcpkg4Json6Object14const_iteratordeEv"}
!295 = distinct !{!295, !294, !"_ZNK5vcpkg4Json6Object14const_iteratordeEv: argument 0"}
!296 = !{!293}
!297 = !{!295}
!298 = distinct !{!298, i1 true, !"_ZNK5vcpkg4Json6Object14const_iteratordeEv"}
!299 = distinct !{!299, !298, !"_ZNK5vcpkg4Json6Object14const_iteratordeEv: argument 0"}
!300 = distinct !{!300, i1 true, !"_ZN5vcpkg7Strings6concatIJA3_cNS_10StringViewES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_"}
!301 = distinct !{!301, !300, !"_ZN5vcpkg7Strings6concatIJA3_cNS_10StringViewES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_: argument 0"}
!302 = distinct !{!302, i1 true, !"_ZN5vcpkg7Strings6concatIJNS_10StringViewEA2_cS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_"}
!303 = distinct !{!303, !302, !"_ZN5vcpkg7Strings6concatIJNS_10StringViewEA2_cS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_: argument 0"}
!304 = distinct !{!304, i1 true, !"_ZNK5vcpkg4Json6Object14const_iteratordeEv"}
!305 = distinct !{!305, !304, !"_ZNK5vcpkg4Json6Object14const_iteratordeEv: argument 0"}
!306 = distinct !{!306, i1 true, !"_ZN5vcpkg7Strings6concatIJNS_10StringViewEA2_cNS_13StringLiteralES3_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_"}
!307 = distinct !{!307, !306, !"_ZN5vcpkg7Strings6concatIJNS_10StringViewEA2_cNS_13StringLiteralES3_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_: argument 0"}
!308 = !{!299}
!309 = !{!301}
!310 = !{!303}
!311 = !{!305}
!312 = !{!307}
!313 = distinct !{!313, i1 true, !"_ZNK5vcpkg4Json6Object14const_iteratordeEv"}
!314 = distinct !{!314, !313, !"_ZNK5vcpkg4Json6Object14const_iteratordeEv: argument 0"}
!315 = distinct !{!315, i1 true, !"_ZNK12_GLOBAL__N_125ConfigurationDeserializer9type_nameEv"}
!316 = distinct !{!316, !315, !"_ZNK12_GLOBAL__N_125ConfigurationDeserializer9type_nameEv: argument 0"}
!317 = distinct !{!317, i1 true, !"_ZN12_GLOBAL__N_132collect_package_pattern_warningsERKSt6vectorIN5vcpkg14RegistryConfigESaIS2_EE"}
!318 = distinct !{!318, !317, !"_ZN12_GLOBAL__N_132collect_package_pattern_warningsERKSt6vectorIN5vcpkg14RegistryConfigESaIS2_EE: argument 0"}
!319 = distinct !{!319, !72}
!320 = distinct !{!320, !72}
!321 = distinct !{!321, i1 true, !"_ZSt19__relocate_object_aIZN12_GLOBAL__N_132collect_package_pattern_warningsERKSt6vectorIN5vcpkg14RegistryConfigESaIS3_EEE19LocationAndRegistryS8_SaIS8_EEvPT_PT0_RT1_"}
!322 = distinct !{!322, !321, !"_ZSt19__relocate_object_aIZN12_GLOBAL__N_132collect_package_pattern_warningsERKSt6vectorIN5vcpkg14RegistryConfigESaIS3_EEE19LocationAndRegistryS8_SaIS8_EEvPT_PT0_RT1_: argument 1"}
!323 = distinct !{!323, !321, !"_ZSt19__relocate_object_aIZN12_GLOBAL__N_132collect_package_pattern_warningsERKSt6vectorIN5vcpkg14RegistryConfigESaIS3_EEE19LocationAndRegistryS8_SaIS8_EEvPT_PT0_RT1_: argument 0"}
!324 = distinct !{!324, !72}
!325 = distinct !{!325, i1 true, !"_ZN5vcpkg3msg6formatIJNS0_14package_name_tEEJNS_10StringViewEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS6_E4typeET0_EE"}
!326 = distinct !{!326, !325, !"_ZN5vcpkg3msg6formatIJNS0_14package_name_tEEJNS_10StringViewEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS6_E4typeET0_EE: argument 0"}
!327 = distinct !{!327, i1 true, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_"}
!328 = distinct !{!328, !327, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_: argument 0"}
!329 = distinct !{!329, i1 true, !"_ZNK5vcpkg4Json13IDeserializerINS0_6ObjectEE5visitERNS0_6ReaderERKS2_"}
!330 = distinct !{!330, !329, !"_ZNK5vcpkg4Json13IDeserializerINS0_6ObjectEE5visitERNS0_6ReaderERKS2_: argument 0"}
!331 = distinct !{!331, i1 true, !"_ZNK12_GLOBAL__N_122CeMetadataDeserializer9type_nameEv"}
!332 = distinct !{!332, !331, !"_ZNK12_GLOBAL__N_122CeMetadataDeserializer9type_nameEv: argument 0"}
!333 = distinct !{!333, i1 true, !"_ZNK12_GLOBAL__N_125ConfigurationDeserializer9type_nameEv"}
!334 = distinct !{!334, !333, !"_ZNK12_GLOBAL__N_125ConfigurationDeserializer9type_nameEv: argument 0"}
!335 = !{!314}
!336 = !{!316}
!337 = !{!318}
!338 = !{!"_ZTSSt15_Rb_tree_header", !128, i64 0, !41, i64 32}
!339 = !{!338, !126, i64 0}
!340 = !{!338, !127, i64 8}
!341 = !{!338, !127, i64 16}
!342 = !{!338, !127, i64 24}
!343 = !{!338, !41, i64 32}
!344 = !{!127, !127, i64 0}
!345 = !{!"p1 _ZTSZN12_GLOBAL__N_132collect_package_pattern_warningsERKSt6vectorIN5vcpkg14RegistryConfigESaIS2_EEE19LocationAndRegistry", !34, i64 0}
!346 = !{!"_ZTSNSt12_Vector_baseIZN12_GLOBAL__N_132collect_package_pattern_warningsERKSt6vectorIN5vcpkg14RegistryConfigESaIS3_EEE19LocationAndRegistrySaIS8_EE17_Vector_impl_dataE", !345, i64 0, !345, i64 8, !345, i64 16}
!347 = !{!346, !345, i64 8}
!348 = !{!346, !345, i64 16}
!349 = !{i64 0, i64 8, !58, i64 8, i64 8, !51, i64 16, i64 8, !58, i64 24, i64 8, !51}
!350 = !{!346, !345, i64 0}
!351 = !{!323, !322}
!352 = !{!326, !318}
!353 = !{!328, !326, !318}
!354 = !{!134, !134, i64 0}
!355 = !{!330}
!356 = !{!332}
!357 = !{!334}
!358 = distinct !{!358, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!359 = distinct !{!359, !358, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!360 = distinct !{!360, !358, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!361 = distinct !{!361, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!362 = distinct !{!362, !361, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!363 = distinct !{!363, !361, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!364 = !{!359}
!365 = !{!360}
!366 = !{!359, !360}
!367 = !{!362}
!368 = !{!363}
!369 = !{!362, !363}
!370 = distinct !{!370, i1 true, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_"}
!371 = distinct !{!371, !370, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!372 = distinct !{!372, !370, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!373 = !{!372, !371}
!374 = distinct !{!374, i1 true, !"_ZNK5vcpkg4Json13IDeserializerISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE5visitERNS0_6ReaderERKNS0_6ObjectE"}
!375 = distinct !{!375, !374, !"_ZNK5vcpkg4Json13IDeserializerISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE5visitERNS0_6ReaderERKNS0_6ObjectE: argument 0"}
!376 = distinct !{null}
!377 = !{!375}
!378 = distinct !{!378, i1 true, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_"}
!379 = distinct !{!379, !378, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!380 = distinct !{!380, !378, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!381 = distinct !{!381, !72}
!382 = !{!380, !379}
!383 = distinct !{!383, i1 true, !"_ZNK5vcpkg4Json13IDeserializerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5visitERNS0_6ReaderERKNS0_6ObjectE"}
!384 = distinct !{!384, !383, !"_ZNK5vcpkg4Json13IDeserializerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5visitERNS0_6ReaderERKNS0_6ObjectE: argument 0"}
!385 = distinct !{null}
!386 = !{!384}
!387 = distinct !{!387, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!388 = distinct !{!388, !387, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!389 = distinct !{!389, !387, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!390 = distinct !{!390, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!391 = distinct !{!391, !390, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!392 = distinct !{!392, !390, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!393 = !{!388}
!394 = !{!389}
!395 = !{!388, !389}
!396 = !{!391}
!397 = !{!392}
!398 = !{!391, !392}
!399 = distinct !{!399, i1 true, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_"}
!400 = distinct !{!400, !399, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!401 = distinct !{!401, !399, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!402 = !{!401, !400}
!403 = distinct !{!403, i1 true, !"_ZNK5vcpkg4Json13IDeserializerINS_14RegistryConfigEE5visitERNS0_6ReaderERKNS0_6ObjectE"}
!404 = distinct !{!404, !403, !"_ZNK5vcpkg4Json13IDeserializerINS_14RegistryConfigEE5visitERNS0_6ReaderERKNS0_6ObjectE: argument 0"}
!405 = distinct !{null}
!406 = !{!404}
!407 = distinct !{!407, i1 true, !"_ZNK12_GLOBAL__N_126RegistryConfigDeserializer9type_nameEv"}
!408 = distinct !{!408, !407, !"_ZNK12_GLOBAL__N_126RegistryConfigDeserializer9type_nameEv: argument 0"}
!409 = distinct !{!409, i1 true, !"_ZNK12_GLOBAL__N_126RegistryConfigDeserializer9type_nameEv"}
!410 = distinct !{!410, !409, !"_ZNK12_GLOBAL__N_126RegistryConfigDeserializer9type_nameEv: argument 0"}
!411 = distinct !{!411, i1 true, !"_ZN5vcpkg7Strings4joinIA4_NS_13StringLiteralEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_RKT_"}
!412 = distinct !{!412, !411, !"_ZN5vcpkg7Strings4joinIA4_NS_13StringLiteralEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_RKT_: argument 0"}
!413 = distinct !{!413, i1 true, !"_ZN5vcpkg7Strings4joinIPKNS_13StringLiteralENS0_7details19IdentityTransformerEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_T_SD_T0_"}
!414 = distinct !{!414, !413, !"_ZN5vcpkg7Strings4joinIPKNS_13StringLiteralENS0_7details19IdentityTransformerEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_T_SD_T0_: argument 0"}
!415 = !{!408}
!416 = !{i64 0, i64 64, !44}
!417 = !{!410}
!418 = !{!414, !412}
!419 = distinct !{!419, i1 true, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEES8_EEENS_15LocalizedStringEmDpOT_"}
!420 = distinct !{!420, !419, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEES8_EEENS_15LocalizedStringEmDpOT_: argument 0"}
!421 = !{!420}
!422 = distinct !{!422, i1 true, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_"}
!423 = distinct !{!423, !422, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!424 = distinct !{!424, !422, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!425 = !{!424, !423}
!426 = distinct !{!426, i1 true, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_"}
!427 = distinct !{!427, !426, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!428 = distinct !{!428, !426, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!429 = !{!428, !427}
!430 = distinct !{!430, i1 true, !"_ZNK5vcpkg4Json13IDeserializerINS_4PathEE5visitERNS0_6ReaderERKNS0_6ObjectE"}
!431 = distinct !{!431, !430, !"_ZNK5vcpkg4Json13IDeserializerINS_4PathEE5visitERNS0_6ReaderERKNS0_6ObjectE: argument 0"}
!432 = distinct !{null}
!433 = !{!431}
!434 = !{!"p1 _ZTSN3fmt3v126detail6bufferIcEE", !34, i64 0}
!435 = !{!434, !434, i64 0}
!436 = distinct !{!436, !72}
!437 = !{!163, !163, i64 0}
!438 = !{!164, !164, i64 0}
!439 = distinct !{!439, !72}
!440 = !{!"_ZTSN3fmt3v126detail20dynamic_spec_handlerIcEE", !163, i64 0, !164, i64 8, !34, i64 16}
!441 = !{!440, !164, i64 8}
!442 = !{!440, !34, i64 16}
!443 = !{i64 4}
!444 = !{!440, !163, i64 0}
!445 = distinct !{!445, i1 true, !"_ZNK3fmt3v127context3argEi"}
!446 = distinct !{!446, !445, !"_ZNK3fmt3v127context3argEi: argument 0"}
!447 = distinct !{!447, i1 true, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!448 = distinct !{!448, !447, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!449 = distinct !{!449, i1 true, !"_ZNK3fmt3v127context3argENS0_17basic_string_viewIcEE"}
!450 = distinct !{!450, !449, !"_ZNK3fmt3v127context3argENS0_17basic_string_viewIcEE: argument 0"}
!451 = distinct !{!451, i1 true, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE"}
!452 = distinct !{!452, !451, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE: argument 0"}
!453 = distinct !{!453, !72}
!454 = !{!"long long", !25, i64 0}
!455 = !{!"_ZTSN3fmt3v1217basic_format_argsINS0_7contextEEE", !454, i64 0, !25, i64 8}
!456 = !{!455, !454, i64 0}
!457 = !{!448, !446}
!458 = !{!452, !450}
!459 = !{!"_ZTSN3fmt3v126detail14named_arg_infoIcEE", !35, i64 0, !26, i64 8}
!460 = !{!459, !35, i64 0}
!461 = !{!459, !26, i64 8}
!462 = !{!"_ZTSN3fmt3v126detail4typeE", !25, i64 0}
!463 = !{!462, !462, i64 0}
!464 = distinct !{null, null, null}
!465 = distinct !{!465, !72, !172, !173}
!466 = distinct !{!466, !72, !172, !173}
!467 = distinct !{!467, !175}
!468 = distinct !{!468, !72, !172}
!469 = distinct !{!469, i1 true, !"_ZN3fmt3v126detail11find_escapeEPKcS3_"}
!470 = distinct !{!470, !469, !"_ZN3fmt3v126detail11find_escapeEPKcS3_: argument 0"}
!471 = distinct !{!471, !72, !172, !173}
!472 = distinct !{!472, !72, !172, !173}
!473 = distinct !{!473, !175}
!474 = distinct !{!474, !72, !172}
!475 = distinct !{!475, !72}
!476 = !{!470}
!477 = distinct !{!477, !72}
!478 = distinct !{!478, !72, !172, !173}
!479 = distinct !{!479, !72, !172, !173}
!480 = distinct !{!480, !175}
!481 = distinct !{!481, !72, !172}
!482 = distinct !{!482, !72}
!483 = !{i64 0, i64 8, !177, i64 8, i64 8, !179, i64 16, i64 8, !179, i64 24, i64 8, !179, i64 32, i64 8, !181}
!484 = distinct !{null, null, null}
!485 = distinct !{!485, !72, !172, !173}
!486 = distinct !{!486, !72, !172, !173}
!487 = distinct !{!487, !175}
!488 = distinct !{!488, !72, !172}
!489 = distinct !{!489, !72}
!490 = distinct !{!490, !72, !172, !173}
!491 = distinct !{!491, !72, !172, !173}
!492 = distinct !{!492, !175}
!493 = distinct !{!493, !72, !172}
!494 = distinct !{!494, !72}
!495 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEUljNSA_IcEEE_", !176, i64 0, !178, i64 8, !178, i64 16, !178, i64 24, !180, i64 32}
!496 = !{!495, !176, i64 0}
!497 = !{!495, !178, i64 8}
!498 = !{!495, !178, i64 16}
!499 = !{!495, !178, i64 24}
!500 = !{!495, !180, i64 32}
!501 = distinct !{null, null, null, null}
!502 = distinct !{!502, !72}
!503 = distinct !{!503, !72, !172, !173}
!504 = distinct !{!504, !72, !172, !173}
!505 = distinct !{!505, !175}
!506 = distinct !{!506, !72, !172}
!507 = distinct !{!507, !72}
!508 = distinct !{!508, i1 true, !"_ZN3fmt3v126detail11find_escapeEPKcS3_"}
!509 = distinct !{!509, !508, !"_ZN3fmt3v126detail11find_escapeEPKcS3_: argument 0"}
!510 = distinct !{null, null, null, null, null}
!511 = distinct !{!511, !72}
!512 = distinct !{!512, !72}
!513 = !{!509}
!514 = distinct !{!514, i1 true, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_"}
!515 = distinct !{!515, !514, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!516 = distinct !{!516, !514, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!517 = !{!516, !515}
!518 = distinct !{!518, i1 true, !"_ZNK5vcpkg4Json13IDeserializerISt6vectorINS_14RegistryConfigESaIS3_EEE5visitERNS0_6ReaderERKNS0_6ObjectE"}
!519 = distinct !{!519, !518, !"_ZNK5vcpkg4Json13IDeserializerISt6vectorINS_14RegistryConfigESaIS3_EEE5visitERNS0_6ReaderERKNS0_6ObjectE: argument 0"}
!520 = distinct !{null}
!521 = !{!519}
!522 = distinct !{!522, i1 true, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_"}
!523 = distinct !{!523, !522, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!524 = distinct !{!524, !522, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!525 = distinct !{!525, !72}
!526 = !{!524, !523}
!527 = distinct !{!527, !72}
!528 = distinct !{!528, i1 true, !"_ZNK12_GLOBAL__N_120RegistryDeserializer9type_nameEv"}
!529 = distinct !{!529, !528, !"_ZNK12_GLOBAL__N_120RegistryDeserializer9type_nameEv: argument 0"}
!530 = distinct !{!530, i1 true, !"_ZN5vcpkg4Util4fmapIRSt6vectorINS_25PackagePatternDeclarationESaIS3_EEZNK12_GLOBAL__N_120RegistryDeserializer12visit_objectERNS_4Json6ReaderERKNS9_6ObjectEE3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISH_EEiE4typeELi0EEES2_INSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISH_EE5beginEEEE4typeESaISP_EEOSH_OSL_"}
!531 = distinct !{!531, !530, !"_ZN5vcpkg4Util4fmapIRSt6vectorINS_25PackagePatternDeclarationESaIS3_EEZNK12_GLOBAL__N_120RegistryDeserializer12visit_objectERNS_4Json6ReaderERKNS9_6ObjectEE3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISH_EEiE4typeELi0EEES2_INSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISH_EE5beginEEEE4typeESaISP_EEOSH_OSL_: argument 0"}
!532 = distinct !{!532, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!533 = distinct !{!533, !532, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!534 = distinct !{!534, !532, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!535 = distinct !{!535, i1 true, !"_ZZNK12_GLOBAL__N_120RegistryDeserializer12visit_objectERN5vcpkg4Json6ReaderERKNS2_6ObjectEENK3$_0clIRNS1_25PackagePatternDeclarationEEEDaOT_"}
!536 = distinct !{!536, !535, !"_ZZNK12_GLOBAL__N_120RegistryDeserializer12visit_objectERN5vcpkg4Json6ReaderERKNS2_6ObjectEENK3$_0clIRNS1_25PackagePatternDeclarationEEEDaOT_: argument 0"}
!537 = !{!529}
!538 = !{!531}
!539 = !{!533}
!540 = !{!534}
!541 = !{!533, !534}
!542 = !{!536}
!543 = !{!536, !531}
!544 = distinct !{!544, i1 true, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_"}
!545 = distinct !{!545, !544, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!546 = distinct !{!546, !544, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!547 = !{!546, !545}
!548 = distinct !{!548, i1 true, !"_ZNK5vcpkg4Json13IDeserializerISt6vectorINS_25PackagePatternDeclarationESaIS3_EEE5visitERNS0_6ReaderERKNS0_6ObjectE"}
!549 = distinct !{!549, !548, !"_ZNK5vcpkg4Json13IDeserializerISt6vectorINS_25PackagePatternDeclarationESaIS3_EEE5visitERNS0_6ReaderERKNS0_6ObjectE: argument 0"}
!550 = distinct !{null}
!551 = !{!549}
!552 = distinct !{!552, i1 true, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_"}
!553 = distinct !{!553, !552, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!554 = distinct !{!554, !552, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!555 = distinct !{!555, !72}
!556 = !{!554, !553}
!557 = distinct !{!557, i1 true, !"_ZNK5vcpkg4Json13IDeserializerINS_25PackagePatternDeclarationEE5visitERNS0_6ReaderERKNS0_6ObjectE"}
!558 = distinct !{!558, !557, !"_ZNK5vcpkg4Json13IDeserializerINS_25PackagePatternDeclarationEE5visitERNS0_6ReaderERKNS0_6ObjectE: argument 0"}
!559 = distinct !{null}
!560 = !{!558}
!561 = distinct !{!561, i1 true, !"_ZSt19__relocate_object_aIN5vcpkg25PackagePatternDeclarationES1_SaIS1_EEvPT_PT0_RT1_"}
!562 = distinct !{!562, !561, !"_ZSt19__relocate_object_aIN5vcpkg25PackagePatternDeclarationES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!563 = distinct !{!563, !561, !"_ZSt19__relocate_object_aIN5vcpkg25PackagePatternDeclarationES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!564 = distinct !{!564, !72}
!565 = distinct !{!565, i1 true, !"_ZSt19__relocate_object_aIN5vcpkg25PackagePatternDeclarationES1_SaIS1_EEvPT_PT0_RT1_"}
!566 = distinct !{!566, !565, !"_ZSt19__relocate_object_aIN5vcpkg25PackagePatternDeclarationES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!567 = distinct !{!567, !565, !"_ZSt19__relocate_object_aIN5vcpkg25PackagePatternDeclarationES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!568 = !{!562}
!569 = !{!563}
!570 = !{!562, !563}
!571 = !{!566}
!572 = !{!567}
!573 = !{!566, !567}
!574 = distinct !{!574, i1 true, !"_ZNK12_GLOBAL__N_126PackagePatternDeserializer9type_nameEv"}
!575 = distinct !{!575, !574, !"_ZNK12_GLOBAL__N_126PackagePatternDeserializer9type_nameEv: argument 0"}
!576 = !{!575}
!577 = distinct !{!577, i1 true, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEES8_EEENS_15LocalizedStringEmDpOT_"}
!578 = distinct !{!578, !577, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEES8_EEENS_15LocalizedStringEmDpOT_: argument 0"}
!579 = !{!578}
!580 = distinct !{!580, i1 true, !"_ZSt19__relocate_object_aIN5vcpkg15LocalizedStringES1_SaIS1_EEvPT_PT0_RT1_"}
!581 = distinct !{!581, !580, !"_ZSt19__relocate_object_aIN5vcpkg15LocalizedStringES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!582 = distinct !{!582, !580, !"_ZSt19__relocate_object_aIN5vcpkg15LocalizedStringES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!583 = distinct !{!583, !72}
!584 = distinct !{!584, i1 true, !"_ZSt19__relocate_object_aIN5vcpkg15LocalizedStringES1_SaIS1_EEvPT_PT0_RT1_"}
!585 = distinct !{!585, !584, !"_ZSt19__relocate_object_aIN5vcpkg15LocalizedStringES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!586 = distinct !{!586, !584, !"_ZSt19__relocate_object_aIN5vcpkg15LocalizedStringES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!587 = !{!581}
!588 = !{!582}
!589 = !{!581, !582}
!590 = !{!585}
!591 = !{!586}
!592 = !{!585, !586}
!593 = distinct !{!593, !72}
!594 = !{!128, !127, i64 16}
!595 = distinct !{!595, i1 true, !"_ZNK5vcpkg4Json6Object14const_iteratordeEv"}
!596 = distinct !{!596, !595, !"_ZNK5vcpkg4Json6Object14const_iteratordeEv: argument 0"}
!597 = !{!596}
!598 = distinct !{!598, !72}
!599 = distinct !{!599, i1 true, !"_ZNK5vcpkg4Json6Object14const_iteratordeEv"}
!600 = distinct !{!600, !599, !"_ZNK5vcpkg4Json6Object14const_iteratordeEv: argument 0"}
!601 = distinct !{!601, i1 true, !"_ZNK12_GLOBAL__N_122DictionaryDeserializer9type_nameEv"}
!602 = distinct !{!602, !601, !"_ZNK12_GLOBAL__N_122DictionaryDeserializer9type_nameEv: argument 0"}
!603 = distinct !{!603, i1 true, !"_ZN5vcpkg3msg6formatIJNS0_12json_field_tEEJNS_10StringViewEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS6_E4typeET0_EE"}
!604 = distinct !{!604, !603, !"_ZN5vcpkg3msg6formatIJNS0_12json_field_tEEJNS_10StringViewEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS6_E4typeET0_EE: argument 0"}
!605 = distinct !{!605, i1 true, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_"}
!606 = distinct !{!606, !605, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_: argument 0"}
!607 = !{!600}
!608 = !{!602}
!609 = !{!604}
!610 = !{!606, !604}
!611 = distinct !{!611, !72}
!612 = distinct !{!612, !72}
!613 = distinct !{!613, !72}
!614 = distinct !{!614, !72}
!615 = distinct !{!615, !72}
!616 = distinct !{!616, i1 true, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_"}
!617 = distinct !{!617, !616, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!618 = distinct !{!618, !616, !"_ZSt19__relocate_object_aIN5vcpkg4Json6Reader15JsonPathElementES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!619 = !{!618, !617}
!620 = distinct !{!620, i1 true, !"_ZNK5vcpkg4Json13IDeserializerINS0_6ObjectEE5visitERNS0_6ReaderERKS2_"}
!621 = distinct !{!621, !620, !"_ZNK5vcpkg4Json13IDeserializerINS0_6ObjectEE5visitERNS0_6ReaderERKS2_: argument 0"}
!622 = !{!621}
!623 = distinct !{!623, i1 true, !"_ZNK5vcpkg4Json6Object14const_iteratordeEv"}
!624 = distinct !{!624, !623, !"_ZNK5vcpkg4Json6Object14const_iteratordeEv: argument 0"}
!625 = distinct !{!625, i1 true, !"_ZNK12_GLOBAL__N_119DemandsDeserializer9type_nameEv"}
!626 = distinct !{!626, !625, !"_ZNK12_GLOBAL__N_119DemandsDeserializer9type_nameEv: argument 0"}
!627 = distinct !{!627, i1 true, !"_ZN5vcpkg3msg6formatIJNS0_12json_field_tEEJNS_10StringViewEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS6_E4typeET0_EE"}
!628 = distinct !{!628, !627, !"_ZN5vcpkg3msg6formatIJNS0_12json_field_tEEJNS_10StringViewEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS6_E4typeET0_EE: argument 0"}
!629 = distinct !{!629, i1 true, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_"}
!630 = distinct !{!630, !629, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_: argument 0"}
!631 = distinct !{!631, i1 true, !"_ZNK12_GLOBAL__N_119DemandsDeserializer9type_nameEv"}
!632 = distinct !{!632, !631, !"_ZNK12_GLOBAL__N_119DemandsDeserializer9type_nameEv: argument 0"}
!633 = distinct !{!633, i1 true, !"_ZN5vcpkg3msg6formatIJNS0_12json_field_tEEJNS_10StringViewEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS6_E4typeET0_EE"}
!634 = distinct !{!634, !633, !"_ZN5vcpkg3msg6formatIJNS0_12json_field_tEEJNS_10StringViewEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS6_E4typeET0_EE: argument 0"}
!635 = distinct !{!635, i1 true, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_"}
!636 = distinct !{!636, !635, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_: argument 0"}
!637 = distinct !{!637, i1 true, !"_ZNK5vcpkg4Json13IDeserializerINS0_6ObjectEE5visitERNS0_6ReaderERKS2_"}
!638 = distinct !{!638, !637, !"_ZNK5vcpkg4Json13IDeserializerINS0_6ObjectEE5visitERNS0_6ReaderERKS2_: argument 0"}
!639 = distinct !{!639, i1 true, !"_ZNK12_GLOBAL__N_122CeMetadataDeserializer9type_nameEv"}
!640 = distinct !{!640, !639, !"_ZNK12_GLOBAL__N_122CeMetadataDeserializer9type_nameEv: argument 0"}
!641 = !{!624}
!642 = !{!626}
!643 = !{!628}
!644 = !{!630, !628}
!645 = !{!632}
!646 = !{!634}
!647 = !{!636, !634}
!648 = !{!638}
!649 = !{!640}
!650 = distinct !{!650, !72}
!651 = distinct !{!651, i1 true, !"_ZSt19__relocate_object_aIN5vcpkg8RegistryES1_SaIS1_EEvPT_PT0_RT1_"}
!652 = distinct !{!652, !651, !"_ZSt19__relocate_object_aIN5vcpkg8RegistryES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!653 = distinct !{!653, !651, !"_ZSt19__relocate_object_aIN5vcpkg8RegistryES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!654 = distinct !{!654, !72}
!655 = distinct !{!655, i1 true, !"_ZSt19__relocate_object_aIN5vcpkg8RegistryES1_SaIS1_EEvPT_PT0_RT1_"}
!656 = distinct !{!656, !655, !"_ZSt19__relocate_object_aIN5vcpkg8RegistryES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!657 = distinct !{!657, !655, !"_ZSt19__relocate_object_aIN5vcpkg8RegistryES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!658 = !{!652}
!659 = !{!653}
!660 = !{!656}
!661 = !{!657}
end_hunk_6
