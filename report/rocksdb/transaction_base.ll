Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/transaction_base?download=true
inline.NumInlined: 2567
inline.NumDeleted: 1109
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7rocksdb19TransactionBaseImpl9SavePointC2ESt10shared_ptrIKNS_8SnapshotEEbS2_INS_19TransactionNotifierEEmmmmRKNS_18LockTrackerFactoryE:bb.a

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN7rocksdb8SnapshotEEC2ERKS3_.exit

_ZNSt10shared_ptrIKN7rocksdb8SnapshotEEC2ERKS3_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.a, ptr %i.j, align 8, !tbaa !550
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43   ; 2 uses
  %i.n = load <2 x ptr>, ptr %3, align 8, !tbaa !67
  store <2 x ptr> %i.n, ptr %i.k, align 8, !tbaa !67
  %.not.i.i.i8 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i8, label %_ZNSt10shared_ptrIN7rocksdb19TransactionNotifierEEC2ERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN7rocksdb8SnapshotEEC2ERKS3_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i9 = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.o, align 4, !tbaa !49
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !49
  br label %_ZNSt10shared_ptrIN7rocksdb19TransactionNotifierEEC2ERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.o, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7rocksdb19TransactionNotifierEEC2ERKS2_.exit

_ZNSt10shared_ptrIN7rocksdb19TransactionNotifierEEC2ERKS2_.exit: ; preds = %_ZNSt10shared_ptrIKN7rocksdb8SnapshotEEC2ERKS3_.exit, %bb.f, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %4, ptr %i.t, align 8, !tbaa !889
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %5, ptr %i.u, align 8, !tbaa !890
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %6, ptr %i.v, align 8, !tbaa !891
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %7, ptr %i.w, align 8, !tbaa !892
  %i.x = load ptr, ptr %8, align 8, !tbaa !48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.h unwind label %bb.p       ; 5 uses

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7rocksdb19TransactionNotifierEEC2ERKS2_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !551
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !43
  %i.ac = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %bb.o unwind label %bb.i       ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  %i.af = tail call ptr @__cxa_begin_catch(ptr %i.ae) #30 ; 0 uses
  %i.ag = icmp eq ptr %i.z, null
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #30, !inline_history !9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  invoke void @__cxa_rethrow() #33
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #31
  unreachable

bb.n:                                             ; preds = %bb.k
  unreachable

bb.o:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 1, ptr %i.an, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 1, ptr %i.ao, align 4, !tbaa !46
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7rocksdb11LockTrackerELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ac, align 8, !tbaa !48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.z, ptr %i.ap, align 8, !tbaa !555
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !43
  ret void

bb.p:                                             ; preds = %_ZNSt10shared_ptrIN7rocksdb19TransactionNotifierEEC2ERKS2_.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.p ], [ %i.ak, %bb.l ]
  tail call void @_ZNSt12__shared_ptrIN7rocksdb19TransactionNotifierELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.k) #30
  tail call void @_ZNSt12__shared_ptrIKN7rocksdb8SnapshotELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  resume { ptr, i32 } %eh.lpad-body
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN7rocksdb11LockTrackerELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN7rocksdb11LockTrackerELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !555  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN7rocksdb11LockTrackerELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN7rocksdb11LockTrackerELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE17_M_realloc_insertIJRSt10shared_ptrIKNS0_8SnapshotEERbRS6_INS0_19TransactionNotifierEERmSF_SF_SF_RKNS0_18LockTrackerFactoryEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !545  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !546    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #33
  unreachable

