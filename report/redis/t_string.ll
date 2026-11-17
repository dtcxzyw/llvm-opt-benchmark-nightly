Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/t_string?download=true
inline.NumInlined: 20
inline.NumDeleted: 3
begin_hunk_0_@lcsCommand:bb.a
._crit_edge:                                      ; preds = %bb.s
  %i.bb = icmp ne i32 %.2238.ph, 0                ; 2 uses
  %i.bc = icmp ne i32 %.2241.ph, 0                ; 2 uses
  %or.cond3 = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond3, label %bb.t, label %._crit_edge.thread

bb.t:                                             ; preds = %._crit_edge
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.28) #10
  br label %.loopexit

._crit_edge.thread:                               ; preds = %bb.k, %._crit_edge
  %.0236.lcssa403 = phi i1 [ %i.bb, %._crit_edge ], [ false, %bb.k ] ; 2 uses
  %.0239.lcssa402 = phi i1 [ %i.bc, %._crit_edge ], [ false, %bb.k ] ; 2 uses
  %.0242.lcssa401 = phi i32 [ %.2244.ph, %._crit_edge ], [ 0, %bb.k ] ; 2 uses
  %i.bd = getelementptr i8, ptr %i.y, i64 -1
  %.val.i = load i8, ptr %i.bd, align 1, !tbaa !116 ; 2 uses
  %i.be = and i8 %.val.i, 7                       ; 2 uses
  switch i8 %i.be, label %sdslen.exit.thread [
    i8 4, label %bb.v
    i8 3, label %bb.u
  ]

bb.u:                                             ; preds = %._crit_edge.thread
  %i.bf = getelementptr inbounds i8, ptr %i.y, i64 -9
  %i.bg = load i32, ptr %i.bf, align 1, !tbaa !12
  %i.bh = zext i32 %i.bg to i64
  br label %sdslen.exit

bb.v:                                             ; preds = %._crit_edge.thread
  %i.bi = getelementptr inbounds i8, ptr %i.y, i64 -17
  %i.bj = load i64, ptr %i.bi, align 1, !tbaa !120
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.u, %bb.v
  %.0.i = phi i64 [ %i.bj, %bb.v ], [ %i.bh, %bb.u ]
  %i.bk = icmp ugt i64 %.0.i, 4294967293
  br i1 %i.bk, label %bb.y, label %sdslen.exit.thread

sdslen.exit.thread:                               ; preds = %._crit_edge.thread, %sdslen.exit
  %i.bl = getelementptr i8, ptr %i.aa, i64 -1
  %.val.i274 = load i8, ptr %i.bl, align 1, !tbaa !116 ; 2 uses
  %i.bm = and i8 %.val.i274, 7                    ; 2 uses
  switch i8 %i.bm, label %sdslen.exit276.thread [
    i8 4, label %bb.x
    i8 3, label %bb.w
  ]

bb.w:                                             ; preds = %sdslen.exit.thread
  %i.bn = getelementptr inbounds i8, ptr %i.aa, i64 -9
  %i.bo = load i32, ptr %i.bn, align 1, !tbaa !12
  %i.bp = zext i32 %i.bo to i64
  br label %sdslen.exit276

bb.x:                                             ; preds = %sdslen.exit.thread
  %i.bq = getelementptr inbounds i8, ptr %i.aa, i64 -17
  %i.br = load i64, ptr %i.bq, align 1, !tbaa !120
  br label %sdslen.exit276

sdslen.exit276:                                   ; preds = %bb.w, %bb.x
  %.0.i275 = phi i64 [ %i.br, %bb.x ], [ %i.bp, %bb.w ]
  %i.bs = icmp ugt i64 %.0.i275, 4294967293
  br i1 %i.bs, label %bb.y, label %sdslen.exit276.thread

bb.y:                                             ; preds = %sdslen.exit276, %sdslen.exit
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #10
  br label %.loopexit

sdslen.exit276.thread:                            ; preds = %sdslen.exit.thread, %sdslen.exit276
  switch i8 %i.be, label %sdslen.exit279 [
    i8 0, label %bb.z
    i8 1, label %bb.aa
    i8 2, label %bb.ab
    i8 3, label %bb.ac
    i8 4, label %bb.ad
  ]

bb.z:                                             ; preds = %sdslen.exit276.thread
  %i.bt = lshr i8 %.val.i, 3
  %i.bu = zext nneg i8 %i.bt to i64
  br label %sdslen.exit279

bb.aa:                                            ; preds = %sdslen.exit276.thread
  %i.bv = getelementptr inbounds i8, ptr %i.y, i64 -3
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !116
  %i.bx = zext i8 %i.bw to i64
  br label %sdslen.exit279

