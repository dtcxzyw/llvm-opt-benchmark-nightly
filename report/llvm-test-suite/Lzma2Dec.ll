inline.NumInlined: 5
inline.NumDeleted: 3
begin_hunk_0_@Lzma2Dec_DecodeToDic:bb.a

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.r = phi i32 [ %i.d, %.lr.ph ], [ %i.ea, %.backedge ] ; 5 uses
  %.0103159 = phi ptr [ %2, %.lr.ph ], [ %.4107178, %.backedge ] ; 5 uses
  %i.s = load i64, ptr %i.e, align 8, !tbaa !21   ; 5 uses
  %i.t = icmp eq i32 %i.r, 9
  br i1 %i.t, label %.thread151, label %bb.c
end_hunk_0
begin_hunk_1_@Lzma2Dec_DecodeToDic:bb.a
  %i.cn = add i32 %i.cl, %i.cm
  store i32 %i.cn, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  %i.co = load i64, ptr %i.a, align 8, !tbaa !20  ; 3 uses
  %i.cp = load i64, ptr %3, align 8, !tbaa !20
  %i.cq = add i64 %i.cp, %i.co
  store i64 %i.cq, ptr %3, align 8, !tbaa !20
end_hunk_1
begin_hunk_2_@Lzma2Dec_DecodeToDic:bb.a
bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dj = add i64 %spec.select134, %i.s
  %i.dk = call i32 @LzmaDec_DecodeToDic(ptr noundef nonnull %0, i64 noundef %i.dj, ptr noundef %.0103159, ptr noundef nonnull %i.a, i32 noundef %spec.select, ptr noundef nonnull %5) #5 ; 2 uses
  %i.dl = load i64, ptr %i.a, align 8, !tbaa !20  ; 5 uses
  %i.dm = load i64, ptr %3, align 8, !tbaa !20
  %i.dn = add i64 %i.dm, %i.dl
  store i64 %i.dn, ptr %3, align 8, !tbaa !20
end_hunk_2
begin_hunk_3_@Lzma2Dec_DecodeToDic:bb.a
  br label %.thread151

bb.aw:                                            ; preds = %LzmaDec_UpdateWithUncompressed.exit, %bb.au, %bb.av
  %.pn = phi i64 [ %i.co, %LzmaDec_UpdateWithUncompressed.exit ], [ %i.dl, %bb.au ], [ %i.dl, %bb.av ]
  %.3106 = getelementptr inbounds nuw i8, ptr %.0103159, i64 %.pn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %.pr = load i32, ptr %i.c, align 8, !tbaa !9
  br label %.backedge
end_hunk_3
