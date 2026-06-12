inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@compress_first_pass:bb.a
  %i.b = load i32, ptr %i.a, align 4, !tbaa !59
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !41
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph126, label %._crit_edge127

.lr.ph126:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph126, %.loopexit99
  %indvars.iv156 = phi i64 [ 0, %.lr.ph126 ], [ %indvars.iv.next157, %.loopexit99 ] ; 3 uses
  %.086123 = phi ptr [ %i.h, %.lr.ph126 ], [ %i.dl, %.loopexit99 ] ; 7 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !88
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv156
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49
  %i.t = load i32, ptr %i.m, align 8, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %.086123, i64 12 ; 7 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !48   ; 2 uses
  %i.w = mul i32 %i.v, %i.t
  %i.x = tail call ptr %i.q(ptr noundef nonnull %0, ptr noundef %i.s, i32 noundef %i.w, i32 noundef %i.v, i32 noundef 1) #5 ; 5 uses
  %i.y = load i32, ptr %i.m, align 8, !tbaa !56
  %i.z = icmp ult i32 %i.y, %i.c
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = load i32, ptr %i.u, align 4, !tbaa !48
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.086123, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !47
  %i.ad = load i32, ptr %i.u, align 4, !tbaa !48  ; 2 uses
  %i.ae = urem i32 %i.ac, %i.ad                   ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  %spec.select = select i1 %i.af, i32 %i.ad, i32 %i.ae
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.088 = phi i32 [ %i.aa, %bb.c ], [ %spec.select, %bb.d ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.086123, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !44
  %.fr160 = freeze i32 %i.ah                      ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.086123, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !46
  %.fr = freeze i32 %i.aj                         ; 8 uses
  %i.ak = urem i32 %.fr160, %.fr                  ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 0
  %i.am = sub i32 %.fr, %i.ak
  %spec.select98 = select i1 %i.al, i32 %i.am, i32 %i.ak ; 4 uses
  %i.an = icmp sgt i32 %.088, 0
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv156 ; 2 uses
  %i.ap = icmp sgt i32 %spec.select98, 0
  %i.aq = zext i32 %.fr160 to i64
  %i.ar = zext i32 %spec.select98 to i64          ; 3 uses
  %i.as = shl nuw nsw i64 %i.ar, 7
  %wide.trip.count140 = zext nneg i32 %.088 to i64 ; 2 uses
  br i1 %i.ap, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter = and i64 %i.ar, 3                    ; 3 uses
  %i.at = icmp ult i32 %spec.select98, 4
  %unroll_iter = and i64 %i.ar, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod171.a = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.loopexit.us
  %indvars.iv137.a = phi i64 [ %indvars.iv.next138.a, %.loopexit.us ], [ 0, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv137.a
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !54 ; 2 uses
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !69
  %i.az = load ptr, ptr %i.ao, align 8, !tbaa !72
  %indvars.iv137.tr = trunc i64 %indvars.iv137.a to i32
  %i.ba = shl i32 %indvars.iv137.tr, 3
  tail call void %i.ay(ptr noundef nonnull %0, ptr noundef %.086123, ptr noundef %i.az, ptr noundef %i.av, i32 noundef %i.ba, i32 noundef 0, i32 noundef %.fr160) #5
  %i.bb = getelementptr inbounds nuw [128 x i8], ptr %i.av, i64 %i.aq ; 7 uses
  tail call void @jzero_far(ptr noundef %i.bb, i64 noundef %i.as) #5
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -128
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !75 ; 5 uses
  br i1 %i.at, label %.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us, %.lr.ph.split.us.new
  %indvars.iv132 = phi i64 [ %indvars.iv.next133.3, %.lr.ph.split.us.new ], [ 0, %.lr.ph.split.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.split.us.new ], [ 0, %.lr.ph.split.us ]
  %i.be = getelementptr inbounds nuw [128 x i8], ptr %i.bb, i64 %indvars.iv132
  store i16 %i.bd, ptr %i.be, align 2, !tbaa !75
  %i.bf = getelementptr inbounds nuw [128 x i8], ptr %i.bb, i64 %indvars.iv132
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  store i16 %i.bd, ptr %i.bg, align 2, !tbaa !75
  %i.bh = getelementptr inbounds nuw [128 x i8], ptr %i.bb, i64 %indvars.iv132
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 256
  store i16 %i.bd, ptr %i.bi, align 2, !tbaa !75
  %i.bj = getelementptr inbounds nuw [128 x i8], ptr %i.bb, i64 %indvars.iv132
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 384
  store i16 %i.bd, ptr %i.bk, align 2, !tbaa !75
  %indvars.iv.next133.3 = add nuw nsw i64 %indvars.iv132, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.us.unr-lcssa, label %.lr.ph.split.us.new, !llvm.loop !89

.loopexit.us.unr-lcssa:                           ; preds = %.lr.ph.split.us.new
  br i1 %lcmp.mod.not, label %.loopexit.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.us.unr-lcssa, %.lr.ph.split.us
  %indvars.iv132.epil.init = phi i64 [ 0, %.lr.ph.split.us ], [ %indvars.iv.next133.3, %.loopexit.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod171.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv132.epil = phi i64 [ %indvars.iv.next133.epil, %bb.f ], [ %indvars.iv132.epil.init, %.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.f ], [ 0, %.epil.preheader ]
  %i.bl = getelementptr inbounds nuw [128 x i8], ptr %i.bb, i64 %indvars.iv132.epil
  store i16 %i.bd, ptr %i.bl, align 2, !tbaa !75
  %indvars.iv.next133.epil = add nuw nsw i64 %indvars.iv132.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.us, label %bb.f, !llvm.loop !90

.loopexit.us:                                     ; preds = %bb.f, %.loopexit.us.unr-lcssa
  %indvars.iv.next138.a = add nuw nsw i64 %indvars.iv137.a, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138.a, %wide.trip.count140
  br i1 %exitcond141.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !91

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !54
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !69
  %i.br = load ptr, ptr %i.ao, align 8, !tbaa !72
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.bs = shl i32 %indvars.iv.tr, 3
  tail call void %i.bq(ptr noundef nonnull %0, ptr noundef nonnull %.086123, ptr noundef %i.br, ptr noundef %i.bn, i32 noundef %i.bs, i32 noundef 0, i32 noundef %.fr160) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count140
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !91

._crit_edge:                                      ; preds = %.lr.ph.split, %.loopexit.us, %bb.e
  %i.bt = load i32, ptr %i.m, align 8, !tbaa !56
  %i.bu = icmp eq i32 %i.bt, %i.c
  br i1 %i.bu, label %bb.g, label %.loopexit99

bb.g:                                             ; preds = %._crit_edge
  %i.bv = add i32 %spec.select98, %.fr160         ; 3 uses
  %i.bw = udiv i32 %i.bv, %.fr
  %i.bx = load i32, ptr %i.u, align 4, !tbaa !48
  %i.by = icmp slt i32 %.088, %i.bx
  br i1 %i.by, label %.lr.ph114, label %.loopexit99

.lr.ph114:                                        ; preds = %bb.g
  %i.bz = zext i32 %i.bv to i64
  %i.ca = shl nuw nsw i64 %i.bz, 7                ; 3 uses
  %.not = icmp ugt i32 %.fr, %i.bv
  %i.cb = sext i32 %.fr to i64                    ; 2 uses
  br i1 %.not, label %.lr.ph114.split.preheader, label %.lr.ph114.split.us

.lr.ph114.split.preheader:                        ; preds = %.lr.ph114
  %i.cc = sext i32 %.088 to i64
  br label %.lr.ph114.split

.lr.ph114.split.us:                               ; preds = %.lr.ph114
  %i.cd = icmp sgt i32 %.fr, 0
  %i.ce = sext i32 %.088 to i64                   ; 2 uses
  br i1 %i.cd, label %.lr.ph110.us.us.preheader, label %.lr.ph110.us

.lr.ph110.us.us.preheader:                        ; preds = %.lr.ph114.split.us
  %wide.trip.count151 = zext nneg i32 %.fr to i64 ; 2 uses
  %xtraiter173 = and i64 %wide.trip.count151, 3   ; 3 uses
  %i.cf = icmp ult i32 %.fr, 4
  %unroll_iter177 = and i64 %wide.trip.count151, 2147483644
  %lcmp.mod175.not = icmp eq i64 %xtraiter173, 0
  %lcmp.mod176 = icmp ne i64 %xtraiter173, 0
  br label %.lr.ph110.us.us

.lr.ph110.us.us:                                  ; preds = %.lr.ph110.us.us.preheader, %._crit_edge111.split.us.us.us
  %indvars.iv153 = phi i64 [ %i.ce, %.lr.ph110.us.us.preheader ], [ %indvars.iv.next154, %._crit_edge111.split.us.us.us ] ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv153 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !54 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cg, i64 -8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !54
  tail call void @jzero_far(ptr noundef %i.ch, i64 noundef %i.ca) #5
  br label %.lr.ph104.us.us.us

.lr.ph104.us.us.us:                               ; preds = %.lr.ph110.us.us, %._crit_edge105.us.us.us
  %.0108.us.us.us = phi ptr [ %i.cj, %.lr.ph110.us.us ], [ %i.ck, %._crit_edge105.us.us.us ]
  %.085107.us.us.us = phi ptr [ %i.ch, %.lr.ph110.us.us ], [ %i.cv, %._crit_edge105.us.us.us ] ; 6 uses
  %.090106.us.us.us = phi i32 [ 0, %.lr.ph110.us.us ], [ %i.cw, %._crit_edge105.us.us.us ]
  %i.ck = getelementptr [128 x i8], ptr %.0108.us.us.us, i64 %i.cb ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -128
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !75 ; 5 uses
  br i1 %i.cf, label %.epil.preheader172, label %.lr.ph104.us.us.us.new

.lr.ph104.us.us.us.new:                           ; preds = %.lr.ph104.us.us.us, %.lr.ph104.us.us.us.new
  %indvars.iv148 = phi i64 [ %indvars.iv.next149.3, %.lr.ph104.us.us.us.new ], [ 0, %.lr.ph104.us.us.us ] ; 5 uses
  %niter178 = phi i64 [ %niter178.next.3, %.lr.ph104.us.us.us.new ], [ 0, %.lr.ph104.us.us.us ]
  %i.cn = getelementptr inbounds nuw [128 x i8], ptr %.085107.us.us.us, i64 %indvars.iv148
  store i16 %i.cm, ptr %i.cn, align 2, !tbaa !75
  %i.co = getelementptr inbounds nuw [128 x i8], ptr %.085107.us.us.us, i64 %indvars.iv148
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 128
  store i16 %i.cm, ptr %i.cp, align 2, !tbaa !75
  %i.cq = getelementptr inbounds nuw [128 x i8], ptr %.085107.us.us.us, i64 %indvars.iv148
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 256
  store i16 %i.cm, ptr %i.cr, align 2, !tbaa !75
  %i.cs = getelementptr inbounds nuw [128 x i8], ptr %.085107.us.us.us, i64 %indvars.iv148
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 384
  store i16 %i.cm, ptr %i.ct, align 2, !tbaa !75
  %indvars.iv.next149.3 = add nuw nsw i64 %indvars.iv148, 4 ; 2 uses
  %niter178.next.3 = add i64 %niter178, 4         ; 2 uses
  %niter178.ncmp.3 = icmp eq i64 %niter178.next.3, %unroll_iter177
  br i1 %niter178.ncmp.3, label %._crit_edge105.us.us.us.unr-lcssa, label %.lr.ph104.us.us.us.new, !llvm.loop !92

._crit_edge105.us.us.us.unr-lcssa:                ; preds = %.lr.ph104.us.us.us.new
  br i1 %lcmp.mod175.not, label %._crit_edge105.us.us.us, label %.epil.preheader172

.epil.preheader172:                               ; preds = %._crit_edge105.us.us.us.unr-lcssa, %.lr.ph104.us.us.us
  %indvars.iv148.epil.init = phi i64 [ 0, %.lr.ph104.us.us.us ], [ %indvars.iv.next149.3, %._crit_edge105.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod176)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader172
  %indvars.iv148.epil = phi i64 [ %indvars.iv.next149.epil, %bb.h ], [ %indvars.iv148.epil.init, %.epil.preheader172 ] ; 2 uses
  %epil.iter174 = phi i64 [ %epil.iter174.next, %bb.h ], [ 0, %.epil.preheader172 ]
  %i.cu = getelementptr inbounds nuw [128 x i8], ptr %.085107.us.us.us, i64 %indvars.iv148.epil
  store i16 %i.cm, ptr %i.cu, align 2, !tbaa !75
  %indvars.iv.next149.epil = add nuw nsw i64 %indvars.iv148.epil, 1
  %epil.iter174.next = add i64 %epil.iter174, 1   ; 2 uses
  %epil.iter174.cmp.not = icmp eq i64 %epil.iter174.next, %xtraiter173
  br i1 %epil.iter174.cmp.not, label %._crit_edge105.us.us.us, label %bb.h, !llvm.loop !93

._crit_edge105.us.us.us:                          ; preds = %bb.h, %._crit_edge105.us.us.us.unr-lcssa
  %i.cv = getelementptr inbounds nuw [128 x i8], ptr %.085107.us.us.us, i64 %i.cb
  %i.cw = add nuw i32 %.090106.us.us.us, 1        ; 2 uses
  %i.cx = icmp ult i32 %i.cw, %i.bw
  br i1 %i.cx, label %.lr.ph104.us.us.us, label %._crit_edge111.split.us.us.us, !llvm.loop !94

._crit_edge111.split.us.us.us:                    ; preds = %._crit_edge105.us.us.us
  %indvars.iv.next154 = add nsw i64 %indvars.iv153, 1 ; 2 uses
  %i.cy = load i32, ptr %i.u, align 4, !tbaa !48
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next154, %i.cz
  br i1 %i.da, label %.lr.ph110.us.us, label %.loopexit99, !llvm.loop !95

.lr.ph110.us:                                     ; preds = %.lr.ph114.split.us, %.lr.ph110.us
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %.lr.ph110.us ], [ %i.ce, %.lr.ph114.split.us ] ; 2 uses
  %i.db = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv145
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !54
  tail call void @jzero_far(ptr noundef %i.dc, i64 noundef %i.ca) #5
  %indvars.iv.next146 = add nsw i64 %indvars.iv145, 1 ; 2 uses
  %i.dd = load i32, ptr %i.u, align 4, !tbaa !48
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.next146, %i.de
  br i1 %i.df, label %.lr.ph110.us, label %.loopexit99, !llvm.loop !95

.lr.ph114.split:                                  ; preds = %.lr.ph114.split.preheader, %.lr.ph114.split
  %indvars.iv142 = phi i64 [ %i.cc, %.lr.ph114.split.preheader ], [ %indvars.iv.next143, %.lr.ph114.split ] ; 2 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv142
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !54
  tail call void @jzero_far(ptr noundef %i.dh, i64 noundef %i.ca) #5
  %indvars.iv.next143 = add nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.di = load i32, ptr %i.u, align 4, !tbaa !48
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp slt i64 %indvars.iv.next143, %i.dj
  br i1 %i.dk, label %.lr.ph114.split, label %.loopexit99, !llvm.loop !95

.loopexit99:                                      ; preds = %.lr.ph110.us, %._crit_edge111.split.us.us.us, %.lr.ph114.split, %bb.g, %._crit_edge
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.086123, i64 96
  %i.dm = load i32, ptr %i.d, align 4, !tbaa !41
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp slt i64 %indvars.iv.next157, %i.dn
  br i1 %i.do, label %bb.b, label %._crit_edge127, !llvm.loop !96

._crit_edge127:                                   ; preds = %.loopexit99, %bb.a
  %i.dp = tail call i32 @compress_output(ptr noundef nonnull %0, ptr poison)
  ret i32 %i.dp
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @compress_output(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60   ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !71
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.u = load i32, ptr %i.j, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !48   ; 2 uses
  %i.x = mul i32 %i.w, %i.u
  %i.y = tail call ptr %i.o(ptr noundef nonnull %0, ptr noundef %i.t, i32 noundef %i.x, i32 noundef %i.w, i32 noundef 0) #5
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.y, ptr %i.z, align 8, !tbaa !72
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = load i32, ptr %i.d, align 8, !tbaa !57  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !97

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ad = phi i32 [ %i.e, %bb.a ], [ %i.aa, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !63 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !58 ; 2 uses
  %i.ai = icmp slt i32 %i.af, %i.ah
  br i1 %i.ai, label %.lr.ph84, label %._crit_edge85

.lr.ph84:                                         ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ao = sext i32 %i.af to i64
  %.pre = load i32, ptr %i.aj, align 4, !tbaa !62
  %.pre105 = load i32, ptr %i.ak, align 8, !tbaa !65
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph84, %._crit_edge81
  %i.ap = phi i32 [ %i.ah, %.lr.ph84 ], [ %i.cb, %._crit_edge81 ]
  %i.aq = phi i32 [ %.pre105, %.lr.ph84 ], [ %i.cc, %._crit_edge81 ] ; 2 uses
  %i.ar = phi i32 [ %.pre, %.lr.ph84 ], [ 0, %._crit_edge81 ] ; 2 uses
  %indvars.iv102 = phi i64 [ %i.ao, %.lr.ph84 ], [ %indvars.iv.next103, %._crit_edge81 ] ; 3 uses
  %i.as = icmp ult i32 %i.ar, %i.aq
  br i1 %i.as, label %.preheader, label %._crit_edge81

.preheader:                                       ; preds = %bb.c, %bb.e
  %.05980 = phi i32 [ %i.by, %bb.e ], [ %i.ar, %bb.c ] ; 3 uses
  %i.at = load i32, ptr %i.d, align 8, !tbaa !57  ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph78.preheader, label %._crit_edge79

.lr.ph78.preheader:                               ; preds = %.preheader
  %wide.trip.count100 = zext nneg i32 %i.at to i64
  br label %.lr.ph78

.lr.ph78:                                         ; preds = %.lr.ph78.preheader, %._crit_edge74
  %indvars.iv97 = phi i64 [ 0, %.lr.ph78.preheader ], [ %indvars.iv.next98, %._crit_edge74 ] ; 3 uses
  %.05776 = phi i32 [ 0, %.lr.ph78.preheader ], [ %.158.lcssa, %._crit_edge74 ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv97
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !60 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !74 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 60
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !67 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph73, label %._crit_edge74

.lr.ph73:                                         ; preds = %.lr.ph78
  %i.bc = mul i32 %i.ay, %.05980
  %i.bd = zext i32 %i.bc to i64
  %i.be = icmp sgt i32 %i.ay, 0
  br i1 %i.be, label %.lr.ph68.us.preheader, label %._crit_edge74

.lr.ph68.us.preheader:                            ; preds = %.lr.ph73
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv97
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !72
  %wide.trip.count = zext nneg i32 %i.ba to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.bg, i64 %indvars.iv102
  %i.bh = zext nneg i32 %i.ay to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ay, 4
end_hunk_0
