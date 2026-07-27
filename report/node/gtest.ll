inline.NumInlined: 6564
inline.NumDeleted: 2145
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN7testing10TestResult14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_12TestPropertyE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %_ZN7testing8internal14GTestMutexLockD2Ev.exit

_ZN7testing8internal14GTestMutexLockD2Ev.exit:    ; preds = %bb.ac, %_ZNSt6vectorIN7testing12TestPropertyESaIS1_EE9push_backERKS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN7testing10TestResult20ValidateTestPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_12TestPropertyE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 4 uses
  %3 = alloca %"class.testing::Message", align 8  ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 4 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  %i.a = load ptr, ptr %1, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.b, ptr %7, align 8
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.325) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #44 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #43
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !5

bb.g:                                             ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #43
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.f
  %i.i = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #45 ; 2 uses
  store ptr %i.i, ptr %7, align 8
  store i64 %i.d, ptr %i.b, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.c
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.c ] ; 3 uses
  switch i64 %i.d, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.a, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %i.a, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.d, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noalias !242
  switch i64 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread10.i [
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.i
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.i
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.p = load ptr, ptr %0, align 8, !noalias !242 ; 2 uses
  %i.q = load i64, ptr %i.p, align 1
  %i.r = xor i64 %i.q, 8388364919689667956
  %i.s = getelementptr i8, ptr %i.p, i64 8
  %i.t = load i16, ptr %i.s, align 1
  %i.u = zext i16 %i.t to i64
  %i.v = xor i64 %i.u, 29541
  %i.w = or i64 %i.r, %i.v
  %i.x = icmp ne i64 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread10.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.aa = call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #45, !noalias !245 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  %i.ac = call noundef ptr @_ZSt16__do_uninit_copyIPKPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_T_SC_SB_(ptr noundef nonnull @_ZN7testingL29kReservedTestSuitesAttributesE, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN7testingL29kReservedTestSuitesAttributesE, i64 64), ptr noundef nonnull %i.aa), !noalias !245
  br label %_ZN7testingL31GetReservedAttributesForElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %.pre.i = load ptr, ptr %0, align 8, !noalias !242 ; 2 uses
  %i.ad = load i64, ptr %.pre.i, align 1
  %i.ae = xor i64 %i.ad, 8388364919689667956
  %i.af = getelementptr i8, ptr %.pre.i, i64 8
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = xor i64 %i.ah, 101
  %i.aj = or i64 %i.ae, %i.ai
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread10.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.i
  %i.an = call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #45, !noalias !248 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 256
  %i.ap = call noundef ptr @_ZSt16__do_uninit_copyIPKPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_T_SC_SB_(ptr noundef nonnull @_ZN7testingL28kReservedTestSuiteAttributesE, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN7testingL28kReservedTestSuiteAttributesE, i64 64), ptr noundef nonnull %i.an), !noalias !248
  br label %_ZN7testingL31GetReservedAttributesForElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %.pre11.i = load ptr, ptr %0, align 8, !noalias !242
  %i.aq = load i64, ptr %.pre11.i, align 1
  %i.ar = icmp ne i64 %i.aq, 7310293699935823220
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread10.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.i
  %i.au = call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #45, !noalias !251 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 256
  %i.aw = call noundef ptr @_ZSt16__do_uninit_copyIPKPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_T_SC_SB_(ptr noundef nonnull @_ZN7testingL27kReservedTestCaseAttributesE, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN7testingL27kReservedTestCaseAttributesE, i64 64), ptr noundef nonnull %i.au), !noalias !251
  br label %_ZN7testingL31GetReservedAttributesForElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread10.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44, !noalias !242
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %6, i32 noundef 3, ptr noundef nonnull @.str.43, i32 noundef 2398) #44, !noalias !242
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.358, i64 noundef 24) #44, !noalias !242 ; 0 uses
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.359, i64 noundef 35) #44, !noalias !242 ; 0 uses
  %i.az = load ptr, ptr %0, align 8, !noalias !242
  %i.ba = load i64, ptr %i.n, align 8, !noalias !242
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.az, i64 noundef %i.ba) #44, !noalias !242 ; 0 uses
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #44, !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44, !noalias !242
  br label %_ZN7testingL31GetReservedAttributesForElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN7testingL31GetReservedAttributesForElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread10.i
  %.sroa.0.0 = phi ptr [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread10.i ], [ %i.aa, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i ], [ %i.an, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread.i ], [ %i.au, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread.i ] ; 14 uses
  %.sroa.15.0 = phi ptr [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread10.i ], [ %i.ac, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i ], [ %i.ap, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread.i ], [ %i.aw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread.i ] ; 6 uses
  %.sroa.25.0 = phi ptr [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread10.i ], [ %i.ab, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i ], [ %i.ao, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread.i ], [ %i.av, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread.i ]
  %i.bc = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %.sroa.0.0, ptr %.sroa.15.0, ptr nonnull align 8 dereferenceable(32) %7)
  %i.bd = icmp eq ptr %i.bc, %.sroa.15.0          ; 2 uses
  br i1 %i.bd, label %_ZN7testingL24ValidateTestPropertyNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN7testingL31GetReservedAttributesForElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  call void @_ZN7testing7MessageC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.be = load ptr, ptr %3, align 8               ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 7 uses
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.355, i64 noundef 39) #44 ; 0 uses
  %i.bh = load ptr, ptr %7, align 8
  %i.bi = load i64, ptr %i.l, align 8
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef %i.bh, i64 noundef %i.bi) #44 ; 0 uses
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.74, i64 noundef 2) #44 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44, !noalias !254
  call void @_ZN7testing7MessageC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !254
  %.not9.i.i = icmp eq ptr %.sroa.15.0, %.sroa.0.0
  %.pre12.i.i = load ptr, ptr %2, align 8, !noalias !254 ; 6 uses
  br i1 %.not9.i.i, label %._crit_edge.i.i2, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %.pre12.i.i, i64 16 ; 16 uses
  %i.bm = ptrtoint ptr %.sroa.15.0 to i64
  %i.bn = ptrtoint ptr %.sroa.0.0 to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = icmp eq i64 %i.bo, 32
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.357, i64 noundef 4) #44, !noalias !254 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.58, i64 noundef 1) #44, !noalias !254 ; 0 uses
  %i.bs = load ptr, ptr %.sroa.0.0, align 8, !noalias !254
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !254
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef %i.bs, i64 noundef %i.bu) #44, !noalias !254 ; 0 uses
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.58, i64 noundef 1) #44, !noalias !254 ; 0 uses
  %i.bx = ashr exact i64 %i.bo, 5                 ; 3 uses
  %i.by = icmp ugt i64 %i.bx, 1
  br i1 %i.by, label %.peel.next.i.i.preheader, label %._crit_edge.thread.i.i

