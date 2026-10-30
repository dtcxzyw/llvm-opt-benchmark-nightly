Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/decNumber?download=true
inline.NumInlined: 166
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@decExpOp:bb.a
  store <2 x i32> %i.ci, ptr %i.ch, align 4, !tbaa !23
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.cj, align 4, !tbaa !28
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !18 ; 2 uses
  %i.cm = load i32, ptr %1, align 4, !tbaa !19    ; 7 uses
  %i.cn = add nsw i32 %i.cm, %i.cl                ; 3 uses
  %i.co = icmp sgt i32 %i.cn, 8
  br i1 %i.co, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.cp, align 8, !tbaa !17
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  store i32 0, ptr %i.cq, align 4, !tbaa !18
  store i32 1, ptr %9, align 16, !tbaa !19
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 10
  store i16 2, ptr %i.cr, align 2, !tbaa !21
  %i.cs = load i8, ptr %i.e, align 4, !tbaa !17
  %.not217 = icmp sgt i8 %i.cs, -1
  br i1 %.not217, label %.thread240, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 -2, ptr %i.cq, align 4, !tbaa !18
  br label %.thread240

bb.t:                                             ; preds = %bb.q
  %i.ct = icmp sgt i32 %i.cm, 8
  %i.cu = zext i1 %i.ct to i32
  %i.cv = sub nsw i32 8, %i.cn
  %i.cw = call i32 @llvm.umin.i32(i32 %i.cv, i32 %i.cu) ; 2 uses
  %i.cx = add i32 %i.cm, %i.cw
  %i.cy = sub i32 0, %i.cx                        ; 2 uses
  %i.cz = add nsw i32 %i.cw, %i.cn                ; 3 uses
  %i.da = icmp slt i32 %i.cz, 0
  %spec.select = call i32 @llvm.smax.i32(i32 %i.cz, i32 0) ; 2 uses
  %.not214292 = icmp eq i32 %i.cl, %i.cy
  %.not214 = or i1 %i.da, %.not214292
  br i1 %.not214, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.db = icmp slt i32 %i.cm, 50
  br i1 %i.db, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dc = sext i32 %i.cm to i64
  %i.dd = getelementptr inbounds i8, ptr @d2utable, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !24
  %i.df = zext i8 %i.de to i32
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.dg = add nuw nsw i32 %i.cm, 2
  %i.dh = udiv i32 %i.dg, 3
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.di = phi i32 [ %i.df, %bb.v ], [ %i.dh, %bb.w ] ; 2 uses
  %i.dj = icmp samesign ugt i32 %i.di, 25
  br i1 %i.dj, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.dk = shl nuw nsw i32 %i.di, 1
  %i.dl = add nuw nsw i32 %i.dk, 10
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = call noalias ptr @malloc(i64 noundef %i.dm) #20 ; 3 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %.thread289, label %.thread

.thread:                                          ; preds = %bb.x, %bb.y
  %.0183 = phi ptr [ null, %bb.x ], [ %i.dn, %bb.y ]
  %.0166 = phi ptr [ %7, %bb.x ], [ %i.dn, %bb.y ] ; 4 uses
  %i.dp = call ptr @decNumberCopy(ptr noundef nonnull %.0166, ptr noundef nonnull %1) ; 0 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0166, i64 4
  store i32 %i.cy, ptr %i.dq, align 4, !tbaa !18
  %.pre = load i32, ptr %.0166, align 4, !tbaa !19
  br label %bb.z

.thread289:                                       ; preds = %bb.y
  %i.dr = load i32, ptr %3, align 4, !tbaa !23
  %i.ds = or i32 %i.dr, 16
  store i32 %i.ds, ptr %3, align 4, !tbaa !23
  br label %.thread277

