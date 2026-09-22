Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_RLEaccel?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@RLEColorkeySurface:bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.d = load i8, ptr %i.c, align 1               ; 5 uses
  %i.e = zext i8 %i.d to i32                      ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.d, label %bb.u [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.d
    i8 4, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = mul nsw i32 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %i.m = sdiv i32 %i.l, 2
  %i.n = add nsw i32 %i.m, 1
  %i.o = mul nsw i32 %i.j, %i.n
  %i.p = add nsw i32 %i.o, 2
  br label %bb.f

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = sdiv i32 %i.t, 255
  %i.v = shl nsw i32 %i.u, 1
  %i.w = mul nsw i32 %i.t, %i.e
  %i.x = add i32 %i.w, 2
  %i.y = add i32 %i.x, %i.v
  %i.z = mul nsw i32 %i.y, %i.r
  %i.aa = add nsw i32 %i.z, 2
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.af = sdiv i32 %i.ae, 65535
  %i.ag = add i32 %i.af, %i.ae
  %i.ah = shl i32 %i.ag, 2
  %i.ai = add i32 %i.ah, 4
  %i.aj = mul nsw i32 %i.ai, %i.ac
  %i.ak = add nsw i32 %i.aj, 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0154 = phi i32 [ %i.p, %bb.c ], [ %i.aa, %bb.d ], [ %i.ak, %bb.e ]
  %i.al = add i32 %.0154, 4
  %i.am = sext i32 %i.al to i64
  %i.an = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.am) #8 ; 6 uses
  %.not169 = icmp eq ptr %i.an, null
  br i1 %.not169, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ap = load i32, ptr %i.ao, align 4
  store i32 %i.ap, ptr %i.an, align 4
  %i.aq = icmp eq i8 %i.d, 4                      ; 5 uses
  %i.ar = select i1 %i.aq, i32 65535, i32 255     ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 3 uses
  %i.at = load ptr, ptr %i.a, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = xor i32 %i.av, -1                       ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = and i32 %i.ay, %i.aw                    ; 2 uses
  %i.ba = zext nneg i8 %i.d to i64                ; 3 uses
  %i.bb = getelementptr [8 x i8], ptr @getpixes, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i32, ptr %i.be, align 8            ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bh = load i32, ptr %i.bg, align 4            ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.preheader.lr.ph, label %._crit_edge204

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = zext nneg i8 %i.d to i64                ; 2 uses
  %i.bn = sext i32 %i.bf to i64                   ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.q
  %.0155203 = phi ptr [ %i.as, %.preheader.lr.ph ], [ %spec.select174, %bb.q ]
  %.0158202 = phi ptr [ %i.bk, %.preheader.lr.ph ], [ %i.fo, %bb.q ] ; 5 uses
  %.0159201 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.fp, %bb.q ]
  %.0160200 = phi ptr [ %i.as, %.preheader.lr.ph ], [ %.5.lcssa, %bb.q ]
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %._crit_edge198
  %.1161 = phi ptr [ %.5.lcssa, %._crit_edge198 ], [ %.0160200, %.preheader ] ; 12 uses
  %.1156 = phi ptr [ %spec.select174, %._crit_edge198 ], [ %.0155203, %.preheader ]
  %.0152 = phi i32 [ %.2.lcssa, %._crit_edge198 ], [ 0, %.preheader ] ; 6 uses
  %.0151 = phi i32 [ %spec.select, %._crit_edge198 ], [ 0, %.preheader ]
  %i.bo = icmp slt i32 %.0152, %i.bf
  br i1 %i.bo, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.bp = sext i32 %.0152 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ %i.bp, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.bq = mul nsw i64 %indvars.iv, %i.bm
  %i.br = getelementptr inbounds i8, ptr %.0158202, i64 %i.bq
  %i.bs = tail call i32 %i.bd(ptr noundef %i.br) #8
  %i.bt = and i32 %i.bs, %i.aw
  %i.bu = icmp eq i32 %i.bt, %i.az
  br i1 %i.bu, label %bb.i, label %.critedge.loopexit

bb.i:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bn
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph, !llvm.loop !6

