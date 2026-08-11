inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@RLEColorkeySurface:bb.a
  %i.ah = shl i32 %i.ag, 2
  %i.ai = add i32 %i.ah, 4
  %i.aj = mul nsw i32 %i.ai, %i.ac
  %i.ak = add nsw i32 %i.aj, 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0163 = phi i32 [ %i.p, %bb.c ], [ %i.aa, %bb.d ], [ %i.ak, %bb.e ]
  %i.al = add i32 %.0163, 4
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
  %.0155203 = phi ptr [ %i.as, %.preheader.lr.ph ], [ %.5.lcssa, %bb.q ]
  %.0158202 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.fn, %bb.q ]
  %.0159201 = phi ptr [ %i.bk, %.preheader.lr.ph ], [ %i.fm, %bb.q ] ; 5 uses
  %.0160200 = phi ptr [ %i.as, %.preheader.lr.ph ], [ %spec.select174, %bb.q ]
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %._crit_edge198
  %.1161 = phi ptr [ %spec.select174, %._crit_edge198 ], [ %.0160200, %.preheader ]
  %.1156 = phi ptr [ %.5.lcssa, %._crit_edge198 ], [ %.0155203, %.preheader ] ; 12 uses
  %.0153 = phi i32 [ %.2.lcssa, %._crit_edge198 ], [ 0, %.preheader ] ; 6 uses
  %.0152 = phi i32 [ %spec.select, %._crit_edge198 ], [ 0, %.preheader ]
  %i.bo = icmp slt i32 %.0153, %i.bf
  br i1 %i.bo, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.bp = sext i32 %.0153 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ %i.bp, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.bq = mul nsw i64 %indvars.iv, %i.bm
  %i.br = getelementptr inbounds i8, ptr %.0159201, i64 %i.bq
  %i.bs = tail call i32 %i.bd(ptr noundef %i.br) #8
  %i.bt = and i32 %i.bs, %i.aw
  %i.bu = icmp eq i32 %i.bt, %i.az
  br i1 %i.bu, label %bb.i, label %.critedge.loopexit

bb.i:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bn
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph, !llvm.loop !3

.critedge.loopexit:                               ; preds = %.lr.ph
  %i.bv = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.h
  %.1154.lcssa = phi i32 [ %.0153, %bb.h ], [ %i.bv, %.critedge.loopexit ] ; 6 uses
  %i.bw = icmp slt i32 %.1154.lcssa, %i.bf
  br i1 %i.bw, label %.lr.ph180.preheader, label %.critedge2

.lr.ph180.preheader:                              ; preds = %.critedge
  %i.bx = sext i32 %.1154.lcssa to i64
  br label %.lr.ph180

.lr.ph180:                                        ; preds = %.lr.ph180.preheader, %bb.j
  %indvars.iv213 = phi i64 [ %i.bx, %.lr.ph180.preheader ], [ %indvars.iv.next214, %bb.j ] ; 3 uses
  %i.by = mul nsw i64 %indvars.iv213, %i.bm
  %i.bz = getelementptr inbounds i8, ptr %.0159201, i64 %i.by
  %i.ca = tail call i32 %i.bd(ptr noundef %i.bz) #8
  %i.cb = and i32 %i.ca, %i.aw
  %.not171 = icmp eq i32 %i.cb, %i.az
  br i1 %.not171, label %.critedge2.loopexit.split.loop.exit248, label %bb.j

bb.j:                                             ; preds = %.lr.ph180
  %indvars.iv.next214 = add nsw i64 %indvars.iv213, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next214, %i.bn
  br i1 %exitcond216.not, label %.critedge2, label %.lr.ph180, !llvm.loop !5

.critedge2.loopexit.split.loop.exit248:           ; preds = %.lr.ph180
  %i.cc = trunc nsw i64 %indvars.iv213 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.i, %bb.j, %.critedge2.loopexit.split.loop.exit248, %.critedge
  %.1154.lcssa230 = phi i32 [ %.1154.lcssa, %.critedge ], [ %.1154.lcssa, %.critedge2.loopexit.split.loop.exit248 ], [ %.1154.lcssa, %bb.j ], [ %i.bf, %bb.i ] ; 6 uses
  %.2.lcssa = phi i32 [ %.1154.lcssa, %.critedge ], [ %i.cc, %.critedge2.loopexit.split.loop.exit248 ], [ %i.bf, %bb.j ], [ %i.bf, %bb.i ] ; 2 uses
  %.lcssa = phi i1 [ false, %.critedge ], [ true, %.critedge2.loopexit.split.loop.exit248 ], [ false, %bb.j ], [ false, %bb.i ]
  %i.cd = sub nsw i32 %.1154.lcssa230, %.0153     ; 11 uses
  %i.ce = icmp eq i32 %i.cd, %i.bf
  %spec.select = select i1 %i.ce, i32 1, i32 %.0152 ; 2 uses
  %i.cf = sub nsw i32 %.2.lcssa, %.1154.lcssa230  ; 4 uses
  %i.cg = icmp sgt i32 %i.cd, %i.ar
  br i1 %i.cg, label %.lr.ph188, label %._crit_edge

.lr.ph188:                                        ; preds = %.critedge2
  br i1 %i.aq, label %.lr.ph188.split.us.preheader, label %iter.check

