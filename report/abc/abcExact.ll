Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcExact?download=true
inline.NumInlined: 443
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 27
begin_hunk_0_@Ses_ManFindNetworkExact:bb.a
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !252
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1084 ; 8 uses
  store i32 0, ptr %i.bu, align 4, !tbaa !253
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 24 uses
  store i32 %i.bs, ptr %i.bv, align 8, !tbaa !254
  %i.bw = add nsw i32 %i.bs, %i.bh                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1076 ; 15 uses
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !255
  %i.by = add nsw i32 %i.bw, %i.af                ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 6 uses
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !256
  %i.ca = add nsw i32 %i.by, %i.ad
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1068
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !257
  %i.cc = load ptr, ptr %0, align 8, !tbaa !104   ; 2 uses
  %.not54.i = icmp eq ptr %i.cc, null
  br i1 %.not54.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @sat_solver_restart(ptr noundef nonnull %i.cc) #30
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !104
  br label %Ses_ManCreateVars.exit

bb.i:                                             ; preds = %bb.g
  %i.cd = call ptr @sat_solver_new() #30          ; 2 uses
  store ptr %i.cd, ptr %0, align 8, !tbaa !104
  br label %Ses_ManCreateVars.exit

Ses_ManCreateVars.exit:                           ; preds = %bb.h, %bb.i
  %i.ce = phi ptr [ %i.cd, %bb.i ], [ %.pre.i, %bb.h ]
  %i.cf = load <4 x i32>, ptr %i.aa, align 8, !tbaa !10
  %i.cg = load i32, ptr %i.bt, align 8, !tbaa !252
  %i.ch = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cf)
  %op.rdx = add i32 %i.ch, %i.cg
  call void @sat_solver_setnvars(ptr noundef %i.ce, i32 noundef %op.rdx) #30
  %i.ci = load i32, ptr %i.bi, align 4, !tbaa !112
  %.not = icmp eq i32 %i.ci, -1
  br i1 %.not, label %bb.ac, label %bb.j

bb.j:                                             ; preds = %Ses_ManCreateVars.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.cj = load i32, ptr %i.w, align 8, !tbaa !151
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.preheader173.lr.ph.i, label %Ses_ManCreateDepthClauses.exit

.preheader173.lr.ph.i:                            ; preds = %bb.j
  %i.cl = getelementptr i8, ptr %0, i64 92        ; 9 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br label %.preheader173.i

.preheader173.i:                                  ; preds = %.loopexit.i, %.preheader173.lr.ph.i
  %.0111204.i = phi i32 [ 0, %.preheader173.lr.ph.i ], [ %i.nt, %.loopexit.i ] ; 30 uses
  %i.cq = icmp samesign ugt i32 %.0111204.i, 1
  br i1 %i.cq, label %.preheader167.lr.ph.i, label %.preheader172.i

.preheader167.lr.ph.i:                            ; preds = %.preheader173.i
  %i.cr = add nuw nsw i32 %.0111204.i, 1
  %i.cs = mul nuw nsw i32 %i.cr, %.0111204.i      ; 2 uses
  br label %.preheader167.i

.preheader172.i:                                  ; preds = %.preheader173.i
  %.not206.i = icmp eq i32 %.0111204.i, 0
  br i1 %.not206.i, label %._crit_edge190.i, label %.preheader166.lr.ph.i

.preheader166.lr.ph.i:                            ; preds = %bb.l, %.preheader172.i
  %.pre-phi224 = phi i32 [ 2, %.preheader172.i ], [ %i.cs, %bb.l ]
  %.pre.i29 = load i32, ptr %i.ai, align 4, !tbaa !108 ; 2 uses
  br label %.preheader166.i

.preheader167.i:                                  ; preds = %bb.l, %.preheader167.lr.ph.i
  %.0107182.i = phi i32 [ 1, %.preheader167.lr.ph.i ], [ %i.eu, %bb.l ] ; 3 uses
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %._crit_edge.i32, %.preheader167.i
  %.0108181.i = phi i32 [ 0, %.preheader167.i ], [ %.pre225.i, %._crit_edge.i32 ] ; 6 uses
  %i.ct = load i32, ptr %i.ai, align 4, !tbaa !108 ; 8 uses
  %.val126.i = load i32, ptr %i.bv, align 8, !tbaa !254 ; 2 uses
  %i.cu = add nsw i32 %i.ct, %.0111204.i          ; 3 uses
  %i.cv = add nsw i32 %i.ct, 1
  %i.cw = call i32 @llvm.smax.i32(i32 %i.cu, i32 %i.cv)
  %i.cx = sub i32 %i.cw, %i.ct                    ; 3 uses
  %min.iters.check588 = icmp ult i32 %i.cx, 8
  br i1 %min.iters.check588, label %.lr.ph.i.i.preheader, label %vector.ph589

vector.ph589:                                     ; preds = %.lr.ph.i.preheader.i
  %n.vec590 = and i32 %i.cx, -8                   ; 3 uses
  %i.cy = add i32 %i.ct, %n.vec590
  %i.cz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.val126.i, i64 0
  %broadcast.splatinsert591 = insertelement <4 x i32> poison, i32 %i.ct, i64 0
  %broadcast.splat592 = shufflevector <4 x i32> %broadcast.splatinsert591, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction593 = add nsw <4 x i32> %broadcast.splat592, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body594

vector.body594:                                   ; preds = %vector.body594, %vector.ph589
  %index595 = phi i32 [ 0, %vector.ph589 ], [ %index.next600, %vector.body594 ]
  %vec.phi596 = phi <4 x i32> [ %i.cz, %vector.ph589 ], [ %i.dg, %vector.body594 ]
  %vec.phi597 = phi <4 x i32> [ zeroinitializer, %vector.ph589 ], [ %i.dh, %vector.body594 ]
  %vec.ind598 = phi <4 x i32> [ %induction593, %vector.ph589 ], [ %vec.ind.next601, %vector.body594 ] ; 5 uses
  %step.add599 = add nsw <4 x i32> %vec.ind598, splat (i32 4)
  %i.da = add nsw <4 x i32> %vec.ind598, splat (i32 -1)
  %i.db = add nsw <4 x i32> %vec.ind598, splat (i32 3)
  %i.dc = mul nsw <4 x i32> %i.da, %vec.ind598
  %i.dd = mul nsw <4 x i32> %i.db, %step.add599
  %i.de = sdiv <4 x i32> %i.dc, splat (i32 2)
  %i.df = sdiv <4 x i32> %i.dd, splat (i32 2)
  %i.dg = add <4 x i32> %i.de, %vec.phi596        ; 2 uses
  %i.dh = add <4 x i32> %i.df, %vec.phi597        ; 2 uses
  %index.next600 = add nuw i32 %index595, 8       ; 2 uses
  %vec.ind.next601 = add nsw <4 x i32> %vec.ind598, splat (i32 8)
  %i.di = icmp eq i32 %index.next600, %n.vec590
  br i1 %i.di, label %middle.block602, label %vector.body594, !llvm.loop !258

