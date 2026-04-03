begin_hunk_0
inline.NumInlined: 1814
inline.NumDeleted: 298
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
  %.not55 = icmp eq i64 %i.bg, 0
  br i1 %.not55, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit, label %.critedge

_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit: ; preds = %bb.q, %bb.r, %bb.o, %.thread.a, %bb.s, %bb.t, %bb.p, %bb.j, %bb.i, %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit, %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread81
  %i.bh = phi i1 [ false, %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread81 ], [ false, %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit ], [ true, %bb.i ], [ true, %bb.j ], [ true, %.thread.a ], [ false, %bb.p ], [ false, %bb.t ], [ false, %bb.s ], [ false, %bb.o ], [ false, %bb.r ], [ false, %bb.q ] ; 2 uses
  %i.bi = tail call noundef i32 @_ZN4llvh5APInt5tcMSBEPKmj(ptr noundef %1, i32 noundef %i.e) #27 ; 2 uses
  %i.bj = add i32 %i.bi, 1                        ; 4 uses
  %i.bk = load i8, ptr %i.a, align 2
end_hunk_1
begin_hunk_2
  store i8 %.sink, ptr %6, align 1, !tbaa !35
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.f, %bb.ab, %bb.a, %bb.w, %bb.y, %bb.z, %bb.aa, %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread81
  %.2 = phi i32 [ 1, %bb.z ], [ %.mux, %bb.ab ], [ 16, %bb.aa ], [ 1, %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread81 ], [ 1, %bb.a ], [ 1, %bb.w ], [ 1, %bb.y ], [ 1, %bb.f ], [ 0, %.critedge.sink.split ]
  ret i32 %.2
}

end_hunk_2
begin_hunk_3
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !11
  %.not = icmp eq i16 %i.eh, %i.ek
  %i.el = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !7  ; 5 uses
  br i1 %.not, label %._ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit_crit_edge, label %bb.p

._ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit_crit_edge: ; preds = %bb.o
  %.phi.trans.insert52 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre53 = load ptr, ptr %.phi.trans.insert52, align 8
  %.pre68 = add i32 %i.em, -64
  %.pre70 = add i32 %i.em, 64
  %.pre72 = lshr i32 %.pre70, 6
  br label %_ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit.thread

bb.p:                                             ; preds = %bb.o
  %2 = add i32 %i.em, -64                         ; 3 uses
  %3 = icmp ult i32 %2, -128
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %5 = load ptr, ptr %4, align 8                  ; 3 uses
  %.0.i.i.i15 = select i1 %3, ptr %5, ptr %4      ; 2 uses
  %6 = add i32 %i.em, 64                          ; 2 uses
  %7 = lshr i32 %6, 6                             ; 3 uses
  %i.en = add nsw i32 %7, -1                      ; 2 uses
  %.not1417.not.i = icmp eq i32 %i.en, 0
  br i1 %.not1417.not.i, label %_ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit, label %.lr.ph.preheader.i
end_hunk_3
begin_hunk_4

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.q ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i15, i64 %indvars.iv.i
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !22
  %.not.i18 = icmp eq i64 %i.ep, 0
  br i1 %.not.i18, label %bb.q, label %_ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit.thread

_ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit.thread: ; preds = %.lr.ph.i, %._ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit_crit_edge
  %.pre-phi73.ph = phi i32 [ %.pre72, %._ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit_crit_edge ], [ %7, %.lr.ph.i ]
  %.pre-phi69.ph = phi i32 [ %.pre68, %._ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit_crit_edge ], [ %2, %.lr.ph.i ]
  %.ph = phi ptr [ %.pre53, %._ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit_crit_edge ], [ %5, %.lr.ph.i ]
  %8 = icmp ult i32 %.pre-phi69.ph, -128
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.i1780 = select i1 %8, ptr %.ph, ptr %9
  %i.eq = tail call noundef i64 @_ZN4llvh5APInt14tcSubtractPartEPmmj(ptr noundef %.0.i1780, i64 noundef 1, i32 noundef %.pre-phi73.ph) #27 ; 0 uses
  br label %_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit

_ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit: ; preds = %bb.q, %bb.p
end_hunk_4
begin_hunk_5
  %i.es = add i32 %reass.sub, 1
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = lshr i64 -1, %i.et
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i15, i64 %.pre-phi.i
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !22
  %i.ex = and i64 %i.ew, %i.eu
  %.not15.i = icmp eq i64 %i.ex, 0
  %10 = icmp ult i32 %2, -128
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.i17 = select i1 %10, ptr %5, ptr %11        ; 2 uses
  %i.ey = tail call noundef i64 @_ZN4llvh5APInt14tcSubtractPartEPmmj(ptr noundef %.0.i17, i64 noundef 1, i32 noundef %7) #27 ; 0 uses
  br i1 %.not15.i, label %bb.r, label %_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit

bb.r:                                             ; preds = %_ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit
end_hunk_5
begin_hunk_6
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !7
  %i.fc = add i32 %i.fb, -1
  tail call void @_ZN4llvh5APInt8tcSetBitEPmj(ptr noundef %.0.i17, i32 noundef %i.fc) #27
  %i.fd = load i16, ptr %i.ei, align 8, !tbaa !19
  %i.fe = add i16 %i.fd, -1
  store i16 %i.fe, ptr %i.ei, align 8, !tbaa !19
  br label %_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit

.thread40:                                        ; preds = %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread, %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread.thread39
end_hunk_6
begin_hunk_7
  %i.gu = tail call noundef i64 @_ZN4llvh5APInt9tcAddPartEPmmj(ptr noundef %.0.i.i36, i64 noundef 1, i32 noundef %.pre-phi67) #27 ; 0 uses
  br label %_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit

_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit: ; preds = %_ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit.thread, %bb.f, %bb.e, %bb.t, %.critedge10, %_ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit, %bb.r, %_ZNK4llvh6detail9IEEEFloat11isSignalingEv.exit, %bb.c, %bb.n, %bb.j, %bb.g, %bb.d, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.t ], [ 0, %_ZNK4llvh6detail9IEEEFloat11isSignalingEv.exit ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.n ], [ 0, %_ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit ], [ 0, %bb.r ], [ 0, %.critedge10 ], [ 1, %bb.e ], [ 1, %bb.f ], [ 0, %_ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit.thread ]
  br i1 %1, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit
end_hunk_7
