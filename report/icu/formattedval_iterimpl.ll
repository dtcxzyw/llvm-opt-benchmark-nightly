Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/formattedval_iterimpl?download=true
inline.NumInlined: 47
inline.NumDeleted: 17
begin_hunk_0_@_ZN6icu_7839FormattedValueFieldPositionIteratorImpl15addOverlapSpansE14UFieldCategoryaR10UErrorCode:bb.a

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i61: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i62, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit
  %i.ca = phi i32 [ %i.bu, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit ], [ %.pre139, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i62 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !23
  %i.cd = sext i32 %i.ca to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cd
  store i32 %i.bv, ptr %i.ce, align 4, !tbaa !24
  %i.cf = load i32, ptr %i.b, align 8, !tbaa !16
  %i.cg = add nsw i32 %i.cf, 1                    ; 2 uses
  store i32 %i.cg, ptr %i.b, align 8, !tbaa !16
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit66

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit66: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i62, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i61
  %i.ch = phi i32 [ %.pre139, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i62 ], [ %i.cg, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i61 ] ; 4 uses
  %i.ci = icmp slt i32 %i.ch, -1
  %i.cj = load i32, ptr %i.bj, align 4
  %.not.i.i67 = icmp sle i32 %i.cj, %i.ch
  %or.cond.i.i68 = select i1 %i.ci, i1 true, i1 %.not.i.i67
  br i1 %or.cond.i.i68, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i70, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i69

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i70: ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit66
  %i.ck = add nsw i32 %i.ch, 1
  %i.cl = tail call noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.ck, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not.i71 = icmp eq i8 %i.cl, 0
  %.pre140 = load i32, ptr %i.b, align 8, !tbaa !16 ; 2 uses
  br i1 %.not.i71, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit74, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i69

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i69: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i70, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit66
  %i.cm = phi i32 [ %i.ch, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit66 ], [ %.pre140, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i70 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !23
  %i.cp = sext i32 %i.cm to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.cp
  store i32 %.351, ptr %i.cq, align 4, !tbaa !24
  %i.cr = load i32, ptr %i.b, align 8, !tbaa !16
  %i.cs = add nsw i32 %i.cr, 1                    ; 2 uses
  store i32 %i.cs, ptr %i.b, align 8, !tbaa !16
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit74

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit74: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i70, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i69
  %i.ct = phi i32 [ %.pre140, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i70 ], [ %i.cs, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i69 ] ; 4 uses
  %i.cu = icmp slt i32 %i.ct, -1
  %i.cv = load i32, ptr %i.bj, align 4
  %.not.i.i75 = icmp sle i32 %i.cv, %i.ct
  %or.cond.i.i76 = select i1 %i.cu, i1 true, i1 %.not.i.i75
  br i1 %or.cond.i.i76, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i78, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i77

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i78: ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit74
  %i.cw = add nsw i32 %i.ct, 1
  %i.cx = tail call noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.cw, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not.i79 = icmp eq i8 %i.cx, 0
  %.pre141 = load i32, ptr %i.b, align 8, !tbaa !16 ; 2 uses
  br i1 %.not.i79, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit82, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i77

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i77: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i78, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit74
  %i.cy = phi i32 [ %i.ct, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit74 ], [ %.pre141, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i78 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !23
  %i.db = sext i32 %i.cy to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.db
  store i32 %.347, ptr %i.dc, align 4, !tbaa !24
  %i.dd = load i32, ptr %i.b, align 8, !tbaa !16
  %i.de = add nsw i32 %i.dd, 1                    ; 2 uses
  store i32 %i.de, ptr %i.b, align 8, !tbaa !16
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit82

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit82: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i78, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i77
  %i.df = phi i32 [ %.pre141, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i78 ], [ %i.de, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i77 ] ; 4 uses
  %i.dg = icmp slt i32 %i.df, -1
  %i.dh = load i32, ptr %i.bj, align 4
  %.not.i.i83 = icmp sle i32 %i.dh, %i.df
  %or.cond.i.i84 = select i1 %i.dg, i1 true, i1 %.not.i.i83
  br i1 %or.cond.i.i84, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i86, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i85

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i86: ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit82
  %i.di = add nsw i32 %i.df, 1
  %i.dj = tail call noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.di, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not.i87 = icmp eq i8 %i.dj, 0
  %.pre142 = load i32, ptr %i.b, align 8, !tbaa !16 ; 2 uses
  br i1 %.not.i87, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit90, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i85

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i85: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i86, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit82
  %i.dk = phi i32 [ %i.df, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit82 ], [ %.pre142, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i86 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !23
  %i.dn = sext i32 %i.dk to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.dn
  store i32 %1, ptr %i.do, align 4, !tbaa !24
  %i.dp = load i32, ptr %i.b, align 8, !tbaa !16
  %i.dq = add nsw i32 %i.dp, 1                    ; 2 uses
  store i32 %i.dq, ptr %i.b, align 8, !tbaa !16
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit90

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit90: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i86, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i85
  %i.dr = phi i32 [ %.pre142, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i86 ], [ %i.dq, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i85 ] ; 4 uses
  %i.ds = sub nsw i32 1, %i.bv
  %i.dt = icmp slt i32 %i.dr, -1
  %i.du = load i32, ptr %i.bj, align 4
  %.not.i.i91 = icmp sle i32 %i.du, %i.dr
  %or.cond.i.i92 = select i1 %i.dt, i1 true, i1 %.not.i.i91
  br i1 %or.cond.i.i92, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i94, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i93

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i94: ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit90
  %i.dv = add nsw i32 %i.dr, 1
  %i.dw = tail call noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.dv, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not.i95 = icmp eq i8 %i.dw, 0
  %.pre143 = load i32, ptr %i.b, align 8, !tbaa !16 ; 2 uses
  br i1 %.not.i95, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit98, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i93

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i93: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i94, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit90
  %i.dx = phi i32 [ %i.dr, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit90 ], [ %.pre143, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i94 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !23
  %i.ea = sext i32 %i.dx to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.ea
  store i32 %i.ds, ptr %i.eb, align 4, !tbaa !24
  %i.ec = load i32, ptr %i.b, align 8, !tbaa !16
  %i.ed = add nsw i32 %i.ec, 1                    ; 2 uses
  store i32 %i.ed, ptr %i.b, align 8, !tbaa !16
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit98

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit98: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i94, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i93
  %i.ee = phi i32 [ %.pre143, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i94 ], [ %i.ed, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i93 ] ; 4 uses
  %i.ef = icmp slt i32 %i.ee, -1
  %i.eg = load i32, ptr %i.bj, align 4
  %.not.i.i99 = icmp sle i32 %i.eg, %i.ee
  %or.cond.i.i100 = select i1 %i.ef, i1 true, i1 %.not.i.i99
  br i1 %or.cond.i.i100, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i102, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i101

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i102: ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit98
  %i.eh = add nsw i32 %i.ee, 1
  %i.ei = tail call noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.eh, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not.i103 = icmp eq i8 %i.ei, 0
  %.pre144 = load i32, ptr %i.b, align 8, !tbaa !16 ; 2 uses
  br i1 %.not.i103, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit106, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i101

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i101: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i102, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit98
  %i.ej = phi i32 [ %i.ee, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit98 ], [ %.pre144, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i102 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !23
  %i.em = sext i32 %i.ej to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.em
  store i32 %.343, ptr %i.en, align 4, !tbaa !24
  %i.eo = load i32, ptr %i.b, align 8, !tbaa !16
  %i.ep = add nsw i32 %i.eo, 1                    ; 2 uses
  store i32 %i.ep, ptr %i.b, align 8, !tbaa !16
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit106

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit106: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i102, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i101
  %i.eq = phi i32 [ %.pre144, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i102 ], [ %i.ep, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i101 ] ; 4 uses
  %i.er = icmp slt i32 %i.eq, -1
  %i.es = load i32, ptr %i.bj, align 4
  %.not.i.i107 = icmp sle i32 %i.es, %i.eq
  %or.cond.i.i108 = select i1 %i.er, i1 true, i1 %.not.i.i107
  br i1 %or.cond.i.i108, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i110, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i109

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i110: ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit106
  %i.et = add nsw i32 %i.eq, 1
  %i.eu = tail call noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.et, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not.i111 = icmp eq i8 %i.eu, 0
  br i1 %.not.i111, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit114, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i112

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i112: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i110
  %.pre.i113 = load i32, ptr %i.b, align 8, !tbaa !16
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i109

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i109: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i112, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit106
  %i.ev = phi i32 [ %.pre.i113, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i112 ], [ %i.eq, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit106 ]
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !23
  %i.ey = sext i32 %i.ev to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.ey
  store i32 %.3, ptr %i.ez, align 4, !tbaa !24
  %i.fa = load i32, ptr %i.b, align 8, !tbaa !16
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.b, align 8, !tbaa !16
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit114

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit114: ; preds = %bb.a, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i109, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i110, %._crit_edge
  ret void
}

declare i32 @uprv_min_78(i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @uprv_max_78(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7839FormattedValueFieldPositionIteratorImpl4sortEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  br i1 %i.d, label %.lr.ph.us.preheader, label %.split71.us

.lr.ph.us.preheader:                              ; preds = %bb.a
  %i.f = lshr i32 %i.c, 2
  %smax = add nsw i32 %i.f, -1
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.thread.us, %.lr.ph.us.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.mux, %.thread.us ], [ 0, %.lr.ph.us.preheader ] ; 2 uses
  %.04868.us = phi i1 [ %.1.us.mux, %.thread.us ], [ true, %.lr.ph.us.preheader ] ; 2 uses
  %i.g = shl nuw nsw i64 %indvars.iv, 2           ; 10 uses
  %i.h = load i32, ptr %i.b, align 8
  %i.i = sext i32 %i.h to i64                     ; 8 uses
  %i.j = icmp slt i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_ZNK6icu_789UVector3210elementAtiEi.exit.us

bb.b:                                             ; preds = %.lr.ph.us
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.g
  %i.m = load i32, ptr %i.l, align 4, !tbaa !24
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit.us

_ZNK6icu_789UVector3210elementAtiEi.exit.us:      ; preds = %bb.b, %.lr.ph.us
  %i.n = phi i32 [ %i.m, %bb.b ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.o = or disjoint i64 %i.g, 1                  ; 3 uses
  %i.p = icmp slt i64 %i.o, %i.i
  br i1 %i.p, label %bb.c, label %_ZNK6icu_789UVector3210elementAtiEi.exit60.us

bb.c:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit.us
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o
  %i.s = load i32, ptr %i.r, align 4, !tbaa !24
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit60.us

_ZNK6icu_789UVector3210elementAtiEi.exit60.us:    ; preds = %bb.c, %_ZNK6icu_789UVector3210elementAtiEi.exit.us
  %i.t = phi i32 [ %i.s, %bb.c ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit.us ] ; 3 uses
  %i.u = or disjoint i64 %i.g, 2                  ; 3 uses
  %i.v = icmp slt i64 %i.u, %i.i
  br i1 %i.v, label %bb.d, label %_ZNK6icu_789UVector3210elementAtiEi.exit61.us

bb.d:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit60.us
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  %i.y = load i32, ptr %i.x, align 4, !tbaa !24
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit61.us

_ZNK6icu_789UVector3210elementAtiEi.exit61.us:    ; preds = %bb.d, %_ZNK6icu_789UVector3210elementAtiEi.exit60.us
  %i.z = phi i32 [ %i.y, %bb.d ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit60.us ] ; 3 uses
  %i.aa = or disjoint i64 %i.g, 3                 ; 3 uses
  %i.ab = icmp slt i64 %i.aa, %i.i
  br i1 %i.ab, label %bb.e, label %_ZNK6icu_789UVector3210elementAtiEi.exit62.us

bb.e:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit61.us
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !24
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit62.us

_ZNK6icu_789UVector3210elementAtiEi.exit62.us:    ; preds = %bb.e, %_ZNK6icu_789UVector3210elementAtiEi.exit61.us
  %i.af = phi i32 [ %i.ae, %bb.e ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit61.us ] ; 3 uses
  %i.ag = add nuw nsw i64 %i.g, 4                 ; 3 uses
  %i.ah = icmp slt i64 %i.ag, %i.i
  br i1 %i.ah, label %bb.f, label %_ZNK6icu_789UVector3210elementAtiEi.exit63.us

bb.f:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit62.us
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ag
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !24
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit63.us

_ZNK6icu_789UVector3210elementAtiEi.exit63.us:    ; preds = %bb.f, %_ZNK6icu_789UVector3210elementAtiEi.exit62.us
  %i.al = phi i32 [ %i.ak, %bb.f ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit62.us ] ; 3 uses
  %i.am = add nuw nsw i64 %i.g, 5                 ; 3 uses
  %i.an = icmp slt i64 %i.am, %i.i
  br i1 %i.an, label %bb.g, label %_ZNK6icu_789UVector3210elementAtiEi.exit64.us

bb.g:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit63.us
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.am
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !24
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit64.us

_ZNK6icu_789UVector3210elementAtiEi.exit64.us:    ; preds = %bb.g, %_ZNK6icu_789UVector3210elementAtiEi.exit63.us
  %i.ar = phi i32 [ %i.aq, %bb.g ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit63.us ] ; 3 uses
  %i.as = add nuw nsw i64 %i.g, 6                 ; 3 uses
  %i.at = icmp slt i64 %i.as, %i.i
  br i1 %i.at, label %bb.h, label %_ZNK6icu_789UVector3210elementAtiEi.exit65.us

bb.h:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit64.us
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.as
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !24
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit65.us

_ZNK6icu_789UVector3210elementAtiEi.exit65.us:    ; preds = %bb.h, %_ZNK6icu_789UVector3210elementAtiEi.exit64.us
  %i.ax = phi i32 [ %i.aw, %bb.h ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit64.us ] ; 3 uses
  %i.ay = add nuw nsw i64 %i.g, 7                 ; 3 uses
  %i.az = icmp slt i64 %i.ay, %i.i
  br i1 %i.az, label %bb.i, label %_ZNK6icu_789UVector3210elementAtiEi.exit66.us

bb.i:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit65.us
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ay
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !24
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit66.us

_ZNK6icu_789UVector3210elementAtiEi.exit66.us:    ; preds = %bb.i, %_ZNK6icu_789UVector3210elementAtiEi.exit65.us
  %i.bd = phi i32 [ %i.bc, %bb.i ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit65.us ] ; 3 uses
  %.not.us = icmp eq i32 %i.z, %i.ax
  br i1 %.not.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit66.us
  %i.be = sub nsw i32 %i.ax, %i.z
  br label %bb.q

bb.k:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit66.us
  %.not57.us = icmp eq i32 %i.af, %i.bd
  br i1 %.not57.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = sub nsw i32 %i.af, %i.bd
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %.not58.us = icmp eq i32 %i.n, %i.al
  br i1 %.not58.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = sub nsw i32 %i.n, %i.al
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %.not59.us = icmp eq i32 %i.t, %i.ar
  br i1 %.not59.us, label %.thread.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = sub nsw i32 %i.ar, %i.t
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l, %bb.j
  %.046.in.us = phi i32 [ %i.be, %bb.j ], [ %i.bf, %bb.l ], [ %i.bg, %bb.n ], [ %i.bh, %bb.p ]
  %i.bi = icmp slt i32 %.046.in.us, 0
  br i1 %i.bi, label %bb.r, label %.thread.us

bb.r:                                             ; preds = %bb.q
  %i.bj = trunc nuw nsw i64 %i.g to i32
  tail call void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.al, i32 noundef %i.bj)
  %i.bk = trunc nuw nsw i64 %i.o to i32
  tail call void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.ar, i32 noundef %i.bk)
  %i.bl = trunc nuw nsw i64 %i.u to i32
  tail call void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.ax, i32 noundef %i.bl)
  %i.bm = trunc nuw nsw i64 %i.aa to i32
  tail call void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.bd, i32 noundef %i.bm)
  %i.bn = trunc nuw nsw i64 %i.ag to i32
  tail call void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.n, i32 noundef %i.bn)
  %i.bo = trunc nuw nsw i64 %i.am to i32
  tail call void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.t, i32 noundef %i.bo)
  %i.bp = trunc nuw nsw i64 %i.as to i32
  tail call void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.z, i32 noundef %i.bp)
  %i.bq = trunc nuw nsw i64 %i.ay to i32
  tail call void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.af, i32 noundef %i.bq)
  br label %.thread.us

.thread.us:                                       ; preds = %bb.r, %bb.q, %bb.o
  %.1.us = phi i1 [ false, %bb.r ], [ %.04868.us, %bb.q ], [ %.04868.us, %bb.o ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count ; 3 uses
  %brmerge.not = select i1 %exitcond.not, i1 %.1.us, i1 false
  %indvars.iv.next.mux = select i1 %exitcond.not, i64 0, i64 %indvars.iv.next
  %.1.us.mux = select i1 %exitcond.not, i1 true, i1 %.1.us
  br i1 %brmerge.not, label %.split71.us, label %.lr.ph.us, !llvm.loop !31

.split71.us:                                      ; preds = %.thread.us, %bb.a
  ret void
}

declare void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSN6icu_7814ConstChar16PtrE", !13, i64 0}
end_hunk_0
