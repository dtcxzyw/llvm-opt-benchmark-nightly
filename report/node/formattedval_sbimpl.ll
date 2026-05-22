inline.NumInlined: 108
inline.NumDeleted: 28
begin_hunk_0_@_ZNK6icu_7831FormattedValueStringBuilderImpl8appendToERNS_10AppendableER10UErrorCode
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6icu_7831FormattedValueStringBuilderImpl8appendToERNS_10AppendableER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef nonnull returned align 8 dereferenceable(8) %1, ptr nonnull readnone align 4 captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noundef ptr @_ZNK6icu_7822FormattedStringBuilder5charsEv(ptr noundef nonnull align 8 dereferenceable(136) %i.a) #7
  %i.c = tail call noundef i32 @_ZNK6icu_7822FormattedStringBuilder6lengthEv(ptr noundef nonnull align 8 dereferenceable(136) %i.a) #7
  %i.d = load ptr, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef signext i8 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.b, i32 noundef %i.c) #7 ; 0 uses
  ret ptr %1
}

declare noundef ptr @_ZNK6icu_7822FormattedStringBuilder5charsEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7822FormattedStringBuilder6lengthEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7831FormattedValueStringBuilderImpl12nextPositionERNS_24ConstrainedFieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull readnone align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload = load i8, ptr %i.a, align 8
  %i.b = tail call noundef zeroext i1 @_ZNK6icu_7831FormattedValueStringBuilderImpl16nextPositionImplERNS_24ConstrainedFieldPositionENS_22FormattedStringBuilder5FieldER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i8 %.sroa.0.0.copyload, ptr nonnull align 4 poison)
  %i.c = zext i1 %i.b to i8
  ret i8 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK6icu_7831FormattedValueStringBuilderImpl16nextPositionImplERNS_24ConstrainedFieldPositionENS_22FormattedStringBuilder5FieldER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i8 %2, ptr nonnull readnone align 4 captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8                ; 4 uses
  %i.e = zext nneg i32 %i.b to i64
  %i.f = icmp slt i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  br i1 %i.f, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = icmp sgt i64 %i.d, 0
  br i1 %i.l, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.b, %bb.c
  %.0143230 = phi i32 [ %i.k, %bb.c ], [ -1, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr [16 x i8], ptr %i.h, i64 %i.d ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 -16
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp eq i32 %i.n, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.o, i64 -12
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.t, %i.v
  %i.x = zext i1 %i.w to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %.thread, %bb.a
  %.1144 = phi i32 [ -1, %bb.a ], [ %.0143230, %.thread ], [ %.0143230, %bb.d ], [ %i.k, %bb.c ]
  %.1137 = phi i8 [ 0, %bb.a ], [ 0, %.thread ], [ %i.x, %bb.d ], [ 0, %bb.c ]
  %.not301 = icmp eq i8 %2, 0                     ; 2 uses
  %.phi.trans.insert437 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.pre435.pre = load i32, ptr %.phi.trans.insert437, align 4 ; 3 uses
  br i1 %.not301, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = lshr i8 %2, 4
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = icmp eq i32 %.pre435.pre, %i.z
  br i1 %i.aa, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = and i8 %2, 15
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = icmp eq i32 %i.ac, %i.ae
  %i.ag = zext i1 %i.af to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.f, %bb.g
  %.0150 = phi i8 [ %i.ag, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 11 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i32, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 4 uses
  %i.an = load i32, ptr %i.am, align 4            ; 3 uses
  %.not360 = icmp sgt i32 %i.al, %i.an
  br i1 %.not360, label %.thread291, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge
  %i.ao = load i32, ptr %i.aj, align 8            ; 3 uses
  %i.ap = add nsw i32 %i.an, %i.ao
  %i.aq = add nsw i32 %i.al, %i.ao
  %i.ar = icmp eq i32 %.pre435.pre, 2
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i32, ptr %i.as, align 8
  %i.au = icmp eq i32 %i.at, 0
  %narrow = select i1 %i.ar, i1 %i.au, i1 false
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.ay = lshr i8 %2, 4
  %i.az = zext nneg i8 %i.ay to i32               ; 2 uses
  %i.ba = and i8 %2, 15
  %i.bb = zext nneg i8 %i.ba to i32               ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %.thread252
  %i.bc = phi i32 [ %i.ap, %.lr.ph ], [ %i.hb, %.thread252 ]
  %i.bd = phi i32 [ %i.ao, %.lr.ph ], [ %i.gz, %.thread252 ] ; 2 uses
  %.0128367 = phi i32 [ -1, %.lr.ph ], [ %.7135267, %.thread252 ] ; 14 uses
  %.2138366 = phi i8 [ %.1137, %.lr.ph ], [ %.6142266, %.thread252 ] ; 4 uses
  %.2145365 = phi i32 [ %.1144, %.lr.ph ], [ %.6149265, %.thread252 ] ; 9 uses
  %.1151364 = phi i8 [ %.0150, %.lr.ph ], [ %.2152264, %.thread252 ] ; 5 uses
  %.0153363 = phi i1 [ %narrow, %.lr.ph ], [ %.1154263, %.thread252 ] ; 4 uses
  %.0156362 = phi i32 [ %i.aq, %.lr.ph ], [ %i.gy, %.thread252 ] ; 10 uses
  %.sroa.0215.0361 = phi i8 [ 0, %.lr.ph ], [ %.sroa.0215.1261, %.thread252 ] ; 7 uses
  %i.be = icmp slt i32 %.0156362, %i.bc
  %i.bf = load i8, ptr %i.ai, align 8, !range !6
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = load ptr, ptr %i.av, align 8
  %i.bi = select i1 %i.bg, ptr %i.bh, ptr %i.av   ; 2 uses
  %i.bj = sext i32 %.0156362 to i64
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 %i.bj
  %i.bl = select i1 %i.be, ptr %i.bk, ptr @_ZN6icu_78L9kEndFieldE
  %i.bm = load i8, ptr %i.bl, align 1             ; 3 uses
  %.not302 = icmp eq i8 %.sroa.0215.0361, 0
  br i1 %.not302, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not303 = icmp eq i8 %.sroa.0215.0361, %i.bm
  br i1 %.not303, label %.thread252, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = sub nsw i32 %.0156362, %i.bd            ; 3 uses
  %i.bo = icmp ne i8 %.sroa.0215.0361, 38
  %.mask.i = and i8 %.sroa.0215.0361, -16
  %i.bp = icmp ne i8 %.mask.i, 48
  %i.bq = and i1 %i.bo, %i.bp
  br i1 %i.bq, label %bb.k, label %.thread231

bb.k:                                             ; preds = %bb.j
  %i.br = tail call noundef ptr @_ZN6icu_787unisets3getENS0_3KeyE(i32 noundef 1) #7
  %i.bs = load i8, ptr %i.ai, align 8, !range !6, !noundef !7
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = load ptr, ptr %i.aw, align 8
  %i.bv = select i1 %i.bt, ptr %i.bu, ptr %i.aw
  %i.bw = load i32, ptr %i.aj, align 8
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bv, i64 %i.bx
  %i.bz = tail call noundef i32 @_ZNK6icu_7810UnicodeSet8spanBackEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %i.br, ptr noundef %i.by, i32 noundef %i.bn, i32 noundef 1) #7 ; 2 uses
  %.not189 = icmp sgt i32 %i.bz, %.0128367
  br i1 %.not189, label %bb.m, label %bb.l

.thread231:                                       ; preds = %bb.j
  %.not189233 = icmp sgt i32 %i.bn, %.0128367
  br i1 %.not189233, label %.thread235, label %bb.l

bb.l:                                             ; preds = %.thread231, %bb.k
  %i.ca = add nsw i32 %.0156362, -1
  br label %.thread252

bb.m:                                             ; preds = %bb.k
  %i.cb = tail call noundef ptr @_ZN6icu_787unisets3getENS0_3KeyE(i32 noundef 1) #7
  %i.cc = load i8, ptr %i.ai, align 8, !range !6, !noundef !7
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = load ptr, ptr %i.aw, align 8
  %i.cf = select i1 %i.cd, ptr %i.ce, ptr %i.aw
  %i.cg = load i32, ptr %i.aj, align 8
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.cf, i64 %i.ch
  %i.cj = sext i32 %.0128367 to i64
  %i.ck = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = load i32, ptr %i.am, align 4
  %i.cm = sub nsw i32 %i.cl, %.0128367
  %i.cn = tail call noundef i32 @_ZNK6icu_7810UnicodeSet4spanEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %i.cb, ptr noundef %i.ck, i32 noundef %i.cm, i32 noundef 1) #7
  %i.co = add nsw i32 %i.cn, %.0128367
  br label %.thread235

