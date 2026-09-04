Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/internal?download=true
inline.NumInlined: 494
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 32
begin_hunk_0_@CipherRequires:bb.a

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @MatchDomainName(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp slt i32 %1, 1
  %or.cond4 = or i1 %i.c, %or.cond
  %i.d = icmp eq i32 %3, 0
  %or.cond6 = or i1 %i.d, %or.cond4
  br i1 %or.cond6, label %PatternHasWildcardInALabel.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %4, 64
  %.not149 = icmp eq i32 %i.e, 0                  ; 3 uses
  br i1 %.not149, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @wolfssl_local_IsValidFQDN(ptr noundef nonnull %2, i32 noundef %3) #27
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i32 %1, %3
  br i1 %i.g, label %bb.e, label %PatternHasWildcardInALabel.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.h = zext nneg i32 %1 to i64
  %bcmp = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull %2, i64 %i.h)
  %i.i = icmp eq i32 %bcmp, 0
  br label %PatternHasWildcardInALabel.exit.thread

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.j = add i32 %3, -1                           ; 2 uses
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !52
  %i.n = icmp eq i8 %i.m, 46
  %spec.select = select i1 %i.n, i32 %i.j, i32 %3 ; 6 uses
  %i.o = zext nneg i32 %1 to i64
  %i.p = getelementptr i8, ptr %0, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !52
  %i.s = icmp eq i8 %i.r, 46
  %i.t = sext i1 %i.s to i32
  %.0106 = add nsw i32 %1, %i.t                   ; 8 uses
  %.not41.i = icmp eq i32 %.0106, 0
  br i1 %.not41.i, label %PatternHasWildcardInALabel.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %wide.trip.count.i = zext nneg i32 %.0106 to i64 ; 5 uses
  br label %.lr.ph.outer.i.outer

