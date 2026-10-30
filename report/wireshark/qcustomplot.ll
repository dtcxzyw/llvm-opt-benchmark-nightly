Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZNK8QCPGraph8drawFillEP10QCPPainterP5QListI7QPointFE:bb.a
  %i.dr = getelementptr [16 x i8], ptr %i.dq, i64 %i.dp ; 2 uses
  %.sroa.01.0.copyload = load i64, ptr %i.dr, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.ds, align 4
  invoke void @_ZNK8QCPGraph21getChannelFillPolygonEPK5QListI7QPointFE12QCPDataRangeS4_S5_(ptr dead_on_unwind nonnull writable sret(%class.QPolygonF) align 8 %11, ptr noundef align 8 dereferenceable_or_null(313) %0, ptr noundef %2, i64 %.sroa.01.0.copyload, ptr noundef nonnull %5, i64 %.sroa.0.0.copyload)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.dt = load ptr, ptr %i.dc, align 8
  %i.du = load i64, ptr %i.dd, align 8
  %i.dv = trunc i64 %i.du to i32
  invoke void @_ZN8QPainter11drawPolygonEPK7QPointFiN2Qt8FillRuleE(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef %i.dt, i32 noundef %i.dv, i32 noundef 0)
          to label %_ZN8QPainter11drawPolygonERK9QPolygonFN2Qt8FillRuleE.exit71 unwind label %bb.ap

_ZN8QPainter11drawPolygonERK9QPolygonFN2Qt8FillRuleE.exit71: ; preds = %bb.am
  %i.dw = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i.i72 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i72, label %_ZN5QListI7QPointFED2Ev.exit75, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i73

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i73: ; preds = %_ZN8QPainter11drawPolygonERK9QPolygonFN2Qt8FillRuleE.exit71
  %i.dx = atomicrmw add ptr %i.dw, i32 -1 acq_rel, align 4
  %.not.i.i74 = icmp eq i32 %i.dx, 1
  br i1 %.not.i.i74, label %bb.an, label %_ZN5QListI7QPointFED2Ev.exit75

bb.an:                                            ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i73
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.dw, i64 noundef 16, i64 noundef 8) #50
  br label %_ZN5QListI7QPointFED2Ev.exit75

_ZN5QListI7QPointFED2Ev.exit75:                   ; preds = %_ZN8QPainter11drawPolygonERK9QPolygonFN2Qt8FillRuleE.exit71, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i73, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #50
  %i.dy = add i32 %.026111, 1                     ; 2 uses
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = load i64, ptr %i.cy, align 8
  %i.eb = icmp sgt i64 %i.ea, %i.dz
  br i1 %i.eb, label %bb.al, label %._crit_edge, !llvm.loop !1135

bb.ao:                                            ; preds = %bb.al
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5QListI7QPointFED2Ev.exit79

bb.ap:                                            ; preds = %bb.am
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ee = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i.i76 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i76, label %_ZN5QListI7QPointFED2Ev.exit79, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i77

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i77: ; preds = %bb.ap
  %i.ef = atomicrmw add ptr %i.ee, i32 -1 acq_rel, align 4
  %.not.i.i78 = icmp eq i32 %i.ef, 1
  br i1 %.not.i.i78, label %bb.aq, label %_ZN5QListI7QPointFED2Ev.exit79

bb.aq:                                            ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i77
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.ee, i64 noundef 16, i64 noundef 8) #50
  br label %_ZN5QListI7QPointFED2Ev.exit79

_ZN5QListI7QPointFED2Ev.exit79:                   ; preds = %bb.aq, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i77, %bb.ap, %bb.ao
  %.pn30 = phi { ptr, i32 } [ %i.ec, %bb.ao ], [ %i.ed, %bb.ap ], [ %i.ed, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i77 ], [ %i.ed, %bb.aq ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #50
  %i.eg = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i80 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i80, label %_ZN5QListI12QCPDataRangeED2Ev.exit70, label %_ZN17QArrayDataPointerISt4pairI12QCPDataRangeS1_EE5derefEv.exit.i.i81

_ZN17QArrayDataPointerISt4pairI12QCPDataRangeS1_EE5derefEv.exit.i.i81: ; preds = %_ZN5QListI7QPointFED2Ev.exit79
  %i.eh = atomicrmw add ptr %i.eg, i32 -1 acq_rel, align 4
  %.not.i.i82 = icmp eq i32 %i.eh, 1
  br i1 %.not.i.i82, label %bb.ar, label %_ZN5QListI12QCPDataRangeED2Ev.exit70

bb.ar:                                            ; preds = %_ZN17QArrayDataPointerISt4pairI12QCPDataRangeS1_EE5derefEv.exit.i.i81
  %i.ei = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ei, i64 noundef 16, i64 noundef 8) #50
  br label %_ZN5QListI12QCPDataRangeED2Ev.exit70

