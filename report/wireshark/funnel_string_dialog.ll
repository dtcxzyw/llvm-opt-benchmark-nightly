Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/funnel_string_dialog?download=true
inline.NumInlined: 403
inline.NumDeleted: 234
begin_hunk_0_@_ZN18FunnelStringDialogC2EP7QWidget7QString5QListISt4pairIS2_S2_EEPFvPPcPvES9_PFvS9_E:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noalias !16 ; 2 uses
  store i64 %i.af, ptr %i.ad, align 8, !alias.scope !16
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate21qMakeForeachContainerIRK5QListISt4pairI7QStringS3_EEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOSA_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = atomicrmw add ptr %i.z, i32 1 acq_rel, align 4, !noalias !16 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIRK5QListISt4pairI7QStringS3_EEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOSA_.exit

_ZN9QtPrivate21qMakeForeachContainerIRK5QListISt4pairI7QStringS3_EEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOSA_.exit: ; preds = %bb.i, %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  store ptr %i.ac, ptr %i.ah, align 8, !alias.scope !16
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %.idx = mul i64 %i.af, 48                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ac, i64 %.idx
  store ptr %i.aj, ptr %i.ai, align 8, !alias.scope !16
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i32 1, ptr %i.ak, align 8, !alias.scope !16
  %.not58 = icmp eq i64 %.idx, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9QtPrivate21qMakeForeachContainerIRK5QListISt4pairI7QStringS3_EEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOSA_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.am = mul i32 %i.y, 20
  %i.an = getelementptr i8, ptr %0, i64 88
  br label %bb.y

._crit_edge:                                      ; preds = %bb.ah, %_ZN9QtPrivate21qMakeForeachContainerIRK5QListISt4pairI7QStringS3_EEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOSA_.exit
  %i.ao = load ptr, ptr %11, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListISt4pairI7QStringS3_EEED2Ev.exit, label %_ZN17QArrayDataPointerISt4pairI7QStringS1_EE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerISt4pairI7QStringS1_EE5derefEv.exit.i.i.i: ; preds = %._crit_edge
  %i.ap = atomicrmw add ptr %i.ao, i32 -1 acq_rel, align 4
  %.not.i.i.i39 = icmp eq i32 %i.ap, 1
  br i1 %.not.i.i.i39, label %bb.k, label %_ZN9QtPrivate17QForeachContainerI5QListISt4pairI7QStringS3_EEED2Ev.exit

bb.k:                                             ; preds = %_ZN17QArrayDataPointerISt4pairI7QStringS1_EE5derefEv.exit.i.i.i
  %i.aq = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ar = load i64, ptr %i.ad, align 8
  %.idx.i.i.i.i = mul i64 %i.ar, 48               ; 2 uses
  %i.as = getelementptr i8, ptr %i.aq, i64 %.idx.i.i.i.i
  %.not4.i.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsISt4pairI7QStringS2_EE10destroyAllEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.k, %_ZSt8_DestroyISt4pairI7QStringS1_EEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ba, %_ZSt8_DestroyISt4pairI7QStringS1_EEvPT_.exit.i.i.i.i.i.i.i ], [ %i.aq, %bb.k ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN7QStringD2Ev.exit.i.i.i.i.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.av = atomicrmw add ptr %i.au, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.av, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZN7QStringD2Ev.exit.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = load ptr, ptr %i.at, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aw, i64 noundef 2, i64 noundef 8) #20
  br label %_ZN7QStringD2Ev.exit.i.i.i.i.i.i.i.i.i

_ZN7QStringD2Ev.exit.i.i.i.i.i.i.i.i.i:           ; preds = %bb.l, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.ax = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairI7QStringS1_EEvPT_.exit.i.i.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %_ZN7QStringD2Ev.exit.i.i.i.i.i.i.i.i.i
  %i.ay = atomicrmw add ptr %i.ax, i32 -1 acq_rel, align 4
  %.not.i.i3.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ay, 1
  br i1 %.not.i.i3.i.i.i.i.i.i.i.i.i, label %bb.m, label %_ZSt8_DestroyISt4pairI7QStringS1_EEvPT_.exit.i.i.i.i.i.i.i

