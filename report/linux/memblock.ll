Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/memblock?download=true
inline.NumInlined: 105
inline.NumDeleted: 48
begin_hunk_0_@__next_mem_range:bb.a
  br i1 %or.cond, label %bb.i, label %should_skip_region.exit.thread.us.us.us198

bb.i:                                             ; preds = %bb.h
  %i.ah = and i32 %.val21.i.us.us.us, 8
  %.not27.i.us.us.us195 = icmp eq i32 %i.ah, 0
  %or.cond400 = or i1 %.not18.i, %.not27.i.us.us.us195
  br i1 %or.cond400, label %bb.j, label %should_skip_region.exit.thread.us.us.us198

bb.j:                                             ; preds = %bb.i
  %i.ai = and i32 %.val21.i.us.us.us, 64
  %.not28.i.us.us.us197 = icmp eq i32 %i.ai, 0
  %or.cond401 = and i1 %.not19.i, %.not28.i.us.us.us197
  br i1 %or.cond401, label %should_skip_region.exit.thread.us.us.us198, label %should_skip_region.exit.us

should_skip_region.exit.thread.us.us.us198:       ; preds = %bb.j, %bb.i, %bb.h, %.lr.ph136.split.us.split.us.split.split.us
  %i.aj = add i32 %.0134.us.us.us188, 1           ; 2 uses
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = icmp ugt i64 %i.e, %i.ak
  br i1 %i.al, label %.lr.ph136.split.us.split.us.split.split.us, label %._crit_edge, !llvm.loop !64

.lr.ph136.split.us.split.us.split.split:          ; preds = %.lr.ph136.split.us.split.us.split
  br i1 %.not18.i, label %.lr.ph136.split.us.split.us.split.split.split, label %.lr.ph136.split.us.split.us.split.split.split.us

.lr.ph136.split.us.split.us.split.split.split.us: ; preds = %.lr.ph136.split.us.split.us.split.split, %should_skip_region.exit.thread.us.us.us219
  %i.am = phi i64 [ %i.at, %should_skip_region.exit.thread.us.us.us219 ], [ %i.f, %.lr.ph136.split.us.split.us.split.split ]
  %.0134.us.us.us209 = phi i32 [ %i.as, %should_skip_region.exit.thread.us.us.us219 ], [ %i.b, %.lr.ph136.split.us.split.us.split.split ] ; 2 uses
  %i.an = getelementptr [24 x i8], ptr %i.i, i64 %i.am ; 3 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 20
  %.val.us.us.us210 = load i32, ptr %i.ao, align 4 ; 2 uses
  %.not15.i.us.us.us211 = icmp eq i32 %1, %.val.us.us.us210
  %or.cond.i.us.us.us212 = select i1 %i.k, i1 true, i1 %.not15.i.us.us.us211
  br i1 %or.cond.i.us.us.us212, label %bb.k, label %should_skip_region.exit.thread.us.us.us219

bb.k:                                             ; preds = %.lr.ph136.split.us.split.us.split.split.split.us
  %i.ap = getelementptr i8, ptr %i.an, i64 16
  %.val21.i.us.us.us213 = load i32, ptr %i.ap, align 8 ; 2 uses
  %i.aq = and i32 %.val21.i.us.us.us213, 10
  %or.cond402 = icmp eq i32 %i.aq, 2
  br i1 %or.cond402, label %bb.l, label %should_skip_region.exit.thread.us.us.us219

bb.l:                                             ; preds = %bb.k
  %i.ar = and i32 %.val21.i.us.us.us213, 64
  %.not28.i.us.us.us218 = icmp eq i32 %i.ar, 0
  %or.cond404 = and i1 %.not19.i, %.not28.i.us.us.us218
  br i1 %or.cond404, label %should_skip_region.exit.thread.us.us.us219, label %should_skip_region.exit.us

should_skip_region.exit.thread.us.us.us219:       ; preds = %bb.l, %bb.k, %.lr.ph136.split.us.split.us.split.split.split.us
  %i.as = add i32 %.0134.us.us.us209, 1           ; 2 uses
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = icmp ugt i64 %i.e, %i.at
  br i1 %i.au, label %.lr.ph136.split.us.split.us.split.split.split.us, label %._crit_edge, !llvm.loop !64

.lr.ph136.split.us.split.us.split.split.split:    ; preds = %.lr.ph136.split.us.split.us.split.split
  br i1 %.not19.i, label %.lr.ph136.split.us.split.us.split.split.split.split, label %.lr.ph136.split.us.split.us.split.split.split.split.us

.lr.ph136.split.us.split.us.split.split.split.split.us: ; preds = %.lr.ph136.split.us.split.us.split.split.split
  br i1 %i.k, label %.lr.ph136.split.us.split.us.split.split.split.split.us.split.us, label %.lr.ph136.split.us.split.us.split.split.split.split.us.split

.lr.ph136.split.us.split.us.split.split.split.split.us.split.us: ; preds = %.lr.ph136.split.us.split.us.split.split.split.split.us, %should_skip_region.exit.thread.us.us.us236.us
  %i.av = phi i64 [ %i.ba, %should_skip_region.exit.thread.us.us.us236.us ], [ %i.f, %.lr.ph136.split.us.split.us.split.split.split.split.us ]
  %.0134.us.us.us230.us = phi i32 [ %i.az, %should_skip_region.exit.thread.us.us.us236.us ], [ %i.b, %.lr.ph136.split.us.split.us.split.split.split.split.us ] ; 2 uses
  %i.aw = getelementptr [24 x i8], ptr %i.i, i64 %i.av ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %.val21.i.us.us.us234.us = load i32, ptr %i.ax, align 8
  %i.ay = and i32 %.val21.i.us.us.us234.us, 2
  %.not25.i.us.us.us235.us = icmp eq i32 %i.ay, 0
  br i1 %.not25.i.us.us.us235.us, label %should_skip_region.exit.thread.us.us.us236.us, label %should_skip_region.exit.us.sink.split

should_skip_region.exit.thread.us.us.us236.us:    ; preds = %.lr.ph136.split.us.split.us.split.split.split.split.us.split.us
  %i.az = add i32 %.0134.us.us.us230.us, 1        ; 2 uses
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = icmp ugt i64 %i.e, %i.ba
  br i1 %i.bb, label %.lr.ph136.split.us.split.us.split.split.split.split.us.split.us, label %._crit_edge, !llvm.loop !64

.lr.ph136.split.us.split.us.split.split.split.split.us.split: ; preds = %.lr.ph136.split.us.split.us.split.split.split.split.us, %should_skip_region.exit.thread.us.us.us236
  %i.bc = phi i64 [ %i.bi, %should_skip_region.exit.thread.us.us.us236 ], [ %i.f, %.lr.ph136.split.us.split.us.split.split.split.split.us ]
  %.0134.us.us.us230 = phi i32 [ %i.bh, %should_skip_region.exit.thread.us.us.us236 ], [ %i.b, %.lr.ph136.split.us.split.us.split.split.split.split.us ] ; 2 uses
  %i.bd = getelementptr [24 x i8], ptr %i.i, i64 %i.bc ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 20
  %.val.us.us.us231 = load i32, ptr %i.be, align 4
  %.not15.i.us.us.us232 = icmp eq i32 %1, %.val.us.us.us231
  br i1 %.not15.i.us.us.us232, label %bb.m, label %should_skip_region.exit.thread.us.us.us236

bb.m:                                             ; preds = %.lr.ph136.split.us.split.us.split.split.split.split.us.split
  %i.bf = getelementptr i8, ptr %i.bd, i64 16
  %.val21.i.us.us.us234 = load i32, ptr %i.bf, align 8
  %i.bg = and i32 %.val21.i.us.us.us234, 2
  %.not25.i.us.us.us235 = icmp eq i32 %i.bg, 0
  br i1 %.not25.i.us.us.us235, label %should_skip_region.exit.thread.us.us.us236, label %should_skip_region.exit.us

should_skip_region.exit.thread.us.us.us236:       ; preds = %bb.m, %.lr.ph136.split.us.split.us.split.split.split.split.us.split
  %i.bh = add i32 %.0134.us.us.us230, 1           ; 2 uses
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %i.bj = icmp ugt i64 %i.e, %i.bi
  br i1 %i.bj, label %.lr.ph136.split.us.split.us.split.split.split.split.us.split, label %._crit_edge, !llvm.loop !64

.lr.ph136.split.us.split.us.split.split.split.split: ; preds = %.lr.ph136.split.us.split.us.split.split.split, %should_skip_region.exit.thread.us.us
  %i.bk = phi i64 [ %i.bq, %should_skip_region.exit.thread.us.us ], [ %i.f, %.lr.ph136.split.us.split.us.split.split.split ]
  %.0134.us.us = phi i32 [ %i.bp, %should_skip_region.exit.thread.us.us ], [ %i.b, %.lr.ph136.split.us.split.us.split.split.split ] ; 2 uses
  %i.bl = getelementptr [24 x i8], ptr %i.i, i64 %i.bk ; 3 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 20
  %.val.us.us = load i32, ptr %i.bm, align 4      ; 2 uses
  %.not15.i.us.us = icmp eq i32 %1, %.val.us.us
  %or.cond.i.us.us = select i1 %i.k, i1 true, i1 %.not15.i.us.us
  br i1 %or.cond.i.us.us, label %bb.n, label %should_skip_region.exit.thread.us.us

bb.n:                                             ; preds = %.lr.ph136.split.us.split.us.split.split.split.split
  %i.bn = getelementptr i8, ptr %i.bl, i64 16
  %.val21.i.us.us = load i32, ptr %i.bn, align 8
  %i.bo = and i32 %.val21.i.us.us, 66
  %or.cond405.not = icmp eq i32 %i.bo, 66
  br i1 %or.cond405.not, label %should_skip_region.exit.us, label %should_skip_region.exit.thread.us.us

should_skip_region.exit.thread.us.us:             ; preds = %bb.n, %.lr.ph136.split.us.split.us.split.split.split.split
  %i.bp = add i32 %.0134.us.us, 1                 ; 2 uses
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = icmp ugt i64 %i.e, %i.bq
  br i1 %i.br, label %.lr.ph136.split.us.split.us.split.split.split.split, label %._crit_edge, !llvm.loop !64

.lr.ph136.split.us.split:                         ; preds = %.lr.ph136.split.us
  %i.bs = getelementptr [24 x i8], ptr %i.i, i64 %i.f
  br label %should_skip_region.exit.us.sink.split

should_skip_region.exit.us.sink.split:            ; preds = %.lr.ph136.split.us.split.us.split.split.split.split.us.split.us, %.lr.ph136.split.us.split
  %.lcssa367.sink = phi ptr [ %i.bs, %.lr.ph136.split.us.split ], [ %i.aw, %.lr.ph136.split.us.split.us.split.split.split.split.us.split.us ] ; 2 uses
  %.us-phi180.ph = phi i32 [ %i.b, %.lr.ph136.split.us.split ], [ %.0134.us.us.us230.us, %.lr.ph136.split.us.split.us.split.split.split.split.us.split.us ]
  %i.bt = getelementptr i8, ptr %.lcssa367.sink, i64 20
  %.val.us.us.us231.us.le = load i32, ptr %i.bt, align 4
  br label %should_skip_region.exit.us

should_skip_region.exit.us:                       ; preds = %bb.l, %bb.m, %bb.n, %bb.j, %bb.g, %bb.f, %should_skip_region.exit.us.sink.split
  %.us-phi178 = phi ptr [ %.lcssa367.sink, %should_skip_region.exit.us.sink.split ], [ %i.bl, %bb.n ], [ %i.r, %bb.g ], [ %i.bd, %bb.m ], [ %i.ad, %bb.j ], [ %i.r, %bb.f ], [ %i.an, %bb.l ] ; 2 uses
  %.us-phi180 = phi i32 [ %.us-phi180.ph, %should_skip_region.exit.us.sink.split ], [ %.0134.us.us, %bb.n ], [ %.0134.us.us.us, %bb.g ], [ %.0134.us.us.us230, %bb.m ], [ %.0134.us.us.us188, %bb.j ], [ %.0134.us.us.us, %bb.f ], [ %.0134.us.us.us209, %bb.l ]
  %.us-phi182 = phi i32 [ %.val.us.us.us231.us.le, %should_skip_region.exit.us.sink.split ], [ %.val.us.us, %bb.n ], [ %.val.us.us.us, %bb.g ], [ %1, %bb.m ], [ %.val.us.us.us189, %bb.j ], [ %.val.us.us.us, %bb.f ], [ %.val.us.us.us210, %bb.l ]
  %i.bu = load i64, ptr %.us-phi178, align 8      ; 2 uses
  %i.bv = getelementptr i8, ptr %.us-phi178, i64 8
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = add i64 %i.bw, %i.bu
  %.not94 = icmp eq ptr %5, null
  br i1 %.not94, label %bb.ac, label %bb.ab