middle.block602:                                  ; preds = %vector.body594
  %bin.rdx603 = add <4 x i32> %i.dh, %i.dg
  %i.dj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx603) ; 2 uses
  %cmp.n604 = icmp eq i32 %i.cx, %n.vec590
  br i1 %cmp.n604, label %Ses_ManSelectVar.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block602
  %.02.i.i.ph = phi i32 [ %.val126.i, %.lr.ph.i.preheader.i ], [ %i.dj, %middle.block602 ]
  %.0151.i.i.ph = phi i32 [ %i.ct, %.lr.ph.i.preheader.i ], [ %i.cy, %middle.block602 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.02.i.i = phi i32 [ %i.dn, %.lr.ph.i.i ], [ %.02.i.i.ph, %.lr.ph.i.i.preheader ]
  %.0151.i.i = phi i32 [ %i.do, %.lr.ph.i.i ], [ %.0151.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.dk = add nsw i32 %.0151.i.i, -1
  %i.dl = mul nsw i32 %i.dk, %.0151.i.i
  %i.dm = sdiv i32 %i.dl, 2
  %i.dn = add nsw i32 %i.dm, %.02.i.i             ; 2 uses
  %i.do = add nsw i32 %.0151.i.i, 1               ; 2 uses
  %i.dp = icmp slt i32 %i.do, %i.cu
  br i1 %i.dp, label %.lr.ph.i.i, label %Ses_ManSelectVar.exit.loopexit.i, !llvm.loop !259

Ses_ManSelectVar.exit.loopexit.i:                 ; preds = %.lr.ph.i.i, %middle.block602
  %.lcssa538 = phi i32 [ %i.dj, %middle.block602 ], [ %i.dn, %.lr.ph.i.i ]
  %i.dq = add nsw i32 %i.ct, %.0108181.i          ; 2 uses
  %i.dr = add nsw i32 %i.ct, %.0107182.i
  %.neg18.i.i = xor i32 %i.dq, -1                 ; 2 uses
  %i.ds = shl nsw i32 %i.cu, 1
  %.neg.i.i = add i32 %i.ds, %.neg18.i.i
  %.neg17.i.i = mul i32 %.neg.i.i, %i.dq
  %i.dt = sdiv i32 %.neg17.i.i, 2
  %i.du = add i32 %i.dr, %.neg18.i.i
  %i.dv = add i32 %i.du, %i.dt
  %i.dw = add i32 %i.dv, %.lcssa538
  %i.dx = shl nsw i32 %i.dw, 1
  %i.dy = or disjoint i32 %i.dx, 1
  store i32 %i.dy, ptr %i.b, align 4, !tbaa !10
  %i.dz = load i32, ptr %i.cl, align 4, !tbaa !251 ; 2 uses
  %i.ea = add nsw i32 %i.dz, %.0108181.i
  %.not121179.i = icmp slt i32 %i.ea, 0
  %.pre225.i = add nuw nsw i32 %.0108181.i, 1     ; 3 uses
  br i1 %.not121179.i, label %._crit_edge.i32, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %Ses_ManSelectVar.exit.loopexit.i
  %i.eb = mul nuw nsw i32 %.pre225.i, %.0108181.i
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i31
  %i.ec = phi i32 [ %i.dz, %.lr.ph.i31 ], [ %i.es, %bb.k ] ; 2 uses
  %.0106180.i = phi i32 [ 0, %.lr.ph.i31 ], [ %i.ej, %bb.k ] ; 3 uses
  %.val144.i = load i32, ptr %i.bu, align 4, !tbaa !253 ; 2 uses
  %i.ed = mul nsw i32 %i.ec, %.0108181.i
  %i.ee = add i32 %i.ed, %.0106180.i
  %i.ef = add i32 %i.ee, %.val144.i
  %i.eg = shl i32 %i.ef, 1
  %i.eh = add i32 %i.eg, %i.eb
  %i.ei = or i32 %i.eh, 1
  store i32 %i.ei, ptr %i.cm, align 4, !tbaa !10
  %i.ej = add nuw nsw i32 %.0106180.i, 1          ; 2 uses
  %i.ek = mul nsw i32 %i.ec, %.0111204.i
  %i.el = add i32 %i.ej, %i.ek
  %i.em = add i32 %i.el, %.val144.i
  %i.en = shl i32 %i.em, 1
  %i.eo = add i32 %i.en, %i.cs
  %i.ep = and i32 %i.eo, -2
  store i32 %i.ep, ptr %i.cn, align 4, !tbaa !10
  %i.eq = load ptr, ptr %0, align 8, !tbaa !104
  %i.er = call i32 @sat_solver_addclause(ptr noundef %i.eq, ptr noundef nonnull %i.b, ptr noundef nonnull %i.co) #30 ; 0 uses
  %i.es = load i32, ptr %i.cl, align 4, !tbaa !251 ; 2 uses
  %i.et = add nsw i32 %i.es, %.0108181.i
  %.not121.not.i = icmp slt i32 %.0106180.i, %i.et
  br i1 %.not121.not.i, label %bb.k, label %._crit_edge.i32, !llvm.loop !260

._crit_edge.i32:                                  ; preds = %bb.k, %Ses_ManSelectVar.exit.loopexit.i
  %exitcond.not.i = icmp eq i32 %.pre225.i, %.0107182.i
  br i1 %exitcond.not.i, label %bb.l, label %.lr.ph.i.preheader.i, !llvm.loop !261

bb.l:                                             ; preds = %._crit_edge.i32
  %i.eu = add nuw nsw i32 %.0107182.i, 1          ; 2 uses
  %exitcond212.not.i = icmp eq i32 %i.eu, %.0111204.i
  br i1 %exitcond212.not.i, label %.preheader166.lr.ph.i, label %.preheader167.i, !llvm.loop !262

.preheader166.i:                                  ; preds = %._crit_edge188.i, %.preheader166.lr.ph.i
  %i.ev = phi i32 [ %.pre.i29, %.preheader166.lr.ph.i ], [ %i.he, %._crit_edge188.i ] ; 2 uses
  %i.ew = phi i32 [ %.pre.i29, %.preheader166.lr.ph.i ], [ %i.hf, %._crit_edge188.i ] ; 3 uses
  %.1189.i = phi i32 [ 0, %.preheader166.lr.ph.i ], [ %i.ez, %._crit_edge188.i ] ; 7 uses
  %invariant.op.i = sub nsw i32 0, %.1189.i
  %i.ex = add nsw i32 %.1189.i, %i.ew             ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, 0
  %i.ez = add nuw nsw i32 %.1189.i, 1             ; 3 uses
  br i1 %i.ey, label %.lr.ph.i151.preheader.lr.ph.i, label %._crit_edge188.i

.lr.ph.i151.preheader.lr.ph.i:                    ; preds = %.preheader166.i
  %i.fa = mul nuw nsw i32 %i.ez, %.1189.i
  br label %.lr.ph.i151.preheader.i

.lr.ph.i151.preheader.i:                          ; preds = %._crit_edge186.i, %.lr.ph.i151.preheader.lr.ph.i
  %i.fb = phi i32 [ %i.ev, %.lr.ph.i151.preheader.lr.ph.i ], [ %i.ha, %._crit_edge186.i ]
  %i.fc = phi i32 [ %i.ex, %.lr.ph.i151.preheader.lr.ph.i ], [ %i.hc, %._crit_edge186.i ]
  %i.fd = phi i32 [ %i.ew, %.lr.ph.i151.preheader.lr.ph.i ], [ %i.ha, %._crit_edge186.i ] ; 6 uses
  %.1109187.i = phi i32 [ 0, %.lr.ph.i151.preheader.lr.ph.i ], [ %i.hb, %._crit_edge186.i ] ; 3 uses
  %.val124.i = load i32, ptr %i.bv, align 8, !tbaa !254 ; 2 uses
  %i.fe = add nsw i32 %i.fd, %.0111204.i          ; 3 uses
  %i.ff = add nsw i32 %i.fd, 1
  %i.fg = call i32 @llvm.smax.i32(i32 %i.fe, i32 %i.ff)
  %i.fh = sub i32 %i.fg, %i.fd                    ; 3 uses
  %min.iters.check568 = icmp ult i32 %i.fh, 8
  br i1 %min.iters.check568, label %.lr.ph.i151.i.preheader, label %vector.ph569

vector.ph569:                                     ; preds = %.lr.ph.i151.preheader.i
  %n.vec570 = and i32 %i.fh, -8                   ; 3 uses
  %i.fi = add i32 %i.fd, %n.vec570
  %i.fj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.val124.i, i64 0
  %broadcast.splatinsert571 = insertelement <4 x i32> poison, i32 %i.fd, i64 0
  %broadcast.splat572 = shufflevector <4 x i32> %broadcast.splatinsert571, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction573 = add nsw <4 x i32> %broadcast.splat572, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body574

vector.body574:                                   ; preds = %vector.body574, %vector.ph569
  %index575 = phi i32 [ 0, %vector.ph569 ], [ %index.next580, %vector.body574 ]
  %vec.phi576 = phi <4 x i32> [ %i.fj, %vector.ph569 ], [ %i.fq, %vector.body574 ]
  %vec.phi577 = phi <4 x i32> [ zeroinitializer, %vector.ph569 ], [ %i.fr, %vector.body574 ]
  %vec.ind578 = phi <4 x i32> [ %induction573, %vector.ph569 ], [ %vec.ind.next581, %vector.body574 ] ; 5 uses
  %step.add579 = add nsw <4 x i32> %vec.ind578, splat (i32 4)
  %i.fk = add nsw <4 x i32> %vec.ind578, splat (i32 -1)
  %i.fl = add nsw <4 x i32> %vec.ind578, splat (i32 3)
  %i.fm = mul nsw <4 x i32> %i.fk, %vec.ind578
  %i.fn = mul nsw <4 x i32> %i.fl, %step.add579
  %i.fo = sdiv <4 x i32> %i.fm, splat (i32 2)
  %i.fp = sdiv <4 x i32> %i.fn, splat (i32 2)
  %i.fq = add <4 x i32> %i.fo, %vec.phi576        ; 2 uses
  %i.fr = add <4 x i32> %i.fp, %vec.phi577        ; 2 uses
  %index.next580 = add nuw i32 %index575, 8       ; 2 uses
  %vec.ind.next581 = add nsw <4 x i32> %vec.ind578, splat (i32 8)
  %i.fs = icmp eq i32 %index.next580, %n.vec570
  br i1 %i.fs, label %middle.block582, label %vector.body574, !llvm.loop !263

middle.block582:                                  ; preds = %vector.body574
  %bin.rdx583 = add <4 x i32> %i.fr, %i.fq
  %i.ft = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx583) ; 2 uses
  %cmp.n584 = icmp eq i32 %i.fh, %n.vec570
  br i1 %cmp.n584, label %Ses_ManSelectVar.exit154.loopexit.i, label %.lr.ph.i151.i.preheader

.lr.ph.i151.i.preheader:                          ; preds = %.lr.ph.i151.preheader.i, %middle.block582
  %.02.i152.i.ph = phi i32 [ %.val124.i, %.lr.ph.i151.preheader.i ], [ %i.ft, %middle.block582 ]
  %.0151.i153.i.ph = phi i32 [ %i.fd, %.lr.ph.i151.preheader.i ], [ %i.fi, %middle.block582 ]
  br label %.lr.ph.i151.i

.lr.ph.i151.i:                                    ; preds = %.lr.ph.i151.i.preheader, %.lr.ph.i151.i
  %.02.i152.i = phi i32 [ %i.fx, %.lr.ph.i151.i ], [ %.02.i152.i.ph, %.lr.ph.i151.i.preheader ]
  %.0151.i153.i = phi i32 [ %i.fy, %.lr.ph.i151.i ], [ %.0151.i153.i.ph, %.lr.ph.i151.i.preheader ] ; 3 uses
  %i.fu = add nsw i32 %.0151.i153.i, -1
  %i.fv = mul nsw i32 %i.fu, %.0151.i153.i
  %i.fw = sdiv i32 %i.fv, 2
  %i.fx = add nsw i32 %i.fw, %.02.i152.i          ; 2 uses
  %i.fy = add nsw i32 %.0151.i153.i, 1            ; 2 uses
  %i.fz = icmp slt i32 %i.fy, %i.fe
  br i1 %i.fz, label %.lr.ph.i151.i, label %Ses_ManSelectVar.exit154.loopexit.i, !llvm.loop !264

Ses_ManSelectVar.exit154.loopexit.i:              ; preds = %.lr.ph.i151.i, %middle.block582
  %.lcssa539 = phi i32 [ %i.ft, %middle.block582 ], [ %i.fx, %.lr.ph.i151.i ]
  %.neg18.i148.i = xor i32 %.1109187.i, -1        ; 2 uses
  %i.ga = shl nsw i32 %i.fe, 1
  %.neg.i149.i = add i32 %i.ga, %.neg18.i148.i
  %.neg17.i150.i = mul i32 %.neg.i149.i, %.1109187.i
  %i.gb = sdiv i32 %.neg17.i150.i, 2
  %i.gc = add i32 %i.fc, %.neg18.i148.i
  %i.gd = add i32 %i.gc, %i.gb
  %i.ge = add i32 %i.gd, %.lcssa539
  %i.gf = shl nsw i32 %i.ge, 1
  %i.gg = or disjoint i32 %i.gf, 1
  store i32 %i.gg, ptr %i.b, align 4, !tbaa !10
  %i.gh = load i32, ptr %i.cl, align 4, !tbaa !251 ; 2 uses
  %.not120183.i = icmp slt i32 %i.gh, %invariant.op.i
  br i1 %.not120183.i, label %._crit_edge186.i, label %.lr.ph185.i

.lr.ph185.i:                                      ; preds = %Ses_ManSelectVar.exit154.loopexit.i, %.lr.ph185.i
  %i.gi = phi i32 [ %i.gy, %.lr.ph185.i ], [ %i.gh, %Ses_ManSelectVar.exit154.loopexit.i ] ; 2 uses
  %.0105184.i = phi i32 [ %i.gp, %.lr.ph185.i ], [ 0, %Ses_ManSelectVar.exit154.loopexit.i ] ; 3 uses
  %.val140.i = load i32, ptr %i.bu, align 4, !tbaa !253 ; 2 uses
  %i.gj = mul nsw i32 %i.gi, %.1189.i
  %i.gk = add i32 %i.gj, %.0105184.i
  %i.gl = add i32 %i.gk, %.val140.i
  %i.gm = shl i32 %i.gl, 1
  %i.gn = add i32 %i.gm, %i.fa
  %i.go = or i32 %i.gn, 1
  store i32 %i.go, ptr %i.cm, align 4, !tbaa !10
  %i.gp = add nuw nsw i32 %.0105184.i, 1          ; 2 uses
  %i.gq = mul nsw i32 %i.gi, %.0111204.i
  %i.gr = add i32 %i.gp, %i.gq
  %i.gs = add i32 %i.gr, %.val140.i
  %i.gt = shl i32 %i.gs, 1
  %i.gu = add i32 %i.gt, %.pre-phi224
  %i.gv = and i32 %i.gu, -2
  store i32 %i.gv, ptr %i.cn, align 4, !tbaa !10
  %i.gw = load ptr, ptr %0, align 8, !tbaa !104
  %i.gx = call i32 @sat_solver_addclause(ptr noundef %i.gw, ptr noundef nonnull %i.b, ptr noundef nonnull %i.co) #30 ; 0 uses
  %i.gy = load i32, ptr %i.cl, align 4, !tbaa !251 ; 2 uses
  %i.gz = add nsw i32 %i.gy, %.1189.i
  %.not120.not.i = icmp slt i32 %.0105184.i, %i.gz
  br i1 %.not120.not.i, label %.lr.ph185.i, label %._crit_edge186.loopexit.i, !llvm.loop !265

._crit_edge186.loopexit.i:                        ; preds = %.lr.ph185.i
  %.pre223.i = load i32, ptr %i.ai, align 4, !tbaa !108
  br label %._crit_edge186.i

._crit_edge186.i:                                 ; preds = %._crit_edge186.loopexit.i, %Ses_ManSelectVar.exit154.loopexit.i
  %i.ha = phi i32 [ %.pre223.i, %._crit_edge186.loopexit.i ], [ %i.fb, %Ses_ManSelectVar.exit154.loopexit.i ] ; 5 uses
  %i.hb = add nuw nsw i32 %.1109187.i, 1          ; 2 uses
  %i.hc = add nsw i32 %i.ha, %.1189.i             ; 2 uses
  %i.hd = icmp slt i32 %i.hb, %i.hc
  br i1 %i.hd, label %.lr.ph.i151.preheader.i, label %._crit_edge188.i, !llvm.loop !266

._crit_edge188.i:                                 ; preds = %._crit_edge186.i, %.preheader166.i
  %i.he = phi i32 [ %i.ev, %.preheader166.i ], [ %i.ha, %._crit_edge186.i ]
  %i.hf = phi i32 [ %i.ew, %.preheader166.i ], [ %i.ha, %._crit_edge186.i ]
  %exitcond213.not.i = icmp eq i32 %i.ez, %.0111204.i
  br i1 %exitcond213.not.i, label %._crit_edge190.i, label %.preheader166.i, !llvm.loop !267

._crit_edge190.i:                                 ; preds = %._crit_edge188.i, %.preheader172.i
  %.not206246.i = phi i1 [ true, %.preheader172.i ], [ false, %._crit_edge188.i ]
  %i.hg = load ptr, ptr %i.cp, align 8, !tbaa !113
  %.not.i30 = icmp eq ptr %i.hg, null
  br i1 %.not.i30, label %bb.o, label %.preheader170.i

.preheader170.i:                                  ; preds = %._crit_edge190.i
  %i.hh = load i32, ptr %i.ai, align 4, !tbaa !108 ; 3 uses
  %i.hi = add nsw i32 %i.hh, %.0111204.i
  %i.hj = icmp sgt i32 %i.hi, 1
  br i1 %i.hj, label %.preheader.lr.ph.i, label %.loopexit171.i

.preheader.lr.ph.i:                               ; preds = %.preheader170.i
  %i.hk = add nuw nsw i32 %.0111204.i, 1
  %i.hl = mul nuw nsw i32 %i.hk, %.0111204.i
  br i1 %.not206246.i, label %.preheader.i.us, label %.preheader.i

.preheader.i.us:                                  ; preds = %.preheader.lr.ph.i, %._crit_edge194.i.us
  %i.hm = phi i32 [ %i.im, %._crit_edge194.i.us ], [ %i.hh, %.preheader.lr.ph.i ] ; 3 uses
  %indvars.iv220.i.us = phi i64 [ %indvars.iv.next221.i.us, %._crit_edge194.i.us ], [ 1, %.preheader.lr.ph.i ] ; 4 uses
  %i.hn = icmp sgt i32 %i.hm, 0
  br i1 %i.hn, label %.lr.ph193.i.us, label %._crit_edge194.i.us

.lr.ph193.i.us:                                   ; preds = %.preheader.i.us
  %i.ho = trunc nuw nsw i64 %indvars.iv220.i.us to i32 ; 2 uses
  br label %.lr.ph193.split.us.i.us

.lr.ph193.split.us.i.us:                          ; preds = %.lr.ph193.i.us, %Ses_ManSelectVar.exit162.us.i.us
  %indvars.iv216.i.us = phi i64 [ %indvars.iv.next217.i.us, %Ses_ManSelectVar.exit162.us.i.us ], [ 0, %.lr.ph193.i.us ] ; 3 uses
  %i.hp = phi i32 [ %i.ij, %Ses_ManSelectVar.exit162.us.i.us ], [ %i.hm, %.lr.ph193.i.us ] ; 2 uses
  %i.hq = sext i32 %i.hp to i64
  %i.hr = icmp slt i64 %indvars.iv220.i.us, %i.hq
  %i.hs = load ptr, ptr %i.cp, align 8, !tbaa !113 ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv216.i.us
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !10 ; 2 uses
  br i1 %i.hr, label %bb.m, label %Ses_ManSelectVar.exit162.us.i.us

bb.m:                                             ; preds = %.lr.ph193.split.us.i.us
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv220.i.us
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !10
  %spec.select.us.i.us = call i32 @llvm.smax.i32(i32 %i.hw, i32 %i.hu)
  br label %Ses_ManSelectVar.exit162.us.i.us

Ses_ManSelectVar.exit162.us.i.us:                 ; preds = %bb.m, %.lr.ph193.split.us.i.us
  %.0104.us.i.us = phi i32 [ %i.hu, %.lr.ph193.split.us.i.us ], [ %spec.select.us.i.us, %bb.m ]
  %.val122.us.i.us = load i32, ptr %i.bv, align 8, !tbaa !254
  %i.hx = trunc nuw nsw i64 %indvars.iv216.i.us to i32 ; 2 uses
  %.neg18.i156.us.i.us = xor i32 %i.hx, -1        ; 2 uses
  %i.hy = shl nsw i32 %i.hp, 1
  %.neg.i157.us.i.us = add i32 %i.hy, %.neg18.i156.us.i.us
  %.neg17.i158.us.i.us = mul i32 %.neg.i157.us.i.us, %i.hx
  %i.hz = sdiv i32 %.neg17.i158.us.i.us, 2
  %i.ia = add nsw i32 %.neg18.i156.us.i.us, %i.ho
  %i.ib = add i32 %i.ia, %i.hz
  %i.ic = add i32 %i.ib, %.val122.us.i.us
  %i.id = shl nsw i32 %i.ic, 1
  %i.ie = or disjoint i32 %i.id, 1
  store i32 %i.ie, ptr %i.b, align 4, !tbaa !10
  %.val136.us.i.us = load i32, ptr %i.bu, align 4, !tbaa !253
  %i.if = add i32 %.val136.us.i.us, %.0104.us.i.us
  %i.ig = shl i32 %i.if, 1
  store i32 %i.ig, ptr %i.cm, align 4, !tbaa !10
  %i.ih = load ptr, ptr %0, align 8, !tbaa !104
  %i.ii = call i32 @sat_solver_addclause(ptr noundef %i.ih, ptr noundef nonnull %i.b, ptr noundef nonnull %i.cn) #30 ; 0 uses
  %indvars.iv.next217.i.us = add nuw nsw i64 %indvars.iv216.i.us, 1 ; 2 uses
  %i.ij = load i32, ptr %i.ai, align 4, !tbaa !108 ; 3 uses
  %.2..us.i.us = call i32 @llvm.smin.i32(i32 %i.ho, i32 %i.ij)
  %i.ik = sext i32 %.2..us.i.us to i64
  %i.il = icmp slt i64 %indvars.iv.next217.i.us, %i.ik
  br i1 %i.il, label %.lr.ph193.split.us.i.us, label %._crit_edge194.i.us, !llvm.loop !268

._crit_edge194.i.us:                              ; preds = %Ses_ManSelectVar.exit162.us.i.us, %.preheader.i.us
  %i.im = phi i32 [ %i.hm, %.preheader.i.us ], [ %i.ij, %Ses_ManSelectVar.exit162.us.i.us ] ; 2 uses
  %indvars.iv.next221.i.us = add nuw nsw i64 %indvars.iv220.i.us, 1 ; 2 uses
  %i.in = add nsw i32 %i.im, %.0111204.i
  %i.io = sext i32 %i.in to i64
  %i.ip = icmp slt i64 %indvars.iv.next221.i.us, %i.io
  br i1 %i.ip, label %.preheader.i.us, label %.loopexit171.i, !llvm.loop !269

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %._crit_edge194.i
  %i.iq = phi i32 [ %i.kq, %._crit_edge194.i ], [ %i.hh, %.preheader.lr.ph.i ] ; 3 uses
  %indvars.iv220.i = phi i64 [ %indvars.iv.next221.i, %._crit_edge194.i ], [ 1, %.preheader.lr.ph.i ] ; 4 uses
  %i.ir = icmp sgt i32 %i.iq, 0
  br i1 %i.ir, label %.lr.ph193.i, label %._crit_edge194.i

.lr.ph193.i:                                      ; preds = %.preheader.i
  %i.is = trunc nuw nsw i64 %indvars.iv220.i to i32 ; 2 uses
  br label %.lr.ph193.split.i

.lr.ph193.split.i:                                ; preds = %.lr.ph193.i, %Ses_ManSelectVar.exit162.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %Ses_ManSelectVar.exit162.loopexit.i ], [ 0, %.lr.ph193.i ] ; 3 uses
  %i.it = phi i32 [ %i.kn, %Ses_ManSelectVar.exit162.loopexit.i ], [ %i.iq, %.lr.ph193.i ] ; 7 uses
  %i.iu = sext i32 %i.it to i64
  %i.iv = icmp slt i64 %indvars.iv220.i, %i.iu
  %i.iw = load ptr, ptr %i.cp, align 8, !tbaa !113 ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv.i
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !10 ; 2 uses
  br i1 %i.iv, label %bb.n, label %.lr.ph.i159.preheader.i

