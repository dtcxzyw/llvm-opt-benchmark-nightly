Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/manuf_dialog?download=true
inline.NumInlined: 621
inline.NumDeleted: 276
begin_hunk_0_@_ZN14Ui_ManufDialog7setupUiEP7QDialog:bb.a
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef 40) #19
  br label %bb.t

bb.k:                                             ; preds = %bb.d
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef 16) #19
  br label %bb.t

bb.l:                                             ; preds = %_ZN14QAnyStringViewC2IA17_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef 40) #19
  br label %bb.t

bb.m:                                             ; preds = %_ZN14QAnyStringViewC2IA18_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef 40) #19
  br label %bb.t

bb.n:                                             ; preds = %bb.e
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef 40) #19
  br label %bb.t

bb.o:                                             ; preds = %_ZN14QAnyStringViewC2IA10_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i102, label %_ZN7QStringD2Ev.exit105, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i103

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i103:   ; preds = %bb.o
  %i.ck = atomicrmw sub ptr %i.cj, i32 1 acq_rel, align 4
  %.not.i.i104 = icmp eq i32 %i.ck, 1
  br i1 %.not.i.i104, label %bb.p, label %_ZN7QStringD2Ev.exit105

bb.p:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i103
  %i.cl = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cl, i64 noundef 2, i64 noundef 8) #18
  br label %_ZN7QStringD2Ev.exit105

_ZN7QStringD2Ev.exit105:                          ; preds = %bb.o, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i103, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.t

bb.q:                                             ; preds = %_ZN7QStringD2Ev.exit78
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef 40) #19
  br label %bb.t

bb.r:                                             ; preds = %_ZN14QAnyStringViewC2IA14_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef 40) #19
  br label %bb.t

