inline.NumInlined: 4657
inline.NumDeleted: 2099
begin_hunk_0_@"_ZZN8facebook5velox5cache7SsdFile10checkpointEbEN3$_0D2Ev":bb.a
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #33, !inline_history !459
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !117
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #33, !inline_history !459
  br label %_ZNSt12__shared_ptrIN8facebook5velox11AsyncSourceIiEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt12__shared_ptrIN8facebook5velox11AsyncSourceIiEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !17

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #33
  br label %_ZNSt12__shared_ptrIN8facebook5velox11AsyncSourceIiEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox11AsyncSourceIiEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox11StringIdMap6stringB5cxx11Em(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #33 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #34
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.c = load i64, ptr %i.b, align 8, !tbaa !111  ; 2 uses
  %i.d = icmp ult i64 %i.c, 256
  br i1 %i.d, label %.noexc.thread, label %.noexc24

.noexc24:                                         ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %2) ; 2 uses
  %i.g = lshr i64 %i.f, 24
  %i.h = or i64 %i.g, 128                         ; 2 uses
  %i.i = add i64 %i.f, %2
  %i.j = shl nuw nsw i64 %i.h, 1
  %i.k = or disjoint i64 %i.j, 1
  %i.l = trunc nuw i64 %i.h to i8
  %i.m = insertelement <16 x i8> poison, i8 %i.l, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.o = and i64 %i.c, 255                        ; 2 uses
  %i.p = shl nuw i64 1, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !526
  %i.s = load ptr, ptr %i.e, align 8
  br label %.noexc26

.noexc26:                                         ; preds = %.noexc24, %.noexc29
  %.0.i94 = phi i64 [ %i.i, %.noexc24 ], [ %i.ap, %.noexc29 ] ; 2 uses
  %.022.i93 = phi i64 [ %i.p, %.noexc24 ], [ %i.ao, %.noexc29 ]
  %i.t = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i94, i64 range(i64 0, 256) %i.o)
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.r, i64 %i.t ; 3 uses
  %i.v = load <16 x i8>, ptr %i.u, align 16       ; 2 uses
  %i.w = icmp eq <16 x i8> %i.v, %i.n
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = and i16 %i.x, 4095
  %i.z = zext nneg i16 %i.y to i32
  %i.aa = icmp ne ptr %i.u, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = extractelement <16 x i8> %i.v, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %.noexc28, %.noexc26
  %.sroa.051.0 = phi i32 [ %i.z, %.noexc26 ], [ %i.af, %.noexc28 ] ; 4 uses
  %.not = icmp eq i32 %.sroa.051.0, 0
  br i1 %.not, label %bb.c, label %.noexc28

.noexc28:                                         ; preds = %.critedge.i
  %i.ad = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.051.0, i1 true)
  %i.ae = add nsw i32 %.sroa.051.0, -1
  %i.af = and i32 %i.ae, %.sroa.051.0
  %i.ag = zext nneg i32 %i.ad to i64
  tail call void @llvm.assume(i1 %i.aa)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %i.s, i64 %i.aj ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !13
  %i.am = icmp eq i64 %2, %i.al
  br i1 %i.am, label %bb.d, label %.critedge.i, !prof !236, !llvm.loop !530

bb.c:                                             ; preds = %.critedge.i
  %i.an = icmp eq i8 %i.ac, 0
  br i1 %i.an, label %.noexc.thread, label %.noexc29, !prof !236

.noexc29:                                         ; preds = %bb.c
  %i.ao = add i64 %.022.i93, -1                   ; 2 uses
  %i.ap = add i64 %i.k, %.0.i94
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %.noexc.thread, label %.noexc26, !llvm.loop !531

.noexc.thread:                                    ; preds = %bb.c, %.noexc29, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.aq, ptr %0, align 8, !tbaa !91
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ar, align 8, !tbaa !92
  store i8 0, ptr %i.aq, align 8, !tbaa !21
  br label %.critedge

bb.d:                                             ; preds = %.noexc28
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.at, ptr %0, align 8, !tbaa !91
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !25 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !92 ; 8 uses
  %i.ax = icmp ugt i64 %i.aw, 15
  br i1 %i.ax, label %bb.e, label %._crit_edge.i.i36

bb.e:                                             ; preds = %bb.d
  %i.ay = icmp slt i64 %i.aw, 0
  br i1 %i.ay, label %.noexc.i38, label %bb.f

.noexc.i38:                                       ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #34
          to label %.noexc39 unwind label %.critedge15

.noexc39:                                         ; preds = %.noexc.i38
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.az = add nuw i64 %i.aw, 1                    ; 2 uses
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i37, !prof !17

.noexc6.i:                                        ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc40 unwind label %.critedge15

.noexc40:                                         ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i37: ; preds = %bb.f
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #37
          to label %.noexc41 unwind label %.critedge15 ; 2 uses

.noexc41:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i37
  store ptr %i.bb, ptr %0, align 8, !tbaa !25
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !21
  br label %._crit_edge.i.i36

._crit_edge.i.i36:                                ; preds = %.noexc41, %bb.d
  %i.bc = phi ptr [ %i.bb, %.noexc41 ], [ %i.at, %bb.d ] ; 3 uses
  switch i64 %i.aw, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i36
  %i.bd = load i8, ptr %i.au, align 1, !tbaa !21
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !21
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i36
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr align 1 %i.au, i64 %i.aw, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i36
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aw, ptr %i.be, align 8, !tbaa !92
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.aw
  store i8 0, ptr %i.bf, align 1, !tbaa !21
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %.noexc.thread
  %i.bg = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #33 ; 0 uses
  ret void