.lr.ph136.split:                                  ; preds = %.lr.ph136
  br i1 %.not.i, label %.lr.ph136.split.split.us, label %.lr.ph136.split.split

.lr.ph136.split.split.us:                         ; preds = %.lr.ph136.split, %should_skip_region.exit.thread.us162
  %i.by = phi i64 [ %i.de, %should_skip_region.exit.thread.us162 ], [ %i.f, %.lr.ph136.split ]
  %.0134.us148 = phi i32 [ %i.dd, %should_skip_region.exit.thread.us162 ], [ %i.b, %.lr.ph136.split ] ; 2 uses
  %.074133.us149 = phi i32 [ %.579.ph.us163, %should_skip_region.exit.thread.us162 ], [ %i.d, %.lr.ph136.split ] ; 8 uses
  %i.bz = getelementptr [24 x i8], ptr %i.i, i64 %i.by ; 7 uses
  %i.ca = load i64, ptr %i.bz, align 8            ; 3 uses
  %i.cb = getelementptr i8, ptr %i.bz, i64 8
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = add i64 %i.cc, %i.ca                    ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bz, i64 20
  %.val.us150 = load i32, ptr %i.ce, align 4      ; 2 uses
  %.not15.i.us151 = icmp eq i32 %1, %.val.us150
  %or.cond.i.us152 = select i1 %i.k, i1 true, i1 %.not15.i.us151
  br i1 %or.cond.i.us152, label %bb.o, label %should_skip_region.exit.thread.us162

bb.o:                                             ; preds = %.lr.ph136.split.split.us
  br i1 %.not16.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr i8, ptr %i.bz, i64 16
  %.val21.i.us153 = load i32, ptr %i.cf, align 8
  %i.cg = and i32 %.val21.i.us153, 2
  %.not25.i.us154 = icmp eq i32 %i.cg, 0
  br i1 %.not25.i.us154, label %should_skip_region.exit.thread.us162, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not17.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr i8, ptr %i.bz, i64 16
  %.val22.i.us155 = load i32, ptr %i.ch, align 8
  %i.ci = and i32 %.val22.i.us155, 4
  %.not26.i.us156 = icmp eq i32 %i.ci, 0
  br i1 %.not26.i.us156, label %bb.s, label %should_skip_region.exit.thread.us162

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %.not18.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = getelementptr i8, ptr %i.bz, i64 16
  %.val23.i.us157 = load i32, ptr %i.cj, align 8
  %i.ck = and i32 %.val23.i.us157, 8
  %.not27.i.us158 = icmp eq i32 %i.ck, 0
  br i1 %.not27.i.us158, label %bb.u, label %should_skip_region.exit.thread.us162

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %.not19.i, label %bb.v, label %should_skip_region.exit.us161

bb.v:                                             ; preds = %bb.u
  %i.cl = getelementptr i8, ptr %i.bz, i64 16
  %.val24.i.us159 = load i32, ptr %i.cl, align 8
  %i.cm = and i32 %.val24.i.us159, 64
  %.not28.i.us160 = icmp eq i32 %i.cm, 0
  br i1 %.not28.i.us160, label %should_skip_region.exit.thread.us162, label %should_skip_region.exit.us161

should_skip_region.exit.us161:                    ; preds = %bb.v, %bb.u
  %i.cn = load i64, ptr %4, align 8               ; 2 uses
  %i.co = add i64 %i.cn, 1                        ; 2 uses
  %i.cp = sext i32 %.074133.us149 to i64          ; 2 uses
  %i.cq = icmp ugt i64 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph.us, label %should_skip_region.exit.thread.us162

.lr.ph.us:                                        ; preds = %should_skip_region.exit.us161
  %i.cr = load ptr, ptr %i.p, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.aa, %.lr.ph.us
  %i.cs = phi i64 [ %i.cp, %.lr.ph.us ], [ %i.db, %bb.aa ] ; 2 uses
  %.175130.us = phi i32 [ %.074133.us149, %.lr.ph.us ], [ %i.da, %bb.aa ] ; 4 uses
  %i.ct = getelementptr [24 x i8], ptr %i.cr, i64 %i.cs ; 3 uses
  %.not97.us = icmp eq i32 %.175130.us, 0
  br i1 %.not97.us, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cu = getelementptr i8, ptr %i.ct, i64 -24
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr i8, ptr %i.ct, i64 -16
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = add i64 %i.cx, %i.cv
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cz = phi i64 [ %i.cy, %bb.x ], [ 0, %bb.w ]  ; 2 uses
  %8 = icmp ugt i64 %i.cn, %i.cs
  br i1 %8, label %9, label %bb.z

9:                                                ; preds = %bb.y
  %10 = load i64, ptr %i.ct, align 8
  br label %bb.z

bb.z:                                             ; preds = %9, %bb.y
  %11 = phi i64 [ %10, %9 ], [ -1, %bb.y ]        ; 2 uses
  %.not98.us.a = icmp ult i64 %i.cz, %i.cd
  br i1 %.not98.us.a, label %12, label %should_skip_region.exit.thread.us162

12:                                               ; preds = %bb.z
  %13 = icmp ult i64 %i.ca, %11
  br i1 %13, label %.split.us164, label %bb.aa

bb.aa:                                            ; preds = %12
  %i.da = add i32 %.175130.us, 1                  ; 3 uses
  %i.db = sext i32 %i.da to i64                   ; 2 uses
  %i.dc = icmp ugt i64 %i.co, %i.db
  br i1 %i.dc, label %bb.w, label %should_skip_region.exit.thread.us162, !llvm.loop !65

should_skip_region.exit.thread.us162:             ; preds = %bb.z, %bb.aa, %should_skip_region.exit.us161, %bb.v, %bb.t, %bb.r, %bb.p, %.lr.ph136.split.split.us
  %.579.ph.us163 = phi i32 [ %.074133.us149, %bb.p ], [ %.074133.us149, %bb.v ], [ %.074133.us149, %.lr.ph136.split.split.us ], [ %.074133.us149, %bb.t ], [ %.074133.us149, %bb.r ], [ %.074133.us149, %should_skip_region.exit.us161 ], [ %.175130.us, %bb.z ], [ %i.da, %bb.aa ]
  %i.dd = add i32 %.0134.us148, 1                 ; 2 uses
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = icmp ugt i64 %i.e, %i.de
  br i1 %i.df, label %.lr.ph136.split.split.us, label %._crit_edge, !llvm.loop !64

.lr.ph136.split.split:                            ; preds = %.lr.ph136.split
  %i.dg = load i64, ptr %4, align 8               ; 2 uses
  %i.dh = add i64 %i.dg, 1                        ; 2 uses
  br label %should_skip_region.exit

should_skip_region.exit:                          ; preds = %.lr.ph136.split.split, %should_skip_region.exit.thread.loopexit
  %i.di = phi i64 [ %i.f, %.lr.ph136.split.split ], [ %i.eq, %should_skip_region.exit.thread.loopexit ]
  %.0134 = phi i32 [ %i.b, %.lr.ph136.split.split ], [ %i.ep, %should_skip_region.exit.thread.loopexit ] ; 2 uses
  %.074133 = phi i32 [ %i.d, %.lr.ph136.split.split ], [ %.175.lcssa, %should_skip_region.exit.thread.loopexit ] ; 3 uses
  %i.dj = getelementptr [24 x i8], ptr %i.i, i64 %i.di ; 3 uses
  %i.dk = load i64, ptr %i.dj, align 8            ; 3 uses
  %i.dl = getelementptr i8, ptr %i.dj, i64 8
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = add i64 %i.dm, %i.dk                    ; 2 uses
  %i.do = sext i32 %.074133 to i64                ; 2 uses
  %i.dp = icmp ugt i64 %i.dh, %i.do
  br i1 %i.dp, label %.lr.ph, label %should_skip_region.exit.thread.loopexit

.lr.ph:                                           ; preds = %should_skip_region.exit
  %i.dq = load ptr, ptr %i.p, align 8
  br label %bb.ah

bb.ab:                                            ; preds = %should_skip_region.exit.us
  store i64 %i.bu, ptr %5, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %should_skip_region.exit.us
  %.not95 = icmp eq ptr %6, null
  br i1 %.not95, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i64 %i.bx, ptr %6, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.not96 = icmp eq ptr %7, null
  br i1 %.not96, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 %.us-phi182, ptr %7, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dr = add i32 %.us-phi180, 1
  %i.ds = zext i32 %i.dr to i64
  %i.dt = and i64 %i.a, -4294967296
  %i.du = or disjoint i64 %i.dt, %i.ds
  br label %._crit_edge

