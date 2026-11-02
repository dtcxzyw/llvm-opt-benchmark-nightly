Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/informix?download=true
inline.NumInlined: 19
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dtcvfmtasc:bb.a
  %i.a = tail call i32 @PGTYPEStimestamp_defmt_asc(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret i32 %i.a
}

declare i32 @PGTYPEStimestamp_defmt_asc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @dtsub(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @PGTYPEStimestamp_sub(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret i32 %i.a
}

declare i32 @PGTYPEStimestamp_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef i32 @dttoasc(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call ptr @PGTYPEStimestamp_to_asc(i64 noundef %i.a) #18 ; 2 uses
  %i.c = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.b) #18 ; 0 uses
  tail call void @free(ptr noundef %i.b) #18
  ret i32 0
}

declare ptr @PGTYPEStimestamp_to_asc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @dttofmtasc(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @PGTYPEStimestamp_fmt_asc(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #18
  ret i32 %i.a
}

declare i32 @PGTYPEStimestamp_fmt_asc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @intoasc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @__errno_location() #17    ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.b = tail call ptr @PGTYPESinterval_to_asc(ptr noundef %0) #18 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4
  %i.d = sub i32 0, %i.c
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.b) #18 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.b) #18
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
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i16 32, ptr %i.a, align 2
  %i.c = add i64 %i.b, 1
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #20 ; 10 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #17
  store i32 12, ptr %i.e, align 4
  br label %bb.bi

bb.c:                                             ; preds = %bb.a
  %i.f = icmp sgt i64 %0, -1                      ; 4 uses
  %i.g = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 3 uses
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
  br i1 %i.n, label %bb.d, label %bb.e, !llvm.loop !5

bb.e:                                             ; preds = %bb.d
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = sdiv i64 %i.j, 10
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = add nuw i32 %.024.i, 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i32 [ %i.i, %bb.f ], [ %i.p, %bb.g ] ; 7 uses
  %.1.i = phi i64 [ %i.o, %bb.f ], [ %i.j, %bb.g ] ; 2 uses
  %i.q = add i32 %.sink.i, 1
  %i.r = sext i32 %i.q to i64
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #20 ; 15 uses
  store ptr %i.s, ptr @value.5, align 8
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.u = icmp sgt i32 %.sink.i, 0
  br i1 %i.u, label %.lr.ph.preheader.i, label %.loopexit177

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %.sink.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.v = icmp eq i32 %.sink.i, 1
  br i1 %i.v, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.034.i = phi i64 [ %i.g, %.lr.ph.preheader.i.new ], [ %i.ah, %.lr.ph.i ] ; 2 uses
  %.233.i = phi i64 [ %.1.i, %.lr.ph.preheader.i.new ], [ %i.ai, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.w = sdiv i64 %.034.i, %.233.i
  %i.x = trunc i64 %i.w to i8
  %i.y = add i8 %i.x, 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.i
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = srem i64 %.034.i, %.233.i               ; 2 uses
  %i.ab = sdiv i64 %.233.i, 10                    ; 2 uses
  %i.ac = sdiv i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i8
  %i.ae = add i8 %i.ad, 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store i8 %i.ae, ptr %i.ag, align 1
  %i.ah = srem i64 %i.aa, %i.ab                   ; 2 uses
  %i.ai = sdiv i64 %.233.i, 100                   ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit177.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !6

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.d) #18
  %i.aj = tail call ptr @__errno_location() #17
  store i32 12, ptr %i.aj, align 4
  br label %bb.bi

.loopexit177.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit177, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit177.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.loopexit177.loopexit.unr-lcssa ]
  %.034.i.epil.init = phi i64 [ %i.g, %.lr.ph.preheader.i ], [ %i.ah, %.loopexit177.loopexit.unr-lcssa ]
  %.233.i.epil.init = phi i64 [ %.1.i, %.lr.ph.preheader.i ], [ %i.ai, %.loopexit177.loopexit.unr-lcssa ]
  %lcmp.mod229 = trunc i32 %.sink.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod229)
  %i.ak = sdiv i64 %.034.i.epil.init, %.233.i.epil.init
  %i.al = trunc i64 %i.ak to i8
  %i.am = add i8 %i.al, 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.i.epil.init
  store i8 %i.am, ptr %i.an, align 1
  br label %.loopexit177

