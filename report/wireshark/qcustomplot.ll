Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN11QCustomPlot20processRectSelectionE5QRectP11QMouseEvent:bb.a

.noexc134:                                        ; preds = %bb.af
  %i.di = extractvalue { ptr, ptr } %i.dh, 0      ; 3 uses
  %i.dj = extractvalue { ptr, ptr } %i.dh, 1      ; 2 uses
  %i.dk = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i9.i = icmp eq ptr %i.dk, null
  br i1 %.not.i9.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %.noexc134
  %i.dl = atomicrmw sub ptr %i.dk, i32 1 acq_rel, align 4
  %.not5.i.i = icmp eq i32 %i.dl, 1
  br i1 %.not5.i.i, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.dm = load ptr, ptr %5, align 8               ; 4 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = getelementptr i8, ptr %i.dm, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiS0_IP20QCPAbstractPlottable16QCPDataSelectionEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable_or_null(48) %i.do, ptr noundef %i.dq)
          to label %_ZN8QMapDataISt8multimapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionESt4lessIiESaIS1_IKiS5_EEEED2Ev.exit.i.i133 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #52
  unreachable

_ZN8QMapDataISt8multimapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionESt4lessIiESaIS1_IKiS5_EEEED2Ev.exit.i.i133: ; preds = %bb.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef 56) #53
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN8QMapDataISt8multimapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionESt4lessIiESaIS1_IKiS5_EEEED2Ev.exit.i.i133, %bb.ah, %bb.ag, %.noexc134
  store ptr %i.di, ptr %5, align 8
  %.not4.i.i = icmp eq ptr %i.di, null
  br i1 %.not4.i.i, label %_ZN9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE5eraseENS5_14const_iteratorE.exit.backedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dt = atomicrmw add ptr %i.di, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE5eraseENS5_14const_iteratorE.exit.backedge

_ZN9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE5eraseENS5_14const_iteratorE.exit.backedge: ; preds = %bb.al, %bb.ak, %bb.ad, %bb.ae
  %storemerge.be = phi ptr [ null, %bb.ad ], [ %i.dj, %bb.al ], [ %i.dj, %bb.ak ], [ %i.de, %bb.ae ]
  br label %_ZN9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE5eraseENS5_14const_iteratorE.exit

bb.am:                                            ; preds = %bb.ac
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP20QCPAbstractPlottableEED2Ev.exit91

bb.an:                                            ; preds = %_ZN9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE5eraseENS5_14const_iteratorE.exit
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP20QCPAbstractPlottableEED2Ev.exit91

bb.ao:                                            ; preds = %bb.af, %bb.ae
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP20QCPAbstractPlottableEED2Ev.exit91

_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE7isEmptyEv.exit.thread: ; preds = %.lr.ph.i93, %bb.ab, %_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE7isEmptyEv.exit, %_ZN9QtPrivate17QForeachContainerI5QListIP20QCPAbstractPlottableEED2Ev.exit
  %i.dx = getelementptr i8, ptr %3, i64 32
  %.sroa.0.0.copyload.i95 = load i32, ptr %i.dx, align 8 ; 2 uses
  %i.dy = getelementptr i8, ptr %0, i64 316
  %i.dz = load i32, ptr %i.dy, align 4            ; 3 uses
  %.not.i.i96 = icmp eq i32 %i.dz, 0
  %i.ea = and i32 %i.dz, %.sroa.0.0.copyload.i95
  %i.eb = icmp eq i32 %i.ea, %i.dz
  %i.ec = icmp eq i32 %.sroa.0.0.copyload.i95, 0
  %i.ed = select i1 %.not.i.i96, i1 %i.ec, i1 %i.eb ; 2 uses
  br i1 %i.ed, label %bb.bd, label %bb.ap

bb.ap:                                            ; preds = %_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE7isEmptyEv.exit.thread
  %i.ee = getelementptr i8, ptr %0, i64 192
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !829 ; 6 uses
  %i.eg = getelementptr i8, ptr %0, i64 200
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !829 ; 2 uses
  %i.ei = getelementptr i8, ptr %0, i64 208
  %i.ej = load i64, ptr %i.ei, align 8, !noalias !829
  %.not.i.i.i.i.i97 = icmp eq ptr %i.ef, null     ; 3 uses
  br i1 %.not.i.i.i.i.i97, label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP8QCPLayerEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ek = atomicrmw add ptr %i.ef, i32 1 acq_rel, align 4, !noalias !829 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP8QCPLayerEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit

_ZN9QtPrivate21qMakeForeachContainerIR5QListIP8QCPLayerEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit: ; preds = %bb.ap, %bb.aq
  %.idx230 = shl i64 %i.ej, 3                     ; 2 uses
  %i.el = getelementptr i8, ptr %i.eh, i64 %.idx230
  %.not194224 = icmp eq i64 %.idx230, 0
  br i1 %.not194224, label %._crit_edge228, label %.lr.ph227

._crit_edge228:                                   ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP8QCPLayerEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit
  %.0.lcssa = phi i8 [ 0, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP8QCPLayerEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit ], [ %.1.lcssa, %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit ] ; 3 uses
  br i1 %.not.i.i.i.i.i97, label %bb.bd, label %_ZN17QArrayDataPointerIP8QCPLayerE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIP8QCPLayerE5derefEv.exit.i.i.i: ; preds = %._crit_edge228
  %i.em = atomicrmw sub ptr %i.ef, i32 1 acq_rel, align 4
  %.not.i.i.i99 = icmp eq i32 %i.em, 1
  br i1 %.not.i.i.i99, label %bb.ar, label %bb.bd

bb.ar:                                            ; preds = %_ZN17QArrayDataPointerIP8QCPLayerE5derefEv.exit.i.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.ef, i64 noundef 8, i64 noundef 8) #51
  br label %bb.bd

.lr.ph227:                                        ; preds = %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP8QCPLayerEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit, %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit
  %.0226 = phi i8 [ %.1.lcssa, %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit ], [ 0, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP8QCPLayerEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit ] ; 2 uses
  %.sroa.10159.0225 = phi ptr [ %i.ex, %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit ], [ %i.eh, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP8QCPLayerEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit ] ; 2 uses
  %i.en = load ptr, ptr %.sroa.10159.0225, align 8 ; 3 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 56
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !830 ; 6 uses
  %i.eq = getelementptr i8, ptr %i.en, i64 64
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !830 ; 2 uses
  %i.es = getelementptr i8, ptr %i.en, i64 72
  %i.et = load i64, ptr %i.es, align 8, !noalias !830
  %.not.i.i.i.i100 = icmp eq ptr %i.ep, null      ; 3 uses
  br i1 %.not.i.i.i.i100, label %_ZN5QListIP12QCPLayerableED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %.lr.ph227
  %i.eu = atomicrmw add ptr %i.ep, i32 1 acq_rel, align 4, !noalias !830 ; 0 uses
  br label %_ZN5QListIP12QCPLayerableED2Ev.exit

