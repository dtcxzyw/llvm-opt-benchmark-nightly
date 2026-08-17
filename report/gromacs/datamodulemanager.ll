inline.NumInlined: 416
inline.NumDeleted: 198
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt6vectorIN3gmx25AnalysisDataModuleManager4Impl10ModuleInfoESaIS3_EE17_M_realloc_insertIJRKSt10shared_ptrINS0_19IAnalysisDataModuleEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a

_ZNSt6vectorIN3gmx25AnalysisDataModuleManager4Impl10ModuleInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34: ; preds = %.lr.ph.i.i.i29, %_ZNSt6vectorIN3gmx25AnalysisDataModuleManager4Impl10ModuleInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.ai, %_ZNSt6vectorIN3gmx25AnalysisDataModuleManager4Impl10ModuleInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ap, %.lr.ph.i.i.i29 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN3gmx25AnalysisDataModuleManager4Impl10ModuleInfoESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN3gmx25AnalysisDataModuleManager4Impl10ModuleInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !82
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.at) #21
  br label %_ZNSt12_Vector_baseIN3gmx25AnalysisDataModuleManager4Impl10ModuleInfoESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN3gmx25AnalysisDataModuleManager4Impl10ModuleInfoESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN3gmx25AnalysisDataModuleManager4Impl10ModuleInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !78
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !79
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.l
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !82
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx25AnalysisDataModuleManager11applyModuleEPNS_20AbstractAnalysisDataEPNS_19IAnalysisDataModuleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !76     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i8, ptr %i.b, align 1, !tbaa !65, !range !66, !noundef !67
  %i.d = trunc nuw i8 %i.c to i1
  tail call void @_ZN3gmx25AnalysisDataModuleManager4Impl19checkModulePropertyERKNS_19IAnalysisDataModuleENS0_12DataPropertyEb(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i1 noundef zeroext %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.f = load i8, ptr %i.e, align 1, !tbaa !65, !range !66, !noundef !67
  %i.g = trunc nuw i8 %i.f to i1
  tail call void @_ZN3gmx25AnalysisDataModuleManager4Impl19checkModulePropertyERKNS_19IAnalysisDataModuleENS0_12DataPropertyEb(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 1, i1 noundef zeroext %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.i = load i8, ptr %i.h, align 1, !tbaa !65, !range !66, !noundef !67
  %i.j = trunc nuw i8 %i.i to i1
  tail call void @_ZN3gmx25AnalysisDataModuleManager4Impl19checkModulePropertyERKNS_19IAnalysisDataModuleENS0_12DataPropertyEb(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 2, i1 noundef zeroext %i.j)
  %i.k = load ptr, ptr %0, align 8, !tbaa !76     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = icmp eq i32 %i.m, 3
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx25AnalysisDataModuleManager11applyModuleEPNS_20AbstractAnalysisDataEPNS_19IAnalysisDataModuleEENK3$_0clEv", ptr noundef nonnull @.str.1, i32 noundef 293) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNK3gmx25AnalysisDataModuleManager4Impl11presentDataEPNS_20AbstractAnalysisDataEPNS_19IAnalysisDataModuleE(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef %1, ptr noundef nonnull %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK3gmx25AnalysisDataModuleManager16hasSerialModulesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.c = load i8, ptr %i.b, align 4, !tbaa !19, !range !66, !noundef !67
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx25AnalysisDataModuleManager15notifyDataStartEPNS_20AbstractAnalysisDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZNK3gmx20AbstractAnalysisData12dataSetCountEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %.not21 = icmp eq i64 %i.e, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.17, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx25AnalysisDataModuleManager15notifyDataStartEPNS_20AbstractAnalysisDataEENK3$_0clEv", ptr noundef nonnull @.str.1, i32 noundef 309) #18
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw i64 %.015, 1                     ; 2 uses
  %i.g = tail call noundef i64 @_ZNK3gmx20AbstractAnalysisData12dataSetCountEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !llvm.loop !102

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.i = load ptr, ptr %0, align 8, !tbaa !76     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 1, ptr %i.j, align 8, !tbaa !21
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !83   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83   ; 2 uses
  %i.n = icmp ne ptr %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.p = zext i1 %i.n to i8
  store i8 %i.p, ptr %i.o, align 4, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 29
  store i8 0, ptr %i.q, align 1, !tbaa !20
  %.not1416 = icmp eq ptr %i.k, %i.m
  br i1 %.not1416, label %._crit_edge20, label %.lr.ph19

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.015 = phi i64 [ %i.f, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %i.r = tail call noundef i64 @_ZNK3gmx20AbstractAnalysisData11columnCountEm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.015)
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx25AnalysisDataModuleManager15notifyDataStartEPNS_20AbstractAnalysisDataEENK3$_0clEv", ptr noundef nonnull @.str.1, i32 noundef 312) #18
  unreachable

.lr.ph19:                                         ; preds = %._crit_edge, %.lr.ph19
  %i.s = phi ptr [ %i.ai, %.lr.ph19 ], [ %i.i, %._crit_edge ] ; 3 uses
  %.sroa.08.017 = phi ptr [ %i.ah, %.lr.ph19 ], [ %i.k, %._crit_edge ] ; 3 uses
  %i.t = load ptr, ptr %.sroa.08.017, align 8, !tbaa !84 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.v = load i8, ptr %i.u, align 1, !tbaa !65, !range !66, !noundef !67
  %i.w = trunc nuw i8 %i.v to i1
  tail call void @_ZN3gmx25AnalysisDataModuleManager4Impl19checkModulePropertyERKNS_19IAnalysisDataModuleENS0_12DataPropertyEb(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 noundef 0, i1 noundef zeroext %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 25
  %i.y = load i8, ptr %i.x, align 1, !tbaa !65, !range !66, !noundef !67
  %i.z = trunc nuw i8 %i.y to i1
  tail call void @_ZN3gmx25AnalysisDataModuleManager4Impl19checkModulePropertyERKNS_19IAnalysisDataModuleENS0_12DataPropertyEb(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 noundef 1, i1 noundef zeroext %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 26
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !65, !range !66, !noundef !67
  %i.ac = trunc nuw i8 %i.ab to i1
  tail call void @_ZN3gmx25AnalysisDataModuleManager4Impl19checkModulePropertyERKNS_19IAnalysisDataModuleENS0_12DataPropertyEb(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 noundef 2, i1 noundef zeroext %i.ac)
  %i.ad = load ptr, ptr %.sroa.08.017, align 8, !tbaa !84 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull %1)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.08.017, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !76    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !83
  %.not14 = icmp eq ptr %i.ah, %i.ak
  br i1 %.not14, label %._crit_edge20, label %.lr.ph19, !llvm.loop !103

._crit_edge20:                                    ; preds = %.lr.ph19, %._crit_edge
  ret void
}

declare noundef i64 @_ZNK3gmx20AbstractAnalysisData12dataSetCountEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #11

declare noundef i64 @_ZNK3gmx20AbstractAnalysisData11columnCountEm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx25AnalysisDataModuleManager23notifyParallelDataStartEPNS_20AbstractAnalysisDataERKNS_27AnalysisDataParallelOptionsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZNK3gmx20AbstractAnalysisData12dataSetCountEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %.not22 = icmp eq i64 %i.e, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.17, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx25AnalysisDataModuleManager23notifyParallelDataStartEPNS_20AbstractAnalysisDataERKNS_27AnalysisDataParallelOptionsEENK3$_0clEv", ptr noundef nonnull @.str.1, i32 noundef 334) #18
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw i64 %.016, 1                     ; 2 uses
  %i.g = tail call noundef i64 @_ZNK3gmx20AbstractAnalysisData12dataSetCountEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !llvm.loop !104

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.i = load ptr, ptr %0, align 8, !tbaa !76     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 1, ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i8 0, ptr %i.k, align 4, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 29
  store i8 0, ptr %i.l, align 1, !tbaa !20
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !83   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !83
  %.not1517 = icmp eq ptr %i.m, %i.o
  br i1 %.not1517, label %._crit_edge21, label %.lr.ph20

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.016 = phi i64 [ %i.f, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %i.p = tail call noundef i64 @_ZNK3gmx20AbstractAnalysisData11columnCountEm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.016)
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx25AnalysisDataModuleManager23notifyParallelDataStartEPNS_20AbstractAnalysisDataERKNS_27AnalysisDataParallelOptionsEENK3$_0clEv", ptr noundef nonnull @.str.1, i32 noundef 337) #18
  unreachable

.lr.ph20:                                         ; preds = %._crit_edge, %7
  %i.q = phi ptr [ %i.ai, %7 ], [ %i.i, %._crit_edge ] ; 3 uses
  %.sroa.07.018 = phi ptr [ %8, %7 ], [ %i.m, %._crit_edge ] ; 4 uses
  %i.r = load ptr, ptr %.sroa.07.018, align 8, !tbaa !84 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = load i8, ptr %i.s, align 1, !tbaa !65, !range !66, !noundef !67
  %i.u = trunc nuw i8 %i.t to i1
  tail call void @_ZN3gmx25AnalysisDataModuleManager4Impl19checkModulePropertyERKNS_19IAnalysisDataModuleENS0_12DataPropertyEb(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef 0, i1 noundef zeroext %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 25
  %i.w = load i8, ptr %i.v, align 1, !tbaa !65, !range !66, !noundef !67
  %i.x = trunc nuw i8 %i.w to i1
  tail call void @_ZN3gmx25AnalysisDataModuleManager4Impl19checkModulePropertyERKNS_19IAnalysisDataModuleENS0_12DataPropertyEb(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef 1, i1 noundef zeroext %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 26
  %i.z = load i8, ptr %i.y, align 1, !tbaa !65, !range !66, !noundef !67
  %i.aa = trunc nuw i8 %i.z to i1
  tail call void @_ZN3gmx25AnalysisDataModuleManager4Impl19checkModulePropertyERKNS_19IAnalysisDataModuleENS0_12DataPropertyEb(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef 2, i1 noundef zeroext %i.aa)
  %i.ab = load ptr, ptr %.sroa.07.018, align 8, !tbaa !84 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.07.018, i64 16
  %i.ah = zext i1 %i.af to i8
  store i8 %i.ah, ptr %i.ag, align 8, !tbaa !88
  %i.ai = load ptr, ptr %0, align 8, !tbaa !76    ; 4 uses
  br i1 %i.af, label %3, label %5

3:                                                ; preds = %.lr.ph20
  %4 = getelementptr inbounds nuw i8, ptr %i.ai, i64 29
  store i8 1, ptr %4, align 1, !tbaa !20
  br label %7

5:                                                ; preds = %.lr.ph20
  %6 = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i8 1, ptr %6, align 4, !tbaa !19
  br label %7

7:                                                ; preds = %3, %5
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.07.018, i64 24 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  %.not15 = icmp eq ptr %8, %10
  br i1 %.not15, label %._crit_edge21, label %.lr.ph20, !llvm.loop !105

._crit_edge21:                                    ; preds = %7, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx25AnalysisDataModuleManager16notifyFrameStartERKNS_23AnalysisDataFrameHeaderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !76     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 2, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i8, ptr %i.c, align 4, !tbaa !19, !range !66, !noundef !67
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83
  %.not8 = icmp eq ptr %i.f, %i.h
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %i.i = phi ptr [ %i.q, %bb.d ], [ %i.a, %bb.b ]
  %.sroa.04.09 = phi ptr [ %i.r, %bb.d ], [ %i.f, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.09, i64 16
  %i.k = load i8, ptr %i.j, align 8, !tbaa !88, !range !66, !noundef !67
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = load ptr, ptr %.sroa.04.09, align 8, !tbaa !84 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %1)
  %.pre = load ptr, ptr %0, align 8, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.q = phi ptr [ %i.i, %.lr.ph ], [ %.pre, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.09, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !83
  %.not = icmp eq ptr %i.r, %i.t
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !106

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx25AnalysisDataModuleManager24notifyParallelFrameStartERKNS_23AnalysisDataFrameHeaderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !76     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 29
  %i.c = load i8, ptr %i.b, align 1, !tbaa !20, !range !66, !noundef !67
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83
  %.not8 = icmp eq ptr %i.e, %i.g
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %i.h = phi ptr [ %i.p, %bb.d ], [ %i.a, %bb.b ]
  %.sroa.04.09 = phi ptr [ %i.q, %bb.d ], [ %i.e, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.09, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !88, !range !66, !noundef !67
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr %.sroa.04.09, align 8, !tbaa !84 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 4 dereferenceable(12) %1)
  %.pre = load ptr, ptr %0, align 8, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.p = phi ptr [ %i.h, %.lr.ph ], [ %.pre, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.09, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !83
  %.not = icmp eq ptr %i.q, %i.s
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !107

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx25AnalysisDataModuleManager15notifyPointsAddERKNS_23AnalysisDataPointSetRefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::APIError", align 8     ; 4 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !76     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.c = load i8, ptr %i.b, align 4, !tbaa !19, !range !66, !noundef !67
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 27
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9, !range !66, !noundef !67
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_ZNK3gmx23AnalysisDataPointSetRef10allPresentEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.h, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !76
  br label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 24) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull @.str.5)
          to label %bb.e unwind label %.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.f unwind label %.thread22

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx8APIErrorE, i64 16), ptr %2, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %4, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @__PRETTY_FUNCTION__._ZNK3gmx25AnalysisDataModuleManager15notifyPointsAddERKNS_23AnalysisDataPointSetRefE, ptr %i.j, align 8, !tbaa !25
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !25
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 411, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !27
  invoke void @_ZN3gmxlsINS_8APIErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::APIError") align 8 %i.i, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr %i.i, ptr nonnull @_ZTIN3gmx8APIErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #18
          to label %bb.n unwind label %bb.h

.thread:                                          ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread22:                                        ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #19
  br label %.sink.split

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.f ]
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #19
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br i1 %.0, label %bb.i, label %bb.m

.sink.split:                                      ; preds = %.thread, %.thread22
  %.pn.pn21.ph = phi { ptr, i32 } [ %i.l, %.thread22 ], [ %i.k, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h
  %.pn.pn21 = phi { ptr, i32 } [ %i.m, %bb.h ], [ %.pn.pn21.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.i) #19
  br label %bb.m

bb.j:                                             ; preds = %._crit_edge, %bb.b
  %i.n = phi ptr [ %.pre, %._crit_edge ], [ %i.a, %bb.b ] ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !83   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83
  %.not25 = icmp eq ptr %i.o, %i.q
  br i1 %.not25, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.l
  %i.r = phi ptr [ %i.z, %bb.l ], [ %i.n, %bb.j ]
  %.sroa.013.026 = phi ptr [ %i.aa, %bb.l ], [ %i.o, %bb.j ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.026, i64 16
  %i.t = load i8, ptr %i.s, align 8, !tbaa !88, !range !66, !noundef !67
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.v = load ptr, ptr %.sroa.013.026, align 8, !tbaa !84 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
end_hunk_0