.thread235:                                       ; preds = %.thread231, %bb.m
  %.0173234237 = phi i32 [ %i.bz, %bb.m ], [ %i.bn, %.thread231 ]
  %.0174 = phi i32 [ %i.co, %bb.m ], [ %.0128367, %.thread231 ]
  %i.cp = lshr i8 %.sroa.0215.0361, 4
  %i.cq = zext nneg i8 %i.cp to i32
  %i.cr = and i8 %.sroa.0215.0361, 15
  %i.cs = zext nneg i8 %i.cr to i32
  tail call void @_ZN6icu_7824ConstrainedFieldPosition8setStateEiiii(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %i.cq, i32 noundef %i.cs, i32 noundef %.0174, i32 noundef %.0173234237) #7
  br label %.thread287

bb.n:                                             ; preds = %bb.h
  %i.ct = icmp sgt i32 %.0156362, %i.bd
  %i.cu = trunc nuw i8 %.2138366 to i1
  %or.cond = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %or.cond, label %bb.o, label %.thread238

bb.o:                                             ; preds = %bb.n
  %i.cv = load i64, ptr %1, align 8
  %i.cw = add nsw i64 %i.cv, -1                   ; 2 uses
  %i.cx = load ptr, ptr %i.ax, align 8
  %i.cy = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = sub nsw i32 %.0156362, %i.da            ; 2 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds i8, ptr %i.bi, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1             ; 2 uses
  %i.df = icmp eq i8 %i.de, 49
  br i1 %i.df, label %bb.p, label %.thread238

