Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/detachable_tabwidget?download=true
inline.NumInlined: 314
inline.NumDeleted: 205
begin_hunk_0_@_ZN10ToolDialog10closeEventEP11QCloseEvent:bb.a
          cleanup
  %i.g = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i2, label %_ZN7QStringD2Ev.exit5, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3:     ; preds = %bb.d
  %i.h = atomicrmw sub ptr %i.g, i32 1 acq_rel, align 4
  %.not.i.i4 = icmp eq i32 %i.h, 1
  br i1 %.not.i.i4, label %bb.e, label %_ZN7QStringD2Ev.exit5

bb.e:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3
  %i.i = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.i, i64 noundef 2, i64 noundef 8) #18
  br label %_ZN7QStringD2Ev.exit5

_ZN7QStringD2Ev.exit5:                            ; preds = %bb.d, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3, %bb.e
  resume { ptr, i32 } %i.f
}

; Function Attrs: null_pointer_is_valid
declare void @_ZNK7QObject10objectNameEv(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(16)) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN14DragDropTabBarC2EP7QWidget(ptr noundef align 8 dereferenceable_or_null(65) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QCursor, align 8             ; 4 uses
  %3 = alloca %class.QCursor, align 8             ; 7 uses
  tail call void @_ZN7QTabBarC2EP7QWidget(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 464) (i8, ptr @_ZTV14DragDropTabBar, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV14DragDropTabBar, i64 496), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  invoke void @_ZN7QCursorC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.c)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7QWidget14setAcceptDropsEb(ptr noundef align 8 dereferenceable_or_null(40) %0, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7QTabBar12setElideModeEN2Qt13TextElideModeE(ptr noundef align 8 dereferenceable_or_null(40) %0, i32 noundef 1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7QTabBar28setSelectionBehaviorOnRemoveENS_17SelectionBehaviorE(ptr noundef align 8 dereferenceable_or_null(40) %0, i32 noundef 0)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  invoke void @_ZN7QCursorC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(8) %3)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.d = load ptr, ptr %3, align 8
  store ptr null, ptr %3, align 8
  %i.e = load ptr, ptr %i.c, align 8
  store ptr %i.d, ptr %i.c, align 8
  store ptr %i.e, ptr %2, align 8
  call void @_ZN7QCursorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @_ZN7QCursorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.f = getelementptr i8, ptr %0, i64 64
  store i8 0, ptr %i.f, align 8
  ret void

bb.g:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.i, %bb.i ], [ %i.h, %bb.h ]
  call void @_ZN7QCursorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.c) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.g, %bb.g ]
  call void @_ZN7QTabBarD2Ev(ptr noundef align 8 dead_on_return(40) dereferenceable_or_null(40) %0) #18
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QTabBarC2EP7QWidget(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QCursorC1Ev(ptr noundef align 8 dereferenceable_or_null(8)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget14setAcceptDropsEb(ptr noundef align 8 dereferenceable_or_null(40), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QTabBar12setElideModeEN2Qt13TextElideModeE(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QTabBar28setSelectionBehaviorOnRemoveENS_17SelectionBehaviorE(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN7QCursorD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN7QTabBarD2Ev(ptr noundef align 8 dead_on_return(40) dereferenceable_or_null(40)) unnamed_addr #5

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN14DragDropTabBar21mouseDoubleClickEventEP11QMouseEvent(ptr noundef align 8 dereferenceable_or_null(65) %0, ptr nofree noundef captures(none) initializes((12, 13)) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QPoint, align 8              ; 4 uses
  %i.a = getelementptr i8, ptr %1, i64 12
  store i8 1, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.b = getelementptr i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { double, double } @_ZNK11QEventPoint8positionEv(ptr noundef align 8 dereferenceable_or_null(8) %i.c) ; 2 uses
  %i.e = extractvalue { double, double } %i.d, 0  ; 2 uses
  %i.f = extractvalue { double, double } %i.d, 1  ; 2 uses
  %i.g = tail call double @llvm.copysign.f64(double 5.000000e-01, double %i.e)
  %i.h = fadd double %i.e, %i.g
  %i.i = fptosi double %i.h to i32
  %i.j = tail call double @llvm.copysign.f64(double 5.000000e-01, double %i.f)
  %i.k = fadd double %i.f, %i.j
  %i.l = fptosi double %i.k to i32
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.l to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %2, align 8
  %i.m = call noundef i32 @_ZNK7QTabBar5tabAtERK6QPoint(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %2)
  %i.n = call i64 @_ZN7QCursor3posEv()
  call void @_ZN14DragDropTabBar11onDetachTabEi6QPoint(ptr noundef align 8 dereferenceable_or_null(65) %0, i32 noundef %i.m, i64 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK7QTabBar5tabAtERK6QPoint(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 4 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i64 @_ZN7QCursor3posEv() local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN14DragDropTabBar15mousePressEventEP11QMouseEvent(ptr noundef align 8 dereferenceable_or_null(65) initializes((48, 56), (64, 65)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { double, double } @_ZNK11QEventPoint8positionEv(ptr noundef align 8 dereferenceable_or_null(8) %i.e) ; 2 uses
  %i.g = extractvalue { double, double } %i.f, 0  ; 2 uses
  %i.h = extractvalue { double, double } %i.f, 1  ; 2 uses
  %i.i = tail call double @llvm.copysign.f64(double 5.000000e-01, double %i.g)
  %i.j = fadd double %i.g, %i.i
  %i.k = fptosi double %i.j to i32
  %i.l = tail call double @llvm.copysign.f64(double 5.000000e-01, double %i.h)
  %i.m = fadd double %i.h, %i.l
  %i.n = fptosi double %i.m to i32
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.n to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.k to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.o = getelementptr i8, ptr %0, i64 40
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.o, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr i8, ptr %0, i64 48
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %0, i64 64
  store i8 0, ptr %i.q, align 8
  tail call void @_ZN7QTabBar15mousePressEventEP11QMouseEvent(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QTabBar15mousePressEventEP11QMouseEvent(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN14DragDropTabBar14mouseMoveEventEP11QMouseEvent(ptr noundef align 8 dereferenceable_or_null(65) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QPointF, align 8             ; 4 uses
  %3 = alloca %class.QString, align 16            ; 5 uses
  %4 = alloca %class.QPointF, align 16            ; 5 uses
  %5 = alloca %class.QPointF, align 16            ; 5 uses
  %6 = alloca %class.QString, align 8             ; 9 uses
  %7 = alloca %class.QString, align 16            ; 10 uses
  %8 = alloca %class.QByteArray, align 8          ; 9 uses
  %9 = alloca %class.QPixmap, align 8             ; 8 uses
  %10 = alloca %class.QRect, align 16             ; 4 uses
  %11 = alloca %class.QPixmap, align 8            ; 9 uses
  %12 = alloca %class.QSize, align 8              ; 5 uses
  %13 = alloca %class.QColor, align 4             ; 5 uses
  %14 = alloca %class.QPainter, align 8           ; 9 uses
  %i.a = getelementptr i8, ptr %0, i64 40         ; 4 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZNK6QPoint6isNullEv.exit, label %_ZNK6QPoint6isNullEv.exit.thread

_ZNK6QPoint6isNullEv.exit:                        ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.critedge, label %_ZNK6QPoint6isNullEv.exit.thread

_ZNK6QPoint6isNullEv.exit.thread:                 ; preds = %bb.a, %_ZNK6QPoint6isNullEv.exit
  %i.g = getelementptr i8, ptr %1, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call { double, double } @_ZNK11QEventPoint8positionEv(ptr noundef align 8 dereferenceable_or_null(8) %i.h) ; 2 uses
  %i.j = extractvalue { double, double } %i.i, 0
  %i.k = extractvalue { double, double } %i.i, 1
  %i.l = insertelement <2 x double> poison, double %i.j, i64 0
  %i.m = insertelement <2 x double> %i.l, double %i.k, i64 1 ; 2 uses
  %i.n = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.m)
  %i.o = fadd <2 x double> %i.m, %i.n
  %i.p = fptosi <2 x double> %i.o to <2 x i32>
  %i.q = load <2 x i32>, ptr %i.a, align 8
  %i.r = sub <2 x i32> %i.p, %i.q
  %i.s = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.r, i1 false)
  %i.t = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.s)
  %i.u = tail call noundef i32 @_ZN12QApplication17startDragDistanceEv()
  %i.v = icmp sgt i32 %i.t, %i.u
  br i1 %i.v, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNK6QPoint6isNullEv.exit.thread
  %i.w = getelementptr i8, ptr %0, i64 64
  store i8 1, ptr %i.w, align 8
  br label %.critedge

.critedge:                                        ; preds = %_ZNK6QPoint6isNullEv.exit, %bb.b, %_ZNK6QPoint6isNullEv.exit.thread
  %i.x = getelementptr i8, ptr %1, i64 68
  %.sroa.0.0.copyload.i = load i32, ptr %i.x, align 4
  %i.y = and i32 %.sroa.0.0.copyload.i, 1
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.z = getelementptr i8, ptr %0, i64 64
  %i.aa = load i8, ptr %i.z, align 8, !range !21, !noundef !7
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.d, label %.critedge2

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call noalias noundef dereferenceable_or_null(80) ptr @_Znwm(i64 noundef 80) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ad = getelementptr i8, ptr %1, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = invoke { double, double } @_ZNK11QEventPoint8positionEv(ptr noundef align 8 dereferenceable_or_null(8) %i.ae)
          to label %bb.e unwind label %bb.q       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ag = extractvalue { double, double } %i.af, 0
  %i.ah = extractvalue { double, double } %i.af, 1
  %i.ai = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.ah, i64 1 ; 2 uses
  %i.ak = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.aj)
  %i.al = fadd <2 x double> %i.aj, %i.ak
  %i.am = fptosi <2 x double> %i.al to <2 x i32>
  %i.an = sitofp <2 x i32> %i.am to <2 x double>
  store <2 x double> %i.an, ptr %4, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ao = invoke i64 @_ZN7QCursor3posEv()
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %bb.e
  %15 = bitcast i64 %i.ao to <2 x i32>
  %16 = sitofp <2 x i32> %15 to <2 x double>
  store <2 x double> %16, ptr %5, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %6, i8 0, i64 24, i1 false)
  %i.ap = invoke noundef ptr @_ZN15QPointingDevice21primaryPointingDeviceERK7QString(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.g unwind label %bb.s

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN11QMouseEventC1EN6QEvent4TypeERK7QPointFS4_N2Qt11MouseButtonE6QFlagsIS6_ES7_INS5_16KeyboardModifierEEPK15QPointingDevice(ptr noundef align 8 dereferenceable_or_null(80) %i.ac, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 0, i32 0, i32 0, ptr noundef %i.ap)
          to label %bb.h unwind label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.h
  %i.ar = atomicrmw sub ptr %i.aq, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.ar, 1
  br i1 %.not.i.i, label %bb.i, label %_ZN7QStringD2Ev.exit

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.as = load ptr, ptr %6, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.as, i64 noundef 2, i64 noundef 8) #18
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.h, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZN7QTabBar14mouseMoveEventEP11QMouseEvent(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef %i.ac)
  %i.at = call noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #17 ; 5 uses
  invoke void @_ZN5QDragC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(16) %i.at, ptr noundef %0)
          to label %bb.j unwind label %bb.w

bb.j:                                             ; preds = %_ZN7QStringD2Ev.exit
  %i.au = call noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #17 ; 4 uses
  invoke void @_ZN9QMimeDataC1Ev(ptr noundef align 8 dereferenceable_or_null(16) %i.au)
          to label %bb.k unwind label %bb.x

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 6, ptr nonnull @.str.1)
  %i.av = load <2 x ptr>, ptr %3, align 16
  store <2 x ptr> %i.av, ptr %7, align 16
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ay = load i64, ptr %i.ax, align 16
  store i64 %i.ay, ptr %i.aw, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZN10QByteArrayC1EPKcx(ptr noundef nonnull align 8 dereferenceable_or_null(24) %8, ptr noundef nonnull @.str.2, i64 noundef -1)
          to label %bb.l unwind label %bb.y

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN9QMimeData7setDataERK7QStringRK10QByteArray(ptr noundef align 8 dereferenceable_or_null(16) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.m unwind label %bb.z

bb.m:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i53, label %_ZN10QByteArrayD2Ev.exit, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i:       ; preds = %bb.m
  %i.ba = atomicrmw sub ptr %i.az, i32 1 acq_rel, align 4
  %.not.i.i54 = icmp eq i32 %i.ba, 1
  br i1 %.not.i.i54, label %bb.n, label %_ZN10QByteArrayD2Ev.exit

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i
  %i.bb = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bb, i64 noundef 1, i64 noundef 8) #18
  br label %_ZN10QByteArrayD2Ev.exit

_ZN10QByteArrayD2Ev.exit:                         ; preds = %bb.m, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.bc = load ptr, ptr %7, align 16              ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i55, label %_ZN7QStringD2Ev.exit58, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i56

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i56:    ; preds = %_ZN10QByteArrayD2Ev.exit
  %i.bd = atomicrmw sub ptr %i.bc, i32 1 acq_rel, align 4
  %.not.i.i57 = icmp eq i32 %i.bd, 1
  br i1 %.not.i.i57, label %bb.o, label %_ZN7QStringD2Ev.exit58

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i56
  %i.be = load ptr, ptr %7, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.be, i64 noundef 2, i64 noundef 8) #18
  br label %_ZN7QStringD2Ev.exit58

_ZN7QStringD2Ev.exit58:                           ; preds = %_ZN10QByteArrayD2Ev.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i56, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @_ZN5QDrag11setMimeDataEP9QMimeData(ptr noundef align 8 dereferenceable_or_null(16) %i.at, ptr noundef %i.au)
  %i.bf = getelementptr i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8            ; 3 uses
  %i.bj = call noundef ptr @_ZNK11QMetaObject4castEPK7QObject(ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN19DetachableTabWidget16staticMetaObjectE, ptr noundef %i.bi)
  %.not40 = icmp eq ptr %i.bj, null
  br i1 %.not40, label %bb.ac, label %bb.p

bb.p:                                             ; preds = %_ZN7QStringD2Ev.exit58
  %i.bk = call noundef ptr @_ZNK11QMetaObject4castEPK7QObject(ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN19DetachableTabWidget16staticMetaObjectE, ptr noundef %i.bi) ; 2 uses
  %i.bl = call noundef i32 @_ZNK10QTabWidget12currentIndexEv(ptr noundef align 8 dereferenceable_or_null(40) %i.bk)
  %i.bm = call noundef ptr @_ZNK10QTabWidget6widgetEi(ptr noundef align 8 dereferenceable_or_null(40) %i.bk, i32 noundef %i.bl)
  br label %bb.ac

bb.q:                                             ; preds = %bb.d
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.r:                                             ; preds = %bb.e
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.s:                                             ; preds = %bb.g, %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i59, label %_ZN7QStringD2Ev.exit62, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i60

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i60:    ; preds = %bb.s
  %i.br = atomicrmw sub ptr %i.bq, i32 1 acq_rel, align 4
  %.not.i.i61 = icmp eq i32 %i.br, 1
  br i1 %.not.i.i61, label %bb.t, label %_ZN7QStringD2Ev.exit62

bb.t:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i60
  %i.bs = load ptr, ptr %6, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bs, i64 noundef 2, i64 noundef 8) #18
  br label %_ZN7QStringD2Ev.exit62

_ZN7QStringD2Ev.exit62:                           ; preds = %bb.s, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i60, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.u

bb.u:                                             ; preds = %_ZN7QStringD2Ev.exit62, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bp, %_ZN7QStringD2Ev.exit62 ], [ %i.bo, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.bn, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef 80) #19
  br label %bb.bc

bb.w:                                             ; preds = %_ZN7QStringD2Ev.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef 16) #19
  br label %bb.bc

bb.x:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef 16) #19
  br label %bb.bc

bb.y:                                             ; preds = %bb.k
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10QByteArrayD2Ev.exit66

bb.z:                                             ; preds = %bb.l
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bx = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i63 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i63, label %_ZN10QByteArrayD2Ev.exit66, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i64

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i64:     ; preds = %bb.z
  %i.by = atomicrmw sub ptr %i.bx, i32 1 acq_rel, align 4
  %.not.i.i65 = icmp eq i32 %i.by, 1
  br i1 %.not.i.i65, label %bb.aa, label %_ZN10QByteArrayD2Ev.exit66

bb.aa:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i64
  %i.bz = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bz, i64 noundef 1, i64 noundef 8) #18
  br label %_ZN10QByteArrayD2Ev.exit66

_ZN10QByteArrayD2Ev.exit66:                       ; preds = %bb.aa, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i64, %bb.z, %bb.y
  %.pn38 = phi { ptr, i32 } [ %i.bv, %bb.y ], [ %i.bw, %bb.z ], [ %i.bw, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i64 ], [ %i.bw, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.ca = load ptr, ptr %7, align 16              ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i67, label %_ZN7QStringD2Ev.exit70, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i68

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i68:    ; preds = %_ZN10QByteArrayD2Ev.exit66
  %i.cb = atomicrmw sub ptr %i.ca, i32 1 acq_rel, align 4
  %.not.i.i69 = icmp eq i32 %i.cb, 1
  br i1 %.not.i.i69, label %bb.ab, label %_ZN7QStringD2Ev.exit70

bb.ab:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i68
  %i.cc = load ptr, ptr %7, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cc, i64 noundef 2, i64 noundef 8) #18
  br label %_ZN7QStringD2Ev.exit70

_ZN7QStringD2Ev.exit70:                           ; preds = %_ZN10QByteArrayD2Ev.exit66, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i68, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
end_hunk_0