bb.s:                                             ; preds = %_ZN14QAnyStringViewC2IA15_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit89
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef 40) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %_ZN7QStringD2Ev.exit105, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.co, %bb.s ], [ %i.cn, %bb.r ], [ %i.cm, %bb.q ], [ %i.ci, %_ZN7QStringD2Ev.exit105 ], [ %i.ch, %bb.n ], [ %i.cb, %bb.h ], [ %i.cg, %bb.m ], [ %i.cf, %bb.l ], [ %i.ce, %bb.k ], [ %i.cd, %bb.j ], [ %i.cc, %bb.i ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN19GeometryStateDialog12loadGeometryEiiRK7QString(ptr noundef align 8 dereferenceable_or_null(72), i32 noundef, i32 noundef, ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN15ManufTableModelC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef) unnamed_addr #1

; Function Attrs: nobuiltin nounwind null_pointer_is_valid
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN25ManufSortFilterProxyModelC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(56), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget20setContextMenuPolicyEN2Qt17ContextMenuPolicyE(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN10QTableView15setColumnHiddenEib(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QActionC1ERK7QStringP7QObject(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef align 8 dereferenceable(24), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget9addActionEP7QAction(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QAction9triggeredEb(ptr noundef align 8 dereferenceable_or_null(16), i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #5

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11ManufDialog15copyToClipboardEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(168) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QString, align 8             ; 9 uses
  %2 = alloca %class.QString, align 8             ; 9 uses
  %.sroa.6.i.i31.i.i.i = alloca { i64, ptr }, align 8 ; 4 uses
  %3 = alloca %class.QModelIndex, align 8         ; 4 uses
  %.sroa.6.i.i13.i.i.i = alloca { i64, ptr }, align 8 ; 4 uses
  %.sroa.6.i.i.i.i.i = alloca { i64, ptr }, align 8 ; 4 uses
  %4 = alloca %class.QModelIndex, align 8         ; 4 uses
  %5 = alloca %class.QList.6, align 8             ; 19 uses
  %6 = alloca %class.QString, align 8             ; 13 uses
  %7 = alloca %class.QString, align 8             ; 9 uses
  %8 = alloca %class.QVariant, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.a = getelementptr i8, ptr %0, i64 144        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr @_ZNK17QAbstractItemView14selectionModelEv(ptr noundef align 8 dereferenceable_or_null(40) %i.d)
  call void @_ZNK19QItemSelectionModel15selectedIndexesEv(ptr dead_on_unwind nonnull writable sret(%class.QList.6) align 8 %5, ptr noundef align 8 dereferenceable_or_null(16) %i.e)
  %i.f = load ptr, ptr %5, align 8                ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i, label %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i: ; preds = %bb.a
  %i.g = load atomic i32, ptr %i.f monotonic, align 4
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i, label %.thread

.thread:                                          ; preds = %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  br label %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i32

_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i: ; preds = %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i, %bb.a
  invoke void @_ZN17QArrayDataPointerI11QModelIndexE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i
  %.pre = load ptr, ptr %5, align 8               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i.i.i31 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i31, label %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i33, label %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i32

_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i32: ; preds = %.thread, %bb.b
  %i.m = phi ptr [ %i.j, %.thread ], [ %i.l, %bb.b ] ; 3 uses
  %i.n = phi ptr [ %i.i, %.thread ], [ %i.k, %bb.b ] ; 2 uses
  %i.o = phi ptr [ %i.f, %.thread ], [ %.pre, %bb.b ]
  %i.p = load atomic i32, ptr %i.o monotonic, align 4
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i33, label %bb.c

_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i33: ; preds = %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i32, %bb.b
  %i.r = phi ptr [ %i.m, %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i32 ], [ %i.l, %bb.b ]
  %i.s = phi ptr [ %i.n, %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i32 ], [ %i.k, %bb.b ] ; 2 uses
  invoke void @_ZN17QArrayDataPointerI11QModelIndexE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i33._crit_edge unwind label %bb.o

_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i33._crit_edge: ; preds = %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i33
  %.pre88 = load ptr, ptr %i.s, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i33._crit_edge, %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i32
  %i.t = phi ptr [ %i.r, %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i33._crit_edge ], [ %i.m, %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i32 ] ; 15 uses
  %i.u = phi ptr [ %i.s, %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i33._crit_edge ], [ %i.n, %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i32 ] ; 3 uses
  %i.v = phi ptr [ %.pre88, %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i33._crit_edge ], [ %i.m, %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i32 ]
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr [24 x i8], ptr %i.v, i64 %i.x ; 7 uses
  %.not.i.i = icmp eq ptr %i.t, %i.y
  br i1 %.not.i.i, label %"_ZSt4sortIN5QListI11QModelIndexE8iteratorEZN11ManufDialog15copyToClipboardEvE3$_0EvT_S6_T0_.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.t to i64                ; 3 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = sdiv exact i64 %i.ab, 24
  %i.ad = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %i.af = xor i64 %i.ae, 126
  call fastcc void @"_ZSt16__introsort_loopIN5QListI11QModelIndexE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIZN11ManufDialog15copyToClipboardEvE3$_0EEEvT_SA_T0_T1_"(ptr %i.t, ptr %i.y, i64 noundef %i.af)
  %i.ag = icmp sgt i64 %i.ab, 384
  br i1 %i.ag, label %.lr.ph.i.i.i.i, label %.preheader.i32.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %i.ah = getelementptr i8, ptr %i.t, i64 384     ; 3 uses
  %.sroa.0.017.i.i.i.i = getelementptr i8, ptr %i.t, i64 24 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.t, i64 4
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %indvar.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvar.next.i.i.i.i, %bb.h ] ; 2 uses
  %.sroa.0.020.i.i.i.i = phi ptr [ %.sroa.0.017.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.h ] ; 7 uses
  %.pn19.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %.sroa.0.020.i.i.i.i, %bb.h ] ; 5 uses
  %9 = mul nuw nsw i64 %indvar.i.i.i.i, 24
  %10 = add nuw nsw i64 %9, 24
  %.val.i.i.i.i.i = load i32, ptr %.sroa.0.020.i.i.i.i, align 8 ; 7 uses
  %i.aj = getelementptr i8, ptr %.pn19.i.i.i.i, i64 28
  %.val1.i.i.i.i.i = load i32, ptr %i.aj, align 4 ; 4 uses
  %.val2.i.i.i.i.i = load i32, ptr %i.t, align 8  ; 2 uses
  %.val3.i.i.i.i.i = load i32, ptr %i.ai, align 4
  %i.ak = icmp slt i32 %.val.i.i.i.i.i, %.val2.i.i.i.i.i
  %i.al = icmp eq i32 %.val.i.i.i.i.i, %.val2.i.i.i.i.i
  %i.am = icmp slt i32 %.val1.i.i.i.i.i, %.val3.i.i.i.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.al, i1 %i.am, i1 false
  %i.an = select i1 %i.ak, i1 true, i1 %spec.select.i.i.i.i.i.i
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef align 8 dereferenceable(24) %.sroa.0.020.i.i.i.i, i64 24, i1 false)
  %i.ao = ptrtoint ptr %.sroa.0.020.i.i.i.i to i64
  %i.ap = sub i64 %i.ao, %i.aa
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN5QListI11QModelIndexE8iteratorES3_ET0_T_S5_S4_.exit.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %bb.f
  call void @llvm.memmove.p0.p0.i64(ptr noundef align 8 %.sroa.0.017.i.i.i.i, ptr noundef align 8 %i.t, i64 %10, i1 false)
  br label %_ZSt13move_backwardIN5QListI11QModelIndexE8iteratorES3_ET0_T_S5_S4_.exit.i.i.i.i

_ZSt13move_backwardIN5QListI11QModelIndexE8iteratorES3_ET0_T_S5_S4_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr i8, ptr %.pn19.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i.i.i, i64 16, i1 false)
  %.val3.i13.i.i.i.i.i = load i32, ptr %.pn19.i.i.i.i, align 8 ; 2 uses
  %i.ar = getelementptr i8, ptr %.pn19.i.i.i.i, i64 4
  %.val4.i14.i.i.i.i.i = load i32, ptr %i.ar, align 4
  %i.as = icmp slt i32 %.val.i.i.i.i.i, %.val3.i13.i.i.i.i.i
  %i.at = icmp eq i32 %.val.i.i.i.i.i, %.val3.i13.i.i.i.i.i
  %i.au = icmp slt i32 %.val1.i.i.i.i.i, %.val4.i14.i.i.i.i.i
  %spec.select.i.i15.i.i.i.i.i = select i1 %i.at, i1 %i.au, i1 false
  %i.av = select i1 %i.as, i1 true, i1 %spec.select.i.i15.i.i.i.i.i
  br i1 %i.av, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN5QListI11QModelIndexE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIZN11ManufDialog15copyToClipboardEvE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.sroa.0.017.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.pn19.i.i.i.i, %bb.g ] ; 5 uses
  %.sroa.09.016.i.i.i.i.i = phi ptr [ %.sroa.0.017.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.020.i.i.i.i, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %.sroa.09.016.i.i.i.i.i, ptr noundef align 8 dereferenceable(24) %.sroa.0.017.i.i.i.i.i, i64 24, i1 false)
  %.sroa.0.0.i.i.i.i.i = getelementptr i8, ptr %.sroa.0.017.i.i.i.i.i, i64 -24 ; 2 uses
  %.val3.i.i.i.i.i.i = load i32, ptr %.sroa.0.0.i.i.i.i.i, align 8 ; 2 uses
  %i.aw = getelementptr i8, ptr %.sroa.0.017.i.i.i.i.i, i64 -20
  %.val4.i.i.i.i.i.i = load i32, ptr %i.aw, align 4
  %i.ax = icmp slt i32 %.val.i.i.i.i.i, %.val3.i.i.i.i.i.i
  %i.ay = icmp eq i32 %.val.i.i.i.i.i, %.val3.i.i.i.i.i.i
  %i.az = icmp slt i32 %.val1.i.i.i.i.i, %.val4.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.ay, i1 %i.az, i1 false
  %i.ba = select i1 %i.ax, i1 true, i1 %spec.select.i.i.i.i.i.i.i
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN5QListI11QModelIndexE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIZN11ManufDialog15copyToClipboardEvE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !38

"_ZSt25__unguarded_linear_insertIN5QListI11QModelIndexE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIZN11ManufDialog15copyToClipboardEvE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.g
  %.sroa.09.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.020.i.i.i.i, %bb.g ], [ %.sroa.0.017.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  store i32 %.val.i.i.i.i.i, ptr %.sroa.09.0.lcssa.i.i.i.i.i, align 8
  %.sroa.5.0..sroa_idx6.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i.i.i.i, i64 4
  store i32 %.val1.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx6.i.i.i.i.i, align 4
  %.sroa.6.0..sroa_idx8.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx8.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  br label %bb.h

bb.h:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN5QListI11QModelIndexE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIZN11ManufDialog15copyToClipboardEvE3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN5QListI11QModelIndexE8iteratorES3_ET0_T_S5_S4_.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i = getelementptr i8, ptr %.sroa.0.020.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i35 = icmp eq ptr %.sroa.0.0.i.i.i.i, %i.ah
  %indvar.next.i.i.i.i = add nuw nsw i64 %indvar.i.i.i.i, 1
  br i1 %.not.i.i.i.i35, label %"_ZSt16__insertion_sortIN5QListI11QModelIndexE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZN11ManufDialog15copyToClipboardEvE3$_0EEEvT_SA_T0_.exit.i.i.i", label %bb.e, !llvm.loop !39

"_ZSt16__insertion_sortIN5QListI11QModelIndexE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZN11ManufDialog15copyToClipboardEvE3$_0EEEvT_SA_T0_.exit.i.i.i": ; preds = %bb.h
  %.not7.i.i.i.i = icmp eq ptr %i.ah, %i.y
  br i1 %.not7.i.i.i.i, label %"_ZSt4sortIN5QListI11QModelIndexE8iteratorEZN11ManufDialog15copyToClipboardEvE3$_0EvT_S6_T0_.exit", label %.lr.ph.i14.i.i.i

.lr.ph.i14.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN5QListI11QModelIndexE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZN11ManufDialog15copyToClipboardEvE3$_0EEEvT_SA_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN5QListI11QModelIndexE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIZN11ManufDialog15copyToClipboardEvE3$_0EEEvT_T0_.exit.i19.i.i.i"
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.bl, %"_ZSt25__unguarded_linear_insertIN5QListI11QModelIndexE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIZN11ManufDialog15copyToClipboardEvE3$_0EEEvT_T0_.exit.i19.i.i.i" ], [ %i.ah, %"_ZSt16__insertion_sortIN5QListI11QModelIndexE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZN11ManufDialog15copyToClipboardEvE3$_0EEEvT_SA_T0_.exit.i.i.i" ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i13.i.i.i)
  %.sroa.04.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.0.08.i.i.i.i, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 4
  %.sroa.5.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i15.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i13.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i15.i.i.i, i64 16, i1 false)
  %.sroa.0.012.i.i.i.i.i = getelementptr i8, ptr %.sroa.0.08.i.i.i.i, i64 -24 ; 2 uses
  %.val3.i13.i.i16.i.i.i = load i32, ptr %.sroa.0.012.i.i.i.i.i, align 8 ; 2 uses
  %i.bb = getelementptr i8, ptr %.sroa.0.08.i.i.i.i, i64 -20
  %.val4.i14.i.i17.i.i.i = load i32, ptr %i.bb, align 4
  %i.bc = icmp slt i32 %.sroa.04.0.copyload.i.i.i.i.i, %.val3.i13.i.i16.i.i.i
  %i.bd = icmp eq i32 %.sroa.04.0.copyload.i.i.i.i.i, %.val3.i13.i.i16.i.i.i
  %i.be = icmp slt i32 %.sroa.5.0.copyload.i.i.i.i.i, %.val4.i14.i.i17.i.i.i
  %spec.select.i.i15.i.i18.i.i.i = select i1 %i.bd, i1 %i.be, i1 false
  %i.bf = select i1 %i.bc, i1 true, i1 %spec.select.i.i15.i.i18.i.i.i
  br i1 %i.bf, label %.lr.ph.i.i24.i.i.i, label %"_ZSt25__unguarded_linear_insertIN5QListI11QModelIndexE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIZN11ManufDialog15copyToClipboardEvE3$_0EEEvT_T0_.exit.i19.i.i.i"