.critedge.loopexit:                               ; preds = %.lr.ph
  %i.bv = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.h
  %.1153.lcssa = phi i32 [ %.0152, %bb.h ], [ %i.bv, %.critedge.loopexit ] ; 6 uses
  %i.bw = icmp slt i32 %.1153.lcssa, %i.bf
  br i1 %i.bw, label %.lr.ph180.preheader, label %.critedge2

.lr.ph180.preheader:                              ; preds = %.critedge
  %i.bx = sext i32 %.1153.lcssa to i64
  br label %.lr.ph180

.lr.ph180:                                        ; preds = %.lr.ph180.preheader, %bb.j
  %indvars.iv213 = phi i64 [ %i.bx, %.lr.ph180.preheader ], [ %indvars.iv.next214, %bb.j ] ; 3 uses
  %i.by = mul nsw i64 %indvars.iv213, %i.bm
  %i.bz = getelementptr inbounds i8, ptr %.0158202, i64 %i.by
  %i.ca = tail call i32 %i.bd(ptr noundef %i.bz) #8
  %i.cb = and i32 %i.ca, %i.aw
  %.not171 = icmp eq i32 %i.cb, %i.az
  br i1 %.not171, label %.critedge2.loopexit.split.loop.exit248, label %bb.j

bb.j:                                             ; preds = %.lr.ph180
  %indvars.iv.next214 = add nsw i64 %indvars.iv213, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next214, %i.bn
  br i1 %exitcond216.not, label %.critedge2, label %.lr.ph180, !llvm.loop !7

.critedge2.loopexit.split.loop.exit248:           ; preds = %.lr.ph180
  %i.cc = trunc nsw i64 %indvars.iv213 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.i, %bb.j, %.critedge2.loopexit.split.loop.exit248, %.critedge
  %.1153.lcssa230 = phi i32 [ %.1153.lcssa, %.critedge ], [ %.1153.lcssa, %.critedge2.loopexit.split.loop.exit248 ], [ %.1153.lcssa, %bb.j ], [ %i.bf, %bb.i ] ; 6 uses
  %.2.lcssa = phi i32 [ %.1153.lcssa, %.critedge ], [ %i.cc, %.critedge2.loopexit.split.loop.exit248 ], [ %i.bf, %bb.j ], [ %i.bf, %bb.i ] ; 2 uses
  %.lcssa = phi i1 [ false, %.critedge ], [ true, %.critedge2.loopexit.split.loop.exit248 ], [ false, %bb.j ], [ false, %bb.i ]
  %i.cd = sub nsw i32 %.1153.lcssa230, %.0152     ; 11 uses
  %i.ce = icmp eq i32 %i.cd, %i.bf
  %spec.select = select i1 %i.ce, i32 1, i32 %.0151 ; 2 uses
  %i.cf = sub nsw i32 %.2.lcssa, %.1153.lcssa230  ; 4 uses
  %i.cg = icmp sgt i32 %i.cd, %i.ar
  br i1 %i.cg, label %.lr.ph188, label %._crit_edge

.lr.ph188:                                        ; preds = %.critedge2
  br i1 %i.aq, label %.lr.ph188.split.us.preheader, label %iter.check

iter.check:                                       ; preds = %.lr.ph188
  %i.ch = add i32 %.1153.lcssa230, 254
  %smin = tail call i32 @llvm.smin.i32(i32 %i.cd, i32 510)
  %i.ci = add i32 %.0152, %smin
  %i.cj = sub i32 %i.ch, %i.ci                    ; 3 uses
  %i.ck = udiv i32 %i.cj, 255
  %narrow = add nuw nsw i32 %i.ck, 1
  %i.cl = zext nneg i32 %narrow to i64            ; 5 uses
  %min.iters.check263 = icmp ult i32 %i.cj, 765
  br i1 %min.iters.check263, label %.lr.ph188.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check264 = icmp ult i32 %i.cj, 3825
  br i1 %min.iters.check264, label %vec.epilog.ph, label %vector.ph265