iter.check:                                       ; preds = %.lr.ph188
  %i.ch = add i32 %.1154.lcssa230, 254
  %smin = tail call i32 @llvm.smin.i32(i32 %i.cd, i32 510)
  %i.ci = add i32 %.0153, %smin
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
  %i.cr = getelementptr i8, ptr %.1156, i64 %i.cq ; 2 uses
  br label %vector.body267

vector.body267:                                   ; preds = %vector.body267, %vector.ph265
  %index268 = phi i64 [ 0, %vector.ph265 ], [ %index.next271, %vector.body267 ] ; 2 uses
  %i.cs = shl i64 %index268, 1                    ; 2 uses
  %next.gep269 = getelementptr i8, ptr %.1156, i64 %i.cs
  %i.ct = getelementptr i8, ptr %.1156, i64 %i.cs
  %next.gep270 = getelementptr i8, ptr %i.ct, i64 16
  store <16 x i8> <i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0>, ptr %next.gep269, align 1
  store <16 x i8> <i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0>, ptr %next.gep270, align 1
  %index.next271 = add nuw i64 %index268, 16      ; 2 uses
  %i.cu = icmp eq i64 %index.next271, %n.vec266
  br i1 %i.cu, label %middle.block272, label %vector.body267, !llvm.loop !6

middle.block272:                                  ; preds = %vector.body267
  %cmp.n273 = icmp eq i64 %n.vec266, %i.cl
  br i1 %cmp.n273, label %._crit_edge.thread235, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block272
  %min.epilog.iters.check = icmp eq i64 %i.cm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph188.split.preheader, label %vec.epilog.ph, !prof !9

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec266, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec276 = and i64 %i.cl, 67108860             ; 4 uses
  %i.cv = trunc nuw nsw i64 %n.vec276 to i32
  %i.cw = mul i32 %i.cv, -255
  %i.cx = add i32 %i.cd, %i.cw                    ; 2 uses
  %i.cy = shl nuw nsw i64 %n.vec276, 1
  %i.cz = getelementptr i8, ptr %.1156, i64 %i.cy ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index277 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next279, %vec.epilog.vector.body ] ; 2 uses
  %i.da = shl i64 %index277, 1
  %next.gep278 = getelementptr i8, ptr %.1156, i64 %i.da
  store <8 x i8> <i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0>, ptr %next.gep278, align 1
  %index.next279 = add nuw i64 %index277, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next279, %n.vec276
  br i1 %i.db, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !10

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n280 = icmp eq i64 %n.vec276, %i.cl
  br i1 %cmp.n280, label %._crit_edge.thread235, label %.lr.ph188.split.preheader

.lr.ph188.split.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0150187.ph = phi i32 [ %i.cd, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.cx, %vec.epilog.middle.block ]
  %.2157186.ph = phi ptr [ %.1156, %iter.check ], [ %i.cr, %vec.epilog.iter.check ], [ %i.cz, %vec.epilog.middle.block ]
  br label %.lr.ph188.split

.lr.ph188.split.us.preheader:                     ; preds = %.lr.ph188
  %i.dc = tail call i32 @llvm.smin.i32(i32 %i.cd, i32 131070)
  %i.dd = add i32 %.1154.lcssa230, 65534
  %1 = add i32 %.0153, %i.dc
  %2 = sub i32 %i.dd, %1                          ; 2 uses
  %i.de = udiv i32 %2, 65535
  %narrow283 = add nuw nsw i32 %i.de, 1
  %i.df = zext nneg i32 %narrow283 to i64         ; 2 uses
  %min.iters.check = icmp ult i32 %2, 458745
  br i1 %min.iters.check, label %.lr.ph188.split.us.preheader284, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph188.split.us.preheader
  %n.vec = and i64 %i.df, 262136                  ; 4 uses
  %i.dg = trunc nuw nsw i64 %n.vec to i32
  %i.dh = mul i32 %i.dg, -65535
  %i.di = add i32 %i.cd, %i.dh                    ; 2 uses
  %i.dj = shl nuw nsw i64 %n.vec, 2
  %i.dk = getelementptr i8, ptr %.1156, i64 %i.dj ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.1156, i64 %i.dl
  %i.dm = getelementptr i8, ptr %.1156, i64 %i.dl
  %next.gep260 = getelementptr i8, ptr %i.dm, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep260, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.df
  br i1 %cmp.n, label %._crit_edge.thread, label %.lr.ph188.split.us.preheader284

.lr.ph188.split.us.preheader284:                  ; preds = %.lr.ph188.split.us.preheader, %middle.block
  %.0150187.us.ph = phi i32 [ %i.cd, %.lr.ph188.split.us.preheader ], [ %i.di, %middle.block ]
  %.2157186.us.ph = phi ptr [ %.1156, %.lr.ph188.split.us.preheader ], [ %i.dk, %middle.block ]
  br label %.lr.ph188.split.us

