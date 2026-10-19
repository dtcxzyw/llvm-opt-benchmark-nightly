Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/source-positions?download=true
inline.NumInlined: 451
inline.NumDeleted: 193
begin_hunk_0_@_ZN2v88internal6torque14MessageBuilderD2Ev:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2v88internal6torque13TorqueMessageES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyIN2v88internal6torque13TorqueMessageEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN2v88internal6torque13TorqueMessageEEvPT_.exit.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN2v88internal6torque13TorqueMessageEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZSt8_DestroyIN2v88internal6torque13TorqueMessageEEvPT_.exit.i.i.i

_ZSt8_DestroyIN2v88internal6torque13TorqueMessageEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2v88internal6torque13TorqueMessageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !22

_ZSt8_DestroyIPN2v88internal6torque13TorqueMessageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN2v88internal6torque13TorqueMessageEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8
  br label %_ZSt8_DestroyIPN2v88internal6torque13TorqueMessageES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2v88internal6torque13TorqueMessageES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2v88internal6torque13TorqueMessageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2v88internal6torque13TorqueMessageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2v88internal6torque13TorqueMessageESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN2v88internal6torque13TorqueMessageES3_EvT_S5_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #24
  br label %_ZNSt6vectorIN2v88internal6torque13TorqueMessageESaIS3_EED2Ev.exit

_ZNSt6vectorIN2v88internal6torque13TorqueMessageESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2v88internal6torque13TorqueMessageES3_EvT_S5_RSaIT0_E.exit.i, %bb.c
  %i.q = load ptr, ptr %0, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN2v88internal6torque13TorqueMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN2v88internal6torque13TorqueMessageESaIS3_EED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #24
  br label %_ZN2v88internal6torque13TorqueMessageD2Ev.exit

_ZN2v88internal6torque13TorqueMessageD2Ev.exit:   ; preds = %_ZNSt6vectorIN2v88internal6torque13TorqueMessageESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void

bb.d:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden range(i32 -2147483648, 2147483647) i32 @_ZN2v88internal6torque13SourceFileMap9AddSourceENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef align 8 %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v84base18ContextualVariableINS_8internal6torque13SourceFileMapES4_E4top_E) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.d, align 8
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.d, align 8
  %i.o = load i64, ptr %i.i, align 8
  store i64 %i.o, ptr %i.g, align 8
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.q, ptr %i.r, align 8
  store ptr %i.i, ptr %0, align 8
  store i64 0, ptr %i.p, align 8
  store i8 0, ptr %i.i, align 8
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.t, ptr %i.c, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(32) %0)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i, %bb.d
  %i.u = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 5
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, -1
  ret i32 %i.ad
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @_ZN2v88internal6torque13SourceFileMap11GetSourceIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v84base18ContextualVariableINS_8internal6torque13SourceFileMapES4_E4top_E)
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = load ptr, ptr %0, align 8
  %i.m = icmp eq i64 %i.k, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6
  %.0510 = phi i64 [ 0, %.lr.ph ], [ %i.t, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %.0510 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.p, %i.k
  br i1 %i.q, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6

bb.c:                                             ; preds = %bb.b
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.r = load ptr, ptr %i.n, align 8
  %bcmp.i = tail call i32 @bcmp(ptr %i.r, ptr %i.l, i64 %i.k)
  %i.s = icmp eq i32 %bcmp.i, 0
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.t = add nuw i64 %.0510, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.i
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !23

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.u = trunc i64 %.0510 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %.sroa.0.1 = phi i32 [ %i.u, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ -1, %bb.a ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6 ]
  ret i32 %.sroa.0.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2v88internal6torque13SourceFileMap10AllSourcesEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.8") align 8 captures(none) initializes((0, 24)) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v84base18ContextualVariableINS_8internal6torque13SourceFileMapES4_E4top_E)
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = shl i64 %i.h, 27                         ; 3 uses
  %i.j = ashr exact i64 %i.i, 32                  ; 2 uses
  %i.k = icmp ugt i64 %i.j, 2305843009213693951
  br i1 %i.k, label %1, label %bb.b

1:                                                ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %1
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN2v88internal6torque8SourceIdESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN2v88internal6torque8SourceIdESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %2 = ashr exact i64 %i.i, 30
  %3 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %2) #25
          to label %_ZNSt12_Vector_baseIN2v88internal6torque8SourceIdESaIS3_EE11_M_allocateEm.exit.i.a unwind label %.loopexit.split-lp ; 4 uses

