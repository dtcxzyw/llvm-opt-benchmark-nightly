Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/bluetooth_hci_summary_dialog?download=true
inline.NumInlined: 1750
inline.NumDeleted: 360
begin_hunk_0_@_ZN25BluetoothHciSummaryDialogC2ER7QWidgetR11CaptureFile:bb.a
  br label %_ZN5QListIP7QActionED2Ev.exit206

_ZN5QListIP7QActionED2Ev.exit206:                 ; preds = %bb.bt, %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i204, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.cb

bb.bv:                                            ; preds = %_ZNK17QArrayDataPointerIP7QActionE11needsDetachEv.exit.thread.i.i.i.i.i.i151, %_ZN5QListIP7QActionED2Ev.exit148, %bb.am
  %i.jf = landingpad { ptr, i32 }
          cleanup
  %i.jg = load ptr, ptr %17, align 8              ; 2 uses
  %.not.i.i.i207 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i207, label %_ZN5QListIP7QActionED2Ev.exit210, label %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i208

_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i208: ; preds = %bb.bv
  %i.jh = atomicrmw sub ptr %i.jg, i32 1 acq_rel, align 4
  %.not.i.i209 = icmp eq i32 %i.jh, 1
  br i1 %.not.i.i209, label %bb.bw, label %_ZN5QListIP7QActionED2Ev.exit210

bb.bw:                                            ; preds = %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i208
  %i.ji = load ptr, ptr %17, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ji, i64 noundef 8, i64 noundef 8) #22
  br label %_ZN5QListIP7QActionED2Ev.exit210

_ZN5QListIP7QActionED2Ev.exit210:                 ; preds = %bb.bv, %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i208, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.cb

bb.bx:                                            ; preds = %_ZNK17QArrayDataPointerIP7QActionE11needsDetachEv.exit.thread.i.i.i.i.i.i161, %_ZN5QListIP7QActionED2Ev.exit158, %bb.ap
  %i.jj = landingpad { ptr, i32 }
          cleanup
  %i.jk = load ptr, ptr %18, align 8              ; 2 uses
  %.not.i.i.i211 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i211, label %_ZN5QListIP7QActionED2Ev.exit214, label %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i212

_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i212: ; preds = %bb.bx
  %i.jl = atomicrmw sub ptr %i.jk, i32 1 acq_rel, align 4
  %.not.i.i213 = icmp eq i32 %i.jl, 1
  br i1 %.not.i.i213, label %bb.by, label %_ZN5QListIP7QActionED2Ev.exit214

bb.by:                                            ; preds = %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i212
  %i.jm = load ptr, ptr %18, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.jm, i64 noundef 8, i64 noundef 8) #22
  br label %_ZN5QListIP7QActionED2Ev.exit214

_ZN5QListIP7QActionED2Ev.exit214:                 ; preds = %bb.bx, %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i212, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.cb

bb.bz:                                            ; preds = %_ZNK17QArrayDataPointerIP7QActionE11needsDetachEv.exit.thread.i.i.i.i.i.i171, %_ZN5QListIP7QActionED2Ev.exit168, %bb.as
  %i.jn = landingpad { ptr, i32 }
          cleanup
  %i.jo = load ptr, ptr %19, align 8              ; 2 uses
  %.not.i.i.i215 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i215, label %_ZN5QListIP7QActionED2Ev.exit218, label %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i216

_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i216: ; preds = %bb.bz
  %i.jp = atomicrmw sub ptr %i.jo, i32 1 acq_rel, align 4
  %.not.i.i217 = icmp eq i32 %i.jp, 1
  br i1 %.not.i.i217, label %bb.ca, label %_ZN5QListIP7QActionED2Ev.exit218

bb.ca:                                            ; preds = %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i216
  %i.jq = load ptr, ptr %19, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.jq, i64 noundef 8, i64 noundef 8) #22
  br label %_ZN5QListIP7QActionED2Ev.exit218

_ZN5QListIP7QActionED2Ev.exit218:                 ; preds = %bb.bz, %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i216, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.cb