.lr.ph.i.i24.i.i.i:                               ; preds = %.lr.ph.i14.i.i.i, %.lr.ph.i.i24.i.i.i
  %.sroa.0.017.i.i25.i.i.i = phi ptr [ %.sroa.0.0.i.i27.i.i.i, %.lr.ph.i.i24.i.i.i ], [ %.sroa.0.012.i.i.i.i.i, %.lr.ph.i14.i.i.i ] ; 5 uses
  %.sroa.09.016.i.i26.i.i.i = phi ptr [ %.sroa.0.017.i.i25.i.i.i, %.lr.ph.i.i24.i.i.i ], [ %.sroa.0.08.i.i.i.i, %.lr.ph.i14.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %.sroa.09.016.i.i26.i.i.i, ptr noundef align 8 dereferenceable(24) %.sroa.0.017.i.i25.i.i.i, i64 24, i1 false)
  %.sroa.0.0.i.i27.i.i.i = getelementptr i8, ptr %.sroa.0.017.i.i25.i.i.i, i64 -24 ; 2 uses
  %.val3.i.i.i28.i.i.i = load i32, ptr %.sroa.0.0.i.i27.i.i.i, align 8 ; 2 uses
  %i.bg = getelementptr i8, ptr %.sroa.0.017.i.i25.i.i.i, i64 -20
  %.val4.i.i.i29.i.i.i = load i32, ptr %i.bg, align 4
  %i.bh = icmp slt i32 %.sroa.04.0.copyload.i.i.i.i.i, %.val3.i.i.i28.i.i.i
  %i.bi = icmp eq i32 %.sroa.04.0.copyload.i.i.i.i.i, %.val3.i.i.i28.i.i.i
  %i.bj = icmp slt i32 %.sroa.5.0.copyload.i.i.i.i.i, %.val4.i.i.i29.i.i.i
  %spec.select.i.i.i.i30.i.i.i = select i1 %i.bi, i1 %i.bj, i1 false
  %i.bk = select i1 %i.bh, i1 true, i1 %spec.select.i.i.i.i30.i.i.i
  br i1 %i.bk, label %.lr.ph.i.i24.i.i.i, label %"_ZSt25__unguarded_linear_insertIN5QListI11QModelIndexE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIZN11ManufDialog15copyToClipboardEvE3$_0EEEvT_T0_.exit.i19.i.i.i", !llvm.loop !38