bb.m:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  %i.az = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.az, i64 noundef 2, i64 noundef 8) #20
  br label %_ZSt8_DestroyISt4pairI7QStringS1_EEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt4pairI7QStringS1_EEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.m, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i.i.i.i.i.i.i.i.i, %_ZN7QStringD2Ev.exit.i.i.i.i.i.i.i.i.i
  %i.ba = getelementptr i8, ptr %.05.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.as
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsISt4pairI7QStringS2_EE10destroyAllEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZN9QtPrivate16QGenericArrayOpsISt4pairI7QStringS2_EE10destroyAllEv.exit.i.i.i: ; preds = %_ZSt8_DestroyISt4pairI7QStringS1_EEvPT_.exit.i.i.i.i.i.i.i, %bb.k
  %i.bb = load ptr, ptr %11, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bb, i64 noundef 48, i64 noundef 8) #20
  br label %_ZN9QtPrivate17QForeachContainerI5QListISt4pairI7QStringS3_EEED2Ev.exit

_ZN9QtPrivate17QForeachContainerI5QListISt4pairI7QStringS3_EEED2Ev.exit: ; preds = %._crit_edge, %_ZN17QArrayDataPointerISt4pairI7QStringS1_EE5derefEv.exit.i.i.i, %_ZN9QtPrivate16QGenericArrayOpsISt4pairI7QStringS2_EE10destroyAllEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i.i.i40 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i40, label %_ZN7QStringD2Ev.exit.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %_ZN9QtPrivate17QForeachContainerI5QListISt4pairI7QStringS3_EEED2Ev.exit
  %i.be = atomicrmw add ptr %i.bd, i32 -1 acq_rel, align 4
  %.not.i.i.i41 = icmp eq i32 %i.be, 1
  br i1 %.not.i.i.i41, label %bb.n, label %_ZN7QStringD2Ev.exit.i

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.bf = load ptr, ptr %i.bc, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bf, i64 noundef 2, i64 noundef 8) #20
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %bb.n, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %_ZN9QtPrivate17QForeachContainerI5QListISt4pairI7QStringS3_EEED2Ev.exit
  %i.bg = load ptr, ptr %10, align 8              ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i1.i, label %_ZNSt4pairI7QStringS0_ED2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i:   ; preds = %_ZN7QStringD2Ev.exit.i
  %i.bh = atomicrmw add ptr %i.bg, i32 -1 acq_rel, align 4
  %.not.i.i3.i = icmp eq i32 %i.bh, 1
  br i1 %.not.i.i3.i, label %bb.o, label %_ZNSt4pairI7QStringS0_ED2Ev.exit

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i
  %i.bi = load ptr, ptr %10, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bi, i64 noundef 2, i64 noundef 8) #20
  br label %_ZNSt4pairI7QStringS0_ED2Ev.exit

_ZNSt4pairI7QStringS0_ED2Ev.exit:                 ; preds = %_ZN7QStringD2Ev.exit.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  ret void

bb.p:                                             ; preds = %bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.q:                                             ; preds = %bb.b
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.r:                                             ; preds = %_ZN7QStringC2ERKS_.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit45

bb.s:                                             ; preds = %bb.e
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bn = load ptr, ptr %7, align 8               ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i42, label %_ZN7QStringD2Ev.exit45, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i43

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i43:    ; preds = %bb.s
  %i.bo = atomicrmw add ptr %i.bn, i32 -1 acq_rel, align 4
  %.not.i.i44 = icmp eq i32 %i.bo, 1
  br i1 %.not.i.i44, label %bb.t, label %_ZN7QStringD2Ev.exit45

bb.t:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i43
  %i.bp = load ptr, ptr %7, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bp, i64 noundef 2, i64 noundef 8) #20
  br label %_ZN7QStringD2Ev.exit45