bb.cb:                                            ; preds = %_ZN5QListIP7QActionED2Ev.exit218, %_ZN5QListIP7QActionED2Ev.exit214, %_ZN5QListIP7QActionED2Ev.exit210, %_ZN5QListIP7QActionED2Ev.exit206, %_ZN5QListIP7QActionED2Ev.exit202, %_ZN5QListIP7QActionED2Ev.exit198, %_ZN17QArrayDataPointerIDsED2Ev.exit194, %bb.u, %_ZN7QStringD2Ev.exit112, %bb.r
  %.pn55 = phi { ptr, i32 } [ %i.cx, %bb.u ], [ %i.cs, %bb.r ], [ %i.jn, %_ZN5QListIP7QActionED2Ev.exit218 ], [ %i.jj, %_ZN5QListIP7QActionED2Ev.exit214 ], [ %i.jf, %_ZN5QListIP7QActionED2Ev.exit210 ], [ %i.jb, %_ZN5QListIP7QActionED2Ev.exit206 ], [ %i.ix, %_ZN5QListIP7QActionED2Ev.exit202 ], [ %i.it, %_ZN5QListIP7QActionED2Ev.exit198 ], [ %.pn, %_ZN17QArrayDataPointerIDsED2Ev.exit194 ], [ %i.ct, %_ZN7QStringD2Ev.exit112 ]
  call void @_ZN5QMenuD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable_or_null(40) %i.y) #22
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.q
  %.pn55.pn = phi { ptr, i32 } [ %.pn55, %bb.cb ], [ %i.cr, %bb.q ]
  call void @_ZN15WiresharkDialogD2Ev(ptr noundef align 8 dead_on_return(141) dereferenceable_or_null(141) %0) #22
  resume { ptr, i32 } %.pn55.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN15WiresharkDialogC2ER7QWidgetR11CaptureFile(ptr noundef align 8 dereferenceable_or_null(141), ptr noundef align 8 dereferenceable(40), ptr noundef align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: nobuiltin null_pointer_is_valid allocsize(0)
declare noundef ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: null_pointer_is_valid
declare void @_ZN5QMenuC1EP7QWidget(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN28Ui_BluetoothHciSummaryDialog7setupUiEP7QDialog(ptr noundef align 8 dereferenceable_or_null(144) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %i.c = alloca { i64, i64 }, align 8             ; 5 uses
  %i.d = alloca { i64, i64 }, align 8             ; 5 uses
  %2 = alloca %class.QIcon, align 8               ; 7 uses
  %3 = alloca %class.QIcon, align 8               ; 7 uses
  %4 = alloca %class.QSize, align 4               ; 5 uses
  %5 = alloca %class.QString, align 8             ; 6 uses
  %6 = alloca %class.QVariant, align 8            ; 7 uses
  %7 = alloca %class.QVariant, align 8            ; 7 uses
  %8 = alloca %class.QString, align 8             ; 9 uses
  %9 = alloca %class.QVariant, align 8            ; 8 uses
  %10 = alloca %class.QString, align 8            ; 9 uses
  %11 = alloca %class.QVariant, align 8           ; 8 uses
  %12 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %13 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZNK7QObject10objectNameEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, ptr noundef align 8 dereferenceable_or_null(16) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.f, 0
  %i.h = load ptr, ptr %5, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.a
  %i.i = atomicrmw sub ptr %i.h, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.i, 1
  br i1 %.not.i.i, label %bb.b, label %_ZN7QStringD2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.j = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.j, i64 noundef 2, i64 noundef 8) #22
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.a, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %i.g, label %.lr.ph.i.i.i.i.preheader, label %bb.c

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN7QStringD2Ev.exit
  call void @_ZN7QObject13setObjectNameE14QAnyStringView(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr nonnull @.str.19, i64 4611686018427387929)
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.preheader, %_ZN7QStringD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i32 880, ptr %4, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 477, ptr %i.k, align 4
  call void @_ZN7QWidget6resizeERK5QSize(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN7QWidget11setBaseSizeEii(ptr noundef align 8 dereferenceable_or_null(40) %1, i32 noundef 0, i32 noundef 0)
  %i.l = call noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #21 ; 4 uses
  invoke void @_ZN7QActionC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(16) %i.l, ptr noundef %1)
          to label %_ZN14QAnyStringViewC2IA16_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit unwind label %bb.ab

_ZN14QAnyStringViewC2IA16_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit: ; preds = %bb.c
  store ptr %i.l, ptr %0, align 8
  call void @_ZN7QObject13setObjectNameE14QAnyStringView(ptr noundef align 8 dereferenceable_or_null(16) %i.l, ptr nonnull @.str.20, i64 4611686018427387919)
  %i.m = call noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #21 ; 4 uses
  invoke void @_ZN7QActionC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(16) %i.m, ptr noundef %1)
          to label %_ZN14QAnyStringViewC2IA16_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit60 unwind label %bb.ac

_ZN14QAnyStringViewC2IA16_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit60: ; preds = %_ZN14QAnyStringViewC2IA16_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit
  %i.n = getelementptr i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8
  call void @_ZN7QObject13setObjectNameE14QAnyStringView(ptr noundef align 8 dereferenceable_or_null(16) %i.m, ptr nonnull @.str.21, i64 4611686018427387919)
  %i.o = call noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #21 ; 4 uses
  invoke void @_ZN7QActionC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(16) %i.o, ptr noundef %1)
          to label %_ZN14QAnyStringViewC2IA15_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit unwind label %bb.ad

