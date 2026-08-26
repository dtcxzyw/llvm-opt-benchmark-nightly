Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/t_string?download=true
inline.NumInlined: 20
inline.NumDeleted: 3
begin_hunk_0_@lcsCommand:bb.a
  %i.ca = zext i16 %i.bz to i64
  br label %sdslen.exit279

bb.ac:                                            ; preds = %sdslen.exit276.thread
  %i.cb = getelementptr inbounds i8, ptr %i.y, i64 -9
  %i.cc = load i32, ptr %i.cb, align 1, !tbaa !9
  %i.cd = zext i32 %i.cc to i64
  br label %sdslen.exit279

bb.ad:                                            ; preds = %sdslen.exit276.thread
  %i.ce = getelementptr inbounds i8, ptr %i.y, i64 -17
  %i.cf = load i64, ptr %i.ce, align 1, !tbaa !90
  br label %sdslen.exit279

sdslen.exit279:                                   ; preds = %sdslen.exit276.thread, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %.0.i278 = phi i64 [ %i.cf, %bb.ad ], [ %i.bu, %bb.z ], [ %i.bx, %bb.aa ], [ %i.ca, %bb.ab ], [ %i.cd, %bb.ac ], [ 0, %sdslen.exit276.thread ] ; 2 uses
  %i.cg = trunc i64 %.0.i278 to i32               ; 11 uses
  switch i8 %i.bm, label %sdslen.exit282 [
    i8 0, label %bb.ae
    i8 1, label %bb.af
    i8 2, label %bb.ag
    i8 3, label %bb.ah
    i8 4, label %bb.ai
  ]

bb.ae:                                            ; preds = %sdslen.exit279
  %i.ch = lshr i8 %.val.i274, 3
  %i.ci = zext nneg i8 %i.ch to i64
  br label %sdslen.exit282

bb.af:                                            ; preds = %sdslen.exit279
  %i.cj = getelementptr inbounds i8, ptr %i.aa, i64 -3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !84
  %i.cl = zext i8 %i.ck to i64
  br label %sdslen.exit282

bb.ag:                                            ; preds = %sdslen.exit279
  %i.cm = getelementptr inbounds i8, ptr %i.aa, i64 -5
  %i.cn = load i16, ptr %i.cm, align 1, !tbaa !88
  %i.co = zext i16 %i.cn to i64
  br label %sdslen.exit282

bb.ah:                                            ; preds = %sdslen.exit279
  %i.cp = getelementptr inbounds i8, ptr %i.aa, i64 -9
  %i.cq = load i32, ptr %i.cp, align 1, !tbaa !9
  %i.cr = zext i32 %i.cq to i64
  br label %sdslen.exit282

bb.ai:                                            ; preds = %sdslen.exit279
  %i.cs = getelementptr inbounds i8, ptr %i.aa, i64 -17
  %i.ct = load i64, ptr %i.cs, align 1, !tbaa !90
  br label %sdslen.exit282

sdslen.exit282:                                   ; preds = %sdslen.exit279, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.0.i281 = phi i64 [ %i.ct, %bb.ai ], [ %i.ci, %bb.ae ], [ %i.cl, %bb.af ], [ %i.co, %bb.ag ], [ %i.cr, %bb.ah ], [ 0, %sdslen.exit279 ]
  %i.cu = trunc i64 %.0.i281 to i32               ; 4 uses
  %i.cv = add i64 %.0.i278, 1
  %i.cw = and i64 %i.cv, 4294967295
  %i.cx = add i32 %i.cu, 1                        ; 8 uses
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = mul nuw i64 %i.cw, %i.cy                ; 2 uses
  %i.da = shl i64 %i.cz, 2                        ; 3 uses
  %i.db = udiv i64 %i.da, %i.cz
  %i.dc = icmp eq i64 %i.db, 4
  br i1 %i.dc, label %bb.aj, label %.thread294

bb.aj:                                            ; preds = %sdslen.exit282
  %i.dd = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7792), align 8, !tbaa !107
  %i.de = icmp ugt i64 %i.da, %i.dd
  br i1 %i.de, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.30) #10
  br label %.loopexit

bb.al:                                            ; preds = %bb.aj
  %i.df = call noalias ptr @ztrymalloc(i64 noundef %i.da) #12 ; 11 uses
  %.not259 = icmp eq ptr %i.df, null
  br i1 %.not259, label %.thread294, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.al
  %umax = call i32 @llvm.umax.i32(i32 %i.cx, i32 1)
  %umax373 = call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.dg = shl nuw nsw i64 %umax373, 2
  %i.dh = add i32 %i.cg, 1
  %umax380 = call i32 @llvm.umax.i32(i32 %i.dh, i32 1)
  %wide.trip.count381 = zext i32 %umax380 to i64
  %wide.trip.count = zext i32 %umax to i64
  %exitcond.peel = icmp ult i32 %i.cx, 2
  br label %.preheader

