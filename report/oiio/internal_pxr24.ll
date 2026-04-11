inline.NumInlined: 17
inline.NumDeleted: 13
begin_hunk_0_@internal_exr_undo_pxr24:bb.a
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %indvars.iv.i ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !21  ; 17 uses
  %i.ab = sext i32 %i.aa to i64                   ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 25
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !88
  %i.ae = sext i8 %i.ad to i64
end_hunk_0
begin_hunk_1_@internal_exr_undo_pxr24:bb.a

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds i8, ptr %.1151242.i, i64 %i.ab ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.ab ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.ab ; 5 uses
  %i.au = add i64 %i.af, %.1143243.i              ; 4 uses
  %.not174.i = icmp ugt i64 %i.au, %4
  br i1 %.not174.i, label %undo_pxr24_impl.exit, label %.preheader.i
end_hunk_1
begin_hunk_2_@internal_exr_undo_pxr24:bb.a
  %.0141237.i = phi i32 [ 0, %.lr.ph240.i.preheader.new ], [ %i.cj, %.lr.ph240.i ]
  %.sroa.027.0236.i = phi ptr [ %.1151242.i, %.lr.ph240.i.preheader.new ], [ %i.br, %.lr.ph240.i ] ; 3 uses
  %.sroa.528.0235.i = phi ptr [ %i.ar, %.lr.ph240.i.preheader.new ], [ %i.bv, %.lr.ph240.i ] ; 3 uses
  %.sroa.829.0234.i = phi ptr [ %i.as, %.lr.ph240.i.preheader.new ], [ %i.ca, %.lr.ph240.i ] ; 3 uses
  %.sroa.11.0233.i = phi ptr [ %i.at, %.lr.ph240.i.preheader.new ], [ %i.cf, %.lr.ph240.i ] ; 3 uses
  %niter48 = phi i32 [ 0, %.lr.ph240.i.preheader.new ], [ %niter48.next.1, %.lr.ph240.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.027.0236.i, i64 1
  %i.ay = load i8, ptr %.sroa.027.0236.i, align 1, !tbaa !31
end_hunk_2
begin_hunk_3_@internal_exr_undo_pxr24:bb.a
  br i1 %niter48.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph240.i, !llvm.loop !89

bb.j:                                             ; preds = %bb.h
  %i.cl = getelementptr inbounds i8, ptr %.1151242.i, i64 %i.ab ; 5 uses
  %i.cm = add i64 %i.af, %.1143243.i              ; 4 uses
  %.not173.i = icmp ugt i64 %i.cm, %4
  br i1 %.not173.i, label %undo_pxr24_impl.exit, label %.preheader211.i
end_hunk_3
begin_hunk_4_@internal_exr_undo_pxr24:bb.a

bb.k:                                             ; preds = %bb.h
  %i.dj = getelementptr inbounds i8, ptr %.1151242.i, i64 %i.ab ; 3 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 %i.ab ; 5 uses
  %i.dl = mul nsw i32 %i.aa, 3
  %i.dm = sext i32 %i.dl to i64
  %i.dn = add i64 %.1143243.i, %i.dm              ; 4 uses
end_hunk_4
begin_hunk_5_@internal_exr_undo_pxr24:bb.a
  %.0126224.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.eu, %.lr.ph.i ]
  %.sroa.0.0223.i = phi ptr [ %.1151242.i, %.lr.ph.i.preheader.new ], [ %i.eg, %.lr.ph.i ] ; 3 uses
  %.sroa.5.0222.i = phi ptr [ %i.dj, %.lr.ph.i.preheader.new ], [ %i.ek, %.lr.ph.i ] ; 3 uses
  %.sroa.8.0221.i = phi ptr [ %i.dk, %.lr.ph.i.preheader.new ], [ %i.ep, %.lr.ph.i ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.0223.i, i64 1
  %i.dr = load i8, ptr %.sroa.0.0223.i, align 1, !tbaa !31
end_hunk_5
begin_hunk_6_@internal_exr_undo_pxr24:bb.a
  %.0141237.i.epil.init = phi i32 [ 0, %.lr.ph240.i.preheader ], [ %i.cj, %.loopexit.i.loopexit.unr-lcssa ]
  %.sroa.027.0236.i.epil.init = phi ptr [ %.1151242.i, %.lr.ph240.i.preheader ], [ %i.br, %.loopexit.i.loopexit.unr-lcssa ]
  %.sroa.528.0235.i.epil.init = phi ptr [ %i.ar, %.lr.ph240.i.preheader ], [ %i.bv, %.loopexit.i.loopexit.unr-lcssa ]
  %.sroa.829.0234.i.epil.init = phi ptr [ %i.as, %.lr.ph240.i.preheader ], [ %i.ca, %.loopexit.i.loopexit.unr-lcssa ]
  %.sroa.11.0233.i.epil.init = phi ptr [ %i.at, %.lr.ph240.i.preheader ], [ %i.cf, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod46 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod46)
  %i.ew = load i8, ptr %.sroa.027.0236.i.epil.init, align 1, !tbaa !31
end_hunk_6
begin_hunk_7_@internal_exr_undo_pxr24:bb.a
  %.0126224.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.eu, %.loopexit.i.loopexit37.unr-lcssa ]
  %.sroa.0.0223.i.epil.init = phi ptr [ %.1151242.i, %.lr.ph.i.preheader ], [ %i.eg, %.loopexit.i.loopexit37.unr-lcssa ]
  %.sroa.5.0222.i.epil.init = phi ptr [ %i.dj, %.lr.ph.i.preheader ], [ %i.ek, %.loopexit.i.loopexit37.unr-lcssa ]
  %.sroa.8.0221.i.epil.init = phi ptr [ %i.dk, %.lr.ph.i.preheader ], [ %i.ep, %.loopexit.i.loopexit37.unr-lcssa ]
  %lcmp.mod38 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod38)
  %i.fs = load i8, ptr %.sroa.0.0223.i.epil.init, align 1, !tbaa !31
