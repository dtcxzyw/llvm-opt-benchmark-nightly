Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/extcap_argument?download=true
inline.NumInlined: 911
inline.NumDeleted: 322
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN15ExtArgTimestamp15setDefaultValueEv:bb.a
  %3 = alloca %class.QString, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_ZN9QDateTimeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(8) %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, ptr noundef align 8 dereferenceable_or_null(80) %0)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = invoke noundef i64 @_ZN7QString17toIntegral_helperE11QStringViewPbi(i64 %i.g, ptr %i.e, ptr noundef null, i32 noundef 10)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.i = add i64 %i.h, 2147483648
  %.not.i.i = icmp ult i64 %i.i, 4294967296
  %spec.select = select i1 %.not.i.i, i64 %i.h, i64 0
  invoke void @_ZN9QDateTime18fromSecsSinceEpochExN2Qt8TimeSpecEi(ptr dead_on_unwind nonnull writable sret(%class.QDateTime) align 8 %2, i64 noundef %spec.select, i32 noundef 0, i32 noundef 0)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %.noexc
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %1, align 8
  %i.j = load i64, ptr %2, align 8
  store i64 %i.j, ptr %1, align 8
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %2, align 8
  call void @_ZN9QDateTimeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %2) #23
  %i.k = load ptr, ptr %3, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.c
  %i.l = atomicrmw add ptr %i.k, i32 -1 acq_rel, align 4
  %.not.i.i7 = icmp eq i32 %i.l, 1
  br i1 %.not.i.i7, label %bb.d, label %_ZN7QStringD2Ev.exit

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.m = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.m, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.n = getelementptr i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8
  invoke void @_ZN13QDateTimeEdit11setDateTimeERK9QDateTime(ptr noundef align 8 dereferenceable_or_null(40) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZN7QStringD2Ev.exit
  call void @_ZN9QDateTimeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.f:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit11

bb.g:                                             ; preds = %bb.b, %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.r = load ptr, ptr %3, align 8                ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i8, label %_ZN7QStringD2Ev.exit11, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i9

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i9:     ; preds = %bb.g
  %i.s = atomicrmw add ptr %i.r, i32 -1 acq_rel, align 4
  %.not.i.i10 = icmp eq i32 %i.s, 1
  br i1 %.not.i.i10, label %bb.h, label %_ZN7QStringD2Ev.exit11

bb.h:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i9
  %i.t = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.t, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit11

_ZN7QStringD2Ev.exit11:                           ; preds = %bb.h, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i9, %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.q, %bb.g ], [ %i.q, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i9 ], [ %i.q, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.j

bb.i:                                             ; preds = %_ZN7QStringD2Ev.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN7QStringD2Ev.exit11
  %.pn5 = phi { ptr, i32 } [ %i.u, %bb.i ], [ %.pn, %_ZN7QStringD2Ev.exit11 ]
  call void @_ZN9QDateTimeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn5
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN13QDateTimeEdit11setDateTimeERK9QDateTime(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN14ExtArgSelectorC2EP11_extcap_argP7QObject(ptr noundef align 8 dereferenceable_or_null(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN14ExtcapArgumentC2EP11_extcap_argP7QObject(ptr noundef align 8 dereferenceable_or_null(60) %0, ptr noundef %1, ptr noundef %2)
  store ptr getelementptr inbounds nuw inrange(-16, 192) (i8, ptr @_ZTV14ExtArgSelector, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef ptr @_ZN14ExtArgSelector12createEditorEP7QWidget(ptr noundef align 8 dereferenceable_or_null(72) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %i.c = alloca { i64, i64 }, align 8             ; 5 uses
  %i.d = alloca { i64, i64 }, align 8             ; 5 uses
  %2 = alloca %class.QString, align 16            ; 5 uses
  %3 = alloca %class.QIcon, align 8               ; 7 uses
  %4 = alloca %class.QString, align 8             ; 9 uses
  %5 = alloca %class.QString, align 16            ; 10 uses
  %6 = alloca %class.QVariant, align 8            ; 7 uses
  %7 = alloca %class.QString, align 16            ; 10 uses
  %8 = alloca %class.QString, align 16            ; 12 uses
  %9 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %10 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %i.e = tail call noalias noundef dereferenceable_or_null(40) ptr @_Znwm(i64 noundef 40) #24 ; 5 uses
  invoke void @_ZN7QWidgetC1EPS_6QFlagsIN2Qt10WindowTypeEE(ptr noundef align 8 dereferenceable_or_null(40) %i.e, ptr noundef %1, i32 0)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #24 ; 7 uses
  invoke void @_ZN11QHBoxLayoutC1Ev(ptr noundef align 8 dereferenceable_or_null(28) %i.f)
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.g = tail call { i64, i64 } @_ZNK7QLayout15contentsMarginsEv(ptr noundef align 8 dereferenceable_or_null(28) %i.f) ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1
  %.sroa.0111.4.extract.shift = lshr i64 %i.h, 32
  %.sroa.0111.4.extract.trunc = trunc nuw i64 %.sroa.0111.4.extract.shift to i32
  %.sroa.5112.12.extract.shift = lshr i64 %i.i, 32
  %.sroa.5112.12.extract.trunc = trunc nuw i64 %.sroa.5112.12.extract.shift to i32
  tail call void @_ZN7QLayout18setContentsMarginsEiiii(ptr noundef align 8 dereferenceable_or_null(28) %i.f, i32 noundef 0, i32 noundef %.sroa.0111.4.extract.trunc, i32 noundef 0, i32 noundef %.sroa.5112.12.extract.trunc)
  %i.j = tail call noalias noundef dereferenceable_or_null(40) ptr @_Znwm(i64 noundef 40) #24 ; 4 uses
  invoke void @_ZN9QComboBoxC1EP7QWidget(ptr noundef align 8 dereferenceable_or_null(40) %i.j, ptr noundef %1)
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 64         ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.l = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN14QByteArrayViewC2IPcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS3_.exit, label %.split.i

.split.i:                                         ; preds = %bb.d
  %i.p = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.o) #23
  br label %_ZN14QByteArrayViewC2IPcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS3_.exit

_ZN14QByteArrayViewC2IPcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS3_.exit: ; preds = %bb.d, %.split.i
  %.sink5.i = phi i64 [ %i.p, %.split.i ], [ 0, %bb.d ]
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, i64 %.sink5.i, ptr %i.o)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZN14QByteArrayViewC2IPcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS3_.exit
  invoke void @_ZN7QWidget10setToolTipERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %4, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit43, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.f
  %i.r = atomicrmw add ptr %i.q, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.r, 1
  br i1 %.not.i.i, label %bb.g, label %_ZN7QStringD2Ev.exit43

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.s = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.s, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit43

_ZN7QStringD2Ev.exit43:                           ; preds = %bb.g, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.t = load ptr, ptr %i.k, align 8
  call void @_ZN10QBoxLayout9addWidgetEP7QWidgeti6QFlagsIN2Qt13AlignmentFlagEE(ptr noundef align 8 dereferenceable_or_null(28) %i.f, ptr noundef %i.t, i32 noundef 0, i32 0)
  %i.u = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %_ZN7QStringD2Ev.exit43
  %i.x = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %11 = and i64 %i.v, 2305843009213693951
  %.not119120 = icmp eq i64 %11, 0
  br i1 %.not119120, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN7QStringD2Ev.exit52
  %.sroa.0101.0121 = phi ptr [ %i.y, %.lr.ph ], [ %i.aw, %_ZN7QStringD2Ev.exit52 ] ; 5 uses
  %i.ab = load ptr, ptr %i.k, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.ac = getelementptr i8, ptr %.sroa.0101.0121, i64 8 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %i.ac, align 8, !noalias !30
  %i.ae = load ptr, ptr %i.ac, align 8, !noalias !30 ; 2 uses
  store <2 x ptr> %i.ad, ptr %5, align 16, !alias.scope !30
  %i.af = getelementptr i8, ptr %.sroa.0101.0121, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !noalias !30
  store i64 %i.ag, ptr %i.z, align 16, !alias.scope !30
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %_ZNK11ExtcapValue5valueEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = atomicrmw add ptr %i.ae, i32 1 acq_rel, align 4, !noalias !30 ; 0 uses
  br label %_ZNK11ExtcapValue5valueEv.exit

_ZNK11ExtcapValue5valueEv.exit:                   ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.ai = getelementptr i8, ptr %.sroa.0101.0121, i64 32 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !noalias !31
  %i.ak = load ptr, ptr %i.ai, align 8, !noalias !31 ; 2 uses
  store <2 x ptr> %i.aj, ptr %7, align 16, !alias.scope !31
  %i.al = getelementptr i8, ptr %.sroa.0101.0121, i64 48
  %i.am = load i64, ptr %i.al, align 8, !noalias !31
  store i64 %i.am, ptr %i.aa, align 16, !alias.scope !31
  %.not.i.i.i.i44 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i44, label %_ZNK11ExtcapValue4callEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK11ExtcapValue5valueEv.exit
  %i.an = atomicrmw add ptr %i.ak, i32 1 acq_rel, align 4, !noalias !31 ; 0 uses
  br label %_ZNK11ExtcapValue4callEv.exit

_ZNK11ExtcapValue4callEv.exit:                    ; preds = %_ZNK11ExtcapValue5valueEv.exit, %bb.k
  invoke void @_ZN8QVariantC1ERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(32) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.l unwind label %bb.w

bb.l:                                             ; preds = %_ZNK11ExtcapValue4callEv.exit
  %i.ao = invoke noundef i32 @_ZNK9QComboBox5countEv(ptr noundef align 8 dereferenceable_or_null(40) %i.ab)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5QIconC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(8) %3) #23
  invoke void @_ZN9QComboBox10insertItemEiRK5QIconRK7QStringRK8QVariant(ptr noundef align 8 dereferenceable_or_null(40) %i.ab, i32 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QIconD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body

bb.n:                                             ; preds = %.noexc
  call void @_ZN5QIconD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %6) #23
  %i.aq = load ptr, ptr %7, align 16              ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i45, label %_ZN7QStringD2Ev.exit48, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i46

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i46:    ; preds = %bb.n
  %i.ar = atomicrmw add ptr %i.aq, i32 -1 acq_rel, align 4
  %.not.i.i47 = icmp eq i32 %i.ar, 1
  br i1 %.not.i.i47, label %bb.o, label %_ZN7QStringD2Ev.exit48

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i46
  %i.as = load ptr, ptr %7, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.as, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit48

_ZN7QStringD2Ev.exit48:                           ; preds = %bb.n, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i46, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.at = load ptr, ptr %5, align 16              ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i49, label %_ZN7QStringD2Ev.exit52, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i50

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i50:    ; preds = %_ZN7QStringD2Ev.exit48
  %i.au = atomicrmw add ptr %i.at, i32 -1 acq_rel, align 4
  %.not.i.i51 = icmp eq i32 %i.au, 1
  br i1 %.not.i.i51, label %bb.p, label %_ZN7QStringD2Ev.exit52

bb.p:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i50
  %i.av = load ptr, ptr %5, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.av, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit52

_ZN7QStringD2Ev.exit52:                           ; preds = %_ZN7QStringD2Ev.exit48, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i50, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.aw = getelementptr i8, ptr %.sroa.0101.0121, i64 88 ; 2 uses
  %i.ax = load ptr, ptr %i.x, align 8
  %i.ay = load i64, ptr %i.u, align 8
  %i.az = getelementptr [88 x i8], ptr %i.ax, i64 %i.ay
  %.not119 = icmp eq ptr %i.aw, %i.az
  br i1 %.not119, label %.loopexit, label %bb.i, !llvm.loop !25

bb.q:                                             ; preds = %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef 40) #25
  br label %bb.an

bb.r:                                             ; preds = %bb.b
  %i.bb = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef 32) #25
  br label %bb.an

bb.s:                                             ; preds = %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef 40) #25
  br label %bb.an

