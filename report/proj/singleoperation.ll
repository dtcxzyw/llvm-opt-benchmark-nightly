Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/singleoperation?download=true
inline.NumInlined: 4365
inline.NumDeleted: 1439
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5osgeo4proj9operationL16_getNTv2FilenameB5cxx11EPKNS1_15SingleOperationEb:bb.a
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.r = load i64, ptr %i.l, align 8, !tbaa !53, !alias.scope !526
  %i.s = and i64 %i.r, -4
  %i.t = icmp eq i64 %i.s, 4611686018427387900
  br i1 %i.t, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.277) #48
          to label %.cont.i.i unwind label %bb.d

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.97, i64 noundef 4)
          to label %bb.e unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %2, align 8, !tbaa !60, !alias.scope !526 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.k
  br i1 %i.x, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.k, align 8, !tbaa !54, !alias.scope !526
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #45
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %i.v

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.aa = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %2) #44
  %i.ab = load ptr, ptr %2, align 8, !tbaa !60    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.k
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ad = load i64, ptr %i.k, align 8, !tbaa !54
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br i1 %i.aa, label %.noexc.i, label %.thread20

.critedge:                                        ; preds = %bb.a
  br i1 %i.g, label %.thread20, label %.noexc.i

.noexc.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  store i64 38, ptr %i.a, align 8, !tbaa !61
  %i.ag = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.ag, ptr %3, align 8, !tbaa !60
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !61  ; 3 uses
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.ag, ptr noundef nonnull align 1 dereferenceable(38) @.str.42, i64 38, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  %i.ak = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj9operation15SingleOperation14parameterValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 8656) #44
  %i.al = load ptr, ptr %3, align 8, !tbaa !60    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.af
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %.noexc.i
  %i.an = load i64, ptr %i.af, align 8, !tbaa !54
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !197 ; 3 uses
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %.thread20, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.aq = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5osgeo4proj9operation14ParameterValue4typeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ap) #49
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !199
  %i.as = icmp eq i32 %i.ar, 4
  br i1 %i.as, label %bb.g, label %.thread20

bb.g:                                             ; preds = %bb.f
  %i.at = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj9operation14ParameterValue9valueFileB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ap) #49
  br label %.thread20

.thread20:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %bb.f, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.1 = phi ptr [ %i.at, %bb.g ], [ @_ZN5osgeo4proj9operationL10nullStringB5cxx11E, %.critedge ], [ @_ZN5osgeo4proj9operationL10nullStringB5cxx11E, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ @_ZN5osgeo4proj9operationL10nullStringB5cxx11E, %bb.f ], [ @_ZN5osgeo4proj9operationL10nullStringB5cxx11E, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN5osgeo4proj9operation14Transformation36isGeographic3DToGravityRelatedHeightERKN7dropbox6oxygen2nnISt10shared_ptrINS1_15OperationMethodEEEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !160
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #49 ; 2 uses
  %i.c = tail call noundef i64 @_ZN5osgeo4proj8internal7ci_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull @.str.85) #44
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.c, label %.critedge.preheader.split

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.e = load ptr, ptr @_ZN5osgeo4proj9operation10INVERSE_OFB5cxx11E, align 8, !tbaa !60, !noalias !531
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj9operation10INVERSE_OFB5cxx11E, i64 8), align 8, !tbaa !53, !noalias !531 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !50, !alias.scope !532
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !53, !alias.scope !532
  store i8 0, ptr %i.g, align 8, !tbaa !54, !alias.scope !532
  %i.i = add i64 %i.f, 36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.i)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !53, !alias.scope !532
  %i.k = sub i64 4611686018427387903, %i.j
  %i.l = icmp ult i64 %i.k, %i.f
  br i1 %i.l, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.e, i64 noundef %i.f)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.n = load i64, ptr %i.h, align 8, !tbaa !53, !alias.scope !532
  %i.o = add i64 %i.n, -4611686018427387868
  %i.p = icmp ult i64 %i.o, 36
  br i1 %i.p, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.277) #48
          to label %.cont.i.i unwind label %bb.e

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.85, i64 noundef 36)
          to label %bb.f unwind label %bb.e       ; 0 uses

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %2, align 8, !tbaa !60, !alias.scope !532 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.g
  br i1 %i.t, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.u = load i64, ptr %i.g, align 8, !tbaa !54, !alias.scope !532
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #45
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %i.r

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.w = call noundef i64 @_ZN5osgeo4proj8internal7ci_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_m(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0) #44
  %i.x = icmp eq i64 %i.w, 0
  %i.y = load ptr, ptr %2, align 8, !tbaa !60     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.g
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !54
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge.preheader.split.us

