inline.NumInlined: 22
inline.NumDeleted: 6
begin_hunk_0_@ubidi_getLogicalMap_78:bb.a
  switch i16 %.fr137, label %bb.u [
    i16 8297, label %bb.t
    i16 8296, label %bb.t
    i16 8295, label %bb.t
    i16 8294, label %bb.t
    i16 8238, label %bb.t
    i16 8237, label %bb.t
    i16 8236, label %bb.t
    i16 8235, label %bb.t
    i16 8234, label %bb.t
  ]

bb.t:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %.lr.ph154.split
  %i.ez = add nsw i32 %.1118152, 1
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.et
  store i32 -1, ptr %i.fa, align 4
  br label %bb.v

bb.u:                                             ; preds = %switch.early.test
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.et ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = sub nsw i32 %i.fc, %.1118152
  store i32 %i.fd, ptr %i.fb, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2119 = phi i32 [ %i.ez, %bb.t ], [ %.1118152, %bb.u ] ; 2 uses
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next184, %wide.trip.count189
  br i1 %exitcond.not, label %.loopexit140, label %.lr.ph154.split, !llvm.loop !60

.loopexit140:                                     ; preds = %bb.v, %bb.s, %.lr.ph157, %middle.block262, %.preheader141, %.preheader139, %bb.o
  %.3120 = phi i32 [ %.0117158, %bb.o ], [ %.0117158, %.preheader139 ], [ %.0117158, %middle.block262 ], [ %.0117158, %.preheader141 ], [ %.2119.us, %bb.s ], [ %.0117158, %.lr.ph157 ], [ %.2119, %bb.v ]
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond198.not = icmp eq i64 %indvars.iv.next195, %wide.trip.count197
  br i1 %exitcond198.not, label %.loopexit138, label %bb.o, !llvm.loop !63

.loopexit138.sink.split:                          ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %.sink = phi i32 [ 27, %bb.f ], [ 27, %bb.c ], [ 27, %bb.e ], [ 1, %bb.g ]
  store i32 %.sink, ptr %2, align 4
  br label %.loopexit138