.critedge15:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i37, %.noexc6.i, %.noexc.i38
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.bh = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #33 ; 0 uses
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox11AsyncSourceIiE4moveEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.265") align 8 %0, ptr noundef nonnull align 8 dereferenceable(248) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function.291", align 8 ; 15 uses
  %3 = alloca %"class.folly::SemiFuture.517", align 8 ; 11 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #37 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.c, align 16, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEE10uninitCallES6_SA_SC_RNS1_4DataE, ptr %i.d, align 16, !tbaa !532
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr null, ptr %i.e, align 8, !tbaa !534
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 2, ptr %i.f, align 16, !tbaa !535
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 81
  store i8 1, ptr %i.g, align 1, !tbaa !538
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 82
  store i8 0, ptr %i.h, align 2, !tbaa !538
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 0, ptr %i.i, align 8, !tbaa !540
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly7futures6detail4CoreINS_4UnitEEE, i64 16), ptr %i.a, align 16, !tbaa !117
  store i32 0, ptr %i.b, align 8, !tbaa !543
  store ptr %i.a, ptr %3, align 8, !tbaa !546
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 7 uses
  %i.l = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #33 ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.l) #34
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.n = load atomic i8, ptr %i.m acquire, align 8
  switch i8 %i.n, label %bb.av [
    i8 4, label %bb.d
    i8 5, label %bb.d
    i8 3, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
    i8 2, label %bb.k
    i8 1, label %bb.r
    i8 0, label %bb.al
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  store ptr null, ptr %0, align 8, !tbaa !549
  br label %.critedge

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !457  ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit, !prof !17

bb.e:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11AsyncSourceIiE4moveEvE18veloxCheckFailArgs) #34
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  store ptr %i.q, ptr %4, align 8, !tbaa !457
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull %4) #34
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.i:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !457
  %.not.i23 = icmp eq ptr %i.u, null
  br i1 %.not.i23, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24

bb.k:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !551
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !551
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %bb.o, label %bb.l, !prof !236

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11AsyncSourceIiE4moveEvE18veloxCheckFailArgs_0) #34
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24

bb.o:                                             ; preds = %bb.k
  invoke void @_ZN8facebook5velox11AsyncSourceIiE8setStateENS2_5StateE(ptr noundef nonnull align 8 dereferenceable(248) %1, i8 noundef zeroext 4)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !177
  store i64 %i.ac, ptr %0, align 8, !tbaa !177
  store ptr null, ptr %i.ab, align 8, !tbaa !177
  br label %.critedge

bb.q:                                             ; preds = %bb.ad, %bb.ac, %bb.at, %bb.o
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24

bb.r:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !260
  %.not.i.i.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.not.i, label %bb.v, label %bb.s, !prof !236

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11AsyncSourceIiE4moveEvE18veloxCheckFailArgs_1) #34
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24

bb.v:                                             ; preds = %bb.r
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !177
  %.not.i25 = icmp eq ptr %i.ai, null
  br i1 %.not.i25, label %bb.z, label %bb.w, !prof !236

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11AsyncSourceIiE4moveEvE18veloxCheckFailArgs_2) #34
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24

bb.z:                                             ; preds = %bb.v
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !551 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !551 ; 3 uses
  %i.ao = icmp eq ptr %i.al, %i.an
  br i1 %i.ao, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr null, ptr %0, align 8, !tbaa !549
  br label %.critedge

bb.ab:                                            ; preds = %bb.z
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !553
  %.not.i26 = icmp eq ptr %i.al, %i.aq
  br i1 %.not.i26, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ar = invoke noundef ptr @_ZSt12construct_atIN8facebook5velox12VeloxPromiseIN5folly4UnitEEEJRA18_KcEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_(ptr noundef %i.an, ptr noundef nonnull align 1 dereferenceable(18) @.str.181)
          to label %.noexc27 unwind label %bb.q   ; 0 uses

.noexc27:                                         ; preds = %bb.ac
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !555
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 2 uses
  store ptr %i.at, ptr %i.am, align 8, !tbaa !555
  br label %_ZNSt6vectorIN8facebook5velox12VeloxPromiseIN5folly4UnitEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit

bb.ad:                                            ; preds = %bb.ab
  invoke void @_ZNSt6vectorIN8facebook5velox12VeloxPromiseIN5folly4UnitEEESaIS5_EE17_M_realloc_insertIJRA18_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr %i.an, ptr noundef nonnull align 1 dereferenceable(18) @.str.181)
          to label %._ZNSt6vectorIN8facebook5velox12VeloxPromiseIN5folly4UnitEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.q

._ZNSt6vectorIN8facebook5velox12VeloxPromiseIN5folly4UnitEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.ad
  %.pre = load ptr, ptr %i.am, align 8, !tbaa !551
  br label %_ZNSt6vectorIN8facebook5velox12VeloxPromiseIN5folly4UnitEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit

_ZNSt6vectorIN8facebook5velox12VeloxPromiseIN5folly4UnitEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorIN8facebook5velox12VeloxPromiseIN5folly4UnitEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit_crit_edge, %.noexc27
  %i.au = phi ptr [ %.pre, %._ZNSt6vectorIN8facebook5velox12VeloxPromiseIN5folly4UnitEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.at, %.noexc27 ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -48 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !556, !range !88, !noalias !558, !noundef !89
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNSt6vectorIN8facebook5velox12VeloxPromiseIN5folly4UnitEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit
  invoke void @_ZN5folly6detail16throw_exception_INS_22FutureAlreadyRetrievedEJEEEvDpT0_() #20
          to label %.noexc29 unwind label %bb.ak

.noexc29:                                         ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %_ZNSt6vectorIN8facebook5velox12VeloxPromiseIN5folly4UnitEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit
  store i8 1, ptr %i.av, align 8, !tbaa !556, !noalias !558
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !561, !noalias !558 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i, label %bb.ag, label %_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN5folly6detail16throw_exception_INS_14PromiseInvalidEJEEEvDpT0_() #20
          to label %.noexc30 unwind label %bb.ak

.noexc30:                                         ; preds = %bb.ag
  unreachable

_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit: ; preds = %bb.af
  %i.ba = load ptr, ptr %3, align 8, !tbaa !546
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef %i.ba)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit
  %i.bb = load ptr, ptr %3, align 8, !tbaa !546   ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i31, label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.bb) #33
  br label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit

bb.aj:                                            ; preds = %_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #36
  unreachable

_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit:        ; preds = %bb.ah, %bb.ai
  store ptr %i.az, ptr %3, align 8, !tbaa !546
  br label %bb.av

bb.ak:                                            ; preds = %bb.ag, %bb.ae
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24

bb.al:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !260
  %.not.i.i.not.i33 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.not.i33, label %bb.am, label %bb.ap, !prof !17

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11AsyncSourceIiE4moveEvE18veloxCheckFailArgs_3) #34
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24

bb.ap:                                            ; preds = %bb.al
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !177
  %.not.i34 = icmp eq ptr %i.bk, null
  br i1 %.not.i34, label %bb.at, label %bb.aq, !prof !236

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11AsyncSourceIiE4moveEvE18veloxCheckFailArgs_4) #34
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24

bb.at:                                            ; preds = %bb.ap
  invoke void @_ZN8facebook5velox11AsyncSourceIiE8setStateENS2_5StateE(ptr noundef nonnull align 8 dereferenceable(248) %1, i8 noundef zeroext 1)
          to label %bb.au unwind label %bb.q

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 16, i1 false), !tbaa.struct !562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !562
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bn = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !318
  %i.bo = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !318
  store <2 x ptr> %i.bn, ptr %i.bm, align 8, !tbaa !318
  store <2 x ptr> %i.bo, ptr %i.bg, align 8, !tbaa !318
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit, %bb.au
  %i.bp = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #33 ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !260
  %.not.i.i.not.i35 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.not.i35, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN8facebook5velox11AsyncSourceIiE8makeItemEOSt8functionIFSt10unique_ptrIiSt14default_deleteIiEEvEE(ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ay unwind label %bb.ax

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24: ; preds = %bb.j, %bb.i, %bb.as, %bb.ao, %bb.ak, %bb.y, %bb.u, %bb.q, %bb.n, %bb.g
  %.pn = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.bl, %bb.as ], [ %i.aa, %bb.n ], [ %i.ad, %bb.q ], [ %i.ag, %bb.u ], [ %i.aj, %bb.y ], [ %i.be, %bb.ak ], [ %i.bi, %bb.ao ], [ %i.t, %bb.i ], [ %i.t, %bb.j ]
  %i.bs = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #33 ; 0 uses
  br label %bb.bv

bb.ax:                                            ; preds = %bb.ay, %bb.aw
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.ay:                                            ; preds = %bb.aw, %bb.av
  invoke void @_ZN8facebook5velox11AsyncSourceIiE8makeWaitEON5folly10SemiFutureINS3_4UnitEEE(ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.az unwind label %bb.ax

bb.az:                                            ; preds = %bb.ay
  %i.bu = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #33 ; 2 uses
  %.not.i.i36 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i36, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bu) #34
          to label %.noexc37 unwind label %bb.bf

.noexc37:                                         ; preds = %bb.ba
  unreachable

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40: ; preds = %bb.az
  %i.bv = load atomic i8, ptr %i.m acquire, align 8 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !457
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.bj, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40
  invoke void @_ZNK8facebook5velox11AsyncSourceIiE10checkStateENS2_5StateES3_(ptr noundef nonnull align 8 dereferenceable(248) %1, i8 noundef zeroext %i.bv, i8 noundef zeroext 3)
          to label %bb.bc unwind label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !457 ; 2 uses
  store ptr %i.bz, ptr %5, align 8, !tbaa !457
  %.not.i41 = icmp eq ptr %i.bz, null
  br i1 %.not.i41, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit42, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #33
  br label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit42

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit42: ; preds = %bb.bc, %bb.bd
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull %5) #34
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit42
  unreachable

bb.bf:                                            ; preds = %bb.ba
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bg:                                            ; preds = %bb.bm, %bb.bl, %bb.bb
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit44

bb.bh:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit42
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %5, align 8, !tbaa !457
  %.not.i43 = icmp eq ptr %i.cd, null
  br i1 %.not.i43, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit44, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit44

bb.bj:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40
  %i.ce = icmp eq i8 %i.bv, 4
  br i1 %i.ce, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store ptr null, ptr %0, align 8, !tbaa !549
  br label %bb.bo