_ZN7QStringD2Ev.exit45:                           ; preds = %bb.t, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i43, %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.r ], [ %i.bm, %bb.s ], [ %i.bm, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i43 ], [ %i.bm, %bb.t ]
  %i.bq = load ptr, ptr %8, align 16              ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i46, label %_ZN7QStringD2Ev.exit49, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i47

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i47:    ; preds = %_ZN7QStringD2Ev.exit45
  %i.br = atomicrmw add ptr %i.bq, i32 -1 acq_rel, align 4
  %.not.i.i48 = icmp eq i32 %i.br, 1
  br i1 %.not.i.i48, label %bb.u, label %_ZN7QStringD2Ev.exit49

bb.u:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i47
  %i.bs = load ptr, ptr %8, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bs, i64 noundef 2, i64 noundef 8) #20
  br label %_ZN7QStringD2Ev.exit49

_ZN7QStringD2Ev.exit49:                           ; preds = %_ZN7QStringD2Ev.exit45, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i47, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.am

bb.v:                                             ; preds = %_ZN7QStringD2Ev.exit38
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %_ZNK7QWidget11fontMetricsEv.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12QFontMetricsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %9) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn25 = phi { ptr, i32 } [ %i.bu, %bb.w ], [ %i.bt, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.am

bb.y:                                             ; preds = %.lr.ph, %bb.ah
  %i.bv = phi ptr [ %i.ac, %.lr.ph ], [ %i.cn, %bb.ah ] ; 2 uses
  %.01559 = phi i32 [ 0, %.lr.ph ], [ %i.cl, %bb.ah ] ; 3 uses
  %i.bw = call noundef align 8 dereferenceable(24) ptr @_ZN7QStringaSERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(48) %10, ptr noundef align 8 dereferenceable(48) %i.bv) #20 ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.by = call noundef align 8 dereferenceable(24) ptr @_ZN7QStringaSERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.bx) #20 ; 0 uses
  %i.bz = invoke noalias noundef dereferenceable_or_null(40) ptr @_Znwm(i64 noundef 40) #19
          to label %bb.z unwind label %bb.aj      ; 3 uses

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6QLabelC1ERK7QStringP7QWidget6QFlagsIN2Qt10WindowTypeEE(ptr noundef align 8 dereferenceable_or_null(40) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %0, i32 0)
          to label %bb.aa unwind label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.ca = load ptr, ptr %i.c, align 8
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void @_ZN11QGridLayout9addWidgetEP7QWidgetii6QFlagsIN2Qt13AlignmentFlagEE(ptr noundef align 8 dereferenceable_or_null(28) %i.cc, ptr noundef %i.bz, i32 noundef %.01559, i32 noundef 0, i32 0)
          to label %bb.ab unwind label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.cd = invoke noalias noundef dereferenceable_or_null(40) ptr @_Znwm(i64 noundef 40) #19
          to label %bb.ac unwind label %bb.aj     ; 6 uses

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN9QLineEditC1EP7QWidget(ptr noundef align 8 dereferenceable_or_null(40) %i.cd, ptr noundef %0)
          to label %bb.ad unwind label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN9QLineEdit7setTextERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.ae unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN7QWidget15setMinimumWidthEi(ptr noundef align 8 dereferenceable_or_null(40) %i.cd, i32 noundef %i.am)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cd, ptr %i.a, align 8
  %i.ce = load i64, ptr %i.an, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIP9QLineEditE7emplaceIJRS2_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %i.h, i64 noundef %i.ce, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.aj

.noexc:                                           ; preds = %bb.af
  %i.cf = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not.i.i.i.i.i.i.i50 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i.i.i50, label %_ZNK17QArrayDataPointerIP9QLineEditE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIP9QLineEditE11needsDetachEv.exit.i.i.i.i.i.i

_ZNK17QArrayDataPointerIP9QLineEditE11needsDetachEv.exit.i.i.i.i.i.i: ; preds = %.noexc
  %i.cg = load atomic i32, ptr %i.cf monotonic, align 4
  %i.ch = icmp sgt i32 %i.cg, 1
  br i1 %i.ch, label %_ZNK17QArrayDataPointerIP9QLineEditE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %bb.ag

