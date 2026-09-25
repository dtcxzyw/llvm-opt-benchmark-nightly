Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/UriRecompose?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@uriToStringEngineW:bb.a
  %.not564 = icmp eq ptr %3, null
  br i1 %.not564, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

bb.s:                                             ; preds = %.thread, %bb.p
  %.3427 = phi i32 [ 0, %.thread ], [ %i.y, %bb.p ] ; 3 uses
  %i.aa = tail call i32 @uriHasHostW(ptr noundef nonnull %1) #4
  %.not565 = icmp eq i32 %i.aa, 0
  br i1 %.not565, label %bb.cr, label %bb.t

.thread864:                                       ; preds = %bb.i
  %i.ab = tail call i32 @uriHasHostW(ptr noundef nonnull %1) #4
  %.not565866 = icmp eq i32 %i.ab, 0
  br i1 %.not565866, label %bb.cr, label %.thread868

.thread639:                                       ; preds = %bb.n
  %i.ac = trunc nuw nsw i64 %i.v to i32
  %i.ad = add nuw i32 %i.ac, 1
  store i32 %i.ad, ptr %4, align 4, !tbaa !12
  %i.ae = tail call i32 @uriHasHostW(ptr noundef nonnull %1) #4
  %.not565641 = icmp eq i32 %i.ae, 0
  br i1 %.not565641, label %bb.cr, label %.thread868

bb.t:                                             ; preds = %bb.s
  %i.af = add nuw nsw i32 %.3427, 2               ; 3 uses
  %.not566.not = icmp samesign ult i32 %i.af, %2
  br i1 %.not566.not, label %.thread646, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %0, align 4, !tbaa !12
  %.not567 = icmp eq ptr %3, null
  br i1 %.not567, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

.thread868:                                       ; preds = %.thread864, %.thread639
  %i.ag = load i32, ptr %4, align 4, !tbaa !12
  %i.ah = add nsw i32 %i.ag, 2                    ; 3 uses
  store i32 %i.ah, ptr %4, align 4, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !56 ; 2 uses
  %.not568 = icmp eq ptr %i.aj, null
  br i1 %.not568, label %bb.ah, label %bb.ae

.thread646:                                       ; preds = %bb.t
  %i.ak = zext nneg i32 %.3427 to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ak
  store i64 201863462959, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !56 ; 3 uses
  %.not568648 = icmp eq ptr %i.an, null
  br i1 %.not568648, label %bb.ah, label %bb.w

bb.w:                                             ; preds = %.thread646
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 2 uses
  %i.at = ashr exact i64 %i.as, 2                 ; 2 uses
  %i.au = zext nneg i32 %i.af to i64              ; 3 uses
  %i.av = xor i64 %i.au, 2147483647
  %i.aw = icmp ugt i64 %i.at, %i.av
  br i1 %i.aw, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ax = add nuw nsw i64 %i.at, %i.au            ; 3 uses
  %i.ay = zext nneg i32 %i.f to i64
  %.not570 = icmp samesign ugt i64 %i.ax, %i.ay
  br i1 %.not570, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.az, ptr nonnull align 4 %i.an, i64 %i.as, i1 false)
  %i.ba = trunc nuw nsw i64 %i.ax to i32          ; 2 uses
  %.not572.not = icmp samesign ugt i32 %i.f, %i.ba
  br i1 %.not572.not, label %bb.ab, label %bb.ac

bb.z:                                             ; preds = %bb.x
  store i32 0, ptr %0, align 4, !tbaa !12
  %.not571 = icmp eq ptr %3, null
  br i1 %.not571, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

bb.ab:                                            ; preds = %bb.y
  %i.bb = add nuw nsw i32 %i.ba, 1
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ax
  store i32 64, ptr %i.bc, align 4
  br label %bb.ah

bb.ac:                                            ; preds = %bb.y
  store i32 0, ptr %0, align 4, !tbaa !12
  %.not573 = icmp eq ptr %3, null
  br i1 %.not573, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

bb.ae:                                            ; preds = %.thread868
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !57
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.aj to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 2                 ; 3 uses
  %i.bj = icmp ugt i64 %i.bi, 2147483646
  br i1 %i.bj, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bk = sext i32 %i.ah to i64
  %i.bl = sub nsw i64 2147483647, %i.bk
  %.not569 = icmp samesign ult i64 %i.bi, %i.bl
  br i1 %.not569, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  %i.bm = trunc nuw nsw i64 %i.bi to i32
  %i.bn = add nuw nsw i32 %i.bm, 1
  %i.bo = add i32 %i.bn, %i.ah
  store i32 %i.bo, ptr %4, align 4, !tbaa !12
  br label %bb.ah

