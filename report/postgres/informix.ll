Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/informix?download=true
inline.NumInlined: 19
inline.NumDeleted: 4
begin_hunk_0_@PGTYPEStimestamp_current

; Function Attrs: nounwind uwtable
define i32 @dtcvasc(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
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
  br label %bb.bi

bb.c:                                             ; preds = %bb.a
  %i.f = icmp sgt i64 %0, -1                      ; 4 uses
  %i.g = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 2 uses
  %i.h = select i1 %i.f, i8 43, i8 45
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
  %.sink.i = phi i32 [ %i.i, %bb.f ], [ %i.p, %bb.g ] ; 5 uses
  %.1.i = phi i64 [ %i.o, %bb.f ], [ %i.j, %bb.g ]
  %i.q = add i32 %.sink.i, 1
  %i.r = sext i32 %i.q to i64
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #19 ; 13 uses
  store ptr %i.s, ptr @value.5, align 8
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.u = icmp sgt i32 %.sink.i, 0
  br i1 %i.u, label %.lr.ph.preheader.i, label %.loopexit177

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %.sink.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.034.i = phi i64 [ %i.g, %.lr.ph.preheader.i ], [ %i.z, %.lr.ph.i ] ; 2 uses
  %.233.i = phi i64 [ %.1.i, %.lr.ph.preheader.i ], [ %i.aa, %.lr.ph.i ] ; 3 uses
  %i.v = sdiv i64 %.034.i, %.233.i
  %i.w = trunc i64 %i.v to i8
  %i.x = add i8 %i.w, 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.i
  store i8 %i.x, ptr %i.y, align 1
  %i.z = srem i64 %.034.i, %.233.i
  %i.aa = sdiv i64 %.233.i, 10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit177, label %.lr.ph.i, !llvm.loop !6

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.d) #17
  %i.ab = tail call ptr @__errno_location() #16
  store i32 12, ptr %i.ab, align 4
  br label %bb.bi

.loopexit177:                                     ; preds = %.lr.ph.i, %.preheader.i
  %i.ac = sext i32 %.sink.i to i64
  %i.ad = getelementptr inbounds i8, ptr %i.s, i64 %i.ac
  store i8 0, ptr %i.ad, align 1
  %i.ae = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 60) #18
  %.not140 = icmp ne ptr %i.ae, null              ; 2 uses
  %i.af = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 40) #18
  %.not141 = icmp eq ptr %i.af, null
  br i1 %.not141, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit177
  %i.ag = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 41) #18
  %.not142 = icmp ne ptr %i.ag, null
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit177
  %i.ah = phi i1 [ false, %.loopexit177 ], [ %.not142, %bb.j ]
  %i.ai = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #18
  %i.aj = trunc i64 %i.ai to i32                  ; 3 uses
  %.0912.i = add i32 %i.aj, -1                    ; 2 uses
  %i.ak = icmp sgt i32 %.0912.i, -1
  br i1 %i.ak, label %.lr.ph.i148, label %getRightMostDot.exit

.lr.ph.i148:                                      ; preds = %bb.k, %bb.m
  %.0914.i = phi i32 [ %.09.i, %bb.m ], [ %.0912.i, %bb.k ] ; 2 uses
  %.013.i = phi i32 [ %i.ar, %bb.m ], [ 0, %bb.k ] ; 2 uses
  %3 = zext nneg i32 %.0914.i to i64
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.am = load i8, ptr %i.al, align 1
  %i.an = icmp eq i8 %i.am, 46
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i148
  %i.ao = xor i32 %.013.i, -1
  %i.ap = add i32 %i.ao, %i.aj
  %i.aq = zext i32 %i.ap to i64
  br label %getRightMostDot.exit

bb.m:                                             ; preds = %.lr.ph.i148
  %i.ar = add nuw i32 %.013.i, 1                  ; 2 uses
  %.09.i = add nsw i32 %.0914.i, -1
  %exitcond.not.i149 = icmp eq i32 %i.ar, %i.aj
  br i1 %exitcond.not.i149, label %getRightMostDot.exit, label %.lr.ph.i148, !llvm.loop !7