.thread294:                                       ; preds = %sdslen.exit282, %bb.al
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.31) #10
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader, %.split.us
  %indvars.iv377 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next378, %.split.us ] ; 3 uses
  %i.di = icmp eq i64 %indvars.iv377, 0
  %i.dj = trunc nuw i64 %indvars.iv377 to i32     ; 2 uses
  %i.dk = add i32 %i.dj, -1                       ; 2 uses
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.dl
  %i.dn = mul i32 %i.dk, %i.cx                    ; 2 uses
  %i.do = mul i32 %i.cx, %i.dj                    ; 3 uses
  br i1 %i.di, label %.preheader.split.us.preheader, label %bb.am

bb.am:                                            ; preds = %.preheader
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dp
  store i32 0, ptr %i.dq, align 4, !tbaa !9
  br i1 %exitcond.peel, label %.split.us, label %.preheader.split.peel.next

.preheader.split.us.preheader:                    ; preds = %.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.df, i8 0, i64 %i.dg, i1 false), !tbaa !9
  br label %.split.us

bb.an:                                            ; preds = %.split.us
  %i.dr = mul i32 %i.cx, %i.cg
  %i.ds = add i32 %i.dr, %i.cu
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !9  ; 4 uses
  %i.dw = xor i1 %.0236.lcssa402.a, true
  %spec.select = or i1 %.0239.lcssa401, %i.dw
  br i1 %spec.select, label %bb.ar, label %._crit_edge368.thread

.split.us:                                        ; preds = %bb.aq, %bb.am, %.preheader.split.us.preheader
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1 ; 2 uses
  %exitcond382 = icmp eq i64 %indvars.iv.next378, %wide.trip.count381
  br i1 %exitcond382, label %bb.an, label %.preheader, !llvm.loop !119

.preheader.split.peel.next:                       ; preds = %bb.am, %bb.aq
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.aq ], [ 1, %bb.am ] ; 2 uses
  %i.dx = load i8, ptr %i.dm, align 1, !tbaa !84
  %i.dy = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.dz = add i32 %i.dy, -1                       ; 3 uses
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !84
  %i.ed = icmp eq i8 %i.dx, %i.ec
  br i1 %i.ed, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.preheader.split.peel.next
  %i.ee = add i32 %i.dz, %i.dn
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !9
  %i.ei = add i32 %i.eh, 1
  br label %bb.aq

bb.ap:                                            ; preds = %.preheader.split.peel.next
  %i.ej = add i32 %i.dn, %i.dy
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !9
  %i.en = add i32 %i.dz, %i.do
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !9
  %i.er = call i32 @llvm.umax.i32(i32 %i.em, i32 %i.eq)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sink = phi i32 [ %i.er, %bb.ap ], [ %i.ei, %bb.ao ]
  %i.es = add i32 %i.do, %i.dy
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.et
  store i32 %.sink, ptr %i.eu, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %.split.us, label %.preheader.split.peel.next, !llvm.loop !120

bb.ar:                                            ; preds = %bb.an
  %i.ev = load ptr, ptr @SDS_NOINIT, align 8, !tbaa !122
  %i.ew = zext i32 %i.dv to i64
  %i.ex = call ptr @sdsnewlen(ptr noundef %i.ev, i64 noundef %i.ew) #10 ; 3 uses
  br i1 %.0239.lcssa401, label %bb.as, label %.thread297

bb.as:                                            ; preds = %bb.ar
  call void @addReplyMapLen(ptr noundef %0, i64 noundef 2) #10
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.32) #10
  %i.ey = call ptr @addReplyDeferredLen(ptr noundef %0) #10
  br label %.thread297

.thread297:                                       ; preds = %bb.as, %bb.ar
  %.0224 = phi ptr [ %i.ey, %bb.as ], [ null, %bb.ar ] ; 4 uses
  %i.ez = icmp ne i32 %i.cg, 0
  %i.fa = icmp ne i32 %i.cu, 0
  %i.fb = and i1 %i.ez, %i.fa
  br i1 %i.fb, label %.lr.ph367, label %._crit_edge368

