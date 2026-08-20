inline.NumInlined: 2315
inline.NumDeleted: 1011
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN3igl7tinyply11PlyPropertyC2ERSi:bb.a

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread19: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.af = call noundef zeroext i8 @_ZN3igl7tinyply25property_type_from_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2) #28
  store i8 %i.af, ptr %i.c, align 8, !tbaa !39
  %i.ag = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.g unwind label %bb.e       ; 0 uses

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread19
  %i.ah = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.g
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.g
  %i.aj = load i64, ptr %i.g, align 8, !tbaa !35
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.e
  %.pn = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  %i.al = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.g
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.h
  %i.an = load i64, ptr %i.g, align 8, !tbaa !35
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.ap = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.a
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !35
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl7tinyply10PlyElementC2ERSi(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !34
  store i8 0, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.e = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractImEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSirsERm.exit unwind label %bb.c ; 0 uses

_ZNSirsERm.exit:                                  ; preds = %bb.b
  ret void

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN3igl7tinyply11PlyPropertyESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #28
  %i.h = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.a, align 8, !tbaa !35
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN3igl7tinyply11PlyPropertyESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN3igl7tinyply11PlyPropertyES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN3igl7tinyply11PlyPropertyEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN3igl7tinyply11PlyPropertyEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !30 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyIN3igl7tinyply11PlyPropertyEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !35
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #30
  br label %_ZSt8_DestroyIN3igl7tinyply11PlyPropertyEEvPT_.exit.i.i

_ZSt8_DestroyIN3igl7tinyply11PlyPropertyEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN3igl7tinyply11PlyPropertyES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !49

_ZSt8_DestroyIPN3igl7tinyply11PlyPropertyES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN3igl7tinyply11PlyPropertyEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !45
  br label %_ZSt8_DestroyIPN3igl7tinyply11PlyPropertyES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN3igl7tinyply11PlyPropertyES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN3igl7tinyply11PlyPropertyES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPN3igl7tinyply11PlyPropertyES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN3igl7tinyply11PlyPropertyESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN3igl7tinyply11PlyPropertyES2_EvT_S4_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #30
  br label %_ZNSt12_Vector_baseIN3igl7tinyply11PlyPropertyESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN3igl7tinyply11PlyPropertyESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3igl7tinyply11PlyPropertyES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @_ZN3igl7tinyply12find_elementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_10PlyElementESaISA_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !54     ; 3 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34   ; 3 uses
  %i.j = load ptr, ptr %0, align 8
  %i.k = icmp eq i64 %i.i, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10
  %.0812 = phi i64 [ 0, %.lr.ph ], [ %i.r, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10 ] ; 4 uses
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %.0812 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !34
  %i.o = icmp eq i64 %i.n, %i.i
  br i1 %i.o, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !30
  %bcmp.i = tail call i32 @bcmp(ptr %i.p, ptr %i.j, i64 %i.i)
  %i.q = icmp eq i32 %bcmp.i, 0
  br i1 %i.q, label %.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.r = add nuw i64 %.0812, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.g
  br i1 %exitcond.not, label %.thread, label %bb.b, !llvm.loop !55

.thread:                                          ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.c, %bb.a
  %i.s = phi i64 [ -1, %bb.a ], [ %.0812, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %.0812, %bb.c ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10 ]
  ret i64 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !45     ; 3 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34   ; 3 uses
  %i.j = load ptr, ptr %0, align 8
  %i.k = icmp eq i64 %i.i, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10
  %.0812 = phi i64 [ 0, %.lr.ph ], [ %i.r, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10 ] ; 4 uses
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %.0812 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !34
  %i.o = icmp eq i64 %i.n, %i.i
  br i1 %i.o, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !30
  %bcmp.i = tail call i32 @bcmp(ptr %i.p, ptr %i.j, i64 %i.i)
  %i.q = icmp eq i32 %bcmp.i, 0
  br i1 %i.q, label %.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.r = add nuw i64 %.0812, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.g
  br i1 %exitcond.not, label %.thread, label %bb.b, !llvm.loop !56

.thread:                                          ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.c, %bb.a
  %i.s = phi i64 [ -1, %bb.a ], [ %.0812, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %.0812, %bb.c ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10 ]
  ret i64 %i.s
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl7tinyply7PlyFile11PlyFileImpl26make_property_lookup_tableEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.16") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<igl::tinyply::Type, std::pair<const igl::tinyply::Type, igl::tinyply::PropertyInfo>, std::_Select1st<std::pair<const igl::tinyply::Type, igl::tinyply::PropertyInfo>>, std::less<igl::tinyply::Type>>::_Auto_node", align 8 ; 6 uses
  %3 = alloca %"struct.std::_Rb_tree<igl::tinyply::Type, std::pair<const igl::tinyply::Type, igl::tinyply::PropertyInfo>, std::_Select1st<std::pair<const igl::tinyply::Type, igl::tinyply::PropertyInfo>>, std::less<igl::tinyply::Type>>::_Auto_node", align 8 ; 6 uses
  %4 = alloca %"class.std::vector.33", align 8    ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not124 = icmp eq ptr %i.b, %i.d
  br i1 %.not124, label %._crit_edge128, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge128:                                   ; preds = %_ZNSt6vectorIN3igl7tinyply7PlyFile11PlyFileImpl14PropertyLookupESaIS4_EED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph127, %_ZNSt6vectorIN3igl7tinyply7PlyFile11PlyFileImpl14PropertyLookupESaIS4_EED2Ev.exit
  %.sroa.087.0125 = phi ptr [ %i.b, %.lr.ph127 ], [ %i.hy, %_ZNSt6vectorIN3igl7tinyply7PlyFile11PlyFileImpl14PropertyLookupESaIS4_EED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.087.0125, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.087.0125, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !58   ; 2 uses
  %.not94122 = icmp eq ptr %i.q, %i.s
  br i1 %.not94122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.087.0125, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt6vectorIN3igl7tinyply7PlyFile11PlyFileImpl14PropertyLookupESaIS4_EE9push_backERKS4_.exit, %bb.b
  %i.u = phi ptr [ null, %bb.b ], [ %i.hr, %_ZNSt6vectorIN3igl7tinyply7PlyFile11PlyFileImpl14PropertyLookupESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !59   ; 6 uses
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !62
  %.not.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.x = load ptr, ptr %4, align 8, !tbaa !63     ; 2 uses
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.x
  br i1 %.not.i.i.i.i.i, label %.noexc20, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp ugt i64 %i.aa, 9223372036854775776
  br i1 %i.ab, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN3igl7tinyply7PlyFile11PlyFileImpl14PropertyLookupEE8allocateEmPKv.exit.i.i.i.i.i, !prof !66

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %.loopexit.split-lp104

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN3igl7tinyply7PlyFile11PlyFileImpl14PropertyLookupEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #27
          to label %.noexc20 unwind label %.loopexit103

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIN3igl7tinyply7PlyFile11PlyFileImpl14PropertyLookupEE8allocateEmPKv.exit.i.i.i.i.i, %bb.c
  %i.ad = phi ptr [ null, %bb.c ], [ %i.ac, %_ZNSt15__new_allocatorIN3igl7tinyply7PlyFile11PlyFileImpl14PropertyLookupEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !67
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !68
  %i.ah = load ptr, ptr %4, align 8, !tbaa !69    ; 3 uses
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !69  ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt6vectorIN3igl7tinyply7PlyFile11PlyFileImpl14PropertyLookupESaIS4_EEC2ERKS6_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc20, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %.noexc20 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ %i.ah, %.noexc20 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.08.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !70
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3igl7tinyply7PlyFile11PlyFileImpl14PropertyLookupESaIS4_EEC2ERKS6_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !74

_ZNSt6vectorIN3igl7tinyply7PlyFile11PlyFileImpl14PropertyLookupESaIS4_EEC2ERKS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc20
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc20 ], [ %i.ak, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !67
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.am, ptr %i.n, align 8, !tbaa !59
  br label %_ZNSt6vectorIS_IN3igl7tinyply7PlyFile11PlyFileImpl14PropertyLookupESaIS4_EESaIS6_EE9push_backERKS6_.exit

bb.e:                                             ; preds = %._crit_edge
  invoke void @_ZNSt6vectorIS_IN3igl7tinyply7PlyFile11PlyFileImpl14PropertyLookupESaIS4_EESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %._ZNSt6vectorIS_IN3igl7tinyply7PlyFile11PlyFileImpl14PropertyLookupESaIS4_EESaIS6_EE9push_backERKS6_.exit_crit_edge unwind label %.loopexit103

._ZNSt6vectorIS_IN3igl7tinyply7PlyFile11PlyFileImpl14PropertyLookupESaIS4_EESaIS6_EE9push_backERKS6_.exit_crit_edge: ; preds = %bb.e
  %.pre = load ptr, ptr %4, align 8, !tbaa !63
  br label %_ZNSt6vectorIS_IN3igl7tinyply7PlyFile11PlyFileImpl14PropertyLookupESaIS4_EESaIS6_EE9push_backERKS6_.exit

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN3igl7tinyply7PlyFile11PlyFileImpl14PropertyLookupESaIS4_EE9push_backERKS4_.exit
  %.sroa.083.0123 = phi ptr [ %i.q, %.lr.ph ], [ %i.hs, %_ZNSt6vectorIN3igl7tinyply7PlyFile11PlyFileImpl14PropertyLookupESaIS4_EE9push_backERKS4_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.an = load ptr, ptr %.sroa.087.0125, align 8, !tbaa !30, !noalias !75
  %i.ao = load i64, ptr %i.t, align 8, !tbaa !34, !noalias !75 ; 3 uses
  %i.ap = load ptr, ptr %.sroa.083.0123, align 8, !tbaa !30, !noalias !75
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.083.0123, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !34, !noalias !75 ; 3 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !38, !alias.scope !78
  store i64 0, ptr %i.f, align 8, !tbaa !34, !alias.scope !78
  store i8 0, ptr %i.e, align 8, !tbaa !35, !alias.scope !78
  %i.as = add i64 %i.ar, %i.ao
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.as)
          to label %bb.g unwind label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.at = load i64, ptr %i.f, align 8, !tbaa !34, !alias.scope !78
  %i.au = sub i64 4611686018427387903, %i.at
  %i.av = icmp ult i64 %i.au, %i.ao
  br i1 %i.av, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.g
  %i.aw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.an, i64 noundef %i.ao)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ax = load i64, ptr %i.f, align 8, !tbaa !34, !alias.scope !78
  %i.ay = sub i64 4611686018427387903, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.ar
  br i1 %i.az, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #31
          to label %.cont.i.i unwind label %.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bb = load ptr, ptr %5, align 8, !tbaa !30, !alias.scope !78 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.e
  br i1 %i.bc, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.bd = load i64, ptr %i.e, align 8, !tbaa !35, !alias.scope !78
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #30
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.bf = load ptr, ptr %5, align 8, !tbaa !30    ; 4 uses
  %i.bg = load i64, ptr %i.f, align 8, !tbaa !34  ; 5 uses
  %.not9.i = icmp samesign eq i64 %i.bg, 0
  br i1 %.not9.i, label %_ZN3igl7tinyply10hash_fnv1aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %xtraiter = and i64 %i.bg, 7                    ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 8
  br i1 %i.bh, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
end_hunk_0
begin_hunk_1_@_ZN3igl7tinyply7PlyFile11PlyFileImpl31request_properties_from_elementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEj:bb.a
  br i1 %i.ag, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.m
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !30
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ah, ptr %i.ac, i64 %i.j)
  %i.ai = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ai, label %_ZN3igl7tinyply12find_elementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_10PlyElementESaISA_EE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.m
  %i.aj = add nuw i64 %.0812.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aj, %i.ab
  br i1 %exitcond.not.i, label %_ZN3igl7tinyply12find_elementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_10PlyElementESaISA_EE.exit.thread, label %bb.m, !llvm.loop !55

_ZN3igl7tinyply12find_elementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_10PlyElementESaISA_EE.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %bb.cz

_ZN3igl7tinyply12find_elementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_10PlyElementESaISA_EE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.al = icmp sgt i64 %.0812.i, -1
  br i1 %i.al, label %bb.n, label %bb.cz

bb.n:                                             ; preds = %_ZN3igl7tinyply12find_elementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_10PlyElementESaISA_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  store ptr %i.x, ptr %6, align 8, !tbaa !184
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.n
  store i32 2, ptr %i.v, align 8, !tbaa !28
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.n
  %i.ap = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !167 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.aq, align 8, !tbaa !191
  %i.au = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !193
  %i.av = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !115
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #28, !inline_history !261
  %i.ay = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !115
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #28, !inline_history !261
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i9.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i9.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i = phi i32 [ %i.at, %bb.r ], [ %i.bd, %bb.s ]
  %i.be = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.be, label %bb.t, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !66

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #28
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.p, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.u, ptr %i.an, align 8, !tbaa !167
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !235
  %i.bh = load ptr, ptr %6, align 8, !tbaa !184   ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !213
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store i8 0, ptr %i.bj, align 8, !tbaa !211
  store i8 0, ptr %i.bh, align 8, !tbaa !214
  %i.bk = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %bb.u unwind label %bb.ab      ; 5 uses

bb.u:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 1, ptr %i.bl, align 8, !tbaa !191, !noalias !262
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 1, ptr %i.bm, align 4, !tbaa !193, !noalias !262
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN3igl7tinyply7PlyFile11PlyFileImpl13PlyDataCursorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bk, align 8, !tbaa !115, !noalias !262
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false), !noalias !262
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !167 ; 8 uses
  store ptr %i.bk, ptr %i.bp, align 8, !tbaa !167
  %.not.i.i.i.i89 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i89, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyFile11PlyFileImpl13PlyDataCursorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.br, align 8, !tbaa !191
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !193
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !115
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #28, !inline_history !266
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !115
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #28, !inline_history !266
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyFile11PlyFileImpl13PlyDataCursorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.bu, %bb.y ], [ %i.ce, %bb.z ]
  %i.cf = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cf, label %bb.aa, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyFile11PlyFileImpl13PlyDataCursorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #28
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyFile11PlyFileImpl13PlyDataCursorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3igl7tinyply7PlyFile11PlyFileImpl13PlyDataCursorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.w, %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store i32 %4, ptr %i.cg, align 8, !tbaa !267
  %i.ch = load ptr, ptr %3, align 8, !tbaa !234   ; 2 uses
  %i.ci = load ptr, ptr %i.o, align 8, !tbaa !234 ; 2 uses
  %.not220257 = icmp eq ptr %i.ch, %i.ci
  br i1 %.not220257, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt12__shared_ptrIN3igl7tinyply7PlyFile11PlyFileImpl13PlyDataCursorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.ac

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyFile11PlyFileImpl13PlyDataCursorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !141
  %i.cp = load ptr, ptr %5, align 8, !tbaa !268
  %.not = icmp eq ptr %i.co, %i.cp
  br i1 %.not, label %bb.au, label %bb.ai

