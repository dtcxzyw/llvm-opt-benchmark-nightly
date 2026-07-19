inline.NumInlined: 319
inline.NumDeleted: 197
begin_hunk_0_@_ZN2v88internal10Comparator19CalculateDifferenceEPNS1_5InputEPNS1_6OutputE:bb.a
  %.sroa.1737.12.extract.trunc41.i.i = trunc i64 %.sroa.1737.3.i.i to i32 ; 2 uses
  %.sroa.1737.16.extract.shift46.i.i = lshr i64 %.sroa.1737.3.i.i, 32
  %.sroa.1737.16.extract.trunc47.i.i = trunc nuw i64 %.sroa.1737.16.extract.shift46.i.i to i32 ; 2 uses
  %i.dr = load ptr, ptr %2, align 8               ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, i32 noundef %.sroa.0.0.i.i, i32 noundef %.sroa.6.0.extract.trunc.i38.pre-phi.i.i) #8, !inline_history !14 ; 2 uses
  br i1 %i.dq, label %.lr.ph.i46.us.preheader.i.i, label %.lr.ph.i46.preheader68.i.i, !prof !12

.lr.ph.i46.preheader68.i.i:                       ; preds = %.lr.ph.i46.preheader.i.i
  br i1 %i.dv, label %bb.n, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i

bb.n:                                             ; preds = %.lr.ph.i46.preheader68.i.i
  %i.dw = trunc nuw i8 %.sroa.6.7.i.i to i1
  br i1 %i.dw, label %.loopexit83.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.peel.i.i

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.peel.i.i: ; preds = %bb.n
  %i.dx = add nsw i32 %.sroa.0.0.i.i, 1           ; 2 uses
  %i.dy = add nsw i32 %.sroa.6.0.extract.trunc.i38.pre-phi.i.i, 1 ; 2 uses
  %i.dz = icmp slt i32 %i.dx, %.sroa.07.0.copyload.i.i
  %i.ea = icmp slt i32 %i.dy, %.sroa.6.0.copyload.i.i
  %or.cond.i53.peel.i.i = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %or.cond.i53.peel.i.i, label %.lr.ph.i46.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i

.lr.ph.i46.us.preheader.i.i:                      ; preds = %.lr.ph.i46.preheader.i.i
  br i1 %i.dv, label %bb.o, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i

bb.o:                                             ; preds = %.lr.ph.i46.us.preheader.i.i
  %i.eb = trunc nuw i8 %.sroa.6.7.i.i to i1
  br i1 %i.eb, label %bb.p, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i

bb.p:                                             ; preds = %bb.o
  %i.ec = sub nsw i32 %.sroa.0.0.i.i, %.sroa.1737.12.extract.trunc41.i.i
  %i.ed = sub nsw i32 %.sroa.6.0.extract.trunc.i38.pre-phi.i.i, %.sroa.1737.16.extract.trunc47.i.i
  %i.ee = load ptr, ptr %i.bb, align 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i32 noundef %.sroa.1737.12.extract.trunc41.i.i, i32 noundef %.sroa.1737.16.extract.trunc47.i.i, i32 noundef %i.ec, i32 noundef %i.ed) #8, !inline_history !15
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i: ; preds = %bb.p, %bb.o
  %i.eg = add nsw i32 %.sroa.0.0.i.i, 1           ; 2 uses
  %i.eh = add nsw i32 %.sroa.6.0.extract.trunc.i38.pre-phi.i.i, 1 ; 2 uses
  %i.ei = icmp slt i32 %i.eg, %.sroa.07.0.copyload.i.i
  %i.ej = icmp slt i32 %i.eh, %.sroa.6.0.copyload.i.i
  %or.cond.i53.us.peel.i.i = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %or.cond.i53.us.peel.i.i, label %.lr.ph.i46.us.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i

.lr.ph.i46.us.i.i:                                ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.i.i
  %.sroa.0.012.i47.us.i.i = phi i32 [ %i.ep, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.i.i ], [ %i.eg, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i ] ; 2 uses
  %.sroa.6.011.i48.us.i.i = phi i32 [ %i.eq, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.i.i ], [ %i.eh, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i ] ; 2 uses
  %i.ek = load ptr, ptr %2, align 8               ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = call noundef zeroext i1 %i.en(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, i32 noundef %.sroa.0.012.i47.us.i.i, i32 noundef %.sroa.6.011.i48.us.i.i) #8, !inline_history !16
  br i1 %i.eo, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.i.i: ; preds = %.lr.ph.i46.us.i.i
  %i.ep = add nsw i32 %.sroa.0.012.i47.us.i.i, 1  ; 2 uses
  %i.eq = add nsw i32 %.sroa.6.011.i48.us.i.i, 1  ; 2 uses
  %i.er = icmp slt i32 %i.ep, %.sroa.07.0.copyload.i.i
  %i.es = icmp slt i32 %i.eq, %.sroa.6.0.copyload.i.i
  %or.cond.i53.us.i.i = select i1 %i.er, i1 %i.es, i1 false
  br i1 %or.cond.i53.us.i.i, label %.lr.ph.i46.us.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i, !llvm.loop !21