.lr.ph367:                                        ; preds = %.thread297
  %i.fc = icmp ne ptr %.0224, null
  %.old10.not = icmp eq ptr %.0224, null
  %i.fd = add nuw nsw i32 %.0242.lcssa400, 2
  %i.fe = zext nneg i32 %i.fd to i64
  %.not264 = icmp eq i32 %.0242.lcssa400, 0
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph367, %.thread325
  %.0205366 = phi i32 [ %i.cg, %.lr.ph367 ], [ %.2210324, %.thread325 ] ; 4 uses
  %.0208365 = phi i32 [ %i.cu, %.lr.ph367 ], [ %.2213322, %.thread325 ] ; 4 uses
  %.0211364 = phi i32 [ 0, %.lr.ph367 ], [ %.2207, %.thread325 ] ; 5 uses
  %.0214363 = phi i32 [ 0, %.lr.ph367 ], [ %.2216320, %.thread325 ] ; 5 uses
  %.0217362 = phi i32 [ 0, %.lr.ph367 ], [ %.2219318, %.thread325 ] ; 6 uses
  %.0220361 = phi i32 [ 0, %.lr.ph367 ], [ %.1228315, %.thread325 ] ; 6 uses
  %.0227360 = phi i32 [ %i.cg, %.lr.ph367 ], [ %.3223, %.thread325 ] ; 8 uses
  %.3232359 = phi i32 [ %i.dv, %.lr.ph367 ], [ %.5313, %.thread325 ] ; 3 uses
  %i.ff = add i32 %.0205366, -1                   ; 11 uses
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !84  ; 2 uses
  %i.fj = add i32 %.0208365, -1                   ; 11 uses
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !84
  %i.fn = icmp eq i8 %i.fi, %i.fm
  br i1 %i.fn, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.fo = add i32 %.3232359, -1                   ; 5 uses
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fp
  store i8 %i.fi, ptr %i.fq, align 1, !tbaa !84
  %i.fr = icmp eq i32 %.0227360, %i.cg
  br i1 %i.fr, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fs = icmp eq i32 %.0227360, %.0205366
  %i.ft = icmp eq i32 %.0217362, %.0208365
  %or.cond272 = select i1 %i.fs, i1 %i.ft, i1 false
  br i1 %or.cond272, label %bb.aw, label %.thread

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.1215 = phi i32 [ %i.ff, %bb.au ], [ %.0220361, %bb.av ] ; 2 uses
  %.1212 = phi i32 [ %i.fj, %bb.au ], [ %.0214363, %bb.av ] ; 2 uses
  %i.fu = icmp eq i32 %i.ff, 0
  %i.fv = icmp eq i32 %i.fj, 0
  %or.cond9 = or i1 %i.fu, %i.fv
  br i1 %or.cond9, label %.thread302, label %.thread325

.thread:                                          ; preds = %bb.av
  %i.fw = icmp eq i32 %.0227360, 0
  %i.fx = icmp eq i32 %.0217362, 0
  %or.cond9413 = select i1 %i.fw, i1 true, i1 %i.fx
  br i1 %or.cond9413, label %.thread302, label %.thread419

.thread419:                                       ; preds = %.thread
  %i.fy = sub i32 %.0220361, %.0227360
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at
  %i.fz = mul i32 %i.ff, %i.cx
  %i.ga = add i32 %i.fz, %.0208365
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !9
  %i.ge = mul i32 %.0205366, %i.cx
  %i.gf = add i32 %i.ge, %i.fj
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !9
  %i.gj = icmp ugt i32 %i.gd, %i.gi               ; 2 uses
  %.4 = select i1 %i.gj, i32 %.0208365, i32 %i.fj ; 2 uses
  %.1209 = select i1 %i.gj, i32 %i.ff, i32 %.0205366 ; 2 uses
  %.not262 = icmp eq i32 %.0227360, %i.cg
  br i1 %.not262, label %.thread325, label %.thread302

.thread302:                                       ; preds = %.thread, %bb.ax, %bb.aw
  %.5.ph.a = phi i32 [ %.3232359, %bb.ax ], [ %i.fo, %bb.aw ], [ %i.fo, %.thread ]
  %.1228.ph = phi i32 [ %.0227360, %bb.ax ], [ %i.ff, %bb.aw ], [ %.0227360, %.thread ] ; 2 uses
  %.2222.ph = phi i32 [ %.0220361, %bb.ax ], [ %.1215, %bb.aw ], [ %.0220361, %.thread ] ; 2 uses
  %.2219.ph = phi i32 [ %.0217362, %bb.ax ], [ %i.fj, %bb.aw ], [ %.0217362, %.thread ]
  %.2216.ph = phi i32 [ %.0214363, %bb.ax ], [ %.1212, %bb.aw ], [ %.0214363, %.thread ]
  %.2213.ph = phi i32 [ %.4, %bb.ax ], [ %i.fj, %bb.aw ], [ %i.fj, %.thread ]
  %.2210.ph = phi i32 [ %.1209, %bb.ax ], [ %i.ff, %bb.aw ], [ %i.ff, %.thread ]
  %i.gk = sub i32 %.2222.ph, %.1228.ph
  br label %bb.ay