bb.ah:                                            ; preds = %.thread646, %bb.ag, %bb.ab, %.thread868
  %.7431 = phi i32 [ 0, %.thread868 ], [ 0, %bb.ag ], [ %i.bb, %bb.ab ], [ %i.af, %.thread646 ] ; 14 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !58 ; 5 uses
  %.not574 = icmp eq ptr %i.bq, null
  br i1 %.not574, label %bb.ar, label %.preheader763

.preheader763:                                    ; preds = %bb.ah
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %i.c, label %.preheader763.split.us, label %.preheader763.split.preheader

.preheader763.split.preheader:                    ; preds = %.preheader763
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !58
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !16  ; 3 uses
  %i.bu = icmp ugt i8 %i.bt, 99                   ; 2 uses
  %i.bv = icmp ugt i8 %i.bt, 9                    ; 2 uses
  %i.bw = select i1 %i.bv, i32 2, i32 1
  %i.bx = select i1 %i.bu, i32 3, i32 %i.bw       ; 2 uses
  %i.by = add nuw nsw i32 %i.bx, %.7431           ; 2 uses
  %.not594.not935 = icmp slt i32 %i.by, %2
  br i1 %.not594.not935, label %.lr.ph, label %.preheader763.split._crit_edge

.preheader763.split.us:                           ; preds = %.preheader763
  %.promoted = load i32, ptr %4, align 4, !tbaa !12
  %i.bz = load i8, ptr %i.bq, align 1, !tbaa !16  ; 2 uses
  %i.ca = icmp ugt i8 %i.bz, 99
  %i.cb = icmp ugt i8 %i.bz, 9
  %i.cc = select i1 %i.cb, i32 3, i32 2
  %i.cd = select i1 %i.ca, i32 4, i32 %i.cc
  %i.ce = add nsw i32 %i.cd, %.promoted           ; 2 uses
  store i32 %i.ce, ptr %4, align 4, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !16  ; 2 uses
  %i.ch = icmp ugt i8 %i.cg, 99
  %i.ci = icmp ugt i8 %i.cg, 9
  %i.cj = select i1 %i.ci, i32 3, i32 2
  %i.ck = select i1 %i.ch, i32 4, i32 %i.cj
  %i.cl = add nsw i32 %i.ck, %i.ce                ; 2 uses
  store i32 %i.cl, ptr %4, align 4, !tbaa !12
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !16  ; 2 uses
  %i.co = icmp ugt i8 %i.cn, 99
  %i.cp = icmp ugt i8 %i.cn, 9
  %i.cq = select i1 %i.cp, i32 3, i32 2
  %i.cr = select i1 %i.co, i32 4, i32 %i.cq
  %i.cs = add nsw i32 %i.cr, %i.cl                ; 2 uses
  store i32 %i.cs, ptr %4, align 4, !tbaa !12
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !16  ; 2 uses
  %i.cv = icmp ugt i8 %i.cu, 99
  %i.cw = icmp ugt i8 %i.cu, 9
  %i.cx = select i1 %i.cw, i32 2, i32 1
  %i.cy = select i1 %i.cv, i32 3, i32 %i.cx
  %i.cz = add nsw i32 %i.cy, %i.cs
  store i32 %i.cz, ptr %4, align 4, !tbaa !12
  br label %.thread656

