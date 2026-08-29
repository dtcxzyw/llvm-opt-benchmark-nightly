Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sqlite3?download=true
inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 106
begin_hunk_0_@vtabCallConstructor:bb.a

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %1, align 8, !tbaa !402
  %i.af = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.250, ptr noundef %i.ae)
  store ptr %i.af, ptr %4, align 8, !tbaa !72
  br label %sqlite3_free.exit100

sqlite3_free.exit100:                             ; preds = %bb.g, %bb.f, %bb.h, %bb.i, %bb.e
  %.079 = phi i32 [ %i.l, %bb.e ], [ 0, %bb.h ], [ 1, %bb.i ], [ %i.l, %bb.f ], [ %i.l, %bb.g ] ; 2 uses
  %i.ag = icmp eq i32 %.079, 0
  store ptr null, ptr %i.i, align 8, !tbaa !363
  %i.ah = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !28
  %sext.i99 = shl i64 %i.ai, 32
  %i.aj = ashr exact i64 %sext.i99, 32
  %i.ak = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.al = sub nsw i64 %i.ak, %i.aj
  store i64 %i.al, ptr @mem.5, align 8, !tbaa !22
  call void @free(ptr noundef nonnull %i.ah) #43
  br i1 %i.ag, label %.preheader, label %.loopexit110

.preheader:                                       ; preds = %sqlite3_free.exit100
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !254 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph126, label %.loopexit110

.lr.ph126:                                        ; preds = %.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.ap, align 8, !tbaa !261
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph126, %bb.s
  %i.aq = phi i32 [ %i.an, %.lr.ph126 ], [ %i.ew, %bb.s ] ; 2 uses
  %i.ar = phi ptr [ %.pre, %.lr.ph126 ], [ %i.ex, %bb.s ] ; 3 uses
  %indvars.iv145 = phi i64 [ 0, %.lr.ph126 ], [ %indvars.iv.next146, %bb.s ] ; 3 uses
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %indvars.iv145
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !399 ; 19 uses
  %.not93 = icmp eq ptr %i.au, null
  br i1 %.not93, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.au) #42 ; 4 uses
  %i.aw = trunc i64 %i.av to i32                  ; 3 uses
  %scevgep = getelementptr i8, ptr %i.au, i64 6
  %i.ax = load i8, ptr %i.au, align 1, !tbaa !37
  %i.ay = and i8 %i.ax, -33
  %i.az = icmp eq i8 %i.ay, 72
  br i1 %i.az, label %.lr.ph.i.1, label %sqlite3StrNICmp.exit

.lr.ph.i.1:                                       ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !37
  %i.bc = and i8 %i.bb, -33
  %i.bd = icmp eq i8 %i.bc, 73
  br i1 %i.bd, label %.lr.ph.i.2, label %sqlite3StrNICmp.exit

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 2 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !37
  %i.bg = and i8 %i.bf, -33
  %i.bh = icmp eq i8 %i.bg, 68
  br i1 %i.bh, label %.lr.ph.i.3, label %sqlite3StrNICmp.exit

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 3 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !37
  %i.bk = and i8 %i.bj, -33
  %i.bl = icmp eq i8 %i.bk, 68
  br i1 %i.bl, label %.lr.ph.i.4, label %sqlite3StrNICmp.exit

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !37
  %i.bo = and i8 %i.bn, -33
  %i.bp = icmp eq i8 %i.bo, 69
  br i1 %i.bp, label %.lr.ph.i.5, label %sqlite3StrNICmp.exit

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.au, i64 5 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !37
  %i.bs = and i8 %i.br, -33
  %i.bt = icmp eq i8 %i.bs, 78
  br i1 %i.bt, label %sqlite3StrNICmp.exit.thread, label %sqlite3StrNICmp.exit

sqlite3StrNICmp.exit:                             ; preds = %bb.k, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5
  %.lcssa = phi i32 [ 104, %bb.k ], [ 105, %.lr.ph.i.1 ], [ 100, %.lr.ph.i.2 ], [ 100, %.lr.ph.i.3 ], [ 101, %.lr.ph.i.4 ], [ 110, %.lr.ph.i.5 ]
  %.015.i.lcssa127 = phi ptr [ %i.au, %bb.k ], [ %i.ba, %.lr.ph.i.1 ], [ %i.be, %.lr.ph.i.2 ], [ %i.bi, %.lr.ph.i.3 ], [ %i.bm, %.lr.ph.i.4 ], [ %i.bq, %.lr.ph.i.5 ]
  %i.bu = load i8, ptr %.015.i.lcssa127, align 1, !tbaa !37
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !37
  %i.by = zext i8 %i.bx to i32
  %.not94 = icmp eq i32 %.lcssa, %i.by
  br i1 %.not94, label %sqlite3StrNICmp.exit.thread, label %bb.l

