Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/operations?download=true
inline.NumInlined: 1253
inline.NumDeleted: 251
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@applyForcedQubitMeasurement:bb.a
  store ptr %i.e, ptr %i.g, align 8, !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.h = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #15
          to label %bb.d unwind label %bb.c       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.critedge94

bb.d:                                             ; preds = %bb.b
  store ptr %i.h, ptr %4, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !19
  store i32 %2, ptr %i.h, align 4, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.j, ptr %i.l, align 8, !tbaa !15
  invoke void @_Z38localiser_densmatr_multiQubitProjector5QuregSt6vectorIiSaIiEES2_d(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef nonnull align 8 dereferenceable(24) %4, double noundef %i.a)
          to label %.critedge85 unwind label %.body109.thread147

bb.e:                                             ; preds = %bb.a
  store ptr %i.d, ptr %5, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.m, align 8, !tbaa !19
  store i32 %1, ptr %i.d, align 4, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.e, ptr %i.n, align 8, !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.o = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #15
          to label %bb.g unwind label %bb.f       ; 3 uses

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body114

bb.g:                                             ; preds = %bb.e
  store ptr %i.o, ptr %6, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !19
  store i32 %2, ptr %i.o, align 4, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.q, ptr %i.s, align 8, !tbaa !15
  invoke void @_Z38localiser_statevec_multiQubitProjector5QuregSt6vectorIiSaIiEES2_d(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %5, ptr nofree noundef nonnull align 8 dereferenceable(24) %6, double noundef %i.a)
          to label %.critedge unwind label %bb.l

.critedge:                                        ; preds = %bb.g
  %i.t = load ptr, ptr %6, align 8, !tbaa !16     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.critedge, %bb.h
  %i.y = load ptr, ptr %5, align 8, !tbaa !16     ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i118, label %.critedge92, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !19
  br label %.critedge92.sink.split

.critedge85:                                      ; preds = %bb.d
  %i.aa = load ptr, ptr %4, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i121 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i121, label %_ZNSt6vectorIiSaIiEED2Ev.exit123, label %bb.j

bb.j:                                             ; preds = %.critedge85
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit123

_ZNSt6vectorIiSaIiEED2Ev.exit123:                 ; preds = %.critedge85, %bb.j
  %i.af = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %.not.i.i.i124 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i124, label %.critedge92, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit123
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !19
  br label %.critedge92.sink.split

.critedge92.sink.split:                           ; preds = %bb.k, %bb.i
  %.sink168 = phi ptr [ %i.z, %bb.i ], [ %i.ag, %bb.k ]
  %.sink167 = phi ptr [ %i.y, %bb.i ], [ %i.af, %bb.k ] ; 2 uses
  %i.ah = ptrtoint ptr %.sink168 to i64
  %i.ai = ptrtoint ptr %.sink167 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %.sink167, i64 noundef %i.aj) #17
  br label %.critedge92

.critedge92:                                      ; preds = %.critedge92.sink.split, %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNSt6vectorIiSaIiEED2Ev.exit123
  ret double %i.a

.body109.thread147:                               ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %4, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i133 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i133, label %.critedge94, label %bb.o

bb.l:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %6, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i127 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i127, label %.body114, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #17
  br label %.body114

.body114:                                         ; preds = %bb.f, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.am, %bb.m ], [ %i.am, %bb.l ] ; 2 uses
  %i.as = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i130, label %.critedge97, label %bb.n

bb.n:                                             ; preds = %.body114
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !19
  br label %.critedge97.sink.split

bb.o:                                             ; preds = %.body109.thread147
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.al to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ax) #17
  br label %.critedge94

.critedge94:                                      ; preds = %bb.c, %.body109.thread147, %bb.o
  %.pn76.pn.ph = phi { ptr, i32 } [ %i.ak, %bb.o ], [ %i.ak, %.body109.thread147 ], [ %i.i, %bb.c ] ; 2 uses
  %i.ay = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %.not.i.i.i136 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i136, label %.critedge97, label %bb.p