.loopexit177:                                     ; preds = %.lr.ph.i.epil.preheader, %.loopexit177.loopexit.unr-lcssa, %.preheader.i
  %i.ao = sext i32 %.sink.i to i64
  %i.ap = getelementptr inbounds i8, ptr %i.s, i64 %i.ao
  store i8 0, ptr %i.ap, align 1
  %i.aq = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 60) #19
  %.not140 = icmp ne ptr %i.aq, null              ; 2 uses
  %i.ar = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 40) #19
  %.not141 = icmp eq ptr %i.ar, null
  br i1 %.not141, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit177
  %i.as = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 41) #19
  %.not142 = icmp ne ptr %i.as, null
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit177
  %i.at = phi i1 [ false, %.loopexit177 ], [ %.not142, %bb.j ]
  %i.au = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #19
  %i.av = trunc i64 %i.au to i32                  ; 3 uses
  %.0912.i = add i32 %i.av, -1                    ; 2 uses
  %i.aw = icmp sgt i32 %.0912.i, -1
  br i1 %i.aw, label %.lr.ph.preheader.i148, label %getRightMostDot.exit

.lr.ph.preheader.i148:                            ; preds = %bb.k
  %3 = zext nneg i32 %.0912.i to i64
  br label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %bb.m, %.lr.ph.preheader.i148
  %indvars.iv.i150 = phi i64 [ %3, %.lr.ph.preheader.i148 ], [ %indvars.iv.next.i151, %bb.m ] ; 2 uses
  %.013.i = phi i32 [ 0, %.lr.ph.preheader.i148 ], [ %i.bd, %bb.m ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i150
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = icmp eq i8 %i.ay, 46
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i148
  %i.ba = xor i32 %.013.i, -1
  %i.bb = add i32 %i.ba, %i.av
  %i.bc = zext i32 %i.bb to i64
  br label %getRightMostDot.exit

bb.m:                                             ; preds = %.lr.ph.i148
  %i.bd = add nuw i32 %.013.i, 1                  ; 2 uses
  %indvars.iv.next.i151 = add nsw i64 %indvars.iv.i150, -1
  %exitcond.not.i149 = icmp eq i32 %i.bd, %i.av
  br i1 %exitcond.not.i149, label %getRightMostDot.exit, label %.lr.ph.i148, !llvm.loop !7

getRightMostDot.exit:                             ; preds = %bb.m, %bb.k, %bb.l
  %.010.i = phi i64 [ %i.bc, %bb.l ], [ 4294967295, %bb.k ], [ 4294967295, %bb.m ] ; 3 uses
  store i8 0, ptr %i.d, align 1
  %i.be = trunc i64 %i.b to i32                   ; 2 uses
  %.0135182 = add i32 %i.be, -1                   ; 2 uses
  %i.bf = icmp sgt i32 %.0135182, -1
  br i1 %i.bf, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %getRightMostDot.exit
  %i.bg = add i32 %.sink.i, -1
  %i.bh = select i1 %i.f, i8 32, i8 41
  %not.175 = xor i1 %i.f, true
  %or.cond26 = and i1 %i.at, %not.175             ; 2 uses
  %i.bi = zext nneg i32 %.0135182 to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.bh
  %indvars.iv = phi i64 [ %i.bi, %.lr.ph ], [ %indvars.iv.next, %bb.bh ] ; 7 uses
  %.0118194 = phi i8 [ 32, %.lr.ph ], [ %.1, %bb.bh ] ; 3 uses
  %.0120193 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.bh ] ; 24 uses
  %.0122192 = phi i32 [ 0, %.lr.ph ], [ %.2124, %bb.bh ] ; 25 uses
  %.0125191 = phi i32 [ 0, %.lr.ph ], [ %.2127158, %bb.bh ] ; 4 uses
  %.0128190 = phi i32 [ 0, %.lr.ph ], [ %.1129155, %bb.bh ] ; 2 uses
  %.0131187 = phi i32 [ %i.bg, %.lr.ph ], [ %.2133, %bb.bh ] ; 35 uses
  %.0134183 = phi i32 [ 0, %.lr.ph ], [ %i.df, %bb.bh ] ; 2 uses
  %i.bj = icmp slt i32 %.0131187, 0               ; 2 uses
  br i1 %i.bj, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bk = icmp eq i32 %.0131187, -1
  %spec.select146 = select i1 %i.bk, i32 1, i32 %.0125191 ; 3 uses
  %i.bl = icmp ne i32 %spec.select146, 0
  %or.cond30 = select i1 %.not140, i1 %i.bl, i1 false
  %i.bm = icmp ne i32 %.0120193, 0
  %or.cond32 = select i1 %or.cond30, i1 %i.bm, i1 false
  br i1 %or.cond32, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.bn = sext i32 %.0134183 to i64
  %i.bo = getelementptr inbounds i8, ptr %i.d, i64 %i.bn
  store i8 0, ptr %i.bo, align 1
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
  %i.bp = icmp samesign ult i64 %.010.i, %indvars.iv
  br i1 %i.bp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = icmp eq i8 %i.br, 41
  %. = select i1 %i.bs, i8 %i.bh, i8 48
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.sink = phi i8 [ %., %bb.s ], [ 46, %bb.r ]
  store i8 %.sink, ptr %i.a, align 2
  %i.bt = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.a) #18 ; 0 uses
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
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.bv = load i8, ptr %i.bu, align 1             ; 3 uses
  %i.bw = icmp eq i8 %i.bv, 44
  %spec.select219 = select i1 %i.bw, i8 %.0118194, i8 %i.bv
  br label %bb.v

