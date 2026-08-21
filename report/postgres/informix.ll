inline.NumInlined: 19
inline.NumDeleted: 4
begin_hunk_0_@dtcvasc:bb.a
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = tail call ptr @__errno_location() #16    ; 2 uses
  store i32 0, ptr %i.b, align 4
  %i.c = call i64 @PGTYPEStimestamp_from_asc(ptr noundef %0, ptr noundef nonnull %i.a) #17
  %i.d = load i32, ptr %i.b, align 4              ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = load i8, ptr %i.e, align 1
  %.not7 = icmp eq i8 %i.f, 0
  br i1 %.not7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %i.c, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.d, %bb.a ], [ -1264, %bb.b ]
  ret i32 %.0
}

declare i64 @PGTYPEStimestamp_from_asc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @dtcvfmtasc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @PGTYPEStimestamp_defmt_asc(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %i.a
}

declare i32 @PGTYPEStimestamp_defmt_asc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @dtsub(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @PGTYPEStimestamp_sub(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %i.a
}

declare i32 @PGTYPEStimestamp_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef i32 @dttoasc(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call ptr @PGTYPEStimestamp_to_asc(i64 noundef %i.a) #17 ; 2 uses
  %i.c = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.b) #17 ; 0 uses
  tail call void @free(ptr noundef %i.b) #17
  ret i32 0
}

declare ptr @PGTYPEStimestamp_to_asc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @dttofmtasc(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @PGTYPEStimestamp_fmt_asc(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #17
  ret i32 %i.a
}

declare i32 @PGTYPEStimestamp_fmt_asc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @intoasc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @__errno_location() #16    ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.b = tail call ptr @PGTYPESinterval_to_asc(ptr noundef %0) #17 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4
  %i.d = sub i32 0, %i.c
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.b) #17 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.b) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]
  ret i32 %.0
}

declare ptr @PGTYPESinterval_to_asc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @rfmtlong(i64 noundef %0, ptr nofree noundef readonly %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 31 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i16 32, ptr %i.a, align 2
  %i.c = add i64 %i.b, 1
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #19 ; 10 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #16
  store i32 12, ptr %i.e, align 4
  br label %bb.bj

bb.c:                                             ; preds = %bb.a
  %i.f = icmp sgt i64 %0, -1
  %i.g = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 2 uses
  %i.h = select i1 %i.f, i8 43, i8 45
  store i8 %i.h, ptr @value.4, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.024.i = phi i32 [ 0, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %.022.i = phi i64 [ 1, %bb.c ], [ %i.j, %bb.d ]
  %i.i = add nuw nsw i32 %.024.i, 1               ; 2 uses
  %i.j = mul i64 %.022.i, 10                      ; 5 uses
  %i.k = add i64 %i.j, -1
  %i.l = icmp slt i64 %i.k, %i.g
  %i.m = icmp slt i64 %i.j, 922337203685477581    ; 2 uses
  %i.n = and i1 %i.m, %i.l
  br i1 %i.n, label %bb.d, label %bb.e, !llvm.loop !4

bb.e:                                             ; preds = %bb.d
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = sdiv i64 %i.j, 10
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = add nuw i32 %.024.i, 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i32 [ %i.i, %bb.f ], [ %i.p, %bb.g ] ; 2 uses
  %.1.i = phi i64 [ %i.o, %bb.f ], [ %i.j, %bb.g ]
  store i32 %.sink.i, ptr @value.2, align 4
  %i.q = add i32 %.sink.i, 1
  %i.r = sext i32 %i.q to i64
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #19 ; 13 uses
  store ptr %i.s, ptr @value.5, align 8
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load i32, ptr @value.2, align 4          ; 4 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.preheader.i, label %.loopexit174

.lr.ph.preheader.i:                               ; preds = %bb.i
  %wide.trip.count.i = zext nneg i32 %i.u to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.034.i = phi i64 [ %i.g, %.lr.ph.preheader.i ], [ %i.aa, %.lr.ph.i ] ; 2 uses
  %.233.i = phi i64 [ %.1.i, %.lr.ph.preheader.i ], [ %i.ab, %.lr.ph.i ] ; 3 uses
  %i.w = sdiv i64 %.034.i, %.233.i
  %i.x = trunc i64 %i.w to i8
  %i.y = add i8 %i.x, 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.i
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = srem i64 %.034.i, %.233.i
  %i.ab = sdiv i64 %.233.i, 10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit174, label %.lr.ph.i, !llvm.loop !6

bb.j:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.d) #17
  %i.ac = tail call ptr @__errno_location() #16
  store i32 12, ptr %i.ac, align 4
  br label %bb.bj

.loopexit174:                                     ; preds = %.lr.ph.i, %bb.i
  %i.ad = sext i32 %i.u to i64
  %i.ae = getelementptr inbounds i8, ptr %i.s, i64 %i.ad
  store i8 0, ptr %i.ae, align 1
  %i.af = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 60) #18
  %.not140 = icmp ne ptr %i.af, null              ; 2 uses
  %i.ag = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 40) #18
  %.not141 = icmp eq ptr %i.ag, null
  br i1 %.not141, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit174
  %i.ah = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 41) #18
  %.not142 = icmp ne ptr %i.ah, null
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit174
  %i.ai = phi i1 [ false, %.loopexit174 ], [ %.not142, %bb.k ] ; 2 uses
  %i.aj = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #18
  %i.ak = trunc i64 %i.aj to i32                  ; 3 uses
  %.0912.i = add i32 %i.ak, -1                    ; 2 uses
  %i.al = icmp sgt i32 %.0912.i, -1
  br i1 %i.al, label %.lr.ph.preheader.i148, label %getRightMostDot.exit