.loopexit138:                                     ; preds = %.loopexit140, %.loopexit, %.loopexit138.sink.split, %.preheader, %bb.h, %bb.n, %ubidi_countRuns_78.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ubidi_getVisualMap_78(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not16.i = icmp eq ptr %0, null
  br i1 %.not16.i, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %0, align 8                ; 4 uses
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %ubidi_countRuns_78.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not17.i = icmp eq ptr %i.e, null
  br i1 %.not17.i, label %.loopexit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %ubidi_countRuns_78.exit, label %.loopexit.sink.split

ubidi_countRuns_78.exit:                          ; preds = %bb.e, %bb.g
  %i.i = tail call signext i8 @ubidi_getRuns_78(ptr noundef nonnull %0, ptr nonnull poison) ; 0 uses
  %.pre = load i32, ptr %2, align 4
  %i.j = icmp sgt i32 %.pre, 0
  br i1 %i.j, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %ubidi_countRuns_78.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = sext i32 %i.n to i64
  %.idx = mul nsw i64 %i.o, 12
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %.idx
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %.loopexit, label %.preheader168

.preheader168:                                    ; preds = %bb.h
  %i.t = icmp sgt i32 %i.n, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader168, %.loopexit166
  %.0174 = phi ptr [ %i.bl, %.loopexit166 ], [ %i.l, %.preheader168 ] ; 3 uses
  %.0121173 = phi i32 [ %.3, %.loopexit166 ], [ 0, %.preheader168 ] ; 9 uses
  %.0131172 = phi ptr [ %.3134, %.loopexit166 ], [ %1, %.preheader168 ] ; 6 uses
  %i.u = load i32, ptr %.0174, align 4            ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0174, i64 4
  %i.w = load i32, ptr %i.v, align 4              ; 3 uses
  %i.x = icmp sgt i32 %i.u, -1
  br i1 %i.x, label %.preheader165.preheader, label %bb.i

.preheader165.preheader:                          ; preds = %.lr.ph
  %i.y = add i32 %.0121173, 1
  %smax219 = tail call i32 @llvm.smax.i32(i32 %i.w, i32 %i.y) ; 4 uses
  %i.z = xor i32 %.0121173, -1
  %i.aa = add i32 %smax219, %i.z                  ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.aa, 7
  br i1 %min.iters.check, label %.preheader165.preheader355, label %vector.ph

vector.ph:                                        ; preds = %.preheader165.preheader
  %n.vec = and i64 %i.ac, 8589934584              ; 4 uses
  %i.ad = shl nuw nsw i64 %n.vec, 2
  %i.ae = getelementptr i8, ptr %.0131172, i64 %i.ad ; 2 uses
  %i.af = trunc i64 %n.vec to i32                 ; 2 uses
  %i.ag = add i32 %.0121173, %i.af
  %i.ah = add i32 %i.u, %i.af
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.u, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.ai = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0131172, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4
  store <4 x i32> %step.add, ptr %i.aj, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit166, label %.preheader165.preheader355

.preheader165.preheader355:                       ; preds = %.preheader165.preheader, %middle.block
  %.1132.ph = phi ptr [ %.0131172, %.preheader165.preheader ], [ %i.ae, %middle.block ]
  %.1122.ph = phi i32 [ %.0121173, %.preheader165.preheader ], [ %i.ag, %middle.block ]
  %.0120.ph = phi i32 [ %i.u, %.preheader165.preheader ], [ %i.ah, %middle.block ]
  br label %.preheader165

.preheader165:                                    ; preds = %.preheader165.preheader355, %.preheader165
  %.1132 = phi ptr [ %i.am, %.preheader165 ], [ %.1132.ph, %.preheader165.preheader355 ] ; 2 uses
  %.1122 = phi i32 [ %i.an, %.preheader165 ], [ %.1122.ph, %.preheader165.preheader355 ]
  %.0120 = phi i32 [ %i.al, %.preheader165 ], [ %.0120.ph, %.preheader165.preheader355 ] ; 2 uses
  %i.al = add nuw nsw i32 %.0120, 1
  %i.am = getelementptr inbounds nuw i8, ptr %.1132, i64 4 ; 2 uses
  store i32 %.0120, ptr %.1132, align 4
  %i.an = add nsw i32 %.1122, 1                   ; 2 uses
  %exitcond220.not = icmp eq i32 %i.an, %smax219
  br i1 %exitcond220.not, label %.loopexit166, label %.preheader165, !llvm.loop !65

bb.i:                                             ; preds = %.lr.ph
  %i.ao = and i32 %i.u, 2147483647
  %i.ap = sub i32 %i.w, %.0121173
  %i.aq = add nsw i32 %i.ap, %i.ao                ; 3 uses
  %i.ar = add i32 %.0121173, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.w, i32 %i.ar) ; 4 uses
  %i.as = xor i32 %.0121173, -1
  %i.at = add i32 %smax, %i.as                    ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check287 = icmp ult i32 %i.at, 7
  br i1 %min.iters.check287, label %scalar.ph286.preheader, label %vector.ph288

vector.ph288:                                     ; preds = %bb.i
  %n.vec290 = and i64 %i.av, 8589934584           ; 4 uses
  %i.aw = shl nuw nsw i64 %n.vec290, 2
  %i.ax = getelementptr i8, ptr %.0131172, i64 %i.aw ; 2 uses
  %i.ay = trunc i64 %n.vec290 to i32              ; 2 uses
  %i.az = add i32 %.0121173, %i.ay
  %i.ba = sub i32 %i.aq, %i.ay
  %broadcast.splatinsert291 = insertelement <4 x i32> poison, i32 %i.aq, i64 0
  %broadcast.splat292 = shufflevector <4 x i32> %broadcast.splatinsert291, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bb = add nsw <4 x i32> %broadcast.splat292, <i32 0, i32 -1, i32 -2, i32 -3>
  br label %vector.body293