.lr.ph188.split.us:                               ; preds = %.lr.ph188.split.us.preheader284, %.lr.ph188.split.us
  %.0150187.us = phi i32 [ %i.dq, %.lr.ph188.split.us ], [ %.0150187.us.ph, %.lr.ph188.split.us.preheader284 ] ; 2 uses
  %.2157186.us = phi ptr [ %i.dp, %.lr.ph188.split.us ], [ %.2157186.us.ph, %.lr.ph188.split.us.preheader284 ] ; 3 uses
  store i16 -1, ptr %.2157186.us, align 2
  %i.do = getelementptr inbounds nuw i8, ptr %.2157186.us, i64 2
  store i16 0, ptr %i.do, align 2
  %i.dp = getelementptr inbounds nuw i8, ptr %.2157186.us, i64 4 ; 2 uses
  %i.dq = add nsw i32 %.0150187.us, -65535        ; 2 uses
  %i.dr = icmp sgt i32 %.0150187.us, 131070
  br i1 %i.dr, label %.lr.ph188.split.us, label %._crit_edge.thread, !llvm.loop !12

._crit_edge.thread:                               ; preds = %.lr.ph188.split.us, %middle.block
  %.lcssa258 = phi ptr [ %i.dk, %middle.block ], [ %i.dp, %.lr.ph188.split.us ]
  %.lcssa257 = phi i32 [ %i.di, %middle.block ], [ %i.dq, %.lr.ph188.split.us ]
  %i.ds = tail call i32 @llvm.smin.i32(i32 %i.cf, i32 65535)
  br label %bb.k

.lr.ph188.split:                                  ; preds = %.lr.ph188.split.preheader, %.lr.ph188.split
  %.0150187 = phi i32 [ %i.dv, %.lr.ph188.split ], [ %.0150187.ph, %.lr.ph188.split.preheader ] ; 2 uses
  %.2157186 = phi ptr [ %i.du, %.lr.ph188.split ], [ %.2157186.ph, %.lr.ph188.split.preheader ] ; 3 uses
  store i8 -1, ptr %.2157186, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %.2157186, i64 1
  store i8 0, ptr %i.dt, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %.2157186, i64 2 ; 2 uses
  %i.dv = add nsw i32 %.0150187, -255             ; 2 uses
  %i.dw = icmp sgt i32 %.0150187, 510
  br i1 %i.dw, label %.lr.ph188.split, label %._crit_edge.thread235, !llvm.loop !13

._crit_edge.thread235:                            ; preds = %.lr.ph188.split, %vec.epilog.middle.block, %middle.block272
  %.lcssa256 = phi ptr [ %i.cz, %vec.epilog.middle.block ], [ %i.cr, %middle.block272 ], [ %i.du, %.lr.ph188.split ]
  %.lcssa255 = phi i32 [ %i.cx, %vec.epilog.middle.block ], [ %i.cp, %middle.block272 ], [ %i.dv, %.lr.ph188.split ]
  %i.dx = tail call i32 @llvm.smin.i32(i32 %i.cf, i32 255)
  br label %bb.l

._crit_edge:                                      ; preds = %.critedge2
  %i.dy = tail call i32 @llvm.smin.i32(i32 %i.cf, i32 %i.ar) ; 2 uses
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.dz = phi i32 [ %i.ds, %._crit_edge.thread ], [ %i.dy, %._crit_edge ] ; 2 uses
  %.0150.lcssa234 = phi i32 [ %.lcssa257, %._crit_edge.thread ], [ %i.cd, %._crit_edge ]
  %.2157.lcssa233 = phi ptr [ %.lcssa258, %._crit_edge.thread ], [ %.1156, %._crit_edge ] ; 3 uses
  %i.ea = trunc i32 %.0150.lcssa234 to i16
  store i16 %i.ea, ptr %.2157.lcssa233, align 2
  %i.eb = trunc i32 %i.dz to i16
  %i.ec = getelementptr inbounds nuw i8, ptr %.2157.lcssa233, i64 2
  store i16 %i.eb, ptr %i.ec, align 2
  %i.ed = getelementptr inbounds nuw i8, ptr %.2157.lcssa233, i64 4
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.thread235, %._crit_edge
  %i.ee = phi i32 [ %i.dx, %._crit_edge.thread235 ], [ %i.dy, %._crit_edge ] ; 2 uses
  %.0150.lcssa239 = phi i32 [ %.lcssa255, %._crit_edge.thread235 ], [ %i.cd, %._crit_edge ]
  %.2157.lcssa238 = phi ptr [ %.lcssa256, %._crit_edge.thread235 ], [ %.1156, %._crit_edge ] ; 3 uses
  %i.ef = trunc i32 %.0150.lcssa239 to i8
  store i8 %i.ef, ptr %.2157.lcssa238, align 1
  %i.eg = trunc i32 %i.ee to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %.2157.lcssa238, i64 1
  store i8 %i.eg, ptr %i.eh, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %.2157.lcssa238, i64 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ej = phi i32 [ %i.dz, %bb.k ], [ %i.ee, %bb.l ] ; 4 uses
  %.4 = phi ptr [ %i.ed, %bb.k ], [ %i.ei, %bb.l ] ; 2 uses
  %i.ek = mul nsw i32 %.1154.lcssa230, %i.e
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds i8, ptr %.0159201, i64 %i.el
  %i.en = sext i32 %i.ej to i64
  %i.eo = mul nsw i64 %i.en, %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.4, ptr align 1 %i.em, i64 %i.eo, i1 false)
  %i.ep = mul nsw i32 %i.ej, %i.e
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds i8, ptr %.4, i64 %i.eq ; 2 uses
  %i.es = sub nsw i32 %i.cf, %i.ej                ; 2 uses
  %.not172192 = icmp eq i32 %i.es, 0
  br i1 %.not172192, label %._crit_edge198, label %.lr.ph197.preheader