.lr.ph.preheader.i148:                            ; preds = %bb.l
  %3 = zext nneg i32 %.0912.i to i64
  br label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %bb.n, %.lr.ph.preheader.i148
  %indvars.iv.i150 = phi i64 [ %3, %.lr.ph.preheader.i148 ], [ %indvars.iv.next.i151, %bb.n ] ; 2 uses
  %.013.i = phi i32 [ 0, %.lr.ph.preheader.i148 ], [ %i.as, %bb.n ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i150
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = icmp eq i8 %i.an, 46
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i148
  %i.ap = xor i32 %.013.i, -1
  %i.aq = add i32 %i.ap, %i.ak
  %i.ar = zext i32 %i.aq to i64
  br label %getRightMostDot.exit

bb.n:                                             ; preds = %.lr.ph.i148
  %i.as = add nuw i32 %.013.i, 1                  ; 2 uses
  %indvars.iv.next.i151 = add nsw i64 %indvars.iv.i150, -1
  %exitcond.not.i149 = icmp eq i32 %i.as, %i.ak
  br i1 %exitcond.not.i149, label %getRightMostDot.exit, label %.lr.ph.i148, !llvm.loop !7

getRightMostDot.exit:                             ; preds = %bb.n, %bb.l, %bb.m
  %.010.i = phi i64 [ %i.ar, %bb.m ], [ 4294967295, %bb.l ], [ 4294967295, %bb.n ] ; 3 uses
  store i8 0, ptr %i.d, align 1
  %i.at = trunc i64 %i.b to i32                   ; 2 uses
  %.0135179 = add i32 %i.at, -1                   ; 2 uses
  %i.au = icmp sgt i32 %.0135179, -1
  br i1 %i.au, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %getRightMostDot.exit
  %i.av = add i32 %i.u, -1
  %i.aw = load i8, ptr @value.4, align 4          ; 3 uses
  %i.ax = icmp eq i8 %i.aw, 45                    ; 3 uses
  %i.ay = select i1 %i.ax, i8 41, i8 32
  %or.cond26 = select i1 %i.ai, i1 %i.ax, i1 false
  %i.az = icmp ne i8 %i.aw, 45
  %i.ba = zext nneg i32 %.0135179 to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.bi
  %indvars.iv = phi i64 [ %i.ba, %.lr.ph ], [ %indvars.iv.next, %bb.bi ] ; 7 uses
  %.0118191 = phi i8 [ 32, %.lr.ph ], [ %.1, %bb.bi ] ; 3 uses
  %.0120190 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.bi ] ; 24 uses
  %.0122189 = phi i32 [ 0, %.lr.ph ], [ %.2124, %bb.bi ] ; 25 uses
  %.0125188 = phi i32 [ 0, %.lr.ph ], [ %.2127158, %bb.bi ] ; 4 uses
  %.0128187 = phi i32 [ 0, %.lr.ph ], [ %.1129155, %bb.bi ] ; 2 uses
  %.0131184 = phi i32 [ %i.av, %.lr.ph ], [ %.2133, %bb.bi ] ; 35 uses
  %.0134180 = phi i32 [ 0, %.lr.ph ], [ %i.cy, %bb.bi ] ; 2 uses
  %i.bb = icmp slt i32 %.0131184, 0               ; 2 uses
  br i1 %i.bb, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bc = icmp eq i32 %.0131184, -1
  %spec.select146 = select i1 %i.bc, i32 1, i32 %.0125188 ; 3 uses
  %i.bd = icmp ne i32 %spec.select146, 0
  %or.cond30 = select i1 %.not140, i1 %i.bd, i1 false
  %i.be = icmp ne i32 %.0120190, 0
  %or.cond32 = select i1 %or.cond30, i1 %i.be, i1 false
  br i1 %or.cond32, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.bf = sext i32 %.0134180 to i64
  %i.bg = getelementptr inbounds i8, ptr %i.d, i64 %i.bf
  store i8 0, ptr %i.bg, align 1
  br label %.loopexit