bb.bl:                                            ; preds = %bb.bj
  invoke void @_ZNK8facebook5velox11AsyncSourceIiE10checkStateENS2_5StateES3_(ptr noundef nonnull align 8 dereferenceable(248) %1, i8 noundef zeroext %i.bv, i8 noundef zeroext 2)
          to label %bb.bm unwind label %bb.bg

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN8facebook5velox11AsyncSourceIiE8setStateENS2_5StateE(ptr noundef nonnull align 8 dereferenceable(248) %1, i8 noundef zeroext 4)
          to label %bb.bn unwind label %bb.bg

bb.bn:                                            ; preds = %bb.bm
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !177
  store i64 %i.cg, ptr %0, align 8, !tbaa !177
  store ptr null, ptr %i.cf, align 8, !tbaa !177
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bk
  %i.ch = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #33 ; 0 uses
  br label %bb.bp

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit44: ; preds = %bb.bi, %bb.bh, %bb.bg
  %.pn17 = phi { ptr, i32 } [ %i.cb, %bb.bg ], [ %i.cc, %bb.bh ], [ %i.cc, %bb.bi ]
  %i.ci = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #33 ; 0 uses
  br label %bb.bv

.critedge:                                        ; preds = %bb.p, %bb.d, %bb.aa
  %i.cj = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #33 ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %.critedge, %bb.bo
  %i.ck = load ptr, ptr %3, align 8, !tbaa !546
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef %i.ck)
          to label %bb.bq unwind label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.cl = load ptr, ptr %3, align 8, !tbaa !546   ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i45, label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit46, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.cl) #33
  br label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit46

bb.bs:                                            ; preds = %bb.bp
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #36
  unreachable

_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit46:      ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !260 ; 2 uses
  %.not.i47 = icmp eq ptr %i.cp, null
  br i1 %.not.i47, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit46
  %i.cq = invoke noundef zeroext i1 %i.cp(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.bu ; 0 uses

bb.bu:                                            ; preds = %bb.bt
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit46, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.bv:                                            ; preds = %bb.ax, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24, %bb.c, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit44, %bb.bf
  %.pn17.pn.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.bt, %bb.ax ], [ %.pn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24 ], [ %.pn17, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit44 ], [ %i.ca, %bb.bf ]
  call void @_ZN5folly10SemiFutureINS_4UnitEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre57 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !260 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %.not.i48 = icmp eq ptr %.pre57, null
  br i1 %.not.i48, label %_ZNSt14_Function_baseD2Ev.exit49, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ct = invoke noundef zeroext i1 %.pre57(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit49 unwind label %bb.bx ; 0 uses

bb.bx:                                            ; preds = %bb.bw
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit49:                 ; preds = %bb.bv, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn17.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !454  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !224 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 16) #35
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !455

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !443
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !445
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !443    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !445
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #35
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN5folly6detail14ScopeGuardImplIZN8facebook5velox5cache7SsdFile10checkpointEbE3$_2Lb1EED2Ev"(i8 %.0.val, ptr captures(none) %.8.val) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = trunc nuw i8 %.0.val to i1
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 536 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !124
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5cache7SsdFile20freeCheckpointBufferEvE18veloxCheckFailArgs) #34
          to label %.noexc.i.i unwind label %bb.e

.noexc.i.i:                                       ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = invoke noundef ptr @_ZN8facebook5velox6memory13memoryManagerEv()
          to label %.noexc1.i.i unwind label %bb.e

.noexc1.i.i:                                      ; preds = %bb.d
  %i.e = invoke noundef ptr @_ZN8facebook5velox6memory13MemoryManager9allocatorEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
          to label %"_ZN5folly6detail14ScopeGuardImplIZN8facebook5velox5cache7SsdFile10checkpointEbE3$_2Lb1EE7executeEv.exit" unwind label %bb.e ; 2 uses

bb.e:                                             ; preds = %.noexc1.i.i, %bb.d, %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #36
  unreachable

"_ZN5folly6detail14ScopeGuardImplIZN8facebook5velox5cache7SsdFile10checkpointEbE3$_2Lb1EE7executeEv.exit": ; preds = %.noexc1.i.i
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(888) %i.e, ptr noundef %i.h, i64 noundef 1048576) #33, !inline_history !563
  store ptr null, ptr %i.b, align 8, !tbaa !124
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 544
  store i32 0, ptr %i.l, align 8, !tbaa !427
  br label %bb.f

bb.f:                                             ; preds = %"_ZN5folly6detail14ScopeGuardImplIZN8facebook5velox5cache7SsdFile10checkpointEbE3$_2Lb1EE7executeEv.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox11AsyncSourceIiE5closeEv(ptr noundef nonnull align 8 dereferenceable(248) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::SemiFuture.517", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load atomic i8, ptr %i.a acquire, align 8
  %i.c = add i8 %i.b, -3
  %or.cond3 = icmp ult i8 %i.c, 3
  br i1 %or.cond3, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.d = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #37 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.f, align 16, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEE10uninitCallES6_SA_SC_RNS1_4DataE, ptr %i.g, align 16, !tbaa !532
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr null, ptr %i.h, align 8, !tbaa !534
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i8 2, ptr %i.i, align 16, !tbaa !535
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 81
  store i8 1, ptr %i.j, align 1, !tbaa !538
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 82
  store i8 0, ptr %i.k, align 2, !tbaa !538
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i32 0, ptr %i.l, align 8, !tbaa !540
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly7futures6detail4CoreINS_4UnitEEE, i64 16), ptr %i.d, align 16, !tbaa !117
  store i32 0, ptr %i.e, align 8, !tbaa !543
  store ptr %i.d, ptr %1, align 8, !tbaa !546
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %i.o = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #33 ; 2 uses
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.o) #34
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.b
  %i.p = invoke noundef zeroext i1 @_ZN8facebook5velox11AsyncSourceIiE14tryCloseLockedEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  br i1 %i.p, label %.critedge, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.f:                                             ; preds = %bb.j, %bb.i, %bb.g, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.g:                                             ; preds = %bb.d
  %i.s = load atomic i8, ptr %i.a acquire, align 8
  invoke void @_ZNK8facebook5velox11AsyncSourceIiE10checkStateENS2_5StateES3_(ptr noundef nonnull align 8 dereferenceable(248) %0, i8 noundef zeroext %i.s, i8 noundef zeroext 1)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !555  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !553
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = invoke noundef ptr @_ZSt12construct_atIN8facebook5velox12VeloxPromiseIN5folly4UnitEEEJRA19_KcEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_(ptr noundef %i.u, ptr noundef nonnull align 1 dereferenceable(19) @.str.189)
          to label %.noexc23 unwind label %bb.f   ; 0 uses