bb.z:                                             ; preds = %.thread, %bb.t
  %i.dt = phi i32 [ %.pre, %.thread ], [ %i.cm, %bb.t ]
  %.1188 = phi ptr [ %.0166, %.thread ], [ %1, %bb.t ] ; 2 uses
  %.2185 = phi ptr [ %.0183, %.thread ], [ null, %bb.t ] ; 4 uses
  %i.du = load i32, ptr %2, align 4, !tbaa !27
  %. = call i32 @llvm.smax.i32(i32 %i.dt, i32 %i.du)
  %i.dv = add nsw i32 %., %spec.select            ; 5 uses
  %i.dw = add nsw i32 %i.dv, 2                    ; 5 uses
  %i.dx = shl nsw i32 %i.dw, 1                    ; 3 uses
  %i.dy = icmp slt i32 %i.dv, 23
  br i1 %i.dy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dz = sext i32 %i.dx to i64
  %i.ea = getelementptr inbounds i8, ptr @d2utable, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 2, !tbaa !24
  %i.ec = zext i8 %i.eb to i32
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ed = add nuw nsw i32 %i.dx, 2
  %i.ee = udiv i32 %i.ed, 3
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ef = phi i32 [ %i.ec, %bb.aa ], [ %i.ee, %bb.ab ] ; 2 uses
  %i.eg = icmp samesign ugt i32 %i.ef, 55
  br i1 %i.eg, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.eh = shl nuw i32 %i.ef, 1
  %i.ei = add nuw i32 %i.eh, 10
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = call noalias ptr @malloc(i64 noundef %i.ej) #20 ; 3 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.em = load i32, ptr %3, align 4, !tbaa !23
  %i.en = or i32 %i.em, 16
  store i32 %i.en, ptr %3, align 4, !tbaa !23
  br label %decNumberCopy.exit

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %.0172 = phi ptr [ null, %bb.ac ], [ %i.ek, %bb.ad ] ; 3 uses
  %.0170 = phi ptr [ %9, %bb.ac ], [ %i.ek, %bb.ad ] ; 9 uses
  %i.eo = icmp slt i32 %i.dv, 46
  br i1 %i.eo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ep = sext i32 %i.dv to i64
  %i.eq = getelementptr i8, ptr @d2utable, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 4
  %i.es = load i8, ptr %i.er, align 1, !tbaa !24
  %i.et = zext i8 %i.es to i32
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.eu = add nuw nsw i32 %i.dv, 6
  %i.ev = udiv i32 %i.eu, 3
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ew = phi i32 [ %i.et, %bb.ag ], [ %i.ev, %bb.ah ] ; 2 uses
  %i.ex = icmp samesign ugt i32 %i.ew, 31
  br i1 %i.ex, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ey = shl nuw nsw i32 %i.ew, 1
  %i.ez = add nuw nsw i32 %i.ey, 10
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = call noalias ptr @malloc(i64 noundef %i.fa) #20 ; 3 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fd = load i32, ptr %3, align 4, !tbaa !23
  %i.fe = or i32 %i.fd, 16
  store i32 %i.fe, ptr %3, align 4, !tbaa !23
  br label %decNumberCopy.exit

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %.0179 = phi ptr [ null, %bb.ai ], [ %i.fb, %bb.aj ] ; 2 uses
  %.0176 = phi ptr [ %8, %bb.ai ], [ %i.fb, %bb.aj ] ; 9 uses
  %i.ff = call ptr @decNumberCopy(ptr noundef nonnull %.0176, ptr noundef nonnull %.1188) ; 0 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0170, i64 8
  store i8 0, ptr %i.fg, align 4, !tbaa !17
  %i.fh = getelementptr inbounds nuw i8, ptr %.0170, i64 4 ; 2 uses
  store i32 0, ptr %i.fh, align 4, !tbaa !18
  store i32 1, ptr %.0170, align 4, !tbaa !19
  %i.fi = getelementptr inbounds nuw i8, ptr %.0170, i64 10
  store i16 1, ptr %i.fi, align 2, !tbaa !21
  store i8 0, ptr %i.bm, align 8, !tbaa !17
  store i32 0, ptr %i.bn, align 4, !tbaa !18
  store i32 1, ptr %10, align 16, !tbaa !19
  store i16 2, ptr %i.bo, align 2, !tbaa !21
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.fj, align 4, !tbaa !17
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 0, ptr %i.fk, align 4, !tbaa !18
  store i32 1, ptr %11, align 4, !tbaa !19
  %i.fl = getelementptr inbounds nuw i8, ptr %11, i64 10
  store i16 1, ptr %i.fl, align 2, !tbaa !21
  %i.fm = call ptr @decContextDefault(ptr noundef nonnull %5, i32 noundef 64) #19 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef nonnull align 4 dereferenceable(28) %5, i64 28, i1 false), !tbaa.struct !35
  store i32 %i.dx, ptr %4, align 4, !tbaa !27
  store i32 %i.dw, ptr %5, align 4, !tbaa !27
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -999999999, ptr %i.fn, align 4, !tbaa !29
  %i.fo = getelementptr inbounds nuw i8, ptr %.0176, i64 4
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %bb.al
  %i.fp = call fastcc ptr @decAddOp(ptr noundef nonnull %.0170, ptr noundef nonnull %.0170, ptr noundef nonnull %.0176, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef %3) ; 0 uses
  %i.fq = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %.0176, ptr noundef nonnull %.0176, ptr noundef nonnull %.1188, ptr noundef nonnull %5, ptr noundef %i.c) ; 0 uses
  %i.fr = call fastcc ptr @decDivideOp(ptr noundef nonnull %.0176, ptr noundef nonnull %.0176, ptr noundef nonnull %10, ptr noundef nonnull %5, i8 noundef zeroext -128, ptr noundef %i.c) ; 0 uses
  %i.fs = load i32, ptr %.0170, align 4, !tbaa !19 ; 3 uses
  %i.ft = load i32, ptr %i.fh, align 4, !tbaa !18
  %i.fu = add nsw i32 %i.ft, %i.fs
  %i.fv = load i32, ptr %.0176, align 4, !tbaa !19
  %i.fw = load i32, ptr %i.fo, align 4, !tbaa !18
  %i.fx = add i32 %i.fv, %i.dw
  %i.fy = add i32 %i.fx, %i.fw
  %.not215.not = icmp sle i32 %i.fu, %i.fy
  %.not216 = icmp slt i32 %i.fs, %i.dw
  %or.cond = or i1 %.not216, %.not215.not
  br i1 %or.cond, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fz = call fastcc ptr @decAddOp(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef %i.c) ; 0 uses
  br label %bb.am