_ZN14QAnyStringViewC2IA15_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit: ; preds = %_ZN14QAnyStringViewC2IA16_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit60
  %i.p = getelementptr i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.p, align 8
  call void @_ZN7QObject13setObjectNameE14QAnyStringView(ptr noundef align 8 dereferenceable_or_null(16) %i.o, ptr nonnull @.str.22, i64 4611686018427387918)
  %i.q = call noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #21 ; 4 uses
  invoke void @_ZN7QActionC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(16) %i.q, ptr noundef %1)
          to label %_ZN14QAnyStringViewC2IA20_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit unwind label %bb.ae

_ZN14QAnyStringViewC2IA20_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit: ; preds = %_ZN14QAnyStringViewC2IA15_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit
  %i.r = getelementptr i8, ptr %0, i64 24
  store ptr %i.q, ptr %i.r, align 8
  call void @_ZN7QObject13setObjectNameE14QAnyStringView(ptr noundef align 8 dereferenceable_or_null(16) %i.q, ptr nonnull @.str.23, i64 4611686018427387923)
  %i.s = call noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #21 ; 4 uses
  invoke void @_ZN7QActionC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(16) %i.s, ptr noundef %1)
          to label %_ZN14QAnyStringViewC2IA22_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit unwind label %bb.af

_ZN14QAnyStringViewC2IA22_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit: ; preds = %_ZN14QAnyStringViewC2IA20_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit
  %i.t = getelementptr i8, ptr %0, i64 32
  store ptr %i.s, ptr %i.t, align 8
  call void @_ZN7QObject13setObjectNameE14QAnyStringView(ptr noundef align 8 dereferenceable_or_null(16) %i.s, ptr nonnull @.str.24, i64 4611686018427387925)
  %i.u = call noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #21 ; 4 uses
  invoke void @_ZN7QActionC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(16) %i.u, ptr noundef %1)
          to label %_ZN14QAnyStringViewC2IA23_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit unwind label %bb.ag

_ZN14QAnyStringViewC2IA23_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit: ; preds = %_ZN14QAnyStringViewC2IA22_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit
  %i.v = getelementptr i8, ptr %0, i64 40
  store ptr %i.u, ptr %i.v, align 8
  call void @_ZN7QObject13setObjectNameE14QAnyStringView(ptr noundef align 8 dereferenceable_or_null(16) %i.u, ptr nonnull @.str.25, i64 4611686018427387926)
  %i.w = call noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #21 ; 4 uses
  invoke void @_ZN11QVBoxLayoutC1EP7QWidget(ptr noundef align 8 dereferenceable_or_null(28) %i.w, ptr noundef %1)
          to label %_ZN14QAnyStringViewC2IA15_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit86 unwind label %bb.ah

