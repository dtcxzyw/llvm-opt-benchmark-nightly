inline.NumInlined: 24
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 22
begin_hunk_0_@bitopCommand:bb.a
  %i.be = load i32, ptr %i.bd, align 1, !tbaa !9
  %i.bf = zext i32 %i.be to i64
  br label %sdslen.exit.peel

bb.z:                                             ; preds = %bb.w
  %i.bg = getelementptr inbounds i8, ptr %i.ay, i64 -5
  %i.bh = load i16, ptr %i.bg, align 1, !tbaa !53
  %i.bi = zext i16 %i.bh to i64
  br label %sdslen.exit.peel

bb.aa:                                            ; preds = %bb.w
  %i.bj = getelementptr inbounds i8, ptr %i.ay, i64 -3
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !13
  %i.bl = zext i8 %i.bk to i64
  br label %sdslen.exit.peel

bb.ab:                                            ; preds = %bb.w
  %i.bm = lshr i8 %.val.i.peel, 3
  %i.bn = zext nneg i8 %i.bm to i64
  br label %sdslen.exit.peel

bb.ac:                                            ; preds = %.lr.ph
  store ptr null, ptr %i.an, align 8, !tbaa !104
  store ptr null, ptr %i.al, align 8, !tbaa !113
  br label %sdslen.exit.peel

sdslen.exit.peel:                                 ; preds = %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.2471.ph.peel = phi i64 [ 0, %bb.ac ], [ %i.bc, %bb.x ], [ %i.bn, %bb.ab ], [ %i.bl, %bb.aa ], [ %i.bi, %bb.z ], [ %i.bf, %bb.y ], [ 0, %bb.w ] ; 5 uses
  store i64 %.2471.ph.peel, ptr %i.am, align 8, !tbaa !20
  %exitcond.peel.not = icmp eq i32 %i.ai, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %sdslen.exit.peel, %bb.an
  %.0452597 = phi i64 [ %i.cy, %bb.an ], [ 1, %sdslen.exit.peel ] ; 9 uses
  %.0466596 = phi i64 [ %.2468.ph, %bb.an ], [ %.2471.ph.peel, %sdslen.exit.peel ] ; 2 uses
  %.0469595 = phi i64 [ %.2471.ph, %bb.an ], [ %.2471.ph.peel, %sdslen.exit.peel ]
  %i.bo = load ptr, ptr %i.ao, align 8, !tbaa !105
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !89
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %.0452597
  %i.br = getelementptr i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !104
  %i.bt = tail call ptr @lookupKeyRead(ptr noundef %i.bo, ptr noundef %i.bs) #23 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.peel.next
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0452597
  store ptr null, ptr %i.bv, align 8, !tbaa !104
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0452597
  store ptr null, ptr %i.bw, align 8, !tbaa !113
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.0452597
  store i64 0, ptr %i.bx, align 8, !tbaa !20
  br label %bb.an

bb.ae:                                            ; preds = %.peel.next
  %i.by = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.bt, i32 noundef 0) #23
  %.not512 = icmp eq i32 %i.by, 0
  br i1 %.not512, label %bb.ah, label %.lr.ph709

.lr.ph709:                                        ; preds = %bb.ae, %bb.ag
  %.0465708 = phi i64 [ %i.cb, %bb.ag ], [ 0, %bb.ae ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0465708
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !104 ; 2 uses
  %.not513 = icmp eq ptr %i.ca, null
  br i1 %.not513, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph709
  tail call void @decrRefCount(ptr noundef nonnull %i.ca) #23
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph709, %bb.af
  %i.cb = add nuw i64 %.0465708, 1                ; 2 uses
  %exitcond745.not = icmp eq i64 %i.cb, %.0452597
  br i1 %exitcond745.not, label %._crit_edge710, label %.lr.ph709, !llvm.loop !135

bb.ah:                                            ; preds = %bb.ae
  %i.cc = tail call ptr @getDecodedObject(ptr noundef nonnull %i.bt) #23 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0452597
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !104
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !50 ; 6 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0452597
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !113
  %i.ch = getelementptr i8, ptr %i.cf, i64 -1
  %.val.i = load i8, ptr %i.ch, align 1, !tbaa !13 ; 2 uses
  %i.ci = and i8 %.val.i, 7
  switch i8 %i.ci, label %sdslen.exit [
    i8 0, label %bb.ai
    i8 1, label %bb.aj
    i8 2, label %bb.ak
    i8 3, label %bb.al
    i8 4, label %bb.am
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.cj = lshr i8 %.val.i, 3
  %i.ck = zext nneg i8 %i.cj to i64
  br label %sdslen.exit

bb.aj:                                            ; preds = %bb.ah
  %i.cl = getelementptr inbounds i8, ptr %i.cf, i64 -3
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !13
  %i.cn = zext i8 %i.cm to i64
  br label %sdslen.exit

bb.ak:                                            ; preds = %bb.ah
  %i.co = getelementptr inbounds i8, ptr %i.cf, i64 -5
  %i.cp = load i16, ptr %i.co, align 1, !tbaa !53
  %i.cq = zext i16 %i.cp to i64
  br label %sdslen.exit

bb.al:                                            ; preds = %bb.ah
  %i.cr = getelementptr inbounds i8, ptr %i.cf, i64 -9
  %i.cs = load i32, ptr %i.cr, align 1, !tbaa !9
  %i.ct = zext i32 %i.cs to i64
  br label %sdslen.exit

bb.am:                                            ; preds = %bb.ah
  %i.cu = getelementptr inbounds i8, ptr %i.cf, i64 -17
  %i.cv = load i64, ptr %i.cu, align 1, !tbaa !20
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am
  %.0.i = phi i64 [ %i.cv, %bb.am ], [ %i.ck, %bb.ai ], [ %i.cn, %bb.aj ], [ %i.cq, %bb.ak ], [ %i.ct, %bb.al ], [ 0, %bb.ah ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.0452597
  store i64 %.0.i, ptr %i.cw, align 8, !tbaa !20
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.0.i, i64 %.0466596)
  %i.cx = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %.0469595)
  br label %bb.an

._crit_edge710:                                   ; preds = %bb.ag, %bb.v
  tail call void @zfree(ptr noundef %i.al) #23
  tail call void @zfree(ptr noundef %i.am) #23
  tail call void @zfree(ptr noundef %i.an) #23
  br label %bb.bw

bb.an:                                            ; preds = %sdslen.exit, %bb.ad
  %.2471.ph = phi i64 [ %i.cx, %sdslen.exit ], [ 0, %bb.ad ] ; 2 uses
  %.2468.ph = phi i64 [ %spec.select, %sdslen.exit ], [ %.0466596, %bb.ad ] ; 2 uses
  %i.cy = add nuw i64 %.0452597, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cy, %i.aj
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !136

._crit_edge:                                      ; preds = %bb.an, %sdslen.exit.peel
  %.0469.lcssa = phi i64 [ %.2471.ph.peel, %sdslen.exit.peel ], [ %.2471.ph, %bb.an ] ; 19 uses
  %.0466.lcssa = phi i64 [ %.2471.ph.peel, %sdslen.exit.peel ], [ %.2468.ph, %bb.an ] ; 6 uses
  %.not504 = icmp eq i64 %.0466.lcssa, 0          ; 2 uses
  br i1 %.not504, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge
  %i.cz = tail call ptr @sdsnewlen(ptr noundef null, i64 noundef %.0466.lcssa) #23 ; 14 uses
  %i.da = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  %i.db = and i32 %i.da, 1024
  %.not505 = icmp eq i32 %i.db, 0
  br i1 %.not505, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dc = tail call i64 @bitopCommandAVX(ptr noundef nonnull %i.al, ptr noundef %i.cz, i64 noundef %.0436523528, i64 noundef %i.aj, i64 noundef %.0469.lcssa) ; 3 uses
  %.not506 = icmp ult i64 %.0469.lcssa, %i.dc
  br i1 %.not506, label %bb.aq, label %.thread, !prof !16

bb.aq:                                            ; preds = %bb.ap
  tail call void @_serverAssert(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str, i32 noundef 1175) #23
  tail call void @abort() #24
  unreachable

bb.ar:                                            ; preds = %bb.ao
  %i.dd = icmp ugt i64 %.0469.lcssa, 31
  br i1 %i.dd, label %bb.at, label %.loopexit572

.thread:                                          ; preds = %bb.ap
  %i.de = sub nuw i64 %.0469.lcssa, %i.dc
  %i.df = icmp ugt i64 %i.de, 31
  br i1 %i.df, label %bb.as, label %.loopexit572

bb.as:                                            ; preds = %.thread
  tail call void @_serverAssert(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str, i32 noundef 1195) #23
  tail call void @abort() #24
  unreachable

bb.at:                                            ; preds = %bb.ar
  br i1 %or.cond5522529, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.dg = load ptr, ptr %i.al, align 8, !tbaa !113
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cz, ptr align 1 %i.dg, i64 %.0469.lcssa, i1 false)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  br i1 %i.ac, label %.preheader570.lr.ph, label %bb.ax