bb.ab:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EED2Ev.exit157

bb.ac:                                            ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.sroa.0183.0258 = phi ptr [ %i.ch, %.lr.ph ], [ %i.eg, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 6 uses
  %i.cr = load ptr, ptr %i.ck, align 8, !tbaa !48 ; 2 uses
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !45 ; 4 uses
  %.not.i91 = icmp eq ptr %i.cr, %i.cs
  br i1 %.not.i91, label %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit.thread, label %.lr.ph.i92

.lr.ph.i92:                                       ; preds = %bb.ac
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = sdiv exact i64 %i.cv, 48                ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0183.0258, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !34
  %.fr285 = freeze i64 %i.cy                      ; 3 uses
  %i.cz = load ptr, ptr %.sroa.0183.0258, align 8
  %i.da = icmp eq i64 %.fr285, 0
  br i1 %i.da, label %.lr.ph.i92.split.us, label %.lr.ph.i92.split

.lr.ph.i92.split.us:                              ; preds = %.lr.ph.i92, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i94.us
  %.0812.i93.us = phi i64 [ %i.df, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i94.us ], [ 0, %.lr.ph.i92 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [48 x i8], ptr %i.cs, i64 %.0812.i93.us
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !34
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i94.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i94.us: ; preds = %.lr.ph.i92.split.us
  %i.df = add nuw i64 %.0812.i93.us, 1            ; 2 uses
  %exitcond.not.i95.us = icmp eq i64 %i.df, %i.cw
  br i1 %exitcond.not.i95.us, label %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit.thread, label %.lr.ph.i92.split.us, !llvm.loop !56

.lr.ph.i92.split:                                 ; preds = %.lr.ph.i92, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i94
  %.0812.i93 = phi i64 [ %i.dm, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i94 ], [ 0, %.lr.ph.i92 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [48 x i8], ptr %i.cs, i64 %.0812.i93 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !34
  %i.dj = icmp eq i64 %i.di, %.fr285
  br i1 %i.dj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i96, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i94

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i96: ; preds = %.lr.ph.i92.split
  %i.dk = load ptr, ptr %i.dg, align 8, !tbaa !30
  %bcmp.i.i97 = call i32 @bcmp(ptr %i.dk, ptr %i.cz, i64 %.fr285)
  %i.dl = icmp eq i32 %bcmp.i.i97, 0
  br i1 %i.dl, label %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i94

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i94: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i96, %.lr.ph.i92.split
  %i.dm = add nuw i64 %.0812.i93, 1               ; 2 uses
  %exitcond.not.i95 = icmp eq i64 %i.dm, %i.cw
  br i1 %exitcond.not.i95, label %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit.thread, label %.lr.ph.i92.split, !llvm.loop !56

_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i96, %.lr.ph.i92.split.us
  %.us-phi = phi i64 [ %.0812.i93.us, %.lr.ph.i92.split.us ], [ %.0812.i93, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i96 ]
  %i.dn = icmp slt i64 %.us-phi, 0
  br i1 %i.dn, label %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit.thread, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i94, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i94.us, %bb.ac, %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit
  %i.do = load ptr, ptr %i.cl, align 8, !tbaa !141 ; 8 uses
  %i.dp = load ptr, ptr %i.cm, align 8, !tbaa !144
  %.not.i98 = icmp eq ptr %i.do, %i.dp
  br i1 %.not.i98, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit.thread
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 3 uses
  store ptr %i.dq, ptr %i.do, align 8, !tbaa !38
  %i.dr = load ptr, ptr %.sroa.0183.0258, align 8, !tbaa !30 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0183.0258, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.dt, ptr %i.a, align 8, !tbaa !29
  %i.du = icmp ugt i64 %i.dt, 15
  br i1 %i.du, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.ad
  %i.dv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.do, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.ah    ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.dv, ptr %i.do, align 8, !tbaa !30
  %i.dw = load i64, ptr %i.a, align 8, !tbaa !29
  store i64 %i.dw, ptr %i.dq, align 8, !tbaa !35
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.ad
  %i.dx = phi ptr [ %i.dv, %.noexc ], [ %i.dq, %bb.ad ] ; 2 uses
  switch i64 %i.dt, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i.i
  %i.dy = load i8, ptr %i.dr, align 1, !tbaa !35
  store i8 %i.dy, ptr %i.dx, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.af:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dx, ptr align 1 %i.dr, i64 %i.dt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.af, %bb.ae, %._crit_edge.i.i.i
  %i.dz = load i64, ptr %i.a, align 8, !tbaa !29  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !34
  %i.eb = load ptr, ptr %i.do, align 8, !tbaa !30
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dz
  store i8 0, ptr %i.ec, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ed = load ptr, ptr %i.cl, align 8, !tbaa !141
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  store ptr %i.ee, ptr %i.cl, align 8, !tbaa !141
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.ag:                                            ; preds = %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit.thread
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.do, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0183.0258)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.noexc.i.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EED2Ev.exit157

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.ag, %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0183.0258, i64 32 ; 2 uses
  %.not220 = icmp eq ptr %i.eg, %i.ci
  br i1 %.not220, label %._crit_edge, label %bb.ac

bb.ai:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.eh = load ptr, ptr %5, align 8, !tbaa !234   ; 2 uses
  %i.ei = load ptr, ptr %i.cn, align 8, !tbaa !234 ; 2 uses
  %.not221259 = icmp eq ptr %i.eh, %i.ei
  br i1 %.not221259, label %._crit_edge263, label %.lr.ph262

.lr.ph262:                                        ; preds = %bb.aj
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.al

._crit_edge263:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.aj
  %i.ek = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.an unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.thread

bb.ak:                                            ; preds = %bb.ai
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.al:                                            ; preds = %.lr.ph262, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.sroa.0179.0260 = phi ptr [ %i.eh, %.lr.ph262 ], [ %i.er, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ] ; 3 uses
  %i.em = load ptr, ptr %.sroa.0179.0260, align 8, !tbaa !30
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0179.0260, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !34
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef %i.em, i64 noundef %i.eo)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.am

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.al
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull @.str.46, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0179.0260, i64 32 ; 2 uses
  %.not221 = icmp eq ptr %i.er, %i.ei
  br i1 %.not221, label %._crit_edge263, label %bb.al

bb.am:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.al
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.an:                                            ; preds = %._crit_edge263
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull @.str.47, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ao unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_throw(ptr nonnull %i.ek, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #31
          to label %bb.dg unwind label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.thread: ; preds = %._crit_edge263
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.064 = phi i1 [ false, %bb.ap ], [ true, %bb.ao ] ; 2 uses
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ev = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aq
  %i.ey = load i64, ptr %i.ew, align 8, !tbaa !35
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ez) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.fa = load ptr, ptr %9, align 8, !tbaa !30    ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.an
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fe = load ptr, ptr %9, align 8, !tbaa !30    ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !35
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #30
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fj = load i64, ptr %i.fb, align 8, !tbaa !35
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fk) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %.064, label %bb.ar, label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %.064, label %bb.ar, label %bb.as

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.thread
  %.pn78.pn190.ph = phi { ptr, i32 } [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.thread ], [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.thread ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %.pn78.pn190 = phi { ptr, i32 } [ %i.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %.pn78.pn190.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.ek) #28
  br label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %bb.ar, %bb.am
  %.pn81 = phi { ptr, i32 } [ %i.es, %bb.am ], [ %.pn78.pn190, %bb.ar ], [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %i.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #28
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ak
  %.pn81.pn = phi { ptr, i32 } [ %.pn81, %bb.as ], [ %i.el, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EED2Ev.exit157

bb.au:                                            ; preds = %._crit_edge
  %i.fl = load ptr, ptr %3, align 8, !tbaa !234   ; 2 uses
  %i.fm = load ptr, ptr %i.o, align 8, !tbaa !234 ; 2 uses
  %.not222267 = icmp eq ptr %i.fl, %i.fm
  br i1 %.not222267, label %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EED2Ev.exit, label %.lr.ph270

.lr.ph270:                                        ; preds = %bb.au
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.fp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.fu = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %10, i64 40
  br label %bb.aw

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0175.0268, i64 32 ; 2 uses
  %.not222 = icmp eq ptr %i.fw, %i.fm
  br i1 %.not222, label %._crit_edge271, label %bb.aw

._crit_edge271:                                   ; preds = %bb.av
  %.pre = load ptr, ptr %3, align 8, !tbaa !234   ; 2 uses
  %.pre307 = load ptr, ptr %i.o, align 8, !tbaa !234 ; 2 uses
  %.not223275 = icmp eq ptr %.pre, %.pre307
  br i1 %.not223275, label %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EED2Ev.exit, label %.lr.ph281

.lr.ph281:                                        ; preds = %._crit_edge271
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  br label %bb.ca

bb.aw:                                            ; preds = %.lr.ph270, %bb.av
  %.sroa.0175.0268 = phi ptr [ %i.fl, %.lr.ph270 ], [ %i.fw, %bb.av ] ; 3 uses
  %i.fz = load ptr, ptr %i.fo, align 8, !tbaa !48 ; 2 uses
  %i.ga = load ptr, ptr %i.fn, align 8, !tbaa !45 ; 5 uses
  %.not.i105 = icmp eq ptr %i.fz, %i.ga
  br i1 %.not.i105, label %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit112, label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %bb.aw
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = sdiv exact i64 %i.gd, 48                ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0175.0268, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !34
  %.fr = freeze i64 %i.gg                         ; 3 uses
  %i.gh = load ptr, ptr %.sroa.0175.0268, align 8
  %i.gi = icmp eq i64 %.fr, 0
  br i1 %i.gi, label %.lr.ph.i106.split.us, label %.lr.ph.i106.split

.lr.ph.i106.split.us:                             ; preds = %.lr.ph.i106, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i108.us
  %.0812.i107.us = phi i64 [ %i.gn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i108.us ], [ 0, %.lr.ph.i106 ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [48 x i8], ptr %i.ga, i64 %.0812.i107.us
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !34
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit112, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i108.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i108.us: ; preds = %.lr.ph.i106.split.us
  %i.gn = add nuw i64 %.0812.i107.us, 1           ; 2 uses
  %exitcond.not.i109.us = icmp eq i64 %i.gn, %i.ge
  br i1 %exitcond.not.i109.us, label %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit112, label %.lr.ph.i106.split.us, !llvm.loop !56

.lr.ph.i106.split:                                ; preds = %.lr.ph.i106, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i108
  %.0812.i107 = phi i64 [ %i.gu, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i108 ], [ 0, %.lr.ph.i106 ] ; 3 uses
  %i.go = getelementptr inbounds nuw [48 x i8], ptr %i.ga, i64 %.0812.i107 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !34
  %i.gr = icmp eq i64 %i.gq, %.fr
  br i1 %i.gr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i110, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i108

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i110: ; preds = %.lr.ph.i106.split
  %i.gs = load ptr, ptr %i.go, align 8, !tbaa !30
  %bcmp.i.i111 = call i32 @bcmp(ptr %i.gs, ptr %i.gh, i64 %.fr)
  %i.gt = icmp eq i32 %bcmp.i.i111, 0
  br i1 %i.gt, label %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit112, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i108

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i108: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i110, %.lr.ph.i106.split
  %i.gu = add nuw i64 %.0812.i107, 1              ; 2 uses
  %exitcond.not.i109 = icmp eq i64 %i.gu, %i.ge
  br i1 %exitcond.not.i109, label %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit112, label %.lr.ph.i106.split, !llvm.loop !56

_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit112: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i108, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i110, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i108.us, %.lr.ph.i106.split.us, %bb.aw
  %i.gv = phi i64 [ -1, %bb.aw ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i108.us ], [ %.0812.i107.us, %.lr.ph.i106.split.us ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i108 ], [ %.0812.i107, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i110 ]
  %i.gw = getelementptr inbounds nuw [48 x i8], ptr %i.ga, i64 %i.gv ; 5 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.gy = load i8, ptr %i.gx, align 8, !tbaa !39
  %i.gz = load ptr, ptr %6, align 8, !tbaa !184   ; 3 uses
  store i8 %i.gy, ptr %i.gz, align 8, !tbaa !214
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 33
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !42, !range !106, !noundef !107
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  store i8 %i.hb, ptr %i.hc, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.hd = load ptr, ptr %i.ad, align 8, !tbaa !30, !noalias !269
  %i.he = load i64, ptr %i.ak, align 8, !tbaa !34, !noalias !269 ; 3 uses
  %i.hf = load ptr, ptr %i.gw, align 8, !tbaa !30, !noalias !269
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !34, !noalias !269 ; 3 uses
  store ptr %i.fp, ptr %11, align 8, !tbaa !38, !alias.scope !272
  store i64 0, ptr %i.fq, align 8, !tbaa !34, !alias.scope !272
  store i8 0, ptr %i.fp, align 8, !tbaa !35, !alias.scope !272
  %i.hi = add i64 %i.hh, %i.he
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.hi)
          to label %bb.ax unwind label %.loopexit226

bb.ax:                                            ; preds = %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit112
  %i.hj = load i64, ptr %i.fq, align 8, !tbaa !34, !alias.scope !272
  %i.hk = sub i64 4611686018427387903, %i.hj
  %i.hl = icmp ult i64 %i.hk, %i.he
  br i1 %i.hl, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.ax
  %i.hm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.hd, i64 noundef %i.he)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit226 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.hn = load i64, ptr %i.fq, align 8, !tbaa !34, !alias.scope !272
  %i.ho = sub i64 4611686018427387903, %i.hn
  %i.hp = icmp ult i64 %i.ho, %i.hh
  br i1 %i.hp, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #31
          to label %.cont.i.i unwind label %.loopexit.split-lp227

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.hq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.hf, i64 noundef %i.hh)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %.loopexit226 ; 0 uses

.loopexit226:                                     ; preds = %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit228 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit.split-lp227:                            ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp229 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit.split-lp227, %.loopexit226
  %lpad.phi230 = phi { ptr, i32 } [ %lpad.loopexit228, %.loopexit226 ], [ %lpad.loopexit.split-lp229, %.loopexit.split-lp227 ] ; 2 uses
  %i.hr = load ptr, ptr %11, align 8, !tbaa !30, !alias.scope !272 ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.fp
  br i1 %i.hs, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.ht = load ptr, ptr %11, align 8, !tbaa !30   ; 2 uses
  %i.hu = load i64, ptr %i.fq, align 8, !tbaa !34 ; 4 uses
  %.not9.i = icmp samesign eq i64 %i.hu, 0
  br i1 %.not9.i, label %_ZN3igl7tinyply10hash_fnv1aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i113.preheader

.lr.ph.i113.preheader:                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %xtraiter = and i64 %i.hu, 7                    ; 3 uses
  %i.hv = icmp ult i64 %i.hu, 8
  br i1 %i.hv, label %.lr.ph.i113.epil.preheader, label %.lr.ph.i113.preheader.new

.lr.ph.i113.preheader.new:                        ; preds = %.lr.ph.i113.preheader
  %unroll_iter = and i64 %i.hu, -8
  br label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %.lr.ph.i113, %.lr.ph.i113.preheader.new
  %.011.i = phi i32 [ -2128831035, %.lr.ph.i113.preheader.new ], [ %i.ji, %.lr.ph.i113 ]
  %.sroa.06.010.i = phi ptr [ %i.ht, %.lr.ph.i113.preheader.new ], [ %i.jj, %.lr.ph.i113 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i113.preheader.new ], [ %niter.next.7, %.lr.ph.i113 ]
  %i.hw = load i8, ptr %.sroa.06.010.i, align 1, !tbaa !35
  %i.hx = sext i8 %i.hw to i32
  %i.hy = xor i32 %.011.i, %i.hx
  %i.hz = mul i32 %i.hy, 16777619
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i, i64 1
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !35
  %i.ic = sext i8 %i.ib to i32
  %i.id = xor i32 %i.hz, %i.ic
  %i.ie = mul i32 %i.id, 16777619
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i, i64 2
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !35
  %i.ih = sext i8 %i.ig to i32
  %i.ii = xor i32 %i.ie, %i.ih
  %i.ij = mul i32 %i.ii, 16777619
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i, i64 3
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !35
  %i.im = sext i8 %i.il to i32
  %i.in = xor i32 %i.ij, %i.im
  %i.io = mul i32 %i.in, 16777619
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i, i64 4
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !35
  %i.ir = sext i8 %i.iq to i32
  %i.is = xor i32 %i.io, %i.ir
  %i.it = mul i32 %i.is, 16777619
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i, i64 5
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !35
  %i.iw = sext i8 %i.iv to i32
  %i.ix = xor i32 %i.it, %i.iw
  %i.iy = mul i32 %i.ix, 16777619
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i, i64 6
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !35
  %i.jb = sext i8 %i.ja to i32
  %i.jc = xor i32 %i.iy, %i.jb
  %i.jd = mul i32 %i.jc, 16777619
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i, i64 7
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !35
  %i.jg = sext i8 %i.jf to i32
  %i.jh = xor i32 %i.jd, %i.jg
  %i.ji = mul i32 %i.jh, 16777619                 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i, i64 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3igl7tinyply10hash_fnv1aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa, label %.lr.ph.i113

_ZN3igl7tinyply10hash_fnv1aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i113
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3igl7tinyply10hash_fnv1aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i113.epil.preheader

.lr.ph.i113.epil.preheader:                       ; preds = %_ZN3igl7tinyply10hash_fnv1aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa, %.lr.ph.i113.preheader
  %.011.i.epil.init = phi i32 [ -2128831035, %.lr.ph.i113.preheader ], [ %i.ji, %_ZN3igl7tinyply10hash_fnv1aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa ]
  %.sroa.06.010.i.epil.init = phi ptr [ %i.ht, %.lr.ph.i113.preheader ], [ %i.jj, %_ZN3igl7tinyply10hash_fnv1aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod461 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod461)
  br label %.lr.ph.i113.epil

.lr.ph.i113.epil:                                 ; preds = %.lr.ph.i113.epil, %.lr.ph.i113.epil.preheader
  %.011.i.epil = phi i32 [ %i.jn, %.lr.ph.i113.epil ], [ %.011.i.epil.init, %.lr.ph.i113.epil.preheader ]
  %.sroa.06.010.i.epil = phi ptr [ %i.jo, %.lr.ph.i113.epil ], [ %.sroa.06.010.i.epil.init, %.lr.ph.i113.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i113.epil ], [ 0, %.lr.ph.i113.epil.preheader ]
  %i.jk = load i8, ptr %.sroa.06.010.i.epil, align 1, !tbaa !35
  %i.jl = sext i8 %i.jk to i32
  %i.jm = xor i32 %.011.i.epil, %i.jl
  %i.jn = mul i32 %i.jm, 16777619                 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3igl7tinyply10hash_fnv1aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i113.epil, !llvm.loop !275

_ZN3igl7tinyply10hash_fnv1aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN3igl7tinyply10hash_fnv1aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa, %.lr.ph.i113.epil, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %.0.lcssa.i = phi i32 [ -2128831035, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ], [ %i.ji, %_ZN3igl7tinyply10hash_fnv1aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa ], [ %i.jn, %.lr.ph.i113.epil ]
  store i32 %.0.lcssa.i, ptr %10, align 8, !tbaa !276
  store ptr %i.gz, ptr %i.fr, align 8, !tbaa !184
  %i.jp = load ptr, ptr %i.an, align 8, !tbaa !167 ; 3 uses
  store ptr %i.jp, ptr %i.fs, align 8, !tbaa !167
  %.not.i.i.i.i.i115 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i.i.i115, label %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEC2ERKS3_.exit.i.i, label %bb.az

bb.az:                                            ; preds = %_ZN3igl7tinyply10hash_fnv1aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 3 uses
  %i.jr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i.i = icmp eq i8 %i.jr, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.js = load i32, ptr %i.jq, align 4, !tbaa !28
  %i.jt = add nsw i32 %i.js, 1
  store i32 %i.jt, ptr %i.jq, align 4, !tbaa !28
  br label %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEC2ERKS3_.exit.i.i

bb.bb:                                            ; preds = %bb.az
  %i.ju = atomicrmw volatile add ptr %i.jq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEC2ERKS3_.exit.i.i

_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEC2ERKS3_.exit.i.i: ; preds = %bb.bb, %bb.ba, %_ZN3igl7tinyply10hash_fnv1aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.jv = load ptr, ptr %i.bp, align 8, !tbaa !167 ; 2 uses
  %i.jw = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !161
  store <2 x ptr> %i.jw, ptr %i.ft, align 8, !tbaa !161
  %.not.i.i.i4.i.i = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i4.i.i, label %_ZNSt4pairIjN3igl7tinyply7PlyFile11PlyFileImpl13ParsingHelperEEC2IjRS4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEC2ERKS3_.exit.i.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 3 uses
  %i.jy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.jy, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jz = load i32, ptr %i.jx, align 4, !tbaa !28
  %i.ka = add nsw i32 %i.jz, 1
  store i32 %i.ka, ptr %i.jx, align 4, !tbaa !28
end_hunk_1
begin_hunk_2_@_ZN3igl7tinyply7PlyFile11PlyFileImpl31request_properties_from_elementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEj:bb.a
bb.bo:                                            ; preds = %bb.bn
  %i.lh = add nsw i32 %i.ky, -1
  store i32 %i.lh, ptr %i.kv, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.li = atomicrmw volatile add ptr %i.kv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i4.i.i = phi i32 [ %i.ky, %bb.bo ], [ %i.li, %bb.bp ]
  %i.lj = icmp eq i32 %.0.i.i.i.i4.i.i, 1
  br i1 %i.lj, label %bb.bq, label %_ZNSt4pairIjN3igl7tinyply7PlyFile11PlyFileImpl13ParsingHelperEED2Ev.exit, !prof !66

bb.bq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ku) #28
  br label %_ZNSt4pairIjN3igl7tinyply7PlyFile11PlyFileImpl13ParsingHelperEED2Ev.exit