.lr.ph197.preheader:                              ; preds = %bb.m
  %i.et = add nsw i32 %i.ej, %.1154.lcssa230
  br label %.lr.ph197

.lr.ph197:                                        ; preds = %.lr.ph197.preheader, %bb.p
  %.0149195 = phi i32 [ %i.fi, %bb.p ], [ %i.et, %.lr.ph197.preheader ] ; 2 uses
  %.0151194 = phi i32 [ %i.fj, %bb.p ], [ %i.es, %.lr.ph197.preheader ] ; 2 uses
  %.5193 = phi ptr [ %i.fh, %bb.p ], [ %i.er, %.lr.ph197.preheader ] ; 5 uses
  %i.eu = tail call i32 @llvm.smin.i32(i32 %.0151194, i32 %i.ar) ; 6 uses
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph197
  store i16 0, ptr %.5193, align 2
  %i.ev = trunc nuw i32 %i.eu to i16
  %i.ew = getelementptr inbounds nuw i8, ptr %.5193, i64 2
  store i16 %i.ev, ptr %i.ew, align 2
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph197
  store i8 0, ptr %.5193, align 1
  %i.ex = trunc i32 %i.eu to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %.5193, i64 1
  store i8 %i.ex, ptr %i.ey, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink = phi i64 [ 2, %bb.o ], [ 4, %bb.n ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.5193, i64 %.sink ; 2 uses
  %i.fa = mul nsw i32 %.0149195, %i.e
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %.0159201, i64 %i.fb
  %i.fd = zext nneg i32 %i.eu to i64
  %i.fe = mul nuw nsw i64 %i.fd, %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ez, ptr align 1 %i.fc, i64 %i.fe, i1 false)
  %i.ff = mul nuw nsw i32 %i.eu, %i.e
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fg ; 2 uses
  %i.fi = add nsw i32 %.0149195, %i.eu
  %i.fj = sub nsw i32 %.0151194, %i.eu            ; 2 uses
  %.not172 = icmp eq i32 %i.fj, 0
  br i1 %.not172, label %._crit_edge198, label %.lr.ph197, !llvm.loop !14

._crit_edge198:                                   ; preds = %bb.p, %bb.m
  %.5.lcssa = phi ptr [ %i.er, %bb.m ], [ %i.fh, %bb.p ] ; 3 uses
  %.not173 = icmp eq i32 %spec.select, 0
  %spec.select174 = select i1 %.not173, ptr %.5.lcssa, ptr %.1161 ; 3 uses
  br i1 %.lcssa, label %bb.h, label %bb.q, !llvm.loop !15

bb.q:                                             ; preds = %._crit_edge198
  %i.fk = load i32, ptr %i.bl, align 8
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %.0159201, i64 %i.fl
  %i.fn = add nuw nsw i32 %.0158202, 1            ; 2 uses
  %exitcond217.not = icmp eq i32 %i.fn, %i.bh
  br i1 %exitcond217.not, label %._crit_edge204, label %.preheader, !llvm.loop !16