bb.r:                                             ; preds = %bb.o
  %or.cond147 = icmp ugt i64 %.010.i, %indvars.iv
  br i1 %or.cond147, label %bb.v, label %bb.s

.thread:                                          ; preds = %bb.p
  %or.cond147154 = icmp ugt i64 %.010.i, %indvars.iv
  br i1 %or.cond147154, label %.thread161, label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r
  %.2127159 = phi i32 [ %spec.select146, %.thread ], [ %.0125188, %bb.r ]
  %.1129156 = phi i32 [ 1, %.thread ], [ %.0128187, %bb.r ]
  %i.bh = icmp samesign ult i64 %.010.i, %indvars.iv
  br i1 %i.bh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = icmp eq i8 %i.bj, 41
  %. = select i1 %i.bk, i8 %i.ay, i8 48
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.sink = phi i8 [ %., %bb.t ], [ 46, %bb.s ]
  store i8 %.sink, ptr %i.a, align 2
  %i.bl = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.a) #17 ; 0 uses
  br label %bb.bi

bb.v:                                             ; preds = %bb.r
  %.not144 = icmp eq i32 %.0128187, 0
  br i1 %.not144, label %._crit_edge203, label %.thread161

._crit_edge203:                                   ; preds = %bb.v
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %.pre = load i8, ptr %.phi.trans.insert, align 1 ; 2 uses
  br label %bb.w

.thread161:                                       ; preds = %.thread, %bb.v
  %.2127160167 = phi i32 [ %.0125188, %bb.v ], [ %spec.select146, %.thread ]
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.bn = load i8, ptr %i.bm, align 1             ; 3 uses
  %i.bo = icmp eq i8 %i.bn, 44
  %spec.select216 = select i1 %i.bo, i8 %.0118191, i8 %i.bn
  br label %bb.w

