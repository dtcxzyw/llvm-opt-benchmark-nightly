inline.NumInlined: 2779
inline.NumDeleted: 833
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN15TCPStreamDialog12graphClickedEP11QMouseEvent:bb.a
  %cond = icmp eq i32 %i.f, 1
  %i.g = getelementptr i8, ptr %0, i64 496
  %i.h = load i8, ptr %i.g, align 8, !range !7, !noundef !8
  %i.i = trunc nuw i8 %i.h to i1                  ; 2 uses
  br i1 %cond, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.j = tail call noundef ptr @_ZNK11QCustomPlot8axisRectEi(ptr noundef align 8 dereferenceable_or_null(513) %i.d, i32 noundef 0)
  %i.k = getelementptr i8, ptr %i.j, i64 92
  %i.l = load <2 x i64>, ptr %i.k, align 4
  store <2 x i64> %i.l, ptr %2, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.m = getelementptr i8, ptr %1, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call { double, double } @_ZNK11QEventPoint8positionEv(ptr noundef align 8 dereferenceable_or_null(8) %i.n) ; 2 uses
  %i.p = extractvalue { double, double } %i.o, 0  ; 2 uses
  %i.q = extractvalue { double, double } %i.o, 1  ; 2 uses
  %i.r = tail call double @llvm.copysign.f64(double 5.000000e-01, double %i.p)
  %i.s = fadd double %i.p, %i.r
  %i.t = fptosi double %i.s to i32
  %i.u = tail call double @llvm.copysign.f64(double 5.000000e-01, double %i.q)
  %i.v = fadd double %i.q, %i.u
  %i.w = fptosi double %i.v to i32
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.w to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.t to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %3, align 8
  %i.x = call noundef zeroext i1 @_ZNK5QRect8containsERK6QPointb(ptr noundef nonnull align 4 dereferenceable_or_null(16) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, i1 noundef zeroext false) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %i.x, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN7QCursorC1EN2Qt11CursorShapeE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %4, i32 noundef 18)
  invoke void @_ZN7QWidget9setCursorERK7QCursor(ptr noundef align 8 dereferenceable_or_null(40) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN7QCursorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QCursorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.u

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.z = getelementptr i8, ptr %0, i64 368
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !7, !noundef !8
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.h, label %_ZN15TCPStreamDialog29on_actionGoToPacket_triggeredEv.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %0, i64 88
  %i.af = load i8, ptr %i.ae, align 8, !range !7, !noundef !8
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN15TCPStreamDialog29on_actionGoToPacket_triggeredEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr i8, ptr %0, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !align !6
  %i.aj = call noundef zeroext i1 @_ZNK11CaptureFile7isValidEv(ptr noundef align 8 dereferenceable_or_null(48) %i.ai)
  br i1 %i.aj, label %bb.j, label %_ZN15TCPStreamDialog29on_actionGoToPacket_triggeredEv.exit

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %0, i64 408
  %i.al = load i32, ptr %i.ak, align 8            ; 2 uses
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %_ZN15TCPStreamDialog29on_actionGoToPacket_triggeredEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN15TCPStreamDialog10goToPacketEi(ptr noundef align 8 dereferenceable_or_null(608) %0, i32 noundef %i.al)
  br label %_ZN15TCPStreamDialog29on_actionGoToPacket_triggeredEv.exit

bb.l:                                             ; preds = %bb.b
  %i.am = getelementptr i8, ptr %0, i64 504       ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ao = tail call noalias noundef dereferenceable_or_null(40) ptr @_Znwm(i64 noundef 40) #30 ; 3 uses
  invoke void @_ZN11QRubberBandC1ENS_5ShapeEP7QWidget(ptr noundef align 8 dereferenceable_or_null(40) %i.ao, i32 noundef 1, ptr noundef %i.d)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr %i.ao, ptr %i.am, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef 40) #29
  br label %bb.u