vector.body293:                                   ; preds = %vector.body293, %vector.ph288
  %index294 = phi i64 [ 0, %vector.ph288 ], [ %index.next297, %vector.body293 ] ; 2 uses
  %vec.ind295 = phi <4 x i32> [ %i.bb, %vector.ph288 ], [ %i.bg, %vector.body293 ] ; 3 uses
  %i.bc = shl i64 %index294, 2
  %next.gep296 = getelementptr i8, ptr %.0131172, i64 %i.bc ; 2 uses
  %i.bd = add nsw <4 x i32> %vec.ind295, splat (i32 -1)
  %i.be = add <4 x i32> %vec.ind295, splat (i32 -5)
  %i.bf = getelementptr i8, ptr %next.gep296, i64 16
  store <4 x i32> %i.bd, ptr %next.gep296, align 4
  store <4 x i32> %i.be, ptr %i.bf, align 4
  %index.next297 = add nuw i64 %index294, 8       ; 2 uses
  %i.bg = add <4 x i32> %vec.ind295, splat (i32 -8)
  %i.bh = icmp eq i64 %index.next297, %n.vec290
  br i1 %i.bh, label %middle.block298, label %vector.body293, !llvm.loop !66

middle.block298:                                  ; preds = %vector.body293
  %cmp.n299 = icmp eq i64 %i.av, %n.vec290
  br i1 %cmp.n299, label %.loopexit166, label %scalar.ph286.preheader

scalar.ph286.preheader:                           ; preds = %bb.i, %middle.block298
  %.2133.ph = phi ptr [ %.0131172, %bb.i ], [ %i.ax, %middle.block298 ]
  %.2.ph = phi i32 [ %.0121173, %bb.i ], [ %i.az, %middle.block298 ]
  %.1.ph = phi i32 [ %i.aq, %bb.i ], [ %i.ba, %middle.block298 ]
  br label %scalar.ph286

scalar.ph286:                                     ; preds = %scalar.ph286.preheader, %scalar.ph286
  %.2133 = phi ptr [ %i.bj, %scalar.ph286 ], [ %.2133.ph, %scalar.ph286.preheader ] ; 2 uses
  %.2 = phi i32 [ %i.bk, %scalar.ph286 ], [ %.2.ph, %scalar.ph286.preheader ]
  %.1 = phi i32 [ %i.bi, %scalar.ph286 ], [ %.1.ph, %scalar.ph286.preheader ]
  %i.bi = add nsw i32 %.1, -1                     ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.2133, i64 4 ; 2 uses
  store i32 %i.bi, ptr %.2133, align 4
  %i.bk = add nsw i32 %.2, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.bk, %smax
  br i1 %exitcond.not, label %.loopexit166, label %scalar.ph286, !llvm.loop !67