_ZNKSt6vectorIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 88                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 104811045873349725)
  %i.l = select i1 %i.j, i64 104811045873349725, i64 %i.k ; 4 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 88
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32
  br label %_ZNSt12_Vector_baseIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 2 uses
  %i.s = invoke noundef ptr @_ZSt12construct_atIN7rocksdb19TransactionBaseImpl9SavePointEJRSt10shared_ptrIKNS0_8SnapshotEERbRS3_INS0_19TransactionNotifierEERmSC_SC_SC_RKNS0_18LockTrackerFactoryEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSH_DpOSI_(ptr noundef %i.r, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZNSt16allocator_traitsISaIN7rocksdb19TransactionBaseImpl9SavePointEEE9constructIS2_JRSt10shared_ptrIKNS0_8SnapshotEERbRS6_INS0_19TransactionNotifierEERmSF_SF_SF_RKNS0_18LockTrackerFactoryEEEEvRS3_PT_DpOT0_.exit unwind label %bb.e ; 0 uses

_ZNSt16allocator_traitsISaIN7rocksdb19TransactionBaseImpl9SavePointEEE9constructIS2_JRSt10shared_ptrIKNS0_8SnapshotEERbRS6_INS0_19TransactionNotifierEERmSF_SF_SF_RKNS0_18LockTrackerFactoryEEEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNSt12_Vector_baseIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE11_M_allocateEm.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN7rocksdb19TransactionBaseImpl9SavePointEEE9constructIS2_JRSt10shared_ptrIKNS0_8SnapshotEERbRS6_INS0_19TransactionNotifierEERmSF_SF_SF_RKNS0_18LockTrackerFactoryEEEEvRS3_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %i.q, %_ZNSt16allocator_traitsISaIN7rocksdb19TransactionBaseImpl9SavePointEEE9constructIS2_JRSt10shared_ptrIKNS0_8SnapshotEERbRS6_INS0_19TransactionNotifierEERmSF_SF_SF_RKNS0_18LockTrackerFactoryEEEEvRS3_PT_DpOT0_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7rocksdb19TransactionBaseImpl9SavePointEEE9constructIS2_JRSt10shared_ptrIKNS0_8SnapshotEERbRS6_INS0_19TransactionNotifierEERmSF_SF_SF_RKNS0_18LockTrackerFactoryEEEEvRS3_PT_DpOT0_.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !67, !alias.scope !901
  store ptr null, ptr %i.t, align 8, !tbaa !43, !alias.scope !901
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !67, !alias.scope !900
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !72, !alias.scope !901
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.x = load i8, ptr %i.w, align 8, !tbaa !550, !range !505, !alias.scope !901, !noundef !151
  store i8 %i.x, ptr %i.v, align 8, !tbaa !550, !alias.scope !900
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.ab = load <2 x ptr>, ptr %i.z, align 8, !tbaa !67, !alias.scope !901
  store ptr null, ptr %i.aa, align 8, !tbaa !43, !alias.scope !901
  store <2 x ptr> %i.ab, ptr %i.y, align 8, !tbaa !67, !alias.scope !900
  store ptr null, ptr %i.z, align 8, !tbaa !531, !alias.scope !901
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false), !alias.scope !902
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !tbaa !67, !alias.scope !901
  store ptr null, ptr %i.ag, align 8, !tbaa !43, !alias.scope !901
  store <2 x ptr> %i.ah, ptr %i.ae, align 8, !tbaa !67, !alias.scope !900
  store ptr null, ptr %i.af, align 8, !tbaa !551, !alias.scope !901
  tail call void @_ZN7rocksdb19TransactionBaseImpl9SavePointD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.0911.i.i.i) #30, !noalias !900
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !896