bb.v:                                             ; preds = %.thread161, %._crit_edge206
  %i.bx = phi i8 [ %i.bv, %.thread161 ], [ %.pre, %._crit_edge206 ] ; 2 uses
  %.not144172 = phi i1 [ false, %.thread161 ], [ true, %._crit_edge206 ] ; 8 uses
  %.1129157169 = phi i32 [ 1, %.thread161 ], [ 0, %._crit_edge206 ] ; 2 uses
  %.2127160166 = phi i32 [ %.2127160167, %.thread161 ], [ %.0125191, %._crit_edge206 ] ; 2 uses
  %.0 = phi i8 [ %spec.select219, %.thread161 ], [ %.pre, %._crit_edge206 ] ; 3 uses
  %or.cond = and i1 %.not140, %i.bj
  %i.by = icmp ne i32 %.2127160166, 0             ; 4 uses
  %or.cond3 = select i1 %or.cond, i1 %i.by, i1 false
  %i.bz = icmp ne i32 %.0120193, 0                ; 3 uses
  %.not145 = xor i1 %i.bz, true
  %or.cond5.not = select i1 %or.cond3, i1 %.not145, i1 false
  %i.ca = icmp ne i8 %.0, 43
  %i.cb = icmp ne i8 %.0, 45
  %i.cc = and i1 %i.ca, %i.cb
  %or.cond11 = select i1 %or.cond5.not, i1 %i.cc, i1 false
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
  %i.cd = add i32 %.0131187, 1
  br label %bb.bg

bb.y:                                             ; preds = %bb.w
  br i1 %.not144172, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 42, ptr %i.a, align 2
  br label %bb.bg

bb.aa:                                            ; preds = %bb.y
  %i.ce = sext i32 %.0131187 to i64
  %i.cf = getelementptr inbounds i8, ptr %i.s, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1
  store i8 %i.cg, ptr %i.a, align 2
  br label %bb.bg

bb.ab:                                            ; preds = %bb.w
  br i1 %.not144172, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 48, ptr %i.a, align 2
  br label %bb.bg

bb.ad:                                            ; preds = %bb.ab
  %i.ch = sext i32 %.0131187 to i64
  %i.ci = getelementptr inbounds i8, ptr %i.s, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1
  store i8 %i.cj, ptr %i.a, align 2
  br label %bb.bg

bb.ae:                                            ; preds = %bb.w
  br i1 %.not144172, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i8 32, ptr %i.a, align 2
  br label %bb.bg

bb.ag:                                            ; preds = %bb.ae
  %i.ck = sext i32 %.0131187 to i64
  %i.cl = getelementptr inbounds i8, ptr %i.s, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1
  store i8 %i.cm, ptr %i.a, align 2
  br label %bb.bg

bb.ah:                                            ; preds = %bb.w
  %not. = xor i1 %i.by, true
  %or.cond14 = or i1 %i.f, %not.
  %or.cond16 = select i1 %or.cond14, i1 true, i1 %i.bz
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
  %i.cn = sext i32 %.0131187 to i64
  %i.co = getelementptr inbounds i8, ptr %i.s, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1
  store i8 %i.cp, ptr %i.a, align 2
  br label %bb.bg

bb.am:                                            ; preds = %bb.w
  %.not207 = xor i1 %i.by, true
  %or.cond18 = select i1 %.not207, i1 true, i1 %i.bz
  br i1 %or.cond18, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 %i.h, ptr %i.a, align 2
end_hunk_0