bb.ao:                                            ; preds = %bb.am
  %.not293 = icmp slt i32 %i.cz, 1
  br i1 %.not293, label %.loopexit, label %.thread240

.thread240:                                       ; preds = %bb.s, %bb.r, %bb.ao
  %.1169257 = phi i32 [ %spec.select, %bb.ao ], [ 8, %bb.r ], [ 8, %bb.s ]
  %.2256 = phi ptr [ %.0170, %bb.ao ], [ %9, %bb.r ], [ %9, %bb.s ]
  %.2174255 = phi ptr [ %.0172, %bb.ao ], [ null, %bb.r ], [ null, %bb.s ]
  %.2178253 = phi ptr [ %.0176, %bb.ao ], [ %8, %bb.r ], [ %8, %bb.s ] ; 12 uses
  %.2181252 = phi ptr [ %.0179, %bb.ao ], [ null, %bb.r ], [ null, %bb.s ]
  %.4250 = phi ptr [ %.2185, %bb.ao ], [ null, %bb.r ], [ null, %bb.s ]
  %.1190248 = phi i32 [ %i.dw, %bb.ao ], [ 9, %bb.r ], [ 9, %bb.s ]
  %i.ga = zext nneg i32 %.1169257 to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr @DECPOWERS, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !23
  %i.gd = add nsw i32 %.1190248, 2
  store i32 %i.gd, ptr %4, align 4, !tbaa !27
  %i.ge = getelementptr inbounds nuw i8, ptr %.2178253, i64 8 ; 2 uses
  store i8 0, ptr %i.ge, align 4, !tbaa !17
  %i.gf = getelementptr inbounds nuw i8, ptr %.2178253, i64 4
  store i32 0, ptr %i.gf, align 4, !tbaa !18
  store i32 1, ptr %.2178253, align 4, !tbaa !19
  %i.gg = getelementptr inbounds nuw i8, ptr %.2178253, i64 10 ; 2 uses
  store i16 1, ptr %i.gg, align 2, !tbaa !21
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ax, %.thread240
  %.0163 = phi i32 [ 0, %.thread240 ], [ %.1260265, %bb.ax ]
  %.0162 = phi i32 [ 1, %.thread240 ], [ %i.gx, %bb.ax ] ; 3 uses
  %.0 = phi i32 [ %i.gc, %.thread240 ], [ %i.gr, %bb.ax ]
  %i.gh = load i32, ptr %3, align 4, !tbaa !23    ; 2 uses
  %i.gi = and i32 %i.gh, 8704
  %.not218 = icmp eq i32 %i.gi, 0
  br i1 %.not218, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gj = and i32 %i.gh, 512
  %.not219 = icmp eq i32 %i.gj, 0
  br i1 %.not219, label %bb.ar, label %.loopexit.loopexit