bb.ah:                                            ; preds = %.lr.ph, %bb.aq
  %i.dv = phi i64 [ %i.do, %.lr.ph ], [ %i.en, %bb.aq ] ; 2 uses
  %.175130 = phi i32 [ %.074133, %.lr.ph ], [ %i.em, %bb.aq ] ; 4 uses
  %i.dw = getelementptr [24 x i8], ptr %i.dq, i64 %i.dv ; 3 uses
  %.not97 = icmp eq i32 %.175130, 0
  br i1 %.not97, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dx = getelementptr i8, ptr %i.dw, i64 -24
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = getelementptr i8, ptr %i.dw, i64 -16
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = add i64 %i.ea, %i.dy
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.ec = phi i64 [ %i.eb, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  %14 = icmp ugt i64 %i.dg, %i.dv
  br i1 %14, label %15, label %bb.ak

15:                                               ; preds = %bb.aj
  %16 = load i64, ptr %i.dw, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %15
  %17 = phi i64 [ %16, %15 ], [ -1, %bb.aj ]      ; 2 uses
  %.not98.a = icmp ult i64 %i.ec, %i.dn
  br i1 %.not98.a, label %18, label %should_skip_region.exit.thread.loopexit

18:                                               ; preds = %bb.ak
  %19 = icmp ult i64 %i.dk, %17
  br i1 %19, label %.split, label %bb.aq

.split:                                           ; preds = %18
  %i.ed = getelementptr i8, ptr %i.dj, i64 20
  %.val.le = load i32, ptr %i.ed, align 4
  br label %.split.us164

.split.us164:                                     ; preds = %12, %.split
  %.us-phi = phi i64 [ %i.dk, %.split ], [ %i.ca, %12 ]
  %.us-phi165 = phi i64 [ %i.dn, %.split ], [ %i.cd, %12 ] ; 2 uses
  %.us-phi166 = phi i32 [ %.val.le, %.split ], [ %.val.us150, %12 ]
  %.us-phi167 = phi i32 [ %.0134, %.split ], [ %.0134.us148, %12 ]
  %.us-phi168 = phi i64 [ %17, %.split ], [ %11, %12 ] ; 2 uses
  %.us-phi169 = phi i64 [ %i.ec, %.split ], [ %i.cz, %12 ]
  %.us-phi170 = phi i32 [ %.175130, %.split ], [ %.175130.us, %12 ]
  %.not99 = icmp eq ptr %5, null
  br i1 %.not99, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.split.us164
  %i.ee = tail call i64 @llvm.umax.i64(i64 %.us-phi, i64 %.us-phi169)
  store i64 %i.ee, ptr %5, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.split.us164
  %.not100 = icmp eq ptr %6, null
  br i1 %.not100, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ef = tail call i64 @llvm.umin.i64(i64 %.us-phi165, i64 %.us-phi168)
  store i64 %i.ef, ptr %6, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.not101 = icmp eq ptr %7, null
  br i1 %.not101, label %.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 %.us-phi166, ptr %7, align 4
  br label %.thread

.thread:                                          ; preds = %bb.ao, %bb.ap
  %.not102 = icmp ugt i64 %.us-phi165, %.us-phi168 ; 2 uses
  %i.eg = zext i1 %.not102 to i32
  %.276 = add i32 %.us-phi170, %i.eg
  %not..not102 = xor i1 %.not102, true
  %i.eh = zext i1 %not..not102 to i32
  %.2 = add i32 %.us-phi167, %i.eh
  %i.ei = zext i32 %.2 to i64
  %i.ej = sext i32 %.276 to i64
  %i.ek = shl nsw i64 %i.ej, 32
  %i.el = or disjoint i64 %i.ek, %i.ei
  br label %._crit_edge

bb.aq:                                            ; preds = %18
  %i.em = add i32 %.175130, 1                     ; 3 uses
  %i.en = sext i32 %i.em to i64                   ; 2 uses
  %i.eo = icmp ugt i64 %i.dh, %i.en
  br i1 %i.eo, label %bb.ah, label %should_skip_region.exit.thread.loopexit, !llvm.loop !65

should_skip_region.exit.thread.loopexit:          ; preds = %bb.aq, %bb.ak, %should_skip_region.exit
  %.175.lcssa = phi i32 [ %.074133, %should_skip_region.exit ], [ %.175130, %bb.ak ], [ %i.em, %bb.aq ]
  %i.ep = add i32 %.0134, 1                       ; 2 uses
  %i.eq = sext i32 %i.ep to i64                   ; 2 uses
  %i.er = icmp ugt i64 %i.e, %i.eq
  br i1 %i.er, label %should_skip_region.exit, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %should_skip_region.exit.thread.loopexit, %should_skip_region.exit.thread.us162, %should_skip_region.exit.thread.us.us.us219, %should_skip_region.exit.thread.us.us.us236, %should_skip_region.exit.thread.us.us.us236.us, %should_skip_region.exit.thread.us.us, %should_skip_region.exit.thread.us.us.us198, %should_skip_region.exit.thread.us.us.us, %bb.a, %bb.ag, %.thread
  %.sink = phi i64 [ %i.du, %bb.ag ], [ %i.el, %.thread ], [ -1, %should_skip_region.exit.thread.us.us.us236.us ], [ -1, %should_skip_region.exit.thread.us.us ], [ -1, %should_skip_region.exit.thread.us.us.us219 ], [ -1, %should_skip_region.exit.thread.us.us.us ], [ -1, %should_skip_region.exit.thread.us162 ], [ -1, %should_skip_region.exit.thread.us.us.us198 ], [ -1, %should_skip_region.exit.thread.us.us.us236 ], [ -1, %bb.a ], [ -1, %should_skip_region.exit.thread.loopexit ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define dso_local void @__next_mem_range_rev(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7) local_unnamed_addr #8 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i64 %i.a, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = icmp eq i64 %i.a, -1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %3, align 8
  %i.g = trunc i64 %i.f to i32
  %i.h = add i32 %i.g, -1                         ; 2 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %4, align 8
  %i.j = trunc i64 %i.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.076 = phi i32 [ %i.j, %bb.c ], [ %i.d, %bb.a ], [ 0, %bb.b ]
  %.0 = phi i32 [ %i.h, %bb.c ], [ %i.b, %bb.a ], [ %i.h, %bb.b ] ; 2 uses
  %i.k = icmp sgt i32 %.0, -1
  br i1 %i.k, label %.lr.ph139, label %._crit_edge

.lr.ph139:                                        ; preds = %bb.d
  %i.l = getelementptr i8, ptr %3, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr @memblock_memory, align 8
  %.not.i = icmp eq ptr %3, %i.n
  %i.o = icmp ugt i32 %1, 63
  %i.p = and i32 %2, 2
  %.not16.i = icmp eq i32 %i.p, 0
  %i.q = and i32 %2, 4
  %.not17.i = icmp eq i32 %i.q, 0
  %i.r = and i32 %2, 8
  %.not18.i = icmp eq i32 %i.r, 0
  %i.s = and i32 %2, 64
  %.not19.i = icmp eq i32 %i.s, 0
  %.not96 = icmp eq ptr %4, null
  %i.t = getelementptr i8, ptr %4, i64 24
  %i.u = zext nneg i32 %.0 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph139, %should_skip_region.exit.thread
  %indvars.iv = phi i64 [ %i.u, %.lr.ph139 ], [ %indvars.iv.next, %should_skip_region.exit.thread ] ; 5 uses
  %.177136 = phi i32 [ %.076, %.lr.ph139 ], [ %.682.ph, %should_skip_region.exit.thread ] ; 9 uses
  %i.v = getelementptr [24 x i8], ptr %i.m, i64 %indvars.iv ; 7 uses
  %i.w = load i64, ptr %i.v, align 8              ; 5 uses
  %i.x = getelementptr i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = add i64 %i.y, %i.w                       ; 3 uses
  %i.aa = getelementptr i8, ptr %i.v, i64 20
  %.val = load i32, ptr %i.aa, align 4            ; 3 uses
  br i1 %.not.i, label %bb.f, label %should_skip_region.exit

bb.f:                                             ; preds = %bb.e
  %.not15.i = icmp eq i32 %1, %.val
  %or.cond.i = select i1 %i.o, i1 true, i1 %.not15.i
  br i1 %or.cond.i, label %bb.g, label %should_skip_region.exit.thread

bb.g:                                             ; preds = %bb.f
  br i1 %.not16.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %i.v, i64 16
  %.val21.i = load i32, ptr %i.ab, align 8
  %i.ac = and i32 %.val21.i, 2
  %.not25.i = icmp eq i32 %i.ac, 0
  br i1 %.not25.i, label %should_skip_region.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %.not17.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %i.v, i64 16
  %.val22.i = load i32, ptr %i.ad, align 8
  %i.ae = and i32 %.val22.i, 4
  %.not26.i = icmp eq i32 %i.ae, 0
  br i1 %.not26.i, label %bb.k, label %should_skip_region.exit.thread

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %.not18.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr i8, ptr %i.v, i64 16
  %.val23.i = load i32, ptr %i.af, align 8
  %i.ag = and i32 %.val23.i, 8
  %.not27.i = icmp eq i32 %i.ag, 0
  br i1 %.not27.i, label %bb.m, label %should_skip_region.exit.thread

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %.not19.i, label %should_skip_region.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr i8, ptr %i.v, i64 16
  %.val24.i = load i32, ptr %i.ah, align 8
  %i.ai = and i32 %.val24.i, 64
  %.not28.i = icmp eq i32 %i.ai, 0
  br i1 %.not28.i, label %should_skip_region.exit.thread, label %should_skip_region.exit

should_skip_region.exit:                          ; preds = %bb.m, %bb.n, %bb.e
  br i1 %.not96, label %bb.o, label %.preheader

.preheader:                                       ; preds = %should_skip_region.exit
  %i.aj = icmp sgt i32 %.177136, -1
  br i1 %i.aj, label %.lr.ph, label %should_skip_region.exit.thread

.lr.ph:                                           ; preds = %.preheader
  %i.ak = load ptr, ptr %i.t, align 8
  %i.al = load i64, ptr %4, align 8
  br label %bb.v

bb.o:                                             ; preds = %should_skip_region.exit
  %.not97 = icmp eq ptr %5, null
  br i1 %.not97, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 %i.w, ptr %5, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not98 = icmp eq ptr %6, null
  br i1 %.not98, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 %i.z, ptr %6, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not99 = icmp eq ptr %7, null
  br i1 %.not99, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %.val, ptr %7, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.am = add nuw i64 %indvars.iv, 4294967295
  %i.an = and i64 %i.am, 4294967295
  %i.ao = sext i32 %.177136 to i64
  %i.ap = shl nsw i64 %i.ao, 32
  %i.aq = or disjoint i64 %i.ap, %i.an
  br label %._crit_edge

bb.v:                                             ; preds = %.lr.ph, %bb.ah
  %.278133 = phi i32 [ %.177136, %.lr.ph ], [ %i.bl, %bb.ah ] ; 6 uses
  %i.ar = zext nneg i32 %.278133 to i64           ; 2 uses
  %i.as = getelementptr [24 x i8], ptr %i.ak, i64 %i.ar ; 3 uses
  %.not100 = icmp eq i32 %.278133, 0
  br i1 %.not100, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.at = getelementptr i8, ptr %i.as, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr i8, ptr %i.as, i64 -16
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = add i64 %i.aw, %i.au
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ay = phi i64 [ %i.ax, %bb.w ], [ 0, %bb.v ]  ; 3 uses
  %i.az = icmp ugt i64 %i.al, %i.ar
  br i1 %i.az, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ba = load i64, ptr %i.as, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.bb = phi i64 [ %i.ba, %bb.y ], [ -1, %bb.x ] ; 2 uses
  %.not101 = icmp ugt i64 %i.bb, %i.w
  br i1 %.not101, label %bb.aa, label %should_skip_region.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.bc = icmp ugt i64 %i.z, %i.ay
  br i1 %i.bc, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %.not102 = icmp eq ptr %5, null
  br i1 %.not102, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = tail call i64 @llvm.umax.i64(i64 %i.w, i64 %i.ay)
  store i64 %i.bd, ptr %5, align 8
  br label %bb.ad
end_hunk_0
begin_hunk_1_@memblock_is_region_memory:bb.a
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr [24 x i8], ptr %.val8, i64 %i.d ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ult i64 %0, %i.f
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = add i64 %i.i, %i.f                       ; 2 uses
  %.not.i = icmp ult i64 %0, %i.j
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw i32 %i.c, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.220.ph.i = phi i32 [ %.018.i, %bb.b ], [ %i.k, %bb.d ] ; 2 uses
  %.2.ph.i = phi i32 [ %i.c, %bb.b ], [ %.017.i, %bb.d ] ; 2 uses
  %i.l = icmp ult i32 %.220.ph.i, %.2.ph.i
  br i1 %i.l, label %bb.b, label %memblock_search.exit.thread, !llvm.loop !3

bb.f:                                             ; preds = %bb.c
  %i.m = tail call i64 @llvm.uadd.sat.i64(i64 %1, i64 %0)
  %i.n = icmp uge i64 %i.j, %i.m
  br label %memblock_search.exit.thread

memblock_search.exit.thread:                      ; preds = %bb.e, %bb.f
  %.0 = phi i1 [ %i.n, %bb.f ], [ false, %bb.e ]
  ret i1 %.0
}

; Function Attrs: cold fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define dso_local noundef zeroext i1 @memblock_is_region_reserved(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @memblock, i64 56), align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %memblock_overlaps_region.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memblock, i64 80), align 8
  %i.c = tail call i64 @llvm.uadd.sat.i64(i64 %1, i64 %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.013.i = phi i64 [ 0, %.lr.ph.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.d = getelementptr [24 x i8], ptr %i.b, i64 %.013.i ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, %i.e
  %i.i = icmp ult i64 %0, %i.h
  %i.j = icmp ult i64 %i.e, %i.c
  %narrow.i.not.not.i = and i1 %i.j, %i.i         ; 2 uses
  %i.k = add nuw i64 %.013.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.k, %i.a
  %or.cond = select i1 %narrow.i.not.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %memblock_overlaps_region.exit, label %bb.b, !llvm.loop !0

memblock_overlaps_region.exit:                    ; preds = %bb.b, %bb.a
  %.lcssa.i = phi i1 [ false, %bb.a ], [ %narrow.i.not.not.i, %bb.b ]
  ret i1 %.lcssa.i
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @memblock_trim_memory(i64 noundef %0) local_unnamed_addr #4 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memblock, i64 40), align 8 ; 4 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @memblock, i64 16), align 8
  %i.c = getelementptr [24 x i8], ptr %i.a, i64 %i.b
  %i.d = icmp ult ptr %i.a, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = add i64 %0, -1
  %i.f = sub i64 0, %0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.g = phi ptr [ %i.a, %.lr.ph ], [ %i.z, %bb.f ]
  %.023 = phi ptr [ %i.a, %.lr.ph ], [ %i.y, %bb.f ] ; 7 uses
  %i.h = load i64, ptr %.023, align 8             ; 3 uses
  %i.i = getelementptr i8, ptr %.023, i64 8       ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, %i.h                       ; 2 uses
  %i.l = add i64 %i.h, -1
  %i.m = or i64 %i.l, %i.e
  %i.n = add i64 %i.m, 1                          ; 4 uses
  %i.o = and i64 %i.k, %i.f                       ; 3 uses
  %i.p = icmp eq i64 %i.n, %i.h
  %i.q = icmp eq i64 %i.o, %i.k
  %or.cond = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.n, %i.o
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %i.n, ptr %.023, align 8
  %i.s = sub nuw i64 %i.o, %i.n
  store i64 %i.s, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = ptrtoint ptr %.023 to i64
  %i.u = ptrtoint ptr %i.g to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 24
  tail call fastcc void @memblock_remove_region(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 16), i64 noundef %i.w) #28, !srcloc !103
  %i.x = getelementptr i8, ptr %.023, i64 -24
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.1 = phi ptr [ %.023, %bb.b ], [ %.023, %bb.d ], [ %i.x, %bb.e ]
  %i.y = getelementptr i8, ptr %.1, i64 24        ; 2 uses
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memblock, i64 40), align 8 ; 2 uses
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @memblock, i64 16), align 8
  %i.ab = getelementptr [24 x i8], ptr %i.z, i64 %i.aa
  %i.ac = icmp ult ptr %i.y, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !102

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none)
define dso_local void @memblock_set_current_limit(i64 noundef %0) local_unnamed_addr #14 section ".init.text" align 16 prefalign(16) {
bb.a:
  store i64 %0, ptr getelementptr inbounds nuw (i8, ptr @memblock, i64 8), align 8
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none)
define dso_local i64 @memblock_get_current_limit() local_unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @memblock, i64 8), align 8
  ret i64 %i.a
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @memblock_dump_all() local_unnamed_addr #4 section ".init.text" align 16 prefalign(16) {
bb.a:
  %.b = load i1, ptr @memblock_debug, align 4
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @__memblock_dump_all() #28, !srcloc !104
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @__memblock_dump_all() unnamed_addr #4 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #27 ; 0 uses
  %i.b = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 32), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 72)) #27 ; 0 uses
  tail call fastcc void @memblock_dump(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 16)) #28, !srcloc !105
  tail call fastcc void @memblock_dump(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 56)) #28, !srcloc !106
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none)
define dso_local void @memblock_allow_resize() local_unnamed_addr #14 section ".init.text" align 16 prefalign(16) {
bb.a:
  store i1 true, ptr @memblock_can_resize, align 4
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(write, argmem: read, inaccessiblemem: none, target_mem: none)
define internal noundef i32 @early_memblock(ptr nofree noundef readonly %0) #15 section ".init.text" align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.24) #24
  %.not2 = icmp eq ptr %i.a, null
  br i1 %.not2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i1 true, ptr @memblock_debug, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @reset_all_zones_managed_pages() local_unnamed_addr #4 section ".init.text" align 16 prefalign(16) {