.peel.next.i.i.preheader:                         ; preds = %bb.m
  %.not = icmp eq i64 %i.bo, 64
  %8 = add nsw i64 %i.bx, -1                      ; 2 uses
  br i1 %.not, label %._crit_edge.thread.i.i.loopexit.peel.begin, label %.peel.next.i.i.preheader15.split

.peel.next.i.i.preheader15.split:                 ; preds = %.peel.next.i.i.preheader
  %i.bz = add nsw i64 %i.bx, -2
  br label %bb.o

._crit_edge.thread.i.i.loopexit.peel.begin:       ; preds = %.peel.next.i.i.preheader
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %10, label %._crit_edge.thread.i.i.loopexit.peel.next

10:                                               ; preds = %._crit_edge.thread.i.i.loopexit.peel.begin
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.357, i64 noundef 4) #44, !noalias !254 ; 0 uses
  br label %._crit_edge.thread.i.i.loopexit.peel.next

._crit_edge.thread.i.i.loopexit.peel.next:        ; preds = %10, %._crit_edge.thread.i.i.loopexit.peel.begin
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.58, i64 noundef 1) #44, !noalias !254 ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !254
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 40
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !254
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef %i.cc, i64 noundef %i.ce) #44, !noalias !254 ; 0 uses
  br label %._crit_edge.thread.i.i.sink.split

._crit_edge.thread.i.i.loopexit16.peel.begin:     ; preds = %bb.o
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.313, i64 noundef 2) #44, !noalias !254 ; 0 uses
  %i.ch = icmp eq i64 %i.db, %8
  br i1 %i.ch, label %bb.n, label %._crit_edge.thread.i.i.loopexit16.peel.next