bb.t:                                             ; preds = %_ZN14QByteArrayViewC2IPcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS3_.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit60

bb.u:                                             ; preds = %bb.e
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bf = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i53, label %_ZN7QStringD2Ev.exit60, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54:    ; preds = %bb.u
  %i.bg = atomicrmw add ptr %i.bf, i32 -1 acq_rel, align 4
  %.not.i.i55 = icmp eq i32 %i.bg, 1
  br i1 %.not.i.i55, label %bb.v, label %_ZN7QStringD2Ev.exit60

bb.v:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54
  %i.bh = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bh, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit60

_ZN7QStringD2Ev.exit60:                           ; preds = %bb.t, %bb.u, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.t ], [ %i.be, %bb.u ], [ %i.be, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54 ], [ %i.be, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.an

bb.w:                                             ; preds = %_ZNK11ExtcapValue4callEv.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.l
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.bj, %bb.x ], [ %i.ap, %bb.m ]
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %6) #23
  br label %bb.y

bb.y:                                             ; preds = %.body, %bb.w
  %.pn35 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bi, %bb.w ]
  %i.bk = load ptr, ptr %7, align 16              ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i61, label %_ZN7QStringD2Ev.exit64, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i62

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i62:    ; preds = %bb.y
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4
  %.not.i.i63 = icmp eq i32 %i.bl, 1
  br i1 %.not.i.i63, label %bb.z, label %_ZN7QStringD2Ev.exit64

bb.z:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i62
  %i.bm = load ptr, ptr %7, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bm, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit64

_ZN7QStringD2Ev.exit64:                           ; preds = %bb.y, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i62, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.bn = load ptr, ptr %5, align 16              ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i65, label %_ZN7QStringD2Ev.exit68, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i66

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i66:    ; preds = %_ZN7QStringD2Ev.exit64
  %i.bo = atomicrmw add ptr %i.bn, i32 -1 acq_rel, align 4
  %.not.i.i67 = icmp eq i32 %i.bo, 1
  br i1 %.not.i.i67, label %bb.aa, label %_ZN7QStringD2Ev.exit68

bb.aa:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i66
  %i.bp = load ptr, ptr %5, align 16
end_hunk_0
begin_hunk_1_@_ZN14ExtArgSelector12createEditorEP7QWidget:bb.a

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i86:    ; preds = %bb.al
  %i.cs = atomicrmw add ptr %i.cr, i32 -1 acq_rel, align 4
  %.not.i.i87 = icmp eq i32 %i.cs, 1
  br i1 %.not.i.i87, label %bb.am, label %_ZN7QStringD2Ev.exit88

bb.am:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i86
  %i.ct = load ptr, ptr %8, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ct, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit88

_ZN7QStringD2Ev.exit88:                           ; preds = %bb.al, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i86, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.an

_ZN14ExtcapArgument6reloadEv.exit.thread:         ; preds = %.loopexit, %_ZN7QStringD2Ev.exit84, %_ZN14ExtcapArgument6reloadEv.exit
  %i.cu = load ptr, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 ptrtoint (ptr @_ZN9QComboBox19currentIndexChangedEi to i64), ptr %i.a, align 8, !noalias !33
  %.fca.1.gep12.i92 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep12.i92, align 8, !noalias !33
  store i64 ptrtoint (ptr @_ZN14ExtcapArgument12onIntChangedEi to i64), ptr %i.b, align 8, !noalias !33
  %.fca.1.gep.i93 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep.i93, align 8, !noalias !33
  %i.cv = call noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #24, !noalias !33 ; 5 uses
  store i32 1, ptr %i.cv, align 4, !noalias !33
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM14ExtcapArgumentFviENS_4ListIJiEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.cw, align 8, !noalias !33
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 ptrtoint (ptr @_ZN14ExtcapArgument12onIntChangedEi to i64), ptr %i.cx, align 8, !noalias !33
  %.repack7.i.i94 = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store i64 0, ptr %.repack7.i.i94, align 8, !noalias !33
  call void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %10, ptr noundef %i.cu, ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %i.cv, i32 noundef 0, ptr noundef null, ptr noundef @_ZN9QComboBox16staticMetaObjectE)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %10) #23
  call void @_ZN7QWidget9setLayoutEP7QLayout(ptr noundef align 8 dereferenceable_or_null(40) %i.e, ptr noundef %i.f)
  ret ptr %i.e

