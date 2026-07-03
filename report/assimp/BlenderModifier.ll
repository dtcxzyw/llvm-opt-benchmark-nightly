inline.NumInlined: 481
inline.NumDeleted: 273
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Assimp6Logger4warnIJRA39_KcRA32_S2_EEEvDpOT_:bb.a

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA39_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA32_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA39_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #18
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA39_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger5debugIJRA35_KcRmRA5_S2_S5_RA16_S2_RA1024_S2_RA39_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(35) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(5) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(1024) %6, ptr noundef nonnull align 1 dereferenceable(39) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %9)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(35) %1) #16
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %9, ptr noundef nonnull align 1 dereferenceable(35) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA35_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %9) #16
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA35_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA5_KcRmRA16_S2_RA1024_S2_RA39_S2_ES5_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSF_SG_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(5) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(1024) %6, ptr noundef nonnull align 1 dereferenceable(39) %7)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA35_cEERKT_.exit
  %i.d = load ptr, ptr %8, align 8
  invoke void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %8, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %9, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %9, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #18
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #16
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA35_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %8, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6Assimp7Blender22BlenderModifier_Mirror8IsActiveERKNS0_12ModifierDataE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 5
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7Blender22BlenderModifier_Mirror4DoItER6aiNodeRNS0_14ConversionDataERKNS0_8ElemBaseERKNS0_5SceneERKNS0_6ObjectE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1144) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(336) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree nonnull readnone align 8 captures(none) %4, ptr noundef nonnull align 8 dereferenceable(1384) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  %i.a = alloca ptr, align 8                      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !noalias !8 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !alias.scope !8
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8weak_ptrIN6Assimp7Blender6ObjectEE4lockEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 8, !noalias !8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i = phi i32 [ %i.g, %bb.b ], [ %i.k, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %.06.i.i.i.i.i, 1
  %i.i = cmpxchg weak ptr %i.f, i32 %.06.i.i.i.i.i, i32 %i.h acq_rel monotonic, align 8, !noalias !8 ; 2 uses
  %i.j = extractvalue { i32, i1 } %i.i, 1
  %i.k = extractvalue { i32, i1 } %i.i, 0
  br i1 %i.j, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, label %bb.c, !llvm.loop !11

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.c, align 8, !alias.scope !8
  br label %_ZNKSt8weak_ptrIN6Assimp7Blender6ObjectEE4lockEv.exit

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i: ; preds = %bb.d
  %i.l = load atomic i32, ptr %i.f monotonic, align 8, !noalias !8
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZNKSt8weak_ptrIN6Assimp7Blender6ObjectEE4lockEv.exit, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i
  %7 = load ptr, ptr %i.b, align 8, !noalias !8
  br label %_ZNKSt8weak_ptrIN6Assimp7Blender6ObjectEE4lockEv.exit

_ZNKSt8weak_ptrIN6Assimp7Blender6ObjectEE4lockEv.exit: ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i
  %8 = phi ptr [ %7, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i ], [ null, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i ], [ null, %bb.a ] ; 4 uses
  store ptr %8, ptr %6, align 8, !alias.scope !8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.m, align 8              ; 4 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = ashr exact i64 %i.s, 3
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 5 uses
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = add nsw i64 %i.t, %i.w                   ; 4 uses
  %i.y = icmp ugt i64 %i.x, 1152921504606846975
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNKSt8weak_ptrIN6Assimp7Blender6ObjectEE4lockEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #17
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNKSt8weak_ptrIN6Assimp7Blender6ObjectEE4lockEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.r                     ; 2 uses
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = icmp ult i64 %i.ad, %i.x
  br i1 %i.ae, label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.af = shl nuw nsw i64 %i.x, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #19
          to label %.noexc129 unwind label %bb.i  ; 4 uses

.noexc129:                                        ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i
  %i.ah = icmp sgt i64 %i.s, 0
  br i1 %i.ah, label %bb.g, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

bb.g:                                             ; preds = %.noexc129
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %bb.g, %.noexc129
  %.not.i8.i = icmp eq ptr %i.p, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ac) #18
  br label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.h, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ag, ptr %i.m, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.s
  store ptr %i.ai, ptr %i.n, align 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.x
  store ptr %i.aj, ptr %i.z, align 8
  %.pre = load i32, ptr %i.u, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit:     ; preds = %bb.f, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.ak = phi i32 [ %i.v, %bb.f ], [ %.pre, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %.not177 = icmp eq i32 %i.ak, 0
  br i1 %.not177, label %._crit_edge176, label %.lr.ph175

.lr.ph175:                                        ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 106 ; 2 uses
  %.not138 = icmp eq ptr %8, null
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 1116
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 1124
  br label %bb.j

._crit_edge176:                                   ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  %i.ap = phi i32 [ 0, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit ], [ %i.jb, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ] ; 6 uses
  %i.aq = shl i32 %i.ap, 1                        ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #19
          to label %bb.u unwind label %bb.ai      ; 5 uses

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i, %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.j:                                             ; preds = %.lr.ph175, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit
  %indvars.iv223 = phi i64 [ 0, %.lr.ph175 ], [ %indvars.iv.next224, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.av = load ptr, ptr %i.al, align 8
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv223
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = zext i32 %i.ax to i64
  %i.az = load ptr, ptr %i.m, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ay
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void @_ZN6Assimp13SceneCombiner4CopyEPP6aiMeshPKS1_(ptr noundef nonnull %i.a, ptr noundef %i.bb)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bc = load i16, ptr %i.am, align 2            ; 2 uses
  %i.bd = insertelement <2 x i16> poison, i16 %i.bc, i64 0
  %i.be = shufflevector <2 x i16> %i.bd, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.bf = and <2 x i16> %i.be, <i16 8, i16 16>
  %i.bg = icmp eq <2 x i16> %i.bf, zeroinitializer
  %i.bh = select <2 x i1> %i.bg, <2 x float> splat (float 1.000000e+00), <2 x float> splat (float -1.000000e+00) ; 7 uses
  %i.bi = and i16 %i.bc, 32
  %.not121 = icmp eq i16 %i.bi, 0
  %i.bj = select i1 %.not121, float 1.000000e+00, float -1.000000e+00 ; 6 uses
  br i1 %.not138, label %.preheader146, label %bb.l

.preheader146:                                    ; preds = %bb.k
  %i.bk = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = load i32, ptr %i.bl, align 4
  %.not179 = icmp eq i32 %i.bm, 0
  br i1 %.not179, label %.loopexit147, label %.lr.ph155

bb.l:                                             ; preds = %bb.k
  %i.bn = load <2 x float>, ptr %i.an, align 4    ; 2 uses
  %i.bo = load float, ptr %i.ao, align 4          ; 2 uses
  %i.bp = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4
  %.not178 = icmp eq i32 %i.br, 0
  br i1 %.not178, label %.loopexit147, label %.lr.ph

bb.m:                                             ; preds = %bb.j
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.l ] ; 2 uses
  %i.bt = phi ptr [ %i.ce, %.lr.ph ], [ %i.bp, %bb.l ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %i.bv, i64 %indvars.iv ; 3 uses
  %i.bx = load <2 x float>, ptr %i.bw, align 4
  %i.by = fsub <2 x float> %i.bn, %i.bx
  %i.bz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.by, <2 x float> %i.bn)
  store <2 x float> %i.bz, ptr %i.bw, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.cb = load float, ptr %i.ca, align 4
  %i.cc = fsub float %i.bo, %i.cb
  %i.cd = call float @llvm.fmuladd.f32(float %i.bj, float %i.cc, float %i.bo)
  store float %i.cd, ptr %i.ca, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cg = load i32, ptr %i.cf, align 4            ; 2 uses
  %i.ch = zext i32 %i.cg to i64
  %i.ci = icmp samesign ult i64 %indvars.iv.next, %i.ch
  br i1 %i.ci, label %.lr.ph, label %.loopexit147, !llvm.loop !12

.lr.ph155:                                        ; preds = %.preheader146, %.lr.ph155
  %indvars.iv193 = phi i64 [ %indvars.iv.next194, %.lr.ph155 ], [ 0, %.preheader146 ] ; 2 uses
  %i.cj = phi ptr [ %i.cs, %.lr.ph155 ], [ %i.bk, %.preheader146 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw [12 x i8], ptr %i.cl, i64 %indvars.iv193 ; 3 uses
  %i.cn = load <2 x float>, ptr %i.cm, align 4
  %i.co = fmul <2 x float> %i.bh, %i.cn
  store <2 x float> %i.co, ptr %i.cm, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4
  %i.cr = fmul float %i.bj, %i.cq
  store float %i.cr, ptr %i.cp, align 4
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %i.cs = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cu = load i32, ptr %i.ct, align 4            ; 2 uses
  %i.cv = zext i32 %i.cu to i64
  %i.cw = icmp samesign ult i64 %indvars.iv.next194, %i.cv
  br i1 %i.cw, label %.lr.ph155, label %.loopexit147, !llvm.loop !13

.loopexit147:                                     ; preds = %.lr.ph, %.lr.ph155, %bb.l, %.preheader146
  %i.cx = phi i32 [ %i.cu, %.lr.ph155 ], [ 0, %.preheader146 ], [ 0, %bb.l ], [ %i.cg, %.lr.ph ]
  %i.cy = phi ptr [ %i.cs, %.lr.ph155 ], [ %i.bk, %.preheader146 ], [ %i.bp, %bb.l ], [ %i.ce, %.lr.ph ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  %.not122 = icmp eq ptr %i.da, null
  %.not180 = icmp eq i32 %i.cx, 0
  %or.cond = or i1 %.not122, %.not180
  br i1 %or.cond, label %.loopexit145, label %.lr.ph157

.lr.ph157:                                        ; preds = %.loopexit147, %.lr.ph157
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %.lr.ph157 ], [ 0, %.loopexit147 ] ; 2 uses
  %i.db = phi ptr [ %i.dk, %.lr.ph157 ], [ %i.cy, %.loopexit147 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw [12 x i8], ptr %i.dd, i64 %indvars.iv196 ; 3 uses
  %i.df = load <2 x float>, ptr %i.de, align 4
  %i.dg = fmul <2 x float> %i.bh, %i.df
  store <2 x float> %i.dg, ptr %i.de, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4
  %i.dj = fmul float %i.bj, %i.di
end_hunk_0