_ZN5QListI12QCPDataRangeED2Ev.exit70:             ; preds = %bb.ar, %_ZN17QArrayDataPointerISt4pairI12QCPDataRangeS1_EE5derefEv.exit.i.i81, %_ZN5QListI7QPointFED2Ev.exit79, %bb.ak, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i68, %_ZN5QListI12QCPDataRangeED2Ev.exit66
  %.pn30.pn = phi { ptr, i32 } [ %i.dm, %bb.ak ], [ %i.dm, %_ZN5QListI12QCPDataRangeED2Ev.exit66 ], [ %i.dm, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i68 ], [ %.pn30, %_ZN5QListI7QPointFED2Ev.exit79 ], [ %.pn30, %_ZN17QArrayDataPointerISt4pairI12QCPDataRangeS1_EE5derefEv.exit.i.i81 ], [ %.pn30, %bb.ar ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  %i.ej = load ptr, ptr %7, align 16              ; 2 uses
  %.not.i.i.i84 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i84, label %_ZN5QListI12QCPDataRangeED2Ev.exit87, label %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i85

_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i85: ; preds = %_ZN5QListI12QCPDataRangeED2Ev.exit70
  %i.ek = atomicrmw add ptr %i.ej, i32 -1 acq_rel, align 4
  %.not.i.i86 = icmp eq i32 %i.ek, 1
  br i1 %.not.i.i86, label %bb.as, label %_ZN5QListI12QCPDataRangeED2Ev.exit87

bb.as:                                            ; preds = %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i85
  %i.el = load ptr, ptr %7, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.el, i64 noundef 8, i64 noundef 8) #50
  br label %_ZN5QListI12QCPDataRangeED2Ev.exit87

_ZN5QListI12QCPDataRangeED2Ev.exit87:             ; preds = %bb.as, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i85, %_ZN5QListI12QCPDataRangeED2Ev.exit70, %bb.ah
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.dl, %bb.ah ], [ %.pn30.pn, %_ZN5QListI12QCPDataRangeED2Ev.exit70 ], [ %.pn30.pn, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i85 ], [ %.pn30.pn, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  br label %bb.av

bb.at:                                            ; preds = %_ZN5QListI12QCPDataRangeED2Ev.exit62, %bb.s
  %i.em = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i88 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i88, label %_ZN5QListI7QPointFED2Ev.exit91, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i89

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i89: ; preds = %bb.at
  %i.en = atomicrmw add ptr %i.em, i32 -1 acq_rel, align 4
  %.not.i.i90 = icmp eq i32 %i.en, 1
  br i1 %.not.i.i90, label %bb.au, label %_ZN5QListI7QPointFED2Ev.exit91

bb.au:                                            ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i89
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.em, i64 noundef 16, i64 noundef 8) #50
  br label %_ZN5QListI7QPointFED2Ev.exit91

_ZN5QListI7QPointFED2Ev.exit91:                   ; preds = %bb.at, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i89, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br label %_ZN9QtPrivate17QForeachContainerI5QListI12QCPDataRangeEED2Ev.exit

bb.av:                                            ; preds = %_ZN5QListI12QCPDataRangeED2Ev.exit87, %bb.ag
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %_ZN5QListI12QCPDataRangeED2Ev.exit87 ], [ %i.dk, %bb.ag ]
  %i.eo = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i92 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i92, label %_ZN5QListI7QPointFED2Ev.exit95, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i93

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i93: ; preds = %bb.av
  %i.ep = atomicrmw add ptr %i.eo, i32 -1 acq_rel, align 4
  %.not.i.i94 = icmp eq i32 %i.ep, 1
  br i1 %.not.i.i94, label %bb.aw, label %_ZN5QListI7QPointFED2Ev.exit95

bb.aw:                                            ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i93
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.eo, i64 noundef 16, i64 noundef 8) #50
  br label %_ZN5QListI7QPointFED2Ev.exit95