.noexc23:                                         ; preds = %bb.i
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !555
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  store ptr %i.z, ptr %i.t, align 8, !tbaa !555
  br label %_ZNSt6vectorIN8facebook5velox12VeloxPromiseIN5folly4UnitEEESaIS5_EE12emplace_backIJRA19_KcEEERS5_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke void @_ZNSt6vectorIN8facebook5velox12VeloxPromiseIN5folly4UnitEEESaIS5_EE17_M_realloc_insertIJRA19_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr %i.u, ptr noundef nonnull align 1 dereferenceable(19) @.str.189)
          to label %._ZNSt6vectorIN8facebook5velox12VeloxPromiseIN5folly4UnitEEESaIS5_EE12emplace_backIJRA19_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.f

._ZNSt6vectorIN8facebook5velox12VeloxPromiseIN5folly4UnitEEESaIS5_EE12emplace_backIJRA19_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.j
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !551
  br label %_ZNSt6vectorIN8facebook5velox12VeloxPromiseIN5folly4UnitEEESaIS5_EE12emplace_backIJRA19_KcEEERS5_DpOT_.exit

end_hunk_0
begin_hunk_1_@_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyImvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !764, !nonnull !89
  %i.e = load i8, ptr %i.d, align 1, !tbaa !165, !range !88, !noundef !89
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !236

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !766, !nonnull !89, !align !767
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyImvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !768, !nonnull !89, !align !767
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !733
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !769, !nonnull !89, !align !767
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !770  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !771, !nonnull !89, !align !767
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !734
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !772, !nonnull !89, !align !767
  %i.w = load i64, ptr %i.v, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !768, !nonnull !89, !align !767
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !733
  store ptr %i.z, ptr %i.q, align 8, !tbaa !484
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !773, !nonnull !89, !align !767
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !13 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !111
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !111
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #33
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyImvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #33
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyImvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyImvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.sse42.crc32.64.64(i64, i64) #23

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.bmi.bzhi.64(i64, i64) #23

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5folly6detail8function5call_IZN8facebook5velox5cache7SsdFile10checkpointEbE3$_0Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE"(ptr noundef nonnull readonly align 16 captures(none) dereferenceable(48) %0) #0 {
bb.a:
  %.val = load ptr, ptr %0, align 16, !tbaa !420
  tail call void @_ZN8facebook5velox11AsyncSourceIiE7prepareEv(ptr noundef nonnull align 8 dereferenceable(248) %.val)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @"_ZN5folly6detail8function13DispatchSmall4execIZN8facebook5velox5cache7SsdFile10checkpointEbE3$_0EEmNS1_2OpEPNS1_4DataESB_"(i32 noundef %0, ptr noundef captures(none) %1, ptr noundef writeonly captures(none) %2) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %0, label %bb.j [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %"_ZZN8facebook5velox5cache7SsdFile10checkpointEbEN3$_0D2Ev.exit"
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !318
  store ptr null, ptr %i.b, align 8, !tbaa !113
  store <2 x ptr> %i.c, ptr %2, align 8, !tbaa !318
  store ptr null, ptr %1, align 8, !tbaa !420
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !113 ; 8 uses
  %.not.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i, label %"_ZZN8facebook5velox5cache7SsdFile10checkpointEbEN3$_0D2Ev.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.e, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !116
  %i.j = load ptr, ptr %.val, align 8, !tbaa !117
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %.val) #33, !inline_history !774
  %i.m = load ptr, ptr %.val, align 8, !tbaa !117
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %.val) #33, !inline_history !774
  br label %"_ZZN8facebook5velox5cache7SsdFile10checkpointEbEN3$_0D2Ev.exit"