getRightMostDot.exit:                             ; preds = %bb.m, %bb.k, %bb.l
  %.010.i = phi i64 [ %i.aq, %bb.l ], [ 4294967295, %bb.k ], [ 4294967295, %bb.m ] ; 3 uses
  store i8 0, ptr %i.d, align 1
  %i.as = trunc i64 %i.b to i32                   ; 2 uses
  %.0135182 = add i32 %i.as, -1                   ; 2 uses
  %i.at = icmp sgt i32 %.0135182, -1
  br i1 %i.at, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %getRightMostDot.exit
  %i.au = add i32 %.sink.i, -1
  %i.av = select i1 %i.f, i8 32, i8 41
  %not.175 = xor i1 %i.f, true
  %or.cond26 = and i1 %i.ah, %not.175             ; 2 uses
  %i.aw = zext nneg i32 %.0135182 to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.bh
  %indvars.iv = phi i64 [ %i.aw, %.lr.ph ], [ %indvars.iv.next, %bb.bh ] ; 7 uses
  %.0118194 = phi i8 [ 32, %.lr.ph ], [ %.1, %bb.bh ] ; 3 uses
  %.0120193 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.bh ] ; 24 uses
  %.0122192 = phi i32 [ 0, %.lr.ph ], [ %.2124, %bb.bh ] ; 25 uses
  %.0125191 = phi i32 [ 0, %.lr.ph ], [ %.2127158, %bb.bh ] ; 4 uses
  %.0128190 = phi i32 [ 0, %.lr.ph ], [ %.1129155, %bb.bh ] ; 2 uses
  %.0131187 = phi i32 [ %i.au, %.lr.ph ], [ %.2133, %bb.bh ] ; 35 uses
  %.0134183 = phi i32 [ 0, %.lr.ph ], [ %i.cu, %bb.bh ] ; 2 uses
  %i.ax = icmp slt i32 %.0131187, 0               ; 2 uses
  br i1 %i.ax, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ay = icmp eq i32 %.0131187, -1
  %spec.select146 = select i1 %i.ay, i32 1, i32 %.0125191 ; 3 uses
  %i.az = icmp ne i32 %spec.select146, 0
  %or.cond30 = select i1 %.not140, i1 %i.az, i1 false
  %i.ba = icmp ne i32 %.0120193, 0
  %or.cond32 = select i1 %or.cond30, i1 %i.ba, i1 false
  br i1 %or.cond32, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.bb = sext i32 %.0134183 to i64
  %i.bc = getelementptr inbounds i8, ptr %i.d, i64 %i.bb
  store i8 0, ptr %i.bc, align 1
  br label %.loopexit

bb.q:                                             ; preds = %bb.n
  %or.cond147 = icmp ugt i64 %.010.i, %indvars.iv
  br i1 %or.cond147, label %bb.u, label %bb.r

.thread:                                          ; preds = %bb.o
  %or.cond147154 = icmp ugt i64 %.010.i, %indvars.iv
  br i1 %or.cond147154, label %.thread161, label %bb.r

bb.r:                                             ; preds = %.thread, %bb.q
  %.2127159 = phi i32 [ %spec.select146, %.thread ], [ %.0125191, %bb.q ]
  %.1129156 = phi i32 [ 1, %.thread ], [ %.0128190, %bb.q ]
  %i.bd = icmp samesign ult i64 %.010.i, %indvars.iv
  br i1 %i.bd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = icmp eq i8 %i.bf, 41
  %. = select i1 %i.bg, i8 %i.av, i8 48
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.sink = phi i8 [ %., %bb.s ], [ 46, %bb.r ]
  store i8 %.sink, ptr %i.a, align 2
  %i.bh = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.a) #17 ; 0 uses
  br label %bb.bh

bb.u:                                             ; preds = %bb.q
  %.not144 = icmp eq i32 %.0128190, 0
  br i1 %.not144, label %._crit_edge206, label %.thread161

._crit_edge206:                                   ; preds = %bb.u
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %.pre = load i8, ptr %.phi.trans.insert, align 1 ; 2 uses
  br label %bb.v