_ZN5QListIP12QCPLayerableED2Ev.exit:              ; preds = %.lr.ph227, %bb.as
  %.idx231 = shl i64 %i.et, 3                     ; 2 uses
  %i.ev = getelementptr i8, ptr %i.er, i64 %.idx231
  %.not195219 = icmp eq i64 %.idx231, 0
  br i1 %.not195219, label %._crit_edge223, label %.lr.ph222

._crit_edge223:                                   ; preds = %.critedge, %_ZN5QListIP12QCPLayerableED2Ev.exit
  %.1.lcssa = phi i8 [ %.0226, %_ZN5QListIP12QCPLayerableED2Ev.exit ], [ %.2, %.critedge ] ; 2 uses
  br i1 %.not.i.i.i.i100, label %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit, label %_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i.i: ; preds = %._crit_edge223
  %i.ew = atomicrmw sub ptr %i.ep, i32 1 acq_rel, align 4
  %.not.i.i.i104 = icmp eq i32 %i.ew, 1
  br i1 %.not.i.i.i104, label %bb.at, label %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit

bb.at:                                            ; preds = %_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.ep, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit

_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit: ; preds = %._crit_edge223, %_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i.i, %bb.at
  %i.ex = getelementptr i8, ptr %.sroa.10159.0225, i64 8 ; 2 uses
  %.not194 = icmp eq ptr %i.ex, %i.el
  br i1 %.not194, label %._crit_edge228, label %.lr.ph227, !llvm.loop !824

.lr.ph222:                                        ; preds = %_ZN5QListIP12QCPLayerableED2Ev.exit, %.critedge
  %.1221 = phi i8 [ %.2, %.critedge ], [ %.0226, %_ZN5QListIP12QCPLayerableED2Ev.exit ] ; 3 uses
  %.sroa.10150.0220 = phi ptr [ %i.fx, %.critedge ], [ %i.er, %_ZN5QListIP12QCPLayerableED2Ev.exit ] ; 2 uses
  %i.ey = load ptr, ptr %.sroa.10150.0220, align 8 ; 5 uses
  %i.ez = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i109 = icmp eq ptr %i.ez, null
  br i1 %.not.i109, label %_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE7isEmptyEv.exit110.thread, label %_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE7isEmptyEv.exit110

_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE7isEmptyEv.exit110: ; preds = %.lr.ph222
  %i.fa = getelementptr i8, ptr %i.ez, i64 48
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE7isEmptyEv.exit110.thread, label %bb.au

bb.au:                                            ; preds = %_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE7isEmptyEv.exit110
  %i.fd = getelementptr i8, ptr %i.ez, i64 32
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = getelementptr i8, ptr %i.fe, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8
  %.not49 = icmp eq ptr %i.fg, %i.ey
  br i1 %.not49, label %.critedge, label %_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE7isEmptyEv.exit110.thread

_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE7isEmptyEv.exit110.thread: ; preds = %.lr.ph222, %bb.au, %_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE7isEmptyEv.exit110
  %i.fh = load ptr, ptr %i.ey, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 112
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = invoke noundef i32 %i.fj(ptr noundef align 8 dereferenceable_or_null(57) %i.ey)
          to label %bb.av unwind label %bb.ay     ; 3 uses

bb.av:                                            ; preds = %_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE7isEmptyEv.exit110.thread
  %.not.i.i112 = icmp eq i32 %i.fk, 0
  %i.fl = load i32, ptr %i.e, align 8             ; 2 uses
  %i.fm = and i32 %i.fl, %i.fk
  %i.fn = icmp eq i32 %i.fm, %i.fk
  %i.fo = icmp eq i32 %i.fl, 0
  %i.fp = select i1 %.not.i.i112, i1 %i.fo, i1 %i.fn
  br i1 %i.fp, label %bb.aw, label %.critedge

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #51
  store i8 0, ptr %i.b, align 1
  %i.fq = load ptr, ptr %i.ey, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 152
  %i.fs = load ptr, ptr %i.fr, align 8
  invoke void %i.fs(ptr noundef align 8 dereferenceable_or_null(57) %i.ey, ptr noundef nonnull %i.b)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.ft = load i8, ptr %i.b, align 1, !range !175, !noundef !176
  %i.fu = or i8 %i.ft, %.1221
  %12 = icmp ne i8 %i.fu, 0
  %13 = zext i1 %12 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #51
  br label %.critedge

bb.ay:                                            ; preds = %_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE7isEmptyEv.exit110.thread
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.aw
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #51
  br label %bb.ba

.critedge:                                        ; preds = %bb.au, %bb.ax, %bb.av
  %.2 = phi i8 [ %13, %bb.ax ], [ %.1221, %bb.av ], [ %.1221, %bb.au ] ; 2 uses
  %i.fx = getelementptr i8, ptr %.sroa.10150.0220, i64 8 ; 2 uses
  %.not195 = icmp eq ptr %i.fx, %i.ev
  br i1 %.not195, label %._crit_edge223, label %.lr.ph222, !llvm.loop !825

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn50 = phi { ptr, i32 } [ %i.fw, %bb.az ], [ %i.fv, %bb.ay ] ; 3 uses
  br i1 %.not.i.i.i.i100, label %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit116, label %_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i.i114

_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i.i114: ; preds = %bb.ba
  %i.fy = atomicrmw sub ptr %i.ep, i32 1 acq_rel, align 4
  %.not.i.i.i115 = icmp eq i32 %i.fy, 1
  br i1 %.not.i.i.i115, label %bb.bb, label %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit116

bb.bb:                                            ; preds = %_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i.i114
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.ep, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit116

_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit116: ; preds = %bb.bb, %_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i.i114, %bb.ba
  br i1 %.not.i.i.i.i.i97, label %_ZN9QtPrivate17QForeachContainerI5QListIP20QCPAbstractPlottableEED2Ev.exit91, label %_ZN17QArrayDataPointerIP8QCPLayerE5derefEv.exit.i.i.i118

_ZN17QArrayDataPointerIP8QCPLayerE5derefEv.exit.i.i.i118: ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit116
  %i.fz = atomicrmw sub ptr %i.ef, i32 1 acq_rel, align 4
  %.not.i.i.i119 = icmp eq i32 %i.fz, 1
  br i1 %.not.i.i.i119, label %bb.bc, label %_ZN9QtPrivate17QForeachContainerI5QListIP20QCPAbstractPlottableEED2Ev.exit91

