inline.NumInlined: 1384
inline.NumDeleted: 790
begin_hunk_0_@_ZNK6icu_788message210data_model12SelectorKeysltERKS2_:bb.a
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 7 uses
  %i.j = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  %i.l = load ptr, ptr %i.i, align 8              ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK6icu_788message210data_model12SelectorKeysltERKS2_:bb.a
  %i.p = getelementptr inbounds nuw [96 x i8], ptr %i.l, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load i8, ptr %i.q, align 8, !range !5, !noundef !6
  br label %_ZNK6icu_788message210data_model3KeyeqERKS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 88
end_hunk_1
begin_hunk_2_@_ZNK6icu_788message210data_model12SelectorKeysltERKS2_:bb.a
  %i.v = load i16, ptr %i.u, align 8              ; 4 uses
  %i.w = and i16 %i.v, 1
  %.not.i.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i.i.i, label %_ZNK6icu_788message210data_model3KeyltERKS2_.exit, label %_ZNK6icu_788message210data_model3KeyltERKS2_.exit.thread

_ZNK6icu_788message210data_model3KeyltERKS2_.exit: ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 24
end_hunk_2
begin_hunk_3_@_ZNK6icu_788message210data_model12SelectorKeysltERKS2_:bb.a
_ZNK6icu_788message210data_model3KeyltERKS2_.exit._ZNK6icu_788message210data_model3KeyltERKS2_.exit.thread_crit_edge: ; preds = %_ZNK6icu_788message210data_model3KeyltERKS2_.exit
  %.pre = load ptr, ptr %i.h, align 8             ; 2 uses
  %.pre38 = load ptr, ptr %i.i, align 8
  %.phi.trans.insert.a = getelementptr inbounds nuw [96 x i8], ptr %.pre, i64 %indvars.iv
  %.phi.trans.insert39 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.a, i64 88
  %.pre40 = load i8, ptr %.phi.trans.insert39, align 8, !range !5
  br label %_ZNK6icu_788message210data_model3KeyltERKS2_.exit.thread

_ZNK6icu_788message210data_model3KeyltERKS2_.exit.thread: ; preds = %_ZNK6icu_788message210data_model3KeyltERKS2_.exit._ZNK6icu_788message210data_model3KeyltERKS2_.exit.thread_crit_edge, %bb.e
  %i.at = phi i8 [ %.pre40, %_ZNK6icu_788message210data_model3KeyltERKS2_.exit._ZNK6icu_788message210data_model3KeyltERKS2_.exit.thread_crit_edge ], [ 1, %bb.e ] ; 2 uses
  %i.au = phi ptr [ %.pre38, %_ZNK6icu_788message210data_model3KeyltERKS2_.exit._ZNK6icu_788message210data_model3KeyltERKS2_.exit.thread_crit_edge ], [ %i.l, %bb.e ]
  %i.av = phi ptr [ %.pre, %_ZNK6icu_788message210data_model3KeyltERKS2_.exit._ZNK6icu_788message210data_model3KeyltERKS2_.exit.thread_crit_edge ], [ %i.j, %bb.e ]
  %2 = getelementptr inbounds nuw [96 x i8], ptr %i.av, i64 %indvars.iv ; 3 uses
  %i.aw = getelementptr inbounds nuw [96 x i8], ptr %i.au, i64 %indvars.iv ; 6 uses
  %.not.not.i16 = icmp eq i8 %i.at, 0
  %3 = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  %4 = load i8, ptr %3, align 8, !range !5, !noundef !6 ; 2 uses
  %i.ax = icmp eq i8 %4, 0
  %brmerge.i = or i1 %.not.not.i16, %i.ax
  br i1 %brmerge.i, label %_ZNK6icu_788message210data_model3KeyeqERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK6icu_788message210data_model3KeyltERKS2_.exit.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ba = load i16, ptr %i.az, align 8            ; 3 uses
  %i.bb = and i16 %i.ba, 1
  %.not.i.i.i = icmp eq i16 %i.bb, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.bd = load i16, ptr %i.bc, align 8
  %i.be = trunc i16 %i.bd to i1
  br i1 %i.be, label %bb.j, label %.thread