_ZN14QAnyStringViewC2IA15_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit86: ; preds = %_ZN14QAnyStringViewC2IA23_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit
  %i.x = getelementptr i8, ptr %0, i64 48         ; 6 uses
  store ptr %i.w, ptr %i.x, align 8
  call void @_ZN7QObject13setObjectNameE14QAnyStringView(ptr noundef align 8 dereferenceable_or_null(16) %i.w, ptr nonnull @.str.26, i64 4611686018427387918)
  %i.y = call noalias noundef dereferenceable_or_null(40) ptr @_Znwm(i64 noundef 40) #21 ; 3 uses
  invoke void @_ZN11QTreeWidgetC1EP7QWidget(ptr noundef align 8 dereferenceable_or_null(40) %i.y, ptr noundef %1)
          to label %bb.d unwind label %bb.ai

bb.d:                                             ; preds = %_ZN14QAnyStringViewC2IA15_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit86
  %i.z = getelementptr i8, ptr %0, i64 56         ; 36 uses
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = call noalias noundef dereferenceable_or_null(96) ptr @_Znwm(i64 noundef 96) #21 ; 2 uses
  %14 = load ptr, ptr %i.z, align 8
  invoke void @_ZN15QTreeWidgetItemC1EP11QTreeWidgeti(ptr noundef align 8 dereferenceable_or_null(92) %i.aa, ptr noundef %14, i32 noundef 0)
          to label %bb.e unwind label %bb.aj

bb.e:                                             ; preds = %bb.d
  %i.ab = call noalias noundef dereferenceable_or_null(96) ptr @_Znwm(i64 noundef 96) #21 ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8
  invoke void @_ZN15QTreeWidgetItemC1EP11QTreeWidgeti(ptr noundef align 8 dereferenceable_or_null(92) %i.ab, ptr noundef %i.ac, i32 noundef 0)
          to label %bb.f unwind label %bb.ak

bb.f:                                             ; preds = %bb.e
  %i.ad = call noalias noundef dereferenceable_or_null(96) ptr @_Znwm(i64 noundef 96) #21 ; 2 uses
  %i.ae = load ptr, ptr %i.z, align 8
  invoke void @_ZN15QTreeWidgetItemC1EP11QTreeWidgeti(ptr noundef align 8 dereferenceable_or_null(92) %i.ad, ptr noundef %i.ae, i32 noundef 0)
          to label %bb.g unwind label %bb.al

bb.g:                                             ; preds = %bb.f
  %i.af = call noalias noundef dereferenceable_or_null(96) ptr @_Znwm(i64 noundef 96) #21 ; 2 uses
  %i.ag = load ptr, ptr %i.z, align 8
  invoke void @_ZN15QTreeWidgetItemC1EP11QTreeWidgeti(ptr noundef align 8 dereferenceable_or_null(92) %i.af, ptr noundef %i.ag, i32 noundef 0)
          to label %bb.h unwind label %bb.am

bb.h:                                             ; preds = %bb.g
  %i.ah = call noalias noundef dereferenceable_or_null(96) ptr @_Znwm(i64 noundef 96) #21 ; 2 uses
  %i.ai = load ptr, ptr %i.z, align 8
  invoke void @_ZN15QTreeWidgetItemC1EP11QTreeWidgeti(ptr noundef align 8 dereferenceable_or_null(92) %i.ah, ptr noundef %i.ai, i32 noundef 0)
          to label %bb.i unwind label %bb.an

bb.i:                                             ; preds = %bb.h
  %i.aj = call noalias noundef dereferenceable_or_null(96) ptr @_Znwm(i64 noundef 96) #21 ; 2 uses
  %i.ak = load ptr, ptr %i.z, align 8
  invoke void @_ZN15QTreeWidgetItemC1EP11QTreeWidgeti(ptr noundef align 8 dereferenceable_or_null(92) %i.aj, ptr noundef %i.ak, i32 noundef 0)
          to label %bb.j unwind label %bb.ao