bb.p:                                             ; preds = %bb.o
  %i.dg = tail call noundef signext i8 @_ZNK6icu_7824ConstrainedFieldPosition12matchesFieldEii(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef 3, i32 noundef 1) #7
  %.not180 = icmp eq i8 %i.dg, 0
  br i1 %.not180, label %.thread238, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dh = load i32, ptr %i.aj, align 8
  %i.di = load ptr, ptr %i.ax, align 8
  %i.dj = getelementptr inbounds [16 x i8], ptr %i.di, i64 %i.cw
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.dl = load i32, ptr %i.dk, align 4            ; 2 uses
  %i.dm = add i32 %i.dh, %i.dl
  %i.dn = sub i32 %.0156362, %i.dm                ; 2 uses
  %i.do = add nsw i32 %i.dn, %i.dl
  tail call void @_ZN6icu_7824ConstrainedFieldPosition8setStateEiiii(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef 3, i32 noundef 1, i32 noundef %i.dn, i32 noundef %i.do) #7
  br label %.thread287

.thread238:                                       ; preds = %bb.o, %bb.p, %bb.n
  %.sroa.0204.1 = phi i8 [ %i.bm, %bb.n ], [ %i.de, %bb.o ], [ %i.bm, %bb.p ]
  %.4160 = phi i32 [ %.0156362, %bb.n ], [ %i.db, %bb.o ], [ %.0156362, %bb.p ] ; 20 uses
  %.5141 = phi i8 [ %.2138366, %bb.n ], [ 1, %bb.o ], [ 0, %bb.p ]
  %.sroa.0204.1.fr = freeze i8 %.sroa.0204.1      ; 9 uses
  %i.dp = tail call noundef signext i8 @_ZNK6icu_7824ConstrainedFieldPosition12matchesFieldEii(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef 2, i32 noundef 0) #7
  %.not181 = icmp eq i8 %i.dp, 0
  br i1 %.not181, label %bb.v, label %bb.r