end_hunk_7
begin_hunk_8_@internal_exr_undo_pxr24:bb.a
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit37.unr-lcssa, %.lr.ph232.i.epil.preheader, %.loopexit.i.loopexit36.unr-lcssa, %.lr.ph240.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.preheader213.i, %.preheader211.i, %.preheader.i
  %.2152.i.a = phi ptr [ %i.cl, %.preheader211.i ], [ %i.at, %.preheader.i ], [ %i.dk, %.preheader213.i ], [ %i.cl, %.lr.ph232.i.epil.preheader ], [ %i.at, %.lr.ph240.i.epil.preheader ], [ %i.at, %.loopexit.i.loopexit.unr-lcssa ], [ %i.cl, %.loopexit.i.loopexit36.unr-lcssa ], [ %i.dk, %.loopexit.i.loopexit37.unr-lcssa ], [ %i.dk, %.lr.ph.i.epil.preheader ]
  %.5147.i = phi i64 [ %i.cm, %.preheader211.i ], [ %i.au, %.preheader.i ], [ %i.dn, %.preheader213.i ], [ %i.cm, %.lr.ph232.i.epil.preheader ], [ %i.au, %.lr.ph240.i.epil.preheader ], [ %i.au, %.loopexit.i.loopexit.unr-lcssa ], [ %i.cm, %.loopexit.i.loopexit36.unr-lcssa ], [ %i.dn, %.loopexit.i.loopexit37.unr-lcssa ], [ %i.dn, %.lr.ph.i.epil.preheader ]
  %.2152.i = getelementptr inbounds i8, ptr %.2152.i.a, i64 %i.ab
  %i.ge = getelementptr inbounds nuw i8, ptr %.1128245.i, i64 %i.af
  %.pre264.i = load i16, ptr %i.o, align 8, !tbaa !85
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.i, %bb.f, %.lr.ph247.i
  %i.gf = phi i16 [ %.pre264.i, %.loopexit.i ], [ %i.w, %.lr.ph247.i ], [ %i.w, %bb.f ] ; 4 uses
  %.3153.i = phi ptr [ %.2152.i, %.loopexit.i ], [ %.1151242.i, %.lr.ph247.i ], [ %.1151242.i, %bb.f ] ; 2 uses
  %.6148.i = phi i64 [ %.5147.i, %.loopexit.i ], [ %.1143243.i, %.lr.ph247.i ], [ %.1143243.i, %bb.f ] ; 2 uses
  %.2136.i = phi i64 [ %i.an, %.loopexit.i ], [ %.1135244.i, %.lr.ph247.i ], [ %.1135244.i, %bb.f ] ; 2 uses
  %.2129.i = phi ptr [ %i.ge, %.loopexit.i ], [ %.1128245.i, %.lr.ph247.i ], [ %.1128245.i, %bb.f ] ; 2 uses
end_hunk_8