vector.ph265:                                     ; preds = %vector.main.loop.iter.check
  %i.cm = and i64 %i.cl, 12
  %n.vec266 = and i64 %i.cl, 67108848             ; 5 uses
  %i.cn = trunc nuw nsw i64 %n.vec266 to i32
  %i.co = mul i32 %i.cn, -255
  %i.cp = add i32 %i.cd, %i.co                    ; 2 uses
  %i.cq = shl nuw nsw i64 %n.vec266, 1
  %i.cr = getelementptr i8, ptr %.1161, i64 %i.cq ; 2 uses
  br label %vector.body267

vector.body267:                                   ; preds = %vector.ph265, %vector.body267
  %index268 = phi i64 [ 0, %vector.ph265 ], [ %index.next271, %vector.body267 ] ; 2 uses
  %i.cs = shl i64 %index268, 1                    ; 2 uses
  %next.gep269 = getelementptr i8, ptr %.1161, i64 %i.cs
  %i.ct = getelementptr i8, ptr %.1161, i64 %i.cs
  %next.gep270 = getelementptr i8, ptr %i.ct, i64 16
  store <16 x i8> <i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0>, ptr %next.gep269, align 1
  store <16 x i8> <i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0>, ptr %next.gep270, align 1
  %index.next271 = add nuw i64 %index268, 16      ; 2 uses
  %i.cu = icmp eq i64 %index.next271, %n.vec266
  br i1 %i.cu, label %middle.block272, label %vector.body267, !llvm.loop !8

middle.block272:                                  ; preds = %vector.body267
  %cmp.n273 = icmp eq i64 %n.vec266, %i.cl
  br i1 %cmp.n273, label %._crit_edge.thread235, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block272
  %min.epilog.iters.check = icmp eq i64 %i.cm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph188.split.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec266, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec276 = and i64 %i.cl, 67108860             ; 4 uses
  %i.cv = trunc nuw nsw i64 %n.vec276 to i32
  %i.cw = mul i32 %i.cv, -255
  %i.cx = add i32 %i.cd, %i.cw                    ; 2 uses
  %i.cy = shl nuw nsw i64 %n.vec276, 1
  %i.cz = getelementptr i8, ptr %.1161, i64 %i.cy ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index277 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next279, %vec.epilog.vector.body ] ; 2 uses
  %i.da = shl i64 %index277, 1
  %next.gep278 = getelementptr i8, ptr %.1161, i64 %i.da
  store <8 x i8> <i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0>, ptr %next.gep278, align 1
  %index.next279 = add nuw i64 %index277, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next279, %n.vec276
  br i1 %i.db, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n280 = icmp eq i64 %n.vec276, %i.cl
  br i1 %cmp.n280, label %._crit_edge.thread235, label %.lr.ph188.split.preheader

.lr.ph188.split.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0149187.ph = phi i32 [ %i.cd, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.cx, %vec.epilog.middle.block ]
  %.2162186.ph = phi ptr [ %.1161, %iter.check ], [ %i.cr, %vec.epilog.iter.check ], [ %i.cz, %vec.epilog.middle.block ]
  br label %.lr.ph188.split

.lr.ph188.split.us.preheader:                     ; preds = %.lr.ph188
  %i.dc = tail call i32 @llvm.smin.i32(i32 %i.cd, i32 131070)
  %i.dd = add i32 %.1153.lcssa230, 65534
  %i.de = add i32 %.0152, %i.dc
  %i.df = sub i32 %i.dd, %i.de                    ; 2 uses
  %i.dg = udiv i32 %i.df, 65535
  %narrow283 = add nuw nsw i32 %i.dg, 1
  %i.dh = zext nneg i32 %narrow283 to i64         ; 2 uses
  %min.iters.check = icmp ult i32 %i.df, 458745
  br i1 %min.iters.check, label %.lr.ph188.split.us.preheader284, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph188.split.us.preheader
  %n.vec = and i64 %i.dh, 262136                  ; 4 uses
  %i.di = trunc nuw nsw i64 %n.vec to i32
  %i.dj = mul i32 %i.di, -65535
  %i.dk = add i32 %i.cd, %i.dj                    ; 2 uses
  %i.dl = shl nuw nsw i64 %n.vec, 2
  %i.dm = getelementptr i8, ptr %.1161, i64 %i.dl ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.1161, i64 %i.dn
  %i.do = getelementptr i8, ptr %.1161, i64 %i.dn
  %next.gep260 = getelementptr i8, ptr %i.do, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep260, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dh
  br i1 %cmp.n, label %._crit_edge.thread, label %.lr.ph188.split.us.preheader284