._crit_edge204:                                   ; preds = %bb.q, %bb.g
  %.0160.lcssa = phi ptr [ %i.as, %bb.g ], [ %spec.select174, %bb.q ] ; 5 uses
  br i1 %i.aq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge204
  store i16 0, ptr %.0160.lcssa, align 2
  %i.fo = getelementptr inbounds nuw i8, ptr %.0160.lcssa, i64 2
  store i16 0, ptr %i.fo, align 2
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge204
  store i8 0, ptr %.0160.lcssa, align 1
  %i.fp = getelementptr inbounds nuw i8, ptr %.0160.lcssa, i64 1
  store i8 0, ptr %i.fp, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink251 = phi i64 [ 2, %bb.s ], [ 4, %bb.r ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.0160.lcssa, i64 %.sink251
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.an to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = tail call ptr @SDL_realloc_REAL(ptr noundef nonnull %i.an, i64 noundef %i.ft) #9 ; 2 uses
  %.not170 = icmp eq ptr %i.fu, null
  %spec.select175 = select i1 %.not170, ptr %i.an, ptr %i.fu
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %spec.select175, ptr %i.fv, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.f, %bb.b, %bb.a, %bb.t
end_hunk_0
begin_hunk_1_@RLEAlphaSurface:bb.a
.critedge2:                                       ; preds = %bb.n, %bb.p, %.critedge2.loopexit.split.loop.exit375, %.critedge
  %.1242.lcssa361 = phi i32 [ %.1242.lcssa, %.critedge ], [ %.1242.lcssa, %.critedge2.loopexit.split.loop.exit375 ], [ %.1242.lcssa, %bb.p ], [ %i.ax, %bb.n ] ; 4 uses
  %.2243.lcssa = phi i32 [ %.1242.lcssa, %.critedge ], [ %i.bz, %.critedge2.loopexit.split.loop.exit375 ], [ %i.ax, %bb.p ], [ %i.ax, %bb.n ] ; 2 uses
  %.lcssa = phi i1 [ false, %.critedge ], [ true, %.critedge2.loopexit.split.loop.exit375 ], [ false, %bb.p ], [ false, %bb.n ]
  %i.ca = sub nsw i32 %.1242.lcssa361, %.0241     ; 4 uses
  %i.cb = icmp eq i32 %i.ca, %i.ax
  %spec.select = select i1 %i.cb, i32 1, i32 %.0230 ; 2 uses
  %i.cc = sub nsw i32 %.2243.lcssa, %.1242.lcssa361 ; 2 uses
  %i.cd = icmp sgt i32 %i.ca, 255
  br i1 %i.cd, label %.lr.ph284, label %._crit_edge

.lr.ph284:                                        ; preds = %.critedge2, %bb.s
  %.0228283 = phi i32 [ %i.cj, %bb.s ], [ %i.ca, %.critedge2 ] ; 2 uses
  %.2250282 = phi ptr [ %i.ci, %bb.s ], [ %.1249, %.critedge2 ] ; 5 uses
  %i.ce = load i8, ptr %i.q, align 1
  %i.cf = icmp eq i8 %i.ce, 4
  br i1 %i.cf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph284
  store i16 255, ptr %.2250282, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %.2250282, i64 2
  store i16 0, ptr %i.cg, align 2
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph284
  store i8 -1, ptr %.2250282, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.2250282, i64 1
  store i8 0, ptr %i.ch, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink = phi i64 [ 2, %bb.r ], [ 4, %bb.q ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.2250282, i64 %.sink ; 2 uses
  %i.cj = add nsw i32 %.0228283, -255             ; 2 uses
  %i.ck = icmp sgt i32 %.0228283, 510
  br i1 %i.ck, label %.lr.ph284, label %._crit_edge, !llvm.loop !137

._crit_edge:                                      ; preds = %bb.s, %.critedge2
  %.2250.lcssa = phi ptr [ %.1249, %.critedge2 ], [ %i.ci, %bb.s ] ; 5 uses
  %.0228.lcssa = phi i32 [ %i.ca, %.critedge2 ], [ %i.cj, %bb.s ] ; 2 uses
  %i.cl = tail call i32 @llvm.smin.i32(i32 %i.cc, i32 255) ; 5 uses
  %i.cm = load i8, ptr %i.q, align 1
  %i.cn = icmp eq i8 %i.cm, 4
  br i1 %i.cn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.co = trunc i32 %.0228.lcssa to i16
  store i16 %i.co, ptr %.2250.lcssa, align 2
  %i.cp = trunc i32 %i.cl to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %.2250.lcssa, i64 2
  store i16 %i.cp, ptr %i.cq, align 2
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge
  %i.cr = trunc i32 %.0228.lcssa to i8
  store i8 %i.cr, ptr %.2250.lcssa, align 1
  %i.cs = trunc i32 %i.cl to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.2250.lcssa, i64 1
  store i8 %i.cs, ptr %i.ct, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sink381 = phi i64 [ 2, %bb.u ], [ 4, %bb.t ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.2250.lcssa, i64 %.sink381 ; 2 uses
  %i.cv = sext i32 %.1242.lcssa361 to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %.0236324, i64 %i.cv
  %i.cx = tail call i32 %.1247(ptr noundef nonnull %i.cu, ptr noundef %i.cw, i32 noundef %i.cl, ptr noundef %i.ay, ptr noundef nonnull %i.d) #8, !callees !138
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cy ; 2 uses
  %i.da = sub nsw i32 %i.cc, %i.cl                ; 2 uses
  %.not263287 = icmp eq i32 %i.da, 0
  br i1 %.not263287, label %._crit_edge293, label %.lr.ph292.preheader

.lr.ph292.preheader:                              ; preds = %bb.v
  %i.db = add nsw i32 %i.cl, %.1242.lcssa361
  br label %.lr.ph292

.lr.ph292:                                        ; preds = %.lr.ph292.preheader, %bb.y
  %.0229290 = phi i32 [ %i.dq, %bb.y ], [ %i.da, %.lr.ph292.preheader ] ; 2 uses
  %.0231289 = phi i32 [ %i.dp, %bb.y ], [ %i.db, %.lr.ph292.preheader ] ; 2 uses
  %.5253288 = phi ptr [ %i.do, %bb.y ], [ %i.cz, %.lr.ph292.preheader ] ; 5 uses
  %i.dc = tail call i32 @llvm.smin.i32(i32 %.0229290, i32 255) ; 5 uses
  %i.dd = load i8, ptr %i.q, align 1
  %i.de = icmp eq i8 %i.dd, 4
  br i1 %i.de, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph292
  store i16 0, ptr %.5253288, align 2
  %i.df = trunc nuw i32 %i.dc to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %.5253288, i64 2
  store i16 %i.df, ptr %i.dg, align 2
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph292
  store i8 0, ptr %.5253288, align 1
  %i.dh = trunc nuw i32 %i.dc to i8
  %i.di = getelementptr inbounds nuw i8, ptr %.5253288, i64 1
  store i8 %i.dh, ptr %i.di, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink382 = phi i64 [ 2, %bb.x ], [ 4, %bb.w ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.5253288, i64 %.sink382 ; 2 uses
  %i.dk = sext i32 %.0231289 to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %.0236324, i64 %i.dk
  %i.dm = tail call i32 %.1247(ptr noundef nonnull %i.dj, ptr noundef %i.dl, i32 noundef %i.dc, ptr noundef %i.ay, ptr noundef nonnull %i.d) #8, !callees !138
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %i.dj, i64 %i.dn ; 2 uses
  %i.dp = add nsw i32 %i.dc, %.0231289
  %i.dq = sub nsw i32 %.0229290, %i.dc            ; 2 uses
  %.not263 = icmp eq i32 %i.dq, 0
  br i1 %.not263, label %._crit_edge293, label %.lr.ph292, !llvm.loop !139

._crit_edge293:                                   ; preds = %bb.y, %bb.v
  %.5253.lcssa = phi ptr [ %i.cz, %bb.v ], [ %i.do, %bb.y ] ; 3 uses
  br i1 %.lcssa, label %bb.l, label %bb.z, !llvm.loop !140

bb.z:                                             ; preds = %._crit_edge293
  %i.dr = ptrtoint ptr %.5253.lcssa to i64
  %i.ds = and i64 %i.dr, 2
  %i.dt = getelementptr inbounds nuw i8, ptr %.5253.lcssa, i64 %i.ds
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge320, %bb.z
  %.7 = phi ptr [ %i.dt, %bb.z ], [ %.9.lcssa, %._crit_edge320 ] ; 5 uses
  %.3 = phi i32 [ 0, %bb.z ], [ %.5.lcssa, %._crit_edge320 ] ; 5 uses
  %.1234 = phi ptr [ %.0233325, %bb.z ], [ %spec.select269, %._crit_edge320 ]
  %.2 = phi i32 [ %spec.select, %bb.z ], [ %i.eu, %._crit_edge320 ]
  %i.du = icmp slt i32 %.3, %i.ax
  br i1 %i.du, label %.lr.ph297, label %.critedge4

.lr.ph297:                                        ; preds = %bb.aa
  %i.dv = load i32, ptr %i.bc, align 4
  %i.dw = load i8, ptr %i.bd, align 1
  %i.dx = zext nneg i8 %i.dw to i32
  %i.dy = sext i32 %.3 to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph297, %bb.ac
  %indvars.iv338 = phi i64 [ %i.dy, %.lr.ph297 ], [ %indvars.iv.next339, %bb.ac ] ; 3 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %.0236324, i64 %indvars.iv338
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = and i32 %i.dv, %i.ea
  %i.ec = lshr i32 %i.eb, %i.dx
  %i.ed = add i32 %i.ec, -255
  %i.ee = icmp ult i32 %i.ed, -254
  br i1 %i.ee, label %bb.ac, label %.critedge4.loopexit

bb.ac:                                            ; preds = %bb.ab
  %indvars.iv.next339 = add nsw i64 %indvars.iv338, 1 ; 2 uses
  %exitcond341.not = icmp eq i64 %indvars.iv.next339, %i.bf
  br i1 %exitcond341.not, label %.critedge6, label %bb.ab, !llvm.loop !141

.critedge4.loopexit:                              ; preds = %bb.ab
  %i.ef = trunc nsw i64 %indvars.iv338 to i32
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %bb.aa
  %.4.lcssa = phi i32 [ %.3, %bb.aa ], [ %i.ef, %.critedge4.loopexit ] ; 6 uses
  %i.eg = icmp slt i32 %.4.lcssa, %i.ax
  br i1 %i.eg, label %.lr.ph302, label %.critedge6

.lr.ph302:                                        ; preds = %.critedge4
  %i.eh = load i32, ptr %i.bc, align 4
  %i.ei = load i8, ptr %i.bd, align 1
  %i.ej = zext nneg i8 %i.ei to i32
  %i.ek = sext i32 %.4.lcssa to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph302, %bb.ae
  %indvars.iv342 = phi i64 [ %i.ek, %.lr.ph302 ], [ %indvars.iv.next343, %bb.ae ] ; 3 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %.0236324, i64 %indvars.iv342
  %i.em = load i32, ptr %i.el, align 4
  %i.en = and i32 %i.eh, %i.em
  %i.eo = lshr i32 %i.en, %i.ej
  %i.ep = add i32 %i.eo, -255
  %i.eq = icmp ult i32 %i.ep, -254
  br i1 %i.eq, label %.critedge6.loopexit.split.loop.exit378, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %indvars.iv.next343 = add nsw i64 %indvars.iv342, 1 ; 2 uses
  %exitcond345.not = icmp eq i64 %indvars.iv.next343, %i.bf
  br i1 %exitcond345.not, label %.critedge6, label %bb.ad, !llvm.loop !142

.critedge6.loopexit.split.loop.exit378:           ; preds = %bb.ad
  %i.er = trunc nsw i64 %indvars.iv342 to i32
  br label %.critedge6

.critedge6:                                       ; preds = %bb.ac, %bb.ae, %.critedge6.loopexit.split.loop.exit378, %.critedge4
  %.4.lcssa363 = phi i32 [ %.4.lcssa, %.critedge4 ], [ %.4.lcssa, %.critedge6.loopexit.split.loop.exit378 ], [ %.4.lcssa, %bb.ae ], [ %i.ax, %bb.ac ] ; 5 uses
  %.5.lcssa = phi i32 [ %.4.lcssa, %.critedge4 ], [ %i.er, %.critedge6.loopexit.split.loop.exit378 ], [ %i.ax, %bb.ae ], [ %i.ax, %bb.ac ] ; 2 uses
  %.lcssa271 = phi i1 [ false, %.critedge4 ], [ true, %.critedge6.loopexit.split.loop.exit378 ], [ false, %bb.ae ], [ false, %bb.ac ]
  %i.es = sub nsw i32 %.4.lcssa363, %.3           ; 5 uses
  %i.et = icmp eq i32 %i.es, %i.ax
  %i.eu = select i1 %i.et, i32 %.2, i32 0         ; 2 uses
  %i.ev = sub nsw i32 %.5.lcssa, %.4.lcssa363     ; 2 uses
  %i.ew = icmp sgt i32 %i.es, 65535
  br i1 %i.ew, label %.lr.ph310.preheader, label %._crit_edge311

.lr.ph310.preheader:                              ; preds = %.critedge6
  %1 = add i32 %.4.lcssa363, -65536
  %2 = sub i32 %1, %.3                            ; 2 uses
  %i.ex = udiv i32 %2, 65535
  %narrow = add nuw nsw i32 %i.ex, 1
  %i.ey = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check = icmp ult i32 %2, 458745
  br i1 %min.iters.check, label %.lr.ph310.preheader399, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph310.preheader
  %n.vec = and i64 %i.ey, 262136                  ; 4 uses
  %i.ez = trunc nuw nsw i64 %n.vec to i32
  %i.fa = mul i32 %i.ez, -65535
  %i.fb = add i32 %i.es, %i.fa                    ; 2 uses
  %i.fc = shl nuw nsw i64 %n.vec, 2
  %i.fd = getelementptr i8, ptr %.7, i64 %i.fc    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fe = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.7, i64 %i.fe
  %i.ff = getelementptr i8, ptr %.7, i64 %i.fe
  %next.gep397 = getelementptr i8, ptr %i.ff, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep397, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ey
  br i1 %cmp.n, label %._crit_edge311, label %.lr.ph310.preheader399

.lr.ph310.preheader399:                           ; preds = %.lr.ph310.preheader, %middle.block
  %.0226309.ph = phi i32 [ %i.es, %.lr.ph310.preheader ], [ %i.fb, %middle.block ]
  %.8308.ph = phi ptr [ %.7, %.lr.ph310.preheader ], [ %i.fd, %middle.block ]
  br label %.lr.ph310

.lr.ph310:                                        ; preds = %.lr.ph310.preheader399, %.lr.ph310
  %.0226309 = phi i32 [ %i.fj, %.lr.ph310 ], [ %.0226309.ph, %.lr.ph310.preheader399 ] ; 2 uses
  %.8308 = phi ptr [ %i.fi, %.lr.ph310 ], [ %.8308.ph, %.lr.ph310.preheader399 ] ; 3 uses
  store i16 -1, ptr %.8308, align 2
  %i.fh = getelementptr inbounds nuw i8, ptr %.8308, i64 2
  store i16 0, ptr %i.fh, align 2
  %i.fi = getelementptr inbounds nuw i8, ptr %.8308, i64 4 ; 2 uses
  %i.fj = add nsw i32 %.0226309, -65535           ; 2 uses
  %i.fk = icmp samesign ugt i32 %.0226309, 131070
  br i1 %i.fk, label %.lr.ph310, label %._crit_edge311, !llvm.loop !144

._crit_edge311:                                   ; preds = %.lr.ph310, %middle.block, %.critedge6
  %.8.lcssa = phi ptr [ %.7, %.critedge6 ], [ %i.fd, %middle.block ], [ %i.fi, %.lr.ph310 ] ; 3 uses
  %.0226.lcssa = phi i32 [ %i.es, %.critedge6 ], [ %i.fb, %middle.block ], [ %i.fj, %.lr.ph310 ]
  %i.fl = tail call i32 @llvm.smin.i32(i32 %i.ev, i32 65535) ; 4 uses
  %i.fm = trunc i32 %.0226.lcssa to i16
  store i16 %i.fm, ptr %.8.lcssa, align 2
  %i.fn = trunc i32 %i.fl to i16
  %i.fo = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 2
  store i16 %i.fn, ptr %i.fo, align 2
  %i.fp = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 4 ; 2 uses
  %i.fq = sext i32 %.4.lcssa363 to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %.0236324, i64 %i.fq
  %i.fs = tail call i32 %.1245(ptr noundef nonnull %i.fp, ptr noundef %i.fr, i32 noundef %i.fl, ptr noundef %i.ay, ptr noundef nonnull %i.d) #8, !callees !145
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr %i.fp, i64 %i.ft ; 2 uses
  %i.fv = sub nsw i32 %i.ev, %i.fl                ; 2 uses
  %.not264314 = icmp eq i32 %i.fv, 0
  br i1 %.not264314, label %._crit_edge320, label %.lr.ph319.preheader

.lr.ph319.preheader:                              ; preds = %._crit_edge311
  %i.fw = add nsw i32 %i.fl, %.4.lcssa363
  br label %.lr.ph319

.lr.ph319:                                        ; preds = %.lr.ph319.preheader, %.lr.ph319
  %.0227317 = phi i32 [ %i.gh, %.lr.ph319 ], [ %i.fv, %.lr.ph319.preheader ] ; 2 uses
  %.1232316 = phi i32 [ %i.gg, %.lr.ph319 ], [ %i.fw, %.lr.ph319.preheader ] ; 2 uses
  %.9315 = phi ptr [ %i.gf, %.lr.ph319 ], [ %i.fu, %.lr.ph319.preheader ] ; 3 uses
  %i.fx = tail call i32 @llvm.smin.i32(i32 %.0227317, i32 65535) ; 4 uses
  store i16 0, ptr %.9315, align 2
  %i.fy = trunc nuw i32 %i.fx to i16
  %i.fz = getelementptr inbounds nuw i8, ptr %.9315, i64 2
  store i16 %i.fy, ptr %i.fz, align 2
  %i.ga = getelementptr inbounds nuw i8, ptr %.9315, i64 4 ; 2 uses
  %i.gb = sext i32 %.1232316 to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %.0236324, i64 %i.gb
  %i.gd = tail call i32 %.1245(ptr noundef nonnull %i.ga, ptr noundef %i.gc, i32 noundef %i.fx, ptr noundef %i.ay, ptr noundef nonnull %i.d) #8, !callees !145
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds i8, ptr %i.ga, i64 %i.ge ; 2 uses
  %i.gg = add nsw i32 %i.fx, %.1232316
  %i.gh = sub nsw i32 %.0227317, %i.fx            ; 2 uses
  %.not264 = icmp eq i32 %i.gh, 0
  br i1 %.not264, label %._crit_edge320, label %.lr.ph319, !llvm.loop !146

._crit_edge320:                                   ; preds = %.lr.ph319, %._crit_edge311
  %.9.lcssa = phi ptr [ %i.fu, %._crit_edge311 ], [ %i.gf, %.lr.ph319 ] ; 3 uses
  %.not265 = icmp eq i32 %i.eu, 0
  %spec.select269 = select i1 %.not265, ptr %.9.lcssa, ptr %.1234 ; 3 uses
  br i1 %.lcssa271, label %bb.aa, label %bb.af, !llvm.loop !147

bb.af:                                            ; preds = %._crit_edge320
  %i.gi = load i32, ptr %i.be, align 8
  %i.gj = ashr i32 %i.gi, 2
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %.0236324, i64 %i.gk
  %i.gm = add nuw nsw i32 %.0240323, 1            ; 2 uses
  %exitcond346.not = icmp eq i32 %i.gm, %i.av
  br i1 %exitcond346.not, label %._crit_edge326, label %.preheader, !llvm.loop !148

._crit_edge326:                                   ; preds = %bb.af, %bb.k
  %.0233.lcssa = phi ptr [ %i.at, %bb.k ], [ %spec.select269, %bb.af ] ; 5 uses
  %i.gn = load i8, ptr %i.q, align 1
  %i.go = icmp eq i8 %i.gn, 4
  br i1 %i.go, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %._crit_edge326
  store i16 0, ptr %.0233.lcssa, align 2
  %i.gp = getelementptr inbounds nuw i8, ptr %.0233.lcssa, i64 2
  store i16 0, ptr %i.gp, align 2
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge326
  store i8 0, ptr %.0233.lcssa, align 1
  %i.gq = getelementptr inbounds nuw i8, ptr %.0233.lcssa, i64 1
  store i8 0, ptr %i.gq, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sink383 = phi i64 [ 2, %bb.ah ], [ 4, %bb.ag ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.0233.lcssa, i64 %.sink383
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.aq to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = tail call ptr @SDL_realloc_REAL(ptr noundef nonnull %i.aq, i64 noundef %i.gu) #9 ; 2 uses
  %.not261 = icmp eq ptr %i.gv, null
  %spec.select270 = select i1 %.not261, ptr %i.aq, ptr %i.gv
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %spec.select270, ptr %i.gw, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.j, %bb.c, %bb.h, %bb.d, %bb.f, %bb.e, %bb.b, %bb.a, %bb.ai
  %.0237 = phi i1 [ false, %bb.a ], [ false, %bb.h ], [ false, %bb.f ], [ true, %bb.ai ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.j ]
  ret i1 %.0237
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @SDL_RLEAlphaBlit(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = load i32, ptr %2, align 8
  %i.f = and i32 %i.e, 2
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 @SDL_LockSurface_REAL(ptr noundef nonnull %2) #8
  br i1 %i.g, label %bb.c, label %bb.cs

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load i32, ptr %3, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = mul nsw i32 %i.n, %i.j
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.s = load i8, ptr %i.r, align 1               ; 3 uses
  %i.t = zext i8 %i.s to i32
  %i.u = mul nsw i32 %i.h, %i.t
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 %i.v ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i32, ptr %i.aa, align 4            ; 3 uses
  %.not330 = icmp eq i32 %i.ab, 0
  br i1 %.not330, label %.thread369, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp eq i8 %i.s, 2
  br i1 %i.ac, label %.preheader435, label %bb.l

.preheader435:                                    ; preds = %bb.d, %bb.k
  %.0269 = phi i32 [ %i.bf, %bb.k ], [ %i.ab, %bb.d ]
  %.0249 = phi ptr [ %i.bc, %bb.k ], [ %i.z, %bb.d ]
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.preheader435
  %.0271 = phi i32 [ 0, %.preheader435 ], [ %.2273.ph, %bb.h ]
  %.1 = phi ptr [ %.0249, %.preheader435 ], [ %.3.ph, %bb.h ] ; 3 uses
  %i.ad = load i8, ptr %.1, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = add nsw i32 %.0271, %i.ae               ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.ah = load i8, ptr %i.ag, align 1             ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 2 uses
end_hunk_1