.preheader570.lr.ph:                              ; preds = %bb.av
  %.not829 = icmp eq i32 %i.ai, 1
  br i1 %.not829, label %.preheader570.preheader, label %.preheader570.us

.preheader570.preheader:                          ; preds = %.preheader570.lr.ph
  %i.dh = sub i64 31, %.0469.lcssa
  %i.di = tail call i64 @llvm.umax.i64(i64 %i.dh, i64 -32)
  %i.dj = add i64 %i.di, %.0469.lcssa
  %i.dk = and i64 %i.dj, -32
  %i.dl = add nuw i64 %i.dk, 32
  br label %.loopexit572

.preheader570.us:                                 ; preds = %.preheader570.lr.ph, %._crit_edge675.us
  %.0428682.us = phi i64 [ %i.ei, %._crit_edge675.us ], [ 0, %.preheader570.lr.ph ] ; 2 uses
  %.0431681.us = phi ptr [ %i.ej, %._crit_edge675.us ], [ %i.cz, %.preheader570.lr.ph ] ; 6 uses
  %.2454680.us = phi i64 [ %i.ek, %._crit_edge675.us ], [ 0, %.preheader570.lr.ph ]
  %.4473679.us = phi i64 [ %i.el, %._crit_edge675.us ], [ %.0469.lcssa, %.preheader570.lr.ph ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0431681.us, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0431681.us, i64 16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0431681.us, i64 24 ; 2 uses
  %.0431.promoted.us = load i64, ptr %.0431681.us, align 8, !tbaa !20
  %.promoted676.us = load i64, ptr %i.dm, align 8, !tbaa !20
  %.promoted677.us = load i64, ptr %i.dn, align 8, !tbaa !20
  %.promoted678.us = load i64, ptr %i.do, align 8, !tbaa !20
  br label %bb.aw

bb.aw:                                            ; preds = %.preheader570.us, %bb.aw
  %i.dp = phi i64 [ %.promoted678.us, %.preheader570.us ], [ %i.eg, %bb.aw ]
  %i.dq = phi i64 [ %.promoted677.us, %.preheader570.us ], [ %i.ed, %bb.aw ]
  %i.dr = phi i64 [ %.promoted676.us, %.preheader570.us ], [ %i.ea, %bb.aw ]
  %i.ds = phi i64 [ %.0431.promoted.us, %.preheader570.us ], [ %i.dx, %bb.aw ]
  %.0438673.us = phi i64 [ 1, %.preheader570.us ], [ %i.eh, %bb.aw ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0438673.us
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !138
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.0428682.us ; 4 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !20
  %i.dx = and i64 %i.ds, %i.dw                    ; 2 uses
  store i64 %i.dx, ptr %.0431681.us, align 8, !tbaa !20
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !20
  %i.ea = and i64 %i.dr, %i.dz                    ; 2 uses
  store i64 %i.ea, ptr %i.dm, align 8, !tbaa !20
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !20
  %i.ed = and i64 %i.dq, %i.ec                    ; 2 uses
  store i64 %i.ed, ptr %i.dn, align 8, !tbaa !20
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !20
  %i.eg = and i64 %i.dp, %i.ef                    ; 2 uses
  store i64 %i.eg, ptr %i.do, align 8, !tbaa !20
  %i.eh = add nuw i64 %.0438673.us, 1             ; 2 uses
  %exitcond758.not = icmp eq i64 %i.eh, %i.aj
  br i1 %exitcond758.not, label %._crit_edge675.us, label %bb.aw, !llvm.loop !140

._crit_edge675.us:                                ; preds = %bb.aw
  %i.ei = add nuw nsw i64 %.0428682.us, 4
  %i.ej = getelementptr inbounds nuw i8, ptr %.0431681.us, i64 32
  %i.ek = add i64 %.2454680.us, 32                ; 2 uses
  %i.el = add i64 %.4473679.us, -32               ; 2 uses
  %i.em = icmp ugt i64 %i.el, 31
  br i1 %i.em, label %.preheader570.us, label %.loopexit572, !llvm.loop !141

bb.ax:                                            ; preds = %bb.av
  br i1 %i.ad, label %.preheader573.lr.ph, label %bb.az

.preheader573.lr.ph:                              ; preds = %bb.ax
  %.not828 = icmp eq i32 %i.ai, 1
  br i1 %.not828, label %.preheader573.preheader, label %.preheader573.us

.preheader573.preheader:                          ; preds = %.preheader573.lr.ph
  %i.en = sub i64 31, %.0469.lcssa
  %i.eo = tail call i64 @llvm.umax.i64(i64 %i.en, i64 -32)
  %i.ep = add i64 %i.eo, %.0469.lcssa
  %i.eq = and i64 %i.ep, -32
  %i.er = add nuw i64 %i.eq, 32
  br label %.loopexit572

.preheader573.us:                                 ; preds = %.preheader573.lr.ph, %._crit_edge663.us
  %.1429670.us = phi i64 [ %i.fo, %._crit_edge663.us ], [ 0, %.preheader573.lr.ph ] ; 2 uses
  %.1432669.us = phi ptr [ %i.fp, %._crit_edge663.us ], [ %i.cz, %.preheader573.lr.ph ] ; 6 uses
  %.3455668.us = phi i64 [ %i.fq, %._crit_edge663.us ], [ 0, %.preheader573.lr.ph ]
  %.5474667.us = phi i64 [ %i.fr, %._crit_edge663.us ], [ %.0469.lcssa, %.preheader573.lr.ph ]
  %i.es = getelementptr inbounds nuw i8, ptr %.1432669.us, i64 8 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.1432669.us, i64 16 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.1432669.us, i64 24 ; 2 uses
  %.1432.promoted.us = load i64, ptr %.1432669.us, align 8, !tbaa !20
  %.promoted664.us = load i64, ptr %i.es, align 8, !tbaa !20
  %.promoted665.us = load i64, ptr %i.et, align 8, !tbaa !20
  %.promoted666.us = load i64, ptr %i.eu, align 8, !tbaa !20
  br label %bb.ay

bb.ay:                                            ; preds = %.preheader573.us, %bb.ay
  %i.ev = phi i64 [ %.promoted666.us, %.preheader573.us ], [ %i.fm, %bb.ay ]
  %i.ew = phi i64 [ %.promoted665.us, %.preheader573.us ], [ %i.fj, %bb.ay ]
  %i.ex = phi i64 [ %.promoted664.us, %.preheader573.us ], [ %i.fg, %bb.ay ]
  %i.ey = phi i64 [ %.1432.promoted.us, %.preheader573.us ], [ %i.fd, %bb.ay ]
  %.1439661.us = phi i64 [ 1, %.preheader573.us ], [ %i.fn, %bb.ay ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.1439661.us
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !138
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.1429670.us ; 4 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !20
  %i.fd = or i64 %i.ey, %i.fc                     ; 2 uses
  store i64 %i.fd, ptr %.1432669.us, align 8, !tbaa !20
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !20
  %i.fg = or i64 %i.ex, %i.ff                     ; 2 uses
  store i64 %i.fg, ptr %i.es, align 8, !tbaa !20
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !20
  %i.fj = or i64 %i.ew, %i.fi                     ; 2 uses
  store i64 %i.fj, ptr %i.et, align 8, !tbaa !20
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !20
  %i.fm = or i64 %i.ev, %i.fl                     ; 2 uses
  store i64 %i.fm, ptr %i.eu, align 8, !tbaa !20
  %i.fn = add nuw i64 %.1439661.us, 1             ; 2 uses
  %exitcond755.not = icmp eq i64 %i.fn, %i.aj
  br i1 %exitcond755.not, label %._crit_edge663.us, label %bb.ay, !llvm.loop !142

._crit_edge663.us:                                ; preds = %bb.ay
  %i.fo = add nuw nsw i64 %.1429670.us, 4
  %i.fp = getelementptr inbounds nuw i8, ptr %.1432669.us, i64 32
  %i.fq = add i64 %.3455668.us, 32                ; 2 uses
  %i.fr = add i64 %.5474667.us, -32               ; 2 uses
  %i.fs = icmp ugt i64 %i.fr, 31
  br i1 %i.fs, label %.preheader573.us, label %.loopexit572, !llvm.loop !143

bb.az:                                            ; preds = %bb.ax
  br i1 %i.ae, label %.preheader576.lr.ph, label %bb.bb

.preheader576.lr.ph:                              ; preds = %bb.az
  %.not827 = icmp eq i32 %i.ai, 1
  br i1 %.not827, label %.preheader576.preheader, label %.preheader576.us

.preheader576.preheader:                          ; preds = %.preheader576.lr.ph
  %i.ft = sub i64 31, %.0469.lcssa
  %i.fu = tail call i64 @llvm.umax.i64(i64 %i.ft, i64 -32)
  %i.fv = add i64 %i.fu, %.0469.lcssa
  %i.fw = and i64 %i.fv, -32
  %i.fx = add nuw i64 %i.fw, 32
  br label %.loopexit572

.preheader576.us:                                 ; preds = %.preheader576.lr.ph, %._crit_edge651.us
  %.2430658.us = phi i64 [ %i.gu, %._crit_edge651.us ], [ 0, %.preheader576.lr.ph ] ; 2 uses
  %.2433657.us = phi ptr [ %i.gv, %._crit_edge651.us ], [ %i.cz, %.preheader576.lr.ph ] ; 6 uses
  %.4456656.us = phi i64 [ %i.gw, %._crit_edge651.us ], [ 0, %.preheader576.lr.ph ]
  %.6475655.us = phi i64 [ %i.gx, %._crit_edge651.us ], [ %.0469.lcssa, %.preheader576.lr.ph ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.2433657.us, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.2433657.us, i64 16 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.2433657.us, i64 24 ; 2 uses
  %.2433.promoted.us = load i64, ptr %.2433657.us, align 8, !tbaa !20
  %.promoted652.us = load i64, ptr %i.fy, align 8, !tbaa !20
  %.promoted653.us = load i64, ptr %i.fz, align 8, !tbaa !20
  %.promoted654.us = load i64, ptr %i.ga, align 8, !tbaa !20
  br label %bb.ba

bb.ba:                                            ; preds = %.preheader576.us, %bb.ba
  %i.gb = phi i64 [ %.promoted654.us, %.preheader576.us ], [ %i.gs, %bb.ba ]
  %i.gc = phi i64 [ %.promoted653.us, %.preheader576.us ], [ %i.gp, %bb.ba ]
  %i.gd = phi i64 [ %.promoted652.us, %.preheader576.us ], [ %i.gm, %bb.ba ]
  %i.ge = phi i64 [ %.2433.promoted.us, %.preheader576.us ], [ %i.gj, %bb.ba ]
  %.2440649.us = phi i64 [ 1, %.preheader576.us ], [ %i.gt, %bb.ba ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.2440649.us
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !138
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.2430658.us ; 4 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !20
  %i.gj = xor i64 %i.ge, %i.gi                    ; 2 uses
  store i64 %i.gj, ptr %.2433657.us, align 8, !tbaa !20
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !20
  %i.gm = xor i64 %i.gd, %i.gl                    ; 2 uses
  store i64 %i.gm, ptr %i.fy, align 8, !tbaa !20
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !20
  %i.gp = xor i64 %i.gc, %i.go                    ; 2 uses
  store i64 %i.gp, ptr %i.fz, align 8, !tbaa !20
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !20
  %i.gs = xor i64 %i.gb, %i.gr                    ; 2 uses
  store i64 %i.gs, ptr %i.ga, align 8, !tbaa !20
  %i.gt = add nuw i64 %.2440649.us, 1             ; 2 uses
  %exitcond752.not = icmp eq i64 %i.gt, %i.aj
  br i1 %exitcond752.not, label %._crit_edge651.us, label %bb.ba, !llvm.loop !144

._crit_edge651.us:                                ; preds = %bb.ba
  %i.gu = add nuw nsw i64 %.2430658.us, 4
  %i.gv = getelementptr inbounds nuw i8, ptr %.2433657.us, i64 32
  %i.gw = add i64 %.4456656.us, 32                ; 2 uses
  %i.gx = add i64 %.6475655.us, -32               ; 2 uses
  %i.gy = icmp ugt i64 %i.gx, 31
  br i1 %i.gy, label %.preheader576.us, label %.loopexit572, !llvm.loop !145

bb.bb:                                            ; preds = %bb.az
  br i1 %i.ab, label %.lr.ph647, label %bb.bc

.lr.ph647:                                        ; preds = %bb.bb, %.lr.ph647
  %.3434646 = phi ptr [ %i.he, %.lr.ph647 ], [ %i.cz, %bb.bb ] ; 4 uses
  %.5457645 = phi i64 [ %i.hf, %.lr.ph647 ], [ 0, %bb.bb ]
  %.7476644 = phi i64 [ %i.hg, %.lr.ph647 ], [ %.0469.lcssa, %bb.bb ]
  %i.gz = load <2 x i64>, ptr %.3434646, align 8, !tbaa !20
  %i.ha = xor <2 x i64> %i.gz, splat (i64 -1)
  store <2 x i64> %i.ha, ptr %.3434646, align 8, !tbaa !20
  %i.hb = getelementptr inbounds nuw i8, ptr %.3434646, i64 16 ; 2 uses
  %i.hc = load <2 x i64>, ptr %i.hb, align 8, !tbaa !20
  %i.hd = xor <2 x i64> %i.hc, splat (i64 -1)
  store <2 x i64> %i.hd, ptr %i.hb, align 8, !tbaa !20
  %i.he = getelementptr inbounds nuw i8, ptr %.3434646, i64 32
  %i.hf = add i64 %.5457645, 32                   ; 2 uses
  %i.hg = add i64 %.7476644, -32                  ; 2 uses
  %i.hh = icmp ugt i64 %i.hg, 31
  br i1 %i.hh, label %.lr.ph647, label %.loopexit572, !llvm.loop !146

bb.bc:                                            ; preds = %bb.bb
  br i1 %or.cond521530, label %.preheader587.lr.ph, label %bb.be

.preheader587.lr.ph:                              ; preds = %bb.bc
  %.not826 = icmp eq i32 %i.ai, 1
  br i1 %.not826, label %.preheader587.preheader, label %.preheader587.us

.preheader587.preheader:                          ; preds = %.preheader587.lr.ph
  %i.hi = sub i64 31, %.0469.lcssa
  %i.hj = tail call i64 @llvm.umax.i64(i64 %i.hi, i64 -32)
  %i.hk = add i64 %i.hj, %.0469.lcssa
  %i.hl = and i64 %i.hk, -32
  %i.hm = add nuw i64 %i.hl, 32
  br label %._crit_edge628

.preheader587.us:                                 ; preds = %.preheader587.lr.ph, %._crit_edge619.us
  %.0427627.us = phi i64 [ %i.il, %._crit_edge619.us ], [ 0, %.preheader587.lr.ph ]
  %.3626.us = phi i64 [ %i.ij, %._crit_edge619.us ], [ 0, %.preheader587.lr.ph ] ; 2 uses
  %.4435625.us = phi ptr [ %i.ik, %._crit_edge619.us ], [ %i.cz, %.preheader587.lr.ph ] ; 6 uses
  %.8477623.us = phi i64 [ %i.im, %._crit_edge619.us ], [ %.0469.lcssa, %.preheader587.lr.ph ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.4435625.us, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.4435625.us, i64 16 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.4435625.us, i64 24 ; 2 uses
  %.4435.promoted.us = load i64, ptr %.4435625.us, align 8, !tbaa !20
  %.promoted620.us = load i64, ptr %i.hn, align 8, !tbaa !20
  %.promoted621.us = load i64, ptr %i.ho, align 8, !tbaa !20
  %.promoted622.us = load i64, ptr %i.hp, align 8, !tbaa !20
  br label %bb.bd

bb.bd:                                            ; preds = %.preheader587.us, %bb.bd
  %i.hq = phi i64 [ %.promoted622.us, %.preheader587.us ], [ %i.ih, %bb.bd ]
  %i.hr = phi i64 [ %.promoted621.us, %.preheader587.us ], [ %i.ie, %bb.bd ]
  %i.hs = phi i64 [ %.promoted620.us, %.preheader587.us ], [ %i.ib, %bb.bd ]
  %i.ht = phi i64 [ %.4435.promoted.us, %.preheader587.us ], [ %i.hy, %bb.bd ]
  %.3441617.us = phi i64 [ 1, %.preheader587.us ], [ %i.ii, %bb.bd ] ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.3441617.us
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !138
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.3626.us ; 4 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !20
  %i.hy = or i64 %i.ht, %i.hx                     ; 2 uses
  store i64 %i.hy, ptr %.4435625.us, align 8, !tbaa !20
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !20
  %i.ib = or i64 %i.hs, %i.ia                     ; 2 uses
  store i64 %i.ib, ptr %i.hn, align 8, !tbaa !20
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !20
  %i.ie = or i64 %i.hr, %i.id                     ; 2 uses
  store i64 %i.ie, ptr %i.ho, align 8, !tbaa !20
  %i.if = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !20
  %i.ih = or i64 %i.hq, %i.ig                     ; 2 uses
  store i64 %i.ih, ptr %i.hp, align 8, !tbaa !20
  %i.ii = add nuw i64 %.3441617.us, 1             ; 2 uses
  %exitcond749.not = icmp eq i64 %i.ii, %i.aj
  br i1 %exitcond749.not, label %._crit_edge619.us, label %bb.bd, !llvm.loop !147

._crit_edge619.us:                                ; preds = %bb.bd
  %i.ij = add nuw nsw i64 %.3626.us, 4
  %i.ik = getelementptr inbounds nuw i8, ptr %.4435625.us, i64 32
  %i.il = add nuw i64 %.0427627.us, 32            ; 2 uses
  %i.im = add i64 %.8477623.us, -32               ; 2 uses
  %i.in = icmp ugt i64 %i.im, 31
  br i1 %i.in, label %.preheader587.us, label %._crit_edge628, !llvm.loop !148

._crit_edge628:                                   ; preds = %._crit_edge619.us, %.preheader587.preheader
  %.6458.lcssa = phi i64 [ %i.hm, %.preheader587.preheader ], [ %i.il, %._crit_edge619.us ] ; 7 uses
  %i.io = load ptr, ptr %i.al, align 8, !tbaa !113 ; 3 uses
  switch i64 %.0436523528, label %.loopexit572 [
    i64 4, label %.lr.ph643
    i64 5, label %.lr.ph639
    i64 6, label %.lr.ph635
  ]

.lr.ph643:                                        ; preds = %._crit_edge628, %.lr.ph643
  %.0426642 = phi ptr [ %i.jm, %.lr.ph643 ], [ %i.io, %._crit_edge628 ] ; 5 uses
  %.5641 = phi ptr [ %i.jl, %.lr.ph643 ], [ %i.cz, %._crit_edge628 ] ; 6 uses
  %.4442640 = phi i64 [ %i.jn, %.lr.ph643 ], [ 0, %._crit_edge628 ]
  %i.ip = load i64, ptr %.0426642, align 8, !tbaa !20
  %i.iq = load i64, ptr %.5641, align 8, !tbaa !20
  %i.ir = xor i64 %i.iq, -1
  %i.is = and i64 %i.ip, %i.ir
  store i64 %i.is, ptr %.5641, align 8, !tbaa !20
  %i.it = getelementptr inbounds nuw i8, ptr %.0426642, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !20
  %i.iv = getelementptr inbounds nuw i8, ptr %.5641, i64 8 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !20
  %i.ix = xor i64 %i.iw, -1
  %i.iy = and i64 %i.iu, %i.ix
  store i64 %i.iy, ptr %i.iv, align 8, !tbaa !20
  %i.iz = getelementptr inbounds nuw i8, ptr %.0426642, i64 16
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !20
  %i.jb = getelementptr inbounds nuw i8, ptr %.5641, i64 16 ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !20
  %i.jd = xor i64 %i.jc, -1
  %i.je = and i64 %i.ja, %i.jd
  store i64 %i.je, ptr %i.jb, align 8, !tbaa !20
  %i.jf = getelementptr inbounds nuw i8, ptr %.0426642, i64 24
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !20
  %i.jh = getelementptr inbounds nuw i8, ptr %.5641, i64 24 ; 2 uses
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !20
  %i.jj = xor i64 %i.ji, -1
  %i.jk = and i64 %i.jg, %i.jj
  store i64 %i.jk, ptr %i.jh, align 8, !tbaa !20
  %i.jl = getelementptr inbounds nuw i8, ptr %.5641, i64 32
  %i.jm = getelementptr inbounds nuw i8, ptr %.0426642, i64 32
  %i.jn = add nuw i64 %.4442640, 32               ; 2 uses
  %i.jo = icmp ult i64 %i.jn, %.6458.lcssa
  br i1 %i.jo, label %.lr.ph643, label %.loopexit572, !llvm.loop !149

.lr.ph639:                                        ; preds = %._crit_edge628, %.lr.ph639
  %.1638 = phi ptr [ %i.km, %.lr.ph639 ], [ %i.io, %._crit_edge628 ] ; 5 uses
  %.6637 = phi ptr [ %i.kl, %.lr.ph639 ], [ %i.cz, %._crit_edge628 ] ; 6 uses
  %.5443636 = phi i64 [ %i.kn, %.lr.ph639 ], [ 0, %._crit_edge628 ]
  %i.jp = load i64, ptr %.1638, align 8, !tbaa !20
  %i.jq = xor i64 %i.jp, -1
  %i.jr = load i64, ptr %.6637, align 8, !tbaa !20
  %i.js = and i64 %i.jr, %i.jq
  store i64 %i.js, ptr %.6637, align 8, !tbaa !20
  %i.jt = getelementptr inbounds nuw i8, ptr %.1638, i64 8
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !20
  %i.jv = xor i64 %i.ju, -1
  %i.jw = getelementptr inbounds nuw i8, ptr %.6637, i64 8 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !20
  %i.jy = and i64 %i.jx, %i.jv
  store i64 %i.jy, ptr %i.jw, align 8, !tbaa !20
  %i.jz = getelementptr inbounds nuw i8, ptr %.1638, i64 16
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !20
  %i.kb = xor i64 %i.ka, -1
  %i.kc = getelementptr inbounds nuw i8, ptr %.6637, i64 16 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !20
  %i.ke = and i64 %i.kd, %i.kb
  store i64 %i.ke, ptr %i.kc, align 8, !tbaa !20
  %i.kf = getelementptr inbounds nuw i8, ptr %.1638, i64 24
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !20
  %i.kh = xor i64 %i.kg, -1
  %i.ki = getelementptr inbounds nuw i8, ptr %.6637, i64 24 ; 2 uses
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !20
  %i.kk = and i64 %i.kj, %i.kh
  store i64 %i.kk, ptr %i.ki, align 8, !tbaa !20
  %i.kl = getelementptr inbounds nuw i8, ptr %.6637, i64 32
  %i.km = getelementptr inbounds nuw i8, ptr %.1638, i64 32
  %i.kn = add nuw i64 %.5443636, 32               ; 2 uses
  %i.ko = icmp ult i64 %i.kn, %.6458.lcssa
  br i1 %i.ko, label %.lr.ph639, label %.loopexit572, !llvm.loop !150

.lr.ph635:                                        ; preds = %._crit_edge628, %.lr.ph635
  %.2634 = phi ptr [ %i.li, %.lr.ph635 ], [ %i.io, %._crit_edge628 ] ; 5 uses
  %.7633 = phi ptr [ %i.lh, %.lr.ph635 ], [ %i.cz, %._crit_edge628 ] ; 6 uses
  %.6444632 = phi i64 [ %i.lj, %.lr.ph635 ], [ 0, %._crit_edge628 ]
  %i.kp = load i64, ptr %.2634, align 8, !tbaa !20
  %i.kq = load i64, ptr %.7633, align 8, !tbaa !20
  %i.kr = and i64 %i.kq, %i.kp
  store i64 %i.kr, ptr %.7633, align 8, !tbaa !20
  %i.ks = getelementptr inbounds nuw i8, ptr %.2634, i64 8
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !20
  %i.ku = getelementptr inbounds nuw i8, ptr %.7633, i64 8 ; 2 uses
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !20
  %i.kw = and i64 %i.kv, %i.kt
  store i64 %i.kw, ptr %i.ku, align 8, !tbaa !20
  %i.kx = getelementptr inbounds nuw i8, ptr %.2634, i64 16
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !20
  %i.kz = getelementptr inbounds nuw i8, ptr %.7633, i64 16 ; 2 uses
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !20
  %i.lb = and i64 %i.la, %i.ky
  store i64 %i.lb, ptr %i.kz, align 8, !tbaa !20
  %i.lc = getelementptr inbounds nuw i8, ptr %.2634, i64 24
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !20
  %i.le = getelementptr inbounds nuw i8, ptr %.7633, i64 24 ; 2 uses
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !20
  %i.lg = and i64 %i.lf, %i.ld
  store i64 %i.lg, ptr %i.le, align 8, !tbaa !20
  %i.lh = getelementptr inbounds nuw i8, ptr %.7633, i64 32
  %i.li = getelementptr inbounds nuw i8, ptr %.2634, i64 32
  %i.lj = add nuw i64 %.6444632, 32               ; 2 uses
  %i.lk = icmp ult i64 %i.lj, %.6458.lcssa
  br i1 %i.lk, label %.lr.ph635, label %.loopexit572, !llvm.loop !151

bb.be:                                            ; preds = %bb.bc
  br i1 %i.af, label %.preheader589.lr.ph, label %.loopexit572

.preheader589.lr.ph:                              ; preds = %bb.be
  %.not825 = icmp eq i32 %i.ai, 1
  %umax746 = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 2)
  br label %.preheader589

.preheader589:                                    ; preds = %.preheader589.lr.ph, %._crit_edge605
  %.4615 = phi i64 [ 0, %.preheader589.lr.ph ], [ %i.nh, %._crit_edge605 ] ; 2 uses
  %.8614 = phi ptr [ %i.cz, %.preheader589.lr.ph ], [ %i.ni, %._crit_edge605 ] ; 12 uses
  %.7459613 = phi i64 [ 0, %.preheader589.lr.ph ], [ %i.nj, %._crit_edge605 ]
  %.9478612 = phi i64 [ %.0469.lcssa, %.preheader589.lr.ph ], [ %i.nk, %._crit_edge605 ]
  %.pre = load i64, ptr %.8614, align 8, !tbaa !20 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.8614, i64 8 ; 3 uses
  br i1 %.not825, label %.preheader589.._crit_edge605_crit_edge, label %.lr.ph604

.preheader589.._crit_edge605_crit_edge:           ; preds = %.preheader589
  %.pre764 = load i64, ptr %i.ll, align 8, !tbaa !20
  %.phi.trans.insert765 = getelementptr inbounds nuw i8, ptr %.8614, i64 16
  %.pre766 = load i64, ptr %.phi.trans.insert765, align 8, !tbaa !20
  %.phi.trans.insert767 = getelementptr inbounds nuw i8, ptr %.8614, i64 24
  %.pre768 = load i64, ptr %.phi.trans.insert767, align 8, !tbaa !20
  br label %._crit_edge605

.lr.ph604:                                        ; preds = %.preheader589
  %i.lm = getelementptr inbounds nuw i8, ptr %.8614, i64 16 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.8614, i64 24 ; 2 uses
  %.promoted = load i64, ptr %i.ll, align 8, !tbaa !20
  %.promoted610 = load i64, ptr %i.lm, align 8, !tbaa !20
  %.promoted611 = load i64, ptr %i.ln, align 8, !tbaa !20
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph604, %bb.bf
  %i.lo = phi i64 [ %.promoted611, %.lr.ph604 ], [ %i.mq, %bb.bf ] ; 2 uses
  %i.lp = phi i64 [ %.promoted610, %.lr.ph604 ], [ %i.mo, %bb.bf ] ; 2 uses
  %i.lq = phi i64 [ %.promoted, %.lr.ph604 ], [ %i.mm, %bb.bf ] ; 2 uses
  %i.lr = phi i64 [ %.pre, %.lr.ph604 ], [ %i.mk, %bb.bf ] ; 2 uses
  %.sroa.12.0603 = phi i64 [ 0, %.lr.ph604 ], [ %i.mj, %bb.bf ]
  %.sroa.9.0602 = phi i64 [ 0, %.lr.ph604 ], [ %i.mf, %bb.bf ]
  %.sroa.6.0601 = phi i64 [ 0, %.lr.ph604 ], [ %i.mb, %bb.bf ]
  %.sroa.0.0600 = phi i64 [ 0, %.lr.ph604 ], [ %i.lx, %bb.bf ]
  %.7445599 = phi i64 [ 1, %.lr.ph604 ], [ %i.mr, %bb.bf ] ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.7445599
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !138
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %.4615 ; 4 uses
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !20 ; 2 uses
  %i.lw = and i64 %i.lv, %i.lr
  %i.lx = or i64 %i.lw, %.sroa.0.0600             ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 8 ; 2 uses
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !20
  %i.ma = and i64 %i.lz, %i.lq
  %i.mb = or i64 %i.ma, %.sroa.6.0601             ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 2 uses
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !20
  %i.me = and i64 %i.md, %i.lp
  %i.mf = or i64 %i.me, %.sroa.9.0602             ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lu, i64 24 ; 2 uses
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !20
  %i.mi = and i64 %i.mh, %i.lo
  %i.mj = or i64 %i.mi, %.sroa.12.0603            ; 2 uses
  %i.mk = xor i64 %i.lv, %i.lr                    ; 3 uses
  store i64 %i.mk, ptr %.8614, align 8, !tbaa !20
  %i.ml = load i64, ptr %i.ly, align 8, !tbaa !20
  %i.mm = xor i64 %i.ml, %i.lq                    ; 3 uses
  store i64 %i.mm, ptr %i.ll, align 8, !tbaa !20
  %i.mn = load i64, ptr %i.mc, align 8, !tbaa !20
  %i.mo = xor i64 %i.mn, %i.lp                    ; 3 uses
  store i64 %i.mo, ptr %i.lm, align 8, !tbaa !20
  %i.mp = load i64, ptr %i.mg, align 8, !tbaa !20
  %i.mq = xor i64 %i.mp, %i.lo                    ; 3 uses
  store i64 %i.mq, ptr %i.ln, align 8, !tbaa !20
  %i.mr = add nuw i64 %.7445599, 1                ; 2 uses
  %exitcond747.not = icmp eq i64 %i.mr, %umax746
  br i1 %exitcond747.not, label %._crit_edge605.loopexit, label %bb.bf, !llvm.loop !152

._crit_edge605.loopexit:                          ; preds = %bb.bf
  %i.ms = xor i64 %i.lx, -1
  %i.mt = and i64 %i.mk, %i.ms
  %i.mu = xor i64 %i.mb, -1
  %i.mv = and i64 %i.mm, %i.mu
  %i.mw = xor i64 %i.mf, -1
  %i.mx = and i64 %i.mo, %i.mw
  %i.my = xor i64 %i.mj, -1
  %i.mz = and i64 %i.mq, %i.my
  br label %._crit_edge605

._crit_edge605:                                   ; preds = %.preheader589.._crit_edge605_crit_edge, %._crit_edge605.loopexit
  %i.na = phi i64 [ %.pre768, %.preheader589.._crit_edge605_crit_edge ], [ %i.mz, %._crit_edge605.loopexit ]
  %i.nb = phi i64 [ %.pre766, %.preheader589.._crit_edge605_crit_edge ], [ %i.mx, %._crit_edge605.loopexit ]
  %i.nc = phi i64 [ %.pre764, %.preheader589.._crit_edge605_crit_edge ], [ %i.mv, %._crit_edge605.loopexit ]
  %i.nd = phi i64 [ %.pre, %.preheader589.._crit_edge605_crit_edge ], [ %i.mt, %._crit_edge605.loopexit ]
  store i64 %i.nd, ptr %.8614, align 8, !tbaa !20
  %i.ne = getelementptr inbounds nuw i8, ptr %.8614, i64 8
  store i64 %i.nc, ptr %i.ne, align 8, !tbaa !20
  %i.nf = getelementptr inbounds nuw i8, ptr %.8614, i64 16
  store i64 %i.nb, ptr %i.nf, align 8, !tbaa !20
  %i.ng = getelementptr inbounds nuw i8, ptr %.8614, i64 24
  store i64 %i.na, ptr %i.ng, align 8, !tbaa !20
  %i.nh = add nuw nsw i64 %.4615, 4
  %i.ni = getelementptr inbounds nuw i8, ptr %.8614, i64 32
  %i.nj = add nuw i64 %.7459613, 32               ; 2 uses
  %i.nk = add i64 %.9478612, -32                  ; 2 uses
  %i.nl = icmp ugt i64 %i.nk, 31
  br i1 %i.nl, label %.preheader589, label %.loopexit572, !llvm.loop !153

.loopexit572:                                     ; preds = %._crit_edge605, %.lr.ph635, %.lr.ph639, %.lr.ph643, %.lr.ph647, %._crit_edge651.us, %._crit_edge663.us, %._crit_edge675.us, %.preheader576.preheader, %.preheader573.preheader, %.preheader570.preheader, %.thread, %bb.be, %._crit_edge628, %bb.ar
  %.9 = phi i64 [ 0, %bb.ar ], [ %i.dc, %.thread ], [ %i.hf, %.lr.ph647 ], [ %i.dl, %.preheader570.preheader ], [ %i.fq, %._crit_edge663.us ], [ 0, %bb.be ], [ %.6458.lcssa, %._crit_edge628 ], [ %.6458.lcssa, %.lr.ph643 ], [ %i.fx, %.preheader576.preheader ], [ %i.gw, %._crit_edge651.us ], [ %i.er, %.preheader573.preheader ], [ %i.ek, %._crit_edge675.us ], [ %.6458.lcssa, %.lr.ph635 ], [ %.6458.lcssa, %.lr.ph639 ], [ %i.nj, %._crit_edge605 ] ; 2 uses
  %i.nm = icmp ult i64 %.9, %.0466.lcssa
  br i1 %i.nm, label %.lr.ph703, label %.loopexit

.lr.ph703:                                        ; preds = %.loopexit572
  %i.nn = sext i1 %i.ab to i8                     ; 2 uses
  %.not830 = icmp eq i32 %i.ai, 1
  %umax759 = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 2)
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph703, %.thread565
  %.10699 = phi i64 [ %.9, %.lr.ph703 ], [ %i.pd, %.thread565 ] ; 6 uses
  %i.no = load i64, ptr %i.am, align 8, !tbaa !20
  %.not510 = icmp ugt i64 %i.no, %.10699
  br i1 %.not510, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.np = load ptr, ptr %i.al, align 8, !tbaa !113
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 %.10699
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !13
  %i.ns = xor i8 %i.nr, %i.nn
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %spec.select514 = phi i8 [ %i.ns, %bb.bh ], [ %i.nn, %bb.bg ] ; 2 uses
  br i1 %.not830, label %.split._crit_edge, label %.lr.ph690

.lr.ph690:                                        ; preds = %bb.bi, %.thread554
  %.8446688 = phi i64 [ %i.ow, %.thread554 ], [ 1, %bb.bi ] ; 3 uses
  %.0447687 = phi i8 [ %.1448561, %.thread554 ], [ 0, %bb.bi ] ; 6 uses
  %.0449686 = phi i8 [ %.1450560, %.thread554 ], [ 0, %bb.bi ] ; 6 uses
  %.1462685 = phi i8 [ %.2463559, %.thread554 ], [ %spec.select514, %bb.bi ] ; 8 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.8446688
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !20
  %.not511 = icmp ugt i64 %i.nu, %.10699
  br i1 %.not511, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph690
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.8446688
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !113
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 %.10699
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !13
  %i.nz = zext i8 %i.ny to i32
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph690, %bb.bj
  %i.oa = phi i32 [ %i.nz, %bb.bj ], [ 0, %.lr.ph690 ] ; 6 uses
  switch i64 %.0436523528, label %default.unreachable [
    i64 0, label %bb.bm
    i64 1, label %.split563
    i64 2, label %bb.bl
    i64 4, label %.split
    i64 5, label %.split
    i64 6, label %.split
    i64 7, label %.split562
    i64 3, label %.thread554
  ]

.split563:                                        ; preds = %bb.bk
  %i.ob = trunc nuw i32 %i.oa to i8
  %i.oc = or i8 %.1462685, %i.ob                  ; 2 uses
  %i.od = icmp eq i8 %i.oc, -1
  br i1 %i.od, label %.thread565, label %.thread554

bb.bl:                                            ; preds = %bb.bk
  %i.oe = trunc nuw i32 %i.oa to i8
  %i.of = xor i8 %.1462685, %i.oe
  br label %.thread554

.split:                                           ; preds = %bb.bk, %bb.bk, %bb.bk
  %i.og = trunc nuw i32 %i.oa to i8
  %i.oh = or i8 %.0449686, %i.og                  ; 2 uses
  %i.oi = icmp eq i8 %i.oh, -1
  br i1 %i.oi, label %.split._crit_edge, label %.thread554

.split562:                                        ; preds = %bb.bk
  %i.oj = trunc nuw i32 %i.oa to i8
  %i.ok = and i8 %.1462685, %i.oj
  %i.ol = or i8 %i.ok, %.0447687                  ; 3 uses
  %i.om = zext i8 %i.ol to i32
  %i.on = xor i32 %i.om, -1
  %i.oo = zext i8 %.1462685 to i32
  %i.op = xor i32 %i.oa, %i.oo
  %i.oq = and i32 %i.op, %i.on
  %i.or = trunc nuw i32 %i.oq to i8               ; 2 uses
  %i.os = icmp eq i8 %i.ol, -1
  br i1 %i.os, label %.thread565, label %.thread554

default.unreachable:                              ; preds = %bb.bk
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.ot = trunc nuw i32 %i.oa to i8
  %i.ou = and i8 %.1462685, %i.ot                 ; 2 uses
  %i.ov = icmp eq i8 %i.ou, 0
  br i1 %i.ov, label %.thread565, label %.thread554

.thread554:                                       ; preds = %bb.bl, %bb.bk, %.split563, %.split562, %.split, %bb.bm
  %.1448561 = phi i8 [ %.0447687, %.split563 ], [ %.0447687, %bb.bm ], [ %.0447687, %.split ], [ %i.ol, %.split562 ], [ %.0447687, %bb.bk ], [ %.0447687, %bb.bl ]
  %.1450560 = phi i8 [ %.0449686, %.split563 ], [ %.0449686, %bb.bm ], [ %i.oh, %.split ], [ %.0449686, %.split562 ], [ %.0449686, %bb.bk ], [ %.0449686, %bb.bl ] ; 2 uses
  %.2463559 = phi i8 [ %i.oc, %.split563 ], [ %i.ou, %bb.bm ], [ %.1462685, %.split ], [ %i.or, %.split562 ], [ %.1462685, %bb.bk ], [ %i.of, %bb.bl ] ; 2 uses
  %i.ow = add nuw i64 %.8446688, 1                ; 2 uses
  %exitcond760.not = icmp eq i64 %i.ow, %umax759
  br i1 %exitcond760.not, label %.split._crit_edge, label %.lr.ph690, !llvm.loop !154

.split._crit_edge:                                ; preds = %.thread554, %.split, %bb.bi
  %.3464 = phi i8 [ %spec.select514, %bb.bi ], [ %.1462685, %.split ], [ %.2463559, %.thread554 ] ; 4 uses
  %.2451 = phi i8 [ 0, %bb.bi ], [ -1, %.split ], [ %.1450560, %.thread554 ] ; 3 uses
  switch i64 %.0436523528, label %.thread565 [
    i64 4, label %bb.bn
    i64 5, label %bb.bo
    i64 6, label %bb.bp
  ]

bb.bn:                                            ; preds = %.split._crit_edge
  %i.ox = xor i8 %.2451, -1
  %i.oy = and i8 %.3464, %i.ox
  br label %.thread565

bb.bo:                                            ; preds = %.split._crit_edge
  %i.oz = xor i8 %.3464, -1
  %i.pa = and i8 %.2451, %i.oz
  br label %.thread565

bb.bp:                                            ; preds = %.split._crit_edge
  %i.pb = and i8 %.2451, %.3464
  br label %.thread565

.thread565:                                       ; preds = %.split563, %.split562, %bb.bm, %.split._crit_edge, %bb.bn, %bb.bo, %bb.bp
  %.sink = phi i8 [ %i.oy, %bb.bn ], [ %i.pa, %bb.bo ], [ %i.pb, %bb.bp ], [ %.3464, %.split._crit_edge ], [ 0, %bb.bm ], [ -1, %.split563 ], [ %i.or, %.split562 ]
  %i.pc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.10699
  store i8 %.sink, ptr %i.pc, align 1, !tbaa !13
  %i.pd = add i64 %.10699, 1                      ; 2 uses
  %exitcond761.not = icmp eq i64 %i.pd, %.0466.lcssa
  br i1 %exitcond761.not, label %.loopexit, label %bb.bg, !llvm.loop !155

.loopexit:                                        ; preds = %.thread565, %.loopexit572, %._crit_edge
  %.0466.lcssa793 = phi i64 [ 0, %._crit_edge ], [ %.0466.lcssa, %.loopexit572 ], [ %.0466.lcssa, %.thread565 ]
  %.0481 = phi ptr [ null, %._crit_edge ], [ %i.cz, %.loopexit572 ], [ %i.cz, %.thread565 ]
  br label %.lr.ph706

.lr.ph706:                                        ; preds = %.loopexit, %bb.br
  %.11704 = phi i64 [ %i.pg, %bb.br ], [ 0, %.loopexit ] ; 2 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.11704
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !104 ; 2 uses
  %.not509 = icmp eq ptr %i.pf, null
  br i1 %.not509, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph706
  tail call void @decrRefCount(ptr noundef nonnull %i.pf) #23
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph706, %bb.bq
  %i.pg = add nuw i64 %.11704, 1                  ; 2 uses
  %exitcond763.not = icmp eq i64 %i.pg, %i.aj
  br i1 %exitcond763.not, label %._crit_edge707, label %.lr.ph706, !llvm.loop !156

._crit_edge707:                                   ; preds = %bb.br, %.thread524
  %.0481802 = phi ptr [ null, %.thread524 ], [ %.0481, %bb.br ]
  %.0466.lcssa793801 = phi i64 [ 0, %.thread524 ], [ %.0466.lcssa793, %bb.br ]
  %.not504794800 = phi i1 [ true, %.thread524 ], [ %.not504, %bb.br ]
  tail call void @zfree(ptr noundef %i.al) #23
  tail call void @zfree(ptr noundef %i.am) #23
  tail call void @zfree(ptr noundef %i.an) #23
  br i1 %.not504794800, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.ph = tail call ptr @createObject(i32 noundef 0, ptr noundef %.0481802) #23
  store ptr %i.ph, ptr %i.a, align 8, !tbaa !104
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !105
  call void @setKey(ptr noundef %0, ptr noundef %i.pj, ptr noundef %i.i, ptr noundef nonnull %i.a, i32 noundef 0) #23
  %i.pk = load ptr, ptr %i.pi, align 8, !tbaa !105
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 72
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !106
  call void @notifyKeyspaceEvent(i32 noundef 8, ptr noundef nonnull @.str.22, ptr noundef %i.i, i32 noundef %i.pm) #23
  %i.pn = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !109
  %i.po = add nsw i64 %i.pn, 1
  store i64 %i.po, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.bv

bb.bt:                                            ; preds = %._crit_edge707
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !105
  %i.pr = tail call i32 @dbDelete(ptr noundef %i.pq, ptr noundef %i.i) #23
  %.not508 = icmp eq i32 %i.pr, 0
  br i1 %.not508, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ps = load ptr, ptr %i.pp, align 8, !tbaa !105
  tail call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.ps, ptr noundef %i.i, ptr noundef null, i32 noundef 1) #23
  %i.pt = load ptr, ptr %i.pp, align 8, !tbaa !105
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 72
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !106
  tail call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.23, ptr noundef %i.i, i32 noundef %i.pv) #23
  %i.pw = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !109
  %i.px = add nsw i64 %i.pw, 1
  store i64 %i.px, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !109
  br label %bb.bv
end_hunk_0
