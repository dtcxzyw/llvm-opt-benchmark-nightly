Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/object_properties?download=true
inline.NumInlined: 1155
inline.NumDeleted: 594
begin_hunk_0_@_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm3ELm40EE4__eqERKS1Q_S1T_:bb.a
  br i1 %i.aa, label %_ZNK4core8aabbox3dIfEeqERKS1_.exit, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm4ELm40EE4__eqERKS1Q_S1T_.exit

_ZNK4core8aabbox3dIfEeqERKS1_.exit:               ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !51
  %i.af = fcmp nsz oeq float %i.ac, %i.ae
  br i1 %i.af, label %bb.e, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm4ELm40EE4__eqERKS1Q_S1T_.exit

bb.e:                                             ; preds = %_ZNK4core8aabbox3dIfEeqERKS1_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !216, !nonnull !75
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !143
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !216, !nonnull !75
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !143
  %i.am = icmp eq i8 %i.ai, %i.al
  br i1 %i.am, label %bb.f, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm4ELm40EE4__eqERKS1Q_S1T_.exit

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !218, !nonnull !75, !align !125 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !218, !nonnull !75, !align !125 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !49 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !49
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.g, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm4ELm40EE4__eqERKS1Q_S1T_.exit

bb.g:                                             ; preds = %bb.f
  %i.aw = icmp eq i64 %i.as, 0
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i: ; preds = %bb.g
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !67
  %i.ay = load ptr, ptr %i.ao, align 8, !tbaa !67
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ay, ptr %i.ax, i64 %i.as)
  %i.az = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.az, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm4ELm40EE4__eqERKS1Q_S1T_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, %bb.g
  %i.ba = tail call noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm6ELm40EE4__eqERKS1Q_S1T_(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %1)
  br label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm4ELm40EE4__eqERKS1Q_S1T_.exit

_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm4ELm40EE4__eqERKS1Q_S1T_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %_ZNK4core8vector3dIfEeqERKS1_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, %bb.f, %bb.e, %_ZNK4core8aabbox3dIfEeqERKS1_.exit
  %i.bb = phi i1 [ false, %_ZNK4core8aabbox3dIfEeqERKS1_.exit ], [ false, %bb.f ], [ false, %bb.e ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i ], [ %i.ba, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i ], [ false, %_ZNK4core8vector3dIfEeqERKS1_.exit.i ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %i.bb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm6ELm40EE4__eqERKS1Q_S1T_(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !220, !nonnull !75, !align !125 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !220, !nonnull !75, !align !125 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !49   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !49
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm7ELm40EE4__eqERKS1Q_S1T_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !67
  %bcmp.i = tail call i32 @bcmp(ptr %i.l, ptr %i.k, i64 %i.f)
  %i.m = icmp eq i32 %bcmp.i, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm7ELm40EE4__eqERKS1Q_S1T_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !222, !nonnull !75, !align !125 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !222, !nonnull !75, !align !125 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !49   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !49
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.c, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm7ELm40EE4__eqERKS1Q_S1T_.exit

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.w = icmp eq i64 %i.s, 0
  br i1 %i.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.c
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !67
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !67
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.y, ptr %i.x, i64 %i.s)
  %i.z = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.z, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm7ELm40EE4__eqERKS1Q_S1T_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !224, !nonnull !75, !align !125 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !224, !nonnull !75, !align !125 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !49 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !49
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm7ELm40EE4__eqERKS1Q_S1T_.exit

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.aj = icmp eq i64 %i.af, 0
  br i1 %i.aj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i: ; preds = %bb.d
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !67
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !67
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.al, ptr %i.ak, i64 %i.af)
  %i.am = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm7ELm40EE4__eqERKS1Q_S1T_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, %bb.d
  %i.an = tail call noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm9ELm40EE4__eqERKS1Q_S1T_(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %1)
  br label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm7ELm40EE4__eqERKS1Q_S1T_.exit