_ZNSt4pairIjN3igl7tinyply7PlyFile11PlyFileImpl13ParsingHelperEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN3igl7tinyply7PlyFile11PlyFileImpl13PlyDataCursorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.bm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i, %bb.bq
  %i.lk = load ptr, ptr %11, align 8, !tbaa !30   ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.fp
  br i1 %i.ll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %_ZNSt4pairIjN3igl7tinyply7PlyFile11PlyFileImpl13ParsingHelperEED2Ev.exit
  %i.lm = load i64, ptr %i.fp, align 8, !tbaa !35
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.ln) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %_ZNSt4pairIjN3igl7tinyply7PlyFile11PlyFileImpl13ParsingHelperEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.lo = and i8 %.fca.1.extract, 1
  %i.lp = icmp eq i8 %i.lo, 0
  br i1 %i.lp, label %bb.br, label %bb.av

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  %i.lq = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.48, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %bb.bs unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.thread

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.31)
          to label %bb.bt unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.thread

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.gw)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.lq, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.bv unwind label %bb.by

bb.bv:                                            ; preds = %bb.bu
  invoke void @__cxa_throw(ptr nonnull %i.lq, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #31
          to label %bb.dg unwind label %bb.by

bb.bw:                                            ; preds = %_ZNSt4pairIjN3igl7tinyply7PlyFile11PlyFileImpl13ParsingHelperEEC2IjRS4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit
  %i.lr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt4pairIjN3igl7tinyply7PlyFile11PlyFileImpl13ParsingHelperEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #28
  %i.ls = load ptr, ptr %11, align 8, !tbaa !30   ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.fp
  br i1 %i.lt, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.bw, %bb.ay
  %.sink = phi ptr [ %i.hr, %bb.ay ], [ %i.ls, %bb.bw ]
  %.pn71.ph = phi { ptr, i32 } [ %lpad.phi230, %bb.ay ], [ %i.lr, %bb.bw ]
  %i.lu = load i64, ptr %i.fp, align 8, !tbaa !35
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.lv) #30
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.bw, %bb.ay
  %.pn71 = phi { ptr, i32 } [ %lpad.phi230, %bb.ay ], [ %i.lr, %bb.bw ], [ %.pn71.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.thread: ; preds = %bb.br
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split412

bb.bx:                                            ; preds = %bb.bt
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

bb.by:                                            ; preds = %bb.bv, %bb.bu
  %.060 = phi i1 [ false, %bb.bv ], [ true, %bb.bu ] ; 2 uses
  %i.ly = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lz = load ptr, ptr %12, align 8, !tbaa !30   ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.mb = icmp eq ptr %i.lz, %i.ma
  br i1 %i.mb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.by
  %i.mc = load i64, ptr %i.ma, align 8, !tbaa !35
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.md) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %bb.bx
  %.161 = phi i1 [ true, %bb.bx ], [ %.060, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %.060, %bb.by ] ; 2 uses
  %.pn73 = phi { ptr, i32 } [ %i.lx, %bb.bx ], [ %i.ly, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %i.ly, %bb.by ] ; 4 uses
  %i.me = load ptr, ptr %13, align 8, !tbaa !30   ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.mg = icmp eq ptr %i.me, %i.mf
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %i.mh = load i64, ptr %i.mf, align 8, !tbaa !35
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.me, i64 noundef %i.mi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  %i.mj = load ptr, ptr %14, align 8, !tbaa !30   ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ml = icmp eq ptr %i.mj, %i.mk
  br i1 %i.ml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.thread: ; preds = %bb.bs
  %i.mm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mn = load ptr, ptr %14, align 8, !tbaa !30   ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.mp = icmp eq ptr %i.mn, %i.mo
  br i1 %i.mp, label %.sink.split412, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.thread
  %i.mq = load i64, ptr %i.mo, align 8, !tbaa !35
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mr) #30
  br label %.sink.split412

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.ms = load i64, ptr %i.mk, align 8, !tbaa !35
  %i.mt = add i64 %i.ms, 1
  call void @_ZdlPvm(ptr noundef %i.mj, i64 noundef %i.mt) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br i1 %.161, label %bb.bz, label %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br i1 %.161, label %bb.bz, label %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EED2Ev.exit157

