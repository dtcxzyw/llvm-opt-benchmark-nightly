Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/progress_frame?download=true
inline.NumInlined: 217
inline.NumDeleted: 93
begin_hunk_0_@strlen

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef ptr @_ZN13ProgressFrame12showProgressERK7QStringbbPbi(ptr noundef align 8 dereferenceable_or_null(152) %0, ptr noundef align 8 dereferenceable(24) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @_ZN12QProgressBar10setMaximumEi(ptr noundef align 8 dereferenceable_or_null(40) %i.d, i32 noundef 100)
  tail call void @_ZN13ProgressFrame19maximumValueChangedEi(ptr noundef align 8 dereferenceable_or_null(152) %0, i32 noundef 100)
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @_ZN12QProgressBar8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %i.g, i32 noundef %5)
  %i.h = getelementptr i8, ptr %0, i64 64
  %i.i = tail call noundef align 8 dereferenceable(24) ptr @_ZN7QStringaSERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.h, ptr noundef align 8 dereferenceable(24) %1) #11 ; 0 uses
  tail call void @_ZN13ProgressFrame11updateLabelEv(ptr noundef align 8 dereferenceable_or_null(152) %0)
  tail call void @_ZN13ProgressFrame13showRequestedEbbPb(ptr noundef align 8 dereferenceable_or_null(152) %0, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4)
  %i.j = getelementptr i8, ptr %0, i64 48
  ret ptr %i.j
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef ptr @delayed_create_progress_dlg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4, float noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @create_progress_dlg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) ; 2 uses
  tail call void @update_progress_dlg(ptr noundef %i.a, float noundef %5, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @update_progress_dlg(ptr nofree noundef readonly captures(address_is_null) %0, float noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QString, align 16            ; 5 uses
  %4 = alloca %class.QString, align 16            ; 10 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = fmul float %1, 1.000000e+02
  %i.c = fptosi float %i.b to i32                 ; 2 uses
  %i.d = getelementptr i8, ptr %i.a, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @_ZN12QProgressBar8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %i.g, i32 noundef %i.c)
  tail call void @_ZN13ProgressFrame12valueChangedEi(ptr noundef align 8 dereferenceable_or_null(152) %i.a, i32 noundef %i.c)
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %_ZN7QStringC2EPKc.exit, label %.split.i.i

.split.i.i:                                       ; preds = %bb.b
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #11
  br label %_ZN7QStringC2EPKc.exit

_ZN7QStringC2EPKc.exit:                           ; preds = %bb.b, %.split.i.i
  %.sink5.i.i = phi i64 [ %i.i, %.split.i.i ], [ 0, %bb.b ]
  call void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 %.sink5.i.i, ptr %2)
  %i.j = load <2 x ptr>, ptr %3, align 16
  store <2 x ptr> %i.j, ptr %4, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load i64, ptr %i.l, align 16
  store i64 %i.m, ptr %i.k, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.n = getelementptr i8, ptr %i.h, i64 88
  %i.o = call noundef align 8 dereferenceable(24) ptr @_ZN7QStringaSERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %4) #11 ; 0 uses
  invoke void @_ZN13ProgressFrame11updateLabelEv(ptr noundef align 8 dereferenceable_or_null(152) %i.h)
          to label %_ZN13ProgressFrame9setStatusERK7QString.exit unwind label %bb.e

