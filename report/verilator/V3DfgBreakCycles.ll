inline.NumInlined: 4049
inline.NumDeleted: 1674
begin_hunk_0_@_ZN16V3DfgBreakCycles15IndependentBits5visitEP6DfgSel:bb.a
  %i.l = add i32 %i.i, -1
  %i.m = add i32 %i.l, %i.k
  %i.n = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %1)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !315
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !316
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !317
  %i.s = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number5opSelERKS_jj(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.s, i32 noundef %i.m, i32 noundef %i.i) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN16V3DfgBreakCycles15IndependentBits5visitEP9DfgShiftL(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !315  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !316
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !317  ; 4 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !316
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !317  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !318, !nonnull !86, !align !121 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !319
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %_ZNK9DfgVertex5widthEv.exit, label %bb.b, !prof !178

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.30, i32 noundef 195) ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.113)
  tail call void @_ZNK9DfgVertex15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.n) #28
  unreachable

_ZNK9DfgVertex5widthEv.exit:                      ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.o, align 8, !tbaa !280
  %i.p = icmp ne i16 %.sroa.0.0.copyload.i.i.i.i, 44
  %.not24 = icmp eq ptr %i.e, null
  %.not = select i1 %i.p, i1 true, i1 %.not24
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNK9DfgVertex5widthEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !325
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.t = tail call noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) ; 2 uses
  %.not23 = icmp ult i32 %i.t, %i.r
  %i.u = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) ; 3 uses
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number11setAllBits1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.u) ; 0 uses
  br label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsMsbER8V3Number.exit

bb.e:                                             ; preds = %bb.c
  %i.w = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.g)
  %i.x = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number8opShiftLERKS_S1_(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %i.s) ; 0 uses
  %i.y = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number10opSetRangeEjjc(ptr noundef nonnull align 8 dereferenceable(56) %i.u, i32 noundef 0, i32 noundef %i.t, i8 noundef signext 49) ; 0 uses
  br label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsMsbER8V3Number.exit

.critedge:                                        ; preds = %_ZNK9DfgVertex5widthEv.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.e)
  %i.aa = tail call noundef zeroext i1 @_ZNK8V3Number11isEqAllOnesEi(ptr noundef nonnull align 8 dereferenceable(56) %i.z, i32 noundef 0)
  br i1 %i.aa, label %bb.f, label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsMsbER8V3Number.exit

bb.f:                                             ; preds = %.critedge
  %i.ab = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) ; 7 uses
  %i.ac = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.g) ; 2 uses
  %i.ad = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12V3NumberDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %i.ac) ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !478 ; 4 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i, label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsMsbER8V3Number.exit

.lr.ph.i:                                         ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 36
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !481
  %i.al = add i8 %i.ak, -3
  %spec.select.i.i.i = icmp ult i8 %i.al, -2
  %i.am = icmp samesign ult i32 %i.ah, 129
  %i.an = load ptr, ptr %i.ab, align 8
  %spec.select.i10.i.i = select i1 %i.am, ptr %i.ab, ptr %i.an
  br i1 %spec.select.i.i.i, label %_ZNK8V3Number6bitIs1Ei.exit.thread.i, label %_ZNK12V3NumberData3numEv.exit.i.i

_ZNK12V3NumberData3numEv.exit.i.i:                ; preds = %.lr.ph.i, %bb.g
  %.011.i = phi i32 [ %i.ba, %bb.g ], [ 0, %.lr.ph.i ] ; 5 uses
  %i.ao = lshr i32 %.011.i, 5
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i.i, i64 %i.ap ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.aq, align 4, !tbaa !111
  %i.ar = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.as = and i32 %.011.i, 31
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nuw nsw i64 1, %i.at                ; 2 uses
  %i.av = and i64 %i.au, %i.ar
  %.not7.i.i = icmp eq i64 %i.av, 0
  br i1 %.not7.i.i, label %_ZNK8V3Number6bitIs1Ei.exit.thread.i, label %_ZNK8V3Number6bitIs1Ei.exit.i

