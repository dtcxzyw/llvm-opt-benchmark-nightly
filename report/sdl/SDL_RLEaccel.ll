Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_RLEaccel?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@RLEAlphaSurface:bb.a
  %indvars.iv.next335 = add nsw i64 %indvars.iv334, 1 ; 2 uses
  %exitcond337.not = icmp eq i64 %indvars.iv.next335, %i.bf
  br i1 %exitcond337.not, label %.critedge2, label %bb.o, !llvm.loop !136

.critedge2.loopexit.split.loop.exit375:           ; preds = %bb.o
  %i.bz = trunc nsw i64 %indvars.iv334 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.n, %bb.p, %.critedge2.loopexit.split.loop.exit375, %.critedge
  %.1239.lcssa361 = phi i32 [ %.1239.lcssa, %.critedge ], [ %.1239.lcssa, %.critedge2.loopexit.split.loop.exit375 ], [ %.1239.lcssa, %bb.p ], [ %i.ax, %bb.n ] ; 4 uses
  %.2240.lcssa = phi i32 [ %.1239.lcssa, %.critedge ], [ %i.bz, %.critedge2.loopexit.split.loop.exit375 ], [ %i.ax, %bb.p ], [ %i.ax, %bb.n ] ; 2 uses
  %.lcssa = phi i1 [ false, %.critedge ], [ true, %.critedge2.loopexit.split.loop.exit375 ], [ false, %bb.p ], [ false, %bb.n ]
  %i.ca = sub nsw i32 %.1239.lcssa361, %.0238     ; 4 uses
  %i.cb = icmp eq i32 %i.ca, %i.ax
  %spec.select = select i1 %i.cb, i32 1, i32 %.0230 ; 2 uses
  %i.cc = sub nsw i32 %.2240.lcssa, %.1239.lcssa361 ; 2 uses
  %i.cd = icmp sgt i32 %i.ca, 255
  br i1 %i.cd, label %.lr.ph284, label %._crit_edge