.lr.ph.i46.i.i:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.peel.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.i.i
  %.sroa.0.012.i47.i.i = phi i32 [ %i.ey, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.i.i ], [ %i.dx, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.peel.i.i ] ; 2 uses
  %.sroa.6.011.i48.i.i = phi i32 [ %i.ez, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.i.i ], [ %i.dy, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.peel.i.i ] ; 2 uses
  %i.et = load ptr, ptr %2, align 8               ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = call noundef zeroext i1 %i.ew(ptr noundef nonnull align 8 dereferenceable(8) %i.et, i32 noundef %.sroa.0.012.i47.i.i, i32 noundef %.sroa.6.011.i48.i.i) #8, !inline_history !16
  br i1 %i.ex, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i

.loopexit83.i.i:                                  ; preds = %bb.n
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9
  unreachable

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.i.i: ; preds = %.lr.ph.i46.i.i
  %i.ey = add nsw i32 %.sroa.0.012.i47.i.i, 1     ; 2 uses
  %i.ez = add nsw i32 %.sroa.6.011.i48.i.i, 1     ; 2 uses
  %i.fa = icmp slt i32 %i.ey, %.sroa.07.0.copyload.i.i
  %i.fb = icmp slt i32 %i.ez, %.sroa.6.0.copyload.i.i
  %or.cond.i53.i.i = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond.i53.i.i, label %.lr.ph.i46.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i, !llvm.loop !22

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.i.i, %.lr.ph.i46.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.i.i, %.lr.ph.i46.us.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i, %.lr.ph.i46.us.preheader.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.peel.i.i, %.lr.ph.i46.preheader68.i.i, %bb.m
  %.sroa.6.11.i.i = phi i8 [ %.sroa.6.7.i.i, %bb.m ], [ 0, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.peel.i.i ], [ %.sroa.6.7.i.i, %.lr.ph.i46.us.preheader.i.i ], [ 0, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i ], [ 0, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.i.i ], [ %.sroa.6.7.i.i, %.lr.ph.i46.preheader68.i.i ], [ 0, %.lr.ph.i46.us.i.i ], [ 0, %.lr.ph.i46.i.i ], [ 0, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.i.i ] ; 2 uses
  %i.fc = add nuw i64 %.065.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fc, %i.bf
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !23

_ZN2v88internal12_GLOBAL__N_111MyersDiffer11WriteResultERKNS2_4PathE.exit.thread.i: ; preds = %bb.i, %._crit_edge.i.i, %bb.f
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val2.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer11WriteResultERKNS2_4PathE.exit.thread.i
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.fd, align 8
  %i.fe = ptrtoint ptr %.val1.i.i.i.i.i to i64
  %i.ff = sub i64 %i.fe, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %.val2.i, i64 noundef %i.ff) #11
  br label %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit.i: ; preds = %bb.q, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer11WriteResultERKNS2_4PathE.exit.thread.i, %_ZN2v88internal12_GLOBAL__N_111MyersDifferC2EPNS0_10Comparator5InputEPNS3_6OutputE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %.val2.i.i = load ptr, ptr %i.w, align 8        ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val2.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer16FurthestReachingD2Ev.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit.i
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val3.i.i = load ptr, ptr %i.fg, align 8
  %i.fh = ptrtoint ptr %.val3.i.i to i64
  %i.fi = ptrtoint ptr %.val2.i.i to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %.val2.i.i, i64 noundef %i.fj) #11
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer16FurthestReachingD2Ev.exit.i.i

_ZN2v88internal12_GLOBAL__N_111MyersDiffer16FurthestReachingD2Ev.exit.i.i: ; preds = %bb.r, %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit.i
  %.val.i.i = load ptr, ptr %i.b, align 8         ; 3 uses
  %.not.i.i.i.i4.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i4.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer9MyersDiffEPNS0_10Comparator5InputEPNS3_6OutputE.exit, label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer16FurthestReachingD2Ev.exit.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val1.i.i = load ptr, ptr %i.fk, align 8
  %i.fl = ptrtoint ptr %.val1.i.i to i64
  %i.fm = ptrtoint ptr %.val.i.i to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.fn) #11
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer9MyersDiffEPNS0_10Comparator5InputEPNS3_6OutputE.exit