_ZNK8V3Number6bitIs1Ei.exit.i:                    ; preds = %_ZNK12V3NumberData3numEv.exit.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !111
  %i.aw = zext i32 %.sroa.4.0.copyload.i.i to i64
  %i.ax = and i64 %i.au, %i.aw
  %.not8.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not8.i.i, label %bb.g, label %_ZNK8V3Number6bitIs1Ei.exit.thread.i

_ZNK8V3Number6bitIs1Ei.exit.thread.i:             ; preds = %_ZNK8V3Number6bitIs1Ei.exit.i, %_ZNK12V3NumberData3numEv.exit.i.i, %.lr.ph.i
  %.us-phi.i = phi i32 [ 0, %.lr.ph.i ], [ %.011.i, %_ZNK12V3NumberData3numEv.exit.i.i ], [ %.011.i, %_ZNK8V3Number6bitIs1Ei.exit.i ] ; 2 uses
  %i.ay = sub nsw i32 %i.ah, %.us-phi.i
  %i.az = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number10opSetRangeEjjc(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, i32 noundef %.us-phi.i, i32 noundef %i.ay, i8 noundef signext 48) ; 0 uses
  br label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsMsbER8V3Number.exit

bb.g:                                             ; preds = %_ZNK8V3Number6bitIs1Ei.exit.i
  %i.ba = add nuw nsw i32 %.011.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ba, %i.ah
  br i1 %exitcond.not.i, label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsMsbER8V3Number.exit, label %_ZNK12V3NumberData3numEv.exit.i.i, !llvm.loop !567

_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsMsbER8V3Number.exit: ; preds = %bb.g, %_ZNK8V3Number6bitIs1Ei.exit.thread.i, %bb.f, %bb.e, %bb.d, %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN16V3DfgBreakCycles15IndependentBits5visitEP9DfgShiftR(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !315  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !316
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !317  ; 4 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !316
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !317  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !318, !nonnull !86, !align !121 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !319
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %_ZNK9DfgVertex5widthEv.exit, label %bb.b, !prof !178

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.30, i32 noundef 195) ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.113)
  tail call void @_ZNK9DfgVertex15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.n) #28
  unreachable

_ZNK9DfgVertex5widthEv.exit:                      ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !325  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.q, align 8, !tbaa !280
  %i.r = icmp ne i16 %.sroa.0.0.copyload.i.i.i.i, 44
  %.not27 = icmp eq ptr %i.e, null
  %.not = select i1 %i.r, i1 true, i1 %.not27
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNK9DfgVertex5widthEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.t = tail call noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) ; 3 uses
  %.not26 = icmp ult i32 %i.t, %i.p
  %i.u = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) ; 3 uses
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number11setAllBits1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.u) ; 0 uses
  br label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsLsbER8V3Number.exit

bb.e:                                             ; preds = %bb.c
  %i.w = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.g)
  %i.x = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number8opShiftRERKS_S1_(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %i.s) ; 0 uses
  %i.y = sub nuw i32 %i.p, %i.t
  %i.z = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number10opSetRangeEjjc(ptr noundef nonnull align 8 dereferenceable(56) %i.u, i32 noundef %i.y, i32 noundef %i.t, i8 noundef signext 49) ; 0 uses
  br label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsLsbER8V3Number.exit

.critedge:                                        ; preds = %_ZNK9DfgVertex5widthEv.exit
  %i.aa = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.e)
  %i.ab = tail call noundef zeroext i1 @_ZNK8V3Number11isEqAllOnesEi(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i32 noundef 0)
  br i1 %i.ab, label %bb.f, label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsLsbER8V3Number.exit

bb.f:                                             ; preds = %.critedge
  %i.ac = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) ; 7 uses
  %i.ad = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.g) ; 2 uses
  %i.ae = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12V3NumberDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %i.ad) ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !478 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  %i.ak = load i8, ptr %i.aj, align 4
  %.fr8.i = freeze i8 %i.ak
  %i.al = add i8 %.fr8.i, -1
  %spec.select.i.i.i = icmp ult i8 %i.al, 2
  %i.am = icmp samesign ult i32 %i.ai, 129
  %i.an = load ptr, ptr %i.ac, align 8
  %spec.select.i10.i.i = select i1 %i.am, ptr %i.ac, ptr %i.an
  %i.ao = icmp sgt i32 %i.ai, 0                   ; 2 uses
  br i1 %spec.select.i.i.i, label %.split.us.i.a, label %.split.i