.sink.split412:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.thread
  %.pn73.pn.pn202.ph = phi { ptr, i32 } [ %i.mm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.thread ], [ %i.lw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.thread ], [ %i.mm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.bz

bb.bz:                                            ; preds = %.sink.split412, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %.pn73.pn.pn202 = phi { ptr, i32 } [ %.pn73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133 ], [ %.pn73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ %.pn73.pn.pn202.ph, %.sink.split412 ]
  call void @__cxa_free_exception(ptr %i.lq) #28
  br label %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EED2Ev.exit157

._crit_edge282:                                   ; preds = %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EE9push_backERKS2_.exit
  %i.mu = icmp eq ptr %.sroa.0166.1, %.sroa.9.1
  %.not.i.i136434 = icmp eq ptr %.sroa.0166.1, %.pn
  %or.cond = or i1 %i.mu, %.not.i.i136434
  br i1 %or.cond, label %_ZSt13adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3igl7tinyply4TypeESt6vectorIS4_SaIS4_EEEESt12not_equal_toIS4_EET_SC_SC_T0_.exit.thread, label %.lr.ph436

.preheader.i.i:                                   ; preds = %.lr.ph436
  %.not.i.i136 = icmp eq ptr %i.mv, %.pn
  br i1 %.not.i.i136, label %_ZSt13adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3igl7tinyply4TypeESt6vectorIS4_SaIS4_EEEESt12not_equal_toIS4_EET_SC_SC_T0_.exit.thread, label %.lr.ph436, !llvm.loop !280

.lr.ph436:                                        ; preds = %._crit_edge282, %.preheader.i.i
  %.sroa.09.0.i.i435 = phi ptr [ %i.mv, %.preheader.i.i ], [ %.sroa.0166.1, %._crit_edge282 ] ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i435, i64 1 ; 3 uses
  %i.mw = load i8, ptr %.sroa.09.0.i.i435, align 1, !tbaa !21
  %i.mx = load i8, ptr %i.mv, align 1, !tbaa !21
  %.not10.i.i = icmp eq i8 %i.mw, %i.mx
  br i1 %.not10.i.i, label %.preheader.i.i, label %_ZSt13adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3igl7tinyply4TypeESt6vectorIS4_SaIS4_EEEESt12not_equal_toIS4_EET_SC_SC_T0_.exit, !llvm.loop !280

bb.ca:                                            ; preds = %.lr.ph281, %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EE9push_backERKS2_.exit
  %.sroa.0163.0279 = phi ptr [ %.pre, %.lr.ph281 ], [ %i.ol, %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %.sroa.14.0278 = phi ptr [ null, %.lr.ph281 ], [ %.sroa.14.1, %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EE9push_backERKS2_.exit ] ; 5 uses
  %.sroa.9.0277 = phi ptr [ null, %.lr.ph281 ], [ %.sroa.9.1, %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %.sroa.0166.0276 = phi ptr [ null, %.lr.ph281 ], [ %.sroa.0166.1, %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EE9push_backERKS2_.exit ] ; 7 uses
  %i.my = load ptr, ptr %i.fy, align 8, !tbaa !48 ; 2 uses
  %i.mz = load ptr, ptr %i.fx, align 8, !tbaa !45 ; 5 uses
  %.not.i137 = icmp eq ptr %i.my, %i.mz
  br i1 %.not.i137, label %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit144, label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %bb.ca
  %i.na = ptrtoint ptr %i.my to i64
  %i.nb = ptrtoint ptr %i.mz to i64
  %i.nc = sub i64 %i.na, %i.nb
  %i.nd = sdiv exact i64 %i.nc, 48                ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0163.0279, i64 8
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !34
  %.fr286 = freeze i64 %i.nf                      ; 3 uses
  %i.ng = load ptr, ptr %.sroa.0163.0279, align 8
  %i.nh = icmp eq i64 %.fr286, 0
  br i1 %i.nh, label %.lr.ph.i138.split.us, label %.lr.ph.i138.split

.lr.ph.i138.split.us:                             ; preds = %.lr.ph.i138, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i140.us
  %.0812.i139.us = phi i64 [ %i.nm, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i140.us ], [ 0, %.lr.ph.i138 ] ; 3 uses
  %i.ni = getelementptr inbounds nuw [48 x i8], ptr %i.mz, i64 %.0812.i139.us
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !34
  %i.nl = icmp eq i64 %i.nk, 0
  br i1 %i.nl, label %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit144, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i140.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i140.us: ; preds = %.lr.ph.i138.split.us
  %i.nm = add nuw i64 %.0812.i139.us, 1           ; 2 uses
  %exitcond.not.i141.us = icmp eq i64 %i.nm, %i.nd
  br i1 %exitcond.not.i141.us, label %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit144, label %.lr.ph.i138.split.us, !llvm.loop !56

.lr.ph.i138.split:                                ; preds = %.lr.ph.i138, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i140
  %.0812.i139 = phi i64 [ %i.nt, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i140 ], [ 0, %.lr.ph.i138 ] ; 3 uses
  %i.nn = getelementptr inbounds nuw [48 x i8], ptr %i.mz, i64 %.0812.i139 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.np = load i64, ptr %i.no, align 8, !tbaa !34
  %i.nq = icmp eq i64 %i.np, %.fr286
  br i1 %i.nq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i142, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i140

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i142: ; preds = %.lr.ph.i138.split
  %i.nr = load ptr, ptr %i.nn, align 8, !tbaa !30
  %bcmp.i.i143 = call i32 @bcmp(ptr %i.nr, ptr %i.ng, i64 %.fr286)
  %i.ns = icmp eq i32 %bcmp.i.i143, 0
  br i1 %i.ns, label %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit144, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i140

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i140: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i142, %.lr.ph.i138.split
  %i.nt = add nuw i64 %.0812.i139, 1              ; 2 uses
  %exitcond.not.i141 = icmp eq i64 %i.nt, %i.nd
  br i1 %exitcond.not.i141, label %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit144, label %.lr.ph.i138.split, !llvm.loop !56

_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit144: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i140, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i142, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i140.us, %.lr.ph.i138.split.us, %bb.ca
  %i.nu = phi i64 [ -1, %bb.ca ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i140.us ], [ %.0812.i139.us, %.lr.ph.i138.split.us ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i140 ], [ %.0812.i139, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i142 ]
  %i.nv = getelementptr inbounds nuw [48 x i8], ptr %i.mz, i64 %i.nu
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 32 ; 2 uses
  %.not.i145 = icmp eq ptr %.sroa.9.0277, %.sroa.14.0278
  br i1 %.not.i145, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit144
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !21
  store i8 %i.nx, ptr %.sroa.9.0277, align 1, !tbaa !21
  br label %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EE9push_backERKS2_.exit

bb.cc:                                            ; preds = %_ZN3igl7tinyply13find_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_11PlyPropertyESaISA_EE.exit144
  %i.ny = ptrtoint ptr %.sroa.14.0278 to i64
  %i.nz = ptrtoint ptr %.sroa.0166.0276 to i64
  %i.oa = sub i64 %i.ny, %i.nz                    ; 8 uses
  %i.ob = icmp eq i64 %i.oa, 9223372036854775807
  br i1 %i.ob, label %bb.cd, label %_ZNKSt6vectorIN3igl7tinyply4TypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #31
          to label %.noexc147 unwind label %.loopexit.split-lp

.noexc147:                                        ; preds = %bb.cd
  unreachable

_ZNKSt6vectorIN3igl7tinyply4TypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cc
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.oa, i64 1)
  %i.oc = add i64 %.sroa.speculated.i.i.i, %i.oa  ; 2 uses
  %i.od = icmp ult i64 %i.oc, %i.oa
  %i.oe = call i64 @llvm.umin.i64(i64 %i.oc, i64 9223372036854775807)
  %i.of = select i1 %i.od, i64 9223372036854775807, i64 %i.oe ; 3 uses
  %.not.i.i.i146 = icmp ne i64 %i.of, 0
  call void @llvm.assume(i1 %.not.i.i.i146)
  %i.og = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.of) #27
          to label %.noexc148 unwind label %.loopexit ; 4 uses

.noexc148:                                        ; preds = %_ZNKSt6vectorIN3igl7tinyply4TypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.oa ; 2 uses
  %i.oi = load i8, ptr %i.nw, align 1, !tbaa !21
  store i8 %i.oi, ptr %i.oh, align 1, !tbaa !21
  %i.oj = icmp sgt i64 %i.oa, 0
  br i1 %i.oj, label %bb.ce, label %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.ce:                                            ; preds = %.noexc148
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.og, ptr align 1 %.sroa.0166.0276, i64 %i.oa, i1 false)
  br label %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.ce, %.noexc148
  %.not.i17.i.i = icmp eq ptr %.sroa.0166.0276, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0166.0276, i64 noundef %i.oa) #30
  br label %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.cf, %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.of
  br label %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.cb
  %.sroa.0166.1 = phi ptr [ %i.og, %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0166.0276, %bb.cb ] ; 9 uses
  %.pn = phi ptr [ %i.oh, %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.9.0277, %bb.cb ] ; 3 uses
  %.sroa.14.1 = phi ptr [ %i.ok, %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.14.0278, %bb.cb ] ; 4 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.0163.0279, i64 32 ; 2 uses
  %.not223 = icmp eq ptr %i.ol, %.pre307
  br i1 %.not223, label %._crit_edge282, label %bb.ca