_ZNK17QArrayDataPointerIP9QLineEditE11needsDetachEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIP9QLineEditE11needsDetachEv.exit.i.i.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerIP9QLineEditE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %i.h, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %_ZNK17QArrayDataPointerIP9QLineEditE11needsDetachEv.exit.i.i.i.i.i.i, %_ZNK17QArrayDataPointerIP9QLineEditE11needsDetachEv.exit.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ci = load ptr, ptr %i.c, align 8
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  invoke void @_ZN11QGridLayout9addWidgetEP7QWidgetii6QFlagsIN2Qt13AlignmentFlagEE(ptr noundef align 8 dereferenceable_or_null(28) %i.ck, ptr noundef %i.cd, i32 noundef %.01559, i32 noundef 1, i32 0)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.cl = add i32 %.01559, 1
  %i.cm = load ptr, ptr %i.ah, align 8
  %i.cn = getelementptr i8, ptr %i.cm, i64 48     ; 3 uses
  store ptr %i.cn, ptr %i.ah, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.ai, align 8
  %.not = icmp eq ptr %i.cn, %.sroa.0.0.copyload
  br i1 %.not, label %._crit_edge, label %bb.y, !llvm.loop !14

bb.ai:                                            ; preds = %bb.z
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef 40) #21
  br label %bb.al

bb.aj:                                            ; preds = %_ZNK17QArrayDataPointerIP9QLineEditE11needsDetachEv.exit.thread.i.i.i.i.i.i, %bb.af, %bb.y, %bb.aa, %bb.ag, %bb.ae, %bb.ad, %bb.ab
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.ac
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef 40) #21
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.ai
  %.pn27.pn = phi { ptr, i32 } [ %i.co, %bb.ai ], [ %12, %bb.ak ], [ %i.cp, %bb.aj ]
  call void @_ZN9QtPrivate17QForeachContainerI5QListISt4pairI7QStringS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable_or_null(44) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @_ZNSt4pairI7QStringS0_ED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable_or_null(48) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.am

bb.am:                                            ; preds = %bb.x, %bb.al, %_ZN7QStringD2Ev.exit49, %bb.q
  %.pn27.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.q ], [ %.pn, %_ZN7QStringD2Ev.exit49 ], [ %.pn27.pn, %bb.al ], [ %.pn25, %bb.x ]
  call void @_ZN5QListIP9QLineEditED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %i.h) #20
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.p
  %.pn27.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn27.pn.pn.pn.pn, %bb.am ], [ %i.bj, %bb.p ]
  call void @_ZN7QDialogD2Ev(ptr noundef align 8 dead_on_return(40) dereferenceable_or_null(40) %0) #20
  resume { ptr, i32 } %.pn27.pn.pn.pn.pn.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QDialogC2EP7QWidget6QFlagsIN2Qt10WindowTypeEE(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef, i32) unnamed_addr #3