.split.us.i.a:                                    ; preds = %bb.f
  br i1 %i.ao, label %_ZNK12V3NumberData3numEv.exit.i.i, label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsLsbER8V3Number.exit

.split.i.a:                                       ; preds = %_ZNK8V3Number6bitIs1Ei.exit.i
  %i.ap = icmp sgt i32 %.0.in.i36, 1
  br i1 %i.ap, label %_ZNK12V3NumberData3numEv.exit.i.i, label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsLsbER8V3Number.exit, !llvm.loop !571

_ZNK12V3NumberData3numEv.exit.i.i:                ; preds = %.split.us.i.a, %.split.i.a
  %.0.in.i36 = phi i32 [ %.0.i37, %.split.i.a ], [ %i.ai, %.split.us.i.a ] ; 4 uses
  %.0.i37 = add nsw i32 %.0.in.i36, -1            ; 3 uses
  %i.aq = lshr i32 %.0.i37, 5
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i.i, i64 %i.ar ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.as, align 4, !tbaa !111
  %i.at = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.au = and i32 %.0.i37, 31
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl nuw nsw i64 1, %i.av                ; 2 uses
  %i.ax = and i64 %i.aw, %i.at
  %.not7.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not7.i.i, label %_ZNK8V3Number6bitIs1Ei.exit.thread.i, label %_ZNK8V3Number6bitIs1Ei.exit.i

_ZNK8V3Number6bitIs1Ei.exit.i:                    ; preds = %_ZNK12V3NumberData3numEv.exit.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !111
  %i.ay = zext i32 %.sroa.4.0.copyload.i.i to i64
  %i.az = and i64 %i.aw, %i.ay
  %.not8.i.i = icmp eq i64 %i.az, 0
  br i1 %.not8.i.i, label %.split.i.a, label %_ZNK8V3Number6bitIs1Ei.exit.thread.i, !llvm.loop !571

.split.i:                                         ; preds = %bb.f
  br i1 %i.ao, label %_ZNK8V3Number6bitIs1Ei.exit.thread.i, label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsLsbER8V3Number.exit

_ZNK8V3Number6bitIs1Ei.exit.thread.i:             ; preds = %_ZNK8V3Number6bitIs1Ei.exit.i, %_ZNK12V3NumberData3numEv.exit.i.i, %.split.i
  %.us-phi.i = phi i32 [ %i.ai, %.split.i ], [ %.0.in.i36, %_ZNK12V3NumberData3numEv.exit.i.i ], [ %.0.in.i36, %_ZNK8V3Number6bitIs1Ei.exit.i ]
  %i.ba = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number10opSetRangeEjjc(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i32 noundef 0, i32 noundef %.us-phi.i, i8 noundef signext 48) ; 0 uses
  br label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsLsbER8V3Number.exit

_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsLsbER8V3Number.exit: ; preds = %.split.i.a, %.split.us.i.a, %_ZNK8V3Number6bitIs1Ei.exit.thread.i, %.split.i, %bb.e, %bb.d, %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN16V3DfgBreakCycles15IndependentBits5visitEP10DfgShiftRS(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !315  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !316
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !317  ; 4 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !316
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !317  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !318, !nonnull !86, !align !121 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !319
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %_ZNK9DfgVertex5widthEv.exit, label %bb.b, !prof !178

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.30, i32 noundef 195) ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.113)
  tail call void @_ZNK9DfgVertex15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.n) #28
  unreachable

_ZNK9DfgVertex5widthEv.exit:                      ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !325  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.q, align 8, !tbaa !280
  %i.r = icmp ne i16 %.sroa.0.0.copyload.i.i.i.i, 44
  %.not35 = icmp eq ptr %i.e, null
  %.not = select i1 %i.r, i1 true, i1 %.not35
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNK9DfgVertex5widthEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.t = tail call noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) ; 3 uses
  %.not30 = icmp ult i32 %i.t, %i.p
  br i1 %.not30, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.g) ; 6 uses
  %i.v = add i32 %i.p, -1                         ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.x = load i8, ptr %i.w, align 4, !tbaa !481
  %i.y = add i8 %i.x, -3
  %spec.select.i.i = icmp ult i8 %i.y, -2
  %i.z = icmp slt i32 %i.v, 0
  %or.cond.i = or i1 %i.z, %spec.select.i.i
  br i1 %or.cond.i, label %_ZNK8V3Number6bitIs0Ei.exit.thread33, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !478
  %.fr.i.i = freeze i32 %i.ab                     ; 5 uses
  %.not.i = icmp slt i32 %i.v, %.fr.i.i
  br i1 %.not.i, label %_ZNK8V3Number6bitIs0Ei.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp slt i32 %.fr.i.i, 1
  br i1 %i.ac, label %_ZNK8V3Number6bitIs0Ei.exit.thread, label %tailrecurse.preheader.i.i