bb.a:
  %.b = load i1, ptr @reset_managed_pages_done, align 4
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @first_online_pgdat() #24  ; 2 uses
  %.not3 = icmp eq ptr %i.a, null
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %reset_node_managed_pages.exit
  %.04 = phi ptr [ %5, %reset_node_managed_pages.exit ], [ %i.a, %bb.b ] ; 4 uses
  %0 = getelementptr i8, ptr %.04, i64 5376       ; 2 uses
  %1 = icmp ult ptr %.04, %0
  br i1 %1, label %.lr.ph.i, label %reset_node_managed_pages.exit

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.05.i = phi ptr [ %3, %.lr.ph.i ], [ %.04, %.lr.ph ] ; 2 uses
  %2 = getelementptr i8, ptr %.05.i, i64 144
  store volatile i64 0, ptr %2, align 8
  %3 = getelementptr i8, ptr %.05.i, i64 1344     ; 2 uses
  %4 = icmp ult ptr %3, %0
  br i1 %4, label %.lr.ph.i, label %reset_node_managed_pages.exit, !llvm.loop !107

reset_node_managed_pages.exit:                    ; preds = %.lr.ph.i, %.lr.ph
  %5 = tail call ptr @next_online_pgdat(ptr noundef nonnull %.04) #24 ; 2 uses
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !108

._crit_edge:                                      ; preds = %reset_node_managed_pages.exit, %bb.b
  store i1 true, ptr @reset_managed_pages_done, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @first_online_pgdat() local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @next_online_pgdat(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @memblock_free_all() local_unnamed_addr #4 section ".init.text" align 16 prefalign(16) {
bb.a:
  tail call void @reset_all_zones_managed_pages() #28
  %i.a = tail call fastcc i64 @free_low_memory_core_early() #28, !srcloc !109
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @_totalram_pages, i64 %i.a, ptr nonnull elementtype(i64) @_totalram_pages) #26, !srcloc !110
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc i64 @free_low_memory_core_early() unnamed_addr #4 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 0, ptr %i.b, align 8, !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.d = tail call fastcc range(i32 -12, 1) i32 @memblock_setclr_flag(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 16), i64 noundef 0, i64 noundef -1, i32 noundef 0, i32 noundef 1) #28, !srcloc !21 ; 0 uses
  tail call fastcc void @memmap_init_reserved_pages() #28, !srcloc !112
  store i64 0, ptr %i.c, align 8
  call void @__next_mem_range(ptr noundef nonnull %i.c, i32 noundef -1, i32 noundef 0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 16), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 56), ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #25
  %i.e = load i64, ptr %i.c, align 8
  %.not2 = icmp eq i64 %i.e, -1
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %__free_memory_core.exit
  %.03 = phi i64 [ %i.m, %__free_memory_core.exit ], [ 0, %bb.a ]
  %i.f = load i64, ptr %i.a, align 8
  %i.g = load i64, ptr %i.b, align 8
  %i.h = add i64 %i.f, 4095
  %i.i = lshr i64 %i.h, 12                        ; 3 uses
  %i.j = lshr i64 %i.g, 12
  %i.k = load i64, ptr @max_low_pfn, align 8
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.j, i64 %i.k) ; 3 uses
  %.not.i = icmp samesign ult i64 %i.i, %spec.select.i
  br i1 %.not.i, label %bb.b, label %__free_memory_core.exit

bb.b:                                             ; preds = %.lr.ph
  call fastcc void @__free_pages_memory(i64 noundef %i.i, i64 noundef %spec.select.i) #28, !srcloc !113
  %i.l = sub nuw nsw i64 %spec.select.i, %i.i
  br label %__free_memory_core.exit

__free_memory_core.exit:                          ; preds = %.lr.ph, %bb.b
  %.010.i = phi i64 [ %i.l, %bb.b ], [ 0, %.lr.ph ]
  %i.m = add i64 %.010.i, %.03                    ; 2 uses
  call void @__next_mem_range(ptr noundef nonnull %i.c, i32 noundef -1, i32 noundef 0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 16), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 56), ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #25
  %i.n = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.n, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !111

._crit_edge:                                      ; preds = %__free_memory_core.exit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.m, %__free_memory_core.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %.0.lcssa
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @reserve_mem_find_by_name(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #9 align 16 prefalign(16) {
bb.a:
  tail call void @mutex_lock(ptr noundef nonnull @reserve_mem_lock) #24
  %i.a = load i32, ptr @reserved_mem_count, align 4 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %reserve_mem_find_by_name_nolock.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.a to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.c = getelementptr [32 x i8], ptr @reserved_mem_table, i64 %indvars.iv.i ; 5 uses
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = tail call i32 @strcmp(ptr noundef readonly %0, ptr noundef %i.c) #24
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %reserve_mem_find_by_name_nolock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %reserve_mem_find_by_name_nolock.exit.thread, label %.lr.ph.i, !llvm.loop !4

reserve_mem_find_by_name_nolock.exit:             ; preds = %bb.b
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %reserve_mem_find_by_name_nolock.exit.thread, label %bb.d

bb.d:                                             ; preds = %reserve_mem_find_by_name_nolock.exit
  %i.h = getelementptr i8, ptr %i.c, i64 24
  %i.i = getelementptr i8, ptr %i.c, i64 16
  %i.j = load i64, ptr %i.i, align 8
  store i64 %i.j, ptr %1, align 8
  %i.k = load i64, ptr %i.h, align 8
  store i64 %i.k, ptr %2, align 8
  br label %reserve_mem_find_by_name_nolock.exit.thread

reserve_mem_find_by_name_nolock.exit.thread:      ; preds = %bb.c, %bb.a, %reserve_mem_find_by_name_nolock.exit, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %reserve_mem_find_by_name_nolock.exit ], [ 0, %bb.a ], [ 0, %bb.c ]
  tail call void @mutex_unlock(ptr noundef nonnull @reserve_mem_lock) #24
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @reserve_mem_release_by_name(ptr noundef %0) local_unnamed_addr #9 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [28 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.a, i8 0, i64 28, i1 false), !annotation !18
  tail call void @mutex_lock(ptr noundef nonnull @reserve_mem_lock) #24
  %i.b = load i32, ptr @reserved_mem_count, align 4 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader.i, label %reserve_mem_find_by_name_nolock.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.d = getelementptr [32 x i8], ptr @reserved_mem_table, i64 %indvars.iv.i ; 5 uses
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = tail call i32 @strcmp(ptr noundef readonly %0, ptr noundef %i.d) #24
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %reserve_mem_find_by_name_nolock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %reserve_mem_find_by_name_nolock.exit.thread, label %.lr.ph.i, !llvm.loop !4

reserve_mem_find_by_name_nolock.exit:             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %reserve_mem_find_by_name_nolock.exit.thread, label %bb.d

bb.d:                                             ; preds = %reserve_mem_find_by_name_nolock.exit
  %i.j = getelementptr i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = load i64, ptr @page_offset_base, align 8
  %i.m = add i64 %i.l, %i.k                       ; 7 uses
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr i8, ptr %i.n, i64 %i.f     ; 2 uses
  %i.p = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 28, ptr noundef nonnull @.str.13, ptr noundef %0) #24 ; 0 uses
  %i.q = icmp uge i64 %i.m, ptrtoint (ptr @_stext to i64)
  %i.r = icmp ult i64 %i.m, ptrtoint (ptr @_end to i64)
  %or.cond.i.i = and i1 %i.q, %i.r
  %i.s = icmp uge i64 %i.m, ptrtoint (ptr @__init_begin to i64)
  %i.t = icmp ult i64 %i.m, ptrtoint (ptr @__init_end to i64)
  %i.u = and i1 %i.s, %i.t
  %i.v = or i1 %or.cond.i.i, %i.u
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr @phys_base, align 8        ; 2 uses
  %i.x = getelementptr i8, ptr %i.o, i64 -1
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = add i64 %i.y, 2147483648
  %i.aa = add i64 %i.z, %i.w
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ab = icmp ugt i64 %i.m, -2147483649
  %i.ac = load i64, ptr @phys_base, align 8       ; 2 uses
  %i.ad = load i64, ptr @page_offset_base, align 8
  %i.ae = sub i64 -2147483648, %i.ad              ; 2 uses
  %i.af = select i1 %i.ab, i64 %i.ac, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.o, i64 -1      ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = add i64 %i.ah, 2147483648
  %i.aj = icmp ugt ptr %i.ag, inttoptr (i64 -2147483649 to ptr)
  %i.ak = select i1 %i.aj, i64 %i.ac, i64 %i.ae
  %i.al = add i64 %i.ai, %i.ak
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.013.in.i = phi i64 [ %i.aa, %bb.e ], [ %i.al, %bb.f ]
  %.pn.i = phi i64 [ %i.w, %bb.e ], [ %i.af, %bb.f ]
  %.013.i = add i64 %.013.in.i, 1
  %.0.i = add i64 %i.m, 2147487743
  %i.am = add i64 %.0.i, %.pn.i
  %i.an = lshr i64 %i.am, 12
  %i.ao = lshr i64 %.013.i, 12                    ; 5 uses
  %i.ap = tail call fastcc i64 @first_valid_pfn(i64 noundef %i.an, i64 noundef %i.ao) #25, !srcloc !19 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  br i1 %i.aq, label %.lr.ph.split.us.i, label %free_reserved_area.exit

