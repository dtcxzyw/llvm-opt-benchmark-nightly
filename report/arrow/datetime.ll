inline.NumInlined: 2499
inline.NumDeleted: 992
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_:bb.a

bb.f:                                             ; preds = %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.ay = load ptr, ptr %i.w, align 8, !tbaa !54
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bb) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i: ; preds = %bb.f, %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !45  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i
  %i.bh = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.a
  br i1 %i.bi, label %_ZN14arrow_vendored4date9time_zoneD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !31
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #28
  br label %_ZN14arrow_vendored4date9time_zoneD2Ev.exit

_ZN14arrow_vendored4date9time_zoneD2Ev.exit:      ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #0 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #22

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #21

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt2wsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #22

declare noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef, i32 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN14arrow_vendored4dateL10load_leapsIiEESt6vectorINS0_11leap_secondESaIS3_EERSii(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.std::chrono::time_point", align 8 ; 6 uses
  %4 = alloca %"struct.arrow_vendored::date::detail::undocumented", align 1 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = icmp slt i32 %2, 0
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #31
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not22 = icmp eq i32 %2, 0
  br i1 %.not22, label %._crit_edge, label %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = shl nuw nsw i64 %i.c, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #32 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !25
  store ptr %i.h, ptr %i.f, align 8, !tbaa !260
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.c
  store ptr %i.i, ptr %i.e, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit
  %.017 = phi i32 [ 0, %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i ], [ %i.w, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 4)
          to label %bb.d unwind label %bb.h       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.a, align 4, !tbaa !3
  %i.n = call noundef i32 @llvm.bswap.i32(i32 %i.m) ; 2 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !3
  %i.o = load i32, ptr %i.b, align 4, !tbaa !3
  %i.p = call noundef i32 @llvm.bswap.i32(i32 %i.o) ; 2 uses
  store i32 %i.p, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.neg16 = add i32 %i.n, 1
  %i.q = sub i32 %.neg16, %i.p
  %i.r = sext i32 %i.q to i64
  store i64 %i.r, ptr %3, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !260  ; 3 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc14 unwind label %bb.i

.noexc14:                                         ; preds = %bb.f
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !260
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.v, ptr %i.j, align 8, !tbaa !260
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.s, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit unwind label %bb.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit: ; preds = %bb.g, %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.w = add nuw nsw i32 %.017, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !360

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit, %bb.b
  ret void

bb.j:                                             ; preds = %bb.h, %bb.i
  %.pn = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.x, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.pre = load ptr, ptr %0, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %.pre to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.ad) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = ptrtoint ptr %1 to i64                     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !260  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !25     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 9 uses
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit
  %5 = add i64 %4, -8
  %i.s = sub i64 %5, %i.e                         ; 2 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 72
  %i.v = sub i64 %i.e, %i.q
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.u, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.c, i64 %i.z ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.aa = getelementptr i8, ptr %next.gep48, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep48, align 8, !tbaa !75, !alias.scope !364, !noalias !361
  %wide.load49 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !75, !alias.scope !364, !noalias !361
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !75, !alias.scope !361, !noalias !364
  store <2 x i64> %wide.load49, ptr %i.ab, align 8, !tbaa !75, !alias.scope !361, !noalias !364
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !366

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader71

