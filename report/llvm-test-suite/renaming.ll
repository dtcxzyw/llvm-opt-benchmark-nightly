inline.NumInlined: 561
inline.NumDeleted: 71
begin_hunk_0_@ren_GetRenamings:bb.a
  %i.p = icmp ne i32 %i.n, 0                      ; 2 uses
  %i.q = icmp ne i32 %i.o, 0                      ; 2 uses
  %or.cond.i = select i1 %i.p, i1 %i.q, i1 false
  %3 = icmp ne i32 %i.l, 0                        ; 2 uses
  %or.cond3.i = select i1 %or.cond.i, i1 %3, i1 false
  %4 = icmp ne i32 %i.m, 0                        ; 2 uses
  %or.cond5.i = select i1 %or.cond3.i, i1 %4, i1 false
  br i1 %or.cond5.i, label %ren_HasBenefit.exit.thread, label %bb.e

end_hunk_0
begin_hunk_1_@ren_FreeRenaming:bb.a
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = tail call fastcc i32 @ren_PFactorOk(ptr noundef nonnull readonly %.val31)
  %i.l = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef nonnull readonly %.val31)
  %i.m = tail call fastcc i32 @ren_AFactorOk(ptr noundef nonnull readnone %.021, ptr noundef nonnull readonly %.val31)
  %i.n = tail call fastcc i32 @ren_BFactorOk(ptr noundef nonnull readnone %.021, ptr noundef nonnull readonly %.val31)
  %1 = icmp ne i32 %i.k, 0                        ; 3 uses
  br i1 %1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = tail call fastcc i32 @ren_PExtraFactorOk(ptr noundef nonnull readonly %.val31)
  %2 = icmp ne i32 %i.o, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi i1 [ false, %bb.f ], [ %2, %bb.g ]   ; 3 uses
  %3 = icmp ne i32 %i.l, 0                        ; 3 uses
  br i1 %3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = tail call fastcc i32 @ren_NotPExtraFactorOk(ptr noundef nonnull readonly %.val31)
  %4 = icmp ne i32 %i.q, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.r = phi i1 [ false, %bb.h ], [ %4, %bb.i ]   ; 3 uses
  %i.s = icmp ne i32 %i.m, 0                      ; 3 uses
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = tail call fastcc i32 @ren_AExtraFactorOk(ptr noundef nonnull readnone %.021, ptr noundef nonnull readonly %.val31)
  %5 = icmp ne i32 %i.t, 0
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
end_hunk_1
begin_hunk_2_@ren_FreeRenaming:bb.a

bb.m:                                             ; preds = %bb.l
  %i.v = tail call fastcc i32 @ren_BExtraFactorOk(ptr noundef nonnull readnone %.021, ptr noundef nonnull readonly %.val31)
  %6 = icmp ne i32 %i.v, 0                        ; 3 uses
  %or.cond3.i = and i1 %1, %i.s
  %or.cond5.i = and i1 %3, %or.cond3.i
  br i1 %or.cond5.i, label %bb.n, label %.thread.i

bb.n:                                             ; preds = %bb.m
end_hunk_2
begin_hunk_3_@ren_FreeRenaming:bb.a
  %or.cond9.i = select i1 %or.cond7.i, i1 true, i1 %i.p
  %or.cond11.i = select i1 %or.cond9.i, i1 true, i1 %i.r
  %or.cond13.i = select i1 %i.p, i1 %i.u, i1 false
  %or.cond90.i = select i1 %or.cond11.i, i1 true, i1 %or.cond13.i
  %or.cond15.i = select i1 %i.r, i1 %6, i1 false
  %or.cond91.i.a = select i1 %or.cond90.i, i1 true, i1 %or.cond15.i
  br i1 %or.cond91.i.a, label %ren_HasNonZeroBenefit.exit.thread, label %.thread109.i