sqlite3StrNICmp.exit.thread:                      ; preds = %.lr.ph.i.5, %sqlite3StrNICmp.exit
  %i.bz = load i8, ptr %scevgep, align 1, !tbaa !37
  switch i8 %i.bz, label %bb.l [
    i8 0, label %.loopexit
    i8 32, label %.loopexit
  ]

bb.l:                                             ; preds = %sqlite3StrNICmp.exit.thread, %sqlite3StrNICmp.exit
  %i.ca = icmp sgt i32 %i.aw, 0
  br i1 %i.ca, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.l
  %wide.trip.count = and i64 %i.av, 2147483647
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.preheader
  %indvars.iv140 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv140 ; 9 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !37
  %i.cd = icmp eq i8 %i.cc, 32
  br i1 %i.cd, label %.lr.ph.i101.1, label %sqlite3StrNICmp.exit108

.lr.ph.i101.1:                                    ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 1 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !37
  %i.cg = and i8 %i.cf, -33
  %i.ch = icmp eq i8 %i.cg, 72
  br i1 %i.ch, label %.lr.ph.i101.2, label %sqlite3StrNICmp.exit108

.lr.ph.i101.2:                                    ; preds = %.lr.ph.i101.1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 2 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !37
  %i.ck = and i8 %i.cj, -33
  %i.cl = icmp eq i8 %i.ck, 73
  br i1 %i.cl, label %.lr.ph.i101.3, label %sqlite3StrNICmp.exit108

.lr.ph.i101.3:                                    ; preds = %.lr.ph.i101.2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 3 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !37
  %i.co = and i8 %i.cn, -33
  %i.cp = icmp eq i8 %i.co, 68
  br i1 %i.cp, label %.lr.ph.i101.4, label %sqlite3StrNICmp.exit108

.lr.ph.i101.4:                                    ; preds = %.lr.ph.i101.3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !37
  %i.cs = and i8 %i.cr, -33
  %i.ct = icmp eq i8 %i.cs, 68
  br i1 %i.ct, label %.lr.ph.i101.5, label %sqlite3StrNICmp.exit108

.lr.ph.i101.5:                                    ; preds = %.lr.ph.i101.4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cb, i64 5 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !37
  %i.cw = and i8 %i.cv, -33
  %i.cx = icmp eq i8 %i.cw, 69
  br i1 %i.cx, label %.lr.ph.i101.6, label %sqlite3StrNICmp.exit108

.lr.ph.i101.6:                                    ; preds = %.lr.ph.i101.5
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cb, i64 6 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !37
  %i.da = and i8 %i.cz, -33
  %i.db = icmp eq i8 %i.da, 78
  br i1 %i.db, label %sqlite3StrNICmp.exit108.thread, label %sqlite3StrNICmp.exit108

sqlite3StrNICmp.exit108:                          ; preds = %bb.m, %.lr.ph.i101.1, %.lr.ph.i101.2, %.lr.ph.i101.3, %.lr.ph.i101.4, %.lr.ph.i101.5, %.lr.ph.i101.6
  %.lcssa134 = phi i32 [ 32, %bb.m ], [ 104, %.lr.ph.i101.1 ], [ 105, %.lr.ph.i101.2 ], [ 100, %.lr.ph.i101.3 ], [ 100, %.lr.ph.i101.4 ], [ 101, %.lr.ph.i101.5 ], [ 110, %.lr.ph.i101.6 ]
  %.015.i103.lcssa131 = phi ptr [ %i.cb, %bb.m ], [ %i.ce, %.lr.ph.i101.1 ], [ %i.ci, %.lr.ph.i101.2 ], [ %i.cm, %.lr.ph.i101.3 ], [ %i.cq, %.lr.ph.i101.4 ], [ %i.cu, %.lr.ph.i101.5 ], [ %i.cy, %.lr.ph.i101.6 ]
  %i.dc = load i8, ptr %.015.i103.lcssa131, align 1, !tbaa !37
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !37
  %i.dg = zext i8 %i.df to i32
  %i.dh = icmp eq i32 %.lcssa134, %i.dg
  br i1 %i.dh, label %sqlite3StrNICmp.exit108.thread, label %bb.o

sqlite3StrNICmp.exit108.thread:                   ; preds = %.lr.ph.i101.6, %sqlite3StrNICmp.exit108
  %i.di = getelementptr inbounds nuw i8, ptr %i.cb, i64 7
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !37
  switch i8 %i.dj, label %bb.o [
    i8 0, label %bb.n
    i8 32, label %bb.n
  ]

bb.n:                                             ; preds = %sqlite3StrNICmp.exit108.thread, %sqlite3StrNICmp.exit108.thread
  %i.dk = trunc nuw nsw i64 %indvars.iv140 to i32
  %i.dl = add nuw nsw i32 %i.dk, 1
  br label %.loopexit