_ZN2v88internal12_GLOBAL__N_111MyersDiffer9MyersDiffEPNS0_10Comparator5InputEPNS3_6OutputE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer16FurthestReachingD2Ev.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_111MyersDiffer12FindEditPathENS2_5PointES3_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::optional", align 8     ; 8 uses
  %5 = alloca %"class.std::optional", align 8     ; 8 uses
  %6 = alloca %"struct.v8::internal::(anonymous namespace)::MyersDiffer::Path", align 8 ; 15 uses
  %.sroa.0.0.extract.trunc45.i = trunc i64 %2 to i32 ; 7 uses
  %.sroa.18.8.extract.trunc77.i = trunc i64 %3 to i32 ; 5 uses
  %.sroa.0.4.extract.shift.i = lshr i64 %2, 32
  %.sroa.0.4.extract.trunc.i = trunc nuw i64 %.sroa.0.4.extract.shift.i to i32 ; 6 uses
  %.sroa.18.12.extract.shift.i = lshr i64 %3, 32
  %.sroa.18.12.extract.trunc.i = trunc nuw i64 %.sroa.18.12.extract.shift.i to i32 ; 4 uses
  %i.a = add i32 %.sroa.0.4.extract.trunc.i, %.sroa.0.0.extract.trunc45.i
  %i.b = sub i32 %.sroa.18.8.extract.trunc77.i, %i.a
  %i.c = add i32 %i.b, %.sroa.18.12.extract.trunc.i ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.val8.i = load ptr, ptr %i.e, align 8, !noalias !24
  %i.f = getelementptr inbounds nuw i8, ptr %.val8.i, i64 4
  store i32 %.sroa.0.0.extract.trunc45.i, ptr %i.f, align 4, !noalias !24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %.val.i = load ptr, ptr %i.g, align 8, !noalias !24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %.val7.i = load ptr, ptr %i.h, align 8, !noalias !24
  %i.i = ptrtoint ptr %.val7.i to i64
  %i.j = ptrtoint ptr %.val.i to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr i8, ptr %.val.i, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -4
  store i32 %.sroa.18.8.extract.trunc77.i, ptr %i.m, align 4, !noalias !24
  %i.n = sitofp i32 %i.c to float
  %i.o = fmul nnan float %i.n, 5.000000e-01
  %i.p = tail call noundef float @llvm.ceil.f32(float %i.o) ; 2 uses
  %i.q = fcmp ult float %i.p, 0.000000e+00
  br i1 %i.q, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.s = add i32 %.sroa.0.4.extract.trunc.i, %.sroa.18.8.extract.trunc77.i
  %i.t = add i32 %.sroa.0.0.extract.trunc45.i, %.sroa.18.12.extract.trunc.i
  %.reass.i = sub i32 %i.s, %i.t                  ; 3 uses
  %.not36.i.i = trunc i32 %.reass.i to i1         ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.v, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.v ] ; 12 uses
  %i.u = sub nsw i64 0, %indvars.iv.i             ; 5 uses
  %i.v = sub nsw i64 1, %indvars.iv.i             ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %indvars.iv.i.i = phi i64 [ %i.u, %bb.c ], [ %indvars.iv.next.i.i, %bb.k ] ; 12 uses
  %i.w = icmp eq i64 %indvars.iv.i.i, %i.u
  %.val51.pre.i.i = load ptr, ptr %i.e, align 8, !noalias !27 ; 7 uses
  %.val52.pre.i.i = load ptr, ptr %i.r, align 8, !noalias !27 ; 3 uses
  br i1 %i.w, label %._crit_edge100.i.i, label %bb.e