bb.bc:                                            ; preds = %_ZN17QArrayDataPointerIP8QCPLayerE5derefEv.exit.i.i.i118
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.ef, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP20QCPAbstractPlottableEED2Ev.exit91

bb.bd:                                            ; preds = %_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE7isEmptyEv.exit.thread, %._crit_edge228, %_ZN17QArrayDataPointerIP8QCPLayerE5derefEv.exit.i.i.i, %bb.ar
  %.3 = phi i8 [ 0, %_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE7isEmptyEv.exit.thread ], [ %.0.lcssa, %._crit_edge228 ], [ %.0.lcssa, %_ZN17QArrayDataPointerIP8QCPLayerE5derefEv.exit.i.i.i ], [ %.0.lcssa, %bb.ar ]
  %i.ga = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i121 = icmp eq ptr %i.ga, null
  %i.gb = getelementptr i8, ptr %i.ga, i64 16
  %.sroa.0.0.i.i122 = select i1 %.not.i.i121, ptr null, ptr %i.gb
  br label %bb.be

bb.be:                                            ; preds = %bb.bn, %bb.bd
  %i.gc = phi ptr [ %.pr, %bb.bn ], [ %i.ga, %bb.bd ] ; 3 uses
  %.sroa.0135.0 = phi ptr [ %i.gf, %bb.bn ], [ %.sroa.0.0.i.i122, %bb.bd ] ; 3 uses
  %.4 = phi i8 [ %.5, %bb.bn ], [ %.3, %bb.bd ]   ; 4 uses
  %.not.i.i123 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i123, label %_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE10constBeginEv.exit125, label %_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE10constBeginEv.exit125.thread

_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE10constBeginEv.exit125: ; preds = %bb.be
  %.not197 = icmp eq ptr %.sroa.0135.0, null
  br i1 %.not197, label %.split, label %bb.bf

_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE10constBeginEv.exit125.thread: ; preds = %bb.be
  %i.gd = getelementptr i8, ptr %i.gc, i64 32
  %i.ge = load ptr, ptr %i.gd, align 8
  %.not196 = icmp eq ptr %.sroa.0135.0, %i.ge
  br i1 %.not196, label %bb.bo, label %bb.bf

bb.bf:                                            ; preds = %_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE10constBeginEv.exit125.thread, %_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE10constBeginEv.exit125
  %i.gf = call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0135.0) #55 ; 3 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 40     ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8            ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 112
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = invoke noundef i32 %i.gk(ptr noundef align 8 dereferenceable_or_null(184) %i.gh)
          to label %bb.bg unwind label %bb.bj     ; 3 uses

bb.bg:                                            ; preds = %bb.bf
  %.not.i.i126 = icmp eq i32 %i.gl, 0
  %i.gm = load i32, ptr %i.e, align 8             ; 2 uses
  %i.gn = and i32 %i.gm, %i.gl
  %i.go = icmp eq i32 %i.gn, %i.gl
  %i.gp = icmp eq i32 %i.gm, 0
  %i.gq = select i1 %.not.i.i126, i1 %i.gp, i1 %i.go
  br i1 %i.gq, label %bb.bh, label %bb.bn

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #51
  store i8 0, ptr %i.c, align 1
  %i.gr = load ptr, ptr %i.gg, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  %i.gs = getelementptr i8, ptr %i.gf, i64 48
  invoke void @_ZN8QVariantC1E9QMetaTypePKv(ptr noundef nonnull align 8 dereferenceable_or_null(32) %11, ptr nonnull @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI16QCPDataSelectionE8metaTypeE, ptr noundef nonnull align 8 dereferenceable(24) %i.gs)
          to label %_ZN8QVariant9fromValueI16QCPDataSelectionEENSt9enable_ifIXsr3stdE23is_copy_constructible_vIT_EES_E4typeERKS3_.exit unwind label %bb.bk

_ZN8QVariant9fromValueI16QCPDataSelectionEENSt9enable_ifIXsr3stdE23is_copy_constructible_vIT_EES_E4typeERKS3_.exit: ; preds = %bb.bh
  %i.gt = load ptr, ptr %i.gr, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 144
  %i.gv = load ptr, ptr %i.gu, align 8
  invoke void %i.gv(ptr noundef align 8 dereferenceable_or_null(184) %i.gr, ptr noundef %3, i1 noundef zeroext %i.ed, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %i.c)
          to label %bb.bi unwind label %bb.bl

bb.bi:                                            ; preds = %_ZN8QVariant9fromValueI16QCPDataSelectionEENSt9enable_ifIXsr3stdE23is_copy_constructible_vIT_EES_E4typeERKS3_.exit
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %11) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  %i.gw = load i8, ptr %i.c, align 1, !range !175, !noundef !176
  %i.gx = or i8 %i.gw, %.4
  %14 = icmp ne i8 %i.gx, 0
  %15 = zext i1 %14 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #51
  br label %bb.bn

bb.bj:                                            ; preds = %bb.bf
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP20QCPAbstractPlottableEED2Ev.exit91

bb.bk:                                            ; preds = %bb.bh
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %_ZN8QVariant9fromValueI16QCPDataSelectionEENSt9enable_ifIXsr3stdE23is_copy_constructible_vIT_EES_E4typeERKS3_.exit
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %11) #51
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn55 = phi { ptr, i32 } [ %i.ha, %bb.bl ], [ %i.gz, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP20QCPAbstractPlottableEED2Ev.exit91

bb.bn:                                            ; preds = %bb.bi, %bb.bg
  %.5 = phi i8 [ %15, %bb.bi ], [ %.4, %bb.bg ]
  %.pr = load ptr, ptr %5, align 8
  br label %bb.be, !llvm.loop !826

.split:                                           ; preds = %_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE10constBeginEv.exit125
  %i.hb = trunc nuw i8 %.4 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br i1 %i.hb, label %bb.bs, label %.critedge67

bb.bo:                                            ; preds = %_ZNK9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEE10constBeginEv.exit125.thread
  %i.hc = trunc nuw i8 %.4 to i1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  %i.hd = atomicrmw sub ptr %i.gc, i32 1 acq_rel, align 4
  %.not2.i.i = icmp eq i32 %i.hd, 1
  br i1 %.not2.i.i, label %bb.bp, label %_ZN9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEED2Ev.exit

bb.bp:                                            ; preds = %bb.bo
  %i.he = load ptr, ptr %5, align 8               ; 4 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %_ZN9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hh = getelementptr i8, ptr %i.he, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiS0_IP20QCPAbstractPlottable16QCPDataSelectionEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable_or_null(48) %i.hg, ptr noundef %i.hi)
          to label %_ZN8QMapDataISt8multimapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionESt4lessIiESaIS1_IKiS5_EEEED2Ev.exit.i.i unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hj = landingpad { ptr, i32 }
          catch ptr null
  %i.hk = extractvalue { ptr, i32 } %i.hj, 0
  call void @__clang_call_terminate(ptr %i.hk) #52
  unreachable