bb.f:                                             ; preds = %bb.d
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.g ], [ %i.r, %bb.h ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.i, label %"_ZZN8facebook5velox5cache7SsdFile10checkpointEbEN3$_0D2Ev.exit", !prof !17

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #33
  br label %"_ZZN8facebook5velox5cache7SsdFile10checkpointEbEN3$_0D2Ev.exit"

bb.j:                                             ; preds = %bb.a
  tail call void @abort() #36
  unreachable

"_ZZN8facebook5velox5cache7SsdFile10checkpointEbEN3$_0D2Ev.exit": ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.e, %bb.c, %bb.a
  ret i64 0
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_() local_unnamed_addr #21 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_function_call", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #33
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %0, align 8, !tbaa !117
  invoke void @_ZN5folly15throw_exceptionISt17bad_function_callEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt17bad_function_callD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #33
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt17bad_function_callEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #21 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.a, align 8, !tbaa !117
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #34
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt17bad_function_callD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox11AsyncSourceIiE7prepareEv(ptr noundef nonnull align 8 dereferenceable(248) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %1 = alloca %"class.std::function.291", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #33 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.b) #34
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load atomic i8, ptr %i.c acquire, align 8
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !260
  %.not.i.i.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.not.i, label %bb.j, label %bb.d, !prof !236

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11AsyncSourceIiE7prepareEvE18veloxCheckFailArgs) #34
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.g:                                             ; preds = %bb.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.h:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.i:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  invoke void @_ZN8facebook5velox11AsyncSourceIiE8setStateENS2_5StateE(ptr noundef nonnull align 8 dereferenceable(248) %0, i8 noundef zeroext 1)
          to label %bb.k unwind label %bb.g

bb.j:                                             ; preds = %bb.c
  %i.j = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #33 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 16, i1 false), !tbaa.struct !562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !562
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !318
  %i.o = load <2 x ptr>, ptr %i.l, align 8, !tbaa !318
  store <2 x ptr> %i.n, ptr %i.l, align 8, !tbaa !318
  store <2 x ptr> %i.o, ptr %i.m, align 8, !tbaa !318
  %i.p = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #33 ; 0 uses
  invoke void @_ZN8facebook5velox11AsyncSourceIiE8makeItemEOSt8functionIFSt10unique_ptrIiSt14default_deleteIiEEvEE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !260  ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void

bb.o:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.i, %bb.h ], [ %i.h, %bb.g ]
  %i.v = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #33 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.f, %bb.o, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %i.w, %bb.p ], [ %.pn, %bb.o ], [ %i.g, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !260  ; 2 uses
  %.not.i10 = icmp eq ptr %i.y, null
  br i1 %.not.i10, label %_ZNSt14_Function_baseD2Ev.exit11, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit11 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit11:                 ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox11AsyncSourceIiE8setStateENS2_5StateE(ptr noundef nonnull align 8 dereferenceable(248) %0, i8 noundef zeroext %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.473", align 16 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load atomic i8, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = tail call noundef zeroext i1 @_ZN8facebook5velox11AsyncSourceIiE22isValidStateTransitionENS2_5StateES3_(i8 noundef zeroext %i.b, i8 noundef zeroext %1)
  br i1 %i.c, label %bb.i, label %bb.b, !prof !236

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @_ZN8facebook5velox11AsyncSourceIiE9stateNameB5cxx11ENS2_5StateE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i8 noundef zeroext %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  invoke void @_ZN8facebook5velox11AsyncSourceIiE9stateNameB5cxx11ENS2_5StateE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i8 noundef zeroext %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !775
  %i.d = load ptr, ptr %4, align 8, !tbaa !25, !noalias !775
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !92, !noalias !775
  store ptr %i.d, ptr %2, align 16, !tbaa !21, !noalias !775
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !21, !noalias !775
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %5, align 8, !tbaa !25, !noalias !775
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !92, !noalias !775
  store ptr %i.i, ptr %i.h, align 16, !tbaa !21, !noalias !775
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.k, ptr %i.l, align 8, !tbaa !21, !noalias !775
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.137, i64 38, i64 221, ptr nonnull %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !775
  %i.m = load ptr, ptr %5, align 8, !tbaa !25     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !21
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.r = load ptr, ptr %4, align 8, !tbaa !25     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !21
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11AsyncSourceIiE8setStateENS2_5StateEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.137) #34
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.g:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %5, align 8, !tbaa !25     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.g
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !21
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.f
  %.pn = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.x, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.ad = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !21
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.h
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !21
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.pn10 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.ai, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %.pn10

bb.i:                                             ; preds = %bb.a
  store atomic i8 %1, ptr %i.a release, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox11AsyncSourceIiE8makeItemEOSt8functionIFSt10unique_ptrIiSt14default_deleteIiEEvEE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::Try", align 8        ; 8 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 12 uses
  %5 = alloca %"class.facebook::velox::CpuWallTimer", align 8 ; 6 uses
  %6 = alloca %"class.facebook::velox::process::ScopedThreadDebugInfo", align 8 ; 6 uses
  %7 = alloca %"class.std::unique_ptr.265", align 8 ; 5 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %9 = alloca %"class.std::vector.286", align 16  ; 9 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !260
  %.not.i.i.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.not.i, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11AsyncSourceIiE8makeItemEOSt8functionIFSt10unique_ptrIiSt14default_deleteIiEEvEEE18veloxCheckFailArgs) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr null, ptr %4, align 8, !tbaa !457
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke void @_ZN8facebook5velox12CpuWallTimerC1ERNS0_13CpuWallTimingE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZNRSt8optionalIN8facebook5velox7process15ThreadDebugInfoEE5valueEv.exit unwind label %bb.g

_ZNRSt8optionalIN8facebook5velox7process15ThreadDebugInfoEE5valueEv.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i8, ptr %i.d, align 8, !tbaa !778, !range !88, !noundef !89
  %i.f = trunc nuw i8 %i.e to i1
  %spec.select = select i1 %i.f, ptr %0, ptr null
  invoke void @_ZN8facebook5velox7process21ScopedThreadDebugInfoC1EPKNS1_15ThreadDebugInfoE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %spec.select)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZNRSt8optionalIN8facebook5velox7process15ThreadDebugInfoEE5valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !260, !noalias !780
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc21 unwind label %bb.i