.lr.ph.i.i.i.preheader71:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader71, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader71 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader71 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.ad = load i64, ptr %.0911.i.i.i, align 8, !tbaa !75, !alias.scope !364, !noalias !361
  store i64 %i.ad, ptr %.012.i.i.i, align 8, !tbaa !75, !alias.scope !361, !noalias !364
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !367

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit ], [ %i.x, %middle.block ], [ %i.af, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i52 = ptrtoaddr ptr %.0.lcssa.i.i.i to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 5 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28.preheader

.lr.ph.i.i.i28.preheader:                         ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %6 = add i64 %i.d, -8
  %i.ah = sub i64 %6, %4                          ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check55 = icmp ult i64 %i.ah, 104
  br i1 %min.iters.check55, label %.lr.ph.i.i.i28.preheader70, label %vector.memcheck51

vector.memcheck51:                                ; preds = %.lr.ph.i.i.i28.preheader
  %i.ak = sub i64 %.0.lcssa.i.i.i52, %4
  %i.al = add i64 %i.ak, 7
  %diff.check53 = icmp ult i64 %i.al, 31
  br i1 %diff.check53, label %.lr.ph.i.i.i28.preheader70, label %vector.ph56

vector.ph56:                                      ; preds = %vector.memcheck51
  %n.vec58 = and i64 %i.aj, 4611686018427387900   ; 3 uses
  %i.am = shl i64 %n.vec58, 3                     ; 2 uses
  %i.an = getelementptr i8, ptr %i.ag, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %1, i64 %i.am
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph56
  %index60 = phi i64 [ 0, %vector.ph56 ], [ %index.next65, %vector.body59 ] ; 2 uses
  %i.ap = shl i64 %index60, 3                     ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.ag, i64 %i.ap ; 2 uses
  %next.gep62 = getelementptr i8, ptr %1, i64 %i.ap ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.aq = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load63 = load <2 x i64>, ptr %next.gep62, align 8, !tbaa !75, !alias.scope !371, !noalias !368
  %wide.load64 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !75, !alias.scope !371, !noalias !368
  %i.ar = getelementptr i8, ptr %next.gep61, i64 16
  store <2 x i64> %wide.load63, ptr %next.gep61, align 8, !tbaa !75, !alias.scope !368, !noalias !371
  store <2 x i64> %wide.load64, ptr %i.ar, align 8, !tbaa !75, !alias.scope !368, !noalias !371
  %index.next65 = add nuw i64 %index60, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next65, %n.vec58
  br i1 %i.as, label %middle.block66, label %vector.body59, !llvm.loop !373

middle.block66:                                   ; preds = %vector.body59
  %cmp.n67 = icmp eq i64 %i.aj, %n.vec58
  br i1 %cmp.n67, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28.preheader70

.lr.ph.i.i.i28.preheader70:                       ; preds = %vector.memcheck51, %.lr.ph.i.i.i28.preheader, %middle.block66
  %.012.i.i.i29.ph = phi ptr [ %i.ag, %vector.memcheck51 ], [ %i.ag, %.lr.ph.i.i.i28.preheader ], [ %i.an, %middle.block66 ]
  %.0911.i.i.i30.ph = phi ptr [ %1, %vector.memcheck51 ], [ %1, %.lr.ph.i.i.i28.preheader ], [ %i.ao, %middle.block66 ]
  br label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %.lr.ph.i.i.i28.preheader70, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.av, %.lr.ph.i.i.i28 ], [ %.012.i.i.i29.ph, %.lr.ph.i.i.i28.preheader70 ] ; 2 uses
  %.0911.i.i.i30 = phi ptr [ %i.au, %.lr.ph.i.i.i28 ], [ %.0911.i.i.i30.ph, %.lr.ph.i.i.i28.preheader70 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.at = load i64, ptr %.0911.i.i.i30, align 8, !tbaa !75, !alias.scope !371, !noalias !368
  store i64 %i.at, ptr %.012.i.i.i29, align 8, !tbaa !75, !alias.scope !368, !noalias !371
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 8 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.au, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !374

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33: ; preds = %.lr.ph.i.i.i28, %middle.block66, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ag, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.an, %middle.block66 ], [ %i.av, %.lr.ph.i.i.i28 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !26
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.az) #28
  br label %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !25
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !260
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !26
  ret void

bb.d:                                             ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  %i.be = tail call ptr @__cxa_begin_catch(ptr %i.bd) #30 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #28
  invoke void @__cxa_rethrow() #31
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.bb

bb.g:                                             ; preds = %bb.d
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #29
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN14arrow_vendored4dateL10load_leapsIlEESt6vectorINS0_11leap_secondESaIS3_EERSii(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.std::chrono::time_point", align 8 ; 6 uses
  %4 = alloca %"struct.arrow_vendored::date::detail::undocumented", align 1 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = icmp slt i32 %2, 0
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #31
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not21 = icmp eq i32 %2, 0
  br i1 %.not21, label %._crit_edge, label %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = shl nuw nsw i64 %i.c, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #32 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !25
  store ptr %i.h, ptr %i.f, align 8, !tbaa !260
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.c
  store ptr %i.i, ptr %i.e, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit
  %.016 = phi i32 [ 0, %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i ], [ %i.x, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 8)
          to label %bb.d unwind label %bb.h       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.a, align 8, !tbaa !75
  %i.n = call noundef i64 @llvm.bswap.i64(i64 %i.m) ; 2 uses
  store i64 %i.n, ptr %i.a, align 8, !tbaa !75
  %i.o = load i32, ptr %i.b, align 4, !tbaa !3
  %i.p = call noundef i32 @llvm.bswap.i32(i32 %i.o) ; 2 uses
  store i32 %i.p, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.q = add nsw i32 %i.p, -1
  %i.r = sext i32 %i.q to i64
  %i.s = sub nsw i64 %i.n, %i.r
  store i64 %i.s, ptr %3, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !260  ; 3 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc14 unwind label %bb.i

.noexc14:                                         ; preds = %bb.f
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !260
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.w, ptr %i.j, align 8, !tbaa !260
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit unwind label %bb.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit: ; preds = %bb.g, %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.x = add nuw nsw i32 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !375

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit, %bb.b
  ret void

bb.j:                                             ; preds = %bb.h, %bb.i
  %.pn = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.y, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
end_hunk_0
