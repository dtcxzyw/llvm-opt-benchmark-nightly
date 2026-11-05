Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN15QCPAbstractItem12createAnchorERK7QStringi:bb.a
  %i.f = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %.noexc
  %i.g = load ptr, ptr %4, align 8                ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN7QStringD2Ev.exit.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.c
  %i.h = atomicrmw add ptr %i.g, i32 -1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.h, 1
  br i1 %.not.i.i.i, label %bb.d, label %_ZN7QStringD2Ev.exit.i

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.i = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.i, i64 noundef 2, i64 noundef 8) #49
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %bb.d, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  %i.j = load ptr, ptr %5, align 8                ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 48
  %i.l = load i8, ptr %i.k, align 8, !range !175, !noundef !176
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %_ZN6QDebuglsEPKc.exit

bb.e:                                             ; preds = %_ZN7QStringD2Ev.exit.i
  %i.n = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.j, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit_crit_edge unwind label %bb.n ; 0 uses

._ZN6QDebuglsEPKc.exit_crit_edge:                 ; preds = %bb.e
  %.pre = load ptr, ptr %5, align 8
  br label %_ZN6QDebuglsEPKc.exit

bb.f:                                             ; preds = %.noexc
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %4, align 8                ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2.i, label %_ZN7QStringD2Ev.exit5.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i:   ; preds = %bb.f
  %i.q = atomicrmw add ptr %i.p, i32 -1 acq_rel, align 4
  %.not.i.i4.i = icmp eq i32 %i.q, 1
  br i1 %.not.i.i4.i, label %bb.g, label %_ZN7QStringD2Ev.exit5.i

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i
  %i.r = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.r, i64 noundef 2, i64 noundef 8) #49
  br label %_ZN7QStringD2Ev.exit5.i

_ZN7QStringD2Ev.exit5.i:                          ; preds = %bb.g, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  br label %.body

_ZN6QDebuglsEPKc.exit:                            ; preds = %._ZN6QDebuglsEPKc.exit_crit_edge, %_ZN7QStringD2Ev.exit.i
  %i.s = phi ptr [ %.pre, %._ZN6QDebuglsEPKc.exit_crit_edge ], [ %i.j, %_ZN7QStringD2Ev.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 41, ptr @.str.103)
          to label %.noexc19 unwind label %bb.n

.noexc19:                                         ; preds = %_ZN6QDebuglsEPKc.exit
  %i.t = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %.noexc19
  %i.u = load ptr, ptr %3, align 8                ; 2 uses
  %.not.i.i.i.i15 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i15, label %_ZN7QStringD2Ev.exit.i18, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i16

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i16:  ; preds = %bb.h
  %i.v = atomicrmw add ptr %i.u, i32 -1 acq_rel, align 4
  %.not.i.i.i17 = icmp eq i32 %i.v, 1
  br i1 %.not.i.i.i17, label %bb.i, label %_ZN7QStringD2Ev.exit.i18

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i16
  %i.w = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.w, i64 noundef 2, i64 noundef 8) #49
  br label %_ZN7QStringD2Ev.exit.i18

_ZN7QStringD2Ev.exit.i18:                         ; preds = %bb.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i16, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  %i.x = load ptr, ptr %5, align 8                ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 48
  %i.z = load i8, ptr %i.y, align 8, !range !175, !noundef !176
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.j, label %_ZN6QDebuglsEPKc.exit23

bb.j:                                             ; preds = %_ZN7QStringD2Ev.exit.i18
  %i.ab = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.x, i8 noundef signext 32)
          to label %_ZN6QDebuglsEPKc.exit23 unwind label %bb.n ; 0 uses

bb.k:                                             ; preds = %.noexc19
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i2.i11 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i2.i11, label %_ZN7QStringD2Ev.exit5.i14, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i12

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i12: ; preds = %bb.k
  %i.ae = atomicrmw add ptr %i.ad, i32 -1 acq_rel, align 4
  %.not.i.i4.i13 = icmp eq i32 %i.ae, 1
  br i1 %.not.i.i4.i13, label %bb.l, label %_ZN7QStringD2Ev.exit5.i14

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i12
  %i.af = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.af, i64 noundef 2, i64 noundef 8) #49
  br label %_ZN7QStringD2Ev.exit5.i14

_ZN7QStringD2Ev.exit5.i14:                        ; preds = %bb.l, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i12, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  br label %.body

_ZN6QDebuglsEPKc.exit23:                          ; preds = %_ZN7QStringD2Ev.exit.i18, %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.ah, null
  %spec.select.i.i.i = select i1 %.not.i.i.i24, ptr @_ZN7QString6_emptyE, ptr %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i64, ptr %i.ai, align 8
  invoke void @_ZN6QDebug9putStringEPK5QCharm(ptr noundef nonnull align 8 dereferenceable_or_null(8) %5, ptr noundef nonnull %spec.select.i.i.i, i64 noundef %i.aj)
          to label %.noexc25 unwind label %bb.n

.noexc25:                                         ; preds = %_ZN6QDebuglsEPKc.exit23
  %i.ak = load ptr, ptr %5, align 8               ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 48
  %i.am = load i8, ptr %i.al, align 8, !range !175, !noundef !176
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.m, label %_ZN6QDebuglsERK7QString.exit

bb.m:                                             ; preds = %.noexc25
  %i.ao = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.ak, i8 noundef signext 32)
          to label %_ZN6QDebuglsERK7QString.exit unwind label %bb.n ; 0 uses

_ZN6QDebuglsERK7QString.exit:                     ; preds = %.noexc25, %bb.m
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %bb.o

bb.n:                                             ; preds = %bb.m, %_ZN6QDebuglsEPKc.exit23, %bb.j, %_ZN6QDebuglsEPKc.exit, %bb.e, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %_ZN7QStringD2Ev.exit5.i14, %_ZN7QStringD2Ev.exit5.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %_ZN7QStringD2Ev.exit5.i ], [ %i.ap, %bb.n ], [ %i.ac, %_ZN7QStringD2Ev.exit5.i14 ]
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %bb.r

