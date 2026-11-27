Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet_diagram?download=true
inline.NumInlined: 1507
inline.NumDeleted: 735
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN14VariantPointerI10field_infoE5asPtrE8QVariant:bb.a

_Zeq9QMetaTypeS_.exit.thread.i.i:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %_Zeq9QMetaTypeS_.exit.thread10.i.i, label %bb.c

_Zeq9QMetaTypeS_.exit.thread10.i.i:               ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.e, i64 12
  %i.h = load atomic i32, ptr %i.g monotonic, align 4 ; 2 uses
  %.not6.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not6.not.i.i.i.i, label %bb.d, label %_ZNK9QMetaType2idEi.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = call noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %1)
  br label %_ZNK9QMetaType2idEi.exit.i.i.i

_ZNK9QMetaType2idEi.exit.i.i.i:                   ; preds = %bb.d, %bb.c
  %.1.i.i.i.i = phi i32 [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  %i.j = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperIPvE8metaTypeE, i64 12) monotonic, align 4 ; 2 uses
  %.not6.not.i7.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not6.not.i7.i.i.i, label %bb.e, label %_Zeq9QMetaTypeS_.exit.i.i

bb.e:                                             ; preds = %_ZNK9QMetaType2idEi.exit.i.i.i
  %i.k = call noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %2)
  br label %_Zeq9QMetaTypeS_.exit.i.i

_Zeq9QMetaTypeS_.exit.i.i:                        ; preds = %bb.e, %_ZNK9QMetaType2idEi.exit.i.i.i
  %.1.i8.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.j, %_ZNK9QMetaType2idEi.exit.i.i.i ]
  %i.l = icmp eq i32 %.1.i.i.i.i, %.1.i8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_Zeq9QMetaTypeS_.exit.i.i, %_Zeq9QMetaTypeS_.exit.thread.i.i
  %i.m = load ptr, ptr %0, align 8
  br label %_ZNK8QVariant5valueIPvEET_v.exit

bb.g:                                             ; preds = %_Zeq9QMetaTypeS_.exit.i.i, %_Zeq9QMetaTypeS_.exit.thread10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8
  %i.n = call ptr @_ZNK8QVariant8metaTypeEv(ptr noundef align 8 dereferenceable(32) dereferenceable_or_null(32) %0)
  %i.o = load i64, ptr %i.b, align 8
  %i.p = and i64 %i.o, 1
  %.not.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i, label %_ZNK8QVariant9constDataEv.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %0, align 8                ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr i8, ptr %i.q, i64 %i.t
  br label %_ZNK8QVariant9constDataEv.exit.i.i

_ZNK8QVariant9constDataEv.exit.i.i:               ; preds = %bb.h, %bb.g
  %i.v = phi ptr [ %i.u, %bb.h ], [ %0, %bb.g ]
  %i.w = call noundef zeroext i1 @_ZN9QMetaType7convertES_PKvS_Pv(ptr %i.n, ptr noundef %i.v, ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperIPvE8metaTypeE, ptr noundef nonnull %i.a) ; 0 uses
  %i.x = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZNK8QVariant5valueIPvEET_v.exit

_ZNK8QVariant5valueIPvEET_v.exit:                 ; preds = %bb.f, %_ZNK8QVariant9constDataEv.exit.i.i
  %.0.i.i = phi ptr [ %i.m, %bb.f ], [ %i.x, %_ZNK8QVariant9constDataEv.exit.i.i ]
  ret ptr %.0.i.i
}