bb.ay:                                            ; preds = %.thread419, %.thread302
  %.in = phi i32 [ %i.gk, %.thread302 ], [ %i.fy, %.thread419 ]
  %.2210323 = phi i32 [ %.2210.ph, %.thread302 ], [ %i.ff, %.thread419 ] ; 3 uses
  %.2213321 = phi i32 [ %.2213.ph, %.thread302 ], [ %i.fj, %.thread419 ] ; 3 uses
  %.2216319 = phi i32 [ %.2216.ph, %.thread302 ], [ %.0214363, %.thread419 ] ; 4 uses
  %.2219317 = phi i32 [ %.2219.ph, %.thread302 ], [ %.0217362, %.thread419 ] ; 4 uses
  %.2222316 = phi i32 [ %.2222.ph, %.thread302 ], [ %.0220361, %.thread419 ] ; 4 uses
  %.1228314 = phi i32 [ %.1228.ph, %.thread302 ], [ %.0227360, %.thread419 ]
  %.5312 = phi i32 [ %.5.ph.a, %.thread302 ], [ %i.fo, %.thread419 ] ; 3 uses
  %i.gl = add i32 %.in, 1                         ; 2 uses
  %i.gm = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 0
  br i1 %i.gn, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.go = zext i32 %i.gl to i64
  %i.gp = icmp sle i64 %i.gm, %i.go
  %or.cond11 = select i1 %i.gp, i1 %i.fc, i1 false
  br i1 %or.cond11, label %bb.bb, label %.thread325

bb.ba:                                            ; preds = %bb.ay
  br i1 %.old10.not, label %.thread325, label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.fe) #10
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef 2) #10
  %i.gq = zext i32 %.1228314 to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gq) #10
  %i.gr = zext i32 %.2222316 to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gr) #10
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef 2) #10
  %i.gs = zext i32 %.2219317 to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gs) #10
  %i.gt = zext i32 %.2216319 to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gt) #10
  br i1 %.not264, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gu = zext i32 %i.gl to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gu) #10
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.gv = add i32 %.0211364, 1
  br label %.thread325

.thread325:                                       ; preds = %bb.aw, %bb.ax, %bb.az, %bb.bd, %bb.ba
  %.2210324 = phi i32 [ %.1209, %bb.ax ], [ %.2210323, %bb.ba ], [ %.2210323, %bb.bd ], [ %.2210323, %bb.az ], [ %i.ff, %bb.aw ] ; 2 uses
  %.2213322 = phi i32 [ %.4, %bb.ax ], [ %.2213321, %bb.ba ], [ %.2213321, %bb.bd ], [ %.2213321, %bb.az ], [ %i.fj, %bb.aw ] ; 2 uses
  %.2216320 = phi i32 [ %.0214363, %bb.ax ], [ %.2216319, %bb.ba ], [ %.2216319, %bb.bd ], [ %.2216319, %bb.az ], [ %.1212, %bb.aw ]
  %.2219318 = phi i32 [ %.0217362, %bb.ax ], [ %.2219317, %bb.ba ], [ %.2219317, %bb.bd ], [ %.2219317, %bb.az ], [ %i.fj, %bb.aw ]
  %.1228315 = phi i32 [ %.0220361, %bb.ax ], [ %.2222316, %bb.ba ], [ %.2222316, %bb.bd ], [ %.2222316, %bb.az ], [ %.1215, %bb.aw ]
  %.5313 = phi i32 [ %.3232359, %bb.ax ], [ %.5312, %bb.ba ], [ %.5312, %bb.bd ], [ %.5312, %bb.az ], [ %i.fo, %bb.aw ]
  %.3223 = phi i32 [ %i.cg, %bb.ax ], [ %i.cg, %bb.ba ], [ %i.cg, %bb.bd ], [ %i.cg, %bb.az ], [ %i.ff, %bb.aw ]
  %.2207 = phi i32 [ %.0211364, %bb.ax ], [ %.0211364, %bb.ba ], [ %i.gv, %bb.bd ], [ %.0211364, %bb.az ], [ %.0211364, %bb.aw ] ; 2 uses
  %i.gw = icmp ne i32 %.2210324, 0
  %i.gx = icmp ne i32 %.2213322, 0
  %i.gy = select i1 %i.gw, i1 %i.gx, i1 false
  br i1 %i.gy, label %bb.at, label %._crit_edge368.loopexit, !llvm.loop !123