bb.ab:                                            ; preds = %sdslen.exit276.thread
  %i.by = getelementptr inbounds i8, ptr %i.y, i64 -5
  %i.bz = load i16, ptr %i.by, align 1, !tbaa !119
  %i.ca = zext i16 %i.bz to i64
  br label %sdslen.exit279

bb.ac:                                            ; preds = %sdslen.exit276.thread
  %i.cb = getelementptr inbounds i8, ptr %i.y, i64 -9
  %i.cc = load i32, ptr %i.cb, align 1, !tbaa !12
  %i.cd = zext i32 %i.cc to i64
  br label %sdslen.exit279

bb.ad:                                            ; preds = %sdslen.exit276.thread
  %i.ce = getelementptr inbounds i8, ptr %i.y, i64 -17
  %i.cf = load i64, ptr %i.ce, align 1, !tbaa !120
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
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !116
  %i.cl = zext i8 %i.ck to i64
  br label %sdslen.exit282

bb.ag:                                            ; preds = %sdslen.exit279
  %i.cm = getelementptr inbounds i8, ptr %i.aa, i64 -5
  %i.cn = load i16, ptr %i.cm, align 1, !tbaa !119
  %i.co = zext i16 %i.cn to i64
  br label %sdslen.exit282

bb.ah:                                            ; preds = %sdslen.exit279
  %i.cp = getelementptr inbounds i8, ptr %i.aa, i64 -9
  %i.cq = load i32, ptr %i.cp, align 1, !tbaa !12
  %i.cr = zext i32 %i.cq to i64
  br label %sdslen.exit282

bb.ai:                                            ; preds = %sdslen.exit279
  %i.cs = getelementptr inbounds i8, ptr %i.aa, i64 -17
  %i.ct = load i64, ptr %i.cs, align 1, !tbaa !120
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
  %i.dd = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7792), align 8, !tbaa !130
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
  store i32 0, ptr %i.dq, align 4, !tbaa !12
  br i1 %exitcond.peel, label %.split.us, label %.preheader.split.peel.next

.preheader.split.peel.next:                       ; preds = %bb.am
  %1 = load i8, ptr %i.dm, align 1, !tbaa !116
  br label %.preheader.split.peel.next.a

.preheader.split.us.preheader:                    ; preds = %.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.df, i8 0, i64 %i.dg, i1 false), !tbaa !12
  br label %.split.us

bb.an:                                            ; preds = %.split.us
  %i.dr = mul i32 %i.cx, %i.cg
  %i.ds = add i32 %i.dr, %i.cu
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !12 ; 4 uses
  %i.dw = xor i1 %.0236.lcssa403, true
  %spec.select = or i1 %.0239.lcssa402, %i.dw
  br i1 %spec.select, label %bb.ar, label %._crit_edge368.thread

.split.us:                                        ; preds = %bb.aq, %bb.am, %.preheader.split.us.preheader
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1 ; 2 uses
  %exitcond382 = icmp eq i64 %indvars.iv.next378, %wide.trip.count381
  br i1 %exitcond382, label %bb.an, label %.preheader, !llvm.loop !187

.preheader.split.peel.next.a:                     ; preds = %bb.aq, %.preheader.split.peel.next
  %indvars.iv = phi i64 [ 1, %.preheader.split.peel.next ], [ %indvars.iv.next, %bb.aq ] ; 2 uses
  %i.dx = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.dy = add i32 %i.dx, -1                       ; 3 uses
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !116
  %i.ec = icmp eq i8 %1, %i.eb
  br i1 %i.ec, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.preheader.split.peel.next.a
  %i.ed = add i32 %i.dy, %i.dn
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !12
  %i.eh = add i32 %i.eg, 1
  br label %bb.aq

bb.ap:                                            ; preds = %.preheader.split.peel.next.a
  %i.ei = add i32 %i.dn, %i.dx
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !12
  %i.em = add i32 %i.dy, %i.do
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !12
  %i.eq = call i32 @llvm.umax.i32(i32 %i.el, i32 %i.ep)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sink = phi i32 [ %i.eq, %bb.ap ], [ %i.eh, %bb.ao ]
  %i.er = add i32 %i.do, %i.dx
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.es
  store i32 %.sink, ptr %i.et, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %.split.us, label %.preheader.split.peel.next.a, !llvm.loop !188

bb.ar:                                            ; preds = %bb.an
  %i.eu = load ptr, ptr @SDS_NOINIT, align 8, !tbaa !192
  %i.ev = zext i32 %i.dv to i64
  %i.ew = call ptr @sdsnewlen(ptr noundef %i.eu, i64 noundef %i.ev) #10 ; 3 uses
  br i1 %.0239.lcssa402, label %bb.as, label %.thread297