.lr.ph.split.us.i:                                ; preds = %bb.g, %next_valid_pfn.exit.us.i
  %.02126.us.i = phi i64 [ %i.ba, %next_valid_pfn.exit.us.i ], [ 0, %bb.g ]
  %.02225.us.i = phi i64 [ %.0.i.us.i, %next_valid_pfn.exit.us.i ], [ %i.ap, %bb.g ] ; 2 uses
  %i.ar = load i64, ptr @vmemmap_base, align 8    ; 2 uses
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr [64 x i8], ptr %i.as, i64 %.02225.us.i ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.ar
  %i.aw = shl i64 %i.av, 6
  %i.ax = load i64, ptr @page_offset_base, align 8
  %i.ay = add i64 %i.aw, %i.ax
  %i.az = inttoptr i64 %i.ay to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(4096) %i.az, i8 0, i64 4096, i1 false)
  tail call void @free_reserved_page(ptr noundef %i.at) #24
  %i.ba = add i64 %.02126.us.i, 1                 ; 3 uses
  %i.bb = add nuw nsw i64 %.02225.us.i, 1         ; 4 uses
  %.not.i.us.i = icmp samesign ult i64 %i.bb, %i.ao
  br i1 %.not.i.us.i, label %bb.h, label %__free_reserved_area.exit

bb.h:                                             ; preds = %.lr.ph.split.us.i
  %i.bc = and i64 %i.bb, 511
  %.not11.i.us.i = icmp eq i64 %i.bc, 0
  br i1 %.not11.i.us.i, label %bb.i, label %next_valid_pfn.exit.us.i

bb.i:                                             ; preds = %bb.h
  %i.bd = tail call fastcc i64 @first_valid_pfn(i64 noundef %i.bb, i64 noundef range(i64 0, 4503599627370496) %i.ao) #25, !srcloc !20
  br label %next_valid_pfn.exit.us.i

next_valid_pfn.exit.us.i:                         ; preds = %bb.i, %bb.h
  %.0.i.us.i = phi i64 [ %i.bd, %bb.i ], [ %i.bb, %bb.h ] ; 2 uses
  %i.be = icmp ult i64 %.0.i.us.i, %i.ao
  br i1 %i.be, label %.lr.ph.split.us.i, label %__free_reserved_area.exit, !llvm.loop !1

__free_reserved_area.exit:                        ; preds = %.lr.ph.split.us.i, %next_valid_pfn.exit.us.i
  %.not14 = icmp eq i64 %i.ba, 0
  br i1 %.not14, label %free_reserved_area.exit, label %bb.j

bb.j:                                             ; preds = %__free_reserved_area.exit
  %i.bf = shl i64 %i.ba, 2
  %i.bg = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, i64 noundef %i.bf) #27 ; 0 uses
  br label %free_reserved_area.exit

free_reserved_area.exit:                          ; preds = %bb.g, %__free_reserved_area.exit, %bb.j
  store i64 0, ptr %i.i, align 8
  br label %reserve_mem_find_by_name_nolock.exit.thread

reserve_mem_find_by_name_nolock.exit.thread:      ; preds = %bb.c, %bb.a, %reserve_mem_find_by_name_nolock.exit, %free_reserved_area.exit
  %.0 = phi i32 [ 1, %free_reserved_area.exit ], [ 0, %reserve_mem_find_by_name_nolock.exit ], [ 0, %bb.a ], [ 0, %bb.c ]
  call void @mutex_unlock(ptr noundef nonnull @reserve_mem_lock) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.0
}

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal range(i32 -22, 2) i32 @reserve_mem(ptr noundef %0) #4 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @reserved_mem_count, align 4
  %i.e = icmp sgt i32 %i.d, 7
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #27 ; 0 uses
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.g = call i64 @memparse(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #24 ; 3 uses
  %.not22 = icmp eq i64 %i.g, 0
  br i1 %.not22, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.i = icmp eq ptr %i.h, %0
  br i1 %i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load i8, ptr %i.h, align 1
  %.not23 = icmp eq i8 %i.j, 58
  br i1 %.not23, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr i8, ptr %i.h, i64 1
  %i.l = call i64 @memparse(ptr noundef %i.k, ptr noundef nonnull %i.a) #24
  %i.m = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.n = load i8, ptr %i.m, align 1
  %.not24 = icmp eq i8 %i.n, 58
  br i1 %.not24, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %spec.store.select = call i64 @llvm.umax.i64(i64 %i.l, i64 64)
  %i.o = getelementptr i8, ptr %i.m, i64 1        ; 7 uses
  %i.p = call i64 @strlen(ptr noundef %i.o) #24
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  %i.s = icmp sgt i32 %i.q, 15
  %or.cond = or i1 %i.r, %i.s
  br i1 %or.cond, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.h
  store ptr %i.o, ptr %i.a, align 8
  %i.t = load i8, ptr %i.o, align 1               ; 2 uses
  %.not2530 = icmp eq i8 %i.t, 0
  br i1 %.not2530, label %.thread, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %i.u = getelementptr i8, ptr %storemerge31, i64 1 ; 3 uses
  store ptr %i.u, ptr %i.a, align 8
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  %.not25 = icmp eq i8 %i.v, 0
  br i1 %.not25, label %.thread, label %.lr.ph, !llvm.loop !114

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %i.w = phi i8 [ %i.v, %bb.i ], [ %i.t, %.preheader ]
  %storemerge31 = phi ptr [ %i.u, %bb.i ], [ %i.o, %.preheader ]
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr i8, ptr @_ctype, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = and i8 %i.z, 32
  %.not26 = icmp eq i8 %i.aa, 0
  br i1 %.not26, label %bb.j, label %bb.i

bb.j:                                             ; preds = %.lr.ph
  %i.ab = call i32 @reserve_mem_find_by_name(ptr noundef %i.o, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #25
  %.not28 = icmp eq i32 %i.ab, 0
  br i1 %.not28, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %i.o) #27 ; 0 uses
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ad = call i64 @memblock_phys_alloc_range(i64 noundef range(i64 1, 0) %i.g, i64 noundef %spec.store.select, i64 noundef 0, i64 noundef 0) #25 ; 2 uses
  %.not29 = icmp eq i64 %i.ad, 0
  br i1 %.not29, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #27 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.af = load i32, ptr @reserved_mem_count, align 4 ; 2 uses
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr @reserved_mem_count, align 4
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr [32 x i8], ptr @reserved_mem_table, i64 %i.ah ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  store i64 %i.ad, ptr %i.aj, align 16
  %i.ak = getelementptr i8, ptr %i.ai, i64 24
  store i64 %i.g, ptr %i.ak, align 8
  %i.al = call i64 @sized_strscpy(ptr noundef %i.ai, ptr noundef %i.o, i64 noundef 16) #24 ; 0 uses
  br label %bb.o

.thread:                                          ; preds = %bb.i, %.preheader, %bb.a, %bb.e, %bb.d, %bb.f, %bb.g, %bb.h
  %i.am = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #27 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n, %bb.m, %bb.k, %bb.c
  %.0 = phi i32 [ -16, %bb.c ], [ -22, %.thread ], [ -16, %bb.k ], [ -12, %bb.m ], [ 1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal noundef i32 @memblock_init_debugfs() #4 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @reserved_mem_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.29, ptr noundef null) #24
  %i.c = load i32, ptr @reserved_mem_count, align 4
  %.not2 = icmp eq i32 %i.c, 0
  br i1 %.not2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @debugfs_create_file_full(ptr noundef nonnull @.str.30, i16 noundef zeroext 292, ptr noundef %i.b, ptr noundef null, ptr noundef null, ptr noundef nonnull @memblock_reserve_mem_fops) #24 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @memblock_insert_region(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #4 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %.not = icmp ult i64 %i.a, %i.c
  br i1 %.not, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "674: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 674b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 674) #26, !srcloc !115
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.7, i32 585, i32 0, i64 16) #26, !srcloc !116
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = sext i32 %1 to i64                       ; 2 uses
  %i.g = getelementptr [24 x i8], ptr %i.e, i64 %i.f ; 6 uses
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %i.i = sub i64 %i.a, %i.f
  %i.j = mul i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %i.g, i64 %i.j, i1 false)
  store i64 %2, ptr %i.g, align 8
  %i.k = getelementptr i8, ptr %i.g, i64 8
  store i64 %3, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %i.g, i64 16
  store i32 %5, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.g, i64 20
  store i32 %4, ptr %i.m, align 4
  %i.n = load i64, ptr %0, align 8
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %0, align 8
  %i.p = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, %3
  store i64 %i.r, ptr %i.p, align 8
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc range(i32 -1, 1) i32 @memblock_double_array(ptr nofree noundef captures(address) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #4 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.c = tail call zeroext i1 @slab_is_available() #24 ; 3 uses
  %i.d = zext i1 %i.c to i32
  %.b64 = load i1, ptr @memblock_can_resize, align 4
  br i1 %.b64, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.14, ptr noundef %i.f) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 8          ; 6 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = mul i64 %i.h, 24                         ; 3 uses
  %i.j = mul i64 %i.h, 48                         ; 3 uses
  %i.k = add i64 %i.i, 4088
  %i.l = and i64 %i.k, -4096
  %i.m = add i64 %i.j, 4080
  %i.n = and i64 %i.m, -4096                      ; 3 uses
  %i.o = icmp eq ptr %0, getelementptr inbounds nuw (i8, ptr @memblock, i64 16)
  %memblock_memory_in_slab.memblock_reserved_in_slab = select i1 %i.o, ptr @memblock_memory_in_slab, ptr @memblock_reserved_in_slab ; 2 uses
  br i1 %i.c, label %_kmalloc_noprof.exit, label %bb.f

_kmalloc_noprof.exit:                             ; preds = %bb.c
  %i.p = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, -1) %i.j, i32 noundef 3264) #29 ; 4 uses
  %.not66 = icmp eq ptr %i.p, null
  br i1 %.not66, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_kmalloc_noprof.exit
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 2147483648
  %i.s = icmp ugt ptr %i.p, inttoptr (i64 -2147483649 to ptr)
  %i.t = load i64, ptr @phys_base, align 8
  %i.u = load i64, ptr @page_offset_base, align 8
  %i.v = sub i64 -2147483648, %i.u
  %i.w = select i1 %i.s, i64 %i.t, i64 %i.v
  %i.x = add i64 %i.r, %i.w
  br label %bb.e

bb.e:                                             ; preds = %_kmalloc_noprof.exit, %bb.d
  %i.y = phi i64 [ %i.x, %bb.d ], [ 0, %_kmalloc_noprof.exit ] ; 2 uses
  store i64 %i.y, ptr %i.a, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %.not = icmp eq ptr %0, getelementptr inbounds nuw (i8, ptr @memblock, i64 56) ; 2 uses
  %spec.select = select i1 %.not, i64 %2, i64 0   ; 2 uses
  %spec.select70 = select i1 %.not, i64 %1, i64 0 ; 2 uses
  %i.z = add i64 %spec.select, %spec.select70
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @memblock, i64 8), align 8
  %i.ab = tail call fastcc i64 @memblock_find_in_range(i64 noundef %i.z, i64 noundef %i.aa, i64 noundef %i.n) #28 ; 3 uses
  store i64 %i.ab, ptr %i.a, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = icmp ne i64 %spec.select, 0
  %or.cond = and i1 %i.ad, %i.ac
  br i1 %or.cond, label %bb.g, label %thread-pre-split