; Function Attrs: nobuiltin null_pointer_is_valid allocsize(0)
declare noundef ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN21Ui_FunnelStringDialog7setupUiEP7QDialog(ptr noundef align 8 dereferenceable_or_null(24) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %i.c = alloca { i64, i64 }, align 8             ; 5 uses
  %i.d = alloca { i64, i64 }, align 8             ; 5 uses
  %2 = alloca %class.QString, align 8             ; 9 uses
  %3 = alloca %class.QSize, align 4               ; 5 uses
  %4 = alloca %class.QString, align 8             ; 6 uses
  %5 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %6 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZNK7QObject10objectNameEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, ptr noundef align 8 dereferenceable_or_null(16) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.f, 0
  %i.h = load ptr, ptr %4, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.a
  %i.i = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.i, 1
  br i1 %.not.i.i, label %bb.b, label %_ZN7QStringD2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.j = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.j, i64 noundef 2, i64 noundef 8) #20
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.a, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %i.g, label %.lr.ph.i.i.i.i.preheader, label %bb.c

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN7QStringD2Ev.exit
  call void @_ZN7QObject13setObjectNameE14QAnyStringView(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr @.str, i64 4611686018427387922)
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.preheader, %_ZN7QStringD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i32 176, ptr %3, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 66, ptr %i.k, align 4
  call void @_ZN7QWidget6resizeERK5QSize(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.l = call noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #19 ; 4 uses
  invoke void @_ZN11QVBoxLayoutC1EP7QWidget(ptr noundef align 8 dereferenceable_or_null(28) %i.l, ptr noundef %1)
          to label %_ZN14QAnyStringViewC2IA15_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit unwind label %bb.h

_ZN14QAnyStringViewC2IA15_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit: ; preds = %bb.c
  store ptr %i.l, ptr %0, align 8
  call void @_ZN7QObject13setObjectNameE14QAnyStringView(ptr noundef align 8 dereferenceable_or_null(16) %i.l, ptr @.str.1, i64 4611686018427387918)
  %i.m = call noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #19 ; 4 uses
  invoke void @_ZN11QGridLayoutC1EP7QWidget(ptr noundef align 8 dereferenceable_or_null(28) %i.m, ptr noundef null)
          to label %_ZN14QAnyStringViewC2IA17_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit unwind label %bb.i

_ZN14QAnyStringViewC2IA17_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit: ; preds = %_ZN14QAnyStringViewC2IA15_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit
  %i.n = getelementptr i8, ptr %0, i64 8          ; 2 uses
  store ptr %i.m, ptr %i.n, align 8
  call void @_ZN7QObject13setObjectNameE14QAnyStringView(ptr noundef align 8 dereferenceable_or_null(16) %i.m, ptr @.str.2, i64 4611686018427387920)
  %i.o = load ptr, ptr %0, align 8
  %i.p = load ptr, ptr %i.n, align 8
  call void @_ZN10QBoxLayout9addLayoutEP7QLayouti(ptr noundef align 8 dereferenceable_or_null(28) %i.o, ptr noundef %i.p, i32 noundef 0)
  %i.q = call noalias noundef dereferenceable_or_null(40) ptr @_Znwm(i64 noundef 40) #19 ; 4 uses
  invoke void @_ZN16QDialogButtonBoxC1EP7QWidget(ptr noundef align 8 dereferenceable_or_null(40) %i.q, ptr noundef %1)
          to label %_ZN14QAnyStringViewC2IA10_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit unwind label %bb.j

_ZN14QAnyStringViewC2IA10_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit: ; preds = %_ZN14QAnyStringViewC2IA17_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit
  %i.r = getelementptr i8, ptr %0, i64 16         ; 6 uses
  store ptr %i.q, ptr %i.r, align 8
  call void @_ZN7QObject13setObjectNameE14QAnyStringView(ptr noundef align 8 dereferenceable_or_null(16) %i.q, ptr @.str.3, i64 4611686018427387913)
  %i.s = load ptr, ptr %i.r, align 8
  call void @_ZN16QDialogButtonBox14setOrientationEN2Qt11OrientationE(ptr noundef align 8 dereferenceable_or_null(40) %i.s, i32 noundef 1)
  %i.t = load ptr, ptr %i.r, align 8
  call void @_ZN16QDialogButtonBox18setStandardButtonsE6QFlagsINS_14StandardButtonEE(ptr noundef align 8 dereferenceable_or_null(40) %i.t, i32 4195328)
  %i.u = load ptr, ptr %0, align 8
  %i.v = load ptr, ptr %i.r, align 8
  call void @_ZN10QBoxLayout9addWidgetEP7QWidgeti6QFlagsIN2Qt13AlignmentFlagEE(ptr noundef align 8 dereferenceable_or_null(28) %i.u, ptr noundef %i.v, i32 noundef 0, i32 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN16QCoreApplication9translateEPKcS1_S1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, ptr noundef @.str, ptr noundef @.str.4, ptr noundef null, i32 noundef -1)
  invoke void @_ZN7QWidget14setWindowTitleERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN14QAnyStringViewC2IA10_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit
  %i.w = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZN21Ui_FunnelStringDialog13retranslateUiEP7QDialog.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.d
  %i.x = atomicrmw add ptr %i.w, i32 -1 acq_rel, align 4
  %.not.i.i.i48 = icmp eq i32 %i.x, 1
  br i1 %.not.i.i.i48, label %bb.e, label %_ZN21Ui_FunnelStringDialog13retranslateUiEP7QDialog.exit

bb.e:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.y = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.y, i64 noundef 2, i64 noundef 8) #20
  br label %_ZN21Ui_FunnelStringDialog13retranslateUiEP7QDialog.exit