bb.w:                                             ; preds = %.thread161, %._crit_edge203
  %i.bp = phi i8 [ %i.bn, %.thread161 ], [ %.pre, %._crit_edge203 ] ; 2 uses
  %.not144172 = phi i1 [ false, %.thread161 ], [ true, %._crit_edge203 ] ; 8 uses
  %.1129157169 = phi i32 [ 1, %.thread161 ], [ 0, %._crit_edge203 ] ; 2 uses
  %.2127160166 = phi i32 [ %.2127160167, %.thread161 ], [ %.0125188, %._crit_edge203 ] ; 3 uses
  %.0 = phi i8 [ %spec.select216, %.thread161 ], [ %.pre, %._crit_edge203 ] ; 3 uses
  %or.cond = and i1 %.not140, %i.bb
  %i.bq = icmp ne i32 %.2127160166, 0             ; 3 uses
  %or.cond3 = select i1 %or.cond, i1 %i.bq, i1 false
  %i.br = icmp ne i32 %.0120190, 0                ; 3 uses
  %.not145 = xor i1 %i.br, true
  %or.cond5.not = select i1 %or.cond3, i1 %.not145, i1 false
  %i.bs = icmp ne i8 %.0, 43
  %i.bt = icmp ne i8 %.0, 45
  %i.bu = and i1 %i.bs, %i.bt
  %or.cond11 = select i1 %or.cond5.not, i1 %i.bu, i1 false
  br i1 %or.cond11, label %bb.bi, label %bb.x

bb.x:                                             ; preds = %bb.w
  switch i8 %.0, label %bb.bg [
    i8 44, label %bb.y
    i8 42, label %bb.z
    i8 38, label %bb.ac
    i8 35, label %bb.af
    i8 45, label %bb.ai
    i8 43, label %bb.an
    i8 40, label %bb.as
    i8 41, label %bb.ax
    i8 36, label %bb.ba
    i8 60, label %bb.bf
  ]

bb.y:                                             ; preds = %bb.x
  store i8 44, ptr %i.a, align 2
  %i.bv = add i32 %.0131184, 1
  br label %bb.bh

bb.z:                                             ; preds = %bb.x
  br i1 %.not144172, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 42, ptr %i.a, align 2
  br label %bb.bh

bb.ab:                                            ; preds = %bb.z
  %i.bw = sext i32 %.0131184 to i64
  %i.bx = getelementptr inbounds i8, ptr %i.s, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1
  store i8 %i.by, ptr %i.a, align 2
  br label %bb.bh

bb.ac:                                            ; preds = %bb.x
  br i1 %.not144172, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i8 48, ptr %i.a, align 2
  br label %bb.bh

bb.ae:                                            ; preds = %bb.ac
  %i.bz = sext i32 %.0131184 to i64
  %i.ca = getelementptr inbounds i8, ptr %i.s, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1
  store i8 %i.cb, ptr %i.a, align 2
  br label %bb.bh

bb.af:                                            ; preds = %bb.x
  br i1 %.not144172, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 32, ptr %i.a, align 2
  br label %bb.bh

bb.ah:                                            ; preds = %bb.af
  %i.cc = sext i32 %.0131184 to i64
  %i.cd = getelementptr inbounds i8, ptr %i.s, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  store i8 %i.ce, ptr %i.a, align 2
  br label %bb.bh

bb.ai:                                            ; preds = %bb.x
  %not. = xor i1 %i.bq, true
  %or.cond14 = select i1 %not., i1 true, i1 %i.az
  %or.cond16 = select i1 %or.cond14, i1 true, i1 %i.br
  br i1 %or.cond16, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i8 45, ptr %i.a, align 2
  br label %bb.bh

bb.ak:                                            ; preds = %bb.ai
  br i1 %.not144172, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i8 32, ptr %i.a, align 2
  br label %bb.bh

bb.am:                                            ; preds = %bb.ak
  %i.cf = sext i32 %.0131184 to i64
  %i.cg = getelementptr inbounds i8, ptr %i.s, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1
  store i8 %i.ch, ptr %i.a, align 2
  br label %bb.bh

bb.an:                                            ; preds = %bb.x
  %i.ci = icmp eq i32 %.2127160166, 0
  %or.cond18 = select i1 %i.ci, i1 true, i1 %i.br
  br i1 %or.cond18, label %bb.ap, label %bb.ao

end_hunk_0
