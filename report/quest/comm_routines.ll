Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/comm_routines?download=true
inline.NumInlined: 95
inline.NumDeleted: 46
begin_hunk_0_@_Z24comm_asynchSendSubBuffer5Quregxi:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_Z22asynchSendGpuSubBuffer5Quregxi.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z25comm_receiveArrayToBuffer5Quregxi(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.1.0.copyload = load i64, ptr %.sroa.1.0..sroa_idx, align 8, !tbaa !10
  %i.a = sdiv i64 %.sroa.1.0.copyload, 2          ; 2 uses
  tail call void @_Z25assert_commBoundsAreValid5Quregxxx(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, i64 noundef %i.a, i64 noundef 0, i64 noundef %1)
  tail call void @_Z35assert_bufferSendRecvDoesNotOverlapxxx(i64 noundef %i.a, i64 noundef 0, i64 noundef %1)
  tail call void @_Z29assert_commQuregIsDistributed5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  tail call void @_Z25assert_pairRankIsDistinct5Quregi(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, i32 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %i.d = tail call noundef zeroext i1 @_Z27gpu_isDirectGpuCommPossiblev()
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_Z30error_commButEnvNotDistributedv()
  br label %_Z23receiveArrayToGpuBuffer5Quregxi.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_Z30error_commButEnvNotDistributedv()
  tail call void @_Z16gpu_copyCpuToGpu5QuregPSt7complexIdES2_x(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef %.sroa.3.0.copyload, ptr noundef %.sroa.4.0.copyload, i64 noundef %1)
  br label %_Z23receiveArrayToGpuBuffer5Quregxi.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_Z30error_commButEnvNotDistributedv()
  br label %_Z23receiveArrayToGpuBuffer5Quregxi.exit

_Z23receiveArrayToGpuBuffer5Quregxi.exit:         ; preds = %bb.d, %bb.c, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z26comm_combineAmpsIntoBuffer5QuregS_(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z29assert_commQuregIsDistributed5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  tail call void @_Z29assert_commQuregIsDistributed5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %1)
  tail call void @_Z39assert_receiverCanFitSendersEntireState5QuregS_(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !18
  %i.g = icmp ne i32 %i.f, 0                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp ne i32 %i.i, 0                      ; 2 uses
  %or.cond = select i1 %i.g, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_Z27gpu_isDirectGpuCommPossiblev()
  br i1 %i.k, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void @_Z8gpu_syncv()
  tail call void @_Z30error_commButEnvNotDistributedv()
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  br i1 %i.j, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.b, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15
  tail call void @_Z16gpu_copyGpuToCpu5QuregPSt7complexIdES2_x(ptr noundef nonnull byval(%struct.Qureg) align 8 %1, ptr noundef %i.m, ptr noundef %i.o, i64 noundef %i.b)
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  tail call void @_Z30error_commButEnvNotDistributedv()
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17
  tail call void @_Z16gpu_copyCpuToGpu5QuregPSt7complexIdES2_x(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef %i.q, ptr noundef %i.s, i64 noundef %i.d)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  ret void
}

declare void @_Z39assert_receiverCanFitSendersEntireState5QuregS_(ptr noundef byval(%struct.Qureg) align 8, ptr noundef byval(%struct.Qureg) align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z27comm_combineElemsIntoBuffer5Qureg17FullStateDiagMatr(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.FullStateDiagMatr) align 8 captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z29assert_commQuregIsDistributed5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  tail call void @_Z41assert_commFullStateDiagMatrIsDistributed17FullStateDiagMatr(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %1)
  tail call void @_Z39assert_receiverCanFitSendersEntireElems5Qureg17FullStateDiagMatr(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18
  %i.e = icmp ne i32 %i.d, 0                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp ne i32 %i.g, 0
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_Z27gpu_isDirectGpuCommPossiblev()
  br i1 %i.i, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  tail call void @_Z30error_commButEnvNotDistributedv()
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @_Z8gpu_syncv()
  tail call void @_Z30error_commButEnvNotDistributedv()
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @_Z30error_commButEnvNotDistributedv()
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  tail call void @_Z16gpu_copyCpuToGpu5QuregPSt7complexIdES2_x(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef %i.k, ptr noundef %i.m, i64 noundef %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

declare void @_Z41assert_commFullStateDiagMatrIsDistributed17FullStateDiagMatr(ptr noundef byval(%struct.FullStateDiagMatr) align 8) local_unnamed_addr #1

declare void @_Z39assert_receiverCanFitSendersEntireElems5Qureg17FullStateDiagMatr(ptr noundef byval(%struct.Qureg) align 8, ptr noundef byval(%struct.FullStateDiagMatr) align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z26comm_exchangeAmpsToBuffers5Quregi(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z29assert_commQuregIsDistributed5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  tail call void @_Z25assert_pairRankIsDistinct5Quregi(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, i32 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19
  tail call void @_Z26comm_exchangeAmpsToBuffers5Quregxxxi(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, i64 noundef 0, i64 noundef 0, i64 noundef %i.b, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z17comm_broadcastAmpiPSt7complexIdE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z30error_commButEnvNotDistributedv()
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z19comm_sendAmpsToRootiPSt7complexIdES1_x(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z30error_commButEnvNotDistributedv()
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z26comm_broadcastIntsFromRootPix(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z30error_commButEnvNotDistributedv()
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z31comm_broadcastUnsignedsFromRootPjx(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z30error_commButEnvNotDistributedv()
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z21comm_combineSubArraysPSt7complexIdESt6vectorIxSaIxEES4_S4_(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !27     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i, !prof !28

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #7
  unreachable

_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #8
  %.pre = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %.pre42 = load ptr, ptr %i.a, align 8, !tbaa !29
  %.pre47 = ptrtoint ptr %.pre42 to i64
  %.pre48 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi49 = phi i64 [ %.pre48, %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre47, %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ]
  %i.i = phi ptr [ %.pre, %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.h, %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  %i.k = sub i64 %.pre-phi, %.pre-phi49           ; 3 uses
  %i.l = icmp sgt i64 %i.k, 8
  br i1 %i.l, label %bb.d, label %bb.e, !prof !30

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.j, ptr align 8 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.k, 8
  br i1 %i.m, label %bb.f, label %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %i.i, align 8, !tbaa !10
  store i64 %i.n, ptr %i.j, align 8, !tbaa !10
  br label %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit

_ZNSt6vectorIxSaIxEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26   ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !27     ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.p, %i.q
  br i1 %.not.i.i.i.i8, label %.noexc11, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit
  %i.u = icmp ugt i64 %i.t, 9223372036854775800
  br i1 %i.u, label %.noexc.i.i10, label %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i9, !prof !28

.noexc.i.i10:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #7
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %.noexc.i.i10
  unreachable

_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i9: ; preds = %bb.g
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #8
          to label %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i9..noexc11_crit_edge unwind label %bb.r

_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i9..noexc11_crit_edge: ; preds = %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i9
  %.pre43 = load ptr, ptr %2, align 8, !tbaa !29  ; 2 uses
  %.pre44 = load ptr, ptr %i.o, align 8, !tbaa !29
  %.pre50 = ptrtoint ptr %.pre44 to i64
  %.pre52 = ptrtoint ptr %.pre43 to i64
  br label %.noexc11

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i9..noexc11_crit_edge, %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit
  %.pre-phi53 = phi i64 [ %.pre52, %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i9..noexc11_crit_edge ], [ %i.s, %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit ]
  %.pre-phi51 = phi i64 [ %.pre50, %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i9..noexc11_crit_edge ], [ %i.r, %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit ]
  %i.w = phi ptr [ %.pre43, %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i9..noexc11_crit_edge ], [ %i.q, %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit ] ; 2 uses
  %i.x = phi ptr [ %i.v, %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i9..noexc11_crit_edge ], [ null, %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit ] ; 6 uses
  %i.y = sub i64 %.pre-phi51, %.pre-phi53         ; 3 uses
  %i.z = icmp sgt i64 %i.y, 8
  br i1 %i.z, label %bb.h, label %bb.i, !prof !30

bb.h:                                             ; preds = %.noexc11
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.x, ptr align 8 %i.w, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit12

bb.i:                                             ; preds = %.noexc11
  %i.aa = icmp eq i64 %i.y, 8
  br i1 %i.aa, label %bb.j, label %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit12

bb.j:                                             ; preds = %bb.i
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !10
  store i64 %i.ab, ptr %i.x, align 8, !tbaa !10
  br label %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit12

_ZNSt6vectorIxSaIxEEC2ERKS1_.exit12:              ; preds = %bb.j, %bb.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %i.ae = load ptr, ptr %3, align 8, !tbaa !27    ; 3 uses
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i.i.i13, label %.noexc17, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit12
  %i.ai = icmp ugt i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %.noexc.i.i15, label %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i14, !prof !28

.noexc.i.i15:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #7
          to label %.noexc16 unwind label %bb.s

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i14: ; preds = %bb.k
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #8
          to label %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i14..noexc17_crit_edge unwind label %bb.s

_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i14..noexc17_crit_edge: ; preds = %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i14
  %.pre45 = load ptr, ptr %3, align 8, !tbaa !29  ; 2 uses
  %.pre46 = load ptr, ptr %i.ac, align 8, !tbaa !29
  %.pre54 = ptrtoint ptr %.pre46 to i64
  %.pre56 = ptrtoint ptr %.pre45 to i64
  br label %.noexc17

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i14..noexc17_crit_edge, %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit12
  %.pre-phi57 = phi i64 [ %.pre56, %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i14..noexc17_crit_edge ], [ %i.ag, %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit12 ]
  %.pre-phi55 = phi i64 [ %.pre54, %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i14..noexc17_crit_edge ], [ %i.af, %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit12 ]
  %i.ak = phi ptr [ %.pre45, %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i14..noexc17_crit_edge ], [ %i.ae, %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit12 ] ; 2 uses
  %i.al = phi ptr [ %i.aj, %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i14..noexc17_crit_edge ], [ null, %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit12 ] ; 6 uses
  %i.am = sub i64 %.pre-phi55, %.pre-phi57        ; 3 uses
  %i.an = icmp sgt i64 %i.am, 8
  br i1 %i.an, label %bb.l, label %bb.m, !prof !30

bb.l:                                             ; preds = %.noexc17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.al, ptr align 8 %i.ak, i64 %i.am, i1 false)
  br label %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit18

bb.m:                                             ; preds = %.noexc17
  %i.ao = icmp eq i64 %i.am, 8
  br i1 %i.ao, label %bb.n, label %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit18

bb.n:                                             ; preds = %bb.m
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !10
  store i64 %i.ap, ptr %i.al, align 8, !tbaa !10
  br label %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit18

_ZNSt6vectorIxSaIxEEC2ERKS1_.exit18:              ; preds = %bb.n, %bb.m, %bb.l
  invoke void @_Z30error_commButEnvNotDistributedv()
          to label %_Z34globallyCombineNonUniformSubArraysPSt7complexIdES1_St6vectorIxSaIxEES4_S4_b.exit unwind label %bb.t

_Z34globallyCombineNonUniformSubArraysPSt7complexIdES1_St6vectorIxSaIxEES4_S4_b.exit: ; preds = %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit18
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_Z34globallyCombineNonUniformSubArraysPSt7complexIdES1_St6vectorIxSaIxEES4_S4_b.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ah) #9
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %_Z34globallyCombineNonUniformSubArraysPSt7complexIdES1_St6vectorIxSaIxEES4_S4_b.exit, %bb.o
  %.not.i.i.i20 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIxSaIxEED2Ev.exit21, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.t) #9
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit21

_ZNSt6vectorIxSaIxEED2Ev.exit21:                  ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit, %bb.p
  %.not.i.i.i22 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIxSaIxEED2Ev.exit23, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #9
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit23

_ZNSt6vectorIxSaIxEED2Ev.exit23:                  ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit21, %bb.q
  ret void

bb.r:                                             ; preds = %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i9, %.noexc.i.i10
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit27

bb.s:                                             ; preds = %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i14, %.noexc.i.i15
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit25

bb.t:                                             ; preds = %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit18
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIxSaIxEED2Ev.exit25, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ah) #9
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit25

_ZNSt6vectorIxSaIxEED2Ev.exit25:                  ; preds = %bb.u, %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.s ], [ %i.as, %bb.t ], [ %i.as, %bb.u ] ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIxSaIxEED2Ev.exit27, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.t) #9
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit27

_ZNSt6vectorIxSaIxEED2Ev.exit27:                  ; preds = %bb.v, %_ZNSt6vectorIxSaIxEED2Ev.exit25, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.r ], [ %.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit25 ], [ %.pn, %bb.v ]
  %.not.i.i.i28 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIxSaIxEED2Ev.exit29, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #9
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit29

_ZNSt6vectorIxSaIxEED2Ev.exit29:                  ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit27, %bb.w
  resume { ptr, i32 } %.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_Z14comm_reduceAmpPSt7complexIdE(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z30error_commButEnvNotDistributedv()
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z15comm_reduceRealPd(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z30error_commButEnvNotDistributedv()
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z16comm_reduceRealsPdx(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z30error_commButEnvNotDistributedv()
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z21comm_isTrueOnAllNodesb(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z30error_commButEnvNotDistributedv()
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z21comm_isTrueOnRootNodeb(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z30error_commButEnvNotDistributedv()
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define void @_Z24comm_gatherStringsToRootB5cxx11Pci(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.1") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z30error_commButEnvNotDistributedv()
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn }
attributes #8 = { builtin allocsize(0) }
attributes #9 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long long", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTSSt7complexIdE", !11, i64 0}
!13 = !{!"_ZTS5Qureg", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96}
!14 = !{!13, !12, i64 80}
!15 = !{!13, !12, i64 72}
!16 = !{!13, !12, i64 88}
!17 = !{!13, !12, i64 96}
!18 = !{!13, !6, i64 4}
!19 = !{!13, !9, i64 48}
!20 = !{!13, !9, i64 32}
!21 = !{!"p1 int", !11, i64 0}
!22 = !{!"_ZTS17FullStateDiagMatr", !6, i64 0, !9, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !9, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !12, i64 80, !12, i64 88}
!23 = !{!22, !9, i64 8}
!24 = !{!"p1 long long", !11, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!25, !24, i64 8}
!27 = !{!25, !24, i64 0}
!28 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!29 = !{!24, !24, i64 0}
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