bb.f:                                             ; preds = %_ZN14QAnyStringViewC2IA10_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i2.i, label %_ZN7QStringD2Ev.exit5.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i:   ; preds = %bb.f
  %i.ab = atomicrmw add ptr %i.aa, i32 -1 acq_rel, align 4
  %.not.i.i4.i = icmp eq i32 %i.ab, 1
  br i1 %.not.i.i4.i, label %bb.g, label %_ZN7QStringD2Ev.exit5.i

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i
  %i.ac = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ac, i64 noundef 2, i64 noundef 8) #20
  br label %_ZN7QStringD2Ev.exit5.i

common.resume:                                    ; preds = %bb.h, %bb.i, %bb.j, %_ZN7QStringD2Ev.exit5.i
  %common.resume.op = phi { ptr, i32 } [ %i.z, %_ZN7QStringD2Ev.exit5.i ], [ %i.an, %bb.j ], [ %i.am, %bb.i ], [ %i.al, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_ZN7QStringD2Ev.exit5.i:                          ; preds = %bb.g, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %common.resume

_ZN21Ui_FunnelStringDialog13retranslateUiEP7QDialog.exit: ; preds = %bb.d, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.ad = load ptr, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 ptrtoint (ptr @_ZN16QDialogButtonBox8acceptedEv to i64), ptr %i.c, align 8, !noalias !21
  %.fca.1.gep14.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.fca.1.gep14.i, align 8, !noalias !21
  store i64 441, ptr %i.d, align 8, !noalias !21
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !noalias !21
  %i.ae = call noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #19, !noalias !21 ; 5 uses
  store i32 1, ptr %i.ae, align 4, !noalias !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM7QDialogFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.af, align 8, !noalias !21
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 441, ptr %i.ag, align 8, !noalias !21
  %.repack7.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 0, ptr %.repack7.i.i, align 8, !noalias !21
  call void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %5, ptr noundef %i.ad, ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef %i.ae, i32 noundef 0, ptr noundef null, ptr noundef @_ZN16QDialogButtonBox16staticMetaObjectE)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #20
  %i.ah = load ptr, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 ptrtoint (ptr @_ZN16QDialogButtonBox8rejectedEv to i64), ptr %i.a, align 8, !noalias !22
  %.fca.1.gep14.i52 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep14.i52, align 8, !noalias !22
  store i64 449, ptr %i.b, align 8, !noalias !22
  %.fca.1.gep.i53 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep.i53, align 8, !noalias !22
  %i.ai = call noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #19, !noalias !22 ; 5 uses
  store i32 1, ptr %i.ai, align 4, !noalias !22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM7QDialogFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.aj, align 8, !noalias !22
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 449, ptr %i.ak, align 8, !noalias !22
  %.repack7.i.i54 = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i64 0, ptr %.repack7.i.i54, align 8, !noalias !22
  call void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %6, ptr noundef %i.ah, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef %i.ai, i32 noundef 0, ptr noundef null, ptr noundef @_ZN16QDialogButtonBox16staticMetaObjectE)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #20
  call void @_ZN11QMetaObject18connectSlotsByNameEP7QObject(ptr noundef %1)
  ret void

bb.h:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef 32) #21
end_hunk_0
