inline.NumInlined: 1199
inline.NumDeleted: 524
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndex:bb.a

bb.et:                                            ; preds = %.noexc352
  call void @_ZN5QIconD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  br label %bb.ex

bb.eu:                                            ; preds = %bb.eq
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ev:                                            ; preds = %bb.er
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %.body353

.body353:                                         ; preds = %bb.es, %bb.ev
  %eh.lpad-body354 = phi { ptr, i32 } [ %i.pv, %bb.ev ], [ %i.pt, %bb.es ]
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %31) #20
  br label %bb.ew

bb.ew:                                            ; preds = %.body353, %bb.eu
  %.pn152 = phi { ptr, i32 } [ %eh.lpad-body354, %.body353 ], [ %i.pu, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  br label %.loopexit.split-lp419

bb.ex:                                            ; preds = %bb.et, %bb.en
  %i.pw = getelementptr i8, ptr %.sroa.0368.0458, i64 8 ; 2 uses
  %.not404 = icmp eq ptr %i.pw, %i.ol
  br i1 %.not404, label %._crit_edge, label %bb.eh

bb.ey:                                            ; preds = %._crit_edge
  %i.px = getelementptr i8, ptr %i.kb, i64 32
  %i.py = load ptr, ptr %i.px, align 8            ; 2 uses
  %i.pz = getelementptr i8, ptr %i.py, i64 20
  %i.qa = getelementptr i8, ptr %i.py, i64 28
  %i.qb = load i32, ptr %i.qa, align 4
  %i.qc = load i32, ptr %i.pz, align 4
  %i.qd = add i32 %i.qb, 1
  %i.qe = sub i32 %i.qd, %i.qc
  %i.qf = icmp sgt i32 %i.ou, %i.qe
  br i1 %i.qf, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  invoke void @_ZN7QWidget13setFixedWidthEi(ptr noundef align 8 dereferenceable_or_null(40) %i.kb, i32 noundef %i.ou)
          to label %bb.fb unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %._crit_edge
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp419

bb.fb:                                            ; preds = %bb.ez, %bb.ey
  %i.qh = load ptr, ptr %27, align 8              ; 2 uses
  %.not.i.i.i.i360 = icmp eq ptr %i.qh, null
  br i1 %.not.i.i.i.i360, label %_ZN27_decode_add_protocol_data_tD2Ev.exit, label %_ZN17QArrayDataPointerIP17_dissector_info_tE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIP17_dissector_info_tE5derefEv.exit.i.i.i: ; preds = %bb.fb
  %i.qi = atomicrmw sub ptr %i.qh, i32 1 acq_rel, align 4
  %.not.i.i.i361 = icmp eq i32 %i.qi, 1
  br i1 %.not.i.i.i361, label %bb.fc, label %_ZN27_decode_add_protocol_data_tD2Ev.exit

bb.fc:                                            ; preds = %_ZN17QArrayDataPointerIP17_dissector_info_tE5derefEv.exit.i.i.i
  %i.qj = load ptr, ptr %27, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.qj, i64 noundef 8, i64 noundef 8) #20
  br label %_ZN27_decode_add_protocol_data_tD2Ev.exit

_ZN27_decode_add_protocol_data_tD2Ev.exit:        ; preds = %bb.fb, %_ZN17QArrayDataPointerIP17_dissector_info_tE5derefEv.exit.i.i.i, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  br label %bb.fe

.loopexit.split-lp419:                            ; preds = %.loopexit440, %.loopexit.split-lp441, %.loopexit418, %.loopexit.split-lp419.loopexit.split-lp.loopexit, %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp419.loopexit, %bb.ef, %bb.ep, %bb.ew, %bb.eg, %bb.fa, %_ZN7QStringD2Ev.exit341
  %.pn154.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp436, %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.qg, %bb.fa ], [ %.pn152, %bb.ew ], [ %.pn, %_ZN7QStringD2Ev.exit341 ], [ %i.pa, %bb.ef ], [ %i.pb, %bb.eg ], [ %.pn154, %bb.ep ], [ %lpad.loopexit420, %.loopexit418 ], [ %lpad.loopexit423, %.loopexit.split-lp419.loopexit ], [ %lpad.loopexit426, %.loopexit.split-lp419.loopexit.split-lp.loopexit ], [ %lpad.loopexit429, %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit432, %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit435, %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit442, %.loopexit440 ], [ %lpad.loopexit.split-lp443, %.loopexit.split-lp441 ]
  %i.qk = load ptr, ptr %27, align 8              ; 2 uses
  %.not.i.i.i.i362 = icmp eq ptr %i.qk, null
  br i1 %.not.i.i.i.i362, label %_ZN27_decode_add_protocol_data_tD2Ev.exit365, label %_ZN17QArrayDataPointerIP17_dissector_info_tE5derefEv.exit.i.i.i363