.thread.i:                                        ; preds = %bb.m, %bb.l
end_hunk_3
begin_hunk_4_@ren_AExtraFactorOk:bb.a
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.j
  %2 = icmp ne i32 %.171, 0
  %i.n = tail call fastcc i32 @ren_AFactorOk(ptr noundef %0, ptr noundef nonnull %.val109)
  %.not96 = icmp eq i32 %i.n, 0                   ; 2 uses
  %brmerge = select i1 %.not96, i1 true, i1 %2
end_hunk_4
begin_hunk_5_@ren_BExtraFactorOk:bb.a
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.j
  %2 = icmp ne i32 %.171, 0
  %i.n = tail call fastcc i32 @ren_BFactorOk(ptr noundef %0, ptr noundef nonnull %.val109)
  %.not96 = icmp eq i32 %i.n, 0                   ; 2 uses
  %brmerge = select i1 %.not96, i1 true, i1 %2
end_hunk_5
begin_hunk_6_@ren_AFactorBigger3:bb.a
  br i1 %.not138, label %._crit_edge, label %.lr.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.j
  %2 = icmp ne i32 %.184, 0
  %i.n = tail call fastcc i32 @ren_AFactorOk(ptr noundef %0, ptr noundef nonnull %.val127)
  %.not114 = icmp eq i32 %i.n, 0                  ; 2 uses
  %brmerge.a = select i1 %.not114, i1 true, i1 %2
end_hunk_6
begin_hunk_7_@ren_AFactorBigger3:bb.a
  %i.ah = zext i1 %.not103 to i32
  %i.ai = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.082) ; 2 uses
  %i.aj = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.082) ; 2 uses
  %.not105.not = icmp eq i32 %i.aj, 0
  %i.ak = add nuw nsw i32 %i.ai, %i.af
  %i.al = add nuw nsw i32 %i.ak, %i.ah
  %i.am = add nuw nsw i32 %i.al, %i.aj
end_hunk_7
begin_hunk_8_@ren_AFactorBigger3:bb.a
  br i1 %i.an, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not104.not = icmp eq i32 %i.ai, 0
  br i1 %.not104.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ao = tail call fastcc i32 @ren_PExtraFactorOk(ptr noundef %.082)
end_hunk_8
begin_hunk_9_@ren_AFactorBigger3:bb.a
  br i1 %.not106, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %.not105.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ap = tail call fastcc i32 @ren_NotPExtraFactorOk(ptr noundef %.082)
end_hunk_9
begin_hunk_10_@ren_AFactorBigger3:bb.a
  br i1 %.not102, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.aq = tail call fastcc i32 @ren_AExtraFactorOk(ptr noundef %0, ptr noundef nonnull %.val127)
  %.not108 = icmp eq i32 %i.aq, 0                 ; 2 uses
  %brmerge.not = select i1 %.not108, i1 %.not103, i1 false
  %not..not108 = xor i1 %.not108, true
  %.mux = zext i1 %not..not108 to i32
  br i1 %brmerge.not, label %bb.ad, label %.thread

bb.ac:                                            ; preds = %bb.aa
  br i1 %.not103, label %bb.ad, label %.thread
end_hunk_10
begin_hunk_11_@ren_AFactorBigger3:bb.a
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit228.split.loop.exit, %._crit_edge.thread, %bb.ah, %bb.q, %tailrecurse.backedge, %bb.i, %bb.h, %bb.a, %bb.ak, %bb.ag, %bb.p, %bb.aj, %bb.am, %bb.al, %bb.af, %bb.v, %bb.x, %bb.z, %bb.ad, %bb.ac, %bb.ab, %bb.o, %bb.m, %bb.d
  %.1 = phi i32 [ 1, %bb.z ], [ 0, %bb.al ], [ %i.h, %bb.d ], [ 1, %bb.x ], [ %i.t, %bb.m ], [ 1, %bb.aj ], [ %i.w, %bb.p ], [ %i.ax, %bb.ak ], [ %i.ar, %bb.ad ], [ %i.au, %bb.ag ], [ 1, %bb.af ], [ 1, %bb.v ], [ 0, %bb.ac ], [ %i.ay, %bb.am ], [ 1, %bb.o ], [ 1, %bb.i ], [ %.mux, %bb.ab ], [ 0, %bb.a ], [ 1, %bb.h ], [ 0, %bb.q ], [ 0, %._crit_edge.thread ], [ %.mux212.le, %.thread.loopexit228.split.loop.exit ], [ 0, %bb.ah ], [ 0, %tailrecurse.backedge ]
  ret i32 %.1
}

