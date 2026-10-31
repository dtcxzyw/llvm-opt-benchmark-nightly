Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbitmap?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@FT_Bitmap_Embolden:bb.a
  %i.cx = icmp ult ptr %.0121135.us.i, %.0120137.us.i
  br i1 %i.cx, label %bb.x, label %.lr.ph.split.us.i.3

bb.x:                                             ; preds = %.lr.ph.split.us.i.2
  call void @llvm.memset.p0.i64(ptr align 1 %i.cw, i8 0, i64 %i.co, i1 false)
  br label %.lr.ph.split.us.i.3

.lr.ph.split.us.i.3:                              ; preds = %bb.x, %.lr.ph.split.us.i.2
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.bw ; 2 uses
  %.0120.us.i.2 = getelementptr inbounds nuw i8, ptr %.0120.us.i.1, i64 %i.bw
  %i.cz = icmp ult ptr %.0121135.us.i, %.0120137.us.i
  br i1 %i.cz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.split.us.i.3
  call void @llvm.memset.p0.i64(ptr align 1 %i.cy, i8 0, i64 %i.co, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.split.us.i.3
  %i.da = add i32 %.0119136.us.i, -4              ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.bw
  %.0120.us.i.3 = getelementptr inbounds nuw i8, ptr %.0120.us.i.2, i64 %i.bw
  %.not130.us.i.3 = icmp eq i32 %i.da, 0
  br i1 %.not130.us.i.3, label %thread-pre-split, label %.lr.ph.split.us.i, !llvm.loop !40

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %bb.ac
  %.0120137.i = phi ptr [ %.0120.i.1, %bb.ac ], [ %.0120137.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 2 uses
  %.0119136.i = phi i32 [ %i.dl, %bb.ac ], [ %.0119136.i.unr, %.lr.ph.split.i.prol.loopexit ]
  %.0121135.i = phi ptr [ %i.dm, %bb.ac ], [ %.0121135.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 4 uses
  %i.dc = load i8, ptr %.0121135.i, align 1, !tbaa !24
  %i.dd = and i8 %i.dc, %i.cd
  store i8 %i.dd, ptr %.0121135.i, align 1, !tbaa !24
  %i.de = getelementptr inbounds nuw i8, ptr %.0121135.i, i64 1 ; 2 uses
  %i.df = icmp ult ptr %i.de, %.0120137.i
  br i1 %i.df, label %bb.aa, label %.lr.ph.split.i.1

bb.aa:                                            ; preds = %.lr.ph.split.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.de, i8 0, i64 %i.cf, i1 false)
  br label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %bb.aa, %.lr.ph.split.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.0121135.i, i64 %i.bw ; 4 uses
  %.0120.i = getelementptr inbounds nuw i8, ptr %.0120137.i, i64 %i.bw ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !24
  %i.di = and i8 %i.dh, %i.cd
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
  %wide.trip.count = zext nneg i32 %.0106 to i64  ; 10 uses
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
  %.0105158 = phi i32 [ 0, %.preheader136.lr.ph ], [ %i.kc, %._crit_edge155.split ]
  %.1111156 = phi ptr [ %.0110, %.preheader136.lr.ph ], [ %i.kb, %._crit_edge155.split ] ; 16 uses
  br i1 %.not217, label %._crit_edge155.split, label %.lr.ph149

.lr.ph149:                                        ; preds = %.preheader136
  br i1 %.not129140, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.loopexit, %.lr.ph149
  br i1 %brmerge, label %._crit_edge155.split, label %.lr.ph151.preheader

.lr.ph151.preheader:                              ; preds = %.preheader
  %scevgep = getelementptr i8, ptr %.1111156, i64 %wide.trip.count
  br label %iter.check

.lr.ph:                                           ; preds = %.lr.ph149, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ %i.fu, %.lr.ph149 ] ; 5 uses
  %.0107.in145 = phi i32 [ %i.ig, %.loopexit ], [ %.0106, %.lr.ph149 ]
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
  %.0108141.us = phi i32 [ %.0108141.us.be, %.lr.ph.split.us.backedge ], [ 1, %.lr.ph ] ; 5 uses
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
  %i.go = load i16, ptr %i.fs, align 8, !tbaa !32 ; 2 uses
  %i.gp = zext i16 %i.go to i32
  %.not130.us = icmp samesign ult i32 %i.gn, %i.gp
  br i1 %.not130.us, label %bb.ap, label %.split.us

bb.ap:                                            ; preds = %bb.ao
  %i.gq = trunc i32 %i.gn to i8                   ; 2 uses
  store i8 %i.gq, ptr %i.fw, align 1, !tbaa !24
  %i.gr = and i32 %i.gn, 255
  %i.gs = load i16, ptr %i.fs, align 8, !tbaa !32
  %i.gt = zext i16 %i.gs to i32
  %i.gu = add nsw i32 %i.gt, -1
  %i.gv = icmp eq i32 %i.gr, %i.gu
  %.not129.us = icmp sge i32 %.0108141.us, %.0104200
  %or.cond161 = select i1 %i.gv, i1 true, i1 %.not129.us
  br i1 %or.cond161, label %.loopexit, label %.lr.ph.split.us.backedge

bb.aq:                                            ; preds = %.lr.ph.split.us
  %i.gw = lshr i32 %i.fy, %.0108141.us
  %i.gx = trunc nuw i32 %i.gw to i8
  %i.gy = or i8 %i.gd, %i.gx                      ; 2 uses
  store i8 %i.gy, ptr %i.fw, align 1, !tbaa !24
  %.not129.us.old.not = icmp slt i32 %.0108141.us, %.0104200
  br i1 %.not129.us.old.not, label %.lr.ph.split.us.backedge, label %.loopexit

.lr.ph.split.us.backedge:                         ; preds = %bb.aq, %bb.ap
  %i.gz = phi i8 [ %i.gy, %bb.aq ], [ %i.gq, %bb.ap ]
  %.0108141.us.be = add nuw nsw i32 %.0108141.us, 1
  br label %.lr.ph.split.us, !llvm.loop !43

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split.backedge
  %i.ha = phi i8 [ %i.hm, %.lr.ph.split.backedge ], [ %i.fx, %.lr.ph ] ; 2 uses
  %.0108141 = phi i32 [ %.0108141.be, %.lr.ph.split.backedge ], [ 1, %.lr.ph ] ; 6 uses
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
  %.not129.old.not = icmp slt i32 %.0108141, %.0104200
  br i1 %.not129.old.not, label %.lr.ph.split.backedge, label %.loopexit

.lr.ph.split.backedge:                            ; preds = %bb.ar, %bb.au
  %i.hm = phi i8 [ %i.hl, %bb.ar ], [ %i.hz, %bb.au ]
  %.0108141.be = add nuw nsw i32 %.0108141, 1
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
  %i.hv = load i16, ptr %i.fs, align 8, !tbaa !32 ; 2 uses
  %i.hw = zext i16 %i.hv to i32
  %.not130 = icmp samesign ult i32 %i.hu, %i.hw
  br i1 %.not130, label %bb.au, label %.split.us

.split.us:                                        ; preds = %bb.at, %bb.ao
  %.us-phi = phi i16 [ %i.go, %bb.ao ], [ %i.hv, %bb.at ]
  %i.hx = trunc i16 %.us-phi to i8
  %i.hy = add i8 %i.hx, -1
  store i8 %i.hy, ptr %i.fw, align 1, !tbaa !24
  br label %.loopexit

bb.au:                                            ; preds = %bb.at
  %i.hz = trunc i32 %i.hu to i8                   ; 2 uses
  store i8 %i.hz, ptr %i.fw, align 1, !tbaa !24
  %i.ia = and i32 %i.hu, 255
  %i.ib = load i16, ptr %i.fs, align 8, !tbaa !32
  %i.ic = zext i16 %i.ib to i32
  %i.id = add nsw i32 %i.ic, -1
  %i.ie = icmp eq i32 %i.ia, %i.id
  %.not129 = icmp sge i32 %.0108141, %.0104200
  %or.cond163 = select i1 %i.ie, i1 true, i1 %.not129
  br i1 %or.cond163, label %.loopexit, label %.lr.ph.split.backedge

.loopexit:                                        ; preds = %bb.ar, %bb.au, %bb.as, %bb.aq, %bb.ap, %bb.an, %.split.us
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.if = icmp sgt i64 %indvars.iv, 0
  %i.ig = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.if, label %.lr.ph, label %.preheader, !llvm.loop !44

iter.check:                                       ; preds = %.lr.ph151.preheader, %._crit_edge
  %.1153 = phi i32 [ %i.jy, %._crit_edge ], [ 1, %.lr.ph151.preheader ] ; 3 uses
  %i.ih = load i32, ptr %i.bm, align 8, !tbaa !13
  %i.ii = mul nsw i32 %i.ih, %.1153
  %i.ij = sext i32 %i.ii to i64                   ; 2 uses
  %i.ik = sub nsw i64 0, %i.ij
  %i.il = getelementptr inbounds i8, ptr %.1111156, i64 %i.ik ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %5 = sub nsw i64 %wide.trip.count, %i.ij
  %scevgep224 = getelementptr i8, ptr %.1111156, i64 %5
  %bound0 = icmp ult ptr %i.il, %scevgep
  %bound1 = icmp ult ptr %.1111156, %scevgep224
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check225, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.1111156, i64 %index ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %wide.load = load <16 x i8>, ptr %i.im, align 1, !tbaa !24, !alias.scope !54
  %wide.load226 = load <16 x i8>, ptr %i.in, align 1, !tbaa !24, !alias.scope !54
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 %index ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 2 uses
  %wide.load227 = load <16 x i8>, ptr %i.io, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %wide.load228 = load <16 x i8>, ptr %i.ip, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %i.iq = or <16 x i8> %wide.load227, %wide.load
  %i.ir = or <16 x i8> %wide.load228, %wide.load226
  store <16 x i8> %i.iq, ptr %i.io, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  store <16 x i8> %i.ir, ptr %i.ip, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.is = icmp eq i64 %index.next, %n.vec
  br i1 %i.is, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index230 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next233, %vec.epilog.vector.body ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.1111156, i64 %index230
  %wide.load231 = load <4 x i8>, ptr %i.it, align 1, !tbaa !24, !alias.scope !54
  %i.iu = getelementptr inbounds nuw i8, ptr %i.il, i64 %index230 ; 2 uses
  %wide.load232 = load <4 x i8>, ptr %i.iu, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %i.iv = or <4 x i8> %wide.load232, %wide.load231
  store <4 x i8> %i.iv, ptr %i.iu, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %index.next233 = add nuw i64 %index230, 4       ; 2 uses
  %i.iw = icmp eq i64 %index.next233, %n.vec229
  br i1 %i.iw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n234, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv173.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec229, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod244.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv173.prol = phi i64 [ %indvars.iv.next174.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv173.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter245 = phi i64 [ %prol.iter245.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ix = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv173.prol
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !24
  %i.iz = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv173.prol ; 2 uses
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !24
  %i.jb = or i8 %i.ja, %i.iy
  store i8 %i.jb, ptr %i.iz, align 1, !tbaa !24
  %indvars.iv.next174.prol = add nuw nsw i64 %indvars.iv173.prol, 1 ; 2 uses
  %prol.iter245.next = add i64 %prol.iter245, 1   ; 2 uses
  %prol.iter245.cmp.not = icmp eq i64 %prol.iter245.next, %xtraiter243
  br i1 %prol.iter245.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !50

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv173.unr = phi i64 [ %indvars.iv173.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next174.prol, %vec.epilog.scalar.ph.prol ]
  %i.jc = sub nsw i64 %indvars.iv173.ph, %wide.trip.count
  %i.jd = icmp ugt i64 %i.jc, -4
  br i1 %i.jd, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv173 = phi i64 [ %indvars.iv.next174.3, %vec.epilog.scalar.ph ], [ %indvars.iv173.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv173
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !24
  %i.jg = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv173 ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !24
  %i.ji = or i8 %i.jh, %i.jf
  store i8 %i.ji, ptr %i.jg, align 1, !tbaa !24
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv.next174
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !24
  %i.jl = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv.next174 ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !24
  %i.jn = or i8 %i.jm, %i.jk
  store i8 %i.jn, ptr %i.jl, align 1, !tbaa !24
  %indvars.iv.next174.1 = add nuw nsw i64 %indvars.iv173, 2 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv.next174.1
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !24
  %i.jq = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv.next174.1 ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !24
  %i.js = or i8 %i.jr, %i.jp
  store i8 %i.js, ptr %i.jq, align 1, !tbaa !24
  %indvars.iv.next174.2 = add nuw nsw i64 %indvars.iv173, 3 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv.next174.2
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !24
  %i.jv = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv.next174.2 ; 2 uses
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !24
  %i.jx = or i8 %i.jw, %i.ju
  store i8 %i.jx, ptr %i.jv, align 1, !tbaa !24
  %indvars.iv.next174.3 = add nuw nsw i64 %indvars.iv173, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next174.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.jy = add nuw i32 %.1153, 1
  %exitcond176.not = icmp eq i32 %.1153, %.0103203
  br i1 %exitcond176.not, label %._crit_edge155.split, label %iter.check, !llvm.loop !52

._crit_edge155.split:                             ; preds = %._crit_edge, %.preheader136, %.preheader
  %i.jz = load i32, ptr %i.bm, align 8, !tbaa !13
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds i8, ptr %.1111156, i64 %i.ka
  %i.kc = add nuw i32 %.0105158, 1                ; 2 uses
  %i.kd = load i32, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.ke = icmp ult i32 %i.kc, %i.kd
  br i1 %i.ke, label %.preheader136, label %._crit_edge159, !llvm.loop !53

._crit_edge159:                                   ; preds = %._crit_edge155.split, %bb.am
  %.lcssa138 = phi i32 [ 0, %bb.am ], [ %i.kd, %._crit_edge155.split ]
  %i.kf = load i32, ptr %i.bp, align 4, !tbaa !31
  %i.kg = add i32 %i.kf, %.0104200
  store i32 %i.kg, ptr %i.bp, align 4, !tbaa !31
  %i.kh = add i32 %.lcssa138, %.0103203
  store i32 %i.kh, ptr %1, align 8, !tbaa !27
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

end_hunk_0
begin_hunk_1_@FT_Bitmap_Convert:bb.a
  br i1 %lcmp.mod400.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph291
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0202, ptr align 1 %.0191, i64 %i.cy, i1 false)
  %i.cz = load i32, ptr %i.al, align 8, !tbaa !13
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr %.0191, i64 %i.da
  %i.dc = load i32, ptr %i.au, align 8, !tbaa !13
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %.0202, i64 %i.dd
  %i.df = add nsw i32 %i.cx, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph291
  %.0189289.unr = phi i32 [ %i.cx, %.lr.ph291 ], [ %i.df, %.prol.loopexit.unr-lcssa ]
  %.2288.unr = phi ptr [ %.0191, %.lr.ph291 ], [ %i.db, %.prol.loopexit.unr-lcssa ]
  %.2204287.unr = phi ptr [ %.0202, %.lr.ph291 ], [ %i.de, %.prol.loopexit.unr-lcssa ]
  %i.dg = icmp eq i32 %i.cx, 1
  br i1 %i.dg, label %.loopexit238, label %.lr.ph291.new

.lr.ph291.new:                                    ; preds = %.prol.loopexit, %.lr.ph291.new
  %.0189289 = phi i32 [ %i.dt, %.lr.ph291.new ], [ %.0189289.unr, %.prol.loopexit ]
  %.2288 = phi ptr [ %i.dp, %.lr.ph291.new ], [ %.2288.unr, %.prol.loopexit ] ; 2 uses
  %.2204287 = phi ptr [ %i.ds, %.lr.ph291.new ], [ %.2204287.unr, %.prol.loopexit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2204287, ptr align 1 %.2288, i64 %i.cy, i1 false)
  %i.dh = load i32, ptr %i.al, align 8, !tbaa !13
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %.2288, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.au, align 8, !tbaa !13
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds i8, ptr %.2204287, i64 %i.dl ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr align 1 %i.dj, i64 %i.cy, i1 false)
  %i.dn = load i32, ptr %i.al, align 8, !tbaa !13
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds i8, ptr %i.dj, i64 %i.do
  %i.dq = load i32, ptr %i.au, align 8, !tbaa !13
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds i8, ptr %i.dm, i64 %i.dr
  %i.dt = add i32 %.0189289, -2                   ; 2 uses
  %.not229.1 = icmp eq i32 %i.dt, 0
  br i1 %.not229.1, label %.loopexit238, label %.lr.ph291.new, !llvm.loop !59

bb.aa:                                            ; preds = %bb.p
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 4, ptr %i.du, align 8, !tbaa !32
  %i.dv = load i32, ptr %1, align 8, !tbaa !27    ; 2 uses
  %.not225280 = icmp eq i32 %i.dv, 0
  br i1 %.not225280, label %.loopexit238, label %.lr.ph285

.lr.ph285:                                        ; preds = %bb.aa
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph285, %.loopexit240
  %.0188283 = phi i32 [ %i.dv, %.lr.ph285 ], [ %i.gd, %.loopexit240 ]
  %.3282 = phi ptr [ %.0191, %.lr.ph285 ], [ %i.fz, %.loopexit240 ] ; 5 uses
  %.3205281 = phi ptr [ %.0202, %.lr.ph285 ], [ %i.gc, %.loopexit240 ] ; 8 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !31 ; 3 uses
  %i.dy = lshr i32 %i.dx, 2                       ; 4 uses
  %.not226268 = icmp eq i32 %i.dy, 0
  br i1 %.not226268, label %._crit_edge274, label %.lr.ph273.preheader

.lr.ph273.preheader:                              ; preds = %bb.ab
  %i.dz = and i32 %i.dx, 4
  %lcmp.mod397.not = icmp eq i32 %i.dz, 0
  br i1 %lcmp.mod397.not, label %.lr.ph273.prol.loopexit, label %.lr.ph273.prol

.lr.ph273.prol:                                   ; preds = %.lr.ph273.preheader
  %i.ea = load i8, ptr %.3282, align 1, !tbaa !24 ; 4 uses
  %i.eb = lshr i8 %i.ea, 6
  store i8 %i.eb, ptr %.3205281, align 1, !tbaa !24
  %i.ec = lshr i8 %i.ea, 4
  %i.ed = and i8 %i.ec, 3
  %i.ee = getelementptr inbounds nuw i8, ptr %.3205281, i64 1
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !24
  %i.ef = lshr i8 %i.ea, 2
  %i.eg = and i8 %i.ef, 3
  %i.eh = getelementptr inbounds nuw i8, ptr %.3205281, i64 2
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !24
  %i.ei = and i8 %i.ea, 3
  %i.ej = getelementptr inbounds nuw i8, ptr %.3205281, i64 3
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !24
  %i.ek = getelementptr inbounds nuw i8, ptr %.3282, i64 1 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.3205281, i64 4 ; 2 uses
  %i.em = add nsw i32 %i.dy, -1
  br label %.lr.ph273.prol.loopexit

.lr.ph273.prol.loopexit:                          ; preds = %.lr.ph273.prol, %.lr.ph273.preheader
  %.lcssa391.unr = phi ptr [ poison, %.lr.ph273.preheader ], [ %i.ek, %.lr.ph273.prol ]
  %.lcssa390.unr = phi ptr [ poison, %.lr.ph273.preheader ], [ %i.el, %.lr.ph273.prol ]
  %.0183271.unr = phi i32 [ %i.dy, %.lr.ph273.preheader ], [ %i.em, %.lr.ph273.prol ]
  %.0185270.unr = phi ptr [ %.3205281, %.lr.ph273.preheader ], [ %i.el, %.lr.ph273.prol ]
  %.0187269.unr = phi ptr [ %.3282, %.lr.ph273.preheader ], [ %i.ek, %.lr.ph273.prol ]
  %i.en = icmp eq i32 %i.dy, 1
  br i1 %i.en, label %._crit_edge274.loopexit, label %.lr.ph273

.lr.ph273:                                        ; preds = %.lr.ph273.prol.loopexit, %.lr.ph273
  %.0183271 = phi i32 [ %i.fm, %.lr.ph273 ], [ %.0183271.unr, %.lr.ph273.prol.loopexit ]
  %.0185270 = phi ptr [ %i.fl, %.lr.ph273 ], [ %.0185270.unr, %.lr.ph273.prol.loopexit ] ; 9 uses
  %.0187269 = phi ptr [ %i.fk, %.lr.ph273 ], [ %.0187269.unr, %.lr.ph273.prol.loopexit ] ; 3 uses
  %i.eo = load i8, ptr %.0187269, align 1, !tbaa !24 ; 4 uses
  %i.ep = lshr i8 %i.eo, 6
  store i8 %i.ep, ptr %.0185270, align 1, !tbaa !24
  %i.eq = lshr i8 %i.eo, 4
  %i.er = and i8 %i.eq, 3
  %i.es = getelementptr inbounds nuw i8, ptr %.0185270, i64 1
  store i8 %i.er, ptr %i.es, align 1, !tbaa !24
  %i.et = lshr i8 %i.eo, 2
  %i.eu = and i8 %i.et, 3
  %i.ev = getelementptr inbounds nuw i8, ptr %.0185270, i64 2
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !24
  %i.ew = and i8 %i.eo, 3
  %i.ex = getelementptr inbounds nuw i8, ptr %.0185270, i64 3
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !24
  %i.ey = getelementptr inbounds nuw i8, ptr %.0187269, i64 1
  %i.ez = getelementptr inbounds nuw i8, ptr %.0185270, i64 4
  %i.fa = load i8, ptr %i.ey, align 1, !tbaa !24  ; 4 uses
  %i.fb = lshr i8 %i.fa, 6
  store i8 %i.fb, ptr %i.ez, align 1, !tbaa !24
  %i.fc = lshr i8 %i.fa, 4
  %i.fd = and i8 %i.fc, 3
  %i.fe = getelementptr inbounds nuw i8, ptr %.0185270, i64 5
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !24
  %i.ff = lshr i8 %i.fa, 2
  %i.fg = and i8 %i.ff, 3
  %i.fh = getelementptr inbounds nuw i8, ptr %.0185270, i64 6
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !24
  %i.fi = and i8 %i.fa, 3
  %i.fj = getelementptr inbounds nuw i8, ptr %.0185270, i64 7
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !24
  %i.fk = getelementptr inbounds nuw i8, ptr %.0187269, i64 2 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.0185270, i64 8 ; 2 uses
  %i.fm = add nsw i32 %.0183271, -2               ; 2 uses
  %.not226.1 = icmp eq i32 %i.fm, 0
  br i1 %.not226.1, label %._crit_edge274.loopexit, label %.lr.ph273, !llvm.loop !60

._crit_edge274.loopexit:                          ; preds = %.lr.ph273, %.lr.ph273.prol.loopexit
  %.lcssa391 = phi ptr [ %.lcssa391.unr, %.lr.ph273.prol.loopexit ], [ %i.fk, %.lr.ph273 ]
  %.lcssa390 = phi ptr [ %.lcssa390.unr, %.lr.ph273.prol.loopexit ], [ %i.fl, %.lr.ph273 ]
  %.pre325 = load i32, ptr %i.dw, align 4, !tbaa !31
  br label %._crit_edge274

._crit_edge274:                                   ; preds = %._crit_edge274.loopexit, %bb.ab
  %i.fn = phi i32 [ %i.dx, %bb.ab ], [ %.pre325, %._crit_edge274.loopexit ]
  %.0187.lcssa = phi ptr [ %.3282, %bb.ab ], [ %.lcssa391, %._crit_edge274.loopexit ]
  %.0185.lcssa = phi ptr [ %.3205281, %bb.ab ], [ %.lcssa390, %._crit_edge274.loopexit ] ; 3 uses
  %i.fo = and i32 %i.fn, 3                        ; 3 uses
  %.not227 = icmp eq i32 %i.fo, 0
  br i1 %.not227, label %.loopexit240, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge274
  %i.fp = load i8, ptr %.0187.lcssa, align 1, !tbaa !24 ; 3 uses
  %i.fq = lshr i8 %i.fp, 6
  store i8 %i.fq, ptr %.0185.lcssa, align 1, !tbaa !24
  %.not228 = icmp eq i32 %i.fo, 1
  br i1 %.not228, label %.loopexit240, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fr = getelementptr inbounds nuw i8, ptr %.0185.lcssa, i64 1
  %i.fs = lshr i8 %i.fp, 4
  %i.ft = and i8 %i.fs, 3
  store i8 %i.ft, ptr %i.fr, align 1, !tbaa !24
  %.not228.1 = icmp eq i32 %i.fo, 2
  br i1 %.not228.1, label %.loopexit240, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fu = getelementptr inbounds nuw i8, ptr %.0185.lcssa, i64 2
  %i.fv = lshr i8 %i.fp, 2
  %i.fw = and i8 %i.fv, 3
  store i8 %i.fw, ptr %i.fu, align 1, !tbaa !24
  br label %.loopexit240

.loopexit240:                                     ; preds = %bb.ac, %bb.ad, %bb.ae, %._crit_edge274
  %i.fx = load i32, ptr %i.al, align 8, !tbaa !13
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds i8, ptr %.3282, i64 %i.fy
  %i.ga = load i32, ptr %i.au, align 8, !tbaa !13
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds i8, ptr %.3205281, i64 %i.gb
  %i.gd = add i32 %.0188283, -1                   ; 2 uses
  %.not225 = icmp eq i32 %i.gd, 0
  br i1 %.not225, label %.loopexit238, label %bb.ab, !llvm.loop !61

bb.af:                                            ; preds = %bb.p
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 16, ptr %i.ge, align 8, !tbaa !32
  %i.gf = load i32, ptr %1, align 8, !tbaa !27    ; 2 uses
  %.not222262 = icmp eq i32 %i.gf, 0
  br i1 %.not222262, label %.loopexit238, label %.lr.ph267

.lr.ph267:                                        ; preds = %bb.af
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %.pre323 = load i32, ptr %i.gg, align 4, !tbaa !31
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph267, %bb.ai
  %i.gh = phi i32 [ %.pre323, %.lr.ph267 ], [ %i.iw, %bb.ai ] ; 4 uses
  %.0181265 = phi i32 [ %i.gf, %.lr.ph267 ], [ %i.jd, %bb.ai ]
  %.4264 = phi ptr [ %.0191, %.lr.ph267 ], [ %i.iz, %bb.ai ] ; 10 uses
  %.4206263 = phi ptr [ %.0202, %.lr.ph267 ], [ %i.jc, %bb.ai ] ; 11 uses
  %i.gi = lshr i32 %i.gh, 1                       ; 8 uses
  %.not223254 = icmp eq i32 %i.gi, 0
  br i1 %.not223254, label %._crit_edge260, label %iter.check

iter.check:                                       ; preds = %bb.ag
  %i.gj = zext nneg i32 %i.gi to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.gh, 8
  br i1 %min.iters.check, label %.lr.ph259.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.gk = add nsw i32 %i.gi, -1
  %i.gl = zext i32 %i.gk to i64
  %i.gm = shl nuw nsw i64 %i.gl, 1
  %scevgep369 = getelementptr i8, ptr %.4206263, i64 %i.gm
  %scevgep370 = getelementptr i8, ptr %scevgep369, i64 2
  %4 = zext nneg i32 %i.gi to i64
  %scevgep371 = getelementptr i8, ptr %.4264, i64 %4
  %bound0 = icmp ult ptr %.4206263, %scevgep371
  %bound1 = icmp ult ptr %.4264, %scevgep370
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph259.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check372 = icmp ult i32 %i.gh, 32
  br i1 %min.iters.check372, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gn = and i64 %i.gj, 12
  %n.vec = and i64 %i.gj, 2147483632              ; 6 uses
  %i.go = trunc nuw nsw i64 %n.vec to i32
  %i.gp = sub nsw i32 %i.gi, %i.go
  %i.gq = shl nuw nsw i64 %n.vec, 1
  %i.gr = getelementptr i8, ptr %.4206263, i64 %i.gq ; 2 uses
  %i.gs = getelementptr i8, ptr %.4264, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gt = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.4206263, i64 %i.gt
  %i.gu = getelementptr i8, ptr %.4206263, i64 %i.gt
  %next.gep373 = getelementptr i8, ptr %i.gu, i64 16
  %next.gep374 = getelementptr i8, ptr %.4264, i64 %index ; 2 uses
  %i.gv = getelementptr i8, ptr %next.gep374, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep374, align 1, !tbaa !24, !alias.scope !72 ; 2 uses
  %wide.load375 = load <8 x i8>, ptr %i.gv, align 1, !tbaa !24, !alias.scope !72 ; 2 uses
  %i.gw = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.gx = lshr <8 x i8> %wide.load375, splat (i8 4)
  %i.gy = and <8 x i8> %wide.load, splat (i8 15)
  %i.gz = and <8 x i8> %wide.load375, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.gw, <8 x i8> %i.gy, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !24, !alias.scope !73, !noalias !72
  %interleaved.vec376 = shufflevector <8 x i8> %i.gx, <8 x i8> %i.gz, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec376, ptr %next.gep373, align 1, !tbaa !24, !alias.scope !73, !noalias !72
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ha = icmp eq i64 %index.next, %n.vec
  br i1 %i.ha, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.gj
  br i1 %cmp.n, label %._crit_edge260.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph259.preheader, label %vec.epilog.ph, !prof !74

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec377 = and i64 %i.gj, 2147483644           ; 5 uses
  %i.hb = trunc nuw nsw i64 %n.vec377 to i32
  %i.hc = sub nsw i32 %i.gi, %i.hb
  %i.hd = shl nuw nsw i64 %n.vec377, 1
  %i.he = getelementptr i8, ptr %.4206263, i64 %i.hd ; 2 uses
  %i.hf = getelementptr i8, ptr %.4264, i64 %n.vec377 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index378 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next383, %vec.epilog.vector.body ] ; 3 uses
  %i.hg = shl i64 %index378, 1
  %next.gep379 = getelementptr i8, ptr %.4206263, i64 %i.hg
  %next.gep380 = getelementptr i8, ptr %.4264, i64 %index378
  %wide.load381 = load <4 x i8>, ptr %next.gep380, align 1, !tbaa !24, !alias.scope !72 ; 2 uses
  %i.hh = lshr <4 x i8> %wide.load381, splat (i8 4)
  %i.hi = and <4 x i8> %wide.load381, splat (i8 15)
  %interleaved.vec382 = shufflevector <4 x i8> %i.hh, <4 x i8> %i.hi, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec382, ptr %next.gep379, align 1, !tbaa !24, !alias.scope !73, !noalias !72
  %index.next383 = add nuw i64 %index378, 4       ; 2 uses
  %i.hj = icmp eq i64 %index.next383, %n.vec377
  br i1 %i.hj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n384 = icmp eq i64 %n.vec377, %i.gj
  br i1 %cmp.n384, label %._crit_edge260.loopexit, label %.lr.ph259.preheader

.lr.ph259.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0178257.ph = phi i32 [ %i.gi, %iter.check ], [ %i.gi, %vector.memcheck ], [ %i.gp, %vec.epilog.iter.check ], [ %i.hc, %vec.epilog.middle.block ] ; 4 uses
  %.0179256.ph = phi ptr [ %.4206263, %iter.check ], [ %.4206263, %vector.memcheck ], [ %i.gr, %vec.epilog.iter.check ], [ %i.he, %vec.epilog.middle.block ] ; 2 uses
  %.0180255.ph = phi ptr [ %.4264, %iter.check ], [ %.4264, %vector.memcheck ], [ %i.gs, %vec.epilog.iter.check ], [ %i.hf, %vec.epilog.middle.block ] ; 2 uses
  %i.hk = add nsw i32 %.0178257.ph, -1
  %xtraiter = and i32 %.0178257.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph259.prol.loopexit, label %.lr.ph259.prol

.lr.ph259.prol:                                   ; preds = %.lr.ph259.preheader, %.lr.ph259.prol
  %.0178257.prol = phi i32 [ %i.hr, %.lr.ph259.prol ], [ %.0178257.ph, %.lr.ph259.preheader ]
  %.0179256.prol = phi ptr [ %i.hq, %.lr.ph259.prol ], [ %.0179256.ph, %.lr.ph259.preheader ] ; 3 uses
  %.0180255.prol = phi ptr [ %i.hp, %.lr.ph259.prol ], [ %.0180255.ph, %.lr.ph259.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph259.prol ], [ 0, %.lr.ph259.preheader ]
  %i.hl = load i8, ptr %.0180255.prol, align 1, !tbaa !24 ; 2 uses
  %i.hm = lshr i8 %i.hl, 4
  store i8 %i.hm, ptr %.0179256.prol, align 1, !tbaa !24
  %i.hn = and i8 %i.hl, 15
  %i.ho = getelementptr inbounds nuw i8, ptr %.0179256.prol, i64 1
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !24
  %i.hp = getelementptr inbounds nuw i8, ptr %.0180255.prol, i64 1 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.0179256.prol, i64 2 ; 3 uses
  %i.hr = add nsw i32 %.0178257.prol, -1          ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph259.prol.loopexit, label %.lr.ph259.prol, !llvm.loop !67

.lr.ph259.prol.loopexit:                          ; preds = %.lr.ph259.prol, %.lr.ph259.preheader
  %.lcssa394.unr = phi ptr [ poison, %.lr.ph259.preheader ], [ %i.hp, %.lr.ph259.prol ]
  %.lcssa393.unr = phi ptr [ poison, %.lr.ph259.preheader ], [ %i.hq, %.lr.ph259.prol ]
  %.0178257.unr = phi i32 [ %.0178257.ph, %.lr.ph259.preheader ], [ %i.hr, %.lr.ph259.prol ]
  %.0179256.unr = phi ptr [ %.0179256.ph, %.lr.ph259.preheader ], [ %i.hq, %.lr.ph259.prol ]
  %.0180255.unr = phi ptr [ %.0180255.ph, %.lr.ph259.preheader ], [ %i.hp, %.lr.ph259.prol ]
  %i.hs = icmp ult i32 %i.hk, 3
  br i1 %i.hs, label %._crit_edge260.loopexit, label %.lr.ph259

.lr.ph259:                                        ; preds = %.lr.ph259.prol.loopexit, %.lr.ph259
  %.0178257 = phi i32 [ %i.ir, %.lr.ph259 ], [ %.0178257.unr, %.lr.ph259.prol.loopexit ]
  %.0179256 = phi ptr [ %i.iq, %.lr.ph259 ], [ %.0179256.unr, %.lr.ph259.prol.loopexit ] ; 9 uses
  %.0180255 = phi ptr [ %i.ip, %.lr.ph259 ], [ %.0180255.unr, %.lr.ph259.prol.loopexit ] ; 5 uses
  %i.ht = load i8, ptr %.0180255, align 1, !tbaa !24 ; 2 uses
  %i.hu = lshr i8 %i.ht, 4
  store i8 %i.hu, ptr %.0179256, align 1, !tbaa !24
  %i.hv = and i8 %i.ht, 15
  %i.hw = getelementptr inbounds nuw i8, ptr %.0179256, i64 1
  store i8 %i.hv, ptr %i.hw, align 1, !tbaa !24
  %i.hx = getelementptr inbounds nuw i8, ptr %.0180255, i64 1
  %i.hy = getelementptr inbounds nuw i8, ptr %.0179256, i64 2
  %i.hz = load i8, ptr %i.hx, align 1, !tbaa !24  ; 2 uses
  %i.ia = lshr i8 %i.hz, 4
  store i8 %i.ia, ptr %i.hy, align 1, !tbaa !24
  %i.ib = and i8 %i.hz, 15
  %i.ic = getelementptr inbounds nuw i8, ptr %.0179256, i64 3
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !24
  %i.id = getelementptr inbounds nuw i8, ptr %.0180255, i64 2
  %i.ie = getelementptr inbounds nuw i8, ptr %.0179256, i64 4
  %i.if = load i8, ptr %i.id, align 1, !tbaa !24  ; 2 uses
  %i.ig = lshr i8 %i.if, 4
  store i8 %i.ig, ptr %i.ie, align 1, !tbaa !24
  %i.ih = and i8 %i.if, 15
  %i.ii = getelementptr inbounds nuw i8, ptr %.0179256, i64 5
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !24
  %i.ij = getelementptr inbounds nuw i8, ptr %.0180255, i64 3
  %i.ik = getelementptr inbounds nuw i8, ptr %.0179256, i64 6
  %i.il = load i8, ptr %i.ij, align 1, !tbaa !24  ; 2 uses
  %i.im = lshr i8 %i.il, 4
  store i8 %i.im, ptr %i.ik, align 1, !tbaa !24
  %i.in = and i8 %i.il, 15
  %i.io = getelementptr inbounds nuw i8, ptr %.0179256, i64 7
  store i8 %i.in, ptr %i.io, align 1, !tbaa !24
  %i.ip = getelementptr inbounds nuw i8, ptr %.0180255, i64 4 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.0179256, i64 8 ; 2 uses
  %i.ir = add nsw i32 %.0178257, -4               ; 2 uses
  %.not223.3 = icmp eq i32 %i.ir, 0
  br i1 %.not223.3, label %._crit_edge260.loopexit, label %.lr.ph259, !llvm.loop !68

._crit_edge260.loopexit:                          ; preds = %.lr.ph259.prol.loopexit, %.lr.ph259, %vec.epilog.middle.block, %middle.block
  %.lcssa368 = phi ptr [ %i.hf, %vec.epilog.middle.block ], [ %i.gs, %middle.block ], [ %.lcssa394.unr, %.lr.ph259.prol.loopexit ], [ %i.ip, %.lr.ph259 ]
  %.lcssa367 = phi ptr [ %i.he, %vec.epilog.middle.block ], [ %i.gr, %middle.block ], [ %.lcssa393.unr, %.lr.ph259.prol.loopexit ], [ %i.iq, %.lr.ph259 ]
  %.pre324 = load i32, ptr %i.gg, align 4, !tbaa !31
  br label %._crit_edge260

._crit_edge260:                                   ; preds = %._crit_edge260.loopexit, %bb.ag
  %i.is = phi i32 [ %i.gh, %bb.ag ], [ %.pre324, %._crit_edge260.loopexit ] ; 2 uses
  %.0180.lcssa = phi ptr [ %.4264, %bb.ag ], [ %.lcssa368, %._crit_edge260.loopexit ]
  %.0179.lcssa = phi ptr [ %.4206263, %bb.ag ], [ %.lcssa367, %._crit_edge260.loopexit ]
  %i.it = and i32 %i.is, 1
  %.not224 = icmp eq i32 %i.it, 0
  br i1 %.not224, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge260
  %i.iu = load i8, ptr %.0180.lcssa, align 1, !tbaa !24
  %i.iv = lshr i8 %i.iu, 4
  store i8 %i.iv, ptr %.0179.lcssa, align 1, !tbaa !24
  %.pre322 = load i32, ptr %i.gg, align 4, !tbaa !31
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge260
  %i.iw = phi i32 [ %.pre322, %bb.ah ], [ %i.is, %._crit_edge260 ]
  %i.ix = load i32, ptr %i.al, align 8, !tbaa !13
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds i8, ptr %.4264, i64 %i.iy
  %i.ja = load i32, ptr %i.au, align 8, !tbaa !13
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds i8, ptr %.4206263, i64 %i.jb
  %i.jd = add i32 %.0181265, -1                   ; 2 uses
  %.not222 = icmp eq i32 %i.jd, 0
  br i1 %.not222, label %.loopexit238, label %bb.ag, !llvm.loop !69

bb.aj:                                            ; preds = %bb.p
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 256, ptr %i.je, align 8, !tbaa !32
  %i.jf = load i32, ptr %1, align 8, !tbaa !27    ; 2 uses
  %.not220248 = icmp eq i32 %i.jf, 0
  br i1 %.not220248, label %.loopexit238, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.aj
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !31 ; 2 uses
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %.loopexit238, label %.lr.ph253.split

.lr.ph253.splitthread-pre-split:                  ; preds = %._crit_edge
  %i.jj = sext i32 %i.kp to i64
  %i.jk = getelementptr inbounds i8, ptr %.5207249, i64 %i.jj
end_hunk_1