bb.an:                                            ; preds = %bb.s, %_ZN7QStringD2Ev.exit60, %_ZN7QStringD2Ev.exit68, %_ZN7QStringD2Ev.exit88, %bb.r, %bb.q
  %.pn35.pn.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.q ], [ %i.bb, %bb.r ], [ %.pn35, %_ZN7QStringD2Ev.exit68 ], [ %.pn32.pn, %_ZN7QStringD2Ev.exit88 ], [ %.pn, %_ZN7QStringD2Ev.exit60 ], [ %i.bc, %bb.s ]
  resume { ptr, i32 } %.pn35.pn.pn.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidgetC1EPS_6QFlagsIN2Qt10WindowTypeEE(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef, i32) unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QHBoxLayoutC1Ev(ptr noundef align 8 dereferenceable_or_null(28)) unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare { i64, i64 } @_ZNK7QLayout15contentsMarginsEv(ptr noundef align 8 dereferenceable_or_null(28)) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QLayout18setContentsMarginsEiiii(ptr noundef align 8 dereferenceable_or_null(28), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @_ZN9QComboBoxC1EP7QWidget(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef) unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @_ZN10QBoxLayout9addWidgetEP7QWidgeti6QFlagsIN2Qt13AlignmentFlagEE(ptr noundef align 8 dereferenceable_or_null(28), ptr noundef, i32 noundef, i32) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QVariantC1ERK7QString(ptr noundef align 8 dereferenceable_or_null(32), ptr noundef align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN8QVariantD1Ev(ptr noundef align 8 dead_on_return(32) dereferenceable_or_null(32)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN14ExtcapArgument6reloadEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(60) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 52
  %i.d = load i8, ptr %i.c, align 4, !range !15, !noundef !16
  %i.e = trunc nuw i8 %i.d to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.e, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QPushButtonC1ERK7QStringP7QWidget(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 8 dereferenceable(24), ptr noundef) unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @_ZN15QAbstractButton7clickedEb(ptr noundef align 8 dereferenceable_or_null(40), i1 noundef zeroext) #5

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN14ExtArgSelector17onReloadTriggeredEv(ptr noundef align 8 dereferenceable_or_null(72) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QIcon, align 8               ; 7 uses
  %2 = alloca %class.QString, align 16            ; 6 uses
  %3 = alloca %class.QString, align 8             ; 11 uses
  %4 = alloca %class.QVariant, align 8            ; 7 uses
  %5 = alloca %class.QString, align 16            ; 11 uses
  %6 = alloca %class.QString, align 16            ; 10 uses
  %7 = alloca %class.QVariant, align 8            ; 7 uses
  %8 = alloca %class.QString, align 16            ; 10 uses
  %9 = alloca %class.QString, align 16            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr i8, ptr %0, i64 64         ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  call void @_ZNK9QComboBox11currentDataEi(ptr dead_on_unwind nonnull writable sret(%class.QVariant) align 8 %4, ptr noundef align 8 dereferenceable_or_null(40) %i.b, i32 noundef 256)
  invoke void @_ZNK8QVariant8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, ptr noundef nonnull align 8 dereferenceable_or_null(32) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 112
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %char0 = load i8, ptr %i.g, align 1
  %.not21 = icmp eq i8 %char0, 0
  %spec.select = select i1 %.not21, ptr null, ptr %i.g
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ null, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %.not22 = icmp eq ptr %i.h, null
  %i.i = select i1 %.not22, ptr @.str.1, ptr %i.h ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.j = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.i) #23
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, i64 %i.j, ptr nonnull %i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load <2 x ptr>, ptr %2, align 16
  store <2 x ptr> %i.m, ptr %5, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 16             ; 4 uses
  store i64 %i.p, ptr %i.n, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.r, %i.p
  br i1 %i.s, label %_ZneRK7QStringS1_.exit, label %_ZneRK7QStringS1_.exit.thread

_ZneRK7QStringS1_.exit:                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef i32 @_ZN9QtPrivate14compareStringsE11QStringViewS0_N2Qt15CaseSensitivityE(i64 %i.p, ptr %i.u, i64 %i.p, ptr %i.l, i32 noundef 1) #26
  %.not69 = icmp eq i32 %i.v, 0
  br i1 %.not69, label %bb.h, label %_ZneRK7QStringS1_.exit.thread

_ZneRK7QStringS1_.exit.thread:                    ; preds = %bb.e, %_ZneRK7QStringS1_.exit
  %i.w = call noundef align 8 dereferenceable(24) ptr @_ZN7QStringaSERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3) #23 ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN7QStringD2Ev.exit63

bb.g:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit59

bb.h:                                             ; preds = %_ZneRK7QStringS1_.exit.thread, %_ZneRK7QStringS1_.exit
  %i.z = invoke noundef zeroext i1 @_ZN14ExtcapArgument12reloadValuesEv(ptr noundef align 8 dereferenceable_or_null(60) %0)
          to label %bb.i unwind label %bb.w

bb.i:                                             ; preds = %bb.h
  br i1 %i.z, label %bb.j, label %._crit_edge.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %._crit_edge.thread

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.a, align 8
  invoke void @_ZN9QComboBox5clearEv(ptr noundef align 8 dereferenceable_or_null(40) %i.ad)
          to label %bb.l unwind label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.af = load i64, ptr %i.aa, align 8
  %10 = and i64 %i.af, 2305843009213693951
  %.not7074 = icmp eq i64 %10, 0
  br i1 %.not7074, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.ag = load ptr, ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.ad
  %.077 = phi i32 [ 0, %.lr.ph ], [ %i.cb, %bb.ad ] ; 3 uses
  %.01876 = phi i32 [ -1, %.lr.ph ], [ %.119, %bb.ad ] ; 2 uses
  %.sroa.0.075 = phi ptr [ %i.ag, %.lr.ph ], [ %i.cc, %bb.ad ] ; 6 uses
  %i.ak = load ptr, ptr %i.a, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.al = getelementptr i8, ptr %.sroa.0.075, i64 8 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !noalias !41
  %i.an = load ptr, ptr %i.al, align 8, !noalias !41 ; 2 uses
  store <2 x ptr> %i.am, ptr %6, align 16, !alias.scope !41
  %i.ao = getelementptr i8, ptr %.sroa.0.075, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !41
  store i64 %i.ap, ptr %i.ah, align 16, !alias.scope !41
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %_ZNK11ExtcapValue5valueEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = atomicrmw add ptr %i.an, i32 1 acq_rel, align 4, !noalias !41 ; 0 uses
  br label %_ZNK11ExtcapValue5valueEv.exit

_ZNK11ExtcapValue5valueEv.exit:                   ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.ar = getelementptr i8, ptr %.sroa.0.075, i64 32 ; 4 uses
  %i.as = load <2 x ptr>, ptr %i.ar, align 8, !noalias !42
  %i.at = load ptr, ptr %i.ar, align 8, !noalias !42 ; 2 uses
  store <2 x ptr> %i.as, ptr %8, align 16, !alias.scope !42
  %i.au = getelementptr i8, ptr %.sroa.0.075, i64 48 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !noalias !42
  store i64 %i.av, ptr %i.ai, align 16, !alias.scope !42
  %.not.i.i.i.i29 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i29, label %_ZNK11ExtcapValue4callEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK11ExtcapValue5valueEv.exit
  %i.aw = atomicrmw add ptr %i.at, i32 1 acq_rel, align 4, !noalias !42 ; 0 uses
  br label %_ZNK11ExtcapValue4callEv.exit

_ZNK11ExtcapValue4callEv.exit:                    ; preds = %_ZNK11ExtcapValue5valueEv.exit, %bb.o
  invoke void @_ZN8QVariantC1ERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %_ZNK11ExtcapValue4callEv.exit
  %i.ax = invoke noundef i32 @_ZNK9QComboBox5countEv(ptr noundef align 8 dereferenceable_or_null(40) %i.ak)
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_ZN5QIconC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(8) %1) #23
  invoke void @_ZN9QComboBox10insertItemEiRK5QIconRK7QStringRK8QVariant(ptr noundef align 8 dereferenceable_or_null(40) %i.ak, i32 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %.noexc
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QIconD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %.body

bb.r:                                             ; preds = %.noexc
  call void @_ZN5QIconD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %7) #23
  %i.az = load ptr, ptr %8, align 16              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.r
  %i.ba = atomicrmw add ptr %i.az, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.ba, 1
  br i1 %.not.i.i, label %bb.s, label %_ZN7QStringD2Ev.exit

bb.s:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.bb = load ptr, ptr %8, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bb, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.r, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.bc = load ptr, ptr %6, align 16              ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i30, label %_ZN7QStringD2Ev.exit33, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i31

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i31:    ; preds = %_ZN7QStringD2Ev.exit
  %i.bd = atomicrmw add ptr %i.bc, i32 -1 acq_rel, align 4
  %.not.i.i32 = icmp eq i32 %i.bd, 1
  br i1 %.not.i.i32, label %bb.t, label %_ZN7QStringD2Ev.exit33

bb.t:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i31
  %i.be = load ptr, ptr %6, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.be, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit33

_ZN7QStringD2Ev.exit33:                           ; preds = %_ZN7QStringD2Ev.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i31, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.bf = load <2 x ptr>, ptr %i.ar, align 8, !noalias !43
  %i.bg = load ptr, ptr %i.ar, align 8, !noalias !43 ; 2 uses
  store <2 x ptr> %i.bf, ptr %9, align 16, !alias.scope !43
  %i.bh = load i64, ptr %i.au, align 8, !noalias !43
  store i64 %i.bh, ptr %i.aj, align 16, !alias.scope !43
  %.not.i.i.i.i34 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i34, label %_ZNK11ExtcapValue4callEv.exit35, label %bb.u

bb.u:                                             ; preds = %_ZN7QStringD2Ev.exit33
  %i.bi = atomicrmw add ptr %i.bg, i32 1 acq_rel, align 4, !noalias !43 ; 0 uses
  br label %_ZNK11ExtcapValue4callEv.exit35

_ZNK11ExtcapValue4callEv.exit35:                  ; preds = %_ZN7QStringD2Ev.exit33, %bb.u
  %i.bj = call noundef i32 @_ZNK7QString7compareERKS_N2Qt15CaseSensitivityE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef 1) #23
  %i.bk = icmp eq i32 %i.bj, 0
  %i.bl = load ptr, ptr %9, align 16              ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i36, label %_ZN7QStringD2Ev.exit39, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i37

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i37:    ; preds = %_ZNK11ExtcapValue4callEv.exit35
  %i.bm = atomicrmw add ptr %i.bl, i32 -1 acq_rel, align 4
  %.not.i.i38 = icmp eq i32 %i.bm, 1
  br i1 %.not.i.i38, label %bb.v, label %_ZN7QStringD2Ev.exit39

bb.v:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i37
  %i.bn = load ptr, ptr %9, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bn, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit39

_ZN7QStringD2Ev.exit39:                           ; preds = %_ZNK11ExtcapValue4callEv.exit35, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i37, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %i.bk, label %bb.ad, label %bb.ac

bb.w:                                             ; preds = %bb.h, %bb.k, %bb.ag, %bb.ae
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.x:                                             ; preds = %_ZNK11ExtcapValue4callEv.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.p
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.q, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.bq, %bb.y ], [ %i.ay, %bb.q ]
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %7) #23
  br label %bb.z

bb.z:                                             ; preds = %.body, %bb.x
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bp, %bb.x ]
  %i.br = load ptr, ptr %8, align 16              ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i40, label %_ZN7QStringD2Ev.exit43, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i41

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i41:    ; preds = %bb.z
  %i.bs = atomicrmw add ptr %i.br, i32 -1 acq_rel, align 4
  %.not.i.i42 = icmp eq i32 %i.bs, 1
  br i1 %.not.i.i42, label %bb.aa, label %_ZN7QStringD2Ev.exit43

bb.aa:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i41
  %i.bt = load ptr, ptr %8, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bt, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit43

_ZN7QStringD2Ev.exit43:                           ; preds = %bb.z, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i41, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.bu = load ptr, ptr %6, align 16              ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i44, label %_ZN7QStringD2Ev.exit47, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i45

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i45:    ; preds = %_ZN7QStringD2Ev.exit43
  %i.bv = atomicrmw add ptr %i.bu, i32 -1 acq_rel, align 4
  %.not.i.i46 = icmp eq i32 %i.bv, 1
  br i1 %.not.i.i46, label %bb.ab, label %_ZN7QStringD2Ev.exit47