.lr.ph:                                           ; preds = %.preheader763.split.preheader, %.preheader763.split
  %i.da = phi i32 [ %i.em, %.preheader763.split ], [ %i.by, %.preheader763.split.preheader ] ; 4 uses
  %i.db = phi i32 [ %i.el, %.preheader763.split ], [ %i.bx, %.preheader763.split.preheader ]
  %i.dc = phi i1 [ %i.ej, %.preheader763.split ], [ %i.bv, %.preheader763.split.preheader ]
  %i.dd = phi i1 [ %i.ei, %.preheader763.split ], [ %i.bu, %.preheader763.split.preheader ]
  %i.de = phi i8 [ %i.eh, %.preheader763.split ], [ %i.bt, %.preheader763.split.preheader ] ; 6 uses
  %.8432770937 = phi i32 [ %i.ec, %.preheader763.split ], [ %.7431, %.preheader763.split.preheader ]
  %indvars.iv936 = phi i64 [ %indvars.iv.next, %.preheader763.split ], [ 0, %.preheader763.split.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  br i1 %i.dd, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph
  %i.df = urem i8 %i.de, 100
  %i.dg = udiv i8 %i.df, 10
  %i.dh = udiv i8 %i.de, 100
  %i.di = insertelement <2 x i8> poison, i8 %i.dh, i64 0
  %i.dj = insertelement <2 x i8> %i.di, i8 %i.dg, i64 1
  %i.dk = or disjoint <2 x i8> %i.dj, splat (i8 48)
  %i.dl = zext nneg <2 x i8> %i.dk to <2 x i32>
  store <2 x i32> %i.dl, ptr %i.a, align 16, !tbaa !12
  %i.dm = urem i8 %i.de, 10
  %i.dn = or disjoint i8 %i.dm, 48
  %i.do = zext nneg i8 %i.dn to i32
  store i32 %i.do, ptr %i.br, align 8, !tbaa !12
  br label %bb.am

bb.aj:                                            ; preds = %.lr.ph
  br i1 %i.dc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dp = udiv i8 %i.de, 10
  %i.dq = urem i8 %i.de, 10
  %i.dr = insertelement <2 x i8> poison, i8 %i.dp, i64 0
  %i.ds = insertelement <2 x i8> %i.dr, i8 %i.dq, i64 1
  %i.dt = or disjoint <2 x i8> %i.ds, splat (i8 48)
  %i.du = zext nneg <2 x i8> %i.dt to <2 x i32>
  store <2 x i32> %i.du, ptr %i.a, align 16, !tbaa !12
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.dv = or disjoint i8 %i.de, 48
  %i.dw = zext nneg i8 %i.dv to i32
  store i32 %i.dw, ptr %i.a, align 16, !tbaa !12
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.ai
  %i.dx = zext nneg i32 %i.db to i64              ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dx
  store i32 0, ptr %i.dy, align 4, !tbaa !12
  %i.dz = zext nneg i32 %.8432770937 to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dz
  %i.eb = shl nuw nsw i64 %i.dx, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ea, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.eb, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %.not596 = icmp eq i64 %indvars.iv936, 3
  br i1 %.not596, label %.thread656, label %bb.ao

.preheader763.split._crit_edge:                   ; preds = %.preheader763.split, %.preheader763.split.preheader
  store i32 0, ptr %0, align 4, !tbaa !12
  %.not595 = icmp eq ptr %3, null
  br i1 %.not595, label %.critedge, label %bb.an

bb.an:                                            ; preds = %.preheader763.split._crit_edge
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

bb.ao:                                            ; preds = %bb.am
  %.not597.not = icmp slt i32 %i.da, %i.f
  br i1 %.not597.not, label %.preheader763.split, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %0, align 4, !tbaa !12
  %.not598 = icmp eq ptr %3, null
  br i1 %.not598, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

.preheader763.split:                              ; preds = %bb.ao
  %i.ec = add nuw nsw i32 %i.da, 1                ; 2 uses
  %i.ed = zext nneg i32 %i.da to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ed
  store i32 46, ptr %i.ee, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv936, 1 ; 2 uses
  %i.ef = load ptr, ptr %i.bp, align 8, !tbaa !58
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %indvars.iv.next
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !16  ; 3 uses
  %i.ei = icmp ugt i8 %i.eh, 99                   ; 2 uses
  %i.ej = icmp ugt i8 %i.eh, 9                    ; 2 uses
  %i.ek = select i1 %i.ej, i32 2, i32 1
  %i.el = select i1 %i.ei, i32 3, i32 %i.ek       ; 2 uses
  %i.em = add nuw nsw i32 %i.el, %i.ec            ; 2 uses
  %.not594.not = icmp slt i32 %i.em, %2
  br i1 %.not594.not, label %.lr.ph, label %.preheader763.split._crit_edge

bb.ar:                                            ; preds = %bb.ah
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !59
  %.not575 = icmp eq ptr %i.eo, null
  br i1 %.not575, label %bb.bg, label %bb.as

bb.as:                                            ; preds = %bb.ar
  br i1 %i.c, label %bb.bf, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not586.not = icmp samesign ult i32 %.7431, %i.f
  br i1 %.not586.not, label %.split.preheader, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %0, align 4, !tbaa !12
  %.not587 = icmp eq ptr %3, null
  br i1 %.not587, label %.critedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

.split.preheader:                                 ; preds = %bb.at
  %i.ep = add nuw nsw i32 %.7431, 1
  %i.eq = zext nneg i32 %.7431 to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eq
  store i32 91, ptr %i.er, align 4
  br label %.split

.split:                                           ; preds = %.split.preheader, %bb.bb
  %indvars.iv792 = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next793, %bb.bb ] ; 4 uses
  %.13437772 = phi i32 [ %i.ep, %.split.preheader ], [ %.16440.ph, %bb.bb ] ; 3 uses
  %i.es = add nuw nsw i32 %.13437772, 2           ; 4 uses
  %.not590.not = icmp slt i32 %i.es, %2
  br i1 %.not590.not, label %.thread658, label %bb.aw