bb.ar:                                            ; preds = %bb.aq
  %i.gk = load i16, ptr %i.gg, align 2, !tbaa !21
  %i.gl = icmp eq i16 %i.gk, 0
  br i1 %i.gl, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.gm = load i32, ptr %.2178253, align 4, !tbaa !19
  %i.gn = icmp eq i32 %i.gm, 1
  br i1 %i.gn, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.go = load i8, ptr %i.ge, align 4, !tbaa !17
  %i.gp = and i8 %i.go, 112
  %i.gq = icmp eq i8 %i.gp, 0
  br i1 %i.gq, label %.loopexit.loopexit, label %bb.au

bb.au:                                            ; preds = %bb.ar, %bb.as, %bb.at, %bb.ap
  %i.gr = shl i32 %.0, 1                          ; 2 uses
  %i.gs = icmp slt i32 %i.gr, 0
  br i1 %i.gs, label %.thread258, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gt = icmp eq i32 %.0162, 31
  br i1 %i.gt, label %.loopexit.loopexit, label %bb.aw

.thread258:                                       ; preds = %bb.au
  %i.gu = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %.2178253, ptr noundef nonnull %.2178253, ptr noundef nonnull %.2256, ptr noundef nonnull %4, ptr noundef %3) ; 0 uses
  %i.gv = icmp eq i32 %.0162, 31
  br i1 %i.gv, label %.loopexit.loopexit, label %.thread261

bb.aw:                                            ; preds = %bb.av
  %.not220 = icmp eq i32 %.0163, 0
  br i1 %.not220, label %bb.ax, label %.thread261

.thread261:                                       ; preds = %.thread258, %bb.aw
  %i.gw = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %.2178253, ptr noundef nonnull %.2178253, ptr noundef nonnull %.2178253, ptr noundef nonnull %4, ptr noundef %3) ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.thread261
  %.1260265 = phi i32 [ 0, %bb.aw ], [ 1, %.thread261 ]
  %i.gx = add nuw nsw i32 %.0162, 1
  br label %bb.ap