bb.ab:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i45
  %i.bw = load ptr, ptr %6, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bw, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit47

_ZN7QStringD2Ev.exit47:                           ; preds = %_ZN7QStringD2Ev.exit43, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i45, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aj

bb.ac:                                            ; preds = %_ZN7QStringD2Ev.exit39
  %i.bx = getelementptr i8, ptr %.sroa.0.075, i64 57
end_hunk_1
begin_hunk_2_@_ZN14ExtArgSelector7isValidEv:bb.a
  br i1 %.not.i.i.i, label %bb.f, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %_ZN14ExtcapArgument10isRequiredEv.exit
  %i.n = atomicrmw add ptr %i.m, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.n, 1
  br i1 %.not.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.o = load ptr, ptr %1, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.o, i64 noundef 2, i64 noundef 8) #23
  br label %bb.f

.critedge:                                        ; preds = %bb.a
  %i.p = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i15, label %.thread, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i16

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i16:    ; preds = %.critedge
  %i.q = atomicrmw add ptr %i.p, i32 -1 acq_rel, align 4
  %.not.i.i17 = icmp eq i32 %i.q, 1
  br i1 %.not.i.i17, label %bb.e, label %.thread

bb.e:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i16
  %i.r = load ptr, ptr %1, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.r, i64 noundef 2, i64 noundef 8) #23
  br label %.thread

bb.f:                                             ; preds = %bb.d, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %_ZN14ExtcapArgument10isRequiredEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.s = getelementptr i8, ptr %0, i64 64
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.o, label %bb.g

.thread:                                          ; preds = %bb.e, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i16, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.u = getelementptr i8, ptr %0, i64 64
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not38 = icmp eq ptr %i.v, null
  br i1 %.not38, label %bb.o, label %.thread41

.thread41:                                        ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  br i1 %.0.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread41, %bb.g
  %i.w = phi ptr [ %i.v, %.thread41 ], [ %i.t, %bb.g ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %2, i8 0, i64 24, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store ptr null, ptr %2, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.2, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 7, ptr %i.y, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.093943 = phi i1 [ false, %bb.i ], [ true, %bb.h ]
  %i.z = phi ptr [ %i.t, %bb.i ], [ %i.w, %bb.h ]
  invoke void @_ZN12ThemeManager18setValidationStateEP7QWidgetRK7QString(ptr noundef nonnull %i.z, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i19, label %.critedge12, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i20

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i20:    ; preds = %bb.k
  %i.ab = atomicrmw add ptr %i.aa, i32 -1 acq_rel, align 4
  %.not.i.i21 = icmp eq i32 %i.ab, 1
  br i1 %.not.i.i21, label %bb.l, label %.critedge12

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i20
  %i.ac = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ac, i64 noundef 2, i64 noundef 8) #23
  br label %.critedge12

.critedge12:                                      ; preds = %bb.l, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i20, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i25, label %.critedge14, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i26

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i26:    ; preds = %bb.m
  %i.af = atomicrmw add ptr %i.ae, i32 -1 acq_rel, align 4
  %.not.i.i27 = icmp eq i32 %i.af, 1
  br i1 %.not.i.i27, label %bb.n, label %.critedge14

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i26
  %i.ag = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ag, i64 noundef 2, i64 noundef 8) #23
  br label %.critedge14

.critedge14:                                      ; preds = %bb.n, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i26, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.ad