_ZN17QArrayDataPointerIP17_dissector_info_tE5derefEv.exit.i.i.i363: ; preds = %.loopexit.split-lp419
  %i.ql = atomicrmw sub ptr %i.qk, i32 1 acq_rel, align 4
  %.not.i.i.i364 = icmp eq i32 %i.ql, 1
  br i1 %.not.i.i.i364, label %bb.fd, label %_ZN27_decode_add_protocol_data_tD2Ev.exit365

bb.fd:                                            ; preds = %_ZN17QArrayDataPointerIP17_dissector_info_tE5derefEv.exit.i.i.i363
  %i.qm = load ptr, ptr %27, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.qm, i64 noundef 8, i64 noundef 8) #20
  br label %_ZN27_decode_add_protocol_data_tD2Ev.exit365

_ZN27_decode_add_protocol_data_tD2Ev.exit365:     ; preds = %.loopexit.split-lp419, %_ZN17QArrayDataPointerIP17_dissector_info_tE5derefEv.exit.i.i.i363, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  br label %bb.fg

bb.fe:                                            ; preds = %_ZN27_decode_add_protocol_data_tD2Ev.exit, %_ZN5QListIhED2Ev.exit, %_ZN5QListI7QStringED2Ev.exit242
  %.1 = phi ptr [ %i.kb, %_ZN27_decode_add_protocol_data_tD2Ev.exit ], [ %i.g, %_ZN5QListI7QStringED2Ev.exit242 ], [ %.0, %_ZN5QListIhED2Ev.exit ] ; 3 uses
  %.not187 = icmp eq ptr %.1, null
  br i1 %.not187, label %.thread400, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @_ZN7QWidget21setAutoFillBackgroundEb(ptr noundef nonnull align 8 dereferenceable_or_null(40) %.1, i1 noundef zeroext true)
  br label %.thread400

.thread400:                                       ; preds = %bb.a, %bb.ff, %bb.fe
  %.1403 = phi ptr [ null, %bb.fe ], [ %.1, %bb.ff ], [ null, %bb.a ]
  ret ptr %.1403

bb.fg:                                            ; preds = %bb.dj, %_ZN27_decode_add_protocol_data_tD2Ev.exit365, %bb.i, %_ZN7QStringD2Ev.exit246, %_ZN5QListIhED2Ev.exit300
  %.pn181.pn.pn.pn.pn = phi { ptr, i32 } [ %i.af, %bb.i ], [ %.pn173.pn, %_ZN5QListIhED2Ev.exit300 ], [ %.pn181.pn.pn, %_ZN7QStringD2Ev.exit246 ], [ %.pn154.pn.pn.pn.pn, %_ZN27_decode_add_protocol_data_tD2Ev.exit365 ], [ %i.kf, %bb.dj ]
  resume { ptr, i32 } %.pn181.pn.pn.pn.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN9QComboBoxC1EP7QWidget(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef) unnamed_addr #1