bb.r:                                             ; preds = %.thread238
  %i.dq = load i32, ptr %i.aj, align 8            ; 5 uses
  %i.dr = icmp sle i32 %.4160, %i.dq
  %or.cond5 = select i1 %i.dr, i1 true, i1 %.0153363
  %i.ds = trunc nuw i8 %.1151364 to i1
  %or.cond7 = select i1 %or.cond5, i1 true, i1 %i.ds
  br i1 %or.cond7, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dt = load i8, ptr %i.ai, align 8, !range !6, !noundef !7
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = load ptr, ptr %i.av, align 8
  %i.dw = select i1 %i.du, ptr %i.dv, ptr %i.av   ; 2 uses
  %i.dx = sext i32 %.4160 to i64
  %i.dy = getelementptr i8, ptr %i.dw, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.dy, i64 -1
  %.sroa.041.0.copyload = load i8, ptr %i.dz, align 1
  switch i8 %.sroa.041.0.copyload, label %bb.v [
    i8 38, label %bb.t
    i8 32, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  switch i8 %.sroa.0204.1.fr, label %.lr.ph370.preheader [
    i8 38, label %bb.v
    i8 32, label %bb.v
  ]

.lr.ph370.preheader:                              ; preds = %bb.t
  %i.ea = sext i32 %.4160 to i64
  %i.eb = sext i32 %i.dq to i64
  %i.ec = add i32 %i.dq, -1
  br label %.lr.ph370

.lr.ph370:                                        ; preds = %.lr.ph370.preheader, %bb.u
  %indvars.iv.in = phi i64 [ %i.ea, %.lr.ph370.preheader ], [ %indvars.iv, %bb.u ]
  %indvars.iv = add nsw i64 %indvars.iv.in, -1    ; 4 uses
  %i.ed = getelementptr inbounds i8, ptr %i.dw, i64 %indvars.iv
  %.sroa.0.0.copyload = load i8, ptr %i.ed, align 1
  switch i8 %.sroa.0.0.copyload, label %.critedge.split.loop.exit498 [
    i8 38, label %bb.u
    i8 32, label %bb.u
  ]

bb.u:                                             ; preds = %.lr.ph370, %.lr.ph370
  %.not182.not = icmp sgt i64 %indvars.iv, %i.eb
  br i1 %.not182.not, label %.lr.ph370, label %.critedge, !llvm.loop !8

.critedge.split.loop.exit498:                     ; preds = %.lr.ph370
  %i.ee = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.u, %.critedge.split.loop.exit498
  %.0166.lcssa.ph = phi i32 [ %i.ee, %.critedge.split.loop.exit498 ], [ %i.ec, %bb.u ]
  %reass.sub = sub i32 %.0166.lcssa.ph, %i.dq
  %i.ef = add i32 %reass.sub, 1
  %i.eg = sub nsw i32 %.4160, %i.dq
  tail call void @_ZN6icu_7824ConstrainedFieldPosition8setStateEiiii(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef 2, i32 noundef 0, i32 noundef %i.ef, i32 noundef %i.eg) #7
  br label %.thread287

bb.v:                                             ; preds = %bb.t, %bb.t, %bb.s, %bb.r, %.thread238
  br i1 %.not301, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eh = tail call noundef signext i8 @_ZNK6icu_7824ConstrainedFieldPosition12matchesFieldEii(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %i.az, i32 noundef %i.bb) #7
  %.not183 = icmp eq i8 %i.eh, 0
  br i1 %.not183, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ei = load i32, ptr %i.aj, align 8            ; 5 uses
  %i.ej = icmp sle i32 %.4160, %i.ei
  %i.ek = trunc nuw i8 %.1151364 to i1
  %or.cond9 = select i1 %i.ej, i1 true, i1 %i.ek
  br i1 %or.cond9, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.el = load i8, ptr %i.ai, align 8, !range !6, !noundef !7
  %i.em = trunc nuw i8 %i.el to i1
  %i.en = load ptr, ptr %i.av, align 8
  %i.eo = select i1 %i.em, ptr %i.en, ptr %i.av   ; 2 uses
  %i.ep = sext i32 %.4160 to i64
  %i.eq = getelementptr i8, ptr %i.eo, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 -1
  %i.es = load i8, ptr %i.er, align 1             ; 2 uses
  %.mask.i193 = and i8 %i.es, -16
  %i.et = icmp eq i8 %.mask.i193, 32
  %i.eu = icmp eq i8 %i.es, 1
  %spec.select.i194 = or i1 %i.eu, %i.et
  br i1 %spec.select.i194, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.mask.i195 = and i8 %.sroa.0204.1.fr, -16
  %i.ev = icmp eq i8 %.mask.i195, 32
  %i.ew = icmp eq i8 %.sroa.0204.1.fr, 1
  %spec.select.i196 = or i1 %i.ew, %i.ev
  br i1 %spec.select.i196, label %bb.ab, label %.lr.ph375.preheader

.lr.ph375.preheader:                              ; preds = %bb.z
  %i.ex = sext i32 %.4160 to i64
  %i.ey = sext i32 %i.ei to i64
  %i.ez = add i32 %i.ei, -1
  br label %.lr.ph375

.lr.ph375:                                        ; preds = %.lr.ph375.preheader, %bb.aa
  %indvars.iv430.in = phi i64 [ %i.ex, %.lr.ph375.preheader ], [ %indvars.iv430, %bb.aa ]
  %indvars.iv430 = add nsw i64 %indvars.iv430.in, -1 ; 4 uses
  %i.fa = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv430
  %i.fb = load i8, ptr %i.fa, align 1             ; 2 uses
  %.mask.i197 = and i8 %i.fb, -16
  %i.fc = icmp eq i8 %.mask.i197, 32
  %i.fd = icmp eq i8 %i.fb, 1
  %spec.select.i198 = or i1 %i.fd, %i.fc
  br i1 %spec.select.i198, label %bb.aa, label %.critedge11.split.loop.exit

bb.aa:                                            ; preds = %.lr.ph375
  %.not184.not = icmp sgt i64 %indvars.iv430, %i.ey
  br i1 %.not184.not, label %.lr.ph375, label %.critedge11, !llvm.loop !10

.critedge11.split.loop.exit:                      ; preds = %.lr.ph375
  %i.fe = trunc nsw i64 %indvars.iv430 to i32
  br label %.critedge11

.critedge11:                                      ; preds = %bb.aa, %.critedge11.split.loop.exit
  %.0155.lcssa.ph = phi i32 [ %i.fe, %.critedge11.split.loop.exit ], [ %i.ez, %bb.aa ]
  %reass.sub379 = sub i32 %.0155.lcssa.ph, %i.ei
  %i.ff = add i32 %reass.sub379, 1
  %i.fg = sub nsw i32 %.4160, %i.ei
  tail call void @_ZN6icu_7824ConstrainedFieldPosition8setStateEiiii(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %i.az, i32 noundef %i.bb, i32 noundef %i.ff, i32 noundef %i.fg) #7
  br label %.thread287

bb.ab:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.fh = trunc nuw i8 %.5141 to i1
  br i1 %i.fh, label %.critedge13, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fi = icmp eq i8 %.sroa.0204.1.fr, 49         ; 2 uses
  br i1 %i.fi, label %.critedge15, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fj = load i32, ptr %i.aj, align 8
  %i.fk = sub nsw i32 %.4160, %i.fj
  %i.fl = icmp eq i32 %i.fk, %.2145365
  br i1 %i.fl, label %.critedge15, label %.critedge13

.critedge15:                                      ; preds = %bb.ac, %bb.ad
  %i.fm = load i64, ptr %1, align 8               ; 3 uses
  %i.fn = load i32, ptr %i.a, align 8
  %i.fo = sext i32 %i.fn to i64
  %.not185 = icmp slt i64 %i.fm, %i.fo
  br i1 %.not185, label %bb.ae, label %.critedge15..thread291.loopexit_crit_edge

.critedge15..thread291.loopexit_crit_edge:        ; preds = %.critedge15
  %.pre436.pre = load i32, ptr %i.am, align 4
  br label %.thread291.loopexit

bb.ae:                                            ; preds = %.critedge15
  %i.fp = load ptr, ptr %i.ax, align 8
  %i.fq = getelementptr inbounds [16 x i8], ptr %i.fp, i64 %i.fm ; 3 uses
  %i.fr = load i32, ptr %i.fq, align 4            ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.ft = load i32, ptr %i.fs, align 4            ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %i.fv = load i32, ptr %i.fu, align 4            ; 4 uses
  %i.fw = add nsw i64 %i.fm, 1                    ; 3 uses
  tail call void @_ZN6icu_7824ConstrainedFieldPosition24setInt64IterationContextEl(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %i.fw) #7
  %i.fx = load i32, ptr %i.a, align 8
  %i.fy = sext i32 %i.fx to i64
  %i.fz = icmp slt i64 %i.fw, %i.fy
  br i1 %i.fz, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ga = load ptr, ptr %i.ax, align 8
  %i.gb = getelementptr inbounds [16 x i8], ptr %i.ga, i64 %i.fw
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load i32, ptr %i.gc, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.3146 = phi i32 [ %i.gd, %bb.af ], [ %.2145365, %bb.ae ] ; 3 uses
  %i.ge = icmp eq i32 %i.fv, 0
  br i1 %i.ge, label %bb.ap, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gf = tail call noundef signext i8 @_ZNK6icu_7824ConstrainedFieldPosition12matchesFieldEii(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %i.fr, i32 noundef %i.ft) #7
  %.not186 = icmp eq i8 %i.gf, 0
  br i1 %.not186, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gg = load i32, ptr %i.aj, align 8
  %i.gh = sub nsw i32 %.4160, %i.gg               ; 2 uses
  %i.gi = add nsw i32 %i.gh, %i.fv
  tail call void @_ZN6icu_7824ConstrainedFieldPosition8setStateEiiii(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %i.fr, i32 noundef %i.ft, i32 noundef %i.gh, i32 noundef %i.gi) #7
  br label %.thread287

bb.aj:                                            ; preds = %bb.ah
  br i1 %i.fi, label %bb.ak, label %.thread252

bb.ak:                                            ; preds = %bb.aj
  %i.gj = tail call noundef signext i8 @_ZNK6icu_7824ConstrainedFieldPosition12matchesFieldEii(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef 3, i32 noundef 1) #7
  %.not187 = icmp eq i8 %i.gj, 0
  br i1 %.not187, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gk = load i32, ptr %i.aj, align 8
  %i.gl = sub nsw i32 %.4160, %i.gk               ; 2 uses
  %i.gm = add nsw i32 %i.gl, %i.fv
  tail call void @_ZN6icu_7824ConstrainedFieldPosition8setStateEiiii(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef 3, i32 noundef 1, i32 noundef %i.gl, i32 noundef %i.gm) #7
  br label %.thread287

bb.am:                                            ; preds = %bb.ak
  %i.gn = add i32 %.4160, -1
  %i.go = add i32 %i.gn, %i.fv
  br label %.thread252

.critedge13:                                      ; preds = %bb.ab, %bb.ad
  %i.gp = icmp ult i8 %.sroa.0204.1.fr, 16
  br i1 %i.gp, label %.thread252, label %switch.early.test

switch.early.test:                                ; preds = %.critedge13
  switch i8 %.sroa.0204.1.fr, label %bb.an [
    i8 -1, label %.thread252
    i8 32, label %.thread252
  ]

bb.an:                                            ; preds = %switch.early.test
  %i.gq = lshr i8 %.sroa.0204.1.fr, 4
  %i.gr = zext nneg i8 %i.gq to i32
  %i.gs = and i8 %.sroa.0204.1.fr, 15
  %i.gt = zext nneg i8 %i.gs to i32
  %i.gu = tail call noundef signext i8 @_ZNK6icu_7824ConstrainedFieldPosition12matchesFieldEii(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %i.gr, i32 noundef %i.gt) #7
  %.not188 = icmp eq i8 %i.gu, 0
  br i1 %.not188, label %.thread252, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gv = load i32, ptr %i.aj, align 8
  %i.gw = sub nsw i32 %.4160, %i.gv
  br label %.thread252

bb.ap:                                            ; preds = %bb.ag
  %i.gx = add nsw i32 %.4160, -1
  br label %.thread252

.thread252:                                       ; preds = %switch.early.test, %switch.early.test, %.critedge13, %bb.aj, %bb.am, %bb.ao, %bb.an, %bb.l, %bb.i, %bb.ap
  %.7135267 = phi i32 [ %.0128367, %bb.ap ], [ %.0128367, %bb.am ], [ %.0128367, %bb.aj ], [ %.0128367, %bb.an ], [ %i.gw, %bb.ao ], [ -1, %bb.l ], [ %.0128367, %bb.i ], [ %.0128367, %switch.early.test ], [ %.0128367, %.critedge13 ], [ %.0128367, %switch.early.test ]
  %.6142266 = phi i8 [ 0, %bb.ap ], [ 0, %bb.am ], [ 0, %bb.aj ], [ 0, %bb.an ], [ 0, %bb.ao ], [ %.2138366, %bb.l ], [ %.2138366, %bb.i ], [ 0, %switch.early.test ], [ 0, %.critedge13 ], [ 0, %switch.early.test ]
  %.6149265 = phi i32 [ %.3146, %bb.ap ], [ %.3146, %bb.am ], [ %.3146, %bb.aj ], [ %.2145365, %bb.an ], [ %.2145365, %bb.ao ], [ %.2145365, %bb.l ], [ %.2145365, %bb.i ], [ %.2145365, %switch.early.test ], [ %.2145365, %.critedge13 ], [ %.2145365, %switch.early.test ]
  %.2152264 = phi i8 [ %.1151364, %bb.ap ], [ 0, %bb.am ], [ 0, %bb.aj ], [ 0, %bb.an ], [ 0, %bb.ao ], [ %.1151364, %bb.l ], [ %.1151364, %bb.i ], [ 0, %switch.early.test ], [ 0, %.critedge13 ], [ 0, %switch.early.test ]
  %.1154263 = phi i1 [ %.0153363, %bb.ap ], [ false, %bb.am ], [ false, %bb.aj ], [ false, %bb.an ], [ false, %bb.ao ], [ %.0153363, %bb.l ], [ %.0153363, %bb.i ], [ false, %switch.early.test ], [ false, %.critedge13 ], [ false, %switch.early.test ]
  %.9165262 = phi i32 [ %i.gx, %bb.ap ], [ %i.go, %bb.am ], [ %.4160, %bb.aj ], [ %.4160, %bb.an ], [ %.4160, %bb.ao ], [ %i.ca, %bb.l ], [ %.0156362, %bb.i ], [ %.4160, %switch.early.test ], [ %.4160, %.critedge13 ], [ %.4160, %switch.early.test ] ; 2 uses
  %.sroa.0215.1261 = phi i8 [ 0, %bb.ap ], [ 0, %bb.am ], [ 0, %bb.aj ], [ 0, %bb.an ], [ %.sroa.0204.1.fr, %bb.ao ], [ 0, %bb.l ], [ %.sroa.0215.0361, %bb.i ], [ 0, %switch.early.test ], [ 0, %.critedge13 ], [ 0, %switch.early.test ]
  %i.gy = add nsw i32 %.9165262, 1
  %i.gz = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.ha = load i32, ptr %i.am, align 4            ; 2 uses
  %i.hb = add nsw i32 %i.ha, %i.gz                ; 2 uses
  %.not.not = icmp slt i32 %.9165262, %i.hb
  br i1 %.not.not, label %bb.h, label %.thread291.loopexit, !llvm.loop !11

.thread291.loopexit:                              ; preds = %.thread252, %.critedge15..thread291.loopexit_crit_edge
  %.pre436 = phi i32 [ %.pre436.pre, %.critedge15..thread291.loopexit_crit_edge ], [ %i.ha, %.thread252 ]
  %.pre434 = load i32, ptr %i.ah, align 4
  br label %.thread291

.thread291:                                       ; preds = %.thread291.loopexit, %._crit_edge
  %i.hc = phi i32 [ %.pre436, %.thread291.loopexit ], [ %i.an, %._crit_edge ] ; 2 uses
  %i.hd = phi i32 [ %.pre434, %.thread291.loopexit ], [ %.pre435.pre, %._crit_edge ]
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hf = load i32, ptr %i.he, align 8
  tail call void @_ZN6icu_7824ConstrainedFieldPosition8setStateEiiii(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %i.hd, i32 noundef %i.hf, i32 noundef %i.hc, i32 noundef %i.hc) #7
  br label %.thread287

.thread287:                                       ; preds = %bb.al, %bb.ai, %bb.q, %.thread235, %.critedge, %.critedge11, %.thread291
  %cond290 = phi i1 [ false, %.thread291 ], [ true, %bb.q ], [ true, %.critedge11 ], [ true, %.critedge ], [ true, %.thread235 ], [ true, %bb.ai ], [ true, %bb.al ]
  ret i1 %cond290
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7831FormattedValueStringBuilderImpl17nextFieldPositionERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(20) %1, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::ConstrainedFieldPosition", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %i.b, 13
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN6icu_7824ConstrainedFieldPositionC1Ev(ptr noundef nonnull align 8 dereferenceable(25) %3) #7
  call void @_ZN6icu_7824ConstrainedFieldPosition14constrainFieldEii(ptr noundef nonnull align 8 dereferenceable(25) %3, i32 noundef 2, i32 noundef %i.b) #7
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8
  call void @_ZN6icu_7824ConstrainedFieldPosition8setStateEiiii(ptr noundef nonnull align 8 dereferenceable(25) %3, i32 noundef 2, i32 noundef %i.b, i32 noundef %i.e, i32 noundef %i.g) #7
  %i.h = call noundef zeroext i1 @_ZNK6icu_7831FormattedValueStringBuilderImpl16nextPositionImplERNS_24ConstrainedFieldPositionENS_22FormattedStringBuilder5FieldER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef nonnull align 8 dereferenceable(25) %3, i8 0, ptr nonnull align 4 poison)
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.j = load i32, ptr %i.i, align 4
  store i32 %i.j, ptr %i.d, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load i32, ptr %i.k, align 8
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %i.b, 1
  %i.n = load i32, ptr %i.f, align 8
  %i.o = icmp eq i32 %i.n, 0
  %or.cond31 = select i1 %i.m, i1 %i.o, i1 false
  br i1 %or.cond31, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8              ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.u = add i32 %i.s, %i.q                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i8, ptr %i.v, align 8, !range !6, !noundef !7
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = select i1 %i.x, ptr %i.z, ptr %i.y
  %i.ab = sext i32 %i.q to i64
  %i.ac = sext i32 %i.u to i64
  %i.ad = add i32 %i.q, 1
  %smax = call i32 @llvm.smax.i32(i32 %i.u, i32 %i.ad)
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ %i.ab, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.02732 = phi i1 [ false, %.lr.ph ], [ %.128, %.critedge ]
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %indvars.iv
  %.sroa.0.0.copyload = load i8, ptr %i.ae, align 1
  switch i8 %.sroa.0.0.copyload, label %bb.i [
    i8 38, label %.critedge
    i8 32, label %.critedge
    i8 34, label %.critedge
  ]

