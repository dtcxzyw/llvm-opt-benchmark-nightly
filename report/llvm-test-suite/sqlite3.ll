inline.NumInlined: 3252
inline.NumDeleted: 426
begin_hunk_0_@sqlite3VdbeMemSetStr:bb.a
  br label %sqlite3VdbeMemHandleBom.exit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i8 %3, 0                         ; 2 uses
  %i.g = select i1 %i.f, i32 16, i32 2            ; 2 uses
  %i.h = icmp slt i32 %2, 0
  br i1 %i.h, label %bb.d, label %bb.e

end_hunk_0
begin_hunk_1_@sqlite3VdbeMemSetStr:bb.a
.loopexit:                                        ; preds = %.preheader64, %.preheader.preheader
  %.249.in = phi i64 [ %strlen, %.preheader.preheader ], [ %indvars.iv, %.preheader64 ]
  %.249 = trunc i64 %.249.in to i32
  %5 = or disjoint i32 %i.g, 32
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.c
end_hunk_1
begin_hunk_2_@sqlite3VdbeMemSetStr:bb.a
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %6 = and i32 %.046, 32
  %.not57 = icmp eq i32 %6, 0
  %i.p = icmp eq i8 %3, 1
  %i.q = select i1 %i.p, i32 1, i32 2
  %i.r = select i1 %.not57, i32 0, i32 %i.q
end_hunk_2
begin_hunk_3_@sqlite3VdbeMemSetStr:bb.a

bb.h:                                             ; preds = %.thread, %bb.g
  %.sink = phi i32 [ 64, %.thread ], [ %i.z, %bb.g ]
  %i.aa = or i32 %.046, %.sink
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store i32 %.3, ptr %i.ab, align 8, !tbaa !123
  %i.ac = trunc nuw nsw i32 %i.aa to i16
end_hunk_3
begin_hunk_4_@sqlite3_result_error:bb.a
  %.249.i = trunc i64 %strlen.i to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.3.i = phi i32 [ %.249.i, %bb.d ], [ %2, %bb.c ] ; 2 uses
  %.046.i = phi i16 [ 98, %bb.d ], [ 66, %bb.c ]
  %.lobit = lshr i32 %2, 31
  %.0.i = add nsw i32 %.3.i, %.lobit              ; 2 uses
  %i.h = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef nonnull %i.b, i32 noundef %.0.i, i32 noundef 0)
  %.not58.i = icmp eq i32 %i.h, 0
  br i1 %.not58.i, label %.thread.i, label %sqlite3VdbeMemSetStr.exit
end_hunk_4
begin_hunk_5_@sqlite3_result_error:bb.a
  %i.k = sext i32 %.0.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.3.i, ptr %i.l, align 8, !tbaa !123
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i16 %.046.i, ptr %i.m, align 4, !tbaa !124
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 1, ptr %i.n, align 1, !tbaa !125
  br label %sqlite3VdbeMemSetStr.exit.sink.split
end_hunk_5
begin_hunk_6_@sqlite3FindFunction:bb.a
  %i.an = load i16, ptr %.06689, align 8, !tbaa !199 ; 2 uses
  %i.ao = icmp eq i16 %i.an, -1
  %i.ap = sext i16 %i.an to i32
  %i.aq = icmp eq i32 %spec.store.select, %i.ap   ; 2 uses
  %or.cond114 = or i1 %i.ao, %i.aq
  br i1 %or.cond114, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.split.split
  %spec.select = select i1 %i.aq, i32 4, i32 1    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.06689, i64 2
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !483 ; 3 uses
  %i.at = icmp eq i8 %4, %i.as
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %6 = or disjoint i32 %spec.select, 2
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.au = icmp eq i8 %i.as, 3
  %or.cond75 = and i1 %i.ad, %i.au
  %i.av = icmp eq i8 %i.as, 2
  %or.cond86 = and i1 %i.ae, %i.av
  %or.cond115 = or i1 %or.cond75, %or.cond86
  %7 = zext i1 %or.cond115 to i32
  %spec.select118 = add nuw nsw i32 %spec.select, %7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