.loopexit:                                        ; preds = %_ZNKSt6vectorIN3igl7tinyply4TypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

.loopexit.split-lp:                               ; preds = %bb.cd
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

_ZSt13adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3igl7tinyply4TypeESt6vectorIS4_SaIS4_EEEESt12not_equal_toIS4_EET_SC_SC_T0_.exit: ; preds = %.lr.ph436
  %i.om = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.om, ptr noundef nonnull @.str.49)
          to label %bb.cg unwind label %bb.ch

bb.cg:                                            ; preds = %_ZSt13adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3igl7tinyply4TypeESt6vectorIS4_SaIS4_EEEESt12not_equal_toIS4_EET_SC_SC_T0_.exit
  invoke void @__cxa_throw(ptr nonnull %i.om, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #31
          to label %bb.dg unwind label %bb.ci

bb.ch:                                            ; preds = %_ZSt13adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3igl7tinyply4TypeESt6vectorIS4_SaIS4_EEEESt12not_equal_toIS4_EET_SC_SC_T0_.exit
  %i.on = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.om) #28
  br label %bb.cx

bb.ci:                                            ; preds = %bb.cg
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

_ZSt13adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3igl7tinyply4TypeESt6vectorIS4_SaIS4_EEEESt12not_equal_toIS4_EET_SC_SC_T0_.exit.thread: ; preds = %.preheader.i.i, %._crit_edge282
  %.not.i.i.i149 = icmp eq ptr %.sroa.0166.1, null
  br i1 %.not.i.i.i149, label %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EED2Ev.exit, label %bb.cj