._crit_edge100.i.i:                               ; preds = %bb.d
  %.pre101.i.i = ptrtoint ptr %.val52.pre.i.i to i64
  %.pre103.i.i = ptrtoint ptr %.val51.pre.i.i to i64
  %.pre105.i.i = sub i64 %.pre101.i.i, %.pre103.i.i
  %.pre107.i.i = ashr exact i64 %.pre105.i.i, 2
  %.pre109.i.i = add nsw i64 %.pre107.i.i, %i.v
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq i64 %indvars.iv.i.i, %indvars.iv.i
  %.pre111.i.i = add nsw i64 %indvars.iv.i.i, -1  ; 3 uses
  %.pre113.i.i = ptrtoint ptr %.val52.pre.i.i to i64
  %.pre115.i.i = ptrtoint ptr %.val51.pre.i.i to i64
  %.pre117.i.i = sub i64 %.pre113.i.i, %.pre115.i.i
  %.pre119.i.i = ashr exact i64 %.pre117.i.i, 2   ; 2 uses
  %.pre121.i.i = add nsw i64 %.pre119.i.i, %.pre111.i.i ; 2 uses
  br i1 %i.x, label %._crit_edge.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = icmp slt i64 %indvars.iv.i.i, 1
  %i.z = select i1 %i.y, i64 %.pre121.i.i, i64 %.pre111.i.i
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.val51.pre.i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !27
  %i.ac = add nsw i64 %indvars.iv.i.i, 1          ; 3 uses
  %i.ad = add nsw i64 %.pre119.i.i, %i.ac         ; 2 uses
  %i.ae = icmp slt i64 %indvars.iv.i.i, -1
  %i.af = select i1 %i.ae, i64 %i.ad, i64 %i.ac
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val51.pre.i.i, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !noalias !27
  %i.ai = icmp slt i32 %i.ab, %i.ah
  br i1 %i.ai, label %bb.g, label %._crit_edge.i.i

bb.g:                                             ; preds = %bb.f, %._crit_edge100.i.i
  %.pre-phi110.i.i = phi i64 [ %.pre109.i.i, %._crit_edge100.i.i ], [ %i.ad, %bb.f ]
  %.pre-phi.i.i = phi i64 [ %i.v, %._crit_edge100.i.i ], [ %i.ac, %bb.f ]
  %i.aj = icmp slt i64 %indvars.iv.i.i, -1
  %i.ak = select i1 %i.aj, i64 %.pre-phi110.i.i, i64 %.pre-phi.i.i
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val51.pre.i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !noalias !27 ; 2 uses
  br label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.f
  %i.an = icmp slt i64 %indvars.iv.i.i, 1
  %i.ao = select i1 %i.an, i64 %.pre121.i.i, i64 %.pre111.i.i
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.val51.pre.i.i, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !noalias !27 ; 2 uses
  %i.ar = add nsw i32 %i.aq, 1
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i, %bb.g
  %storemerge.i.i = phi i32 [ %i.ar, %._crit_edge.i.i ], [ %i.am, %bb.g ] ; 5 uses
  %.sroa.0.0.i.i = phi i32 [ %i.aq, %._crit_edge.i.i ], [ %i.am, %bb.g ] ; 2 uses
  %i.as = trunc nsw i64 %indvars.iv.i.i to i32    ; 2 uses
  %i.at = add i32 %.sroa.0.0.extract.trunc45.i, %i.as
  %i.au = sub i32 %.sroa.0.4.extract.trunc.i, %i.at
  %i.av = add i32 %i.au, %storemerge.i.i          ; 4 uses
  %i.aw = icmp slt i32 %storemerge.i.i, %.sroa.18.8.extract.trunc77.i
  %i.ax = icmp slt i32 %i.av, %.sroa.18.12.extract.trunc.i
  %i.ay = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %i.ay, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.sroa.11.080.i.i = phi i32 [ %i.bf, %bb.i ], [ %i.av, %bb.h ] ; 3 uses
  %.sroa.065.079.i.i = phi i32 [ %i.be, %bb.i ], [ %storemerge.i.i, %bb.h ] ; 3 uses
  %i.az = load ptr, ptr %1, align 8, !noalias !27 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !27
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !27
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i32 noundef %.sroa.065.079.i.i, i32 noundef %.sroa.11.080.i.i) #8, !noalias !27, !inline_history !30
  br i1 %i.bd, label %bb.i, label %.critedge.loopexit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.be = add nsw i32 %.sroa.065.079.i.i, 1       ; 3 uses
  %i.bf = add nsw i32 %.sroa.11.080.i.i, 1        ; 3 uses
  %i.bg = icmp slt i32 %i.be, %.sroa.18.8.extract.trunc77.i
  %i.bh = icmp slt i32 %i.bf, %.sroa.18.12.extract.trunc.i
  %i.bi = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %i.bi, label %.lr.ph.i.i, label %.critedge.loopexit.i.i, !llvm.loop !31