.critedge.preheader.split.us:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.critedge41.us
  %.0.idx54.us = phi i64 [ %.0.add.us, %.critedge41.us ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.0.ptr55.us = getelementptr inbounds nuw i8, ptr @_ZZN5osgeo4proj9operation14Transformation36isGeographic3DToGravityRelatedHeightERKN7dropbox6oxygen2nnISt10shared_ptrINS1_15OperationMethodEEEEbE11methodCodes, i64 %.0.idx54.us ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !160
  %i.ad = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common16IdentifiedObject11identifiersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #49 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !177 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !177 ; 2 uses
  %.not4952.us = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4952.us, label %.critedge41.us, label %.lr.ph.us

.critedge41.us:                                   ; preds = %.critedge39.us.us, %.critedge.preheader.split.us
  %.0.add.us = add nuw nsw i64 %.0.idx54.us, 8    ; 2 uses
  %.not.us.not = icmp eq i64 %.0.add.us, 336
  br i1 %.not.us.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge.preheader.split.us

.lr.ph.us:                                        ; preds = %.critedge.preheader.split.us, %.critedge39.us.us
  %.sroa.044.053.us.us = phi ptr [ %i.bd, %.critedge39.us.us ], [ %i.ae, %.critedge.preheader.split.us ] ; 2 uses
  %i.ah = load ptr, ptr %.sroa.044.053.us.us, align 8, !tbaa !245 ; 2 uses
  %i.ai = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5osgeo4proj8metadata10Identifier9codeSpaceB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #49
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj8metadata10Identifier4codeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #49 ; 4 uses
  %i.al = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull @.str.86) #44
  br i1 %i.al, label %bb.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread47.us.us

bb.g:                                             ; preds = %.lr.ph.us
  %i.am = load ptr, ptr %.0.ptr55.us, align 8, !tbaa !246 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !53 ; 3 uses
  %i.ap = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #44
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread47.us.us

bb.h:                                             ; preds = %bb.g
  %i.ar = icmp eq i64 %i.ao, 0
  br i1 %i.ar, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.us.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.us.us: ; preds = %bb.h
  %i.as = load ptr, ptr %i.ak, align 8, !tbaa !60
  %bcmp.i.us.us = call i32 @bcmp(ptr %i.as, ptr nonnull %i.am, i64 %i.ao)
  %i.at = icmp eq i32 %bcmp.i.us.us, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread47.us.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread47.us.us: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.us.us, %bb.g, %.lr.ph.us
  %i.au = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull @.str.87) #44
  br i1 %i.au, label %bb.i, label %.critedge39.us.us

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread47.us.us
  %i.av = load ptr, ptr %.0.ptr55.us, align 8, !tbaa !246 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !53 ; 3 uses
  %i.ay = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.av) #44
  %i.az = icmp eq i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.j, label %.critedge39.us.us

bb.j:                                             ; preds = %bb.i
  %i.ba = icmp eq i64 %i.ax, 0
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.us.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.us.us: ; preds = %bb.j
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !60
  %bcmp.i42.us.us = call i32 @bcmp(ptr %i.bb, ptr nonnull %i.av, i64 %i.ax)
  %i.bc = icmp eq i32 %bcmp.i42.us.us, 0
  br i1 %i.bc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge39.us.us

.critedge39.us.us:                                ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.us.us, %bb.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread47.us.us
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.044.053.us.us, i64 16 ; 2 uses
  %.not49.us.us = icmp eq ptr %i.bd, %i.ag
  br i1 %.not49.us.us, label %.critedge41.us, label %.lr.ph.us

.critedge.preheader.split:                        ; preds = %bb.b, %.critedge41
  %.0.idx54 = phi i64 [ %.0.add, %.critedge41 ], [ 0, %bb.b ] ; 2 uses
  %.0.ptr55 = getelementptr inbounds nuw i8, ptr @_ZZN5osgeo4proj9operation14Transformation36isGeographic3DToGravityRelatedHeightERKN7dropbox6oxygen2nnISt10shared_ptrINS1_15OperationMethodEEEEbE11methodCodes, i64 %.0.idx54
  %i.be = load ptr, ptr %0, align 8, !tbaa !160
  %i.bf = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common16IdentifiedObject11identifiersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.be) #49 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !177 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !177 ; 2 uses
  %.not4952 = icmp eq ptr %i.bg, %i.bi
  br i1 %.not4952, label %.critedge41, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge.preheader.split, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread47
  %.sroa.044.053 = phi ptr [ %i.bw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread47 ], [ %i.bg, %.critedge.preheader.split ] ; 2 uses
  %i.bj = load ptr, ptr %.sroa.044.053, align 8, !tbaa !245 ; 2 uses
  %i.bk = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5osgeo4proj8metadata10Identifier9codeSpaceB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.bj) #49
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj8metadata10Identifier4codeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.bj) #49 ; 2 uses
  %i.bn = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull @.str.86) #44
  br i1 %i.bn, label %bb.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread47