bb.p:                                             ; preds = %.critedge94
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !19
  br label %.critedge97.sink.split

.critedge97.sink.split:                           ; preds = %bb.p, %bb.n
  %.sink173 = phi ptr [ %i.at, %bb.n ], [ %i.az, %bb.p ]
  %.sink172 = phi ptr [ %i.as, %bb.n ], [ %i.ay, %bb.p ] ; 2 uses
  %.pn76.pn.pn155.ph = phi { ptr, i32 } [ %.pn, %bb.n ], [ %.pn76.pn.ph, %bb.p ]
  %i.ba = ptrtoint ptr %.sink173 to i64
  %i.bb = ptrtoint ptr %.sink172 to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %.sink172, i64 noundef %i.bc) #17
  br label %.critedge97

.critedge97:                                      ; preds = %.critedge97.sink.split, %.body114, %.critedge94
  %.pn76.pn.pn155 = phi { ptr, i32 } [ %.pn76.pn.ph, %.critedge94 ], [ %.pn, %.body114 ], [ %.pn76.pn.pn155.ph, %.critedge97.sink.split ]
  resume { ptr, i32 } %.pn76.pn.pn155
}

declare void @_Z38validate_measurementOutcomeProbNotZeroidPKc(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i64 @applyMultiQubitMeasurement(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  tail call void @_Z20validate_quregFields5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.applyMultiQubitMeasurement)
  tail call void @_Z16validate_targets5QuregPiiPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @__func__.applyMultiQubitMeasurement)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !38
  %i.b = call i64 @applyMultiQubitMeasurementAndGetProb(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef i64 @applyMultiQubitMeasurementAndGetProb(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::vector.16", align 8    ; 16 uses
  %5 = alloca %"class.std::function", align 8     ; 9 uses
  %6 = alloca %"class.std::vector.16", align 8    ; 7 uses
  %7 = alloca %"class.std::vector.16", align 8    ; 7 uses
  %8 = alloca %"class.std::vector", align 8       ; 12 uses
  %9 = alloca %"class.std::vector", align 8       ; 7 uses
  %10 = alloca %"class.std::vector", align 8      ; 12 uses
  %11 = alloca %"class.std::vector", align 8      ; 7 uses
  %12 = alloca %"class.std::vector", align 8      ; 11 uses
  tail call void @_Z20validate_quregFields5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.applyMultiQubitMeasurementAndGetProb)
  tail call void @_Z16validate_targets5QuregPiiPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @__func__.applyMultiQubitMeasurementAndGetProb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = zext i32 %2 to i64                       ; 4 uses
  %i.c = shl nuw i64 1, %i.b                      ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.g, align 8
  store i64 %i.d, ptr %5, align 8, !tbaa !46
  store ptr @"_ZNSt17_Function_handlerIFvvEZ36applyMultiQubitMeasurementAndGetProbE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.f, align 8, !tbaa !66
  store ptr @"_ZNSt17_Function_handlerIFvvEZ36applyMultiQubitMeasurementAndGetProbE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", ptr %i.e, align 8, !tbaa !67
  invoke void @_Z19util_tryAllocVectorRSt6vectorIdSaIdEExSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.c, ptr nofree noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.b unwind label %bb.az

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !67   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #18
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  %i.l = load ptr, ptr %4, align 8, !tbaa !41
  invoke void @calcProbsOfAllMultiQubitOutcomes(ptr noundef %i.l, ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef %1, i32 noundef %2)
          to label %bb.e unwind label %bb.bc

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43   ; 2 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !41     ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i, label %.noexc54, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp ugt i64 %i.r, 9223372036854775800
  br i1 %i.s, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !17

.noexc.i.i:                                       ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #16
          to label %.noexc unwind label %bb.bc

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #15
          to label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc54_crit_edge unwind label %bb.bc

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc54_crit_edge: ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %4, align 8, !tbaa !68    ; 2 uses
  %.pre145 = load ptr, ptr %i.m, align 8, !tbaa !68
  %.pre152 = ptrtoint ptr %.pre145 to i64
  %.pre153 = ptrtoint ptr %.pre to i64
  br label %.noexc54

.noexc54:                                         ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc54_crit_edge, %bb.e
  %.pre-phi154 = phi i64 [ %.pre153, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc54_crit_edge ], [ %i.q, %bb.e ]
  %.pre-phi = phi i64 [ %.pre152, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc54_crit_edge ], [ %i.p, %bb.e ]
  %i.u = phi ptr [ %.pre, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc54_crit_edge ], [ %i.o, %bb.e ] ; 2 uses
  %i.v = phi ptr [ %i.t, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc54_crit_edge ], [ null, %bb.e ] ; 6 uses
  store ptr %i.v, ptr %6, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.r
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !42
  %i.z = sub i64 %.pre-phi, %.pre-phi154          ; 4 uses
  %i.aa = icmp sgt i64 %i.z, 8
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !20

bb.g:                                             ; preds = %.noexc54
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.v, ptr align 8 %i.u, i64 %i.z, i1 false)
  br label %bb.j