bb.p:                                             ; preds = %bb.n, %bb.l
  %i.aq = getelementptr i8, ptr %1, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call { double, double } @_ZNK11QEventPoint8positionEv(ptr noundef align 8 dereferenceable_or_null(8) %i.ar) ; 2 uses
  %i.at = extractvalue { double, double } %i.as, 0
  %i.au = extractvalue { double, double } %i.as, 1
  %i.av = getelementptr i8, ptr %0, i64 512
  %i.aw = load ptr, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.ax = insertelement <2 x double> poison, double %i.at, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.au, i64 1 ; 2 uses
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ba = shufflevector <2 x double> %i.ay, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bb = tail call <4 x double> @llvm.copysign.v4f64(<4 x double> splat (double 5.000000e-01), <4 x double> %i.ba)
  %i.bc = fadd <4 x double> %i.az, %i.bb
  %i.bd = fptosi <4 x double> %i.bc to <4 x i32>  ; 2 uses
  %.sroa.0.0.insert.insert.i.i15.v.bc = bitcast <4 x i32> %i.bd to <2 x i64>
  %.sroa.0.0.insert.insert.i.i15.v.extract = extractelement <2 x i64> %.sroa.0.0.insert.insert.i.i15.v.bc, i64 0
  store i64 %.sroa.0.0.insert.insert.i.i15.v.extract, ptr %i.av, align 8
  %i.be = add <4 x i32> %i.bd, <i32 0, i32 0, i32 -2, i32 -2>
  store <4 x i32> %i.be, ptr %5, align 16
  call void @_ZN11QRubberBand11setGeometryERK5QRect(ptr noundef align 8 dereferenceable_or_null(40) %i.aw, ptr noundef nonnull align 4 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.bf = load ptr, ptr %i.am, align 8
  call void @_ZN7QWidget4showEv(ptr noundef align 8 dereferenceable_or_null(40) %i.bf)
  br label %_ZN15TCPStreamDialog29on_actionGoToPacket_triggeredEv.exit

bb.q:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.r, label %_ZN15TCPStreamDialog29on_actionGoToPacket_triggeredEv.exit

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN7QCursorC1EN2Qt11CursorShapeE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %6, i32 noundef 17)
  invoke void @_ZN7QWidget9setCursorERK7QCursor(ptr noundef align 8 dereferenceable_or_null(40) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @_ZN7QCursorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZN15TCPStreamDialog29on_actionGoToPacket_triggeredEv.exit

bb.t:                                             ; preds = %bb.r
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QCursorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.u

_ZN15TCPStreamDialog29on_actionGoToPacket_triggeredEv.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.q, %bb.s, %bb.p
  call void @_ZN7QWidget8setFocusEN2Qt11FocusReasonE(ptr noundef align 8 dereferenceable_or_null(40) %i.d, i32 noundef 7)
  ret void

bb.u:                                             ; preds = %bb.t, %bb.o, %bb.f
  %.pn = phi { ptr, i32 } [ %i.y, %bb.f ], [ %i.ap, %bb.o ], [ %i.bg, %bb.t ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind null_pointer_is_valid
declare noundef zeroext i1 @_ZNK5QRect8containsERK6QPointb(ptr noundef align 4 dereferenceable_or_null(16), ptr noundef align 4 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget9setCursorERK7QCursor(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QCursorC1EN2Qt11CursorShapeE(ptr noundef align 8 dereferenceable_or_null(8), i32 noundef) unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN7QCursorD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QRubberBandC1ENS_5ShapeEP7QWidget(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QRubberBand11setGeometryERK5QRect(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 4 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget4showEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #3

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN15TCPStreamDialog11axisClickedEP7QCPAxisNS0_14SelectablePartEP11QMouseEvent(ptr noundef align 8 dereferenceable_or_null(608) %0, ptr nofree noundef readnone captures(address) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 280
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 136
  %i.i = load i32, ptr %i.h, align 8
  %switch = icmp ult i32 %i.i, 5
  br i1 %switch, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.d, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %1, %i.k
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %0, i64 136
  %i.n = load i32, ptr %i.m, align 8
  %switch6 = icmp ult i32 %i.n, 2
  br i1 %switch6, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sink9 = phi i64 [ 112, %bb.b ], [ 132, %bb.d ]
  %i.o = getelementptr i8, ptr %0, i64 %.sink9    ; 2 uses
  %i.p = load i8, ptr %i.o, align 4, !range !7, !noundef !8
  %not. = xor i8 %i.p, 1
  store i8 %not., ptr %i.o, align 4
  tail call void @_ZN15TCPStreamDialog9fillGraphEbb(ptr noundef align 8 dereferenceable_or_null(608) %0, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZNK15QCPItemPosition8axisRectEv(ptr noundef align 8 dereferenceable_or_null(160)) local_unnamed_addr #3

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef ptr @_ZNK9QMultiMapIdP7segmentE5valueERKdRKS1_(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef align 8 dereferenceable(8) %1, ptr noundef align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNKSt8multimapIdP7segmentSt4lessIdESaISt4pairIKdS1_EEE4findERS5_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %_ZNKSt8multimapIdP7segmentSt4lessIdESaISt4pairIKdS1_EEE4findERS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.e = load double, ptr %1, align 8             ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.c ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.c ]
  %i.f = getelementptr i8, ptr %.012.i.i.i, i64 32
  %i.g = load double, ptr %i.f, align 8
  %i.h = fcmp olt double %i.g, %i.e               ; 2 uses
  %.19.i.i.i = select i1 %i.h, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.h, i64 24, i64 16
  %.1.in.i.i.i = getelementptr i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIdSt4pairIKdP7segmentESt10_Select1stIS4_ESt4lessIdESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %bb.c, !llvm.loop !71

_ZNKSt8_Rb_treeIdSt4pairIKdP7segmentESt10_Select1stIS4_ESt4lessIdESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %bb.c
  %i.i = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.i, label %_ZNKSt8multimapIdP7segmentSt4lessIdESaISt4pairIKdS1_EEE4findERS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8_Rb_treeIdSt4pairIKdP7segmentESt10_Select1stIS4_ESt4lessIdESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.j = getelementptr i8, ptr %.19.i.i.i, i64 32
  %i.k = load double, ptr %i.j, align 8
  %i.l = fcmp olt double %i.e, %i.k
  br i1 %i.l, label %_ZNKSt8multimapIdP7segmentSt4lessIdESaISt4pairIKdS1_EEE4findERS5_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %.19.i.i.i, i64 40
  br label %_ZNKSt8multimapIdP7segmentSt4lessIdESaISt4pairIKdS1_EEE4findERS5_.exit.thread

_ZNKSt8multimapIdP7segmentSt4lessIdESaISt4pairIKdS1_EEE4findERS5_.exit.thread: ; preds = %bb.e, %_ZNKSt8_Rb_treeIdSt4pairIKdP7segmentESt10_Select1stIS4_ESt4lessIdESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.d, %bb.b, %bb.a
  %.1.in = phi ptr [ %2, %bb.a ], [ %i.m, %bb.e ], [ %2, %_ZNKSt8_Rb_treeIdSt4pairIKdP7segmentESt10_Select1stIS4_ESt4lessIdESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i ], [ %2, %bb.d ], [ %2, %bb.b ]
  %.1 = load ptr, ptr %.1.in, align 8
  ret ptr %.1
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef ptr @_ZNK4QMapIdP7segmentE5valueERKdRKS1_(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef align 8 dereferenceable(8) %1, ptr noundef align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNKSt3mapIdP7segmentSt4lessIdESaISt4pairIKdS1_EEE4findERS5_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIdP7segmentSt4lessIdESaISt4pairIKdS1_EEE4findERS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.e = load double, ptr %1, align 8             ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.c ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.c ]
  %i.f = getelementptr i8, ptr %.012.i.i.i, i64 32
  %i.g = load double, ptr %i.f, align 8
  %i.h = fcmp olt double %i.g, %i.e               ; 2 uses
  %.19.i.i.i = select i1 %i.h, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.h, i64 24, i64 16
  %.1.in.i.i.i = getelementptr i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIdSt4pairIKdP7segmentESt10_Select1stIS4_ESt4lessIdESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %bb.c, !llvm.loop !71

_ZNKSt8_Rb_treeIdSt4pairIKdP7segmentESt10_Select1stIS4_ESt4lessIdESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %bb.c
  %i.i = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.i, label %_ZNKSt3mapIdP7segmentSt4lessIdESaISt4pairIKdS1_EEE4findERS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8_Rb_treeIdSt4pairIKdP7segmentESt10_Select1stIS4_ESt4lessIdESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.j = getelementptr i8, ptr %.19.i.i.i, i64 32
  %i.k = load double, ptr %i.j, align 8
  %i.l = fcmp olt double %i.e, %i.k
  br i1 %i.l, label %_ZNKSt3mapIdP7segmentSt4lessIdESaISt4pairIKdS1_EEE4findERS5_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %.19.i.i.i, i64 40
  br label %_ZNKSt3mapIdP7segmentSt4lessIdESaISt4pairIKdS1_EEE4findERS5_.exit.thread

_ZNKSt3mapIdP7segmentSt4lessIdESaISt4pairIKdS1_EEE4findERS5_.exit.thread: ; preds = %bb.e, %_ZNKSt8_Rb_treeIdSt4pairIKdP7segmentESt10_Select1stIS4_ESt4lessIdESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.d, %bb.b, %bb.a
  %.1.in = phi ptr [ %2, %bb.a ], [ %i.m, %bb.e ], [ %2, %_ZNKSt8_Rb_treeIdSt4pairIKdP7segmentESt10_Select1stIS4_ESt4lessIdESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i ], [ %2, %bb.d ], [ %2, %bb.b ]
  %.1 = load ptr, ptr %.1.in, align 8
  ret ptr %.1
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN6QLabel7setTextERK7QString(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QString6numberEdci(ptr dead_on_unwind writable sret(%class.QString) align 8, double noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN13QCPItemTracer11setGraphKeyEd(ptr noundef align 8 dereferenceable_or_null(209), double noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare noundef double @_ZNK7QCPAxis12pixelToCoordEd(ptr noundef align 8 dereferenceable_or_null(472), double noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZNK7QString3argEdici5QChar(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(24), double noundef, i32 noundef, i8 noundef signext, i32 noundef, i16) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget4hideEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QCPAxis13setRangeLowerEd(ptr noundef align 8 dereferenceable_or_null(472), double noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QCPAxis13setRangeUpperEd(ptr noundef align 8 dereferenceable_or_null(472), double noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZNK7QWidget6cursorEv(ptr dead_on_unwind writable sret(%class.QCursor) align 8, ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK7QCursor5shapeEv(ptr noundef align 8 dereferenceable_or_null(8)) local_unnamed_addr #3

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN15TCPStreamDialog15transformYRangeERK8QCPRange(ptr noundef align 8 dereferenceable_or_null(608) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %class.QLineF, align 8              ; 7 uses
  %3 = alloca %class.QLineF, align 8              ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 416        ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 488
  %i.c = load i16, ptr %i.b, align 8              ; 2 uses
  %i.d = and i16 %i.c, 992
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i16 %i.c, 31
  %i.g = zext nneg i16 %i.f to i32
  br label %_ZNK10QTransform10isIdentityEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZNK10QTransform4typeEv(ptr noundef align 8 dereferenceable_or_null(74) %i.a)
  br label %_ZNK10QTransform10isIdentityEv.exit

_ZNK10QTransform10isIdentityEv.exit:              ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK10QTransform10isIdentityEv.exit
  %i.j = getelementptr i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 280
  %i.m = load ptr, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.n = load double, ptr %1, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load double, ptr %i.o, align 8
  store double 1.000000e+00, ptr %2, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.n, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double 1.000000e+00, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %i.p, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZNK10QTransform3mapERK6QLineF(ptr dead_on_unwind nonnull writable sret(%class.QLineF) align 8 %3, ptr noundef align 8 dereferenceable_or_null(74) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.t = getelementptr i8, ptr %i.m, i64 64       ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = load double, ptr %i.v, align 8
  call void @_ZN7QCPAxis13setRangeUpperEd(ptr noundef align 8 dereferenceable_or_null(472) %i.u, double noundef %i.w)
  %i.x = load ptr, ptr %i.t, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load double, ptr %i.y, align 8
  call void @_ZN7QCPAxis13setRangeLowerEd(ptr noundef align 8 dereferenceable_or_null(472) %i.x, double noundef %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.e

bb.e:                                             ; preds = %_ZNK10QTransform10isIdentityEv.exit, %bb.d
  ret void
}

; Function Attrs: null_pointer_is_valid
end_hunk_0