.loopexit166:                                     ; preds = %scalar.ph286, %.preheader165, %middle.block298, %middle.block
  %.3134 = phi ptr [ %i.am, %.preheader165 ], [ %i.ae, %middle.block ], [ %i.ax, %middle.block298 ], [ %i.bj, %scalar.ph286 ]
  %.3 = phi i32 [ %smax219, %.preheader165 ], [ %smax219, %middle.block ], [ %smax, %middle.block298 ], [ %smax, %scalar.ph286 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0174, i64 12 ; 2 uses
  %i.bm = icmp ult ptr %i.bl, %i.p
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %.loopexit166, %.preheader168
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %bb.j, label %bb.q

bb.j:                                             ; preds = %._crit_edge
  %i.bq = load i32, ptr %i.m, align 8             ; 4 uses
  %i.br = load ptr, ptr %i.k, align 8             ; 11 uses
  %i.bs = icmp sgt i32 %i.bq, 0
  br i1 %i.bs, label %.lr.ph191.preheader, label %.loopexit

.lr.ph191.preheader:                              ; preds = %bb.j
  %wide.trip.count246 = zext nneg i32 %i.bq to i64 ; 3 uses
  %min.iters.check317 = icmp ult i32 %i.bq, 9
  br i1 %min.iters.check317, label %.lr.ph191.preheader348, label %vector.ph318

vector.ph318:                                     ; preds = %.lr.ph191.preheader
  %n.mod.vf319 = and i64 %wide.trip.count246, 7   ; 2 uses
  %i.bt = icmp eq i64 %n.mod.vf319, 0
  %i.bu = select i1 %i.bt, i64 8, i64 %n.mod.vf319
  %n.vec320 = sub nsw i64 %wide.trip.count246, %i.bu ; 2 uses
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph318
  %index322 = phi i64 [ 0, %vector.ph318 ], [ %index.next324, %vector.body321 ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph318 ], [ %i.dp, %vector.body321 ]
  %vec.phi323 = phi <4 x i32> [ zeroinitializer, %vector.ph318 ], [ %i.dq, %vector.body321 ]
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %index322
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %index322
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %index322
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %index322
  %i.bz = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %index322
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %index322
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %index322
  %i.cc = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %index322
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 44
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 68
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 92
  %i.cl = load i32, ptr %i.cd, align 4
  %i.cm = load i32, ptr %i.ce, align 4
  %i.cn = load i32, ptr %i.cf, align 4
  %i.co = load i32, ptr %i.cg, align 4
  %i.cp = insertelement <4 x i32> poison, i32 %i.cl, i64 0
  %i.cq = insertelement <4 x i32> %i.cp, i32 %i.cm, i64 1
  %i.cr = insertelement <4 x i32> %i.cq, i32 %i.cn, i64 2
  %i.cs = insertelement <4 x i32> %i.cr, i32 %i.co, i64 3 ; 2 uses
  %i.ct = load i32, ptr %i.ch, align 4
  %i.cu = load i32, ptr %i.ci, align 4
  %i.cv = load i32, ptr %i.cj, align 4
  %i.cw = load i32, ptr %i.ck, align 4
  %i.cx = insertelement <4 x i32> poison, i32 %i.ct, i64 0
  %i.cy = insertelement <4 x i32> %i.cx, i32 %i.cu, i64 1
  %i.cz = insertelement <4 x i32> %i.cy, i32 %i.cv, i64 2
  %i.da = insertelement <4 x i32> %i.cz, i32 %i.cw, i64 3 ; 2 uses
  %i.db = and <4 x i32> %i.cs, splat (i32 5)
  %i.dc = and <4 x i32> %i.da, splat (i32 5)
  %i.dd = icmp ne <4 x i32> %i.db, zeroinitializer
  %i.de = icmp ne <4 x i32> %i.dc, zeroinitializer
  %i.df = zext <4 x i1> %i.dd to <4 x i32>
  %i.dg = zext <4 x i1> %i.de to <4 x i32>
  %i.dh = add <4 x i32> %vec.phi, %i.df
  %i.di = add <4 x i32> %vec.phi323, %i.dg
  %i.dj = and <4 x i32> %i.cs, splat (i32 10)
  %i.dk = and <4 x i32> %i.da, splat (i32 10)
  %i.dl = icmp ne <4 x i32> %i.dj, zeroinitializer
  %i.dm = icmp ne <4 x i32> %i.dk, zeroinitializer
  %i.dn = zext <4 x i1> %i.dl to <4 x i32>
  %i.do = zext <4 x i1> %i.dm to <4 x i32>
  %i.dp = add <4 x i32> %i.dh, %i.dn              ; 2 uses
  %i.dq = add <4 x i32> %i.di, %i.do              ; 2 uses
  %index.next324 = add nuw i64 %index322, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next324, %n.vec320
  br i1 %i.dr, label %middle.block325, label %vector.body321, !llvm.loop !69

middle.block325:                                  ; preds = %vector.body321
  %bin.rdx = add <4 x i32> %i.dq, %i.dp
  %i.ds = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.lr.ph191.preheader348

.lr.ph191.preheader348:                           ; preds = %.lr.ph191.preheader, %middle.block325
  %indvars.iv243.ph = phi i64 [ 0, %.lr.ph191.preheader ], [ %n.vec320, %middle.block325 ]
  %.0135189.ph = phi i32 [ 0, %.lr.ph191.preheader ], [ %i.ds, %middle.block325 ]
  br label %.lr.ph191

.lr.ph191:                                        ; preds = %.lr.ph191.preheader348, %.lr.ph191
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %.lr.ph191 ], [ %indvars.iv243.ph, %.lr.ph191.preheader348 ] ; 2 uses
  %.0135189 = phi i32 [ %.2137, %.lr.ph191 ], [ %.0135189.ph, %.lr.ph191.preheader348 ]
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %indvars.iv243
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load i32, ptr %i.du, align 4            ; 2 uses
  %i.dw = and i32 %i.dv, 5
  %.not155 = icmp ne i32 %i.dw, 0
  %i.dx = zext i1 %.not155 to i32
  %spec.select = add nsw i32 %.0135189, %i.dx
  %i.dy = and i32 %i.dv, 10
  %.not156 = icmp ne i32 %i.dy, 0
  %i.dz = zext i1 %.not156 to i32
  %.2137 = add nsw i32 %spec.select, %i.dz        ; 3 uses
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count246
  br i1 %exitcond247.not, label %._crit_edge192, label %.lr.ph191, !llvm.loop !70