.loopexit.loopexit:                               ; preds = %bb.av, %bb.aq, %bb.at, %.thread258
  %.pre295.pre = load i32, ptr %.2178253, align 4, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ao
  %.pre295 = phi i32 [ %i.fs, %bb.ao ], [ %.pre295.pre, %.loopexit.loopexit ] ; 2 uses
  %.2174254 = phi ptr [ %.0172, %bb.ao ], [ %.2174255, %.loopexit.loopexit ]
  %.2181251 = phi ptr [ %.0179, %bb.ao ], [ %.2181252, %.loopexit.loopexit ]
  %.4249 = phi ptr [ %.2185, %bb.ao ], [ %.4250, %.loopexit.loopexit ]
  %.3 = phi ptr [ %.0170, %bb.ao ], [ %.2178253, %.loopexit.loopexit ] ; 4 uses
  store i32 1, ptr %i.d, align 4, !tbaa !23
  %i.gy = getelementptr inbounds nuw i8, ptr %.3, i64 10 ; 2 uses
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !21
  %i.ha = icmp eq i16 %i.gz, 0
  %i.hb = icmp eq i32 %.pre295, 1
  %or.cond314 = select i1 %i.ha, i1 %i.hb, i1 false
  br i1 %or.cond314, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %.loopexit
  %i.hc = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.hd = load i8, ptr %i.hc, align 4, !tbaa !17
  %i.he = and i8 %i.hd, 112
  %i.hf = icmp eq i8 %i.he, 0
  br i1 %i.hf, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.d, align 4, !tbaa !23
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %.loopexit
  %i.hg = load i32, ptr %2, align 4, !tbaa !27
  store i32 %i.hg, ptr %4, align 4, !tbaa !27
  %i.hh = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.hi = load i8, ptr %i.hh, align 4, !tbaa !17
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.hi, ptr %i.hj, align 4, !tbaa !17
  %i.hk = getelementptr inbounds nuw i8, ptr %.3, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !18
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !18
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %i.gy, i32 noundef %.pre295, ptr noundef nonnull %i.d, ptr noundef nonnull %3)
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %i.d, ptr noundef %3)
  br label %decNumberCopy.exit

decNumberCopy.exit:                               ; preds = %bb.ak, %bb.ae, %bb.ba
  %.5 = phi ptr [ %.4249, %bb.ba ], [ %.2185, %bb.ae ], [ %.2185, %bb.ak ] ; 2 uses
  %.3182 = phi ptr [ %.2181251, %bb.ba ], [ null, %bb.ae ], [ null, %bb.ak ] ; 2 uses
  %.3175 = phi ptr [ %.2174254, %bb.ba ], [ null, %bb.ae ], [ %.0172, %bb.ak ] ; 2 uses
  %.not223 = icmp eq ptr %.5, null
  br i1 %.not223, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %decNumberCopy.exit
  call void @free(ptr noundef nonnull %.5) #19
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %decNumberCopy.exit
  %.not224 = icmp eq ptr %.3175, null
  br i1 %.not224, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %.3175) #19
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.not225 = icmp eq ptr %.3182, null
  br i1 %.not225, label %.thread277, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @free(ptr noundef nonnull %.3182) #19
  br label %.thread277