bb.k:                                             ; preds = %.lr.ph
  %i.bo = load ptr, ptr %.0.ptr55, align 8, !tbaa !246 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !53 ; 3 uses
  %i.br = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bo) #44
  %i.bs = icmp eq i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread47

bb.l:                                             ; preds = %bb.k
  %i.bt = icmp eq i64 %i.bq, 0
  br i1 %i.bt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.l
  %i.bu = load ptr, ptr %i.bm, align 8, !tbaa !60
  %bcmp.i = tail call i32 @bcmp(ptr %i.bu, ptr nonnull %i.bo, i64 %i.bq)
  %i.bv = icmp eq i32 %bcmp.i, 0
  br i1 %i.bv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread47

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread47: ; preds = %bb.k, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %.lr.ph
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.044.053, i64 16 ; 2 uses
  %.not49 = icmp eq ptr %i.bw, %i.bi
  br i1 %.not49, label %.critedge41, label %.lr.ph

.critedge41:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread47, %.critedge.preheader.split
  %.0.add = add nuw nsw i64 %.0.idx54, 8          ; 2 uses
  %.not.not = icmp eq i64 %.0.add, 336
  br i1 %.not.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge.preheader.split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %.critedge41, %bb.l, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %.critedge41.us, %bb.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.us.us, %bb.j, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.us.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %.5 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %bb.a ], [ false, %.critedge41.us ], [ true, %bb.l ], [ true, %bb.h ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.us.us ], [ true, %bb.j ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.us.us ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ false, %.critedge41 ]
  ret i1 %.5
}

; Function Attrs: nounwind
declare noundef i64 @_ZN5osgeo4proj8internal7ci_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare noundef i64 @_ZN5osgeo4proj8internal7ci_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_m(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #24 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !53   ; 3 uses
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #44 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !50, !alias.scope !535
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !53, !alias.scope !535
  store i8 0, ptr %i.e, align 8, !tbaa !54, !alias.scope !535
  %i.g = add i64 %i.d, %i.c
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !53, !alias.scope !535
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.c
  br i1 %i.j, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !53, !alias.scope !535
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.277) #48
          to label %.cont.i unwind label %bb.c

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %2, i64 noundef %i.d)
          to label %_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i, %.invoke.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !60, !alias.scope !535 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !tbaa !54, !alias.scope !535
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #45
  br label %.body

_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5osgeo4proj8metadata10Identifier9codeSpaceB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj8metadata10Identifier4codeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj9operation14Transformation31getHeightToGeographic3DFilenameB5cxx11Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = tail call fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZN5osgeo4proj9operationL32_getHeightToGeographic3DFilenameB5cxx11EPKNS1_15SingleOperationEb(ptr noundef %0, i1 noundef zeroext false) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !53
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !219
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = tail call noundef zeroext i1 @_ZN5osgeo4proj9operation14Transformation36isGeographic3DToGravityRelatedHeightERKN7dropbox6oxygen2nnISt10shared_ptrINS1_15OperationMethodEEEEb(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %.noexc.i, label %.thread

.noexc.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #44
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  store i64 36, ptr %i.a, align 8, !tbaa !61
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !60
  %i.l = load i64, ptr %i.a, align 8, !tbaa !61   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.k, ptr noundef nonnull align 1 dereferenceable(36) @.str.88, i64 36, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  %i.o = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj9operation15SingleOperation14parameterValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 8666) #44
  %i.p = load ptr, ptr %1, align 8, !tbaa !60     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.j
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc.i
  %i.r = load i64, ptr %i.j, align 8, !tbaa !54
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !197  ; 3 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5osgeo4proj9operation14ParameterValue4typeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.t) #49
  %i.v = load i32, ptr %i.u, align 4, !tbaa !199
  %i.w = icmp eq i32 %i.v, 4
  br i1 %i.w, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.x = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj9operation14ParameterValue9valueFileB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.t) #49
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c, %bb.b, %bb.d, %bb.a
  %.1 = phi ptr [ %i.b, %bb.a ], [ %i.x, %bb.d ], [ @_ZN5osgeo4proj9operationL10nullStringB5cxx11E, %bb.b ], [ @_ZN5osgeo4proj9operationL10nullStringB5cxx11E, %bb.c ], [ @_ZN5osgeo4proj9operationL10nullStringB5cxx11E, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZN5osgeo4proj9operationL32_getHeightToGeographic3DFilenameB5cxx11EPKNS1_15SingleOperationEb(ptr nofree noundef nonnull readonly captures(none) %0, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
end_hunk_0
