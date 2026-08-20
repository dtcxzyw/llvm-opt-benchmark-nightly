inline.NumInlined: 26891
inline.NumDeleted: 6475
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZNK8QCPGraph8drawFillEP10QCPPainterP5QListI7QPointFE:bb.a
_ZN5QListI12QCPDataRangeED2Ev.exit66:             ; preds = %bb.ai, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i64, %bb.aj
  br i1 %.not.i.i.i48, label %_ZN5QListI12QCPDataRangeED2Ev.exit70, label %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i68

_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i68: ; preds = %_ZN5QListI12QCPDataRangeED2Ev.exit66
  %i.do = atomicrmw sub ptr %i.cl, i32 1 acq_rel, align 4
  %.not.i.i69 = icmp eq i32 %i.do, 1
  br i1 %.not.i.i69, label %bb.ak, label %_ZN5QListI12QCPDataRangeED2Ev.exit70

bb.ak:                                            ; preds = %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i68
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.cl, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListI12QCPDataRangeED2Ev.exit70

bb.al:                                            ; preds = %.lr.ph, %_ZN5QListI7QPointFED2Ev.exit75
  %i.dp = phi i64 [ 0, %.lr.ph ], [ %i.dz, %_ZN5QListI7QPointFED2Ev.exit75 ]
  %.026111 = phi i32 [ 0, %.lr.ph ], [ %i.dy, %_ZN5QListI7QPointFED2Ev.exit75 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  %i.dq = load ptr, ptr %i.db, align 8
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
  %i.dx = atomicrmw sub ptr %i.dw, i32 1 acq_rel, align 4
  %.not.i.i74 = icmp eq i32 %i.dx, 1
  br i1 %.not.i.i74, label %bb.an, label %_ZN5QListI7QPointFED2Ev.exit75

bb.an:                                            ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i73
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.dw, i64 noundef 16, i64 noundef 8) #51
  br label %_ZN5QListI7QPointFED2Ev.exit75

_ZN5QListI7QPointFED2Ev.exit75:                   ; preds = %_ZN8QPainter11drawPolygonERK9QPolygonFN2Qt8FillRuleE.exit71, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i73, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  %i.dy = add i32 %.026111, 1                     ; 2 uses
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = load i64, ptr %i.cy, align 8
  %i.eb = icmp sgt i64 %i.ea, %i.dz
  br i1 %i.eb, label %bb.al, label %._crit_edge, !llvm.loop !1017

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
  %i.ef = atomicrmw sub ptr %i.ee, i32 1 acq_rel, align 4
  %.not.i.i78 = icmp eq i32 %i.ef, 1
  br i1 %.not.i.i78, label %bb.aq, label %_ZN5QListI7QPointFED2Ev.exit79

bb.aq:                                            ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i77
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.ee, i64 noundef 16, i64 noundef 8) #51
  br label %_ZN5QListI7QPointFED2Ev.exit79

_ZN5QListI7QPointFED2Ev.exit79:                   ; preds = %bb.aq, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i77, %bb.ap, %bb.ao
  %.pn30 = phi { ptr, i32 } [ %i.ec, %bb.ao ], [ %i.ed, %bb.ap ], [ %i.ed, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i77 ], [ %i.ed, %bb.aq ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  %i.eg = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i80 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i80, label %_ZN5QListI12QCPDataRangeED2Ev.exit70, label %_ZN17QArrayDataPointerISt4pairI12QCPDataRangeS1_EE5derefEv.exit.i.i81

_ZN17QArrayDataPointerISt4pairI12QCPDataRangeS1_EE5derefEv.exit.i.i81: ; preds = %_ZN5QListI7QPointFED2Ev.exit79
  %i.eh = atomicrmw sub ptr %i.eg, i32 1 acq_rel, align 4
  %.not.i.i82 = icmp eq i32 %i.eh, 1
  br i1 %.not.i.i82, label %bb.ar, label %_ZN5QListI12QCPDataRangeED2Ev.exit70

bb.ar:                                            ; preds = %_ZN17QArrayDataPointerISt4pairI12QCPDataRangeS1_EE5derefEv.exit.i.i81
  %i.ei = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ei, i64 noundef 16, i64 noundef 8) #51
  br label %_ZN5QListI12QCPDataRangeED2Ev.exit70

_ZN5QListI12QCPDataRangeED2Ev.exit70:             ; preds = %bb.ar, %_ZN17QArrayDataPointerISt4pairI12QCPDataRangeS1_EE5derefEv.exit.i.i81, %_ZN5QListI7QPointFED2Ev.exit79, %bb.ak, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i68, %_ZN5QListI12QCPDataRangeED2Ev.exit66
  %.pn30.pn = phi { ptr, i32 } [ %i.dm, %bb.ak ], [ %i.dm, %_ZN5QListI12QCPDataRangeED2Ev.exit66 ], [ %i.dm, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i68 ], [ %.pn30, %_ZN5QListI7QPointFED2Ev.exit79 ], [ %.pn30, %_ZN17QArrayDataPointerISt4pairI12QCPDataRangeS1_EE5derefEv.exit.i.i81 ], [ %.pn30, %bb.ar ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  %i.ej = load ptr, ptr %7, align 16              ; 2 uses
  %.not.i.i.i84 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i84, label %_ZN5QListI12QCPDataRangeED2Ev.exit87, label %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i85

_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i85: ; preds = %_ZN5QListI12QCPDataRangeED2Ev.exit70
  %i.ek = atomicrmw sub ptr %i.ej, i32 1 acq_rel, align 4
  %.not.i.i86 = icmp eq i32 %i.ek, 1
  br i1 %.not.i.i86, label %bb.as, label %_ZN5QListI12QCPDataRangeED2Ev.exit87

bb.as:                                            ; preds = %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i85
  %i.el = load ptr, ptr %7, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.el, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListI12QCPDataRangeED2Ev.exit87

_ZN5QListI12QCPDataRangeED2Ev.exit87:             ; preds = %bb.as, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i85, %_ZN5QListI12QCPDataRangeED2Ev.exit70, %bb.ah
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.dl, %bb.ah ], [ %.pn30.pn, %_ZN5QListI12QCPDataRangeED2Ev.exit70 ], [ %.pn30.pn, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i85 ], [ %.pn30.pn, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  br label %bb.av

bb.at:                                            ; preds = %_ZN5QListI12QCPDataRangeED2Ev.exit62, %bb.s
  %i.em = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i88 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i88, label %_ZN5QListI7QPointFED2Ev.exit91, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i89

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i89: ; preds = %bb.at
  %i.en = atomicrmw sub ptr %i.em, i32 1 acq_rel, align 4
  %.not.i.i90 = icmp eq i32 %i.en, 1
  br i1 %.not.i.i90, label %bb.au, label %_ZN5QListI7QPointFED2Ev.exit91

bb.au:                                            ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i89
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.em, i64 noundef 16, i64 noundef 8) #51
  br label %_ZN5QListI7QPointFED2Ev.exit91

_ZN5QListI7QPointFED2Ev.exit91:                   ; preds = %bb.at, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i89, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListI12QCPDataRangeEED2Ev.exit

bb.av:                                            ; preds = %_ZN5QListI12QCPDataRangeED2Ev.exit87, %bb.ag
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %_ZN5QListI12QCPDataRangeED2Ev.exit87 ], [ %i.dk, %bb.ag ]
  %i.eo = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i92 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i92, label %_ZN5QListI7QPointFED2Ev.exit95, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i93

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i93: ; preds = %bb.av
  %i.ep = atomicrmw sub ptr %i.eo, i32 1 acq_rel, align 4
  %.not.i.i94 = icmp eq i32 %i.ep, 1
  br i1 %.not.i.i94, label %bb.aw, label %_ZN5QListI7QPointFED2Ev.exit95

bb.aw:                                            ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i93
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.eo, i64 noundef 16, i64 noundef 8) #51
  br label %_ZN5QListI7QPointFED2Ev.exit95

_ZN5QListI7QPointFED2Ev.exit95:                   ; preds = %bb.av, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i93, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListI12QCPDataRangeEED2Ev.exit44

_ZN9QtPrivate17QForeachContainerI5QListI12QCPDataRangeEED2Ev.exit: ; preds = %bb.i, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i, %._crit_edge115, %_ZN5QListI7QPointFED2Ev.exit91
  %i.eq = load ptr, ptr %3, align 16              ; 2 uses
  %.not.i.i.i96 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i96, label %_ZN5QListI12QCPDataRangeED2Ev.exit99, label %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i97

_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i97: ; preds = %_ZN9QtPrivate17QForeachContainerI5QListI12QCPDataRangeEED2Ev.exit
  %i.er = atomicrmw sub ptr %i.eq, i32 1 acq_rel, align 4
  %.not.i.i98 = icmp eq i32 %i.er, 1
  br i1 %.not.i.i98, label %bb.ax, label %_ZN5QListI12QCPDataRangeED2Ev.exit99

bb.ax:                                            ; preds = %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i97
  %i.es = load ptr, ptr %3, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.es, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListI12QCPDataRangeED2Ev.exit99

_ZN5QListI12QCPDataRangeED2Ev.exit99:             ; preds = %_ZN9QtPrivate17QForeachContainerI5QListI12QCPDataRangeEED2Ev.exit, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i97, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br label %bb.ay

bb.ay:                                            ; preds = %bb.b, %bb.c, %bb.a, %_ZN5QListI12QCPDataRangeED2Ev.exit99
  ret void

_ZN9QtPrivate17QForeachContainerI5QListI12QCPDataRangeEED2Ev.exit44: ; preds = %_ZN5QListI7QPointFED2Ev.exit40, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i42, %bb.p, %_ZN5QListI7QPointFED2Ev.exit95
  %.pn30.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn.pn, %_ZN5QListI7QPointFED2Ev.exit95 ], [ %.pn, %bb.p ], [ %.pn, %_ZN5QListI7QPointFED2Ev.exit40 ], [ %.pn, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i42 ]
  %i.et = load ptr, ptr %3, align 16              ; 2 uses
  %.not.i.i.i100 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i100, label %_ZN5QListI12QCPDataRangeED2Ev.exit103, label %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i101