bb.j:                                             ; preds = %bb.i
  %i.al = call noalias noundef dereferenceable_or_null(96) ptr @_Znwm(i64 noundef 96) #21 ; 2 uses
  %i.am = load ptr, ptr %i.z, align 8
  invoke void @_ZN15QTreeWidgetItemC1EP11QTreeWidgeti(ptr noundef align 8 dereferenceable_or_null(92) %i.al, ptr noundef %i.am, i32 noundef 0)
          to label %bb.k unwind label %bb.ap

bb.k:                                             ; preds = %bb.j
  %i.an = call noalias noundef dereferenceable_or_null(96) ptr @_Znwm(i64 noundef 96) #21 ; 2 uses
  %i.ao = load ptr, ptr %i.z, align 8
  invoke void @_ZN15QTreeWidgetItemC1EP11QTreeWidgeti(ptr noundef align 8 dereferenceable_or_null(92) %i.an, ptr noundef %i.ao, i32 noundef 0)
          to label %bb.l unwind label %bb.aq

bb.l:                                             ; preds = %bb.k
  %i.ap = call noalias noundef dereferenceable_or_null(96) ptr @_Znwm(i64 noundef 96) #21 ; 2 uses
  %i.aq = load ptr, ptr %i.z, align 8
  invoke void @_ZN15QTreeWidgetItemC1EP11QTreeWidgeti(ptr noundef align 8 dereferenceable_or_null(92) %i.ap, ptr noundef %i.aq, i32 noundef 0)
          to label %bb.m unwind label %bb.ar

bb.m:                                             ; preds = %bb.l
  %i.ar = call noalias noundef dereferenceable_or_null(96) ptr @_Znwm(i64 noundef 96) #21 ; 2 uses
  %i.as = load ptr, ptr %i.z, align 8
  invoke void @_ZN15QTreeWidgetItemC1EP11QTreeWidgeti(ptr noundef align 8 dereferenceable_or_null(92) %i.ar, ptr noundef %i.as, i32 noundef 0)
          to label %bb.n unwind label %bb.as

bb.n:                                             ; preds = %bb.m
  %i.at = call noalias noundef dereferenceable_or_null(96) ptr @_Znwm(i64 noundef 96) #21 ; 2 uses
  %i.au = load ptr, ptr %i.z, align 8
  invoke void @_ZN15QTreeWidgetItemC1EP11QTreeWidgeti(ptr noundef align 8 dereferenceable_or_null(92) %i.at, ptr noundef %i.au, i32 noundef 0)
          to label %bb.o unwind label %bb.at

bb.o:                                             ; preds = %bb.n
  %i.av = call noalias noundef dereferenceable_or_null(96) ptr @_Znwm(i64 noundef 96) #21 ; 2 uses
  %i.aw = load ptr, ptr %i.z, align 8
  invoke void @_ZN15QTreeWidgetItemC1EP11QTreeWidgeti(ptr noundef align 8 dereferenceable_or_null(92) %i.av, ptr noundef %i.aw, i32 noundef 0)
          to label %bb.p unwind label %bb.au

bb.p:                                             ; preds = %bb.o
  %i.ax = call noalias noundef dereferenceable_or_null(96) ptr @_Znwm(i64 noundef 96) #21 ; 2 uses
  %i.ay = load ptr, ptr %i.z, align 8
  invoke void @_ZN15QTreeWidgetItemC1EP11QTreeWidgeti(ptr noundef align 8 dereferenceable_or_null(92) %i.ax, ptr noundef %i.ay, i32 noundef 0)
          to label %bb.q unwind label %bb.av

bb.q:                                             ; preds = %bb.p
  %i.az = call noalias noundef dereferenceable_or_null(96) ptr @_Znwm(i64 noundef 96) #21 ; 2 uses
  %i.ba = load ptr, ptr %i.z, align 8
  invoke void @_ZN15QTreeWidgetItemC1EP11QTreeWidgeti(ptr noundef align 8 dereferenceable_or_null(92) %i.az, ptr noundef %i.ba, i32 noundef 0)
          to label %_ZN14QAnyStringViewC2IA16_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit92 unwind label %bb.aw