bb.n:                                             ; preds = %.lr.ph193.split.i
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv220.i
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !10
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.ja, i32 %i.iy)
  br label %.lr.ph.i159.preheader.i

.lr.ph.i159.preheader.i:                          ; preds = %bb.n, %.lr.ph193.split.i
  %.0104.i = phi i32 [ %i.iy, %.lr.ph193.split.i ], [ %spec.select.i, %bb.n ]
  %.val122.i = load i32, ptr %i.bv, align 8, !tbaa !254 ; 2 uses
  %i.jb = add nsw i32 %i.it, %.0111204.i          ; 3 uses
  %i.jc = add i32 %i.it, 1
  %i.jd = call i32 @llvm.smax.i32(i32 %i.jb, i32 %i.jc)
  %i.je = sub i32 %i.jd, %i.it                    ; 3 uses
  %min.iters.check548 = icmp ult i32 %i.je, 8
  br i1 %min.iters.check548, label %.lr.ph.i159.i.preheader, label %vector.ph549

vector.ph549:                                     ; preds = %.lr.ph.i159.preheader.i
  %n.vec550 = and i32 %i.je, -8                   ; 3 uses
  %i.jf = add i32 %i.it, %n.vec550
  %i.jg = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.val122.i, i64 0
  %broadcast.splatinsert551 = insertelement <4 x i32> poison, i32 %i.it, i64 0
  %broadcast.splat552 = shufflevector <4 x i32> %broadcast.splatinsert551, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction553 = add nsw <4 x i32> %broadcast.splat552, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body554

vector.body554:                                   ; preds = %vector.body554, %vector.ph549
  %index555 = phi i32 [ 0, %vector.ph549 ], [ %index.next560, %vector.body554 ]
  %vec.phi556 = phi <4 x i32> [ %i.jg, %vector.ph549 ], [ %i.jn, %vector.body554 ]
  %vec.phi557 = phi <4 x i32> [ zeroinitializer, %vector.ph549 ], [ %i.jo, %vector.body554 ]
  %vec.ind558 = phi <4 x i32> [ %induction553, %vector.ph549 ], [ %vec.ind.next561, %vector.body554 ] ; 5 uses
  %step.add559 = add nsw <4 x i32> %vec.ind558, splat (i32 4)
  %i.jh = add nsw <4 x i32> %vec.ind558, splat (i32 -1)
  %i.ji = add nsw <4 x i32> %vec.ind558, splat (i32 3)
  %i.jj = mul nsw <4 x i32> %i.jh, %vec.ind558
  %i.jk = mul nsw <4 x i32> %i.ji, %step.add559
  %i.jl = sdiv <4 x i32> %i.jj, splat (i32 2)
  %i.jm = sdiv <4 x i32> %i.jk, splat (i32 2)
  %i.jn = add <4 x i32> %i.jl, %vec.phi556        ; 2 uses
  %i.jo = add <4 x i32> %i.jm, %vec.phi557        ; 2 uses
  %index.next560 = add nuw i32 %index555, 8       ; 2 uses
  %vec.ind.next561 = add nsw <4 x i32> %vec.ind558, splat (i32 8)
  %i.jp = icmp eq i32 %index.next560, %n.vec550
  br i1 %i.jp, label %middle.block562, label %vector.body554, !llvm.loop !270

middle.block562:                                  ; preds = %vector.body554
  %bin.rdx563 = add <4 x i32> %i.jo, %i.jn
  %i.jq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx563) ; 2 uses
  %cmp.n564 = icmp eq i32 %i.je, %n.vec550
  br i1 %cmp.n564, label %Ses_ManSelectVar.exit162.loopexit.i, label %.lr.ph.i159.i.preheader

.lr.ph.i159.i.preheader:                          ; preds = %.lr.ph.i159.preheader.i, %middle.block562
  %.02.i160.i.ph = phi i32 [ %.val122.i, %.lr.ph.i159.preheader.i ], [ %i.jq, %middle.block562 ]
  %.0151.i161.i.ph = phi i32 [ %i.it, %.lr.ph.i159.preheader.i ], [ %i.jf, %middle.block562 ]
  br label %.lr.ph.i159.i

.lr.ph.i159.i:                                    ; preds = %.lr.ph.i159.i.preheader, %.lr.ph.i159.i
end_hunk_0
begin_hunk_1_@Ses_ManFindNetworkExact:bb.a
bb.ci:                                            ; preds = %bb.ch
  %i.xz = call ptr @realloc(ptr noundef nonnull %.val.i5561420.i, i64 noundef %i.xy) #29
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.ya = call noalias ptr @malloc(i64 noundef %i.xy) #28
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.yb = phi ptr [ %i.xz, %bb.ci ], [ %i.ya, %bb.cj ] ; 2 uses
  store ptr %i.yb, ptr %i.vm, align 8, !tbaa !49
  br label %Vec_IntGrow.exit.sink.split.i.i548.i

Vec_IntGrow.exit.sink.split.i.i548.i:             ; preds = %bb.ck, %bb.ce
  %.val.i5561423.i = phi ptr [ %i.yb, %bb.ck ], [ %i.xu, %bb.ce ]
  %spec.select.sink.i.i549.i = phi i32 [ %spec.select.i.i557.i, %bb.ck ], [ %i.xv, %bb.ce ]
  store i32 %spec.select.sink.i.i549.i, ptr %.0.i44, align 8, !tbaa !48
  br label %Vec_IntGrow.exit.i.i551.i

Vec_IntGrow.exit.i.i551.i:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i548.i, %bb.cg, %bb.cf, %bb.ca
  %.val.i5561422.i = phi ptr [ %.val.i5561423.i, %Vec_IntGrow.exit.sink.split.i.i548.i ], [ %.val.i5561420.i, %bb.cg ], [ %.val.i5561420.i, %bb.cf ], [ %.val.i5561420.i, %bb.ca ] ; 2 uses
  %i.yc = shl nsw i64 %i.xm, 2
  %scevgep.i.i554.i = getelementptr i8, ptr %.val.i5561422.i, i64 %i.yc
  %i.yd = trunc nsw i64 %indvars.iv1072.i to i32
  %i.ye = sub i32 %i.yd, %i.wi
  %i.yf = zext i32 %i.ye to i64
  %i.yg = shl nuw nsw i64 %i.yf, 2
  %i.yh = add nuw nsw i64 %i.yg, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i554.i, i8 0, i64 %i.yh, i1 false), !tbaa !10
  %i.yi = trunc nsw i64 %indvars.iv.next1073.i to i32 ; 2 uses
  store i32 %i.yi, ptr %i.vl, align 4, !tbaa !45
  br label %Vec_IntSetEntry.exit560.i

Vec_IntSetEntry.exit560.i:                        ; preds = %Vec_IntGrow.exit.i.i551.i, %Ses_ManSelectVar.exit.i
  %.val.i5561421.i = phi ptr [ %.val.i5561420.i, %Ses_ManSelectVar.exit.i ], [ %.val.i5561422.i, %Vec_IntGrow.exit.i.i551.i ] ; 2 uses
  %i.yj = phi i32 [ %i.wi, %Ses_ManSelectVar.exit.i ], [ %i.yi, %Vec_IntGrow.exit.i.i551.i ]
  %i.yk = getelementptr inbounds [4 x i8], ptr %.val.i5561421.i, i64 %indvars.iv1072.i
  store i32 %i.xl, ptr %i.yk, align 4, !tbaa !10
  %i.yl = add nuw nsw i32 %.0412919.i, 1          ; 2 uses
  %i.ym = load i32, ptr %i.ai, align 4, !tbaa !108 ; 3 uses
  %i.yn = add nsw i32 %i.ym, %.2428929.i          ; 3 uses
  %i.yo = icmp slt i32 %i.yl, %i.yn
  br i1 %i.yo, label %bb.by, label %.loopexit882.i, !llvm.loop !295

._crit_edge927.loopexit.i:                        ; preds = %bb.bx, %.loopexit882.i
  %.1405.lcssa1353.i = phi i32 [ %i.wb, %.loopexit882.i ], [ %.0404925.i, %bb.bx ]
  %i.yp = sext i32 %.1405.lcssa1353.i to i64
  br label %._crit_edge927.i

._crit_edge927.i:                                 ; preds = %._crit_edge927.loopexit.i, %Vec_IntGrowResize.exit543.i
  %.0404.lcssa.i = phi i64 [ 0, %Vec_IntGrowResize.exit543.i ], [ %i.yp, %._crit_edge927.loopexit.i ]
  %i.yq = load ptr, ptr %0, align 8, !tbaa !104
  %.0.val455.i = load ptr, ptr %i.vm, align 8, !tbaa !49 ; 2 uses
  %i.yr = getelementptr inbounds [4 x i8], ptr %.0.val455.i, i64 %.0404.lcssa.i
  %i.ys = call i32 @sat_solver_addclause(ptr noundef %i.yq, ptr noundef %.0.val455.i, ptr noundef %i.yr) #30 ; 0 uses
  %i.yt = add nuw nsw i32 %.2428929.i, 1          ; 2 uses
  %i.yu = load i32, ptr %i.w, align 8, !tbaa !151 ; 2 uses
  %i.yv = icmp slt i32 %i.yt, %i.yu
  br i1 %i.yv, label %bb.bs, label %._crit_edge932.i, !llvm.loop !296

._crit_edge932.i:                                 ; preds = %._crit_edge927.i, %.loopexit884.i
  %i.yw = phi i32 [ %i.vj, %.loopexit884.i ], [ %i.yu, %._crit_edge927.i ] ; 3 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !119
  %.not.i45 = icmp eq i32 %i.yy, 0
  br i1 %.not.i45, label %.loopexit881.i, label %.preheader880.i

.preheader880.i:                                  ; preds = %._crit_edge932.i
  %i.yz = icmp sgt i32 %i.yw, 0
  br i1 %i.yz, label %.lr.ph934.i, label %._crit_edge974.i

.lr.ph934.i:                                      ; preds = %.preheader880.i
  %i.za = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cl, %.lr.ph934.i
  %.3429933.i = phi i32 [ 0, %.lr.ph934.i ], [ %i.aaf, %bb.cl ] ; 2 uses
  %.val531.i = load i32, ptr %i.bx, align 4, !tbaa !255 ; 2 uses
  %i.zd = mul nuw nsw i32 %.3429933.i, 3          ; 4 uses
  %i.ze = add nsw i32 %i.zd, -1                   ; 3 uses
  %i.zf = add i32 %i.ze, %.val531.i
  %i.zg = add i32 %.val531.i, %i.zd
  %i.zh = shl nsw i32 %i.zg, 1
  %i.zi = or disjoint i32 %i.zh, 1
  store i32 %i.zi, ptr %i.a, align 4, !tbaa !10
  %i.zj = shl i32 %i.zf, 1                        ; 2 uses
  %i.zk = add i32 %i.zj, 5
  store i32 %i.zk, ptr %i.za, align 4, !tbaa !10
  %i.zl = add i32 %i.zj, 6
  store i32 %i.zl, ptr %i.zb, align 4, !tbaa !10
  %i.zm = load ptr, ptr %0, align 8, !tbaa !104
  %i.zn = call i32 @sat_solver_addclause(ptr noundef %i.zm, ptr noundef nonnull %i.a, ptr noundef nonnull %i.zc) #30 ; 0 uses
  %.val528.i = load i32, ptr %i.bx, align 4, !tbaa !255 ; 2 uses
  %i.zo = add i32 %.val528.i, %i.ze
  %i.zp = add i32 %.val528.i, %i.zd
  %i.zq = shl nsw i32 %i.zp, 1
  %i.zr = or disjoint i32 %i.zq, 1
  store i32 %i.zr, ptr %i.a, align 4, !tbaa !10
  %i.zs = shl i32 %i.zo, 1                        ; 2 uses
  %i.zt = add i32 %i.zs, 4
  store i32 %i.zt, ptr %i.za, align 4, !tbaa !10
  %i.zu = add i32 %i.zs, 7
  store i32 %i.zu, ptr %i.zb, align 4, !tbaa !10
  %i.zv = load ptr, ptr %0, align 8, !tbaa !104
  %i.zw = call i32 @sat_solver_addclause(ptr noundef %i.zv, ptr noundef nonnull %i.a, ptr noundef nonnull %i.zc) #30 ; 0 uses
  %.val525.i = load i32, ptr %i.bx, align 4, !tbaa !255 ; 2 uses
  %i.zx = add i32 %.val525.i, %i.ze
  %i.zy = add i32 %.val525.i, %i.zd
  %i.zz = shl nsw i32 %i.zy, 1
  store i32 %i.zz, ptr %i.a, align 4, !tbaa !10
  %i.aaa = shl i32 %i.zx, 1                       ; 2 uses
  %i.aab = add i32 %i.aaa, 5
  store i32 %i.aab, ptr %i.za, align 4, !tbaa !10
  %i.aac = add i32 %i.aaa, 7
  store i32 %i.aac, ptr %i.zb, align 4, !tbaa !10
  %i.aad = load ptr, ptr %0, align 8, !tbaa !104
  %i.aae = call i32 @sat_solver_addclause(ptr noundef %i.aad, ptr noundef nonnull %i.a, ptr noundef nonnull %i.zc) #30 ; 0 uses
  %i.aaf = add nuw nsw i32 %.3429933.i, 1         ; 2 uses
  %i.aag = load i32, ptr %i.w, align 8, !tbaa !151 ; 2 uses
  %i.aah = icmp slt i32 %i.aaf, %i.aag
  br i1 %i.aah, label %bb.cl, label %.loopexit881.i, !llvm.loop !297

.loopexit881.i:                                   ; preds = %bb.cl, %._crit_edge932.i
  %i.aai = phi i32 [ %i.yw, %._crit_edge932.i ], [ %i.aag, %bb.cl ] ; 2 uses
  %i.aaj = icmp sgt i32 %i.aai, 0
  br i1 %i.aaj, label %.lr.ph937.i, label %._crit_edge974.i

.lr.ph937.i:                                      ; preds = %.loopexit881.i
  %i.aak = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 7 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 7 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  br label %bb.cm

.preheader879.i:                                  ; preds = %bb.cm
  %i.aan = icmp sgt i32 %i.abq, 0
  br i1 %i.aan, label %.preheader878.lr.ph.i, label %._crit_edge974.i

.preheader878.lr.ph.i:                            ; preds = %.preheader879.i
  %.pre1119.i = load i32, ptr %i.ai, align 4, !tbaa !108 ; 3 uses
  br label %.preheader878.i