.thread161:                                       ; preds = %.thread, %bb.u
  %.2127160167 = phi i32 [ %.0125191, %bb.u ], [ %spec.select146, %.thread ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.bj = load i8, ptr %i.bi, align 1             ; 3 uses
  %i.bk = icmp eq i8 %i.bj, 44
  %spec.select218 = select i1 %i.bk, i8 %.0118194, i8 %i.bj
  br label %bb.v

bb.v:                                             ; preds = %.thread161, %._crit_edge206
  %i.bl = phi i8 [ %i.bj, %.thread161 ], [ %.pre, %._crit_edge206 ] ; 2 uses
  %.not144172 = phi i1 [ false, %.thread161 ], [ true, %._crit_edge206 ] ; 8 uses
  %.1129157169 = phi i32 [ 1, %.thread161 ], [ 0, %._crit_edge206 ] ; 2 uses
  %.2127160166 = phi i32 [ %.2127160167, %.thread161 ], [ %.0125191, %._crit_edge206 ] ; 3 uses
  %.0 = phi i8 [ %spec.select218, %.thread161 ], [ %.pre, %._crit_edge206 ] ; 3 uses
  %or.cond = and i1 %.not140, %i.ax
  %i.bm = icmp ne i32 %.2127160166, 0             ; 3 uses
  %or.cond3 = select i1 %or.cond, i1 %i.bm, i1 false
  %i.bn = icmp ne i32 %.0120193, 0                ; 3 uses
  %.not145 = xor i1 %i.bn, true
  %or.cond5.not = select i1 %or.cond3, i1 %.not145, i1 false
  %i.bo = icmp ne i8 %.0, 43
  %i.bp = icmp ne i8 %.0, 45
  %i.bq = and i1 %i.bo, %i.bp
  %or.cond11 = select i1 %or.cond5.not, i1 %i.bq, i1 false
  br i1 %or.cond11, label %bb.bh, label %bb.w

bb.w:                                             ; preds = %bb.v
  switch i8 %.0, label %bb.bf [
    i8 44, label %bb.x
    i8 42, label %bb.y
    i8 38, label %bb.ab
    i8 35, label %bb.ae
    i8 45, label %bb.ah
    i8 43, label %bb.am
    i8 40, label %bb.ar
    i8 41, label %bb.aw
    i8 36, label %bb.az
    i8 60, label %bb.be
  ]

bb.x:                                             ; preds = %bb.w
  store i8 44, ptr %i.a, align 2
  %i.br = add i32 %.0131187, 1
  br label %bb.bg

bb.y:                                             ; preds = %bb.w
  br i1 %.not144172, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 42, ptr %i.a, align 2
  br label %bb.bg

bb.aa:                                            ; preds = %bb.y
  %i.bs = sext i32 %.0131187 to i64
  %i.bt = getelementptr inbounds i8, ptr %i.s, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1
  store i8 %i.bu, ptr %i.a, align 2
  br label %bb.bg

bb.ab:                                            ; preds = %bb.w
  br i1 %.not144172, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 48, ptr %i.a, align 2
  br label %bb.bg

bb.ad:                                            ; preds = %bb.ab
  %i.bv = sext i32 %.0131187 to i64
  %i.bw = getelementptr inbounds i8, ptr %i.s, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1
  store i8 %i.bx, ptr %i.a, align 2
  br label %bb.bg

bb.ae:                                            ; preds = %bb.w
  br i1 %.not144172, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i8 32, ptr %i.a, align 2
  br label %bb.bg

bb.ag:                                            ; preds = %bb.ae
  %i.by = sext i32 %.0131187 to i64
  %i.bz = getelementptr inbounds i8, ptr %i.s, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  store i8 %i.ca, ptr %i.a, align 2
  br label %bb.bg

bb.ah:                                            ; preds = %bb.w
  %not. = xor i1 %i.bm, true
  %or.cond14 = or i1 %i.f, %not.
  %or.cond16 = select i1 %or.cond14, i1 true, i1 %i.bn
  br i1 %or.cond16, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i8 45, ptr %i.a, align 2
  br label %bb.bg

bb.aj:                                            ; preds = %bb.ah
  br i1 %.not144172, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 32, ptr %i.a, align 2
  br label %bb.bg

bb.al:                                            ; preds = %bb.aj
  %i.cb = sext i32 %.0131187 to i64
  %i.cc = getelementptr inbounds i8, ptr %i.s, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1
  store i8 %i.cd, ptr %i.a, align 2
  br label %bb.bg

bb.am:                                            ; preds = %bb.w
  %i.ce = icmp eq i32 %.2127160166, 0
  %or.cond18 = select i1 %i.ce, i1 true, i1 %i.bn
  br i1 %or.cond18, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 %i.h, ptr %i.a, align 2
end_hunk_0