end_hunk_6
begin_hunk_7_@sqlite3VdbeSetColName:bb.a
  %.249.i26 = trunc i64 %strlen.i25 to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.3.i = phi i32 [ %.249.i26, %bb.i ], [ %4, %bb.h ] ; 2 uses
  %.046.i = phi i16 [ 98, %bb.i ], [ 66, %bb.h ]
  %.lobit = lshr i32 %4, 31
  %.0.i = add nsw i32 %.3.i, %.lobit              ; 2 uses
  %i.ad = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef %i.k, i32 noundef %.0.i, i32 noundef 0)
  %.not58.i = icmp eq i32 %i.ad, 0
  br i1 %.not58.i, label %.thread.i, label %sqlite3VdbeMemSetStr.exit.thread
end_hunk_7
begin_hunk_8_@sqlite3VdbeSetColName:bb.a
  %i.ag = sext i32 %.0.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %3, i64 %i.ag, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i32 %.3.i, ptr %i.ah, align 8, !tbaa !123
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i16 %.046.i, ptr %i.ai, align 4, !tbaa !124
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 39
  store i8 1, ptr %i.aj, align 1, !tbaa !125
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 38
end_hunk_8
begin_hunk_9_@sqlite3Pragma:bb.a
bb.bx:                                            ; preds = %sqlite3PagerLockingMode.exit804, %bb.br
  %.0619.in.in = phi ptr [ %i.kl, %bb.br ], [ %i.lv, %sqlite3PagerLockingMode.exit804 ]
  %.0619.in = load i8, ptr %.0619.in.in, align 1, !tbaa !37
  %i.lw = icmp eq i8 %.0619.in, 1                 ; 2 uses
  %spec.select718 = select i1 %i.lw, ptr @.str.444, ptr @.str.443
  tail call fastcc void @sqlite3VdbeSetNumCols(ptr noundef nonnull %.0.i11.i.i, i32 noundef 1)
  %i.lx = load ptr, ptr %.0.i11.i.i, align 8, !tbaa !106
end_hunk_9
begin_hunk_10_@sqlite3Pragma:bb.a
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !37
  tail call fastcc void @freeP4(i32 noundef %i.od, ptr noundef %i.of)
  store ptr null, ptr %i.oe, align 8, !tbaa !37
  %5 = select i1 %i.lw, i32 9, i32 6              ; 2 uses
  %i.og = load ptr, ptr %.0.i11.i.i, align 8, !tbaa !106
  %6 = add nuw nsw i32 %5, 1
  %i.oh = tail call ptr @sqlite3_malloc(i32 noundef %6) ; 4 uses
  %.not.i.i.i1502 = icmp eq ptr %i.oh, null
  br i1 %.not.i.i.i1502, label %sqlite3StrNDup.exit.i.i1503, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %7 = zext nneg i32 %5 to i64                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.oh, ptr noundef nonnull readonly align 1 dereferenceable(1) %spec.select718, i64 %7, i1 false)
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 %7
  store i8 0, ptr %i.oi, align 1, !tbaa !37
  br label %sqlite3DbStrNDup.exit.i

end_hunk_10
begin_hunk_11_@sqlite3WhereBegin:bb.a

findTerm.exit264.i:                               ; preds = %.thread.us.i261.i, %bb.cq
  %.039.i255.i = phi ptr [ %.04167.us.i259.i, %bb.cq ], [ null, %.thread.us.i261.i ]
  %.not208.i = icmp eq ptr %.039.i255.i, null     ; 2 uses
  %i.pl = fdiv double %i.od, 3.000000e+00
  %.0185.i = select i1 %.not208.i, i32 512, i32 66048 ; 2 uses
  %.0176.i = select i1 %.not208.i, double %i.od, double %i.pl ; 2 uses
  br label %.lr.ph68.split.us.i270.i

end_hunk_11
begin_hunk_12_@sqlite3WhereBegin:bb.a
  br i1 %.not.us.i274.i, label %findTerm.exit252.thread.i, label %.lr.ph68.split.us.i270.i, !llvm.loop !1730

findTerm.exit276.i:                               ; preds = %bb.ct
  %7 = or disjoint i32 %.0185.i, 131072
  %i.qc = fdiv double %.0176.i, 3.000000e+00
  br label %findTerm.exit252.thread.i

end_hunk_12