_ZN13ProgressFrame9setStatusERK7QString.exit:     ; preds = %_ZN7QStringC2EPKc.exit
  %i.p = load ptr, ptr %4, align 16               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %_ZN13ProgressFrame9setStatusERK7QString.exit
  %i.q = atomicrmw sub ptr %i.p, i32 1 acq_rel, align 4
  %.not.i.i6 = icmp eq i32 %i.q, 1
  br i1 %.not.i.i6, label %bb.c, label %_ZN7QStringD2Ev.exit

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.r = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.r, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %_ZN13ProgressFrame9setStatusERK7QString.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @_ZN16QCoreApplication13processEventsE6QFlagsIN10QEventLoop17ProcessEventsFlagEE(i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN7QStringD2Ev.exit
  ret void

bb.e:                                             ; preds = %_ZN7QStringC2EPKc.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %4, align 16               ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i7, label %_ZN7QStringD2Ev.exit10, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i8

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i8:     ; preds = %bb.e
  %i.u = atomicrmw sub ptr %i.t, i32 1 acq_rel, align 4
  %.not.i.i9 = icmp eq i32 %i.u, 1
  br i1 %.not.i.i9, label %bb.f, label %_ZN7QStringD2Ev.exit10

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i8
  %i.v = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.v, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit10

_ZN7QStringD2Ev.exit10:                           ; preds = %bb.e, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i8, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN13ProgressFrame8setValueEi(ptr noundef align 8 dereferenceable_or_null(152) %0, i32 noundef %1) #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @_ZN12QProgressBar8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %i.d, i32 noundef %1)
  tail call void @_ZN13ProgressFrame12valueChangedEi(ptr noundef align 8 dereferenceable_or_null(152) %0, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN13ProgressFrame9setStatusERK7QString(ptr noundef align 8 dereferenceable_or_null(152) %0, ptr noundef align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88
  %i.b = tail call noundef align 8 dereferenceable(24) ptr @_ZN7QStringaSERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.a, ptr noundef align 8 dereferenceable(24) %1) #11 ; 0 uses
  tail call void @_ZN13ProgressFrame11updateLabelEv(ptr noundef align 8 dereferenceable_or_null(152) %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN16QCoreApplication13processEventsE6QFlagsIN10QEventLoop17ProcessEventsFlagEE(i32) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @destroy_progress_dlg(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 128
  store i32 -1, ptr %i.b, align 8
  tail call void @_ZN13ProgressFrame9setHiddenEv(ptr noundef align 8 dereferenceable_or_null(152) %i.a)
  tail call void @_ZN7QWidget4hideEv(ptr noundef align 8 dereferenceable_or_null(152) %i.a)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN13ProgressFrame4hideEv(ptr noundef align 8 dereferenceable_or_null(152) initializes((128, 132)) %0) #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  store i32 -1, ptr %i.a, align 8
  tail call void @_ZN13ProgressFrame9setHiddenEv(ptr noundef align 8 dereferenceable_or_null(152) %0)
  tail call void @_ZN7QWidget4hideEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN13ProgressFrameC2EP7QWidget(ptr noundef align 8 dereferenceable_or_null(152) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %2 = alloca %class.QString, align 16            ; 5 uses
  %3 = alloca %class.QString, align 16            ; 5 uses
  %4 = alloca %class.QString, align 8             ; 9 uses
  %5 = alloca %class.QString, align 8             ; 9 uses
  %6 = alloca %class.QString, align 8             ; 9 uses
  %7 = alloca %class.QString, align 8             ; 9 uses
  %8 = alloca %class.QString, align 8             ; 9 uses
  %9 = alloca %class.QString, align 8             ; 9 uses
  %10 = alloca %class.QString, align 8            ; 11 uses
  %11 = alloca %class.QString, align 8            ; 11 uses
  %12 = alloca %class.QString, align 16           ; 7 uses
  %13 = alloca %class.QSize, align 4              ; 6 uses
  %14 = alloca %class.QString, align 16           ; 10 uses
  %15 = alloca %class.QByteArray, align 8         ; 9 uses
  %16 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  tail call void @_ZN6QFrameC2EP7QWidget6QFlagsIN2Qt10WindowTypeEE(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef %1, i32 0)
  store ptr getelementptr inbounds nuw inrange(-16, 424) (i8, ptr @_ZTV13ProgressFrame, i64 16), ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV13ProgressFrame, i64 456), ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 40         ; 10 uses
  %i.e = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #12
          to label %bb.b unwind label %bb.ai      ; 2 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.f, i8 0, i64 49, i1 false)
  store i32 -1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  invoke void @_ZN16Ui_ProgressFrame7setupUiEP6QFrame(ptr noundef align 8 dereferenceable_or_null(32) %i.e, ptr noundef %0)
          to label %bb.c unwind label %bb.aj

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN13ProgressFrame16staticMetaObjectE, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef -1)
          to label %_ZN13ProgressFrame2trEPKcS1_i.exit unwind label %bb.ak

_ZN13ProgressFrame2trEPKcS1_i.exit:               ; preds = %bb.c
  invoke void @_ZN7QWidget17setAccessibleNameERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.d unwind label %bb.al

bb.d:                                             ; preds = %_ZN13ProgressFrame2trEPKcS1_i.exit
  %i.l = load ptr, ptr %4, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.d
  %i.m = atomicrmw sub ptr %i.l, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.m, 1
  br i1 %.not.i.i, label %bb.e, label %_ZN7QStringD2Ev.exit

bb.e:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.n = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.n, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.d, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN13ProgressFrame16staticMetaObjectE, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef -1)
          to label %_ZN13ProgressFrame2trEPKcS1_i.exit34 unwind label %bb.an

_ZN13ProgressFrame2trEPKcS1_i.exit34:             ; preds = %_ZN7QStringD2Ev.exit
  invoke void @_ZN7QWidget24setAccessibleDescriptionERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.f unwind label %bb.ao

bb.f:                                             ; preds = %_ZN13ProgressFrame2trEPKcS1_i.exit34
  %i.o = load ptr, ptr %5, align 8                ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i35, label %_ZN7QStringD2Ev.exit38, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i36

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i36:    ; preds = %bb.f
  %i.p = atomicrmw sub ptr %i.o, i32 1 acq_rel, align 4
  %.not.i.i37 = icmp eq i32 %i.p, 1
  br i1 %.not.i.i37, label %bb.g, label %_ZN7QStringD2Ev.exit38

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i36
  %i.q = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.q, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit38

_ZN7QStringD2Ev.exit38:                           ; preds = %bb.f, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i36, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.r = load ptr, ptr %i.d, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %6, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN13ProgressFrame16staticMetaObjectE, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef -1)
          to label %_ZN13ProgressFrame2trEPKcS1_i.exit39 unwind label %bb.aq