"_ZSt25__unguarded_linear_insertIN5QListI11QModelIndexE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIZN11ManufDialog15copyToClipboardEvE3$_0EEEvT_T0_.exit.i19.i.i.i": ; preds = %.lr.ph.i.i24.i.i.i, %.lr.ph.i14.i.i.i
  %.sroa.09.0.lcssa.i.i20.i.i.i = phi ptr [ %.sroa.0.08.i.i.i.i, %.lr.ph.i14.i.i.i ], [ %.sroa.0.017.i.i25.i.i.i, %.lr.ph.i.i24.i.i.i ] ; 3 uses
  store i32 %.sroa.04.0.copyload.i.i.i.i.i, ptr %.sroa.09.0.lcssa.i.i20.i.i.i, align 8
  %.sroa.5.0..sroa_idx6.i.i21.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i20.i.i.i, i64 4
  store i32 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx6.i.i21.i.i.i, align 4
  %.sroa.6.0..sroa_idx8.i.i22.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i20.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx8.i.i22.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i13.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i13.i.i.i)
  %i.bl = getelementptr i8, ptr %.sroa.0.08.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bl, %i.y
  br i1 %.not.i23.i.i.i, label %"_ZSt4sortIN5QListI11QModelIndexE8iteratorEZN11ManufDialog15copyToClipboardEvE3$_0EvT_S6_T0_.exit", label %.lr.ph.i14.i.i.i, !llvm.loop !40