_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i101: ; preds = %_ZN9QtPrivate17QForeachContainerI5QListI12QCPDataRangeEED2Ev.exit44
  %i.eu = atomicrmw sub ptr %i.et, i32 1 acq_rel, align 4
  %.not.i.i102 = icmp eq i32 %i.eu, 1
  br i1 %.not.i.i102, label %bb.az, label %_ZN5QListI12QCPDataRangeED2Ev.exit103

bb.az:                                            ; preds = %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i101
  %i.ev = load ptr, ptr %3, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ev, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListI12QCPDataRangeED2Ev.exit103

_ZN5QListI12QCPDataRangeED2Ev.exit103:            ; preds = %_ZN9QtPrivate17QForeachContainerI5QListI12QCPDataRangeEED2Ev.exit44, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i101, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  resume { ptr, i32 } %.pn30.pn.pn.pn.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK8QCPGraph17getNonNanSegmentsEPK5QListI7QPointFEN2Qt11OrientationE(ptr dead_on_unwind noalias writable sret(%class.QList.49) align 8 initializes((0, 24)) %0, ptr nofree readnone align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QCPDataRange, align 4        ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = trunc i64 %i.b to i32                    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  invoke void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %4, i32 noundef -1, i32 noundef -1)
          to label %bb.b unwind label %bb.e

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
  %i.i = and i64 %i.b, 2147483647
  br label %.preheader56

.preheader54:                                     ; preds = %bb.b
  br i1 %i.e, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader54
  %i.j = getelementptr i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = and i64 %i.b, 2147483647
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN5QListI12QCPDataRangeE6appendERKS0_.exit
  %.062 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ad, %_ZN5QListI12QCPDataRangeE6appendERKS0_.exit ] ; 2 uses
  %i.n = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.o = sext i32 %.062 to i64
  %i.p = add nsw i32 %.062, 1
  %smax68 = call i32 @llvm.smax.i32(i32 %i.p, i32 %i.c)
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %indvars.iv66 = phi i64 [ %i.o, %.preheader ], [ %indvars.iv.next67, %bb.d ] ; 3 uses
  %i.q = getelementptr [16 x i8], ptr %i.n, i64 %indvars.iv66
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load double, ptr %i.r, align 8
  %i.t = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.s) #56
  br i1 %i.t, label %bb.d, label %.critedge.split.loop.exit82

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next67 = add nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.u = icmp slt i64 %indvars.iv.next67, %i.m
  br i1 %i.u, label %bb.c, label %.critedge, !llvm.loop !1018

bb.e:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.critedge.split.loop.exit82:                      ; preds = %bb.c
  %i.w = trunc nsw i64 %indvars.iv66 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.split.loop.exit82
  %.1.lcssa = phi i32 [ %i.w, %.critedge.split.loop.exit82 ], [ %smax68, %bb.d ] ; 4 uses
  %i.x = icmp eq i32 %.1.lcssa, %i.c
  br i1 %i.x, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.critedge
  store i32 %.1.lcssa, ptr %4, align 4
  %5 = zext i32 %.1.lcssa to i64                  ; 2 uses
  %i.y = add i32 %.1.lcssa, 1
  %smax70 = call i32 @llvm.smax.i32(i32 %i.y, i32 %i.c) ; 3 uses
  %i.z = add nsw i32 %smax70, -1                  ; 2 uses
  %indvars.iv.next75107 = add nuw nsw i64 %5, 1   ; 2 uses
  %indvars77108 = trunc i64 %indvars.iv.next75107 to i32 ; 2 uses
  %6 = icmp slt i32 %indvars77108, %i.c
  br i1 %6, label %.lr.ph95, label %.critedge2

bb.g:                                             ; preds = %.lr.ph95
  %indvars.iv.next75 = add i64 %indvars.iv.next75110, 1 ; 2 uses
  %indvars77 = trunc i64 %indvars.iv.next75 to i32 ; 2 uses
  %7 = icmp slt i32 %indvars77, %i.c
  br i1 %7, label %.lr.ph95, label %.critedge2, !llvm.loop !1019

.lr.ph95:                                         ; preds = %bb.f, %bb.g
  %.2.in94 = phi i32 [ %indvars77, %bb.g ], [ %indvars77108, %bb.f ]
  %indvars.iv.next75110 = phi i64 [ %indvars.iv.next75, %bb.g ], [ %indvars.iv.next75107, %bb.f ] ; 3 uses
  %indvars.iv74109 = phi i64 [ %indvars.iv.next75110, %bb.g ], [ %5, %bb.f ]
  %sext83 = shl i64 %indvars.iv.next75110, 32
  %8 = ashr exact i64 %sext83, 28
  %9 = getelementptr i8, ptr %i.n, i64 %8
  %i.aa = getelementptr i8, ptr %9, i64 8
  %i.ab = load double, ptr %i.aa, align 8
  %i.ac = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ab) #56
  br i1 %i.ac, label %..critedge2_crit_edge98, label %bb.g, !llvm.loop !1019

.loopexit55:                                      ; preds = %.critedge2, %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %.critedge6, %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i50
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

..critedge2_crit_edge98:                          ; preds = %.lr.ph95
  %10 = trunc i64 %indvars.iv74109 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.g, %bb.f, %..critedge2_crit_edge98
  %.2.in.lcssa = phi i32 [ %10, %..critedge2_crit_edge98 ], [ %i.z, %bb.f ], [ %i.z, %bb.g ]
  %.2.lcssa = phi i32 [ %.2.in94, %..critedge2_crit_edge98 ], [ %smax70, %bb.f ], [ %smax70, %bb.g ]
  %i.ad = add i32 %.2.in.lcssa, 2                 ; 2 uses
  store i32 %.2.lcssa, ptr %i.k, align 4
  %i.ae = load i64, ptr %i.l, align 8
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI12QCPDataRangeE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %.noexc unwind label %.loopexit55

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
          to label %_ZN5QListI12QCPDataRangeE6appendERKS0_.exit unwind label %.loopexit55

_ZN5QListI12QCPDataRangeE6appendERKS0_.exit:      ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i, %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i
  %i.ai = icmp slt i32 %i.ad, %i.c
  br i1 %i.ai, label %.preheader, label %.loopexit

.preheader56:                                     ; preds = %.preheader56.lr.ph, %_ZN5QListI12QCPDataRangeE6appendERKS0_.exit53
  %.360 = phi i32 [ 0, %.preheader56.lr.ph ], [ %i.aw, %_ZN5QListI12QCPDataRangeE6appendERKS0_.exit53 ] ; 2 uses
  %i.aj = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ak = sext i32 %.360 to i64
  %i.al = add nsw i32 %.360, 1
  %smax = call i32 @llvm.smax.i32(i32 %i.al, i32 %i.c)
  br label %bb.h

bb.h:                                             ; preds = %.preheader56, %bb.i
  %indvars.iv = phi i64 [ %i.ak, %.preheader56 ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.am = getelementptr [16 x i8], ptr %i.aj, i64 %indvars.iv
  %i.an = load double, ptr %i.am, align 8
  %i.ao = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.an) #56
  br i1 %i.ao, label %bb.i, label %.critedge4.split.loop.exit80

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ap = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.ap, label %bb.h, label %.critedge4, !llvm.loop !1020

.critedge4.split.loop.exit80:                     ; preds = %bb.h
  %i.aq = trunc nsw i64 %indvars.iv to i32
  br label %.critedge4

.critedge4:                                       ; preds = %bb.i, %.critedge4.split.loop.exit80
  %.4.lcssa = phi i32 [ %i.aq, %.critedge4.split.loop.exit80 ], [ %smax, %bb.i ] ; 4 uses
  %i.ar = icmp eq i32 %.4.lcssa, %i.c
  br i1 %i.ar, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.critedge4
  store i32 %.4.lcssa, ptr %4, align 4
  %11 = zext i32 %.4.lcssa to i64                 ; 2 uses
  %i.as = add i32 %.4.lcssa, 1
  %smax65 = call i32 @llvm.smax.i32(i32 %i.as, i32 %i.c) ; 3 uses
  %i.at = add nsw i32 %smax65, -1                 ; 2 uses
  %indvars.iv.next66102 = add nuw nsw i64 %11, 1  ; 2 uses
  %indvars103 = trunc i64 %indvars.iv.next66102 to i32 ; 2 uses
  %12 = icmp slt i32 %indvars103, %i.c
  br i1 %12, label %.lr.ph, label %.critedge6

bb.k:                                             ; preds = %.lr.ph
  %indvars.iv.next66 = add i64 %indvars.iv.next66105, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next66 to i32  ; 2 uses
  %13 = icmp slt i32 %indvars, %i.c
  br i1 %13, label %.lr.ph, label %.critedge6, !llvm.loop !1021

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.5.in88 = phi i32 [ %indvars, %bb.k ], [ %indvars103, %bb.j ]
  %indvars.iv.next66105 = phi i64 [ %indvars.iv.next66, %bb.k ], [ %indvars.iv.next66102, %bb.j ] ; 3 uses
  %indvars.iv65104 = phi i64 [ %indvars.iv.next66105, %bb.k ], [ %11, %bb.j ]
  %sext = shl i64 %indvars.iv.next66105, 32
  %14 = ashr exact i64 %sext, 28
  %15 = getelementptr i8, ptr %i.aj, i64 %14
  %i.au = load double, ptr %15, align 8
  %i.av = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.au) #56
  br i1 %i.av, label %..critedge6_crit_edge90, label %bb.k, !llvm.loop !1021

..critedge6_crit_edge90:                          ; preds = %.lr.ph
  %16 = trunc i64 %indvars.iv65104 to i32
  br label %.critedge6

