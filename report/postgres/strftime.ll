Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/strftime?download=true
inline.NumInlined: 33
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_fmt:bb.a
  ]

.preheader:                                       ; preds = %bb.b, %.preheader.backedge
  %.1214 = phi ptr [ %i.ah, %.preheader.backedge ], [ %.0213, %bb.b ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.1214, i64 1 ; 63 uses
  %i.ai = load i8, ptr %i.ah, align 1             ; 2 uses
  switch i8 %i.ai, label %.loopexit.loopexit [
    i8 0, label %.loopexit
    i8 65, label %bb.c
    i8 97, label %bb.g
    i8 66, label %bb.k
    i8 98, label %bb.o
    i8 104, label %bb.o
    i8 67, label %bb.s
    i8 99, label %bb.x
    i8 68, label %bb.aa
    i8 100, label %bb.ab
    i8 69, label %.preheader.backedge
    i8 79, label %.preheader.backedge
    i8 101, label %bb.ad
    i8 70, label %bb.af
    i8 72, label %bb.ag
    i8 73, label %bb.ai
    i8 106, label %bb.ak
    i8 107, label %bb.am
    i8 108, label %bb.ao
    i8 77, label %bb.aq
    i8 109, label %bb.as
    i8 110, label %bb.au
    i8 112, label %bb.av
    i8 82, label %bb.ax
    i8 114, label %bb.ay
    i8 83, label %bb.az
    i8 84, label %bb.bb
    i8 116, label %bb.bc
    i8 85, label %bb.bd
    i8 117, label %bb.bf
    i8 86, label %bb.bh
    i8 71, label %bb.bh
    i8 103, label %bb.bh
    i8 118, label %bb.cc
    i8 87, label %bb.cd
    i8 119, label %bb.cf
    i8 88, label %bb.ch
    i8 120, label %bb.ci
    i8 121, label %bb.cl
    i8 89, label %bb.cn
    i8 90, label %bb.co
    i8 122, label %bb.cq
    i8 43, label %bb.cv
  ]

.preheader.backedge:                              ; preds = %.preheader, %.preheader
  br label %.preheader

bb.c:                                             ; preds = %.preheader
  %i.aj = load i32, ptr %i.aa, align 8            ; 2 uses
  %or.cond = icmp ugt i32 %i.aj, 6
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @C_time_locale, i64 248), i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.an = phi ptr [ %i.am, %bb.d ], [ @.str, %bb.c ]
  %i.ao = icmp ult ptr %.0215, %3
  br i1 %i.ao, label %.lr.ph.preheader.i, label %_add.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.ap = ptrtoaddr ptr %.0215 to i64
  %i.aq = sub i64 %i.y, %i.ap
  %scevgep.i = getelementptr i8, ptr %.0215, i64 %i.aq
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %.08.i = phi ptr [ %i.as, %bb.f ], [ %i.an, %.lr.ph.preheader.i ] ; 2 uses
  %.067.i = phi ptr [ %i.at, %bb.f ], [ %.0215, %.lr.ph.preheader.i ] ; 3 uses
  %i.ar = load i8, ptr %.08.i, align 1            ; 2 uses
  store i8 %i.ar, ptr %.067.i, align 1
  %.not.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i, label %_add.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  %i.at = getelementptr inbounds nuw i8, ptr %.067.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.at, %3
  br i1 %exitcond.not.i, label %_add.exit, label %.lr.ph.i, !llvm.loop !0

bb.g:                                             ; preds = %.preheader
  %i.au = load i32, ptr %i.aa, align 8            ; 2 uses
  %or.cond247 = icmp ugt i32 %i.au, 6
  br i1 %or.cond247, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @C_time_locale, i64 192), i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ay = phi ptr [ %i.ax, %bb.h ], [ @.str, %bb.g ]
  %i.az = icmp ult ptr %.0215, %3
  br i1 %i.az, label %.lr.ph.preheader.i255, label %_add.exit

.lr.ph.preheader.i255:                            ; preds = %bb.i
  %i.ba = ptrtoaddr ptr %.0215 to i64
  %i.bb = sub i64 %i.y, %i.ba
  %scevgep.i256 = getelementptr i8, ptr %.0215, i64 %i.bb
  br label %.lr.ph.i257

.lr.ph.i257:                                      ; preds = %bb.j, %.lr.ph.preheader.i255
  %.08.i258 = phi ptr [ %i.bd, %bb.j ], [ %i.ay, %.lr.ph.preheader.i255 ] ; 2 uses
  %.067.i259 = phi ptr [ %i.be, %bb.j ], [ %.0215, %.lr.ph.preheader.i255 ] ; 3 uses
  %i.bc = load i8, ptr %.08.i258, align 1         ; 2 uses
  store i8 %i.bc, ptr %.067.i259, align 1
  %.not.i260 = icmp eq i8 %i.bc, 0
  br i1 %.not.i260, label %_add.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i257
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i258, i64 1
  %i.be = getelementptr inbounds nuw i8, ptr %.067.i259, i64 1 ; 2 uses
  %exitcond.not.i261 = icmp eq ptr %i.be, %3
  br i1 %exitcond.not.i261, label %_add.exit, label %.lr.ph.i257, !llvm.loop !0

bb.k:                                             ; preds = %.preheader
  %i.bf = load i32, ptr %i.ad, align 8            ; 2 uses
  %or.cond248 = icmp ugt i32 %i.bf, 11
  br i1 %or.cond248, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @C_time_locale, i64 96), i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.bj = phi ptr [ %i.bi, %bb.l ], [ @.str, %bb.k ]
  %i.bk = icmp ult ptr %.0215, %3
  br i1 %i.bk, label %.lr.ph.preheader.i264, label %_add.exit

.lr.ph.preheader.i264:                            ; preds = %bb.m
  %i.bl = ptrtoaddr ptr %.0215 to i64
  %i.bm = sub i64 %i.y, %i.bl
  %scevgep.i265 = getelementptr i8, ptr %.0215, i64 %i.bm
  br label %.lr.ph.i266

.lr.ph.i266:                                      ; preds = %bb.n, %.lr.ph.preheader.i264
  %.08.i267 = phi ptr [ %i.bo, %bb.n ], [ %i.bj, %.lr.ph.preheader.i264 ] ; 2 uses
  %.067.i268 = phi ptr [ %i.bp, %bb.n ], [ %.0215, %.lr.ph.preheader.i264 ] ; 3 uses
  %i.bn = load i8, ptr %.08.i267, align 1         ; 2 uses
  store i8 %i.bn, ptr %.067.i268, align 1
  %.not.i269 = icmp eq i8 %i.bn, 0
  br i1 %.not.i269, label %_add.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i266
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i267, i64 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.067.i268, i64 1 ; 2 uses
  %exitcond.not.i270 = icmp eq ptr %i.bp, %3
  br i1 %exitcond.not.i270, label %_add.exit, label %.lr.ph.i266, !llvm.loop !0