_ZN13ProgressFrame2trEPKcS1_i.exit39:             ; preds = %_ZN7QStringD2Ev.exit38
  invoke void @_ZN7QWidget17setAccessibleNameERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.h unwind label %bb.ar

bb.h:                                             ; preds = %_ZN13ProgressFrame2trEPKcS1_i.exit39
  %i.u = load ptr, ptr %6, align 8                ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i40, label %_ZN7QStringD2Ev.exit43, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i41

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i41:    ; preds = %bb.h
  %i.v = atomicrmw sub ptr %i.u, i32 1 acq_rel, align 4
  %.not.i.i42 = icmp eq i32 %i.v, 1
  br i1 %.not.i.i42, label %bb.i, label %_ZN7QStringD2Ev.exit43

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i41
  %i.w = load ptr, ptr %6, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.w, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit43

_ZN7QStringD2Ev.exit43:                           ; preds = %bb.h, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i41, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.x = load ptr, ptr %i.d, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %7, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN13ProgressFrame16staticMetaObjectE, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef -1)
          to label %_ZN13ProgressFrame2trEPKcS1_i.exit44 unwind label %bb.at

_ZN13ProgressFrame2trEPKcS1_i.exit44:             ; preds = %_ZN7QStringD2Ev.exit43
  invoke void @_ZN7QWidget24setAccessibleDescriptionERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.j unwind label %bb.au

bb.j:                                             ; preds = %_ZN13ProgressFrame2trEPKcS1_i.exit44
  %i.aa = load ptr, ptr %7, align 8               ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i45, label %_ZN7QStringD2Ev.exit48, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i46

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i46:    ; preds = %bb.j
  %i.ab = atomicrmw sub ptr %i.aa, i32 1 acq_rel, align 4
  %.not.i.i47 = icmp eq i32 %i.ab, 1
  br i1 %.not.i.i47, label %bb.k, label %_ZN7QStringD2Ev.exit48

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i46
  %i.ac = load ptr, ptr %7, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ac, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit48

_ZN7QStringD2Ev.exit48:                           ; preds = %bb.j, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i46, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.ad = load ptr, ptr %i.d, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %8, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN13ProgressFrame16staticMetaObjectE, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef -1)
          to label %_ZN13ProgressFrame2trEPKcS1_i.exit49 unwind label %bb.aw