.preheader.i32.i.i.i:                             ; preds = %bb.d
  %.sroa.0.017.i33.i.i.i = getelementptr i8, ptr %i.t, i64 24 ; 2 uses
  %.not18.i34.i.i.i = icmp eq ptr %.sroa.0.017.i33.i.i.i, %i.y
  br i1 %.not18.i34.i.i.i, label %"_ZSt4sortIN5QListI11QModelIndexE8iteratorEZN11ManufDialog15copyToClipboardEvE3$_0EvT_S6_T0_.exit", label %.lr.ph.i35.i.i.i

.lr.ph.i35.i.i.i:                                 ; preds = %.preheader.i32.i.i.i
  %i.bm = getelementptr i8, ptr %i.t, i64 4
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph.i35.i.i.i
  %indvar.i36.i.i.i = phi i64 [ 0, %.lr.ph.i35.i.i.i ], [ %indvar.next.i58.i.i.i, %bb.l ] ; 2 uses
  %.sroa.0.020.i37.i.i.i = phi ptr [ %.sroa.0.017.i33.i.i.i, %.lr.ph.i35.i.i.i ], [ %.sroa.0.0.i56.i.i.i, %bb.l ] ; 8 uses
  %.pn19.i38.i.i.i = phi ptr [ %i.t, %.lr.ph.i35.i.i.i ], [ %.sroa.0.020.i37.i.i.i, %bb.l ] ; 6 uses
  %i.bn = mul i64 %indvar.i36.i.i.i, 24
  %i.bo = add i64 %i.bn, 24                       ; 3 uses
  %i.bp = udiv exact i64 %i.bo, 24
  %11 = icmp ne i64 %i.bo, 0                      ; 2 uses
  %umin.neg.i39.i.i.i = sext i1 %11 to i64
  %i.bq = select i1 %11, i64 24, i64 0
  %12 = sub i64 %i.bq, %i.bo                      ; 2 uses
  %scevgep.i41.i.i.i = getelementptr i8, ptr %.sroa.0.020.i37.i.i.i, i64 %12
  %scevgep22.i42.i.i.i = getelementptr i8, ptr %.pn19.i38.i.i.i, i64 %12
  %i.br = add nuw nsw i64 %i.bp, 1
  %i.bs = add nsw i64 %i.br, %umin.neg.i39.i.i.i
  %i.bt = mul nuw i64 %i.bs, 24
  %.val.i.i43.i.i.i = load i32, ptr %.sroa.0.020.i37.i.i.i, align 8 ; 7 uses
  %i.bu = getelementptr i8, ptr %.pn19.i38.i.i.i, i64 28
  %.val1.i.i44.i.i.i = load i32, ptr %i.bu, align 4 ; 4 uses
  %.val2.i.i45.i.i.i = load i32, ptr %i.t, align 8 ; 2 uses
  %.val3.i.i46.i.i.i = load i32, ptr %i.bm, align 4
  %i.bv = icmp slt i32 %.val.i.i43.i.i.i, %.val2.i.i45.i.i.i
  %i.bw = icmp eq i32 %.val.i.i43.i.i.i, %.val2.i.i45.i.i.i
  %i.bx = icmp slt i32 %.val1.i.i44.i.i.i, %.val3.i.i46.i.i.i
  %spec.select.i.i.i47.i.i.i = select i1 %i.bw, i1 %i.bx, i1 false
  %i.by = select i1 %i.bv, i1 true, i1 %spec.select.i.i.i47.i.i.i
  br i1 %i.by, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef align 8 dereferenceable(24) %.sroa.0.020.i37.i.i.i, i64 24, i1 false)
  %i.bz = ptrtoint ptr %.sroa.0.020.i37.i.i.i to i64
  %i.ca = sub i64 %i.bz, %i.aa
  %i.cb = icmp sgt i64 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.preheader.i.i.i.i.i.i67.i.i.i, label %_ZSt13move_backwardIN5QListI11QModelIndexE8iteratorES3_ET0_T_S5_S4_.exit.i66.i.i.i

