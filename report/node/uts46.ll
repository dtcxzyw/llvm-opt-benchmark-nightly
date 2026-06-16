inline.NumInlined: 176
inline.NumDeleted: 52
begin_hunk_0_@_ZNK6icu_785UTS4614checkLabelBiDiEPKDsiRNS_8IDNAInfoE:bb.a
  br i1 %.not65, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 1, ptr %i.bk, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_785UTS4617isLabelOkContextJEPKDsi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph106, label %.thread98

.lr.ph106:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph106, %.thread95
  %indvars.iv = phi i64 [ 0, %.lr.ph106 ], [ %indvars.iv.next, %.thread95 ] ; 8 uses
  %indvars119 = trunc i64 %indvars.iv to i32
  %i.c = getelementptr [2 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.d = load i16, ptr %i.c, align 2
  switch i16 %i.d, label %.thread95 [
    i16 8204, label %bb.c
    i16 8205, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %indvars.iv, 0
  br i1 %i.e, label %.thread98, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %indvars119, -1
  %i.g = getelementptr [2 x i8], ptr %1, i64 %indvars.iv
  %i.h = getelementptr i8, ptr %i.g, i64 -2
  %i.i = load i16, ptr %i.h, align 2
  %i.j = zext i16 %i.i to i32                     ; 3 uses
  %i.k = and i32 %i.j, 64512
  %i.l = icmp eq i32 %i.k, 56320
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i64 %indvars.iv, -2              ; 2 uses
  %i.n = getelementptr inbounds [2 x i8], ptr %1, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2
  %i.p = zext i16 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 10
  %i.r = add nuw nsw i32 %i.j, -56613888
  %i.s = add nsw i32 %i.r, %i.q
  %i.t = trunc nsw i64 %i.m to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.066 = phi i32 [ %i.s, %bb.e ], [ %i.j, %bb.d ] ; 2 uses
  %.060 = phi i32 [ %i.t, %bb.e ], [ %i.f, %bb.d ]
  %i.u = load ptr, ptr %i.b, align 8, !nonnull !14, !align !15 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i8 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i32 noundef %.066) #11
  %i.z = icmp eq i8 %i.y, 9
  br i1 %i.z, label %.thread95, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.aa = tail call i32 @ubidi_getJoiningType_78(i32 noundef %.066) #11 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 5
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.161103 = phi i32 [ %.363, %bb.i ], [ %.060, %.preheader ] ; 3 uses
  %i.ac = icmp eq i32 %.161103, 0
  br i1 %i.ac, label %.thread98, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ad = add nsw i32 %.161103, -1                ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = zext i16 %i.ag to i32                   ; 3 uses
  %i.ai = and i32 %i.ah, 64512
  %i.aj = icmp eq i32 %i.ai, 56320
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = add nsw i32 %.161103, -2                ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [2 x i8], ptr %1, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = zext i16 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 10
  %i.aq = add nuw nsw i32 %i.ah, -56613888
  %i.ar = add nsw i32 %i.aq, %i.ap
  br label %bb.i

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %.lcssa = phi i32 [ %i.aa, %.preheader ], [ %i.at, %bb.i ]
  %i.as = and i32 %.lcssa, -2
  %or.cond = icmp eq i32 %i.as, 2
  br i1 %or.cond, label %bb.j, label %.thread98

bb.i:                                             ; preds = %bb.h, %bb.g
  %.369 = phi i32 [ %i.ah, %bb.g ], [ %i.ar, %bb.h ]
  %.363 = phi i32 [ %i.ad, %bb.g ], [ %i.ak, %bb.h ]
  %i.at = tail call i32 @ubidi_getJoiningType_78(i32 noundef %.369) #11 ; 2 uses
  %i.au = icmp eq i32 %i.at, 5
  br i1 %i.au, label %.lr.ph, label %._crit_edge

bb.j:                                             ; preds = %._crit_edge
  %i.av = trunc i64 %indvars.iv to i32
  %i.aw = add i32 %i.av, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  %.464 = phi i32 [ %i.aw, %bb.j ], [ %.565, %bb.n ] ; 4 uses
  %i.ax = icmp eq i32 %.464, %2
  br i1 %i.ax, label %.thread98, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = add nsw i32 %.464, 1                    ; 2 uses
  %i.az = sext i32 %.464 to i64
  %i.ba = getelementptr inbounds [2 x i8], ptr %1, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = zext i16 %i.bb to i32                   ; 3 uses
  %i.bd = and i32 %i.bc, 64512
  %i.be = icmp eq i32 %i.bd, 55296
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bf = shl nuw nsw i32 %i.bc, 10
  %i.bg = add nsw i32 %.464, 2
  %i.bh = sext i32 %i.ay to i64
  %i.bi = getelementptr inbounds [2 x i8], ptr %1, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = zext i16 %i.bj to i32
  %i.bl = add nsw i32 %i.bf, -56613888
  %i.bm = add nuw nsw i32 %i.bl, %i.bk
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.470 = phi i32 [ %i.bm, %bb.m ], [ %i.bc, %bb.l ]
  %.565 = phi i32 [ %i.bg, %bb.m ], [ %i.ay, %bb.l ]
  %i.bn = tail call i32 @ubidi_getJoiningType_78(i32 noundef %.470) #11
  switch i32 %i.bn, label %.thread98 [
    i32 5, label %bb.k
    i32 4, label %.thread95
    i32 2, label %.thread95
  ]

bb.o:                                             ; preds = %bb.b
  %i.bo = icmp eq i64 %indvars.iv, 0
  br i1 %i.bo, label %.thread98, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr i8, ptr %i.c, i64 -2
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = zext i16 %i.bq to i32                   ; 3 uses
  %i.bs = and i32 %i.br, 64512
  %i.bt = icmp eq i32 %i.bs, 56320
  br i1 %i.bt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr i8, ptr %i.c, i64 -4
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = zext i16 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 10
  %i.by = add nuw nsw i32 %i.br, -56613888
  %i.bz = add nsw i32 %i.by, %i.bx
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi i32 [ %i.bz, %bb.q ], [ %i.br, %bb.p ]
  %i.ca = load ptr, ptr %i.b, align 8, !nonnull !14, !align !15 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call noundef zeroext i8 %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, i32 noundef %.0) #11
  %.not = icmp eq i8 %i.ce, 9
  br i1 %.not, label %.thread95, label %.thread98