.critedge.loopexit.i.i:                           ; preds = %bb.i, %.lr.ph.i.i
  %.sroa.065.0.lcssa.ph.i.i = phi i32 [ %.sroa.065.079.i.i, %.lr.ph.i.i ], [ %i.be, %bb.i ]
  %.sroa.11.0.lcssa.ph.i.i = phi i32 [ %.sroa.11.080.i.i, %.lr.ph.i.i ], [ %i.bf, %bb.i ]
  %.val47.pre.i.i = load ptr, ptr %i.e, align 8, !noalias !27
  %.val48.pre.i.i = load ptr, ptr %i.r, align 8, !noalias !27
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.loopexit.i.i, %bb.h
  %.val48.i.i = phi ptr [ %.val52.pre.i.i, %bb.h ], [ %.val48.pre.i.i, %.critedge.loopexit.i.i ]
  %.val47.i.i = phi ptr [ %.val51.pre.i.i, %bb.h ], [ %.val47.pre.i.i, %.critedge.loopexit.i.i ] ; 2 uses
  %.sroa.065.0.lcssa.i.i = phi i32 [ %storemerge.i.i, %bb.h ], [ %.sroa.065.0.lcssa.ph.i.i, %.critedge.loopexit.i.i ] ; 3 uses
  %.sroa.11.0.lcssa.i.i = phi i32 [ %i.av, %bb.h ], [ %.sroa.11.0.lcssa.ph.i.i, %.critedge.loopexit.i.i ]
  %i.bj = ptrtoint ptr %.val48.i.i to i64
  %i.bk = ptrtoint ptr %.val47.i.i to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2
  %i.bn = icmp slt i64 %indvars.iv.i.i, 0
  %i.bo = select i1 %i.bn, i64 %i.bm, i64 0
  %i.bp = getelementptr [4 x i8], ptr %.val47.i.i, i64 %indvars.iv.i.i
  %i.bq = getelementptr [4 x i8], ptr %i.bp, i64 %i.bo
  store i32 %.sroa.065.0.lcssa.i.i, ptr %i.bq, align 4, !noalias !27
  %i.br = sub nsw i32 %i.as, %.reass.i            ; 3 uses
  %i.bs = sext i32 %i.br to i64                   ; 3 uses
  %.not37.i.i = icmp sle i64 %i.v, %i.bs
  %.not38.not.i.i = icmp sgt i64 %indvars.iv.i, %i.bs
  %i.bt = and i1 %.not37.i.i, %.not38.not.i.i
  %or.cond41.i.i = select i1 %.not36.i.i, i1 %i.bt, i1 false
  br i1 %or.cond41.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge.i.i
  %.val.i16.i = load ptr, ptr %i.g, align 8, !noalias !27 ; 2 uses
  %.val46.i.i = load ptr, ptr %i.h, align 8, !noalias !27
  %i.bu = zext nneg i32 %i.br to i64
  %i.bv = ptrtoint ptr %.val46.i.i to i64
  %i.bw = ptrtoint ptr %.val.i16.i to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 2
  %i.bz = add nsw i64 %i.by, %i.bs
  %i.ca = icmp slt i32 %i.br, 0
  %i.cb = select i1 %i.ca, i64 %i.bz, i64 %i.bu
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.val.i16.i, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !noalias !27
  %.not39.i.i = icmp slt i32 %.sroa.065.0.lcssa.i.i, %i.cd
  br i1 %.not39.i.i, label %bb.k, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditForwardERKNS2_13EditGraphAreaEi.exit.thread.i

_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditForwardERKNS2_13EditGraphAreaEi.exit.thread.i: ; preds = %bb.j
  %7 = icmp ne i64 %indvars.iv.i, 0
  %.not35.le.i.i = icmp eq i32 %.sroa.0.0.i.i, %storemerge.i.i
  %or.cond.le.i.i = select i1 %7, i1 %.not35.le.i.i, i1 false
  %i.ce = sext i1 %or.cond.le.i.i to i32
  %i.cf = add nsw i32 %i.av, %i.ce
  %.sroa.11.0.insert.ext.i.i = zext i32 %.sroa.11.0.lcssa.i.i to i64
  %.sroa.11.0.insert.shift.i.i = shl nuw i64 %.sroa.11.0.insert.ext.i.i, 32
  %.sroa.065.0.insert.ext.i.i = zext i32 %.sroa.065.0.lcssa.i.i to i64
  %.sroa.065.0.insert.insert.i.i = or disjoint i64 %.sroa.11.0.insert.shift.i.i, %.sroa.065.0.insert.ext.i.i
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0.i.i to i64
  %.sroa.0.4.insert.ext = zext i32 %i.cf to i64
  %.sroa.0.4.insert.shift = shl nuw i64 %.sroa.0.4.insert.ext, 32
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.4.insert.shift, %.sroa.0.0.insert.ext
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer15FindMiddleSnakeENS2_5PointES3_.exit