bb.h:                                             ; preds = %.noexc54
  %i.ab = icmp eq i64 %i.z, 8
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = load double, ptr %i.u, align 8, !tbaa !38
  store double %i.ac, ptr %i.v, align 8, !tbaa !38
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ad = getelementptr inbounds i8, ptr %i.v, i64 %i.z
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !43
  invoke void @_Z38validate_measurementProbsAreNormalisedSt6vectorIdSaIdEEPKc(ptr nofree noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull @__func__.applyMultiQubitMeasurementAndGetProb)
          to label %bb.k unwind label %bb.bd

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %6, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !42
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #17
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.k, %bb.l
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !43  ; 2 uses
  %i.ak = load ptr, ptr %4, align 8, !tbaa !41    ; 3 uses
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %.not.i.i.i.i55 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i.i.i55, label %.noexc59, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.ao = icmp ugt i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %.noexc.i.i57, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i56, !prof !17

.noexc.i.i57:                                     ; preds = %bb.m
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #16
          to label %.noexc58 unwind label %bb.bf

.noexc58:                                         ; preds = %.noexc.i.i57
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i56: ; preds = %bb.m
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #15
          to label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i56..noexc59_crit_edge unwind label %bb.bf

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i56..noexc59_crit_edge: ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i56
  %.pre146 = load ptr, ptr %4, align 8, !tbaa !68 ; 2 uses
  %.pre147 = load ptr, ptr %i.m, align 8, !tbaa !68
  %.pre155 = ptrtoint ptr %.pre147 to i64
  %.pre157 = ptrtoint ptr %.pre146 to i64
  br label %.noexc59