end_hunk_1
begin_hunk_2_@_ZNSt14_Optional_baseIN8facebook5velox7process15ThreadDebugInfoELb0ELb0EED2Ev:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i.i:           ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !21
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.p = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt17_Optional_payloadIN8facebook5velox7process15ThreadDebugInfoELb0ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !21
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #35
  br label %_ZNSt17_Optional_payloadIN8facebook5velox7process15ThreadDebugInfoELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadIN8facebook5velox7process15ThreadDebugInfoELb0ELb0ELb0EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt22_Optional_payload_baseIN8facebook5velox7process15ThreadDebugInfoEE14_M_move_assignEOS4_(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(97) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !778, !range !88, !noundef !89
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load i8, ptr %i.d, align 8, !range !88
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN8facebook5velox7process15ThreadDebugInfoaSEOS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) #33 ; 0 uses
  br label %_ZNSt22_Optional_payload_baseIN8facebook5velox7process15ThreadDebugInfoEE8_M_resetEv.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !91
  %i.i = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !92   ; 2 uses
  %i.n = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !25
  %i.p = load i64, ptr %i.j, align 8, !tbaa !21
  store i64 %i.p, ptr %i.h, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !92
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !92
  store ptr %i.j, ptr %1, align 8, !tbaa !25
  store i64 0, ptr %i.q, align 8, !tbaa !92
  store i8 0, ptr %i.j, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !91
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !25   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !92  ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.w, ptr %i.t, align 8, !tbaa !25
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !21
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !92
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !92
  store ptr %i.x, ptr %i.u, align 8, !tbaa !25
  store i64 0, ptr %i.ae, align 8, !tbaa !92
  store i8 0, ptr %i.x, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i8 0, i64 24, i1 false)
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !912
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !912
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !260
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN8facebook5velox7process15ThreadDebugInfoEE12_M_constructIJS3_EEEvDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 16, i1 false), !tbaa.struct !562
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !260
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !260
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  br label %_ZNSt22_Optional_payload_baseIN8facebook5velox7process15ThreadDebugInfoEE12_M_constructIJS3_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseIN8facebook5velox7process15ThreadDebugInfoEE12_M_constructIJS3_EEEvDpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i.i.i, %bb.g
  store i8 1, ptr %i.a, align 8, !tbaa !778
  br label %_ZNSt22_Optional_payload_baseIN8facebook5velox7process15ThreadDebugInfoEE8_M_resetEv.exit