bb.cm:                                            ; preds = %bb.cm, %.lr.ph937.i
  %.4430935.i = phi i32 [ 0, %.lr.ph937.i ], [ %i.abp, %bb.cm ] ; 2 uses
  %.val522.i = load i32, ptr %i.bx, align 4, !tbaa !255 ; 2 uses
  %i.aao = mul nuw nsw i32 %.4430935.i, 3         ; 4 uses
  %i.aap = add nsw i32 %i.aao, -1                 ; 3 uses
  %i.aaq = add i32 %i.aap, %.val522.i
  %i.aar = add i32 %.val522.i, %i.aao
  %i.aas = shl nsw i32 %i.aar, 1
  store i32 %i.aas, ptr %i.a, align 4, !tbaa !10
  %i.aat = shl i32 %i.aaq, 1                      ; 2 uses
  %i.aau = add i32 %i.aat, 4
  store i32 %i.aau, ptr %i.aak, align 4, !tbaa !10
  %i.aav = add i32 %i.aat, 6
  store i32 %i.aav, ptr %i.aal, align 4, !tbaa !10
  %i.aaw = load ptr, ptr %0, align 8, !tbaa !104
  %i.aax = call i32 @sat_solver_addclause(ptr noundef %i.aaw, ptr noundef nonnull %i.a, ptr noundef nonnull %i.aam) #30 ; 0 uses
  %.val519.i = load i32, ptr %i.bx, align 4, !tbaa !255 ; 2 uses
  %i.aay = add i32 %.val519.i, %i.aap
  %i.aaz = add i32 %.val519.i, %i.aao
  %i.aba = shl nsw i32 %i.aaz, 1
  %i.abb = or disjoint i32 %i.aba, 1
  store i32 %i.abb, ptr %i.a, align 4, !tbaa !10
  %i.abc = shl i32 %i.aay, 1                      ; 2 uses
  %i.abd = add i32 %i.abc, 4
  store i32 %i.abd, ptr %i.aak, align 4, !tbaa !10
  %i.abe = add i32 %i.abc, 7
  store i32 %i.abe, ptr %i.aal, align 4, !tbaa !10
  %i.abf = load ptr, ptr %0, align 8, !tbaa !104
  %i.abg = call i32 @sat_solver_addclause(ptr noundef %i.abf, ptr noundef nonnull %i.a, ptr noundef nonnull %i.aam) #30 ; 0 uses
  %.val516.i = load i32, ptr %i.bx, align 4, !tbaa !255 ; 2 uses
  %i.abh = add i32 %.val516.i, %i.aap
  %i.abi = add i32 %.val516.i, %i.aao
  %i.abj = shl nsw i32 %i.abi, 1
  store i32 %i.abj, ptr %i.a, align 4, !tbaa !10
  %i.abk = shl i32 %i.abh, 1                      ; 2 uses
  %i.abl = add i32 %i.abk, 5
  store i32 %i.abl, ptr %i.aak, align 4, !tbaa !10
  %i.abm = add i32 %i.abk, 7
  store i32 %i.abm, ptr %i.aal, align 4, !tbaa !10
  %i.abn = load ptr, ptr %0, align 8, !tbaa !104
  %i.abo = call i32 @sat_solver_addclause(ptr noundef %i.abn, ptr noundef nonnull %i.a, ptr noundef nonnull %i.aam) #30 ; 0 uses
  %i.abp = add nuw nsw i32 %.4430935.i, 1         ; 2 uses
  %i.abq = load i32, ptr %i.w, align 8, !tbaa !151 ; 3 uses
  %i.abr = icmp slt i32 %i.abp, %i.abq
  br i1 %i.abr, label %bb.cm, label %.preheader879.i, !llvm.loop !298

.preheader878.i:                                  ; preds = %._crit_edge965.i, %.preheader878.lr.ph.i
  %i.abs = phi i32 [ %.pre1119.i, %.preheader878.lr.ph.i ], [ %i.ahx, %._crit_edge965.i ] ; 3 uses
  %i.abt = phi i32 [ %.pre1119.i, %.preheader878.lr.ph.i ], [ %i.ahy, %._crit_edge965.i ] ; 3 uses
  %i.abu = phi i32 [ %.pre1119.i, %.preheader878.lr.ph.i ], [ %i.ahz, %._crit_edge965.i ] ; 3 uses
  %.5431972.i = phi i32 [ 0, %.preheader878.lr.ph.i ], [ %i.aia, %._crit_edge965.i ] ; 18 uses
  %i.abv = add nsw i32 %.5431972.i, %i.abu
  %i.abw = icmp sgt i32 %i.abv, 1
  br i1 %i.abw, label %.preheader877.lr.ph.i, label %._crit_edge965.i

.preheader877.lr.ph.i:                            ; preds = %.preheader878.i
  %.not849.i = icmp eq i32 %.5431972.i, 0
  %invariant.op.i.a = sub nsw i32 1, %.5431972.i  ; 3 uses
  br i1 %.not849.i, label %.preheader877.us.i, label %.preheader877.i.preheader

.preheader877.i.preheader:                        ; preds = %.preheader877.lr.ph.i
  %min.iters.check668 = icmp samesign ult i32 %.5431972.i, 8
  %n.vec670 = and i32 %.5431972.i, 2147483640     ; 3 uses
  %cmp.n684 = icmp eq i32 %.5431972.i, %n.vec670
  %min.iters.check648 = icmp samesign ult i32 %.5431972.i, 8
  %n.vec650 = and i32 %.5431972.i, 2147483640     ; 3 uses
  %cmp.n664 = icmp eq i32 %.5431972.i, %n.vec650
  %min.iters.check628 = icmp samesign ult i32 %.5431972.i, 8
  %n.vec630 = and i32 %.5431972.i, 2147483640     ; 3 uses
  %cmp.n644 = icmp eq i32 %.5431972.i, %n.vec630
  br label %.preheader877.i

.preheader877.us.i:                               ; preds = %.preheader877.lr.ph.i, %.split954.us.us.i
  %i.abx = phi i32 [ %i.ado, %.split954.us.us.i ], [ %i.abs, %.preheader877.lr.ph.i ] ; 2 uses
  %.val490.us.us.us.i = phi i32 [ %i.ado, %.split954.us.us.i ], [ %i.abt, %.preheader877.lr.ph.i ] ; 3 uses
  %indvars.iv1076.i = phi i32 [ %indvars.iv.next1077.i, %.split954.us.us.i ], [ 0, %.preheader877.lr.ph.i ] ; 3 uses
  %.1413963.us.i = phi i32 [ %i.adp, %.split954.us.us.i ], [ 1, %.preheader877.lr.ph.i ] ; 4 uses
  %i.aby = icmp sgt i32 %.val490.us.us.us.i, %invariant.op.i.a
  br i1 %i.aby, label %Ses_ManSelectVar.exit568.us.us966.i, label %.preheader877.split.us.split.us.us.i

Ses_ManSelectVar.exit568.us.us966.i:              ; preds = %.preheader877.us.i, %._crit_edge940.split.us.us.us.i
  %i.abz = phi i32 [ %i.acj, %._crit_edge940.split.us.us.us.i ], [ %i.abx, %.preheader877.us.i ]
  %i.aca = phi i32 [ %i.ack, %._crit_edge940.split.us.us.us.i ], [ %.val490.us.us.us.i, %.preheader877.us.i ] ; 3 uses
  %.1418941.us.us967.i = phi i32 [ %i.acl, %._crit_edge940.split.us.us.us.i ], [ 0, %.preheader877.us.i ] ; 4 uses
  %.val491.us.us969.i = load i32, ptr %i.bv, align 8, !tbaa !254
  %.neg18.i562.us.us.i = xor i32 %.1418941.us.us967.i, -1 ; 2 uses
  %i.acb = shl nsw i32 %i.aca, 1
  %.neg.i563.us.us.i = add i32 %i.acb, %.neg18.i562.us.us.i
  %.neg17.i564.us.us.i = mul i32 %.neg.i563.us.us.i, %.1418941.us.us967.i
  %i.acc = sdiv i32 %.neg17.i564.us.us.i, 2
  %i.acd = add nsw i32 %.1413963.us.i, %.neg18.i562.us.us.i
  %i.ace = add i32 %i.acd, %.val491.us.us969.i
  %i.acf = add i32 %i.ace, %i.acc
  %i.acg = shl nsw i32 %i.acf, 1
  %i.ach = or disjoint i32 %i.acg, 1
  store i32 %i.ach, ptr %i.a, align 4, !tbaa !10
  %i.aci = icmp sgt i32 %i.aca, %invariant.op.i.a
  br i1 %i.aci, label %.preheader876.us.us.us.i, label %._crit_edge940.split.us.us.us.i

._crit_edge940.split.us.us.us.i:                  ; preds = %.split.us.us.us.us.i, %Ses_ManSelectVar.exit568.us.us966.i
  %i.acj = phi i32 [ %i.abz, %Ses_ManSelectVar.exit568.us.us966.i ], [ %i.ada, %.split.us.us.us.us.i ] ; 2 uses
  %i.ack = phi i32 [ %i.aca, %Ses_ManSelectVar.exit568.us.us966.i ], [ %i.ada, %.split.us.us.us.us.i ]
  %i.acl = add nuw nsw i32 %.1418941.us.us967.i, 1 ; 2 uses
  %exitcond1080.not.i = icmp eq i32 %i.acl, %.1413963.us.i
  br i1 %exitcond1080.not.i, label %.split954.us.us.i, label %Ses_ManSelectVar.exit568.us.us966.i, !llvm.loop !299

.preheader876.us.us.us.i:                         ; preds = %Ses_ManSelectVar.exit568.us.us966.i, %.split.us.us.us.us.i
  %.0403939.us.us.us.i = phi i32 [ %i.acz, %.split.us.us.us.us.i ], [ 1, %Ses_ManSelectVar.exit568.us.us966.i ] ; 6 uses
  %i.acm = icmp eq i32 %.1413963.us.i, %.0403939.us.us.us.i
  %.fr.us.us.i = freeze i1 %i.acm
  br i1 %.fr.us.us.i, label %.preheader876.split.us.us.split.us952.us.i, label %Ses_ManSelectVar.exit576.us.us.us.us.us.preheader.i

Ses_ManSelectVar.exit576.us.us.us.us.us.preheader.i: ; preds = %.preheader876.us.us.us.i
  %.pre1126.i = load i32, ptr %i.a, align 4, !tbaa !10
  br label %Ses_ManSelectVar.exit576.us.us.us.us.us.i

.preheader876.split.us.us.split.us952.us.i:       ; preds = %.preheader876.us.us.us.i, %bb.co
  %.2406938.us.us.us943.us.i = phi i32 [ %i.acy, %bb.co ], [ 0, %.preheader876.us.us.us.i ] ; 4 uses
  %i.acn = icmp eq i32 %.1418941.us.us967.i, %.2406938.us.us.us943.us.i
  br i1 %i.acn, label %bb.co, label %Ses_ManSelectVar.exit576.us.us.us944.us.i

Ses_ManSelectVar.exit576.us.us.us944.us.i:        ; preds = %.preheader876.split.us.us.split.us952.us.i
  %.val488.us.us.us945.us.i = load i32, ptr %i.ai, align 4, !tbaa !108
  %.val489.us.us.us946.us.i = load i32, ptr %i.bv, align 8, !tbaa !254
  %.neg18.i570.us.us.us947.us.i = xor i32 %.2406938.us.us.us943.us.i, -1 ; 2 uses
  %i.aco = shl nsw i32 %.val488.us.us.us945.us.i, 1
  %.neg.i571.us.us.us948.us.i = add i32 %i.aco, %.neg18.i570.us.us.us947.us.i
  %.neg17.i572.us.us.us949.us.i = mul i32 %.neg.i571.us.us.us948.us.i, %.2406938.us.us.us943.us.i
  %i.acp = sdiv i32 %.neg17.i572.us.us.us949.us.i, 2
  %i.acq = add nsw i32 %.0403939.us.us.us.i, %.neg18.i570.us.us.us947.us.i
  %i.acr = add i32 %i.acq, %.val489.us.us.us946.us.i
  %i.acs = add i32 %i.acr, %i.acp
  %i.act = shl nsw i32 %i.acs, 1                  ; 2 uses
  %i.acu = or disjoint i32 %i.act, 1
  store i32 %i.acu, ptr %i.aak, align 4, !tbaa !10
  %i.acv = load i32, ptr %i.a, align 4, !tbaa !10
  %.not850.us.us.us950.us.i = icmp sgt i32 %i.acv, %i.act
  br i1 %.not850.us.us.us950.us.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %Ses_ManSelectVar.exit576.us.us.us944.us.i
  %i.acw = load ptr, ptr %0, align 8, !tbaa !104
  %i.acx = call i32 @sat_solver_addclause(ptr noundef %i.acw, ptr noundef nonnull %i.a, ptr noundef nonnull %i.aal) #30 ; 0 uses
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %Ses_ManSelectVar.exit576.us.us.us944.us.i, %.preheader876.split.us.us.split.us952.us.i
  %i.acy = add nuw nsw i32 %.2406938.us.us.us943.us.i, 1 ; 2 uses
  %exitcond1079.not.i = icmp eq i32 %i.acy, %.0403939.us.us.us.i
  br i1 %exitcond1079.not.i, label %.split.us.us.us.us.i, label %.preheader876.split.us.us.split.us952.us.i, !llvm.loop !300

.split.us.us.us.us.i:                             ; preds = %bb.cq, %bb.co
  %i.acz = add nuw nsw i32 %.0403939.us.us.us.i, 1 ; 2 uses
  %i.ada = load i32, ptr %i.ai, align 4, !tbaa !108 ; 3 uses
  %i.adb = icmp slt i32 %i.acz, %i.ada
  br i1 %i.adb, label %.preheader876.us.us.us.i, label %._crit_edge940.split.us.us.us.i, !llvm.loop !301

Ses_ManSelectVar.exit576.us.us.us.us.us.i:        ; preds = %bb.cq, %Ses_ManSelectVar.exit576.us.us.us.us.us.preheader.i
  %i.adc = phi i32 [ %i.adm, %bb.cq ], [ %.pre1126.i, %Ses_ManSelectVar.exit576.us.us.us.us.us.preheader.i ] ; 2 uses
  %.2406938.us.us.us.us.us.i = phi i32 [ %i.adn, %bb.cq ], [ 0, %Ses_ManSelectVar.exit576.us.us.us.us.us.preheader.i ] ; 3 uses
  %.val488.us.us.us.us.us.i = load i32, ptr %i.ai, align 4, !tbaa !108
  %.val489.us.us.us.us.us.i = load i32, ptr %i.bv, align 8, !tbaa !254
  %.neg18.i570.us.us.us.us.us.i = xor i32 %.2406938.us.us.us.us.us.i, -1 ; 2 uses
  %i.add = shl nsw i32 %.val488.us.us.us.us.us.i, 1
  %.neg.i571.us.us.us.us.us.i = add i32 %i.add, %.neg18.i570.us.us.us.us.us.i
  %.neg17.i572.us.us.us.us.us.i = mul i32 %.neg.i571.us.us.us.us.us.i, %.2406938.us.us.us.us.us.i
  %i.ade = sdiv i32 %.neg17.i572.us.us.us.us.us.i, 2
  %i.adf = add nsw i32 %.0403939.us.us.us.i, %.neg18.i570.us.us.us.us.us.i
  %i.adg = add i32 %i.adf, %.val489.us.us.us.us.us.i
  %i.adh = add i32 %i.adg, %i.ade
  %i.adi = shl nsw i32 %i.adh, 1                  ; 2 uses
  %i.adj = or disjoint i32 %i.adi, 1
  store i32 %i.adj, ptr %i.aak, align 4, !tbaa !10
  %.not850.us.us.us.us.us.i = icmp sgt i32 %i.adc, %i.adi
  br i1 %.not850.us.us.us.us.us.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %Ses_ManSelectVar.exit576.us.us.us.us.us.i
  %i.adk = load ptr, ptr %0, align 8, !tbaa !104
  %i.adl = call i32 @sat_solver_addclause(ptr noundef %i.adk, ptr noundef nonnull %i.a, ptr noundef nonnull %i.aal) #30 ; 0 uses
  %.pre1125.i = load i32, ptr %i.a, align 4, !tbaa !10
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %Ses_ManSelectVar.exit576.us.us.us.us.us.i
  %i.adm = phi i32 [ %.pre1125.i, %bb.cp ], [ %i.adc, %Ses_ManSelectVar.exit576.us.us.us.us.us.i ]
  %i.adn = add nuw nsw i32 %.2406938.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond1078.not.i = icmp eq i32 %i.adn, %.0403939.us.us.us.i
  br i1 %exitcond1078.not.i, label %.split.us.us.us.us.i, label %Ses_ManSelectVar.exit576.us.us.us.us.us.i, !llvm.loop !300