_ZN13ProgressFrame2trEPKcS1_i.exit49:             ; preds = %_ZN7QStringD2Ev.exit48
  invoke void @_ZN7QWidget17setAccessibleNameERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.l unwind label %bb.ax

bb.l:                                             ; preds = %_ZN13ProgressFrame2trEPKcS1_i.exit49
  %i.ag = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i50, label %_ZN7QStringD2Ev.exit53, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i51

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i51:    ; preds = %bb.l
  %i.ah = atomicrmw sub ptr %i.ag, i32 1 acq_rel, align 4
  %.not.i.i52 = icmp eq i32 %i.ah, 1
  br i1 %.not.i.i52, label %bb.m, label %_ZN7QStringD2Ev.exit53

bb.m:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i51
  %i.ai = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ai, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit53

_ZN7QStringD2Ev.exit53:                           ; preds = %bb.l, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i51, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %i.aj = load ptr, ptr %i.d, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %9, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN13ProgressFrame16staticMetaObjectE, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef -1)
          to label %_ZN13ProgressFrame2trEPKcS1_i.exit54 unwind label %bb.az

_ZN13ProgressFrame2trEPKcS1_i.exit54:             ; preds = %_ZN7QStringD2Ev.exit53
  invoke void @_ZN7QWidget24setAccessibleDescriptionERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.n unwind label %bb.ba

bb.n:                                             ; preds = %_ZN13ProgressFrame2trEPKcS1_i.exit54
  %i.am = load ptr, ptr %9, align 8               ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i55, label %_ZN7QStringD2Ev.exit58, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i56

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i56:    ; preds = %bb.n
  %i.an = atomicrmw sub ptr %i.am, i32 1 acq_rel, align 4
  %.not.i.i57 = icmp eq i32 %i.an, 1
  br i1 %.not.i.i57, label %bb.o, label %_ZN7QStringD2Ev.exit58

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i56
  %i.ao = load ptr, ptr %9, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ao, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit58

_ZN7QStringD2Ev.exit58:                           ; preds = %bb.n, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i56, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %i.ap = getelementptr i8, ptr %0, i64 48
  store ptr %0, ptr %i.ap, align 8
  %i.aq = invoke noundef ptr @_ZNK7QWidget6windowEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
          to label %bb.p unwind label %bb.aj

bb.p:                                             ; preds = %_ZN7QStringD2Ev.exit58
  %i.ar = getelementptr i8, ptr %0, i64 56
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = load ptr, ptr %i.d, align 8
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  store ptr null, ptr %10, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.7, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 35, ptr %i.aw, align 8
  invoke void @_ZN7QWidget13setStyleSheetERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.q unwind label %bb.bc

bb.q:                                             ; preds = %bb.p
  %i.ax = load ptr, ptr %10, align 8              ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i59, label %_ZN17QArrayDataPointerIDsED2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i60

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i60:    ; preds = %bb.q
  %i.ay = atomicrmw sub ptr %i.ax, i32 1 acq_rel, align 4
  %.not.i.i61 = icmp eq i32 %i.ay, 1
  br i1 %.not.i.i61, label %bb.r, label %_ZN17QArrayDataPointerIDsED2Ev.exit

bb.r:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i60
  %i.az = load ptr, ptr %10, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.az, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit

_ZN17QArrayDataPointerIDsED2Ev.exit:              ; preds = %bb.r, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i60, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %i.ba = load ptr, ptr %i.d, align 8
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  store ptr null, ptr %11, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.8, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 197, ptr %i.be, align 8
  invoke void @_ZN7QWidget13setStyleSheetERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.s unwind label %bb.be

bb.s:                                             ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit
  %i.bf = load ptr, ptr %11, align 8              ; 2 uses
  %.not.i.i.i64 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i64, label %_ZN17QArrayDataPointerIDsED2Ev.exit71, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i65

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i65:    ; preds = %bb.s
  %i.bg = atomicrmw sub ptr %i.bf, i32 1 acq_rel, align 4
  %.not.i.i66 = icmp eq i32 %i.bg, 1
  br i1 %.not.i.i66, label %bb.t, label %_ZN17QArrayDataPointerIDsED2Ev.exit71