.noexc59:                                         ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i56..noexc59_crit_edge, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %.pre-phi158 = phi i64 [ %.pre157, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i56..noexc59_crit_edge ], [ %i.am, %_ZNSt6vectorIdSaIdEED2Ev.exit ]
  %.pre-phi156 = phi i64 [ %.pre155, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i56..noexc59_crit_edge ], [ %i.al, %_ZNSt6vectorIdSaIdEED2Ev.exit ]
  %i.aq = phi ptr [ %.pre146, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i56..noexc59_crit_edge ], [ %i.ak, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 2 uses
  %i.ar = phi ptr [ %i.ap, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i56..noexc59_crit_edge ], [ null, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 6 uses
  store ptr %i.ar, ptr %7, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.an
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !42
  %i.av = sub i64 %.pre-phi156, %.pre-phi158      ; 4 uses
  %i.aw = icmp sgt i64 %i.av, 8
  br i1 %i.aw, label %bb.n, label %bb.o, !prof !20

bb.n:                                             ; preds = %.noexc59
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ar, ptr align 8 %i.aq, i64 %i.av, i1 false)
  br label %bb.q

bb.o:                                             ; preds = %.noexc59
  %i.ax = icmp eq i64 %i.av, 8
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ay = load double, ptr %i.aq, align 8, !tbaa !38
  store double %i.ay, ptr %i.ar, align 8, !tbaa !38
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.az = getelementptr inbounds i8, ptr %i.ar, i64 %i.av
  store ptr %i.az, ptr %i.as, align 8, !tbaa !43
  %i.ba = invoke noundef i64 @_Z31rand_getRandomMultiQubitOutcomeSt6vectorIdSaIdEE(ptr nofree noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.r unwind label %bb.bg      ; 4 uses

bb.r:                                             ; preds = %bb.q
  %i.bb = load ptr, ptr %7, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i61 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIdSaIdEED2Ev.exit62, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = load ptr, ptr %i.au, align 8, !tbaa !42
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bf) #17
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit62

_ZNSt6vectorIdSaIdEED2Ev.exit62:                  ; preds = %bb.r, %bb.s
  %i.bg = load ptr, ptr %4, align 8, !tbaa !41
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.ba
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !38
  store double %i.bi, ptr %3, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  invoke void @_Z14util_getVectorPii(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %8, ptr noundef %1, i32 noundef %2)
          to label %bb.t unwind label %bb.bi

bb.t:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit62
  %i.bj = sext i32 %2 to i64                      ; 3 uses
  %i.bk = icmp slt i32 %2, 0
  br i1 %i.bk, label %bb.u, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
          to label %.noexc64 unwind label %bb.bj

.noexc64:                                         ; preds = %bb.u
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.t
  %.not.i.i.i.i63 = icmp eq i32 %2, 0
  br i1 %.not.i.i.i.i63, label %_Z18getBitsFromIntegerPixi.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bl = shl nuw nsw i64 %i.bj, 2
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #15
          to label %.noexc65 unwind label %bb.bj  ; 6 uses

.noexc65:                                         ; preds = %bb.v
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bj
  store i32 0, ptr %i.bm, align 4, !tbaa !11
  %i.bo = getelementptr i8, ptr %i.bm, i64 4      ; 3 uses
  %i.bp = add nsw i64 %i.bj, -1                   ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.preheader, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc65
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bp, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.bo, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !11
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc65
  %.0.i.i.i.i.i.ph = phi ptr [ %i.bo, %.noexc65 ], [ %i.br, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader227, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.b, 2147483640               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.ba, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %i.bs = lshr <4 x i64> %broadcast.splat, %vec.ind
  %i.bt = lshr <4 x i64> %broadcast.splat, %step.add
  %i.bu = trunc <4 x i64> %i.bs to <4 x i32>
  %i.bv = trunc <4 x i64> %i.bt to <4 x i32>
  %i.bw = and <4 x i32> %i.bu, splat (i32 1)
  %i.bx = and <4 x i32> %i.bv, splat (i32 1)
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <4 x i32> %i.bw, ptr %i.by, align 4, !tbaa !11
  store <4 x i32> %i.bx, ptr %i.bz, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.b
  br i1 %cmp.n, label %_Z18getBitsFromIntegerPixi.exit.loopexit, label %.lr.ph.preheader227

.lr.ph.preheader227:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader227, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader227 ] ; 3 uses
  %i.cb = lshr i64 %i.ba, %indvars.iv
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = and i32 %i.cc, 1
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %_Z18getBitsFromIntegerPixi.exit.loopexit, label %.lr.ph, !llvm.loop !63

_Z18getBitsFromIntegerPixi.exit.loopexit:         ; preds = %.lr.ph, %middle.block
  %i.cf = ptrtoint ptr %i.bn to i64
  br label %_Z18getBitsFromIntegerPixi.exit

_Z18getBitsFromIntegerPixi.exit:                  ; preds = %_Z18getBitsFromIntegerPixi.exit.loopexit, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.0.i.i.i.i.i221 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %.0.i.i.i.i.i.ph, %_Z18getBitsFromIntegerPixi.exit.loopexit ] ; 4 uses
  %.sroa.18.0216 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cf, %_Z18getBitsFromIntegerPixi.exit.loopexit ] ; 2 uses
  %.sroa.0121.0211 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bm, %_Z18getBitsFromIntegerPixi.exit.loopexit ] ; 14 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !24
  %.not.not = icmp eq i32 %i.ch, 0
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !15 ; 2 uses
  %i.ck = load ptr, ptr %8, align 8, !tbaa !16    ; 4 uses
  %i.cl = ptrtoint ptr %i.cj to i64               ; 3 uses
  %i.cm = ptrtoint ptr %i.ck to i64               ; 3 uses
  %i.cn = sub i64 %i.cl, %i.cm                    ; 6 uses
  %.not.i.i.i.i76 = icmp eq ptr %i.cj, %i.ck      ; 2 uses
  br i1 %.not.not, label %bb.ah, label %bb.w