tailrecurse.preheader.i.i:                        ; preds = %bb.f
  %i.ad = add nsw i32 %.fr.i.i, -1                ; 2 uses
  %i.ae = icmp samesign ult i32 %.fr.i.i, 129
  %i.af = load ptr, ptr %i.u, align 8
  %spec.select.i7.i.i = select i1 %i.ae, ptr %i.u, ptr %i.af
  %i.ag = lshr i32 %i.ad, 5
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i.i, i64 %i.ah
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.sroa.3.0.copyload.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !tbaa !111
  %i.aj = zext i32 %.sroa.3.0.copyload.i.i to i64
  %i.ak = and i32 %i.ad, 31
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl nuw nsw i64 1, %i.al
  %i.an = and i64 %i.am, %i.aj
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_ZNK8V3Number6bitIs0Ei.exit.thread, label %_ZNK8V3Number6bitIs0Ei.exit.thread33

_ZNK8V3Number6bitIs0Ei.exit:                      ; preds = %bb.e
  %i.ap = icmp samesign ult i32 %.fr.i.i, 129
  %i.aq = load ptr, ptr %i.u, align 8
  %spec.select.i9.i = select i1 %i.ap, ptr %i.u, ptr %i.aq
  %i.ar = lshr i32 %i.v, 5
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i9.i, i64 %i.as ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.at, align 4, !tbaa !111
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !111
  %i.au = or i32 %.sroa.4.0.copyload.i, %.sroa.0.0.copyload.i
  %i.av = zext i32 %i.au to i64
  %i.aw = and i32 %i.v, 31
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nuw nsw i64 1, %i.ax
  %i.az = and i64 %i.ay, %i.av
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_ZNK8V3Number6bitIs0Ei.exit.thread, label %_ZNK8V3Number6bitIs0Ei.exit.thread33

_ZNK8V3Number6bitIs0Ei.exit.thread:               ; preds = %bb.f, %tailrecurse.preheader.i.i, %_ZNK8V3Number6bitIs0Ei.exit
  %i.bb = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %1)
  %i.bc = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number11setAllBits0Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.bb) ; 0 uses
  br label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsLsbER8V3Number.exit

_ZNK8V3Number6bitIs0Ei.exit.thread33:             ; preds = %bb.d, %tailrecurse.preheader.i.i, %_ZNK8V3Number6bitIs0Ei.exit
  %i.bd = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %1)
  %i.be = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number11setAllBits1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.bd) ; 0 uses
  br label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsLsbER8V3Number.exit

bb.g:                                             ; preds = %bb.c
  %i.bf = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) ; 2 uses
  %i.bg = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.g)
  %i.bh = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number9opShiftRSERKS_S1_j(ptr noundef nonnull align 8 dereferenceable(56) %i.bf, ptr noundef nonnull align 8 dereferenceable(56) %i.bg, ptr noundef nonnull align 8 dereferenceable(56) %i.s, i32 noundef %i.p) ; 0 uses
  %i.bi = sub nuw i32 %i.p, %i.t
  %i.bj = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number10opSetRangeEjjc(ptr noundef nonnull align 8 dereferenceable(56) %i.bf, i32 noundef %i.bi, i32 noundef %i.t, i8 noundef signext 49) ; 0 uses
  br label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsLsbER8V3Number.exit

.critedge:                                        ; preds = %_ZNK9DfgVertex5widthEv.exit
  %i.bk = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.e)
  %i.bl = tail call noundef zeroext i1 @_ZNK8V3Number11isEqAllOnesEi(ptr noundef nonnull align 8 dereferenceable(56) %i.bk, i32 noundef 0)
  br i1 %i.bl, label %bb.h, label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsLsbER8V3Number.exit