bb.o:                                             ; preds = %sqlite3StrNICmp.exit108.thread, %sqlite3StrNICmp.exit108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %bb.m, !llvm.loop !1245

.loopexit.loopexit:                               ; preds = %bb.o
  %i.dm = trunc i64 %i.av to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.l, %sqlite3StrNICmp.exit.thread, %sqlite3StrNICmp.exit.thread, %bb.n
  %.1 = phi i32 [ %i.dl, %bb.n ], [ 0, %sqlite3StrNICmp.exit.thread ], [ 0, %sqlite3StrNICmp.exit.thread ], [ 0, %bb.l ], [ %i.dm, %.loopexit.loopexit ] ; 5 uses
  %i.dn = icmp slt i32 %.1, %i.aw
  br i1 %i.dn, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.loopexit
  %i.do = sext i32 %.1 to i64                     ; 7 uses
  %i.dp = getelementptr i8, ptr %i.au, i64 %i.do  ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 6
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !37
  %.not97.not = icmp eq i8 %i.dr, 0
  %i.ds = select i1 %.not97.not, i32 6, i32 7     ; 2 uses
  %i.dt = add nsw i32 %.1, %i.ds                  ; 2 uses
  %.not98122 = icmp sgt i32 %i.dt, %i.aw
  br i1 %.not98122, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.p
  %i.du = zext nneg i32 %i.ds to i64              ; 2 uses
  %sext = shl i64 %i.av, 32
  %i.dv = ashr exact i64 %sext, 32                ; 2 uses
  %i.dw = sext i32 %i.dt to i64                   ; 5 uses
  %5 = add nsw i64 %i.dv, 1
  %i.dx = add nsw i64 %i.do, %i.du
  %i.dy = sub nsw i64 %5, %i.dx                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.dy, 8
  br i1 %min.iters.check, label %.lr.ph124.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check159 = icmp ult i64 %i.dy, 32
  br i1 %min.iters.check159, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dz = and i64 %i.dy, 24
  %n.vec = and i64 %i.dy, -32                     ; 5 uses
  %i.ea = add nsw i64 %n.vec, %i.do
  %i.eb = add nsw i64 %n.vec, %i.dw
  %invariant.gep = getelementptr i8, ptr %i.au, i64 %i.dw
  %invariant.gep171 = getelementptr i8, ptr %i.au, i64 %i.do
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <16 x i8>, ptr %gep, align 1, !tbaa !37
  %wide.load160 = load <16 x i8>, ptr %i.ec, align 1, !tbaa !37
  %gep172 = getelementptr i8, ptr %invariant.gep171, i64 %index ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %gep172, i64 16
  store <16 x i8> %wide.load, ptr %gep172, align 1, !tbaa !37
  store <16 x i8> %wide.load160, ptr %i.ed, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !1246

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dy, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph124.preheader, label %vec.epilog.ph, !prof !67

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec162 = and i64 %i.dy, -8                   ; 4 uses
  %i.ef = add nsw i64 %n.vec162, %i.do
  %i.eg = add nsw i64 %n.vec162, %i.dw
  %invariant.gep173 = getelementptr i8, ptr %i.au, i64 %i.dw
  %invariant.gep175 = getelementptr i8, ptr %i.au, i64 %i.do
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index163 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next165, %vec.epilog.vector.body ] ; 3 uses
  %gep174 = getelementptr i8, ptr %invariant.gep173, i64 %index163
  %wide.load164 = load <8 x i8>, ptr %gep174, align 1, !tbaa !37
  %gep176 = getelementptr i8, ptr %invariant.gep175, i64 %index163
  store <8 x i8> %wide.load164, ptr %gep176, align 1, !tbaa !37
  %index.next165 = add nuw i64 %index163, 8       ; 2 uses
  %i.eh = icmp eq i64 %index.next165, %n.vec162
  br i1 %i.eh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1247

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n166 = icmp eq i64 %i.dy, %n.vec162
  br i1 %cmp.n166, label %._crit_edge, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv142.ph = phi i64 [ %i.do, %iter.check ], [ %i.ea, %vec.epilog.iter.check ], [ %i.ef, %vec.epilog.middle.block ]
  %.ph = phi i64 [ %i.dw, %iter.check ], [ %i.eb, %vec.epilog.iter.check ], [ %i.eg, %vec.epilog.middle.block ]
  br label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %.lr.ph124
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %.lr.ph124 ], [ %indvars.iv142.ph, %.lr.ph124.preheader ] ; 2 uses
  %i.ei = phi i64 [ %i.em, %.lr.ph124 ], [ %.ph, %.lr.ph124.preheader ]
  %i.ej = getelementptr inbounds i8, ptr %i.au, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !37
  %i.el = getelementptr inbounds i8, ptr %i.au, i64 %indvars.iv142
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !37
  %indvars.iv.next143 = add nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.em = add nsw i64 %indvars.iv.next143, %i.du  ; 2 uses
  %.not98 = icmp sgt i64 %i.em, %i.dv
  br i1 %.not98, label %._crit_edge, label %.lr.ph124, !llvm.loop !1248