bb.t:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i65
  %i.bh = load ptr, ptr %11, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bh, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit71

_ZN17QArrayDataPointerIDsED2Ev.exit71:            ; preds = %bb.t, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i65, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  %i.bi = load ptr, ptr %i.d, align 8
  %i.bj = getelementptr i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 14, ptr nonnull @.str.9)
          to label %bb.u unwind label %bb.aj

bb.u:                                             ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit71
  %i.bl = load <2 x ptr>, ptr %3, align 16
  store <2 x ptr> %i.bl, ptr %12, align 16
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bo = load i64, ptr %i.bn, align 16
  store i64 %i.bo, ptr %i.bm, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  invoke void @_ZN19StockIconToolButton12setStockIconE7QString(ptr noundef align 8 dereferenceable_or_null(72) %i.bk, ptr noundef nonnull align 8 %12)
          to label %bb.v unwind label %bb.bg

bb.v:                                             ; preds = %bb.u
  %i.bp = load ptr, ptr %12, align 16             ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i72, label %_ZN7QStringD2Ev.exit75, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i73

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i73:    ; preds = %bb.v
  %i.bq = atomicrmw sub ptr %i.bp, i32 1 acq_rel, align 4
  %.not.i.i74 = icmp eq i32 %i.bq, 1
  br i1 %.not.i.i74, label %bb.w, label %_ZN7QStringD2Ev.exit75

bb.w:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i73
  %i.br = load ptr, ptr %12, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.br, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit75

_ZN7QStringD2Ev.exit75:                           ; preds = %bb.v, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i73, %bb.w
  %i.bs = load ptr, ptr %i.d, align 8
  %i.bt = getelementptr i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  store i32 14, ptr %13, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 14, ptr %i.bv, align 4
  invoke void @_ZN15QAbstractButton11setIconSizeERK5QSize(ptr noundef align 8 dereferenceable_or_null(40) %i.bu, ptr noundef nonnull align 4 dereferenceable(8) %13)
          to label %bb.x unwind label %bb.bi

bb.x:                                             ; preds = %_ZN7QStringD2Ev.exit75
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  %i.bw = load ptr, ptr %i.d, align 8
  %i.bx = getelementptr i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, i64 158, ptr nonnull @.str.10)
          to label %bb.y unwind label %bb.bj

bb.y:                                             ; preds = %bb.x
  %i.bz = load <2 x ptr>, ptr %2, align 16
  store <2 x ptr> %i.bz, ptr %14, align 16
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cc = load i64, ptr %i.cb, align 16
  store i64 %i.cc, ptr %i.ca, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  invoke void @_ZN7QWidget13setStyleSheetERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.z unwind label %bb.bk

bb.z:                                             ; preds = %bb.y
  %i.cd = load ptr, ptr %14, align 16             ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i77, label %_ZN7QStringD2Ev.exit80, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i78

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i78:    ; preds = %bb.z
  %i.ce = atomicrmw sub ptr %i.cd, i32 1 acq_rel, align 4
  %.not.i.i79 = icmp eq i32 %i.ce, 1
  br i1 %.not.i.i79, label %bb.aa, label %_ZN7QStringD2Ev.exit80

bb.aa:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i78
  %i.cf = load ptr, ptr %14, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cf, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit80

_ZN7QStringD2Ev.exit80:                           ; preds = %bb.z, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i78, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  %i.cg = invoke noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #12
          to label %bb.ab unwind label %bb.aj     ; 4 uses

bb.ab:                                            ; preds = %_ZN7QStringD2Ev.exit80
  invoke void @_ZN22QGraphicsOpacityEffectC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(16) %i.cg, ptr noundef %0)
          to label %bb.ac unwind label %bb.bm

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.cg, ptr %i.j, align 8
  %i.ch = invoke noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #12
          to label %bb.ad unwind label %bb.aj     ; 3 uses

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  invoke void @_ZN10QByteArrayC1EPKcx(ptr noundef nonnull align 8 dereferenceable_or_null(24) %15, ptr noundef nonnull @.str.11, i64 noundef -1)
          to label %bb.ae unwind label %bb.bn

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN18QPropertyAnimationC1EP7QObjectRK10QByteArrayS1_(ptr noundef align 8 dereferenceable_or_null(16) %i.ch, ptr noundef %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef %0)
          to label %bb.af unwind label %bb.bo