bb.aw:                                            ; preds = %.split
  store i32 0, ptr %0, align 4, !tbaa !12
  %.not591 = icmp eq ptr %3, null
  br i1 %.not591, label %.critedge, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

.thread658:                                       ; preds = %.split
  %i.et = load ptr, ptr %i.en, align 8, !tbaa !59
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %indvars.iv792
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !16
  %i.ew = zext i8 %i.ev to i32                    ; 2 uses
  %i.ex = lshr i32 %i.ew, 4
  %i.ey = tail call i32 @uriHexToLetterExW(i32 noundef %i.ex, i32 noundef 0) #4
  %i.ez = and i32 %i.ew, 15
  %i.fa = tail call i32 @uriHexToLetterExW(i32 noundef %i.ez, i32 noundef 0) #4
  %i.fb = zext nneg i32 %.13437772 to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fb ; 2 uses
  store i32 %i.ey, ptr %i.fc, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store i32 %i.fa, ptr %.sroa.4.0..sroa_idx, align 4
  %i.fd = trunc i64 %indvars.iv792 to i1
  %i.fe = icmp ne i64 %indvars.iv792, 15
  %or.cond15660 = and i1 %i.fe, %i.fd
  br i1 %or.cond15660, label %.thread662, label %bb.bb

.thread662:                                       ; preds = %.thread658
  %.not592.not = icmp slt i32 %i.es, %i.f
  br i1 %.not592.not, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.thread662
  %i.ff = add nuw nsw i32 %.13437772, 3
  %i.fg = zext nneg i32 %i.es to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fg
  store i32 58, ptr %i.fh, align 4
  br label %bb.bb

bb.az:                                            ; preds = %.thread662
  store i32 0, ptr %0, align 4, !tbaa !12
  %.not593 = icmp eq ptr %3, null
  br i1 %.not593, label %.critedge, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

bb.bb:                                            ; preds = %bb.ay, %.thread658
  %.16440.ph = phi i32 [ %i.es, %.thread658 ], [ %i.ff, %bb.ay ] ; 4 uses
  %indvars.iv.next793 = add nuw nsw i64 %indvars.iv792, 1 ; 2 uses
  %exitcond795.not = icmp eq i64 %indvars.iv.next793, 16
  br i1 %exitcond795.not, label %.split774, label %.split, !llvm.loop !47

.split774:                                        ; preds = %bb.bb
  %.not588.not = icmp slt i32 %.16440.ph, %i.f
  br i1 %.not588.not, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.split774
  %i.fi = add nuw nsw i32 %.16440.ph, 1
  %i.fj = zext nneg i32 %.16440.ph to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fj
  store i32 93, ptr %i.fk, align 4
  br label %.thread656

bb.bd:                                            ; preds = %.split774
  store i32 0, ptr %0, align 4, !tbaa !12
  %.not589 = icmp eq ptr %3, null
  br i1 %.not589, label %.critedge, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

bb.bf:                                            ; preds = %bb.as
  %i.fl = load i32, ptr %4, align 4, !tbaa !12
  %i.fm = add nsw i32 %i.fl, 41
  store i32 %i.fm, ptr %4, align 4, !tbaa !12
  br label %.thread656

bb.bg:                                            ; preds = %bb.ar
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !60 ; 2 uses
  %.not576 = icmp eq ptr %i.fo, null
  br i1 %.not576, label %bb.bw, label %bb.bh
end_hunk_0