.critedge6:                                       ; preds = %bb.k, %bb.j, %..critedge6_crit_edge90
  %.5.in.lcssa = phi i32 [ %16, %..critedge6_crit_edge90 ], [ %i.at, %bb.j ], [ %i.at, %bb.k ]
  %.5.lcssa = phi i32 [ %.5.in88, %..critedge6_crit_edge90 ], [ %smax65, %bb.j ], [ %smax65, %bb.k ]
  %i.aw = add i32 %.5.in.lcssa, 2                 ; 2 uses
  store i32 %.5.lcssa, ptr %i.g, align 4
  %i.ax = load i64, ptr %i.h, align 8
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI12QCPDataRangeE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.ax, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %.noexc51 unwind label %.loopexit.split-lp

.noexc51:                                         ; preds = %.critedge6
  %i.ay = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i.i.i.i.i48 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i48, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i50, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i49

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i49: ; preds = %.noexc51
  %i.az = load atomic i32, ptr %i.ay monotonic, align 4
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i50, label %_ZN5QListI12QCPDataRangeE6appendERKS0_.exit53

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i50: ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i49, %.noexc51
  invoke void @_ZN17QArrayDataPointerI12QCPDataRangeE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI12QCPDataRangeE6appendERKS0_.exit53 unwind label %.loopexit.split-lp

_ZN5QListI12QCPDataRangeE6appendERKS0_.exit53:    ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i50, %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i49
  %i.bb = icmp slt i32 %i.aw, %i.c
  br i1 %i.bb, label %.preheader56, label %.loopexit

.loopexit:                                        ; preds = %.critedge4, %_ZN5QListI12QCPDataRangeE6appendERKS0_.exit53, %.critedge, %_ZN5QListI12QCPDataRangeE6appendERKS0_.exit, %.preheader57, %.preheader54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  ret void

bb.l:                                             ; preds = %.loopexit55, %.loopexit.split-lp, %bb.e
  %.pn = phi { ptr, i32 } [ %i.v, %bb.e ], [ %lpad.loopexit, %.loopexit55 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  call void @_ZN5QListI12QCPDataRangeED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) #51
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK8QCPGraph14getFillPolygonEPK5QListI7QPointFE12QCPDataRange(ptr dead_on_unwind noalias writable sret(%class.QPolygonF) align 8 initializes((0, 24)) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(313) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
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
  br label %bb.l

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %i.d = add nuw i32 %i.b, 2
  %i.e = sext i32 %i.d to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #51
  %i.f = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.a, i64 noundef 16, i64 noundef 8, i64 noundef %i.e, i32 noundef 1) #51 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.f, i64 8) ]
  %i.g = load ptr, ptr %i.a, align 8              ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
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
          to label %bb.e unwind label %bb.i

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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1022

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
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN5QListI7QPointFE14const_iteratorENS2_8iteratorEET0_T_S6_S5_.exit, !llvm.loop !1023

_ZSt4copyIN5QListI7QPointFE14const_iteratorENS2_8iteratorEET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.e
  %sext49 = add i64 %3, -4294967296
  %i.ao = ashr i64 %sext49, 32
  %i.ap = load ptr, ptr %i.j, align 8
  %i.aq = getelementptr [16 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %.sroa.0.0.copyload = load double, ptr %i.aq, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.2.0.copyload = load double, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ar = invoke { double, double } @_ZNK8QCPGraph16getFillBasePointE7QPointF(ptr noundef align 8 dereferenceable_or_null(313) %1, double %.sroa.0.0.copyload, double %.sroa.2.0.copyload)
          to label %bb.f unwind label %bb.j       ; 2 uses

bb.f:                                             ; preds = %_ZSt4copyIN5QListI7QPointFE14const_iteratorENS2_8iteratorEET0_T_S6_S5_.exit
  %i.as = load i64, ptr %i.i, align 8
  %i.at = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i.i28 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i28, label %_ZN5QListI7QPointFE6detachEv.exit.i32, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i29

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i29: ; preds = %bb.f
  %i.au = load atomic i32, ptr %i.at monotonic, align 4
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %_ZN5QListI7QPointFE6detachEv.exit.i32, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i30
end_hunk_0
begin_hunk_1_@_ZNK8QCPGraph15drawScatterPlotEP10QCPPainterRK5QListI7QPointFERK15QCPScatterStyle:bb.a
  %i.w = getelementptr i8, ptr %.sroa.10.020, i64 8
  %i.x = load double, ptr %i.w, align 8
  invoke void @_ZNK15QCPScatterStyle9drawShapeEP10QCPPainterdd(ptr noundef align 8 dereferenceable_or_null(65) %3, ptr noundef %1, double noundef %i.v, double noundef %i.x)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.y = getelementptr i8, ptr %.sroa.10.020, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.y, %i.t
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1034

bb.f:                                             ; preds = %.lr.ph
  %i.z = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListI7QPointFEED2Ev.exit13, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i.i11

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i.i11: ; preds = %bb.f
  %i.aa = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %.not.i.i.i12 = icmp eq i32 %i.aa, 1
  br i1 %.not.i.i.i12, label %bb.g, label %_ZN9QtPrivate17QForeachContainerI5QListI7QPointFEED2Ev.exit13

bb.g:                                             ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i.i11
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.n, i64 noundef 16, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListI7QPointFEED2Ev.exit13

_ZN9QtPrivate17QForeachContainerI5QListI7QPointFEED2Ev.exit13: ; preds = %bb.f, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i.i11, %bb.g
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK8QCPGraph12drawLinePlotEP10QCPPainterRK5QListI7QPointFE(ptr noundef align 8 dereferenceable_or_null(313) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(24) %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %class.QColor, align 8              ; 6 uses
  %i.a = tail call noundef align 8 dereferenceable(8) ptr @_ZNK8QPainter3penEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
  %i.b = tail call noundef i32 @_ZNK4QPen5styleEv(ptr noundef align 8 dereferenceable_or_null(8) %i.a)
  %.not = icmp eq i32 %i.b, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef align 8 dereferenceable(8) ptr @_ZNK8QPainter3penEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
  %i.d = tail call { i64, i64 } @_ZNK4QPen5colorEv(ptr noundef align 8 dereferenceable_or_null(8) %i.c) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i64 } %i.d, 0
  %.fca.1.extract = extractvalue { i64, i64 } %i.d, 1
  store i64 %.fca.0.extract, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.extract.trunc = trunc i64 %.fca.1.extract to i48
  store i48 %.sroa.2.0.extract.trunc, ptr %.sroa.2.0..sroa_idx, align 8
  %i.e = call noundef i32 @_ZNK6QColor5alphaEv(ptr noundef nonnull align 4 dereferenceable_or_null(14) %3) #51
  %.not6 = icmp eq i32 %i.e, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef align 8 dereferenceable_or_null(184) %0, ptr noundef %1)
  call void @_ZNK22QCPAbstractPlottable1DI12QCPGraphDataE12drawPolylineEP10QCPPainterRK5QListI7QPointFE(ptr noundef align 8 dereferenceable_or_null(208) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(24) %2)
  br label %bb.d

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZNK22QCPAbstractPlottable1DI12QCPGraphDataE12drawPolylineEP10QCPPainterRK5QListI7QPointFE(ptr noundef align 8 dereferenceable_or_null(208) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QLine, align 16              ; 4 uses
  %4 = alloca %class.QLineF, align 8              ; 6 uses
  %5 = alloca %class.QPen, align 8                ; 8 uses
  %i.a = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 8
  %i.b = and i32 %.sroa.0.0.copyload.i, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef align 8 dereferenceable(8) ptr @_ZNK8QPainter3penEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
  %i.d = tail call noundef double @_ZNK4QPen6widthFEv(ptr noundef align 8 dereferenceable_or_null(8) %i.c) ; 4 uses
  %i.e = fadd double %i.d, -1.000000e+00          ; 3 uses
  %i.f = fcmp ult double %i.e, 0.000000e+00
  %i.g = fneg double %i.e
  %i.h = select i1 %i.f, double %i.g, double %i.e
  %i.i = fmul double %i.h, 1.000000e+12
  %i.j = fcmp ult double %i.d, 0.000000e+00
  %i.k = fneg double %i.d
  %i.l = select i1 %i.j, double %i.k, double %i.d ; 2 uses
  %i.m = fcmp olt double %i.l, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.m, double %i.l, double 1.000000e+00
  %i.n = fcmp ugt double %i.i, %.sroa.speculated.i
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  %i.o = tail call noundef align 8 dereferenceable(8) ptr @_ZNK8QPainter3penEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %5, ptr noundef align 8 dereferenceable(8) %i.o) #51
  invoke void @_ZN4QPen8setWidthEi(ptr noundef nonnull align 8 dereferenceable_or_null(8) %5, i32 noundef 0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  %i.p = load i32, ptr %i.a, align 8
  %i.q = and i32 %i.p, 4
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZN10QCPPainter6setPenERK4QPen.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit unwind label %bb.f

_ZN10QCPPainter6setPenERK4QPen.exit:              ; preds = %.noexc, %bb.e
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %.critedge

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  resume { ptr, i32 } %i.r

.critedge:                                        ; preds = %bb.a, %_ZN10QCPPainter6setPenERK4QPen.exit, %bb.b
  %i.s = getelementptr i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 312
  %.sroa.0.0.copyload.i65 = load i32, ptr %i.u, align 8
  %i.v = and i32 %.sroa.0.0.copyload.i65, 1
  %.not72 = icmp eq i32 %i.v, 0
  br i1 %.not72, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.w = call noundef align 8 dereferenceable(8) ptr @_ZNK8QPainter3penEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
  %i.x = call noundef i32 @_ZNK4QPen5styleEv(ptr noundef align 8 dereferenceable_or_null(8) %i.w)
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.h, label %.critedge2

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i66 = load i32, ptr %i.a, align 8
  %i.z = and i32 %.sroa.0.0.copyload.i66, 3
  %or.cond.not = icmp eq i32 %i.z, 0
  br i1 %or.cond.not, label %bb.i, label %.critedge2

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 4 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %.critedge4

.lr.ph:                                           ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %wide.trip.count = and i64 %i.ab, 2147483647
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %.critedge6
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge6 ] ; 3 uses
  %i.ag = getelementptr [16 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load double, ptr %i.ah, align 8
  %i.aj = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ai) #56
  br i1 %i.aj, label %.critedge6, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load double, ptr %i.ag, align 8
  %i.al = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ak) #56
  br i1 %i.al, label %.critedge6, label %.critedge4.loopexit.split.loop.exit97

