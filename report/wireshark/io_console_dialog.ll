Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/io_console_dialog?download=true
inline.NumInlined: 348
inline.NumDeleted: 176
begin_hunk_0_@_ZN15MainApplication17windowTitleStringE7QString:bb.a

.noexc:                                           ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 16               ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i: ; preds = %.noexc
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZN5QListI7QStringElsERKS0_.exit.thread

_ZN5QListI7QStringElsERKS0_.exit.thread:          ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i
  store ptr %i.a, ptr %3, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  store ptr %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 16
  store i64 %i.i, ptr %i.g, align 16
  br label %bb.b

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerI7QStringE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %4, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI7QStringElsERKS0_.exit unwind label %bb.h

_ZN5QListI7QStringElsERKS0_.exit:                 ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = load <2 x ptr>, ptr %4, align 16
  %.pre = load ptr, ptr %4, align 16              ; 2 uses
  store <2 x ptr> %i.l, ptr %3, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.o = load i64, ptr %i.n, align 16
  store i64 %i.o, ptr %i.m, align 16
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZN5QListI7QStringEC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5QListI7QStringElsERKS0_.exit.thread, %_ZN5QListI7QStringElsERKS0_.exit
  %i.p = phi ptr [ %i.h, %_ZN5QListI7QStringElsERKS0_.exit.thread ], [ %i.n, %_ZN5QListI7QStringElsERKS0_.exit ]
  %i.q = phi ptr [ %i.g, %_ZN5QListI7QStringElsERKS0_.exit.thread ], [ %i.m, %_ZN5QListI7QStringElsERKS0_.exit ]
  %i.r = phi ptr [ %i.e, %_ZN5QListI7QStringElsERKS0_.exit.thread ], [ %i.k, %_ZN5QListI7QStringElsERKS0_.exit ]
  %i.s = phi ptr [ %i.d, %_ZN5QListI7QStringElsERKS0_.exit.thread ], [ %i.j, %_ZN5QListI7QStringElsERKS0_.exit ]
  %i.t = phi ptr [ %i.a, %_ZN5QListI7QStringElsERKS0_.exit.thread ], [ %.pre, %_ZN5QListI7QStringElsERKS0_.exit ]
  %i.u = atomicrmw add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5QListI7QStringEC2ERKS1_.exit

_ZN5QListI7QStringEC2ERKS1_.exit:                 ; preds = %_ZN5QListI7QStringElsERKS0_.exit, %bb.b
  %i.v = phi ptr [ %i.n, %_ZN5QListI7QStringElsERKS0_.exit ], [ %i.p, %bb.b ]
  %i.w = phi ptr [ %i.m, %_ZN5QListI7QStringElsERKS0_.exit ], [ %i.q, %bb.b ]
  %i.x = phi ptr [ %i.k, %_ZN5QListI7QStringElsERKS0_.exit ], [ %i.r, %bb.b ]
  %i.y = phi ptr [ %i.j, %_ZN5QListI7QStringElsERKS0_.exit ], [ %i.s, %bb.b ]
  invoke void @_ZN15MainApplication17windowTitleStringE5QListI7QStringE(ptr dead_on_unwind writable sret(%class.QString) align 8 %0, ptr noundef align 8 dereferenceable_or_null(168) %1, ptr noundef nonnull align 8 %3)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZN5QListI7QStringEC2ERKS1_.exit
  %i.z = load ptr, ptr %3, align 16               ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i5, label %_ZN5QListI7QStringED2Ev.exit, label %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i

_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i: ; preds = %bb.c
  %i.aa = atomicrmw add ptr %i.z, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.aa, 1
  br i1 %.not.i.i, label %bb.d, label %_ZN5QListI7QStringED2Ev.exit

bb.d:                                             ; preds = %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i
  %i.ab = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.ac = load i64, ptr %i.w, align 8
  %.idx.i.i.i = mul i64 %i.ac, 24                 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 %.idx.i.i.i
  %.not4.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ah, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i ], [ %i.ab, %bb.d ] ; 3 uses
  %i.ae = load ptr, ptr %.05.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.af = atomicrmw add ptr %i.ae, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.af, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i
  %i.ag = load ptr, ptr %.05.i.i.i.i.i.i, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ag, i64 noundef 2, i64 noundef 8) #19
  br label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i:     ; preds = %bb.e, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ah = getelementptr i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.ad
  br i1 %.not.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i: ; preds = %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i, %bb.d
  %i.ai = load ptr, ptr %3, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ai, i64 noundef 24, i64 noundef 8) #19
  br label %_ZN5QListI7QStringED2Ev.exit