bb.o:                                             ; preds = %.thread, %.critedge12, %bb.f
  %.0940 = phi i1 [ true, %.thread ], [ %.093943, %.critedge12 ], [ %.0.i, %bb.f ]
  ret i1 %.0940
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN12ThemeManager18setValidationStateEP7QWidgetRK7QString(ptr noundef, ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN14ExtArgSelector5valueEv(ptr dead_on_unwind noalias writable sret(%class.QString) align 8 %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(72) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QVariant, align 8            ; 7 uses
  %i.a = getelementptr i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %0, i8 0, i64 24, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNK9QComboBox11currentDataEi(ptr dead_on_unwind nonnull writable sret(%class.QVariant) align 8 %2, ptr noundef nonnull align 8 dereferenceable_or_null(40) %i.b, i32 noundef 256)
  invoke void @_ZNK8QVariant8toStringEv(ptr dead_on_unwind writable sret(%class.QString) align 8 %0, ptr noundef nonnull align 8 dereferenceable_or_null(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.d

bb.f:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN14ExtArgSelector26isSetDefaultValueSupportedEv(ptr nofree noundef readnone align 8 captures(none) dereferenceable_or_null(72) %0) unnamed_addr #9 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN14ExtArgSelector15setDefaultValueEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(72) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QString, align 16            ; 5 uses
  %2 = alloca %class.QString, align 16            ; 10 uses
  %3 = alloca %class.QString, align 16            ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %char0 = load i8, ptr %i.e, align 1
  %.not18 = icmp eq i8 %char0, 0
  %spec.select = select i1 %.not18, ptr null, ptr %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %.not19.not = icmp eq ptr %i.f, null            ; 2 uses
  %i.g = select i1 %.not19.not, ptr @.str.1, ptr %i.f ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.h = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.g) #23
  call void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %1, i64 %i.h, ptr nonnull %i.g)
  %i.i = load <2 x ptr>, ptr %1, align 16
  store <2 x ptr> %i.i, ptr %2, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 16
  store i64 %i.l, ptr %i.j, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.m = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %._crit_edge.thread

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %4 = and i64 %i.n, 2305843009213693951
  %.not3637 = icmp eq i64 %4, 0
  br i1 %.not3637, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  br i1 %.not19.not, label %.lr.ph.split.us, label %.critedge

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.s = add nuw i64 %i.n, 2305843009213693951
  %i.t = and i64 %i.s, 2305843009213693951        ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %xtraiter = and i64 %i.u, 7                     ; 3 uses
  %i.v = icmp samesign ult i64 %i.t, 7
  br i1 %i.v, label %.critedge21.thread.us.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us
  %unroll_iter = and i64 %i.u, 4611686018427387896
  br label %.critedge21.thread.us

.critedge21.thread.us:                            ; preds = %.critedge21.thread.us, %.lr.ph.split.us.new
  %.01540.us = phi i32 [ 0, %.lr.ph.split.us.new ], [ %i.bb, %.critedge21.thread.us ] ; 9 uses
  %.01639.us = phi i32 [ -1, %.lr.ph.split.us.new ], [ %spec.select34.us.7, %.critedge21.thread.us ]
  %.sroa.0.038.us = phi ptr [ %i.q, %.lr.ph.split.us.new ], [ %i.bc, %.critedge21.thread.us ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.new ], [ %niter.next.7, %.critedge21.thread.us ]
  %i.w = getelementptr i8, ptr %.sroa.0.038.us, i64 57
  %i.x = load i8, ptr %i.w, align 1, !range !15, !noundef !16
  %i.y = trunc nuw i8 %i.x to i1
  %spec.select34.us = select i1 %i.y, i32 %.01540.us, i32 %.01639.us
  %i.z = or disjoint i32 %.01540.us, 1
  %i.aa = getelementptr i8, ptr %.sroa.0.038.us, i64 145
  %i.ab = load i8, ptr %i.aa, align 1, !range !15, !noundef !16
  %i.ac = trunc nuw i8 %i.ab to i1
  %spec.select34.us.1 = select i1 %i.ac, i32 %i.z, i32 %spec.select34.us
  %i.ad = or disjoint i32 %.01540.us, 2
  %i.ae = getelementptr i8, ptr %.sroa.0.038.us, i64 233
  %i.af = load i8, ptr %i.ae, align 1, !range !15, !noundef !16
  %i.ag = trunc nuw i8 %i.af to i1
  %spec.select34.us.2 = select i1 %i.ag, i32 %i.ad, i32 %spec.select34.us.1
  %i.ah = or disjoint i32 %.01540.us, 3
  %i.ai = getelementptr i8, ptr %.sroa.0.038.us, i64 321
  %i.aj = load i8, ptr %i.ai, align 1, !range !15, !noundef !16
  %i.ak = trunc nuw i8 %i.aj to i1
  %spec.select34.us.3 = select i1 %i.ak, i32 %i.ah, i32 %spec.select34.us.2
  %i.al = or disjoint i32 %.01540.us, 4
  %i.am = getelementptr i8, ptr %.sroa.0.038.us, i64 409
  %i.an = load i8, ptr %i.am, align 1, !range !15, !noundef !16
  %i.ao = trunc nuw i8 %i.an to i1
  %spec.select34.us.4 = select i1 %i.ao, i32 %i.al, i32 %spec.select34.us.3
  %i.ap = or disjoint i32 %.01540.us, 5
  %i.aq = getelementptr i8, ptr %.sroa.0.038.us, i64 497
  %i.ar = load i8, ptr %i.aq, align 1, !range !15, !noundef !16
  %i.as = trunc nuw i8 %i.ar to i1
  %spec.select34.us.5 = select i1 %i.as, i32 %i.ap, i32 %spec.select34.us.4
  %i.at = or disjoint i32 %.01540.us, 6
  %i.au = getelementptr i8, ptr %.sroa.0.038.us, i64 585
  %i.av = load i8, ptr %i.au, align 1, !range !15, !noundef !16
  %i.aw = trunc nuw i8 %i.av to i1
  %spec.select34.us.6 = select i1 %i.aw, i32 %i.at, i32 %spec.select34.us.5
  %i.ax = or disjoint i32 %.01540.us, 7
  %i.ay = getelementptr i8, ptr %.sroa.0.038.us, i64 673
  %i.az = load i8, ptr %i.ay, align 1, !range !15, !noundef !16
  %i.ba = trunc nuw i8 %i.az to i1
  %spec.select34.us.7 = select i1 %i.ba, i32 %i.ax, i32 %spec.select34.us.6 ; 3 uses
  %i.bb = add i32 %.01540.us, 8                   ; 2 uses
  %i.bc = getelementptr i8, ptr %.sroa.0.038.us, i64 704 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.critedge21.thread.us, !llvm.loop !44

.critedge:                                        ; preds = %.lr.ph, %.critedge21
  %.01540 = phi i32 [ %i.bs, %.critedge21 ], [ 0, %.lr.ph ] ; 2 uses
  %.01639 = phi i32 [ %spec.select35, %.critedge21 ], [ -1, %.lr.ph ]
  %.sroa.0.038 = phi ptr [ %i.bt, %.critedge21 ], [ %i.q, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.bd = getelementptr i8, ptr %.sroa.0.038, i64 32 ; 2 uses
  %i.be = load <2 x ptr>, ptr %i.bd, align 8, !noalias !48
  %i.bf = load ptr, ptr %i.bd, align 8, !noalias !48 ; 2 uses
  store <2 x ptr> %i.be, ptr %3, align 16, !alias.scope !48
  %i.bg = getelementptr i8, ptr %.sroa.0.038, i64 48
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !48
  store i64 %i.bh, ptr %i.r, align 16, !alias.scope !48
  %.not.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.l, %bb.j
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %2, align 16              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.e
  %i.bk = atomicrmw add ptr %i.bj, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.bk, 1
  br i1 %.not.i.i, label %bb.f, label %_ZN7QStringD2Ev.exit

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.bl = load ptr, ptr %2, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bl, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.e, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.bi

bb.g:                                             ; preds = %.critedge
  %i.bm = atomicrmw add ptr %i.bf, i32 1 acq_rel, align 4, !noalias !48 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %bb.g
  %i.bn = call noundef i32 @_ZNK7QString7compareERKS_N2Qt15CaseSensitivityE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 1) #23
  %i.bo = icmp eq i32 %i.bn, 0
  %i.bp = load ptr, ptr %3, align 16              ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i23, label %.critedge21, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i24

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i24:    ; preds = %bb.h
  %i.bq = atomicrmw add ptr %i.bp, i32 -1 acq_rel, align 4
  %.not.i.i25 = icmp eq i32 %i.bq, 1
  br i1 %.not.i.i25, label %bb.i, label %.critedge21

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i24
  %i.br = load ptr, ptr %3, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.br, i64 noundef 2, i64 noundef 8) #23
  br label %.critedge21

.critedge21:                                      ; preds = %bb.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i24, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %spec.select35 = select i1 %i.bo, i32 %.01540, i32 %.01639 ; 2 uses
  %i.bs = add i32 %.01540, 1
  %i.bt = getelementptr i8, ptr %.sroa.0.038, i64 88 ; 2 uses
  %i.bu = load ptr, ptr %i.p, align 8
  %i.bv = load i64, ptr %i.m, align 8
  %i.bw = getelementptr [88 x i8], ptr %i.bu, i64 %i.bv
  %.not36 = icmp eq ptr %i.bt, %i.bw
  br i1 %.not36, label %._crit_edge, label %.critedge, !llvm.loop !44

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.critedge21.thread.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.critedge21.thread.us.epil.preheader

.critedge21.thread.us.epil.preheader:             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us
  %.01540.us.epil.init = phi i32 [ 0, %.lr.ph.split.us ], [ %i.bb, %._crit_edge.loopexit.unr-lcssa ]
  %.01639.us.epil.init = phi i32 [ -1, %.lr.ph.split.us ], [ %spec.select34.us.7, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.0.038.us.epil.init = phi ptr [ %i.q, %.lr.ph.split.us ], [ %i.bc, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod53 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod53)
  br label %.critedge21.thread.us.epil

.critedge21.thread.us.epil:                       ; preds = %.critedge21.thread.us.epil, %.critedge21.thread.us.epil.preheader
  %.01540.us.epil = phi i32 [ %.01540.us.epil.init, %.critedge21.thread.us.epil.preheader ], [ %i.ca, %.critedge21.thread.us.epil ] ; 2 uses
  %.01639.us.epil = phi i32 [ %.01639.us.epil.init, %.critedge21.thread.us.epil.preheader ], [ %spec.select34.us.epil, %.critedge21.thread.us.epil ]
  %.sroa.0.038.us.epil = phi ptr [ %.sroa.0.038.us.epil.init, %.critedge21.thread.us.epil.preheader ], [ %i.cb, %.critedge21.thread.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.critedge21.thread.us.epil.preheader ], [ %epil.iter.next, %.critedge21.thread.us.epil ]
  %i.bx = getelementptr i8, ptr %.sroa.0.038.us.epil, i64 57
  %i.by = load i8, ptr %i.bx, align 1, !range !15, !noundef !16
  %i.bz = trunc nuw i8 %i.by to i1
  %spec.select34.us.epil = select i1 %i.bz, i32 %.01540.us.epil, i32 %.01639.us.epil ; 2 uses
  %i.ca = add i32 %.01540.us.epil, 1
  %i.cb = getelementptr i8, ptr %.sroa.0.038.us.epil, i64 88
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.critedge21.thread.us.epil, !llvm.loop !47

._crit_edge:                                      ; preds = %.critedge21, %._crit_edge.loopexit.unr-lcssa, %.critedge21.thread.us.epil
  %.016.lcssa = phi i32 [ %spec.select34.us.epil, %.critedge21.thread.us.epil ], [ %spec.select34.us.7, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select35, %.critedge21 ] ; 3 uses
  %i.cc = icmp sgt i32 %.016.lcssa, -1
  br i1 %i.cc, label %bb.j, label %._crit_edge.thread

bb.j:                                             ; preds = %._crit_edge
  %i.cd = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke noundef i32 @_ZNK9QComboBox5countEv(ptr noundef align 8 dereferenceable_or_null(40) %i.ce)
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  %i.cg = icmp slt i32 %.016.lcssa, %i.cf
  br i1 %i.cg, label %bb.l, label %._crit_edge.thread

bb.l:                                             ; preds = %bb.k
  %i.ch = load ptr, ptr %i.cd, align 8
  invoke void @_ZN9QComboBox15setCurrentIndexEi(ptr noundef align 8 dereferenceable_or_null(40) %i.ch, i32 noundef %.016.lcssa)
          to label %._crit_edge.thread unwind label %bb.e

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge, %bb.k, %bb.l, %bb.c
  %i.ci = load ptr, ptr %2, align 16              ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i27, label %_ZN7QStringD2Ev.exit30, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i28

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i28:    ; preds = %._crit_edge.thread
  %i.cj = atomicrmw add ptr %i.ci, i32 -1 acq_rel, align 4
  %.not.i.i29 = icmp eq i32 %i.cj, 1
  br i1 %.not.i.i29, label %bb.m, label %_ZN7QStringD2Ev.exit30

bb.m:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i28
  %i.ck = load ptr, ptr %2, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ck, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit30

_ZN7QStringD2Ev.exit30:                           ; preds = %._crit_edge.thread, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i28, %bb.m
end_hunk_2
begin_hunk_3_@_ZN5QListI7QStringED2Ev:bb.a
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, 1
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i.i.i.i, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.j, i64 noundef 2, i64 noundef 8) #23
  br label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i:       ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.k = getelementptr i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i: ; preds = %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i, %bb.b
  %i.l = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.l, i64 noundef 24, i64 noundef 8) #23
  br label %_ZN17QArrayDataPointerI7QStringED2Ev.exit

_ZN17QArrayDataPointerI7QStringED2Ev.exit:        ; preds = %bb.a, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN14ExtcapArgumentD2Ev(ptr noundef align 8 dead_on_return(60) dereferenceable_or_null(60) initializes((0, 8)) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 192) (i8, ptr @_ZTV14ExtcapArgument, i64 16), ptr %0, align 8
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @extcap_free_arg(ptr noundef %i.b)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5QListI11ExtcapValueED2Ev.exit, label %_ZN17QArrayDataPointerI11ExtcapValueE5derefEv.exit.i.i

_ZN17QArrayDataPointerI11ExtcapValueE5derefEv.exit.i.i: ; preds = %bb.b
  %i.e = atomicrmw add ptr %i.d, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.e, 1
  br i1 %.not.i.i, label %bb.c, label %_ZN5QListI11ExtcapValueED2Ev.exit

bb.c:                                             ; preds = %_ZN17QArrayDataPointerI11ExtcapValueE5derefEv.exit.i.i
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8
  %.idx.i.i.i = mul i64 %i.i, 88                  ; 2 uses
  %i.j = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i
  %.not4.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI11ExtcapValueE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i ], [ %i.g, %bb.c ] ; 3 uses
  %i.k = load ptr, ptr %.05.i.i.i.i.i.i, align 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef align 8 dead_on_return(88) dereferenceable_or_null(88) %.05.i.i.i.i.i.i) #23, !inline_history !0
  %i.m = getelementptr i8, ptr %.05.i.i.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %i.j
  br i1 %.not.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI11ExtcapValueE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN9QtPrivate16QGenericArrayOpsI11ExtcapValueE10destroyAllEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  %i.n = load ptr, ptr %i.c, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.n, i64 noundef 88, i64 noundef 8) #23
  br label %_ZN5QListI11ExtcapValueED2Ev.exit