.thread277:                                       ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.thread289, %bb.f, %bb.e, %bb.p, %bb.n, %bb.l, %bb.i, %bb.d, %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberFMA(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(address) %3, ptr noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %5 = alloca %struct.decContext, align 4         ; 7 uses
  %6 = alloca [5 x %struct.decNumber], align 16   ; 3 uses
  %7 = alloca %struct.decNumber, align 4          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 4, !tbaa !17
  %i.d = and i8 %i.c, 112
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %decCheckMath.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %4, align 4, !tbaa !27
  %i.f = icmp sgt i32 %i.e, 999999
  br i1 %i.f, label %.thread.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !30
  %i.i = icmp sgt i32 %i.h, 999999
  br i1 %i.i, label %.thread.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !29
  %i.l = icmp slt i32 %i.k, -999999
  br i1 %i.l, label %.thread.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %1, align 4, !tbaa !19     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 999999
  br i1 %i.n, label %.thread.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !18
  %i.q = add i32 %i.m, -1000001
  %i.r = add i32 %i.q, %i.p
  %or.cond.i = icmp ult i32 %i.r, -2999997
  br i1 %or.cond.i, label %bb.g, label %decCheckMath.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.t = load i16, ptr %i.s, align 2, !tbaa !21
  %i.u = icmp eq i16 %i.t, 0
  %i.v = icmp eq i32 %i.m, 1
  %or.cond16.i = and i1 %i.v, %i.u
  br i1 %or.cond16.i, label %decCheckMath.exit.thread, label %.thread.thread

decCheckMath.exit.thread:                         ; preds = %bb.g, %bb.f, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i8, ptr %i.w, align 4, !tbaa !17
  %i.y = and i8 %i.x, 112
  %.not38 = icmp eq i8 %i.y, 0
  br i1 %.not38, label %bb.h, label %decCheckMath.exit50.thread

bb.h:                                             ; preds = %decCheckMath.exit.thread
  %i.z = load i32, ptr %4, align 4, !tbaa !27
  %i.aa = icmp sgt i32 %i.z, 999999
  br i1 %i.aa, label %.thread.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !30
  %i.ad = icmp sgt i32 %i.ac, 999999
  br i1 %i.ad, label %.thread.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !29
  %i.ag = icmp slt i32 %i.af, -999999
  br i1 %i.ag, label %.thread.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i32, ptr %2, align 4, !tbaa !19    ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 999999
  br i1 %i.ai, label %.thread.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !18
  %i.al = add i32 %i.ah, -1000001
  %i.am = add i32 %i.al, %i.ak
  %or.cond.i46 = icmp ult i32 %i.am, -2999997
  br i1 %or.cond.i46, label %bb.m, label %decCheckMath.exit50.thread

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !21
  %i.ap = icmp eq i16 %i.ao, 0
  %i.aq = icmp eq i32 %i.ah, 1
  %or.cond16.i47 = and i1 %i.aq, %i.ap
  br i1 %or.cond16.i47, label %decCheckMath.exit50.thread, label %.thread.thread

decCheckMath.exit50.thread:                       ; preds = %bb.m, %bb.l, %decCheckMath.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !17
  %i.at = and i8 %i.as, 112
  %.not40 = icmp eq i8 %i.at, 0
  br i1 %.not40, label %bb.n, label %decCheckMath.exit55.thread

bb.n:                                             ; preds = %decCheckMath.exit50.thread
  %i.au = load i32, ptr %4, align 4, !tbaa !27
  %i.av = icmp sgt i32 %i.au, 999999
  br i1 %i.av, label %.thread.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !30
  %i.ay = icmp sgt i32 %i.ax, 999999
  br i1 %i.ay, label %.thread.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !29
  %i.bb = icmp slt i32 %i.ba, -999999
  br i1 %i.bb, label %.thread.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = load i32, ptr %3, align 4, !tbaa !19    ; 3 uses
  %i.bd = icmp sgt i32 %i.bc, 999999
  br i1 %i.bd, label %.thread.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !18
  %i.bg = add i32 %i.bc, -1000001
  %i.bh = add i32 %i.bg, %i.bf
  %or.cond.i51 = icmp ult i32 %i.bh, -2999997
  br i1 %or.cond.i51, label %bb.s, label %decCheckMath.exit55.thread

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !21
  %i.bk = icmp eq i16 %i.bj, 0
  %i.bl = icmp eq i32 %i.bc, 1
  %or.cond16.i52 = and i1 %i.bl, %i.bk
  br i1 %or.cond16.i52, label %decCheckMath.exit55.thread, label %.thread.thread

decCheckMath.exit55.thread:                       ; preds = %bb.s, %bb.r, %decCheckMath.exit50.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %4, i64 28, i1 false), !tbaa.struct !35
  %i.bm = load i32, ptr %1, align 4, !tbaa !19
  %i.bn = load i32, ptr %2, align 4, !tbaa !19
  %i.bo = add nsw i32 %i.bn, %i.bm                ; 4 uses
  store i32 %i.bo, ptr %5, align 4, !tbaa !27
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 999999999, ptr %i.bp, align 4, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -999999999, ptr %i.bq, align 4, !tbaa !29
end_hunk_0