.thread95:                                        ; preds = %bb.n, %bb.n, %bb.f, %bb.b, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread98, label %bb.b, !llvm.loop !23

.thread98:                                        ; preds = %.thread95, %bb.c, %bb.r, %bb.o, %._crit_edge, %.lr.ph, %bb.n, %bb.k, %bb.a
  %i.cf = phi i8 [ 1, %bb.a ], [ 0, %.lr.ph ], [ 0, %bb.n ], [ 0, %bb.k ], [ 0, %bb.r ], [ 0, %bb.c ], [ 1, %.thread95 ], [ 0, %._crit_edge ], [ 0, %bb.o ]
  ret i8 %i.cf
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_785UTS4618checkLabelContextOEPKDsiRNS_8IDNAInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(11) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %4 = add nsw i32 %2, -1                         ; 3 uses
  %.not109 = icmp slt i32 %2, 1
  br i1 %.not109, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 12 uses
  %i.e = zext nneg i32 %4 to i64                  ; 2 uses
  %i.f = zext nneg i32 %2 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.ai, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.ai
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ai ] ; 8 uses
  %.0112 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.ai ] ; 13 uses
  %i.g = getelementptr [2 x i8], ptr %1, i64 %indvars.iv ; 6 uses
  %i.h = load i16, ptr %i.g, align 2              ; 8 uses
  %i.i = icmp ult i16 %i.h, 183
  br i1 %i.i, label %bb.ai, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ult i16 %i.h, 1786
  br i1 %i.j, label %bb.d, label %bb.aa

