Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/mainwindow?download=true
inline.NumInlined: 709
inline.NumDeleted: 282
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN11CMainWindow11slotSaveLogEv:bb.a
    i32 -1, label %_ZN7QStringD2Ev.exit107
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i103:         ; preds = %bb.aj
  %i.by = atomicrmw sub ptr %i.bw, i32 1 seq_cst, align 4
  %.not.i104 = icmp eq i32 %i.by, 1
  br i1 %.not.i104, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i105, label %_ZN7QStringD2Ev.exit107

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i105: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i103
  %.pre.i106 = load ptr, ptr %16, align 8, !tbaa !17
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i102

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i102: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i105, %bb.aj
  %i.bz = phi ptr [ %.pre.i106, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i105 ], [ %i.bw, %bb.aj ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.bz, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit107

_ZN7QStringD2Ev.exit107:                          ; preds = %bb.aj, %_ZN9QtPrivate8RefCount5derefEv.exit.i103, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @_ZN11QTextStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN7QStringD2Ev.exit107, %_ZN7QStringD2Ev.exit101
  call void @_ZN5QFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %.pre = load ptr, ptr %5, align 8, !tbaa !17
  br label %bb.as

bb.al:                                            ; preds = %bb.ag
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.am:                                            ; preds = %bb.ah
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.ai
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn24 = phi { ptr, i32 } [ %i.cc, %bb.an ], [ %i.cb, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @_ZN11QTextStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #17
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %bb.ao ], [ %i.ca, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.af, %bb.u
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24.pn, %bb.ap ], [ %.pn18.pn.pn.pn.pn, %bb.af ], [ %i.bn, %bb.u ]
  call void @_ZN5QFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #17
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.t
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn, %bb.aq ], [ %i.bm, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #17
  br label %bb.au

bb.as:                                            ; preds = %bb.ak, %_ZN7QStringD2Ev.exit69
  %i.cd = phi ptr [ %.pre, %bb.ak ], [ %i.ak, %_ZN7QStringD2Ev.exit69 ] ; 3 uses
  %i.ce = load atomic i32, ptr %i.cd monotonic, align 4
  switch i32 %i.ce, label %_ZN9QtPrivate8RefCount5derefEv.exit.i109 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i108
    i32 -1, label %_ZN7QStringD2Ev.exit113
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i109:         ; preds = %bb.as
  %i.cf = atomicrmw sub ptr %i.cd, i32 1 seq_cst, align 4
  %.not.i110 = icmp eq i32 %i.cf, 1
  br i1 %.not.i110, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i111, label %_ZN7QStringD2Ev.exit113

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i111: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i109
  %.pre.i112 = load ptr, ptr %5, align 8, !tbaa !17
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i108

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i108: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i111, %bb.as
  %i.cg = phi ptr [ %.pre.i112, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i111 ], [ %i.cd, %bb.as ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.cg, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit113

_ZN7QStringD2Ev.exit113:                          ; preds = %bb.as, %_ZN9QtPrivate8RefCount5derefEv.exit.i109, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.at

bb.at:                                            ; preds = %_ZN7QStringD2Ev.exit113, %_ZN7QStringD2Ev.exit50
  ret void

bb.au:                                            ; preds = %bb.ar, %bb.s
  %.pn24.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn.pn, %bb.ar ], [ %.pn, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.f, %bb.c
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.f ], [ %.pn24.pn.pn.pn.pn, %bb.au ], [ %i.v, %bb.c ]
  resume { ptr, i32 } %.pn30.pn
}

declare void @_ZN10QBoxLayout10addStretchEi(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) local_unnamed_addr #1

