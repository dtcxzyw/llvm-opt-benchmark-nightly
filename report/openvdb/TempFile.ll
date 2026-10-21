Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/TempFile?download=true
inline.NumInlined: 691
inline.NumDeleted: 315
begin_hunk_0_@_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !23
  store i8 0, ptr %i.b, align 8, !tbaa !24
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %i.e = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.d)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.b, %bb.a
  %.not8 = icmp eq ptr %2, null
  br i1 %.not8, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.g = load ptr, ptr %2, align 8, !tbaa !49, !noalias !120
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23, !noalias !120 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !20, !alias.scope !121
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.k, align 8, !tbaa !23, !alias.scope !121
  store i8 0, ptr %i.j, align 8, !tbaa !24, !alias.scope !121
  %i.l = add i64 %i.i, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.l)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !23, !alias.scope !121
  %i.n = and i64 %i.m, -2
  %i.o = icmp eq i64 %i.n, 4611686018427387902
  br i1 %i.o, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.e
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.18, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.q = load i64, ptr %i.k, align 8, !tbaa !23, !alias.scope !121
  %i.r = sub i64 4611686018427387903, %i.q
  %i.s = icmp ult i64 %i.r, %i.i
  br i1 %i.s, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #30
          to label %.cont.i.i unwind label %bb.f

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.g, i64 noundef %i.i)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !49, !alias.scope !121 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.j
  br i1 %i.w, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.x = load i64, ptr %i.k, align 8, !tbaa !23   ; 2 uses
  %i.y = load i64, ptr %i.c, align 8, !tbaa !23
  %i.z = sub i64 4611686018427387903, %i.y
  %i.aa = icmp ult i64 %i.z, %i.x
  br i1 %i.aa, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.g:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #30
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.ab = load ptr, ptr %3, align 8, !tbaa !49
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %i.ab, i64 noundef %i.x)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ad = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.j
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.af = load i64, ptr %i.j, align 8, !tbaa !24
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.j

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.g
  %i.ah = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.j
  br i1 %i.aj, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.h, %bb.f
  %.sink = phi ptr [ %i.v, %bb.f ], [ %i.ai, %bb.h ]
  %.pn.ph = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.ah, %bb.h ]
  %i.ak = load i64, ptr %i.j, align 8, !tbaa !24
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.al) #28
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.h, %bb.f
  %.pn = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.ah, %bb.h ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.i

bb.i:                                             ; preds = %.body, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.f, %bb.c ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.am = call ptr @__cxa_begin_catch(ptr %.1) #29 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  ret void

bb.k:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #31
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_07IoErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7openvdb5v13_09ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !24
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28, !inline_history !79
  br label %_ZN7openvdb5v13_09ExceptionD2Ev.exit

_ZN7openvdb5v13_09ExceptionD2Ev.exit:             ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #29, !inline_history !79
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK7openvdb5v13_09Exception4whatEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_09ExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7openvdb5v13_09ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !24
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28, !inline_history !79
  br label %_ZN7openvdb5v13_09ExceptionD2Ev.exit

_ZN7openvdb5v13_09ExceptionD2Ev.exit:             ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #29, !inline_history !79
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE4openERKS3_ll(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::iostreams::detail::concept_adapter", align 8 ; 7 uses
  %.not = icmp eq i64 %2, -1
  %spec.select = select i1 %.not, i64 4096, i64 %2 ; 3 uses
  %.not16 = icmp eq i64 %spec.select, 0
  br i1 %.not16, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = shl i64 %spec.select, 32
  %i.c = ashr exact i64 %i.b, 32                  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !60
  %.not.i17 = icmp eq i64 %i.e, %i.c
  br i1 %.not.i17, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.thread
  %i.f = icmp slt i64 %i.c, 0
  br i1 %i.f, label %.noexc.i.i.i20, label %_ZN5boost9iostreams6detail12basic_bufferIcSaIcEEC2El.exit.i18, !prof !122

.noexc.i.i.i20:                                   ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZN5boost9iostreams6detail12basic_bufferIcSaIcEEC2El.exit.i18: ; preds = %bb.b
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #27
  %i.h = load i64, ptr %i.d, align 8, !tbaa !71
  store i64 %i.c, ptr %i.d, align 8, !tbaa !71
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !78
  %.not.i.i19 = icmp eq ptr %i.i, null
  br i1 %.not.i.i19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9iostreams6detail12basic_bufferIcSaIcEEC2El.exit.i18
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.h) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.thread, %_ZN5boost9iostreams6detail12basic_bufferIcSaIcEEC2El.exit.i18, %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(132) %0)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZN5boost9iostreams20file_descriptor_sinkC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !33, !range !62, !noundef !63
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %_ZN5boost9iostreams6detail8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEE5resetEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57   ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = atomicrmw add ptr %i.s, i32 -1 acq_rel, align 4
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.g, label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.i, !inline_history !0

.noexc.i.i.i.i.i.i:                               ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i

bb.h:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i unwind label %bb.i, !inline_history !0

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #31
  unreachable

_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i: ; preds = %bb.h, %.noexc.i.i.i.i.i.i, %bb.f, %bb.e
  store i8 0, ptr %i.n, align 8, !tbaa !33
  br label %_ZN5boost9iostreams6detail8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEE5resetEv.exit.i

