inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@FT_Bitmap_Embolden:bb.a
bb.w:                                             ; preds = %.lr.ph.split.us.i.1
  call void @llvm.memset.p0.i64(ptr align 1 %i.cu, i8 0, i64 %i.co, i1 false)
  br label %.lr.ph.split.us.i.2

.lr.ph.split.us.i.2:                              ; preds = %bb.w, %.lr.ph.split.us.i.1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.bw ; 2 uses
  %.0124.us.i.1 = getelementptr inbounds nuw i8, ptr %.0124.us.i, i64 %i.bw
  %i.cx = icmp ult ptr %.0121136.us.i, %.0124137.us.i
  br i1 %i.cx, label %bb.x, label %.lr.ph.split.us.i.3

bb.x:                                             ; preds = %.lr.ph.split.us.i.2
  call void @llvm.memset.p0.i64(ptr align 1 %i.cw, i8 0, i64 %i.co, i1 false)
  br label %.lr.ph.split.us.i.3

.lr.ph.split.us.i.3:                              ; preds = %bb.x, %.lr.ph.split.us.i.2
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.bw ; 2 uses
  %.0124.us.i.2 = getelementptr inbounds nuw i8, ptr %.0124.us.i.1, i64 %i.bw
  %i.cz = icmp ult ptr %.0121136.us.i, %.0124137.us.i
  br i1 %i.cz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.split.us.i.3
  call void @llvm.memset.p0.i64(ptr align 1 %i.cy, i8 0, i64 %i.co, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.split.us.i.3
  %i.da = add i32 %.0123135.us.i, -4              ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.bw
  %.0124.us.i.3 = getelementptr inbounds nuw i8, ptr %.0124.us.i.2, i64 %i.bw
  %.not130.us.i.3 = icmp eq i32 %i.da, 0
  br i1 %.not130.us.i.3, label %thread-pre-split, label %.lr.ph.split.us.i, !llvm.loop !33

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %bb.ac
  %.0124137.i = phi ptr [ %.0124.i.1, %bb.ac ], [ %.0124137.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 2 uses
  %.0121136.i = phi ptr [ %i.dm, %bb.ac ], [ %.0121136.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 4 uses
  %.0123135.i = phi i32 [ %i.dl, %bb.ac ], [ %.0123135.i.unr, %.lr.ph.split.i.prol.loopexit ]
  %i.dc = load i8, ptr %.0121136.i, align 1, !tbaa !23
  %i.dd = and i8 %i.dc, %i.cd
  store i8 %i.dd, ptr %.0121136.i, align 1, !tbaa !23
  %i.de = getelementptr inbounds nuw i8, ptr %.0121136.i, i64 1 ; 2 uses
  %i.df = icmp ult ptr %i.de, %.0124137.i
  br i1 %i.df, label %bb.aa, label %.lr.ph.split.i.1

bb.aa:                                            ; preds = %.lr.ph.split.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.de, i8 0, i64 %i.cf, i1 false)
  br label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %bb.aa, %.lr.ph.split.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.0121136.i, i64 %i.bw ; 4 uses
  %.0124.i = getelementptr inbounds nuw i8, ptr %.0124137.i, i64 %i.bw ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !23
  %i.di = and i8 %i.dh, %i.cd
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !23
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 1 ; 2 uses
  %i.dk = icmp ult ptr %i.dj, %.0124.i
  br i1 %i.dk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.split.i.1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dj, i8 0, i64 %i.cf, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.split.i.1
  %i.dl = add i32 %.0123135.i, -2                 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.bw
  %.0124.i.1 = getelementptr inbounds nuw i8, ptr %.0124.i, i64 %i.bw
  %.not130.i.1 = icmp eq i32 %i.dl, 0
  br i1 %.not130.i.1, label %thread-pre-split, label %.lr.ph.split.i, !llvm.loop !33

bb.ad:                                            ; preds = %bb.p
  %i.dn = zext i32 %.0115.i to i64
  %i.do = add i32 %i.bn, %.0104204
  %i.dp = zext i32 %i.do to i64
  %i.dq = call ptr @ft_mem_qrealloc(ptr noundef %i.bq, i64 noundef %i.dn, i64 noundef 0, i64 noundef %i.dp, ptr noundef null, ptr noundef nonnull %i.a) #7 ; 5 uses
  %i.dr = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not129.i = icmp eq i32 %i.dr, 0
  br i1 %.not129.i, label %bb.ae, label %ft_bitmap_assure_buffer.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ds = load i32, ptr %i.bm, align 8, !tbaa !7
  %i.dt = icmp sgt i32 %i.ds, 0
  %i.du = load ptr, ptr %i.b, align 8, !tbaa !19  ; 3 uses
  %i.dv = load i32, ptr %1, align 8, !tbaa !25
  %i.dw = mul i32 %i.dv, %i.bl                    ; 3 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dx ; 2 uses
  br i1 %i.dt, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.dz = mul i32 %.0115.i, %.0104204
  %i.ea = zext i32 %i.dz to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.dq, i8 0, i64 %i.ea, i1 false)
  %.not146.i = icmp eq i32 %i.dw, 0
  br i1 %.not146.i, label %.loopexit.i, label %.lr.ph144.i

.lr.ph144.i:                                      ; preds = %bb.af
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ea
  %i.ec = mul i32 %.0118.i, %i.bo
  %i.ed = add i32 %i.ec, 7
  %i.ee = lshr i32 %i.ed, 3                       ; 2 uses
  %i.ef = sub i32 %.0115.i, %i.ee
  %i.eg = zext nneg i32 %i.ee to i64              ; 2 uses
  %i.eh = zext nneg i32 %i.bl to i64
  %i.ei = zext i32 %i.ef to i64                   ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph144.i
  %.0119142.i = phi ptr [ %i.eb, %.lr.ph144.i ], [ %i.el, %bb.ag ] ; 2 uses
  %.0120141.i = phi ptr [ %i.du, %.lr.ph144.i ], [ %i.ej, %bb.ag ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0119142.i, ptr align 1 %.0120141.i, i64 %i.eg, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %.0120141.i, i64 %i.eh ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0119142.i, i64 %i.eg ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.ek, i8 0, i64 %i.ei, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ei
  %i.em = icmp ult ptr %i.ej, %i.dy
  br i1 %i.em, label %bb.ag, label %.loopexit.i, !llvm.loop !34

bb.ah:                                            ; preds = %bb.ae
  %.not145.i = icmp eq i32 %i.dw, 0
  br i1 %.not145.i, label %._crit_edge.i, label %.lr.ph140.i

.lr.ph140.i:                                      ; preds = %bb.ah
  %i.en = mul i32 %.0118.i, %i.bo
  %i.eo = add i32 %i.en, 7
  %i.ep = lshr i32 %i.eo, 3                       ; 2 uses
  %i.eq = sub i32 %.0115.i, %i.ep
  %i.er = zext nneg i32 %i.ep to i64              ; 2 uses
  %i.es = zext nneg i32 %i.bl to i64
  %i.et = zext i32 %i.eq to i64                   ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph140.i
  %.0116139.i = phi ptr [ %i.dq, %.lr.ph140.i ], [ %i.ew, %bb.ai ] ; 2 uses
  %.0117138.i = phi ptr [ %i.du, %.lr.ph140.i ], [ %i.eu, %bb.ai ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0116139.i, ptr align 1 %.0117138.i, i64 %i.er, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %.0117138.i, i64 %i.es ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0116139.i, i64 %i.er ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.ev, i8 0, i64 %i.et, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.et ; 2 uses
  %i.ex = icmp ult ptr %i.eu, %i.dy
  br i1 %i.ex, label %bb.ai, label %._crit_edge.i, !llvm.loop !35

._crit_edge.i:                                    ; preds = %bb.ai, %bb.ah
  %.0116.lcssa.i = phi ptr [ %i.dq, %bb.ah ], [ %i.ew, %bb.ai ]
  %i.ey = mul i32 %.0115.i, %.0104204
  %i.ez = zext i32 %i.ey to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.0116.lcssa.i, i8 0, i64 %i.ez, i1 false)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ag, %._crit_edge.i, %bb.af
  %i.fa = load ptr, ptr %i.b, align 8, !tbaa !19
  call void @ft_mem_free(ptr noundef %i.bq, ptr noundef %i.fa) #7
  store ptr %i.dq, ptr %i.b, align 8, !tbaa !19
  %i.fb = load i32, ptr %i.bm, align 8, !tbaa !7
  %i.fc = icmp slt i32 %i.fb, 0
  %i.fd = sub nsw i32 0, %.0115.i
  %storemerge.i = select i1 %i.fc, i32 %i.fd, i32 %.0115.i ; 2 uses
  store i32 %storemerge.i, ptr %i.bm, align 8, !tbaa !7
  br label %bb.aj

ft_bitmap_assure_buffer.exit:                     ; preds = %bb.k, %bb.ad
  %.0.i133 = phi i32 [ %i.dr, %bb.ad ], [ 18, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.av

thread-pre-split:                                 ; preds = %.lr.ph.split.i.prol.loopexit, %bb.ac, %.lr.ph.split.us.i.prol.loopexit, %bb.z, %bb.r, %bb.q
  %.pr = load i32, ptr %i.bm, align 8, !tbaa !7
  br label %bb.aj

bb.aj:                                            ; preds = %thread-pre-split, %.loopexit.i
  %i.fe = phi i32 [ %.pr, %thread-pre-split ], [ %storemerge.i, %.loopexit.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fg = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.fh = mul nsw i32 %i.fe, %.0104204
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fi
  %.pre177 = load i32, ptr %1, align 8, !tbaa !25
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fk = sub nsw i32 0, %i.fe                    ; 2 uses
  %i.fl = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.fm = load i32, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.fn = add i32 %i.fm, -1
  %i.fo = mul i32 %i.fn, %i.fk
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fp
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fr = phi i32 [ %.pre177, %bb.ak ], [ %i.fm, %bb.al ]
  %.0112 = phi ptr [ %i.fj, %bb.ak ], [ %i.fq, %bb.al ]
  %.0107 = phi i32 [ %i.fe, %bb.ak ], [ %i.fk, %bb.al ] ; 7 uses
  %.not164 = icmp eq i32 %i.fr, 0
  br i1 %.not164, label %._crit_edge159, label %.preheader136.lr.ph

.preheader136.lr.ph:                              ; preds = %bb.am
  %.0108144 = add nsw i32 %.0107, -1
  %.not218 = icmp eq i32 %.0107, 0
  %.not128140 = icmp slt i32 %.0105201, 1
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %.not127152 = icmp slt i32 %.0104204, 1
  %5 = icmp eq i32 %.0107, 0
  %i.ft = zext i32 %.0108144 to i64
  %brmerge = select i1 %.not127152, i1 true, i1 %5
  %wide.trip.count = zext nneg i32 %.0107 to i64  ; 9 uses
  %min.iters.check = icmp ult i32 %.0107, 4
  %min.iters.check226 = icmp ult i32 %.0107, 32
  %n.mod.vf = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec231 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n236 = icmp eq i64 %n.vec231, %wide.trip.count
  %xtraiter245 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  br label %.preheader136

.preheader136:                                    ; preds = %.preheader136.lr.ph, %._crit_edge155.split
  %.0106158 = phi i32 [ 0, %.preheader136.lr.ph ], [ %i.ka, %._crit_edge155.split ]
  %.1113156 = phi ptr [ %.0112, %.preheader136.lr.ph ], [ %i.jz, %._crit_edge155.split ] ; 15 uses
  br i1 %.not218, label %._crit_edge155.split, label %.lr.ph149

.lr.ph149:                                        ; preds = %.preheader136
  br i1 %.not128140, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.loopexit, %.lr.ph149
  br i1 %brmerge, label %._crit_edge155.split, label %.lr.ph151.preheader

.lr.ph151.preheader:                              ; preds = %.preheader
  %scevgep = getelementptr i8, ptr %.1113156, i64 %wide.trip.count ; 2 uses
  br label %iter.check

.lr.ph:                                           ; preds = %.lr.ph149, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ %i.ft, %.lr.ph149 ] ; 5 uses
  %.0108.in145 = phi i32 [ %i.ie, %.loopexit ], [ %.0107, %.lr.ph149 ]
  %.0108.in145.fr = freeze i32 %.0108.in145       ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.1113156, i64 %indvars.iv ; 7 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !23  ; 3 uses
  %i.fw = zext i8 %i.fv to i32                    ; 2 uses
  %.not130 = icmp eq i32 %.0108.in145.fr, 1
  %i.fx = zext nneg i32 %.0108.in145.fr to i64
  %i.fy = getelementptr i8, ptr %.1113156, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.fy, i64 -2
  %i.ga = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br i1 %.not130, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us.backedge
  %i.gb = phi i8 [ %i.gx, %.lr.ph.split.us.backedge ], [ %i.fv, %.lr.ph ] ; 2 uses
  %.0110141.us = phi i32 [ %.0110141.us.be, %.lr.ph.split.us.backedge ], [ 1, %.lr.ph ] ; 5 uses
  %i.gc = load i8, ptr %i.m, align 2, !tbaa !30
  %i.gd = icmp eq i8 %i.gc, 1
  br i1 %i.gd, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %.lr.ph.split.us
  %i.ge = sub nsw i32 %i.ga, %.0110141.us         ; 2 uses
  %i.gf = icmp sgt i32 %i.ge, -1
  br i1 %i.gf, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.gg = zext i8 %i.gb to i32
  %i.gh = zext nneg i32 %i.ge to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %.1113156, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !23
  %i.gk = zext i8 %i.gj to i32
  %i.gl = add nuw nsw i32 %i.gk, %i.gg            ; 3 uses
  %i.gm = load i16, ptr %i.fs, align 8, !tbaa !36 ; 2 uses
  %i.gn = zext i16 %i.gm to i32
  %.not129.us = icmp samesign ult i32 %i.gl, %i.gn
  br i1 %.not129.us, label %bb.ap, label %.split.us

bb.ap:                                            ; preds = %bb.ao
  %i.go = trunc i32 %i.gl to i8                   ; 2 uses
  store i8 %i.go, ptr %i.fu, align 1, !tbaa !23
  %i.gp = and i32 %i.gl, 255
  %i.gq = load i16, ptr %i.fs, align 8, !tbaa !36
  %i.gr = zext i16 %i.gq to i32
  %i.gs = add nsw i32 %i.gr, -1
  %i.gt = icmp eq i32 %i.gp, %i.gs
  %.not128.us = icmp sge i32 %.0110141.us, %.0105201
  %or.cond161 = select i1 %i.gt, i1 true, i1 %.not128.us
  br i1 %or.cond161, label %.loopexit, label %.lr.ph.split.us.backedge

bb.aq:                                            ; preds = %.lr.ph.split.us
  %i.gu = lshr i32 %i.fw, %.0110141.us
  %i.gv = trunc nuw i32 %i.gu to i8
  %i.gw = or i8 %i.gb, %i.gv                      ; 2 uses
  store i8 %i.gw, ptr %i.fu, align 1, !tbaa !23
  %.not128.us.old.not = icmp slt i32 %.0110141.us, %.0105201
  br i1 %.not128.us.old.not, label %.lr.ph.split.us.backedge, label %.loopexit

.lr.ph.split.us.backedge:                         ; preds = %bb.aq, %bb.ap
  %i.gx = phi i8 [ %i.gw, %bb.aq ], [ %i.go, %bb.ap ]
  %.0110141.us.be = add nuw nsw i32 %.0110141.us, 1
  br label %.lr.ph.split.us, !llvm.loop !37

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split.backedge
  %i.gy = phi i8 [ %i.hk, %.lr.ph.split.backedge ], [ %i.fv, %.lr.ph ] ; 2 uses
  %.0110141 = phi i32 [ %.0110141.be, %.lr.ph.split.backedge ], [ 1, %.lr.ph ] ; 6 uses
  %i.gz = load i8, ptr %i.m, align 2, !tbaa !30
  %i.ha = icmp eq i8 %i.gz, 1
  br i1 %i.ha, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph.split
  %i.hb = lshr i32 %i.fw, %.0110141
  %i.hc = trunc nuw i32 %i.hb to i8
  %i.hd = or i8 %i.gy, %i.hc                      ; 2 uses
  store i8 %i.hd, ptr %i.fu, align 1, !tbaa !23
  %i.he = load i8, ptr %i.fz, align 1, !tbaa !23
  %i.hf = zext i8 %i.he to i32
  %i.hg = sub nsw i32 8, %.0110141
  %i.hh = shl i32 %i.hf, %i.hg
  %i.hi = trunc i32 %i.hh to i8
  %i.hj = or i8 %i.hd, %i.hi                      ; 2 uses
  store i8 %i.hj, ptr %i.fu, align 1, !tbaa !23
  %.not128.old.not = icmp slt i32 %.0110141, %.0105201
  br i1 %.not128.old.not, label %.lr.ph.split.backedge, label %.loopexit

.lr.ph.split.backedge:                            ; preds = %bb.ar, %bb.au
  %i.hk = phi i8 [ %i.hj, %bb.ar ], [ %i.hx, %bb.au ]
  %.0110141.be = add nuw nsw i32 %.0110141, 1
  br label %.lr.ph.split, !llvm.loop !37

bb.as:                                            ; preds = %.lr.ph.split
  %i.hl = sub nsw i32 %i.ga, %.0110141            ; 2 uses
  %i.hm = icmp sgt i32 %i.hl, -1
  br i1 %i.hm, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %bb.as
  %i.hn = zext i8 %i.gy to i32
  %i.ho = zext nneg i32 %i.hl to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %.1113156, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !23
  %i.hr = zext i8 %i.hq to i32
  %i.hs = add nuw nsw i32 %i.hr, %i.hn            ; 3 uses
  %i.ht = load i16, ptr %i.fs, align 8, !tbaa !36 ; 2 uses
  %i.hu = zext i16 %i.ht to i32
  %.not129 = icmp samesign ult i32 %i.hs, %i.hu
  br i1 %.not129, label %bb.au, label %.split.us

.split.us:                                        ; preds = %bb.at, %bb.ao
  %.us-phi = phi i16 [ %i.gm, %bb.ao ], [ %i.ht, %bb.at ]
  %i.hv = trunc i16 %.us-phi to i8
  %i.hw = add i8 %i.hv, -1
  store i8 %i.hw, ptr %i.fu, align 1, !tbaa !23
  br label %.loopexit

bb.au:                                            ; preds = %bb.at
  %i.hx = trunc i32 %i.hs to i8                   ; 2 uses
  store i8 %i.hx, ptr %i.fu, align 1, !tbaa !23
  %i.hy = and i32 %i.hs, 255
  %i.hz = load i16, ptr %i.fs, align 8, !tbaa !36
  %i.ia = zext i16 %i.hz to i32
  %i.ib = add nsw i32 %i.ia, -1
  %i.ic = icmp eq i32 %i.hy, %i.ib
  %.not128 = icmp sge i32 %.0110141, %.0105201
  %or.cond163 = select i1 %i.ic, i1 true, i1 %.not128
  br i1 %or.cond163, label %.loopexit, label %.lr.ph.split.backedge

.loopexit:                                        ; preds = %bb.ar, %bb.au, %bb.as, %bb.aq, %bb.ap, %bb.an, %.split.us
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.id = icmp sgt i64 %indvars.iv, 0
  %i.ie = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.id, label %.lr.ph, label %.preheader, !llvm.loop !38

iter.check:                                       ; preds = %.lr.ph151.preheader, %._crit_edge
  %.1109153 = phi i32 [ %i.jw, %._crit_edge ], [ 1, %.lr.ph151.preheader ] ; 3 uses
  %i.if = load i32, ptr %i.bm, align 8, !tbaa !7
  %i.ig = mul nsw i32 %i.if, %.1109153
  %i.ih = sext i32 %i.ig to i64
  %i.ii = sub nsw i64 0, %i.ih                    ; 2 uses
  %i.ij = getelementptr inbounds i8, ptr %.1113156, i64 %i.ii ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep225 = getelementptr i8, ptr %scevgep, i64 %i.ii
  %bound0 = icmp ult ptr %i.ij, %scevgep
  %bound1 = icmp ult ptr %.1113156, %scevgep225
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check226, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.1113156, i64 %index ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %wide.load = load <16 x i8>, ptr %i.ik, align 1, !tbaa !23, !alias.scope !39
  %wide.load227.a = load <16 x i8>, ptr %i.il, align 1, !tbaa !23, !alias.scope !39
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 %index ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16 ; 2 uses
  %wide.load228.a = load <16 x i8>, ptr %i.im, align 1, !tbaa !23, !alias.scope !42, !noalias !39
  %wide.load229 = load <16 x i8>, ptr %i.in, align 1, !tbaa !23, !alias.scope !42, !noalias !39
  %i.io = or <16 x i8> %wide.load228.a, %wide.load
  %i.ip = or <16 x i8> %wide.load229, %wide.load227.a
  store <16 x i8> %i.io, ptr %i.im, align 1, !tbaa !23, !alias.scope !42, !noalias !39
  store <16 x i8> %i.ip, ptr %i.in, align 1, !tbaa !23, !alias.scope !42, !noalias !39
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.iq = icmp eq i64 %index.next, %n.vec
  br i1 %i.iq, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index232 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next235, %vec.epilog.vector.body ] ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.1113156, i64 %index232
  %wide.load233.a = load <4 x i8>, ptr %i.ir, align 1, !tbaa !23, !alias.scope !39
  %i.is = getelementptr inbounds nuw i8, ptr %i.ij, i64 %index232 ; 2 uses
  %wide.load234 = load <4 x i8>, ptr %i.is, align 1, !tbaa !23, !alias.scope !42, !noalias !39
  %i.it = or <4 x i8> %wide.load234, %wide.load233.a
  store <4 x i8> %i.it, ptr %i.is, align 1, !tbaa !23, !alias.scope !42, !noalias !39
  %index.next235 = add nuw i64 %index232, 4       ; 2 uses
  %i.iu = icmp eq i64 %index.next235, %n.vec231
end_hunk_0