bb.g:                                             ; preds = %bb.f
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @memblock, i64 8), align 8
  %i.af = tail call i64 @llvm.umin.i64(i64 %spec.select70, i64 %i.ae)
  %i.ag = tail call fastcc i64 @memblock_find_in_range(i64 noundef 0, i64 noundef %i.af, i64 noundef %i.n) #28 ; 2 uses
  store i64 %i.ag, ptr %i.a, align 8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.g, %bb.f
  %.pr = phi i64 [ %i.ag, %bb.g ], [ %i.ab, %bb.f ] ; 3 uses
  %.not65 = icmp eq i64 %.pr, 0
  %i.ah = load i64, ptr @page_offset_base, align 8
  %i.ai = add i64 %i.ah, %.pr
  %i.aj = inttoptr i64 %i.ai to ptr
  %.058.ph = select i1 %.not65, ptr null, ptr %i.aj
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %bb.e
  %i.ak = phi i64 [ %.pr, %thread-pre-split ], [ %i.y, %bb.e ] ; 2 uses
  %.058 = phi ptr [ %.058.ph, %thread-pre-split ], [ %i.p, %bb.e ] ; 3 uses
  %.not67 = icmp eq i64 %i.ak, 0
  br i1 %.not67, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load i64, ptr %i.g, align 8             ; 2 uses
  %i.ao = shl i64 %i.an, 1
  %i.ap = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %i.am, i64 noundef %i.an, i64 noundef %i.ao) #27 ; 0 uses
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %i.aq = add i64 %i.j, -1
  %i.ar = add i64 %i.aq, %i.ak
  store i64 %i.ar, ptr %i.b, align 8
  %.b = load i1, ptr @memblock_debug, align 4
  br i1 %.b, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = load i64, ptr %i.g, align 8
  %i.av = shl i64 %i.au, 1
  %i.aw = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %i.at, i64 noundef %i.av, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #27 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ax = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.058, ptr align 8 %i.ay, i64 %i.i, i1 false)
  %i.az = load i64, ptr %i.g, align 8
  %i.ba = getelementptr [24 x i8], ptr %.058, i64 %i.az
  call void @llvm.memset.p0.i64(ptr align 8 %i.ba, i8 0, i64 %i.i, i1 false)
  %i.bb = load ptr, ptr %i.ax, align 8            ; 4 uses
  store ptr %.058, ptr %i.ax, align 8
  %i.bc = load i64, ptr %i.g, align 8
  %i.bd = shl i64 %i.bc, 1
  store i64 %i.bd, ptr %i.g, align 8
  %i.be = load i32, ptr %memblock_memory_in_slab.memblock_reserved_in_slab, align 4
  %.not68 = icmp eq i32 %i.be, 0
  br i1 %.not68, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @kfree(ptr noundef %i.bb) #24
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bf = icmp ne ptr %i.bb, @memblock_memory_init_regions
  %i.bg = icmp ne ptr %i.bb, @memblock_reserved_init_regions
  %or.cond3 = and i1 %i.bf, %i.bg
  br i1 %or.cond3, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @memblock_free(ptr noundef %i.bb, i64 noundef %i.l) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  br i1 %i.c, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = load i64, ptr %i.a, align 8
  %i.bi = call range(i32 -12, 1) i32 @__memblock_reserve(i64 noundef %i.bh, i64 noundef %i.n, i32 noundef -1, i32 noundef 32) #25
  %.not69 = icmp eq i32 %i.bi, 0
  br i1 %.not69, label %bb.s, label %bb.r, !prof !17

bb.r:                                             ; preds = %bb.q
  call void asm sideeffect "669: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 669b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 669) #26, !srcloc !117
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.7, i32 521, i32 0, i64 16) #26, !srcloc !118
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.p
  store i32 %i.d, ptr %memblock_memory_in_slab.memblock_reserved_in_slab, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.i
  %.0 = phi i32 [ 0, %bb.s ], [ -1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc i64 @memblock_find_in_range(i64 noundef %0, i64 noundef %1, i64 noundef range(i64 0, -4095) %2) unnamed_addr #4 section ".init.text" align 16 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %2, ptr %i.a, align 8
  %.b.i = load i1, ptr @system_has_some_mirror, align 1 ; 2 uses
  %i.b = select i1 %.b.i, i32 2, i32 0
  %i.c = tail call fastcc i64 @memblock_find_in_range_node(i64 noundef %2, i64 noundef 4096, i64 noundef %0, i64 noundef %1, i32 noundef -1, i32 noundef %i.b) #28, !srcloc !119 ; 2 uses
  %.not10 = icmp eq i64 %i.c, 0
  %or.cond12.not = and i1 %.not10, %.b.i
  br i1 %or.cond12.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = tail call i32 @___ratelimit(ptr noundef nonnull @memblock_find_in_range._rs, ptr noundef nonnull @__func__.memblock_find_in_range) #24
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %._crit_edge.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a) #27 ; 0 uses
  %.pre = load i64, ptr %i.a, align 8
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.b, %.lr.ph
  %i.f = phi i64 [ %.pre, %bb.b ], [ %2, %.lr.ph ]
  %i.g = call fastcc i64 @memblock_find_in_range_node(i64 noundef %i.f, i64 noundef 4096, i64 noundef %0, i64 noundef %1, i32 noundef -1, i32 noundef 0) #28, !srcloc !119
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi i64 [ %i.c, %bb.a ], [ %i.g, %._crit_edge.loopexit ]
  ret i64 %.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i64 @first_valid_pfn(i64 noundef range(i64 0, 4503599627370496) %0, i64 noundef range(i64 0, 4503599627370496) %1) unnamed_addr #18 align 16 prefalign(16) {
bb.a:
  %i.a = lshr i64 %0, 15                          ; 2 uses
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #26, !srcloc !121
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !122
  %i.b = load i64, ptr @__highest_present_section_nr, align 8
  %i.c = icmp ule i64 %i.a, %i.b
  %i.d = icmp samesign ult i64 %0, %1
  %i.e = and i1 %i.d, %i.c
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %rcu_read_unlock_sched.exit
  %.0943 = phi i64 [ %i.ak, %rcu_read_unlock_sched.exit ], [ %i.a, %bb.a ] ; 2 uses
  %.042 = phi i64 [ %i.al, %rcu_read_unlock_sched.exit ], [ %0, %bb.a ] ; 6 uses
  %i.f = lshr i64 %.042, 15
  %i.g = lshr i64 %.042, 23                       ; 2 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #26
          to label %bb.b [label %bb.b, label %_static_cpu_has.exit.i.i], !srcloc !123

bb.b:                                             ; preds = %.lr.ph, %.lr.ph
  br label %_static_cpu_has.exit.i.i

_static_cpu_has.exit.i.i:                         ; preds = %bb.b, %.lr.ph
  %i.h = phi i64 [ 131072, %bb.b ], [ 2048, %.lr.ph ]
  %.not.i.i = icmp samesign ult i64 %i.g, %i.h
  br i1 %.not.i.i, label %bb.c, label %rcu_read_unlock_sched.exit, !prof !17

bb.c:                                             ; preds = %_static_cpu_has.exit.i.i
  %i.i = load ptr, ptr @mem_section, align 8      ; 2 uses
  %.not8.i.i = icmp eq ptr %i.i, null
  br i1 %.not8.i.i, label %rcu_read_unlock_sched.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %i.g
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not9.i.i = icmp eq ptr %i.k, null
  br i1 %.not9.i.i, label %rcu_read_unlock_sched.exit, label %__pfn_to_section.exit

__pfn_to_section.exit:                            ; preds = %bb.d
  %i.l = and i64 %i.f, 255
  %i.m = getelementptr [16 x i8], ptr %i.k, i64 %i.l ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %rcu_read_unlock_sched.exit, label %valid_section.exit

valid_section.exit:                               ; preds = %__pfn_to_section.exit
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = and i64 %i.n, 2
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %rcu_read_unlock_sched.exit, label %early_section.exit

early_section.exit:                               ; preds = %valid_section.exit
  %i.p = and i64 %i.n, 8
  %.not13 = icmp eq i64 %i.p, 0
  br i1 %.not13, label %bb.e, label %pfn_section_first_valid.exit.thread

bb.e:                                             ; preds = %early_section.exit
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %i.r = load volatile ptr, ptr %i.q, align 8     ; 2 uses
  %i.s = lshr i64 %.042, 9
  %i.t = and i64 %i.s, 63                         ; 2 uses
  %.not.i15 = icmp eq ptr %i.r, null
  br i1 %.not.i15, label %rcu_read_unlock_sched.exit, label %arch_test_bit.exit.i

arch_test_bit.exit.i:                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.r, i64 16       ; 2 uses
  %i.v = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.u, i64 range(i64 0, 64) %i.t) #26, !srcloc !124 ; 2 uses
  %i.w = icmp ult i8 %i.v, 2
  tail call void @llvm.assume(i1 %i.w)
  %i.x = trunc nuw i8 %i.v to i1
  br i1 %i.x, label %pfn_section_first_valid.exit.thread, label %arch_test_bit.exit._crit_edge.i

arch_test_bit.exit._crit_edge.i:                  ; preds = %arch_test_bit.exit.i
  %.pre.i = load i64, ptr %i.u, align 8
  %i.y = shl nsw i64 -1, %i.t
  %i.z = and i64 %.pre.i, %i.y                    ; 2 uses
  %.not.i.i16 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i16, label %rcu_read_unlock_sched.exit, label %find_next_bit.exit.i

find_next_bit.exit.i:                             ; preds = %arch_test_bit.exit._crit_edge.i
  %i.aa = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.z) #31, !srcloc !25 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 64
  br i1 %i.ab, label %rcu_read_unlock_sched.exit, label %.loopexit

.loopexit:                                        ; preds = %find_next_bit.exit.i
  %i.ac = and i64 %.042, 9223372036854743040
  %i.ad = shl i64 %i.aa, 9
  %i.ae = add i64 %i.ad, %i.ac
  br label %pfn_section_first_valid.exit.thread

pfn_section_first_valid.exit.thread:              ; preds = %arch_test_bit.exit.i, %early_section.exit, %.loopexit
  %.121 = phi i64 [ %i.ae, %.loopexit ], [ %.042, %early_section.exit ], [ %.042, %arch_test_bit.exit.i ] ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !125
  %i.af = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #26, !srcloc !126 ; 2 uses
  %i.ag = icmp ult i8 %i.af, 2
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = trunc nuw i8 %i.af to i1
  br i1 %i.ah, label %bb.f, label %rcu_read_unlock_sched.exit17, !prof !24

bb.f:                                             ; preds = %pfn_section_first_valid.exit.thread
  %i.ai = tail call i64 @llvm.read_register.i64(metadata !5)
  %i.aj = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.ai) #26, !srcloc !127
  br label %rcu_read_unlock_sched.exit17.sink.split

rcu_read_unlock_sched.exit:                       ; preds = %bb.c, %bb.d, %_static_cpu_has.exit.i.i, %__pfn_to_section.exit, %valid_section.exit, %bb.e, %arch_test_bit.exit._crit_edge.i, %find_next_bit.exit.i
  %i.ak = add nuw nsw i64 %.0943, 1               ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 15               ; 2 uses
  %i.am = load i64, ptr @__highest_present_section_nr, align 8
  %i.an = icmp ult i64 %.0943, %i.am
  %i.ao = icmp samesign ult i64 %i.al, %1
  %i.ap = and i1 %i.ao, %i.an
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !120

._crit_edge:                                      ; preds = %rcu_read_unlock_sched.exit, %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !125
  %i.aq = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #26, !srcloc !126 ; 2 uses
  %i.ar = icmp ult i8 %i.aq, 2
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = trunc nuw i8 %i.aq to i1
  br i1 %i.as, label %bb.g, label %rcu_read_unlock_sched.exit17, !prof !24

bb.g:                                             ; preds = %._crit_edge
  %i.at = tail call i64 @llvm.read_register.i64(metadata !5)
  %i.au = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.at) #26, !srcloc !127
  br label %rcu_read_unlock_sched.exit17.sink.split

