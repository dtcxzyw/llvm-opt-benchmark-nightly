Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbitmap?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@FT_Bitmap_Embolden:bb.a
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 1 ; 2 uses
  %i.dk = icmp ult ptr %i.dj, %.0120.i
  br i1 %i.dk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.split.i.1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dj, i8 0, i64 %i.cf, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.split.i.1
  %i.dl = add i32 %.0119136.i, -2                 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.bw
  %.0120.i.1 = getelementptr inbounds nuw i8, ptr %.0120.i, i64 %i.bw
  %.not130.i.1 = icmp eq i32 %i.dl, 0
  br i1 %.not130.i.1, label %thread-pre-split, label %.lr.ph.split.i, !llvm.loop !40

bb.ad:                                            ; preds = %bb.p
  %i.dn = zext i32 %.0123.i to i64
  %i.do = add i32 %i.bn, %.0103203
  %i.dp = zext i32 %i.do to i64
  %i.dq = call ptr @ft_mem_qrealloc(ptr noundef %i.bq, i64 noundef %i.dn, i64 noundef 0, i64 noundef %i.dp, ptr noundef null, ptr noundef nonnull %i.a) #7 ; 5 uses
  %i.dr = load i32, ptr %i.a, align 4, !tbaa !8   ; 2 uses
  %.not129.i = icmp eq i32 %i.dr, 0
  br i1 %.not129.i, label %bb.ae, label %ft_bitmap_assure_buffer.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ds = load i32, ptr %i.bm, align 8, !tbaa !13
  %i.dt = icmp sgt i32 %i.ds, 0
  %i.du = load ptr, ptr %i.b, align 8, !tbaa !21  ; 3 uses
  %i.dv = load i32, ptr %1, align 8, !tbaa !27
  %i.dw = mul i32 %i.dv, %i.bl                    ; 3 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dx ; 2 uses
  br i1 %i.dt, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.dz = mul i32 %.0123.i, %.0103203
  %i.ea = zext i32 %i.dz to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.dq, i8 0, i64 %i.ea, i1 false)
  %.not146.i = icmp eq i32 %i.dw, 0
  br i1 %.not146.i, label %.loopexit.i, label %.lr.ph144.i