bb.af:                                            ; preds = %bb.ae
  store ptr %i.ch, ptr %i.k, align 8
  %i.ci = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i81 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i81, label %_ZN10QByteArrayD2Ev.exit, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i:       ; preds = %bb.af
  %i.cj = atomicrmw sub ptr %i.ci, i32 1 acq_rel, align 4
  %.not.i.i82 = icmp eq i32 %i.cj, 1
  br i1 %.not.i.i82, label %bb.ag, label %_ZN10QByteArrayD2Ev.exit

bb.ag:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i
  %i.ck = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ck, i64 noundef 1, i64 noundef 8) #11
  br label %_ZN10QByteArrayD2Ev.exit

_ZN10QByteArrayD2Ev.exit:                         ; preds = %bb.af, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 ptrtoint (ptr @_ZN13ProgressFrame13showRequestedEbbPb to i64), ptr %i.a, align 8, !noalias !6
  %.fca.1.gep14.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep14.i, align 8, !noalias !6
  store i64 ptrtoint (ptr @_ZN13ProgressFrame4showEbbPb to i64), ptr %i.b, align 8, !noalias !6
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !noalias !6
  %i.cl = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #12
          to label %.noexc unwind label %bb.aj    ; 5 uses

.noexc:                                           ; preds = %_ZN10QByteArrayD2Ev.exit
  store i32 1, ptr %i.cl, align 4, !noalias !6
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM13ProgressFrameFvbbPbENS_4ListIJbbS2_EEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvS2_, ptr %i.cm, align 8, !noalias !6
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 ptrtoint (ptr @_ZN13ProgressFrame4showEbbPb to i64), ptr %i.cn, align 8, !noalias !6
  %.repack7.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i64 0, ptr %.repack7.i.i, align 8, !noalias !6
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %16, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %i.cl, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN13ProgressFrame16staticMetaObjectE)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %16) #11
  store i32 -1, ptr %i.i, align 8
  invoke void @_ZN13ProgressFrame9setHiddenEv(ptr noundef align 8 dereferenceable_or_null(152) %0)
          to label %.noexc84 unwind label %bb.aj

.noexc84:                                         ; preds = %bb.ah
  invoke void @_ZN7QWidget4hideEv(ptr noundef align 8 dereferenceable_or_null(152) %0)
          to label %_ZN13ProgressFrame4hideEv.exit unwind label %bb.aj

_ZN13ProgressFrame4hideEv.exit:                   ; preds = %.noexc84
  ret void

bb.ai:                                            ; preds = %bb.a
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.aj:                                            ; preds = %.noexc84, %bb.ah, %.noexc, %_ZN10QByteArrayD2Ev.exit, %_ZN17QArrayDataPointerIDsED2Ev.exit71, %bb.ac, %_ZN7QStringD2Ev.exit80, %_ZN7QStringD2Ev.exit58, %bb.b
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit129

bb.ak:                                            ; preds = %bb.c
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit89

bb.al:                                            ; preds = %_ZN13ProgressFrame2trEPKcS1_i.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cs = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i86 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i86, label %_ZN7QStringD2Ev.exit89, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i87

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i87:    ; preds = %bb.al
  %i.ct = atomicrmw sub ptr %i.cs, i32 1 acq_rel, align 4
  %.not.i.i88 = icmp eq i32 %i.ct, 1
  br i1 %.not.i.i88, label %bb.am, label %_ZN7QStringD2Ev.exit89

bb.am:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i87
  %i.cu = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cu, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit89