_ZN5QListI7QStringED2Ev.exit:                     ; preds = %bb.c, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i
  %i.aj = load ptr, ptr %4, align 16              ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i6, label %_ZN5QListI7QStringED2Ev.exit19, label %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i7

_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i7: ; preds = %_ZN5QListI7QStringED2Ev.exit
  %i.ak = atomicrmw add ptr %i.aj, i32 -1 acq_rel, align 4
  %.not.i.i8 = icmp eq i32 %i.ak, 1
  br i1 %.not.i.i8, label %bb.f, label %_ZN5QListI7QStringED2Ev.exit19

bb.f:                                             ; preds = %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i7
  %i.al = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.am = load i64, ptr %i.v, align 8
  %.idx.i.i.i9 = mul i64 %i.am, 24                ; 2 uses
  %i.an = getelementptr i8, ptr %i.al, i64 %.idx.i.i.i9
  %.not4.i.i.i.i.i.i10 = icmp eq i64 %.idx.i.i.i9, 0
  br i1 %.not4.i.i.i.i.i.i10, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i18, label %.lr.ph.i.i.i.i.i.i11

.lr.ph.i.i.i.i.i.i11:                             ; preds = %bb.f, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i16
  %.05.i.i.i.i.i.i12 = phi ptr [ %i.ar, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i16 ], [ %i.al, %bb.f ] ; 3 uses
  %i.ao = load ptr, ptr %.05.i.i.i.i.i.i12, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i13 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i13, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i16, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i14

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i14: ; preds = %.lr.ph.i.i.i.i.i.i11
  %i.ap = atomicrmw add ptr %i.ao, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i15 = icmp eq i32 %i.ap, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i15, label %bb.g, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i16

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i14
  %i.aq = load ptr, ptr %.05.i.i.i.i.i.i12, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aq, i64 noundef 2, i64 noundef 8) #19
  br label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i16

_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i16:   ; preds = %bb.g, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i14, %.lr.ph.i.i.i.i.i.i11
  %i.ar = getelementptr i8, ptr %.05.i.i.i.i.i.i12, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i17 = icmp eq ptr %i.ar, %i.an
  br i1 %.not.i.i.i.i.i.i17, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i18, label %.lr.ph.i.i.i.i.i.i11, !llvm.loop !0

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i18: ; preds = %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i16, %bb.f
  %i.as = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.as, i64 noundef 24, i64 noundef 8) #19
  br label %_ZN5QListI7QStringED2Ev.exit19

