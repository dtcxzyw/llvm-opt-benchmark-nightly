inline.NumInlined: 3863
inline.NumDeleted: 1436
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK13IOGraphDialog11getHintTextEj:.invoke

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18:    ; preds = %bb.g
  %i.t = atomicrmw sub ptr %i.s, i32 1 acq_rel, align 4
  %.not.i.i19 = icmp eq i32 %i.t, 1
  br i1 %.not.i.i19, label %bb.h, label %_ZN7QStringD2Ev.exit20

bb.h:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18
  %i.u = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.u, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit20

_ZN7QStringD2Ev.exit20:                           ; preds = %bb.h, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18, %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.r, %bb.g ], [ %i.r, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18 ], [ %i.r, %bb.h ] ; 3 uses
  %i.v = load ptr, ptr %5, align 8                ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i21, label %_ZN7QStringD2Ev.exit24, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i22

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i22:    ; preds = %_ZN7QStringD2Ev.exit20
  %i.w = atomicrmw sub ptr %i.v, i32 1 acq_rel, align 4
  %.not.i.i23 = icmp eq i32 %i.w, 1
  br i1 %.not.i.i23, label %bb.i, label %_ZN7QStringD2Ev.exit24

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i22
  %i.x = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.x, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit24

_ZN7QStringD2Ev.exit24:                           ; preds = %bb.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i22, %_ZN7QStringD2Ev.exit20, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %.pn, %_ZN7QStringD2Ev.exit20 ], [ %.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i22 ], [ %.pn, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.y = load ptr, ptr %4, align 8                ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i25, label %_ZN17QArrayDataPointerIDsED2Ev.exit32, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i26

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i26:    ; preds = %_ZN7QStringD2Ev.exit24
  %i.z = atomicrmw sub ptr %i.y, i32 1 acq_rel, align 4
  %.not.i.i27 = icmp eq i32 %i.z, 1
  br i1 %.not.i.i27, label %bb.j, label %_ZN17QArrayDataPointerIDsED2Ev.exit32

bb.j:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i26
  %i.aa = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aa, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit32

_ZN17QArrayDataPointerIDsED2Ev.exit32:            ; preds = %bb.j, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i26, %_ZN7QStringD2Ev.exit24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK7IOGraph14packetFromTimeEd(ptr noundef align 8 dereferenceable_or_null(284), double noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZNK7QString3argEdici5QChar(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(24), double noundef, i32 noundef, i8 noundef signext, i32 noundef, i16) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QString6numberEdci(ptr dead_on_unwind writable sret(%class.QString) align 8, double noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN13IOGraphDialog13getZoomRangesE5QRect(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.QRectF) align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(400) %1, i64 %2, i64 %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %class.QRect, align 8               ; 3 uses
  %5 = alloca %class.QRect, align 8               ; 6 uses
  %6 = alloca %class.QRect, align 16              ; 7 uses
  store i64 %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.a, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) dereferenceable_or_null(32) %0, i8 0, i64 32, i1 false)
  %i.b = trunc i64 %3 to i32
  %i.c = trunc i64 %2 to i32
  %i.d = add i32 %i.b, 1
  %i.e = sub i32 %i.d, %i.c
  %i.f = icmp slt i32 %i.e, 20
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = lshr i64 %2, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = lshr i64 %3, 32
  %i.j = trunc nuw i64 %i.i to i32
  %i.k = add i32 %i.j, 1
  %i.l = sub i32 %i.k, %i.h
  %i.m = icmp slt i32 %i.l, 20
  br i1 %i.m, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr i8, ptr %1, i64 144
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 240
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.r = call { i64, i64 } @_ZNK5QRect10normalizedEv(ptr noundef nonnull align 4 dereferenceable_or_null(16) %4) #28 ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.r, 0
  store i64 %i.s, ptr %5, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = extractvalue { i64, i64 } %i.r, 1
  store i64 %i.u, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.v = call noundef ptr @_ZNK11QCustomPlot8axisRectEi(ptr noundef align 8 dereferenceable_or_null(513) %i.q, i32 noundef 0)
  %i.w = getelementptr i8, ptr %i.v, i64 92
  %i.x = load <2 x i64>, ptr %i.w, align 4
  store <2 x i64> %i.x, ptr %6, align 16
  %i.y = call noundef zeroext i1 @_ZNK5QRect10intersectsERKS_(ptr noundef nonnull align 4 dereferenceable_or_null(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %5) #28
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = call { i64, i64 } @_ZNK5QRectanERKS_(ptr noundef nonnull align 4 dereferenceable_or_null(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %5) #28 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.aa, 1      ; 2 uses
  %i.ad = getelementptr i8, ptr %i.q, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 304
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = getelementptr i8, ptr %i.q, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 304
  %.sroa.6.12.extract.shift = lshr i64 %i.ac, 32
  %i.ak = load <2 x double>, ptr %i.af, align 8   ; 2 uses
  %i.al = load <2 x double>, ptr %i.aj, align 8   ; 2 uses
  %i.am = shufflevector <2 x double> %i.ak, <2 x double> %i.al, <2 x i32> <i32 1, i32 3>
  %i.an = shufflevector <2 x double> %i.ak, <2 x double> %i.al, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ao = fsub <2 x double> %i.am, %i.an          ; 2 uses
  %i.ap = load <2 x i32>, ptr %i.z, align 8       ; 2 uses
  %i.aq = load <2 x i32>, ptr %6, align 16        ; 2 uses
  %i.ar = add <2 x i32> %i.ap, <i32 0, i32 1>
  %i.as = sub <2 x i32> %i.ar, %i.aq
  %i.at = add <2 x i32> %i.as, <i32 1, i32 0>
  %i.au = sitofp <2 x i32> %i.at to <2 x double>  ; 2 uses
  %.sroa.046.4.extract.shift = lshr i64 %i.ab, 32
  %.sroa.6.12.extract.trunc = trunc nuw i64 %.sroa.6.12.extract.shift to i32 ; 2 uses
  %.sroa.6.8.extract.trunc = trunc i64 %i.ac to i32
  %.sroa.046.4.extract.trunc = trunc nuw i64 %.sroa.046.4.extract.shift to i32
  %.sroa.046.0.extract.trunc = trunc i64 %i.ab to i32 ; 2 uses
  %i.av = insertelement <2 x i32> %i.ap, i32 %.sroa.046.0.extract.trunc, i64 0
  %i.aw = insertelement <2 x i32> %i.aq, i32 %.sroa.6.12.extract.trunc, i64 1
  %i.ax = sub <2 x i32> %i.av, %i.aw
  %i.ay = sitofp <2 x i32> %i.ax to <2 x double>
  %i.az = fmul <2 x double> %i.ao, %i.ay
  %i.ba = fdiv <2 x double> %i.az, %i.au
  %i.bb = fadd <2 x double> %i.an, %i.ba
  %i.bc = fadd <2 x double> %i.bb, zeroinitializer
  store <2 x double> %i.bc, ptr %0, align 8
  %i.bd = add i32 %.sroa.6.12.extract.trunc, 1
  %i.be = add i32 %.sroa.6.8.extract.trunc, 1
  %i.bf = sub i32 %i.bd, %.sroa.046.4.extract.trunc
  %i.bg = sub i32 %i.be, %.sroa.046.0.extract.trunc
  %i.bh = insertelement <2 x i32> poison, i32 %i.bg, i64 0
  %i.bi = insertelement <2 x i32> %i.bh, i32 %i.bf, i64 1
  %i.bj = sitofp <2 x i32> %i.bi to <2 x double>
  %i.bk = fmul <2 x double> %i.ao, %i.bj
  %i.bl = fdiv <2 x double> %i.bk, %i.au
  store <2 x double> %i.bl, ptr %i.ag, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN11ElidedLabel7setTextERK7QString(ptr noundef align 8 dereferenceable_or_null(96), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZNK9QComboBox8itemTextEi(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(40), i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZNK7IOGraph14valueUnitLabelEv(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(284)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK7IOGraph11formatUnitsEv(ptr noundef align 8 dereferenceable_or_null(284)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QCPLayer6replotEv(ptr noundef align 8 dereferenceable_or_null(104)) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZNK4QSetI19format_size_units_eE6valuesEv(ptr dead_on_unwind noalias writable sret(%class.QList.133) align 8 %0, ptr noundef align 8 dereferenceable_or_null(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %0, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNK4QSetI19format_size_units_eE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8
  br label %_ZNK4QSetI19format_size_units_eE4sizeEv.exit

_ZNK4QSetI19format_size_units_eE4sizeEv.exit:     ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5QListI19format_size_units_eE7reserveEx(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.e)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZNK4QSetI19format_size_units_eE4sizeEv.exit
  %i.f = load ptr, ptr %1, align 8, !noalias !177 ; 5 uses
  %.not.i.i5 = icmp eq ptr %i.f, null
  br i1 %.not.i.i5, label %_ZNK4QSetI19format_size_units_eE10constBeginEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !177 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !177
  %.not.i.i.i.i = icmp eq i8 %i.i, -1
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNK4QSetI19format_size_units_eE14const_iteratorneERKS2_.exit.thread.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.f, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !177 ; 2 uses
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %_ZNK4QSetI19format_size_units_eE10constBeginEv.exit, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.m = add i64 %i.o, 1                          ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.k
  br i1 %i.n, label %_ZNK4QSetI19format_size_units_eE10constBeginEv.exit, label %.lr.ph, !llvm.loop !180

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %i.o = phi i64 [ %i.m, %bb.f ], [ 1, %bb.e ]    ; 4 uses
  %i.p = lshr i64 %i.o, 7
  %i.q = getelementptr [144 x i8], ptr %i.h, i64 %i.p
  %i.r = and i64 %i.o, 127
  %i.s = getelementptr i8, ptr %i.q, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !noalias !177
  %.not.i.i.i.i.i = icmp eq i8 %i.t, -1
  br i1 %.not.i.i.i.i.i, label %bb.f, label %._ZNK4QSetI19format_size_units_eE10constBeginEv.exit.loopexit_crit_edge, !llvm.loop !180

._ZNK4QSetI19format_size_units_eE10constBeginEv.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZNK4QSetI19format_size_units_eE10constBeginEv.exit, !llvm.loop !180

_ZNK4QSetI19format_size_units_eE10constBeginEv.exit: ; preds = %bb.f, %bb.e, %._ZNK4QSetI19format_size_units_eE10constBeginEv.exit.loopexit_crit_edge, %bb.c
  %.sroa.0.0.i.i = phi ptr [ null, %bb.c ], [ %i.f, %._ZNK4QSetI19format_size_units_eE10constBeginEv.exit.loopexit_crit_edge ], [ null, %bb.e ], [ null, %bb.f ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.c ], [ %i.o, %._ZNK4QSetI19format_size_units_eE10constBeginEv.exit.loopexit_crit_edge ], [ 0, %bb.e ], [ 0, %bb.f ] ; 2 uses
  %2 = icmp ne ptr %.sroa.0.0.i.i, null
  %3 = icmp ne i64 %.sroa.4.0.i.i, 0
  %or.cond14 = or i1 %2, %3
  br i1 %or.cond14, label %_ZNK4QSetI19format_size_units_eE14const_iteratorneERKS2_.exit.thread.lr.ph, label %._crit_edge

_ZNK4QSetI19format_size_units_eE14const_iteratorneERKS2_.exit.thread.lr.ph: ; preds = %bb.d, %_ZNK4QSetI19format_size_units_eE10constBeginEv.exit
  %.sroa.4.0.i.i25 = phi i64 [ %.sroa.4.0.i.i, %_ZNK4QSetI19format_size_units_eE10constBeginEv.exit ], [ 0, %bb.d ]
  %.sroa.0.0.i.i24 = phi ptr [ %.sroa.0.0.i.i, %_ZNK4QSetI19format_size_units_eE10constBeginEv.exit ], [ %i.f, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNK4QSetI19format_size_units_eE14const_iteratorneERKS2_.exit.thread

_ZNK4QSetI19format_size_units_eE14const_iteratorneERKS2_.exit.thread: ; preds = %_ZNK4QSetI19format_size_units_eE14const_iteratorneERKS2_.exit.thread.lr.ph, %_ZN4QSetI19format_size_units_eE14const_iteratorppEv.exit
  %.sroa.8.016 = phi i64 [ %.sroa.4.0.i.i25, %_ZNK4QSetI19format_size_units_eE14const_iteratorneERKS2_.exit.thread.lr.ph ], [ %.sroa.8.1, %_ZN4QSetI19format_size_units_eE14const_iteratorppEv.exit ] ; 3 uses
  %.sroa.09.015 = phi ptr [ %.sroa.0.0.i.i24, %_ZNK4QSetI19format_size_units_eE14const_iteratorneERKS2_.exit.thread.lr.ph ], [ %.sroa.09.1, %_ZN4QSetI19format_size_units_eE14const_iteratorppEv.exit ] ; 3 uses
  %i.v = getelementptr i8, ptr %.sroa.09.015, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.sroa.8.016, 7
  %i.y = getelementptr [144 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = and i64 %.sroa.8.016, 127
  %i.aa = getelementptr i8, ptr %i.y, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.y, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr [4 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ag, ptr %i.a, align 4
  %i.ah = load i64, ptr %i.u, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsI19format_size_units_eE7emplaceIJRS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_ZNK4QSetI19format_size_units_eE14const_iteratorneERKS2_.exit.thread
  %i.ai = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI19format_size_units_eE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerI19format_size_units_eE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerI19format_size_units_eE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc
  %i.aj = load atomic i32, ptr %i.ai monotonic, align 4
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %_ZNK17QArrayDataPointerI19format_size_units_eE11needsDetachEv.exit.thread.i.i.i.i.i, label %bb.g

_ZNK17QArrayDataPointerI19format_size_units_eE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI19format_size_units_eE11needsDetachEv.exit.i.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerI19format_size_units_eE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNK17QArrayDataPointerI19format_size_units_eE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerI19format_size_units_eE11needsDetachEv.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = getelementptr i8, ptr %.sroa.09.015, i64 16
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = add i64 %.sroa.8.016, 1                 ; 2 uses
  %i.ao = icmp eq i64 %i.an, %i.am
  br i1 %i.ao, label %_ZN4QSetI19format_size_units_eE14const_iteratorppEv.exit, label %.lr.ph32.preheader

.lr.ph32.preheader:                               ; preds = %bb.g
  %i.ap = load ptr, ptr %i.v, align 8
  br label %.lr.ph32

bb.h:                                             ; preds = %.lr.ph32
  %i.aq = add i64 %i.as, 1                        ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.am
  br i1 %i.ar, label %_ZN4QSetI19format_size_units_eE14const_iteratorppEv.exit, label %.lr.ph32, !llvm.loop !180

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %bb.h
  %i.as = phi i64 [ %i.aq, %bb.h ], [ %i.an, %.lr.ph32.preheader ] ; 4 uses
  %i.at = lshr i64 %i.as, 7
  %i.au = getelementptr [144 x i8], ptr %i.ap, i64 %i.at
  %i.av = and i64 %i.as, 127
  %i.aw = getelementptr i8, ptr %i.au, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %.not.i.i.i.i8 = icmp eq i8 %i.ax, -1
  br i1 %.not.i.i.i.i8, label %bb.h, label %._ZN4QSetI19format_size_units_eE14const_iteratorppEv.exit_crit_edge35, !llvm.loop !180

._ZN4QSetI19format_size_units_eE14const_iteratorppEv.exit_crit_edge35: ; preds = %.lr.ph32
  br label %_ZN4QSetI19format_size_units_eE14const_iteratorppEv.exit, !llvm.loop !180

_ZN4QSetI19format_size_units_eE14const_iteratorppEv.exit: ; preds = %bb.h, %._ZN4QSetI19format_size_units_eE14const_iteratorppEv.exit_crit_edge35, %bb.g
  %.sroa.09.1 = phi ptr [ %.sroa.09.015, %._ZN4QSetI19format_size_units_eE14const_iteratorppEv.exit_crit_edge35 ], [ null, %bb.g ], [ null, %bb.h ] ; 2 uses
  %.sroa.8.1 = phi i64 [ %i.as, %._ZN4QSetI19format_size_units_eE14const_iteratorppEv.exit_crit_edge35 ], [ 0, %bb.g ], [ 0, %bb.h ] ; 2 uses
  %i.ay = icmp ne ptr %.sroa.09.1, null
  %i.az = icmp ne i64 %.sroa.8.1, 0
  %or.cond = or i1 %i.ay, %i.az
  br i1 %or.cond, label %_ZNK4QSetI19format_size_units_eE14const_iteratorneERKS2_.exit.thread, label %._crit_edge, !llvm.loop !181

bb.i:                                             ; preds = %_ZNK4QSetI19format_size_units_eE4sizeEv.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZNK17QArrayDataPointerI19format_size_units_eE11needsDetachEv.exit.thread.i.i.i.i.i, %_ZNK4QSetI19format_size_units_eE14const_iteratorneERKS2_.exit.thread
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

._crit_edge:                                      ; preds = %_ZN4QSetI19format_size_units_eE14const_iteratorppEv.exit, %_ZNK4QSetI19format_size_units_eE10constBeginEv.exit
  ret void

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.j ], [ %i.ba, %bb.i ]
  call void @_ZN5QListI19format_size_units_eED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QListI19format_size_units_eED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerI19format_size_units_eED2Ev.exit, label %_ZN17QArrayDataPointerI19format_size_units_eE5derefEv.exit.i

_ZN17QArrayDataPointerI19format_size_units_eE5derefEv.exit.i: ; preds = %bb.a
  %i.b = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %bb.b, label %_ZN17QArrayDataPointerI19format_size_units_eED2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerI19format_size_units_eE5derefEv.exit.i
  %i.c = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.c, i64 noundef 4, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerI19format_size_units_eED2Ev.exit

_ZN17QArrayDataPointerI19format_size_units_eED2Ev.exit: ; preds = %bb.a, %_ZN17QArrayDataPointerI19format_size_units_eE5derefEv.exit.i, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN15QCPAxisTickerSi7setUnitE19format_size_units_e(ptr noundef align 8 dereferenceable_or_null(81), i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZNK7QAction9isCheckedEv(ptr noundef align 8 dereferenceable_or_null(16)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN15QCPAxisTickerSiC1E19format_size_units_e7QStringb(ptr noundef align 8 dereferenceable_or_null(81), i32 noundef, ptr noundef align 8, i1 noundef zeroext) unnamed_addr #4

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN14QSharedPointerI15QCPAxisTickerSiED2Ev(ptr noundef align 8 dead_on_return(16) dereferenceable_or_null(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN14QSharedPointerI15QCPAxisTickerSiE5derefEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %.not5.i.i = icmp eq i32 %i.d, 1
  br i1 %.not5.i.i, label %bb.c, label %_ZN15QtSharedPointer20ExternalRefCountData7destroyEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.b)
          to label %_ZN15QtSharedPointer20ExternalRefCountData7destroyEv.exit.i.i unwind label %bb.e, !inline_history !30

_ZN15QtSharedPointer20ExternalRefCountData7destroyEv.exit.i.i: ; preds = %bb.c, %bb.b
  %i.g = atomicrmw sub ptr %i.b, i32 1 acq_rel, align 4
  %.not6.i.i = icmp eq i32 %i.g, 1
  br i1 %.not6.i.i, label %bb.d, label %_ZN14QSharedPointerI15QCPAxisTickerSiE5derefEv.exit

bb.d:                                             ; preds = %_ZN15QtSharedPointer20ExternalRefCountData7destroyEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #28
  br label %_ZN14QSharedPointerI15QCPAxisTickerSiE5derefEv.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #33
  unreachable

_ZN14QSharedPointerI15QCPAxisTickerSiE5derefEv.exit: ; preds = %bb.a, %_ZN15QtSharedPointer20ExternalRefCountData7destroyEv.exit.i.i, %bb.d
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN16QCPAxisTickerLogC1Ev(ptr noundef align 8 dereferenceable_or_null(48)) unnamed_addr #4

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN14QSharedPointerI16QCPAxisTickerLogED2Ev(ptr noundef align 8 dead_on_return(16) dereferenceable_or_null(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN14QSharedPointerI16QCPAxisTickerLogE5derefEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %.not5.i.i = icmp eq i32 %i.d, 1
  br i1 %.not5.i.i, label %bb.c, label %_ZN15QtSharedPointer20ExternalRefCountData7destroyEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.b)
          to label %_ZN15QtSharedPointer20ExternalRefCountData7destroyEv.exit.i.i unwind label %bb.e, !inline_history !30

_ZN15QtSharedPointer20ExternalRefCountData7destroyEv.exit.i.i: ; preds = %bb.c, %bb.b
  %i.g = atomicrmw sub ptr %i.b, i32 1 acq_rel, align 4
  %.not6.i.i = icmp eq i32 %i.g, 1
  br i1 %.not6.i.i, label %bb.d, label %_ZN14QSharedPointerI16QCPAxisTickerLogE5derefEv.exit

bb.d:                                             ; preds = %_ZN15QtSharedPointer20ExternalRefCountData7destroyEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #28
  br label %_ZN14QSharedPointerI16QCPAxisTickerLogE5derefEv.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #33
  unreachable

_ZN14QSharedPointerI16QCPAxisTickerLogE5derefEv.exit: ; preds = %bb.a, %_ZN15QtSharedPointer20ExternalRefCountData7destroyEv.exit.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZplRK7QStringPKc(ptr dead_on_unwind noalias writable sret(%class.QString) align 8 %0, ptr noundef align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QString, align 8             ; 9 uses
  %i.a = load <2 x ptr>, ptr %1, align 8
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  store <2 x ptr> %i.a, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.c, align 8
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7QStringC2ERKS_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = atomicrmw add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit

_ZN7QStringC2ERKS_.exit:                          ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit, label %.split.i

.split.i:                                         ; preds = %_ZN7QStringC2ERKS_.exit
  %i.g = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #28
  br label %_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit

_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit: ; preds = %_ZN7QStringC2ERKS_.exit, %.split.i
  %.sink5.i = phi i64 [ %i.g, %.split.i ], [ 0, %_ZN7QStringC2ERKS_.exit ]
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 %.sink5.i, ptr %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit
  %i.h = invoke noundef align 8 dereferenceable(24) ptr @_ZN7QString6appendERKS_(ptr noundef align 8 dereferenceable_or_null(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN7QStringpLERKS_.exit unwind label %bb.f ; 0 uses

_ZN7QStringpLERKS_.exit:                          ; preds = %bb.c
  %i.i = load ptr, ptr %3, align 8                ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i5, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %_ZN7QStringpLERKS_.exit
  %i.j = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.j, 1
  br i1 %.not.i.i, label %bb.d, label %_ZN7QStringD2Ev.exit

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.k = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.k, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %_ZN7QStringpLERKS_.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit9

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.n = load ptr, ptr %3, align 8                ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i6, label %_ZN7QStringD2Ev.exit9, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i7

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i7:     ; preds = %bb.f
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %.not.i.i8 = icmp eq i32 %i.o, 1
  br i1 %.not.i.i8, label %bb.g, label %_ZN7QStringD2Ev.exit9

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i7
  %i.p = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.p, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit9

_ZN7QStringD2Ev.exit9:                            ; preds = %bb.g, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i7, %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.m, %bb.f ], [ %i.m, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i7 ], [ %i.m, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @_ZN7QStringD2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZNK4QSetI7QStringE6valuesEv(ptr dead_on_unwind noalias writable sret(%class.QList.41) align 8 %0, ptr noundef align 8 dereferenceable_or_null(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNK4QSetI7QStringE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  br label %_ZNK4QSetI7QStringE4sizeEv.exit

_ZNK4QSetI7QStringE4sizeEv.exit:                  ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5QListI7QStringE7reserveEx(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.d)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZNK4QSetI7QStringE4sizeEv.exit
  %i.e = load ptr, ptr %1, align 8, !noalias !182 ; 5 uses
  %.not.i.i5 = icmp eq ptr %i.e, null
  br i1 %.not.i.i5, label %_ZNK4QSetI7QStringE10constBeginEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !182 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !noalias !182
  %.not.i.i.i.i = icmp eq i8 %i.h, -1
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.e, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noalias !182 ; 2 uses
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %_ZNK4QSetI7QStringE10constBeginEv.exit, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.l = add i64 %i.n, 1                          ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.j
  br i1 %i.m, label %_ZNK4QSetI7QStringE10constBeginEv.exit, label %.lr.ph, !llvm.loop !185

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %i.n = phi i64 [ %i.l, %bb.f ], [ 1, %bb.e ]    ; 4 uses
  %i.o = lshr i64 %i.n, 7
  %i.p = getelementptr [144 x i8], ptr %i.g, i64 %i.o
  %i.q = and i64 %i.n, 127
  %i.r = getelementptr i8, ptr %i.p, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noalias !182
  %.not.i.i.i.i.i = icmp eq i8 %i.s, -1
  br i1 %.not.i.i.i.i.i, label %bb.f, label %._ZNK4QSetI7QStringE10constBeginEv.exit.loopexit_crit_edge, !llvm.loop !185

._ZNK4QSetI7QStringE10constBeginEv.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZNK4QSetI7QStringE10constBeginEv.exit, !llvm.loop !185

_ZNK4QSetI7QStringE10constBeginEv.exit:           ; preds = %bb.f, %bb.e, %._ZNK4QSetI7QStringE10constBeginEv.exit.loopexit_crit_edge, %bb.c
  %.sroa.0.0.i.i = phi ptr [ null, %bb.c ], [ %i.e, %._ZNK4QSetI7QStringE10constBeginEv.exit.loopexit_crit_edge ], [ null, %bb.e ], [ null, %bb.f ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.c ], [ %i.n, %._ZNK4QSetI7QStringE10constBeginEv.exit.loopexit_crit_edge ], [ 0, %bb.e ], [ 0, %bb.f ] ; 2 uses
  %2 = icmp ne ptr %.sroa.0.0.i.i, null
  %3 = icmp ne i64 %.sroa.4.0.i.i, 0
  %or.cond14 = or i1 %2, %3
  br i1 %or.cond14, label %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph, label %._crit_edge

_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph: ; preds = %bb.d, %_ZNK4QSetI7QStringE10constBeginEv.exit
  %.sroa.4.0.i.i25 = phi i64 [ %.sroa.4.0.i.i, %_ZNK4QSetI7QStringE10constBeginEv.exit ], [ 0, %bb.d ]
  %.sroa.0.0.i.i24 = phi ptr [ %.sroa.0.0.i.i, %_ZNK4QSetI7QStringE10constBeginEv.exit ], [ %i.e, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread

_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread: ; preds = %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph, %_ZN4QSetI7QStringE14const_iteratorppEv.exit
  %.sroa.8.016 = phi i64 [ %.sroa.4.0.i.i25, %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph ], [ %.sroa.8.1, %_ZN4QSetI7QStringE14const_iteratorppEv.exit ] ; 3 uses
  %.sroa.09.015 = phi ptr [ %.sroa.0.0.i.i24, %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph ], [ %.sroa.09.1, %_ZN4QSetI7QStringE14const_iteratorppEv.exit ] ; 3 uses
  %i.u = getelementptr i8, ptr %.sroa.09.015, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = lshr i64 %.sroa.8.016, 7
  %i.x = getelementptr [144 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %i.y = and i64 %.sroa.8.016, 127
  %i.z = getelementptr i8, ptr %i.x, i64 128
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.x, i64 %i.y
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr [24 x i8], ptr %i.aa, i64 %i.ad
  %i.af = load i64, ptr %i.t, align 8
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI7QStringE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.af, ptr noundef align 8 dereferenceable(24) %i.ae)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread
  %i.ag = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 4
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZN5QListI7QStringE6appendERKS0_.exit

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerI7QStringE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI7QStringE6appendERKS0_.exit unwind label %bb.i

_ZN5QListI7QStringE6appendERKS0_.exit:            ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i
  %i.aj = getelementptr i8, ptr %.sroa.09.015, i64 16
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = add i64 %.sroa.8.016, 1                 ; 2 uses
  %i.am = icmp eq i64 %i.al, %i.ak
  br i1 %i.am, label %_ZN4QSetI7QStringE14const_iteratorppEv.exit, label %.lr.ph31.preheader

.lr.ph31.preheader:                               ; preds = %_ZN5QListI7QStringE6appendERKS0_.exit
  %i.an = load ptr, ptr %i.u, align 8
  br label %.lr.ph31

bb.g:                                             ; preds = %.lr.ph31
  %i.ao = add i64 %i.aq, 1                        ; 2 uses
  %i.ap = icmp eq i64 %i.ao, %i.ak
  br i1 %i.ap, label %_ZN4QSetI7QStringE14const_iteratorppEv.exit, label %.lr.ph31, !llvm.loop !185

.lr.ph31:                                         ; preds = %.lr.ph31.preheader, %bb.g
  %i.aq = phi i64 [ %i.ao, %bb.g ], [ %i.al, %.lr.ph31.preheader ] ; 4 uses
  %i.ar = lshr i64 %i.aq, 7
  %i.as = getelementptr [144 x i8], ptr %i.an, i64 %i.ar
  %i.at = and i64 %i.aq, 127
  %i.au = getelementptr i8, ptr %i.as, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1
  %.not.i.i.i.i8 = icmp eq i8 %i.av, -1
  br i1 %.not.i.i.i.i8, label %bb.g, label %._ZN4QSetI7QStringE14const_iteratorppEv.exit_crit_edge34, !llvm.loop !185

._ZN4QSetI7QStringE14const_iteratorppEv.exit_crit_edge34: ; preds = %.lr.ph31
  br label %_ZN4QSetI7QStringE14const_iteratorppEv.exit, !llvm.loop !185

_ZN4QSetI7QStringE14const_iteratorppEv.exit:      ; preds = %bb.g, %._ZN4QSetI7QStringE14const_iteratorppEv.exit_crit_edge34, %_ZN5QListI7QStringE6appendERKS0_.exit
  %.sroa.09.1 = phi ptr [ %.sroa.09.015, %._ZN4QSetI7QStringE14const_iteratorppEv.exit_crit_edge34 ], [ null, %_ZN5QListI7QStringE6appendERKS0_.exit ], [ null, %bb.g ] ; 2 uses
  %.sroa.8.1 = phi i64 [ %i.aq, %._ZN4QSetI7QStringE14const_iteratorppEv.exit_crit_edge34 ], [ 0, %_ZN5QListI7QStringE6appendERKS0_.exit ], [ 0, %bb.g ] ; 2 uses
  %i.aw = icmp ne ptr %.sroa.09.1, null
  %i.ax = icmp ne i64 %.sroa.8.1, 0
  %or.cond = or i1 %i.aw, %i.ax
  br i1 %or.cond, label %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread, label %._crit_edge, !llvm.loop !186

bb.h:                                             ; preds = %_ZNK4QSetI7QStringE4sizeEv.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i, %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

._crit_edge:                                      ; preds = %_ZN4QSetI7QStringE14const_iteratorppEv.exit, %_ZNK4QSetI7QStringE10constBeginEv.exit
  ret void

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.az, %bb.i ], [ %i.ay, %bb.h ]
  tail call void @_ZN5QListI7QStringED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QListI7QStringED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerI7QStringED2Ev.exit, label %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i

_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i:  ; preds = %bb.a
  %i.b = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %bb.b, label %_ZN17QArrayDataPointerI7QStringED2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.idx.i.i = mul i64 %i.f, 24                    ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 %.idx.i.i
  %.not4.i.i.i.i.i = icmp eq i64 %.idx.i.i, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i.i, align 8    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.i = atomicrmw sub ptr %i.h, i32 1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, 1
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i.i.i.i, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.j, i64 noundef 2, i64 noundef 8) #28
  br label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i:       ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.k = getelementptr i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !150

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i: ; preds = %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i, %bb.b
  %i.l = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.l, i64 noundef 24, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerI7QStringED2Ev.exit

_ZN17QArrayDataPointerI7QStringED2Ev.exit:        ; preds = %bb.a, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN9QCPLegend10clearItemsEv(ptr noundef align 8 dereferenceable_or_null(392)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN19QCPStringLegendItemC1EP9QCPLegendRK7QString(ptr noundef align 8 dereferenceable_or_null(272), ptr noundef, ptr noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZN5Graph11addToLegendEv(ptr noundef align 8 dereferenceable_or_null(96)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN4QSetIbED2Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN5QHashIb15QHashDummyValueED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %_ZN5QHashIb15QHashDummyValueED2Ev.exit, label %_ZN9QtPrivate8RefCount5derefEv.exit.i

_ZN9QtPrivate8RefCount5derefEv.exit.i:            ; preds = %bb.b
  %i.d = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not3.i = icmp eq i32 %i.d, 1
  br i1 %.not3.i, label %bb.c, label %_ZN5QHashIb15QHashDummyValueED2Ev.exit

bb.c:                                             ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i
  %i.e = load ptr, ptr %0, align 8                ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN5QHashIb15QHashDummyValueED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.e, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN12QHashPrivate4DataINS_4NodeIb15QHashDummyValueEEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %.idx.i.i = mul i64 %i.k, 144                   ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.e
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN12QHashPrivate4SpanINS_4NodeIb15QHashDummyValueEEED2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.n = phi ptr [ %i.o, %_ZN12QHashPrivate4SpanINS_4NodeIb15QHashDummyValueEEED2Ev.exit.i.i ], [ %i.m, %.preheader.preheader.i.i ] ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -144 ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 -16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN12QHashPrivate4SpanINS_4NodeIb15QHashDummyValueEEED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #32
  br label %_ZN12QHashPrivate4SpanINS_4NodeIb15QHashDummyValueEEED2Ev.exit.i.i

_ZN12QHashPrivate4SpanINS_4NodeIb15QHashDummyValueEEED2Ev.exit.i.i: ; preds = %bb.f, %.preheader.i.i
  %i.r = icmp eq ptr %i.o, %i.h
  br i1 %i.r, label %.loopexit.i.i, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %_ZN12QHashPrivate4SpanINS_4NodeIb15QHashDummyValueEEED2Ev.exit.i.i, %bb.e
  %i.s = or disjoint i64 %.idx.i.i, 8
  tail call void @_ZdaPvm(ptr noundef %i.j, i64 noundef %i.s) #32
  br label %_ZN12QHashPrivate4DataINS_4NodeIb15QHashDummyValueEEED2Ev.exit.i

_ZN12QHashPrivate4DataINS_4NodeIb15QHashDummyValueEEED2Ev.exit.i: ; preds = %.loopexit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef 40) #32
  br label %_ZN5QHashIb15QHashDummyValueED2Ev.exit

_ZN5QHashIb15QHashDummyValueED2Ev.exit:           ; preds = %bb.a, %bb.b, %_ZN9QtPrivate8RefCount5derefEv.exit.i, %bb.c, %_ZN12QHashPrivate4DataINS_4NodeIb15QHashDummyValueEEED2Ev.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN4QSetI19format_size_units_eED2Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN5QHashI19format_size_units_e15QHashDummyValueED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %_ZN5QHashI19format_size_units_e15QHashDummyValueED2Ev.exit, label %_ZN9QtPrivate8RefCount5derefEv.exit.i

_ZN9QtPrivate8RefCount5derefEv.exit.i:            ; preds = %bb.b
  %i.d = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not3.i = icmp eq i32 %i.d, 1
  br i1 %.not3.i, label %bb.c, label %_ZN5QHashI19format_size_units_e15QHashDummyValueED2Ev.exit

bb.c:                                             ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i
  %i.e = load ptr, ptr %0, align 8                ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN5QHashI19format_size_units_e15QHashDummyValueED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.e, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN12QHashPrivate4DataINS_4NodeI19format_size_units_e15QHashDummyValueEEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %.idx.i.i = mul i64 %i.k, 144                   ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.e
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN12QHashPrivate4SpanINS_4NodeI19format_size_units_e15QHashDummyValueEEED2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.n = phi ptr [ %i.o, %_ZN12QHashPrivate4SpanINS_4NodeI19format_size_units_e15QHashDummyValueEEED2Ev.exit.i.i ], [ %i.m, %.preheader.preheader.i.i ] ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -144 ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 -16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN12QHashPrivate4SpanINS_4NodeI19format_size_units_e15QHashDummyValueEEED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #32
  br label %_ZN12QHashPrivate4SpanINS_4NodeI19format_size_units_e15QHashDummyValueEEED2Ev.exit.i.i

_ZN12QHashPrivate4SpanINS_4NodeI19format_size_units_e15QHashDummyValueEEED2Ev.exit.i.i: ; preds = %bb.f, %.preheader.i.i
  %i.r = icmp eq ptr %i.o, %i.h
  br i1 %i.r, label %.loopexit.i.i, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %_ZN12QHashPrivate4SpanINS_4NodeI19format_size_units_e15QHashDummyValueEEED2Ev.exit.i.i, %bb.e
  %i.s = or disjoint i64 %.idx.i.i, 8
  tail call void @_ZdaPvm(ptr noundef %i.j, i64 noundef %i.s) #32
  br label %_ZN12QHashPrivate4DataINS_4NodeI19format_size_units_e15QHashDummyValueEEED2Ev.exit.i

_ZN12QHashPrivate4DataINS_4NodeI19format_size_units_e15QHashDummyValueEEED2Ev.exit.i: ; preds = %.loopexit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef 40) #32
  br label %_ZN5QHashI19format_size_units_e15QHashDummyValueED2Ev.exit
end_hunk_0