_ZN8QMapDataISt8multimapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionESt4lessIiESaIS1_IKiS5_EEEED2Ev.exit.i.i: ; preds = %bb.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef 56) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br i1 %i.hc, label %bb.bs, label %.critedge67

_ZN9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEED2Ev.exit: ; preds = %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br i1 %i.hc, label %bb.bs, label %.critedge67

_ZN9QtPrivate17QForeachContainerI5QListIP20QCPAbstractPlottableEED2Ev.exit91: ; preds = %bb.bj, %bb.bm, %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit116, %_ZN17QArrayDataPointerIP8QCPLayerE5derefEv.exit.i.i.i118, %bb.bc, %bb.am, %bb.an, %bb.ao, %bb.g, %bb.z, %_ZN17QArrayDataPointerIP20QCPAbstractPlottableE5derefEv.exit.i.i.i89, %bb.aa, %bb.f
  %.pn60.pn.pn.pn.pn = phi { ptr, i32 } [ %i.du, %bb.am ], [ %i.ak, %bb.f ], [ %.pn60.pn.pn, %bb.aa ], [ %.pn55, %bb.bm ], [ %.pn50, %bb.bc ], [ %i.al, %bb.g ], [ %.pn60.pn.pn, %bb.z ], [ %.pn60.pn.pn, %_ZN17QArrayDataPointerIP20QCPAbstractPlottableE5derefEv.exit.i.i.i89 ], [ %i.dw, %bb.ao ], [ %i.dv, %bb.an ], [ %i.gy, %bb.bj ], [ %.pn50, %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit116 ], [ %.pn50, %_ZN17QArrayDataPointerIP8QCPLayerE5derefEv.exit.i.i.i118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  call void @_ZN9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  resume { ptr, i32 } %.pn60.pn.pn.pn.pn

bb.bs:                                            ; preds = %_ZN8QMapDataISt8multimapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionESt4lessIiESaIS1_IKiS5_EEEED2Ev.exit.i.i, %.split, %_ZN9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEED2Ev.exit
  call void @_ZN11QCustomPlot22selectionChangedByUserEv(ptr noundef align 8 dereferenceable_or_null(513) %0)
  %i.hl = getelementptr i8, ptr %0, i64 481       ; 2 uses
  %i.hm = load i8, ptr %i.hl, align 1, !range !175, !noundef !176
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store i8 1, ptr %i.hl, align 1
  call void @_ZN6QTimer10singleShotEiPK7QObjectPKc(i32 noundef 0, ptr noundef align 8 dereferenceable_or_null(513) %0, ptr noundef nonnull @.str.125)
  br label %_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit

.critedge67.critedge:                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  %i.ho = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i128 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i128, label %_ZN9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEED2Ev.exit131, label %bb.bu

bb.bu:                                            ; preds = %.critedge67.critedge
  %i.hp = atomicrmw sub ptr %i.ho, i32 1 acq_rel, align 4
  %.not2.i.i129 = icmp eq i32 %i.hp, 1
  br i1 %.not2.i.i129, label %bb.bv, label %_ZN9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEED2Ev.exit131

bb.bv:                                            ; preds = %bb.bu
  %i.hq = load ptr, ptr %5, align 8               ; 4 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %_ZN9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEED2Ev.exit131, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.ht = getelementptr i8, ptr %i.hq, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiS0_IP20QCPAbstractPlottable16QCPDataSelectionEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable_or_null(48) %i.hs, ptr noundef %i.hu)
          to label %_ZN8QMapDataISt8multimapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionESt4lessIiESaIS1_IKiS5_EEEED2Ev.exit.i.i130 unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hv = landingpad { ptr, i32 }
          catch ptr null
  %i.hw = extractvalue { ptr, i32 } %i.hv, 0
  call void @__clang_call_terminate(ptr %i.hw) #52
  unreachable

_ZN8QMapDataISt8multimapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionESt4lessIiESaIS1_IKiS5_EEEED2Ev.exit.i.i130: ; preds = %bb.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef 56) #53
  br label %_ZN9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEED2Ev.exit131

_ZN9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEED2Ev.exit131: ; preds = %.critedge67.critedge, %bb.bu, %bb.bv, %_ZN8QMapDataISt8multimapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionESt4lessIiESaIS1_IKiS5_EEEED2Ev.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %.critedge67

.critedge67:                                      ; preds = %_ZN8QMapDataISt8multimapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionESt4lessIiESaIS1_IKiS5_EEEED2Ev.exit.i.i, %.split, %_ZN9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEED2Ev.exit131, %bb.a, %_ZN9QMultiMapIiSt4pairIP20QCPAbstractPlottable16QCPDataSelectionEED2Ev.exit
  %i.hx = getelementptr i8, ptr %0, i64 328
  %i.hy = load ptr, ptr %i.hx, align 8            ; 2 uses
  %.not54 = icmp eq ptr %i.hy, null
  br i1 %.not54, label %_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit, label %bb.by

bb.by:                                            ; preds = %.critedge67
  %i.hz = getelementptr i8, ptr %i.hy, i64 48
  %i.ia = load ptr, ptr %i.hz, align 8
  call void @_ZN8QCPLayer6replotEv(ptr noundef align 8 dereferenceable_or_null(104) %i.ia)
  br label %_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit

_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit: ; preds = %bb.bt, %bb.bs, %.critedge67, %bb.by
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK11QCPAxisRect10plottablesEv(ptr dead_on_unwind noalias writable sret(%class.QList.11) align 8 initializes((0, 24)) %0, ptr nofree noundef readonly align 8 captures(address) dereferenceable_or_null(432) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !noalias !834 ; 6 uses
  %i.f = getelementptr i8, ptr %i.c, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !noalias !834 ; 2 uses
  %i.h = getelementptr i8, ptr %i.c, i64 136
  %i.i = load i64, ptr %i.h, align 8, !noalias !834
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null        ; 3 uses
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP20QCPAbstractPlottableEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = atomicrmw add ptr %i.e, i32 1 acq_rel, align 4, !noalias !834 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP20QCPAbstractPlottableEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit

_ZN9QtPrivate21qMakeForeachContainerIR5QListIP20QCPAbstractPlottableEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit: ; preds = %bb.a, %bb.b
  %.idx = shl i64 %i.i, 3                         ; 2 uses
  %i.k = getelementptr i8, ptr %i.g, i64 %.idx
  %.not19 = icmp eq i64 %.idx, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP20QCPAbstractPlottableEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

._crit_edge:                                      ; preds = %bb.m, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP20QCPAbstractPlottableEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListIP20QCPAbstractPlottableEED2Ev.exit, label %_ZN17QArrayDataPointerIP20QCPAbstractPlottableE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIP20QCPAbstractPlottableE5derefEv.exit.i.i.i: ; preds = %._crit_edge
  %i.m = atomicrmw sub ptr %i.e, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.m, 1
  br i1 %.not.i.i.i, label %bb.c, label %_ZN9QtPrivate17QForeachContainerI5QListIP20QCPAbstractPlottableEED2Ev.exit

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIP20QCPAbstractPlottableE5derefEv.exit.i.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.e, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP20QCPAbstractPlottableEED2Ev.exit

_ZN9QtPrivate17QForeachContainerI5QListIP20QCPAbstractPlottableEED2Ev.exit: ; preds = %._crit_edge, %_ZN17QArrayDataPointerIP20QCPAbstractPlottableE5derefEv.exit.i.i.i, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.10.020 = phi ptr [ %i.g, %.lr.ph ], [ %i.as, %bb.m ] ; 2 uses
  %i.n = load ptr, ptr %.sroa.10.020, align 8     ; 5 uses
  %i.o = getelementptr i8, ptr %i.n, i64 112
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.p, i64 4
  %i.s = load atomic i32, ptr %i.r monotonic, align 4
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.n, i64 120
  %i.v = load ptr, ptr %i.u, align 8
  br label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit

_ZNK20QCPAbstractPlottable7keyAxisEv.exit:        ; preds = %bb.f, %bb.e, %bb.d
  %i.w = phi ptr [ %i.v, %bb.f ], [ null, %bb.e ], [ null, %bb.d ]
  %i.x = getelementptr i8, ptr %i.w, i64 64
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp eq ptr %i.y, %1
  br i1 %i.z, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNK20QCPAbstractPlottable7keyAxisEv.exit
  %i.aa = getelementptr i8, ptr %i.n, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZNK20QCPAbstractPlottable9valueAxisEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %i.ab, i64 4
  %i.ae = load atomic i32, ptr %i.ad monotonic, align 4
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZNK20QCPAbstractPlottable9valueAxisEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr i8, ptr %i.n, i64 136
  %i.ah = load ptr, ptr %i.ag, align 8
  br label %_ZNK20QCPAbstractPlottable9valueAxisEv.exit

_ZNK20QCPAbstractPlottable9valueAxisEv.exit:      ; preds = %bb.i, %bb.h, %bb.g
  %i.ai = phi ptr [ %i.ah, %bb.i ], [ null, %bb.h ], [ null, %bb.g ]
  %i.aj = getelementptr i8, ptr %i.ai, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ak, %1
  br i1 %i.al, label %bb.j, label %bb.m
end_hunk_0
begin_hunk_1_@_ZN11QCPAxisRect4zoomERK6QRectFRK5QListIP7QCPAxisE:bb.a
  %i.bi = call noundef double @_ZNK7QCPAxis12pixelToCoordEd(ptr noundef nonnull align 8 dereferenceable_or_null(472) %i.o, double noundef %i.bh)
  invoke void @_ZN7QCPAxis8setRangeEdd(ptr noundef nonnull align 8 dereferenceable_or_null(472) %i.o, double noundef %i.bg, double noundef %i.bi)
          to label %bb.ad unwind label %bb.x

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN6QDebuglsEPKc.exit34
  %i.bj = getelementptr i8, ptr %.sroa.10.046, i64 8 ; 2 uses
  %.not44 = icmp eq ptr %i.bj, %i.g
  br i1 %.not44, label %._crit_edge, label %bb.d, !llvm.loop !838

bb.af:                                            ; preds = %bb.ab, %bb.y, %bb.x
  %.pn16 = phi { ptr, i32 } [ %i.az, %bb.x ], [ %i.ba, %bb.y ], [ %i.be, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.s
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %bb.af ], [ %.pn, %bb.s ]
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPAxisEED2Ev.exit38, label %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i.i36

_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i.i36: ; preds = %bb.ag
  %i.bk = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not.i.i.i37 = icmp eq i32 %i.bk, 1
  br i1 %.not.i.i.i37, label %bb.ah, label %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPAxisEED2Ev.exit38

bb.ah:                                            ; preds = %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i.i36
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPAxisEED2Ev.exit38

_ZN9QtPrivate17QForeachContainerI5QListIP7QCPAxisEED2Ev.exit38: ; preds = %bb.ag, %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i.i36, %bb.ah
  resume { ptr, i32 } %.pn16.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11QCustomPlot21processPointSelectionEP11QMouseEvent(ptr noundef align 8 dereferenceable_or_null(513) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QVariant, align 8            ; 9 uses
  %3 = alloca %class.QPointF, align 16            ; 5 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  %i.d = getelementptr i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke { double, double } @_ZNK11QEventPoint8positionEv(ptr noundef align 8 dereferenceable_or_null(8) %i.e)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { double, double } %i.f, 0
  %i.h = extractvalue { double, double } %i.f, 1
  %i.i = insertelement <2 x double> poison, double %i.g, i64 0
  %i.j = insertelement <2 x double> %i.i, double %i.h, i64 1 ; 2 uses
  %i.k = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.j)
  %i.l = fadd <2 x double> %i.j, %i.k
  %i.m = fptosi <2 x double> %i.l to <2 x i32>
  %i.n = sitofp <2 x i32> %i.m to <2 x double>
  store <2 x double> %i.n, ptr %3, align 16
  %i.o = invoke noundef ptr @_ZNK11QCustomPlot11layerableAtERK7QPointFbP8QVariant(ptr noundef align 8 dereferenceable_or_null(513) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext true, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.g       ; 6 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  %i.p = getelementptr i8, ptr %0, i64 224        ; 3 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = and i32 %i.q, 4
  %.not82 = icmp eq i32 %i.r, 0
  br i1 %.not82, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i32, ptr %i.s, align 8 ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 316
  %i.u = load i32, ptr %i.t, align 4              ; 3 uses
  %.not.i.i = icmp eq i32 %i.u, 0
  %i.v = and i32 %i.u, %.sroa.0.0.copyload.i
  %i.w = icmp eq i32 %i.v, %i.u
  %i.x = icmp eq i32 %.sroa.0.0.copyload.i, 0
  %i.y = select i1 %.not.i.i, i1 %i.x, i1 %i.w
  br i1 %i.y, label %_ZN9QtPrivate17QForeachContainerI5QListIP8QCPLayerEED2Ev.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.z = getelementptr i8, ptr %0, i64 192
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !846 ; 6 uses
  %i.ab = getelementptr i8, ptr %0, i64 200
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !846 ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 208
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !846
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null       ; 3 uses
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP8QCPLayerEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.af = atomicrmw add ptr %i.aa, i32 1 acq_rel, align 4, !noalias !846 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP8QCPLayerEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit

_ZN9QtPrivate21qMakeForeachContainerIR5QListIP8QCPLayerEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit: ; preds = %.thread, %bb.e
  %.idx = shl i64 %i.ae, 3                        ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ac, i64 %.idx
  %.not8395 = icmp eq i64 %.idx, 0
  br i1 %.not8395, label %._crit_edge99, label %.lr.ph98

._crit_edge99:                                    ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP8QCPLayerEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit
  %.019.lcssa = phi i8 [ 0, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP8QCPLayerEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit ], [ %.120.lcssa, %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit ] ; 3 uses
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListIP8QCPLayerEED2Ev.exit, label %_ZN17QArrayDataPointerIP8QCPLayerE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIP8QCPLayerE5derefEv.exit.i.i.i: ; preds = %._crit_edge99
  %i.ah = atomicrmw sub ptr %i.aa, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.ah, 1
  br i1 %.not.i.i.i, label %bb.f, label %_ZN9QtPrivate17QForeachContainerI5QListIP8QCPLayerEED2Ev.exit

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIP8QCPLayerE5derefEv.exit.i.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.aa, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP8QCPLayerEED2Ev.exit

bb.g:                                             ; preds = %bb.a, %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP8QCPLayerEED2Ev.exit55

.lr.ph98:                                         ; preds = %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP8QCPLayerEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit, %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit
  %.01997 = phi i8 [ %.120.lcssa, %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit ], [ 0, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP8QCPLayerEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit ] ; 2 uses
  %.sroa.1074.096 = phi ptr [ %i.at, %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit ], [ %i.ac, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP8QCPLayerEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit ] ; 2 uses
  %i.aj = load ptr, ptr %.sroa.1074.096, align 8  ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !847 ; 6 uses
  %i.am = getelementptr i8, ptr %i.aj, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !noalias !847 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.aj, i64 72
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !847
  %.not.i.i.i.i38 = icmp eq ptr %i.al, null       ; 3 uses
  br i1 %.not.i.i.i.i38, label %_ZN5QListIP12QCPLayerableED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph98
  %i.aq = atomicrmw add ptr %i.al, i32 1 acq_rel, align 4, !noalias !847 ; 0 uses
  br label %_ZN5QListIP12QCPLayerableED2Ev.exit

_ZN5QListIP12QCPLayerableED2Ev.exit:              ; preds = %.lr.ph98, %bb.h
  %.idx101 = shl i64 %i.ap, 3                     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.an, i64 %.idx101
  %.not8492 = icmp eq i64 %.idx101, 0
  br i1 %.not8492, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.p, %_ZN5QListIP12QCPLayerableED2Ev.exit
  %.120.lcssa = phi i8 [ %.01997, %_ZN5QListIP12QCPLayerableED2Ev.exit ], [ %.221, %bb.p ] ; 2 uses
  br i1 %.not.i.i.i.i38, label %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit, label %_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i.i: ; preds = %._crit_edge
  %i.as = atomicrmw sub ptr %i.al, i32 1 acq_rel, align 4
  %.not.i.i.i42 = icmp eq i32 %i.as, 1
  br i1 %.not.i.i.i42, label %bb.i, label %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.al, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit

_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit: ; preds = %._crit_edge, %_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i.i, %bb.i
  %i.at = getelementptr i8, ptr %.sroa.1074.096, i64 8 ; 2 uses
  %.not83 = icmp eq ptr %i.at, %i.ag
  br i1 %.not83, label %._crit_edge99, label %.lr.ph98, !llvm.loop !844

.lr.ph:                                           ; preds = %_ZN5QListIP12QCPLayerableED2Ev.exit, %bb.p
  %.12094 = phi i8 [ %.221, %bb.p ], [ %.01997, %_ZN5QListIP12QCPLayerableED2Ev.exit ] ; 3 uses
  %.sroa.1065.093 = phi ptr [ %i.bl, %bb.p ], [ %i.an, %_ZN5QListIP12QCPLayerableED2Ev.exit ] ; 2 uses
  %i.au = load ptr, ptr %.sroa.1065.093, align 8  ; 5 uses
  %.not = icmp eq ptr %i.au, %i.o
  br i1 %.not, label %bb.p, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef i32 %i.ax(ptr noundef align 8 dereferenceable_or_null(57) %i.au)
          to label %bb.k unwind label %bb.n       ; 3 uses

bb.k:                                             ; preds = %bb.j
  %.not.i.i47 = icmp eq i32 %i.ay, 0
  %i.az = load i32, ptr %i.p, align 8             ; 2 uses
  %i.ba = and i32 %i.az, %i.ay
  %i.bb = icmp eq i32 %i.ba, %i.ay
  %i.bc = icmp eq i32 %i.az, 0
  %i.bd = select i1 %.not.i.i47, i1 %i.bc, i1 %i.bb
  br i1 %i.bd, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #51
  store i8 0, ptr %i.a, align 1
  %i.be = load ptr, ptr %i.au, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 152
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef align 8 dereferenceable_or_null(57) %i.au, ptr noundef nonnull %i.a)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bh = load i8, ptr %i.a, align 1, !range !175, !noundef !176
  %i.bi = or i8 %i.bh, %.12094
  %4 = icmp ne i8 %i.bi, 0
  %5 = zext i1 %4 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  br label %bb.p

bb.n:                                             ; preds = %bb.j
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  br label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.k, %.lr.ph
  %.221 = phi i8 [ %5, %bb.m ], [ %.12094, %bb.k ], [ %.12094, %.lr.ph ] ; 2 uses
  %i.bl = getelementptr i8, ptr %.sroa.1065.093, i64 8 ; 2 uses
  %.not84 = icmp eq ptr %i.bl, %i.ar
  br i1 %.not84, label %._crit_edge, label %.lr.ph, !llvm.loop !845

bb.q:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.o ], [ %i.bj, %bb.n ] ; 3 uses
  br i1 %.not.i.i.i.i38, label %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit51, label %_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i.i49