bb.d:                                             ; preds = %bb.c
  switch i16 %i.h, label %bb.n [
    i16 183, label %bb.e
    i16 885, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %.not102 = icmp eq i64 %indvars.iv, 0
  br i1 %.not102, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %i.g, i64 -2
  %i.l = load i16, ptr %i.k, align 2
  %i.m = icmp eq i16 %i.l, 108
  %i.n = icmp samesign ult i64 %indvars.iv, %i.e
  %or.cond103 = and i1 %i.n, %i.m
  br i1 %or.cond103, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.p = load i16, ptr %i.o, align 2
  %i.q = icmp eq i16 %i.p, 108
  br i1 %i.q, label %bb.ai, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.r = load i32, ptr %i.d, align 4
  %i.s = or i32 %i.r, 8192
  store i32 %i.s, ptr %i.d, align 4
  br label %bb.ai

bb.i:                                             ; preds = %bb.d
  %i.t = icmp samesign ult i64 %indvars.iv, %i.e
  br i1 %i.t, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4
  %i.u = add nuw nsw i64 %indvars.iv, 2           ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.w = load i16, ptr %i.v, align 2
  %i.x = zext i16 %i.w to i32                     ; 4 uses
  %i.y = and i32 %i.x, 64512
  %i.z = icmp ne i32 %i.y, 55296
  %.not100 = icmp eq i64 %i.u, %i.f
  %or.cond106 = select i1 %i.z, i1 true, i1 %.not100
  br i1 %or.cond106, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.u
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = and i32 %i.ac, 64512
  %i.ae = icmp eq i32 %i.ad, 56320
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = shl nuw nsw i32 %i.x, 10
  %i.ag = add nsw i32 %i.af, -56613888
  %i.ah = add nuw nsw i32 %i.ag, %i.ac
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.186 = phi i32 [ %i.x, %bb.j ], [ %i.ah, %bb.l ], [ %i.x, %bb.k ]
  %i.ai = call i32 @uscript_getScript_78(i32 noundef %.186, ptr noundef nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.aj = icmp eq i32 %i.ai, 14
  br i1 %i.aj, label %bb.ai, label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.m
  %i.ak = load i32, ptr %i.d, align 4
  %i.al = or i32 %i.ak, 8192
  store i32 %i.al, ptr %i.d, align 4
  br label %bb.ai

bb.n:                                             ; preds = %bb.d
  %i.am = add nsw i16 %i.h, -1523
  %or.cond = icmp ult i16 %i.am, 2
  br i1 %or.cond, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %.not97 = icmp eq i64 %indvars.iv, 0
  br i1 %.not97, label %.critedge105, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 0, ptr %i.b, align 4
  %i.an = getelementptr i8, ptr %i.g, i64 -2
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = zext i16 %i.ao to i32                   ; 4 uses
  %i.aq = and i32 %i.ap, 64512
  %i.ar = icmp ne i32 %i.aq, 56320
  %.not98 = icmp eq i64 %indvars.iv, 1
  %or.cond107 = or i1 %.not98, %i.ar
  br i1 %or.cond107, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr i8, ptr %i.g, i64 -4
  %i.at = load i16, ptr %i.as, align 2
  %i.au = zext i16 %i.at to i32                   ; 2 uses
  %i.av = and i32 %i.au, 64512
  %i.aw = icmp eq i32 %i.av, 55296
  br i1 %i.aw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ax = shl nuw nsw i32 %i.au, 10
  %i.ay = add nuw nsw i32 %i.ap, -56613888
  %i.az = add nsw i32 %i.ay, %i.ax
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %.3 = phi i32 [ %i.ap, %bb.p ], [ %i.az, %bb.r ], [ %i.ap, %bb.q ]
  %i.ba = call i32 @uscript_getScript_78(i32 noundef %.3, ptr noundef nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.bb = icmp eq i32 %i.ba, 19
  br i1 %i.bb, label %bb.ai, label %.critedge105

.critedge105:                                     ; preds = %bb.o, %bb.s
  %i.bc = load i32, ptr %i.d, align 4
  %i.bd = or i32 %i.bc, 8192
  store i32 %i.bd, ptr %i.d, align 4
  br label %bb.ai

bb.t:                                             ; preds = %bb.n
  %i.be = icmp samesign ugt i16 %i.h, 1631
  br i1 %i.be, label %bb.u, label %bb.ai

bb.u:                                             ; preds = %bb.t
  %i.bf = icmp samesign ult i16 %i.h, 1642
  br i1 %i.bf, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bg = icmp sgt i32 %.0112, 0
  br i1 %i.bg, label %bb.w, label %bb.ai

bb.w:                                             ; preds = %bb.v
  %i.bh = load i32, ptr %i.d, align 4
  %i.bi = or i32 %i.bh, 16384
  store i32 %i.bi, ptr %i.d, align 4
  br label %bb.ai

bb.x:                                             ; preds = %bb.u
  %i.bj = icmp samesign ugt i16 %i.h, 1775
  br i1 %i.bj, label %bb.y, label %bb.ai

bb.y:                                             ; preds = %bb.x
  %i.bk = icmp slt i32 %.0112, 0
  br i1 %i.bk, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.bl = load i32, ptr %i.d, align 4
  %i.bm = or i32 %i.bl, 16384
  store i32 %i.bm, ptr %i.d, align 4
  br label %bb.ai

bb.aa:                                            ; preds = %bb.c
  %i.bn = icmp eq i16 %i.h, 12539
  br i1 %i.bn, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 0, ptr %i.c, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ah, %bb.ab
  %.081 = phi i32 [ 0, %bb.ab ], [ %.2, %bb.ah ]  ; 4 uses
  %5 = icmp sgt i32 %.081, %4
  br i1 %5, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bo = load i32, ptr %i.d, align 4
  %i.bp = or i32 %i.bo, 8192
  store i32 %i.bp, ptr %i.d, align 4
  br label %.loopexit

bb.ae:                                            ; preds = %bb.ac
  %i.bq = add nsw i32 %.081, 1                    ; 4 uses
  %i.br = sext i32 %.081 to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %1, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = zext i16 %i.bt to i32                   ; 4 uses
  %i.bv = and i32 %i.bu, 64512
  %i.bw = icmp ne i32 %i.bv, 55296
  %.not95 = icmp eq i32 %i.bq, %2
  %or.cond108 = select i1 %i.bw, i1 true, i1 %.not95
  br i1 %or.cond108, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bx = sext i32 %i.bq to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %1, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2
  %i.ca = zext i16 %i.bz to i32                   ; 2 uses
  %i.cb = and i32 %i.ca, 64512
  %i.cc = icmp eq i32 %i.cb, 56320
  br i1 %i.cc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cd = add nsw i32 %.081, 2
  %i.ce = shl nuw nsw i32 %i.bu, 10
  %i.cf = add nsw i32 %i.ce, -56613888
  %i.cg = add nuw nsw i32 %i.cf, %i.ca
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ae
  %.5 = phi i32 [ %i.bu, %bb.ae ], [ %i.cg, %bb.ag ], [ %i.bu, %bb.af ]
  %.2 = phi i32 [ %i.bq, %bb.ae ], [ %i.cd, %bb.ag ], [ %i.bq, %bb.af ]
  %i.ch = call i32 @uscript_getScript_78(i32 noundef %.5, ptr noundef nonnull %i.c) #11
  switch i32 %i.ch, label %bb.ac [
    i32 22, label %.loopexit
    i32 20, label %.loopexit
    i32 17, label %.loopexit
  ]

.loopexit:                                        ; preds = %bb.ah, %bb.ah, %bb.ah, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.ai

bb.ai:                                            ; preds = %bb.y, %bb.z, %bb.v, %bb.w, %bb.s, %.critedge105, %bb.m, %.critedge, %bb.t, %bb.x, %bb.g, %bb.h, %.loopexit, %bb.aa, %bb.b
  %.1 = phi i32 [ %.0112, %bb.b ], [ %.0112, %bb.g ], [ %.0112, %bb.h ], [ %.0112, %bb.aa ], [ %.0112, %bb.m ], [ %.0112, %bb.s ], [ -1, %bb.v ], [ %.0112, %bb.x ], [ %.0112, %bb.t ], [ %.0112, %.loopexit ], [ %.0112, %.critedge ], [ %.0112, %.critedge105 ], [ -1, %bb.w ], [ 1, %bb.z ], [ 1, %bb.y ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %6 = trunc nuw i64 %indvars.iv.next to i32
  %.not = icmp slt i32 %4, %6
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !24
}

declare i32 @u_strToPunycode_78(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @u_charDirection_78(i32 noundef) local_unnamed_addr #5

declare i32 @ubidi_getJoiningType_78(i32 noundef) local_unnamed_addr #5

declare i32 @uscript_getScript_78(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @uidna_openUTS46_78(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %_ZN6icu_784IDNA19createUTS46InstanceEjR10UErrorCode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 24) #11 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_784IDNA19createUTS46InstanceEjR10UErrorCode.exit

bb.d:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_785UTS46E, i64 16), ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = tail call noundef ptr @_ZN6icu_7811Normalizer211getInstanceEPKcS2_19UNormalization2ModeR10UErrorCode(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %1) #11
  store ptr %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %0, ptr %i.g, align 8
  %i.h = load i32, ptr %1, align 4
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %_ZN6icu_784IDNA19createUTS46InstanceEjR10UErrorCode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #11, !inline_history !25
  br label %_ZN6icu_784IDNA19createUTS46InstanceEjR10UErrorCode.exit

_ZN6icu_784IDNA19createUTS46InstanceEjR10UErrorCode.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.08.i = phi ptr [ %i.c, %bb.d ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.a ]
  ret ptr %.08.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @uidna_close_78(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @uidna_labelToASCII_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef captures(address_is_null) %5, ptr noundef %6) local_unnamed_addr #1 {
bb.a:
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %8 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %10 = alloca %"class.icu_78::IDNAInfo", align 4 ; 7 uses
  %11 = alloca %"class.icu_78::Char16Ptr", align 8 ; 3 uses
  %i.a = load i32, ptr %6, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZL9checkArgsPKviPviP9UIDNAInfoP10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %5, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i16, ptr %5, align 4                ; 2 uses
  %i.e = icmp slt i16 %i.d, 16
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %6, align 4
  br label %_ZL9checkArgsPKviPviP9UIDNAInfoP10UErrorCode.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.not18.i = icmp eq i32 %2, 0
  br i1 %.not18.i, label %bb.h, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.g = icmp slt i32 %2, -1
  br i1 %i.g, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.h = icmp eq ptr %3, null
  br i1 %i.h, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not19.i = icmp eq i32 %4, 0
  br i1 %.not19.i, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.i = icmp slt i32 %4, 0
  br i1 %i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.j = icmp eq ptr %3, %1
  %i.k = icmp ne ptr %1, null
  %or.cond.i = and i1 %i.k, %i.j
  br i1 %or.cond.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.f
  store i32 1, ptr %6, align 4
  br label %_ZL9checkArgsPKviPviP9UIDNAInfoP10UErrorCode.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  %i.m = zext nneg i16 %i.d to i64
  %i.n = add nsw i64 %i.m, -2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.l, i8 0, i64 %i.n, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %.lobit = lshr i32 %2, 31
  %i.o = trunc nuw nsw i32 %.lobit to i8
  store ptr %1, ptr %8, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 noundef signext %i.o, ptr noundef nonnull %8, i32 noundef %2) #11
  %i.p = load ptr, ptr %8, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.p) #11, !srcloc !26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @_ZN6icu_7813UnicodeStringC1EPDsii(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef %3, i32 noundef 0, i32 noundef %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %10, i8 0, i64 10, i1 false)
  store i8 1, ptr %i.q, align 2
  %i.r = load ptr, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef nonnull align 8 dereferenceable(64) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(11) %10, ptr noundef nonnull align 4 dereferenceable(4) %6) #11 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.w = load i8, ptr %i.v, align 4
  store i8 %i.w, ptr %i.l, align 2
  %i.x = load i32, ptr %10, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.x, ptr %i.y, align 4
  store ptr %3, ptr %11, align 8
  %i.z = call noundef i32 @_ZNK6icu_7813UnicodeString7extractENS_9Char16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %11, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %6) #11
  %i.aa = load ptr, ptr %11, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.aa) #11, !srcloc !27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %_ZL9checkArgsPKviPviP9UIDNAInfoP10UErrorCode.exit.thread

_ZL9checkArgsPKviPviP9UIDNAInfoP10UErrorCode.exit.thread: ; preds = %bb.a, %bb.l, %bb.d, %bb.m
  %.0 = phi i32 [ %i.z, %bb.m ], [ 0, %bb.d ], [ 0, %bb.l ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef, i32 noundef) unnamed_addr #5

declare void @_ZN6icu_7813UnicodeStringC1EPDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #5

declare noundef i32 @_ZNK6icu_7813UnicodeString7extractENS_9Char16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @uidna_labelToUnicode_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef captures(address_is_null) %5, ptr noundef %6) local_unnamed_addr #1 {
bb.a:
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %8 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %10 = alloca %"class.icu_78::IDNAInfo", align 4 ; 7 uses
  %11 = alloca %"class.icu_78::Char16Ptr", align 8 ; 3 uses
  %i.a = load i32, ptr %6, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZL9checkArgsPKviPviP9UIDNAInfoP10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %5, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i16, ptr %5, align 4                ; 2 uses
  %i.e = icmp slt i16 %i.d, 16
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %6, align 4
  br label %_ZL9checkArgsPKviPviP9UIDNAInfoP10UErrorCode.exit.thread

end_hunk_0