_ZN5boost9iostreams6detail8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEE5resetEv.exit.i: ; preds = %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i, %bb.d
  invoke void @_ZN5boost9iostreams20file_descriptor_sinkC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(17) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZN5boost9iostreams6detail8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEE5resetEv.exit.i
  store i8 1, ptr %i.n, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57 ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = atomicrmw add ptr %i.ai, i32 -1 acq_rel, align 4
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.l, label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ah)
          to label %.noexc.i.i.i.i unwind label %bb.n, !inline_history !0

.noexc.i.i.i.i:                                   ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.ap = atomicrmw add ptr %i.ao, i32 -1 acq_rel, align 4
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.m, label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit

bb.m:                                             ; preds = %.noexc.i.i.i.i
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !14
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ah)
          to label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit unwind label %bb.n, !inline_history !0

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #31
  unreachable

_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit: ; preds = %bb.j, %bb.k, %.noexc.i.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !39
  %i.ay = icmp sgt i64 %spec.select, 1
  %spec.select.v = select i1 %i.ay, i32 3, i32 1
  %spec.select.a = or i32 %i.ax, %spec.select.v
  store i32 %spec.select.a, ptr %i.aw, align 8, !tbaa !39
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !29
  %i.bb = and i32 %i.ba, -8
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !29
  ret void

bb.o:                                             ; preds = %_ZN5boost9iostreams6detail8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEE5resetEv.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %i.bc
}

declare void @_ZN5boost9iostreams20file_descriptor_sinkC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #12

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEES8_NS1_15reset_operationINS1_8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSH_vEE4typeEE11result_typeESH_T0_T1_(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::iostreams::detail::reset_operation", align 8 ; 2 uses
  store ptr %4, ptr %5, align 8
  %i.a = invoke noundef i32 @_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEES8_EENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_T0_(ptr %0, i32 %1, ptr %2, i32 %3)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !33, !range !62, !noundef !63
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZNK5boost9iostreams6detail15reset_operationINS1_8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEEEEclEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw add ptr %i.g, i32 -1 acq_rel, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.e, label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.g, !inline_history !0

.noexc.i.i.i.i.i.i:                               ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.n = atomicrmw add ptr %i.m, i32 -1 acq_rel, align 4
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.f, label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i

bb.f:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i unwind label %bb.g, !inline_history !0

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #31
  unreachable

_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i: ; preds = %bb.f, %.noexc.i.i.i.i.i.i, %bb.d, %bb.c
  store i8 0, ptr %i.b, align 8, !tbaa !33
  br label %_ZNK5boost9iostreams6detail15reset_operationINS1_8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEEEEclEv.exit

_ZNK5boost9iostreams6detail15reset_operationINS1_8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEEEEclEv.exit: ; preds = %bb.b, %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i
  ret i32 %i.a

bb.h:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #29 ; 0 uses
  invoke void @_ZNK5boost9iostreams6detail15reset_operationINS1_8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEEEEclEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  %i.z = call ptr @__cxa_begin_catch(ptr %i.y) #29 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  invoke void @__cxa_rethrow() #30
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.aa

bb.m:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #31
  unreachable

bb.n:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEES8_EENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_T0_(ptr %0, i32 %1, ptr %2, i32 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::iostreams::detail::member_close_operation", align 8 ; 3 uses
  store ptr %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %3, ptr %i.a, align 8
  switch i32 %1, label %_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit [
    i32 8, label %bb.b
    i32 16, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.d = and i32 %i.c, 2
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = or disjoint i32 %i.c, 2
  store i32 %i.f, ptr %i.b, align 8, !tbaa !29
  br label %.sink.split.i.i.i.i

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %i.i = and i32 %i.h, 4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit

bb.e:                                             ; preds = %bb.d
  %i.k = or disjoint i32 %i.h, 4
  store i32 %i.k, ptr %i.g, align 8, !tbaa !29
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.e, %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr noundef nonnull align 8 dereferenceable(68) %0, i32 noundef %1)
          to label %_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit unwind label %bb.j, !inline_history !123

_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit: ; preds = %bb.d, %bb.b, %.sink.split.i.i.i.i, %bb.a
  switch i32 %3, label %_ZNK5boost9iostreams6detail22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEclEv.exit [
    i32 8, label %bb.f
    i32 16, label %bb.h
  ]

bb.f:                                             ; preds = %_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !29   ; 2 uses
  %i.q = and i32 %i.p, 2
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNK5boost9iostreams6detail22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEclEv.exit

bb.g:                                             ; preds = %bb.f
  %i.s = or disjoint i32 %i.p, 2
  store i32 %i.s, ptr %i.o, align 8, !tbaa !29
  br label %.sink.split.i.i

bb.h:                                             ; preds = %_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !29   ; 2 uses
  %i.v = and i32 %i.u, 4
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %_ZNK5boost9iostreams6detail22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEclEv.exit

bb.i:                                             ; preds = %bb.h
  %i.x = or disjoint i32 %i.u, 4
  store i32 %i.x, ptr %i.t, align 8, !tbaa !29
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.i, %bb.g
  %i.y = load ptr, ptr %2, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(68) %2, i32 noundef %3), !inline_history !124
  br label %_ZNK5boost9iostreams6detail22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEclEv.exit
end_hunk_0