_ZN5QListI7QStringED2Ev.exit19:                   ; preds = %_ZN5QListI7QStringED2Ev.exit, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i7, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.h:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i, %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZN5QListI7QStringEC2ERKS1_.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QListI7QStringED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %3) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.au, %bb.i ], [ %i.at, %bb.h ]
  call void @_ZN5QListI7QStringED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZN16QDialogButtonBox9addButtonERK7QStringNS_10ButtonRoleE(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QPushButton10setDefaultEb(ptr noundef align 8 dereferenceable_or_null(40), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN15QAbstractButton11setShortcutERK12QKeySequence(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN12QKeySequenceC1ERK7QStringNS_14SequenceFormatE(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(24), i32 noundef) unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN12QKeySequenceD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN15QAbstractButton7clickedEb(ptr noundef align 8 dereferenceable_or_null(40), i1 noundef zeroext) #3

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN15IOConsoleDialog11acceptInputEv(ptr noundef align 8 dereferenceable_or_null(112) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %1 = alloca %class.QString, align 16            ; 5 uses
  %2 = alloca %class.QString, align 16            ; 5 uses
  %3 = alloca %class.QString, align 16            ; 5 uses
  %4 = alloca %class.QString, align 16            ; 5 uses
  %5 = alloca %class.QString, align 16            ; 6 uses
  %6 = alloca %class.QString, align 8             ; 10 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %7 = alloca %class.QByteArray, align 8          ; 9 uses
  %8 = alloca %class.QString, align 16            ; 10 uses
  %9 = alloca %class.QString, align 8             ; 11 uses
  %10 = alloca %class.QString, align 8            ; 9 uses
  %11 = alloca %class.QString, align 16           ; 10 uses
  %12 = alloca %class.QString, align 16           ; 10 uses
  %13 = alloca %class.QString, align 16           ; 10 uses
  %14 = alloca %class.QString, align 16           ; 10 uses
  %15 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 72         ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @_ZN6QLabel5clearEv(ptr noundef align 8 dereferenceable_or_null(40) %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  call void @_ZNK9QTextEdit11toPlainTextEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %6, ptr noundef align 8 dereferenceable_or_null(40) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.be, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store ptr null, ptr %i.d, align 8
  %i.o = getelementptr i8, ptr %0, i64 80
  %i.p = load ptr, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZN7QString13toUtf8_helperERKS_(ptr dead_on_unwind nonnull writable sret(%class.QByteArray) align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %6)
          to label %_ZNKR7QString6toUtf8Ev.exit unwind label %bb.n

_ZNKR7QString6toUtf8Ev.exit:                      ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %spec.select.i.i = select i1 %.not.i.i, ptr @_ZN10QByteArray6_emptyE, ptr %i.r
  %i.s = getelementptr i8, ptr %0, i64 104
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef i32 %i.p(ptr noundef nonnull %spec.select.i.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.t)
          to label %bb.c unwind label %bb.o       ; 2 uses

bb.c:                                             ; preds = %_ZNKR7QString6toUtf8Ev.exit
  %i.v = load ptr, ptr %7, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZN10QByteArrayD2Ev.exit, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i:       ; preds = %bb.c
  %i.w = atomicrmw add ptr %i.v, i32 -1 acq_rel, align 4
  %.not.i.i37 = icmp eq i32 %i.w, 1
  br i1 %.not.i.i37, label %bb.d, label %_ZN10QByteArrayD2Ev.exit

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i
  %i.x = load ptr, ptr %7, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.x, i64 noundef 1, i64 noundef 8) #19
  br label %_ZN10QByteArrayD2Ev.exit

_ZN10QByteArrayD2Ev.exit:                         ; preds = %bb.c, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.av, label %bb.e

bb.e:                                             ; preds = %_ZN10QByteArrayD2Ev.exit
  %i.y = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not21 = icmp eq ptr %i.y, null
  br i1 %.not21, label %bb.z, label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.z = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.y) #19
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, i64 %i.z, ptr nonnull %i.y)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %_ZN7QStringD2Ev.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load <2 x ptr>, ptr %5, align 16
  store <2 x ptr> %i.ac, ptr %8, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.af = load i64, ptr %i.ae, align 16
  store i64 %i.af, ptr %i.ad, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.ag = load i16, ptr %i.ab, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  invoke void @_ZNK7QString3midExx(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %10, ptr noundef nonnull align 8 dereferenceable_or_null(24) %8, i64 noundef 1, i64 noundef -1)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.ah = zext i16 %i.ag to i32
  %i.ai = call noundef zeroext i32 @_ZN5QChar7toUpperEDi(i32 noundef zeroext %i.ah) #21
  %i.aj = trunc i32 %i.ai to i16
  invoke void @_ZN7QStringC1E5QChar(ptr noundef nonnull align 8 dereferenceable_or_null(24) %9, i16 %i.aj)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.g
  %i.ak = invoke noundef align 8 dereferenceable(24) ptr @_ZN7QString6appendERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_Zpl5QCharRK7QString.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.am = load ptr, ptr %9, align 8               ; 2 uses
  %.not.i.i.i129 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i129, label %.body, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i130

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i130:   ; preds = %bb.h
  %i.an = atomicrmw add ptr %i.am, i32 -1 acq_rel, align 4
  %.not.i.i131 = icmp eq i32 %i.an, 1
  br i1 %.not.i.i131, label %bb.u, label %.body

_Zpl5QCharRK7QString.exit:                        ; preds = %.noexc
  invoke void @_ZN15IOConsoleDialog11setHintTextERK7QString(ptr noundef align 8 dereferenceable_or_null(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %_Zpl5QCharRK7QString.exit
  %i.ao = load ptr, ptr %9, align 8               ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i39, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.i
  %i.ap = atomicrmw add ptr %i.ao, i32 -1 acq_rel, align 4
  %.not.i.i40 = icmp eq i32 %i.ap, 1
  br i1 %.not.i.i40, label %bb.j, label %_ZN7QStringD2Ev.exit

bb.j:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.aq = load ptr, ptr %9, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aq, i64 noundef 2, i64 noundef 8) #19
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.j
  %i.ar = load ptr, ptr %10, align 8              ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i41, label %_ZN7QStringD2Ev.exit44, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i42

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i42:    ; preds = %_ZN7QStringD2Ev.exit
  %i.as = atomicrmw add ptr %i.ar, i32 -1 acq_rel, align 4
  %.not.i.i43 = icmp eq i32 %i.as, 1
  br i1 %.not.i.i43, label %bb.k, label %_ZN7QStringD2Ev.exit44

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i42
  %i.at = load ptr, ptr %10, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.at, i64 noundef 2, i64 noundef 8) #19
  br label %_ZN7QStringD2Ev.exit44

_ZN7QStringD2Ev.exit44:                           ; preds = %_ZN7QStringD2Ev.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i42, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.au = load ptr, ptr %i.d, align 8
  invoke void @g_free(ptr noundef %i.au)
          to label %bb.l unwind label %bb.w

bb.l:                                             ; preds = %_ZN7QStringD2Ev.exit44
  %i.av = load ptr, ptr %8, align 16              ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i45, label %_ZN7QStringD2Ev.exit48, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i46

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i46:    ; preds = %bb.l
  %i.aw = atomicrmw add ptr %i.av, i32 -1 acq_rel, align 4
  %.not.i.i47 = icmp eq i32 %i.aw, 1
  br i1 %.not.i.i47, label %bb.m, label %_ZN7QStringD2Ev.exit48

bb.m:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i46
  %i.ax = load ptr, ptr %8, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ax, i64 noundef 2, i64 noundef 8) #19
  br label %_ZN7QStringD2Ev.exit48

_ZN7QStringD2Ev.exit48:                           ; preds = %bb.l, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i46, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.ao

bb.n:                                             ; preds = %bb.b
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10QByteArrayD2Ev.exit52

bb.o:                                             ; preds = %_ZNKR7QString6toUtf8Ev.exit
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ba = load ptr, ptr %7, align 8               ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i49, label %_ZN10QByteArrayD2Ev.exit52, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i50

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i50:     ; preds = %bb.o
  %i.bb = atomicrmw add ptr %i.ba, i32 -1 acq_rel, align 4
  %.not.i.i51 = icmp eq i32 %i.bb, 1
  br i1 %.not.i.i51, label %bb.p, label %_ZN10QByteArrayD2Ev.exit52

bb.p:                                             ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i50
  %i.bc = load ptr, ptr %7, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bc, i64 noundef 1, i64 noundef 8) #19
  br label %_ZN10QByteArrayD2Ev.exit52