bb.o:                                             ; preds = %.preheader, %.preheader
  %i.bq = load i32, ptr %i.ad, align 8            ; 2 uses
  %or.cond249 = icmp ugt i32 %i.bq, 11
  br i1 %or.cond249, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr @C_time_locale, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bu = phi ptr [ %i.bt, %bb.p ], [ @.str, %bb.o ]
  %i.bv = icmp ult ptr %.0215, %3
  br i1 %i.bv, label %.lr.ph.preheader.i273, label %_add.exit

.lr.ph.preheader.i273:                            ; preds = %bb.q
  %i.bw = ptrtoaddr ptr %.0215 to i64
  %i.bx = sub i64 %i.y, %i.bw
  %scevgep.i274 = getelementptr i8, ptr %.0215, i64 %i.bx
  br label %.lr.ph.i275

.lr.ph.i275:                                      ; preds = %bb.r, %.lr.ph.preheader.i273
  %.08.i276 = phi ptr [ %i.bz, %bb.r ], [ %i.bu, %.lr.ph.preheader.i273 ] ; 2 uses
  %.067.i277 = phi ptr [ %i.ca, %bb.r ], [ %.0215, %.lr.ph.preheader.i273 ] ; 3 uses
  %i.by = load i8, ptr %.08.i276, align 1         ; 2 uses
  store i8 %i.by, ptr %.067.i277, align 1
  %.not.i278 = icmp eq i8 %i.by, 0
  br i1 %.not.i278, label %_add.exit, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i275
  %i.bz = getelementptr inbounds nuw i8, ptr %.08.i276, i64 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.067.i277, i64 1 ; 2 uses
  %exitcond.not.i279 = icmp eq ptr %i.ca, %3
  br i1 %exitcond.not.i279, label %_add.exit, label %.lr.ph.i275, !llvm.loop !0

bb.s:                                             ; preds = %.preheader
  %i.cb = load i32, ptr %i.z, align 4             ; 4 uses
  %i.cc = srem i32 %i.cb, 100                     ; 2 uses
  %i.cd = sdiv i32 %i.cb, 100                     ; 2 uses
  %i.ce = icmp slt i32 %i.cc, 0                   ; 2 uses
  %i.cf = icmp sgt i32 %i.cb, -1900
  %or.cond.i = and i1 %i.cf, %i.ce
  br i1 %or.cond.i, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.s
  %i.cg = add nsw i32 %i.cd, 18
  br label %bb.v

bb.t:                                             ; preds = %bb.s
  %5 = icmp slt i32 %i.cb, -1999
  %6 = icmp sgt i32 %i.cc, 0
  %or.cond3.i = and i1 %5, %6                     ; 2 uses
  %.033.i.v = select i1 %or.cond3.i, i32 20, i32 19
  %.033.i = add nsw i32 %.033.i.v, %i.cd          ; 2 uses
  %i.ch = icmp eq i32 %.033.i, 0
  %7 = or i1 %i.ce, %or.cond3.i
  %or.cond5.i = and i1 %7, %i.ch
  br i1 %or.cond5.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ci = icmp ult ptr %.0215, %3
  br i1 %i.ci, label %.lr.ph.preheader.i.i, label %_add.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.u
  %i.cj = ptrtoaddr ptr %.0215 to i64
  %i.ck = sub i64 %i.y, %i.cj
  %scevgep.i.i = getelementptr i8, ptr %.0215, i64 %i.ck ; 2 uses
  store i8 45, ptr %.0215, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.0215, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.cl, %3
  br i1 %exitcond.not.i.i, label %_add.exit, label %.lr.ph.i.1.i

.lr.ph.i.1.i:                                     ; preds = %.lr.ph.preheader.i.i
  store i8 48, ptr %i.cl, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.0215, i64 2 ; 3 uses
  %exitcond.not.i.1.i = icmp eq ptr %i.cm, %3
  br i1 %exitcond.not.i.1.i, label %_add.exit, label %.lr.ph.i.2.i

.lr.ph.i.2.i:                                     ; preds = %.lr.ph.i.1.i
  store i8 0, ptr %i.cm, align 1
  br label %_add.exit