.split954.us.us.i:                                ; preds = %._crit_edge940.split.us.us.us.i, %.preheader877.split.us.split.us.us.i
  %i.ado = phi i32 [ %i.abx, %.preheader877.split.us.split.us.us.i ], [ %i.acj, %._crit_edge940.split.us.us.us.i ] ; 6 uses
  %i.adp = add nuw nsw i32 %.1413963.us.i, 1      ; 2 uses
  %i.adq = icmp slt i32 %i.adp, %i.ado
  %indvars.iv.next1077.i = add nuw nsw i32 %indvars.iv1076.i, 1
  br i1 %i.adq, label %.preheader877.us.i, label %._crit_edge965.i, !llvm.loop !302

.preheader877.split.us.split.us.us.i:             ; preds = %.preheader877.us.i
  %.val491.us.us.us.i = load i32, ptr %i.bv, align 8, !tbaa !254
  %i.adr = shl nsw i32 %.val490.us.us.us.i, 1
  %.neg18.i562.us.us.le.us.i = xor i32 %indvars.iv1076.i, -1
  %.neg.i563.us.us.le.us.i = add i32 %i.adr, %.neg18.i562.us.us.le.us.i
  %.neg17.i564.us.us.le.us.i = mul i32 %.neg.i563.us.us.le.us.i, %indvars.iv1076.i
  %i.ads = sdiv i32 %.neg17.i564.us.us.le.us.i, 2
  %i.adt = add i32 %.val491.us.us.us.i, %i.ads
  %i.adu = shl nsw i32 %i.adt, 1
  %i.adv = or disjoint i32 %i.adu, 1
  store i32 %i.adv, ptr %i.a, align 4, !tbaa !10
  br label %.split954.us.us.i

.preheader877.i:                                  ; preds = %.preheader877.i.preheader, %.split954.i
  %i.adw = phi i32 [ %i.ahq, %.split954.i ], [ %i.abs, %.preheader877.i.preheader ]
  %i.adx = phi i32 [ %i.ahr, %.split954.i ], [ %i.abt, %.preheader877.i.preheader ]
  %.val4901122.i = phi i32 [ %i.ahr, %.split954.i ], [ %i.abu, %.preheader877.i.preheader ]
  %.1413963.i = phi i32 [ %i.ahu, %.split954.i ], [ 1, %.preheader877.i.preheader ] ; 4 uses
  br label %.lr.ph.i565.preheader.i

.lr.ph.i565.preheader.i:                          ; preds = %._crit_edge940.split.i, %.preheader877.i
  %i.ady = phi i32 [ %i.adw, %.preheader877.i ], [ %i.ahq, %._crit_edge940.split.i ]
  %i.adz = phi i32 [ %i.adx, %.preheader877.i ], [ %i.ahr, %._crit_edge940.split.i ]
  %i.aea = phi i32 [ %.val4901122.i, %.preheader877.i ], [ %i.ahs, %._crit_edge940.split.i ] ; 6 uses
  %.1418941.i = phi i32 [ 0, %.preheader877.i ], [ %i.aht, %._crit_edge940.split.i ] ; 4 uses
  %.val491.i = load i32, ptr %i.bv, align 8, !tbaa !254 ; 2 uses
  %i.aeb = add nsw i32 %i.aea, %.5431972.i        ; 2 uses
  br i1 %min.iters.check668, label %.lr.ph.i565.i.preheader, label %vector.ph669

vector.ph669:                                     ; preds = %.lr.ph.i565.preheader.i
  %i.aec = add i32 %i.aea, %n.vec670
  %i.aed = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.val491.i, i64 0
  %broadcast.splatinsert671 = insertelement <4 x i32> poison, i32 %i.aea, i64 0
  %broadcast.splat672 = shufflevector <4 x i32> %broadcast.splatinsert671, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction673 = add nsw <4 x i32> %broadcast.splat672, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body674

vector.body674:                                   ; preds = %vector.body674, %vector.ph669
  %index675 = phi i32 [ 0, %vector.ph669 ], [ %index.next680, %vector.body674 ]
  %vec.phi676 = phi <4 x i32> [ %i.aed, %vector.ph669 ], [ %i.aek, %vector.body674 ]
  %vec.phi677 = phi <4 x i32> [ zeroinitializer, %vector.ph669 ], [ %i.ael, %vector.body674 ]
  %vec.ind678 = phi <4 x i32> [ %induction673, %vector.ph669 ], [ %vec.ind.next681, %vector.body674 ] ; 5 uses
  %step.add679 = add nsw <4 x i32> %vec.ind678, splat (i32 4)
  %i.aee = add nsw <4 x i32> %vec.ind678, splat (i32 -1)
  %i.aef = add nsw <4 x i32> %vec.ind678, splat (i32 3)
  %i.aeg = mul nsw <4 x i32> %i.aee, %vec.ind678
  %i.aeh = mul nsw <4 x i32> %i.aef, %step.add679
  %i.aei = sdiv <4 x i32> %i.aeg, splat (i32 2)
  %i.aej = sdiv <4 x i32> %i.aeh, splat (i32 2)
  %i.aek = add <4 x i32> %i.aei, %vec.phi676      ; 2 uses
  %i.ael = add <4 x i32> %i.aej, %vec.phi677      ; 2 uses
  %index.next680 = add nuw i32 %index675, 8       ; 2 uses
  %vec.ind.next681 = add nsw <4 x i32> %vec.ind678, splat (i32 8)
  %i.aem = icmp eq i32 %index.next680, %n.vec670
  br i1 %i.aem, label %middle.block682, label %vector.body674, !llvm.loop !303

middle.block682:                                  ; preds = %vector.body674
  %bin.rdx683 = add <4 x i32> %i.ael, %i.aek
  %i.aen = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx683) ; 2 uses
  br i1 %cmp.n684, label %Ses_ManSelectVar.exit568.loopexit.i, label %.lr.ph.i565.i.preheader

.lr.ph.i565.i.preheader:                          ; preds = %.lr.ph.i565.preheader.i, %middle.block682
  %.02.i566.i.ph = phi i32 [ %.val491.i, %.lr.ph.i565.preheader.i ], [ %i.aen, %middle.block682 ]
  %.0151.i567.i.ph = phi i32 [ %i.aea, %.lr.ph.i565.preheader.i ], [ %i.aec, %middle.block682 ]
  br label %.lr.ph.i565.i
end_hunk_1
begin_hunk_2_@Ses_ManFindNetworkExact:bb.a
  %vec.ind718 = phi <4 x i32> [ %induction713, %vector.ph709 ], [ %vec.ind.next721, %vector.body714 ] ; 5 uses
  %step.add719 = add nsw <4 x i32> %vec.ind718, splat (i32 4)
  %i.baf = add nsw <4 x i32> %vec.ind718, splat (i32 -1)
  %i.bag = add nsw <4 x i32> %vec.ind718, splat (i32 3)
  %i.bah = mul nsw <4 x i32> %i.baf, %vec.ind718
  %i.bai = mul nsw <4 x i32> %i.bag, %step.add719
  %i.baj = sdiv <4 x i32> %i.bah, splat (i32 2)
  %i.bak = sdiv <4 x i32> %i.bai, splat (i32 2)
  %i.bal = add <4 x i32> %i.baj, %vec.phi716      ; 2 uses
  %i.bam = add <4 x i32> %i.bak, %vec.phi717      ; 2 uses
  %index.next720 = add nuw i32 %index715, 8       ; 2 uses
  %vec.ind.next721 = add nsw <4 x i32> %vec.ind718, splat (i32 8)
  %i.ban = icmp eq i32 %index.next720, %n.vec710
  br i1 %i.ban, label %middle.block722, label %vector.body714, !llvm.loop !318

middle.block722:                                  ; preds = %vector.body714
  %bin.rdx723 = add <4 x i32> %i.bam, %i.bal
  %i.bao = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx723) ; 2 uses
  %cmp.n724 = icmp eq i32 %i.bac, %n.vec710
  br i1 %cmp.n724, label %Ses_ManSelectVar.exit709.i, label %.lr.ph.i706.i.preheader

.lr.ph.i706.i.preheader:                          ; preds = %.lr.ph993.i, %middle.block722
  %.02.i707.i.ph = phi i32 [ %.val483.i, %.lr.ph993.i ], [ %i.bao, %middle.block722 ]
  %.0151.i708.i.ph = phi i32 [ %i.azz, %.lr.ph993.i ], [ %i.bad, %middle.block722 ]
  br label %.lr.ph.i706.i

.lr.ph.i706.i:                                    ; preds = %.lr.ph.i706.i.preheader, %.lr.ph.i706.i
  %.02.i707.i = phi i32 [ %i.bas, %.lr.ph.i706.i ], [ %.02.i707.i.ph, %.lr.ph.i706.i.preheader ]
  %.0151.i708.i = phi i32 [ %i.bat, %.lr.ph.i706.i ], [ %.0151.i708.i.ph, %.lr.ph.i706.i.preheader ] ; 3 uses
  %i.bap = add nsw i32 %.0151.i708.i, -1
  %i.baq = mul nsw i32 %i.bap, %.0151.i708.i
  %i.bar = sdiv i32 %i.baq, 2
  %i.bas = add nsw i32 %i.bar, %.02.i707.i        ; 2 uses
  %i.bat = add nsw i32 %.0151.i708.i, 1           ; 2 uses
  %i.bau = icmp slt i32 %i.bat, %i.azy
  br i1 %i.bau, label %.lr.ph.i706.i, label %Ses_ManSelectVar.exit709.i, !llvm.loop !319

Ses_ManSelectVar.exit709.i:                       ; preds = %.lr.ph.i706.i, %middle.block722
  %.lcssa515 = phi i32 [ %i.bao, %middle.block722 ], [ %i.bas, %.lr.ph.i706.i ]
  %indvars.iv.next1094.i = add nsw i64 %indvars.iv1093.i, 1 ; 5 uses
  %i.bav = add nsw i32 %i.azz, %.74331000.i       ; 3 uses
  %.neg18.i703.i = xor i32 %i.bav, -1
  %i.baw = shl nsw i32 %i.azy, 1
  %.neg.i704.i = add i32 %i.baw, %.neg18.i703.i
  %.neg17.i705.i = mul i32 %.neg.i704.i, %i.bav
  %i.bax = sdiv i32 %.neg17.i705.i, 2
  %i.bay = sub i32 %.3420.in990.i, %i.bav
  %i.baz = add i32 %i.bay, %i.bax
  %i.bba = add i32 %i.baz, %.lcssa515
  %i.bbb = shl nsw i32 %i.bba, 1
  %i.bbc = sext i32 %i.azx to i64                 ; 2 uses
  %.not.i.not.i710.i = icmp slt i64 %indvars.iv1093.i, %i.bbc
  br i1 %.not.i.not.i710.i, label %Vec_IntSetEntry.exit726.i, label %bb.hf

bb.hf:                                            ; preds = %Ses_ManSelectVar.exit709.i
  %i.bbd = load i32, ptr %.0.i44, align 8, !tbaa !48 ; 4 uses
  %i.bbe = shl nsw i32 %i.bbd, 1                  ; 2 uses
  %i.bbf = sext i32 %i.bbe to i64
  %.not.i711.i = icmp slt i64 %indvars.iv1093.i, %i.bbf
  %i.bbg = sext i32 %i.bbd to i64
  %.not.i.i.not.i712.i = icmp slt i64 %indvars.iv1093.i, %i.bbg ; 2 uses
  br i1 %.not.i711.i, label %bb.hl, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  br i1 %.not.i.i.not.i712.i, label %Vec_IntGrow.exit.i.i717.i, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %.not9.i.i.i713.i = icmp eq ptr %.val.i7221437.i, null
  %i.bbh = shl nsw i64 %indvars.iv.next1094.i, 2  ; 2 uses
  br i1 %.not9.i.i.i713.i, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.bbi = call ptr @realloc(ptr noundef nonnull %.val.i7221437.i, i64 noundef %i.bbh) #29
  br label %bb.hk

bb.hj:                                            ; preds = %bb.hh
  %i.bbj = call noalias ptr @malloc(i64 noundef %i.bbh) #28
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %i.bbk = phi ptr [ %i.bbi, %bb.hi ], [ %i.bbj, %bb.hj ] ; 2 uses
  store ptr %i.bbk, ptr %i.awb, align 8, !tbaa !49
  %i.bbl = trunc nsw i64 %indvars.iv.next1094.i to i32
  br label %Vec_IntGrow.exit.sink.split.i.i714.i

bb.hl:                                            ; preds = %bb.hf
  br i1 %.not.i.i.not.i712.i, label %Vec_IntGrow.exit.i.i717.i, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.bbm = icmp slt i32 %i.bbd, 1073741823
  %spec.select.i.i723.i = select i1 %i.bbm, i32 %i.bbe, i32 2147483647 ; 3 uses
  %.not.i22.i.i724.i = icmp slt i32 %i.bbd, %spec.select.i.i723.i
  br i1 %.not.i22.i.i724.i, label %bb.hn, label %Vec_IntGrow.exit.i.i717.i

bb.hn:                                            ; preds = %bb.hm
  %.not9.i23.i.i725.i = icmp eq ptr %.val.i7221437.i, null
  %i.bbn = sext i32 %spec.select.i.i723.i to i64
  %i.bbo = shl nsw i64 %i.bbn, 2                  ; 2 uses
  br i1 %.not9.i23.i.i725.i, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.bbp = call ptr @realloc(ptr noundef nonnull %.val.i7221437.i, i64 noundef %i.bbo) #29
  br label %bb.hq

bb.hp:                                            ; preds = %bb.hn
  %i.bbq = call noalias ptr @malloc(i64 noundef %i.bbo) #28
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %i.bbr = phi ptr [ %i.bbp, %bb.ho ], [ %i.bbq, %bb.hp ] ; 2 uses
  store ptr %i.bbr, ptr %i.awb, align 8, !tbaa !49
  br label %Vec_IntGrow.exit.sink.split.i.i714.i

Vec_IntGrow.exit.sink.split.i.i714.i:             ; preds = %bb.hq, %bb.hk
  %.val.i7221440.i = phi ptr [ %i.bbr, %bb.hq ], [ %i.bbk, %bb.hk ]
  %spec.select.sink.i.i715.i = phi i32 [ %spec.select.i.i723.i, %bb.hq ], [ %i.bbl, %bb.hk ]
  store i32 %spec.select.sink.i.i715.i, ptr %.0.i44, align 8, !tbaa !48
  br label %Vec_IntGrow.exit.i.i717.i