bb.o:                                             ; preds = %_ZN6QDebuglsERK7QString.exit, %bb.a
  %i.aq = call noalias noundef dereferenceable_or_null(72) ptr @_Znwm(i64 noundef 72) #52 ; 4 uses
  %i.ar = getelementptr i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void @_ZN13QCPItemAnchorC1EP11QCustomPlotP15QCPAbstractItemRK7QStringi(ptr noundef align 8 dereferenceable_or_null(72) %i.aq, ptr noundef %i.as, ptr noundef %0, ptr noundef align 8 dereferenceable(24) %1, i32 noundef %2)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr i8, ptr %0, i64 104       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.aq, ptr %i.a, align 8
  %i.au = getelementptr i8, ptr %0, i64 120
  %i.av = load i64, ptr %i.au, align 8
  call void @_ZN9QtPrivate12QPodArrayOpsIP13QCPItemAnchorE7emplaceIJRS2_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.at, i64 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.aw = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIP13QCPItemAnchorE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerIP13QCPItemAnchorE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerIP13QCPItemAnchorE11needsDetachEv.exit.i.i.i.i.i: ; preds = %bb.p
  %i.ax = load atomic i32, ptr %i.aw monotonic, align 4
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %_ZNK17QArrayDataPointerIP13QCPItemAnchorE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZN5QListIP13QCPItemAnchorE6appendES1_.exit

_ZNK17QArrayDataPointerIP13QCPItemAnchorE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIP13QCPItemAnchorE11needsDetachEv.exit.i.i.i.i.i, %bb.p
  call void @_ZN17QArrayDataPointerIP13QCPItemAnchorE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %i.at, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIP13QCPItemAnchorE6appendES1_.exit

_ZN5QListIP13QCPItemAnchorE6appendES1_.exit:      ; preds = %_ZNK17QArrayDataPointerIP13QCPItemAnchorE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerIP13QCPItemAnchorE11needsDetachEv.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.aq