bb.cj:                                            ; preds = %_ZSt13adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3igl7tinyply4TypeESt6vectorIS4_SaIS4_EEEESt12not_equal_toIS4_EET_SC_SC_T0_.exit.thread
  %i.op = ptrtoint ptr %.sroa.14.1 to i64
  %i.oq = ptrtoint ptr %.sroa.0166.1 to i64
  %i.or = sub i64 %i.op, %i.oq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0166.1, i64 noundef %i.or) #30
  br label %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EED2Ev.exit

_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EED2Ev.exit: ; preds = %._crit_edge271, %bb.au, %_ZSt13adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3igl7tinyply4TypeESt6vectorIS4_SaIS4_EEEESt12not_equal_toIS4_EET_SC_SC_T0_.exit.thread, %bb.cj
  %i.os = load ptr, ptr %i.bp, align 8, !tbaa !167 ; 8 uses
  %.not.i.i.i150 = icmp eq ptr %i.os, null
  br i1 %.not.i.i.i150, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyFile11PlyFileImpl13PlyDataCursorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EED2Ev.exit
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8 ; 4 uses
  %i.ou = load atomic i64, ptr %i.ot acquire, align 8 ; 2 uses
  %i.ov = icmp eq i64 %i.ou, 4294967297
  %i.ow = trunc i64 %i.ou to i32                  ; 2 uses
  br i1 %i.ov, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 0, ptr %i.ot, align 8, !tbaa !191
  %i.ox = getelementptr inbounds nuw i8, ptr %i.os, i64 12
  store i32 0, ptr %i.ox, align 4, !tbaa !193
  %i.oy = load ptr, ptr %i.os, align 8, !tbaa !115
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8
  call void %i.pa(ptr noundef nonnull align 8 dereferenceable(16) %i.os) #28, !inline_history !281
  %i.pb = load ptr, ptr %i.os, align 8, !tbaa !115
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  %i.pd = load ptr, ptr %i.pc, align 8
  call void %i.pd(ptr noundef nonnull align 8 dereferenceable(16) %i.os) #28, !inline_history !281
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyFile11PlyFileImpl13PlyDataCursorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.cm:                                            ; preds = %bb.ck
  %i.pe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i151 = icmp eq i8 %i.pe, 0
  br i1 %.not.i.i.i.i151, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.pf = add nsw i32 %i.ow, -1
  store i32 %i.pf, ptr %i.ot, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i152