end_hunk_11
begin_hunk_12_@ren_BFactorBigger3:bb.a
  br i1 %.not138, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.i
  %2 = icmp ne i32 %.184, 0
  %i.n = tail call fastcc i32 @ren_BFactorOk(ptr noundef %0, ptr noundef nonnull %.val127)
  %.not114 = icmp eq i32 %i.n, 0                  ; 2 uses
  %brmerge.a = select i1 %.not114, i1 true, i1 %2
end_hunk_12
begin_hunk_13_@ren_BFactorBigger3:bb.a
  %i.ah = zext i1 %.not103 to i32
  %i.ai = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.082) ; 2 uses
  %i.aj = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.082) ; 2 uses
  %.not105.not = icmp eq i32 %i.aj, 0
  %i.ak = add nuw nsw i32 %i.ai, %i.af
  %i.al = add nuw nsw i32 %i.ak, %i.ah
  %i.am = add nuw nsw i32 %i.al, %i.aj
end_hunk_13
begin_hunk_14_@ren_BFactorBigger3:bb.a
  br i1 %i.an, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not104.not = icmp eq i32 %i.ai, 0
  br i1 %.not104.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ao = tail call fastcc i32 @ren_PExtraFactorOk(ptr noundef %.082)
end_hunk_14
begin_hunk_15_@ren_BFactorBigger3:bb.a
  br i1 %.not106, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %.not105.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ap = tail call fastcc i32 @ren_NotPExtraFactorOk(ptr noundef %.082)
end_hunk_15
begin_hunk_16_@ren_BFactorBigger3:bb.a
  br i1 %.not102, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.aq = tail call fastcc i32 @ren_AExtraFactorOk(ptr noundef %0, ptr noundef nonnull %.val127)
  %.not108 = icmp eq i32 %i.aq, 0                 ; 2 uses
  %brmerge.not = select i1 %.not108, i1 %.not103, i1 false
  %not..not108 = xor i1 %.not108, true
  %.mux = zext i1 %not..not108 to i32
  br i1 %brmerge.not, label %bb.ac, label %.thread

bb.ab:                                            ; preds = %bb.z
  br i1 %.not103, label %bb.ac, label %.thread
end_hunk_16
begin_hunk_17_@ren_BFactorBigger3:bb.a
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit216.split.loop.exit, %._crit_edge.thread, %bb.al, %tailrecurse.backedge, %bb.h, %bb.g, %bb.a, %bb.ak, %bb.af, %bb.n, %bb.aj, %bb.ae, %bb.ah, %bb.ag, %bb.u, %bb.w, %bb.y, %bb.ac, %bb.ab, %bb.aa, %bb.m, %bb.p, %bb.o, %bb.c
  %.1 = phi i32 [ %i.av, %bb.ah ], [ 1, %bb.w ], [ %i.h, %bb.c ], [ 1, %bb.u ], [ 1, %bb.aj ], [ %i.ay, %bb.ak ], [ %i.w, %bb.n ], [ %i.x, %bb.p ], [ %i.ar, %bb.ac ], [ %i.au, %bb.af ], [ 1, %bb.ae ], [ 0, %bb.ab ], [ 0, %bb.a ], [ 0, %bb.ag ], [ 1, %bb.m ], [ 0, %bb.o ], [ %.mux, %bb.aa ], [ 1, %bb.y ], [ 1, %bb.h ], [ 1, %bb.g ], [ 0, %bb.al ], [ %.mux203.le, %.thread.loopexit216.split.loop.exit ], [ 0, %._crit_edge.thread ], [ 0, %tailrecurse.backedge ]
  ret i32 %.1
}

end_hunk_17