bb.k:                                             ; preds = %bb.j, %.critedge.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %.not.i.i = icmp sgt i64 %indvars.iv.next.i.i, %indvars.iv.i
  br i1 %.not.i.i, label %bb.l, label %bb.d, !llvm.loop !32

bb.l:                                             ; preds = %bb.k
  %.pre.i43.i = add nsw i64 %indvars.iv.i, -1     ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.u, %bb.l
  %indvars.iv.i18.i = phi i64 [ %indvars.iv.i, %bb.l ], [ %indvars.iv.next.i38.i, %bb.u ] ; 12 uses
  %i.cg = icmp eq i64 %indvars.iv.i18.i, %indvars.iv.i
  %.val50.pre.i.i = load ptr, ptr %i.g, align 8, !noalias !33 ; 5 uses
  %.val51.pre.i19.i = load ptr, ptr %i.h, align 8, !noalias !33
  %.pre89.i.i = ptrtoint ptr %.val51.pre.i19.i to i64
  %.pre91.i.i = ptrtoint ptr %.val50.pre.i.i to i64
  %.pre93.i.i = sub i64 %.pre89.i.i, %.pre91.i.i
  %.pre95.i.i = ashr exact i64 %.pre93.i.i, 2     ; 4 uses
  br i1 %i.cg, label %._crit_edge88.i.i, label %bb.n

._crit_edge88.i.i:                                ; preds = %bb.m
  %.pre97.i.i = add nsw i64 %.pre95.i.i, %.pre.i43.i
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ch = icmp eq i64 %indvars.iv.i18.i, %i.u
  br i1 %i.ch, label %._crit_edge.i41.i, label %bb.o

._crit_edge.i41.i:                                ; preds = %bb.n
  %.pre109.i42.i = add nsw i64 %.pre95.i.i, %i.v
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ci = add nsw i64 %indvars.iv.i18.i, -1       ; 3 uses
  %i.cj = add nsw i64 %.pre95.i.i, %i.ci          ; 2 uses
  %i.ck = icmp slt i64 %indvars.iv.i18.i, 1
  %i.cl = select i1 %i.ck, i64 %i.cj, i64 %i.ci
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.val50.pre.i.i, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !noalias !33
  %i.co = add nsw i64 %indvars.iv.i18.i, 1        ; 3 uses
  %i.cp = add nsw i64 %.pre95.i.i, %i.co          ; 2 uses
  %i.cq = icmp slt i64 %indvars.iv.i18.i, -1
  %i.cr = select i1 %i.cq, i64 %i.cp, i64 %i.co
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.val50.pre.i.i, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !noalias !33
  %i.cu = icmp sgt i32 %i.cn, %i.ct
  br i1 %i.cu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %._crit_edge88.i.i
  %.pre-phi98.i.i = phi i64 [ %.pre97.i.i, %._crit_edge88.i.i ], [ %i.cj, %bb.o ]
  %.pre-phi.i40.i = phi i64 [ %.pre.i43.i, %._crit_edge88.i.i ], [ %i.ci, %bb.o ]
  %i.cv = icmp slt i64 %indvars.iv.i18.i, 1
  %i.cw = select i1 %i.cv, i64 %.pre-phi98.i.i, i64 %.pre-phi.i40.i
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.val50.pre.i.i, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !noalias !33 ; 2 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %._crit_edge.i41.i
  %.pre-phi110.i20.i = phi i64 [ %.pre109.i42.i, %._crit_edge.i41.i ], [ %i.cp, %bb.o ]
  %.pre-phi100.i.i = phi i64 [ %i.v, %._crit_edge.i41.i ], [ %i.co, %bb.o ]
  %i.cz = icmp slt i64 %indvars.iv.i18.i, -1
  %i.da = select i1 %i.cz, i64 %.pre-phi110.i20.i, i64 %.pre-phi100.i.i
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.val50.pre.i.i, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !noalias !33 ; 2 uses
  %i.dd = add nsw i32 %i.dc, -1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %storemerge.i21.i = phi i32 [ %i.dd, %bb.q ], [ %i.cy, %bb.p ] ; 5 uses
  %.sroa.0.0.i22.i = phi i32 [ %i.dc, %bb.q ], [ %i.cy, %bb.p ] ; 2 uses
  %i.de = trunc nsw i64 %indvars.iv.i18.i to i32
  %i.df = add i32 %.reass.i, %i.de                ; 4 uses
  %i.dg = add i32 %i.df, %.sroa.0.0.extract.trunc45.i
  %i.dh = sub i32 %.sroa.0.4.extract.trunc.i, %i.dg
  %i.di = add i32 %i.dh, %storemerge.i21.i        ; 4 uses
  %i.dj = icmp sgt i32 %storemerge.i21.i, %.sroa.0.0.extract.trunc45.i
  %i.dk = icmp sgt i32 %i.di, %.sroa.0.4.extract.trunc.i
  %i.dl = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %i.dl, label %.lr.ph, label %.critedge.i27.i