bb.co:                                            ; preds = %bb.cm
  %i.pg = atomicrmw volatile add ptr %i.ot, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i152

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i152: ; preds = %bb.co, %bb.cn
  %.0.i.i.i.i.i153 = phi i32 [ %i.ow, %bb.cn ], [ %i.pg, %bb.co ]
  %i.ph = icmp eq i32 %.0.i.i.i.i.i153, 1
  br i1 %i.ph, label %bb.cp, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyFile11PlyFileImpl13PlyDataCursorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !66

bb.cp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i152
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.os) #28
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyFile11PlyFileImpl13PlyDataCursorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN3igl7tinyply7PlyFile11PlyFileImpl13PlyDataCursorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.cp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i152, %bb.cl, %_ZNSt6vectorIN3igl7tinyply4TypeESaIS2_EED2Ev.exit
  %i.pi = load ptr, ptr %i.an, align 8, !tbaa !167 ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.pi, null
  br i1 %.not.i.i1.i, label %_ZN3igl7tinyply7PlyFile11PlyFileImpl13ParsingHelperD2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt12__shared_ptrIN3igl7tinyply7PlyFile11PlyFileImpl13PlyDataCursorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8 ; 4 uses
  %i.pk = load atomic i64, ptr %i.pj acquire, align 8 ; 2 uses
  %i.pl = icmp eq i64 %i.pk, 4294967297
  %i.pm = trunc i64 %i.pk to i32                  ; 2 uses
  br i1 %i.pl, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i32 0, ptr %i.pj, align 8, !tbaa !191
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pi, i64 12
  store i32 0, ptr %i.pn, align 4, !tbaa !193
  %i.po = load ptr, ptr %i.pi, align 8, !tbaa !115
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  %i.pq = load ptr, ptr %i.pp, align 8
  call void %i.pq(ptr noundef nonnull align 8 dereferenceable(16) %i.pi) #28, !inline_history !282
  %i.pr = load ptr, ptr %i.pi, align 8, !tbaa !115
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  %i.pt = load ptr, ptr %i.ps, align 8
  call void %i.pt(ptr noundef nonnull align 8 dereferenceable(16) %i.pi) #28, !inline_history !282
  br label %_ZN3igl7tinyply7PlyFile11PlyFileImpl13ParsingHelperD2Ev.exit

bb.cs:                                            ; preds = %bb.cq
  %i.pu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i2.i = icmp eq i8 %i.pu, 0
  br i1 %.not.i.i.i2.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.pv = add nsw i32 %i.pm, -1
  store i32 %i.pv, ptr %i.pj, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.cu:                                            ; preds = %bb.cs
  %i.pw = atomicrmw volatile add ptr %i.pj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
end_hunk_2