end_hunk_3
begin_hunk_4_@_ZNK6icu_788message210data_model12SelectorKeysltERKS2_:bb.a
  %i.bf = icmp slt i16 %i.ba, 0
  %i.bg = ashr i16 %i.ba, 5
  %i.bh = sext i16 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = select i1 %i.bf, i32 %i.bj, i32 %i.bh   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.bm = load i16, ptr %i.bl, align 8            ; 4 uses
  %i.bn = icmp slt i16 %i.bm, 0
  %i.bo = ashr i16 %i.bm, 5
  %i.bp = sext i16 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 36
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = select i1 %i.bn, i32 %i.br, i32 %i.bp
  %i.bt = and i16 %i.bm, 1
end_hunk_4
begin_hunk_5_@_ZNK6icu_788message210data_model12SelectorKeysltERKS2_:bb.a
bb.i:                                             ; preds = %bb.h
  %i.bv = and i16 %i.bm, 2
  %.not.i.i.i.i.i18 = icmp eq i16 %i.bv, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 34
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = select i1 %.not.i.i.i.i.i18, ptr %i.by, ptr %i.bw
  %i.ca = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.ay, ptr noundef %i.bz, i32 noundef %i.bk) #13
  %.not = icmp eq i8 %i.ca, 0
  br i1 %.not, label %.thread, label %bb.j

_ZNK6icu_788message210data_model3KeyeqERKS2_.exit: ; preds = %_ZNK6icu_788message210data_model3KeyltERKS2_.exit.thread.thread, %_ZNK6icu_788message210data_model3KeyltERKS2_.exit.thread
  %5 = phi i8 [ %i.r, %_ZNK6icu_788message210data_model3KeyltERKS2_.exit.thread.thread ], [ %4, %_ZNK6icu_788message210data_model3KeyltERKS2_.exit.thread ]
  %6 = phi i8 [ 0, %_ZNK6icu_788message210data_model3KeyltERKS2_.exit.thread.thread ], [ %i.at, %_ZNK6icu_788message210data_model3KeyltERKS2_.exit.thread ]
  %7 = or i8 %5, %6
  %.mux.i = icmp eq i8 %7, 0
  br i1 %.mux.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.g, %bb.i, %_ZNK6icu_788message210data_model3KeyeqERKS2_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cb = load i32, ptr %i.a, align 8
  %i.cc = sext i32 %i.cb to i64
  %i.cd = icmp slt i64 %indvars.iv.next, %i.cc
  br i1 %i.cd, label %bb.c, label %.thread, !llvm.loop !7

.thread:                                          ; preds = %bb.j, %_ZNK6icu_788message210data_model3KeyltERKS2_.exit, %_ZNK6icu_788message210data_model3KeyeqERKS2_.exit, %bb.i, %bb.g, %bb.d, %bb.h, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.d ], [ true, %_ZNK6icu_788message210data_model3KeyltERKS2_.exit ], [ false, %bb.j ], [ false, %bb.g ], [ false, %_ZNK6icu_788message210data_model3KeyeqERKS2_.exit ], [ false, %bb.i ], [ false, %bb.h ]
  ret i1 %.1
}

end_hunk_5
begin_hunk_6_@_ZNK6icu_788message210data_model3KeyeqERKS2_
define dso_local noundef zeroext i1 @_ZNK6icu_788message210data_model3KeyeqERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6 ; 2 uses
  %.not.not = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load i8, ptr %i.c, align 8, !range !5, !noundef !6 ; 2 uses
  %2 = icmp eq i8 %i.d, 0
  %brmerge = or i1 %.not.not, %2
  %3 = or i8 %i.b, %i.d
  %.mux = icmp eq i8 %3, 0
  br i1 %brmerge, label %_ZNK6icu_788message210data_model7LiteraleqERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i16, ptr %i.f, align 8              ; 3 uses
end_hunk_6
begin_hunk_7_@_ZNK6icu_788message210data_model3KeyeqERKS2_:bb.a
  %i.ah = icmp ne i8 %i.ag, 0
  br label %_ZNK6icu_788message210data_model7LiteraleqERKS2_.exit

_ZNK6icu_788message210data_model7LiteraleqERKS2_.exit: ; preds = %bb.a, %bb.e, %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ %.mux, %bb.a ], [ %i.k, %bb.c ], [ %i.ah, %bb.e ]
  ret i1 %.0
}

end_hunk_7
begin_hunk_8_@_ZN6icu_788message210data_model10Expression7Builder5buildER10UErrorCode:bb.a
bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.n = load i8, ptr %i.m, align 8, !range !5, !noundef !6
  %.not5 = icmp ne i8 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.p = load i8, ptr %i.o, align 1, !range !5
  %i.q = trunc nuw i8 %i.p to i1
end_hunk_8