_ZN5QListI7QPointFED2Ev.exit95:                   ; preds = %bb.av, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i93, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br label %_ZN9QtPrivate17QForeachContainerI5QListI12QCPDataRangeEED2Ev.exit44

_ZN9QtPrivate17QForeachContainerI5QListI12QCPDataRangeEED2Ev.exit: ; preds = %bb.i, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i, %._crit_edge115, %_ZN5QListI7QPointFED2Ev.exit91
  %i.eq = load ptr, ptr %3, align 16              ; 2 uses
  %.not.i.i.i96 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i96, label %_ZN5QListI12QCPDataRangeED2Ev.exit99, label %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i97

_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i97: ; preds = %_ZN9QtPrivate17QForeachContainerI5QListI12QCPDataRangeEED2Ev.exit
  %i.er = atomicrmw add ptr %i.eq, i32 -1 acq_rel, align 4
  %.not.i.i98 = icmp eq i32 %i.er, 1
  br i1 %.not.i.i98, label %bb.ax, label %_ZN5QListI12QCPDataRangeED2Ev.exit99

bb.ax:                                            ; preds = %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i97
  %i.es = load ptr, ptr %3, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.es, i64 noundef 8, i64 noundef 8) #50
  br label %_ZN5QListI12QCPDataRangeED2Ev.exit99

_ZN5QListI12QCPDataRangeED2Ev.exit99:             ; preds = %_ZN9QtPrivate17QForeachContainerI5QListI12QCPDataRangeEED2Ev.exit, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i97, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %bb.ay

bb.ay:                                            ; preds = %bb.b, %bb.c, %bb.a, %_ZN5QListI12QCPDataRangeED2Ev.exit99
  ret void

_ZN9QtPrivate17QForeachContainerI5QListI12QCPDataRangeEED2Ev.exit44: ; preds = %_ZN5QListI7QPointFED2Ev.exit40, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i42, %bb.p, %_ZN5QListI7QPointFED2Ev.exit95
  %.pn30.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn.pn, %_ZN5QListI7QPointFED2Ev.exit95 ], [ %.pn, %bb.p ], [ %.pn, %_ZN5QListI7QPointFED2Ev.exit40 ], [ %.pn, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i42 ]
  %i.et = load ptr, ptr %3, align 16              ; 2 uses
  %.not.i.i.i100 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i100, label %_ZN5QListI12QCPDataRangeED2Ev.exit103, label %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i101

_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i101: ; preds = %_ZN9QtPrivate17QForeachContainerI5QListI12QCPDataRangeEED2Ev.exit44
  %i.eu = atomicrmw add ptr %i.et, i32 -1 acq_rel, align 4
  %.not.i.i102 = icmp eq i32 %i.eu, 1
  br i1 %.not.i.i102, label %bb.az, label %_ZN5QListI12QCPDataRangeED2Ev.exit103

bb.az:                                            ; preds = %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i101
  %i.ev = load ptr, ptr %3, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ev, i64 noundef 8, i64 noundef 8) #50
  br label %_ZN5QListI12QCPDataRangeED2Ev.exit103

_ZN5QListI12QCPDataRangeED2Ev.exit103:            ; preds = %_ZN9QtPrivate17QForeachContainerI5QListI12QCPDataRangeEED2Ev.exit44, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i101, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  resume { ptr, i32 } %.pn30.pn.pn.pn.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK8QCPGraph17getNonNanSegmentsEPK5QListI7QPointFEN2Qt11OrientationE(ptr dead_on_unwind noalias writable sret(%class.QList.49) align 8 initializes((0, 24)) %0, ptr nofree readnone align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QCPDataRange, align 4        ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = trunc i64 %i.b to i32                    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  invoke void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %4, i32 noundef -1, i32 noundef -1)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %3, 1
  %i.e = icmp sgt i32 %i.c, 0                     ; 2 uses
  br i1 %i.d, label %.preheader54, label %.preheader57

.preheader57:                                     ; preds = %bb.b
  br i1 %i.e, label %.preheader56.lr.ph, label %.loopexit

.preheader56.lr.ph:                               ; preds = %.preheader57
  %i.f = getelementptr i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = and i64 %i.b, 2147483647                 ; 3 uses
  br label %.preheader56