.lr.ph.preheader.i.i.i.i.i.i67.i.i.i:             ; preds = %bb.j
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i41.i.i.i, ptr align 8 %scevgep22.i42.i.i.i, i64 %i.bt, i1 false)
  br label %_ZSt13move_backwardIN5QListI11QModelIndexE8iteratorES3_ET0_T_S5_S4_.exit.i66.i.i.i

_ZSt13move_backwardIN5QListI11QModelIndexE8iteratorES3_ET0_T_S5_S4_.exit.i66.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i67.i.i.i, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i31.i.i.i)
  %.sroa.6.0..sroa_idx.i.i48.i.i.i = getelementptr i8, ptr %.pn19.i38.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i31.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i48.i.i.i, i64 16, i1 false)
  %.val3.i13.i.i49.i.i.i = load i32, ptr %.pn19.i38.i.i.i, align 8 ; 2 uses
  %i.cc = getelementptr i8, ptr %.pn19.i38.i.i.i, i64 4
  %.val4.i14.i.i50.i.i.i = load i32, ptr %i.cc, align 4
  %i.cd = icmp slt i32 %.val.i.i43.i.i.i, %.val3.i13.i.i49.i.i.i
  %i.ce = icmp eq i32 %.val.i.i43.i.i.i, %.val3.i13.i.i49.i.i.i
  %i.cf = icmp slt i32 %.val1.i.i44.i.i.i, %.val4.i14.i.i50.i.i.i
  %spec.select.i.i15.i.i51.i.i.i = select i1 %i.ce, i1 %i.cf, i1 false
  %i.cg = select i1 %i.cd, i1 true, i1 %spec.select.i.i15.i.i51.i.i.i
  br i1 %i.cg, label %.lr.ph.i.i59.i.i.i, label %"_ZSt25__unguarded_linear_insertIN5QListI11QModelIndexE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIZN11ManufDialog15copyToClipboardEvE3$_0EEEvT_T0_.exit.i52.i.i.i"

.lr.ph.i.i59.i.i.i:                               ; preds = %bb.k, %.lr.ph.i.i59.i.i.i
  %.sroa.0.017.i.i60.i.i.i = phi ptr [ %.sroa.0.0.i.i62.i.i.i, %.lr.ph.i.i59.i.i.i ], [ %.pn19.i38.i.i.i, %bb.k ] ; 5 uses
  %.sroa.09.016.i.i61.i.i.i = phi ptr [ %.sroa.0.017.i.i60.i.i.i, %.lr.ph.i.i59.i.i.i ], [ %.sroa.0.020.i37.i.i.i, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %.sroa.09.016.i.i61.i.i.i, ptr noundef align 8 dereferenceable(24) %.sroa.0.017.i.i60.i.i.i, i64 24, i1 false)
  %.sroa.0.0.i.i62.i.i.i = getelementptr i8, ptr %.sroa.0.017.i.i60.i.i.i, i64 -24 ; 2 uses
  %.val3.i.i.i63.i.i.i = load i32, ptr %.sroa.0.0.i.i62.i.i.i, align 8 ; 2 uses
  %i.ch = getelementptr i8, ptr %.sroa.0.017.i.i60.i.i.i, i64 -20
  %.val4.i.i.i64.i.i.i = load i32, ptr %i.ch, align 4
  %i.ci = icmp slt i32 %.val.i.i43.i.i.i, %.val3.i.i.i63.i.i.i
  %i.cj = icmp eq i32 %.val.i.i43.i.i.i, %.val3.i.i.i63.i.i.i
  %i.ck = icmp slt i32 %.val1.i.i44.i.i.i, %.val4.i.i.i64.i.i.i
  %spec.select.i.i.i.i65.i.i.i = select i1 %i.cj, i1 %i.ck, i1 false
  %i.cl = select i1 %i.ci, i1 true, i1 %spec.select.i.i.i.i65.i.i.i
  br i1 %i.cl, label %.lr.ph.i.i59.i.i.i, label %"_ZSt25__unguarded_linear_insertIN5QListI11QModelIndexE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIZN11ManufDialog15copyToClipboardEvE3$_0EEEvT_T0_.exit.i52.i.i.i", !llvm.loop !38