bb.h:                                             ; preds = %bb.c
  store i8 0, ptr %i.a, align 8, !tbaa !778
  br i1 %i.c, label %bb.i, label %_ZNSt22_Optional_payload_baseIN8facebook5velox7process15ThreadDebugInfoEE8_M_resetEv.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !260 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.at = invoke noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i:             ; preds = %bb.j, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !25 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !21
  %i.bb = add i64 %i.ba, 1
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.bc = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt22_Optional_payload_baseIN8facebook5velox7process15ThreadDebugInfoEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !21
  %i.bg = add i64 %i.bf, 1
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #35
  br label %_ZNSt22_Optional_payload_baseIN8facebook5velox7process15ThreadDebugInfoEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseIN8facebook5velox7process15ThreadDebugInfoEE8_M_resetEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i, %bb.h, %_ZNSt22_Optional_payload_baseIN8facebook5velox7process15ThreadDebugInfoEE12_M_constructIJS3_EEEvDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(96) ptr @_ZN8facebook5velox7process15ThreadDebugInfoaSEOS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function.279", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !25     ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.f = icmp eq ptr %i.d, %i.e                   ; 2 uses
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !92   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  switch i64 %i.h, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.d, align 1, !tbaa !21
  store i8 %i.j, ptr %i.a, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr align 1 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.k = load i64, ptr %i.g, align 8, !tbaa !92   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !92
  %i.m = load ptr, ptr %0, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !21
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !92
  store i64 %i.q, ptr %i.o, align 8, !tbaa !92
  %i.r = load i64, ptr %i.e, align 8, !tbaa !21
  store i64 %i.r, ptr %i.b, align 8, !tbaa !21
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.s = load i64, ptr %i.b, align 8, !tbaa !21
  store ptr %i.d, ptr %0, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !92
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !92
  %i.w = load i64, ptr %i.e, align 8, !tbaa !21
  store i64 %i.w, ptr %i.b, align 8, !tbaa !21
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.a, ptr %1, align 8, !tbaa !25
  store i64 %i.s, ptr %i.e, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.e, ptr %1, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.x = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.a, %bb.f ], [ %i.e, %bb.g ], [ %i.d, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !92
  store i8 0, ptr %i.x, align 1, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !25  ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !25 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.ag = icmp eq ptr %i.ae, %i.af                ; 2 uses
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.ag, label %bb.h, label %.thread.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.ag, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !92 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %.not21.i7 = icmp eq ptr %1, %0
  br i1 %.not21.i7, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit12, label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h
  switch i64 %i.ai, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ak = load i8, ptr %i.ae, align 1, !tbaa !21
  store i8 %i.ak, ptr %i.ab, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.ae, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8: ; preds = %bb.k, %bb.j, %bb.i
  %i.al = load i64, ptr %i.ah, align 8, !tbaa !92 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.al, ptr %i.am, align 8, !tbaa !92
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !21
  %.pre.i9 = load ptr, ptr %i.aa, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit12

.thread.i11:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !92
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !92
  %i.as = load i64, ptr %i.af, align 8, !tbaa !21
  store i64 %i.as, ptr %i.ac, align 8, !tbaa !21
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4
  %i.at = load i64, ptr %i.ac, align 8, !tbaa !21
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !92
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !92
  %i.ax = load i64, ptr %i.af, align 8, !tbaa !21
  store i64 %i.ax, ptr %i.ac, align 8, !tbaa !21
  %.not.i6 = icmp eq ptr %i.ab, null
  br i1 %.not.i6, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !25
  store i64 %i.at, ptr %i.af, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit12

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5, %.thread.i11
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit12: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8, %bb.l, %bb.m
  %i.ay = phi ptr [ %.pre.i9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8 ], [ %i.ab, %bb.l ], [ %i.af, %bb.m ], [ %i.ae, %bb.h ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.az, align 8, !tbaa !92
  store i8 0, ptr %i.ay, align 1, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.bc = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !318
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !260
  %.not.i.i.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit12
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 16, i1 false), !tbaa.struct !562
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit.i

_ZNSt8functionIFvvEEC2EOS1_.exit.i:               ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 16, i1 false), !tbaa.struct !562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !562
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !318
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !318 ; 2 uses
  store <2 x ptr> %i.bh, ptr %i.bf, align 8, !tbaa !318
  store <2 x ptr> %i.bc, ptr %i.bg, align 8, !tbaa !318
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvvEEaSEOS1_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i
  %i.bj = invoke noundef zeroext i1 %i.bi(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFvvEEaSEOS1_.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #36
  unreachable

_ZNSt8functionIFvvEEaSEOS1_.exit:                 ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox11AsyncSourceIiED2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.399", align 16 ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load atomic i8, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = add i8 %i.b, -6
  %spec.select = icmp ult i8 %i.c, -3
  br i1 %spec.select, label %bb.b, label %bb.f, !prof !17

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  invoke void @_ZN8facebook5velox11AsyncSourceIiE9stateNameB5cxx11ENS2_5StateE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i8 noundef zeroext %i.b)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33, !noalias !914
  %i.d = load ptr, ptr %3, align 8, !tbaa !25, !noalias !914
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !92, !noalias !914
  %i.g = ptrtoint ptr %i.d to i64
  store i64 %i.g, ptr %1, align 16, !noalias !914
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.f, ptr %.sroa_idx3.i, align 8, !noalias !914
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.176, i64 83, i64 13, ptr nonnull %1)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33, !noalias !914
  %i.h = load ptr, ptr %3, align 8, !tbaa !25     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.k = load i64, ptr %i.i, align 8, !tbaa !21
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11AsyncSourceIiED1EvE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.176) #34
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !457
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.f, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !260  ; 2 uses
  %.not.i5 = icmp eq ptr %i.p, null
  br i1 %.not.i5, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.r = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !177  ; 2 uses
  %.not.i6 = icmp eq ptr %i.v, null
  br i1 %.not.i6, label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit, label %_ZNKSt14default_deleteIiEclEPi.exit.i

_ZNKSt14default_deleteIiEclEPi.exit.i:            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 4) #35
  br label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit

_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt14default_deleteIiEclEPi.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !784  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !555  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox12VeloxPromiseIN5folly4UnitEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.x, %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit ] ; 2 uses
  tail call void @_ZN8facebook5velox12VeloxPromiseIN5folly4UnitEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i) #33
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox12VeloxPromiseIN5folly4UnitEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !785

_ZSt8_DestroyIPN8facebook5velox12VeloxPromiseIN5folly4UnitEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.w, align 8, !tbaa !784
  br label %_ZSt8_DestroyIPN8facebook5velox12VeloxPromiseIN5folly4UnitEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN8facebook5velox12VeloxPromiseIN5folly4UnitEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN8facebook5velox12VeloxPromiseIN5folly4UnitEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit
  %i.ab = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN8facebook5velox12VeloxPromiseIN5folly4UnitEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.x, %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN8facebook5velox12VeloxPromiseIN5folly4UnitEEESaIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox12VeloxPromiseIN5folly4UnitEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !553
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #35
  br label %_ZNSt6vectorIN8facebook5velox12VeloxPromiseIN5folly4UnitEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN8facebook5velox12VeloxPromiseIN5folly4UnitEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox12VeloxPromiseIN5folly4UnitEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !778, !range !88, !noundef !89
  %i.aj = trunc nuw i8 %i.ai to i1
  store i8 0, ptr %i.ah, align 8, !tbaa !778
  br i1 %i.aj, label %bb.k, label %_ZNSt14_Optional_baseIN8facebook5velox7process15ThreadDebugInfoELb0ELb0EED2Ev.exit

bb.k:                                             ; preds = %_ZNSt6vectorIN8facebook5velox12VeloxPromiseIN5folly4UnitEEESaIS5_EED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !260 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.an = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i:         ; preds = %bb.l, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !25 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !21
  %i.av = add i64 %i.au, 1
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.aw = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt14_Optional_baseIN8facebook5velox7process15ThreadDebugInfoELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !21
  %i.ba = add i64 %i.az, 1
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #35
  br label %_ZNSt14_Optional_baseIN8facebook5velox7process15ThreadDebugInfoELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN8facebook5velox7process15ThreadDebugInfoELb0ELb0EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNSt6vectorIN8facebook5velox12VeloxPromiseIN5folly4UnitEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  ret void

bb.n:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #36
end_hunk_2