_ZNSt6vectorIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN7rocksdb19TransactionBaseImpl9SavePointEEE9constructIS2_JRSt10shared_ptrIKNS0_8SnapshotEERbRS6_INS0_19TransactionNotifierEERmSF_SF_SF_RKNS0_18LockTrackerFactoryEEEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZNSt16allocator_traitsISaIN7rocksdb19TransactionBaseImpl9SavePointEEE9constructIS2_JRSt10shared_ptrIKNS0_8SnapshotEERbRS6_INS0_19TransactionNotifierEERmSF_SF_SF_RKNS0_18LockTrackerFactoryEEEEvRS3_PT_DpOT0_.exit ], [ %i.aj, %.lr.ph.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 88 ; 2 uses
  %.not10.i.i.i33 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i33, label %_ZNSt6vectorIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit39, label %.lr.ph.i.i.i34

.lr.ph.i.i.i34:                                   ; preds = %_ZNSt6vectorIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i34
  %.012.i.i.i35 = phi ptr [ %i.bb, %.lr.ph.i.i.i34 ], [ %i.ak, %_ZNSt6vectorIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 6 uses
  %.0911.i.i.i36 = phi ptr [ %i.ba, %.lr.ph.i.i.i34 ], [ %1, %_ZNSt6vectorIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i36, i64 8
  %i.am = load <2 x ptr>, ptr %.0911.i.i.i36, align 8, !tbaa !67, !alias.scope !904
  store ptr null, ptr %i.al, align 8, !tbaa !43, !alias.scope !904
  store <2 x ptr> %i.am, ptr %.012.i.i.i35, align 8, !tbaa !67, !alias.scope !903
  store ptr null, ptr %.0911.i.i.i36, align 8, !tbaa !72, !alias.scope !904
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i35, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i36, i64 16
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !550, !range !505, !alias.scope !904, !noundef !151
  store i8 %i.ap, ptr %i.an, align 8, !tbaa !550, !alias.scope !903
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i35, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i36, i64 24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i36, i64 32
  %i.at = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !67, !alias.scope !904
  store ptr null, ptr %i.as, align 8, !tbaa !43, !alias.scope !904
  store <2 x ptr> %i.at, ptr %i.aq, align 8, !tbaa !67, !alias.scope !903
  store ptr null, ptr %i.ar, align 8, !tbaa !531, !alias.scope !904
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i35, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i36, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 32, i1 false), !alias.scope !905
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i35, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i36, i64 72 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i36, i64 80
  %i.az = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !67, !alias.scope !904
  store ptr null, ptr %i.ay, align 8, !tbaa !43, !alias.scope !904
  store <2 x ptr> %i.az, ptr %i.aw, align 8, !tbaa !67, !alias.scope !903
  store ptr null, ptr %i.ax, align 8, !tbaa !551, !alias.scope !904
  tail call void @_ZN7rocksdb19TransactionBaseImpl9SavePointD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.0911.i.i.i36) #30, !noalias !903
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i36, i64 88 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i35, i64 88 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit39, label %.lr.ph.i.i.i34, !llvm.loop !896

_ZNSt6vectorIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit39: ; preds = %.lr.ph.i.i.i34, %_ZNSt6vectorIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i38 = phi ptr [ %i.ak, %_ZNSt6vectorIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bb, %.lr.ph.i.i.i34 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit39
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !675
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #29
  br label %_ZNSt12_Vector_baseIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit39, %bb.d
  store ptr %i.q, ptr %0, align 8, !tbaa !546
  store ptr %.0.lcssa.i.i.i38, ptr %i.a, align 8, !tbaa !545
  %i.bg = getelementptr inbounds nuw [88 x i8], ptr %i.q, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !675
  ret void

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE11_M_allocateEm.exit
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  %i.bj = tail call ptr @__cxa_begin_catch(ptr %i.bi) #30 ; 0 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %_ZSt8_DestroyIPN7rocksdb19TransactionBaseImpl9SavePointES2_EvT_S4_RSaIT0_E.exit.thread, label %_ZSt8_DestroyIPN7rocksdb19TransactionBaseImpl9SavePointES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN7rocksdb19TransactionBaseImpl9SavePointES2_EvT_S4_RSaIT0_E.exit.thread: ; preds = %bb.e
  tail call void @_ZN7rocksdb19TransactionBaseImpl9SavePointD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.r) #30
  br label %_ZNSt12_Vector_baseIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE13_M_deallocateEPS2_m.exit42

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE13_M_deallocateEPS2_m.exit42
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

_ZSt8_DestroyIPN7rocksdb19TransactionBaseImpl9SavePointES2_EvT_S4_RSaIT0_E.exit: ; preds = %bb.e
  %i.bl = mul nuw nsw i64 %i.l, 88
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.bl) #29
  br label %_ZNSt12_Vector_baseIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE13_M_deallocateEPS2_m.exit42