.lr.ph144.i:                                      ; preds = %bb.af
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ea
  %i.ec = mul i32 %.0122.i, %i.bo
  %i.ed = add i32 %i.ec, 7
  %i.ee = lshr i32 %i.ed, 3                       ; 2 uses
  %i.ef = sub i32 %.0123.i, %i.ee
  %i.eg = zext nneg i32 %i.ee to i64              ; 2 uses
  %i.eh = zext nneg i32 %i.bl to i64
  %i.ei = zext i32 %i.ef to i64                   ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph144.i
  %.0116142.i = phi ptr [ %i.eb, %.lr.ph144.i ], [ %i.el, %bb.ag ] ; 2 uses
  %.0117141.i = phi ptr [ %i.du, %.lr.ph144.i ], [ %i.ej, %bb.ag ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0116142.i, ptr align 1 %.0117141.i, i64 %i.eg, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %.0117141.i, i64 %i.eh ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0116142.i, i64 %i.eg ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.ek, i8 0, i64 %i.ei, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ei
  %i.em = icmp ult ptr %i.ej, %i.dy
  br i1 %i.em, label %bb.ag, label %.loopexit.i, !llvm.loop !41

bb.ah:                                            ; preds = %bb.ae
  %.not145.i = icmp eq i32 %i.dw, 0
  br i1 %.not145.i, label %._crit_edge.i, label %.lr.ph140.i

.lr.ph140.i:                                      ; preds = %bb.ah
  %i.en = mul i32 %.0122.i, %i.bo
  %i.eo = add i32 %i.en, 7
  %i.ep = lshr i32 %i.eo, 3                       ; 2 uses
  %i.eq = sub i32 %.0123.i, %i.ep
  %i.er = zext nneg i32 %i.ep to i64              ; 2 uses
  %i.es = zext nneg i32 %i.bl to i64
  %i.et = zext i32 %i.eq to i64                   ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph140.i
  %.0139.i = phi ptr [ %i.dq, %.lr.ph140.i ], [ %i.ew, %bb.ai ] ; 2 uses
  %.0115138.i = phi ptr [ %i.du, %.lr.ph140.i ], [ %i.eu, %bb.ai ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0139.i, ptr align 1 %.0115138.i, i64 %i.er, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %.0115138.i, i64 %i.es ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %i.er ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.ev, i8 0, i64 %i.et, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.et ; 2 uses
  %i.ex = icmp ult ptr %i.eu, %i.dy
  br i1 %i.ex, label %bb.ai, label %._crit_edge.i, !llvm.loop !42

._crit_edge.i:                                    ; preds = %bb.ai, %bb.ah
  %.0.lcssa.i = phi ptr [ %i.dq, %bb.ah ], [ %i.ew, %bb.ai ]
  %i.ey = mul i32 %.0123.i, %.0103203
  %i.ez = zext i32 %i.ey to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i, i8 0, i64 %i.ez, i1 false)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ag, %._crit_edge.i, %bb.af
  %i.fa = load ptr, ptr %i.b, align 8, !tbaa !21
  call void @ft_mem_free(ptr noundef %i.bq, ptr noundef %i.fa) #7
  store ptr %i.dq, ptr %i.b, align 8, !tbaa !21
  %i.fb = load i32, ptr %i.bm, align 8, !tbaa !13
  %i.fc = icmp slt i32 %i.fb, 0
  %i.fd = sub nsw i32 0, %.0123.i
  %storemerge.i = select i1 %i.fc, i32 %i.fd, i32 %.0123.i ; 2 uses
  store i32 %storemerge.i, ptr %i.bm, align 8, !tbaa !13
  br label %bb.aj

ft_bitmap_assure_buffer.exit:                     ; preds = %bb.k, %bb.ad
  %.0124.i = phi i32 [ %i.dr, %bb.ad ], [ 18, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.av

thread-pre-split:                                 ; preds = %.lr.ph.split.i.prol.loopexit, %bb.ac, %.lr.ph.split.us.i.prol.loopexit, %bb.z, %bb.r, %bb.q
  %.pr = load i32, ptr %i.bm, align 8, !tbaa !13
  br label %bb.aj

bb.aj:                                            ; preds = %thread-pre-split, %.loopexit.i
  %i.fe = phi i32 [ %.pr, %thread-pre-split ], [ %storemerge.i, %.loopexit.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fg = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.fh = mul nsw i32 %i.fe, %.0103203
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fi
  %.pre177 = load i32, ptr %1, align 8, !tbaa !27
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fk = sub nsw i32 0, %i.fe                    ; 2 uses
  %i.fl = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.fm = load i32, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.fn = add i32 %i.fm, -1
  %i.fo = mul i32 %i.fn, %i.fk
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fp
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fr = phi i32 [ %.pre177, %bb.ak ], [ %i.fm, %bb.al ]
  %.0110 = phi ptr [ %i.fj, %bb.ak ], [ %i.fq, %bb.al ]
  %.0106 = phi i32 [ %i.fe, %bb.ak ], [ %i.fk, %bb.al ] ; 7 uses
  %.not164 = icmp eq i32 %i.fr, 0
  br i1 %.not164, label %._crit_edge159, label %.preheader136.lr.ph

.preheader136.lr.ph:                              ; preds = %bb.am
  %.0107144 = add nsw i32 %.0106, -1
  %.not217 = icmp eq i32 %.0106, 0
  %.not129140 = icmp slt i32 %.0104200, 1
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %.not128152 = icmp slt i32 %.0103203, 1
  %i.ft = icmp eq i32 %.0106, 0
  %i.fu = zext i32 %.0107144 to i64
  %brmerge = select i1 %.not128152, i1 true, i1 %i.ft
  %wide.trip.count = zext nneg i32 %.0106 to i64  ; 9 uses
  %min.iters.check = icmp ult i32 %.0106, 4
  %min.iters.check225 = icmp ult i32 %.0106, 32
  %i.fv = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.fv, 0
  %n.vec229 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n234 = icmp eq i64 %n.vec229, %wide.trip.count
  %xtraiter243 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  br label %.preheader136

.preheader136:                                    ; preds = %.preheader136.lr.ph, %._crit_edge155.split
  %.0105158 = phi i32 [ 0, %.preheader136.lr.ph ], [ %i.kb, %._crit_edge155.split ]
  %.1111156 = phi ptr [ %.0110, %.preheader136.lr.ph ], [ %i.ka, %._crit_edge155.split ] ; 15 uses
  br i1 %.not217, label %._crit_edge155.split, label %.lr.ph149

.lr.ph149:                                        ; preds = %.preheader136
  br i1 %.not129140, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.loopexit, %.lr.ph149
  br i1 %brmerge, label %._crit_edge155.split, label %.lr.ph151.preheader

.lr.ph151.preheader:                              ; preds = %.preheader
  %scevgep = getelementptr i8, ptr %.1111156, i64 %wide.trip.count ; 2 uses
  br label %iter.check

.lr.ph:                                           ; preds = %.lr.ph149, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ %i.fu, %.lr.ph149 ] ; 5 uses
  %.0107.in145 = phi i32 [ %i.if, %.loopexit ], [ %.0106, %.lr.ph149 ]
  %.0107.in145.fr = freeze i32 %.0107.in145       ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv ; 7 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !24  ; 3 uses
  %i.fy = zext i8 %i.fx to i32                    ; 2 uses
  %.not131 = icmp eq i32 %.0107.in145.fr, 1
  %i.fz = zext nneg i32 %.0107.in145.fr to i64
  %i.ga = getelementptr i8, ptr %.1111156, i64 %i.fz
  %i.gb = getelementptr i8, ptr %i.ga, i64 -2
  %i.gc = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br i1 %.not131, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us.backedge
  %i.gd = phi i8 [ %i.gz, %.lr.ph.split.us.backedge ], [ %i.fx, %.lr.ph ] ; 2 uses
  %.0108141.us = phi i32 [ %.0108140.us.be, %.lr.ph.split.us.backedge ], [ 1, %.lr.ph ] ; 4 uses
  %i.ge = load i8, ptr %i.m, align 2, !tbaa !30
  %i.gf = icmp eq i8 %i.ge, 1
  br i1 %i.gf, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %.lr.ph.split.us
  %i.gg = sub nsw i32 %i.gc, %.0108141.us         ; 2 uses
  %i.gh = icmp sgt i32 %i.gg, -1
  br i1 %i.gh, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.gi = zext i8 %i.gd to i32
  %i.gj = zext nneg i32 %i.gg to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %.1111156, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !24
  %i.gm = zext i8 %i.gl to i32
  %i.gn = add nuw nsw i32 %i.gm, %i.gi            ; 3 uses
  %i.go = load i16, ptr %i.fs, align 8, !tbaa !32
  %i.gp = zext i16 %i.go to i32
  %5 = add nsw i32 %i.gp, -1                      ; 2 uses
  %6 = icmp sgt i32 %i.gn, %5
  br i1 %6, label %.split.us, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gq = trunc i32 %i.gn to i8                   ; 2 uses
  store i8 %i.gq, ptr %i.fw, align 1, !tbaa !24
  %i.gr = and i32 %i.gn, 255
  %i.gs = load i16, ptr %i.fs, align 8, !tbaa !32
  %i.gt = zext i16 %i.gs to i32
  %i.gu = add nsw i32 %i.gt, -1
  %i.gv = icmp eq i32 %i.gr, %i.gu
  %7 = add nuw nsw i32 %.0108141.us, 1            ; 2 uses
  %.not129.us = icmp sgt i32 %7, %.0104200
  %or.cond161 = select i1 %i.gv, i1 true, i1 %.not129.us
  br i1 %or.cond161, label %.loopexit, label %.lr.ph.split.us.backedge

bb.aq:                                            ; preds = %.lr.ph.split.us
  %i.gw = lshr i32 %i.fy, %.0108141.us
  %i.gx = trunc nuw i32 %i.gw to i8
  %i.gy = or i8 %i.gd, %i.gx                      ; 2 uses
  store i8 %i.gy, ptr %i.fw, align 1, !tbaa !24
  %.old = add nuw nsw i32 %.0108141.us, 1         ; 2 uses
  %.not129.us.old = icmp sgt i32 %.old, %.0104200
  br i1 %.not129.us.old, label %.loopexit, label %.lr.ph.split.us.backedge

.lr.ph.split.us.backedge:                         ; preds = %bb.aq, %bb.ap
  %i.gz = phi i8 [ %i.gq, %bb.ap ], [ %i.gy, %bb.aq ]
  %.0108140.us.be = phi i32 [ %7, %bb.ap ], [ %.old, %bb.aq ]
  br label %.lr.ph.split.us, !llvm.loop !43

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split.backedge
  %i.ha = phi i8 [ %i.hm, %.lr.ph.split.backedge ], [ %i.fx, %.lr.ph ] ; 2 uses
  %.0108141 = phi i32 [ %.0108140.be, %.lr.ph.split.backedge ], [ 1, %.lr.ph ] ; 5 uses
  %i.hb = load i8, ptr %i.m, align 2, !tbaa !30
  %i.hc = icmp eq i8 %i.hb, 1
  br i1 %i.hc, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph.split
  %i.hd = lshr i32 %i.fy, %.0108141
  %i.he = trunc nuw i32 %i.hd to i8
  %i.hf = or i8 %i.ha, %i.he                      ; 2 uses
  store i8 %i.hf, ptr %i.fw, align 1, !tbaa !24
  %i.hg = load i8, ptr %i.gb, align 1, !tbaa !24
  %i.hh = zext i8 %i.hg to i32
  %i.hi = sub nsw i32 8, %.0108141
  %i.hj = shl i32 %i.hh, %i.hi
  %i.hk = trunc i32 %i.hj to i8
  %i.hl = or i8 %i.hf, %i.hk                      ; 2 uses
  store i8 %i.hl, ptr %i.fw, align 1, !tbaa !24
  %.old161 = add nuw nsw i32 %.0108141, 1         ; 2 uses
  %.not129.old = icmp sgt i32 %.old161, %.0104200
  br i1 %.not129.old, label %.loopexit, label %.lr.ph.split.backedge

.lr.ph.split.backedge:                            ; preds = %bb.ar, %bb.au
  %i.hm = phi i8 [ %i.hy, %bb.au ], [ %i.hl, %bb.ar ]
  %.0108140.be = phi i32 [ %10, %bb.au ], [ %.old161, %bb.ar ]
  br label %.lr.ph.split, !llvm.loop !43

bb.as:                                            ; preds = %.lr.ph.split
  %i.hn = sub nsw i32 %i.gc, %.0108141            ; 2 uses
  %i.ho = icmp sgt i32 %i.hn, -1
  br i1 %i.ho, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %bb.as
  %i.hp = zext i8 %i.ha to i32
  %i.hq = zext nneg i32 %i.hn to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %.1111156, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !24
  %i.ht = zext i8 %i.hs to i32
  %i.hu = add nuw nsw i32 %i.ht, %i.hp            ; 3 uses
  %i.hv = load i16, ptr %i.fs, align 8, !tbaa !32
  %i.hw = zext i16 %i.hv to i32
  %8 = add nsw i32 %i.hw, -1                      ; 2 uses
  %9 = icmp sgt i32 %i.hu, %8
  br i1 %9, label %.split.us, label %bb.au

.split.us:                                        ; preds = %bb.at, %bb.ao
  %.us-phi = phi i32 [ %5, %bb.ao ], [ %8, %bb.at ]
  %i.hx = trunc i32 %.us-phi to i8
  store i8 %i.hx, ptr %i.fw, align 1, !tbaa !24
  br label %.loopexit

bb.au:                                            ; preds = %bb.at
  %i.hy = trunc i32 %i.hu to i8                   ; 2 uses
  store i8 %i.hy, ptr %i.fw, align 1, !tbaa !24
  %i.hz = and i32 %i.hu, 255
  %i.ia = load i16, ptr %i.fs, align 8, !tbaa !32
  %i.ib = zext i16 %i.ia to i32
  %i.ic = add nsw i32 %i.ib, -1
  %i.id = icmp eq i32 %i.hz, %i.ic
  %10 = add nuw nsw i32 %.0108141, 1              ; 2 uses
  %.not129 = icmp sgt i32 %10, %.0104200
  %or.cond163 = select i1 %i.id, i1 true, i1 %.not129
  br i1 %or.cond163, label %.loopexit, label %.lr.ph.split.backedge

.loopexit:                                        ; preds = %bb.ar, %bb.au, %bb.as, %bb.aq, %bb.ap, %bb.an, %.split.us
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ie = icmp sgt i64 %indvars.iv, 0
  %i.if = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.ie, label %.lr.ph, label %.preheader, !llvm.loop !44

iter.check:                                       ; preds = %.lr.ph151.preheader, %._crit_edge
  %.1153 = phi i32 [ %i.jx, %._crit_edge ], [ 1, %.lr.ph151.preheader ] ; 3 uses
  %i.ig = load i32, ptr %i.bm, align 8, !tbaa !13
  %i.ih = mul nsw i32 %i.ig, %.1153
  %i.ii = sext i32 %i.ih to i64
  %i.ij = sub nsw i64 0, %i.ii                    ; 2 uses
  %i.ik = getelementptr inbounds i8, ptr %.1111156, i64 %i.ij ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep224 = getelementptr i8, ptr %scevgep, i64 %i.ij
  %bound0 = icmp ult ptr %i.ik, %scevgep
  %bound1 = icmp ult ptr %.1111156, %scevgep224
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check225, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.1111156, i64 %index ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %wide.load = load <16 x i8>, ptr %i.il, align 1, !tbaa !24, !alias.scope !54
  %wide.load226 = load <16 x i8>, ptr %i.im, align 1, !tbaa !24, !alias.scope !54
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 %index ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 2 uses
  %wide.load227 = load <16 x i8>, ptr %i.in, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %wide.load228 = load <16 x i8>, ptr %i.io, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %i.ip = or <16 x i8> %wide.load227, %wide.load
  %i.iq = or <16 x i8> %wide.load228, %wide.load226
  store <16 x i8> %i.ip, ptr %i.in, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  store <16 x i8> %i.iq, ptr %i.io, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ir = icmp eq i64 %index.next, %n.vec
  br i1 %i.ir, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index230 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next233, %vec.epilog.vector.body ] ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.1111156, i64 %index230
  %wide.load231 = load <4 x i8>, ptr %i.is, align 1, !tbaa !24, !alias.scope !54
  %i.it = getelementptr inbounds nuw i8, ptr %i.ik, i64 %index230 ; 2 uses
  %wide.load232 = load <4 x i8>, ptr %i.it, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %i.iu = or <4 x i8> %wide.load232, %wide.load231
  store <4 x i8> %i.iu, ptr %i.it, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %index.next233 = add nuw i64 %index230, 4       ; 2 uses
  %i.iv = icmp eq i64 %index.next233, %n.vec229
  br i1 %i.iv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n234, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv173.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec229, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod244.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv173.prol = phi i64 [ %indvars.iv.next174.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv173.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter245 = phi i64 [ %prol.iter245.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv173.prol
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !24
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ik, i64 %indvars.iv173.prol ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !24
  %i.ja = or i8 %i.iz, %i.ix
  store i8 %i.ja, ptr %i.iy, align 1, !tbaa !24
  %indvars.iv.next174.prol = add nuw nsw i64 %indvars.iv173.prol, 1 ; 2 uses
  %prol.iter245.next = add i64 %prol.iter245, 1   ; 2 uses
  %prol.iter245.cmp.not = icmp eq i64 %prol.iter245.next, %xtraiter243
  br i1 %prol.iter245.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !50

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv173.unr = phi i64 [ %indvars.iv173.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next174.prol, %vec.epilog.scalar.ph.prol ]
  %i.jb = sub nsw i64 %indvars.iv173.ph, %wide.trip.count
  %i.jc = icmp ugt i64 %i.jb, -4
  br i1 %i.jc, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv173 = phi i64 [ %indvars.iv.next174.3, %vec.epilog.scalar.ph ], [ %indvars.iv173.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv173
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !24
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ik, i64 %indvars.iv173 ; 2 uses
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !24
  %i.jh = or i8 %i.jg, %i.je
  store i8 %i.jh, ptr %i.jf, align 1, !tbaa !24
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv.next174
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !24
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ik, i64 %indvars.iv.next174 ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !24
  %i.jm = or i8 %i.jl, %i.jj
  store i8 %i.jm, ptr %i.jk, align 1, !tbaa !24
  %indvars.iv.next174.1 = add nuw nsw i64 %indvars.iv173, 2 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv.next174.1
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !24
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ik, i64 %indvars.iv.next174.1 ; 2 uses
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !24
  %i.jr = or i8 %i.jq, %i.jo
  store i8 %i.jr, ptr %i.jp, align 1, !tbaa !24
  %indvars.iv.next174.2 = add nuw nsw i64 %indvars.iv173, 3 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv.next174.2
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !24
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ik, i64 %indvars.iv.next174.2 ; 2 uses
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !24
  %i.jw = or i8 %i.jv, %i.jt
  store i8 %i.jw, ptr %i.ju, align 1, !tbaa !24
  %indvars.iv.next174.3 = add nuw nsw i64 %indvars.iv173, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next174.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.jx = add nuw nsw i32 %.1153, 1
  %exitcond176.not = icmp eq i32 %.1153, %.0103203
  br i1 %exitcond176.not, label %._crit_edge155.split, label %iter.check, !llvm.loop !52

._crit_edge155.split:                             ; preds = %._crit_edge, %.preheader136, %.preheader
  %i.jy = load i32, ptr %i.bm, align 8, !tbaa !13
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds i8, ptr %.1111156, i64 %i.jz
  %i.kb = add nuw i32 %.0105158, 1                ; 2 uses
  %i.kc = load i32, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.kd = icmp ult i32 %i.kb, %i.kc
  br i1 %i.kd, label %.preheader136, label %._crit_edge159, !llvm.loop !53

._crit_edge159:                                   ; preds = %._crit_edge155.split, %bb.am
  %.lcssa138 = phi i32 [ 0, %bb.am ], [ %i.kc, %._crit_edge155.split ]
  %i.ke = load i32, ptr %i.bp, align 4, !tbaa !31
  %i.kf = add i32 %i.ke, %.0104200
  store i32 %i.kf, ptr %i.bp, align 4, !tbaa !31
  %i.kg = add i32 %.lcssa138, %.0103203
  store i32 %i.kg, ptr %1, align 8, !tbaa !27
  br label %bb.av

.critedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.av

bb.av:                                            ; preds = %ft_bitmap_assure_buffer.exit, %bb.g, %.critedge, %bb.f, %bb.e, %bb.d, %bb.b, %bb.c, %bb.a, %._crit_edge159
  %.1113 = phi i32 [ 6, %bb.b ], [ 6, %bb.d ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %._crit_edge159 ], [ %.0124.i, %ft_bitmap_assure_buffer.exit ], [ %i.o, %.critedge ], [ 33, %bb.a ], [ 6, %bb.c ], [ 6, %bb.f ]
  ret i32 %.1113
}

; Function Attrs: nounwind uwtable
define i32 @FT_Bitmap_Convert(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %1, null
  %i.c = icmp ne ptr %2, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !30
  %.off = add i8 %i.f, -1
  %switch = icmp ult i8 %.off, 7
  br i1 %switch, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !13   ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !13
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %FT_Bitmap_Done.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = icmp slt i32 %i.j, 0
  br label %FT_Bitmap_Done.exit

FT_Bitmap_Done.exit:                              ; preds = %bb.e, %bb.f
  %i.p = phi i1 [ true, %bb.e ], [ %i.o, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  tail call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.r) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 2, ptr %i.s, align 2, !tbaa !30
  %i.t = load <2 x i32>, ptr %1, align 8, !tbaa !8
  %i.u = load i32, ptr %1, align 8, !tbaa !27
  store <2 x i32> %i.t, ptr %2, align 8, !tbaa !8
  %.not217 = icmp eq i32 %3, 0
  br i1 %.not217, label %bb.i, label %bb.g

bb.g:                                             ; preds = %FT_Bitmap_Done.exit
  %i.v = srem i32 %i.h, %3                        ; 3 uses
  %.not218 = icmp eq i32 %i.v, 0
  br i1 %.not218, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = icmp sgt i32 %3, 0
  %i.x = add i32 %i.h, %3
  %i.y = sub i32 %i.x, %i.v
  %i.z = add i32 %3, %i.v
  %i.aa = sub i32 %i.h, %i.z
  %i.ab = select i1 %i.w, i32 %i.y, i32 %i.aa
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %FT_Bitmap_Done.exit
  %.1200 = phi i32 [ %i.h, %FT_Bitmap_Done.exit ], [ %i.ab, %bb.h ], [ %i.h, %bb.g ] ; 3 uses
  %i.ac = sext i32 %.1200 to i64
  %i.ad = zext i32 %i.u to i64
  %i.ae = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef %i.ac, i64 noundef 0, i64 noundef %i.ad, ptr noundef null, ptr noundef nonnull %i.a) #7 ; 2 uses
  store ptr %i.ae, ptr %i.q, align 8, !tbaa !21
  %i.af = load i32, ptr %i.a, align 4, !tbaa !8   ; 2 uses
  %.not219 = icmp eq i32 %i.af, 0
  br i1 %.not219, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ag = sub nsw i32 0, %.1200
  %i.ah = select i1 %i.p, i32 %i.ag, i32 %.1200
  store i32 %i.ah, ptr %i.i, align 8, !tbaa !13
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  store i32 6, ptr %i.a, align 4, !tbaa !8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ai = phi ptr [ %i.ae, %bb.j ], [ %.pre, %bb.k ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !13 ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = load i32, ptr %1, align 8, !tbaa !27
  %i.ap = add i32 %i.ao, -1
  %i.aq = mul nsw i32 %i.ap, %i.am
  %i.ar = sext i32 %i.aq to i64
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.ak, i64 %i.as
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0191 = phi ptr [ %i.at, %bb.m ], [ %i.ak, %bb.l ] ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !13 ; 3 uses
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = load i32, ptr %2, align 8, !tbaa !27
  %i.ay = add i32 %i.ax, -1
  %i.az = mul nsw i32 %i.ay, %i.av
  %i.ba = sext i32 %i.az to i64
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.ai, i64 %i.bb
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0202 = phi ptr [ %i.bc, %bb.o ], [ %i.ai, %bb.n ] ; 7 uses
  %i.bd = load i8, ptr %i.e, align 2, !tbaa !30
  switch i8 %i.bd, label %.loopexit238 [
    i8 1, label %bb.q
    i8 2, label %bb.z
    i8 5, label %bb.z
    i8 6, label %bb.z
    i8 3, label %bb.aa
    i8 4, label %bb.af
    i8 7, label %bb.aj
  ]

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 2, ptr %i.be, align 8, !tbaa !32
  %i.bf = load i32, ptr %1, align 8, !tbaa !27    ; 2 uses
  %.not230304 = icmp eq i32 %i.bf, 0
  br i1 %.not230304, label %.loopexit238, label %.lr.ph309

.lr.ph309:                                        ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph309, %.loopexit
  %.1192307 = phi ptr [ %.0191, %.lr.ph309 ], [ %i.cp, %.loopexit ] ; 3 uses
  %.0198306 = phi i32 [ %i.bf, %.lr.ph309 ], [ %i.ct, %.loopexit ]
  %.1203305 = phi ptr [ %.0202, %.lr.ph309 ], [ %i.cs, %.loopexit ] ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !31 ; 2 uses
  %i.bi = lshr i32 %i.bh, 3                       ; 2 uses
  %.not231292 = icmp eq i32 %i.bi, 0
  br i1 %.not231292, label %._crit_edge298, label %.lr.ph297

.lr.ph297:                                        ; preds = %bb.r, %.lr.ph297
  %.0193295 = phi i32 [ %i.bq, %.lr.ph297 ], [ %i.bi, %bb.r ]
  %.0195294 = phi ptr [ %i.bo, %.lr.ph297 ], [ %.1203305, %bb.r ] ; 2 uses
  %.0197293 = phi ptr [ %i.bp, %.lr.ph297 ], [ %.1192307, %bb.r ] ; 2 uses
  %i.bj = load i8, ptr %.0197293, align 1, !tbaa !24
  %i.bk = insertelement <8 x i8> poison, i8 %i.bj, i64 0
  %i.bl = shufflevector <8 x i8> %i.bk, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bm = lshr <8 x i8> %i.bl, <i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1, i8 0>
  %i.bn = and <8 x i8> %i.bm, <i8 -1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %i.bn, ptr %.0195294, align 1, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %.0195294, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0197293, i64 1 ; 2 uses
end_hunk_0