._crit_edge192:                                   ; preds = %.lr.ph191
  %i.ea = icmp sgt i32 %.2137, 0
  br i1 %i.ea, label %.lr.ph208.preheader, label %.loopexit

.lr.ph208.preheader:                              ; preds = %._crit_edge192
  %i.eb = load i32, ptr %i.q, align 8
  %i.ec = zext nneg i32 %i.bq to i64
  br label %.lr.ph208

.lr.ph208:                                        ; preds = %.lr.ph208.preheader, %bb.p
  %indvars.iv257 = phi i64 [ %i.ec, %.lr.ph208.preheader ], [ %indvars.iv.next258, %bb.p ] ; 4 uses
  %.3138205 = phi i32 [ %.2137, %.lr.ph208.preheader ], [ %.5, %bb.p ] ; 2 uses
  %.0140204 = phi i32 [ %i.eb, %.lr.ph208.preheader ], [ %.3143, %bb.p ] ; 2 uses
  %indvars.iv.next258 = add nsw i64 %indvars.iv257, -1 ; 2 uses
  %i.ed = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %indvars.iv.next258 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load i32, ptr %i.ee, align 4            ; 2 uses
  %i.eg = and i32 %i.ef, 10
  %.not153 = icmp eq i32 %i.eg, 0
  br i1 %.not153, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph208
  %i.eh = add nsw i32 %.0140204, -1               ; 2 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ei
  store i32 -1, ptr %i.ej, align 4
  %i.ek = add nsw i32 %.3138205, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph208
  %.1141 = phi i32 [ %i.eh, %bb.k ], [ %.0140204, %.lr.ph208 ] ; 2 uses
  %.4139 = phi i32 [ %i.ek, %bb.k ], [ %.3138205, %.lr.ph208 ]
  %.4139.fr = freeze i32 %.4139                   ; 3 uses
  %i.el = icmp samesign ugt i64 %indvars.iv257, 1
  br i1 %i.el, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.em = getelementptr [12 x i8], ptr %i.br, i64 %indvars.iv257
  %i.en = getelementptr i8, ptr %i.em, i64 -20
  %i.eo = load i32, ptr %i.en, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ep = phi i32 [ %i.eo, %bb.m ], [ 0, %bb.l ]  ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.er = load i32, ptr %i.eq, align 4            ; 2 uses
  %i.es = icmp ne i32 %.4139.fr, 0
  %i.et = icmp sgt i32 %i.er, %i.ep
  %i.eu = and i1 %i.et, %i.es
  br i1 %i.eu, label %.lr.ph197.split.preheader, label %._crit_edge198

.lr.ph197.split.preheader:                        ; preds = %bb.n
  %i.ev = sext i32 %.1141 to i64                  ; 5 uses
  %i.ew = sext i32 %i.er to i64                   ; 6 uses
  %i.ex = sext i32 %i.ep to i64                   ; 2 uses
  %i.ey = sub nsw i64 %i.ew, %i.ex                ; 3 uses
  %min.iters.check330 = icmp ult i64 %i.ey, 8
  br i1 %min.iters.check330, label %.lr.ph197.split.preheader346, label %vector.memcheck327

vector.memcheck327:                               ; preds = %.lr.ph197.split.preheader
  %i.ez = sub nsw i64 %i.ew, %i.ev
end_hunk_0