"_ZSt25__unguarded_linear_insertIN5QListI11QModelIndexE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIZN11ManufDialog15copyToClipboardEvE3$_0EEEvT_T0_.exit.i52.i.i.i": ; preds = %.lr.ph.i.i59.i.i.i, %bb.k
  %.sroa.09.0.lcssa.i.i53.i.i.i = phi ptr [ %.sroa.0.020.i37.i.i.i, %bb.k ], [ %.sroa.0.017.i.i60.i.i.i, %.lr.ph.i.i59.i.i.i ] ; 3 uses
  store i32 %.val.i.i43.i.i.i, ptr %.sroa.09.0.lcssa.i.i53.i.i.i, align 8
  %.sroa.5.0..sroa_idx6.i.i54.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i53.i.i.i, i64 4
  store i32 %.val1.i.i44.i.i.i, ptr %.sroa.5.0..sroa_idx6.i.i54.i.i.i, align 4
  %.sroa.6.0..sroa_idx8.i.i55.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i53.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx8.i.i55.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i31.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i31.i.i.i)
  br label %bb.l

bb.l:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN5QListI11QModelIndexE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIZN11ManufDialog15copyToClipboardEvE3$_0EEEvT_T0_.exit.i52.i.i.i", %_ZSt13move_backwardIN5QListI11QModelIndexE8iteratorES3_ET0_T_S5_S4_.exit.i66.i.i.i
  %.sroa.0.0.i56.i.i.i = getelementptr i8, ptr %.sroa.0.020.i37.i.i.i, i64 24 ; 2 uses
  %.not.i57.i.i.i = icmp eq ptr %.sroa.0.0.i56.i.i.i, %i.y
  %indvar.next.i58.i.i.i = add i64 %indvar.i36.i.i.i, 1
  br i1 %.not.i57.i.i.i, label %"_ZSt4sortIN5QListI11QModelIndexE8iteratorEZN11ManufDialog15copyToClipboardEvE3$_0EvT_S6_T0_.exit", label %bb.i, !llvm.loop !39

"_ZSt4sortIN5QListI11QModelIndexE8iteratorEZN11ManufDialog15copyToClipboardEvE3$_0EvT_S6_T0_.exit": ; preds = %bb.l, %"_ZSt25__unguarded_linear_insertIN5QListI11QModelIndexE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIZN11ManufDialog15copyToClipboardEvE3$_0EEEvT_T0_.exit.i19.i.i.i", %.preheader.i32.i.i.i, %"_ZSt16__insertion_sortIN5QListI11QModelIndexE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZN11ManufDialog15copyToClipboardEvE3$_0EEEvT_SA_T0_.exit.i.i.i", %bb.c
  %i.cm = load ptr, ptr %i.a, align 8
  %i.cn = getelementptr i8, ptr %i.cm, i64 64
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = invoke noundef ptr @_ZNK17QAbstractItemView5modelEv(ptr noundef align 8 dereferenceable_or_null(40) %i.co)
          to label %bb.m unwind label %bb.p       ; 2 uses

bb.m:                                             ; preds = %"_ZSt4sortIN5QListI11QModelIndexE8iteratorEZN11ManufDialog15copyToClipboardEvE3$_0EvT_S6_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %6, i8 0, i64 24, i1 false)
  %i.cq = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i.i36 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i36, label %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i38, label %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i37

_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i37: ; preds = %bb.m
  %i.cr = load atomic i32, ptr %i.cq monotonic, align 4
  %i.cs = icmp sgt i32 %i.cr, 1
  br i1 %i.cs, label %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i38, label %.thread114