bb.as:                                            ; preds = %bb.ar
  call void @addReplyMapLen(ptr noundef %0, i64 noundef 2) #10
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.32) #10
  %i.ex = call ptr @addReplyDeferredLen(ptr noundef %0) #10
  br label %.thread297

.thread297:                                       ; preds = %bb.as, %bb.ar
  %.0224 = phi ptr [ %i.ex, %bb.as ], [ null, %bb.ar ] ; 3 uses
  %i.ey = icmp ne i32 %i.cg, 0
  %i.ez = icmp ne i32 %i.cu, 0
  %i.fa = and i1 %i.ey, %i.ez
  br i1 %i.fa, label %.lr.ph367, label %._crit_edge368

.lr.ph367:                                        ; preds = %.thread297
  %i.fb = icmp ne ptr %.0224, null                ; 2 uses
  %i.fc = add nuw nsw i32 %.0242.lcssa401, 2
  %i.fd = zext nneg i32 %i.fc to i64
  %.not264 = icmp eq i32 %.0242.lcssa401, 0
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph367, %.thread325
  %.0205366 = phi i32 [ 0, %.lr.ph367 ], [ %.2207, %.thread325 ] ; 5 uses
  %.0208365 = phi i32 [ %i.cg, %.lr.ph367 ], [ %.2210324, %.thread325 ] ; 4 uses
  %.0211364 = phi i32 [ 0, %.lr.ph367 ], [ %.2213322, %.thread325 ] ; 5 uses
  %.0214363 = phi i32 [ 0, %.lr.ph367 ], [ %.2216320, %.thread325 ] ; 7 uses
  %.0217362 = phi i32 [ 0, %.lr.ph367 ], [ %.2219318, %.thread325 ] ; 6 uses
  %.0220361 = phi i32 [ %i.cg, %.lr.ph367 ], [ %.3223, %.thread325 ] ; 8 uses
  %.0227360 = phi i32 [ %i.dv, %.lr.ph367 ], [ %.1228315, %.thread325 ] ; 3 uses
  %.3232359 = phi i32 [ %i.cu, %.lr.ph367 ], [ %.5313, %.thread325 ] ; 4 uses
  %i.fe = add i32 %.0208365, -1                   ; 11 uses
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !116 ; 2 uses
  %i.fi = add i32 %.3232359, -1                   ; 9 uses
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !116
  %i.fm = icmp eq i8 %i.fh, %i.fl
  br i1 %i.fm, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.fn = add i32 %.0227360, -1                   ; 5 uses
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fo
  store i8 %i.fh, ptr %i.fp, align 1, !tbaa !116
  %i.fq = icmp eq i32 %.0220361, %i.cg
  br i1 %i.fq, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fr = icmp eq i32 %.0220361, %.0208365
  %i.fs = icmp eq i32 %.0214363, %.3232359
  %or.cond272 = select i1 %i.fr, i1 %i.fs, i1 false
  br i1 %or.cond272, label %bb.aw, label %.thread

bb.aw:                                            ; preds = %bb.av
  %i.ft = add i32 %.0214363, -1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.au, %bb.aw
  %.1218 = phi i32 [ %i.fe, %bb.au ], [ %.0217362, %bb.aw ] ; 2 uses
  %.1215 = phi i32 [ %i.fi, %bb.au ], [ %i.ft, %bb.aw ] ; 3 uses
  %.1212 = phi i32 [ %i.fi, %bb.au ], [ %.0211364, %bb.aw ] ; 2 uses
  %i.fu = icmp eq i32 %i.fe, 0
  %i.fv = icmp eq i32 %.1215, 0
  %or.cond9 = select i1 %i.fu, i1 true, i1 %i.fv
  br i1 %or.cond9, label %.thread302, label %.thread325

.thread:                                          ; preds = %bb.av
  %i.fw = icmp eq i32 %.0220361, 0
  %i.fx = icmp eq i32 %.0214363, 0
  %or.cond9414 = select i1 %i.fw, i1 true, i1 %i.fx
  br i1 %or.cond9414, label %.thread302, label %.thread420

.thread420:                                       ; preds = %.thread
  %i.fy = sub i32 %.0217362, %.0220361
  br label %bb.az

bb.ay:                                            ; preds = %bb.at
  %i.fz = mul i32 %i.fe, %i.cx
  %i.ga = add i32 %i.fz, %.3232359
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !12
  %i.ge = mul i32 %.0208365, %i.cx
  %i.gf = add i32 %i.ge, %i.fi
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !12
  %i.gj = icmp ugt i32 %i.gd, %i.gi               ; 2 uses
  %.4 = select i1 %i.gj, i32 %.3232359, i32 %i.fi ; 2 uses
  %.1209 = select i1 %i.gj, i32 %i.fe, i32 %.0208365 ; 2 uses
  %.not262 = icmp eq i32 %.0220361, %i.cg
  br i1 %.not262, label %.thread325, label %.thread302