; Function Attrs: null_pointer_is_valid
declare void @_ZNK13QGraphicsItem4dataEi(ptr dead_on_unwind writable sret(%class.QVariant) align 8, ptr noundef align 8 dereferenceable_or_null(16), i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN8QVariantD1Ev(ptr noundef align 8 dead_on_return(32) dereferenceable_or_null(32)) unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare void @_ZN16FieldInformationC1EP10field_infoP7QObject(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN14QGraphicsSceneC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN13QGraphicsView8setSceneEP14QGraphicsScene(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN14QGraphicsScene16selectionChangedEv(ptr noundef align 8 dereferenceable_or_null(16)) #1

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZN14QGraphicsScene13addSimpleTextERK7QStringRK5QFont(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef align 8 dereferenceable(24), ptr noundef align 8 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN5QFontC1Ev(ptr noundef align 8 dereferenceable_or_null(12)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN23QGraphicsSimpleTextItem7setFontERK5QFont(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef align 8 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN4QPenC1Ev(ptr noundef align 8 dereferenceable_or_null(8)) unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN4QPenD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare void @_ZN12QFontMetricsC1ERK5QFont(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(12)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK12QFontMetrics17horizontalAdvanceE5QChar(ptr noundef align 8 dereferenceable_or_null(8), i16) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QString6numberEii(ptr dead_on_unwind writable sret(%class.QString) align 8, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare noundef double @_ZNK13QGraphicsItem6zValueEv(ptr noundef align 8 dereferenceable_or_null(16)) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN28FieldInformationGraphicsItemC2EP10field_infoiiPK13DiagramLayoutP13QGraphicsItem(ptr noundef align 8 dereferenceable_or_null(192) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.QString, align 16            ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %class.QString, align 16            ; 5 uses
  %8 = alloca %class.QPolygonF, align 8           ; 9 uses
  %9 = alloca %class.QRectF, align 16             ; 14 uses
  %10 = alloca %class.QPolygonF, align 16         ; 9 uses
  %11 = alloca %class.QPolygonF, align 16         ; 9 uses
  %12 = alloca %class.QPolygonF, align 8          ; 9 uses
  %13 = alloca %class.QPolygonF, align 16         ; 9 uses
  %14 = alloca %class.QPolygonF, align 8          ; 9 uses
  %15 = alloca %class.QPainterPath, align 8       ; 8 uses
  %16 = alloca %class.QPolygonF, align 16         ; 9 uses
  %17 = alloca %class.QPainterPath, align 8       ; 7 uses
  %18 = alloca %class.QTransform, align 8         ; 6 uses
  %19 = alloca %class.QString, align 8            ; 9 uses
  %20 = alloca %class.QString, align 8            ; 9 uses
  %21 = alloca %class.QString, align 8            ; 9 uses
  %22 = alloca %class.QString, align 8            ; 11 uses
  %23 = alloca %"struct.FieldInformation::HeaderInfo", align 8 ; 10 uses
  %24 = alloca %"struct.FieldInformation::HeaderInfo", align 8 ; 9 uses
  %25 = alloca %class.QString, align 8            ; 9 uses
  %26 = alloca %class.QVariant, align 8           ; 7 uses
  %27 = alloca %class.QString, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZN20QGraphicsPolygonItemC2ERK9QPolygonFP13QGraphicsItem(ptr noundef align 8 dereferenceable_or_null(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %5)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %8, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5QListI7QPointFED2Ev.exit, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i: ; preds = %bb.b
  %i.c = atomicrmw add ptr %i.b, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.c, 1
  br i1 %.not.i.i, label %bb.c, label %_ZN5QListI7QPointFED2Ev.exit

bb.c:                                             ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i
  %i.d = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.d, i64 noundef 16, i64 noundef 8) #20
  br label %_ZN5QListI7QPointFED2Ev.exit

_ZN5QListI7QPointFED2Ev.exit:                     ; preds = %bb.b, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  store ptr getelementptr inbounds nuw inrange(-16, 296) (i8, ptr @_ZTV28FieldInformationGraphicsItem, i64 16), ptr %0, align 8
  %i.e = getelementptr i8, ptr %0, i64 16         ; 6 uses
  %i.f = invoke noalias noundef dereferenceable_or_null(40) ptr @_Znwm(i64 noundef 40) #19
          to label %bb.d unwind label %bb.i       ; 3 uses

bb.d:                                             ; preds = %_ZN5QListI7QPointFED2Ev.exit
  invoke void @_ZN16FieldInformationC1EP10field_infoP7QObject(ptr noundef align 8 dereferenceable_or_null(40) %i.f, ptr noundef %1, ptr noundef null)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  store ptr %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %7, i64 7, ptr @.str.14)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.h = load <2 x ptr>, ptr %7, align 16
  store <2 x ptr> %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 16
  store i64 %i.k, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i32 %2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %4, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %29 = zext i32 %3 to i64
  %30 = or disjoint i64 %29, -4294967296
  store i64 %30, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.o, i8 0, i64 88, i1 false)
  %i.r = invoke noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #19
          to label %bb.k unwind label %bb.s       ; 4 uses

bb.g:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %8, align 8                ; 2 uses
  %.not.i.i.i101 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i101, label %_ZN5QListI7QPointFED2Ev.exit104, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i102

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i102: ; preds = %bb.g
  %i.u = atomicrmw add ptr %i.t, i32 -1 acq_rel, align 4
  %.not.i.i103 = icmp eq i32 %i.u, 1
  br i1 %.not.i.i103, label %bb.h, label %_ZN5QListI7QPointFED2Ev.exit104

bb.h:                                             ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i102
  %i.v = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.v, i64 noundef 16, i64 noundef 8) #20
  br label %_ZN5QListI7QPointFED2Ev.exit104

_ZN5QListI7QPointFED2Ev.exit104:                  ; preds = %bb.g, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i102, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.dl

bb.i:                                             ; preds = %bb.e, %_ZN5QListI7QPointFED2Ev.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.j:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef 40) #22
  br label %bb.dk

bb.k:                                             ; preds = %bb.f
  invoke void @_ZN17QGraphicsLineItemC1EP13QGraphicsItem(ptr noundef align 8 dereferenceable_or_null(16) %i.r, ptr noundef %0)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  store ptr %i.r, ptr %i.q, align 8
  invoke void @_ZN13QGraphicsItem10setVisibleEb(ptr noundef align 8 dereferenceable_or_null(16) %i.r, i1 noundef zeroext false)
          to label %_ZN13QGraphicsItem4hideEv.exit unwind label %bb.s

_ZN13QGraphicsItem4hideEv.exit:                   ; preds = %bb.l
  %i.y = invoke noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #19
          to label %bb.m unwind label %bb.s       ; 4 uses

bb.m:                                             ; preds = %_ZN13QGraphicsItem4hideEv.exit
  invoke void @_ZN17QGraphicsLineItemC1EP13QGraphicsItem(ptr noundef align 8 dereferenceable_or_null(16) %i.y, ptr noundef %0)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr i8, ptr %0, i64 168
  store ptr %i.y, ptr %i.z, align 8
  invoke void @_ZN13QGraphicsItem10setVisibleEb(ptr noundef align 8 dereferenceable_or_null(16) %i.y, i1 noundef zeroext false)
          to label %_ZN13QGraphicsItem4hideEv.exit.1 unwind label %bb.s

_ZN13QGraphicsItem4hideEv.exit.1:                 ; preds = %bb.n
  %i.aa = invoke noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #19
          to label %bb.o unwind label %bb.s       ; 4 uses

bb.o:                                             ; preds = %_ZN13QGraphicsItem4hideEv.exit.1
  invoke void @_ZN17QGraphicsLineItemC1EP13QGraphicsItem(ptr noundef align 8 dereferenceable_or_null(16) %i.aa, ptr noundef %0)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ab = getelementptr i8, ptr %0, i64 176
  store ptr %i.aa, ptr %i.ab, align 8
  invoke void @_ZN13QGraphicsItem10setVisibleEb(ptr noundef align 8 dereferenceable_or_null(16) %i.aa, i1 noundef zeroext false)
          to label %_ZN13QGraphicsItem4hideEv.exit.2 unwind label %bb.s

_ZN13QGraphicsItem4hideEv.exit.2:                 ; preds = %bb.p
  %i.ac = invoke noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #19
          to label %bb.q unwind label %bb.s       ; 4 uses

bb.q:                                             ; preds = %_ZN13QGraphicsItem4hideEv.exit.2
  invoke void @_ZN17QGraphicsLineItemC1EP13QGraphicsItem(ptr noundef align 8 dereferenceable_or_null(16) %i.ac, ptr noundef %0)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ad = getelementptr i8, ptr %0, i64 184
  store ptr %i.ac, ptr %i.ad, align 8
  invoke void @_ZN13QGraphicsItem10setVisibleEb(ptr noundef align 8 dereferenceable_or_null(16) %i.ac, i1 noundef zeroext false)
          to label %_ZN13QGraphicsItem4hideEv.exit.3 unwind label %bb.s

_ZN13QGraphicsItem4hideEv.exit.3:                 ; preds = %bb.r
  %i.ae = load ptr, ptr %i.m, align 8
  %i.af = load i32, ptr %i.ae, align 8            ; 11 uses
  %i.ag = load i32, ptr %i.l, align 8
  %i.ah = srem i32 %i.ag, %i.af                   ; 4 uses
  %i.ai = add i32 %i.ah, %3
  %i.aj = icmp sgt i32 %i.ai, %i.af
  br i1 %i.aj, label %bb.u, label %bb.w

bb.s:                                             ; preds = %bb.r, %_ZN13QGraphicsItem4hideEv.exit.2, %bb.p, %_ZN13QGraphicsItem4hideEv.exit.1, %bb.n, %_ZN13QGraphicsItem4hideEv.exit, %bb.l, %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.t:                                             ; preds = %bb.q, %bb.o, %bb.m, %bb.k
  %.lcssa = phi ptr [ %i.r, %bb.k ], [ %i.y, %bb.m ], [ %i.aa, %bb.o ], [ %i.ac, %bb.q ]
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %.lcssa, i64 noundef 16) #22
  br label %bb.dj

bb.u:                                             ; preds = %_ZN13QGraphicsItem4hideEv.exit.3
  %i.am = sub i32 %i.af, %i.ah                    ; 3 uses
  %i.an = sub i32 %3, %i.am                       ; 3 uses
  %i.ao = icmp ne i32 %i.ah, 0
  %.not = icmp slt i32 %i.an, %i.af
  %or.cond = or i1 %i.ao, %.not
  br i1 %or.cond, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ap = srem i32 %i.an, %i.af
  store i32 0, ptr %28, align 4
  br label %bb.w

bb.w:                                             ; preds = %_ZN13QGraphicsItem4hideEv.exit.3, %bb.u, %bb.v
  %.050 = phi i32 [ %i.ap, %bb.v ], [ %i.an, %bb.u ], [ 0, %_ZN13QGraphicsItem4hideEv.exit.3 ] ; 3 uses
  %.049 = phi i32 [ %i.am, %bb.v ], [ %i.am, %bb.u ], [ %3, %_ZN13QGraphicsItem4hideEv.exit.3 ] ; 3 uses
  %i.aq = icmp sgt i32 %.050, %i.af
  br i1 %i.aq, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ar = sub i32 %.050, %i.af                    ; 3 uses
  %i.as = icmp sgt i32 %i.ar, %i.af
  br i1 %i.as, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.at = srem i32 %i.ar, %i.af
  store i32 1, ptr %28, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.x, %bb.y
  %.1 = phi i32 [ %i.at, %bb.y ], [ %i.ar, %bb.x ], [ 0, %bb.w ] ; 3 uses
  %.0 = phi i32 [ %i.af, %bb.y ], [ %i.af, %bb.x ], [ %.050, %bb.w ] ; 4 uses
  %i.au = add i32 %.1, %.049
  %i.av = add i32 %i.au, %.0
  store i32 %i.av, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.aw = sitofp i32 %i.ah to double
  %i.ax = sitofp i32 %.049 to double
  store double %i.aw, ptr %9, align 16
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8
  store double 0.000000e+00, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store double %i.ax, ptr %i.az, align 16
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store double 1.000000e+00, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZN9QPolygonFC1ERK6QRectF(ptr noundef nonnull align 8 dereferenceable_or_null(24) %10, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.aa unwind label %bb.ak

bb.aa:                                            ; preds = %bb.z
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bc = load i64, ptr %i.bb, align 16
  %i.bd = load <2 x ptr>, ptr %10, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.be = load ptr, ptr %i.o, align 8             ; 3 uses
  store <2 x ptr> %i.bd, ptr %i.o, align 8
  %i.bf = getelementptr i8, ptr %0, i64 88        ; 4 uses
  store i64 %i.bc, ptr %i.bf, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i, label %_ZN9QPolygonFaSEOS_.exit, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i.i.i

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i.i.i: ; preds = %bb.aa
  %i.bg = atomicrmw add ptr %i.be, i32 -1 acq_rel, align 4
  %.not.i.i.i.i = icmp eq i32 %i.bg, 1
  br i1 %.not.i.i.i.i, label %bb.ab, label %_ZN9QPolygonFaSEOS_.exit

bb.ab:                                            ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.be, i64 noundef 16, i64 noundef 8) #20
  br label %_ZN9QPolygonFaSEOS_.exit

_ZN9QPolygonFaSEOS_.exit:                         ; preds = %bb.aa, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i.i.i, %bb.ab
  %i.bh = load ptr, ptr %10, align 16             ; 2 uses
  %.not.i.i.i105 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i105, label %_ZN5QListI7QPointFED2Ev.exit108, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i106

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i106: ; preds = %_ZN9QPolygonFaSEOS_.exit
  %i.bi = atomicrmw add ptr %i.bh, i32 -1 acq_rel, align 4
  %.not.i.i107 = icmp eq i32 %i.bi, 1
  br i1 %.not.i.i107, label %bb.ac, label %_ZN5QListI7QPointFED2Ev.exit108

bb.ac:                                            ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i106
  %i.bj = load ptr, ptr %10, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bj, i64 noundef 16, i64 noundef 8) #20
  br label %_ZN5QListI7QPointFED2Ev.exit108

_ZN5QListI7QPointFED2Ev.exit108:                  ; preds = %_ZN9QPolygonFaSEOS_.exit, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i106, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 16 dereferenceable(32) %9, i64 32, i1 false)
  %i.bk = icmp sgt i32 %.0, 0
end_hunk_0
