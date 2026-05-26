inline.NumInlined: 675
inline.NumDeleted: 297
begin_hunk_0_@_ZN10ODDLParser13OpenDDLParser20parseFloatingLiteralEPcS1_PPNS_5ValueENS2_9ValueTypeE:bb.a
  %.010.i = phi ptr [ %i.g, %.critedge2.i ], [ %0, %.lr.ph.preheader.i ] ; 3 uses
  %i.f = load i8, ptr %.010.i, align 1
  switch i8 %i.f, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
    i8 13, label %.critedge2.i
    i8 10, label %.critedge2.i
    i8 44, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, label %.lr.ph.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i, %.critedge2.i
  %.0.lcssa.i = phi ptr [ %scevgep.i, %.critedge2.i ], [ %.010.i, %.lr.ph.i ] ; 10 uses
  %.not46 = icmp eq ptr %.0.lcssa.i, %1
  br i1 %.not46, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %.0.lcssa.i64 = ptrtoint ptr %.0.lcssa.i to i64
  %i.h = sub i64 %i.c, %.0.lcssa.i64
  %scevgep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.h
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.03247 = phi ptr [ %i.j, %bb.b ], [ %.0.lcssa.i, %.lr.ph.preheader ] ; 10 uses
  %i.i = load i8, ptr %.03247, align 1
  switch i8 %i.i, label %bb.b [
    i8 125, label %.critedge
    i8 123, label %.critedge
    i8 91, label %.critedge
    i8 44, label %.critedge
    i8 41, label %.critedge
    i8 40, label %.critedge
    i8 32, label %.critedge
    i8 9, label %.critedge
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.03247, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.j, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !39

.critedge:                                        ; preds = %bb.b, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %.032.lcssa = phi ptr [ %.0.lcssa.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ], [ %.03247, %.lr.ph ], [ %.03247, %.lr.ph ], [ %.03247, %.lr.ph ], [ %.03247, %.lr.ph ], [ %.03247, %.lr.ph ], [ %.03247, %.lr.ph ], [ %.03247, %.lr.ph ], [ %.03247, %.lr.ph ], [ %scevgep, %bb.b ] ; 5 uses
  %i.k = load i8, ptr %.0.lcssa.i, align 1        ; 3 uses
  %i.l = icmp eq i8 %i.k, 48
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1 ; 2 uses
  %.not.i39 = icmp eq ptr %i.m, %1
  br i1 %.not.i39, label %.critedge38, label %_ZN10ODDLParser12isHexLiteralIcEEbPT_S2_.exit

_ZN10ODDLParser12isHexLiteralIcEEbPT_S2_.exit:    ; preds = %bb.c
  %i.n = load i8, ptr %i.m, align 1
  %i.o = add i8 %i.n, -88
  %switch.and.i = and i8 %i.o, -33
  %switch.selectcmp.i = icmp eq i8 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %bb.d, label %.critedge38

bb.d:                                             ; preds = %_ZN10ODDLParser12isHexLiteralIcEEbPT_S2_.exit
  %i.p = tail call noundef ptr @_ZN10ODDLParser13OpenDDLParser16parseHexaLiteralEPcS1_PPNS_5ValueE(ptr noundef nonnull %.0.lcssa.i, ptr noundef %1, ptr noundef nonnull %2) ; 0 uses
  br label %.critedge36

bb.e:                                             ; preds = %.critedge
  %i.q = add i8 %i.k, -48
  %.0.i40 = icmp ult i8 %i.q, 11
  br i1 %.0.i40, label %.critedge38, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i8 %i.k, 45
  br i1 %i.r, label %bb.g, label %.critedge36

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %i.u = add i8 %i.t, -48
  %.0.i41 = icmp ult i8 %i.u, 11
  br i1 %.0.i41, label %.critedge38, label %.critedge36

.critedge38:                                      ; preds = %_ZN10ODDLParser12isHexLiteralIcEEbPT_S2_.exit, %bb.c, %bb.e, %bb.g
  %i.v = icmp eq i32 %3, 11
  %i.w = tail call double @strtod(ptr noundef nonnull captures(none) %.0.lcssa.i, ptr noundef null) #27 ; 2 uses
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge38
  %i.x = tail call noundef ptr @_ZN10ODDLParser14ValueAllocator13allocPrimDataENS_5Value9ValueTypeEm(i32 noundef 11, i64 noundef 1) ; 2 uses
  store ptr %i.x, ptr %2, align 8
  tail call void @_ZN10ODDLParser5Value9setDoubleEd(ptr noundef nonnull align 8 dereferenceable(32) %i.x, double noundef %i.w)
  br label %.critedge36

bb.i:                                             ; preds = %.critedge38
  %i.y = fptrunc double %i.w to float
  %i.z = tail call noundef ptr @_ZN10ODDLParser14ValueAllocator13allocPrimDataENS_5Value9ValueTypeEm(i32 noundef 10, i64 noundef 1) ; 2 uses
  store ptr %i.z, ptr %2, align 8
  tail call void @_ZN10ODDLParser5Value8setFloatEf(ptr noundef nonnull align 8 dereferenceable(32) %i.z, float noundef %i.y)
  br label %.critedge36

.critedge36:                                      ; preds = %bb.d, %bb.f, %bb.h, %bb.i, %bb.g, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ %.032.lcssa, %bb.g ], [ %.032.lcssa, %bb.i ], [ %.032.lcssa, %bb.h ], [ %.032.lcssa, %bb.f ], [ %.032.lcssa, %bb.d ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser16parseHexaLiteralEPcS1_PPNS_5ValueE(ptr noundef %0, ptr noundef %1, ptr noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  store ptr null, ptr %2, align 8
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %0, %1
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.g, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.a, %i.d
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.e ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.010.i = phi ptr [ %i.g, %.critedge2.i ], [ %0, %.lr.ph.preheader.i ] ; 3 uses
  %i.f = load i8, ptr %.010.i, align 1            ; 2 uses
  switch i8 %i.f, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
    i8 13, label %.critedge2.i
    i8 10, label %.critedge2.i
    i8 44, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split, label %.lr.ph.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split: ; preds = %.critedge2.i
  %.pr = load i8, ptr %scevgep.i, align 1
  br label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split
  %i.h = phi i8 [ %.pr, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split ], [ %i.f, %.lr.ph.i ]
  %.0.lcssa.i = phi ptr [ %scevgep.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split ], [ %.010.i, %.lr.ph.i ] ; 5 uses
  %.0.lcssa.i105 = ptrtoint ptr %.0.lcssa.i to i64 ; 2 uses
  %.not = icmp eq i8 %i.h, 48
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1
  switch i8 %i.j, label %bb.g [
    i8 120, label %bb.c
    i8 88, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 2 ; 4 uses
  %.not6470 = icmp eq ptr %i.k, %1
  br i1 %.not6470, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.l = sub i64 %i.a, %.0.lcssa.i105
  %scevgep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.l
  %i.m = trunc i64 %i.a to i32
  %i.n = add i32 %i.m, -2
  %i.o = trunc i64 %.0.lcssa.i105 to i32
  %i.p = sub i32 %i.n, %i.o
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.04772 = phi i32 [ %i.r, %bb.d ], [ 0, %.lr.ph.preheader ] ; 9 uses
  %.05371 = phi ptr [ %i.s, %bb.d ], [ %i.k, %.lr.ph.preheader ] ; 10 uses
  %i.q = load i8, ptr %.05371, align 1
  switch i8 %i.q, label %bb.d [
    i8 125, label %.critedge
    i8 123, label %.critedge
    i8 91, label %.critedge
    i8 44, label %.critedge
    i8 41, label %.critedge
    i8 40, label %.critedge
    i8 32, label %.critedge
    i8 9, label %.critedge
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.r = add nuw nsw i32 %.04772, 1
  %i.s = getelementptr inbounds nuw i8, ptr %.05371, i64 1 ; 2 uses
  %.not64 = icmp eq ptr %i.s, %1
  br i1 %.not64, label %.critedge, label %.lr.ph, !llvm.loop !40

.critedge:                                        ; preds = %bb.d, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.053.lcssa = phi ptr [ %.05371, %.lr.ph ], [ %scevgep, %bb.d ], [ %.05371, %.lr.ph ], [ %.05371, %.lr.ph ], [ %.05371, %.lr.ph ], [ %.05371, %.lr.ph ], [ %.05371, %.lr.ph ], [ %.05371, %.lr.ph ], [ %.05371, %.lr.ph ] ; 2 uses
  %.047.lcssa = phi i32 [ %.04772, %.lr.ph ], [ %i.p, %bb.d ], [ %.04772, %.lr.ph ], [ %.04772, %.lr.ph ], [ %.04772, %.lr.ph ], [ %.04772, %.lr.ph ], [ %.04772, %.lr.ph ], [ %.04772, %.lr.ph ], [ %.04772, %.lr.ph ] ; 2 uses
  %i.t = icmp sgt i32 %.047.lcssa, 0
  br i1 %i.t, label %.lr.ph101, label %._crit_edge

.lr.ph101:                                        ; preds = %.critedge, %.backedge
  %.044100 = phi i32 [ %i.ad, %.backedge ], [ 0, %.critedge ]
  %.14899 = phi i32 [ %.148.be, %.backedge ], [ %.047.lcssa, %.critedge ] ; 2 uses
  %.05098 = phi ptr [ %.050.be, %.backedge ], [ %i.k, %.critedge ] ; 2 uses
  %i.u = load i8, ptr %.05098, align 1            ; 3 uses
  %i.v = add i8 %i.u, -48
  %.0.i.i = icmp ult i8 %i.v, 11
  br i1 %.0.i.i, label %bb.e, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph101
  %i.w = sext i8 %i.u to i32                      ; 2 uses
  %i.x = add nsw i32 %i.w, -65
  %i.y = add nsw i32 %i.w, -97
  %umin.i = tail call i32 @llvm.umin.i32(i32 %i.x, i32 %i.y)
  %umin.i.fr = freeze i32 %umin.i                 ; 2 uses
  %i.z = icmp ult i32 %umin.i.fr, 16
  %switch.offset.i = add nuw nsw i32 %umin.i.fr, 10
  %spec.select = select i1 %i.z, i32 %switch.offset.i, i32 9999999
  br label %.backedge

bb.e:                                             ; preds = %.lr.ph101
  %i.aa = zext nneg i8 %i.u to i32
  %i.ab = add nsw i32 %i.aa, -48
  br label %.backedge

.backedge:                                        ; preds = %.preheader.i, %bb.e
  %switch.offset.i.sink = phi i32 [ %i.ab, %bb.e ], [ %spec.select, %.preheader.i ]
  %i.ac = shl i32 %.044100, 4
  %i.ad = or i32 %switch.offset.i.sink, %i.ac     ; 2 uses
  %.148.be = add nsw i32 %.14899, -1
  %.050.be = getelementptr inbounds nuw i8, ptr %.05098, i64 1
  %i.ae = icmp sgt i32 %.14899, 1
  br i1 %i.ae, label %.lr.ph101, label %._crit_edge.loopexit, !llvm.loop !41

._crit_edge.loopexit:                             ; preds = %.backedge
  %i.af = sext i32 %i.ad to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit, %.critedge
  %.053.lcssa113 = phi ptr [ %.053.lcssa, %.critedge ], [ %.053.lcssa, %._crit_edge.loopexit ], [ %i.k, %bb.c ] ; 2 uses
  %.044.lcssa = phi i64 [ 0, %.critedge ], [ %i.af, %._crit_edge.loopexit ], [ 0, %bb.c ]
  %i.ag = tail call noundef ptr @_ZN10ODDLParser14ValueAllocator13allocPrimDataENS_5Value9ValueTypeEm(i32 noundef 8, i64 noundef 1) ; 3 uses
  store ptr %i.ag, ptr %2, align 8
  %.not65 = icmp eq ptr %i.ag, null
  br i1 %.not65, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  tail call void @_ZN10ODDLParser5Value16setUnsignedInt64Em(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 noundef %.044.lcssa)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f, %bb.b, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, %bb.a
  %.4 = phi ptr [ %i.i, %bb.b ], [ %0, %bb.a ], [ %.0.lcssa.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ], [ %.053.lcssa113, %._crit_edge ], [ %.053.lcssa113, %bb.f ]
  ret ptr %.4
}

declare void @_ZN10ODDLParser5Value9setDoubleEd(ptr noundef nonnull align 8 dereferenceable(32), double noundef) local_unnamed_addr #16

declare void @_ZN10ODDLParser5Value8setFloatEf(ptr noundef nonnull align 8 dereferenceable(32), float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE(ptr noundef %0, ptr noundef %1, ptr noundef captures(none) initializes((0, 8)) %2) local_unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %2, align 8
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.e ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.010.i = phi ptr [ %i.g, %.critedge2.i ], [ %0, %.lr.ph.preheader.i ] ; 3 uses
  %i.f = load i8, ptr %.010.i, align 1            ; 2 uses
  switch i8 %i.f, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
    i8 13, label %.critedge2.i
    i8 10, label %.critedge2.i
    i8 44, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split, label %.lr.ph.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split: ; preds = %.critedge2.i
  %.pr = load i8, ptr %scevgep.i, align 1
  br label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split
  %i.h = phi i8 [ %.pr, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split ], [ %i.f, %.lr.ph.i ]
  %.0.lcssa.i = phi ptr [ %scevgep.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split ], [ %.010.i, %.lr.ph.i ] ; 3 uses
  %i.i = icmp eq i8 %i.h, 34
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1 ; 4 uses
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp ne i8 %i.k, 34
  %i.m = icmp ne ptr %i.j, %1
  %i.n = and i1 %i.m, %i.l
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.032 = phi i64 [ %i.p, %.lr.ph ], [ 0, %bb.b ]
  %.02631 = phi ptr [ %i.o, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02631, i64 1 ; 3 uses
  %i.p = add i64 %.032, 1                         ; 2 uses
  %i.q = load i8, ptr %i.o, align 1
  %i.r = icmp ne i8 %i.q, 34
  %i.s = icmp ne ptr %i.o, %1
  %i.t = and i1 %i.s, %i.r
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.u = phi ptr [ %.0.lcssa.i, %bb.b ], [ %.02631, %.lr.ph ]
  %.0.lcssa = phi i64 [ 0, %bb.b ], [ %i.p, %.lr.ph ] ; 3 uses
  %i.v = tail call noundef ptr @_ZN10ODDLParser14ValueAllocator13allocPrimDataENS_5Value9ValueTypeEm(i32 noundef 12, i64 noundef %.0.lcssa) ; 2 uses
  store ptr %i.v, ptr %2, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call ptr @strncpy(ptr noundef %i.x, ptr noundef nonnull %i.j, i64 noundef %.0.lcssa) #27 ; 0 uses
  %i.z = load ptr, ptr %2, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.0.lcssa
  store i8 0, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  br label %bb.c

bb.c:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, %._crit_edge, %bb.a
  %.025 = phi ptr [ %0, %bb.a ], [ %i.ad, %._crit_edge ], [ %.0.lcssa.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ]
  ret ptr %.025
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN10ODDLParserL22createPropertyWithDataEPNS_4TextEPNS_5ValueEPPNS_8PropertyE(ptr noundef %0, ptr noundef %1, ptr noundef writeonly captures(none) %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31 ; 4 uses
  invoke void @_ZN10ODDLParser8PropertyC1EPNS_4TextE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #28
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN10ODDLParser7isFloatIcEEbPT_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #20 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %.peel.begin, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1
  %i.b = icmp eq i8 %i.a, 45
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.b, %bb.a
  %.019 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.b ] ; 9 uses
  %i.c = load i8, ptr %.019, align 1              ; 9 uses
  switch i8 %i.c, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel [
    i8 125, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread
    i8 44, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread
    i8 32, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread
    i8 9, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread
  ]

_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel: ; preds = %.peel.begin
  %.not7.i.peel = icmp ne i8 %i.c, 41
  %i.d = icmp ne ptr %.019, %1
  %spec.select.i.peel = and i1 %i.d, %.not7.i.peel
  br i1 %spec.select.i.peel, label %bb.c, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread

bb.c:                                             ; preds = %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel
  %i.e = icmp eq i8 %i.c, 46
  br i1 %i.e, label %.preheader.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add i8 %i.c, -48
  %.0.i.peel = icmp ult i8 %i.f, 11
  br i1 %.0.i.peel, label %.peel.next, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread

.peel.next:                                       ; preds = %bb.d, %bb.f
  %.019.pn = phi ptr [ %.120, %bb.f ], [ %.019, %bb.d ]
  %.120 = getelementptr inbounds nuw i8, ptr %.019.pn, i64 1 ; 9 uses
  %i.g = load i8, ptr %.120, align 1              ; 9 uses
  switch i8 %i.g, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit [
    i8 125, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread
    i8 44, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread
    i8 32, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread
    i8 9, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread
  ]

_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit: ; preds = %.peel.next
  %.not7.i = icmp ne i8 %i.g, 41
  %i.h = icmp ne ptr %.120, %1
  %spec.select.i = and i1 %i.h, %.not7.i
  br i1 %spec.select.i, label %bb.e, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread

bb.e:                                             ; preds = %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit
  %i.i = icmp eq i8 %i.g, 46
  br i1 %i.i, label %.preheader.preheader, label %bb.f

end_hunk_0