bb.w:                                             ; preds = %_Z18getBitsFromIntegerPixi.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i76, label %.noexc69, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.co = icmp ugt i64 %i.cn, 9223372036854775804
  br i1 %i.co, label %.noexc.i.i67, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !17

.noexc.i.i67:                                     ; preds = %bb.x
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #16
          to label %.noexc68 unwind label %bb.bk

.noexc68:                                         ; preds = %.noexc.i.i67
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.x
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #15
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc69_crit_edge unwind label %bb.bk

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc69_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %.pre148 = load ptr, ptr %8, align 8, !tbaa !18 ; 2 uses
  %.pre149 = load ptr, ptr %i.ci, align 8, !tbaa !18
  %.pre163 = ptrtoint ptr %.pre149 to i64
  %.pre165 = ptrtoint ptr %.pre148 to i64
  br label %.noexc69

.noexc69:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc69_crit_edge, %bb.w
  %.pre-phi166 = phi i64 [ %.pre165, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc69_crit_edge ], [ %i.cm, %bb.w ]
  %.pre-phi164 = phi i64 [ %.pre163, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc69_crit_edge ], [ %i.cl, %bb.w ]
  %i.cq = phi ptr [ %.pre148, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc69_crit_edge ], [ %i.ck, %bb.w ] ; 2 uses
  %i.cr = phi ptr [ %i.cp, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc69_crit_edge ], [ null, %bb.w ] ; 5 uses
  store ptr %i.cr, ptr %9, align 8, !tbaa !16
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cn
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !19
  %i.cv = sub i64 %.pre-phi164, %.pre-phi166      ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.y, label %bb.z, !prof !20

bb.y:                                             ; preds = %.noexc69
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cr, ptr align 4 %i.cq, i64 %i.cv, i1 false)
  br label %bb.ab

bb.z:                                             ; preds = %.noexc69
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cy = load i32, ptr %i.cq, align 4, !tbaa !11
  store i32 %i.cy, ptr %i.cr, align 4, !tbaa !11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.cz = getelementptr inbounds i8, ptr %i.cr, i64 %i.cv
  store ptr %i.cz, ptr %i.cs, align 8, !tbaa !15
  %i.da = ptrtoint ptr %.0.i.i.i.i.i221 to i64
  %i.db = ptrtoint ptr %.sroa.0121.0211 to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %.not.i.i.i.i70 = icmp eq ptr %.0.i.i.i.i.i221, %.sroa.0121.0211
  br i1 %.not.i.i.i.i70, label %.thread, label %bb.ac

.thread:                                          ; preds = %bb.ab
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.de = getelementptr inbounds i8, ptr null, i64 %i.dc ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  store ptr %i.de, ptr %i.df, align 8, !tbaa !19
  br label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.dg = icmp ugt i64 %i.dc, 9223372036854775804
  br i1 %i.dg, label %.noexc.i.i72, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i71, !prof !17

.noexc.i.i72:                                     ; preds = %bb.ac
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #16
          to label %.noexc73 unwind label %bb.bl

.noexc73:                                         ; preds = %.noexc.i.i72
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i71: ; preds = %bb.ac
  %i.dh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #15
          to label %.noexc74 unwind label %bb.bl  ; 5 uses

.noexc74:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i71
  store ptr %i.dh, ptr %10, align 8, !tbaa !16
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !15
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dc ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !19
  %i.dl = icmp samesign ugt i64 %i.dc, 4
  br i1 %i.dl, label %bb.ad, label %bb.ae, !prof !69