_ZN5QListI11ExtcapValueED2Ev.exit:                ; preds = %bb.b, %_ZN17QArrayDataPointerI11ExtcapValueE5derefEv.exit.i.i, %_ZN9QtPrivate16QGenericArrayOpsI11ExtcapValueE10destroyAllEv.exit.i.i
  tail call void @_ZN7QObjectD2Ev(ptr noundef align 8 dead_on_return(16) dereferenceable_or_null(16) %0) #23
  ret void

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #27
  unreachable
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN11ExtArgRadioD0Ev(ptr noundef align 8 dereferenceable_or_null(80) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN11ExtArgRadioD1Ev(ptr noundef align 8 dead_on_return(80) dereferenceable_or_null(80) %0) #23
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef 80) #25
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef ptr @_ZN11ExtArgRadio12createEditorEP7QWidget(ptr noundef align 8 dereferenceable_or_null(80) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %2 = alloca %class.QString, align 16            ; 10 uses
  %3 = alloca %class.QString, align 16            ; 10 uses
  %4 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %i.c = tail call noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #24 ; 3 uses
  invoke void @_ZN12QButtonGroupC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(16) %i.c, ptr noundef %1)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 64         ; 2 uses
  store ptr %i.c, ptr %i.d, align 8
  %i.e = tail call noalias noundef dereferenceable_or_null(40) ptr @_Znwm(i64 noundef 40) #24 ; 4 uses
  invoke void @_ZN7QWidgetC1EPS_6QFlagsIN2Qt10WindowTypeEE(ptr noundef align 8 dereferenceable_or_null(40) %i.e, ptr noundef null, i32 0)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #24 ; 6 uses
  invoke void @_ZN11QVBoxLayoutC1Ev(ptr noundef align 8 dereferenceable_or_null(28) %i.f)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.g = tail call { i64, i64 } @_ZNK7QLayout15contentsMarginsEv(ptr noundef align 8 dereferenceable_or_null(28) %i.f)
  %i.h = extractvalue { i64, i64 } %i.g, 1
  %.sroa.453.12.extract.shift = lshr i64 %i.h, 32
  %.sroa.453.12.extract.trunc = trunc nuw i64 %.sroa.453.12.extract.shift to i32
  tail call void @_ZN7QLayout18setContentsMarginsEiiii(ptr noundef align 8 dereferenceable_or_null(28) %i.f, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %.sroa.453.12.extract.trunc)
  %i.i = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 6 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN5QListI7QStringED2Ev.exit, label %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i

_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i: ; preds = %bb.e
  %i.l = atomicrmw add ptr %i.k, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.l, 1
  br i1 %.not.i.i, label %bb.f, label %_ZN5QListI7QStringED2Ev.exit

bb.f:                                             ; preds = %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr i8, ptr %i.j, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %.idx.i.i.i = mul i64 %i.p, 24                  ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 %.idx.i.i.i
  %.not4.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i ], [ %i.n, %bb.f ] ; 3 uses
  %i.r = load ptr, ptr %.05.i.i.i.i.i.i, align 8  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.s = atomicrmw add ptr %i.r, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.s, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.g, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i
  %i.t = load ptr, ptr %.05.i.i.i.i.i.i, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.t, i64 noundef 2, i64 noundef 8) #23
  br label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i:     ; preds = %bb.g, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.u = getelementptr i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %i.q
  br i1 %.not.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i: ; preds = %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i, %bb.f
  %i.v = load ptr, ptr %i.j, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.v, i64 noundef 24, i64 noundef 8) #23
  br label %_ZN5QListI7QStringED2Ev.exit

_ZN5QListI7QStringED2Ev.exit:                     ; preds = %bb.e, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef 24) #25
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef 16) #25
  br label %bb.z

bb.i:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef 40) #25
  br label %bb.z

bb.j:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef 32) #25
  br label %bb.z

bb.k:                                             ; preds = %_ZN5QListI7QStringED2Ev.exit, %bb.d
  %i.z = tail call noalias noundef dereferenceable_or_null(24) ptr @_Znwm(i64 noundef 24) #24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  store ptr %i.z, ptr %i.i, align 8
  %i.aa = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %5 = and i64 %i.ab, 2305843009213693951
  %.not5759 = icmp eq i64 %5, 0
  br i1 %.not5759, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.fca.1.gep12.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN7QStringD2Ev.exit38
  %.061 = phi i32 [ 0, %.lr.ph ], [ %i.bh, %_ZN7QStringD2Ev.exit38 ] ; 2 uses
  %.sroa.048.060 = phi ptr [ %i.ae, %.lr.ph ], [ %i.bi, %_ZN7QStringD2Ev.exit38 ] ; 5 uses
  %i.ah = call noalias noundef dereferenceable_or_null(40) ptr @_Znwm(i64 noundef 40) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.ai = getelementptr i8, ptr %.sroa.048.060, i64 8 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !noalias !60
  %i.ak = load ptr, ptr %i.ai, align 8, !noalias !60 ; 2 uses
  store <2 x ptr> %i.aj, ptr %2, align 16, !alias.scope !60
  %i.al = getelementptr i8, ptr %.sroa.048.060, i64 24
  %i.am = load i64, ptr %i.al, align 8, !noalias !60
  store i64 %i.am, ptr %i.af, align 16, !alias.scope !60
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %_ZNK11ExtcapValue5valueEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = atomicrmw add ptr %i.ak, i32 1 acq_rel, align 4, !noalias !60 ; 0 uses
  br label %_ZNK11ExtcapValue5valueEv.exit

_ZNK11ExtcapValue5valueEv.exit:                   ; preds = %bb.m, %bb.n
  invoke void @_ZN12QRadioButtonC1ERK7QStringP7QWidget(ptr noundef align 8 dereferenceable_or_null(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef null)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %_ZNK11ExtcapValue5valueEv.exit
  %i.ao = load ptr, ptr %2, align 16              ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i28, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.o
  %i.ap = atomicrmw add ptr %i.ao, i32 -1 acq_rel, align 4
  %.not.i.i29 = icmp eq i32 %i.ap, 1
  br i1 %.not.i.i29, label %bb.p, label %_ZN7QStringD2Ev.exit

bb.p:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.aq = load ptr, ptr %2, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aq, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.o, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.ar = getelementptr i8, ptr %.sroa.048.060, i64 32 ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.ar, align 8, !noalias !61
  %i.at = load ptr, ptr %i.ar, align 8, !noalias !61 ; 2 uses
  store <2 x ptr> %i.as, ptr %3, align 16, !alias.scope !61
  %i.au = getelementptr i8, ptr %.sroa.048.060, i64 48
  %i.av = load i64, ptr %i.au, align 8, !noalias !61
  store i64 %i.av, ptr %i.ag, align 16, !alias.scope !61
  %.not.i.i.i.i30 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i30, label %_ZNK11ExtcapValue4callEv.exit, label %bb.q

bb.q:                                             ; preds = %_ZN7QStringD2Ev.exit
  %i.aw = atomicrmw add ptr %i.at, i32 1 acq_rel, align 4, !noalias !61 ; 0 uses
  br label %_ZNK11ExtcapValue4callEv.exit

_ZNK11ExtcapValue4callEv.exit:                    ; preds = %_ZN7QStringD2Ev.exit, %bb.q
  %i.ax = load ptr, ptr %i.i, align 8             ; 4 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %i.az = load i64, ptr %i.ay, align 8
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI7QStringE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.ax, i64 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %_ZNK11ExtcapValue4callEv.exit
  %i.ba = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not.i.i.i.i.i.i31 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i31, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc
  %i.bb = load atomic i32, ptr %i.ba monotonic, align 4
  %i.bc = icmp sgt i32 %i.bb, 1
  br i1 %i.bc, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZN5QListI7QStringE6appendERKS0_.exit

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerI7QStringE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.ax, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI7QStringE6appendERKS0_.exit unwind label %bb.x

_ZN5QListI7QStringE6appendERKS0_.exit:            ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 ptrtoint (ptr @_ZN15QAbstractButton7clickedEb to i64), ptr %i.a, align 8, !noalias !62
  store i64 0, ptr %.fca.1.gep12.i, align 8, !noalias !62
  store i64 ptrtoint (ptr @_ZN14ExtcapArgument13onBoolChangedEb to i64), ptr %i.b, align 8, !noalias !62
  store i64 0, ptr %.fca.1.gep.i, align 8, !noalias !62
  %i.bd = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #24
          to label %.noexc33 unwind label %bb.x   ; 5 uses

.noexc33:                                         ; preds = %_ZN5QListI7QStringE6appendERKS0_.exit
  store i32 1, ptr %i.bd, align 4, !noalias !62
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM14ExtcapArgumentFvbENS_4ListIJbEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.be, align 8, !noalias !62
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 ptrtoint (ptr @_ZN14ExtcapArgument13onBoolChangedEb to i64), ptr %i.bf, align 8, !noalias !62
  %.repack7.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i64 0, ptr %.repack7.i.i, align 8, !noalias !62
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %4, ptr noundef %i.ah, ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %i.bd, i32 noundef 0, ptr noundef null, ptr noundef @_ZN15QAbstractButton16staticMetaObjectE)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %.noexc33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #23
  %i.bg = load ptr, ptr %i.d, align 8
  invoke void @_ZN12QButtonGroup9addButtonEP15QAbstractButtoni(ptr noundef align 8 dereferenceable_or_null(16) %i.bg, ptr noundef %i.ah, i32 noundef %.061)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN10QBoxLayout9addWidgetEP7QWidgeti6QFlagsIN2Qt13AlignmentFlagEE(ptr noundef align 8 dereferenceable_or_null(28) %i.f, ptr noundef %i.ah, i32 noundef 0, i32 0)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bh = add i32 %.061, 1
  %i.bi = getelementptr i8, ptr %.sroa.048.060, i64 88 ; 2 uses
  %i.bj = load ptr, ptr %3, align 16              ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i35, label %_ZN7QStringD2Ev.exit38, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i36

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i36:    ; preds = %bb.t
  %i.bk = atomicrmw add ptr %i.bj, i32 -1 acq_rel, align 4
  %.not.i.i37 = icmp eq i32 %i.bk, 1
  br i1 %.not.i.i37, label %bb.u, label %_ZN7QStringD2Ev.exit38

