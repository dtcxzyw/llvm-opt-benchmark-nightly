Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/XMPUtils?download=true
inline.NumInlined: 806
inline.NumDeleted: 389
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8XMPUtils16ConvertToUTCTimeEP12XMP_DateTime:bb.a
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35
  %.not15.i = icmp eq i32 %i.c, 0
  br i1 %.not15.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36
  %.not16.i = icmp eq i32 %i.e, 0
  br i1 %.not16.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.f, align 4, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31   ; 3 uses
  %.not17.i = icmp eq i32 %i.h, 0
  br i1 %.not17.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 4, !tbaa !39
  %.not18.i = icmp eq i32 %i.j, 0
  br i1 %.not18.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !40
  %.not19.i = icmp eq i32 %i.l, 0
  br i1 %.not19.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !38
  %.not20.i = icmp eq i32 %i.n, 0
  br i1 %.not20.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.o, align 1, !tbaa !32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 27 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !33    ; 2 uses
  %.not21.i = icmp eq i8 %i.q, 0
  br i1 %.not21.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !37
  %.not22.i = icmp eq i32 %i.s, 0
  br i1 %.not22.i, label %bb.l, label %.thread17

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 4, !tbaa !43
  %.not23.i = icmp eq i32 %i.u, 0
  br i1 %.not23.i, label %bb.m, label %.thread17

bb.m:                                             ; preds = %bb.l
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 26
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !34
  %i.v = icmp eq i8 %.pre.i, 0
  br i1 %i.v, label %_ZL19VerifyDateTimeFlagsP12XMP_DateTime.exit.thread, label %.thread

.thread:                                          ; preds = %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.w, align 1, !tbaa !32
  br label %bb.q

.thread17:                                        ; preds = %bb.k, %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 1, ptr %i.x, align 2, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.y, align 1, !tbaa !32
  br label %bb.q

bb.n:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 1, ptr %i.z, align 2, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.aa, align 1, !tbaa !32
  switch i8 %i.q, label %bb.q [
    i8 1, label %bb.o
    i8 -1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !37
  %i.ad = sub nsw i32 %i.h, %i.ac
  store i32 %i.ad, ptr %i.g, align 4, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !39
  %i.ai = sub nsw i32 %i.ah, %i.af
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !39
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !37
  %i.al = add nsw i32 %i.ak, %i.h
  store i32 %i.al, ptr %i.g, align 4, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i32, ptr %i.am, align 4, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !39
  %i.aq = add nsw i32 %i.ap, %i.an
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !39
  br label %bb.q

bb.q:                                             ; preds = %.thread17, %.thread, %bb.n, %bb.p, %bb.o
  tail call fastcc void @_ZL18AdjustTimeOverflowP12XMP_DateTime(ptr noundef nonnull %0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.p, i8 0, i64 9, i1 false)
  br label %_ZL19VerifyDateTimeFlagsP12XMP_DateTime.exit.thread

_ZL19VerifyDateTimeFlagsP12XMP_DateTime.exit.thread: ; preds = %bb.m, %bb.q
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL18AdjustTimeOverflowP12XMP_DateTime(ptr nofree noundef captures(none) %0) unnamed_addr #18 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !29     ; 3 uses
  %.not = icmp eq i32 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35   ; 4 uses
  %.not96 = icmp eq i32 %i.c, 0
  %or.cond = select i1 %.not, i1 %.not96, i1 false
  br i1 %or.cond, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36
  %.not97 = icmp eq i32 %i.e, 0
  br i1 %.not97, label %.loopexit166, label %.thread

.thread:                                          ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = icmp slt i32 %i.c, 1
  br i1 %i.h, label %.lr.ph, label %.preheader168

.lr.ph:                                           ; preds = %.thread, %._crit_edge
  %i.i = phi ptr [ %i.f, %.thread ], [ %i.g, %._crit_edge ] ; 2 uses
  %.promoted383 = phi i32 [ 0, %.thread ], [ %i.c, %._crit_edge ] ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %.promoted383, i32 -11)
  %i.j = add nsw i32 %smax, 11
  %i.k = sub i32 %i.j, %.promoted383
  %i.l = udiv i32 %i.k, 12                        ; 2 uses
  %i.m = xor i32 %i.l, -1
  %i.n = add i32 %i.a, %i.m                       ; 2 uses
  %i.o = mul nuw i32 %i.l, 12
  %i.p = add i32 %.promoted383, %i.o
  %i.q = add i32 %i.p, 12                         ; 2 uses
  store i32 %i.n, ptr %0, align 4, !tbaa !29
  store i32 %i.q, ptr %i.i, align 4, !tbaa !35
  br label %.preheader168

.preheader168:                                    ; preds = %.lr.ph, %._crit_edge
  %i.r = phi ptr [ %i.i, %.lr.ph ], [ %i.g, %._crit_edge ] ; 5 uses
  %.promoted187 = phi i32 [ %i.n, %.lr.ph ], [ %i.a, %._crit_edge ] ; 2 uses
  %.lcssa180 = phi i32 [ %i.q, %.lr.ph ], [ %i.c, %._crit_edge ] ; 4 uses
  %i.s = icmp sgt i32 %.lcssa180, 12
  br i1 %i.s, label %.lr.ph186, label %.preheader167

.lr.ph186:                                        ; preds = %.preheader168
  %i.t = tail call i32 @llvm.usub.sat.i32(i32 %.lcssa180, i32 24)
  %i.u = add nuw i32 %i.t, 11
  %i.v = udiv i32 %i.u, 12                        ; 2 uses
  %i.w = add i32 %.promoted187, %i.v
  %i.x = add i32 %i.w, 1                          ; 2 uses
  %i.y = add nsw i32 %.lcssa180, -12
  %.neg = mul nsw i32 %i.v, -12
  %i.z = add nsw i32 %.neg, %i.y                  ; 2 uses
  store i32 %i.x, ptr %0, align 4, !tbaa !29
  store i32 %i.z, ptr %i.r, align 4, !tbaa !35
  br label %.preheader167