bb.q:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef 72) #51
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.body
  %.pn = phi { ptr, i32 } [ %i.az, %bb.q ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN15QCPAbstractItem11selectEventEP11QMouseEventbRK8QVariantPb(ptr noundef align 8 dereferenceable_or_null(130) %0, ptr nofree readnone captures(none) %1, i1 noundef zeroext %2, ptr nofree readnone align 8 captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %i.b = load i8, ptr %i.a, align 8, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %5, label %bb.e

5:                                                ; preds = %bb.a
  %6 = getelementptr i8, ptr %0, i64 129          ; 3 uses
  %7 = load i8, ptr %6, align 1, !range !175, !noundef !176 ; 3 uses
  br i1 %2, label %8, label %bb.b

8:                                                ; preds = %5
  %9 = trunc nuw i8 %7 to i1
  %10 = xor i1 %9, true
  br label %bb.b

bb.b:                                             ; preds = %5, %8
  %11 = phi i1 [ %10, %8 ], [ true, %5 ]          ; 2 uses
  %i.d = zext i1 %11 to i8                        ; 2 uses
  %.not.i = icmp eq i8 %7, %i.d
  br i1 %.not.i, label %_ZN15QCPAbstractItem11setSelectedEb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 %i.d, ptr %6, align 1
  tail call void @_ZN15QCPAbstractItem16selectionChangedEb(ptr noundef align 8 dereferenceable_or_null(130) %0, i1 noundef zeroext %11)
  br label %_ZN15QCPAbstractItem11setSelectedEb.exit

_ZN15QCPAbstractItem11setSelectedEb.exit:         ; preds = %bb.b, %bb.c
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN15QCPAbstractItem11setSelectedEb.exit
  %i.e = load i8, ptr %6, align 1, !range !175, !noundef !176
  %i.f = icmp ne i8 %i.e, %7
  %i.g = zext i1 %i.f to i8
  store i8 %i.g, ptr %4, align 1
  br label %bb.e

bb.e:                                             ; preds = %_ZN15QCPAbstractItem11setSelectedEb.exit, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN15QCPAbstractItem13deselectEventEPb(ptr noundef align 8 dereferenceable_or_null(130) %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %i.b = load i8, ptr %i.a, align 8, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 129        ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !range !175, !noundef !176 ; 2 uses
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %_ZN15QCPAbstractItem11setSelectedEb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.d, align 1
  tail call void @_ZN15QCPAbstractItem16selectionChangedEb(ptr noundef align 8 dereferenceable_or_null(130) %0, i1 noundef zeroext false)
  br label %_ZN15QCPAbstractItem11setSelectedEb.exit

_ZN15QCPAbstractItem11setSelectedEb.exit:         ; preds = %bb.b, %bb.c
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN15QCPAbstractItem11setSelectedEb.exit
  %i.f = load i8, ptr %i.d, align 1, !range !175, !noundef !176
  %i.g = icmp ne i8 %i.f, %i.e
  %i.h = zext i1 %i.g to i8
  store i8 %i.h, ptr %1, align 1
  br label %bb.e

bb.e:                                             ; preds = %_ZN15QCPAbstractItem11setSelectedEb.exit, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define noundef i32 @_ZNK15QCPAbstractItem17selectionCategoryEv(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  ret i32 64
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11QCustomPlotC2EP7QWidget(ptr noundef align 8 dereferenceable_or_null(513) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QString, align 16            ; 9 uses
  %3 = alloca %class.QString, align 16            ; 9 uses
  %4 = alloca %class.QString, align 16            ; 9 uses
  %5 = alloca %class.QString, align 16            ; 9 uses
  %6 = alloca %class.QString, align 16            ; 9 uses
  %7 = alloca %class.QString, align 16            ; 9 uses
  %8 = alloca %class.QString, align 16            ; 9 uses
  %9 = alloca %class.QString, align 16            ; 9 uses
  %10 = alloca %class.QString, align 16           ; 9 uses
  %11 = alloca %class.QString, align 16           ; 9 uses
  %12 = alloca %class.QString, align 16           ; 9 uses
  %13 = alloca %class.QString, align 16           ; 9 uses
  %14 = alloca %class.QString, align 16           ; 9 uses
  %15 = alloca %class.QString, align 16           ; 9 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %16 = alloca %class.QString, align 16           ; 8 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %17 = alloca %class.QString, align 16           ; 8 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %18 = alloca %class.QString, align 16           ; 8 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %19 = alloca %class.QString, align 16           ; 8 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %20 = alloca %class.QString, align 16           ; 8 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %21 = alloca %class.QString, align 16           ; 8 uses
  %22 = alloca %class.QLocale, align 8            ; 8 uses
  %23 = alloca %class.QString, align 16           ; 17 uses
  %24 = alloca %class.QString, align 16           ; 17 uses
  %25 = alloca %class.QString, align 16           ; 17 uses
  %26 = alloca %class.QString, align 16           ; 17 uses
  %27 = alloca %class.QString, align 16           ; 17 uses
  %28 = alloca %class.QString, align 16           ; 17 uses
  %29 = alloca %class.QString, align 16           ; 6 uses
  %30 = alloca %class.QString, align 16           ; 6 uses
  %31 = alloca %class.QString, align 16           ; 6 uses
  %32 = alloca %class.QString, align 16           ; 6 uses
  %33 = alloca %class.QString, align 16           ; 6 uses
  %34 = alloca %class.QString, align 16           ; 6 uses
  %35 = alloca %class.QString, align 16           ; 6 uses
  %36 = alloca %class.QString, align 16           ; 6 uses
  %37 = alloca %class.QString, align 16           ; 6 uses
  %38 = alloca %class.QString, align 16           ; 6 uses
  %39 = alloca %class.QString, align 16           ; 6 uses
  %40 = alloca %class.QString, align 16           ; 6 uses
  %41 = alloca %class.QString, align 16           ; 6 uses
  %42 = alloca %class.QString, align 16           ; 6 uses
  tail call void @_ZN7QWidgetC2EPS_6QFlagsIN2Qt10WindowTypeEE(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef %1, i32 0)
  store ptr getelementptr inbounds nuw inrange(-16, 472) (i8, ptr @_ZTV11QCustomPlot, i64 16), ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV11QCustomPlot, i64 504), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = getelementptr i8, ptr %0, i64 88         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i8 0, i64 48, i1 false)
  store i32 -1, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %0, i64 92
  store i32 -1, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double 1.000000e+00, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  store ptr null, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 19 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 228
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(108) %i.s, i8 0, i64 108, i1 false)
  store i32 8, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  invoke void @_ZN6QBrushC1EN2Qt11GlobalColorENS0_10BrushStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.x, i32 noundef 3, i32 noundef 1)
          to label %bb.b unwind label %bb.ds

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  invoke void @_ZN7QPixmapC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %i.y)
          to label %bb.c unwind label %bb.dt

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  invoke void @_ZN7QPixmapC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %i.z)
          to label %bb.d unwind label %bb.du

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i8 1, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 2, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr null, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %0, i64 312       ; 2 uses
  store i32 6, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 67108864, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  store ptr null, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i8 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 440
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ai, i8 0, i64 33, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, i8 0, i64 56, i1 false)
  store i64 2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i8 0, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i64 2, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i8 0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 481 ; 3 uses
  store i8 0, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 504
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  store i32 16, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 508 ; 2 uses
  store i32 0, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  store i8 1, ptr %i.au, align 8
  invoke void @_ZN7QWidget12setAttributeEN2Qt15WidgetAttributeEb(ptr noundef align 8 dereferenceable_or_null(40) %0, i32 noundef 73, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.dv

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7QWidget14setFocusPolicyEN2Qt11FocusPolicyE(ptr noundef align 8 dereferenceable_or_null(40) %0, i32 noundef 2)
          to label %bb.f unwind label %bb.dv

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN7QWidget12setAttributeEN2Qt15WidgetAttributeEb(ptr noundef align 8 dereferenceable_or_null(40) %0, i32 noundef 2, i1 noundef zeroext true)
          to label %_ZN7QWidget16setMouseTrackingEb.exit unwind label %bb.dv

_ZN7QWidget16setMouseTrackingEb.exit:             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #49
  invoke void @_ZNK7QWidget6localeEv(ptr dead_on_unwind nonnull writable sret(%class.QLocale) align 8 %22, ptr noundef align 8 dereferenceable_or_null(40) %0)
          to label %bb.g unwind label %bb.dw

bb.g:                                             ; preds = %_ZN7QWidget16setMouseTrackingEb.exit
  invoke void @_ZN7QLocale16setNumberOptionsE6QFlagsINS_12NumberOptionEE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %22, i32 1)
end_hunk_0
begin_hunk_1_@_ZN21QCPAbstractLegendItemC2EP9QCPLegend:bb.a
bb.h:                                             ; preds = %_ZNK9QCPLegend4fontEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i24, label %.body, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i25

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i25:    ; preds = %bb.i
  %i.ao = atomicrmw add ptr %i.q, i32 -1 acq_rel, align 4
  %.not.i.i26 = icmp eq i32 %i.ao, 1
  br i1 %.not.i.i26, label %bb.j, label %.body

bb.j:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i25
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.q, i64 noundef 2, i64 noundef 8) #49
  br label %.body

.body:                                            ; preds = %bb.j, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i25, %bb.i, %_ZN17QArrayDataPointerIDsED2Ev.exit
  %.pn = phi { ptr, i32 } [ %i.n, %_ZN17QArrayDataPointerIDsED2Ev.exit ], [ %i.an, %bb.j ], [ %i.an, %bb.i ], [ %i.an, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %i.h) #49
  br label %bb.k