_ZN10QByteArrayD2Ev.exit52:                       ; preds = %bb.p, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i50, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.n ], [ %i.az, %bb.o ], [ %i.az, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i50 ], [ %i.az, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.bg

bb.q:                                             ; preds = %_ZN7QStringD2Ev.exit.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit64

bb.r:                                             ; preds = %bb.f
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit60

bb.s:                                             ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %_Zpl5QCharRK7QString.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bh = load ptr, ptr %9, align 8               ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i53, label %.body, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54:    ; preds = %bb.t
  %i.bi = atomicrmw add ptr %i.bh, i32 -1 acq_rel, align 4
  %.not.i.i55 = icmp eq i32 %i.bi, 1
  br i1 %.not.i.i55, label %bb.u, label %.body

bb.u:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i130
  %.pn26.ph = phi { ptr, i32 } [ %i.al, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i130 ], [ %i.bg, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54 ]
  %i.bj = load ptr, ptr %9, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bj, i64 noundef 2, i64 noundef 8) #19
  br label %.body

.body:                                            ; preds = %bb.u, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54, %bb.t, %bb.s, %bb.h, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i130
  %.pn26 = phi { ptr, i32 } [ %i.bg, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54 ], [ %i.bf, %bb.s ], [ %i.al, %bb.h ], [ %i.al, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i130 ], [ %i.bg, %bb.t ], [ %.pn26.ph, %bb.u ] ; 3 uses
  %i.bk = load ptr, ptr %10, align 8              ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i57, label %_ZN7QStringD2Ev.exit60, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i58

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i58:    ; preds = %.body
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4
  %.not.i.i59 = icmp eq i32 %i.bl, 1
  br i1 %.not.i.i59, label %bb.v, label %_ZN7QStringD2Ev.exit60