_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i.i49: ; preds = %bb.q
  %i.bm = atomicrmw sub ptr %i.al, i32 1 acq_rel, align 4
  %.not.i.i.i50 = icmp eq i32 %i.bm, 1
  br i1 %.not.i.i.i50, label %bb.r, label %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit51

bb.r:                                             ; preds = %_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i.i49
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.al, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit51

_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit51: ; preds = %bb.r, %_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i.i49, %bb.q
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListIP8QCPLayerEED2Ev.exit55, label %_ZN17QArrayDataPointerIP8QCPLayerE5derefEv.exit.i.i.i53

_ZN17QArrayDataPointerIP8QCPLayerE5derefEv.exit.i.i.i53: ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit51
  %i.bn = atomicrmw sub ptr %i.aa, i32 1 acq_rel, align 4
  %.not.i.i.i54 = icmp eq i32 %i.bn, 1
  br i1 %.not.i.i.i54, label %bb.s, label %_ZN9QtPrivate17QForeachContainerI5QListIP8QCPLayerEED2Ev.exit55

bb.s:                                             ; preds = %_ZN17QArrayDataPointerIP8QCPLayerE5derefEv.exit.i.i.i53
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.aa, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP8QCPLayerEED2Ev.exit55

_ZN9QtPrivate17QForeachContainerI5QListIP8QCPLayerEED2Ev.exit: ; preds = %bb.f, %_ZN17QArrayDataPointerIP8QCPLayerE5derefEv.exit.i.i.i, %._crit_edge99, %bb.d
  %i.bo = phi i1 [ true, %bb.d ], [ false, %._crit_edge99 ], [ false, %_ZN17QArrayDataPointerIP8QCPLayerE5derefEv.exit.i.i.i ], [ false, %bb.f ]
  %.322 = phi i8 [ 0, %bb.d ], [ %.019.lcssa, %._crit_edge99 ], [ %.019.lcssa, %_ZN17QArrayDataPointerIP8QCPLayerE5derefEv.exit.i.i.i ], [ %.019.lcssa, %bb.f ] ; 3 uses
  %.not34 = icmp eq ptr %i.o, null
  br i1 %.not34, label %bb.z, label %bb.t