bb.v:                                             ; preds = %.thread, %bb.t
  %.033.i500 = phi i32 [ %i.cg, %.thread ], [ %.033.i, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #6
  %i.cn = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.s, ptr noundef nonnull @.str.2, i32 noundef %.033.i500) #6 ; 0 uses
  %i.co = icmp ult ptr %.0215, %3
  br i1 %i.co, label %.lr.ph.preheader.i.i.i, label %_conv.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.v
  %i.cp = ptrtoaddr ptr %.0215 to i64
  %i.cq = sub i64 %i.y, %i.cp
  %scevgep.i.i.i = getelementptr i8, ptr %.0215, i64 %i.cq
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.w, %.lr.ph.preheader.i.i.i
  %.08.i.i.i = phi ptr [ %i.cs, %bb.w ], [ %i.s, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.067.i.i.i = phi ptr [ %i.ct, %bb.w ], [ %.0215, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.cr = load i8, ptr %.08.i.i.i, align 1        ; 2 uses
  store i8 %i.cr, ptr %.067.i.i.i, align 1
  %.not.i.i.i = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i, label %_conv.exit.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1
  %i.ct = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq ptr %i.ct, %3
  br i1 %exitcond.not.i.i.i, label %_conv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_conv.exit.i:                                     ; preds = %bb.w, %.lr.ph.i.i.i, %bb.v
  %.06.lcssa.i.i.i = phi ptr [ %.0215, %bb.v ], [ %.067.i.i.i, %.lr.ph.i.i.i ], [ %scevgep.i.i.i, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #6
  br label %_add.exit

bb.x:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #6
  store i32 1, ptr %i.t, align 4
  %i.cu = call fastcc ptr @_fmt(ptr noundef nonnull @.str.53, ptr noundef %1, ptr noundef %.0215, ptr noundef %3, ptr noundef %i.t)
  %i.cv = load i32, ptr %i.t, align 4             ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 3
  %spec.select965.a = select i1 %i.cw, i32 2, i32 %i.cv ; 2 uses
  %i.cx = load i32, ptr %4, align 4
  %i.cy = icmp ugt i32 %spec.select965.a, %i.cx
  br i1 %i.cy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 %spec.select965.a, ptr %4, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #6
  br label %_add.exit

bb.aa:                                            ; preds = %.preheader
  %i.cz = call fastcc ptr @_fmt(ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef %.0215, ptr noundef %3, ptr noundef %4)
  br label %_add.exit

bb.ab:                                            ; preds = %.preheader
  %i.da = load i32, ptr %i.af, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #6
  %i.db = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.2, i32 noundef %i.da) #6 ; 0 uses
  %i.dc = icmp ult ptr %.0215, %3
  br i1 %i.dc, label %.lr.ph.preheader.i.i281, label %_conv.exit

.lr.ph.preheader.i.i281:                          ; preds = %bb.ab
  %i.dd = ptrtoaddr ptr %.0215 to i64
  %i.de = sub i64 %i.y, %i.dd
  %scevgep.i.i282 = getelementptr i8, ptr %.0215, i64 %i.de
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac, %.lr.ph.preheader.i.i281
  %.08.i.i = phi ptr [ %i.dg, %bb.ac ], [ %i.r, %.lr.ph.preheader.i.i281 ] ; 2 uses
  %.067.i.i = phi ptr [ %i.dh, %bb.ac ], [ %.0215, %.lr.ph.preheader.i.i281 ] ; 3 uses
  %i.df = load i8, ptr %.08.i.i, align 1          ; 2 uses
  store i8 %i.df, ptr %.067.i.i, align 1
  %.not.i.i = icmp eq i8 %i.df, 0
  br i1 %.not.i.i, label %_conv.exit, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i283 = icmp eq ptr %i.dh, %3
  br i1 %exitcond.not.i.i283, label %_conv.exit, label %.lr.ph.i.i, !llvm.loop !0

_conv.exit:                                       ; preds = %.lr.ph.i.i, %bb.ac, %bb.ab
  %.06.lcssa.i.i = phi ptr [ %.0215, %bb.ab ], [ %scevgep.i.i282, %bb.ac ], [ %.067.i.i, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #6
  br label %_add.exit

bb.ad:                                            ; preds = %.preheader
  %i.di = load i32, ptr %i.af, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #6
  %i.dj = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.3, i32 noundef %i.di) #6 ; 0 uses
  %i.dk = icmp ult ptr %.0215, %3
  br i1 %i.dk, label %.lr.ph.preheader.i.i285, label %_conv.exit292

.lr.ph.preheader.i.i285:                          ; preds = %bb.ad
  %i.dl = ptrtoaddr ptr %.0215 to i64
  %i.dm = sub i64 %i.y, %i.dl
  %scevgep.i.i286 = getelementptr i8, ptr %.0215, i64 %i.dm
  br label %.lr.ph.i.i287

.lr.ph.i.i287:                                    ; preds = %bb.ae, %.lr.ph.preheader.i.i285
  %.08.i.i288 = phi ptr [ %i.do, %bb.ae ], [ %i.q, %.lr.ph.preheader.i.i285 ] ; 2 uses
  %.067.i.i289 = phi ptr [ %i.dp, %bb.ae ], [ %.0215, %.lr.ph.preheader.i.i285 ] ; 3 uses
  %i.dn = load i8, ptr %.08.i.i288, align 1       ; 2 uses
  store i8 %i.dn, ptr %.067.i.i289, align 1
  %.not.i.i290 = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i290, label %_conv.exit292, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i287
  %i.do = getelementptr inbounds nuw i8, ptr %.08.i.i288, i64 1
  %i.dp = getelementptr inbounds nuw i8, ptr %.067.i.i289, i64 1 ; 2 uses
  %exitcond.not.i.i291 = icmp eq ptr %i.dp, %3
  br i1 %exitcond.not.i.i291, label %_conv.exit292, label %.lr.ph.i.i287, !llvm.loop !0

_conv.exit292:                                    ; preds = %.lr.ph.i.i287, %bb.ae, %bb.ad
  %.06.lcssa.i.i284 = phi ptr [ %.0215, %bb.ad ], [ %scevgep.i.i286, %bb.ae ], [ %.067.i.i289, %.lr.ph.i.i287 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #6
  br label %_add.exit

bb.af:                                            ; preds = %.preheader
  %i.dq = call fastcc ptr @_fmt(ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef %.0215, ptr noundef %3, ptr noundef %4)
  br label %_add.exit

bb.ag:                                            ; preds = %.preheader
  %i.dr = load i32, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #6
  %i.ds = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.2, i32 noundef %i.dr) #6 ; 0 uses
  %i.dt = icmp ult ptr %.0215, %3
  br i1 %i.dt, label %.lr.ph.preheader.i.i294, label %_conv.exit301

.lr.ph.preheader.i.i294:                          ; preds = %bb.ag
  %i.du = ptrtoaddr ptr %.0215 to i64
  %i.dv = sub i64 %i.y, %i.du
  %scevgep.i.i295 = getelementptr i8, ptr %.0215, i64 %i.dv
  br label %.lr.ph.i.i296

.lr.ph.i.i296:                                    ; preds = %bb.ah, %.lr.ph.preheader.i.i294
  %.08.i.i297 = phi ptr [ %i.dx, %bb.ah ], [ %i.p, %.lr.ph.preheader.i.i294 ] ; 2 uses
  %.067.i.i298 = phi ptr [ %i.dy, %bb.ah ], [ %.0215, %.lr.ph.preheader.i.i294 ] ; 3 uses
  %i.dw = load i8, ptr %.08.i.i297, align 1       ; 2 uses
  store i8 %i.dw, ptr %.067.i.i298, align 1
  %.not.i.i299 = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i299, label %_conv.exit301, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i296
  %i.dx = getelementptr inbounds nuw i8, ptr %.08.i.i297, i64 1
  %i.dy = getelementptr inbounds nuw i8, ptr %.067.i.i298, i64 1 ; 2 uses
  %exitcond.not.i.i300 = icmp eq ptr %i.dy, %3
  br i1 %exitcond.not.i.i300, label %_conv.exit301, label %.lr.ph.i.i296, !llvm.loop !0

_conv.exit301:                                    ; preds = %.lr.ph.i.i296, %bb.ah, %bb.ag
  %.06.lcssa.i.i293 = phi ptr [ %.0215, %bb.ag ], [ %scevgep.i.i295, %bb.ah ], [ %.067.i.i298, %.lr.ph.i.i296 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #6
  br label %_add.exit

bb.ai:                                            ; preds = %.preheader
  %i.dz = load i32, ptr %i.ac, align 8
  %i.ea = srem i32 %i.dz, 12                      ; 2 uses
  %.not246 = icmp eq i32 %i.ea, 0
  %spec.select = select i1 %.not246, i32 12, i32 %i.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #6
  %i.eb = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.2, i32 noundef %spec.select) #6 ; 0 uses
  %i.ec = icmp ult ptr %.0215, %3
  br i1 %i.ec, label %.lr.ph.preheader.i.i303, label %_conv.exit310

.lr.ph.preheader.i.i303:                          ; preds = %bb.ai
  %i.ed = ptrtoaddr ptr %.0215 to i64
  %i.ee = sub i64 %i.y, %i.ed
  %scevgep.i.i304 = getelementptr i8, ptr %.0215, i64 %i.ee
  br label %.lr.ph.i.i305

.lr.ph.i.i305:                                    ; preds = %bb.aj, %.lr.ph.preheader.i.i303
  %.08.i.i306 = phi ptr [ %i.eg, %bb.aj ], [ %i.o, %.lr.ph.preheader.i.i303 ] ; 2 uses
  %.067.i.i307 = phi ptr [ %i.eh, %bb.aj ], [ %.0215, %.lr.ph.preheader.i.i303 ] ; 3 uses
  %i.ef = load i8, ptr %.08.i.i306, align 1       ; 2 uses
end_hunk_0
begin_hunk_1_@_fmt:bb.a

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.jf = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.2, i32 noundef %.1.ph) #6 ; 0 uses
  %i.jg = icmp ult ptr %.0215, %3
  br i1 %i.jg, label %.lr.ph.preheader.i.i411, label %_conv.exit418

.lr.ph.preheader.i.i411:                          ; preds = %bb.bu
  %i.jh = ptrtoaddr ptr %.0215 to i64
  %i.ji = sub i64 %i.y, %i.jh
  %scevgep.i.i412 = getelementptr i8, ptr %.0215, i64 %i.ji
  br label %.lr.ph.i.i413

.lr.ph.i.i413:                                    ; preds = %bb.bv, %.lr.ph.preheader.i.i411
  %.08.i.i414 = phi ptr [ %i.jk, %bb.bv ], [ %i.f, %.lr.ph.preheader.i.i411 ] ; 2 uses
  %.067.i.i415 = phi ptr [ %i.jl, %bb.bv ], [ %.0215, %.lr.ph.preheader.i.i411 ] ; 3 uses
  %i.jj = load i8, ptr %.08.i.i414, align 1       ; 2 uses
  store i8 %i.jj, ptr %.067.i.i415, align 1
  %.not.i.i416 = icmp eq i8 %i.jj, 0
  br i1 %.not.i.i416, label %_conv.exit418, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i.i413
  %i.jk = getelementptr inbounds nuw i8, ptr %.08.i.i414, i64 1
  %i.jl = getelementptr inbounds nuw i8, ptr %.067.i.i415, i64 1 ; 2 uses
  %exitcond.not.i.i417 = icmp eq ptr %i.jl, %3
  br i1 %exitcond.not.i.i417, label %_conv.exit418, label %.lr.ph.i.i413, !llvm.loop !0

_conv.exit418:                                    ; preds = %.lr.ph.i.i413, %bb.bv, %bb.bu
  %.06.lcssa.i.i410 = phi ptr [ %.0215, %bb.bu ], [ %scevgep.i.i412, %bb.bv ], [ %.067.i.i415, %.lr.ph.i.i413 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  br label %_add.exit

bb.bw:                                            ; preds = %bb.bt
  store i32 3, ptr %4, align 4
  %i.jm = srem i32 %i.hw, 100
  %i.jn = srem i32 %.1212.ph, 100
  %i.jo = add nsw i32 %i.jn, %i.jm
  %i.jp = sdiv i32 %i.hw, 100
  %i.jq = sdiv i32 %.1212.ph, 100
  %i.jr = add nsw i32 %i.jq, %i.jp
  %.lhs.trunc.i419 = trunc nsw i32 %i.jo to i16   ; 2 uses
  %i.js = sdiv i16 %.lhs.trunc.i419, 100
  %.sext.i = sext i16 %i.js to i32
  %i.jt = add nsw i32 %i.jr, %.sext.i             ; 2 uses
  %i.ju = srem i16 %.lhs.trunc.i419, 100          ; 3 uses
  %.sext49.i = sext i16 %i.ju to i32              ; 3 uses
  %i.jv = icmp slt i16 %i.ju, 0
  %i.jw = icmp sgt i32 %i.jt, 0
  %or.cond.i420 = select i1 %i.jv, i1 %i.jw, i1 false
  br i1 %or.cond.i420, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.jx = add nsw i32 %.sext49.i, 100
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.jy = icmp slt i32 %i.jt, 0
  %i.jz = icmp sgt i16 %i.ju, 0
  %or.cond3.i421 = and i1 %i.jz, %i.jy
  %i.ka = add nuw nsw i32 %.sext49.i, -100
  %spec.select516 = select i1 %or.cond3.i421, i32 %i.ka, i32 %.sext49.i
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.0.i423 = phi i32 [ %i.jx, %bb.bx ], [ %spec.select516, %bb.by ]
  %i.kb = call i32 @llvm.abs.i32(i32 %.0.i423, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.kc = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.2, i32 noundef %i.kb) #6 ; 0 uses
  %i.kd = icmp ult ptr %.0215, %3
  br i1 %i.kd, label %.lr.ph.preheader.i.i40.i, label %_yconv.exit425

.lr.ph.preheader.i.i40.i:                         ; preds = %bb.bz
  %i.ke = ptrtoaddr ptr %.0215 to i64
  %i.kf = sub i64 %i.y, %i.ke
  %scevgep.i.i41.i = getelementptr i8, ptr %.0215, i64 %i.kf
  br label %.lr.ph.i.i42.i

.lr.ph.i.i42.i:                                   ; preds = %bb.ca, %.lr.ph.preheader.i.i40.i
  %.08.i.i43.i = phi ptr [ %i.kh, %bb.ca ], [ %i.e, %.lr.ph.preheader.i.i40.i ] ; 2 uses
  %.067.i.i44.i = phi ptr [ %i.ki, %bb.ca ], [ %.0215, %.lr.ph.preheader.i.i40.i ] ; 3 uses
  %i.kg = load i8, ptr %.08.i.i43.i, align 1      ; 2 uses
  store i8 %i.kg, ptr %.067.i.i44.i, align 1
  %.not.i.i45.i = icmp eq i8 %i.kg, 0
  br i1 %.not.i.i45.i, label %_yconv.exit425, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i.i42.i
  %i.kh = getelementptr inbounds nuw i8, ptr %.08.i.i43.i, i64 1
  %i.ki = getelementptr inbounds nuw i8, ptr %.067.i.i44.i, i64 1 ; 2 uses
  %exitcond.not.i.i46.i = icmp eq ptr %i.ki, %3
  br i1 %exitcond.not.i.i46.i, label %_yconv.exit425, label %.lr.ph.i.i42.i, !llvm.loop !0

_yconv.exit425:                                   ; preds = %.lr.ph.i.i42.i, %bb.ca, %bb.bz
  %.06.lcssa.i.i39.i = phi ptr [ %.0215, %bb.bz ], [ %.067.i.i44.i, %.lr.ph.i.i42.i ], [ %scevgep.i.i41.i, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %_add.exit

bb.cb:                                            ; preds = %bb.bt
  %i.kj = call fastcc ptr @_yconv(i32 noundef %i.hw, i32 noundef %.1212.ph, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %.0215, ptr noundef %3)
  br label %_add.exit

bb.cc:                                            ; preds = %.preheader
  %i.kk = call fastcc ptr @_fmt(ptr noundef nonnull @.str.12, ptr noundef %1, ptr noundef %.0215, ptr noundef %3, ptr noundef %4)
  br label %_add.exit

bb.cd:                                            ; preds = %.preheader
  %i.kl = load i32, ptr %i.ab, align 4
  %i.km = add i32 %i.kl, 7
  %i.kn = load i32, ptr %i.aa, align 8            ; 2 uses
  %.not240 = icmp eq i32 %i.kn, 0
  %.neg654 = sub i32 1, %i.kn
  %spec.select253.neg655 = select i1 %.not240, i32 -6, i32 %.neg654
  %i.ko = add i32 %i.km, %spec.select253.neg655
  %i.kp = sdiv i32 %i.ko, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.kq = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.2, i32 noundef %i.kp) #6 ; 0 uses
  %i.kr = icmp ult ptr %.0215, %3
  br i1 %i.kr, label %.lr.ph.preheader.i.i427, label %_conv.exit434

.lr.ph.preheader.i.i427:                          ; preds = %bb.cd
  %i.ks = ptrtoaddr ptr %.0215 to i64
  %i.kt = sub i64 %i.y, %i.ks
  %scevgep.i.i428 = getelementptr i8, ptr %.0215, i64 %i.kt
  br label %.lr.ph.i.i429

.lr.ph.i.i429:                                    ; preds = %bb.ce, %.lr.ph.preheader.i.i427
  %.08.i.i430 = phi ptr [ %i.kv, %bb.ce ], [ %i.d, %.lr.ph.preheader.i.i427 ] ; 2 uses
  %.067.i.i431 = phi ptr [ %i.kw, %bb.ce ], [ %.0215, %.lr.ph.preheader.i.i427 ] ; 3 uses
  %i.ku = load i8, ptr %.08.i.i430, align 1       ; 2 uses
  store i8 %i.ku, ptr %.067.i.i431, align 1
  %.not.i.i432 = icmp eq i8 %i.ku, 0
  br i1 %.not.i.i432, label %_conv.exit434, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i.i429
  %i.kv = getelementptr inbounds nuw i8, ptr %.08.i.i430, i64 1
  %i.kw = getelementptr inbounds nuw i8, ptr %.067.i.i431, i64 1 ; 2 uses
  %exitcond.not.i.i433 = icmp eq ptr %i.kw, %3
  br i1 %exitcond.not.i.i433, label %_conv.exit434, label %.lr.ph.i.i429, !llvm.loop !0

_conv.exit434:                                    ; preds = %.lr.ph.i.i429, %bb.ce, %bb.cd
  %.06.lcssa.i.i426 = phi ptr [ %.0215, %bb.cd ], [ %scevgep.i.i428, %bb.ce ], [ %.067.i.i431, %.lr.ph.i.i429 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %_add.exit

bb.cf:                                            ; preds = %.preheader
  %i.kx = load i32, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.ky = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.11, i32 noundef %i.kx) #6 ; 0 uses
  %i.kz = icmp ult ptr %.0215, %3
  br i1 %i.kz, label %.lr.ph.preheader.i.i436, label %_conv.exit443

.lr.ph.preheader.i.i436:                          ; preds = %bb.cf
  %i.la = ptrtoaddr ptr %.0215 to i64
  %i.lb = sub i64 %i.y, %i.la
  %scevgep.i.i437 = getelementptr i8, ptr %.0215, i64 %i.lb
  br label %.lr.ph.i.i438

.lr.ph.i.i438:                                    ; preds = %bb.cg, %.lr.ph.preheader.i.i436
  %.08.i.i439 = phi ptr [ %i.ld, %bb.cg ], [ %i.c, %.lr.ph.preheader.i.i436 ] ; 2 uses
  %.067.i.i440 = phi ptr [ %i.le, %bb.cg ], [ %.0215, %.lr.ph.preheader.i.i436 ] ; 3 uses
  %i.lc = load i8, ptr %.08.i.i439, align 1       ; 2 uses
  store i8 %i.lc, ptr %.067.i.i440, align 1
  %.not.i.i441 = icmp eq i8 %i.lc, 0
  br i1 %.not.i.i441, label %_conv.exit443, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i.i438
  %i.ld = getelementptr inbounds nuw i8, ptr %.08.i.i439, i64 1
  %i.le = getelementptr inbounds nuw i8, ptr %.067.i.i440, i64 1 ; 2 uses
  %exitcond.not.i.i442 = icmp eq ptr %i.le, %3
  br i1 %exitcond.not.i.i442, label %_conv.exit443, label %.lr.ph.i.i438, !llvm.loop !0

_conv.exit443:                                    ; preds = %.lr.ph.i.i438, %bb.cg, %bb.cf
  %.06.lcssa.i.i435 = phi ptr [ %.0215, %bb.cf ], [ %scevgep.i.i437, %bb.cg ], [ %.067.i.i440, %.lr.ph.i.i438 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %_add.exit

bb.ch:                                            ; preds = %.preheader
  %i.lf = call fastcc ptr @_fmt(ptr noundef nonnull @.str.9, ptr noundef %1, ptr noundef %.0215, ptr noundef %3, ptr noundef %4)
  br label %_add.exit

bb.ci:                                            ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #6
  store i32 1, ptr %i.u, align 4
  %i.lg = call fastcc ptr @_fmt(ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef %.0215, ptr noundef %3, ptr noundef %i.u)
  %i.lh = load i32, ptr %i.u, align 4             ; 2 uses
  %i.li = icmp eq i32 %i.lh, 3
  %spec.select966 = select i1 %i.li, i32 2, i32 %i.lh ; 2 uses
  %i.lj = load i32, ptr %4, align 4
  %i.lk = icmp ugt i32 %spec.select966, %i.lj
  br i1 %i.lk, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 %spec.select966, ptr %4, align 4
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #6
  br label %_add.exit

bb.cl:                                            ; preds = %.preheader
  store i32 3, ptr %4, align 4
  %i.ll = load i32, ptr %i.z, align 4             ; 3 uses
  %i.lm = srem i32 %i.ll, 100                     ; 5 uses
  %i.ln = icmp slt i32 %i.lm, 0
  %i.lo = icmp sgt i32 %i.ll, -1900
  %or.cond.i447 = and i1 %i.lo, %i.ln
  br i1 %or.cond.i447, label %8, label %10

8:                                                ; preds = %bb.cl
  %9 = add nsw i32 %i.lm, 100
  br label %14

10:                                               ; preds = %bb.cl
  %11 = icmp slt i32 %i.ll, -1999
  %12 = icmp sgt i32 %i.lm, 0
  %or.cond3.i448 = and i1 %11, %12
  %13 = add nuw nsw i32 %i.lm, -100
  %spec.select517 = select i1 %or.cond3.i448, i32 %13, i32 %i.lm
  br label %14

14:                                               ; preds = %10, %8
  %.0.i450 = phi i32 [ %9, %8 ], [ %spec.select517, %10 ]
  %15 = call i32 @llvm.abs.i32(i32 %.0.i450, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %16 = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.2, i32 noundef %15) #6 ; 0 uses
  %17 = icmp ult ptr %.0215, %3
  br i1 %17, label %.lr.ph.preheader.i.i40.i453, label %_yconv.exit460

.lr.ph.preheader.i.i40.i453:                      ; preds = %14
  %i.lp = ptrtoaddr ptr %.0215 to i64
  %i.lq = sub i64 %i.y, %i.lp
  %scevgep.i.i41.i454 = getelementptr i8, ptr %.0215, i64 %i.lq
  br label %.lr.ph.i.i42.i455

.lr.ph.i.i42.i455:                                ; preds = %bb.cm, %.lr.ph.preheader.i.i40.i453
  %.08.i.i43.i456 = phi ptr [ %i.ls, %bb.cm ], [ %i.b, %.lr.ph.preheader.i.i40.i453 ] ; 2 uses
  %.067.i.i44.i457 = phi ptr [ %i.lt, %bb.cm ], [ %.0215, %.lr.ph.preheader.i.i40.i453 ] ; 3 uses
  %i.lr = load i8, ptr %.08.i.i43.i456, align 1   ; 2 uses
  store i8 %i.lr, ptr %.067.i.i44.i457, align 1
  %.not.i.i45.i458 = icmp eq i8 %i.lr, 0
  br i1 %.not.i.i45.i458, label %_yconv.exit460, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i.i42.i455
  %i.ls = getelementptr inbounds nuw i8, ptr %.08.i.i43.i456, i64 1
  %i.lt = getelementptr inbounds nuw i8, ptr %.067.i.i44.i457, i64 1 ; 2 uses
  %exitcond.not.i.i46.i459 = icmp eq ptr %i.lt, %3
  br i1 %exitcond.not.i.i46.i459, label %_yconv.exit460, label %.lr.ph.i.i42.i455, !llvm.loop !0

_yconv.exit460:                                   ; preds = %.lr.ph.i.i42.i455, %bb.cm, %14
  %.06.lcssa.i.i39.i452 = phi ptr [ %.0215, %14 ], [ %.067.i.i44.i457, %.lr.ph.i.i42.i455 ], [ %scevgep.i.i41.i454, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %_add.exit

bb.cn:                                            ; preds = %.preheader
  %i.lu = load i32, ptr %i.z, align 4
  %i.lv = call fastcc ptr @_yconv(i32 noundef %i.lu, i32 noundef 1900, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %.0215, ptr noundef %3)
  br label %_add.exit

bb.co:                                            ; preds = %.preheader
  %i.lw = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not239 = icmp ne ptr %i.lw, null
  %i.lx = icmp ult ptr %.0215, %3
  %or.cond518 = select i1 %.not239, i1 %i.lx, i1 false
  br i1 %or.cond518, label %.lr.ph.preheader.i462, label %_add.exit

.lr.ph.preheader.i462:                            ; preds = %bb.co
  %i.ly = ptrtoaddr ptr %.0215 to i64
  %i.lz = sub i64 %i.y, %i.ly
  %scevgep.i463 = getelementptr i8, ptr %.0215, i64 %i.lz
  br label %.lr.ph.i464

.lr.ph.i464:                                      ; preds = %bb.cp, %.lr.ph.preheader.i462
  %.08.i465 = phi ptr [ %i.mb, %bb.cp ], [ %i.lw, %.lr.ph.preheader.i462 ] ; 2 uses
  %.067.i466 = phi ptr [ %i.mc, %bb.cp ], [ %.0215, %.lr.ph.preheader.i462 ] ; 3 uses
  %i.ma = load i8, ptr %.08.i465, align 1         ; 2 uses
  store i8 %i.ma, ptr %.067.i466, align 1
  %.not.i467 = icmp eq i8 %i.ma, 0
  br i1 %.not.i467, label %_add.exit, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph.i464
  %i.mb = getelementptr inbounds nuw i8, ptr %.08.i465, i64 1
  %i.mc = getelementptr inbounds nuw i8, ptr %.067.i466, i64 1 ; 2 uses
  %exitcond.not.i468 = icmp eq ptr %i.mc, %3
  br i1 %exitcond.not.i468, label %_add.exit, label %.lr.ph.i464, !llvm.loop !0

bb.cq:                                            ; preds = %.preheader
  %i.md = load i32, ptr %i.v, align 8
  %i.me = icmp slt i32 %i.md, 0
  br i1 %i.me, label %_add.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.mf = load i64, ptr %i.w, align 8             ; 6 uses
  %i.mg = icmp eq i64 %i.mf, 0
  br i1 %i.mg, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.mh = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not238 = icmp eq ptr %i.mh, null
  br i1 %.not238, label %.split, label %.split508

.split508:                                        ; preds = %bb.cs
  %i.mi = load i8, ptr %i.mh, align 1
  %i.mj = icmp eq i8 %i.mi, 45
  br i1 %i.mj, label %.split220, label %.split

bb.ct:                                            ; preds = %bb.cr
  %i.mk = icmp slt i64 %i.mf, 0
  br i1 %i.mk, label %.split220, label %.split

.split220:                                        ; preds = %.split508, %bb.ct
  %i.ml = sub i64 0, %i.mf                        ; 3 uses
  %i.mm = icmp ult ptr %.0215, %3
  br i1 %i.mm, label %.lr.ph.preheader.i471, label %_add.exit478

.lr.ph.preheader.i471:                            ; preds = %.split220
  %i.mn = ptrtoaddr ptr %.0215 to i64
  %i.mo = sub i64 %i.y, %i.mn
  %scevgep.i472 = getelementptr i8, ptr %.0215, i64 %i.mo
  store i8 45, ptr %.0215, align 1
  %i.mp = getelementptr inbounds nuw i8, ptr %.0215, i64 1 ; 3 uses
  %exitcond.not.i477 = icmp eq ptr %i.mp, %3
  br i1 %exitcond.not.i477, label %_add.exit478, label %.lr.ph.i473.1

.lr.ph.i473.1:                                    ; preds = %.lr.ph.preheader.i471
  store i8 0, ptr %i.mp, align 1
  br label %_add.exit478

.split:                                           ; preds = %bb.cs, %.split508, %bb.ct
  %i.mq = icmp ult ptr %.0215, %3
  br i1 %i.mq, label %.lr.ph.preheader.i480, label %_add.exit478

.lr.ph.preheader.i480:                            ; preds = %.split
  %i.mr = ptrtoaddr ptr %.0215 to i64
  %i.ms = sub i64 %i.y, %i.mr
  %scevgep.i481 = getelementptr i8, ptr %.0215, i64 %i.ms
  store i8 43, ptr %.0215, align 1
  %i.mt = getelementptr inbounds nuw i8, ptr %.0215, i64 1 ; 3 uses
  %exitcond.not.i486 = icmp eq ptr %i.mt, %3
  br i1 %exitcond.not.i486, label %_add.exit478, label %.lr.ph.i482.1

.lr.ph.i482.1:                                    ; preds = %.lr.ph.preheader.i480
  store i8 0, ptr %i.mt, align 1
  br label %_add.exit478

_add.exit478:                                     ; preds = %.lr.ph.preheader.i480, %.lr.ph.i482.1, %.lr.ph.preheader.i471, %.lr.ph.i473.1, %.split, %.split220
  %phi.call = phi ptr [ %.0215, %.split ], [ %.0215, %.split220 ], [ %i.mp, %.lr.ph.i473.1 ], [ %scevgep.i472, %.lr.ph.preheader.i471 ], [ %scevgep.i481, %.lr.ph.preheader.i480 ], [ %i.mt, %.lr.ph.i482.1 ] ; 5 uses
  %.0205 = phi i64 [ %i.mf, %.split ], [ %i.ml, %.split220 ], [ %i.ml, %.lr.ph.i473.1 ], [ %i.ml, %.lr.ph.preheader.i471 ], [ %i.mf, %.lr.ph.preheader.i480 ], [ %i.mf, %.lr.ph.i482.1 ] ; 2 uses
  %i.mu = sdiv i64 %.0205, 60
  %i.mv = sdiv i64 %.0205, 3600
  %i.mw = mul nsw i64 %i.mv, 100
  %i.mx = srem i64 %i.mu, 60
  %i.my = add nsw i64 %i.mw, %i.mx
  %i.mz = trunc i64 %i.my to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.na = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.15, i32 noundef %i.mz) #6 ; 0 uses
  %i.nb = icmp ult ptr %phi.call, %3
  br i1 %i.nb, label %.lr.ph.preheader.i.i489, label %_conv.exit496

.lr.ph.preheader.i.i489:                          ; preds = %_add.exit478
  %i.nc = ptrtoaddr ptr %phi.call to i64
  %i.nd = sub i64 %i.y, %i.nc
  %scevgep.i.i490 = getelementptr i8, ptr %phi.call, i64 %i.nd
  br label %.lr.ph.i.i491

.lr.ph.i.i491:                                    ; preds = %bb.cu, %.lr.ph.preheader.i.i489
  %.08.i.i492 = phi ptr [ %i.nf, %bb.cu ], [ %i.a, %.lr.ph.preheader.i.i489 ] ; 2 uses
  %.067.i.i493 = phi ptr [ %i.ng, %bb.cu ], [ %phi.call, %.lr.ph.preheader.i.i489 ] ; 3 uses
  %i.ne = load i8, ptr %.08.i.i492, align 1       ; 2 uses
  store i8 %i.ne, ptr %.067.i.i493, align 1
  %.not.i.i494 = icmp eq i8 %i.ne, 0
  br i1 %.not.i.i494, label %_conv.exit496, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph.i.i491
  %i.nf = getelementptr inbounds nuw i8, ptr %.08.i.i492, i64 1
  %i.ng = getelementptr inbounds nuw i8, ptr %.067.i.i493, i64 1 ; 2 uses
  %exitcond.not.i.i495 = icmp eq ptr %i.ng, %3
  br i1 %exitcond.not.i.i495, label %_conv.exit496, label %.lr.ph.i.i491, !llvm.loop !0

_conv.exit496:                                    ; preds = %.lr.ph.i.i491, %bb.cu, %_add.exit478
  %.06.lcssa.i.i488 = phi ptr [ %phi.call, %_add.exit478 ], [ %scevgep.i.i490, %bb.cu ], [ %.067.i.i493, %.lr.ph.i.i491 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_add.exit

bb.cv:                                            ; preds = %.preheader
  %i.nh = call fastcc ptr @_fmt(ptr noundef nonnull @.str.56, ptr noundef %1, ptr noundef %.0215, ptr noundef %3, ptr noundef %4)
  br label %_add.exit

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.loopexit.loopexit, %bb.b
  %.2 = phi ptr [ %.0213, %bb.b ], [ %i.ah, %.loopexit.loopexit ], [ %.1214, %.preheader ] ; 2 uses
  %i.ni = icmp eq ptr %.0215, %3
  br i1 %i.ni, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %.loopexit
  %i.nj = load i8, ptr %.2, align 1
  %i.nk = getelementptr inbounds nuw i8, ptr %.0215, i64 1
  store i8 %i.nj, ptr %.0215, align 1
  br label %_add.exit

_add.exit:                                        ; preds = %bb.cp, %.lr.ph.i464, %bb.aw, %.lr.ph.i368, %bb.r, %.lr.ph.i275, %bb.n, %.lr.ph.i266, %bb.j, %.lr.ph.i257, %bb.f, %.lr.ph.i, %.lr.ph.preheader.i384, %.lr.ph.i386.1, %.lr.ph.preheader.i357, %.lr.ph.i359.1, %bb.bc, %bb.av, %bb.au, %_conv.exit.i, %.lr.ph.i.2.i, %.lr.ph.i.1.i, %.lr.ph.preheader.i.i, %bb.u, %bb.q, %bb.m, %bb.i, %bb.e, %_conv.exit496, %bb.cq, %_conv.exit418, %bb.cb, %_yconv.exit425, %bb.co, %bb.cw, %bb.cv, %bb.cn, %_yconv.exit460, %bb.ck, %bb.ch, %_conv.exit443, %_conv.exit434, %bb.cc, %_conv.exit409, %_conv.exit400, %bb.bb, %_conv.exit382, %bb.ay, %bb.ax, %_conv.exit355, %_conv.exit346, %_conv.exit337, %_conv.exit328, %_conv.exit319, %_conv.exit310, %_conv.exit301, %bb.af, %_conv.exit292, %_conv.exit, %bb.aa, %bb.z
  %.3218 = phi ptr [ %i.nk, %bb.cw ], [ %.0215, %bb.cq ], [ %scevgep.i.i, %.lr.ph.preheader.i.i ], [ %.0215, %bb.au ], [ %.0215, %bb.bc ], [ %.067.i, %.lr.ph.i ], [ %i.cu, %bb.z ], [ %i.cz, %bb.aa ], [ %.06.lcssa.i.i, %_conv.exit ], [ %.06.lcssa.i.i284, %_conv.exit292 ], [ %i.dq, %bb.af ], [ %.06.lcssa.i.i293, %_conv.exit301 ], [ %.06.lcssa.i.i302, %_conv.exit310 ], [ %.06.lcssa.i.i311, %_conv.exit319 ], [ %.06.lcssa.i.i320, %_conv.exit328 ], [ %.06.lcssa.i.i329, %_conv.exit337 ], [ %.06.lcssa.i.i338, %_conv.exit346 ], [ %.06.lcssa.i.i347, %_conv.exit355 ], [ %scevgep.i.i, %.lr.ph.i.1.i ], [ %.0215, %bb.av ], [ %i.gm, %bb.ax ], [ %i.gn, %bb.ay ], [ %.06.lcssa.i.i374, %_conv.exit382 ], [ %i.gw, %bb.bb ], [ %i.ha, %.lr.ph.i386.1 ], [ %.06.lcssa.i.i392, %_conv.exit400 ], [ %.06.lcssa.i.i401, %_conv.exit409 ], [ %i.nh, %bb.cv ], [ %i.kk, %bb.cc ], [ %.06.lcssa.i.i426, %_conv.exit434 ], [ %.06.lcssa.i.i435, %_conv.exit443 ], [ %i.lf, %bb.ch ], [ %i.lg, %bb.ck ], [ %.06.lcssa.i.i39.i452, %_yconv.exit460 ], [ %i.lv, %bb.cn ], [ %.067.i370, %.lr.ph.i368 ], [ %.0215, %bb.co ], [ %i.kj, %bb.cb ], [ %.06.lcssa.i.i410, %_conv.exit418 ], [ %.06.lcssa.i.i39.i, %_yconv.exit425 ], [ %.06.lcssa.i.i488, %_conv.exit496 ], [ %.0215, %bb.e ], [ %i.gc, %.lr.ph.i359.1 ], [ %.0215, %bb.i ], [ %scevgep.i385, %.lr.ph.preheader.i384 ], [ %.0215, %bb.m ], [ %scevgep.i274, %bb.r ], [ %.0215, %bb.q ], [ %scevgep.i358, %.lr.ph.preheader.i357 ], [ %i.cm, %.lr.ph.i.2.i ], [ %.06.lcssa.i.i.i, %_conv.exit.i ], [ %.0215, %bb.u ], [ %.067.i268, %.lr.ph.i266 ], [ %.067.i259, %.lr.ph.i257 ], [ %scevgep.i, %bb.f ], [ %scevgep.i256, %bb.j ], [ %scevgep.i265, %bb.n ], [ %.067.i277, %.lr.ph.i275 ], [ %scevgep.i367, %bb.aw ], [ %scevgep.i463, %bb.cp ], [ %.067.i466, %.lr.ph.i464 ]
  %.3 = phi ptr [ %.2, %bb.cw ], [ %i.ah, %bb.cq ], [ %i.ah, %.lr.ph.preheader.i.i ], [ %i.ah, %bb.au ], [ %i.ah, %bb.bc ], [ %i.ah, %bb.f ], [ %i.ah, %bb.z ], [ %i.ah, %bb.aa ], [ %i.ah, %_conv.exit ], [ %i.ah, %_conv.exit292 ], [ %i.ah, %bb.af ], [ %i.ah, %_conv.exit301 ], [ %i.ah, %_conv.exit310 ], [ %i.ah, %_conv.exit319 ], [ %i.ah, %_conv.exit328 ], [ %i.ah, %_conv.exit337 ], [ %i.ah, %_conv.exit346 ], [ %i.ah, %_conv.exit355 ], [ %i.ah, %.lr.ph.i.1.i ], [ %i.ah, %bb.av ], [ %i.ah, %bb.ax ], [ %i.ah, %bb.ay ], [ %i.ah, %_conv.exit382 ], [ %i.ah, %bb.bb ], [ %i.ah, %.lr.ph.i386.1 ], [ %i.ah, %_conv.exit400 ], [ %i.ah, %_conv.exit409 ], [ %i.ah, %bb.cv ], [ %i.ah, %bb.cc ], [ %i.ah, %_conv.exit434 ], [ %i.ah, %_conv.exit443 ], [ %i.ah, %bb.ch ], [ %i.ah, %bb.ck ], [ %i.ah, %_yconv.exit460 ], [ %i.ah, %bb.cn ], [ %i.ah, %bb.aw ], [ %i.ah, %bb.co ], [ %i.ah, %bb.cb ], [ %i.ah, %_conv.exit418 ], [ %i.ah, %_yconv.exit425 ], [ %i.ah, %_conv.exit496 ], [ %i.ah, %bb.e ], [ %i.ah, %.lr.ph.i359.1 ], [ %i.ah, %bb.i ], [ %i.ah, %.lr.ph.preheader.i384 ], [ %i.ah, %bb.m ], [ %i.ah, %bb.r ], [ %i.ah, %bb.q ], [ %i.ah, %.lr.ph.preheader.i357 ], [ %i.ah, %.lr.ph.i.2.i ], [ %i.ah, %_conv.exit.i ], [ %i.ah, %bb.u ], [ %i.ah, %bb.n ], [ %i.ah, %bb.j ], [ %i.ah, %.lr.ph.i ], [ %i.ah, %.lr.ph.i257 ], [ %i.ah, %.lr.ph.i266 ], [ %i.ah, %.lr.ph.i275 ], [ %i.ah, %.lr.ph.i368 ], [ %i.ah, %.lr.ph.i464 ], [ %i.ah, %bb.cp ]
  %i.nl = getelementptr inbounds nuw i8, ptr %.3, i64 1
  br label %bb.b, !llvm.loop !6

bb.cx:                                            ; preds = %bb.b, %.loopexit
  ret ptr %.0215
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_yconv(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr nofree noundef writeonly captures(address, ret: address, provenance) %4, ptr nofree noundef readnone captures(address) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 4 uses
  %i.b = alloca [12 x i8], align 1                ; 4 uses
  %i.c = srem i32 %0, 100
  %i.d = srem i32 %1, 100
  %i.e = add nsw i32 %i.d, %i.c
  %i.f = sdiv i32 %0, 100
  %i.g = sdiv i32 %1, 100
  %i.h = add nsw i32 %i.g, %i.f
  %.lhs.trunc = trunc nsw i32 %i.e to i16         ; 2 uses
  %i.i = sdiv i16 %.lhs.trunc, 100
  %.sext = sext i16 %i.i to i32
  %i.j = add nsw i32 %i.h, %.sext                 ; 5 uses
  %i.k = srem i16 %.lhs.trunc, 100                ; 3 uses
  %.sext49 = sext i16 %i.k to i32                 ; 3 uses
  %i.l = icmp slt i16 %i.k, 0
  %i.m = icmp sgt i32 %i.j, 0
  %or.cond = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = add nsw i32 %.sext49, 100
  %i.o = add nsw i32 %i.j, -1
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.p = icmp slt i32 %i.j, 0
  %i.q = icmp sgt i16 %i.k, 0
  %or.cond3 = and i1 %i.q, %i.p
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = add nuw nsw i32 %.sext49, -100
  %i.s = add nsw i32 %i.j, 1
end_hunk_1