_ZN14QAnyStringViewC2IA16_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit92: ; preds = %bb.q
  %i.bb = load ptr, ptr %i.z, align 8
  call void @_ZN7QObject13setObjectNameE14QAnyStringView(ptr noundef align 8 dereferenceable_or_null(16) %i.bb, ptr nonnull @.str.27, i64 4611686018427387919)
  %i.bc = load ptr, ptr %i.z, align 8
  call void @_ZN7QWidget20setContextMenuPolicyEN2Qt17ContextMenuPolicyE(ptr noundef align 8 dereferenceable_or_null(40) %i.bc, i32 noundef 3)
  %i.bd = load ptr, ptr %i.z, align 8
  call void @_ZN17QAbstractItemView15setEditTriggersE6QFlagsINS_11EditTriggerEE(ptr noundef align 8 dereferenceable_or_null(40) %i.bd, i32 0)
  %i.be = load ptr, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZN8QVariantC1Eb(ptr noundef nonnull align 8 dereferenceable_or_null(32) %6, i1 noundef zeroext false)
  %i.bf = invoke noundef zeroext i1 @_ZN7QObject11setPropertyEPKcRK8QVariant(ptr noundef align 8 dereferenceable_or_null(16) %i.be, ptr noundef nonnull @.str.28, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.r unwind label %bb.ax      ; 0 uses

bb.r:                                             ; preds = %_ZN14QAnyStringViewC2IA16_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit92
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bg = load ptr, ptr %i.z, align 8
  call void @_ZN17QAbstractItemView16setSelectionModeENS_13SelectionModeE(ptr noundef align 8 dereferenceable_or_null(40) %i.bg, i32 noundef 3)
  %i.bh = load ptr, ptr %i.z, align 8
  call void @_ZN17QAbstractItemView16setTextElideModeEN2Qt13TextElideModeE(ptr noundef align 8 dereferenceable_or_null(40) %i.bh, i32 noundef 2)
  %i.bi = load ptr, ptr %i.z, align 8
  call void @_ZN9QTreeView14setIndentationEi(ptr noundef align 8 dereferenceable_or_null(40) %i.bi, i32 noundef 30)
  %i.bj = load ptr, ptr %i.z, align 8
  call void @_ZN9QTreeView18setRootIsDecoratedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.bj, i1 noundef zeroext true)
  %i.bk = load ptr, ptr %i.z, align 8
  call void @_ZN9QTreeView20setUniformRowHeightsEb(ptr noundef align 8 dereferenceable_or_null(40) %i.bk, i1 noundef zeroext false)
  %i.bl = load ptr, ptr %i.z, align 8
  call void @_ZN9QTreeView18setItemsExpandableEb(ptr noundef align 8 dereferenceable_or_null(40) %i.bl, i1 noundef zeroext true)
  %i.bm = load ptr, ptr %i.z, align 8
  call void @_ZN9QTreeView17setSortingEnabledEb(ptr noundef align 8 dereferenceable_or_null(40) %i.bm, i1 noundef zeroext false)
  %i.bn = load ptr, ptr %i.z, align 8
  call void @_ZN9QTreeView11setAnimatedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.bn, i1 noundef zeroext false)
  %i.bo = load ptr, ptr %i.z, align 8
  call void @_ZN9QTreeView22setAllColumnsShowFocusEb(ptr noundef align 8 dereferenceable_or_null(40) %i.bo, i1 noundef zeroext false)
  %i.bp = load ptr, ptr %i.z, align 8
  call void @_ZN9QTreeView15setHeaderHiddenEb(ptr noundef align 8 dereferenceable_or_null(40) %i.bp, i1 noundef zeroext false)
  %i.bq = load ptr, ptr %i.z, align 8
  %i.br = call noundef ptr @_ZNK9QTreeView6headerEv(ptr noundef align 8 dereferenceable_or_null(40) %i.bq)
  call void @_ZN11QHeaderView26setCascadingSectionResizesEb(ptr noundef align 8 dereferenceable_or_null(40) %i.br, i1 noundef zeroext false)
  %i.bs = load ptr, ptr %i.z, align 8
  %i.bt = call noundef ptr @_ZNK9QTreeView6headerEv(ptr noundef align 8 dereferenceable_or_null(40) %i.bs)
  call void @_ZN11QHeaderView21setMinimumSectionSizeEi(ptr noundef align 8 dereferenceable_or_null(40) %i.bt, i32 noundef 100)
  %i.bu = load ptr, ptr %i.z, align 8
  %i.bv = call noundef ptr @_ZNK9QTreeView6headerEv(ptr noundef align 8 dereferenceable_or_null(40) %i.bu)
  call void @_ZN11QHeaderView21setDefaultSectionSizeEi(ptr noundef align 8 dereferenceable_or_null(40) %i.bv, i32 noundef 100)
  %i.bw = load ptr, ptr %i.z, align 8
  %i.bx = call noundef ptr @_ZNK9QTreeView6headerEv(ptr noundef align 8 dereferenceable_or_null(40) %i.bw)
  call void @_ZN11QHeaderView20setHighlightSectionsEb(ptr noundef align 8 dereferenceable_or_null(40) %i.bx, i1 noundef zeroext false)
  %i.by = load ptr, ptr %i.z, align 8
  %i.bz = call noundef ptr @_ZNK9QTreeView6headerEv(ptr noundef align 8 dereferenceable_or_null(40) %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZN8QVariantC1Eb(ptr noundef nonnull align 8 dereferenceable_or_null(32) %7, i1 noundef zeroext false)
  %i.ca = invoke noundef zeroext i1 @_ZN7QObject11setPropertyEPKcRK8QVariant(ptr noundef align 8 dereferenceable_or_null(16) %i.bz, ptr noundef nonnull @.str.29, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.s unwind label %bb.ay      ; 0 uses

bb.s:                                             ; preds = %bb.r
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.cb = load ptr, ptr %i.z, align 8
  %i.cc = call noundef ptr @_ZNK9QTreeView6headerEv(ptr noundef align 8 dereferenceable_or_null(40) %i.cb)
  call void @_ZN11QHeaderView21setStretchLastSectionEb(ptr noundef align 8 dereferenceable_or_null(40) %i.cc, i1 noundef zeroext true)
  %i.cd = load ptr, ptr %i.x, align 8
  %i.ce = load ptr, ptr %i.z, align 8
  call void @_ZN10QBoxLayout9addWidgetEP7QWidgeti6QFlagsIN2Qt13AlignmentFlagEE(ptr noundef align 8 dereferenceable_or_null(28) %i.cd, ptr noundef %i.ce, i32 noundef 0, i32 0)
  %i.cf = call noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #21 ; 4 uses
  invoke void @_ZN11QHBoxLayoutC1Ev(ptr noundef align 8 dereferenceable_or_null(28) %i.cf)
          to label %_ZN14QAnyStringViewC2IA30_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit unwind label %bb.az

_ZN14QAnyStringViewC2IA30_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit: ; preds = %bb.s
  %i.cg = getelementptr i8, ptr %0, i64 64        ; 5 uses
  store ptr %i.cf, ptr %i.cg, align 8
  call void @_ZN7QObject13setObjectNameE14QAnyStringView(ptr noundef align 8 dereferenceable_or_null(16) %i.cf, ptr nonnull @.str.30, i64 4611686018427387933)
  %i.ch = load ptr, ptr %i.cg, align 8
  call void @_ZN7QLayout18setContentsMarginsEiiii(ptr noundef align 8 dereferenceable_or_null(28) %i.ch, i32 noundef -1, i32 noundef 0, i32 noundef -1, i32 noundef -1)
  %i.ci = call noalias noundef dereferenceable_or_null(40) ptr @_Znwm(i64 noundef 40) #21 ; 4 uses
  invoke void @_ZN6QLabelC1EP7QWidget6QFlagsIN2Qt10WindowTypeEE(ptr noundef align 8 dereferenceable_or_null(40) %i.ci, ptr noundef %1, i32 0)
          to label %_ZN14QAnyStringViewC2IA19_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit unwind label %bb.ba

_ZN14QAnyStringViewC2IA19_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit: ; preds = %_ZN14QAnyStringViewC2IA30_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit
  %i.cj = getelementptr i8, ptr %0, i64 72        ; 2 uses
  store ptr %i.ci, ptr %i.cj, align 8
  call void @_ZN7QObject13setObjectNameE14QAnyStringView(ptr noundef align 8 dereferenceable_or_null(16) %i.ci, ptr nonnull @.str.31, i64 4611686018427387922)
  %i.ck = load ptr, ptr %i.cg, align 8
  %i.cl = load ptr, ptr %i.cj, align 8
  call void @_ZN10QBoxLayout9addWidgetEP7QWidgeti6QFlagsIN2Qt13AlignmentFlagEE(ptr noundef align 8 dereferenceable_or_null(28) %i.ck, ptr noundef %i.cl, i32 noundef 0, i32 0)
  %i.cm = call noalias noundef dereferenceable_or_null(40) ptr @_Znwm(i64 noundef 40) #21 ; 4 uses
  invoke void @_ZN9QLineEditC1EP7QWidget(ptr noundef align 8 dereferenceable_or_null(40) %i.cm, ptr noundef %1)
          to label %_ZN14QAnyStringViewC2IA22_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit108 unwind label %bb.bb

_ZN14QAnyStringViewC2IA22_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit108: ; preds = %_ZN14QAnyStringViewC2IA19_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit
  %i.cn = getelementptr i8, ptr %0, i64 80        ; 2 uses
  store ptr %i.cm, ptr %i.cn, align 8
  call void @_ZN7QObject13setObjectNameE14QAnyStringView(ptr noundef align 8 dereferenceable_or_null(16) %i.cm, ptr nonnull @.str.32, i64 4611686018427387925)
  %i.co = load ptr, ptr %i.cg, align 8
  %i.cp = load ptr, ptr %i.cn, align 8
  call void @_ZN10QBoxLayout9addWidgetEP7QWidgeti6QFlagsIN2Qt13AlignmentFlagEE(ptr noundef align 8 dereferenceable_or_null(28) %i.co, ptr noundef %i.cp, i32 noundef 0, i32 0)
  %i.cq = load ptr, ptr %i.x, align 8
  %i.cr = load ptr, ptr %i.cg, align 8
  call void @_ZN10QBoxLayout9addLayoutEP7QLayouti(ptr noundef align 8 dereferenceable_or_null(28) %i.cq, ptr noundef %i.cr, i32 noundef 0)
  %i.cs = call noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #21 ; 5 uses
  invoke void @_ZN11QHBoxLayoutC1Ev(ptr noundef align 8 dereferenceable_or_null(28) %i.cs)
          to label %_ZN14QAnyStringViewC2IA17_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit unwind label %bb.bc

_ZN14QAnyStringViewC2IA17_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit: ; preds = %_ZN14QAnyStringViewC2IA22_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit108
  %i.ct = getelementptr i8, ptr %0, i64 88        ; 9 uses
  store ptr %i.cs, ptr %i.ct, align 8
  %i.cu = load ptr, ptr %i.cs, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 104
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef align 8 dereferenceable_or_null(28) %i.cs, i32 noundef 6)
  %i.cx = load ptr, ptr %i.ct, align 8
  call void @_ZN7QObject13setObjectNameE14QAnyStringView(ptr noundef align 8 dereferenceable_or_null(16) %i.cx, ptr nonnull @.str.33, i64 4611686018427387920)
  %i.cy = load ptr, ptr %i.ct, align 8
  call void @_ZN7QLayout17setSizeConstraintENS_14SizeConstraintE(ptr noundef align 8 dereferenceable_or_null(28) %i.cy, i32 noundef 0)
  %i.cz = load ptr, ptr %i.ct, align 8
  call void @_ZN7QLayout18setContentsMarginsEiiii(ptr noundef align 8 dereferenceable_or_null(28) %i.cz, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef 0)
  %i.da = call noalias noundef dereferenceable_or_null(40) ptr @_Znwm(i64 noundef 40) #21 ; 4 uses
  invoke void @_ZN6QLabelC1EP7QWidget6QFlagsIN2Qt10WindowTypeEE(ptr noundef align 8 dereferenceable_or_null(40) %i.da, ptr noundef %1, i32 0)
          to label %_ZN14QAnyStringViewC2IA6_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit unwind label %bb.bd

end_hunk_0