bb.v:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i58
  %i.bm = load ptr, ptr %10, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bm, i64 noundef 2, i64 noundef 8) #19
  br label %_ZN7QStringD2Ev.exit60

_ZN7QStringD2Ev.exit60:                           ; preds = %bb.v, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i58, %.body, %bb.r
  %.pn26.pn = phi { ptr, i32 } [ %i.be, %bb.r ], [ %.pn26, %.body ], [ %.pn26, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i58 ], [ %.pn26, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.x

bb.w:                                             ; preds = %_ZN7QStringD2Ev.exit44
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN7QStringD2Ev.exit60
  %.pn29 = phi { ptr, i32 } [ %i.bn, %bb.w ], [ %.pn26.pn, %_ZN7QStringD2Ev.exit60 ] ; 3 uses
  %i.bo = load ptr, ptr %8, align 16              ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i61, label %_ZN7QStringD2Ev.exit64, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i62

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i62:    ; preds = %bb.x
  %i.bp = atomicrmw add ptr %i.bo, i32 -1 acq_rel, align 4
  %.not.i.i63 = icmp eq i32 %i.bp, 1
  br i1 %.not.i.i63, label %bb.y, label %_ZN7QStringD2Ev.exit64

bb.y:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i62
  %i.bq = load ptr, ptr %8, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bq, i64 noundef 2, i64 noundef 8) #19
  br label %_ZN7QStringD2Ev.exit64

_ZN7QStringD2Ev.exit64:                           ; preds = %bb.y, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i62, %bb.x, %bb.q
  %.pn29.pn = phi { ptr, i32 } [ %i.bd, %bb.q ], [ %.pn29, %bb.x ], [ %.pn29, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i62 ], [ %.pn29, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.bg

bb.z:                                             ; preds = %bb.e
  %i.br = icmp slt i32 %i.u, 0
  br i1 %i.br, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, i64 20, ptr @.str.6)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bs = load <2 x ptr>, ptr %4, align 16
  store <2 x ptr> %i.bs, ptr %11, align 16
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bv = load i64, ptr %i.bu, align 16
  store i64 %i.bv, ptr %i.bt, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  invoke void @_ZN15IOConsoleDialog11setHintTextERK7QString(ptr noundef align 8 dereferenceable_or_null(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.bw = load ptr, ptr %11, align 16             ; 2 uses
  %.not.i.i.i70 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i70, label %_ZN7QStringD2Ev.exit73, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i71

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i71:    ; preds = %bb.ac
  %i.bx = atomicrmw add ptr %i.bw, i32 -1 acq_rel, align 4
  %.not.i.i72 = icmp eq i32 %i.bx, 1
  br i1 %.not.i.i72, label %bb.ad, label %_ZN7QStringD2Ev.exit73

bb.ad:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i71
  %i.by = load ptr, ptr %11, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.by, i64 noundef 2, i64 noundef 8) #19
  br label %_ZN7QStringD2Ev.exit73

_ZN7QStringD2Ev.exit73:                           ; preds = %bb.ac, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i71, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.ao

bb.ae:                                            ; preds = %bb.aa
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit77

bb.af:                                            ; preds = %bb.ab
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cb = load ptr, ptr %11, align 16             ; 2 uses
  %.not.i.i.i74 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i74, label %_ZN7QStringD2Ev.exit77, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i75

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i75:    ; preds = %bb.af
  %i.cc = atomicrmw add ptr %i.cb, i32 -1 acq_rel, align 4
  %.not.i.i76 = icmp eq i32 %i.cc, 1
  br i1 %.not.i.i76, label %bb.ag, label %_ZN7QStringD2Ev.exit77

bb.ag:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i75
  %i.cd = load ptr, ptr %11, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cd, i64 noundef 2, i64 noundef 8) #19
  br label %_ZN7QStringD2Ev.exit77