_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm7ELm40EE4__eqERKS1Q_S1T_.exit: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ao = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i ], [ %i.an, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i ], [ false, %bb.a ]
  ret i1 %i.ao
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm9ELm40EE4__eqERKS1Q_S1T_(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !226, !nonnull !75, !align !125 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !226, !nonnull !75, !align !125 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !49   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !49
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm10ELm40EE4__eqERKS1Q_S1T_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !67
  %bcmp.i = tail call i32 @bcmp(ptr %i.l, ptr %i.k, i64 %i.f)
  %i.m = icmp eq i32 %bcmp.i, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm10ELm40EE4__eqERKS1Q_S1T_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !228, !nonnull !75, !align !144 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !228, !nonnull !75, !align !144 ; 3 uses
  %i.r = load float, ptr %i.o, align 4, !tbaa !145
  %i.s = load float, ptr %i.q, align 4, !tbaa !145
  %i.t = fcmp nsz oeq float %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm10ELm40EE4__eqERKS1Q_S1T_.exit

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !146
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !146
  %i.y = fcmp nsz oeq float %i.v, %i.x
  br i1 %i.y, label %_ZNK4core8vector3dIfEeqERKS1_.exit.i, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm10ELm40EE4__eqERKS1Q_S1T_.exit

_ZNK4core8vector3dIfEeqERKS1_.exit.i:             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !51
  %i.ad = fcmp nsz oeq float %i.aa, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm10ELm40EE4__eqERKS1Q_S1T_.exit

bb.d:                                             ; preds = %_ZNK4core8vector3dIfEeqERKS1_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !230, !nonnull !75, !align !144
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !230, !nonnull !75, !align !144
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !52
  %i.aj = load i32, ptr %i.af, align 4, !tbaa !52
  %i.ak = icmp eq i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.e, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm10ELm40EE4__eqERKS1Q_S1T_.exit

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !232, !nonnull !75, !align !144 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !232, !nonnull !75, !align !144 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !53, !range !74, !noundef !75 ; 2 uses
  %2 = trunc nuw i8 %i.aq to i1
  %3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %4 = load i8, ptr %3, align 4, !tbaa !53, !range !74, !noundef !75
  %i.ar = icmp eq i8 %i.aq, %4                    ; 2 uses
  %brmerge.not.i.i.i.i = and i1 %i.ar, %2
  %i.as = load i32, ptr %i.ao, align 4
  %i.at = load i32, ptr %i.am, align 4
  %i.au = icmp eq i32 %i.as, %i.at
  %i.av = select i1 %brmerge.not.i.i.i.i, i1 %i.au, i1 %i.ar
  br i1 %i.av, label %bb.f, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm10ELm40EE4__eqERKS1Q_S1T_.exit

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !234, !nonnull !75, !align !144 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !234, !nonnull !75, !align !144 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !55, !range !74, !noundef !75 ; 2 uses
  %5 = trunc nuw i8 %i.bb to i1
  %6 = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %7 = load i8, ptr %6, align 4, !tbaa !55, !range !74, !noundef !75
  %i.bc = icmp eq i8 %i.bb, %7                    ; 2 uses
  %brmerge.not.i.i.i.i.i = and i1 %i.bc, %5
  %i.bd = load i32, ptr %i.ax, align 4
  %i.be = load i32, ptr %i.az, align 4
  %i.bf = icmp eq i32 %i.bd, %i.be
  %i.bg = select i1 %brmerge.not.i.i.i.i.i, i1 %i.bf, i1 %i.bc
  br i1 %i.bg, label %bb.g, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm10ELm40EE4__eqERKS1Q_S1T_.exit

bb.g:                                             ; preds = %bb.f
  %i.bh = tail call noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm14ELm40EE4__eqERKS1Q_S1T_(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %1)
  br label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm10ELm40EE4__eqERKS1Q_S1T_.exit

_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm10ELm40EE4__eqERKS1Q_S1T_.exit: ; preds = %bb.a, %bb.g, %bb.f, %bb.e, %bb.d, %_ZNK4core8vector3dIfEeqERKS1_.exit.i, %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bi = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ false, %_ZNK4core8vector3dIfEeqERKS1_.exit.i ], [ %i.bh, %bb.g ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.a ]
  ret i1 %i.bi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm14ELm40EE4__eqERKS1Q_S1T_(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !236, !nonnull !75, !align !147
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !236, !nonnull !75, !align !147
  %i.e = load <2 x i16>, ptr %i.b, align 2
  %i.f = load <2 x i16>, ptr %i.d, align 2
  %i.g = icmp eq <2 x i16> %i.e, %i.f             ; 2 uses
  %i.h = extractelement <2 x i1> %i.g, i64 0
  %i.i = extractelement <2 x i1> %i.g, i64 1
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %bb.b, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm15ELm40EE4__eqERKS1Q_S1T_.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !238, !nonnull !75, !align !147
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !238, !nonnull !75, !align !147
  %i.o = load <2 x i16>, ptr %i.l, align 2
  %i.p = load <2 x i16>, ptr %i.n, align 2
  %i.q = icmp eq <2 x i16> %i.o, %i.p             ; 2 uses
  %i.r = extractelement <2 x i1> %i.q, i64 0
  %i.s = extractelement <2 x i1> %i.q, i64 1
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %bb.c, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm15ELm40EE4__eqERKS1Q_S1T_.exit

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !240, !nonnull !75, !align !144
  %i.w = load float, ptr %i.v, align 4, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !240, !nonnull !75, !align !144
  %i.z = load float, ptr %i.y, align 4, !tbaa !12
  %i.aa = fcmp nsz oeq float %i.w, %i.z
  br i1 %i.aa, label %bb.d, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm15ELm40EE4__eqERKS1Q_S1T_.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !242, !nonnull !75, !align !144
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !242, !nonnull !75, !align !144
  %i.ag = load float, ptr %i.af, align 4, !tbaa !12
  %i.ah = fcmp nsz oeq float %i.ad, %i.ag
  br i1 %i.ah, label %bb.e, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm15ELm40EE4__eqERKS1Q_S1T_.exit

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !244, !nonnull !75, !align !144
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !244, !nonnull !75, !align !144
  %i.an = load float, ptr %i.am, align 4, !tbaa !12
  %i.ao = fcmp nsz oeq float %i.ak, %i.an
  br i1 %i.ao, label %bb.f, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm15ELm40EE4__eqERKS1Q_S1T_.exit

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !246, !nonnull !75, !align !144
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !246, !nonnull !75, !align !144
  %i.au = load float, ptr %i.at, align 4, !tbaa !12
  %i.av = fcmp nsz oeq float %i.ar, %i.au
  br i1 %i.av, label %bb.g, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm15ELm40EE4__eqERKS1Q_S1T_.exit

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !248, !nonnull !75, !align !144
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !248, !nonnull !75, !align !144
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !12
  %i.bc = fcmp nsz oeq float %i.ay, %i.bb
  br i1 %i.bc, label %bb.h, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm15ELm40EE4__eqERKS1Q_S1T_.exit

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !250, !nonnull !75, !align !144
  %i.bf = load float, ptr %i.be, align 4, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !250, !nonnull !75, !align !144
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !12
  %i.bj = fcmp nsz oeq float %i.bf, %i.bi
  br i1 %i.bj, label %bb.i, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm15ELm40EE4__eqERKS1Q_S1T_.exit

bb.i:                                             ; preds = %bb.h
  %i.bk = tail call noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm22ELm40EE4__eqERKS1Q_S1T_(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %1)
  br label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm15ELm40EE4__eqERKS1Q_S1T_.exit

_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm15ELm40EE4__eqERKS1Q_S1T_.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.bl = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ %i.bk, %bb.i ]
  ret i1 %i.bl
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm22ELm40EE4__eqERKS1Q_S1T_(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !252, !nonnull !75, !align !144 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !252, !nonnull !75, !align !144 ; 3 uses
  %i.e = load i16, ptr %i.b, align 4, !tbaa !56
  %i.f = load i16, ptr %i.d, align 4, !tbaa !56
  %i.g = icmp eq i16 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm23ELm40EE4__eqERKS1Q_S1T_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.i = load i8, ptr %i.h, align 2, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.k = load i8, ptr %i.j, align 2, !tbaa !57
  %i.l = icmp eq i8 %i.i, %i.k
  br i1 %i.l, label %_ZNK7MapNodeeqERKS_.exit, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm23ELm40EE4__eqERKS1Q_S1T_.exit

_ZNK7MapNodeeqERKS_.exit:                         ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !58
  %i.q = icmp eq i8 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm23ELm40EE4__eqERKS1Q_S1T_.exit

bb.c:                                             ; preds = %_ZNK7MapNodeeqERKS_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !254, !nonnull !75, !align !147
  %i.t = load i16, ptr %i.s, align 2, !tbaa !91
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !254, !nonnull !75, !align !147
  %i.w = load i16, ptr %i.v, align 2, !tbaa !91
  %i.x = icmp eq i16 %i.t, %i.w
  br i1 %i.x, label %bb.d, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm23ELm40EE4__eqERKS1Q_S1T_.exit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !256, !nonnull !75, !align !147
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !91
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !256, !nonnull !75, !align !147
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !91
  %i.ae = icmp eq i16 %i.aa, %i.ad
  br i1 %i.ae, label %bb.e, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm23ELm40EE4__eqERKS1Q_S1T_.exit

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !258, !nonnull !75
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !258, !nonnull !75
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !50
  %i.al = icmp eq i8 %i.ah, %i.ak
  br i1 %i.al, label %bb.f, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm23ELm40EE4__eqERKS1Q_S1T_.exit

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !260, !nonnull !75
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !261
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !260, !nonnull !75
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !261
  %i.as = icmp eq i8 %i.ao, %i.ar
  br i1 %i.as, label %bb.g, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm23ELm40EE4__eqERKS1Q_S1T_.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !263, !nonnull !75
  %i.av = load i8, ptr %i.au, align 1, !tbaa !61, !range !74, !noundef !75
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !263, !nonnull !75
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !61, !range !74, !noundef !75
  %i.az = icmp eq i8 %i.av, %i.ay
  br i1 %i.az, label %bb.h, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm23ELm40EE4__eqERKS1Q_S1T_.exit

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !265, !nonnull !75
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !61, !range !74, !noundef !75
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !265, !nonnull !75
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !61, !range !74, !noundef !75
  %i.bg = icmp eq i8 %i.bc, %i.bf
  br i1 %i.bg, label %bb.i, label %_ZNSt15__tuple_compareISt5tupleIJRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS1_IN5video6SColorESaISD_EERKN4core8aabbox3dIfEESM_RK12ObjectVisualRKS7_SR_SR_SR_SR_RKNSI_8vector3dIfEERKSD_RKSt8optionalISD_ERKSY_IjERKNSI_8vector2dIsEES18_RKfS1A_S1A_S1A_S1A_S1A_RK7MapNodeRKtS1F_RKaRK16PointabilityTypeRKbS1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_S1M_RK10StepUpModeEES1Q_Lm23ELm40EE4__eqERKS1Q_S1T_.exit

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !267, !nonnull !75
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !61, !range !74, !noundef !75
end_hunk_0