.preheader54:                                     ; preds = %bb.b
  br i1 %i.e, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader54
  %i.j = getelementptr i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = and i64 %i.b, 2147483647                 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN5QListI12QCPDataRangeE6appendERKS0_.exit
  %.065 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ad, %_ZN5QListI12QCPDataRangeE6appendERKS0_.exit ] ; 2 uses
  %i.n = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.o = sext i32 %.065 to i64
  %i.p = add nsw i32 %.065, 1
  %smax74 = call i32 @llvm.smax.i32(i32 %i.p, i32 %i.c)
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %indvars.iv72 = phi i64 [ %i.o, %.preheader ], [ %indvars.iv.next73, %bb.d ] ; 3 uses
  %i.q = getelementptr [16 x i8], ptr %i.n, i64 %indvars.iv72
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load double, ptr %i.r, align 8
  %i.t = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.s) #55
  br i1 %i.t, label %bb.d, label %.critedge.split.loop.exit88

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.u = icmp slt i64 %indvars.iv.next73, %i.m
  br i1 %i.u, label %bb.c, label %.critedge, !llvm.loop !1137

.critedge.split.loop.exit88:                      ; preds = %bb.c
  %i.v = trunc nsw i64 %indvars.iv72 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.split.loop.exit88
  %.1.lcssa = phi i32 [ %i.v, %.critedge.split.loop.exit88 ], [ %smax74, %bb.d ] ; 4 uses
  %i.w = icmp eq i32 %.1.lcssa, %i.c
  br i1 %i.w, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.critedge
  store i32 %.1.lcssa, ptr %4, align 4
  %5 = sext i32 %.1.lcssa to i64                  ; 2 uses
  %i.x = add i32 %.1.lcssa, 1
  %smax76 = call i32 @llvm.smax.i32(i32 %i.x, i32 %i.c) ; 3 uses
  %i.y = add nsw i32 %smax76, -1                  ; 2 uses
  %indvars.iv.next80111 = add nsw i64 %5, 1       ; 2 uses
  %6 = icmp slt i64 %indvars.iv.next80111, %i.m
  br i1 %6, label %.lr.ph104, label %.critedge2

bb.f:                                             ; preds = %.lr.ph104
  %indvars.iv.next80 = add nsw i64 %indvars.iv.next80113, 1 ; 2 uses
  %7 = icmp slt i64 %indvars.iv.next80, %i.m
  br i1 %7, label %.lr.ph104, label %.critedge2, !llvm.loop !1138

.lr.ph104:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.next80113 = phi i64 [ %indvars.iv.next80, %bb.f ], [ %indvars.iv.next80111, %bb.e ] ; 4 uses
  %indvars.iv79112 = phi i64 [ %indvars.iv.next80113, %bb.f ], [ %5, %bb.e ]
  %i.z = getelementptr [16 x i8], ptr %i.n, i64 %indvars.iv.next80113
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load double, ptr %i.aa, align 8
  %i.ac = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ab) #55
  br i1 %i.ac, label %..critedge2_crit_edge107, label %bb.f, !llvm.loop !1138

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.critedge2, %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i, %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i50, %.critedge6, %bb.a
  %lpad.loopexit.split-lp116 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  call void @_ZN5QListI12QCPDataRangeED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) #50
  resume { ptr, i32 } %lpad.loopexit.split-lp116

..critedge2_crit_edge107:                         ; preds = %.lr.ph104
  %8 = trunc nsw i64 %indvars.iv79112 to i32
  %9 = trunc nsw i64 %indvars.iv.next80113 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.f, %bb.e, %..critedge2_crit_edge107
  %.2.in.lcssa = phi i32 [ %8, %..critedge2_crit_edge107 ], [ %i.y, %bb.e ], [ %i.y, %bb.f ]
  %.2.lcssa = phi i32 [ %9, %..critedge2_crit_edge107 ], [ %smax76, %bb.e ], [ %smax76, %bb.f ]
  %i.ad = add i32 %.2.in.lcssa, 2                 ; 2 uses
  store i32 %.2.lcssa, ptr %i.k, align 4
  %i.ae = load i64, ptr %i.l, align 8
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI12QCPDataRangeE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.critedge2
  %i.af = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc
  %i.ag = load atomic i32, ptr %i.af monotonic, align 4
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZN5QListI12QCPDataRangeE6appendERKS0_.exit

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerI12QCPDataRangeE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI12QCPDataRangeE6appendERKS0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5QListI12QCPDataRangeE6appendERKS0_.exit:      ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i, %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i
  %i.ai = icmp slt i32 %i.ad, %i.c
  br i1 %i.ai, label %.preheader, label %.loopexit