._crit_edge:                                      ; preds = %.lr.ph124, %middle.block, %vec.epilog.middle.block, %bb.p
  %i.en = load i8, ptr %i.dp, align 1, !tbaa !37
  %i.eo = icmp eq i8 %i.en, 0
  %i.ep = icmp sgt i32 %.1, 0
  %or.cond3 = and i1 %i.ep, %i.eo
  br i1 %or.cond3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %i.eq = zext nneg i32 %.1 to i64
  %i.er = getelementptr i8, ptr %i.au, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 -1
  store i8 0, ptr %i.es, align 1, !tbaa !37
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge
  %i.et = load ptr, ptr %i.ap, align 8, !tbaa !261 ; 2 uses
  %i.eu = getelementptr inbounds nuw [40 x i8], ptr %i.et, i64 %indvars.iv145
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 35
  store i8 1, ptr %i.ev, align 1, !tbaa !1249
  %.pre148 = load i32, ptr %i.am, align 8, !tbaa !254
  br label %bb.s

bb.s:                                             ; preds = %.loopexit, %bb.r, %bb.j
  %i.ew = phi i32 [ %i.aq, %.loopexit ], [ %.pre148, %bb.r ], [ %i.aq, %bb.j ] ; 2 uses
  %i.ex = phi ptr [ %i.ar, %.loopexit ], [ %i.et, %bb.r ], [ %i.ar, %bb.j ]
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %i.ey = sext i32 %i.ew to i64
  %i.ez = icmp slt i64 %indvars.iv.next146, %i.ey
  br i1 %i.ez, label %bb.j, label %.loopexit110, !llvm.loop !1250

.loopexit110:                                     ; preds = %bb.s, %.preheader, %sqlite3_free.exit100, %bb.a
  %.078 = phi i32 [ 7, %bb.a ], [ %.079, %sqlite3_free.exit100 ], [ 0, %.preheader ], [ 0, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret i32 %.078
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @sqlite3IsNumber(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i8 noundef zeroext %2) unnamed_addr #31 {
bb.a:
  %i.a = icmp eq i8 %2, 1
  %i.b = select i1 %i.a, i32 1, i32 2             ; 2 uses
  %i.c = icmp eq i8 %2, 3
  %spec.select.idx = zext i1 %i.c to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx ; 3 uses
  %i.d = load i8, ptr %spec.select, align 1, !tbaa !37 ; 2 uses
  switch i8 %i.d, label %bb.c [
    i8 45, label %bb.b
    i8 43, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.e ; 2 uses
  %.pre = load i8, ptr %i.f, align 1, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i8 [ %.pre, %bb.b ], [ %i.d, %bb.a ]
  %.1 = phi ptr [ %i.f, %bb.b ], [ %spec.select, %bb.a ]
  %i.h = tail call ptr @__ctype_b_loc() #46
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !168  ; 6 uses
  %i.j = zext i8 %i.g to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !170
  %i.m = and i16 %i.l, 2048
  %.not = icmp eq i16 %i.m, 0
  br i1 %.not, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = zext nneg i32 %i.b to i64                ; 6 uses
  %.not46 = icmp eq ptr %1, null                  ; 3 uses
  br i1 %.not46, label %.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %1, align 4, !tbaa !4
  br label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.d
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.f
  %.1.pn = phi ptr [ %.2, %bb.f ], [ %.1, %.preheader ]
  %.2 = getelementptr inbounds nuw i8, ptr %.1.pn, i64 %i.n ; 4 uses
  %i.o = load i8, ptr %.2, align 1, !tbaa !37     ; 2 uses
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !170
  %i.s = and i16 %i.r, 2048
  %.not47 = icmp eq i16 %i.s, 0
  br i1 %.not47, label %bb.g, label %bb.f, !llvm.loop !1251

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq i8 %i.o, 46
  br i1 %i.t, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.2, i64 %i.n ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !37
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !170
  %i.z = and i16 %i.y, 2048
  %.not48 = icmp eq i16 %i.z, 0
  br i1 %.not48, label %bb.p, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.354 = phi ptr [ %i.aa, %.lr.ph ], [ %i.u, %bb.h ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.354, i64 %i.n ; 4 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !37
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !170
  %i.af = and i16 %i.ae, 2048
  %.not49 = icmp eq i16 %i.af, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph, !llvm.loop !1252

._crit_edge:                                      ; preds = %.lr.ph
  br i1 %.not46, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  store i32 1, ptr %1, align 4, !tbaa !4
end_hunk_0