bb.h:                                             ; preds = %.critedge
  %i.bm = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) ; 7 uses
  %i.bn = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.g) ; 2 uses
  %i.bo = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12V3NumberDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(56) %i.bm, ptr noundef nonnull align 8 dereferenceable(56) %i.bn) ; 0 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !478 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  %i.bu = load i8, ptr %i.bt, align 4
  %.fr8.i = freeze i8 %i.bu
  %i.bv = add i8 %.fr8.i, -1
  %spec.select.i.i.i = icmp ult i8 %i.bv, 2
  %i.bw = icmp samesign ult i32 %i.bs, 129
  %i.bx = load ptr, ptr %i.bm, align 8
  %spec.select.i10.i.i = select i1 %i.bw, ptr %i.bm, ptr %i.bx
  %i.by = icmp sgt i32 %i.bs, 0                   ; 2 uses
  br i1 %spec.select.i.i.i, label %.split.us.i.a, label %.split.i

.split.us.i.a:                                    ; preds = %bb.h
  br i1 %i.by, label %_ZNK12V3NumberData3numEv.exit.i.i, label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsLsbER8V3Number.exit

.split.i.a:                                       ; preds = %_ZNK8V3Number6bitIs1Ei.exit.i
  %i.bz = icmp sgt i32 %.0.in.i45, 1
  br i1 %i.bz, label %_ZNK12V3NumberData3numEv.exit.i.i, label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsLsbER8V3Number.exit, !llvm.loop !571

_ZNK12V3NumberData3numEv.exit.i.i:                ; preds = %.split.us.i.a, %.split.i.a
  %.0.in.i45 = phi i32 [ %.0.i3146, %.split.i.a ], [ %i.bs, %.split.us.i.a ] ; 4 uses
  %.0.i3146 = add nsw i32 %.0.in.i45, -1          ; 3 uses
  %i.ca = lshr i32 %.0.i3146, 5
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i.i, i64 %i.cb ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.cc, align 4, !tbaa !111
  %i.cd = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.ce = and i32 %.0.i3146, 31
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = shl nuw nsw i64 1, %i.cf                ; 2 uses
  %i.ch = and i64 %i.cg, %i.cd
  %.not7.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not7.i.i, label %_ZNK8V3Number6bitIs1Ei.exit.thread.i, label %_ZNK8V3Number6bitIs1Ei.exit.i

_ZNK8V3Number6bitIs1Ei.exit.i:                    ; preds = %_ZNK12V3NumberData3numEv.exit.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !111
  %i.ci = zext i32 %.sroa.4.0.copyload.i.i to i64
  %i.cj = and i64 %i.cg, %i.ci
  %.not8.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not8.i.i, label %.split.i.a, label %_ZNK8V3Number6bitIs1Ei.exit.thread.i, !llvm.loop !571

.split.i:                                         ; preds = %bb.h
  br i1 %i.by, label %_ZNK8V3Number6bitIs1Ei.exit.thread.i, label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsLsbER8V3Number.exit

_ZNK8V3Number6bitIs1Ei.exit.thread.i:             ; preds = %_ZNK8V3Number6bitIs1Ei.exit.i, %_ZNK12V3NumberData3numEv.exit.i.i, %.split.i
  %.us-phi.i = phi i32 [ %i.bs, %.split.i ], [ %.0.in.i45, %_ZNK12V3NumberData3numEv.exit.i.i ], [ %.0.in.i45, %_ZNK8V3Number6bitIs1Ei.exit.i ]
  %i.ck = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number10opSetRangeEjjc(ptr noundef nonnull align 8 dereferenceable(56) %i.bm, i32 noundef 0, i32 noundef %.us-phi.i, i8 noundef signext 48) ; 0 uses
  br label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsLsbER8V3Number.exit