bb.n:                                             ; preds = %._crit_edge.thread.i.i.loopexit16.peel.begin
  %i.ci = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.357, i64 noundef 4) #44, !noalias !254 ; 0 uses
  br label %._crit_edge.thread.i.i.loopexit16.peel.next

._crit_edge.thread.i.i.loopexit16.peel.next:      ; preds = %bb.n, %._crit_edge.thread.i.i.loopexit16.peel.begin
  %i.cj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.58, i64 noundef 1) #44, !noalias !254 ; 0 uses
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0, i64 %i.db ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !254
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !254
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef %i.cl, i64 noundef %i.cn) #44, !noalias !254 ; 0 uses
  br label %._crit_edge.thread.i.i.sink.split

._crit_edge.thread.i.i.sink.split:                ; preds = %._crit_edge.thread.i.i.loopexit.peel.next, %._crit_edge.thread.i.i.loopexit16.peel.next
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.58, i64 noundef 1) #44, !noalias !254 ; 0 uses
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.thread.i.i.sink.split, %bb.m
  call void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %.pre12.i.i)
  br label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i

._crit_edge.i.i2:                                 ; preds = %bb.j
  call void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %.pre12.i.i)
  %.not.i.i.i.i = icmp eq ptr %.pre12.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN7testingL14FormatWordListERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE.exit.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i: ; preds = %._crit_edge.i.i2, %._crit_edge.thread.i.i
  %i.cq = load ptr, ptr %.pre12.i.i, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(128) %.pre12.i.i) #44, !inline_history !257
  br label %_ZN7testingL14FormatWordListERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE.exit.i

bb.o:                                             ; preds = %bb.o, %.peel.next.i.i.preheader15.split
  %.08.i.i = phi i64 [ %i.db, %bb.o ], [ 1, %.peel.next.i.i.preheader15.split ] ; 3 uses
  %i.ct = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.313, i64 noundef 2) #44, !noalias !254 ; 0 uses
  %i.cu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.58, i64 noundef 1) #44, !noalias !254 ; 0 uses
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0, i64 %.08.i.i ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !254
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !noalias !254
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef %i.cw, i64 noundef %i.cy) #44, !noalias !254 ; 0 uses
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.58, i64 noundef 1) #44, !noalias !254 ; 0 uses
  %i.db = add nuw i64 %.08.i.i, 1                 ; 3 uses
  %exitcond.not = icmp eq i64 %.08.i.i, %i.bz
  br i1 %exitcond.not, label %._crit_edge.thread.i.i.loopexit16.peel.begin, label %bb.o, !llvm.loop !258

_ZN7testingL14FormatWordListERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE.exit.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i, %._crit_edge.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44, !noalias !254
  %i.dc = load ptr, ptr %4, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef %i.dc, i64 noundef %i.de) #44 ; 0 uses
  %i.dg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.356, i64 noundef 17) #44 ; 0 uses
  %i.dh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.151, i64 noundef 11) #44 ; 0 uses
  %i.di = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.75, i64 noundef 1) #44 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.dj = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #45 ; 9 uses
  store i32 1, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr @.str.43, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i32 2442, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 40 ; 4 uses
  store ptr %i.dn, ptr %i.dm, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.dn, ptr noundef nonnull align 1 dereferenceable(6) @.str.109, i64 6, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  store i64 6, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 46
  store i8 0, ptr %i.dp, align 2
  store ptr %i.dj, ptr %5, align 8
  call void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.dq = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.dn
  br i1 %i.dr, label %_ZN7testing8internal12AssertHelperD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN7testingL14FormatWordListERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE.exit.i
  %i.ds = load i64, ptr %i.dn, align 8
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #46
  br label %_ZN7testing8internal12AssertHelperD2Ev.exit.i

_ZN7testing8internal12AssertHelperD2Ev.exit.i:    ; preds = %_ZN7testingL14FormatWordListERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 56) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  %i.du = load ptr, ptr %4, align 8               ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZN7testing7MessageD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal12AssertHelperD2Ev.exit.i
  %i.dx = load i64, ptr %i.dv, align 8
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #46
  br label %_ZN7testing7MessageD2Ev.exit.i