bb.ad:                                            ; preds = %.noexc74
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dh, ptr align 4 %.sroa.0121.0211, i64 %i.dc, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %.noexc74
  %i.dm = icmp eq i64 %i.dc, 4
  br i1 %i.dm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dn = load i32, ptr %.sroa.0121.0211, align 4, !tbaa !11
  store i32 %i.dn, ptr %i.dh, align 4, !tbaa !11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %.thread
  %i.do = phi ptr [ %i.dj, %bb.ad ], [ %i.dj, %bb.ae ], [ %i.dj, %bb.af ], [ %i.de, %.thread ]
  %i.dp = phi ptr [ %i.di, %bb.ad ], [ %i.di, %bb.ae ], [ %i.di, %bb.af ], [ %i.dd, %.thread ]
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !15
  %i.dq = load double, ptr %3, align 8, !tbaa !38
  invoke void @_Z38localiser_densmatr_multiQubitProjector5QuregSt6vectorIiSaIiEES2_d(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %9, ptr nofree noundef nonnull align 8 dereferenceable(24) %10, double noundef %i.dq)
          to label %.critedge53 unwind label %bb.bq

bb.ah:                                            ; preds = %_Z18getBitsFromIntegerPixi.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i76, label %.noexc80, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dr = icmp ugt i64 %i.cn, 9223372036854775804
  br i1 %i.dr, label %.noexc.i.i78, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i77, !prof !17

.noexc.i.i78:                                     ; preds = %bb.ai
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #16
          to label %.noexc79 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit110.thread138

.noexc79:                                         ; preds = %.noexc.i.i78
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i77: ; preds = %bb.ai
  %i.ds = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #15
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i77..noexc80_crit_edge unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit110.thread138

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i77..noexc80_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i77
  %.pre150 = load ptr, ptr %8, align 8, !tbaa !18 ; 2 uses
  %.pre151 = load ptr, ptr %i.ci, align 8, !tbaa !18
  %.pre159 = ptrtoint ptr %.pre151 to i64
  %.pre161 = ptrtoint ptr %.pre150 to i64
  br label %.noexc80

.noexc80:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i77..noexc80_crit_edge, %bb.ah
  %.pre-phi162 = phi i64 [ %.pre161, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i77..noexc80_crit_edge ], [ %i.cm, %bb.ah ]
  %.pre-phi160 = phi i64 [ %.pre159, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i77..noexc80_crit_edge ], [ %i.cl, %bb.ah ]
  %i.dt = phi ptr [ %.pre150, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i77..noexc80_crit_edge ], [ %i.ck, %bb.ah ] ; 2 uses
  %i.du = phi ptr [ %i.ds, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i77..noexc80_crit_edge ], [ null, %bb.ah ] ; 5 uses
  store ptr %i.du, ptr %11, align 8, !tbaa !16
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.cn
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !19
  %i.dy = sub i64 %.pre-phi160, %.pre-phi162      ; 4 uses
  %i.dz = icmp sgt i64 %i.dy, 4
  br i1 %i.dz, label %bb.aj, label %bb.ak, !prof !20

bb.aj:                                            ; preds = %.noexc80
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.du, ptr align 4 %i.dt, i64 %i.dy, i1 false)
  br label %bb.am

bb.ak:                                            ; preds = %.noexc80
  %i.ea = icmp eq i64 %i.dy, 4
  br i1 %i.ea, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.eb = load i32, ptr %i.dt, align 4, !tbaa !11
  store i32 %i.eb, ptr %i.du, align 4, !tbaa !11
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.ec = getelementptr inbounds i8, ptr %i.du, i64 %i.dy
  store ptr %i.ec, ptr %i.dv, align 8, !tbaa !15
  %i.ed = ptrtoint ptr %.0.i.i.i.i.i221 to i64
  %i.ee = ptrtoint ptr %.sroa.0121.0211 to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i82 = icmp eq ptr %.0.i.i.i.i.i221, %.sroa.0121.0211
end_hunk_0