bb.k:                                             ; preds = %.body, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.am, %bb.h ]
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %i.d) #49
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.k ], [ %i.al, %bb.g ]
  call void @_ZN16QCPLayoutElementD2Ev(ptr noundef align 8 dead_on_return(168) dereferenceable_or_null(168) %0) #49
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN21QCPAbstractLegendItem7setFontERK5QFont(ptr noundef align 8 dereferenceable_or_null(242) %0, ptr noundef align 8 dereferenceable(12) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 176
  %i.b = tail call noundef align 8 dereferenceable(12) ptr @_ZN5QFontaSERKS_(ptr noundef align 8 dereferenceable_or_null(12) %i.a, ptr noundef align 8 dereferenceable(12) %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable
define void @_ZN21QCPAbstractLegendItem12setTextColorERK6QColor(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(242) initializes((192, 206)) %0, ptr nofree noundef readonly align 4 captures(none) dereferenceable(14) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(14) %i.a, ptr noundef align 4 dereferenceable(14) %1, i64 14, i1 false)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN21QCPAbstractLegendItem15setSelectedFontERK5QFont(ptr noundef align 8 dereferenceable_or_null(242) %0, ptr noundef align 8 dereferenceable(12) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 208
  %i.b = tail call noundef align 8 dereferenceable(12) ptr @_ZN5QFontaSERKS_(ptr noundef align 8 dereferenceable_or_null(12) %i.a, ptr noundef align 8 dereferenceable(12) %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable
define void @_ZN21QCPAbstractLegendItem20setSelectedTextColorERK6QColor(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(242) initializes((224, 238)) %0, ptr nofree noundef readonly align 4 captures(none) dereferenceable(14) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(14) %i.a, ptr noundef align 4 dereferenceable(14) %1, i64 14, i1 false)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN21QCPAbstractLegendItem13setSelectableEb(ptr noundef align 8 dereferenceable_or_null(242) %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 240        ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !175, !noundef !176
  %i.c = zext i1 %1 to i8                         ; 2 uses
  %.not = icmp eq i8 %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %i.c, ptr %i.a, align 8
  tail call void @_ZN21QCPAbstractLegendItem17selectableChangedEb(ptr noundef align 8 dereferenceable_or_null(242) %0, i1 noundef zeroext %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN21QCPAbstractLegendItem17selectableChangedEb(ptr noundef align 8 dereferenceable_or_null(242), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN21QCPAbstractLegendItem11setSelectedEb(ptr noundef align 8 dereferenceable_or_null(242) %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 241        ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !175, !noundef !176
  %i.c = zext i1 %1 to i8                         ; 2 uses
  %.not = icmp eq i8 %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %i.c, ptr %i.a, align 1
  tail call void @_ZN21QCPAbstractLegendItem16selectionChangedEb(ptr noundef align 8 dereferenceable_or_null(242) %0, i1 noundef zeroext %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN21QCPAbstractLegendItem16selectionChangedEb(ptr noundef align 8 dereferenceable_or_null(242), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define noundef double @_ZNK21QCPAbstractLegendItem10selectTestERK7QPointFbP8QVariant(ptr noundef align 8 dereferenceable_or_null(242) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3) unnamed_addr #10 align 2 {
bb.a:
  %4 = alloca %class.QPoint, align 8              ; 4 uses
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge2, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 240
  %i.d = load i8, ptr %i.c, align 8, !range !175, !noundef !176
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %.critedge2

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 328
  %.sroa.0.0.copyload.i = load i32, ptr %i.h, align 8
  %i.i = and i32 %.sroa.0.0.copyload.i, 2
  %.not5 = icmp eq i32 %i.i, 0
  br i1 %.not5, label %.critedge2, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.d
  %i.j = getelementptr i8, ptr %0, i64 92
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  %i.k = load <2 x double>, ptr %1, align 8       ; 2 uses
  %i.l = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.k)
  %i.m = fadd <2 x double> %i.k, %i.l
  %i.n = fptosi <2 x double> %i.m to <2 x i32>
  store <2 x i32> %i.n, ptr %4, align 8
  %i.o = call noundef zeroext i1 @_ZNK5QRect8containsERK6QPointb(ptr noundef align 4 dereferenceable_or_null(16) %i.j, ptr noundef nonnull align 4 dereferenceable(8) %4, i1 noundef zeroext false) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  br i1 %i.o, label %bb.e, label %.critedge2

bb.e:                                             ; preds = %.critedge
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 228
  %i.r = load i32, ptr %i.q, align 4
  %i.s = sitofp i32 %i.r to double
  %i.t = fmul nnan double %i.s, f0x3FEFAE147AE147AE
  br label %.critedge2

.critedge2:                                       ; preds = %bb.c, %.critedge, %bb.d, %bb.a, %bb.e
  %.0 = phi double [ -1.000000e+00, %bb.a ], [ %i.t, %bb.e ], [ -1.000000e+00, %bb.d ], [ -1.000000e+00, %.critedge ], [ -1.000000e+00, %bb.c ]
  ret double %.0
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK21QCPAbstractLegendItem28applyDefaultAntialiasingHintEP10QCPPainter(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(242) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  tail call void @_ZNK12QCPLayerable21applyAntialiasingHintEP10QCPPainterbN3QCP18AntialiasedElementE(ptr noundef align 8 dereferenceable_or_null(57) %0, ptr noundef %1, i1 noundef zeroext %i.c, i32 noundef 16)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK21QCPAbstractLegendItem8clipRectEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(242) %0) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 108
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 4
  %.sroa.2.0..sroa_idx = getelementptr i8, ptr %0, i64 116
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.2.0.copyload, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN21QCPAbstractLegendItem11selectEventEP11QMouseEventbRK8QVariantPb(ptr noundef align 8 dereferenceable_or_null(242) %0, ptr nofree noundef readnone captures(none) %1, i1 noundef zeroext %2, ptr nofree noundef readnone align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 240
  %i.b = load i8, ptr %i.a, align 8, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 168
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 328
  %.sroa.0.0.copyload.i = load i32, ptr %i.f, align 8
  %i.g = and i32 %.sroa.0.0.copyload.i, 2
  %.not4 = icmp eq i32 %i.g, 0
  br i1 %.not4, label %.critedge, label %5

5:                                                ; preds = %bb.b
  %6 = getelementptr i8, ptr %0, i64 241          ; 3 uses
  %7 = load i8, ptr %6, align 1, !range !175, !noundef !176 ; 3 uses
  br i1 %2, label %8, label %bb.c

8:                                                ; preds = %5
  %9 = trunc nuw i8 %7 to i1
  %10 = xor i1 %9, true
  br label %bb.c

bb.c:                                             ; preds = %5, %8
  %11 = phi i1 [ %10, %8 ], [ true, %5 ]          ; 2 uses
  %i.h = zext i1 %11 to i8                        ; 2 uses
  %.not.i = icmp eq i8 %7, %i.h
  br i1 %.not.i, label %_ZN21QCPAbstractLegendItem11setSelectedEb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 %i.h, ptr %6, align 1
  tail call void @_ZN21QCPAbstractLegendItem16selectionChangedEb(ptr noundef align 8 dereferenceable_or_null(242) %0, i1 noundef zeroext %11)
  br label %_ZN21QCPAbstractLegendItem11setSelectedEb.exit

_ZN21QCPAbstractLegendItem11setSelectedEb.exit:   ; preds = %bb.c, %bb.d
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZN21QCPAbstractLegendItem11setSelectedEb.exit
  %i.i = load i8, ptr %6, align 1, !range !175, !noundef !176
  %i.j = icmp ne i8 %i.i, %7
  %i.k = zext i1 %i.j to i8
  store i8 %i.k, ptr %4, align 1
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZN21QCPAbstractLegendItem11setSelectedEb.exit, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN21QCPAbstractLegendItem13deselectEventEPb(ptr noundef align 8 dereferenceable_or_null(242) %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 240
  %i.b = load i8, ptr %i.a, align 8, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 168
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 328
  %.sroa.0.0.copyload.i = load i32, ptr %i.f, align 8
  %i.g = and i32 %.sroa.0.0.copyload.i, 2
  %.not3 = icmp eq i32 %i.g, 0
  br i1 %.not3, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 241        ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !range !175, !noundef !176 ; 2 uses
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %_ZN21QCPAbstractLegendItem11setSelectedEb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.h, align 1
  tail call void @_ZN21QCPAbstractLegendItem16selectionChangedEb(ptr noundef align 8 dereferenceable_or_null(242) %0, i1 noundef zeroext false)
  br label %_ZN21QCPAbstractLegendItem11setSelectedEb.exit

_ZN21QCPAbstractLegendItem11setSelectedEb.exit:   ; preds = %bb.c, %bb.d
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZN21QCPAbstractLegendItem11setSelectedEb.exit
  %i.j = load i8, ptr %i.h, align 1, !range !175, !noundef !176
  %i.k = icmp ne i8 %i.j, %i.i
  %i.l = zext i1 %i.k to i8
  store i8 %i.l, ptr %1, align 1
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZN21QCPAbstractLegendItem11setSelectedEb.exit, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN22QCPPlottableLegendItemC2EP9QCPLegendP20QCPAbstractPlottable(ptr noundef align 8 dereferenceable_or_null(256) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN21QCPAbstractLegendItemC2EP9QCPLegend(ptr noundef align 8 dereferenceable_or_null(242) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 248) (i8, ptr @_ZTV22QCPPlottableLegendItem, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 56
  store i8 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZNK22QCPPlottableLegendItem16getIconBorderPenEv(ptr dead_on_unwind noalias writable sret(%class.QPen) align 8 %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(256) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 241
  %i.b = load i8, ptr %i.a, align 1, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr i8, ptr %1, i64 168
  %i.e = load ptr, ptr %i.d, align 8
  %. = select i1 %i.c, i64 344, i64 264
  %i.f = getelementptr i8, ptr %i.e, i64 %.
  tail call void @_ZN4QPenC1ERKS_(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef align 8 dereferenceable(8) %i.f) #49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK22QCPPlottableLegendItem12getTextColorEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(256) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 241
  %i.b = load i8, ptr %i.a, align 1, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  %.v = select i1 %i.c, i64 224, i64 192
  %i.d = getelementptr i8, ptr %0, i64 %.v        ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.2.0.copyload, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK22QCPPlottableLegendItem7getFontEv(ptr dead_on_unwind noalias writable sret(%class.QFont) align 8 %0, ptr noundef align 8 dereferenceable_or_null(256) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 241
  %i.b = load i8, ptr %i.a, align 1, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  %.v = select i1 %i.c, i64 208, i64 176
  %i.d = getelementptr i8, ptr %1, i64 %.v
  tail call void @_ZN5QFontC1ERKS_(ptr noundef align 8 dereferenceable_or_null(12) %0, ptr noundef align 8 dereferenceable(12) %i.d)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN22QCPPlottableLegendItem4drawEP10QCPPainter(ptr noundef align 8 dereferenceable_or_null(256) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %class.QRect, align 4               ; 7 uses
  %3 = alloca %class.QRect, align 4               ; 7 uses
  %4 = alloca %class.QFont, align 8               ; 7 uses
  %5 = alloca %class.QPen, align 8                ; 7 uses
  %6 = alloca %class.QColor, align 8              ; 6 uses
  %7 = alloca %class.QFontMetrics, align 8        ; 7 uses
  %8 = alloca %class.QString, align 16            ; 10 uses
  %9 = alloca %class.QRect, align 8               ; 9 uses
  %10 = alloca %class.QString, align 16           ; 10 uses
  %11 = alloca %class.QRectF, align 16            ; 5 uses
  %12 = alloca %class.QPen, align 8               ; 7 uses
  %13 = alloca %class.QPen, align 8               ; 7 uses
  %14 = alloca %class.QRect, align 8              ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 248        ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  %i.d = getelementptr i8, ptr %0, i64 241        ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !range !175, !noalias !1025, !noundef !176
  %i.f = trunc nuw i8 %i.e to i1
  %.v.i = select i1 %i.f, i64 208, i64 176
  %i.g = getelementptr i8, ptr %0, i64 %.v.i
  call void @_ZN5QFontC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(12) %4, ptr noundef align 8 dereferenceable(12) %i.g)
  invoke void @_ZN8QPainter7setFontERK5QFont(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %4) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.h = load i8, ptr %i.d, align 1, !range !175, !noundef !176
  %i.i = trunc nuw i8 %i.h to i1
  %.v.i27 = select i1 %i.i, i64 224, i64 192
  %i.j = getelementptr i8, ptr %0, i64 %.v.i27    ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.copyload.i to i48
  store i48 %.sroa.2.0.extract.trunc, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_ZN4QPenC1ERK6QColor(ptr noundef nonnull align 8 dereferenceable_or_null(8) %5, ptr noundef nonnull align 4 dereferenceable(14) %6)
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.c
  %i.k = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 4
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZN10QCPPainter6setPenERK4QPen.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit unwind label %bb.o

_ZN10QCPPainter6setPenERK4QPen.exit:              ; preds = %.noexc, %bb.d
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  %i.n = getelementptr i8, ptr %0, i64 168        ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 312
  %.sroa.0.0.copyload.i29 = load i64, ptr %i.p, align 8 ; 2 uses
  %.sroa.059.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i29 to i32 ; 2 uses
  %.sroa.661.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i29, 32
  %.sroa.661.0.extract.trunc = trunc nuw i64 %.sroa.661.0.extract.shift to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call void @_ZNK8QPainter11fontMetricsEv(ptr dead_on_unwind nonnull writable sret(%class.QFontMetrics) align 8 %7, ptr noundef align 8 dereferenceable_or_null(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  %i.q = load ptr, ptr %i.b, align 8              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  %i.r = getelementptr i8, ptr %i.q, i64 64       ; 2 uses
  %i.s = load <2 x ptr>, ptr %i.r, align 8, !noalias !1026
  %i.t = load ptr, ptr %i.r, align 8, !noalias !1026 ; 2 uses
  store <2 x ptr> %i.s, ptr %8, align 16, !alias.scope !1026
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.v = getelementptr i8, ptr %i.q, i64 80
  %i.w = load i64, ptr %i.v, align 8, !noalias !1026
  store i64 %i.w, ptr %i.u, align 16, !alias.scope !1026
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZNK20QCPAbstractPlottable4nameEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit
  %i.x = atomicrmw add ptr %i.t, i32 1 acq_rel, align 4, !noalias !1026 ; 0 uses
  br label %_ZNK20QCPAbstractPlottable4nameEv.exit

end_hunk_1
begin_hunk_2_@_ZN14QCPTextElement4drawEP10QCPPainter:bb.a
bb.b:                                             ; preds = %bb.a
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %2) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  %i.e = load i8, ptr %i.a, align 1, !range !175, !noundef !176
  %i.f = trunc nuw i8 %i.e to i1
  %.v.i7 = select i1 %i.f, i64 248, i64 216
  %i.g = getelementptr i8, ptr %0, i64 %.v.i7     ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.g, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.copyload.i to i48
  store i48 %.sroa.2.0.extract.trunc, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_ZN4QPenC1ERK6QColor(ptr noundef nonnull align 8 dereferenceable_or_null(8) %3, ptr noundef nonnull align 4 dereferenceable(14) %4)
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 4
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN10QCPPainter6setPenERK4QPen.exit, label %bb.c

bb.c:                                             ; preds = %.noexc
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit unwind label %bb.e

_ZN10QCPPainter6setPenERK4QPen.exit:              ; preds = %.noexc, %bb.c
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %3) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  %i.k = getelementptr i8, ptr %0, i64 92
  %i.l = getelementptr i8, ptr %0, i64 192
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %0, i64 168
  %i.o = getelementptr i8, ptr %0, i64 264
  call void @_ZN8QPainter8drawTextERK5QRectiRK7QStringPS0_(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef align 4 dereferenceable(16) %i.k, i32 noundef %i.m, ptr noundef align 8 dereferenceable(24) %i.n, ptr noundef %i.o)
  ret void

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %2) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %3) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK14QCPTextElement8mainFontEv(ptr dead_on_unwind noalias writable sret(%class.QFont) align 8 %0, ptr noundef align 8 dereferenceable_or_null(282) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 281
  %i.b = load i8, ptr %i.a, align 1, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  %.v = select i1 %i.c, i64 232, i64 200
  %i.d = getelementptr i8, ptr %1, i64 %.v
  tail call void @_ZN5QFontC1ERKS_(ptr noundef align 8 dereferenceable_or_null(12) %0, ptr noundef align 8 dereferenceable(12) %i.d)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK14QCPTextElement13mainTextColorEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(282) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 281
  %i.b = load i8, ptr %i.a, align 1, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  %.v = select i1 %i.c, i64 248, i64 216
  %i.d = getelementptr i8, ptr %0, i64 %.v        ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.2.0.copyload, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QPainter8drawTextERK5QRectiRK7QStringPS0_(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 4 dereferenceable(16), i32 noundef, ptr noundef align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define i64 @_ZNK14QCPTextElement20minimumOuterSizeHintEv(ptr noundef align 8 dereferenceable_or_null(282) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QRect, align 16              ; 4 uses
  %2 = alloca %class.QFontMetrics, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  %i.a = getelementptr i8, ptr %0, i64 200
  call void @_ZN12QFontMetricsC1ERK5QFont(ptr noundef nonnull align 8 dereferenceable_or_null(8) %2, ptr noundef align 8 dereferenceable(12) %i.a)
  %i.b = getelementptr i8, ptr %0, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #49
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 -1>, ptr %1, align 16
  %i.c = invoke { i64, i64 } @_ZNK12QFontMetrics12boundingRectERK5QRectiRK7QStringiPi(ptr noundef nonnull align 8 dereferenceable_or_null(8) %2, ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef 512, ptr noundef align 8 dereferenceable(24) %i.b, i32 noundef 0, ptr noundef null)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #49
  %i.d = extractvalue { i64, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.c, 1        ; 2 uses
  %i.f = add i64 %i.e, 1
  %i.g = sub i64 %i.f, %i.d
  %.sroa.6.12.extract.shift = lshr i64 %i.e, 32
  %.sroa.6.12.extract.trunc = trunc nuw i64 %.sroa.6.12.extract.shift to i32
  %.sroa.0.4.extract.shift = lshr i64 %i.d, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %.sroa.02.0.extract.trunc = trunc i64 %i.g to i32
  %i.h = getelementptr i8, ptr %0, i64 124
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr i8, ptr %0, i64 132
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add i32 %i.i, %.sroa.02.0.extract.trunc
  %i.m = add i32 %i.l, %i.k
  %i.n = getelementptr i8, ptr %0, i64 128
  %i.o = load i32, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %0, i64 136
  %i.q = load i32, ptr %i.p, align 8
  %i.r = add i32 %.sroa.6.12.extract.trunc, 1
  %i.s = sub i32 %i.r, %.sroa.0.4.extract.trunc
  %i.t = add i32 %i.s, %i.o
  %i.u = add i32 %i.t, %i.q
  call void @_ZN12QFontMetricsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %2) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  %.sroa.4.0.insert.ext = zext i32 %i.u to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.02.0.insert.ext = zext i32 %i.m to i64
  %.sroa.02.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.02.0.insert.ext
  ret i64 %.sroa.02.0.insert.insert

bb.c:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12QFontMetricsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %2) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define range(i64 16777215, -4278190080) i64 @_ZNK14QCPTextElement20maximumOuterSizeHintEv(ptr noundef align 8 dereferenceable_or_null(282) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QRect, align 16              ; 4 uses
  %2 = alloca %class.QFontMetrics, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  %i.a = getelementptr i8, ptr %0, i64 200
  call void @_ZN12QFontMetricsC1ERK5QFont(ptr noundef nonnull align 8 dereferenceable_or_null(8) %2, ptr noundef align 8 dereferenceable(12) %i.a)
  %i.b = getelementptr i8, ptr %0, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #49
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 -1>, ptr %1, align 16
  %i.c = invoke { i64, i64 } @_ZNK12QFontMetrics12boundingRectERK5QRectiRK7QStringiPi(ptr noundef nonnull align 8 dereferenceable_or_null(8) %2, ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef 512, ptr noundef align 8 dereferenceable(24) %i.b, i32 noundef 0, ptr noundef null)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #49
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  %.sroa.6.12.extract.shift = lshr i64 %i.e, 32
  %.sroa.6.12.extract.trunc = trunc nuw i64 %.sroa.6.12.extract.shift to i32
  %.sroa.0.4.extract.shift = lshr i64 %i.d, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %i.f = getelementptr i8, ptr %0, i64 128
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %0, i64 136
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add i32 %.sroa.6.12.extract.trunc, 1
  %i.k = sub i32 %i.j, %.sroa.0.4.extract.trunc
  %i.l = add i32 %i.k, %i.g
  %i.m = add i32 %i.l, %i.i
  call void @_ZN12QFontMetricsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %2) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  %.sroa.3.0.insert.ext = zext i32 %i.m to i64
  %.sroa.3.0.insert.shift = shl nuw i64 %.sroa.3.0.insert.ext, 32
  %.sroa.02.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, 16777215
  ret i64 %.sroa.02.0.insert.insert

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12QFontMetricsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %2) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN14QCPTextElement11selectEventEP11QMouseEventbRK8QVariantPb(ptr noundef align 8 dereferenceable_or_null(282) %0, ptr nofree noundef readnone captures(none) %1, i1 noundef zeroext %2, ptr nofree noundef readnone align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 280
  %i.b = load i8, ptr %i.a, align 8, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %5, label %bb.e

5:                                                ; preds = %bb.a
  %6 = getelementptr i8, ptr %0, i64 281          ; 3 uses
  %7 = load i8, ptr %6, align 1, !range !175, !noundef !176 ; 3 uses
  br i1 %2, label %8, label %bb.b

8:                                                ; preds = %5
  %9 = trunc nuw i8 %7 to i1
  %10 = xor i1 %9, true
  br label %bb.b

bb.b:                                             ; preds = %5, %8
  %11 = phi i1 [ %10, %8 ], [ true, %5 ]          ; 2 uses
  %i.d = zext i1 %11 to i8                        ; 2 uses
  %.not.i = icmp eq i8 %7, %i.d
  br i1 %.not.i, label %_ZN14QCPTextElement11setSelectedEb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 %i.d, ptr %6, align 1
  tail call void @_ZN14QCPTextElement16selectionChangedEb(ptr noundef align 8 dereferenceable_or_null(282) %0, i1 noundef zeroext %11)
  br label %_ZN14QCPTextElement11setSelectedEb.exit

_ZN14QCPTextElement11setSelectedEb.exit:          ; preds = %bb.b, %bb.c
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN14QCPTextElement11setSelectedEb.exit
  %i.e = load i8, ptr %6, align 1, !range !175, !noundef !176
  %i.f = icmp ne i8 %i.e, %7
  %i.g = zext i1 %i.f to i8
  store i8 %i.g, ptr %4, align 1
  br label %bb.e

bb.e:                                             ; preds = %_ZN14QCPTextElement11setSelectedEb.exit, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN14QCPTextElement13deselectEventEPb(ptr noundef align 8 dereferenceable_or_null(282) %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 280
  %i.b = load i8, ptr %i.a, align 8, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 281        ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !range !175, !noundef !176 ; 2 uses
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %_ZN14QCPTextElement11setSelectedEb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.d, align 1
  tail call void @_ZN14QCPTextElement16selectionChangedEb(ptr noundef align 8 dereferenceable_or_null(282) %0, i1 noundef zeroext false)
  br label %_ZN14QCPTextElement11setSelectedEb.exit

_ZN14QCPTextElement11setSelectedEb.exit:          ; preds = %bb.b, %bb.c
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN14QCPTextElement11setSelectedEb.exit
  %i.f = load i8, ptr %i.d, align 1, !range !175, !noundef !176
  %i.g = icmp ne i8 %i.f, %i.e
  %i.h = zext i1 %i.g to i8
  store i8 %i.h, ptr %1, align 1
  br label %bb.e

bb.e:                                             ; preds = %_ZN14QCPTextElement11setSelectedEb.exit, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define noundef double @_ZNK14QCPTextElement10selectTestERK7QPointFbP8QVariant(ptr noundef align 8 dereferenceable_or_null(282) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3) unnamed_addr #10 align 2 {
bb.a:
  %4 = alloca %class.QPoint, align 8              ; 4 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 280
  %i.b = load i8, ptr %i.a, align 8, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 264
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  %i.e = load <2 x double>, ptr %1, align 8       ; 2 uses
  %i.f = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.e)
  %i.g = fadd <2 x double> %i.e, %i.f
  %i.h = fptosi <2 x double> %i.g to <2 x i32>
  store <2 x i32> %i.h, ptr %4, align 8
  %i.i = call noundef zeroext i1 @_ZNK5QRect8containsERK6QPointb(ptr noundef align 4 dereferenceable_or_null(16) %i.d, ptr noundef nonnull align 4 dereferenceable(8) %4, i1 noundef zeroext false) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 228
  %i.m = load i32, ptr %i.l, align 4
  %i.n = sitofp i32 %i.m to double
  %i.o = fmul nnan double %i.n, f0x3FEFAE147AE147AE
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi double [ %i.o, %bb.d ], [ -1.000000e+00, %bb.b ], [ -1.000000e+00, %bb.c ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define void @_ZN14QCPTextElement15mousePressEventEP11QMouseEventRK8QVariant(ptr nofree noundef readnone align 8 captures(none) dereferenceable_or_null(282) %0, ptr nofree noundef writeonly captures(none) initializes((12, 13)) %1, ptr nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 12
  store i8 1, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN14QCPTextElement17mouseReleaseEventEP11QMouseEventRK7QPointF(ptr noundef align 8 dereferenceable_or_null(282) %0, ptr noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call { double, double } @_ZNK11QEventPoint8positionEv(ptr noundef align 8 dereferenceable_or_null(8) %i.b) ; 2 uses
  %i.d = extractvalue { double, double } %i.c, 0
  %i.e = extractvalue { double, double } %i.c, 1
  %i.f = insertelement <2 x double> poison, double %i.d, i64 0
  %i.g = insertelement <2 x double> %i.f, double %i.e, i64 1 ; 2 uses
  %i.h = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.g)
  %i.i = fadd <2 x double> %i.g, %i.h
  %i.j = fptosi <2 x double> %i.i to <2 x i32>
  %i.k = sitofp <2 x i32> %i.j to <2 x double>
  %i.l = load <2 x double>, ptr %2, align 8
  %i.m = fsub <2 x double> %i.k, %i.l             ; 3 uses
  %i.n = fcmp ult <2 x double> %i.m, zeroinitializer
  %i.o = fneg <2 x double> %i.m
  %i.p = select <2 x i1> %i.n, <2 x double> %i.o, <2 x double> %i.m
  %i.q = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.p)
  %i.r = fcmp ugt double %i.q, 3.000000e+00
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN14QCPTextElement7clickedEP11QMouseEvent(ptr noundef align 8 dereferenceable_or_null(282) %0, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN14QCPTextElement7clickedEP11QMouseEvent(ptr noundef align 8 dereferenceable_or_null(282), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN14QCPTextElement21mouseDoubleClickEventEP11QMouseEventRK8QVariant(ptr noundef align 8 dereferenceable_or_null(282) %0, ptr noundef %1, ptr nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN14QCPTextElement13doubleClickedEP11QMouseEvent(ptr noundef align 8 dereferenceable_or_null(282) %0, ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN14QCPTextElement13doubleClickedEP11QMouseEvent(ptr noundef align 8 dereferenceable_or_null(282), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN13QCPColorScaleC2EP11QCustomPlot(ptr noundef align 8 dereferenceable_or_null(320) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QCPRange, align 8            ; 7 uses
  tail call void @_ZN16QCPLayoutElementC2EP11QCustomPlot(ptr noundef align 8 dereferenceable_or_null(168) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 248) (i8, ptr @_ZTV13QCPColorScale, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 4, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  invoke void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.b)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  invoke void @_ZN16QCPColorGradientC1ENS_14GradientPresetE(ptr noundef nonnull align 8 dereferenceable_or_null(73) %i.d, i32 noundef 2)
          to label %bb.c unwind label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 20, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.g = invoke noalias noundef dereferenceable_or_null(472) ptr @_Znwm(i64 noundef 472) #52
          to label %bb.d unwind label %bb.p       ; 5 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN28QCPColorScaleAxisRectPrivateC1EP13QCPColorScale(ptr noundef align 8 dereferenceable_or_null(465) %i.g, ptr noundef %0)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = invoke noundef ptr @_ZN15QtSharedPointer20ExternalRefCountData9getAndRefEPK7QObject(ptr noundef nonnull %i.g)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.i = phi ptr [ null, %bb.e ], [ %i.h, %bb.f ]
  store ptr %i.i, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = getelementptr i8, ptr %0, i64 140        ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZneRK8QMarginsS1_.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %0, i64 144
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp eq i32 %i.p, 6
  br i1 %i.q, label %bb.i, label %_ZneRK8QMarginsS1_.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %0, i64 148
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZneRK8QMarginsS1_.exit.i, label %_ZneRK8QMarginsS1_.exit.thread.i

_ZneRK8QMarginsS1_.exit.i:                        ; preds = %bb.i
  %i.u = getelementptr i8, ptr %0, i64 152
  %i.v = load i32, ptr %i.u, align 8
  %.not.i = icmp eq i32 %i.v, 6
  br i1 %.not.i, label %_ZN16QCPLayoutElement17setMinimumMarginsERK8QMargins.exit, label %_ZneRK8QMarginsS1_.exit.thread.i

end_hunk_2