.thread114:                                       ; preds = %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i37
  %i.ct = load ptr, ptr %i.u, align 8
  br label %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i42

_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i38: ; preds = %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i37, %bb.m
  invoke void @_ZN17QArrayDataPointerI11QModelIndexE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i38
  %.pre89 = load ptr, ptr %5, align 8             ; 2 uses
  %i.cu = load ptr, ptr %i.u, align 8             ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %.pre89, null
  br i1 %.not.i.i.i.i41, label %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i43, label %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i42

_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i42: ; preds = %.thread114, %bb.n
  %i.cv = phi ptr [ %i.ct, %.thread114 ], [ %i.cu, %bb.n ] ; 3 uses
  %i.cw = phi ptr [ %i.cq, %.thread114 ], [ %.pre89, %bb.n ]
  %i.cx = load atomic i32, ptr %i.cw monotonic, align 4
  %i.cy = icmp sgt i32 %i.cx, 1
  br i1 %i.cy, label %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i43, label %_ZN5QListI11QModelIndexE3endEv.exit45

_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i43: ; preds = %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i42, %bb.n
  %i.cz = phi ptr [ %i.cv, %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i42 ], [ %i.cu, %bb.n ]
  invoke void @_ZN17QArrayDataPointerI11QModelIndexE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i43._ZN5QListI11QModelIndexE3endEv.exit45_crit_edge unwind label %bb.r

_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i43._ZN5QListI11QModelIndexE3endEv.exit45_crit_edge: ; preds = %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i43
  %.pre90 = load ptr, ptr %i.u, align 8
  br label %_ZN5QListI11QModelIndexE3endEv.exit45

_ZN5QListI11QModelIndexE3endEv.exit45:            ; preds = %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i43._ZN5QListI11QModelIndexE3endEv.exit45_crit_edge, %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i42
  %i.da = phi ptr [ %i.cz, %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i43._ZN5QListI11QModelIndexE3endEv.exit45_crit_edge ], [ %i.cv, %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i42 ] ; 2 uses
  %i.db = phi ptr [ %.pre90, %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i43._ZN5QListI11QModelIndexE3endEv.exit45_crit_edge ], [ %i.cv, %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.i.i.i42 ]
  %i.dc = load i64, ptr %i.w, align 8
  %i.dd = getelementptr [24 x i8], ptr %i.db, i64 %i.dc ; 2 uses
  %.not8284 = icmp eq ptr %i.da, %i.dd
  br i1 %.not8284, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5QListI11QModelIndexE3endEv.exit45
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.s

._crit_edge:                                      ; preds = %_ZN7QStringD2Ev.exit, %_ZN5QListI11QModelIndexE3endEv.exit45
  %i.df = invoke noundef ptr @_ZN15QGuiApplication9clipboardEv()
          to label %bb.ao unwind label %bb.as

bb.o:                                             ; preds = %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i33, %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.p:                                             ; preds = %"_ZSt4sortIN5QListI11QModelIndexE8iteratorEZN11ManufDialog15copyToClipboardEvE3$_0EvT_S6_T0_.exit"
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.q:                                             ; preds = %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i38
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %_ZNK17QArrayDataPointerI11QModelIndexE11needsDetachEv.exit.thread.i.i.i43
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %.lr.ph, %_ZN7QStringD2Ev.exit
  %.01386 = phi i32 [ -1, %.lr.ph ], [ %.114, %_ZN7QStringD2Ev.exit ] ; 2 uses
  %.sroa.0.085 = phi ptr [ %i.da, %.lr.ph ], [ %i.el, %_ZN7QStringD2Ev.exit ] ; 4 uses
  %i.dk = load i32, ptr %.sroa.0.085, align 8     ; 2 uses
  %.not = icmp eq i32 %i.dk, %.01386
  br i1 %.not, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dl = load i64, ptr %i.de, align 8
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.af, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, i64 1, ptr nonnull @.str.14)
          to label %.noexc47 unwind label %bb.z

.noexc47:                                         ; preds = %bb.u
  %i.dn = invoke noundef align 8 dereferenceable(24) ptr @_ZN7QString6appendERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.v unwind label %bb.x       ; 0 uses

bb.v:                                             ; preds = %.noexc47
  %i.do = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i46, label %_ZN7QStringpLEPKc.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.v
  %i.dp = atomicrmw sub ptr %i.do, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.dp, 1
  br i1 %.not.i.i.i, label %bb.w, label %_ZN7QStringpLEPKc.exit

bb.w:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.dq = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dq, i64 noundef 2, i64 noundef 8) #18
  br label %_ZN7QStringpLEPKc.exit

end_hunk_0