.critedge6:                                       ; preds = %bb.j, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge4, label %bb.j, !llvm.loop !1035

.critedge4.loopexit.split.loop.exit97:            ; preds = %bb.k
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge6, %.critedge4.loopexit.split.loop.exit97, %bb.i
  %.061.lcssa = phi i32 [ 0, %bb.i ], [ %i.am, %.critedge4.loopexit.split.loop.exit97 ], [ %i.ac, %.critedge6 ] ; 2 uses
  %.16276 = add i32 %.061.lcssa, 1                ; 2 uses
  %i.an = icmp slt i32 %.16276, %i.ac
  br i1 %i.an, label %.lr.ph80, label %.loopexit

.lr.ph80:                                         ; preds = %.critedge4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aq = getelementptr i8, ptr %1, i64 12
  %i.ar = sext i32 %.16276 to i64
  %i.as = sext i32 %.061.lcssa to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph80, %bb.r
  %indvars.iv86.a = phi i64 [ %i.as, %.lr.ph80 ], [ %indvars.iv.next87.a, %bb.r ] ; 2 uses
  %indvars.iv86 = phi i64 [ %i.ar, %.lr.ph80 ], [ %indvars.iv.next87, %bb.r ] ; 2 uses
  %.05978 = phi i1 [ false, %.lr.ph80 ], [ %.160, %bb.r ]
  %i.at = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.au = getelementptr [16 x i8], ptr %i.at, i64 %indvars.iv86 ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load double, ptr %i.av, align 8
  %i.ax = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.aw) #56
  br i1 %i.ax, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load double, ptr %i.au, align 8
  %i.az = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ay) #56 ; 2 uses
  %brmerge = or i1 %.05978, %i.az
  br i1 %brmerge, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr [16 x i8], ptr %i.at, i64 %indvars.iv86.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef align 8 dereferenceable(16) %i.ba, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef align 8 dereferenceable(16) %i.au, i64 16, i1 false)
  %i.bb = load i8, ptr %i.aq, align 4, !range !6, !noundef !7
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = load i32, ptr %i.a, align 8
  %i.be = and i32 %i.bd, 1
  %.not.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  %i.bf = load <4 x double>, ptr %4, align 8      ; 2 uses
  %i.bg = shufflevector <4 x double> %i.bf, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bh = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.bg)
  %i.bi = fadd <2 x double> %i.bg, %i.bh
  %i.bj = fptosi <2 x double> %i.bi to <2 x i32>
  %i.bk = shufflevector <4 x double> %i.bf, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bl = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.bk)
  %i.bm = fadd <2 x double> %i.bk, %i.bl
  %i.bn = fptosi <2 x double> %i.bm to <2 x i32>
  %i.bo = zext <2 x i32> %i.bn to <2 x i64>
  %i.bp = shl nuw <2 x i64> %i.bo, splat (i64 32)
  %i.bq = zext <2 x i32> %i.bj to <2 x i64>
  %i.br = or disjoint <2 x i64> %i.bp, %i.bq
  store <2 x i64> %i.br, ptr %3, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br label %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit

_ZN10QCPPainter8drawLineERK7QPointFS2_.exit:      ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.l, %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit
  %.160 = phi i1 [ true, %bb.l ], [ false, %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit ], [ %i.az, %bb.m ]
  %indvars.iv.next87 = add nsw i64 %indvars.iv86, 1 ; 2 uses
  %indvars.iv.next87.a = add nsw i64 %indvars.iv86.a, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next87 to i32
  %exitcond88.not = icmp eq i32 %lftr.wideiv, %i.ac
  br i1 %exitcond88.not, label %.loopexit, label %bb.l, !llvm.loop !1036

.critedge2:                                       ; preds = %bb.h, %bb.g, %.critedge
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bt = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.bu = trunc i64 %i.bt to i32                  ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph83, label %._crit_edge

.lr.ph83:                                         ; preds = %.critedge2
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count92 = and i64 %i.bt, 2147483647
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph83, %bb.w
  %indvars.iv89 = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next90.pre-phi, %bb.w ] ; 4 uses
  %.05881 = phi i32 [ 0, %.lr.ph83 ], [ %.1, %bb.w ] ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.by = getelementptr [16 x i8], ptr %i.bx, i64 %indvars.iv89 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %i.ca = load double, ptr %i.bz, align 8         ; 2 uses
  %i.cb = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ca) #56
  br i1 %i.cb, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = load double, ptr %i.by, align 8
  %i.cd = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.cc) #56
  br i1 %i.cd, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = call noundef zeroext i1 @_Z6qIsInfd(double noundef %i.ca) #56
  br i1 %i.ce, label %bb.v, label %._crit_edge94

._crit_edge94:                                    ; preds = %bb.u
  %.pre = add nuw nsw i64 %indvars.iv89, 1
  br label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.cf = sext i32 %.05881 to i64
  %i.cg = getelementptr [16 x i8], ptr %i.bx, i64 %i.cf
  %i.ch = trunc nuw nsw i64 %indvars.iv89 to i32
  %i.ci = sub i32 %i.ch, %.05881
  call void @_ZN8QPainter12drawPolylineEPK7QPointFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef %i.cg, i32 noundef %i.ci)
  %i.cj = add nuw nsw i64 %indvars.iv89, 1        ; 2 uses
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge94, %bb.v
  %indvars.iv.next90.pre-phi = phi i64 [ %.pre, %._crit_edge94 ], [ %i.cj, %bb.v ] ; 2 uses
  %.1 = phi i32 [ %.05881, %._crit_edge94 ], [ %i.ck, %bb.v ] ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90.pre-phi, %wide.trip.count92
  br i1 %exitcond93.not, label %._crit_edge, label %bb.s, !llvm.loop !1037

._crit_edge:                                      ; preds = %bb.w, %.critedge2
  %.058.lcssa = phi i32 [ 0, %.critedge2 ], [ %.1, %bb.w ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = sext i32 %.058.lcssa to i64
  %i.co = getelementptr [16 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = sub i32 %i.bu, %.058.lcssa
  call void @_ZN8QPainter12drawPolylineEPK7QPointFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef %i.co, i32 noundef %i.cp)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %.critedge4, %._crit_edge
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK8QCPGraph15drawImpulsePlotEP10QCPPainterRK5QListI7QPointFE(ptr noundef align 8 dereferenceable_or_null(313) %0, ptr noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QColor, align 8              ; 6 uses
  %4 = alloca %class.QPen, align 8                ; 7 uses
  %5 = alloca %class.QPen, align 8                ; 8 uses
  %i.a = tail call noundef align 8 dereferenceable(8) ptr @_ZNK8QPainter3penEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
  %i.b = tail call noundef i32 @_ZNK4QPen5styleEv(ptr noundef align 8 dereferenceable_or_null(8) %i.a)
  %.not = icmp eq i32 %i.b, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef align 8 dereferenceable(8) ptr @_ZNK8QPainter3penEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
  %i.d = tail call { i64, i64 } @_ZNK4QPen5colorEv(ptr noundef align 8 dereferenceable_or_null(8) %i.c) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i64 } %i.d, 0
  %.fca.1.extract = extractvalue { i64, i64 } %i.d, 1
  store i64 %.fca.0.extract, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.extract.trunc = trunc i64 %.fca.1.extract to i48
  store i48 %.sroa.2.0.extract.trunc, ptr %.sroa.2.0..sroa_idx, align 8
  %i.e = call noundef i32 @_ZNK6QColor5alphaEv(ptr noundef nonnull align 4 dereferenceable_or_null(14) %3) #51
  %.not12 = icmp eq i32 %i.e, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br i1 %.not12, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef align 8 dereferenceable_or_null(184) %0, ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  %i.i = call noundef align 8 dereferenceable(8) ptr @_ZNK8QPainter3penEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %4, ptr noundef align 8 dereferenceable(8) %i.i) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  %i.j = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPainter3penEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %5, ptr noundef align 8 dereferenceable(8) %i.j) #51
  invoke void @_ZN4QPen11setCapStyleEN2Qt11PenCapStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %5, i32 noundef 0)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.e
  %i.k = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 4
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZN10QCPPainter6setPenERK4QPen.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit unwind label %bb.i

_ZN10QCPPainter6setPenERK4QPen.exit:              ; preds = %.noexc, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i64, ptr %i.p, align 8
  %i.r = sdiv i64 %i.q, 2
  %i.s = trunc i64 %i.r to i32
  invoke void @_ZN8QPainter9drawLinesEPK7QPointFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef %i.o, i32 noundef %i.s)
          to label %_ZN8QPainter9drawLinesERK5QListI7QPointFE.exit unwind label %bb.i

_ZN8QPainter9drawLinesERK5QListI7QPointFE.exit:   ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc17 unwind label %bb.i

.noexc17:                                         ; preds = %_ZN8QPainter9drawLinesERK5QListI7QPointFE.exit
  %i.t = load i32, ptr %i.k, align 4
  %i.u = and i32 %i.t, 4
  %.not.i16 = icmp eq i32 %i.u, 0
  br i1 %.not.i16, label %_ZN10QCPPainter6setPenERK4QPen.exit19, label %bb.g

bb.g:                                             ; preds = %.noexc17
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit19 unwind label %bb.i