bb.i:                                             ; preds = %bb.h
  br i1 %.02732, label %._crit_edge.loopexit.split.loop.exit, label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.h, %bb.h, %bb.i
  %.128 = phi i1 [ false, %bb.i ], [ true, %bb.h ], [ true, %bb.h ], [ true, %bb.h ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.af = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.af, label %bb.h, label %._crit_edge, !llvm.loop !12

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.i
  %i.ag = trunc nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.critedge, %._crit_edge.loopexit.split.loop.exit, %bb.g
  %.026.lcssa = phi i32 [ %i.q, %bb.g ], [ %i.ag, %._crit_edge.loopexit.split.loop.exit ], [ %smax, %.critedge ] ; 2 uses
  %i.ah = sub nsw i32 %.026.lcssa, %i.q
  store i32 %i.ah, ptr %i.d, align 4
  %i.ai = load i32, ptr %i.p, align 8
  %i.aj = sub nsw i32 %.026.lcssa, %i.ai
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %._crit_edge
  %.sink = phi i32 [ %i.aj, %._crit_edge ], [ %i.l, %bb.e ]
  %.0.ph = phi i8 [ 0, %._crit_edge ], [ 1, %bb.e ]
  store i32 %.sink, ptr %i.f, align 8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.f
  %.0 = phi i8 [ 0, %bb.f ], [ %.0.ph, %.sink.split ]
  call void @_ZN6icu_7824ConstrainedFieldPositionD1Ev(ptr noundef nonnull align 8 dereferenceable(25) %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j, %bb.c
  %.1 = phi i8 [ %.0, %bb.j ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i8 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN6icu_7824ConstrainedFieldPositionC1Ev(ptr noundef nonnull align 8 dereferenceable(25)) unnamed_addr #1

declare void @_ZN6icu_7824ConstrainedFieldPosition14constrainFieldEii(ptr noundef nonnull align 8 dereferenceable(25), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN6icu_7824ConstrainedFieldPosition8setStateEiiii(ptr noundef nonnull align 8 dereferenceable(25), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN6icu_7831FormattedValueStringBuilderImpl12isIntOrGroupENS_22FormattedStringBuilder5FieldE(i8 %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i8 %0, 32
  %i.b = icmp eq i8 %0, 38
  %spec.select = or i1 %i.a, %i.b
  ret i1 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare void @_ZN6icu_7824ConstrainedFieldPositionD1Ev(ptr noundef nonnull align 8 dereferenceable(25)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7831FormattedValueStringBuilderImpl20getAllFieldPositionsERNS_28FieldPositionIteratorHandlerER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull readnone align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::ConstrainedFieldPosition", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN6icu_7824ConstrainedFieldPositionC1Ev(ptr noundef nonnull align 8 dereferenceable(25) %3) #7
  %i.a = call noundef zeroext i1 @_ZNK6icu_7831FormattedValueStringBuilderImpl16nextPositionImplERNS_24ConstrainedFieldPositionENS_22FormattedStringBuilder5FieldER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef nonnull align 8 dereferenceable(25) %3, i8 0, ptr nonnull align 4 poison)
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.e = load i32, ptr %i.b, align 8
  %i.f = load i32, ptr %i.c, align 4
  %i.g = load i32, ptr %i.d, align 8
  %i.h = load ptr, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.e, i32 noundef %i.f, i32 noundef %i.g) #7
  %i.k = call noundef zeroext i1 @_ZNK6icu_7831FormattedValueStringBuilderImpl16nextPositionImplERNS_24ConstrainedFieldPositionENS_22FormattedStringBuilder5FieldER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef nonnull align 8 dereferenceable(25) %3, i8 0, ptr nonnull align 4 poison)
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @_ZN6icu_7824ConstrainedFieldPositionD1Ev(ptr noundef nonnull align 8 dereferenceable(25) %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7831FormattedValueStringBuilderImpl11resetStringEv(ptr noundef nonnull align 8 dereferenceable(300) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN6icu_7822FormattedStringBuilder5clearEv(ptr noundef nonnull align 8 dereferenceable(136) %i.a) #7 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 0, ptr %i.c, align 8
  ret void
}

declare noundef nonnull align 8 dereferenceable(136) ptr @_ZN6icu_7822FormattedStringBuilder5clearEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN6icu_7831FormattedValueStringBuilderImpl11isTrimmableENS_22FormattedStringBuilder5FieldE(i8 %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ne i8 %0, 38
  %.mask = and i8 %0, -16
  %i.b = icmp ne i8 %.mask, 48
  %i.c = and i1 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_7831FormattedValueStringBuilderImpl8trimBackEi(ptr noundef nonnull align 8 dereferenceable(300) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_787unisets3getENS0_3KeyE(i32 noundef 1) #7
end_hunk_0