.preheader56:                                     ; preds = %.preheader56.lr.ph, %_ZN5QListI12QCPDataRangeE6appendERKS0_.exit53
  %.363 = phi i32 [ 0, %.preheader56.lr.ph ], [ %i.ax, %_ZN5QListI12QCPDataRangeE6appendERKS0_.exit53 ] ; 2 uses
  %i.aj = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ak = sext i32 %.363 to i64
  %i.al = add nsw i32 %.363, 1
  %smax = call i32 @llvm.smax.i32(i32 %i.al, i32 %i.c)
  br label %bb.g

bb.g:                                             ; preds = %.preheader56, %bb.h
  %indvars.iv = phi i64 [ %i.ak, %.preheader56 ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.am = getelementptr [16 x i8], ptr %i.aj, i64 %indvars.iv
  %i.an = load double, ptr %i.am, align 8
  %i.ao = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.an) #55
  br i1 %i.ao, label %bb.h, label %.critedge4.split.loop.exit86

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ap = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.ap, label %bb.g, label %.critedge4, !llvm.loop !1139

.critedge4.split.loop.exit86:                     ; preds = %bb.g
  %i.aq = trunc nsw i64 %indvars.iv to i32
  br label %.critedge4

.critedge4:                                       ; preds = %bb.h, %.critedge4.split.loop.exit86
  %.4.lcssa = phi i32 [ %i.aq, %.critedge4.split.loop.exit86 ], [ %smax, %bb.h ] ; 4 uses
  %i.ar = icmp eq i32 %.4.lcssa, %i.c
  br i1 %i.ar, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.critedge4
  store i32 %.4.lcssa, ptr %4, align 4
  %10 = sext i32 %.4.lcssa to i64                 ; 2 uses
  %i.as = add i32 %.4.lcssa, 1
  %smax71 = call i32 @llvm.smax.i32(i32 %i.as, i32 %i.c) ; 3 uses
  %i.at = add nsw i32 %smax71, -1                 ; 2 uses
  %indvars.iv.next72108 = add nsw i64 %10, 1      ; 2 uses
  %11 = icmp slt i64 %indvars.iv.next72108, %i.i
  br i1 %11, label %.lr.ph, label %.critedge6

bb.j:                                             ; preds = %.lr.ph
  %indvars.iv.next72 = add nsw i64 %indvars.iv.next72110, 1 ; 2 uses
  %12 = icmp slt i64 %indvars.iv.next72, %i.i
  br i1 %12, label %.lr.ph, label %.critedge6, !llvm.loop !1140

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %indvars.iv.next72110 = phi i64 [ %indvars.iv.next72, %bb.j ], [ %indvars.iv.next72108, %bb.i ] ; 4 uses
  %indvars.iv71109 = phi i64 [ %indvars.iv.next72110, %bb.j ], [ %10, %bb.i ]
  %i.au = getelementptr [16 x i8], ptr %i.aj, i64 %indvars.iv.next72110
  %i.av = load double, ptr %i.au, align 8
  %i.aw = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.av) #55
  br i1 %i.aw, label %..critedge6_crit_edge99, label %bb.j, !llvm.loop !1140

..critedge6_crit_edge99:                          ; preds = %.lr.ph
  %13 = trunc nsw i64 %indvars.iv71109 to i32
  %14 = trunc nsw i64 %indvars.iv.next72110 to i32
  br label %.critedge6