rcu_read_unlock_sched.exit17.sink.split:          ; preds = %bb.g, %bb.f
  %.sink = phi i64 [ %i.aj, %bb.f ], [ %i.au, %bb.g ]
  %.2.ph = phi i64 [ %.121, %bb.f ], [ %1, %bb.g ]
  tail call void @llvm.write_register.i64(metadata !5, i64 %.sink)
  br label %rcu_read_unlock_sched.exit17

rcu_read_unlock_sched.exit17:                     ; preds = %rcu_read_unlock_sched.exit17.sink.split, %pfn_section_first_valid.exit.thread, %._crit_edge
  %.2 = phi i64 [ %.121, %pfn_section_first_valid.exit.thread ], [ %1, %._crit_edge ], [ %.2.ph, %rcu_read_unlock_sched.exit17.sink.split ]
  ret i64 %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @free_reserved_page(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #20

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #21

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_node_noprof(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc range(i64 0, -1) i64 @__memblock_find_range_bottom_up(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3, i32 noundef %4, i32 noundef range(i32 0, 3) %5) unnamed_addr #4 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 0, ptr %i.b, align 8, !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 0, ptr %i.c, align 8
  call void @__next_mem_range(ptr noundef nonnull %i.c, i32 noundef %4, i32 noundef %5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 16), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 56), ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #25
  %i.d = load i64, ptr %i.c, align 8
  %.not53 = icmp eq i64 %i.d, -1
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = add i64 %3, -1
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph
  %i.f = load i64, ptr %i.a, align 8              ; 2 uses
  %.not43 = icmp ult i64 %i.f, %1
  %i.g = call i64 @llvm.umax.i64(i64 %i.f, i64 %0)
  %i.h = select i1 %.not43, i64 %i.g, i64 %1      ; 2 uses
  store i64 %i.h, ptr %i.a, align 8
  %i.i = load i64, ptr %i.b, align 8              ; 2 uses
  %.not45 = icmp ult i64 %i.i, %1
  %i.j = call i64 @llvm.umax.i64(i64 %i.i, i64 %0)
  %i.k = select i1 %.not45, i64 %i.j, i64 %1      ; 3 uses
  store i64 %i.k, ptr %i.b, align 8
  %i.l = add i64 %i.h, -1
  %i.m = or i64 %i.l, %i.e
  %i.n = add i64 %i.m, 1                          ; 3 uses
  %i.o = icmp uge i64 %i.n, %i.k
  %i.p = sub nuw i64 %i.k, %i.n
  %.not47 = icmp ult i64 %i.p, %2
  %or.cond = select i1 %i.o, i1 true, i1 %.not47
  br i1 %or.cond, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  call void @__next_mem_range(ptr noundef nonnull %i.c, i32 noundef %4, i32 noundef %5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 16), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 56), ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #25
  %i.q = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.q, -1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !128

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ %i.n, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %.0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc i64 @__memblock_find_range_top_down(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3, i32 noundef %4, i32 noundef range(i32 0, 3) %5) unnamed_addr #4 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 0, ptr %i.b, align 8, !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 -1, ptr %i.c, align 8
  call void @__next_mem_range_rev(ptr noundef nonnull %i.c, i32 noundef %4, i32 noundef %5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 16), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 56), ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #25
  %i.d = load i64, ptr %i.c, align 8
  %.not54 = icmp eq i64 %i.d, -1
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = sub i64 0, %3
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph
  %i.f = load i64, ptr %i.a, align 8              ; 2 uses
  %.not44 = icmp ult i64 %i.f, %1
  %i.g = call i64 @llvm.umax.i64(i64 %i.f, i64 %0)
  %i.h = select i1 %.not44, i64 %i.g, i64 %1      ; 2 uses
  store i64 %i.h, ptr %i.a, align 8
  %i.i = load i64, ptr %i.b, align 8              ; 2 uses
  %.not46 = icmp ult i64 %i.i, %1
  %i.j = call i64 @llvm.umax.i64(i64 %i.i, i64 %0)
  %i.k = select i1 %.not46, i64 %i.j, i64 %1      ; 3 uses
  store i64 %i.k, ptr %i.b, align 8
  %i.l = icmp ult i64 %i.k, %2
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw i64 %i.k, %2
  %i.n = and i64 %i.m, %i.e                       ; 2 uses
  %.not48 = icmp ult i64 %i.n, %i.h
  br i1 %.not48, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @__next_mem_range_rev(ptr noundef nonnull %i.c, i32 noundef %4, i32 noundef %5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 16), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 56), ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #25
  %i.o = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.o, -1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !129

._crit_edge:                                      ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.d ], [ %i.n, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %.0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @memblock_dump(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.e = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i64, ptr %0, align 8
  %i.h = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %i.f, i64 noundef %i.g) #27 ; 0 uses
  %i.i = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.j = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !annotation !18
  store i64 0, ptr %i.b, align 8, !annotation !18
  store i64 0, ptr %i.c, align 8, !annotation !18
  %i.k = load ptr, ptr %i.i, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.018 = phi i32 [ %i.x, %bb.c ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.01517 = phi ptr [ %i.aa, %bb.c ], [ %i.k, %.lr.ph.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.l = load i64, ptr %.01517, align 8           ; 2 uses
  store i64 %i.l, ptr %i.a, align 8
  %i.m = getelementptr i8, ptr %.01517, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  store i64 %i.n, ptr %i.c, align 8
  %i.o = add i64 %i.l, -1
  %i.p = add i64 %i.o, %i.n
  store i64 %i.p, ptr %i.b, align 8
  %i.q = getelementptr i8, ptr %.01517, i64 16
  %i.r = load i32, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %.01517, i64 20
  %.015.val16 = load i32, ptr %i.s, align 4       ; 2 uses
  %i.t = icmp ult i32 %.015.val16, 64
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 32, ptr noundef nonnull @.str.22, i32 noundef %.015.val16) #24 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.v = load ptr, ptr %i.e, align 8
  %i.w = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %i.v, i32 noundef %.018, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %i.r) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.x = add i32 %.018, 1                         ; 2 uses
  %i.y = load ptr, ptr %i.i, align 8
  %i.z = sext i32 %i.x to i64                     ; 2 uses
  %i.aa = getelementptr [24 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i64, ptr %0, align 8
  %i.ac = icmp ugt i64 %i.ab, %i.z
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !130

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @memmap_init_reserved_pages() unnamed_addr #4 section ".init.text" align 16 prefalign(16) {
bb.a:
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @memblock, i64 64), align 8
  %.pre35 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memblock, i64 40), align 8
  %.pre36 = load i64, ptr getelementptr inbounds nuw (i8, ptr @memblock, i64 16), align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.a = phi i64 [ %i.t, %._crit_edge ], [ %.pre, %bb.a ] ; 2 uses
  %i.b = phi i64 [ %i.u, %._crit_edge ], [ %.pre36, %bb.a ] ; 2 uses
  %i.c = phi ptr [ %i.v, %._crit_edge ], [ %.pre35, %bb.a ] ; 4 uses
  %i.d = getelementptr [24 x i8], ptr %i.c, i64 %i.b
  %i.e = icmp ult ptr %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.02530 = phi ptr [ %i.o, %bb.d ], [ %i.c, %bb.b ] ; 5 uses
  %i.f = getelementptr i8, ptr %.02530, i64 20
  %.025.val = load i32, ptr %i.f, align 4         ; 2 uses
  %i.g = load i64, ptr %.02530, align 8           ; 3 uses
  %i.h = getelementptr i8, ptr %.02530, i64 8     ; 2 uses
  %i.i = getelementptr i8, ptr %.02530, i64 16
  %.025.val26 = load i32, ptr %i.i, align 8
  %i.j = and i32 %.025.val26, 4
  %.not29 = icmp eq i32 %i.j, 0
  br i1 %.not29, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = load i64, ptr %i.h, align 8
  %i.l = add i64 %i.k, %i.g
  tail call fastcc void @memmap_init_reserved_range(i64 noundef %i.g, i64 noundef %i.l, i32 noundef %.025.val) #28, !srcloc !133
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.m = load i64, ptr %i.h, align 8
  %i.n = tail call i32 @memblock_set_node(i64 noundef %i.g, i64 noundef %i.m, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 56), i32 noundef %.025.val) #28 ; 0 uses
  %i.o = getelementptr i8, ptr %.02530, i64 24    ; 2 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memblock, i64 40), align 8 ; 2 uses
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @memblock, i64 16), align 8 ; 2 uses
  %i.r = getelementptr [24 x i8], ptr %i.p, i64 %i.q
  %i.s = icmp ult ptr %i.o, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !131

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre37 = load i64, ptr getelementptr inbounds nuw (i8, ptr @memblock, i64 64), align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.t = phi i64 [ %.pre37, %._crit_edge.loopexit ], [ %i.a, %bb.b ] ; 2 uses
  %i.u = phi i64 [ %i.q, %._crit_edge.loopexit ], [ %i.b, %bb.b ]
  %i.v = phi ptr [ %i.p, %._crit_edge.loopexit ], [ %i.c, %bb.b ]
  %.not = icmp eq i64 %i.a, %i.t
  br i1 %.not, label %bb.e, label %bb.b

bb.e:                                             ; preds = %._crit_edge
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memblock, i64 80), align 8 ; 4 uses
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @memblock, i64 56), align 8 ; 2 uses
  %i.y = getelementptr [24 x i8], ptr %i.w, i64 %i.x
  %i.z = icmp ult ptr %i.w, %i.y
  br i1 %i.z, label %.lr.ph33, label %._crit_edge34

.lr.ph33:                                         ; preds = %bb.e, %bb.i
  %i.aa = phi i64 [ %i.am, %bb.i ], [ %i.x, %bb.e ]
  %i.ab = phi ptr [ %i.an, %bb.i ], [ %i.w, %bb.e ]
  %.131 = phi ptr [ %i.ao, %bb.i ], [ %i.w, %bb.e ] ; 5 uses
  %i.ac = getelementptr i8, ptr %.131, i64 16
  %.1.val27 = load i32, ptr %i.ac, align 8
  %i.ad = and i32 %.1.val27, 16
  %.not28 = icmp eq i32 %i.ad, 0
  br i1 %.not28, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph33
  %i.ae = getelementptr i8, ptr %.131, i64 20
  %.1.val = load i32, ptr %i.ae, align 4          ; 2 uses
  %i.af = load i64, ptr %.131, align 8            ; 3 uses
  %i.ag = getelementptr i8, ptr %.131, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = add i64 %i.ah, %i.af
  %i.aj = icmp ult i32 %.1.val, 64
  br i1 %i.aj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = lshr i64 %i.af, 12
  %i.al = tail call i32 @early_pfn_to_nid(i64 noundef %i.ak) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i32 [ %.1.val, %bb.f ], [ %i.al, %bb.g ]
  tail call fastcc void @memmap_init_reserved_range(i64 noundef %i.af, i64 noundef %i.ai, i32 noundef %.0) #28, !srcloc !134
  %.pre38 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memblock, i64 80), align 8
  %.pre39 = load i64, ptr getelementptr inbounds nuw (i8, ptr @memblock, i64 56), align 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph33, %bb.h
  %i.am = phi i64 [ %i.aa, %.lr.ph33 ], [ %.pre39, %bb.h ] ; 2 uses
  %i.an = phi ptr [ %i.ab, %.lr.ph33 ], [ %.pre38, %bb.h ] ; 2 uses
  %i.ao = getelementptr i8, ptr %.131, i64 24     ; 2 uses
  %i.ap = getelementptr [24 x i8], ptr %i.an, i64 %i.am
  %i.aq = icmp ult ptr %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph33, label %._crit_edge34, !llvm.loop !132