_ZNSt12_Vector_baseIN2v88internal6torque8SourceIdESaIS3_EE11_M_allocateEm.exit.i.a: ; preds = %_ZNSt12_Vector_baseIN2v88internal6torque8SourceIdESaIS3_EE11_M_allocateEm.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %0, align 8
  store ptr %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.j ; 2 uses
  store ptr %i.n, ptr %i.l, align 8
  %.pre = load ptr, ptr %i.c, align 8
  %.pre34 = load ptr, ptr %i.b, align 8
  %.pre35 = ptrtoint ptr %.pre to i64
  %.pre36 = ptrtoint ptr %.pre34 to i64
  %.pre38 = sub i64 %.pre35, %.pre36
  br label %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE7reserveEm.exit: ; preds = %bb.b, %_ZNSt12_Vector_baseIN2v88internal6torque8SourceIdESaIS3_EE11_M_allocateEm.exit.i.a
  %.pre-phi39 = phi i64 [ %i.h, %bb.b ], [ %.pre38, %_ZNSt12_Vector_baseIN2v88internal6torque8SourceIdESaIS3_EE11_M_allocateEm.exit.i.a ]
  %.promoted18 = phi ptr [ null, %bb.b ], [ %3, %_ZNSt12_Vector_baseIN2v88internal6torque8SourceIdESaIS3_EE11_M_allocateEm.exit.i.a ] ; 3 uses
  %.promoted = phi ptr [ null, %bb.b ], [ %i.n, %_ZNSt12_Vector_baseIN2v88internal6torque8SourceIdESaIS3_EE11_M_allocateEm.exit.i.a ] ; 2 uses
  %i.o = lshr exact i64 %.pre-phi39, 5
  %i.p = trunc i64 %i.o to i32
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %bb.h

.lr.ph:                                           ; preds = %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE9push_backEOS3_.exit
  %i.s = phi ptr [ %.promoted18, %.lr.ph ], [ %i.ba, %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE9push_backEOS3_.exit ] ; 8 uses
  %.022 = phi i32 [ 0, %.lr.ph ], [ %i.bd, %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %i.t = phi ptr [ %.promoted, %.lr.ph ], [ %i.bc, %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE9push_backEOS3_.exit ] ; 4 uses
  %i.u = phi ptr [ %.promoted18, %.lr.ph ], [ %i.bb, %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE9push_backEOS3_.exit ] ; 12 uses
  %.not.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %.022, ptr %i.s, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  store ptr %i.v, ptr %i.r, align 8
  br label %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE9push_backEOS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.w = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.x = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.y = sub i64 %i.w, %i.x                       ; 4 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775804
  br i1 %i.z, label %bb.f, label %_ZNKSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.t, ptr %i.l, align 8
  store ptr %i.u, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #22
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.aa = ashr exact i64 %i.y, 2                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 2305843009213693951)
  %i.ae = select i1 %i.ac, i64 2305843009213693951, i64 %i.ad ; 3 uses
  %.not.i.i.i.i11 = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i11)
  %i.af = shl nuw nsw i64 %i.ae, 2
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #25
          to label %.noexc13 unwind label %.loopexit ; 8 uses

.noexc13:                                         ; preds = %_ZNKSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  store i32 %.022, ptr %i.ah, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.u, %i.s
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc13
  %i.ai = ptrtoaddr ptr %i.ag to i64
  %i.aj = add i64 %i.w, -4
  %i.ak = sub i64 %i.aj, %i.x                     ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 28
  %i.an = sub i64 %i.x, %i.ai
  %diff.check = icmp ugt i64 %i.an, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader75, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.am, 9223372036854775800     ; 3 uses
  %i.ao = shl i64 %n.vec, 2                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.u, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.ar ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.u, i64 %i.ar ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.as = getelementptr i8, ptr %next.gep72, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep72, align 4, !alias.scope !31
  %wide.load73 = load <4 x i32>, ptr %i.as, align 4, !alias.scope !31
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !alias.scope !30
  store <4 x i32> %wide.load73, ptr %i.at, align 4, !alias.scope !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader75

.lr.ph.i.i.i.i.i.i.preheader75:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader75, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader75 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader75 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.av = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !31
  store i32 %i.av, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !30
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.s
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !28