.lr.ph188.split.us.preheader284:                  ; preds = %.lr.ph188.split.us.preheader, %middle.block
  %.0149187.us.ph = phi i32 [ %i.cd, %.lr.ph188.split.us.preheader ], [ %i.dk, %middle.block ]
  %.2162186.us.ph = phi ptr [ %.1161, %.lr.ph188.split.us.preheader ], [ %i.dm, %middle.block ]
  br label %.lr.ph188.split.us

.lr.ph188.split.us:                               ; preds = %.lr.ph188.split.us.preheader284, %.lr.ph188.split.us
  %.0149187.us = phi i32 [ %i.ds, %.lr.ph188.split.us ], [ %.0149187.us.ph, %.lr.ph188.split.us.preheader284 ] ; 2 uses
  %.2162186.us = phi ptr [ %i.dr, %.lr.ph188.split.us ], [ %.2162186.us.ph, %.lr.ph188.split.us.preheader284 ] ; 3 uses
  store i16 -1, ptr %.2162186.us, align 2
  %i.dq = getelementptr inbounds nuw i8, ptr %.2162186.us, i64 2
  store i16 0, ptr %i.dq, align 2
  %i.dr = getelementptr inbounds nuw i8, ptr %.2162186.us, i64 4 ; 2 uses
  %i.ds = add nsw i32 %.0149187.us, -65535        ; 2 uses
  %i.dt = icmp sgt i32 %.0149187.us, 131070
  br i1 %i.dt, label %.lr.ph188.split.us, label %._crit_edge.thread, !llvm.loop !11

._crit_edge.thread:                               ; preds = %.lr.ph188.split.us, %middle.block
  %.lcssa258 = phi ptr [ %i.dm, %middle.block ], [ %i.dr, %.lr.ph188.split.us ]
  %.lcssa257 = phi i32 [ %i.dk, %middle.block ], [ %i.ds, %.lr.ph188.split.us ]
  %i.du = tail call i32 @llvm.smin.i32(i32 %i.cf, i32 65535)
  br label %bb.k

.lr.ph188.split:                                  ; preds = %.lr.ph188.split.preheader, %.lr.ph188.split
  %.0149187 = phi i32 [ %i.dx, %.lr.ph188.split ], [ %.0149187.ph, %.lr.ph188.split.preheader ] ; 2 uses
  %.2162186 = phi ptr [ %i.dw, %.lr.ph188.split ], [ %.2162186.ph, %.lr.ph188.split.preheader ] ; 3 uses
  store i8 -1, ptr %.2162186, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %.2162186, i64 1
  store i8 0, ptr %i.dv, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %.2162186, i64 2 ; 2 uses
  %i.dx = add nsw i32 %.0149187, -255             ; 2 uses
  %i.dy = icmp sgt i32 %.0149187, 510
  br i1 %i.dy, label %.lr.ph188.split, label %._crit_edge.thread235, !llvm.loop !12

._crit_edge.thread235:                            ; preds = %.lr.ph188.split, %vec.epilog.middle.block, %middle.block272
  %.lcssa256 = phi ptr [ %i.cz, %vec.epilog.middle.block ], [ %i.cr, %middle.block272 ], [ %i.dw, %.lr.ph188.split ]
  %.lcssa255 = phi i32 [ %i.cx, %vec.epilog.middle.block ], [ %i.cp, %middle.block272 ], [ %i.dx, %.lr.ph188.split ]
  %i.dz = tail call i32 @llvm.smin.i32(i32 %i.cf, i32 255)
  br label %bb.l