bb.s:                                             ; preds = %.lr.ph
  %i.dm = icmp sgt i32 %i.dq, %.sroa.0.0.extract.trunc45.i
  %i.dn = icmp sgt i32 %i.dr, %.sroa.0.4.extract.trunc.i
  %i.do = and i1 %i.dm, %i.dn
  br i1 %i.do, label %.lr.ph, label %.critedge.i27.i, !llvm.loop !36

.lr.ph:                                           ; preds = %bb.r, %bb.s
  %.sroa.12.0.i.i109 = phi i32 [ %i.dr, %bb.s ], [ %i.di, %bb.r ] ; 2 uses
  %.sroa.064.0.i.i108 = phi i32 [ %i.dq, %bb.s ], [ %storemerge.i21.i, %bb.r ] ; 2 uses
  %i.dp = load ptr, ptr %1, align 8, !noalias !33 ; 2 uses
  %i.dq = add nsw i32 %.sroa.064.0.i.i108, -1     ; 4 uses
  %i.dr = add nsw i32 %.sroa.12.0.i.i109, -1      ; 4 uses
  %i.ds = load ptr, ptr %i.dp, align 8, !noalias !33
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !33
  %i.dv = tail call noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, i32 noundef %i.dq, i32 noundef %i.dr) #8, !noalias !33, !inline_history !37
  br i1 %i.dv, label %bb.s, label %..critedge.i27.i_crit_edge, !llvm.loop !36

..critedge.i27.i_crit_edge:                       ; preds = %.lr.ph
  br label %.critedge.i27.i, !llvm.loop !36

.critedge.i27.i:                                  ; preds = %bb.s, %..critedge.i27.i_crit_edge, %bb.r
  %.sroa.064.0.i.i.lcssa = phi i32 [ %.sroa.064.0.i.i108, %..critedge.i27.i_crit_edge ], [ %storemerge.i21.i, %bb.r ], [ %i.dq, %bb.s ] ; 3 uses
  %.sroa.12.0.i.i.lcssa = phi i32 [ %.sroa.12.0.i.i109, %..critedge.i27.i_crit_edge ], [ %i.di, %bb.r ], [ %i.dr, %bb.s ]
  %.val46.i28.i = load ptr, ptr %i.g, align 8, !noalias !33 ; 2 uses
  %.val47.i29.i = load ptr, ptr %i.h, align 8, !noalias !33
  %i.dw = ptrtoint ptr %.val47.i29.i to i64
  %i.dx = ptrtoint ptr %.val46.i28.i to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ashr exact i64 %i.dy, 2
  %i.ea = icmp slt i64 %indvars.iv.i18.i, 0
  %i.eb = select i1 %i.ea, i64 %i.dz, i64 0
  %i.ec = getelementptr [4 x i8], ptr %.val46.i28.i, i64 %indvars.iv.i18.i
  %i.ed = getelementptr [4 x i8], ptr %i.ec, i64 %i.eb
  store i32 %.sroa.064.0.i.i.lcssa, ptr %i.ed, align 4, !noalias !33
  %i.ee = sext i32 %i.df to i64                   ; 3 uses
  %.not36.i30.i = icmp slt i64 %i.ee, %i.u
  %.not37.i31.i = icmp slt i64 %indvars.iv.i, %i.ee
  %i.ef = or i1 %.not36.i30.i, %.not37.i31.i
  %or.cond40.i.i = select i1 %.not36.i.i, i1 true, i1 %i.ef
  br i1 %or.cond40.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge.i27.i
  %.val.i32.i = load ptr, ptr %i.e, align 8, !noalias !33 ; 2 uses
  %.val45.i.i = load ptr, ptr %i.r, align 8, !noalias !33
  %i.eg = zext nneg i32 %i.df to i64
  %i.eh = ptrtoint ptr %.val45.i.i to i64
  %i.ei = ptrtoint ptr %.val.i32.i to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = ashr exact i64 %i.ej, 2
  %i.el = add nsw i64 %i.ek, %i.ee
  %i.em = icmp slt i32 %i.df, 0
  %i.en = select i1 %i.em, i64 %i.el, i64 %i.eg
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.val.i32.i, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !noalias !33
  %.not38.i.i = icmp sgt i32 %.sroa.064.0.i.i.lcssa, %i.ep
  br i1 %.not38.i.i, label %bb.u, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditReverseERKNS2_13EditGraphAreaEi.exit.thread.i