.preheader167:                                    ; preds = %.lr.ph186, %.preheader168
  %i.aa = phi i32 [ %i.x, %.lr.ph186 ], [ %.promoted187, %.preheader168 ] ; 3 uses
  %i.ab = phi i32 [ %i.z, %.lr.ph186 ], [ %.lcssa180, %.preheader168 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !36 ; 3 uses
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %.lr.ph190, label %.preheader165.preheader

.preheader165.preheader:                          ; preds = %..preheader165_crit_edge, %.preheader167
  %.ph449 = phi i32 [ %i.ap, %..preheader165_crit_edge ], [ %i.ab, %.preheader167 ]
  %.ph450 = phi i32 [ %i.an, %..preheader165_crit_edge ], [ %i.aa, %.preheader167 ]
  %.ph451 = phi i32 [ %i.bf, %..preheader165_crit_edge ], [ %i.ad, %.preheader167 ]
  br label %.preheader165.outer

..preheader165_crit_edge:                         ; preds = %_ZL11DaysInMonthii.exit
  store i32 %i.bf, ptr %i.ac, align 4, !tbaa !36
  br label %.preheader165.preheader

.lr.ph190:                                        ; preds = %.preheader167, %_ZL11DaysInMonthii.exit
  %i.af = phi i32 [ %i.an, %_ZL11DaysInMonthii.exit ], [ %i.aa, %.preheader167 ]
  %i.ag = phi i32 [ %i.be, %_ZL11DaysInMonthii.exit ], [ %i.aa, %.preheader167 ] ; 2 uses
  %i.ah = phi i32 [ %i.ap, %_ZL11DaysInMonthii.exit ], [ %i.ab, %.preheader167 ] ; 3 uses
  %i.ai = phi i32 [ %i.bf, %_ZL11DaysInMonthii.exit ], [ %i.ad, %.preheader167 ]
  %i.aj = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.r, align 4, !tbaa !35
  %i.ak = icmp slt i32 %i.ah, 2
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph190
  %i.al = add nsw i32 %i.ag, -1                   ; 3 uses
  store i32 %i.al, ptr %0, align 4, !tbaa !29
  %i.am = add nsw i32 %i.ah, 11                   ; 2 uses
  store i32 %i.am, ptr %i.r, align 4, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph190
  %i.an = phi i32 [ %i.al, %bb.c ], [ %i.af, %.lr.ph190 ] ; 7 uses
  %i.ao = phi i32 [ %i.al, %bb.c ], [ %i.ag, %.lr.ph190 ]
  %i.ap = phi i32 [ %i.am, %bb.c ], [ %i.aj, %.lr.ph190 ] ; 4 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [2 x i8], ptr @_ZZL11DaysInMonthiiE11daysInMonth, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !151
  %i.at = sext i16 %i.as to i32                   ; 4 uses
  %i.au = icmp eq i32 %i.ap, 2
  br i1 %i.au, label %bb.e, label %_ZL11DaysInMonthii.exit

bb.e:                                             ; preds = %bb.d
  %i.av = sext i32 %i.an to i64                   ; 2 uses
  %i.aw = icmp slt i32 %i.an, 0
  %i.ax = sub nsw i64 1, %i.av
  %spec.select.i.i = select i1 %i.aw, i64 %i.ax, i64 %i.av ; 3 uses
  %i.ay = and i64 %spec.select.i.i, 3
  %.not.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i, label %bb.f, label %_ZL11DaysInMonthii.exit

bb.f:                                             ; preds = %bb.e
  %i.az = urem i64 %spec.select.i.i, 100
  %.not7.i.i = icmp eq i64 %i.az, 0
  br i1 %.not7.i.i, label %_ZL10IsLeapYearl.exit.i, label %_ZL10IsLeapYearl.exit.thread.i

_ZL10IsLeapYearl.exit.thread.i:                   ; preds = %bb.f
  %i.ba = add nsw i32 %i.at, 1
  br label %_ZL11DaysInMonthii.exit

_ZL10IsLeapYearl.exit.i:                          ; preds = %bb.f
  %i.bb = urem i64 %spec.select.i.i, 400
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %spec.select.i = add nsw i32 %i.bd, %i.at
  br label %_ZL11DaysInMonthii.exit

_ZL11DaysInMonthii.exit:                          ; preds = %bb.d, %bb.e, %_ZL10IsLeapYearl.exit.thread.i, %_ZL10IsLeapYearl.exit.i
  %i.be = phi i32 [ %i.ao, %bb.d ], [ %i.an, %bb.e ], [ %i.an, %_ZL10IsLeapYearl.exit.i ], [ %i.an, %_ZL10IsLeapYearl.exit.thread.i ]
  %.0.i = phi i32 [ %i.at, %bb.d ], [ %i.at, %bb.e ], [ %spec.select.i, %_ZL10IsLeapYearl.exit.i ], [ %i.ba, %_ZL10IsLeapYearl.exit.thread.i ]
  %i.bf = add nsw i32 %.0.i, %i.ai                ; 4 uses
  %i.bg = icmp slt i32 %i.bf, 1
  br i1 %i.bg, label %.lr.ph190, label %..preheader165_crit_edge, !llvm.loop !146

.preheader165:                                    ; preds = %.preheader165.outer, %_ZL11DaysInMonthii.exit116
  %i.bh = phi i32 [ %i.ch, %_ZL11DaysInMonthii.exit116 ], [ %.ph452, %.preheader165.outer ] ; 6 uses
  %i.bi = phi i32 [ %i.cg, %_ZL11DaysInMonthii.exit116 ], [ %.ph454, %.preheader165.outer ] ; 8 uses
  %i.bj = sext i32 %i.bh to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr @_ZZL11DaysInMonthiiE11daysInMonth, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !151
  %i.bm = sext i16 %i.bl to i32                   ; 8 uses
  %i.bn = icmp eq i32 %i.bh, 2
  br i1 %i.bn, label %bb.g, label %_ZL11DaysInMonthii.exit108.thread

bb.g:                                             ; preds = %.preheader165
  %i.bo = sext i32 %.ph453 to i64                 ; 2 uses
  %i.bp = icmp slt i32 %.ph453, 0
  %i.bq = sub nsw i64 1, %i.bo
  %spec.select.i.i102 = select i1 %i.bp, i64 %i.bq, i64 %i.bo ; 5 uses
  %i.br = and i64 %spec.select.i.i102, 3
  %.not.i.i103 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i103, label %bb.h, label %_ZL11DaysInMonthii.exit108.thread384

bb.h:                                             ; preds = %bb.g
  %i.bs = urem i64 %spec.select.i.i102, 100
  %.not7.i.i104 = icmp eq i64 %i.bs, 0
  br i1 %.not7.i.i104, label %_ZL10IsLeapYearl.exit.i106, label %_ZL10IsLeapYearl.exit.thread.i105

_ZL10IsLeapYearl.exit.thread.i105:                ; preds = %bb.h
  %i.bt = add nsw i32 %i.bm, 1
  br label %_ZL11DaysInMonthii.exit108

_ZL10IsLeapYearl.exit.i106:                       ; preds = %bb.h
  %i.bu = urem i64 %spec.select.i.i102, 400
  %i.bv = icmp eq i64 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %spec.select.i107 = add nsw i32 %i.bw, %i.bm
  br label %_ZL11DaysInMonthii.exit108

_ZL11DaysInMonthii.exit108:                       ; preds = %_ZL10IsLeapYearl.exit.thread.i105, %_ZL10IsLeapYearl.exit.i106
  %.0.i101 = phi i32 [ %i.bt, %_ZL10IsLeapYearl.exit.thread.i105 ], [ %spec.select.i107, %_ZL10IsLeapYearl.exit.i106 ]
  %i.bx = icmp sgt i32 %i.bi, %.0.i101
  br i1 %i.bx, label %bb.i, label %.loopexit166

_ZL11DaysInMonthii.exit108.thread384:             ; preds = %bb.g
  %i.by = icmp sgt i32 %i.bi, %i.bm
  br i1 %i.by, label %_ZL11DaysInMonthii.exit116.thread, label %.loopexit166

_ZL11DaysInMonthii.exit108.thread:                ; preds = %.preheader165
  %i.bz = icmp sgt i32 %i.bi, %i.bm
  br i1 %i.bz, label %_ZL11DaysInMonthii.exit116, label %.loopexit166

bb.i:                                             ; preds = %_ZL11DaysInMonthii.exit108
  %i.ca = urem i64 %spec.select.i.i102, 100
  %.not7.i.i112 = icmp eq i64 %i.ca, 0
  br i1 %.not7.i.i112, label %_ZL10IsLeapYearl.exit.i114, label %_ZL10IsLeapYearl.exit.thread.i113

_ZL10IsLeapYearl.exit.thread.i113:                ; preds = %bb.i
  %i.cb = add nsw i32 %i.bm, 1
  br label %_ZL11DaysInMonthii.exit116.thread

_ZL10IsLeapYearl.exit.i114:                       ; preds = %bb.i
  %i.cc = urem i64 %spec.select.i.i102, 400
  %i.cd = icmp eq i64 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %spec.select.i115 = add nsw i32 %i.ce, %i.bm
  br label %_ZL11DaysInMonthii.exit116.thread

_ZL11DaysInMonthii.exit116.thread:                ; preds = %_ZL11DaysInMonthii.exit108.thread384, %_ZL10IsLeapYearl.exit.thread.i113, %_ZL10IsLeapYearl.exit.i114
  %.0.i109.ph = phi i32 [ %i.cb, %_ZL10IsLeapYearl.exit.thread.i113 ], [ %spec.select.i115, %_ZL10IsLeapYearl.exit.i114 ], [ %i.bm, %_ZL11DaysInMonthii.exit108.thread384 ]
  %i.cf = sub nsw i32 %i.bi, %.0.i109.ph          ; 2 uses
  store i32 %i.cf, ptr %i.ac, align 4, !tbaa !36
  br label %.sink.split

_ZL11DaysInMonthii.exit116:                       ; preds = %_ZL11DaysInMonthii.exit108.thread
  %i.cg = sub nsw i32 %i.bi, %i.bm                ; 3 uses
  store i32 %i.cg, ptr %i.ac, align 4, !tbaa !36
  %i.ch = add nsw i32 %i.bh, 1                    ; 2 uses
  store i32 %i.ch, ptr %i.r, align 4, !tbaa !35
  %i.ci = icmp sgt i32 %i.bh, 11
  br i1 %i.ci, label %bb.j, label %.preheader165, !llvm.loop !147

bb.j:                                             ; preds = %_ZL11DaysInMonthii.exit116
  %i.cj = add nsw i32 %.ph453, 1                  ; 2 uses
  store i32 %i.cj, ptr %0, align 4, !tbaa !29
  %i.ck = add nsw i32 %i.bh, -11
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %_ZL11DaysInMonthii.exit116.thread
  %.sink = phi i32 [ 3, %_ZL11DaysInMonthii.exit116.thread ], [ %i.ck, %bb.j ] ; 2 uses
  %.ph398 = phi i32 [ %.ph453, %_ZL11DaysInMonthii.exit116.thread ], [ %i.cj, %bb.j ]
  %.ph399 = phi i32 [ %i.cf, %_ZL11DaysInMonthii.exit116.thread ], [ %i.cg, %bb.j ]
  store i32 %.sink, ptr %i.r, align 4, !tbaa !35
  br label %.preheader165.outer, !llvm.loop !147

.preheader165.outer:                              ; preds = %.preheader165.preheader, %.sink.split
  %.ph452 = phi i32 [ %.ph449, %.preheader165.preheader ], [ %.sink, %.sink.split ]
  %.ph453 = phi i32 [ %.ph450, %.preheader165.preheader ], [ %.ph398, %.sink.split ] ; 7 uses
  %.ph454 = phi i32 [ %.ph451, %.preheader165.preheader ], [ %.ph399, %.sink.split ]
  br label %.preheader165

.loopexit166:                                     ; preds = %_ZL11DaysInMonthii.exit108.thread, %_ZL11DaysInMonthii.exit108, %_ZL11DaysInMonthii.exit108.thread384, %bb.b
  %.promoted257 = phi i32 [ 0, %bb.b ], [ %i.bh, %_ZL11DaysInMonthii.exit108.thread ], [ 2, %_ZL11DaysInMonthii.exit108 ], [ 2, %_ZL11DaysInMonthii.exit108.thread384 ] ; 6 uses
  %.promoted262 = phi i32 [ 0, %bb.b ], [ %.ph453, %_ZL11DaysInMonthii.exit108.thread384 ], [ %.ph453, %_ZL11DaysInMonthii.exit108 ], [ %.ph453, %_ZL11DaysInMonthii.exit108.thread ] ; 3 uses
  %.promoted196 = phi i32 [ 0, %bb.b ], [ %i.bi, %_ZL11DaysInMonthii.exit108.thread384 ], [ %i.bi, %_ZL11DaysInMonthii.exit108 ], [ %i.bi, %_ZL11DaysInMonthii.exit108.thread ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 9 uses
  %.promoted192 = load i32, ptr %i.cl, align 4, !tbaa !31 ; 5 uses
  %i.cm = icmp slt i32 %.promoted192, 0
  br i1 %i.cm, label %.lr.ph193, label %.preheader164

.lr.ph193:                                        ; preds = %.loopexit166
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.co = tail call i32 @llvm.umax.i32(i32 %.promoted192, i32 -24)
  %i.cp = add nsw i32 %i.co, 23
  %i.cq = sub i32 %i.cp, %.promoted192
  %i.cr = udiv i32 %i.cq, 24                      ; 2 uses
  %i.cs = xor i32 %i.cr, -1
  %i.ct = add i32 %.promoted196, %i.cs            ; 2 uses
  %i.cu = mul nuw i32 %i.cr, 24
  %i.cv = add i32 %.promoted192, %i.cu
  %i.cw = add i32 %i.cv, 24                       ; 2 uses
  store i32 %i.ct, ptr %i.cn, align 4, !tbaa !36
  store i32 %i.cw, ptr %i.cl, align 4, !tbaa !31
  br label %.preheader164

.preheader164:                                    ; preds = %.lr.ph193, %.loopexit166
  %.promoted200 = phi i32 [ %i.ct, %.lr.ph193 ], [ %.promoted196, %.loopexit166 ] ; 2 uses
  %.lcssa177 = phi i32 [ %i.cw, %.lr.ph193 ], [ %.promoted192, %.loopexit166 ] ; 4 uses
  %i.cx = icmp sgt i32 %.lcssa177, 23
  br i1 %i.cx, label %.lr.ph199, label %.preheader163

.lr.ph199:                                        ; preds = %.preheader164
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cz = tail call i32 @llvm.usub.sat.i32(i32 %.lcssa177, i32 47)
  %i.da = add nuw i32 %i.cz, 23
  %i.db = udiv i32 %i.da, 24                      ; 2 uses
  %i.dc = add i32 %.promoted200, %i.db
  %i.dd = add i32 %i.dc, 1                        ; 2 uses
  %i.de = add nsw i32 %.lcssa177, -24
  %.neg372 = mul nsw i32 %i.db, -24
  %i.df = add nsw i32 %.neg372, %i.de             ; 2 uses
  store i32 %i.dd, ptr %i.cy, align 4, !tbaa !36
  store i32 %i.df, ptr %i.cl, align 4, !tbaa !31
  br label %.preheader163

.preheader163:                                    ; preds = %.lr.ph199, %.preheader164
  %.promoted250 = phi i32 [ %i.dd, %.lr.ph199 ], [ %.promoted200, %.preheader164 ] ; 2 uses
  %.lcssa178.promoted = phi i32 [ %i.df, %.lr.ph199 ], [ %.lcssa177, %.preheader164 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !39 ; 5 uses
  %i.di = icmp slt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph203, label %.preheader162

.lr.ph203:                                        ; preds = %.preheader163
  %i.dj = tail call i32 @llvm.umax.i32(i32 %i.dh, i32 -60)
  %i.dk = add nsw i32 %i.dj, 59
  %i.dl = sub i32 %i.dk, %i.dh
  %i.dm = udiv i32 %i.dl, 60                      ; 2 uses
  %i.dn = xor i32 %i.dm, -1
  %i.do = add i32 %.lcssa178.promoted, %i.dn      ; 2 uses
  %i.dp = mul nuw i32 %i.dm, 60
  %i.dq = add i32 %i.dh, %i.dp
  %i.dr = add i32 %i.dq, 60                       ; 2 uses
  store i32 %i.do, ptr %i.cl, align 4, !tbaa !31
  store i32 %i.dr, ptr %i.dg, align 4, !tbaa !39
  br label %.preheader162

.preheader162:                                    ; preds = %.lr.ph203, %.preheader163
  %.lcssa178.promoted210 = phi i32 [ %i.do, %.lr.ph203 ], [ %.lcssa178.promoted, %.preheader163 ] ; 2 uses
  %.lcssa175 = phi i32 [ %i.dr, %.lr.ph203 ], [ %i.dh, %.preheader163 ] ; 4 uses
  %i.ds = icmp sgt i32 %.lcssa175, 59
  br i1 %i.ds, label %.lr.ph209, label %.preheader161

.lr.ph209:                                        ; preds = %.preheader162
  %i.dt = tail call i32 @llvm.usub.sat.i32(i32 %.lcssa175, i32 119)
  %i.du = add nuw i32 %i.dt, 59
  %i.dv = udiv i32 %i.du, 60                      ; 2 uses
  %i.dw = add i32 %.lcssa178.promoted210, %i.dv
  %i.dx = add i32 %i.dw, 1                        ; 2 uses
  %i.dy = add nsw i32 %.lcssa175, -60
  %.neg373 = mul nsw i32 %i.dv, -60
  %i.dz = add nsw i32 %.neg373, %i.dy             ; 2 uses
  store i32 %i.dx, ptr %i.cl, align 4, !tbaa !31
  store i32 %i.dz, ptr %i.dg, align 4, !tbaa !39
  br label %.preheader161

.preheader161:                                    ; preds = %.lr.ph209, %.preheader162
  %.lcssa178.promoted242 = phi i32 [ %i.dx, %.lr.ph209 ], [ %.lcssa178.promoted210, %.preheader162 ] ; 2 uses
  %.lcssa176.promoted = phi i32 [ %i.dz, %.lr.ph209 ], [ %.lcssa175, %.preheader162 ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 7 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !40 ; 5 uses
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %.lr.ph213, label %.preheader160

.lr.ph213:                                        ; preds = %.preheader161
  %i.ed = tail call i32 @llvm.umax.i32(i32 %i.eb, i32 -60)
  %i.ee = add nsw i32 %i.ed, 59
  %i.ef = sub i32 %i.ee, %i.eb
  %i.eg = udiv i32 %i.ef, 60                      ; 2 uses
  %i.eh = xor i32 %i.eg, -1
  %i.ei = add i32 %.lcssa176.promoted, %i.eh      ; 2 uses
  %i.ej = mul nuw i32 %i.eg, 60
  %i.ek = add i32 %i.eb, %i.ej
  %i.el = add i32 %i.ek, 60                       ; 2 uses
  store i32 %i.ei, ptr %i.dg, align 4, !tbaa !39
  store i32 %i.el, ptr %i.ea, align 4, !tbaa !40
  br label %.preheader160

.preheader160:                                    ; preds = %.lr.ph213, %.preheader161
  %.lcssa176.promoted220 = phi i32 [ %i.ei, %.lr.ph213 ], [ %.lcssa176.promoted, %.preheader161 ] ; 2 uses
  %.lcssa173 = phi i32 [ %i.el, %.lr.ph213 ], [ %i.eb, %.preheader161 ] ; 4 uses
  %i.em = icmp sgt i32 %.lcssa173, 59
  br i1 %i.em, label %.lr.ph219, label %.preheader159

.lr.ph219:                                        ; preds = %.preheader160
  %i.en = tail call i32 @llvm.usub.sat.i32(i32 %.lcssa173, i32 119)
  %i.eo = add nuw i32 %i.en, 59
  %i.ep = udiv i32 %i.eo, 60                      ; 2 uses
  %i.eq = add i32 %.lcssa176.promoted220, %i.ep
  %i.er = add i32 %i.eq, 1                        ; 2 uses
  %i.es = add nsw i32 %.lcssa173, -60
  %.neg374 = mul nsw i32 %i.ep, -60
  %i.et = add nsw i32 %.neg374, %i.es             ; 2 uses
  store i32 %i.er, ptr %i.dg, align 4, !tbaa !39
  store i32 %i.et, ptr %i.ea, align 4, !tbaa !40
  br label %.preheader159

.preheader159:                                    ; preds = %.lr.ph219, %.preheader160
  %.lcssa176.promoted234 = phi i32 [ %i.er, %.lr.ph219 ], [ %.lcssa176.promoted220, %.preheader160 ] ; 2 uses
  %.lcssa174.promoted = phi i32 [ %i.et, %.lr.ph219 ], [ %.lcssa173, %.preheader160 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !38 ; 5 uses
  %i.ew = icmp slt i32 %i.ev, 0
  br i1 %i.ew, label %.lr.ph223, label %.preheader158

.lr.ph223:                                        ; preds = %.preheader159
  %i.ex = tail call i32 @llvm.umax.i32(i32 %i.ev, i32 -1000000000)
  %i.ey = add nsw i32 %i.ex, 999999999
  %i.ez = sub i32 %i.ey, %i.ev
  %i.fa = udiv i32 %i.ez, 1000000000              ; 2 uses
  %i.fb = xor i32 %i.fa, -1
  %i.fc = add i32 %.lcssa174.promoted, %i.fb      ; 2 uses
  %i.fd = mul nuw i32 %i.fa, 1000000000
  %i.fe = add i32 %i.ev, %i.fd
  %i.ff = add i32 %i.fe, 1000000000               ; 2 uses
  store i32 %i.fc, ptr %i.ea, align 4, !tbaa !40
  store i32 %i.ff, ptr %i.eu, align 4, !tbaa !38
  br label %.preheader158

.preheader158:                                    ; preds = %.lr.ph223, %.preheader159
  %.lcssa174.promoted230 = phi i32 [ %i.fc, %.lr.ph223 ], [ %.lcssa174.promoted, %.preheader159 ] ; 2 uses
  %.lcssa171 = phi i32 [ %i.ff, %.lr.ph223 ], [ %i.ev, %.preheader159 ] ; 3 uses
  %i.fg = icmp sgt i32 %.lcssa171, 999999999
  br i1 %i.fg, label %.lr.ph229, label %thread-pre-split

.lr.ph229:                                        ; preds = %.preheader158
  %i.fh = tail call i32 @llvm.usub.sat.i32(i32 %.lcssa171, i32 1999999999)
  %i.fi = add nuw nsw i32 %i.fh, 999999999
  %i.fj = udiv i32 %i.fi, 1000000000              ; 2 uses
  %i.fk = add i32 %.lcssa174.promoted230, %i.fj
  %i.fl = add i32 %i.fk, 1                        ; 2 uses
  %i.fm = add nsw i32 %.lcssa171, -1000000000
  %.neg375 = mul nsw i32 %i.fj, -1000000000
  %i.fn = add nsw i32 %.neg375, %i.fm
  store i32 %i.fl, ptr %i.ea, align 4, !tbaa !40
  store i32 %i.fn, ptr %i.eu, align 4, !tbaa !38
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %.lr.ph229, %.preheader158
  %.pr = phi i32 [ %i.fl, %.lr.ph229 ], [ %.lcssa174.promoted230, %.preheader158 ] ; 5 uses
  %i.fo = icmp slt i32 %.pr, 0
  br i1 %i.fo, label %.lr.ph233, label %thread-pre-split143

.lr.ph233:                                        ; preds = %thread-pre-split
  %i.fp = tail call i32 @llvm.umax.i32(i32 %.pr, i32 -60)
  %i.fq = add nsw i32 %i.fp, 59
  %i.fr = sub i32 %i.fq, %.pr
  %i.fs = udiv i32 %i.fr, 60                      ; 2 uses
  %i.ft = xor i32 %i.fs, -1
  %i.fu = add i32 %.lcssa176.promoted234, %i.ft   ; 2 uses
  %i.fv = mul nuw i32 %i.fs, 60
  %i.fw = add i32 %.pr, %i.fv
  %i.fx = add i32 %i.fw, 60                       ; 2 uses
  store i32 %i.fu, ptr %i.dg, align 4, !tbaa !39
  store i32 %i.fx, ptr %i.ea, align 4, !tbaa !40
  br label %thread-pre-split143

thread-pre-split143:                              ; preds = %.lr.ph233, %thread-pre-split
  %.lcssa176.promoted238 = phi i32 [ %i.fu, %.lr.ph233 ], [ %.lcssa176.promoted234, %thread-pre-split ] ; 2 uses
  %.pr144 = phi i32 [ %i.fx, %.lr.ph233 ], [ %.pr, %thread-pre-split ] ; 3 uses
  %i.fy = icmp sgt i32 %.pr144, 59
  br i1 %i.fy, label %.lr.ph237, label %thread-pre-split145

.lr.ph237:                                        ; preds = %thread-pre-split143
  %i.fz = tail call i32 @llvm.usub.sat.i32(i32 %.pr144, i32 119)
  %i.ga = add nuw i32 %i.fz, 59
  %i.gb = udiv i32 %i.ga, 60                      ; 2 uses
  %i.gc = add i32 %.lcssa176.promoted238, %i.gb
  %i.gd = add i32 %i.gc, 1                        ; 2 uses
  %i.ge = add nsw i32 %.pr144, -60
  %.neg376 = mul nsw i32 %i.gb, -60
  %i.gf = add nsw i32 %.neg376, %i.ge
  store i32 %i.gd, ptr %i.dg, align 4, !tbaa !39
  store i32 %i.gf, ptr %i.ea, align 4, !tbaa !40
  br label %thread-pre-split145

thread-pre-split145:                              ; preds = %.lr.ph237, %thread-pre-split143
  %.pr146 = phi i32 [ %i.gd, %.lr.ph237 ], [ %.lcssa176.promoted238, %thread-pre-split143 ] ; 5 uses
  %i.gg = icmp slt i32 %.pr146, 0
  br i1 %i.gg, label %.lr.ph241, label %thread-pre-split147

.lr.ph241:                                        ; preds = %thread-pre-split145
  %i.gh = tail call i32 @llvm.umax.i32(i32 %.pr146, i32 -60)
  %i.gi = add nsw i32 %i.gh, 59
  %i.gj = sub i32 %i.gi, %.pr146
  %i.gk = udiv i32 %i.gj, 60                      ; 2 uses
  %i.gl = xor i32 %i.gk, -1
  %i.gm = add i32 %.lcssa178.promoted242, %i.gl   ; 2 uses
  %i.gn = mul nuw i32 %i.gk, 60
  %i.go = add i32 %.pr146, %i.gn
  %i.gp = add i32 %i.go, 60                       ; 2 uses
  store i32 %i.gm, ptr %i.cl, align 4, !tbaa !31
  store i32 %i.gp, ptr %i.dg, align 4, !tbaa !39
  br label %thread-pre-split147

thread-pre-split147:                              ; preds = %.lr.ph241, %thread-pre-split145
  %.lcssa178.promoted246 = phi i32 [ %i.gm, %.lr.ph241 ], [ %.lcssa178.promoted242, %thread-pre-split145 ] ; 2 uses
  %.pr148 = phi i32 [ %i.gp, %.lr.ph241 ], [ %.pr146, %thread-pre-split145 ] ; 3 uses
  %i.gq = icmp sgt i32 %.pr148, 59
  br i1 %i.gq, label %.lr.ph245, label %thread-pre-split149

.lr.ph245:                                        ; preds = %thread-pre-split147
  %i.gr = tail call i32 @llvm.usub.sat.i32(i32 %.pr148, i32 119)
  %i.gs = add nuw i32 %i.gr, 59
  %i.gt = udiv i32 %i.gs, 60                      ; 2 uses
  %i.gu = add i32 %.lcssa178.promoted246, %i.gt
  %i.gv = add i32 %i.gu, 1                        ; 2 uses
  %i.gw = add nsw i32 %.pr148, -60
  %.neg377 = mul nsw i32 %i.gt, -60
  %i.gx = add nsw i32 %.neg377, %i.gw
  store i32 %i.gv, ptr %i.cl, align 4, !tbaa !31
  store i32 %i.gx, ptr %i.dg, align 4, !tbaa !39
  br label %thread-pre-split149

thread-pre-split149:                              ; preds = %.lr.ph245, %thread-pre-split147
  %.pr150 = phi i32 [ %i.gv, %.lr.ph245 ], [ %.lcssa178.promoted246, %thread-pre-split147 ] ; 5 uses
  %i.gy = icmp slt i32 %.pr150, 0
  br i1 %i.gy, label %.lr.ph249, label %thread-pre-split151

.lr.ph249:                                        ; preds = %thread-pre-split149
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ha = tail call i32 @llvm.umax.i32(i32 %.pr150, i32 -24)
  %i.hb = add nsw i32 %i.ha, 23
  %i.hc = sub i32 %i.hb, %.pr150
  %i.hd = udiv i32 %i.hc, 24                      ; 2 uses
  %i.he = xor i32 %i.hd, -1
  %i.hf = add i32 %.promoted250, %i.he            ; 2 uses
  %i.hg = mul nuw i32 %i.hd, 24
  %i.hh = add i32 %.pr150, %i.hg
  %i.hi = add i32 %i.hh, 24                       ; 2 uses
  store i32 %i.hf, ptr %i.gz, align 4, !tbaa !36
  store i32 %i.hi, ptr %i.cl, align 4, !tbaa !31
  br label %thread-pre-split151

thread-pre-split151:                              ; preds = %.lr.ph249, %thread-pre-split149
  %.promoted254 = phi i32 [ %i.hf, %.lr.ph249 ], [ %.promoted250, %thread-pre-split149 ] ; 2 uses
  %.pr152 = phi i32 [ %i.hi, %.lr.ph249 ], [ %.pr150, %thread-pre-split149 ] ; 3 uses
  %i.hj = icmp sgt i32 %.pr152, 23
  br i1 %i.hj, label %.lr.ph253, label %bb.k

.lr.ph253:                                        ; preds = %thread-pre-split151
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hl = tail call i32 @llvm.usub.sat.i32(i32 %.pr152, i32 47)
  %i.hm = add nuw i32 %i.hl, 23
  %i.hn = udiv i32 %i.hm, 24                      ; 2 uses
  %i.ho = add i32 %.promoted254, %i.hn
  %i.hp = add i32 %i.ho, 1                        ; 2 uses
  %i.hq = add nsw i32 %.pr152, -24
  %.neg378 = mul nsw i32 %i.hn, -24
  %i.hr = add nsw i32 %.neg378, %i.hq
  store i32 %i.hp, ptr %i.hk, align 4, !tbaa !36
  store i32 %i.hr, ptr %i.cl, align 4, !tbaa !31
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph253, %thread-pre-split151
  %i.hs = phi i32 [ %i.hp, %.lr.ph253 ], [ %.promoted254, %thread-pre-split151 ] ; 4 uses
  %i.ht = or i32 %.promoted262, %.promoted257
  %or.cond400 = icmp eq i32 %i.ht, 0
  br i1 %or.cond400, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.not100 = icmp eq i32 %i.hs, 0
  br i1 %.not100, label %.loopexit, label %.thread387

.thread387:                                       ; preds = %bb.l
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph259

bb.m:                                             ; preds = %bb.k
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.hw = icmp slt i32 %.promoted257, 1
  br i1 %i.hw, label %.lr.ph259, label %.preheader157

.lr.ph259:                                        ; preds = %.thread387, %bb.m
  %i.hx = phi ptr [ %i.hu, %.thread387 ], [ %i.hv, %bb.m ] ; 2 uses
  %smax322 = tail call i32 @llvm.smax.i32(i32 %.promoted257, i32 -11)
  %i.hy = add nsw i32 %smax322, 11
  %i.hz = sub i32 %i.hy, %.promoted257
  %i.ia = udiv i32 %i.hz, 12                      ; 2 uses
  %i.ib = xor i32 %i.ia, -1
  %i.ic = add i32 %.promoted262, %i.ib            ; 2 uses
  %i.id = mul nuw i32 %i.ia, 12
  %i.ie = add i32 %.promoted257, %i.id
  %i.if = add i32 %i.ie, 12                       ; 2 uses
  store i32 %i.ic, ptr %0, align 4, !tbaa !29
  store i32 %i.if, ptr %i.hx, align 4, !tbaa !35
  br label %.preheader157

.preheader157:                                    ; preds = %.lr.ph259, %bb.m
  %i.ig = phi ptr [ %i.hx, %.lr.ph259 ], [ %i.hv, %bb.m ] ; 5 uses
  %.promoted266 = phi i32 [ %i.ic, %.lr.ph259 ], [ %.promoted262, %bb.m ] ; 2 uses
  %.lcssa169 = phi i32 [ %i.if, %.lr.ph259 ], [ %.promoted257, %bb.m ] ; 4 uses
  %i.ih = icmp sgt i32 %.lcssa169, 12
  br i1 %i.ih, label %.lr.ph265, label %.preheader156

.lr.ph265:                                        ; preds = %.preheader157
  %i.ii = tail call i32 @llvm.usub.sat.i32(i32 %.lcssa169, i32 24)
  %i.ij = add nuw i32 %i.ii, 11
  %i.ik = udiv i32 %i.ij, 12                      ; 2 uses
  %i.il = add i32 %.promoted266, %i.ik
  %i.im = add i32 %i.il, 1                        ; 2 uses
  %i.in = add nsw i32 %.lcssa169, -12
  %.neg379 = mul nsw i32 %i.ik, -12
  %i.io = add nsw i32 %.neg379, %i.in             ; 2 uses
  store i32 %i.im, ptr %0, align 4, !tbaa !29
  store i32 %i.io, ptr %i.ig, align 4, !tbaa !35
  br label %.preheader156

.preheader156:                                    ; preds = %.lr.ph265, %.preheader157
  %i.ip = phi i32 [ %i.im, %.lr.ph265 ], [ %.promoted266, %.preheader157 ] ; 3 uses
  %i.iq = phi i32 [ %i.io, %.lr.ph265 ], [ %.lcssa169, %.preheader157 ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.is = icmp slt i32 %i.hs, 1
  br i1 %i.is, label %.lr.ph269, label %.preheader.preheader

.preheader.preheader:                             ; preds = %..preheader_crit_edge, %.preheader156
  %.ph = phi i32 [ %i.jd, %..preheader_crit_edge ], [ %i.iq, %.preheader156 ]
  %.ph431 = phi i32 [ %i.jb, %..preheader_crit_edge ], [ %i.ip, %.preheader156 ]
  %.ph432 = phi i32 [ %i.jt, %..preheader_crit_edge ], [ %i.hs, %.preheader156 ]
  br label %.preheader.outer

..preheader_crit_edge:                            ; preds = %_ZL11DaysInMonthii.exit124
  store i32 %i.jt, ptr %i.ir, align 4, !tbaa !36
  br label %.preheader.preheader

.lr.ph269:                                        ; preds = %.preheader156, %_ZL11DaysInMonthii.exit124
  %i.it = phi i32 [ %i.jb, %_ZL11DaysInMonthii.exit124 ], [ %i.ip, %.preheader156 ]
  %i.iu = phi i32 [ %i.js, %_ZL11DaysInMonthii.exit124 ], [ %i.ip, %.preheader156 ] ; 2 uses
  %i.iv = phi i32 [ %i.jd, %_ZL11DaysInMonthii.exit124 ], [ %i.iq, %.preheader156 ] ; 3 uses
  %i.iw = phi i32 [ %i.jt, %_ZL11DaysInMonthii.exit124 ], [ %i.hs, %.preheader156 ]
  %i.ix = add nsw i32 %i.iv, -1                   ; 2 uses
  store i32 %i.ix, ptr %i.ig, align 4, !tbaa !35
  %i.iy = icmp slt i32 %i.iv, 2
  br i1 %i.iy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph269
  %i.iz = add nsw i32 %i.iu, -1                   ; 3 uses
  store i32 %i.iz, ptr %0, align 4, !tbaa !29
  %i.ja = add nsw i32 %i.iv, 11                   ; 2 uses
  store i32 %i.ja, ptr %i.ig, align 4, !tbaa !35
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph269
  %i.jb = phi i32 [ %i.iz, %bb.n ], [ %i.it, %.lr.ph269 ] ; 7 uses
  %i.jc = phi i32 [ %i.iz, %bb.n ], [ %i.iu, %.lr.ph269 ]
  %i.jd = phi i32 [ %i.ja, %bb.n ], [ %i.ix, %.lr.ph269 ] ; 4 uses
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [2 x i8], ptr @_ZZL11DaysInMonthiiE11daysInMonth, i64 %i.je
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !151
  %i.jh = sext i16 %i.jg to i32                   ; 4 uses
  %i.ji = icmp eq i32 %i.jd, 2
  br i1 %i.ji, label %bb.p, label %_ZL11DaysInMonthii.exit124

bb.p:                                             ; preds = %bb.o
  %i.jj = sext i32 %i.jb to i64                   ; 2 uses
  %i.jk = icmp slt i32 %i.jb, 0
  %i.jl = sub nsw i64 1, %i.jj
  %spec.select.i.i118 = select i1 %i.jk, i64 %i.jl, i64 %i.jj ; 3 uses
  %i.jm = and i64 %spec.select.i.i118, 3
  %.not.i.i119 = icmp eq i64 %i.jm, 0
  br i1 %.not.i.i119, label %bb.q, label %_ZL11DaysInMonthii.exit124

bb.q:                                             ; preds = %bb.p
  %i.jn = urem i64 %spec.select.i.i118, 100
  %.not7.i.i120 = icmp eq i64 %i.jn, 0
  br i1 %.not7.i.i120, label %_ZL10IsLeapYearl.exit.i122, label %_ZL10IsLeapYearl.exit.thread.i121

_ZL10IsLeapYearl.exit.thread.i121:                ; preds = %bb.q
  %i.jo = add nsw i32 %i.jh, 1
  br label %_ZL11DaysInMonthii.exit124

_ZL10IsLeapYearl.exit.i122:                       ; preds = %bb.q
  %i.jp = urem i64 %spec.select.i.i118, 400
  %i.jq = icmp eq i64 %i.jp, 0
  %i.jr = zext i1 %i.jq to i32
  %spec.select.i123 = add nsw i32 %i.jr, %i.jh
  br label %_ZL11DaysInMonthii.exit124

_ZL11DaysInMonthii.exit124:                       ; preds = %bb.o, %bb.p, %_ZL10IsLeapYearl.exit.thread.i121, %_ZL10IsLeapYearl.exit.i122
  %i.js = phi i32 [ %i.jc, %bb.o ], [ %i.jb, %bb.p ], [ %i.jb, %_ZL10IsLeapYearl.exit.i122 ], [ %i.jb, %_ZL10IsLeapYearl.exit.thread.i121 ]
  %.0.i117 = phi i32 [ %i.jh, %bb.o ], [ %i.jh, %bb.p ], [ %spec.select.i123, %_ZL10IsLeapYearl.exit.i122 ], [ %i.jo, %_ZL10IsLeapYearl.exit.thread.i121 ]
  %i.jt = add nsw i32 %.0.i117, %i.iw             ; 4 uses
  %i.ju = icmp slt i32 %i.jt, 1
  br i1 %i.ju, label %.lr.ph269, label %..preheader_crit_edge, !llvm.loop !148

.preheader:                                       ; preds = %.preheader.outer, %_ZL11DaysInMonthii.exit140
  %i.jv = phi i32 [ %i.kv, %_ZL11DaysInMonthii.exit140 ], [ %.ph433, %.preheader.outer ] ; 5 uses
  %i.jw = phi i32 [ %i.ku, %_ZL11DaysInMonthii.exit140 ], [ %.ph435, %.preheader.outer ] ; 5 uses
  %i.jx = sext i32 %i.jv to i64
  %i.jy = getelementptr inbounds [2 x i8], ptr @_ZZL11DaysInMonthiiE11daysInMonth, i64 %i.jx
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !151
  %i.ka = sext i16 %i.jz to i32                   ; 8 uses
  %i.kb = icmp eq i32 %i.jv, 2
  br i1 %i.kb, label %bb.r, label %_ZL11DaysInMonthii.exit132.thread

bb.r:                                             ; preds = %.preheader
  %i.kc = sext i32 %.ph434 to i64                 ; 2 uses
  %i.kd = icmp slt i32 %.ph434, 0
  %i.ke = sub nsw i64 1, %i.kc
  %spec.select.i.i126 = select i1 %i.kd, i64 %i.ke, i64 %i.kc ; 5 uses
  %i.kf = and i64 %spec.select.i.i126, 3
  %.not.i.i127 = icmp eq i64 %i.kf, 0
  br i1 %.not.i.i127, label %bb.s, label %_ZL11DaysInMonthii.exit132.thread388

bb.s:                                             ; preds = %bb.r
  %i.kg = urem i64 %spec.select.i.i126, 100
  %.not7.i.i128 = icmp eq i64 %i.kg, 0
  br i1 %.not7.i.i128, label %_ZL10IsLeapYearl.exit.i130, label %_ZL10IsLeapYearl.exit.thread.i129

_ZL10IsLeapYearl.exit.thread.i129:                ; preds = %bb.s
  %i.kh = add nsw i32 %i.ka, 1
  br label %_ZL11DaysInMonthii.exit132

_ZL10IsLeapYearl.exit.i130:                       ; preds = %bb.s
  %i.ki = urem i64 %spec.select.i.i126, 400
  %i.kj = icmp eq i64 %i.ki, 0
  %i.kk = zext i1 %i.kj to i32
  %spec.select.i131 = add nsw i32 %i.kk, %i.ka
  br label %_ZL11DaysInMonthii.exit132

_ZL11DaysInMonthii.exit132:                       ; preds = %_ZL10IsLeapYearl.exit.thread.i129, %_ZL10IsLeapYearl.exit.i130
  %.0.i125 = phi i32 [ %i.kh, %_ZL10IsLeapYearl.exit.thread.i129 ], [ %spec.select.i131, %_ZL10IsLeapYearl.exit.i130 ]
  %i.kl = icmp sgt i32 %i.jw, %.0.i125
  br i1 %i.kl, label %bb.t, label %.loopexit

_ZL11DaysInMonthii.exit132.thread388:             ; preds = %bb.r
  %i.km = icmp sgt i32 %i.jw, %i.ka
  br i1 %i.km, label %_ZL11DaysInMonthii.exit140.thread, label %.loopexit

_ZL11DaysInMonthii.exit132.thread:                ; preds = %.preheader
  %i.kn = icmp sgt i32 %i.jw, %i.ka
  br i1 %i.kn, label %_ZL11DaysInMonthii.exit140, label %.loopexit

bb.t:                                             ; preds = %_ZL11DaysInMonthii.exit132
  %i.ko = urem i64 %spec.select.i.i126, 100
  %.not7.i.i136 = icmp eq i64 %i.ko, 0
  br i1 %.not7.i.i136, label %_ZL10IsLeapYearl.exit.i138, label %_ZL10IsLeapYearl.exit.thread.i137

_ZL10IsLeapYearl.exit.thread.i137:                ; preds = %bb.t
  %i.kp = add nsw i32 %i.ka, 1
  br label %_ZL11DaysInMonthii.exit140.thread

_ZL10IsLeapYearl.exit.i138:                       ; preds = %bb.t
  %i.kq = urem i64 %spec.select.i.i126, 400
  %i.kr = icmp eq i64 %i.kq, 0
  %i.ks = zext i1 %i.kr to i32
  %spec.select.i139 = add nsw i32 %i.ks, %i.ka
  br label %_ZL11DaysInMonthii.exit140.thread

_ZL11DaysInMonthii.exit140.thread:                ; preds = %_ZL11DaysInMonthii.exit132.thread388, %_ZL10IsLeapYearl.exit.thread.i137, %_ZL10IsLeapYearl.exit.i138
  %.0.i133.ph = phi i32 [ %i.kp, %_ZL10IsLeapYearl.exit.thread.i137 ], [ %spec.select.i139, %_ZL10IsLeapYearl.exit.i138 ], [ %i.ka, %_ZL11DaysInMonthii.exit132.thread388 ]
  %i.kt = sub nsw i32 %i.jw, %.0.i133.ph          ; 2 uses
  store i32 %i.kt, ptr %i.ir, align 4, !tbaa !36
  br label %.sink.split401

_ZL11DaysInMonthii.exit140:                       ; preds = %_ZL11DaysInMonthii.exit132.thread
  %i.ku = sub nsw i32 %i.jw, %i.ka                ; 3 uses
  store i32 %i.ku, ptr %i.ir, align 4, !tbaa !36
  %i.kv = add nsw i32 %i.jv, 1                    ; 2 uses
  store i32 %i.kv, ptr %i.ig, align 4, !tbaa !35
  %i.kw = icmp sgt i32 %i.jv, 11
  br i1 %i.kw, label %bb.u, label %.preheader, !llvm.loop !149

bb.u:                                             ; preds = %_ZL11DaysInMonthii.exit140
  %i.kx = add nsw i32 %.ph434, 1                  ; 2 uses
  store i32 %i.kx, ptr %0, align 4, !tbaa !29
  %i.ky = add nsw i32 %i.jv, -11
  br label %.sink.split401

.sink.split401:                                   ; preds = %bb.u, %_ZL11DaysInMonthii.exit140.thread
  %.sink405 = phi i32 [ 3, %_ZL11DaysInMonthii.exit140.thread ], [ %i.ky, %bb.u ] ; 2 uses
  %.ph403 = phi i32 [ %.ph434, %_ZL11DaysInMonthii.exit140.thread ], [ %i.kx, %bb.u ]
  %.ph404 = phi i32 [ %i.kt, %_ZL11DaysInMonthii.exit140.thread ], [ %i.ku, %bb.u ]
  store i32 %.sink405, ptr %i.ig, align 4, !tbaa !35
  br label %.preheader.outer, !llvm.loop !149

.preheader.outer:                                 ; preds = %.preheader.preheader, %.sink.split401
  %.ph433 = phi i32 [ %.ph, %.preheader.preheader ], [ %.sink405, %.sink.split401 ]
  %.ph434 = phi i32 [ %.ph431, %.preheader.preheader ], [ %.ph403, %.sink.split401 ] ; 4 uses
  %.ph435 = phi i32 [ %.ph432, %.preheader.preheader ], [ %.ph404, %.sink.split401 ]
  br label %.preheader

.loopexit:                                        ; preds = %_ZL11DaysInMonthii.exit132.thread, %_ZL11DaysInMonthii.exit132, %_ZL11DaysInMonthii.exit132.thread388, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8XMPUtils18ConvertToLocalTimeEP12XMP_DateTime(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !29
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35
  %.not15.i = icmp eq i32 %i.c, 0
  br i1 %.not15.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36
  %.not16.i = icmp eq i32 %i.e, 0
  br i1 %.not16.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.f, align 4, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31
  %.not17.i = icmp eq i32 %i.h, 0
  br i1 %.not17.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 4, !tbaa !39
  %.not18.i = icmp eq i32 %i.j, 0
  br i1 %.not18.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !40
  %.not19.i = icmp eq i32 %i.l, 0
  br i1 %.not19.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !38
  %.not20.i = icmp eq i32 %i.n, 0
  br i1 %.not20.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.o, align 1, !tbaa !32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 27 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !33
  %.not21.i = icmp eq i8 %i.q, 0
  br i1 %.not21.i, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !37
  %.not22.i = icmp eq i32 %i.s, 0
  br i1 %.not22.i, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 4, !tbaa !43
  %.not23.i = icmp eq i32 %i.u, 0
  br i1 %.not23.i, label %bb.m, label %.thread.i

.thread.i:                                        ; preds = %bb.l, %bb.k, %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 1, ptr %i.v, align 2, !tbaa !34
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 26
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !34
  %i.w = icmp eq i8 %.pre.i, 0
  br i1 %i.w, label %_ZL19VerifyDateTimeFlagsP12XMP_DateTime.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.x, align 1, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 26
  tail call void @_ZN8XMPUtils16ConvertToUTCTimeEP12XMP_DateTime(ptr noundef nonnull %0)
  store i8 0, ptr %i.y, align 2, !tbaa !34
  tail call void @_ZN8XMPUtils11SetTimeZoneEP12XMP_DateTime(ptr noundef nonnull %0)
  %i.z = load i8, ptr %i.p, align 1, !tbaa !33    ; 2 uses
  %i.aa = icmp sgt i8 %i.z, 0
  br i1 %i.aa, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ac = load <2 x i32>, ptr %i.ab, align 4, !tbaa !26
  %i.ad = load <2 x i32>, ptr %i.g, align 4, !tbaa !26
  %i.ae = add nsw <2 x i32> %i.ad, %i.ac
  store <2 x i32> %i.ae, ptr %i.g, align 4, !tbaa !26
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.af = icmp slt i8 %i.z, 0
  br i1 %i.af, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = load <2 x i32>, ptr %i.ag, align 4, !tbaa !26
  %i.ai = load <2 x i32>, ptr %i.g, align 4, !tbaa !26
  %i.aj = sub nsw <2 x i32> %i.ai, %i.ah
  store <2 x i32> %i.aj, ptr %i.g, align 4, !tbaa !26
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  tail call fastcc void @_ZL18AdjustTimeOverflowP12XMP_DateTime(ptr noundef nonnull %0)
  br label %_ZL19VerifyDateTimeFlagsP12XMP_DateTime.exit.thread

_ZL19VerifyDateTimeFlagsP12XMP_DateTime.exit.thread: ; preds = %bb.m, %bb.r
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 -1, 2) i32 @_ZN8XMPUtils15CompareDateTimeERK12XMP_DateTimeS2_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(40) %1) local_unnamed_addr #18 align 2 {
bb.a:
  %2 = alloca %struct.XMP_DateTime, align 4       ; 22 uses
  %3 = alloca %struct.XMP_DateTime, align 4       ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !27
  %i.a = load i32, ptr %2, align 4, !tbaa !29
  %.not.i = icmp eq i32 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %.not15.i = icmp eq i32 %i.c, 0
  %or.cond = select i1 %.not.i, i1 %.not15.i, i1 false
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %.not16.i = icmp eq i32 %i.e, 0
  %or.cond43 = select i1 %or.cond, i1 %.not16.i, i1 false
  br i1 %or.cond43, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 1, ptr %i.f, align 4, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31
  %.not17.i = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %.not18.i = icmp eq i32 %i.j, 0
  %or.cond45 = select i1 %.not17.i, i1 %.not18.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %.not19.i = icmp eq i32 %i.l, 0
  %or.cond47 = select i1 %or.cond45, i1 %.not19.i, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %.not20.i = icmp eq i32 %i.n, 0
  %or.cond49 = select i1 %or.cond47, i1 %.not20.i, i1 false
  br i1 %or.cond49, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 25
  store i8 1, ptr %i.o, align 1, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 27
  %i.q = load i8, ptr %i.p, align 1, !tbaa !33
  %.not21.i = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.s = load i32, ptr %i.r, align 4
  %.not22.i = icmp eq i32 %i.s, 0
  %or.cond51 = select i1 %.not21.i, i1 %.not22.i, i1 false
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load i32, ptr %i.t, align 4
  %.not23.i = icmp eq i32 %i.u, 0
  %or.cond53 = select i1 %or.cond51, i1 %.not23.i, i1 false
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 26 ; 2 uses
  br i1 %or.cond53, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  store i8 1, ptr %.phi.trans.insert.i, align 2, !tbaa !34
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !34 ; 2 uses
  %i.v = icmp eq i8 %.pre.i, 0
  br i1 %i.v, label %_ZL19VerifyDateTimeFlagsP12XMP_DateTime.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread.i
  %i.w = phi i8 [ %.pre.i, %bb.f ], [ 1, %.thread.i ]
end_hunk_0