bb.u:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i36
  %i.bl = load ptr, ptr %3, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bl, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit38

_ZN7QStringD2Ev.exit38:                           ; preds = %bb.t, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i36, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.bm = load ptr, ptr %i.ad, align 8
  %i.bn = load i64, ptr %i.aa, align 8
  %i.bo = getelementptr [88 x i8], ptr %i.bm, i64 %i.bn
  %.not57 = icmp eq ptr %i.bi, %i.bo
  br i1 %.not57, label %.loopexit, label %bb.m, !llvm.loop !59

bb.v:                                             ; preds = %_ZNK11ExtcapValue5valueEv.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %2, align 16              ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i39, label %_ZN7QStringD2Ev.exit42, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i40

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i40:    ; preds = %bb.v
  %i.br = atomicrmw add ptr %i.bq, i32 -1 acq_rel, align 4
  %.not.i.i41 = icmp eq i32 %i.br, 1
  br i1 %.not.i.i41, label %bb.w, label %_ZN7QStringD2Ev.exit42

bb.w:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i40
  %i.bs = load ptr, ptr %2, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bs, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit42

_ZN7QStringD2Ev.exit42:                           ; preds = %bb.v, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i40, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef 40) #25
  br label %bb.z

bb.x:                                             ; preds = %.noexc33, %_ZN5QListI7QStringE6appendERKS0_.exit, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i, %_ZNK11ExtcapValue4callEv.exit, %bb.s, %bb.r
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %3, align 16              ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i43, label %_ZN7QStringD2Ev.exit46, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i44

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i44:    ; preds = %bb.x
  %i.bv = atomicrmw add ptr %i.bu, i32 -1 acq_rel, align 4
  %.not.i.i45 = icmp eq i32 %i.bv, 1
  br i1 %.not.i.i45, label %bb.y, label %_ZN7QStringD2Ev.exit46

bb.y:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i44
  %i.bw = load ptr, ptr %3, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bw, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit46

_ZN7QStringD2Ev.exit46:                           ; preds = %bb.x, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i44, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.z

.loopexit:                                        ; preds = %_ZN7QStringD2Ev.exit38, %bb.l, %bb.k
  %i.bx = load ptr, ptr %0, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 184
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef align 8 dereferenceable_or_null(80) %0)
  call void @_ZN7QWidget9setLayoutEP7QLayout(ptr noundef align 8 dereferenceable_or_null(40) %i.e, ptr noundef %i.f)
  ret ptr %i.e

bb.z:                                             ; preds = %_ZN7QStringD2Ev.exit46, %_ZN7QStringD2Ev.exit42, %bb.i, %bb.j, %bb.h
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.x, %bb.i ], [ %i.y, %bb.j ], [ %i.bt, %_ZN7QStringD2Ev.exit46 ], [ %i.bp, %_ZN7QStringD2Ev.exit42 ]
  resume { ptr, i32 } %.pn.pn.pn.pn
end_hunk_3
begin_hunk_4_@_ZN11ExtArgRadio5valueEv:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %0, i8 0, i64 24, i1 false)
  br label %_ZN7QStringC2ERKS_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i32 @_ZNK12QButtonGroup9checkedIdEv(ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.b) ; 2 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = zext nneg i32 %i.g to i64                ; 2 uses
  %i.m = icmp sgt i64 %i.k, %i.l
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr [24 x i8], ptr %i.o, i64 %i.l ; 3 uses
  %i.q = load <2 x ptr>, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.p, align 8              ; 2 uses
  store <2 x ptr> %i.q, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = load i64, ptr %i.t, align 8
  store i64 %i.u, ptr %i.s, align 8
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZN7QStringC2ERKS_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = atomicrmw add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit

bb.h:                                             ; preds = %bb.e, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %0, i8 0, i64 24, i1 false)
  br label %_ZN7QStringC2ERKS_.exit

_ZN7QStringC2ERKS_.exit:                          ; preds = %bb.g, %bb.f, %bb.h, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK12QButtonGroup9checkedIdEv(ptr noundef align 8 dereferenceable_or_null(16)) local_unnamed_addr #5

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @_ZN11ExtArgRadio7isValidEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(80) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QString, align 8             ; 13 uses
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN14ExtcapArgument10isRequiredEv.exit.thread, label %_ZN14ExtcapArgument10isRequiredEv.exit

_ZN14ExtcapArgument10isRequiredEv.exit:           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 49
  %i.d = load i8, ptr %i.c, align 1, !range !15, !noundef !16
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN14ExtcapArgument10isRequiredEv.exit.thread

bb.b:                                             ; preds = %_ZN14ExtcapArgument10isRequiredEv.exit
  %i.f = getelementptr i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef i32 @_ZNK12QButtonGroup9checkedIdEv(ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.g) ; 2 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.i, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %i.q = sext i32 %i.l to i64
  %.not = icmp sgt i64 %i.p, %i.q
  br i1 %.not, label %_ZN14ExtcapArgument10isRequiredEv.exit.thread, label %bb.f

_ZN14ExtcapArgument10isRequiredEv.exit.thread:    ; preds = %bb.a, %_ZN14ExtcapArgument10isRequiredEv.exit, %bb.e
  %i.r = getelementptr i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %1, i8 0, i64 24, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b
  %i.t = getelementptr i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store ptr null, ptr %1, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.2, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 7, ptr %i.w, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN14ExtcapArgument10isRequiredEv.exit.thread
  %i.x = phi ptr [ %i.u, %bb.f ], [ %i.s, %_ZN14ExtcapArgument10isRequiredEv.exit.thread ]
  %.032 = phi i1 [ false, %bb.f ], [ true, %_ZN14ExtcapArgument10isRequiredEv.exit.thread ]
  invoke void @_ZN12ThemeManager18setValidationStateEP7QWidgetRK7QString(ptr noundef %i.x, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %.critedge, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.h
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.z, 1
  br i1 %.not.i.i, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.aa = load ptr, ptr %1, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aa, i64 noundef 2, i64 noundef 8) #23
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret i1 %.032

bb.j:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i18, label %.critedge15, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i19

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i19:    ; preds = %bb.j
  %i.ad = atomicrmw add ptr %i.ac, i32 -1 acq_rel, align 4
  %.not.i.i20 = icmp eq i32 %i.ad, 1
  br i1 %.not.i.i20, label %bb.k, label %.critedge15

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i19
  %i.ae = load ptr, ptr %1, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ae, i64 noundef 2, i64 noundef 8) #23
  br label %.critedge15

.critedge15:                                      ; preds = %bb.k, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i19, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN11ExtArgRadio26isSetDefaultValueSupportedEv(ptr nofree noundef readnone align 8 captures(none) dereferenceable_or_null(80) %0) unnamed_addr #9 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11ExtArgRadio15setDefaultValueEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(80) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QString, align 16            ; 6 uses
  %2 = alloca %class.QString, align 16            ; 10 uses
  %3 = alloca %class.QString, align 16            ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %char0 = load i8, ptr %i.e, align 1
  %.not16 = icmp eq i8 %char0, 0
  %spec.select = select i1 %.not16, ptr null, ptr %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %.not17.not = icmp eq ptr %i.f, null            ; 2 uses
  %i.g = select i1 %.not17.not, ptr @.str.1, ptr %i.f ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.h = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.g) #23
  call void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %1, i64 %i.h, ptr nonnull %i.g)
  %i.i = load <2 x ptr>, ptr %1, align 16
  %i.j = load ptr, ptr %1, align 16
  store <2 x ptr> %i.i, ptr %2, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 16
  store i64 %i.m, ptr %i.k, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.n = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %4 = and i64 %i.o, 2305843009213693951
  %.not3435 = icmp eq i64 %4, 0
  br i1 %.not3435, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  br i1 %.not17.not, label %.lr.ph.split.us, label %.critedge

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.t = add nuw i64 %i.o, 2305843009213693951
  %i.u = and i64 %i.t, 2305843009213693951        ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %xtraiter = and i64 %i.v, 7                     ; 3 uses
  %i.w = icmp samesign ult i64 %i.u, 7
  br i1 %i.w, label %.critedge19.thread.us.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us
  %unroll_iter = and i64 %i.v, 4611686018427387896
  br label %.critedge19.thread.us