._crit_edge368.loopexit:                          ; preds = %.thread325
  %i.gz = zext i32 %.2207 to i64
  br label %._crit_edge368

._crit_edge368:                                   ; preds = %._crit_edge368.loopexit, %.thread297
  %.0205.lcssa = phi i64 [ 0, %.thread297 ], [ %i.gz, %._crit_edge368.loopexit ]
  %.not261 = icmp eq ptr %.0224, null
  br i1 %.not261, label %._crit_edge368.thread, label %bb.be

bb.be:                                            ; preds = %._crit_edge368
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.33) #10
  %i.ha = zext i32 %i.dv to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.ha) #10
  call void @setDeferredArrayLen(ptr noundef %0, ptr noundef nonnull %.0224, i64 noundef %.0205.lcssa) #10
  br label %bb.bh

._crit_edge368.thread:                            ; preds = %bb.an, %._crit_edge368
  %.0225299406429 = phi ptr [ %i.ex, %._crit_edge368 ], [ null, %bb.an ] ; 2 uses
  br i1 %.0236.lcssa402.a, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %._crit_edge368.thread
  %i.hb = zext i32 %i.dv to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.hb) #10
  br label %bb.bh

bb.bg:                                            ; preds = %._crit_edge368.thread
  call void @addReplyBulkSds(ptr noundef %0, ptr noundef %.0225299406429) #10
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg, %bb.be
  %.1226 = phi ptr [ %i.ex, %bb.be ], [ %.0225299406429, %bb.bf ], [ null, %bb.bg ]
  call void @sdsfree(ptr noundef %.1226) #10
  call void @zfree(ptr noundef nonnull %i.df) #10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.r, %bb.bh, %.thread294, %bb.ak, %bb.y, %bb.t
  %.not270 = icmp eq ptr %i.t, null
  br i1 %.not270, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.loopexit
  call void @decrRefCount(ptr noundef nonnull %i.t) #10
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.loopexit
  %.not271 = icmp eq ptr %i.w, null
  br i1 %.not271, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @decrRefCount(ptr noundef nonnull %i.w) #10
  br label %bb.bl