declare void @_ZN7QWidget9setLayoutEP7QLayout(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare void @_ZN11QDockWidget9setWidgetEP7QWidget(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5QListI7QStringED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 3 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  switch i32 %i.b, label %_ZN9QtPrivate8RefCount5derefEv.exit [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2
    i32 -1, label %_ZN5QListI7QStringE7deallocEPN9QListData4DataE.exit
  ]

_ZN9QtPrivate8RefCount5derefEv.exit:              ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.a, i32 1 seq_cst, align 4
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge, label %_ZN5QListI7QStringE7deallocEPN9QListData4DataE.exit

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2

_ZN9QtPrivate8RefCount5derefEv.exit.thread2:      ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge, %bb.a
  %i.d = phi ptr [ %.pre, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge ], [ %i.a, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !55   ; 2 uses
  %.not4.i.i = icmp eq i32 %i.g, %i.k
  br i1 %.not4.i.i, label %_ZN5QListI7QStringE13node_destructEPNS1_4NodeES3_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.thread2
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.l
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7QStringD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.n, %_ZN7QStringD2Ev.exit.i.i ], [ %i.m, %.lr.ph.i.preheader.i ]
  %i.n = getelementptr inbounds i8, ptr %.05.i.i, i64 -8 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 3 uses
  %i.p = load atomic i32, ptr %i.o monotonic, align 4
  switch i32 %i.p, label %_ZN9QtPrivate8RefCount5derefEv.exit.i.i.i [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i.i.i
    i32 -1, label %_ZN7QStringD2Ev.exit.i.i
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i.i.i:        ; preds = %.lr.ph.i.i
  %i.q = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %.not.i.i.i = icmp eq i32 %i.q, 1
  br i1 %.not.i.i.i, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i.i.i, label %_ZN7QStringD2Ev.exit.i.i

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i.i.i: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !17
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i.i.i

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i.i.i: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i.i.i, %.lr.ph.i.i
  %i.r = phi ptr [ %.pre.i.i.i, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i.i.i ], [ %i.o, %.lr.ph.i.i ]
  tail call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.r, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit.i.i

_ZN7QStringD2Ev.exit.i.i:                         ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i.i.i, %_ZN9QtPrivate8RefCount5derefEv.exit.i.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.i, %i.n
  br i1 %.not.i.i, label %_ZN5QListI7QStringE13node_destructEPNS1_4NodeES3_.exit.i, label %.lr.ph.i.i, !llvm.loop !56

_ZN5QListI7QStringE13node_destructEPNS1_4NodeES3_.exit.i: ; preds = %_ZN7QStringD2Ev.exit.i.i, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2
  invoke void @_ZN9QListData7disposeEPNS_4DataE(ptr noundef %i.d)
          to label %_ZN5QListI7QStringE7deallocEPN9QListData4DataE.exit unwind label %bb.b

_ZN5QListI7QStringE7deallocEPN9QListData4DataE.exit: ; preds = %bb.a, %_ZN5QListI7QStringE13node_destructEPNS1_4NodeES3_.exit.i, %_ZN9QtPrivate8RefCount5derefEv.exit
  ret void

bb.b:                                             ; preds = %_ZN5QListI7QStringE13node_destructEPNS1_4NodeES3_.exit.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #21
  unreachable
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN11CMainWindowC2ERK11QStringList(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QPoint, align 4              ; 5 uses
  %3 = alloca %class.QSize, align 4               ; 5 uses
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 16            ; 6 uses
  %4 = alloca %class.QString, align 8             ; 8 uses
  %5 = alloca %class.QString, align 8             ; 8 uses
  %6 = alloca %class.QString, align 8             ; 8 uses
  %7 = alloca %class.QString, align 8             ; 8 uses
  %8 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %9 = alloca %class.QString, align 8             ; 8 uses
  %10 = alloca %class.QString, align 8            ; 8 uses
  %11 = alloca %class.QStringList, align 8        ; 8 uses
  %12 = alloca %class.QString, align 8            ; 8 uses
  %13 = alloca %class.QString, align 8            ; 8 uses
  %14 = alloca %class.QIcon, align 8              ; 7 uses
  %15 = alloca %class.QString, align 8            ; 8 uses
  tail call void @_ZN11QMainWindowC2EP7QWidget6QFlagsIN2Qt10WindowTypeEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef null, i32 0)
  store ptr getelementptr inbounds nuw inrange(-16, 424) (i8, ptr @_ZTV11CMainWindow, i64 16), ptr %0, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV11CMainWindow, i64 456), ptr %i.c, align 8, !tbaa !58
  %i.d = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19
          to label %bb.b unwind label %bb.an      ; 7 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7QWidgetC1EPS_6QFlagsIN2Qt10WindowTypeEE(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull %0, i32 0)
          to label %bb.c unwind label %bb.ao

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr @"_ZZZN11CMainWindowC1ERK11QStringListENK3$_0clEvE15qstring_literal", ptr %4, align 8, !tbaa !17, !alias.scope !60
  invoke void @_ZN7QObject13setObjectNameERK7QString(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.d unwind label %bb.ap

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %4, align 8, !tbaa !17     ; 3 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 4
  switch i32 %i.f, label %_ZN9QtPrivate8RefCount5derefEv.exit.i [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
    i32 -1, label %_ZN7QStringD2Ev.exit
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i:            ; preds = %bb.d
  %i.g = atomicrmw sub ptr %i.e, i32 1 seq_cst, align 4
  %.not.i = icmp eq i32 %i.g, 1
  br i1 %.not.i, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, label %_ZN7QStringD2Ev.exit

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !17
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i:    ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, %bb.d
  %i.h = phi ptr [ %.pre.i, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i ], [ %i.e, %bb.d ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.h, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.d, %_ZN9QtPrivate8RefCount5derefEv.exit.i, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.i = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19
          to label %bb.e unwind label %bb.aq      ; 5 uses

bb.e:                                             ; preds = %_ZN7QStringD2Ev.exit
  invoke void @_ZN11QVBoxLayoutC1EP7QWidget(ptr noundef nonnull align 8 dereferenceable(28) %i.i, ptr noundef nonnull %i.d)
          to label %bb.f unwind label %bb.ar

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr @"_ZZZN11CMainWindowC1ERK11QStringListENK3$_1clEvE15qstring_literal", ptr %5, align 8, !tbaa !17, !alias.scope !63
  invoke void @_ZN7QObject13setObjectNameERK7QString(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.g unwind label %bb.as

bb.g:                                             ; preds = %bb.f
  %i.j = load ptr, ptr %5, align 8, !tbaa !17     ; 3 uses
  %i.k = load atomic i32, ptr %i.j monotonic, align 4
  switch i32 %i.k, label %_ZN9QtPrivate8RefCount5derefEv.exit.i39 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i38
    i32 -1, label %_ZN7QStringD2Ev.exit43
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i39:          ; preds = %bb.g
  %i.l = atomicrmw sub ptr %i.j, i32 1 seq_cst, align 4
  %.not.i40 = icmp eq i32 %i.l, 1
  br i1 %.not.i40, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i41, label %_ZN7QStringD2Ev.exit43

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i41: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i39
  %.pre.i42 = load ptr, ptr %5, align 8, !tbaa !17
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i38

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i38:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i41, %bb.g
  %i.m = phi ptr [ %.pre.i42, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i41 ], [ %i.j, %bb.g ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.m, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit43

_ZN7QStringD2Ev.exit43:                           ; preds = %bb.g, %_ZN9QtPrivate8RefCount5derefEv.exit.i39, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.n = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19
          to label %bb.h unwind label %bb.at      ; 5 uses

bb.h:                                             ; preds = %_ZN7QStringD2Ev.exit43
  invoke void @_ZN11QVBoxLayoutC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.n)
          to label %bb.i unwind label %bb.au

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr @"_ZZZN11CMainWindowC1ERK11QStringListENK3$_2clEvE15qstring_literal", ptr %6, align 8, !tbaa !17, !alias.scope !66
  invoke void @_ZN7QObject13setObjectNameERK7QString(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.j unwind label %bb.av

bb.j:                                             ; preds = %bb.i
  %i.o = load ptr, ptr %6, align 8, !tbaa !17     ; 3 uses
  %i.p = load atomic i32, ptr %i.o monotonic, align 4
  switch i32 %i.p, label %_ZN9QtPrivate8RefCount5derefEv.exit.i45 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i44
    i32 -1, label %_ZN7QStringD2Ev.exit49
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i45:          ; preds = %bb.j
  %i.q = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %.not.i46 = icmp eq i32 %i.q, 1
  br i1 %.not.i46, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i47, label %_ZN7QStringD2Ev.exit49

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i47: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i45
  %.pre.i48 = load ptr, ptr %6, align 8, !tbaa !17
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i44

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i44:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i47, %bb.j
  %i.r = phi ptr [ %.pre.i48, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i47 ], [ %i.o, %bb.j ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.r, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit49

_ZN7QStringD2Ev.exit49:                           ; preds = %bb.j, %_ZN9QtPrivate8RefCount5derefEv.exit.i45, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.s = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19
          to label %bb.k unwind label %bb.at      ; 4 uses

bb.k:                                             ; preds = %_ZN7QStringD2Ev.exit49
  invoke void @_ZN8QMdiAreaC1EP7QWidget(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull %i.d)
          to label %bb.l unwind label %bb.aw

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store ptr @"_ZZZN11CMainWindowC1ERK11QStringListENK3$_3clEvE15qstring_literal", ptr %7, align 8, !tbaa !17, !alias.scope !86
  invoke void @_ZN7QObject13setObjectNameERK7QString(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.m unwind label %bb.ax

bb.m:                                             ; preds = %bb.l
  %i.u = load ptr, ptr %7, align 8, !tbaa !17     ; 3 uses
  %i.v = load atomic i32, ptr %i.u monotonic, align 4
  switch i32 %i.v, label %_ZN9QtPrivate8RefCount5derefEv.exit.i51 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i50
    i32 -1, label %_ZN7QStringD2Ev.exit55
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i51:          ; preds = %bb.m
  %i.w = atomicrmw sub ptr %i.u, i32 1 seq_cst, align 4
  %.not.i52 = icmp eq i32 %i.w, 1
  br i1 %.not.i52, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i53, label %_ZN7QStringD2Ev.exit55

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i53: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i51
  %.pre.i54 = load ptr, ptr %7, align 8, !tbaa !17
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i50

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i50:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i53, %bb.m
  %i.x = phi ptr [ %.pre.i54, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i53 ], [ %i.u, %bb.m ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.x, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit55

_ZN7QStringD2Ev.exit55:                           ; preds = %bb.m, %_ZN9QtPrivate8RefCount5derefEv.exit.i51, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !69
  invoke void @_ZN10QBoxLayout9addWidgetEP7QWidgeti6QFlagsIN2Qt13AlignmentFlagEE(ptr noundef nonnull align 8 dereferenceable(28) %i.n, ptr noundef %i.y, i32 noundef 0, i32 0)
          to label %bb.n unwind label %bb.at

bb.n:                                             ; preds = %_ZN7QStringD2Ev.exit55
  invoke void @_ZN7QLayout18setContentsMarginsEiiii(ptr noundef nonnull align 8 dereferenceable(28) %i.i, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
          to label %bb.o unwind label %bb.at

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN10QBoxLayout9addLayoutEP7QLayouti(ptr noundef nonnull align 8 dereferenceable(28) %i.i, ptr noundef nonnull %i.n, i32 noundef 0)
          to label %bb.p unwind label %bb.at

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN11QMainWindow16setCentralWidgetEP7QWidget(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.d)
          to label %bb.q unwind label %bb.at

bb.q:                                             ; preds = %bb.p
  %i.z = invoke noundef ptr @_ZNK7QWidget6layoutEv(ptr noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %bb.r unwind label %bb.at

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN7QLayout18setContentsMarginsEiiii(ptr noundef nonnull align 8 dereferenceable(28) %i.z, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
          to label %bb.s unwind label %bb.at

bb.s:                                             ; preds = %bb.r
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.aa, align 8, !tbaa !89
  invoke void @_ZN11CMainWindow13createConsoleEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
          to label %bb.t unwind label %bb.at

bb.t:                                             ; preds = %bb.s
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 ptrtoint (ptr @_ZN8QMdiArea18subWindowActivatedEP13QMdiSubWindow to i64), ptr %i.a, align 8, !tbaa !29, !noalias !90
  %.fca.1.gep14.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep14.i, align 8, !tbaa !29, !noalias !90
  store i64 ptrtoint (ptr @_ZN11CMainWindow16slotRefreshMenusEv to i64), ptr %i.b, align 16, !tbaa !29, !noalias !90
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !tbaa !29, !noalias !90
  %i.ac = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19
          to label %.noexc unwind label %bb.at    ; 4 uses

.noexc:                                           ; preds = %bb.t
  store i32 1, ptr %i.ac, align 4, !tbaa !33, !noalias !90
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM11CMainWindowFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.ad, align 8, !tbaa !35, !noalias !90
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %16 = load <2 x i64>, ptr %i.b, align 16, !tbaa !29, !noalias !90
  store <2 x i64> %16, ptr %i.ae, align 8, !tbaa !41, !noalias !90
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %8, ptr noundef %i.ab, ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ac, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN8QMdiArea16staticMetaObjectE)
          to label %bb.u unwind label %bb.at

bb.u:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #17
  %i.af = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #19
          to label %bb.v unwind label %bb.at      ; 3 uses

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN12CFrmSettingsC1Ev(ptr noundef nonnull align 8 dereferenceable(144) %i.af)
          to label %bb.w unwind label %bb.ay

bb.w:                                             ; preds = %bb.v
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !93
  invoke void @_ZN11CMainWindow7actionsEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
          to label %bb.x unwind label %bb.at

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN11CMainWindow5menusEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
          to label %bb.y unwind label %bb.at

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN11CMainWindow8toolBarsEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
          to label %bb.z unwind label %bb.at

bb.z:                                             ; preds = %bb.y
  %i.ah = invoke noundef ptr @_ZNK11QMainWindow9statusBarEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.aa unwind label %bb.at     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN11CMainWindow14updateFileMenuEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
          to label %.noexc57 unwind label %bb.at

.noexc57:                                         ; preds = %bb.aa
  invoke void @_ZN11CMainWindow16updateWindowMenuEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
          to label %_ZN11CMainWindow11updateMenusEv.exit unwind label %bb.at

_ZN11CMainWindow11updateMenusEv.exit:             ; preds = %.noexc57
  invoke void @_ZN11CMainWindow12readSettingsEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
          to label %bb.ab unwind label %bb.at

bb.ab:                                            ; preds = %_ZN11CMainWindow11updateMenusEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) @_ZN11CMainWindow16staticMetaObjectE, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef -1)
          to label %_ZN11CMainWindow2trEPKcS1_i.exit unwind label %bb.az

_ZN11CMainWindow2trEPKcS1_i.exit:                 ; preds = %bb.ab
  invoke void @_ZN7QWidget14setWindowTitleERK7QString(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ac unwind label %bb.ba

bb.ac:                                            ; preds = %_ZN11CMainWindow2trEPKcS1_i.exit
  %i.ai = load ptr, ptr %9, align 8, !tbaa !17    ; 3 uses
  %i.aj = load atomic i32, ptr %i.ai monotonic, align 4
  switch i32 %i.aj, label %_ZN9QtPrivate8RefCount5derefEv.exit.i61 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i60
    i32 -1, label %_ZN7QStringD2Ev.exit65
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i61:          ; preds = %bb.ac
  %i.ak = atomicrmw sub ptr %i.ai, i32 1 seq_cst, align 4
  %.not.i62 = icmp eq i32 %i.ak, 1
  br i1 %.not.i62, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i63, label %_ZN7QStringD2Ev.exit65

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i63: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i61
  %.pre.i64 = load ptr, ptr %9, align 8, !tbaa !17
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i60

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i60:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i63, %bb.ac
  %i.al = phi ptr [ %.pre.i64, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i63 ], [ %i.ai, %bb.ac ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.al, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit65

_ZN7QStringD2Ev.exit65:                           ; preds = %bb.ac, %_ZN9QtPrivate8RefCount5derefEv.exit.i61, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 1024, ptr %3, align 4, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 900, ptr %i.am, align 4, !tbaa !96
  invoke void @_ZN7QWidget6resizeERK5QSize(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %bb.ad unwind label %bb.at

bb.ad:                                            ; preds = %_ZN7QStringD2Ev.exit65
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !tbaa !97
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.an, align 4, !tbaa !99
  invoke void @_ZN7QWidget4moveERK6QPoint(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %bb.ae unwind label %bb.at

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  invoke void @_ZN11QMainWindow30setUnifiedTitleAndToolBarOnMacEb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext true)
          to label %bb.af unwind label %bb.at

bb.af:                                            ; preds = %bb.ae
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store ptr @"_ZZZN11CMainWindowC1ERK11QStringListENK3$_4clEvE15qstring_literal", ptr %10, align 8, !tbaa !17, !alias.scope !100
  %i.ap = invoke noundef ptr @_Z20qt_qFindChild_helperPK7QObjectRK7QStringRK11QMetaObject6QFlagsIN2Qt15FindChildOptionEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(48) @_ZN9QComboBox16staticMetaObjectE, i32 1)
          to label %_ZNK7QObject9findChildIP9QComboBoxEET_RK7QString6QFlagsIN2Qt15FindChildOptionEE.exit unwind label %bb.bc

_ZNK7QObject9findChildIP9QComboBoxEET_RK7QString6QFlagsIN2Qt15FindChildOptionEE.exit: ; preds = %bb.af
  %i.aq = load ptr, ptr %10, align 8, !tbaa !17   ; 3 uses
  %i.ar = load atomic i32, ptr %i.aq monotonic, align 4
  switch i32 %i.ar, label %_ZN9QtPrivate8RefCount5derefEv.exit.i70 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i69
    i32 -1, label %_ZN7QStringD2Ev.exit74
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i70:          ; preds = %_ZNK7QObject9findChildIP9QComboBoxEET_RK7QString6QFlagsIN2Qt15FindChildOptionEE.exit
  %i.as = atomicrmw sub ptr %i.aq, i32 1 seq_cst, align 4
  %.not.i71 = icmp eq i32 %i.as, 1
  br i1 %.not.i71, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i72, label %_ZN7QStringD2Ev.exit74

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i72: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i70
  %.pre.i73 = load ptr, ptr %10, align 8, !tbaa !17
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i69

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i69:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i72, %_ZNK7QObject9findChildIP9QComboBoxEET_RK7QString6QFlagsIN2Qt15FindChildOptionEE.exit
  %i.at = phi ptr [ %.pre.i73, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i72 ], [ %i.aq, %_ZNK7QObject9findChildIP9QComboBoxEET_RK7QString6QFlagsIN2Qt15FindChildOptionEE.exit ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.at, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit74

_ZN7QStringD2Ev.exit74:                           ; preds = %_ZNK7QObject9findChildIP9QComboBoxEET_RK7QString6QFlagsIN2Qt15FindChildOptionEE.exit, %_ZN9QtPrivate8RefCount5derefEv.exit.i70, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !93
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  store ptr @_ZN9QListData11shared_nullE, ptr %11, align 8, !tbaa !29
  %i.ax = invoke fastcc noundef i32 @_ZL11LoadPluginsR9QComboBoxP5GVC_sPKcRK11QStringListSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef %i.aw, ptr noundef nonnull @.str.2, ptr noundef nonnull align 8 dereferenceable(8) %11, i64 3, ptr nonnull @.str.3)
          to label %bb.ag unwind label %bb.bd

bb.ag:                                            ; preds = %_ZN7QStringD2Ev.exit74
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !108
  %i.az = load ptr, ptr %11, align 8, !tbaa !29   ; 3 uses
  %i.ba = load atomic i32, ptr %i.az monotonic, align 4
  switch i32 %i.ba, label %_ZN9QtPrivate8RefCount5derefEv.exit.i76 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i75
    i32 -1, label %_ZN5QListI7QStringED2Ev.exit
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i76:          ; preds = %bb.ag
  %i.bb = atomicrmw sub ptr %i.az, i32 1 seq_cst, align 4
  %.not.i77 = icmp eq i32 %i.bb, 1
  br i1 %.not.i77, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i78, label %_ZN5QListI7QStringED2Ev.exit

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i78: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i76
  %.pre.i79 = load ptr, ptr %11, align 8, !tbaa !29
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i75

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i75:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i78, %bb.ag
  %i.bc = phi ptr [ %.pre.i79, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i78 ], [ %i.az, %bb.ag ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !53 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !55 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.bf, %i.bj
  br i1 %.not4.i.i.i, label %_ZN5QListI7QStringE13node_destructEPNS1_4NodeES3_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i75
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bk
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7QStringD2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.bm, %_ZN7QStringD2Ev.exit.i.i.i ], [ %i.bl, %.lr.ph.i.preheader.i.i ]
  %i.bm = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8 ; 4 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !17 ; 3 uses
  %i.bo = load atomic i32, ptr %i.bn monotonic, align 4
  switch i32 %i.bo, label %_ZN9QtPrivate8RefCount5derefEv.exit.i.i.i.i [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i.i.i.i
    i32 -1, label %_ZN7QStringD2Ev.exit.i.i.i
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i.i.i.i:      ; preds = %.lr.ph.i.i.i
  %i.bp = atomicrmw sub ptr %i.bn, i32 1 seq_cst, align 4
  %.not.i.i.i.i = icmp eq i32 %i.bp, 1
  br i1 %.not.i.i.i.i, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i.i.i.i, label %_ZN7QStringD2Ev.exit.i.i.i

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i.i.i.i: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.bm, align 8, !tbaa !17
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i.i.i.i

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i.i.i.i: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i.i.i.i, %.lr.ph.i.i.i
  %i.bq = phi ptr [ %.pre.i.i.i.i, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i.i.i.i ], [ %i.bn, %.lr.ph.i.i.i ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.bq, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit.i.i.i

_ZN7QStringD2Ev.exit.i.i.i:                       ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i.i.i.i, %_ZN9QtPrivate8RefCount5derefEv.exit.i.i.i.i, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.bh, %i.bm
  br i1 %.not.i.i.i, label %_ZN5QListI7QStringE13node_destructEPNS1_4NodeES3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !56
end_hunk_0