Vec_IntGrow.exit.i.i717.i:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i714.i, %bb.hm, %bb.hl, %bb.hg
  %.val.i7221439.i = phi ptr [ %.val.i7221440.i, %Vec_IntGrow.exit.sink.split.i.i714.i ], [ %.val.i7221437.i, %bb.hm ], [ %.val.i7221437.i, %bb.hl ], [ %.val.i7221437.i, %bb.hg ] ; 2 uses
  %i.bbs = shl nsw i64 %i.bbc, 2
  %scevgep.i.i720.i = getelementptr i8, ptr %.val.i7221439.i, i64 %i.bbs
  %i.bbt = trunc nsw i64 %indvars.iv1093.i to i32
  %i.bbu = sub i32 %i.bbt, %i.azx
  %i.bbv = zext i32 %i.bbu to i64
  %i.bbw = shl nuw nsw i64 %i.bbv, 2
  %i.bbx = add nuw nsw i64 %i.bbw, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i720.i, i8 0, i64 %i.bbx, i1 false), !tbaa !10
  %i.bby = trunc nsw i64 %indvars.iv.next1094.i to i32 ; 2 uses
  store i32 %i.bby, ptr %i.avq, align 4, !tbaa !45
  br label %Vec_IntSetEntry.exit726.i

Vec_IntSetEntry.exit726.i:                        ; preds = %Vec_IntGrow.exit.i.i717.i, %Ses_ManSelectVar.exit709.i
  %.val.i7221438.i = phi ptr [ %.val.i7221437.i, %Ses_ManSelectVar.exit709.i ], [ %.val.i7221439.i, %Vec_IntGrow.exit.i.i717.i ] ; 2 uses
  %i.bbz = phi i32 [ %i.azx, %Ses_ManSelectVar.exit709.i ], [ %i.bby, %Vec_IntGrow.exit.i.i717.i ]
  %i.bca = getelementptr inbounds [4 x i8], ptr %.val.i7221438.i, i64 %indvars.iv1093.i
  store i32 %i.bbb, ptr %i.bca, align 4, !tbaa !10
  %.3420.i = add nsw i32 %.3420992.i, 1           ; 2 uses
  %i.bcb = load i32, ptr %i.ai, align 4, !tbaa !108 ; 3 uses
  %i.bcc = add nsw i32 %i.bcb, %.0407996.i        ; 2 uses
  %i.bcd = icmp slt i32 %.3420.i, %i.bcc
  br i1 %i.bcd, label %.lr.ph993.i, label %._crit_edge994.loopexit.i, !llvm.loop !320

._crit_edge994.loopexit.i:                        ; preds = %Vec_IntSetEntry.exit726.i
  %i.bce = trunc nsw i64 %indvars.iv.next1094.i to i32
  br label %._crit_edge994.i

._crit_edge994.i:                                 ; preds = %._crit_edge994.loopexit.i, %.preheader872.i
  %i.bcf = phi i32 [ %i.axo, %.preheader872.i ], [ %i.bcb, %._crit_edge994.loopexit.i ]
  %.6.lcssa.i = phi i32 [ %.5.lcssa.i, %.preheader872.i ], [ %i.bce, %._crit_edge994.loopexit.i ] ; 2 uses
  %i.bcg = add nuw nsw i32 %.0407996.i, 1         ; 2 uses
  %i.bch = load i32, ptr %i.w, align 8, !tbaa !151
  %i.bci = icmp slt i32 %i.bcg, %i.bch
  br i1 %i.bci, label %.preheader873.i, label %._crit_edge998.i, !llvm.loop !321

._crit_edge998.i:                                 ; preds = %._crit_edge994.i, %._crit_edge982.i
  %.4.lcssa.i = phi i32 [ %.3.lcssa.i, %._crit_edge982.i ], [ %.6.lcssa.i, %._crit_edge994.i ]
  %i.bcj = load ptr, ptr %0, align 8, !tbaa !104
  %.0.val453.i = load ptr, ptr %i.awb, align 8, !tbaa !49 ; 2 uses
  %i.bck = sext i32 %.4.lcssa.i to i64
  %i.bcl = getelementptr inbounds [4 x i8], ptr %.0.val453.i, i64 %i.bck
  %i.bcm = call i32 @sat_solver_addclause(ptr noundef %i.bcj, ptr noundef %.0.val453.i, ptr noundef %i.bcl) #30 ; 0 uses
  %i.bcn = load i32, ptr %i.w, align 8, !tbaa !151 ; 3 uses
  %i.bco = icmp slt i32 %i.axh, %i.bcn
  br i1 %i.bco, label %.preheader874.i, label %._crit_edge1001.i, !llvm.loop !322

._crit_edge1001.i:                                ; preds = %._crit_edge998.i, %Vec_IntGrowResize.exit659.i
  %i.bcp = phi i32 [ %i.avz, %Vec_IntGrowResize.exit659.i ], [ %i.bcn, %._crit_edge998.i ]
  %i.bcq = getelementptr inbounds nuw i8, ptr %.0.i44, i64 8
  %i.bcr = load ptr, ptr %i.bcq, align 8, !tbaa !49 ; 2 uses
  %.not.i727.i = icmp eq ptr %i.bcr, null
  br i1 %.not.i727.i, label %Vec_IntFree.exit.i, label %bb.hr

bb.hr:                                            ; preds = %._crit_edge1001.i
  call void @free(ptr noundef nonnull %i.bcr) #30
  %.pre1144.i = load i32, ptr %i.w, align 8, !tbaa !151
  br label %Vec_IntFree.exit.i

Vec_IntFree.exit.i:                               ; preds = %bb.hr, %._crit_edge1001.i
  %i.bcs = phi i32 [ %i.bcp, %._crit_edge1001.i ], [ %.pre1144.i, %bb.hr ] ; 2 uses
  call void @free(ptr noundef nonnull %.0.i44) #30
  %i.bct = icmp sgt i32 %i.bcs, 1
  br i1 %i.bct, label %.lr.ph1008.i, label %._crit_edge1029.i

.lr.ph1008.i:                                     ; preds = %Vec_IntFree.exit.i
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 5 uses
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  br label %bb.hs

.loopexit870.i:                                   ; preds = %._crit_edge1004.i, %.preheader869.lr.ph.i, %bb.hs
  %i.bcw = phi i32 [ %i.bcz, %.preheader869.lr.ph.i ], [ %i.bcz, %bb.hs ], [ %i.bgz, %._crit_edge1004.i ] ; 5 uses
  %i.bcx = add nsw i32 %i.bcw, -1
  %i.bcy = icmp slt i32 %i.bda, %i.bcx
  br i1 %i.bcy, label %bb.hs, label %._crit_edge1009.i, !llvm.loop !323

bb.hs:                                            ; preds = %.loopexit870.i, %.lr.ph1008.i
  %i.bcz = phi i32 [ %i.bcs, %.lr.ph1008.i ], [ %i.bcw, %.loopexit870.i ] ; 5 uses
  %.84341007.i = phi i32 [ 0, %.lr.ph1008.i ], [ %i.bda, %.loopexit870.i ] ; 6 uses
  %i.bda = add nuw nsw i32 %.84341007.i, 1        ; 4 uses
  %invariant.op1005.i = sub nsw i32 1, %.84341007.i ; 2 uses
  %i.bdb = icmp slt i32 %i.bda, %i.bcz
  br i1 %i.bdb, label %.preheader869.lr.ph.i, label %.loopexit870.i

.preheader869.lr.ph.i:                            ; preds = %bb.hs
  %.not848.i = icmp eq i32 %.84341007.i, 0
  %i.bdc = load i32, ptr %i.ai, align 4, !tbaa !108 ; 2 uses
  %i.bdd = icmp sgt i32 %i.bdc, %invariant.op1005.i
  br i1 %i.bdd, label %.preheader869.i, label %.loopexit870.i

.preheader869.i:                                  ; preds = %.preheader869.lr.ph.i, %._crit_edge1004.i
  %i.bde = phi i32 [ %i.bgz, %._crit_edge1004.i ], [ %i.bcz, %.preheader869.lr.ph.i ]
  %i.bdf = phi i32 [ %i.bha, %._crit_edge1004.i ], [ %i.bcz, %.preheader869.lr.ph.i ]
  %i.bdg = phi i32 [ %i.bhb, %._crit_edge1004.i ], [ %i.bdc, %.preheader869.lr.ph.i ] ; 2 uses
  %.14081006.i = phi i32 [ %i.bhc, %._crit_edge1004.i ], [ %i.bda, %.preheader869.lr.ph.i ] ; 6 uses
  %i.bdh = icmp sgt i32 %i.bdg, %invariant.op1005.i
  br i1 %i.bdh, label %.preheader868.i.preheader, label %._crit_edge1004.i

.preheader868.i.preheader:                        ; preds = %.preheader869.i
  %min.iters.check748 = icmp samesign ult i32 %.14081006.i, 8
  %n.vec750 = and i32 %.14081006.i, 2147483640    ; 3 uses
  %cmp.n764 = icmp eq i32 %.14081006.i, %n.vec750
  br label %.preheader868.i

.preheader868.i:                                  ; preds = %.preheader868.i.preheader, %bb.hu
  %.24141003.i = phi i32 [ %i.bgv, %bb.hu ], [ 1, %.preheader868.i.preheader ] ; 5 uses
  %.neg18.i745.i = xor i32 %.24141003.i, -1       ; 2 uses
  %i.bdi = add nsw i32 %.84341007.i, %.neg18.i745.i
  br label %bb.ht

bb.ht:                                            ; preds = %Ses_ManSelectVar.exit751.i, %.preheader868.i
  %.44211002.i = phi i32 [ 0, %.preheader868.i ], [ %i.bgu, %Ses_ManSelectVar.exit751.i ] ; 4 uses
  %.val480.i = load i32, ptr %i.ai, align 4, !tbaa !108 ; 12 uses
  %.val481.i = load i32, ptr %i.bv, align 8, !tbaa !254 ; 5 uses
  %i.bdj = add i32 %.val480.i, %.84341007.i       ; 4 uses
  br i1 %.not848.i, label %Ses_ManSelectVar.exit735.i, label %.lr.ph.i732.i.preheader

.lr.ph.i732.i.preheader:                          ; preds = %bb.ht
  %i.bdk = add i32 %.val480.i, 1
  %i.bdl = call i32 @llvm.smax.i32(i32 %i.bdj, i32 %i.bdk)
  %i.bdm = sub i32 %i.bdl, %.val480.i             ; 3 uses
  %min.iters.check788 = icmp ult i32 %i.bdm, 8
  br i1 %min.iters.check788, label %.lr.ph.i732.i.preheader1033, label %vector.ph789

vector.ph789:                                     ; preds = %.lr.ph.i732.i.preheader
  %n.vec790 = and i32 %i.bdm, -8                  ; 3 uses
  %i.bdn = add i32 %.val480.i, %n.vec790
  %i.bdo = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.val481.i, i64 0
  %broadcast.splatinsert791 = insertelement <4 x i32> poison, i32 %.val480.i, i64 0
  %broadcast.splat792 = shufflevector <4 x i32> %broadcast.splatinsert791, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction793 = add nsw <4 x i32> %broadcast.splat792, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body794

vector.body794:                                   ; preds = %vector.body794, %vector.ph789
  %index795 = phi i32 [ 0, %vector.ph789 ], [ %index.next800, %vector.body794 ]
  %vec.phi796 = phi <4 x i32> [ %i.bdo, %vector.ph789 ], [ %i.bdv, %vector.body794 ]
  %vec.phi797 = phi <4 x i32> [ zeroinitializer, %vector.ph789 ], [ %i.bdw, %vector.body794 ]
  %vec.ind798 = phi <4 x i32> [ %induction793, %vector.ph789 ], [ %vec.ind.next801, %vector.body794 ] ; 5 uses
  %step.add799 = add nsw <4 x i32> %vec.ind798, splat (i32 4)
  %i.bdp = add nsw <4 x i32> %vec.ind798, splat (i32 -1)
  %i.bdq = add nsw <4 x i32> %vec.ind798, splat (i32 3)
  %i.bdr = mul nsw <4 x i32> %i.bdp, %vec.ind798
  %i.bds = mul nsw <4 x i32> %i.bdq, %step.add799
  %i.bdt = sdiv <4 x i32> %i.bdr, splat (i32 2)
  %i.bdu = sdiv <4 x i32> %i.bds, splat (i32 2)
  %i.bdv = add <4 x i32> %i.bdt, %vec.phi796      ; 2 uses
  %i.bdw = add <4 x i32> %i.bdu, %vec.phi797      ; 2 uses
  %index.next800 = add nuw i32 %index795, 8       ; 2 uses
  %vec.ind.next801 = add nsw <4 x i32> %vec.ind798, splat (i32 8)
  %i.bdx = icmp eq i32 %index.next800, %n.vec790
  br i1 %i.bdx, label %middle.block802, label %vector.body794, !llvm.loop !324

middle.block802:                                  ; preds = %vector.body794
  %bin.rdx803 = add <4 x i32> %i.bdw, %i.bdv
  %i.bdy = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx803) ; 2 uses
  %cmp.n804 = icmp eq i32 %i.bdm, %n.vec790
  br i1 %cmp.n804, label %Ses_ManSelectVar.exit735.i, label %.lr.ph.i732.i.preheader1033

.lr.ph.i732.i.preheader1033:                      ; preds = %.lr.ph.i732.i.preheader, %middle.block802
  %.02.i733.i.ph = phi i32 [ %.val481.i, %.lr.ph.i732.i.preheader ], [ %i.bdy, %middle.block802 ]
  %.0151.i734.i.ph = phi i32 [ %.val480.i, %.lr.ph.i732.i.preheader ], [ %i.bdn, %middle.block802 ]
  br label %.lr.ph.i732.i

.lr.ph.i732.i:                                    ; preds = %.lr.ph.i732.i.preheader1033, %.lr.ph.i732.i
  %.02.i733.i = phi i32 [ %i.bec, %.lr.ph.i732.i ], [ %.02.i733.i.ph, %.lr.ph.i732.i.preheader1033 ]
  %.0151.i734.i = phi i32 [ %i.bed, %.lr.ph.i732.i ], [ %.0151.i734.i.ph, %.lr.ph.i732.i.preheader1033 ] ; 3 uses
  %i.bdz = add nsw i32 %.0151.i734.i, -1
  %i.bea = mul nsw i32 %i.bdz, %.0151.i734.i
  %i.beb = sdiv i32 %i.bea, 2
  %i.bec = add nsw i32 %i.beb, %.02.i733.i        ; 2 uses
  %i.bed = add nsw i32 %.0151.i734.i, 1           ; 2 uses
  %i.bee = icmp slt i32 %i.bed, %i.bdj
  br i1 %i.bee, label %.lr.ph.i732.i, label %Ses_ManSelectVar.exit735.i, !llvm.loop !325

Ses_ManSelectVar.exit735.i:                       ; preds = %.lr.ph.i732.i, %middle.block802, %bb.ht
  %.0.lcssa.i728.i = phi i32 [ %.val481.i, %bb.ht ], [ %i.bdy, %middle.block802 ], [ %i.bec, %.lr.ph.i732.i ]
  %.neg18.i729.i = xor i32 %.44211002.i, -1       ; 4 uses
  %i.bef = shl nsw i32 %i.bdj, 1
  %.neg.i730.i = add i32 %i.bef, %.neg18.i729.i
  %.neg17.i731.i = mul i32 %.neg.i730.i, %.44211002.i
  %i.beg = sdiv i32 %.neg17.i731.i, 2
  %i.beh = add nsw i32 %.24141003.i, %.neg18.i729.i
  %i.bei = add i32 %i.beh, %i.beg
  %i.bej = add i32 %i.bei, %.0.lcssa.i728.i
  %i.bek = shl nsw i32 %i.bej, 1
  %i.bel = or disjoint i32 %i.bek, 1
  store i32 %i.bel, ptr %i.a, align 4, !tbaa !10
  %i.bem = add nsw i32 %.val480.i, %.14081006.i   ; 3 uses
  %i.ben = add i32 %.val480.i, 1
  %i.beo = call i32 @llvm.smax.i32(i32 %i.bem, i32 %i.ben)
  %i.bep = sub i32 %i.beo, %.val480.i             ; 3 uses
  %min.iters.check768 = icmp ult i32 %i.bep, 8
  br i1 %min.iters.check768, label %.lr.ph.i740.i.preheader, label %vector.ph769