bb.bl:                                            ; preds = %.thread340, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare ptr @createStringObject(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @ztrymalloc(i64 noundef) local_unnamed_addr #4

declare void @addReplyMapLen(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @addReplyBulkCString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @addReplyDeferredLen(ptr noundef) local_unnamed_addr #2

declare void @setDeferredArrayLen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @addReplyBulkSds(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @zfree(ptr noundef) local_unnamed_addr #2

declare void @addReplyErrorFormat(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @XXH3_64bits(ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @sdsempty() local_unnamed_addr #2

declare ptr @sdscatprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @digestCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !41
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 64), i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = tail call ptr @lookupKeyReadOrReply(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.i) #10 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i32 noundef 0) #10
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @stringDigest(ptr noundef nonnull %i.j)
  tail call void @addReplyBulkSds(ptr noundef nonnull %0, ptr noundef %i.m) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

declare void @addReplyErrorExpireTime(ptr noundef) local_unnamed_addr #2

declare i64 @commandTimeSnapshot() local_unnamed_addr #2

declare i32 @mustObeyClient(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !14, i64 0}
!14 = !{!"long long", !11, i64 0}
!15 = !{!16, !23, i64 96}
!16 = !{!"client", !17, i64 0, !17, i64 8, !18, i64 16, !11, i64 24, !11, i64 25, !11, i64 26, !11, i64 27, !10, i64 28, !20, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !22, i64 64, !17, i64 72, !17, i64 80, !10, i64 88, !23, i64 96, !10, i64 104, !10, i64 108, !23, i64 112, !17, i64 120, !25, i64 128, !26, i64 152, !27, i64 160, !10, i64 168, !23, i64 176, !10, i64 184, !10, i64 188, !28, i64 192, !28, i64 200, !28, i64 208, !28, i64 216, !19, i64 224, !10, i64 232, !10, i64 236, !17, i64 240, !29, i64 248, !14, i64 256, !29, i64 264, !17, i64 272, !17, i64 280, !17, i64 288, !10, i64 296, !10, i64 300, !30, i64 304, !17, i64 312, !17, i64 320, !17, i64 328, !14, i64 336, !14, i64 344, !10, i64 352, !10, i64 356, !10, i64 360, !10, i64 364, !17, i64 368, !17, i64 376, !22, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !14, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !11, i64 480, !10, i64 524, !22, i64 528, !10, i64 536, !10, i64 540, !17, i64 544, !31, i64 552, !33, i64 592, !14, i64 664, !29, i64 672, !34, i64 680, !34, i64 688, !34, i64 696, !22, i64 704, !22, i64 712, !35, i64 720, !35, i64 728, !35, i64 736, !19, i64 744, !19, i64 752, !19, i64 760, !19, i64 768, !19, i64 776, !17, i64 784, !36, i64 792, !17, i64 800, !10, i64 808, !35, i64 816, !19, i64 824, !35, i64 832, !17, i64 840, !35, i64 848, !17, i64 856, !35, i64 864, !17, i64 872, !37, i64 880, !37, i64 904, !17, i64 928, !17, i64 936, !17, i64 944, !14, i64 952, !17, i64 960, !17, i64 968, !22, i64 976, !11, i64 984, !38, i64 992, !14, i64 1000, !14, i64 1008, !14, i64 1016, !39, i64 1024, !22, i64 1032, !11, i64 1040}
!17 = !{!"long", !11, i64 0}
!18 = !{!"p1 _ZTS10connection", !19, i64 0}
!19 = !{!"any pointer", !11, i64 0}
!20 = !{!"p1 _ZTS7redisDb", !19, i64 0}
!21 = !{!"p1 _ZTS11redisObject", !19, i64 0}
!22 = !{!"p1 omnipotent char", !19, i64 0}
!23 = !{!"p2 _ZTS11redisObject", !24, i64 0}
!24 = !{!"any p2 pointer", !19, i64 0}
!25 = !{!"pendingCommandList", !26, i64 0, !26, i64 8, !10, i64 16, !10, i64 20}
!26 = !{!"p1 _ZTS14pendingCommand", !19, i64 0}
!27 = !{!"p1 _ZTS14deferredObject", !19, i64 0}
!28 = !{!"p1 _ZTS12redisCommand", !19, i64 0}
!29 = !{!"p1 _ZTS4list", !19, i64 0}
!30 = !{!"p1 _ZTS9dictEntry", !19, i64 0}
!31 = !{!"multiState", !32, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !17, i64 24, !10, i64 32}
!32 = !{!"p2 _ZTS14pendingCommand", !24, i64 0}
!33 = !{!"blockingState", !10, i64 0, !14, i64 8, !10, i64 16, !34, i64 24, !10, i64 32, !10, i64 36, !14, i64 40, !19, i64 48, !19, i64 56, !17, i64 64}
!34 = !{!"p1 _ZTS4dict", !19, i64 0}
!35 = !{!"p1 _ZTS8listNode", !19, i64 0}
!36 = !{!"p1 _ZTS3rax", !19, i64 0}
!37 = !{!"listNode", !35, i64 0, !35, i64 8, !19, i64 16}
!38 = !{!"p1 _ZTS13payloadHeader", !19, i64 0}
!39 = !{!"p1 _ZTS7asmTask", !19, i64 0}
!40 = !{!21, !21, i64 0}
!41 = !{!16, !10, i64 28}
!42 = !{!43, !43, i64 0}
!43 = !{!"p2 _ZTS9dictEntry", !24, i64 0}
!44 = !{!16, !20, i64 32}
!45 = !{!46, !19, i64 8}
!46 = !{!"redisObject", !10, i64 0, !10, i64 0, !10, i64 1, !10, i64 3, !10, i64 4, !10, i64 5, !19, i64 8}
!47 = !{!48, !14, i64 6888}
!48 = !{!"redisServer", !10, i64 0, !17, i64 8, !22, i64 16, !22, i64 24, !49, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !20, i64 64, !34, i64 72, !34, i64 80, !50, i64 88, !36, i64 96, !10, i64 104, !10, i64 108, !11, i64 112, !11, i64 116, !14, i64 120, !11, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !22, i64 144, !10, i64 152, !10, i64 156, !11, i64 160, !10, i64 204, !17, i64 208, !10, i64 216, !10, i64 220, !10, i64 224, !22, i64 232, !22, i64 240, !10, i64 248, !10, i64 252, !17, i64 256, !11, i64 264, !34, i64 272, !34, i64 280, !34, i64 288, !29, i64 296, !11, i64 304, !10, i64 312, !10, i64 316, !11, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !11, i64 336, !10, i64 464, !22, i64 472, !22, i64 480, !10, i64 488, !11, i64 496, !10, i64 1328, !51, i64 1336, !29, i64 1440, !29, i64 1448, !29, i64 1456, !29, i64 1464, !29, i64 1472, !29, i64 1480, !29, i64 1488, !53, i64 1496, !53, i64 1504, !19, i64 1512, !36, i64 1520, !10, i64 1528, !36, i64 1536, !10, i64 1544, !29, i64 1552, !11, i64 1560, !11, i64 1624, !34, i64 1880, !11, i64 1888, !10, i64 1896, !10, i64 1900, !11, i64 1904, !10, i64 2416, !10, i64 2420, !54, i64 2424, !10, i64 2448, !14, i64 2456, !10, i64 2464, !10, i64 2468, !10, i64 2472, !10, i64 2476, !10, i64 2480, !17, i64 2488, !17, i64 2496, !17, i64 2504, !17, i64 2512, !17, i64 2520, !17, i64 2528, !14, i64 2536, !14, i64 2544, !14, i64 2552, !14, i64 2560, !14, i64 2568, !14, i64 2576, !55, i64 2584, !14, i64 2592, !14, i64 2600, !14, i64 2608, !14, i64 2616, !14, i64 2624, !14, i64 2632, !17, i64 2640, !14, i64 2648, !14, i64 2656, !14, i64 2664, !14, i64 2672, !14, i64 2680, !14, i64 2688, !14, i64 2696, !14, i64 2704, !17, i64 2712, !17, i64 2720, !17, i64 2728, !14, i64 2736, !14, i64 2744, !14, i64 2752, !14, i64 2760, !14, i64 2768, !55, i64 2776, !14, i64 2784, !14, i64 2792, !14, i64 2800, !14, i64 2808, !14, i64 2816, !29, i64 2824, !14, i64 2832, !14, i64 2840, !17, i64 2848, !56, i64 2856, !11, i64 2944, !11, i64 2952, !11, i64 2960, !11, i64 2968, !17, i64 2976, !17, i64 2984, !17, i64 2992, !17, i64 3000, !17, i64 3008, !17, i64 3016, !17, i64 3024, !17, i64 3032, !55, i64 3040, !11, i64 3048, !17, i64 3080, !14, i64 3088, !14, i64 3096, !14, i64 3104, !11, i64 3112, !11, i64 4136, !11, i64 5160, !14, i64 5168, !14, i64 5176, !14, i64 5184, !14, i64 5192, !11, i64 5200, !14, i64 6264, !14, i64 6272, !17, i64 6280, !14, i64 6288, !14, i64 6296, !17, i64 6304, !11, i64 6312, !57, i64 6408, !10, i64 6416, !10, i64 6420, !10, i64 6424, !10, i64 6428, !10, i64 6432, !10, i64 6436, !10, i64 6440, !10, i64 6444, !10, i64 6448, !10, i64 6452, !10, i64 6456, !10, i64 6460, !10, i64 6464, !17, i64 6472, !10, i64 6480, !10, i64 6484, !10, i64 6488, !10, i64 6492, !17, i64 6496, !17, i64 6504, !10, i64 6512, !10, i64 6516, !10, i64 6520, !10, i64 6524, !10, i64 6528, !10, i64 6532, !22, i64 6536, !11, i64 6544, !10, i64 6616, !10, i64 6620, !10, i64 6624, !58, i64 6632, !10, i64 6640, !10, i64 6644, !10, i64 6648, !10, i64 6652, !10, i64 6656, !10, i64 6660, !10, i64 6664, !10, i64 6668, !10, i64 6672, !22, i64 6680, !22, i64 6688, !10, i64 6696, !10, i64 6700, !17, i64 6704, !17, i64 6712, !17, i64 6720, !17, i64 6728, !17, i64 6736, !10, i64 6744, !10, i64 6748, !22, i64 6752, !10, i64 6760, !10, i64 6764, !14, i64 6768, !14, i64 6776, !17, i64 6784, !17, i64 6792, !17, i64 6800, !10, i64 6808, !10, i64 6812, !17, i64 6816, !10, i64 6824, !10, i64 6828, !10, i64 6832, !10, i64 6836, !10, i64 6840, !17, i64 6848, !10, i64 6856, !11, i64 6860, !11, i64 6864, !19, i64 6872, !10, i64 6880, !14, i64 6888, !14, i64 6896, !14, i64 6904, !14, i64 6912, !10, i64 6920, !59, i64 6928, !10, i64 6936, !22, i64 6944, !10, i64 6952, !10, i64 6956, !10, i64 6960, !17, i64 6968, !17, i64 6976, !17, i64 6984, !17, i64 6992, !10, i64 7000, !10, i64 7004, !10, i64 7008, !10, i64 7012, !10, i64 7016, !10, i64 7020, !60, i64 7024, !10, i64 7032, !10, i64 7036, !22, i64 7040, !10, i64 7048, !10, i64 7052, !10, i64 7056, !11, i64 7060, !10, i64 7068, !61, i64 7072, !10, i64 7088, !22, i64 7096, !10, i64 7104, !22, i64 7112, !10, i64 7120, !10, i64 7124, !10, i64 7128, !10, i64 7132, !10, i64 7136, !10, i64 7140, !10, i64 7144, !11, i64 7148, !11, i64 7189, !14, i64 7232, !14, i64 7240, !11, i64 7248, !14, i64 7256, !10, i64 7264, !10, i64 7268, !63, i64 7272, !14, i64 7280, !14, i64 7288, !64, i64 7296, !17, i64 7344, !17, i64 7352, !10, i64 7360, !10, i64 7364, !10, i64 7368, !10, i64 7372, !10, i64 7376, !10, i64 7380, !10, i64 7384, !10, i64 7388, !10, i64 7392, !17, i64 7400, !29, i64 7408, !17, i64 7416, !22, i64 7424, !22, i64 7432, !22, i64 7440, !10, i64 7448, !10, i64 7452, !53, i64 7456, !53, i64 7464, !10, i64 7472, !10, i64 7476, !10, i64 7480, !10, i64 7484, !17, i64 7488, !17, i64 7496, !17, i64 7504, !17, i64 7512, !17, i64 7520, !18, i64 7528, !18, i64 7536, !10, i64 7544, !22, i64 7552, !17, i64 7560, !10, i64 7568, !10, i64 7572, !10, i64 7576, !17, i64 7584, !17, i64 7592, !10, i64 7600, !10, i64 7604, !10, i64 7608, !10, i64 7612, !22, i64 7616, !10, i64 7624, !10, i64 7628, !11, i64 7632, !14, i64 7680, !10, i64 7688, !29, i64 7696, !10, i64 7704, !14, i64 7712, !14, i64 7720, !17, i64 7728, !17, i64 7736, !10, i64 7744, !14, i64 7752, !17, i64 7760, !10, i64 7768, !10, i64 7772, !10, i64 7776, !10, i64 7780, !10, i64 7784, !14, i64 7792, !11, i64 7800, !10, i64 7812, !10, i64 7816, !10, i64 7820, !11, i64 7824, !29, i64 7872, !29, i64 7880, !10, i64 7888, !17, i64 7896, !29, i64 7904, !29, i64 7912, !10, i64 7920, !10, i64 7924, !10, i64 7928, !10, i64 7932, !17, i64 7936, !17, i64 7944, !17, i64 7952, !17, i64 7960, !17, i64 7968, !17, i64 7976, !17, i64 7984, !17, i64 7992, !17, i64 8000, !14, i64 8008, !14, i64 8016, !14, i64 8024, !10, i64 8032, !10, i64 8036, !11, i64 8040, !17, i64 8048, !11, i64 8056, !14, i64 8064, !14, i64 8072, !10, i64 8080, !17, i64 8088, !14, i64 8096, !17, i64 8104, !14, i64 8112, !65, i64 8120, !34, i64 8128, !10, i64 8136, !65, i64 8144, !10, i64 8152, !10, i64 8156, !10, i64 8160, !10, i64 8164, !14, i64 8168, !14, i64 8176, !22, i64 8184, !14, i64 8192, !14, i64 8200, !14, i64 8208, !10, i64 8216, !66, i64 8224, !10, i64 8232, !10, i64 8236, !10, i64 8240, !10, i64 8244, !10, i64 8248, !22, i64 8256, !22, i64 8264, !22, i64 8272, !10, i64 8280, !10, i64 8284, !10, i64 8288, !10, i64 8292, !10, i64 8296, !10, i64 8300, !10, i64 8304, !10, i64 8308, !14, i64 8312, !10, i64 8320, !10, i64 8324, !10, i64 8328, !14, i64 8336, !10, i64 8344, !10, i64 8348, !10, i64 8352, !10, i64 8356, !10, i64 8360, !10, i64 8364, !10, i64 8368, !10, i64 8372, !10, i64 8376, !14, i64 8384, !34, i64 8392, !22, i64 8400, !17, i64 8408, !22, i64 8416, !10, i64 8424, !67, i64 8432, !10, i64 8472, !17, i64 8480, !10, i64 8488, !10, i64 8492, !10, i64 8496, !68, i64 8504, !22, i64 8624, !22, i64 8632, !22, i64 8640, !22, i64 8648, !69, i64 8656, !14, i64 8664, !10, i64 8672, !22, i64 8680, !10, i64 8688, !10, i64 8692, !10, i64 8696, !17, i64 8704, !10, i64 8712, !10, i64 8716, !22, i64 8720, !10, i64 8728, !10, i64 8732}
end_hunk_0