.critedge19.thread.us:                            ; preds = %.critedge19.thread.us, %.lr.ph.split.us.new
  %.01338.us = phi i32 [ 0, %.lr.ph.split.us.new ], [ %i.bc, %.critedge19.thread.us ] ; 9 uses
  %.01437.us = phi i32 [ 0, %.lr.ph.split.us.new ], [ %spec.select32.us.7, %.critedge19.thread.us ]
  %.sroa.0.036.us = phi ptr [ %i.r, %.lr.ph.split.us.new ], [ %i.bd, %.critedge19.thread.us ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.new ], [ %niter.next.7, %.critedge19.thread.us ]
  %i.x = getelementptr i8, ptr %.sroa.0.036.us, i64 57
  %i.y = load i8, ptr %i.x, align 1, !range !15, !noundef !16
  %i.z = trunc nuw i8 %i.y to i1
  %spec.select32.us = select i1 %i.z, i32 %.01338.us, i32 %.01437.us
  %i.aa = or disjoint i32 %.01338.us, 1
  %i.ab = getelementptr i8, ptr %.sroa.0.036.us, i64 145
  %i.ac = load i8, ptr %i.ab, align 1, !range !15, !noundef !16
  %i.ad = trunc nuw i8 %i.ac to i1
  %spec.select32.us.1 = select i1 %i.ad, i32 %i.aa, i32 %spec.select32.us
  %i.ae = or disjoint i32 %.01338.us, 2
  %i.af = getelementptr i8, ptr %.sroa.0.036.us, i64 233
  %i.ag = load i8, ptr %i.af, align 1, !range !15, !noundef !16
  %i.ah = trunc nuw i8 %i.ag to i1
  %spec.select32.us.2 = select i1 %i.ah, i32 %i.ae, i32 %spec.select32.us.1
  %i.ai = or disjoint i32 %.01338.us, 3
  %i.aj = getelementptr i8, ptr %.sroa.0.036.us, i64 321
  %i.ak = load i8, ptr %i.aj, align 1, !range !15, !noundef !16
  %i.al = trunc nuw i8 %i.ak to i1
  %spec.select32.us.3 = select i1 %i.al, i32 %i.ai, i32 %spec.select32.us.2
  %i.am = or disjoint i32 %.01338.us, 4
  %i.an = getelementptr i8, ptr %.sroa.0.036.us, i64 409
  %i.ao = load i8, ptr %i.an, align 1, !range !15, !noundef !16
  %i.ap = trunc nuw i8 %i.ao to i1
  %spec.select32.us.4 = select i1 %i.ap, i32 %i.am, i32 %spec.select32.us.3
  %i.aq = or disjoint i32 %.01338.us, 5
  %i.ar = getelementptr i8, ptr %.sroa.0.036.us, i64 497
  %i.as = load i8, ptr %i.ar, align 1, !range !15, !noundef !16
  %i.at = trunc nuw i8 %i.as to i1
  %spec.select32.us.5 = select i1 %i.at, i32 %i.aq, i32 %spec.select32.us.4
  %i.au = or disjoint i32 %.01338.us, 6
  %i.av = getelementptr i8, ptr %.sroa.0.036.us, i64 585
  %i.aw = load i8, ptr %i.av, align 1, !range !15, !noundef !16
  %i.ax = trunc nuw i8 %i.aw to i1
  %spec.select32.us.6 = select i1 %i.ax, i32 %i.au, i32 %spec.select32.us.5
  %i.ay = or disjoint i32 %.01338.us, 7
  %i.az = getelementptr i8, ptr %.sroa.0.036.us, i64 673
  %i.ba = load i8, ptr %i.az, align 1, !range !15, !noundef !16
  %i.bb = trunc nuw i8 %i.ba to i1
  %spec.select32.us.7 = select i1 %i.bb, i32 %i.ay, i32 %spec.select32.us.6 ; 3 uses
  %i.bc = add i32 %.01338.us, 8                   ; 2 uses
  %i.bd = getelementptr i8, ptr %.sroa.0.036.us, i64 704 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.critedge19.thread.us, !llvm.loop !63

.critedge:                                        ; preds = %.lr.ph, %.critedge19
  %.01338 = phi i32 [ %i.bt, %.critedge19 ], [ 0, %.lr.ph ] ; 2 uses
  %.01437 = phi i32 [ %spec.select33, %.critedge19 ], [ 0, %.lr.ph ]
  %.sroa.0.036 = phi ptr [ %i.bu, %.critedge19 ], [ %i.r, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.be = getelementptr i8, ptr %.sroa.0.036, i64 32 ; 2 uses
  %i.bf = load <2 x ptr>, ptr %i.be, align 8, !noalias !67
  %i.bg = load ptr, ptr %i.be, align 8, !noalias !67 ; 2 uses
  store <2 x ptr> %i.bf, ptr %3, align 16, !alias.scope !67
  %i.bh = getelementptr i8, ptr %.sroa.0.036, i64 48
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !67
  store i64 %i.bi, ptr %i.s, align 16, !alias.scope !67
  %.not.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.j, %._crit_edge
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %2, align 16              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.e
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.bl, 1
  br i1 %.not.i.i, label %bb.f, label %_ZN7QStringD2Ev.exit

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.bm = load ptr, ptr %2, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bm, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.e, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.bj

bb.g:                                             ; preds = %.critedge
  %i.bn = atomicrmw add ptr %i.bg, i32 1 acq_rel, align 4, !noalias !67 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %bb.g
  %i.bo = call noundef i32 @_ZNK7QString7compareERKS_N2Qt15CaseSensitivityE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 1) #23
  %i.bp = icmp eq i32 %i.bo, 0
  %i.bq = load ptr, ptr %3, align 16              ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i21, label %.critedge19, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i22

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i22:    ; preds = %bb.h
  %i.br = atomicrmw add ptr %i.bq, i32 -1 acq_rel, align 4
  %.not.i.i23 = icmp eq i32 %i.br, 1
  br i1 %.not.i.i23, label %bb.i, label %.critedge19

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i22
  %i.bs = load ptr, ptr %3, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bs, i64 noundef 2, i64 noundef 8) #23
  br label %.critedge19

.critedge19:                                      ; preds = %bb.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i22, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %spec.select33 = select i1 %i.bp, i32 %.01338, i32 %.01437 ; 2 uses
  %i.bt = add i32 %.01338, 1
  %i.bu = getelementptr i8, ptr %.sroa.0.036, i64 88 ; 2 uses
  %i.bv = load ptr, ptr %i.q, align 8
  %i.bw = load i64, ptr %i.n, align 8
  %i.bx = getelementptr [88 x i8], ptr %i.bv, i64 %i.bw
  %.not34 = icmp eq ptr %i.bu, %i.bx
  br i1 %.not34, label %._crit_edge, label %.critedge, !llvm.loop !63

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.critedge19.thread.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.critedge19.thread.us.epil.preheader

.critedge19.thread.us.epil.preheader:             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us
  %.01338.us.epil.init = phi i32 [ 0, %.lr.ph.split.us ], [ %i.bc, %._crit_edge.loopexit.unr-lcssa ]
  %.01437.us.epil.init = phi i32 [ 0, %.lr.ph.split.us ], [ %spec.select32.us.7, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.0.036.us.epil.init = phi ptr [ %i.r, %.lr.ph.split.us ], [ %i.bd, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod51 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod51)
  br label %.critedge19.thread.us.epil

.critedge19.thread.us.epil:                       ; preds = %.critedge19.thread.us.epil, %.critedge19.thread.us.epil.preheader
  %.01338.us.epil = phi i32 [ %.01338.us.epil.init, %.critedge19.thread.us.epil.preheader ], [ %i.cb, %.critedge19.thread.us.epil ] ; 2 uses
  %.01437.us.epil = phi i32 [ %.01437.us.epil.init, %.critedge19.thread.us.epil.preheader ], [ %spec.select32.us.epil, %.critedge19.thread.us.epil ]
  %.sroa.0.036.us.epil = phi ptr [ %.sroa.0.036.us.epil.init, %.critedge19.thread.us.epil.preheader ], [ %i.cc, %.critedge19.thread.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.critedge19.thread.us.epil.preheader ], [ %epil.iter.next, %.critedge19.thread.us.epil ]
  %i.by = getelementptr i8, ptr %.sroa.0.036.us.epil, i64 57
  %i.bz = load i8, ptr %i.by, align 1, !range !15, !noundef !16
  %i.ca = trunc nuw i8 %i.bz to i1
  %spec.select32.us.epil = select i1 %i.ca, i32 %.01338.us.epil, i32 %.01437.us.epil ; 2 uses
  %i.cb = add i32 %.01338.us.epil, 1
  %i.cc = getelementptr i8, ptr %.sroa.0.036.us.epil, i64 88
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.critedge19.thread.us.epil, !llvm.loop !66

._crit_edge:                                      ; preds = %.critedge19, %._crit_edge.loopexit.unr-lcssa, %.critedge19.thread.us.epil, %bb.d
  %.014.lcssa = phi i32 [ 0, %bb.d ], [ %spec.select32.us.epil, %.critedge19.thread.us.epil ], [ %spec.select32.us.7, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select33, %.critedge19 ]
  %i.cd = getelementptr i8, ptr %0, i64 64
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke noundef ptr @_ZNK12QButtonGroup6buttonEi(ptr noundef align 8 dereferenceable_or_null(16) %i.ce, i32 noundef %.014.lcssa)
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %._crit_edge
  invoke void @_ZN15QAbstractButton10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.cf, i1 noundef zeroext true)
          to label %._crit_edge40 unwind label %bb.e

._crit_edge40:                                    ; preds = %bb.j
  %.pre = load ptr, ptr %2, align 16
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge40, %bb.c
  %i.cg = phi ptr [ %.pre, %._crit_edge40 ], [ %i.j, %bb.c ] ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i25, label %_ZN7QStringD2Ev.exit28, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i26

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i26:    ; preds = %bb.k
  %i.ch = atomicrmw add ptr %i.cg, i32 -1 acq_rel, align 4
  %.not.i.i27 = icmp eq i32 %i.ch, 1
  br i1 %.not.i.i27, label %bb.l, label %_ZN7QStringD2Ev.exit28

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i26
  %i.ci = load ptr, ptr %2, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ci, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit28

_ZN7QStringD2Ev.exit28:                           ; preds = %bb.k, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i26, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
end_hunk_4
