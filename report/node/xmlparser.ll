inline.NumInlined: 123
inline.NumDeleted: 43
begin_hunk_0_@_ZN6icu_7810UXMLParser9parseFileEPKcR10UErrorCode:bb.a
  %i.dt = phi ptr [ %i.dq, %.lr.ph.lr.ph ], [ %i.fm, %bb.ag ]
  %i.du = phi i32 [ %i.dp, %.lr.ph.lr.ph ], [ %i.fl, %bb.ag ]
  %i.dv = phi i16 [ %i.do, %.lr.ph.lr.ph ], [ %i.fk, %bb.ag ]
  %.071107 = phi i1 [ false, %.lr.ph.lr.ph ], [ %i.fj, %bb.ag ]
  %.073106 = phi i32 [ %.076, %.lr.ph.lr.ph ], [ %.174103, %bb.ag ]
  %.075105 = phi i32 [ %i.j, %.lr.ph.lr.ph ], [ %i.fi, %bb.ag ]
  %i.dw = sext i32 %.075105 to i64
end_hunk_0
begin_hunk_1_@_ZN6icu_7810UXMLParser9parseFileEPKcR10UErrorCode:bb.a

bb.af:                                            ; preds = %bb.ad
  %i.fh = icmp sgt i32 %i.ew, 0
  %or.cond3 = or i1 %.071107, %i.fh
  br i1 %or.cond3, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fi = call i32 @T_FileStream_read(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, i32 noundef 4096) #9 ; 2 uses
  %i.fj = icmp eq i32 %i.fi, 0
  store ptr %i.a, ptr %i.c, align 8
  %i.fk = load i16, ptr %i.e, align 8
  %i.fl = load i32, ptr %i.dn, align 4
end_hunk_1