_ZN10QCPPainter6setPenERK4QPen.exit19:            ; preds = %.noexc17, %bb.g
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %_ZN8QPainter9drawLinesERK5QListI7QPointFE.exit, %_ZN10QCPPainter6setPenERK4QPen.exit, %bb.f, %bb.e, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #51
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.v, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  resume { ptr, i32 } %.pn

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %_ZN10QCPPainter6setPenERK4QPen.exit19, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN4QPen11setCapStyleEN2Qt11PenCapStyleE(ptr noundef align 8 dereferenceable_or_null(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK8QCPGraph20getOptimizedLineDataEP5QListI12QCPGraphDataERKNS2_14const_iteratorES6_(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(313) %0, ptr noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QCPGraphData, align 8        ; 4 uses
  %5 = alloca %class.QString, align 8             ; 9 uses
  %6 = alloca %class.QString, align 8             ; 9 uses
  %7 = alloca %class.QDebug, align 8              ; 10 uses
  %8 = alloca %class.QMessageLogger, align 8      ; 7 uses
  %9 = alloca %class.QCPGraphData, align 8        ; 4 uses
  %10 = alloca %class.QCPGraphData, align 8       ; 4 uses
  %11 = alloca %class.QCPGraphData, align 8       ; 4 uses
  %12 = alloca %class.QCPGraphData, align 8       ; 4 uses
  %13 = alloca %class.QCPGraphData, align 8       ; 4 uses
  %14 = alloca %class.QCPGraphData, align 8       ; 4 uses
end_hunk_1
begin_hunk_2_@_ZNK8QCPCurve14drawLegendIconEP10QCPPainterRK6QRectF:bb.a
  call void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef align 8 dereferenceable(8) %i.dr)
  %i.ds = getelementptr i8, ptr %1, i64 8
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = and i32 %i.dt, 4
  %.not.i.i64 = icmp eq i32 %i.du, 0
  br i1 %.not.i.i64, label %_ZNK15QCPScatterStyle7applyToEP10QCPPainterRK4QPen.exit66, label %bb.ak

bb.ak:                                            ; preds = %.critedge56.thread
  call void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  br label %_ZNK15QCPScatterStyle7applyToEP10QCPPainterRK4QPen.exit66

_ZNK15QCPScatterStyle7applyToEP10QCPPainterRK4QPen.exit66: ; preds = %.critedge56.thread, %bb.ak
  %i.dv = getelementptr i8, ptr %0, i64 232
  call void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef align 8 dereferenceable(8) %i.dv)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dw = load <2 x double>, ptr %.sroa.5.0..sroa_idx, align 8
  %i.dx = fmul <2 x double> %i.dw, splat (double 5.000000e-01)
  %i.dy = load <2 x double>, ptr %2, align 8
  %i.dz = fadd <2 x double> %i.dy, %i.dx          ; 2 uses
  %i.ea = extractelement <2 x double> %i.dz, i64 0
  %i.eb = extractelement <2 x double> %i.dz, i64 1
  call void @_ZNK15QCPScatterStyle9drawShapeEP10QCPPainterdd(ptr noundef align 8 dereferenceable_or_null(65) %i.bg, ptr noundef %1, double noundef %i.ea, double noundef %i.eb)
  br label %bb.al

bb.al:                                            ; preds = %_ZNK15QCPScatterStyle9drawShapeEP10QCPPainterRK7QPointF.exit, %_ZNK15QCPScatterStyle7applyToEP10QCPPainterRK4QPen.exit66, %bb.i
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK8QCPCurve13drawCurveLineEP10QCPPainterRK5QListI7QPointFE(ptr noundef align 8 dereferenceable_or_null(288) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(24) %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %class.QColor, align 8              ; 6 uses
  %i.a = tail call noundef align 8 dereferenceable(8) ptr @_ZNK8QPainter3penEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
  %i.b = tail call noundef i32 @_ZNK4QPen5styleEv(ptr noundef align 8 dereferenceable_or_null(8) %i.a)
  %.not = icmp eq i32 %i.b, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef align 8 dereferenceable(8) ptr @_ZNK8QPainter3penEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
  %i.d = tail call { i64, i64 } @_ZNK4QPen5colorEv(ptr noundef align 8 dereferenceable_or_null(8) %i.c) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i64 } %i.d, 0
  %.fca.1.extract = extractvalue { i64, i64 } %i.d, 1
  store i64 %.fca.0.extract, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.extract.trunc = trunc i64 %.fca.1.extract to i48
  store i48 %.sroa.2.0.extract.trunc, ptr %.sroa.2.0..sroa_idx, align 8
  %i.e = call noundef i32 @_ZNK6QColor5alphaEv(ptr noundef nonnull align 4 dereferenceable_or_null(14) %3) #51
  %.not6 = icmp eq i32 %i.e, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef align 8 dereferenceable_or_null(184) %0, ptr noundef %1)
  call void @_ZNK22QCPAbstractPlottable1DI12QCPCurveDataE12drawPolylineEP10QCPPainterRK5QListI7QPointFE(ptr noundef align 8 dereferenceable_or_null(208) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(24) %2)
  br label %bb.d

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZNK22QCPAbstractPlottable1DI12QCPCurveDataE12drawPolylineEP10QCPPainterRK5QListI7QPointFE(ptr noundef align 8 dereferenceable_or_null(208) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QLine, align 16              ; 4 uses
  %4 = alloca %class.QLineF, align 8              ; 6 uses
  %5 = alloca %class.QPen, align 8                ; 8 uses
  %i.a = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 8
  %i.b = and i32 %.sroa.0.0.copyload.i, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef align 8 dereferenceable(8) ptr @_ZNK8QPainter3penEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
  %i.d = tail call noundef double @_ZNK4QPen6widthFEv(ptr noundef align 8 dereferenceable_or_null(8) %i.c) ; 4 uses
  %i.e = fadd double %i.d, -1.000000e+00          ; 3 uses
  %i.f = fcmp ult double %i.e, 0.000000e+00
  %i.g = fneg double %i.e
  %i.h = select i1 %i.f, double %i.g, double %i.e
  %i.i = fmul double %i.h, 1.000000e+12
  %i.j = fcmp ult double %i.d, 0.000000e+00
  %i.k = fneg double %i.d
  %i.l = select i1 %i.j, double %i.k, double %i.d ; 2 uses
  %i.m = fcmp olt double %i.l, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.m, double %i.l, double 1.000000e+00
  %i.n = fcmp ugt double %i.i, %.sroa.speculated.i
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  %i.o = tail call noundef align 8 dereferenceable(8) ptr @_ZNK8QPainter3penEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %5, ptr noundef align 8 dereferenceable(8) %i.o) #51
  invoke void @_ZN4QPen8setWidthEi(ptr noundef nonnull align 8 dereferenceable_or_null(8) %5, i32 noundef 0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  %i.p = load i32, ptr %i.a, align 8
  %i.q = and i32 %i.p, 4
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZN10QCPPainter6setPenERK4QPen.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit unwind label %bb.f

_ZN10QCPPainter6setPenERK4QPen.exit:              ; preds = %.noexc, %bb.e
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %.critedge

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  resume { ptr, i32 } %i.r

.critedge:                                        ; preds = %bb.a, %_ZN10QCPPainter6setPenERK4QPen.exit, %bb.b
  %i.s = getelementptr i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 312
  %.sroa.0.0.copyload.i65 = load i32, ptr %i.u, align 8
  %i.v = and i32 %.sroa.0.0.copyload.i65, 1
  %.not72 = icmp eq i32 %i.v, 0
  br i1 %.not72, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.w = call noundef align 8 dereferenceable(8) ptr @_ZNK8QPainter3penEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
  %i.x = call noundef i32 @_ZNK4QPen5styleEv(ptr noundef align 8 dereferenceable_or_null(8) %i.w)
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.h, label %.critedge2

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i66 = load i32, ptr %i.a, align 8
  %i.z = and i32 %.sroa.0.0.copyload.i66, 3
  %or.cond.not = icmp eq i32 %i.z, 0
  br i1 %or.cond.not, label %bb.i, label %.critedge2

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 4 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %.critedge4

.lr.ph:                                           ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %wide.trip.count = and i64 %i.ab, 2147483647
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %.critedge6
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge6 ] ; 3 uses
  %i.ag = getelementptr [16 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load double, ptr %i.ah, align 8
  %i.aj = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ai) #56
  br i1 %i.aj, label %.critedge6, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load double, ptr %i.ag, align 8
  %i.al = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ak) #56
  br i1 %i.al, label %.critedge6, label %.critedge4.loopexit.split.loop.exit97

.critedge6:                                       ; preds = %bb.j, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge4, label %bb.j, !llvm.loop !1081

.critedge4.loopexit.split.loop.exit97:            ; preds = %bb.k
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge6, %.critedge4.loopexit.split.loop.exit97, %bb.i
  %.061.lcssa = phi i32 [ 0, %bb.i ], [ %i.am, %.critedge4.loopexit.split.loop.exit97 ], [ %i.ac, %.critedge6 ] ; 2 uses
  %.16276 = add i32 %.061.lcssa, 1                ; 2 uses
  %i.an = icmp slt i32 %.16276, %i.ac
  br i1 %i.an, label %.lr.ph80, label %.loopexit

.lr.ph80:                                         ; preds = %.critedge4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aq = getelementptr i8, ptr %1, i64 12
  %i.ar = sext i32 %.16276 to i64
  %i.as = sext i32 %.061.lcssa to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph80, %bb.r
  %indvars.iv86.a = phi i64 [ %i.as, %.lr.ph80 ], [ %indvars.iv.next87.a, %bb.r ] ; 2 uses
  %indvars.iv86 = phi i64 [ %i.ar, %.lr.ph80 ], [ %indvars.iv.next87, %bb.r ] ; 2 uses
  %.05978 = phi i1 [ false, %.lr.ph80 ], [ %.160, %bb.r ]
  %i.at = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.au = getelementptr [16 x i8], ptr %i.at, i64 %indvars.iv86 ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load double, ptr %i.av, align 8
  %i.ax = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.aw) #56
  br i1 %i.ax, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load double, ptr %i.au, align 8
  %i.az = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ay) #56 ; 2 uses
  %brmerge = or i1 %.05978, %i.az
  br i1 %brmerge, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr [16 x i8], ptr %i.at, i64 %indvars.iv86.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef align 8 dereferenceable(16) %i.ba, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef align 8 dereferenceable(16) %i.au, i64 16, i1 false)
  %i.bb = load i8, ptr %i.aq, align 4, !range !6, !noundef !7
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = load i32, ptr %i.a, align 8
  %i.be = and i32 %i.bd, 1
  %.not.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  %i.bf = load <4 x double>, ptr %4, align 8      ; 2 uses
  %i.bg = shufflevector <4 x double> %i.bf, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bh = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.bg)
  %i.bi = fadd <2 x double> %i.bg, %i.bh
  %i.bj = fptosi <2 x double> %i.bi to <2 x i32>
  %i.bk = shufflevector <4 x double> %i.bf, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bl = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.bk)
  %i.bm = fadd <2 x double> %i.bk, %i.bl
  %i.bn = fptosi <2 x double> %i.bm to <2 x i32>
  %i.bo = zext <2 x i32> %i.bn to <2 x i64>
  %i.bp = shl nuw <2 x i64> %i.bo, splat (i64 32)
  %i.bq = zext <2 x i32> %i.bj to <2 x i64>
  %i.br = or disjoint <2 x i64> %i.bp, %i.bq
  store <2 x i64> %i.br, ptr %3, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br label %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit

_ZN10QCPPainter8drawLineERK7QPointFS2_.exit:      ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.l, %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit
  %.160 = phi i1 [ true, %bb.l ], [ false, %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit ], [ %i.az, %bb.m ]
  %indvars.iv.next87 = add nsw i64 %indvars.iv86, 1 ; 2 uses
  %indvars.iv.next87.a = add nsw i64 %indvars.iv86.a, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next87 to i32
  %exitcond88.not = icmp eq i32 %lftr.wideiv, %i.ac
  br i1 %exitcond88.not, label %.loopexit, label %bb.l, !llvm.loop !1082

.critedge2:                                       ; preds = %bb.h, %bb.g, %.critedge
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bt = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.bu = trunc i64 %i.bt to i32                  ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph83, label %._crit_edge

.lr.ph83:                                         ; preds = %.critedge2
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count92 = and i64 %i.bt, 2147483647
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph83, %bb.w
  %indvars.iv89 = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next90.pre-phi, %bb.w ] ; 4 uses
  %.05881 = phi i32 [ 0, %.lr.ph83 ], [ %.1, %bb.w ] ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.by = getelementptr [16 x i8], ptr %i.bx, i64 %indvars.iv89 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %i.ca = load double, ptr %i.bz, align 8         ; 2 uses
  %i.cb = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ca) #56
  br i1 %i.cb, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = load double, ptr %i.by, align 8
  %i.cd = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.cc) #56
  br i1 %i.cd, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = call noundef zeroext i1 @_Z6qIsInfd(double noundef %i.ca) #56
  br i1 %i.ce, label %bb.v, label %._crit_edge94

._crit_edge94:                                    ; preds = %bb.u
  %.pre = add nuw nsw i64 %indvars.iv89, 1
  br label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.cf = sext i32 %.05881 to i64
  %i.cg = getelementptr [16 x i8], ptr %i.bx, i64 %i.cf
  %i.ch = trunc nuw nsw i64 %indvars.iv89 to i32
  %i.ci = sub i32 %i.ch, %.05881
  call void @_ZN8QPainter12drawPolylineEPK7QPointFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef %i.cg, i32 noundef %i.ci)
  %i.cj = add nuw nsw i64 %indvars.iv89, 1        ; 2 uses
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge94, %bb.v
  %indvars.iv.next90.pre-phi = phi i64 [ %.pre, %._crit_edge94 ], [ %i.cj, %bb.v ] ; 2 uses
  %.1 = phi i32 [ %.05881, %._crit_edge94 ], [ %i.ck, %bb.v ] ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90.pre-phi, %wide.trip.count92
  br i1 %exitcond93.not, label %._crit_edge, label %bb.s, !llvm.loop !1083

._crit_edge:                                      ; preds = %bb.w, %.critedge2
  %.058.lcssa = phi i32 [ 0, %.critedge2 ], [ %.1, %bb.w ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = sext i32 %.058.lcssa to i64
  %i.co = getelementptr [16 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = sub i32 %i.bu, %.058.lcssa
  call void @_ZN8QPainter12drawPolylineEPK7QPointFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef %i.co, i32 noundef %i.cp)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %.critedge4, %._crit_edge
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK8QCPCurve15drawScatterPlotEP10QCPPainterRK5QListI7QPointFERK15QCPScatterStyle(ptr noundef align 8 dereferenceable_or_null(288) %0, ptr noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef align 8 dereferenceable(65) %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 89
  %i.b = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  tail call void @_ZNK12QCPLayerable21applyAntialiasingHintEP10QCPPainterbN3QCP18AntialiasedElementE(ptr noundef readonly align 8 dereferenceable_or_null(184) %0, ptr noundef %1, i1 noundef zeroext %i.c, i32 noundef 128)
  %i.d = getelementptr i8, ptr %0, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.f = load i8, ptr %i.e, align 8, !range !6, !noundef !7
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = select i1 %i.g, ptr %i.h, ptr %i.d
  tail call void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef align 8 dereferenceable(8) %i.i)
  %i.j = getelementptr i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 4
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZNK15QCPScatterStyle7applyToEP10QCPPainterRK4QPen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  br label %_ZNK15QCPScatterStyle7applyToEP10QCPPainterRK4QPen.exit

_ZNK15QCPScatterStyle7applyToEP10QCPPainterRK4QPen.exit: ; preds = %bb.a, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  tail call void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.n = load ptr, ptr %2, align 8, !noalias !1084 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1084 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noalias !1084
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null        ; 3 uses
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate21qMakeForeachContainerIRK5QListI7QPointFEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK15QCPScatterStyle7applyToEP10QCPPainterRK4QPen.exit
  %i.s = atomicrmw add ptr %i.n, i32 1 acq_rel, align 4, !noalias !1084 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIRK5QListI7QPointFEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit

_ZN9QtPrivate21qMakeForeachContainerIRK5QListI7QPointFEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit: ; preds = %_ZNK15QCPScatterStyle7applyToEP10QCPPainterRK4QPen.exit, %bb.c
  %.idx = shl i64 %i.r, 4                         ; 2 uses
  %i.t = getelementptr i8, ptr %i.p, i64 %.idx
  %.not20 = icmp eq i64 %.idx, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK15QCPScatterStyle9drawShapeEP10QCPPainterRK7QPointF.exit, %_ZN9QtPrivate21qMakeForeachContainerIRK5QListI7QPointFEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListI7QPointFEED2Ev.exit, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i.i: ; preds = %._crit_edge
  %i.u = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.u, 1
  br i1 %.not.i.i.i, label %bb.d, label %_ZN9QtPrivate17QForeachContainerI5QListI7QPointFEED2Ev.exit

bb.d:                                             ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i.i
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.n, i64 noundef 16, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListI7QPointFEED2Ev.exit

_ZN9QtPrivate17QForeachContainerI5QListI7QPointFEED2Ev.exit: ; preds = %._crit_edge, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i.i, %bb.d
  ret void

.lr.ph:                                           ; preds = %_ZN9QtPrivate21qMakeForeachContainerIRK5QListI7QPointFEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit, %_ZNK15QCPScatterStyle9drawShapeEP10QCPPainterRK7QPointF.exit
  %.sroa.10.021 = phi ptr [ %i.ac, %_ZNK15QCPScatterStyle9drawShapeEP10QCPPainterRK7QPointF.exit ], [ %i.p, %_ZN9QtPrivate21qMakeForeachContainerIRK5QListI7QPointFEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit ] ; 3 uses
  %i.v = load double, ptr %.sroa.10.021, align 8  ; 2 uses
  %i.w = tail call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.v) #56
  br i1 %i.w, label %_ZNK15QCPScatterStyle9drawShapeEP10QCPPainterRK7QPointF.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.x = getelementptr i8, ptr %.sroa.10.021, i64 8
  %i.y = load double, ptr %i.x, align 8           ; 2 uses
  %i.z = tail call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.y) #56
  br i1 %i.z, label %_ZNK15QCPScatterStyle9drawShapeEP10QCPPainterRK7QPointF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK15QCPScatterStyle9drawShapeEP10QCPPainterdd(ptr noundef align 8 dereferenceable_or_null(65) %3, ptr noundef %1, double noundef %i.v, double noundef %i.y)
          to label %_ZNK15QCPScatterStyle9drawShapeEP10QCPPainterRK7QPointF.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListI7QPointFEED2Ev.exit14, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i.i12

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i.i12: ; preds = %bb.g
  %i.ab = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %.not.i.i.i13 = icmp eq i32 %i.ab, 1
  br i1 %.not.i.i.i13, label %bb.h, label %_ZN9QtPrivate17QForeachContainerI5QListI7QPointFEED2Ev.exit14

bb.h:                                             ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i.i12
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.n, i64 noundef 16, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListI7QPointFEED2Ev.exit14

_ZN9QtPrivate17QForeachContainerI5QListI7QPointFEED2Ev.exit14: ; preds = %bb.g, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i.i12, %bb.h
  resume { ptr, i32 } %i.aa