bb.t:                                             ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIP8QCPLayerEED2Ev.exit
  %i.bp = load ptr, ptr %i.o, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = invoke noundef i32 %i.br(ptr noundef nonnull align 8 dereferenceable_or_null(57) %i.o)
          to label %bb.u unwind label %bb.x       ; 3 uses

bb.u:                                             ; preds = %bb.t
  %.not.i.i56 = icmp eq i32 %i.bs, 0
  %i.bt = load i32, ptr %i.p, align 8             ; 2 uses
  %i.bu = and i32 %i.bt, %i.bs
  %i.bv = icmp eq i32 %i.bu, %i.bs
  %i.bw = icmp eq i32 %i.bt, 0
  %i.bx = select i1 %.not.i.i56, i1 %i.bw, i1 %i.bv
  br i1 %i.bx, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #51
  store i8 0, ptr %i.b, align 1
  %i.by = load ptr, ptr %i.o, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 144
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr noundef nonnull align 8 dereferenceable_or_null(57) %i.o, ptr noundef %1, i1 noundef zeroext %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %i.b)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cb = load i8, ptr %i.b, align 1, !range !175, !noundef !176
  %i.cc = or i8 %i.cb, %.322
  %6 = icmp ne i8 %i.cc, 0
  %7 = zext i1 %6 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #51
  br label %bb.z

bb.x:                                             ; preds = %bb.ac, %bb.aa, %bb.t
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP8QCPLayerEED2Ev.exit55

bb.y:                                             ; preds = %bb.v
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP8QCPLayerEED2Ev.exit55

bb.z:                                             ; preds = %bb.w, %bb.u, %_ZN9QtPrivate17QForeachContainerI5QListIP8QCPLayerEED2Ev.exit
  %.423 = phi i8 [ %7, %bb.w ], [ %.322, %bb.u ], [ %.322, %_ZN9QtPrivate17QForeachContainerI5QListIP8QCPLayerEED2Ev.exit ]
  %i.cf = trunc nuw i8 %.423 to i1
  br i1 %i.cf, label %bb.aa, label %_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN11QCustomPlot22selectionChangedByUserEv(ptr noundef align 8 dereferenceable_or_null(513) %0)
          to label %bb.ab unwind label %bb.x

bb.ab:                                            ; preds = %bb.aa
  %i.cg = getelementptr i8, ptr %0, i64 481       ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !range !175, !noundef !176
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %i.cg, align 1
  invoke void @_ZN6QTimer10singleShotEiPK7QObjectPKc(i32 noundef 0, ptr noundef align 8 dereferenceable_or_null(513) %0, ptr noundef nonnull @.str.125)
          to label %_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit unwind label %bb.x

_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit: ; preds = %bb.ab, %bb.ac, %bb.z
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %2) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  ret void

_ZN9QtPrivate17QForeachContainerI5QListIP8QCPLayerEED2Ev.exit55: ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit51, %_ZN17QArrayDataPointerIP8QCPLayerE5derefEv.exit.i.i.i53, %bb.s, %bb.x, %bb.y, %bb.g
  %.pn35.pn = phi { ptr, i32 } [ %i.ai, %bb.g ], [ %i.cd, %bb.x ], [ %i.ce, %bb.y ], [ %.pn, %bb.s ], [ %.pn, %_ZN9QtPrivate17QForeachContainerI5QListIP12QCPLayerableEED2Ev.exit51 ], [ %.pn, %_ZN17QArrayDataPointerIP8QCPLayerE5derefEv.exit.i.i.i53 ]
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %2) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  resume { ptr, i32 } %.pn35.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef ptr @_ZNK11QCustomPlot11layerableAtERK7QPointFbP8QVariant(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(513) %0, ptr noundef align 8 dereferenceable(16) %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QList.182, align 8           ; 13 uses
  %5 = alloca %class.QList.7, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  %.not = icmp eq ptr %3, null                    ; 2 uses
  %. = select i1 %.not, ptr null, ptr %4
  invoke void @_ZNK11QCustomPlot15layerableListAtERK7QPointFbP5QListI8QVariantE(ptr dead_on_unwind nonnull writable sret(%class.QList.7) align 8 %5, ptr noundef align 8 dereferenceable_or_null(513) %0, ptr noundef align 8 dereferenceable(16) %1, i1 noundef zeroext %2, ptr noundef %.)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.c
  br i1 %or.cond, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %4, align 8                ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.i.i.i.i: ; preds = %bb.c
  %i.e = load atomic i32, ptr %i.d monotonic, align 4
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.thread.i.i.i.i, label %bb.d

_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.i.i.i.i, %bb.c
  invoke void @_ZN17QArrayDataPointerI8QVariantE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %4, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.i.i.i.i, %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.thread.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef align 8 dereferenceable(32) ptr @_ZN8QVariantaSERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(32) %3, ptr noundef align 8 dereferenceable(32) %i.h)
          to label %bb.h unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5QListIP12QCPLayerableED2Ev.exit