vector.ph769:                                     ; preds = %Ses_ManSelectVar.exit735.i
  %n.vec770 = and i32 %i.bep, -8                  ; 3 uses
  %i.beq = add i32 %.val480.i, %n.vec770
  %i.ber = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.val481.i, i64 0
  %broadcast.splatinsert771 = insertelement <4 x i32> poison, i32 %.val480.i, i64 0
  %broadcast.splat772 = shufflevector <4 x i32> %broadcast.splatinsert771, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction773 = add nsw <4 x i32> %broadcast.splat772, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body774

vector.body774:                                   ; preds = %vector.body774, %vector.ph769
  %index775 = phi i32 [ 0, %vector.ph769 ], [ %index.next780, %vector.body774 ]
  %vec.phi776 = phi <4 x i32> [ %i.ber, %vector.ph769 ], [ %i.bey, %vector.body774 ]
  %vec.phi777 = phi <4 x i32> [ zeroinitializer, %vector.ph769 ], [ %i.bez, %vector.body774 ]
  %vec.ind778 = phi <4 x i32> [ %induction773, %vector.ph769 ], [ %vec.ind.next781, %vector.body774 ] ; 5 uses
  %step.add779 = add nsw <4 x i32> %vec.ind778, splat (i32 4)
  %i.bes = add nsw <4 x i32> %vec.ind778, splat (i32 -1)
  %i.bet = add nsw <4 x i32> %vec.ind778, splat (i32 3)
  %i.beu = mul nsw <4 x i32> %i.bes, %vec.ind778
  %i.bev = mul nsw <4 x i32> %i.bet, %step.add779
  %i.bew = sdiv <4 x i32> %i.beu, splat (i32 2)
  %i.bex = sdiv <4 x i32> %i.bev, splat (i32 2)
  %i.bey = add <4 x i32> %i.bew, %vec.phi776      ; 2 uses
  %i.bez = add <4 x i32> %i.bex, %vec.phi777      ; 2 uses
  %index.next780 = add nuw i32 %index775, 8       ; 2 uses
  %vec.ind.next781 = add nsw <4 x i32> %vec.ind778, splat (i32 8)
  %i.bfa = icmp eq i32 %index.next780, %n.vec770
  br i1 %i.bfa, label %middle.block782, label %vector.body774, !llvm.loop !326

middle.block782:                                  ; preds = %vector.body774
  %bin.rdx783 = add <4 x i32> %i.bez, %i.bey
  %i.bfb = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx783) ; 2 uses
  %cmp.n784 = icmp eq i32 %i.bep, %n.vec770
  br i1 %cmp.n784, label %Ses_ManSelectVar.exit743.i, label %.lr.ph.i740.i.preheader

.lr.ph.i740.i.preheader:                          ; preds = %Ses_ManSelectVar.exit735.i, %middle.block782
  %.02.i741.i.ph = phi i32 [ %.val481.i, %Ses_ManSelectVar.exit735.i ], [ %i.bfb, %middle.block782 ]
  %.0151.i742.i.ph = phi i32 [ %.val480.i, %Ses_ManSelectVar.exit735.i ], [ %i.beq, %middle.block782 ]
  br label %.lr.ph.i740.i

.lr.ph.i740.i:                                    ; preds = %.lr.ph.i740.i.preheader, %.lr.ph.i740.i
  %.02.i741.i = phi i32 [ %i.bff, %.lr.ph.i740.i ], [ %.02.i741.i.ph, %.lr.ph.i740.i.preheader ]
  %.0151.i742.i = phi i32 [ %i.bfg, %.lr.ph.i740.i ], [ %.0151.i742.i.ph, %.lr.ph.i740.i.preheader ] ; 3 uses
  %i.bfc = add nsw i32 %.0151.i742.i, -1
  %i.bfd = mul nsw i32 %i.bfc, %.0151.i742.i
  %i.bfe = sdiv i32 %i.bfd, 2
  %i.bff = add nsw i32 %i.bfe, %.02.i741.i        ; 2 uses
  %i.bfg = add nsw i32 %.0151.i742.i, 1           ; 2 uses
  %i.bfh = icmp slt i32 %i.bfg, %i.bem
  br i1 %i.bfh, label %.lr.ph.i740.i, label %Ses_ManSelectVar.exit743.i, !llvm.loop !327

Ses_ManSelectVar.exit743.i:                       ; preds = %.lr.ph.i740.i, %middle.block782
  %.lcssa507 = phi i32 [ %i.bfb, %middle.block782 ], [ %i.bff, %.lr.ph.i740.i ]
  %i.bfi = shl nsw i32 %i.bem, 1
  %.neg.i738.i = add i32 %i.bfi, %.neg18.i729.i
  %.neg17.i739.i = mul i32 %.neg.i738.i, %.44211002.i
  %i.bfj = sdiv i32 %.neg17.i739.i, 2
  %i.bfk = add i32 %i.bdj, %.neg18.i729.i
  %i.bfl = add i32 %i.bfk, %i.bfj
  %i.bfm = add i32 %i.bfl, %.lcssa507
  %i.bfn = shl nsw i32 %i.bfm, 1
  %i.bfo = or disjoint i32 %i.bfn, 1
  store i32 %i.bfo, ptr %i.bcu, align 4, !tbaa !10
  %i.bfp = load ptr, ptr %0, align 8, !tbaa !104
  %i.bfq = call i32 @sat_solver_addclause(ptr noundef %i.bfp, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bcv) #30 ; 0 uses
  %i.bfr = load i32, ptr %i.ai, align 4, !tbaa !108 ; 5 uses
  %.val477.i = load i32, ptr %i.bv, align 8, !tbaa !254 ; 2 uses
  %i.bfs = add nsw i32 %i.bfr, %.14081006.i       ; 2 uses
  br i1 %min.iters.check748, label %.lr.ph.i748.i.preheader, label %vector.ph749

vector.ph749:                                     ; preds = %Ses_ManSelectVar.exit743.i
  %i.bft = add i32 %i.bfr, %n.vec750
  %i.bfu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.val477.i, i64 0
  %broadcast.splatinsert751 = insertelement <4 x i32> poison, i32 %i.bfr, i64 0
  %broadcast.splat752 = shufflevector <4 x i32> %broadcast.splatinsert751, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction753 = add nsw <4 x i32> %broadcast.splat752, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body754

vector.body754:                                   ; preds = %vector.body754, %vector.ph749
  %index755 = phi i32 [ 0, %vector.ph749 ], [ %index.next760, %vector.body754 ]
  %vec.phi756 = phi <4 x i32> [ %i.bfu, %vector.ph749 ], [ %i.bgb, %vector.body754 ]
  %vec.phi757 = phi <4 x i32> [ zeroinitializer, %vector.ph749 ], [ %i.bgc, %vector.body754 ]
  %vec.ind758 = phi <4 x i32> [ %induction753, %vector.ph749 ], [ %vec.ind.next761, %vector.body754 ] ; 5 uses
  %step.add759 = add nsw <4 x i32> %vec.ind758, splat (i32 4)
  %i.bfv = add nsw <4 x i32> %vec.ind758, splat (i32 -1)
  %i.bfw = add nsw <4 x i32> %vec.ind758, splat (i32 3)
  %i.bfx = mul nsw <4 x i32> %i.bfv, %vec.ind758
  %i.bfy = mul nsw <4 x i32> %i.bfw, %step.add759
  %i.bfz = sdiv <4 x i32> %i.bfx, splat (i32 2)
  %i.bga = sdiv <4 x i32> %i.bfy, splat (i32 2)
  %i.bgb = add <4 x i32> %i.bfz, %vec.phi756      ; 2 uses
  %i.bgc = add <4 x i32> %i.bga, %vec.phi757      ; 2 uses
  %index.next760 = add nuw i32 %index755, 8       ; 2 uses
  %vec.ind.next761 = add nsw <4 x i32> %vec.ind758, splat (i32 8)
  %i.bgd = icmp eq i32 %index.next760, %n.vec750
  br i1 %i.bgd, label %middle.block762, label %vector.body754, !llvm.loop !328

middle.block762:                                  ; preds = %vector.body754
  %bin.rdx763 = add <4 x i32> %i.bgc, %i.bgb
  %i.bge = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx763) ; 2 uses
  br i1 %cmp.n764, label %Ses_ManSelectVar.exit751.i, label %.lr.ph.i748.i.preheader

.lr.ph.i748.i.preheader:                          ; preds = %Ses_ManSelectVar.exit743.i, %middle.block762
  %.02.i749.i.ph = phi i32 [ %.val477.i, %Ses_ManSelectVar.exit743.i ], [ %i.bge, %middle.block762 ]
  %.0151.i750.i.ph = phi i32 [ %i.bfr, %Ses_ManSelectVar.exit743.i ], [ %i.bft, %middle.block762 ]
  br label %.lr.ph.i748.i

.lr.ph.i748.i:                                    ; preds = %.lr.ph.i748.i.preheader, %.lr.ph.i748.i
  %.02.i749.i = phi i32 [ %i.bgi, %.lr.ph.i748.i ], [ %.02.i749.i.ph, %.lr.ph.i748.i.preheader ]
  %.0151.i750.i = phi i32 [ %i.bgj, %.lr.ph.i748.i ], [ %.0151.i750.i.ph, %.lr.ph.i748.i.preheader ] ; 3 uses
  %i.bgf = add nsw i32 %.0151.i750.i, -1
  %i.bgg = mul nsw i32 %i.bgf, %.0151.i750.i
  %i.bgh = sdiv i32 %i.bgg, 2
  %i.bgi = add nsw i32 %i.bgh, %.02.i749.i        ; 2 uses
  %i.bgj = add nsw i32 %.0151.i750.i, 1           ; 2 uses
  %i.bgk = icmp slt i32 %i.bgj, %i.bfs
  br i1 %i.bgk, label %.lr.ph.i748.i, label %Ses_ManSelectVar.exit751.i, !llvm.loop !329

Ses_ManSelectVar.exit751.i:                       ; preds = %.lr.ph.i748.i, %middle.block762
  %.lcssa508 = phi i32 [ %i.bge, %middle.block762 ], [ %i.bgi, %.lr.ph.i748.i ]
  %i.bgl = shl nsw i32 %i.bfs, 1
  %.neg.i746.i = add i32 %i.bgl, %.neg18.i745.i
  %.neg17.i747.i = mul i32 %.neg.i746.i, %.24141003.i
  %i.bgm = sdiv i32 %.neg17.i747.i, 2
  %i.bgn = add i32 %i.bdi, %i.bfr
  %i.bgo = add i32 %i.bgn, %i.bgm
  %i.bgp = add i32 %i.bgo, %.lcssa508
  %i.bgq = shl nsw i32 %i.bgp, 1
  %i.bgr = or disjoint i32 %i.bgq, 1
  store i32 %i.bgr, ptr %i.bcu, align 4, !tbaa !10
  %i.bgs = load ptr, ptr %0, align 8, !tbaa !104
  %i.bgt = call i32 @sat_solver_addclause(ptr noundef %i.bgs, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bcv) #30 ; 0 uses
  %i.bgu = add nuw nsw i32 %.44211002.i, 1        ; 2 uses
  %exitcond1096.not.i = icmp eq i32 %i.bgu, %.24141003.i
  br i1 %exitcond1096.not.i, label %bb.hu, label %bb.ht, !llvm.loop !330

bb.hu:                                            ; preds = %Ses_ManSelectVar.exit751.i
  %i.bgv = add nuw nsw i32 %.24141003.i, 1        ; 2 uses
  %i.bgw = load i32, ptr %i.ai, align 4, !tbaa !108 ; 2 uses
  %i.bgx = add nsw i32 %i.bgw, %.84341007.i
  %i.bgy = icmp slt i32 %i.bgv, %i.bgx
  br i1 %i.bgy, label %.preheader868.i, label %._crit_edge1004.loopexit.i, !llvm.loop !331

._crit_edge1004.loopexit.i:                       ; preds = %bb.hu
  %.pre1145.i = load i32, ptr %i.w, align 8, !tbaa !151 ; 2 uses
  br label %._crit_edge1004.i

._crit_edge1004.i:                                ; preds = %._crit_edge1004.loopexit.i, %.preheader869.i
  %i.bgz = phi i32 [ %.pre1145.i, %._crit_edge1004.loopexit.i ], [ %i.bde, %.preheader869.i ] ; 2 uses
  %i.bha = phi i32 [ %.pre1145.i, %._crit_edge1004.loopexit.i ], [ %i.bdf, %.preheader869.i ] ; 2 uses
  %i.bhb = phi i32 [ %i.bgw, %._crit_edge1004.loopexit.i ], [ %i.bdg, %.preheader869.i ]
  %i.bhc = add nuw nsw i32 %.14081006.i, 1        ; 2 uses
  %i.bhd = icmp slt i32 %i.bhc, %i.bha
  br i1 %i.bhd, label %.preheader869.i, label %.loopexit870.i, !llvm.loop !332

._crit_edge1009.i:                                ; preds = %.loopexit870.i
  %i.bhe = icmp sgt i32 %i.bcw, 2
  br i1 %i.bhe, label %.lr.ph1020.i, label %.thread.i

.lr.ph1020.i:                                     ; preds = %._crit_edge1009.i
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.hv

.loopexit866.i:                                   ; preds = %.loopexit865.i, %bb.hv
  %i.bhg = phi i32 [ %i.bhj, %bb.hv ], [ %i.bhn, %.loopexit865.i ] ; 3 uses
  %i.bhh = add nsw i32 %i.bhg, -2
  %i.bhi = icmp slt i32 %i.bhk, %i.bhh
  br i1 %i.bhi, label %bb.hv, label %.thread.i, !llvm.loop !333

bb.hv:                                            ; preds = %.loopexit866.i, %.lr.ph1020.i
  %i.bhj = phi i32 [ %i.bcw, %.lr.ph1020.i ], [ %i.bhg, %.loopexit866.i ] ; 4 uses
  %.94351019.i = phi i32 [ 0, %.lr.ph1020.i ], [ %i.bhk, %.loopexit866.i ] ; 7 uses
  %i.bhk = add nuw nsw i32 %.94351019.i, 1        ; 4 uses
  %i.bhl = add nsw i32 %i.bhj, -1
  %i.bhm = icmp slt i32 %i.bhk, %i.bhl
  br i1 %i.bhm, label %.lr.ph1018.i, label %.loopexit866.i

.lr.ph1018.i:                                     ; preds = %bb.hv
  %invariant.op1014.i = sub nsw i32 1, %.94351019.i ; 2 uses
  %.not847.i = icmp eq i32 %.94351019.i, 0
  %.neg18.i769.i = xor i32 %.94351019.i, -1       ; 2 uses
  br label %bb.hw

.loopexit865.i:                                   ; preds = %._crit_edge1013.i, %.preheader864.lr.ph.i, %bb.hw
  %i.bhn = phi i32 [ %i.bhr, %.preheader864.lr.ph.i ], [ %i.bhr, %bb.hw ], [ %i.blr, %._crit_edge1013.i ] ; 2 uses
  %i.bho = phi i32 [ %i.bhs, %.preheader864.lr.ph.i ], [ %i.bhs, %bb.hw ], [ %i.bls, %._crit_edge1013.i ] ; 2 uses
  %i.bhp = add nsw i32 %i.bho, -1
  %i.bhq = icmp slt i32 %i.bht, %i.bhp
  br i1 %i.bhq, label %bb.hw, label %.loopexit866.i, !llvm.loop !334