.critedge6:                                       ; preds = %bb.j, %bb.i, %..critedge6_crit_edge99
  %.5.in.lcssa = phi i32 [ %13, %..critedge6_crit_edge99 ], [ %i.at, %bb.i ], [ %i.at, %bb.j ]
  %.5.lcssa = phi i32 [ %14, %..critedge6_crit_edge99 ], [ %smax71, %bb.i ], [ %smax71, %bb.j ]
  %i.ax = add i32 %.5.in.lcssa, 2                 ; 2 uses
  store i32 %.5.lcssa, ptr %i.g, align 4
  %i.ay = load i64, ptr %i.h, align 8
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI12QCPDataRangeE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.ay, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc51:                                         ; preds = %.critedge6
  %i.az = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i.i.i.i.i48 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i48, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i50, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i49

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i49: ; preds = %.noexc51
  %i.ba = load atomic i32, ptr %i.az monotonic, align 4
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i50, label %_ZN5QListI12QCPDataRangeE6appendERKS0_.exit53

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i50: ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i49, %.noexc51
  invoke void @_ZN17QArrayDataPointerI12QCPDataRangeE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI12QCPDataRangeE6appendERKS0_.exit53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5QListI12QCPDataRangeE6appendERKS0_.exit53:    ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i50, %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i49
  %i.bc = icmp slt i32 %i.ax, %i.c
  br i1 %i.bc, label %.preheader56, label %.loopexit

.loopexit:                                        ; preds = %.critedge4, %_ZN5QListI12QCPDataRangeE6appendERKS0_.exit53, %.critedge, %_ZN5QListI12QCPDataRangeE6appendERKS0_.exit, %.preheader57, %.preheader54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK8QCPGraph14getFillPolygonEPK5QListI7QPointFE12QCPDataRange(ptr dead_on_unwind noalias writable sret(%class.QPolygonF) align 8 initializes((0, 24)) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(313) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.sroa.040.0.extract.trunc = trunc i64 %3 to i32
  %.sroa.5.0.extract.shift = lshr i64 %3, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.b = sub i32 %.sroa.5.0.extract.trunc, %.sroa.040.0.extract.trunc ; 2 uses
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %.lr.ph.i.preheader.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %i.d = add nuw i32 %i.b, 2
  %i.e = sext i32 %i.d to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.f = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.a, i64 noundef 16, i64 noundef 8, i64 noundef %i.e, i32 noundef 1) #50 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.f, i64 8) ]
  %i.g = load ptr, ptr %i.a, align 8              ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  store ptr %i.g, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %i.e, ptr %i.i, align 8
  %.idx6.i.i.i = shl nsw i64 %i.e, 4
  call void @llvm.memset.p0.i64(ptr noundef align 8 %i.f, i8 0, i64 %.idx6.i.i.i, i1 false)
  %sext = shl i64 %3, 32
  %i.j = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ashr exact i64 %sext, 28                 ; 3 uses
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 2 uses
  %.sroa.06.0.copyload = load double, ptr %i.m, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.27.0.copyload = load double, ptr %.sroa.27.0..sroa_idx, align 8
  %i.n = invoke { double, double } @_ZNK8QCPGraph16getFillBasePointE7QPointF(ptr noundef align 8 dereferenceable_or_null(313) %1, double %.sroa.06.0.copyload, double %.sroa.27.0.copyload)
          to label %bb.c unwind label %bb.h       ; 2 uses

bb.c:                                             ; preds = %.lr.ph.i.preheader.i.i
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN5QListI7QPointFE6detachEv.exit.i, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i: ; preds = %bb.c
  %i.o = load atomic i32, ptr %i.g monotonic, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %_ZN5QListI7QPointFE6detachEv.exit.i, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i