; Function Attrs: nobuiltin nounwind null_pointer_is_valid
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare void @_ZN9QComboBox19setSizeAdjustPolicyENS_16SizeAdjustPolicyE(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid
declare noundef align 8 dereferenceable(24) ptr @_ZN7QStringaSERKS_(ptr noundef align 8 dereferenceable_or_null(24), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QVariantC1ERK7QString(ptr noundef align 8 dereferenceable_or_null(32), ptr noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN9QtPrivate17QForeachContainerI5QListI7QStringEED2Ev(ptr noundef align 8 dead_on_return(44) dereferenceable_or_null(44) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZN5QListI7QStringED2Ev.exit, label %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i

_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i: ; preds = %bb.a
  %i.b = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.b, 1
  br i1 %.not.i.i, label %bb.b, label %_ZN5QListI7QStringED2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.idx.i.i.i = mul i64 %i.f, 24                  ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 %.idx.i.i.i
  %.not4.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i.i.i, align 8  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.i = atomicrmw sub ptr %i.h, i32 1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.c, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i.i.i.i.i, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.j, i64 noundef 2, i64 noundef 8) #20
  br label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i:     ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.k = getelementptr i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !25

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i: ; preds = %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i, %bb.b
  %i.l = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.l, i64 noundef 24, i64 noundef 8) #20
  br label %_ZN5QListI7QStringED2Ev.exit

_ZN5QListI7QStringED2Ev.exit:                     ; preds = %bb.a, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN9QComboBox15insertSeparatorEi(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZNK4QSetI7QStringE6valuesEv(ptr dead_on_unwind noalias writable sret(%class.QList.5) align 8 %0, ptr noundef align 8 dereferenceable_or_null(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.e = load ptr, ptr %1, align 8, !noalias !55  ; 4 uses
  %.not.i.i5 = icmp eq ptr %i.e, null
  br i1 %.not.i.i5, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !55 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !noalias !55
  %.not.i.i.i.i = icmp eq i8 %i.h, -1
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.e, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noalias !55 ; 2 uses
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.l = add nuw i64 %i.n, 1                      ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.j
  br i1 %i.m, label %._crit_edge, label %.lr.ph, !llvm.loop !58

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %i.n = phi i64 [ %i.l, %bb.f ], [ 1, %bb.e ]    ; 4 uses
  %i.o = lshr i64 %i.n, 7
  %i.p = getelementptr [144 x i8], ptr %i.g, i64 %i.o
  %i.q = and i64 %i.n, 127
  %i.r = getelementptr i8, ptr %i.p, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noalias !55
  %.not.i.i.i.i.i = icmp eq i8 %i.s, -1
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph, !llvm.loop !58

_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph: ; preds = %.lr.ph, %bb.d
  %.sroa.4.0.i.i25 = phi i64 [ 0, %bb.d ], [ %i.n, %.lr.ph ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread

_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread: ; preds = %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph, %_ZN4QSetI7QStringE14const_iteratorppEv.exit
  %.sroa.8.016 = phi i64 [ %.sroa.4.0.i.i25, %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph ], [ %.sroa.8.1, %_ZN4QSetI7QStringE14const_iteratorppEv.exit ] ; 3 uses
  %.sroa.09.015 = phi ptr [ %i.e, %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph ], [ %.sroa.09.1, %_ZN4QSetI7QStringE14const_iteratorppEv.exit ] ; 3 uses
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
  br i1 %i.ap, label %_ZN4QSetI7QStringE14const_iteratorppEv.exit, label %.lr.ph31, !llvm.loop !58

.lr.ph31:                                         ; preds = %.lr.ph31.preheader, %bb.g
  %i.aq = phi i64 [ %i.ao, %bb.g ], [ %i.al, %.lr.ph31.preheader ] ; 4 uses
  %i.ar = lshr i64 %i.aq, 7
  %i.as = getelementptr [144 x i8], ptr %i.an, i64 %i.ar
  %i.at = and i64 %i.aq, 127
  %i.au = getelementptr i8, ptr %i.as, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1
  %.not.i.i.i.i8 = icmp eq i8 %i.av, -1
  br i1 %.not.i.i.i.i8, label %bb.g, label %._ZN4QSetI7QStringE14const_iteratorppEv.exit_crit_edge34, !llvm.loop !58

._ZN4QSetI7QStringE14const_iteratorppEv.exit_crit_edge34: ; preds = %.lr.ph31
  br label %_ZN4QSetI7QStringE14const_iteratorppEv.exit, !llvm.loop !58

_ZN4QSetI7QStringE14const_iteratorppEv.exit:      ; preds = %bb.g, %._ZN4QSetI7QStringE14const_iteratorppEv.exit_crit_edge34, %_ZN5QListI7QStringE6appendERKS0_.exit
  %.sroa.09.1 = phi ptr [ %.sroa.09.015, %._ZN4QSetI7QStringE14const_iteratorppEv.exit_crit_edge34 ], [ null, %_ZN5QListI7QStringE6appendERKS0_.exit ], [ null, %bb.g ] ; 2 uses
  %.sroa.8.1 = phi i64 [ %i.aq, %._ZN4QSetI7QStringE14const_iteratorppEv.exit_crit_edge34 ], [ 0, %_ZN5QListI7QStringE6appendERKS0_.exit ], [ 0, %bb.g ] ; 2 uses
  %i.aw = icmp ne ptr %.sroa.09.1, null
  %i.ax = icmp ne i64 %.sroa.8.1, 0
  %or.cond = or i1 %i.aw, %i.ax
  br i1 %or.cond, label %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread, label %._crit_edge, !llvm.loop !59

bb.h:                                             ; preds = %_ZNK4QSetI7QStringE4sizeEv.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i, %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

._crit_edge:                                      ; preds = %bb.f, %_ZN4QSetI7QStringE14const_iteratorppEv.exit, %bb.c, %bb.e
  ret void

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.az, %bb.i ], [ %i.ay, %bb.h ]
  tail call void @_ZN5QListI7QStringED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK9QTreeView11columnWidthEi(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget13setFixedWidthEi(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QListI7QStringED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.j, i64 noundef 2, i64 noundef 8) #20
  br label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i:       ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.k = getelementptr i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !25

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i: ; preds = %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i, %bb.b
  %i.l = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.l, i64 noundef 24, i64 noundef 8) #20
  br label %_ZN17QArrayDataPointerI7QStringED2Ev.exit

_ZN17QArrayDataPointerI7QStringED2Ev.exit:        ; preds = %bb.a, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN9QComboBox11setEditableEb(ptr noundef align 8 dereferenceable_or_null(40), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK8QVariant8toStringEv(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(32)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN13DecodeAsModel11entryStringEPKcPKv(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN9QComboBox15setCurrentIndexEi(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZNK19QStyledItemDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndex(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef, ptr noundef align 8 dereferenceable(208), ptr noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK9QComboBox5countEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget21setAutoFillBackgroundEb(ptr noundef align 8 dereferenceable_or_null(40), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK16DecodeAsDelegate13destroyEditorEP7QWidgetRK11QModelIndex(ptr noundef align 8 dereferenceable_or_null(48) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QVariant, align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 4
  br i1 %i.c, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK9QComboBox5countEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.012 = phi i32 [ %i.k, %bb.e ], [ 0, %.preheader ] ; 2 uses
  call void @_ZNK9QComboBox8itemDataEii(ptr dead_on_unwind nonnull writable sret(%class.QVariant) align 8 %3, ptr noundef align 8 dereferenceable_or_null(40) %1, i32 noundef %.012, i32 noundef 256)
  %i.f = invoke noundef ptr @_ZN14VariantPointerI17_dissector_info_tE5asPtrE8QVariant(ptr noundef nonnull align 8 %3)
          to label %bb.b unwind label %bb.f       ; 4 uses

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN17_dissector_info_tD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.c
  %i.i = atomicrmw sub ptr %i.h, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.i, 1
  br i1 %.not.i.i.i, label %bb.d, label %_ZN17_dissector_info_tD2Ev.exit

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.j = load ptr, ptr %i.f, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.j, i64 noundef 2, i64 noundef 8) #20
  br label %_ZN17_dissector_info_tD2Ev.exit

_ZN17_dissector_info_tD2Ev.exit:                  ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.d
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 56) #23
  br label %bb.e

bb.e:                                             ; preds = %_ZN17_dissector_info_tD2Ev.exit, %bb.b
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %3) #20
  %i.k = add nuw nsw i32 %.012, 1                 ; 2 uses
  %i.l = call noundef i32 @_ZNK9QComboBox5countEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit, !llvm.loop !60

bb.f:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %3) #20
  resume { ptr, i32 } %i.n

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.a
  call void @_ZNK21QAbstractItemDelegate13destroyEditorEP7QWidgetRK11QModelIndex(ptr noundef align 8 dereferenceable_or_null(16) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef ptr @_ZN14VariantPointerI17_dissector_info_tE5asPtrE8QVariant(ptr noundef align 8 %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QMetaType, align 8           ; 6 uses
  %2 = alloca %class.QMetaType, align 8           ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, -4                         ; 3 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.e, ptr %1, align 8
  store ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperIPvE8metaTypeE, ptr %2, align 8
  %i.f = icmp eq i64 %i.d, ptrtoint (ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperIPvE8metaTypeE to i64)
  br i1 %i.f, label %_Zeq9QMetaTypeS_.exit.thread.i.i, label %bb.b

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
end_hunk_0