._crit_edge34:                                    ; preds = %bb.i, %bb.e
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @memmap_init_reserved_range(i64 noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #4 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = lshr i64 %0, 12
  %i.b = add i64 %1, 4095
  %i.c = lshr i64 %i.b, 12                        ; 5 uses
  %i.d = tail call fastcc i64 @first_valid_pfn(i64 noundef %i.a, i64 noundef %i.c) #25, !srcloc !136 ; 2 uses
  %i.e = icmp ult i64 %i.d, %i.c
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %next_valid_pfn.exit
  %.011 = phi i64 [ %.0.i, %next_valid_pfn.exit ], [ %i.d, %bb.a ] ; 3 uses
  %i.f = load i64, ptr @vmemmap_base, align 8
  tail call void @init_deferred_page(i64 noundef %.011, i32 noundef %2) #24
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr [64 x i8], ptr %i.g, i64 %.011
  tail call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.h, i64 13) #26, !srcloc !137
  %i.i = add nuw nsw i64 %.011, 1                 ; 4 uses
  %.not.i10 = icmp samesign ult i64 %i.i, %i.c
  br i1 %.not.i10, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.j = and i64 %i.i, 511
  %.not11.i = icmp eq i64 %i.j, 0
  br i1 %.not11.i, label %bb.c, label %next_valid_pfn.exit

bb.c:                                             ; preds = %bb.b
  %i.k = tail call fastcc i64 @first_valid_pfn(i64 noundef %i.i, i64 noundef range(i64 0, 4503599627370496) %i.c) #25, !srcloc !20
  br label %next_valid_pfn.exit

next_valid_pfn.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.k, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.l = icmp ult i64 %.0.i, %i.c
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !135

._crit_edge:                                      ; preds = %.lr.ph, %next_valid_pfn.exit, %bb.a
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @early_pfn_to_nid(i64 noundef) local_unnamed_addr #6 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @init_deferred_page(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @__free_pages_memory(i64 noundef range(i64 0, 4503599627370495) %0, i64 noundef range(i64 1, 4503599627370496) %1) unnamed_addr #4 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = icmp samesign ult i64 %0, %1
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.022 = phi i64 [ %i.g, %bb.d ], [ %0, %bb.a ]  ; 4 uses
  %.not = icmp eq i64 %.022, 0
  br i1 %.not, label %.preheader, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.b = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %.022) #31, !srcloc !25
  %i.c = trunc i64 %i.b to i32
  %i.d = tail call i32 @llvm.smin.i32(i32 %i.c, i32 10)
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.b
  %.1.ph = phi i32 [ 10, %.lr.ph ], [ %i.d, %bb.b ]
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %.1 = phi i32 [ %i.i, %bb.c ], [ %.1.ph, %.preheader ] ; 3 uses
  %i.e = zext nneg i32 %.1 to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = add nuw i64 %i.f, %.022                  ; 3 uses
  %i.h = icmp ugt i64 %i.g, %1
  %i.i = add i32 %.1, -1
  br i1 %i.h, label %bb.c, label %bb.d, !llvm.loop !138

bb.d:                                             ; preds = %bb.c
  tail call void @memblock_free_pages(i64 noundef %.022, i32 noundef %.1) #24
  %i.j = icmp ult i64 %i.g, %1
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !139

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @memblock_free_pages(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @sized_strscpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_full(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @memblock_reserve_mem_open(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #9 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @memblock_reserve_mem_show, ptr noundef %i.b) #24
  ret i32 %i.c
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @memblock_reserve_mem_show(ptr noundef %0, ptr nofree readnone captures(none) %1) #9 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !annotation !18
  tail call void @mutex_lock(ptr noundef nonnull @reserve_mem_lock) #24
  %i.b = load i32, ptr @reserved_mem_count, align 4 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @mutex_unlock(ptr noundef nonnull @reserve_mem_lock) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 0

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.d = phi i32 [ %i.i, %bb.c ], [ %i.b, %bb.a ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr [32 x i8], ptr @reserved_mem_table, i64 %indvars.iv ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = call i32 @string_get_size(i64 noundef %i.g, i64 noundef 1, i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 16) #24 ; 0 uses
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef %i.e, ptr noundef nonnull %i.a) #24
  %.pre = load i32, ptr @reserved_mem_count, align 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.i = phi i32 [ %i.d, %.lr.ph ], [ %.pre, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !140
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @string_get_size(i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #23

attributes #0 = { cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { cold fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { cold fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #9 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #10 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { cold noredzone noreturn null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #14 = { cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #15 = { cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(write, argmem: read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #16 = { nofree noredzone nounwind null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #21 = { nocallback nounwind }
attributes #22 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { noredzone nounwind "no-builtin-wcslen" }
attributes #25 = { noredzone "no-builtin-wcslen" }
attributes #26 = { nounwind }
attributes #27 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #28 = { cold noredzone "no-builtin-wcslen" }
attributes #29 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #30 = { cold noredzone noreturn nounwind "no-builtin-wcslen" }
attributes #31 = { nounwind memory(none) }

!llvm.named.register.rsp = !{!5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !{!0, !16}
!1 = distinct !{!1, !16}
!2 = distinct !{!2, !16}
!3 = distinct !{!3, !16}
!4 = distinct !{!4, !16}
!5 = !{!"rsp"}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 8, !"cf-protection-branch", i32 1}
!8 = !{i32 4, !"function_return_thunk_extern", i32 1}
!9 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!10 = !{i32 1, !"Code Model", i32 2}
!11 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!12 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!13 = !{i32 1, !"override-stack-alignment", i32 8}
!14 = !{i32 4, !"SkipRaxSetup", i32 1}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!18 = !{!"auto-init"}
!19 = !{i64 2157741533}
!20 = !{i64 942554}
!21 = !{i64 32288}
!22 = !{i8 0, i8 2}
!23 = !{}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = !{i64 561940}
!26 = !{i64 22508}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = !{i64 2157715552, i64 2157715427}
!30 = !{i64 2157716075, i64 2157717147, i64 2157717180, i64 2157717215, i64 2157717231, i64 2157718158, i64 2157718216, i64 2157718265, i64 2157718075, i64 2157717290, i64 2157717322, i64 2157717405}
!31 = !{i64 2157718558, i64 2157718434}
!32 = !{i64 2157720064, i64 2157719939}
!33 = !{i64 2157720587, i64 2157721661, i64 2157721694, i64 2157721729, i64 2157721745, i64 2157722672, i64 2157722730, i64 2157722779, i64 2157722589, i64 2157721804, i64 2157721836, i64 2157721919}
!34 = !{i64 2157723072, i64 2157722948}
!35 = !{i64 2157724435, i64 2157724310}
!36 = !{i64 2157724958, i64 2157726041, i64 2157726074, i64 2157726109, i64 2157726125, i64 2157727052, i64 2157727110, i64 2157727159, i64 2157726969, i64 2157726184, i64 2157726216, i64 2157726299}
!37 = !{i64 2157727452, i64 2157727328}
!38 = !{i64 21012}
!39 = !{i64 21354}
!40 = !{i64 21652}
!41 = !{i64 21762}
!42 = !{i64 23082}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
!45 = !{i64 26914}
!46 = distinct !{!46, !16}
!47 = !{i64 26526}
!48 = !{i64 26661}
!49 = !{i64 28669}
!50 = !{i64 29939}
!51 = !{i64 30023}
!52 = !{i64 30369}
!53 = !{i64 31912}
!54 = distinct !{!54, !16}
!55 = !{i64 31303}
!56 = !{i64 31549}
!57 = !{i64 32729}
!58 = !{i64 33505}
!59 = !{i64 33873}
!60 = !{i64 34752}
!61 = !{i64 35165}
!62 = !{i64 35681}
!63 = !{i64 36075}
!64 = distinct !{!64, !16}
!65 = distinct !{!65, !16}
!66 = distinct !{!66, !16}
!67 = distinct !{!67, !16}
!68 = distinct !{!68, !16}
!69 = !{i64 44044}
!70 = !{i64 44226}
!71 = distinct !{!71, !16}
!72 = distinct !{!72, !16}
!73 = !{i64 25267}
!74 = !{i64 25745}
!75 = !{i64 26094}
!76 = distinct !{!76, !16}
!77 = !{i64 2157709668, i64 2157709543}
!78 = !{i64 2157710191, i64 2157710667, i64 2157710700, i64 2157710735, i64 2157710751, i64 2157711592, i64 2157711650, i64 2157711699, i64 2157711509, i64 2157710810, i64 2157710842}
!79 = !{i64 2157770745, i64 2157770620}
!80 = !{i64 2157771268, i64 2157772325, i64 2157772358, i64 2157772393, i64 2157772409, i64 2157773336, i64 2157773394, i64 2157773443, i64 2157773253, i64 2157772468, i64 2157772500, i64 2157772583}
!81 = !{i64 2157773737, i64 2157773613}
!82 = !{i64 46113}
!83 = !{i64 46328}
!84 = !{i64 10731}
!85 = !{i64 10829}
!86 = !{i64 51557}
!87 = !{i64 52858}
!88 = !{i64 54076}
!89 = distinct !{!89, !16}
!90 = !{i64 57366}
!91 = !{i64 57442}
!92 = distinct !{!92, !16}
!93 = distinct !{!93, !16}
!94 = !{i64 57773}
!95 = !{i64 58022}
!96 = !{i64 58164}
!97 = !{i64 58248}
!98 = !{i64 58301}
!99 = !{i64 2157680727, i64 2157680602}
!100 = !{i64 2157681250, i64 2157682309, i64 2157682342, i64 2157682377, i64 2157682393, i64 2157683320, i64 2157683378, i64 2157683427, i64 2157683237, i64 2157682452, i64 2157682484, i64 2157682567}
!101 = !{i64 2157683720, i64 2157683596}
!102 = distinct !{!102, !16}
!103 = !{i64 61442}
!104 = !{i64 62847}
!105 = !{i64 62635}
!106 = !{i64 62669}
!107 = distinct !{!107, !16}
!108 = distinct !{!108, !16}
!109 = !{i64 69227}
!110 = !{i64 2148939792, i64 2148939831, i64 2148939852, i64 2148939889, i64 2148939912, i64 2148939783}
!111 = distinct !{!111, !16}
!112 = !{i64 68180}
!113 = !{i64 65975}
!114 = distinct !{!114, !16}
!115 = !{i64 2157712436, i64 2157712311}
!116 = !{i64 2157712959, i64 2157713435, i64 2157713468, i64 2157713503, i64 2157713519, i64 2157714360, i64 2157714418, i64 2157714467, i64 2157714277, i64 2157713578, i64 2157713610}
!117 = !{i64 2157697773, i64 2157697648}
!118 = !{i64 2157698296, i64 2157698772, i64 2157698805, i64 2157698840, i64 2157698856, i64 2157699697, i64 2157699755, i64 2157699804, i64 2157699614, i64 2157698915, i64 2157698947}
!119 = !{i64 11553}
!120 = distinct !{!120, !16}
!121 = !{i64 2148573452}
!122 = !{i64 2151151422}
!123 = !{i64 2150115976, i64 2150116005, i64 2150116011, i64 2150116207, i64 2150116213, i64 2150116229, i64 2150116245, i64 2150116272, i64 2150116384, i64 2150116393, i64 2150116467, i64 2150116515, i64 2150116563, i64 2150116618, i64 2150116672, i64 2150116727, i64 2150116743, i64 2150116790, i64 2150116901, i64 2150116932, i64 2150116938, i64 2150116960, i64 2150116976, i64 2150116025, i64 2150116027, i64 2150116043, i64 2150116070, i64 2150116170, i64 2150117040, i64 2150117154, i64 2150117202, i64 2150117250, i64 2150117314, i64 2150117371, i64 2150117423, i64 2150117552, i64 2150117767, i64 2150117638, i64 2150117669, i64 2150117675, i64 2150117691, i64 2150117707, i64 2400877, i64 2400917, i64 2150118226, i64 2400955, i64 2400992, i64 2401013, i64 2401033}
!124 = !{i64 2148066373}
!125 = !{i64 2151152686}
!126 = !{i64 2148579633}
!127 = !{i64 2151152868}
!128 = distinct !{!128, !16}
!129 = distinct !{!129, !16}
!130 = distinct !{!130, !16}
!131 = distinct !{!131, !16}
!132 = distinct !{!132, !16}
!133 = !{i64 67207}
!134 = !{i64 67968}
!135 = distinct !{!135, !16}
!136 = !{i64 2157816593}
!137 = !{i64 2148054067}
!138 = distinct !{!138, !16}
!139 = distinct !{!139, !16}
!140 = distinct !{!140, !16}
end_hunk_1