.lr.ph.outer.i.outer:                             ; preds = %.loopexit55.i.thread, %.lr.ph.preheader.i
  %indvars.iv.ph.i.ph = phi i64 [ %indvars.iv.next.i173, %.loopexit55.i.thread ], [ 0, %.lr.ph.preheader.i ]
  %.01937.ph.i.ph = phi i32 [ %i.av, %.loopexit55.i.thread ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  br label %.lr.ph.outer.i.outer356

.lr.ph.outer.i.outer356:                          ; preds = %.loopexit55.i.thread320, %.lr.ph.outer.i.outer
  %indvars.iv.ph.i.ph357 = phi i64 [ %indvars.iv.next.i323, %.loopexit55.i.thread320 ], [ %indvars.iv.ph.i.ph, %.lr.ph.outer.i.outer ]
  %i.u = phi i1 [ false, %.loopexit55.i.thread320 ], [ true, %.lr.ph.outer.i.outer ] ; 2 uses
  br label %.lr.ph.outer.i

.lr.ph.outer.i:                                   ; preds = %.lr.ph.outer.i.outer356, %.loopexit55.i
  %indvars.iv.ph.i = phi i64 [ %indvars.iv.next.i, %.loopexit55.i ], [ %indvars.iv.ph.i.ph357, %.lr.ph.outer.i.outer356 ] ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.ph.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !52
  switch i8 %i.w, label %.loopexit55.i [
    i8 46, label %.loopexit297
    i8 42, label %.thread.i.peel
  ]

.thread.i.peel:                                   ; preds = %.lr.ph.outer.i
  %indvars.iv.next47.i.peel = add nuw nsw i64 %indvars.iv.ph.i, 1 ; 2 uses
  %exitcond.not48.i.peel = icmp eq i64 %indvars.iv.next47.i.peel, %wide.trip.count.i
  br i1 %exitcond.not48.i.peel, label %._crit_edge.thread51.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread.i.peel, %.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next47.i, %.thread.i ], [ %indvars.iv.next47.i.peel, %.thread.i.peel ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !52
  switch i8 %i.y, label %.loopexit55.i.thread320 [
    i8 46, label %.loopexit297.thread
    i8 42, label %.thread.i
  ]

.loopexit297:                                     ; preds = %.lr.ph.outer.i
  br i1 %i.u, label %..loopexit55.i.thread_crit_edge, label %.loopexit297.thread

..loopexit55.i.thread_crit_edge:                  ; preds = %.loopexit297
  %.pre = trunc i64 %indvars.iv.ph.i to i32
  br label %.loopexit55.i.thread

.loopexit297.thread:                              ; preds = %.lr.ph.i, %.loopexit297
  %indvars.iv.i.lcssa290319 = phi i64 [ %indvars.iv.ph.i, %.loopexit297 ], [ %indvars.iv.i, %.lr.ph.i ] ; 6 uses
  %indvars42.le.i = trunc i64 %indvars.iv.i.lcssa290319 to i32 ; 6 uses
  %i.z = zext i32 %.01937.ph.i.ph to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z ; 4 uses
  %i.ab = sub i32 %indvars42.le.i, %.01937.ph.i.ph
  %i.ac = icmp ult i32 %i.ab, 4
  br i1 %i.ac, label %.loopexit55.i.thread, label %bb.g

bb.g:                                             ; preds = %.loopexit297.thread
  %i.ad = tail call ptr @__ctype_tolower_loc() #28
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !351 ; 2 uses
  %i.af = load i8, ptr %i.aa, align 1, !tbaa !52
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !56
  %i.aj = icmp eq i32 %i.ai, 120
  br i1 %i.aj, label %bb.h, label %.loopexit55.i.thread

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !52
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !56
  %i.ap = icmp eq i32 %i.ao, 110
  br i1 %i.ap, label %bb.i, label %.loopexit55.i.thread

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !52
  %i.as = icmp eq i8 %i.ar, 45
  br i1 %i.as, label %LabelIsALabel.exit.i, label %.loopexit55.i.thread

LabelIsALabel.exit.i:                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !52
  %.not34.i = icmp eq i8 %i.au, 45
  br i1 %.not34.i, label %PatternHasWildcardInALabel.exit.thread, label %.loopexit55.i.thread

.loopexit55.i:                                    ; preds = %.lr.ph.outer.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.ph.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.outer.i, !llvm.loop !344

.loopexit55.i.thread320:                          ; preds = %.lr.ph.i
  %indvars.iv.next.i323 = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i324 = icmp eq i64 %indvars.iv.next.i323, %wide.trip.count.i
  br i1 %exitcond.not.i324, label %._crit_edge.thread51.i, label %.lr.ph.outer.i.outer356, !llvm.loop !344

.loopexit55.i.thread:                             ; preds = %..loopexit55.i.thread_crit_edge, %.loopexit297.thread, %bb.g, %bb.h, %bb.i, %LabelIsALabel.exit.i
  %indvars.iv.i.lcssa290318 = phi i64 [ %indvars.iv.ph.i, %..loopexit55.i.thread_crit_edge ], [ %indvars.iv.i.lcssa290319, %.loopexit297.thread ], [ %indvars.iv.i.lcssa290319, %bb.g ], [ %indvars.iv.i.lcssa290319, %bb.h ], [ %indvars.iv.i.lcssa290319, %bb.i ], [ %indvars.iv.i.lcssa290319, %LabelIsALabel.exit.i ]
  %.pre-phi = phi i32 [ %.pre, %..loopexit55.i.thread_crit_edge ], [ %indvars42.le.i, %.loopexit297.thread ], [ %indvars42.le.i, %bb.g ], [ %indvars42.le.i, %bb.h ], [ %indvars42.le.i, %bb.i ], [ %indvars42.le.i, %LabelIsALabel.exit.i ]
  %i.av = add i32 %.pre-phi, 1
  %indvars.iv.next.i173 = add nuw nsw i64 %indvars.iv.i.lcssa290318, 1 ; 2 uses
  %exitcond.not.i174 = icmp eq i64 %indvars.iv.next.i173, %wide.trip.count.i
  br i1 %exitcond.not.i174, label %PatternHasWildcardInALabel.exit, label %.lr.ph.outer.i.outer, !llvm.loop !344

.thread.i:                                        ; preds = %.lr.ph.i
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not48.i = icmp eq i64 %indvars.iv.next47.i, %wide.trip.count.i
  br i1 %exitcond.not48.i, label %._crit_edge.thread51.i, label %.lr.ph.i, !llvm.loop !345

._crit_edge.i:                                    ; preds = %.loopexit55.i
  br i1 %i.u, label %PatternHasWildcardInALabel.exit, label %._crit_edge.thread51.i

._crit_edge.thread51.i:                           ; preds = %.loopexit55.i.thread320, %.thread.i.peel, %.thread.i, %._crit_edge.i
  %i.aw = zext i32 %.01937.ph.i.ph to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw ; 4 uses
  %i.ay = sub i32 %.0106, %.01937.ph.i.ph
  %i.az = icmp ult i32 %i.ay, 4
  br i1 %i.az, label %PatternHasWildcardInALabel.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread51.i
  %i.ba = tail call ptr @__ctype_tolower_loc() #28
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !351 ; 2 uses
  %i.bc = load i8, ptr %i.ax, align 1, !tbaa !52
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !56
  %i.bg = icmp eq i32 %i.bf, 120
  br i1 %i.bg, label %bb.k, label %PatternHasWildcardInALabel.exit

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !52
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !56
  %i.bm = icmp eq i32 %i.bl, 110
  br i1 %i.bm, label %bb.l, label %PatternHasWildcardInALabel.exit

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !52
  %i.bp = icmp eq i8 %i.bo, 45
  br i1 %i.bp, label %LabelIsALabel.exit28.i, label %PatternHasWildcardInALabel.exit

LabelIsALabel.exit28.i:                           ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !52
  %.not33.i = icmp eq i8 %i.br, 45
  br i1 %.not33.i, label %PatternHasWildcardInALabel.exit.thread, label %PatternHasWildcardInALabel.exit

PatternHasWildcardInALabel.exit:                  ; preds = %.loopexit55.i.thread, %LabelIsALabel.exit28.i, %bb.l, %bb.k, %bb.j, %._crit_edge.thread51.i, %._crit_edge.i, %bb.f
  %.not30.i = icmp eq i32 %spec.select, 0
  br i1 %.not30.i, label %._crit_edge.i168, label %.lr.ph.preheader.i162

.lr.ph.preheader.i162:                            ; preds = %PatternHasWildcardInALabel.exit
  %wide.trip.count.i163 = zext i32 %spec.select to i64
  br label %.lr.ph.i164

.lr.ph.i164:                                      ; preds = %bb.q, %.lr.ph.preheader.i162
  %indvars.iv.i165 = phi i64 [ 0, %.lr.ph.preheader.i162 ], [ %indvars.iv.next.pre-phi.i, %bb.q ] ; 4 uses
  %.01628.i = phi i32 [ 0, %.lr.ph.preheader.i162 ], [ %.1.i166, %bb.q ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i165
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !52
  %i.bu = icmp eq i8 %i.bt, 46
  br i1 %i.bu, label %bb.m, label %.lr.ph._crit_edge.i

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i164
  %.pre.i = add nuw nsw i64 %indvars.iv.i165, 1
  br label %bb.q

bb.m:                                             ; preds = %.lr.ph.i164
  %indvars31.i = trunc i64 %indvars.iv.i165 to i32
  %i.bv = zext i32 %.01628.i to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %i.bv ; 4 uses
  %i.bx = sub i32 %indvars31.i, %.01628.i
  %i.by = icmp ult i32 %i.bx, 4
  br i1 %i.by, label %LabelIsALabel.exit.thread.i169, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = tail call ptr @__ctype_tolower_loc() #28
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !351 ; 2 uses
  %i.cb = load i8, ptr %i.bw, align 1, !tbaa !52
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !56
  %i.cf = icmp eq i32 %i.ce, 120
  br i1 %i.cf, label %bb.o, label %LabelIsALabel.exit.thread.i169

bb.o:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !52
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !56
  %i.cl = icmp eq i32 %i.ck, 110
  br i1 %i.cl, label %bb.p, label %LabelIsALabel.exit.thread.i169

bb.p:                                             ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !52
  %i.co = icmp eq i8 %i.cn, 45
  br i1 %i.co, label %LabelIsALabel.exit.i170, label %LabelIsALabel.exit.thread.i169

LabelIsALabel.exit.i170:                          ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bw, i64 3
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !52
  %.not26.i = icmp eq i8 %i.cq, 45
  br i1 %.not26.i, label %NameHasALabel.exit, label %LabelIsALabel.exit.thread.i169

LabelIsALabel.exit.thread.i169:                   ; preds = %LabelIsALabel.exit.i170, %bb.p, %bb.o, %bb.n, %bb.m
  %i.cr = add nuw nsw i64 %indvars.iv.i165, 1     ; 2 uses
  %i.cs = trunc nuw i64 %i.cr to i32
  br label %bb.q

bb.q:                                             ; preds = %LabelIsALabel.exit.thread.i169, %.lr.ph._crit_edge.i
  %indvars.iv.next.pre-phi.i = phi i64 [ %.pre.i, %.lr.ph._crit_edge.i ], [ %i.cr, %LabelIsALabel.exit.thread.i169 ] ; 2 uses
  %.1.i166 = phi i32 [ %.01628.i, %.lr.ph._crit_edge.i ], [ %i.cs, %LabelIsALabel.exit.thread.i169 ] ; 2 uses
  %exitcond.not.i167 = icmp eq i64 %indvars.iv.next.pre-phi.i, %wide.trip.count.i163
  br i1 %exitcond.not.i167, label %._crit_edge.i168, label %.lr.ph.i164, !llvm.loop !346

._crit_edge.i168:                                 ; preds = %bb.q, %PatternHasWildcardInALabel.exit
  %.016.lcssa.i = phi i32 [ 0, %PatternHasWildcardInALabel.exit ], [ %.1.i166, %bb.q ] ; 3 uses
  %i.ct = icmp ult i32 %.016.lcssa.i, %spec.select
  br i1 %i.ct, label %bb.r, label %.critedge

bb.r:                                             ; preds = %._crit_edge.i168
  %i.cu = zext i32 %.016.lcssa.i to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 %i.cu ; 4 uses
  %i.cw = sub nuw i32 %spec.select, %.016.lcssa.i
  %i.cx = icmp ult i32 %i.cw, 4
  br i1 %i.cx, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = tail call ptr @__ctype_tolower_loc() #28
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !351 ; 2 uses
  %i.da = load i8, ptr %i.cv, align 1, !tbaa !52
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !56
  %i.de = icmp eq i32 %i.dd, 120
  br i1 %i.de, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !52
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !56
  %i.dk = icmp eq i32 %i.dj, 110
  br i1 %i.dk, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !52
  %i.dn = icmp eq i8 %i.dm, 45
  br i1 %i.dn, label %LabelIsALabel.exit21.i, label %.critedge

LabelIsALabel.exit21.i:                           ; preds = %bb.u
  %i.do = getelementptr inbounds nuw i8, ptr %i.cv, i64 3
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !52
  %.not.i = icmp eq i8 %i.dp, 45
  %.not148235 = icmp sgt i32 %.0106, 0
  %or.cond272 = and i1 %.not.i, %.not148235
  br i1 %or.cond272, label %.lr.ph.preheader, label %.critedge

NameHasALabel.exit:                               ; preds = %LabelIsALabel.exit.i170
  %.not148235.old = icmp sgt i32 %.0106, 0
  br i1 %.not148235.old, label %.lr.ph.preheader, label %.thread202

.lr.ph.preheader:                                 ; preds = %NameHasALabel.exit, %LabelIsALabel.exit21.i
  %wide.trip.count = zext nneg i32 %.0106 to i64
  br label %.lr.ph

bb.v:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !347

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !52
  %i.ds = icmp eq i8 %i.dr, 42
  br i1 %i.ds, label %PatternHasWildcardInALabel.exit.thread, label %bb.v

.critedge:                                        ; preds = %bb.v, %LabelIsALabel.exit21.i, %bb.u, %bb.t, %bb.s, %bb.r, %._crit_edge.i168
  %i.dt = icmp slt i32 %.0106, 1
  br i1 %i.dt, label %.thread202, label %.lr.ph267

.lr.ph267:                                        ; preds = %.critedge
  %i.du = tail call ptr @__ctype_tolower_loc() #28
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !351 ; 6 uses
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph267, %.loopexit
  %.0100266 = phi ptr [ %0, %.lr.ph267 ], [ %.5105, %.loopexit ] ; 4 uses
  %.1107265 = phi i32 [ %.0106, %.lr.ph267 ], [ %.6112, %.loopexit ] ; 9 uses
  %.0113264 = phi ptr [ %2, %.lr.ph267 ], [ %.5118, %.loopexit ] ; 8 uses
  %.1120263 = phi i32 [ %spec.select, %.lr.ph267 ], [ %.6125, %.loopexit ] ; 11 uses
  %.0128262 = phi i8 [ 1, %.lr.ph267 ], [ %.4132, %.loopexit ] ; 2 uses
  %i.dw = load i8, ptr %.0100266, align 1, !tbaa !52
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !56
  %sext = shl i32 %i.dz, 24                       ; 3 uses
  %.not385.not = icmp ne i32 %sext, 0             ; 3 uses
  br i1 %.not385.not, label %bb.x, label %.thread202

bb.x:                                             ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %.0100266, i64 1 ; 7 uses
  %i.eb = icmp eq i32 %sext, 704643072
  %i.ec = icmp ne i8 %.0128262, 0
  %or.cond9 = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond9, label %bb.y, label %bb.ah

bb.y:                                             ; preds = %bb.x
  br i1 %.not149, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not153 = icmp eq i32 %.1107265, 1
  br i1 %.not153, label %.split.us.preheader, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ed = load i8, ptr %i.ea, align 1, !tbaa !52
  %.not154 = icmp eq i8 %i.ed, 46
  br i1 %.not154, label %.thread330, label %PatternHasWildcardInALabel.exit.thread

bb.ab:                                            ; preds = %bb.y
  %.2108237 = add nsw i32 %.1107265, -1           ; 2 uses
  %i.ee = icmp samesign ugt i32 %.1107265, 1
  br i1 %i.ee, label %.lr.ph241.split.us.preheader, label %.split.us.preheader

.thread330:                                       ; preds = %bb.aa
  %.2108237332 = add nsw i32 %.1107265, -1        ; 2 uses
  %i.ef = icmp sgt i32 %.1107265, 1
  br i1 %i.ef, label %.lr.ph241.split, label %.split.us.preheader

.lr.ph241.split.us.preheader:                     ; preds = %bb.ab
  %i.eg = zext nneg i32 %.1107265 to i64
  %i.eh = getelementptr i8, ptr %.0100266, i64 %i.eg
  br label %.lr.ph241.split.us

.lr.ph241.split.us:                               ; preds = %.lr.ph241.split.us.preheader, %bb.ac
  %.2108240.us = phi i32 [ %.2108.us, %bb.ac ], [ %.2108237, %.lr.ph241.split.us.preheader ] ; 4 uses
  %.1101239.us = phi ptr [ %i.em, %bb.ac ], [ %i.ea, %.lr.ph241.split.us.preheader ] ; 2 uses
  %.2108.in238.us = phi i32 [ %.2108240.us, %bb.ac ], [ %.1107265, %.lr.ph241.split.us.preheader ]
  %i.ei = load i8, ptr %.1101239.us, align 1, !tbaa !52
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !56 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.1101239.us, i64 1 ; 2 uses
  %trunc.us = trunc i32 %i.el to i8
  switch i8 %trunc.us, label %.split.preheader [
    i8 0, label %PatternHasWildcardInALabel.exit.thread
    i8 42, label %bb.ac
  ]

bb.ac:                                            ; preds = %.lr.ph241.split.us
  %.2108.us = add nsw i32 %.2108240.us, -1
  %i.en = icmp samesign ugt i32 %.2108240.us, 1
  br i1 %i.en, label %.lr.ph241.split.us, label %.split.us.preheader, !llvm.loop !348

.lr.ph241.split:                                  ; preds = %.thread330
  %i.eo = load i8, ptr %i.ea, align 1, !tbaa !52
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !56 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0100266, i64 2
  %trunc = trunc i32 %i.er to i8
  switch i8 %trunc, label %.split.preheader [
    i8 0, label %PatternHasWildcardInALabel.exit.thread
    i8 42, label %PatternHasWildcardInALabel.exit.thread
  ]

.split.us.preheader:                              ; preds = %bb.ac, %bb.z, %bb.ab, %.thread330
  %.1129329.ph = phi i8 [ 1, %bb.ab ], [ 0, %bb.z ], [ 0, %.thread330 ], [ 1, %bb.ac ] ; 2 uses
  %.2108.lcssa.ph = phi i32 [ %.2108237, %bb.ab ], [ 0, %bb.z ], [ %.2108237332, %.thread330 ], [ 0, %bb.ac ] ; 2 uses
  %.2102.ph = phi ptr [ %i.ea, %bb.ab ], [ %i.ea, %bb.z ], [ %i.ea, %.thread330 ], [ %i.eh, %bb.ac ] ; 2 uses
  %scevgep305 = getelementptr i8, ptr %.0113264, i64 1
  %i.et = add i32 %.1120263, -1
  %i.eu = zext i32 %i.et to i64
  %scevgep306 = getelementptr i8, ptr %scevgep305, i64 %i.eu
  %i.ev = zext i32 %.1120263 to i64
  %scevgep307 = getelementptr i8, ptr %.0113264, i64 %i.ev
  %.not157.us421 = icmp eq i32 %.1120263, 0
  br i1 %.not157.us421, label %.loopexit, label %.lr.ph424

.split.preheader:                                 ; preds = %.lr.ph241.split.us, %.lr.ph241.split
  %.1129329 = phi i8 [ 0, %.lr.ph241.split ], [ 1, %.lr.ph241.split.us ] ; 3 uses
  %.2108.in.lcssa = phi i32 [ %.1107265, %.lr.ph241.split ], [ %.2108.in238.us, %.lr.ph241.split.us ]
  %.2108.lcssa = phi i32 [ %.2108237332, %.lr.ph241.split ], [ %.2108240.us, %.lr.ph241.split.us ] ; 2 uses
  %.1134 = phi i32 [ %i.er, %.lr.ph241.split ], [ %i.el, %.lr.ph241.split.us ]
  %.2102 = phi ptr [ %i.es, %.lr.ph241.split ], [ %i.em, %.lr.ph241.split.us ] ; 3 uses
  %sext159 = shl i32 %.1134, 24
  %i.ew = zext i32 %.1120263 to i64
  %scevgep308 = getelementptr i8, ptr %.0113264, i64 %i.ew
  %scevgep309 = getelementptr i8, ptr %.0113264, i64 1
  %i.ex = add i32 %.1120263, -1
  %i.ey = zext i32 %i.ex to i64
  %scevgep310 = getelementptr i8, ptr %scevgep309, i64 %i.ey
  %.not157426 = icmp eq i32 %.1120263, 0
  br i1 %.not157426, label %.loopexit, label %.lr.ph429

.split.us:                                        ; preds = %bb.ad
  %i.ez = getelementptr inbounds nuw i8, ptr %.1114.us423, i64 1
  br label %.lr.ph424, !llvm.loop !349

.lr.ph424:                                        ; preds = %.split.us.preheader, %.split.us
  %.1114.us423 = phi ptr [ %i.ez, %.split.us ], [ %.0113264, %.split.us.preheader ] ; 2 uses
  %.2121.us422 = phi i32 [ %i.fa, %.split.us ], [ %.1120263, %.split.us.preheader ]
  %i.fa = add i32 %.2121.us422, -1                ; 2 uses
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph424
  %i.fc = load i8, ptr %.1114.us423, align 1, !tbaa !52
  %i.fd = zext i8 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !56
  %sext158.us.mask = and i32 %i.ff, 255
  %i.fg = icmp eq i32 %sext158.us.mask, 46
  br i1 %i.fg, label %PatternHasWildcardInALabel.exit.thread, label %.split.us, !llvm.loop !349

.split:                                           ; preds = %bb.ag
  br label %.lr.ph429, !llvm.loop !349

.lr.ph429:                                        ; preds = %.split.preheader, %.split
  %.1114428 = phi ptr [ %i.fl, %.split ], [ %.0113264, %.split.preheader ] ; 2 uses
  %.2121427 = phi i32 [ %i.fm, %.split ], [ %.1120263, %.split.preheader ]
  %i.fh = load i8, ptr %.1114428, align 1, !tbaa !52
  %i.fi = zext i8 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !56
  %i.fl = getelementptr inbounds nuw i8, ptr %.1114428, i64 1 ; 2 uses
  %i.fm = add i32 %.2121427, -1                   ; 3 uses
  %sext158 = shl i32 %i.fk, 24                    ; 2 uses
  %i.fn = icmp eq i32 %sext158, %sext159
  br i1 %i.fn, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph429
  %i.fo = add nsw i32 %.2108.in.lcssa, -2
  br label %.loopexit

bb.af:                                            ; preds = %.lr.ph429
  %i.fp = icmp eq i32 %i.fm, 0
  br i1 %i.fp, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fq = icmp eq i32 %sext158, 771751936
  br i1 %i.fq, label %PatternHasWildcardInALabel.exit.thread, label %.split, !llvm.loop !349

bb.ah:                                            ; preds = %bb.x
  %spec.store.select = select i1 %.not149, i8 %.0128262, i8 0
  %i.fr = icmp eq i32 %.1120263, 0
  br i1 %i.fr, label %PatternHasWildcardInALabel.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fs = load i8, ptr %.0113264, align 1, !tbaa !52
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !56
  %sext150 = shl i32 %i.fv, 24
  %.not151 = icmp eq i32 %sext, %sext150
  br i1 %.not151, label %bb.aj, label %PatternHasWildcardInALabel.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.fw = getelementptr inbounds nuw i8, ptr %.0113264, i64 1
  %i.fx = add i32 %.1120263, -1
  %i.fy = add nsw i32 %.1107265, -1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph424, %bb.af, %.split.us.preheader, %.split.preheader, %bb.ae, %bb.aj
  %.4132 = phi i8 [ %spec.store.select, %bb.aj ], [ %.1129329, %bb.ae ], [ %.1129329, %.split.preheader ], [ %.1129329.ph, %.split.us.preheader ], [ %.1129329, %bb.af ], [ %.1129329.ph, %.lr.ph424 ]
  %.6125 = phi i32 [ %i.fx, %bb.aj ], [ %i.fm, %bb.ae ], [ 0, %.split.preheader ], [ 0, %.split.us.preheader ], [ 0, %bb.af ], [ 0, %.lr.ph424 ] ; 2 uses
  %.5118 = phi ptr [ %i.fw, %bb.aj ], [ %i.fl, %bb.ae ], [ %scevgep308, %.split.preheader ], [ %scevgep307, %.split.us.preheader ], [ %scevgep310, %bb.af ], [ %scevgep306, %.lr.ph424 ]
  %.6112 = phi i32 [ %i.fy, %bb.aj ], [ %i.fo, %bb.ae ], [ %.2108.lcssa, %.split.preheader ], [ %.2108.lcssa.ph, %.split.us.preheader ], [ %.2108.lcssa, %bb.af ], [ %.2108.lcssa.ph, %.lr.ph424 ] ; 2 uses
  %.5105 = phi ptr [ %i.ea, %bb.aj ], [ %.2102, %bb.ae ], [ %.2102, %.split.preheader ], [ %.2102.ph, %.split.us.preheader ], [ %.2102, %bb.af ], [ %.2102.ph, %.lr.ph424 ]
  %i.fz = icmp slt i32 %.6112, 1
  br i1 %i.fz, label %.thread202, label %bb.w

.thread202:                                       ; preds = %.loopexit, %bb.w, %NameHasALabel.exit, %.critedge
  %.1120.lcssa = phi i32 [ %spec.select, %.critedge ], [ 1, %NameHasALabel.exit ], [ %.6125, %.loopexit ], [ %.1120263, %bb.w ]
  %.lcssa220 = phi i1 [ true, %.critedge ], [ true, %NameHasALabel.exit ], [ %.not385.not, %bb.w ], [ %.not385.not, %.loopexit ]
  %i.ga = icmp eq i32 %.1120.lcssa, 0
  %or.cond21 = and i1 %i.ga, %.lcssa220
  br label %PatternHasWildcardInALabel.exit.thread
end_hunk_0