bb.hw:                                            ; preds = %.loopexit865.i, %.lr.ph1018.i
  %i.bhr = phi i32 [ %i.bhj, %.lr.ph1018.i ], [ %i.bhn, %.loopexit865.i ] ; 3 uses
  %i.bhs = phi i32 [ %i.bhj, %.lr.ph1018.i ], [ %i.bho, %.loopexit865.i ] ; 5 uses
  %.24091016.i = phi i32 [ %i.bhk, %.lr.ph1018.i ], [ %i.bht, %.loopexit865.i ] ; 3 uses
  %i.bht = add nuw nsw i32 %.24091016.i, 1        ; 4 uses
  %i.bhu = icmp slt i32 %i.bht, %i.bhs
  br i1 %i.bhu, label %.preheader864.lr.ph.i, label %.loopexit865.i

.preheader864.lr.ph.i:                            ; preds = %bb.hw
  %i.bhv = add nsw i32 %.24091016.i, %.neg18.i769.i
  %i.bhw = load i32, ptr %i.ai, align 4, !tbaa !108 ; 2 uses
  %i.bhx = icmp sgt i32 %i.bhw, %invariant.op1014.i
  br i1 %i.bhx, label %.preheader864.i, label %.loopexit865.i

.preheader864.i:                                  ; preds = %.preheader864.lr.ph.i, %._crit_edge1013.i
  %i.bhy = phi i32 [ %i.blr, %._crit_edge1013.i ], [ %i.bhr, %.preheader864.lr.ph.i ]
  %i.bhz = phi i32 [ %i.bls, %._crit_edge1013.i ], [ %i.bhs, %.preheader864.lr.ph.i ]
  %i.bia = phi i32 [ %i.blt, %._crit_edge1013.i ], [ %i.bhs, %.preheader864.lr.ph.i ]
  %i.bib = phi i32 [ %i.blu, %._crit_edge1013.i ], [ %i.bhw, %.preheader864.lr.ph.i ] ; 2 uses
  %.04021015.i = phi i32 [ %i.blv, %._crit_edge1013.i ], [ %i.bht, %.preheader864.lr.ph.i ] ; 2 uses
  %i.bic = icmp sgt i32 %i.bib, %invariant.op1014.i
  br i1 %i.bic, label %.preheader863.i, label %._crit_edge1013.i

.preheader863.i:                                  ; preds = %.preheader864.i, %bb.hy
  %.34151012.i = phi i32 [ %i.bln, %bb.hy ], [ 1, %.preheader864.i ] ; 3 uses
  br label %bb.hx

bb.hx:                                            ; preds = %Ses_ManSelectVar.exit775.i, %.preheader863.i
  %.54221011.i = phi i32 [ 0, %.preheader863.i ], [ %i.blm, %Ses_ManSelectVar.exit775.i ] ; 4 uses
  %.val474.i = load i32, ptr %i.ai, align 4, !tbaa !108 ; 18 uses
  %.val475.i = load i32, ptr %i.bv, align 8, !tbaa !254 ; 7 uses
  %i.bid = add i32 %.val474.i, %.94351019.i       ; 3 uses
  br i1 %.not847.i, label %Ses_ManSelectVar.exit759.i, label %.lr.ph.i756.i.preheader

.lr.ph.i756.i.preheader:                          ; preds = %bb.hx
  %i.bie = add i32 %.val474.i, 1
  %i.bif = call i32 @llvm.smax.i32(i32 %i.bid, i32 %i.bie)
  %i.big = sub i32 %i.bif, %.val474.i             ; 3 uses
  %min.iters.check848 = icmp ult i32 %i.big, 8
  br i1 %min.iters.check848, label %.lr.ph.i756.i.preheader1018, label %vector.ph849

vector.ph849:                                     ; preds = %.lr.ph.i756.i.preheader
  %n.vec850 = and i32 %i.big, -8                  ; 3 uses
  %i.bih = add i32 %.val474.i, %n.vec850
  %i.bii = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.val475.i, i64 0
  %broadcast.splatinsert851 = insertelement <4 x i32> poison, i32 %.val474.i, i64 0
  %broadcast.splat852 = shufflevector <4 x i32> %broadcast.splatinsert851, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction853 = add nsw <4 x i32> %broadcast.splat852, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body854

vector.body854:                                   ; preds = %vector.body854, %vector.ph849
  %index855 = phi i32 [ 0, %vector.ph849 ], [ %index.next860, %vector.body854 ]
  %vec.phi856 = phi <4 x i32> [ %i.bii, %vector.ph849 ], [ %i.bip, %vector.body854 ]
  %vec.phi857 = phi <4 x i32> [ zeroinitializer, %vector.ph849 ], [ %i.biq, %vector.body854 ]
  %vec.ind858 = phi <4 x i32> [ %induction853, %vector.ph849 ], [ %vec.ind.next861, %vector.body854 ] ; 5 uses
  %step.add859 = add nsw <4 x i32> %vec.ind858, splat (i32 4)
  %i.bij = add nsw <4 x i32> %vec.ind858, splat (i32 -1)
  %i.bik = add nsw <4 x i32> %vec.ind858, splat (i32 3)
  %i.bil = mul nsw <4 x i32> %i.bij, %vec.ind858
  %i.bim = mul nsw <4 x i32> %i.bik, %step.add859
  %i.bin = sdiv <4 x i32> %i.bil, splat (i32 2)
  %i.bio = sdiv <4 x i32> %i.bim, splat (i32 2)
  %i.bip = add <4 x i32> %i.bin, %vec.phi856      ; 2 uses
  %i.biq = add <4 x i32> %i.bio, %vec.phi857      ; 2 uses
  %index.next860 = add nuw i32 %index855, 8       ; 2 uses
  %vec.ind.next861 = add nsw <4 x i32> %vec.ind858, splat (i32 8)
  %i.bir = icmp eq i32 %index.next860, %n.vec850
  br i1 %i.bir, label %middle.block862, label %vector.body854, !llvm.loop !335

middle.block862:                                  ; preds = %vector.body854
  %bin.rdx863 = add <4 x i32> %i.biq, %i.bip
  %i.bis = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx863) ; 2 uses
  %cmp.n864 = icmp eq i32 %i.big, %n.vec850
  br i1 %cmp.n864, label %Ses_ManSelectVar.exit759.i, label %.lr.ph.i756.i.preheader1018

.lr.ph.i756.i.preheader1018:                      ; preds = %.lr.ph.i756.i.preheader, %middle.block862
  %.02.i757.i.ph = phi i32 [ %.val475.i, %.lr.ph.i756.i.preheader ], [ %i.bis, %middle.block862 ]
  %.0151.i758.i.ph = phi i32 [ %.val474.i, %.lr.ph.i756.i.preheader ], [ %i.bih, %middle.block862 ]
  br label %.lr.ph.i756.i

.lr.ph.i756.i:                                    ; preds = %.lr.ph.i756.i.preheader1018, %.lr.ph.i756.i
  %.02.i757.i = phi i32 [ %i.biw, %.lr.ph.i756.i ], [ %.02.i757.i.ph, %.lr.ph.i756.i.preheader1018 ]
  %.0151.i758.i = phi i32 [ %i.bix, %.lr.ph.i756.i ], [ %.0151.i758.i.ph, %.lr.ph.i756.i.preheader1018 ] ; 3 uses
  %i.bit = add nsw i32 %.0151.i758.i, -1
  %i.biu = mul nsw i32 %i.bit, %.0151.i758.i
  %i.biv = sdiv i32 %i.biu, 2
  %i.biw = add nsw i32 %i.biv, %.02.i757.i        ; 2 uses
  %i.bix = add nsw i32 %.0151.i758.i, 1           ; 2 uses
  %i.biy = icmp slt i32 %i.bix, %i.bid
  br i1 %i.biy, label %.lr.ph.i756.i, label %Ses_ManSelectVar.exit759.i, !llvm.loop !336

Ses_ManSelectVar.exit759.i:                       ; preds = %.lr.ph.i756.i, %middle.block862, %bb.hx
  %.0.lcssa.i752.i = phi i32 [ %.val475.i, %bb.hx ], [ %i.bis, %middle.block862 ], [ %i.biw, %.lr.ph.i756.i ]
  %.neg18.i753.i = xor i32 %.54221011.i, -1       ; 3 uses
  %i.biz = shl nsw i32 %i.bid, 1
  %.neg.i754.i = add i32 %i.biz, %.neg18.i753.i
  %.neg17.i755.i = mul i32 %.neg.i754.i, %.54221011.i
  %i.bja = sdiv i32 %.neg17.i755.i, 2
  %i.bjb = add nsw i32 %.34151012.i, %.neg18.i753.i ; 2 uses
  %i.bjc = add i32 %i.bja, %i.bjb
  %i.bjd = add i32 %i.bjc, %.0.lcssa.i752.i
  %i.bje = shl nsw i32 %i.bjd, 1
  %i.bjf = or disjoint i32 %i.bje, 1
  store i32 %i.bjf, ptr %i.a, align 4, !tbaa !10
  %i.bjg = add nsw i32 %.val474.i, %.24091016.i   ; 3 uses
  %i.bjh = add i32 %.val474.i, 1
  %i.bji = call i32 @llvm.smax.i32(i32 %i.bjg, i32 %i.bjh)
  %i.bjj = sub i32 %i.bji, %.val474.i             ; 3 uses
  %min.iters.check828 = icmp ult i32 %i.bjj, 8
  br i1 %min.iters.check828, label %.lr.ph.i764.i.preheader, label %vector.ph829

vector.ph829:                                     ; preds = %Ses_ManSelectVar.exit759.i
  %n.vec830 = and i32 %i.bjj, -8                  ; 3 uses
  %i.bjk = add i32 %.val474.i, %n.vec830
  %i.bjl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.val475.i, i64 0
  %broadcast.splatinsert831 = insertelement <4 x i32> poison, i32 %.val474.i, i64 0
  %broadcast.splat832 = shufflevector <4 x i32> %broadcast.splatinsert831, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction833 = add nsw <4 x i32> %broadcast.splat832, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body834

vector.body834:                                   ; preds = %vector.body834, %vector.ph829
  %index835 = phi i32 [ 0, %vector.ph829 ], [ %index.next840, %vector.body834 ]
  %vec.phi836 = phi <4 x i32> [ %i.bjl, %vector.ph829 ], [ %i.bjs, %vector.body834 ]
  %vec.phi837 = phi <4 x i32> [ zeroinitializer, %vector.ph829 ], [ %i.bjt, %vector.body834 ]
  %vec.ind838 = phi <4 x i32> [ %induction833, %vector.ph829 ], [ %vec.ind.next841, %vector.body834 ] ; 5 uses
  %step.add839 = add nsw <4 x i32> %vec.ind838, splat (i32 4)
  %i.bjm = add nsw <4 x i32> %vec.ind838, splat (i32 -1)
  %i.bjn = add nsw <4 x i32> %vec.ind838, splat (i32 3)
  %i.bjo = mul nsw <4 x i32> %i.bjm, %vec.ind838
  %i.bjp = mul nsw <4 x i32> %i.bjn, %step.add839
  %i.bjq = sdiv <4 x i32> %i.bjo, splat (i32 2)
  %i.bjr = sdiv <4 x i32> %i.bjp, splat (i32 2)
  %i.bjs = add <4 x i32> %i.bjq, %vec.phi836      ; 2 uses
  %i.bjt = add <4 x i32> %i.bjr, %vec.phi837      ; 2 uses
  %index.next840 = add nuw i32 %index835, 8       ; 2 uses
  %vec.ind.next841 = add nsw <4 x i32> %vec.ind838, splat (i32 8)
  %i.bju = icmp eq i32 %index.next840, %n.vec830
  br i1 %i.bju, label %middle.block842, label %vector.body834, !llvm.loop !337

middle.block842:                                  ; preds = %vector.body834
  %bin.rdx843 = add <4 x i32> %i.bjt, %i.bjs
  %i.bjv = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx843) ; 2 uses
  %cmp.n844 = icmp eq i32 %i.bjj, %n.vec830
  br i1 %cmp.n844, label %Ses_ManSelectVar.exit767.i, label %.lr.ph.i764.i.preheader

.lr.ph.i764.i.preheader:                          ; preds = %Ses_ManSelectVar.exit759.i, %middle.block842
  %.02.i765.i.ph = phi i32 [ %.val475.i, %Ses_ManSelectVar.exit759.i ], [ %i.bjv, %middle.block842 ]
  %.0151.i766.i.ph = phi i32 [ %.val474.i, %Ses_ManSelectVar.exit759.i ], [ %i.bjk, %middle.block842 ]
  br label %.lr.ph.i764.i

.lr.ph.i764.i:                                    ; preds = %.lr.ph.i764.i.preheader, %.lr.ph.i764.i
  %.02.i765.i = phi i32 [ %i.bjz, %.lr.ph.i764.i ], [ %.02.i765.i.ph, %.lr.ph.i764.i.preheader ]
  %.0151.i766.i = phi i32 [ %i.bka, %.lr.ph.i764.i ], [ %.0151.i766.i.ph, %.lr.ph.i764.i.preheader ] ; 3 uses
  %i.bjw = add nsw i32 %.0151.i766.i, -1
  %i.bjx = mul nsw i32 %i.bjw, %.0151.i766.i
  %i.bjy = sdiv i32 %i.bjx, 2
  %i.bjz = add nsw i32 %i.bjy, %.02.i765.i        ; 2 uses
  %i.bka = add nsw i32 %.0151.i766.i, 1           ; 2 uses
  %i.bkb = icmp slt i32 %i.bka, %i.bjg
  br i1 %i.bkb, label %.lr.ph.i764.i, label %Ses_ManSelectVar.exit767.i, !llvm.loop !338

Ses_ManSelectVar.exit767.i:                       ; preds = %.lr.ph.i764.i, %middle.block842
  %.lcssa499 = phi i32 [ %i.bjv, %middle.block842 ], [ %i.bjz, %.lr.ph.i764.i ]
  %i.bkc = shl nsw i32 %i.bjg, 1
  %.neg.i762.i = add i32 %i.bkc, %.neg18.i753.i
  %.neg17.i763.i = mul i32 %.neg.i762.i, %.54221011.i
  %i.bkd = sdiv i32 %.neg17.i763.i, 2
  %i.bke = add i32 %i.bkd, %i.bjb
  %i.bkf = add i32 %i.bke, %.lcssa499
  %i.bkg = shl nsw i32 %i.bkf, 1
  %i.bkh = or disjoint i32 %i.bkg, 1
  store i32 %i.bkh, ptr %i.bcu, align 4, !tbaa !10
  %i.bki = add nsw i32 %.val474.i, %.04021015.i   ; 3 uses
  %i.bkj = add i32 %.val474.i, 1
  %i.bkk = call i32 @llvm.smax.i32(i32 %i.bki, i32 %i.bkj)
  %i.bkl = sub i32 %i.bkk, %.val474.i             ; 3 uses
  %min.iters.check808 = icmp ult i32 %i.bkl, 8
  br i1 %min.iters.check808, label %.lr.ph.i772.i.preheader, label %vector.ph809

vector.ph809:                                     ; preds = %Ses_ManSelectVar.exit767.i
  %n.vec810 = and i32 %i.bkl, -8                  ; 3 uses
  %i.bkm = add i32 %.val474.i, %n.vec810
  %i.bkn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.val475.i, i64 0
  %broadcast.splatinsert811 = insertelement <4 x i32> poison, i32 %.val474.i, i64 0
  %broadcast.splat812 = shufflevector <4 x i32> %broadcast.splatinsert811, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction813 = add nsw <4 x i32> %broadcast.splat812, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body814

vector.body814:                                   ; preds = %vector.body814, %vector.ph809
end_hunk_2