bb.f:                                             ; preds = %_ZNK17QArrayDataPointerIP12QCPLayerableE11needsDetachEv.exit.thread.i.i.i.i, %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.thread.i.i.i.i, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.l = load ptr, ptr %5, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN5QListIP12QCPLayerableED2Ev.exit, label %_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i

_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i: ; preds = %bb.f
  %i.m = atomicrmw sub ptr %i.l, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.m, 1
  br i1 %.not.i.i, label %bb.g, label %_ZN5QListIP12QCPLayerableED2Ev.exit

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i
  %i.n = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.n, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIP12QCPLayerableED2Ev.exit

bb.h:                                             ; preds = %bb.d, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.p, 0
  %.pre22 = load ptr, ptr %5, align 8             ; 4 uses
  br i1 %i.q, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.i.i12 = icmp eq ptr %.pre22, null
  br i1 %.not.i.i.i.i.i12, label %_ZNK17QArrayDataPointerIP12QCPLayerableE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerIP12QCPLayerableE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerIP12QCPLayerableE11needsDetachEv.exit.i.i.i.i: ; preds = %bb.i
  %i.r = load atomic i32, ptr %.pre22 monotonic, align 4
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %_ZNK17QArrayDataPointerIP12QCPLayerableE11needsDetachEv.exit.thread.i.i.i.i, label %bb.j

_ZNK17QArrayDataPointerIP12QCPLayerableE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIP12QCPLayerableE11needsDetachEv.exit.i.i.i.i, %bb.i
  invoke void @_ZN17QArrayDataPointerIP12QCPLayerableE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZNK17QArrayDataPointerIP12QCPLayerableE11needsDetachEv.exit.thread.i.i.i.i._crit_edge unwind label %bb.f

_ZNK17QArrayDataPointerIP12QCPLayerableE11needsDetachEv.exit.thread.i.i.i.i._crit_edge: ; preds = %_ZNK17QArrayDataPointerIP12QCPLayerableE11needsDetachEv.exit.thread.i.i.i.i
  %.pre.pre = load ptr, ptr %5, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZNK17QArrayDataPointerIP12QCPLayerableE11needsDetachEv.exit.thread.i.i.i.i._crit_edge, %_ZNK17QArrayDataPointerIP12QCPLayerableE11needsDetachEv.exit.i.i.i.i
  %.pre = phi ptr [ %.pre.pre, %_ZNK17QArrayDataPointerIP12QCPLayerableE11needsDetachEv.exit.thread.i.i.i.i._crit_edge ], [ %.pre22, %_ZNK17QArrayDataPointerIP12QCPLayerableE11needsDetachEv.exit.i.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.u, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  %i.w = phi ptr [ %.pre, %bb.j ], [ %.pre22, %bb.h ] ; 2 uses
  %.09 = phi ptr [ %i.v, %bb.j ], [ null, %bb.h ]
  %.not.i.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i14, label %_ZN5QListIP12QCPLayerableED2Ev.exit17, label %_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i15

_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i15: ; preds = %bb.k
  %i.x = atomicrmw sub ptr %i.w, i32 1 acq_rel, align 4
  %.not.i.i16 = icmp eq i32 %i.x, 1
  br i1 %.not.i.i16, label %bb.l, label %_ZN5QListIP12QCPLayerableED2Ev.exit17

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i15
  %i.y = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.y, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIP12QCPLayerableED2Ev.exit17

_ZN5QListIP12QCPLayerableED2Ev.exit17:            ; preds = %bb.k, %_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i15, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  %i.z = load ptr, ptr %4, align 8                ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i18, label %_ZN5QListI8QVariantED2Ev.exit, label %_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i.i

_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i.i: ; preds = %_ZN5QListIP12QCPLayerableED2Ev.exit17
  %i.aa = atomicrmw sub ptr %i.z, i32 1 acq_rel, align 4
  %.not.i.i19 = icmp eq i32 %i.aa, 1
  br i1 %.not.i.i19, label %bb.m, label %_ZN5QListI8QVariantED2Ev.exit

bb.m:                                             ; preds = %_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = load i64, ptr %i.a, align 8
  %.idx.i.i.i = shl i64 %i.ad, 5                  ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ac, i64 %.idx.i.i.i
  %.not4.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %bb.m ] ; 2 uses
  call void @_ZN8QVariantD1Ev(ptr noundef align 8 dead_on_return(32) dereferenceable_or_null(32) %.05.i.i.i.i.i.i) #51
  %i.af = getelementptr i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !39

_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.m
  %i.ag = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ag, i64 noundef 32, i64 noundef 8) #51
  br label %_ZN5QListI8QVariantED2Ev.exit

_ZN5QListI8QVariantED2Ev.exit:                    ; preds = %_ZN5QListIP12QCPLayerableED2Ev.exit17, %_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i.i, %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  ret ptr %.09

_ZN5QListIP12QCPLayerableED2Ev.exit:              ; preds = %bb.g, %_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i, %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.k, %bb.f ], [ %i.k, %_ZN17QArrayDataPointerIP12QCPLayerableE5derefEv.exit.i.i ], [ %i.k, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  call void @_ZN5QListI8QVariantED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %4) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @_ZN11QCustomPlot13registerGraphEP8QCPGraph(ptr noundef align 8 dereferenceable_or_null(513) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %class.QString, align 8             ; 9 uses
  %3 = alloca %class.QString, align 8             ; 9 uses
  %4 = alloca %class.QString, align 8             ; 9 uses
  %5 = alloca %class.QString, align 8             ; 9 uses
  %6 = alloca %class.QDebug, align 8              ; 10 uses
  %7 = alloca %class.QMessageLogger, align 8      ; 7 uses
  %8 = alloca %class.QDebug, align 8              ; 10 uses
  %9 = alloca %class.QMessageLogger, align 8      ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
end_hunk_1