_ZN5QListI7QPointFE6detachEv.exit.i:              ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i, %bb.c
  invoke void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_ZN5QListI7QPointFE6detachEv.exit.i
  %.pre.i = load ptr, ptr %0, align 8             ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i: ; preds = %.noexc, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i
  %i.q = phi ptr [ %.pre.i, %.noexc ], [ %i.g, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i ]
  %i.r = load atomic i32, ptr %i.q monotonic, align 4
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i, label %bb.d

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i
  %i.t = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.u = extractvalue { double, double } %i.n, 1
  %i.v = extractvalue { double, double } %i.n, 0
  store double %i.v, ptr %i.t, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store double %i.u, ptr %.sroa.59.0..sroa_idx, align 8
  %i.w = load ptr, ptr %i.j, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 %i.l     ; 2 uses
  %i.y = ashr i64 %3, 28
  %i.z = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i24, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i25

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i25: ; preds = %bb.d
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i, label %bb.e

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i: ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i25, %bb.d
  invoke void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i25
  %gepdiff = sub nsw i64 %i.y, %i.l
  %i.ac = ashr i64 %gepdiff, 4                    ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIN5QListI7QPointFE14const_iteratorENS2_8iteratorEET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.e
  %i.ae = load ptr, ptr %i.h, align 8             ; 2 uses
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.prol ], [ %i.ac, %.lr.ph.i.i.i.i.i.preheader ]
  %.sroa.0.08.i.i.i.i.i.pn.prol = phi ptr [ %.sroa.0.08.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ], [ %i.ae, %.lr.ph.i.i.i.i.i.preheader ]
  %.sroa.05.07.i.i.i.i.i.prol = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.prol ], [ %i.x, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %.sroa.0.08.i.i.i.i.i.prol = getelementptr i8, ptr %.sroa.0.08.i.i.i.i.i.pn.prol, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %.sroa.0.08.i.i.i.i.i.prol, ptr noundef align 8 dereferenceable(16) %.sroa.05.07.i.i.i.i.i.prol, i64 16, i1 false)
  %i.af = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ag = add nsw i64 %.09.i.i.i.i.i.prol, -1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1141

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.08.i.i.i.i.i.pn.unr = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.0.08.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.05.07.i.i.i.i.i.unr = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.i.prol ]
  %i.ah = icmp ult i64 %i.ac, 4
  br i1 %i.ah, label %_ZSt4copyIN5QListI7QPointFE14const_iteratorENS2_8iteratorEET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.0.08.i.i.i.i.i.pn = phi ptr [ %.sroa.0.08.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.08.i.i.i.i.i.pn.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.05.07.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.08.i.i.i.i.i = getelementptr i8, ptr %.sroa.0.08.i.i.i.i.i.pn, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %.sroa.0.08.i.i.i.i.i, ptr noundef align 8 dereferenceable(16) %.sroa.05.07.i.i.i.i.i, i64 16, i1 false)
  %i.ai = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i, i64 16
  %.sroa.0.08.i.i.i.i.i.1 = getelementptr i8, ptr %.sroa.0.08.i.i.i.i.i.pn, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %.sroa.0.08.i.i.i.i.i.1, ptr noundef align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  %i.aj = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i, i64 32
  %.sroa.0.08.i.i.i.i.i.2 = getelementptr i8, ptr %.sroa.0.08.i.i.i.i.i.pn, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %.sroa.0.08.i.i.i.i.i.2, ptr noundef align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.ak = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i, i64 48
  %.sroa.0.08.i.i.i.i.i.3 = getelementptr i8, ptr %.sroa.0.08.i.i.i.i.i.pn, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %.sroa.0.08.i.i.i.i.i.3, ptr noundef align 8 dereferenceable(16) %i.ak, i64 16, i1 false)
  %i.al = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i, i64 64
  %i.am = add nsw i64 %.09.i.i.i.i.i, -4
  %i.an = icmp sgt i64 %.09.i.i.i.i.i, 4
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN5QListI7QPointFE14const_iteratorENS2_8iteratorEET0_T_S6_S5_.exit, !llvm.loop !54

_ZSt4copyIN5QListI7QPointFE14const_iteratorENS2_8iteratorEET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.e
  %sext49 = add i64 %3, -4294967296
  %i.ao = ashr i64 %sext49, 32
  %i.ap = load ptr, ptr %i.j, align 8
  %i.aq = getelementptr [16 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %.sroa.0.0.copyload = load double, ptr %i.aq, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.2.0.copyload = load double, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ar = invoke { double, double } @_ZNK8QCPGraph16getFillBasePointE7QPointF(ptr noundef align 8 dereferenceable_or_null(313) %1, double %.sroa.0.0.copyload, double %.sroa.2.0.copyload)
          to label %bb.f unwind label %bb.h       ; 2 uses

bb.f:                                             ; preds = %_ZSt4copyIN5QListI7QPointFE14const_iteratorENS2_8iteratorEET0_T_S6_S5_.exit
  %i.as = load i64, ptr %i.i, align 8
  %i.at = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i.i28 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i28, label %_ZN5QListI7QPointFE6detachEv.exit.i32, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i29

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i29: ; preds = %bb.f
  %i.au = load atomic i32, ptr %i.at monotonic, align 4
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %_ZN5QListI7QPointFE6detachEv.exit.i32, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i30

_ZN5QListI7QPointFE6detachEv.exit.i32:            ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i29, %bb.f
  invoke void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %.noexc35 unwind label %bb.h

.noexc35:                                         ; preds = %_ZN5QListI7QPointFE6detachEv.exit.i32
end_hunk_0