_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditReverseERKNS2_13EditGraphAreaEi.exit.thread.i: ; preds = %bb.t
  %i.eq = icmp ne i64 %indvars.iv.i, 0
  %.not35.le.i33.i = icmp eq i32 %.sroa.0.0.i22.i, %storemerge.i21.i
  %or.cond.le.i34.i = select i1 %i.eq, i1 %.not35.le.i33.i, i1 false
  %i.er = zext i1 %or.cond.le.i34.i to i32
  %i.es = add nsw i32 %i.di, %i.er
  %.sroa.12.0.insert.ext.i.i = zext i32 %.sroa.12.0.i.i.lcssa to i64
  %.sroa.12.0.insert.shift.i.i = shl nuw i64 %.sroa.12.0.insert.ext.i.i, 32
  %.sroa.064.0.insert.ext.i.i = zext i32 %.sroa.064.0.i.i.lcssa to i64
  %.sroa.064.0.insert.insert.i.i = or disjoint i64 %.sroa.12.0.insert.shift.i.i, %.sroa.064.0.insert.ext.i.i
  %.sroa.7.8.insert.ext = zext i32 %.sroa.0.0.i22.i to i64
  %.sroa.7.12.insert.ext = zext i32 %i.es to i64
  %.sroa.7.12.insert.shift = shl nuw i64 %.sroa.7.12.insert.ext, 32
  %.sroa.7.12.insert.insert = or disjoint i64 %.sroa.7.12.insert.shift, %.sroa.7.8.insert.ext
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer15FindMiddleSnakeENS2_5PointES3_.exit

bb.u:                                             ; preds = %bb.t, %.critedge.i27.i
  %indvars.iv.next.i38.i = add nsw i64 %indvars.iv.i18.i, -2 ; 2 uses
  %.not.i39.i = icmp slt i64 %indvars.iv.next.i38.i, %i.u
  br i1 %.not.i39.i, label %bb.v, label %bb.m, !llvm.loop !38

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.et = trunc nsw i64 %indvars.iv.next.i to i32
  %i.eu = uitofp nneg i32 %i.et to float
  %i.ev = fcmp ult float %i.p, %i.eu
  br i1 %i.ev, label %.loopexit, label %bb.c, !llvm.loop !39

.loopexit:                                        ; preds = %bb.v, %bb.a, %bb.b
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ew, align 8
  br label %bb.ai

_ZN2v88internal12_GLOBAL__N_111MyersDiffer15FindMiddleSnakeENS2_5PointES3_.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditReverseERKNS2_13EditGraphAreaEi.exit.thread.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditForwardERKNS2_13EditGraphAreaEi.exit.thread.i
  %.sroa.7.0 = phi i64 [ %.sroa.065.0.insert.insert.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditForwardERKNS2_13EditGraphAreaEi.exit.thread.i ], [ %.sroa.7.12.insert.insert, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditReverseERKNS2_13EditGraphAreaEi.exit.thread.i ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.4.insert.insert, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditForwardERKNS2_13EditGraphAreaEi.exit.thread.i ], [ %.sroa.064.0.insert.insert.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditReverseERKNS2_13EditGraphAreaEi.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_111MyersDiffer12FindEditPathENS2_5PointES3_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 %2, i64 %.sroa.0.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_111MyersDiffer12FindEditPathENS2_5PointES3_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 %.sroa.7.0, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.val11 = load i8, ptr %i.ex, align 8, !range !10, !noundef !11
  %i.ey = trunc nuw i8 %.val11 to i1              ; 2 uses
  br i1 %i.ey, label %bb.w, label %_ZNKSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer15FindMiddleSnakeENS2_5PointES3_.exit
  %.val14 = load ptr, ptr %4, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val15 = load ptr, ptr %i.ez, align 8
end_hunk_0