_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc13
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ag, %.noexc13 ], [ %i.ap, %middle.block ], [ %i.ax, %.lr.ph.i.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #24
  br label %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.ay, ptr %i.r, align 8
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ae
  br label %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.d
  %i.ba = phi ptr [ %i.ay, %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.v, %bb.d ]
  %i.bb = phi ptr [ %i.ag, %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.bc = phi ptr [ %i.az, %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.bd = add nuw nsw i32 %.022, 1                ; 2 uses
  %i.be = load ptr, ptr %i.c, align 8
  %i.bf = load ptr, ptr %i.b, align 8
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = lshr exact i64 %i.bi, 5
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = icmp slt i32 %i.bd, %i.bk
  br i1 %i.bl, label %bb.c, label %bb.h, !llvm.loop !29

.loopexit:                                        ; preds = %_ZNKSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.t, ptr %i.l, align 8
  store ptr %i.u, ptr %0, align 8
  br label %._crit_edge.a

.loopexit.split-lp:                               ; preds = %bb.f, %_ZNSt12_Vector_baseIN2v88internal6torque8SourceIdESaIS3_EE11_M_allocateEm.exit.i, %1
  %4 = phi ptr [ %i.s, %bb.f ], [ null, %_ZNSt12_Vector_baseIN2v88internal6torque8SourceIdESaIS3_EE11_M_allocateEm.exit.i ], [ null, %1 ]
  %5 = phi ptr [ %i.u, %bb.f ], [ null, %_ZNSt12_Vector_baseIN2v88internal6torque8SourceIdESaIS3_EE11_M_allocateEm.exit.i ], [ null, %1 ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %._crit_edge.a

._crit_edge.a:                                    ; preds = %.loopexit.split-lp, %.loopexit
  %.lcssa19.a = phi ptr [ %i.s, %.loopexit ], [ %4, %.loopexit.split-lp ]
  %.lcssa15.a = phi ptr [ %i.u, %.loopexit ], [ %5, %.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %.lcssa15.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EED2Ev.exit, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE9push_backEOS3_.exit, %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE7reserveEm.exit
  %.lcssa19 = phi ptr [ %.promoted18, %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE7reserveEm.exit ], [ %i.bb, %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE9push_backEOS3_.exit ]
  %.lcssa15 = phi ptr [ %.promoted, %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE7reserveEm.exit ], [ %i.bc, %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EE9push_backEOS3_.exit ]
  store ptr %.lcssa15, ptr %i.l, align 8
  store ptr %.lcssa19, ptr %0, align 8
  ret void

bb.i:                                             ; preds = %._crit_edge.a
  %i.bm = ptrtoint ptr %.lcssa19.a to i64
  %i.bn = ptrtoint ptr %.lcssa15.a to i64
  %i.bo = sub i64 %i.bm, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa15.a, i64 noundef %i.bo) #24
  br label %_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EED2Ev.exit

_ZNSt6vectorIN2v88internal6torque8SourceIdESaIS3_EED2Ev.exit: ; preds = %._crit_edge.a, %bb.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2v88internal6torque13SourceFileMap26FileRelativeToV8RootExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::basic_ifstream", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v84base18ContextualVariableINS_8internal6torque13SourceFileMapES4_E4top_E)
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !noalias !38
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !38
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %i.d, i64 noundef %i.f, ptr noundef nonnull @.str.3, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !38
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.g = load ptr, ptr %0, align 8, !noalias !39  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noalias !39 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !noalias !39 ; 5 uses
  %i.l = sub i64 9223372036854775807, %i.k
  %i.m = icmp ult i64 %i.l, %i.i
  br i1 %i.m, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.a
  %i.n = add i64 %i.k, %i.i                       ; 3 uses
  %i.o = load ptr, ptr %3, align 8, !noalias !39  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.r = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.r)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.s = load i64, ptr %i.p, align 8, !noalias !39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.t = phi i64 [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.n, %i.t
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.i, 1
  br i1 %cond.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.g, align 1, !noalias !39
  store i8 %i.v, ptr %i.u, align 1, !noalias !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.g, i64 %i.i, i1 false), !noalias !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.k, i64 noundef 0, ptr noundef %i.g, i64 noundef %i.i)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  store i64 %i.n, ptr %i.j, align 8, !noalias !39
  %i.w = load ptr, ptr %3, align 8, !noalias !39
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.n
  store i8 0, ptr %i.x, align 1, !noalias !39
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.y, ptr %2, align 8, !alias.scope !39
  %i.z = load ptr, ptr %3, align 8, !noalias !39  ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.p
  br i1 %i.aa, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ab = load i64, ptr %i.j, align 8, !noalias !39 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.z, ptr %2, align 8, !alias.scope !39
  %i.ae = load i64, ptr %i.p, align 8, !noalias !39
  store i64 %i.ae, ptr %i.y, align 8, !alias.scope !39
  %.pre.i = load i64, ptr %i.j, align 8, !noalias !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %i.af = phi i64 [ %i.ab, %bb.h ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !alias.scope !39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 8)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = load ptr, ptr %4, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %4, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i32, ptr %i.al, align 8
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.an = load ptr, ptr %2, align 8               ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.y
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.i
  %i.ap = load i64, ptr %i.y, align 8
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  %i.ar = icmp eq i32 %i.am, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %i.ar

bb.j:                                             ; preds = %bb.g, %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %3, align 8               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.j
  %i.aw = load i64, ptr %i.au, align 8
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.az = load ptr, ptr %2, align 8               ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.y
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.k
  %i.bb = load i64, ptr %i.y, align 8
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %.pn = phi { ptr, i32 } [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11 ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.ay, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #2 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #6 align 2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: noreturn
end_hunk_0