.lr.ph284:                                        ; preds = %.critedge2, %bb.s
  %.0228283 = phi i32 [ %i.cj, %bb.s ], [ %i.ca, %.critedge2 ] ; 2 uses
  %.2247282 = phi ptr [ %i.ci, %bb.s ], [ %.1246, %.critedge2 ] ; 5 uses
  %i.ce = load i8, ptr %i.q, align 1
  %i.cf = icmp eq i8 %i.ce, 4
  br i1 %i.cf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph284
  store i16 255, ptr %.2247282, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %.2247282, i64 2
  store i16 0, ptr %i.cg, align 2
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph284
  store i8 -1, ptr %.2247282, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.2247282, i64 1
  store i8 0, ptr %i.ch, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink = phi i64 [ 2, %bb.r ], [ 4, %bb.q ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.2247282, i64 %.sink ; 2 uses
  %i.cj = add nsw i32 %.0228283, -255             ; 2 uses
  %i.ck = icmp sgt i32 %.0228283, 510
  br i1 %i.ck, label %.lr.ph284, label %._crit_edge, !llvm.loop !137

._crit_edge:                                      ; preds = %bb.s, %.critedge2
  %.2247.lcssa = phi ptr [ %.1246, %.critedge2 ], [ %i.ci, %bb.s ] ; 5 uses
  %.0228.lcssa = phi i32 [ %i.ca, %.critedge2 ], [ %i.cj, %bb.s ] ; 2 uses
  %i.cl = tail call i32 @llvm.smin.i32(i32 %i.cc, i32 255) ; 5 uses
  %i.cm = load i8, ptr %i.q, align 1
  %i.cn = icmp eq i8 %i.cm, 4
  br i1 %i.cn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.co = trunc i32 %.0228.lcssa to i16
  store i16 %i.co, ptr %.2247.lcssa, align 2
  %i.cp = trunc i32 %i.cl to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %.2247.lcssa, i64 2
  store i16 %i.cp, ptr %i.cq, align 2
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge
  %i.cr = trunc i32 %.0228.lcssa to i8
  store i8 %i.cr, ptr %.2247.lcssa, align 1
  %i.cs = trunc i32 %i.cl to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.2247.lcssa, i64 1
  store i8 %i.cs, ptr %i.ct, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sink381 = phi i64 [ 2, %bb.u ], [ 4, %bb.t ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.2247.lcssa, i64 %.sink381 ; 2 uses
  %i.cv = sext i32 %.1239.lcssa361 to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %.0236324, i64 %i.cv
  %i.cx = tail call i32 %.1244(ptr noundef nonnull %i.cu, ptr noundef %i.cw, i32 noundef %i.cl, ptr noundef %i.ay, ptr noundef nonnull %i.d) #8, !callees !147
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cy ; 2 uses
  %i.da = sub nsw i32 %i.cc, %i.cl                ; 2 uses
  %.not263287 = icmp eq i32 %i.da, 0
  br i1 %.not263287, label %._crit_edge293, label %.lr.ph292.preheader

.lr.ph292.preheader:                              ; preds = %bb.v
  %i.db = add nsw i32 %i.cl, %.1239.lcssa361
  br label %.lr.ph292

.lr.ph292:                                        ; preds = %.lr.ph292.preheader, %bb.y
  %.0229290 = phi i32 [ %i.dq, %bb.y ], [ %i.da, %.lr.ph292.preheader ] ; 2 uses
  %.0231289 = phi i32 [ %i.dp, %bb.y ], [ %i.db, %.lr.ph292.preheader ] ; 2 uses
  %.5250288 = phi ptr [ %i.do, %bb.y ], [ %i.cz, %.lr.ph292.preheader ] ; 5 uses
  %i.dc = tail call i32 @llvm.smin.i32(i32 %.0229290, i32 255) ; 5 uses
  %i.dd = load i8, ptr %i.q, align 1
  %i.de = icmp eq i8 %i.dd, 4
  br i1 %i.de, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph292
  store i16 0, ptr %.5250288, align 2
  %i.df = trunc nuw i32 %i.dc to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %.5250288, i64 2
  store i16 %i.df, ptr %i.dg, align 2
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph292
  store i8 0, ptr %.5250288, align 1
  %i.dh = trunc nuw i32 %i.dc to i8
  %i.di = getelementptr inbounds nuw i8, ptr %.5250288, i64 1
  store i8 %i.dh, ptr %i.di, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink382 = phi i64 [ 2, %bb.x ], [ 4, %bb.w ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.5250288, i64 %.sink382 ; 2 uses
  %i.dk = sext i32 %.0231289 to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %.0236324, i64 %i.dk
  %i.dm = tail call i32 %.1244(ptr noundef nonnull %i.dj, ptr noundef %i.dl, i32 noundef %i.dc, ptr noundef %i.ay, ptr noundef nonnull %i.d) #8, !callees !147
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %i.dj, i64 %i.dn ; 2 uses
  %i.dp = add nsw i32 %i.dc, %.0231289
  %i.dq = sub nuw nsw i32 %.0229290, %i.dc        ; 2 uses
  %.not263 = icmp eq i32 %i.dq, 0
  br i1 %.not263, label %._crit_edge293, label %.lr.ph292, !llvm.loop !138

._crit_edge293:                                   ; preds = %bb.y, %bb.v
  %.5250.lcssa = phi ptr [ %i.cz, %bb.v ], [ %i.do, %bb.y ] ; 3 uses
  br i1 %.lcssa, label %bb.l, label %bb.z, !llvm.loop !139

bb.z:                                             ; preds = %._crit_edge293
  %i.dr = ptrtoint ptr %.5250.lcssa to i64
  %i.ds = and i64 %i.dr, 2
  %i.dt = getelementptr inbounds nuw i8, ptr %.5250.lcssa, i64 %i.ds
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
  br i1 %exitcond341.not, label %.critedge6, label %bb.ab, !llvm.loop !140

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
  br i1 %exitcond345.not, label %.critedge6, label %bb.ad, !llvm.loop !141

.critedge6.loopexit.split.loop.exit378:           ; preds = %bb.ad
  %i.er = trunc nsw i64 %indvars.iv342 to i32
  br label %.critedge6

.critedge6:                                       ; preds = %bb.ac, %bb.ae, %.critedge6.loopexit.split.loop.exit378, %.critedge4
  %.4.lcssa363 = phi i32 [ %.4.lcssa, %.critedge4 ], [ %.4.lcssa, %.critedge6.loopexit.split.loop.exit378 ], [ %.4.lcssa, %bb.ae ], [ %i.ax, %bb.ac ] ; 5 uses
  %.5.lcssa = phi i32 [ %.4.lcssa, %.critedge4 ], [ %i.er, %.critedge6.loopexit.split.loop.exit378 ], [ %i.ax, %bb.ae ], [ %i.ax, %bb.ac ] ; 2 uses
  %.lcssa271 = phi i1 [ false, %.critedge4 ], [ true, %.critedge6.loopexit.split.loop.exit378 ], [ false, %bb.ae ], [ false, %bb.ac ]
  %i.es = sub nsw i32 %.4.lcssa363, %.3           ; 6 uses
  %i.et = icmp eq i32 %i.es, %i.ax
  %i.eu = select i1 %i.et, i32 %.2, i32 0         ; 2 uses
  %i.ev = sub nsw i32 %.5.lcssa, %.4.lcssa363     ; 2 uses
  %i.ew = icmp sgt i32 %i.es, 65535
  br i1 %i.ew, label %.lr.ph310.preheader, label %._crit_edge311

.lr.ph310.preheader:                              ; preds = %.critedge6
  %1 = tail call i32 @llvm.smin.i32(i32 %i.es, i32 131070)
  %2 = add i32 %.4.lcssa363, 65534
  %i.ex = add i32 %.3, %1
  %i.ey = sub i32 %2, %i.ex                       ; 2 uses
  %i.ez = udiv i32 %i.ey, 65535
  %narrow = add nuw nsw i32 %i.ez, 1
  %i.fa = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check = icmp ult i32 %i.ey, 458745
  br i1 %min.iters.check, label %.lr.ph310.preheader399, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph310.preheader
  %n.vec = and i64 %i.fa, 262136                  ; 4 uses
  %i.fb = trunc nuw nsw i64 %n.vec to i32
  %i.fc = mul i32 %i.fb, -65535
  %i.fd = add i32 %i.es, %i.fc                    ; 2 uses
  %i.fe = shl nuw nsw i64 %n.vec, 2
  %i.ff = getelementptr i8, ptr %.7, i64 %i.fe    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fg = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.7, i64 %i.fg
  %i.fh = getelementptr i8, ptr %.7, i64 %i.fg
  %next.gep397 = getelementptr i8, ptr %i.fh, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep397, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !142

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.fa
  br i1 %cmp.n, label %._crit_edge311, label %.lr.ph310.preheader399

.lr.ph310.preheader399:                           ; preds = %.lr.ph310.preheader, %middle.block
  %.0226309.ph = phi i32 [ %i.es, %.lr.ph310.preheader ], [ %i.fd, %middle.block ]
  %.8308.ph = phi ptr [ %.7, %.lr.ph310.preheader ], [ %i.ff, %middle.block ]
  br label %.lr.ph310

.lr.ph310:                                        ; preds = %.lr.ph310.preheader399, %.lr.ph310
  %.0226309 = phi i32 [ %i.fl, %.lr.ph310 ], [ %.0226309.ph, %.lr.ph310.preheader399 ] ; 2 uses
  %.8308 = phi ptr [ %i.fk, %.lr.ph310 ], [ %.8308.ph, %.lr.ph310.preheader399 ] ; 3 uses
  store i16 -1, ptr %.8308, align 2
  %i.fj = getelementptr inbounds nuw i8, ptr %.8308, i64 2
  store i16 0, ptr %i.fj, align 2
  %i.fk = getelementptr inbounds nuw i8, ptr %.8308, i64 4 ; 2 uses
  %i.fl = add nsw i32 %.0226309, -65535           ; 2 uses
  %i.fm = icmp samesign ugt i32 %.0226309, 131070
  br i1 %i.fm, label %.lr.ph310, label %._crit_edge311, !llvm.loop !143

._crit_edge311:                                   ; preds = %.lr.ph310, %middle.block, %.critedge6
  %.8.lcssa = phi ptr [ %.7, %.critedge6 ], [ %i.ff, %middle.block ], [ %i.fk, %.lr.ph310 ] ; 3 uses
  %.0226.lcssa = phi i32 [ %i.es, %.critedge6 ], [ %i.fd, %middle.block ], [ %i.fl, %.lr.ph310 ]
  %i.fn = tail call i32 @llvm.smin.i32(i32 %i.ev, i32 65535) ; 4 uses
  %i.fo = trunc i32 %.0226.lcssa to i16
  store i16 %i.fo, ptr %.8.lcssa, align 2
  %i.fp = trunc i32 %i.fn to i16
  %i.fq = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 2
  store i16 %i.fp, ptr %i.fq, align 2
  %i.fr = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 4 ; 2 uses
  %i.fs = sext i32 %.4.lcssa363 to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %.0236324, i64 %i.fs
  %i.fu = tail call i32 %.1242(ptr noundef nonnull %i.fr, ptr noundef %i.ft, i32 noundef %i.fn, ptr noundef %i.ay, ptr noundef nonnull %i.d) #8, !callees !148
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds i8, ptr %i.fr, i64 %i.fv ; 2 uses
  %i.fx = sub nsw i32 %i.ev, %i.fn                ; 2 uses
  %.not264314 = icmp eq i32 %i.fx, 0
  br i1 %.not264314, label %._crit_edge320, label %.lr.ph319.preheader

.lr.ph319.preheader:                              ; preds = %._crit_edge311
  %i.fy = add nsw i32 %i.fn, %.4.lcssa363
  br label %.lr.ph319

.lr.ph319:                                        ; preds = %.lr.ph319.preheader, %.lr.ph319
  %.0227317 = phi i32 [ %i.gj, %.lr.ph319 ], [ %i.fx, %.lr.ph319.preheader ] ; 2 uses
  %.1232316 = phi i32 [ %i.gi, %.lr.ph319 ], [ %i.fy, %.lr.ph319.preheader ] ; 2 uses
  %.9315 = phi ptr [ %i.gh, %.lr.ph319 ], [ %i.fw, %.lr.ph319.preheader ] ; 3 uses
  %i.fz = tail call i32 @llvm.smin.i32(i32 %.0227317, i32 65535) ; 4 uses
  store i16 0, ptr %.9315, align 2
  %i.ga = trunc nuw i32 %i.fz to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %.9315, i64 2
  store i16 %i.ga, ptr %i.gb, align 2
  %i.gc = getelementptr inbounds nuw i8, ptr %.9315, i64 4 ; 2 uses
  %i.gd = sext i32 %.1232316 to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %.0236324, i64 %i.gd
  %i.gf = tail call i32 %.1242(ptr noundef nonnull %i.gc, ptr noundef %i.ge, i32 noundef %i.fz, ptr noundef %i.ay, ptr noundef nonnull %i.d) #8, !callees !148
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds i8, ptr %i.gc, i64 %i.gg ; 2 uses
  %i.gi = add nsw i32 %i.fz, %.1232316
  %i.gj = sub nuw nsw i32 %.0227317, %i.fz        ; 2 uses
  %.not264 = icmp eq i32 %i.gj, 0
  br i1 %.not264, label %._crit_edge320, label %.lr.ph319, !llvm.loop !144

._crit_edge320:                                   ; preds = %.lr.ph319, %._crit_edge311
  %.9.lcssa = phi ptr [ %i.fw, %._crit_edge311 ], [ %i.gh, %.lr.ph319 ] ; 3 uses
  %.not265 = icmp eq i32 %i.eu, 0
  %spec.select269 = select i1 %.not265, ptr %.9.lcssa, ptr %.1234 ; 3 uses
  br i1 %.lcssa271, label %bb.aa, label %bb.af, !llvm.loop !145

bb.af:                                            ; preds = %._crit_edge320
  %i.gk = load i32, ptr %i.be, align 8
  %i.gl = ashr i32 %i.gk, 2
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %.0236324, i64 %i.gm
  %i.go = add nuw nsw i32 %.0237323, 1            ; 2 uses
  %exitcond346.not = icmp eq i32 %i.go, %i.av
  br i1 %exitcond346.not, label %._crit_edge326, label %.preheader, !llvm.loop !146

._crit_edge326:                                   ; preds = %bb.af, %bb.k
  %.0233.lcssa = phi ptr [ %i.at, %bb.k ], [ %spec.select269, %bb.af ] ; 5 uses
  %i.gp = load i8, ptr %i.q, align 1
  %i.gq = icmp eq i8 %i.gp, 4
  br i1 %i.gq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %._crit_edge326
  store i16 0, ptr %.0233.lcssa, align 2
  %i.gr = getelementptr inbounds nuw i8, ptr %.0233.lcssa, i64 2
  store i16 0, ptr %i.gr, align 2
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge326
  store i8 0, ptr %.0233.lcssa, align 1
  %i.gs = getelementptr inbounds nuw i8, ptr %.0233.lcssa, i64 1
  store i8 0, ptr %i.gs, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sink383 = phi i64 [ 2, %bb.ah ], [ 4, %bb.ag ]
  %i.gt = getelementptr inbounds nuw i8, ptr %.0233.lcssa, i64 %.sink383
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.aq to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = tail call ptr @SDL_realloc_REAL(ptr noundef nonnull %i.aq, i64 noundef %i.gw) #9 ; 2 uses
  %.not261 = icmp eq ptr %i.gx, null
  %spec.select270 = select i1 %.not261, ptr %i.aq, ptr %i.gx
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %spec.select270, ptr %i.gy, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.j, %bb.c, %bb.h, %bb.d, %bb.f, %bb.e, %bb.b, %bb.a, %bb.ai
  %.0253 = phi i1 [ false, %bb.a ], [ false, %bb.h ], [ false, %bb.f ], [ true, %bb.ai ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.j ]
  ret i1 %.0253
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
  %.0277 = phi i32 [ %i.bf, %bb.k ], [ %i.ab, %bb.d ]
  %.0249 = phi ptr [ %i.bc, %bb.k ], [ %i.z, %bb.d ]
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.preheader435
  %.0279 = phi i32 [ 0, %.preheader435 ], [ %.2281.ph, %bb.h ]
  %.1 = phi ptr [ %.0249, %.preheader435 ], [ %.3.ph, %bb.h ] ; 3 uses
  %i.ad = load i8, ptr %.1, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = add nsw i32 %.0279, %i.ae               ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.ah = load i8, ptr %i.ag, align 1             ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 2 uses
end_hunk_0