._crit_edge:                                      ; preds = %.critedge2
  %i.ea = tail call i32 @llvm.smin.i32(i32 %i.cf, i32 %i.ar) ; 2 uses
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.eb = phi i32 [ %i.du, %._crit_edge.thread ], [ %i.ea, %._crit_edge ] ; 2 uses
  %.0149.lcssa234 = phi i32 [ %.lcssa257, %._crit_edge.thread ], [ %i.cd, %._crit_edge ]
  %.2162.lcssa233 = phi ptr [ %.lcssa258, %._crit_edge.thread ], [ %.1161, %._crit_edge ] ; 3 uses
  %i.ec = trunc i32 %.0149.lcssa234 to i16
  store i16 %i.ec, ptr %.2162.lcssa233, align 2
  %i.ed = trunc i32 %i.eb to i16
  %i.ee = getelementptr inbounds nuw i8, ptr %.2162.lcssa233, i64 2
  store i16 %i.ed, ptr %i.ee, align 2
  %i.ef = getelementptr inbounds nuw i8, ptr %.2162.lcssa233, i64 4
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.thread235, %._crit_edge
  %i.eg = phi i32 [ %i.dz, %._crit_edge.thread235 ], [ %i.ea, %._crit_edge ] ; 2 uses
  %.0149.lcssa239 = phi i32 [ %.lcssa255, %._crit_edge.thread235 ], [ %i.cd, %._crit_edge ]
  %.2162.lcssa238 = phi ptr [ %.lcssa256, %._crit_edge.thread235 ], [ %.1161, %._crit_edge ] ; 3 uses
  %i.eh = trunc i32 %.0149.lcssa239 to i8
  store i8 %i.eh, ptr %.2162.lcssa238, align 1
  %i.ei = trunc i32 %i.eg to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %.2162.lcssa238, i64 1
  store i8 %i.ei, ptr %i.ej, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %.2162.lcssa238, i64 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.el = phi i32 [ %i.eb, %bb.k ], [ %i.eg, %bb.l ] ; 4 uses
  %.4 = phi ptr [ %i.ef, %bb.k ], [ %i.ek, %bb.l ] ; 2 uses
  %i.em = mul nsw i32 %.1153.lcssa230, %i.e
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds i8, ptr %.0158202, i64 %i.en
  %i.ep = sext i32 %i.el to i64
  %i.eq = mul nsw i64 %i.ep, %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.4, ptr align 1 %i.eo, i64 %i.eq, i1 false)
  %i.er = mul nsw i32 %i.el, %i.e
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds i8, ptr %.4, i64 %i.es ; 2 uses
  %i.eu = sub nsw i32 %i.cf, %i.el                ; 2 uses
  %.not172192 = icmp eq i32 %i.eu, 0
  br i1 %.not172192, label %._crit_edge198, label %.lr.ph197.preheader

.lr.ph197.preheader:                              ; preds = %bb.m
  %i.ev = add nsw i32 %i.el, %.1153.lcssa230
  br label %.lr.ph197

.lr.ph197:                                        ; preds = %.lr.ph197.preheader, %bb.p
  %.0148195 = phi i32 [ %i.fk, %bb.p ], [ %i.ev, %.lr.ph197.preheader ] ; 2 uses
  %.0150194 = phi i32 [ %i.fl, %bb.p ], [ %i.eu, %.lr.ph197.preheader ] ; 2 uses
  %.5193 = phi ptr [ %i.fj, %bb.p ], [ %i.et, %.lr.ph197.preheader ] ; 5 uses
  %i.ew = tail call i32 @llvm.smin.i32(i32 %.0150194, i32 %i.ar) ; 6 uses
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph197
  store i16 0, ptr %.5193, align 2
  %i.ex = trunc nuw i32 %i.ew to i16
  %i.ey = getelementptr inbounds nuw i8, ptr %.5193, i64 2
  store i16 %i.ex, ptr %i.ey, align 2
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph197
  store i8 0, ptr %.5193, align 1
  %i.ez = trunc i32 %i.ew to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %.5193, i64 1
  store i8 %i.ez, ptr %i.fa, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink = phi i64 [ 2, %bb.o ], [ 4, %bb.n ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.5193, i64 %.sink ; 2 uses
  %i.fc = mul nsw i32 %.0148195, %i.e
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr %.0158202, i64 %i.fd
  %i.ff = zext nneg i32 %i.ew to i64
  %i.fg = mul nuw nsw i64 %i.ff, %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fb, ptr align 1 %i.fe, i64 %i.fg, i1 false)
end_hunk_0