_ZNK15QCPScatterStyle9drawShapeEP10QCPPainterRK7QPointF.exit: ; preds = %bb.f, %bb.e, %.lr.ph
  %i.ac = getelementptr i8, ptr %.sroa.10.021, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.t
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1087
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZNK16QCPDataContainerI12QCPCurveDataE25limitIteratorsToDataRangeERN5QListIS0_E14const_iteratorES5_RK12QCPDataRange(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef align 8 dereferenceable(8) %1, ptr noundef align 8 dereferenceable(8) %2, ptr noundef align 4 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QCPDataRange, align 4        ; 4 uses
  %5 = alloca %class.QCPDataRange, align 4        ; 6 uses
  %6 = alloca %class.QCPDataRange, align 8        ; 4 uses
  %7 = alloca %class.QCPDataRange, align 8        ; 4 uses
  %8 = alloca %class.QCPDataRange, align 4        ; 4 uses
  %9 = alloca %class.QCPDataRange, align 4        ; 6 uses
  %10 = alloca %class.QCPDataRange, align 8       ; 4 uses
  %11 = alloca %class.QCPDataRange, align 8       ; 4 uses
  %12 = alloca %class.QCPDataRange, align 8       ; 4 uses
  %13 = alloca %class.QCPDataRange, align 4       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #51
  %i.a = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [24 x i8], ptr %i.b, i64 %i.e
  %i.g = load ptr, ptr %1, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  %i.l = trunc i64 %i.k to i32
  %i.m = load ptr, ptr %2, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.i
  %i.p = sdiv exact i64 %i.o, 24
  %i.q = trunc i64 %i.p to i32
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %13, i32 noundef %i.l, i32 noundef %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
end_hunk_2
begin_hunk_3_@_ZN13QCPPolarGraph13deselectEventEPb:bb.a

bb.h:                                             ; preds = %_ZNK12QCPDataRangeneERKS_.exit.i.i
  %i.p = add i32 %.0812.i.i, 1                    ; 2 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %.not16.i.i = icmp sgt i64 %i.h, %i.q
  br i1 %.not16.i.i, label %bb.i, label %_ZNK16QCPDataSelectionneERKS_.exit, !llvm.loop !55

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i
  %i.r = phi i64 [ 0, %.lr.ph.i.i ], [ %i.q, %bb.h ] ; 2 uses
  %.0812.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.p, %bb.h ]
  %i.s = getelementptr [8 x i8], ptr %i.o, i64 %i.r ; 2 uses
  %i.t = getelementptr [8 x i8], ptr %i.f, i64 %i.r ; 2 uses
  %i.u = load i32, ptr %i.s, align 4
  %i.v = load i32, ptr %i.t, align 4
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %_ZNK12QCPDataRangeneERKS_.exit.i.i, label %_ZNK16QCPDataSelectionneERKS_.exit

_ZNK12QCPDataRangeneERKS_.exit.i.i:               ; preds = %bb.i
  %i.x = getelementptr i8, ptr %i.s, i64 4
  %i.y = load i32, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.aa = load i32, ptr %i.z, align 4
  %.not11.i.i = icmp eq i32 %i.y, %i.aa
  br i1 %.not11.i.i, label %bb.h, label %_ZNK16QCPDataSelectionneERKS_.exit

_ZNK16QCPDataSelectionneERKS_.exit:               ; preds = %_ZNK12QCPDataRangeneERKS_.exit.i.i, %bb.i, %bb.h, %.preheader.i.i, %bb.g
  %i.ab = phi i8 [ 1, %bb.g ], [ 0, %.preheader.i.i ], [ 1, %_ZNK12QCPDataRangeneERKS_.exit.i.i ], [ 1, %bb.i ], [ 0, %bb.h ]
  store i8 %i.ab, ptr %1, align 1
  br label %bb.m

bb.j:                                             ; preds = %_ZN16QCPDataSelectionC2ERKS_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZN16QCPDataSelectionD2Ev.exit12

bb.k:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ae = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i9, label %_ZN16QCPDataSelectionD2Ev.exit12, label %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i10

_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i10: ; preds = %bb.k
  %i.af = atomicrmw sub ptr %i.ae, i32 1 acq_rel, align 4
  %.not.i.i.i11 = icmp eq i32 %i.af, 1
  br i1 %.not.i.i.i11, label %bb.l, label %_ZN16QCPDataSelectionD2Ev.exit12

bb.l:                                             ; preds = %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i10
  %i.ag = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ag, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN16QCPDataSelectionD2Ev.exit12

bb.m:                                             ; preds = %_ZNK16QCPDataSelectionneERKS_.exit, %_ZN16QCPDataSelectionD2Ev.exit
  br i1 %.not.i.i.i.i, label %_ZN16QCPDataSelectionD2Ev.exit16, label %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i14

_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i14: ; preds = %bb.m
  %i.ah = atomicrmw sub ptr %i.d, i32 1 acq_rel, align 4
  %.not.i.i.i15 = icmp eq i32 %i.ah, 1
  br i1 %.not.i.i.i15, label %bb.n, label %_ZN16QCPDataSelectionD2Ev.exit16

bb.n:                                             ; preds = %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i14
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.d, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN16QCPDataSelectionD2Ev.exit16

_ZN16QCPDataSelectionD2Ev.exit12:                 ; preds = %bb.l, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i10, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %i.ad, %bb.k ], [ %i.ad, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i10 ], [ %i.ad, %bb.l ]
  br i1 %.not.i.i.i.i, label %_ZN16QCPDataSelectionD2Ev.exit20, label %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i18

_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i18: ; preds = %_ZN16QCPDataSelectionD2Ev.exit12
  %i.ai = atomicrmw sub ptr %i.d, i32 1 acq_rel, align 4
  %.not.i.i.i19 = icmp eq i32 %i.ai, 1
  br i1 %.not.i.i.i19, label %bb.o, label %_ZN16QCPDataSelectionD2Ev.exit20

bb.o:                                             ; preds = %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i18
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.d, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN16QCPDataSelectionD2Ev.exit20

_ZN16QCPDataSelectionD2Ev.exit20:                 ; preds = %_ZN16QCPDataSelectionD2Ev.exit12, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i18, %bb.o
  resume { ptr, i32 } %.pn

_ZN16QCPDataSelectionD2Ev.exit16:                 ; preds = %bb.n, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i14, %bb.m, %bb.a
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK13QCPPolarGraph12drawLinePlotEP10QCPPainterRK5QListI7QPointFE(ptr noundef align 8 dereferenceable_or_null(280) %0, ptr noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %class.QColor, align 8              ; 6 uses
  %i.a = tail call noundef align 8 dereferenceable(8) ptr @_ZNK8QPainter3penEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
  %i.b = tail call noundef i32 @_ZNK4QPen5styleEv(ptr noundef align 8 dereferenceable_or_null(8) %i.a)
  %.not = icmp eq i32 %i.b, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef align 8 dereferenceable(8) ptr @_ZNK8QPainter3penEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
  %i.d = tail call { i64, i64 } @_ZNK4QPen5colorEv(ptr noundef align 8 dereferenceable_or_null(8) %i.c) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i64 } %i.d, 0
  %.fca.1.extract = extractvalue { i64, i64 } %i.d, 1
  store i64 %.fca.0.extract, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.extract.trunc = trunc i64 %.fca.1.extract to i48
  store i48 %.sroa.2.0.extract.trunc, ptr %.sroa.2.0..sroa_idx, align 8
  %i.e = call noundef i32 @_ZNK6QColor5alphaEv(ptr noundef nonnull align 4 dereferenceable_or_null(14) %3) #51
  %.not6 = icmp eq i32 %i.e, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef align 8 dereferenceable_or_null(280) %0, ptr noundef %1)
  call void @_ZNK13QCPPolarGraph12drawPolylineEP10QCPPainterRK5QListI7QPointFE(ptr noundef align 8 dereferenceable_or_null(280) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(24) %2)
  br label %bb.d

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK13QCPPolarGraph12drawPolylineEP10QCPPainterRK5QListI7QPointFE(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(280) %0, ptr noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %class.QLine, align 16              ; 4 uses
  %4 = alloca %class.QLineF, align 8              ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 312
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 8
  %i.d = and i32 %.sroa.0.0.copyload.i, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef align 8 dereferenceable(8) ptr @_ZNK8QPainter3penEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
  %i.f = tail call noundef i32 @_ZNK4QPen5styleEv(ptr noundef align 8 dereferenceable_or_null(8) %i.e)
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.sroa.0.0.copyload.i56 = load i32, ptr %i.h, align 8
  %i.i = and i32 %.sroa.0.0.copyload.i56, 3
  %or.cond.not = icmp eq i32 %i.i, 0
  br i1 %or.cond.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = trunc i64 %i.k to i32                    ; 4 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %wide.trip.count = and i64 %i.k, 2147483647
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge4
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge4 ] ; 3 uses
  %i.p = getelementptr [16 x i8], ptr %i.o, i64 %indvars.iv ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = load double, ptr %i.q, align 8
  %i.s = tail call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.r) #56
  br i1 %i.s, label %.critedge4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load double, ptr %i.p, align 8
  %i.u = tail call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.t) #56
  br i1 %i.u, label %.critedge4, label %.critedge2.loopexit.split.loop.exit85

.critedge4:                                       ; preds = %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %bb.e, !llvm.loop !1553

.critedge2.loopexit.split.loop.exit85:            ; preds = %bb.f
  %i.v = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge4, %.critedge2.loopexit.split.loop.exit85, %bb.d
  %.053.lcssa = phi i32 [ 0, %bb.d ], [ %i.v, %.critedge2.loopexit.split.loop.exit85 ], [ %i.l, %.critedge4 ] ; 2 uses
  %.15464 = add i32 %.053.lcssa, 1                ; 2 uses
  %i.w = icmp slt i32 %.15464, %i.l
  br i1 %i.w, label %.lr.ph68, label %.loopexit

.lr.ph68:                                         ; preds = %.critedge2
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = getelementptr i8, ptr %1, i64 12
  %i.aa = sext i32 %.15464 to i64
  %i.ab = sext i32 %.053.lcssa to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph68, %bb.m
  %indvars.iv74.a = phi i64 [ %i.ab, %.lr.ph68 ], [ %indvars.iv.next75.a, %bb.m ] ; 2 uses
  %indvars.iv74 = phi i64 [ %i.aa, %.lr.ph68 ], [ %indvars.iv.next75, %bb.m ] ; 2 uses
  %.05166 = phi i1 [ false, %.lr.ph68 ], [ %.152, %bb.m ]
  %i.ac = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.ad = getelementptr [16 x i8], ptr %i.ac, i64 %indvars.iv74 ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = load double, ptr %i.ae, align 8
  %i.ag = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.af) #56
  br i1 %i.ag, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load double, ptr %i.ad, align 8
  %i.ai = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ah) #56 ; 2 uses
  %brmerge = or i1 %.05166, %i.ai
  br i1 %brmerge, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr [16 x i8], ptr %i.ac, i64 %indvars.iv74.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  %i.ak = load i8, ptr %i.z, align 4, !range !6, !noundef !7
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load i32, ptr %i.h, align 8
  %i.an = and i32 %i.am, 1
  %.not.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  %i.ao = load <4 x double>, ptr %4, align 8      ; 2 uses
  %i.ap = shufflevector <4 x double> %i.ao, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aq = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ap)
  %i.ar = fadd <2 x double> %i.ap, %i.aq
  %i.as = fptosi <2 x double> %i.ar to <2 x i32>
  %i.at = shufflevector <4 x double> %i.ao, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.au = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.at)
  %i.av = fadd <2 x double> %i.at, %i.au
  %i.aw = fptosi <2 x double> %i.av to <2 x i32>
  %i.ax = zext <2 x i32> %i.aw to <2 x i64>
  %i.ay = shl nuw <2 x i64> %i.ax, splat (i64 32)
  %i.az = zext <2 x i32> %i.as to <2 x i64>
  %i.ba = or disjoint <2 x i64> %i.ay, %i.az
  store <2 x i64> %i.ba, ptr %3, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br label %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit

_ZN10QCPPainter8drawLineERK7QPointFS2_.exit:      ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.g, %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit
  %.152 = phi i1 [ true, %bb.g ], [ false, %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit ], [ %i.ai, %bb.h ]
  %indvars.iv.next75 = add nsw i64 %indvars.iv74, 1 ; 2 uses
  %indvars.iv.next75.a = add nsw i64 %indvars.iv74.a, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next75 to i32
  %exitcond76.not = icmp eq i32 %lftr.wideiv, %i.l
  br i1 %exitcond76.not, label %.loopexit, label %bb.g, !llvm.loop !1554

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = trunc i64 %i.bc to i32                  ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph71, label %._crit_edge

.lr.ph71:                                         ; preds = %.critedge
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count80 = and i64 %i.bc, 2147483647
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph71, %bb.r
  %indvars.iv77 = phi i64 [ 0, %.lr.ph71 ], [ %indvars.iv.next78.pre-phi, %bb.r ] ; 4 uses
  %.05069 = phi i32 [ 0, %.lr.ph71 ], [ %.1, %bb.r ] ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr [16 x i8], ptr %i.bg, i64 %indvars.iv77 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load double, ptr %i.bi, align 8         ; 2 uses
  %i.bk = tail call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.bj) #56
  br i1 %i.bk, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = load double, ptr %i.bh, align 8
  %i.bm = tail call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.bl) #56
  br i1 %i.bm, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = tail call noundef zeroext i1 @_Z6qIsInfd(double noundef %i.bj) #56
  br i1 %i.bn, label %bb.q, label %._crit_edge82

._crit_edge82:                                    ; preds = %bb.p
  %.pre = add nuw nsw i64 %indvars.iv77, 1
  br label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.bo = sext i32 %.05069 to i64
  %i.bp = getelementptr [16 x i8], ptr %i.bg, i64 %i.bo
  %i.bq = trunc nuw nsw i64 %indvars.iv77 to i32
  %i.br = sub i32 %i.bq, %.05069
  tail call void @_ZN8QPainter12drawPolylineEPK7QPointFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef %i.bp, i32 noundef %i.br)
  %i.bs = add nuw nsw i64 %indvars.iv77, 1        ; 2 uses
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge82, %bb.q
  %indvars.iv.next78.pre-phi = phi i64 [ %.pre, %._crit_edge82 ], [ %i.bs, %bb.q ] ; 2 uses
  %.1 = phi i32 [ %.05069, %._crit_edge82 ], [ %i.bt, %bb.q ] ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78.pre-phi, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge, label %bb.n, !llvm.loop !1555

._crit_edge:                                      ; preds = %bb.r, %.critedge
  %.050.lcssa = phi i32 [ 0, %.critedge ], [ %.1, %bb.r ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = sext i32 %.050.lcssa to i64
  %i.bx = getelementptr [16 x i8], ptr %i.bv, i64 %i.bw
  %i.by = sub i32 %i.bd, %.050.lcssa
  tail call void @_ZN8QPainter12drawPolylineEPK7QPointFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef %i.bx, i32 noundef %i.by)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.critedge2, %._crit_edge
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK13QCPPolarGraph8drawFillEP10QCPPainterP5QListI7QPointFE(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(280) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 184
  %i.b = load i8, ptr %i.a, align 8, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  tail call void @_ZNK12QCPLayerable21applyAntialiasingHintEP10QCPPainterbN3QCP18AntialiasedElementE(ptr noundef readonly align 8 dereferenceable_or_null(280) %0, ptr noundef %1, i1 noundef zeroext %i.c, i32 noundef 256)
  %i.d = tail call noundef align 8 dereferenceable(8) ptr @_ZNK8QPainter5brushEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %_ZN5QListI7QPointFED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef align 8 dereferenceable(8) ptr @_ZNK8QPainter5brushEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = tail call noundef i32 @_ZNK6QColor5alphaEv(ptr noundef align 4 dereferenceable_or_null(14) %i.j) #51
  %.not7 = icmp eq i32 %i.k, 0
  br i1 %.not7, label %_ZN5QListI7QPointFED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %2, align 8                ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %.not.i.i.i.i = icmp eq ptr %i.l, null          ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZN9QPolygonFC2ERK5QListI7QPointFE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = atomicrmw add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN9QPolygonFC2ERK5QListI7QPointFE.exit

_ZN9QPolygonFC2ERK5QListI7QPointFE.exit:          ; preds = %bb.c, %bb.d
  %i.r = trunc i64 %i.p to i32
  invoke void @_ZN8QPainter11drawPolygonEPK7QPointFiN2Qt8FillRuleE(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef %i.n, i32 noundef %i.r, i32 noundef 0)
          to label %_ZN8QPainter11drawPolygonERK9QPolygonFN2Qt8FillRuleE.exit unwind label %bb.f

_ZN8QPainter11drawPolygonERK9QPolygonFN2Qt8FillRuleE.exit: ; preds = %_ZN9QPolygonFC2ERK5QListI7QPointFE.exit
  br i1 %.not.i.i.i.i, label %_ZN5QListI7QPointFED2Ev.exit, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i: ; preds = %_ZN8QPainter11drawPolygonERK9QPolygonFN2Qt8FillRuleE.exit
  %i.s = atomicrmw sub ptr %i.l, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.s, 1
  br i1 %.not.i.i, label %bb.e, label %_ZN5QListI7QPointFED2Ev.exit

bb.e:                                             ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.l, i64 noundef 16, i64 noundef 8) #51
  br label %_ZN5QListI7QPointFED2Ev.exit

bb.f:                                             ; preds = %_ZN9QPolygonFC2ERK5QListI7QPointFE.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.i.i.i.i, label %_ZN5QListI7QPointFED2Ev.exit11, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i9

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i9: ; preds = %bb.f
  %i.u = atomicrmw sub ptr %i.l, i32 1 acq_rel, align 4
  %.not.i.i10 = icmp eq i32 %i.u, 1
  br i1 %.not.i.i10, label %bb.g, label %_ZN5QListI7QPointFED2Ev.exit11

bb.g:                                             ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i9
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.l, i64 noundef 16, i64 noundef 8) #51
  br label %_ZN5QListI7QPointFED2Ev.exit11

_ZN5QListI7QPointFED2Ev.exit11:                   ; preds = %bb.f, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i9, %bb.g
  resume { ptr, i32 } %i.t

_ZN5QListI7QPointFED2Ev.exit:                     ; preds = %bb.e, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i, %_ZN8QPainter11drawPolygonERK9QPolygonFN2Qt8FillRuleE.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK13QCPPolarGraph25applyFillAntialiasingHintEP10QCPPainter(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(280) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 184
  %i.b = load i8, ptr %i.a, align 8, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  tail call void @_ZNK12QCPLayerable21applyAntialiasingHintEP10QCPPainterbN3QCP18AntialiasedElementE(ptr noundef align 8 dereferenceable_or_null(57) %0, ptr noundef %1, i1 noundef zeroext %i.c, i32 noundef 256)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK13QCPPolarGraph15drawScatterPlotEP10QCPPainterRK5QListI7QPointFERK15QCPScatterStyle(ptr noundef align 8 dereferenceable_or_null(280) %0, ptr noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef align 8 dereferenceable(65) %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 185
  %i.b = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  tail call void @_ZNK12QCPLayerable21applyAntialiasingHintEP10QCPPainterbN3QCP18AntialiasedElementE(ptr noundef readonly align 8 dereferenceable_or_null(280) %0, ptr noundef %1, i1 noundef zeroext %i.c, i32 noundef 128)
  %i.d = getelementptr i8, ptr %0, i64 192
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.f = load i8, ptr %i.e, align 8, !range !6, !noundef !7
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = select i1 %i.g, ptr %i.h, ptr %i.d
  tail call void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef align 8 dereferenceable(8) %i.i)
  %i.j = getelementptr i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 4
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZNK15QCPScatterStyle7applyToEP10QCPPainterRK4QPen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  br label %_ZNK15QCPScatterStyle7applyToEP10QCPPainterRK4QPen.exit

_ZNK15QCPScatterStyle7applyToEP10QCPPainterRK4QPen.exit: ; preds = %bb.a, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  tail call void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK15QCPScatterStyle7applyToEP10QCPPainterRK4QPen.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %_ZNK15QCPScatterStyle7applyToEP10QCPPainterRK4QPen.exit
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.r = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.c ]
  %.013 = phi i32 [ 0, %.lr.ph ], [ %i.x, %bb.c ]
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = getelementptr [16 x i8], ptr %i.s, i64 %i.r ; 2 uses
  %i.u = load double, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %i.t, i64 8
  %i.w = load double, ptr %i.v, align 8
  tail call void @_ZNK15QCPScatterStyle9drawShapeEP10QCPPainterdd(ptr noundef align 8 dereferenceable_or_null(65) %3, ptr noundef %1, double noundef %i.u, double noundef %i.w)
  %i.x = add i32 %.013, 1                         ; 2 uses
end_hunk_3