_ZN7testing7MessageD2Ev.exit.i:                   ; preds = %_ZN7testing8internal12AssertHelperD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %i.dz = load ptr, ptr %i.be, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(128) %i.be) #44, !inline_history !260
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %_ZN7testingL24ValidateTestPropertyNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE.exit

_ZN7testingL24ValidateTestPropertyNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE.exit: ; preds = %_ZN7testingL31GetReservedAttributesForElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7testing7MessageD2Ev.exit.i
  %.not4.i.i.i = icmp eq ptr %.sroa.0.0, %.sroa.15.0
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7testingL24ValidateTestPropertyNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.eh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.sroa.0.0, %_ZN7testingL24ValidateTestPropertyNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE.exit ] ; 3 uses
  %i.ec = load ptr, ptr %.05.i.i.i, align 8       ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ef = load i64, ptr %i.ed, align 8
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.eh, %.sroa.15.0
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !63

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZN7testingL24ValidateTestPropertyNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE.exit
  %.not.i.i1.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.ei = ptrtoint ptr %.sroa.25.0 to i64
  %i.ej = ptrtoint ptr %.sroa.0.0 to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.ek) #46
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, %bb.p
  %i.el = load ptr, ptr %7, align 8               ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.b
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.en = load i64, ptr %i.b, align 8
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  ret i1 %i.bd
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN7testing12TestPropertyESt6vectorIS3_SaIS3_EEEENS2_8internal17TestPropertyKeyIsEET_SB_SB_T0_(ptr %0, ptr %1, ptr noundef align 8 %2) local_unnamed_addr #13 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.259", align 8 ; 11 uses
  %.sroa.4 = alloca %union.anon, align 8          ; 5 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.259", align 8 ; 7 uses
  %5 = alloca %"class.testing::internal::TestPropertyKeyIs", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  store ptr %i.a, ptr %5, align 8
  %i.b = load ptr, ptr %2, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #43
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #43
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.i = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #45 ; 2 uses
  store ptr %i.i, ptr %5, align 8
  store i64 %i.d, ptr %i.a, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN7testing8internal17TestPropertyKeyIsC2ERKS1_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.b, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %_ZN7testing8internal17TestPropertyKeyIsC2ERKS1_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZN7testing8internal17TestPropertyKeyIsC2ERKS1_.exit

_ZN7testing8internal17TestPropertyKeyIsC2ERKS1_.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 %i.d, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.n = load ptr, ptr %5, align 8, !noalias !261 ; 4 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZN9__gnu_cxx5__ops11__pred_iterIN7testing8internal17TestPropertyKeyIsEEENS0_10_Iter_predIT_EES6_.exit.thread, label %_ZN9__gnu_cxx5__ops11__pred_iterIN7testing8internal17TestPropertyKeyIsEEENS0_10_Iter_predIT_EES6_.exit

_ZN9__gnu_cxx5__ops11__pred_iterIN7testing8internal17TestPropertyKeyIsEEENS0_10_Iter_predIT_EES6_.exit.thread: ; preds = %_ZN7testing8internal17TestPropertyKeyIsC2ERKS1_.exit
  %i.p = load i64, ptr %i.l, align 8, !noalias !261 ; 4 uses
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.q, i1 false), !noalias !261
  store ptr %i.a, ptr %5, align 8, !noalias !261
  store i64 0, ptr %i.l, align 8, !noalias !261
  store i8 0, ptr %i.a, align 8, !noalias !261
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.r, ptr %4, align 8, !alias.scope !261
  %i.s = icmp samesign ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4, i64 %i.q, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.p, ptr %i.t, align 8, !alias.scope !261
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.u, ptr %3, align 8
  br label %._crit_edge.i.i.i.i.i

_ZN9__gnu_cxx5__ops11__pred_iterIN7testing8internal17TestPropertyKeyIsEEENS0_10_Iter_predIT_EES6_.exit: ; preds = %_ZN7testing8internal17TestPropertyKeyIsC2ERKS1_.exit
  store ptr %i.a, ptr %5, align 8, !noalias !261
  store ptr %i.n, ptr %4, align 8, !alias.scope !261
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_0