_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsLsbER8V3Number.exit: ; preds = %.split.i.a, %.split.us.i.a, %_ZNK8V3Number6bitIs1Ei.exit.thread.i, %.split.i, %_ZNK8V3Number6bitIs0Ei.exit.thread, %_ZNK8V3Number6bitIs0Ei.exit.thread33, %bb.g, %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN16V3DfgBreakCycles15IndependentBits5visitEP6DfgSub(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !315
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !316
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !317
  %i.f = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.e)
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !315
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !316
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !317
  %i.k = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.j)
  %i.l = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number5opAndERKS_S1_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.k) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !478  ; 4 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i, label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsMsbER8V3Number.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.q = load i8, ptr %i.p, align 4, !tbaa !481
  %i.r = add i8 %i.q, -3
  %spec.select.i.i.i = icmp ult i8 %i.r, -2
  %i.s = icmp samesign ult i32 %i.n, 129
  %i.t = load ptr, ptr %i.a, align 8
  %spec.select.i10.i.i = select i1 %i.s, ptr %i.a, ptr %i.t
  br i1 %spec.select.i.i.i, label %_ZNK8V3Number6bitIs1Ei.exit.thread.i, label %_ZNK12V3NumberData3numEv.exit.i.i

_ZNK12V3NumberData3numEv.exit.i.i:                ; preds = %.lr.ph.i, %bb.b
  %.011.i = phi i32 [ %i.ag, %bb.b ], [ 0, %.lr.ph.i ] ; 5 uses
  %i.u = lshr i32 %.011.i, 5
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i.i, i64 %i.v ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.w, align 4, !tbaa !111
  %i.x = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.y = and i32 %.011.i, 31
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw nsw i64 1, %i.z                 ; 2 uses
  %i.ab = and i64 %i.aa, %i.x
  %.not7.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not7.i.i, label %_ZNK8V3Number6bitIs1Ei.exit.thread.i, label %_ZNK8V3Number6bitIs1Ei.exit.i

_ZNK8V3Number6bitIs1Ei.exit.i:                    ; preds = %_ZNK12V3NumberData3numEv.exit.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !111
  %i.ac = zext i32 %.sroa.4.0.copyload.i.i to i64
  %i.ad = and i64 %i.aa, %i.ac
  %.not8.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not8.i.i, label %bb.b, label %_ZNK8V3Number6bitIs1Ei.exit.thread.i

_ZNK8V3Number6bitIs1Ei.exit.thread.i:             ; preds = %_ZNK8V3Number6bitIs1Ei.exit.i, %_ZNK12V3NumberData3numEv.exit.i.i, %.lr.ph.i
  %.us-phi.i = phi i32 [ 0, %.lr.ph.i ], [ %.011.i, %_ZNK12V3NumberData3numEv.exit.i.i ], [ %.011.i, %_ZNK8V3Number6bitIs1Ei.exit.i ] ; 2 uses
  %i.ae = sub nsw i32 %i.n, %.us-phi.i
  %i.af = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number10opSetRangeEjjc(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i32 noundef %.us-phi.i, i32 noundef %i.ae, i8 noundef signext 48) ; 0 uses
  br label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsMsbER8V3Number.exit

bb.b:                                             ; preds = %_ZNK8V3Number6bitIs1Ei.exit.i
  %i.ag = add nuw nsw i32 %.011.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ag, %i.n
  br i1 %exitcond.not.i, label %_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsMsbER8V3Number.exit, label %_ZNK12V3NumberData3numEv.exit.i.i, !llvm.loop !567

_ZN16V3DfgBreakCycles15IndependentBits15floodTowardsMsbER8V3Number.exit: ; preds = %bb.b, %bb.a, %_ZNK8V3Number6bitIs1Ei.exit.thread.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN16V3DfgBreakCycles15IndependentBits5visitEP12DfgVarPacked(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !277  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load i32, ptr %i.c, align 8, !tbaa !333
  %i.e = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !111
  %i.f = icmp eq i32 %i.d, %i.e                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = and i64 %i.h, 8
  %i.j = icmp ne i64 %i.i, 0
  %i.k = select i1 %i.f, i1 %i.j, i1 false
  br i1 %i.k, label %_ZNK12DfgVertexVar10isVolatileEv.exit.thread, label %_ZNK12DfgVertexVar10isVolatileEv.exit

_ZNK12DfgVertexVar10isVolatileEv.exit:            ; preds = %bb.a
  %i.l = and i64 %i.h, 2
  %i.m = icmp ne i64 %i.l, 0
  %i.n = select i1 %i.f, i1 %i.m, i1 false
  br i1 %i.n, label %_ZNK12DfgVertexVar10isVolatileEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK12DfgVertexVar10isVolatileEv.exit
  %i.o = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !315  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !316
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !317
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !316
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !317  ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.v) ; 2 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12V3NumberDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 8 dereferenceable(56) %i.w) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN16V3DfgBreakCycles15IndependentBits19propagateFromDriverER8V3NumberPK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef %i.s)
  br label %_ZNK12DfgVertexVar10isVolatileEv.exit.thread