_ZN7QStringD2Ev.exit89:                           ; preds = %bb.am, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i87, %bb.al, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.ak ], [ %i.cr, %bb.al ], [ %i.cr, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i87 ], [ %i.cr, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %_ZN7QStringD2Ev.exit129

bb.an:                                            ; preds = %_ZN7QStringD2Ev.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit93

bb.ao:                                            ; preds = %_ZN13ProgressFrame2trEPKcS1_i.exit34
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cx = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i90 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i90, label %_ZN7QStringD2Ev.exit93, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i91

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i91:    ; preds = %bb.ao
  %i.cy = atomicrmw sub ptr %i.cx, i32 1 acq_rel, align 4
  %.not.i.i92 = icmp eq i32 %i.cy, 1
  br i1 %.not.i.i92, label %bb.ap, label %_ZN7QStringD2Ev.exit93

bb.ap:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i91
  %i.cz = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cz, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit93

_ZN7QStringD2Ev.exit93:                           ; preds = %bb.ap, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i91, %bb.ao, %bb.an
  %.pn17 = phi { ptr, i32 } [ %i.cv, %bb.an ], [ %i.cw, %bb.ao ], [ %i.cw, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i91 ], [ %i.cw, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %_ZN7QStringD2Ev.exit129

bb.aq:                                            ; preds = %_ZN7QStringD2Ev.exit38
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit97

bb.ar:                                            ; preds = %_ZN13ProgressFrame2trEPKcS1_i.exit39
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dc = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i.i94 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i94, label %_ZN7QStringD2Ev.exit97, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i95

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i95:    ; preds = %bb.ar
  %i.dd = atomicrmw sub ptr %i.dc, i32 1 acq_rel, align 4
  %.not.i.i96 = icmp eq i32 %i.dd, 1
  br i1 %.not.i.i96, label %bb.as, label %_ZN7QStringD2Ev.exit97

bb.as:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i95
  %i.de = load ptr, ptr %6, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.de, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit97

_ZN7QStringD2Ev.exit97:                           ; preds = %bb.as, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i95, %bb.ar, %bb.aq
  %.pn19 = phi { ptr, i32 } [ %i.da, %bb.aq ], [ %i.db, %bb.ar ], [ %i.db, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i95 ], [ %i.db, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %_ZN7QStringD2Ev.exit129

bb.at:                                            ; preds = %_ZN7QStringD2Ev.exit43
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit101

bb.au:                                            ; preds = %_ZN13ProgressFrame2trEPKcS1_i.exit44
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dh = load ptr, ptr %7, align 8               ; 2 uses
  %.not.i.i.i98 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i98, label %_ZN7QStringD2Ev.exit101, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i99

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i99:    ; preds = %bb.au
  %i.di = atomicrmw sub ptr %i.dh, i32 1 acq_rel, align 4
  %.not.i.i100 = icmp eq i32 %i.di, 1
  br i1 %.not.i.i100, label %bb.av, label %_ZN7QStringD2Ev.exit101

bb.av:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i99
  %i.dj = load ptr, ptr %7, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dj, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit101

_ZN7QStringD2Ev.exit101:                          ; preds = %bb.av, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i99, %bb.au, %bb.at
  %.pn21 = phi { ptr, i32 } [ %i.df, %bb.at ], [ %i.dg, %bb.au ], [ %i.dg, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i99 ], [ %i.dg, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %_ZN7QStringD2Ev.exit129

bb.aw:                                            ; preds = %_ZN7QStringD2Ev.exit48
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit105

bb.ax:                                            ; preds = %_ZN13ProgressFrame2trEPKcS1_i.exit49
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dm = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i102, label %_ZN7QStringD2Ev.exit105, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i103

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i103:   ; preds = %bb.ax
  %i.dn = atomicrmw sub ptr %i.dm, i32 1 acq_rel, align 4
  %.not.i.i104 = icmp eq i32 %i.dn, 1
  br i1 %.not.i.i104, label %bb.ay, label %_ZN7QStringD2Ev.exit105

bb.ay:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i103
  %i.do = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.do, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit105

_ZN7QStringD2Ev.exit105:                          ; preds = %bb.ay, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i103, %bb.ax, %bb.aw
  %.pn23 = phi { ptr, i32 } [ %i.dk, %bb.aw ], [ %i.dl, %bb.ax ], [ %i.dl, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i103 ], [ %i.dl, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
end_hunk_0