.thread302:                                       ; preds = %.thread, %bb.ay, %bb.ax
  %.5.ph = phi i32 [ %.4, %bb.ay ], [ %i.fi, %bb.ax ], [ %i.fi, %.thread ]
  %.1228.ph = phi i32 [ %.0227360, %bb.ay ], [ %i.fn, %bb.ax ], [ %i.fn, %.thread ]
  %.2222.ph = phi i32 [ %.0220361, %bb.ay ], [ %i.fe, %bb.ax ], [ %.0220361, %.thread ] ; 2 uses
  %.2219.ph = phi i32 [ %.0217362, %bb.ay ], [ %.1218, %bb.ax ], [ %.0217362, %.thread ] ; 2 uses
  %.2216.ph = phi i32 [ %.0214363, %bb.ay ], [ %.1215, %bb.ax ], [ %.0214363, %.thread ]
  %.2213.ph = phi i32 [ %.0211364, %bb.ay ], [ %.1212, %bb.ax ], [ %.0211364, %.thread ]
  %.2210.ph = phi i32 [ %.1209, %bb.ay ], [ %i.fe, %bb.ax ], [ %i.fe, %.thread ]
  %i.gk = sub i32 %.2219.ph, %.2222.ph
  br label %bb.az

bb.az:                                            ; preds = %.thread420, %.thread302
  %.in = phi i32 [ %i.gk, %.thread302 ], [ %i.fy, %.thread420 ]
  %.2210323 = phi i32 [ %.2210.ph, %.thread302 ], [ %i.fe, %.thread420 ] ; 3 uses
  %.2213321 = phi i32 [ %.2213.ph, %.thread302 ], [ %.0211364, %.thread420 ] ; 4 uses
  %.2216319 = phi i32 [ %.2216.ph, %.thread302 ], [ %.0214363, %.thread420 ] ; 4 uses
  %.2219317 = phi i32 [ %.2219.ph, %.thread302 ], [ %.0217362, %.thread420 ] ; 4 uses
  %.2222316 = phi i32 [ %.2222.ph, %.thread302 ], [ %.0220361, %.thread420 ]
  %.1228314 = phi i32 [ %.1228.ph, %.thread302 ], [ %i.fn, %.thread420 ] ; 3 uses
  %.5312 = phi i32 [ %.5.ph, %.thread302 ], [ %i.fi, %.thread420 ] ; 3 uses
  %i.gl = add i32 %.in, 1                         ; 2 uses
  %i.gm = load i64, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 0
  br i1 %i.gn, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.go = zext i32 %i.gl to i64
  %i.gp = icmp sle i64 %i.gm, %i.go
  %or.cond11 = select i1 %i.gp, i1 %i.fb, i1 false
  br i1 %or.cond11, label %bb.bc, label %.thread325

bb.bb:                                            ; preds = %bb.az
  br i1 %i.fb, label %bb.bc, label %.thread325

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.fd) #10
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef 2) #10
  %i.gq = zext i32 %.2222316 to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gq) #10
  %i.gr = zext i32 %.2219317 to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gr) #10
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef 2) #10
  %i.gs = zext i32 %.2216319 to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gs) #10
  %i.gt = zext i32 %.2213321 to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gt) #10
  br i1 %.not264, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gu = zext i32 %i.gl to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gu) #10
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.gv = add i32 %.0205366, 1
  br label %.thread325

.thread325:                                       ; preds = %bb.ax, %bb.ay, %bb.ba, %bb.be, %bb.bb
  %.2210324 = phi i32 [ %.1209, %bb.ay ], [ %.2210323, %bb.bb ], [ %.2210323, %bb.be ], [ %.2210323, %bb.ba ], [ %i.fe, %bb.ax ] ; 2 uses
  %.2213322 = phi i32 [ %.0211364, %bb.ay ], [ %.2213321, %bb.bb ], [ %.2213321, %bb.be ], [ %.2213321, %bb.ba ], [ %.1212, %bb.ax ]
  %.2216320 = phi i32 [ %.0214363, %bb.ay ], [ %.2216319, %bb.bb ], [ %.2216319, %bb.be ], [ %.2216319, %bb.ba ], [ %.1215, %bb.ax ]
  %.2219318 = phi i32 [ %.0217362, %bb.ay ], [ %.2219317, %bb.bb ], [ %.2219317, %bb.be ], [ %.2219317, %bb.ba ], [ %.1218, %bb.ax ]
end_hunk_0