_ZN7QStringD2Ev.exit77:                           ; preds = %bb.ag, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i75, %bb.af, %bb.ae
  %.pn24 = phi { ptr, i32 } [ %i.bz, %bb.ae ], [ %i.ca, %bb.af ], [ %i.ca, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i75 ], [ %i.ca, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.bg

bb.ah:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 19, ptr @.str.7)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ce = load <2 x ptr>, ptr %3, align 16
  store <2 x ptr> %i.ce, ptr %12, align 16
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ch = load i64, ptr %i.cg, align 16
  store i64 %i.ch, ptr %i.cf, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  invoke void @_ZN15IOConsoleDialog11setHintTextERK7QString(ptr noundef align 8 dereferenceable_or_null(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.ci = load ptr, ptr %12, align 16             ; 2 uses
  %.not.i.i.i83 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i83, label %_ZN7QStringD2Ev.exit86, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i84

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i84:    ; preds = %bb.aj
  %i.cj = atomicrmw add ptr %i.ci, i32 -1 acq_rel, align 4
  %.not.i.i85 = icmp eq i32 %i.cj, 1
  br i1 %.not.i.i85, label %bb.ak, label %_ZN7QStringD2Ev.exit86

bb.ak:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i84
  %i.ck = load ptr, ptr %12, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ck, i64 noundef 2, i64 noundef 8) #19
  br label %_ZN7QStringD2Ev.exit86

_ZN7QStringD2Ev.exit86:                           ; preds = %bb.aj, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i84, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.ao

bb.al:                                            ; preds = %bb.ah
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit90

bb.am:                                            ; preds = %bb.ai
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cn = load ptr, ptr %12, align 16             ; 2 uses
  %.not.i.i.i87 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i87, label %_ZN7QStringD2Ev.exit90, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i88

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i88:    ; preds = %bb.am
  %i.co = atomicrmw add ptr %i.cn, i32 -1 acq_rel, align 4
  %.not.i.i89 = icmp eq i32 %i.co, 1
  br i1 %.not.i.i89, label %bb.an, label %_ZN7QStringD2Ev.exit90

bb.an:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i88
  %i.cp = load ptr, ptr %12, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cp, i64 noundef 2, i64 noundef 8) #19
  br label %_ZN7QStringD2Ev.exit90

_ZN7QStringD2Ev.exit90:                           ; preds = %bb.an, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i88, %bb.am, %bb.al
  %.pn22 = phi { ptr, i32 } [ %i.cl, %bb.al ], [ %i.cm, %bb.am ], [ %i.cm, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i88 ], [ %i.cm, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.bg

bb.ao:                                            ; preds = %_ZN7QStringD2Ev.exit73, %_ZN7QStringD2Ev.exit86, %_ZN7QStringD2Ev.exit48
  %i.cq = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not32 = icmp eq ptr %i.cq, null
  br i1 %.not32, label %bb.bd, label %_ZN7QStringD2Ev.exit.i93

_ZN7QStringD2Ev.exit.i93:                         ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.cr = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.cq) #19
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, i64 %i.cr, ptr nonnull %i.cq)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %_ZN7QStringD2Ev.exit.i93
  %i.cs = load <2 x ptr>, ptr %2, align 16
  store <2 x ptr> %i.cs, ptr %13, align 16
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cv = load i64, ptr %i.cu, align 16
  store i64 %i.cv, ptr %i.ct, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.cw = load ptr, ptr %i.e, align 8
  %i.cx = getelementptr i8, ptr %i.cw, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8
  invoke void @_ZN9QTextEdit6appendERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %13)
end_hunk_0