_ZNK12DfgVertexVar10isVolatileEv.exit.thread:     ; preds = %bb.a, %_ZNK12DfgVertexVar10isVolatileEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN16V3DfgBreakCycles15IndependentBits5visitEP6DfgXor(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !315
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !316
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !317
  %i.f = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.e)
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !315
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !316
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !317
  %i.k = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN16V3DfgBreakCycles15IndependentBits4maskERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.j)
  %i.l = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number5opAndERKS_S1_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.k) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvR9DfgVertexEZN16V3DfgBreakCycles15IndependentBitsC1ER8DfgGraphRKNS3_7SccInfoEEUlS1_E_E9_M_invokeERKSt9_Any_dataS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !344
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !315
  %.not.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt10__invoke_rIvRZN16V3DfgBreakCycles15IndependentBitsC1ER8DfgGraphRKNS0_7SccInfoEEUlR9DfgVertexE_JS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !254    ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !572
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !574, !nonnull !86, !align !121
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !575, !nonnull !86, !align !121
  tail call void @_ZN16V3DfgBreakCycles15IndependentBits12dfsPostOrderERSt13unordered_setIP9DfgVertexSt4hashIS3_ESt8equal_toIS3_ESaIS3_EERSt6vectorIS3_S8_ERS2_(ptr noundef nonnull align 8 dereferenceable(160) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(96) %1)
  br label %_ZSt10__invoke_rIvRZN16V3DfgBreakCycles15IndependentBitsC1ER8DfgGraphRKNS0_7SccInfoEEUlR9DfgVertexE_JS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit

_ZSt10__invoke_rIvRZN16V3DfgBreakCycles15IndependentBitsC1ER8DfgGraphRKNS0_7SccInfoEEUlR9DfgVertexE_JS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvR9DfgVertexEZN16V3DfgBreakCycles15IndependentBitsC1ER8DfgGraphRKNS3_7SccInfoEEUlS1_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN16V3DfgBreakCycles15IndependentBitsC1ER8DfgGraphRKNS1_7SccInfoEEUlR9DfgVertexE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN16V3DfgBreakCycles15IndependentBitsC1ER8DfgGraphRKNS_7SccInfoEEUlR9DfgVertexE_, ptr %0, align 8, !tbaa !252
  br label %_ZNSt14_Function_base13_Base_managerIZN16V3DfgBreakCycles15IndependentBitsC1ER8DfgGraphRKNS1_7SccInfoEEUlR9DfgVertexE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !254
  store ptr %i.a, ptr %0, align 8, !tbaa !254
  br label %_ZNSt14_Function_base13_Base_managerIZN16V3DfgBreakCycles15IndependentBitsC1ER8DfgGraphRKNS1_7SccInfoEEUlR9DfgVertexE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !254
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !576
  store ptr %i.c, ptr %0, align 8, !tbaa !254
  br label %_ZNSt14_Function_base13_Base_managerIZN16V3DfgBreakCycles15IndependentBitsC1ER8DfgGraphRKNS1_7SccInfoEEUlR9DfgVertexE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !254    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN16V3DfgBreakCycles15IndependentBitsC1ER8DfgGraphRKNS1_7SccInfoEEUlR9DfgVertexE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #25
  br label %_ZNSt14_Function_base13_Base_managerIZN16V3DfgBreakCycles15IndependentBitsC1ER8DfgGraphRKNS1_7SccInfoEEUlR9DfgVertexE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN16V3DfgBreakCycles15IndependentBitsC1ER8DfgGraphRKNS1_7SccInfoEEUlR9DfgVertexE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}
end_hunk_0