_ZNSt12_Vector_baseIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE13_M_deallocateEPS2_m.exit42: ; preds = %_ZSt8_DestroyIPN7rocksdb19TransactionBaseImpl9SavePointES2_EvT_S4_RSaIT0_E.exit, %_ZSt8_DestroyIPN7rocksdb19TransactionBaseImpl9SavePointES2_EvT_S4_RSaIT0_E.exit.thread
  invoke void @__cxa_rethrow() #33
          to label %bb.i unwind label %bb.f

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.bk

bb.h:                                             ; preds = %bb.f
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  tail call void @__clang_call_terminate(ptr %i.bn) #31
  unreachable

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIN7rocksdb19TransactionBaseImpl9SavePointESaIS2_EE13_M_deallocateEPS2_m.exit42
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt12construct_atIN7rocksdb19TransactionBaseImpl9SavePointEJRSt10shared_ptrIKNS0_8SnapshotEERbRS3_INS0_19TransactionNotifierEERmSC_SC_SC_RKNS0_18LockTrackerFactoryEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSH_DpOSI_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.2", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !67
  store <2 x ptr> %i.d, ptr %9, align 16, !tbaa !67
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN7rocksdb8SnapshotEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !49
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !49
  br label %_ZNSt10shared_ptrIKN7rocksdb8SnapshotEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN7rocksdb8SnapshotEEC2ERKS3_.exit

_ZNSt10shared_ptrIKN7rocksdb8SnapshotEEC2ERKS3_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.j = load i8, ptr %2, align 1, !tbaa !143, !range !505, !noundef !151
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43   ; 2 uses
  %i.o = load <2 x ptr>, ptr %3, align 8, !tbaa !67
  store <2 x ptr> %i.o, ptr %10, align 16, !tbaa !67
  %.not.i.i.i10 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i10, label %_ZNSt10shared_ptrIN7rocksdb19TransactionNotifierEEC2ERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN7rocksdb8SnapshotEEC2ERKS3_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i11 = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !49
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !49
  br label %_ZNSt10shared_ptrIN7rocksdb19TransactionNotifierEEC2ERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7rocksdb19TransactionNotifierEEC2ERKS2_.exit

_ZNSt10shared_ptrIN7rocksdb19TransactionNotifierEEC2ERKS2_.exit: ; preds = %_ZNSt10shared_ptrIKN7rocksdb8SnapshotEEC2ERKS3_.exit, %bb.f, %bb.g
  %i.u = load i64, ptr %4, align 8, !tbaa !145
  %i.v = load i64, ptr %5, align 8, !tbaa !145
  %i.w = load i64, ptr %6, align 8, !tbaa !145
  %i.x = load i64, ptr %7, align 8, !tbaa !145
  invoke void @_ZN7rocksdb19TransactionBaseImpl9SavePointC2ESt10shared_ptrIKNS_8SnapshotEEbS2_INS_19TransactionNotifierEEmmmmRKNS_18LockTrackerFactoryE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 %9, i1 noundef zeroext %i.k, ptr noundef nonnull align 8 %10, i64 noundef %i.u, i64 noundef %i.v, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7rocksdb19TransactionNotifierEEC2ERKS2_.exit
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !43   ; 8 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7rocksdb19TransactionNotifierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.z, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !46
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !48
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #30, !inline_history !1
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #30, !inline_history !1
  br label %_ZNSt12__shared_ptrIN7rocksdb19TransactionNotifierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i12 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i12, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.l ], [ %i.am, %bb.m ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.n, label %_ZNSt12__shared_ptrIN7rocksdb19TransactionNotifierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #30
  br label %_ZNSt12__shared_ptrIN7rocksdb19TransactionNotifierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb19TransactionNotifierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !43  ; 8 uses
  %.not.i.i13 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIKN7rocksdb8SnapshotELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIN7rocksdb19TransactionNotifierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ap, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !46
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !48
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #30, !inline_history !3
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !48
end_hunk_0
