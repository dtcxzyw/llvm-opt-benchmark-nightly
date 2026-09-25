Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbitmap?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@FT_Bitmap_Embolden:bb.a
.lr.ph.split.us.i.1:                              ; preds = %bb.v, %.lr.ph.split.us.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.0121135.us.i, i64 %i.bw ; 2 uses
  %.0120.us.i = getelementptr inbounds nuw i8, ptr %.0120137.us.i, i64 %i.bw
  %i.cv = icmp ult ptr %.0121135.us.i, %.0120137.us.i
  br i1 %i.cv, label %bb.w, label %.lr.ph.split.us.i.2

bb.w:                                             ; preds = %.lr.ph.split.us.i.1
  call void @llvm.memset.p0.i64(ptr align 1 %i.cu, i8 0, i64 %i.co, i1 false)
  br label %.lr.ph.split.us.i.2

.lr.ph.split.us.i.2:                              ; preds = %bb.w, %.lr.ph.split.us.i.1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.bw ; 2 uses
  %.0120.us.i.1 = getelementptr inbounds nuw i8, ptr %.0120.us.i, i64 %i.bw
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
  %.0106 = phi i32 [ %i.fe, %bb.ak ], [ %i.fk, %bb.al ] ; 6 uses
  %.not164 = icmp eq i32 %i.fr, 0
  br i1 %.not164, label %._crit_edge159, label %.preheader136.lr.ph

.preheader136.lr.ph:                              ; preds = %bb.am
  %.0107144 = add nsw i32 %.0106, -1
  %.not217 = icmp eq i32 %.0106, 0                ; 2 uses
  %.not129140 = icmp slt i32 %.0104200, 1
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %.not128152 = icmp slt i32 %.0103203, 1
  %i.ft = zext i32 %.0107144 to i64
  %brmerge = or i1 %.not128152, %.not217
  %wide.trip.count = zext nneg i32 %.0106 to i64  ; 9 uses
  %min.iters.check = icmp ult i32 %.0106, 4
  %min.iters.check225 = icmp ult i32 %.0106, 32
  %i.fu = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.fu, 0
  %n.vec229 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n234 = icmp eq i64 %n.vec229, %wide.trip.count
  %xtraiter243 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  br label %.preheader136

.preheader136:                                    ; preds = %.preheader136.lr.ph, %._crit_edge155.split
  %.0105158 = phi i32 [ 0, %.preheader136.lr.ph ], [ %i.jz, %._crit_edge155.split ]
  %.1111156 = phi ptr [ %.0110, %.preheader136.lr.ph ], [ %i.jy, %._crit_edge155.split ] ; 15 uses
  br i1 %.not217, label %._crit_edge155.split, label %.lr.ph149

.lr.ph149:                                        ; preds = %.preheader136
  br i1 %.not129140, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.loopexit, %.lr.ph149
  br i1 %brmerge, label %._crit_edge155.split, label %.lr.ph151.preheader

.lr.ph151.preheader:                              ; preds = %.preheader
  %scevgep = getelementptr i8, ptr %.1111156, i64 %wide.trip.count ; 2 uses
  br label %iter.check

.lr.ph:                                           ; preds = %.lr.ph149, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ %i.ft, %.lr.ph149 ] ; 4 uses
  %.0107.in145 = phi i32 [ %5, %.loopexit ], [ %.0106, %.lr.ph149 ]
  %.0107.in145.fr = freeze i32 %.0107.in145       ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv ; 7 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !24  ; 3 uses
  %i.fx = zext i8 %i.fw to i32                    ; 2 uses
  %.not131 = icmp eq i32 %.0107.in145.fr, 1
  %i.fy = zext nneg i32 %.0107.in145.fr to i64
  %i.fz = getelementptr i8, ptr %.1111156, i64 %i.fy
  %i.ga = getelementptr i8, ptr %i.fz, i64 -2
  %i.gb = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  br i1 %.not131, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us.backedge
  %i.gc = phi i8 [ %i.gy, %.lr.ph.split.us.backedge ], [ %i.fw, %.lr.ph ] ; 2 uses
  %.0108141.us = phi i32 [ %.0108141.us.be, %.lr.ph.split.us.backedge ], [ 1, %.lr.ph ] ; 5 uses
  %i.gd = load i8, ptr %i.m, align 2, !tbaa !30
  %i.ge = icmp eq i8 %i.gd, 1
  br i1 %i.ge, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %.lr.ph.split.us
  %i.gf = sub nsw i32 %i.gb, %.0108141.us         ; 2 uses
  %i.gg = icmp sgt i32 %i.gf, -1
  br i1 %i.gg, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.gh = zext i8 %i.gc to i32
  %i.gi = zext nneg i32 %i.gf to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %.1111156, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !24
  %i.gl = zext i8 %i.gk to i32
  %i.gm = add nuw nsw i32 %i.gl, %i.gh            ; 3 uses
  %i.gn = load i16, ptr %i.fs, align 8, !tbaa !32 ; 2 uses
  %i.go = zext i16 %i.gn to i32
  %.not130.us = icmp samesign ult i32 %i.gm, %i.go
  br i1 %.not130.us, label %bb.ap, label %.split.us

bb.ap:                                            ; preds = %bb.ao
  %i.gp = trunc i32 %i.gm to i8                   ; 2 uses
  store i8 %i.gp, ptr %i.fv, align 1, !tbaa !24
  %i.gq = and i32 %i.gm, 255
  %i.gr = load i16, ptr %i.fs, align 8, !tbaa !32
  %i.gs = zext i16 %i.gr to i32
  %i.gt = add nsw i32 %i.gs, -1
  %i.gu = icmp eq i32 %i.gq, %i.gt
  %.not129.us = icmp sge i32 %.0108141.us, %.0104200
  %or.cond161 = select i1 %i.gu, i1 true, i1 %.not129.us
  br i1 %or.cond161, label %.loopexit, label %.lr.ph.split.us.backedge

bb.aq:                                            ; preds = %.lr.ph.split.us
  %i.gv = lshr i32 %i.fx, %.0108141.us
  %i.gw = trunc nuw i32 %i.gv to i8
  %i.gx = or i8 %i.gc, %i.gw                      ; 2 uses
  store i8 %i.gx, ptr %i.fv, align 1, !tbaa !24
  %.not129.us.old.not = icmp slt i32 %.0108141.us, %.0104200
  br i1 %.not129.us.old.not, label %.lr.ph.split.us.backedge, label %.loopexit

.lr.ph.split.us.backedge:                         ; preds = %bb.aq, %bb.ap
  %i.gy = phi i8 [ %i.gx, %bb.aq ], [ %i.gp, %bb.ap ]
  %.0108141.us.be = add nuw nsw i32 %.0108141.us, 1
  br label %.lr.ph.split.us, !llvm.loop !43

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split.backedge
  %i.gz = phi i8 [ %i.hl, %.lr.ph.split.backedge ], [ %i.fw, %.lr.ph ] ; 2 uses
  %.0108141 = phi i32 [ %.0108141.be, %.lr.ph.split.backedge ], [ 1, %.lr.ph ] ; 6 uses
  %i.ha = load i8, ptr %i.m, align 2, !tbaa !30
  %i.hb = icmp eq i8 %i.ha, 1
  br i1 %i.hb, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph.split
  %i.hc = lshr i32 %i.fx, %.0108141
  %i.hd = trunc nuw i32 %i.hc to i8
  %i.he = or i8 %i.gz, %i.hd                      ; 2 uses
  store i8 %i.he, ptr %i.fv, align 1, !tbaa !24
  %i.hf = load i8, ptr %i.ga, align 1, !tbaa !24
  %i.hg = zext i8 %i.hf to i32
  %i.hh = sub nsw i32 8, %.0108141
  %i.hi = shl i32 %i.hg, %i.hh
  %i.hj = trunc i32 %i.hi to i8
  %i.hk = or i8 %i.he, %i.hj                      ; 2 uses
  store i8 %i.hk, ptr %i.fv, align 1, !tbaa !24
  %.not129.old.not = icmp slt i32 %.0108141, %.0104200
  br i1 %.not129.old.not, label %.lr.ph.split.backedge, label %.loopexit

.lr.ph.split.backedge:                            ; preds = %bb.ar, %bb.au
  %i.hl = phi i8 [ %i.hk, %bb.ar ], [ %i.hy, %bb.au ]
  %.0108141.be = add nuw nsw i32 %.0108141, 1
  br label %.lr.ph.split, !llvm.loop !43

bb.as:                                            ; preds = %.lr.ph.split
  %i.hm = sub nsw i32 %i.gb, %.0108141            ; 2 uses
  %i.hn = icmp sgt i32 %i.hm, -1
  br i1 %i.hn, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %bb.as
  %i.ho = zext i8 %i.gz to i32
  %i.hp = zext nneg i32 %i.hm to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %.1111156, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !24
  %i.hs = zext i8 %i.hr to i32
  %i.ht = add nuw nsw i32 %i.hs, %i.ho            ; 3 uses
  %i.hu = load i16, ptr %i.fs, align 8, !tbaa !32 ; 2 uses
  %i.hv = zext i16 %i.hu to i32
  %.not130 = icmp samesign ult i32 %i.ht, %i.hv
  br i1 %.not130, label %bb.au, label %.split.us

.split.us:                                        ; preds = %bb.at, %bb.ao
  %.us-phi = phi i16 [ %i.gn, %bb.ao ], [ %i.hu, %bb.at ]
  %i.hw = trunc i16 %.us-phi to i8
  %i.hx = add i8 %i.hw, -1
  store i8 %i.hx, ptr %i.fv, align 1, !tbaa !24
  br label %.loopexit

bb.au:                                            ; preds = %bb.at
  %i.hy = trunc i32 %i.ht to i8                   ; 2 uses
  store i8 %i.hy, ptr %i.fv, align 1, !tbaa !24
  %i.hz = and i32 %i.ht, 255
  %i.ia = load i16, ptr %i.fs, align 8, !tbaa !32
  %i.ib = zext i16 %i.ia to i32
  %i.ic = add nsw i32 %i.ib, -1
  %i.id = icmp eq i32 %i.hz, %i.ic
  %.not129 = icmp sge i32 %.0108141, %.0104200
  %or.cond163 = select i1 %i.id, i1 true, i1 %.not129
  br i1 %or.cond163, label %.loopexit, label %.lr.ph.split.backedge

.loopexit:                                        ; preds = %bb.ar, %bb.au, %bb.as, %bb.aq, %bb.ap, %bb.an, %.split.us
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %5 = trunc nuw i64 %indvars.iv to i32           ; 2 uses
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %.lr.ph, label %.preheader, !llvm.loop !44

iter.check:                                       ; preds = %.lr.ph151.preheader, %._crit_edge
  %.1153 = phi i32 [ %i.jv, %._crit_edge ], [ 1, %.lr.ph151.preheader ] ; 3 uses
  %i.ie = load i32, ptr %i.bm, align 8, !tbaa !13
  %i.if = mul nsw i32 %i.ie, %.1153
  %i.ig = sext i32 %i.if to i64
  %i.ih = sub nsw i64 0, %i.ig                    ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %.1111156, i64 %i.ih ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep224 = getelementptr i8, ptr %scevgep, i64 %i.ih
  %bound0 = icmp ult ptr %i.ii, %scevgep
  %bound1 = icmp ult ptr %.1111156, %scevgep224
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check225, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.1111156, i64 %index ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %wide.load = load <16 x i8>, ptr %i.ij, align 1, !tbaa !24, !alias.scope !54
  %wide.load226 = load <16 x i8>, ptr %i.ik, align 1, !tbaa !24, !alias.scope !54
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 %index ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16 ; 2 uses
  %wide.load227 = load <16 x i8>, ptr %i.il, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %wide.load228 = load <16 x i8>, ptr %i.im, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %i.in = or <16 x i8> %wide.load227, %wide.load
  %i.io = or <16 x i8> %wide.load228, %wide.load226
  store <16 x i8> %i.in, ptr %i.il, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  store <16 x i8> %i.io, ptr %i.im, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ip = icmp eq i64 %index.next, %n.vec
  br i1 %i.ip, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index230 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next233, %vec.epilog.vector.body ] ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.1111156, i64 %index230
  %wide.load231 = load <4 x i8>, ptr %i.iq, align 1, !tbaa !24, !alias.scope !54
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ii, i64 %index230 ; 2 uses
  %wide.load232 = load <4 x i8>, ptr %i.ir, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %i.is = or <4 x i8> %wide.load232, %wide.load231
  store <4 x i8> %i.is, ptr %i.ir, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %index.next233 = add nuw i64 %index230, 4       ; 2 uses
  %i.it = icmp eq i64 %index.next233, %n.vec229
  br i1 %i.it, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n234, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv173.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec229, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod244.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv173.prol = phi i64 [ %indvars.iv.next174.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv173.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter245 = phi i64 [ %prol.iter245.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.iu = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv173.prol
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !24
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ii, i64 %indvars.iv173.prol ; 2 uses
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !24
  %i.iy = or i8 %i.ix, %i.iv
  store i8 %i.iy, ptr %i.iw, align 1, !tbaa !24
  %indvars.iv.next174.prol = add nuw nsw i64 %indvars.iv173.prol, 1 ; 2 uses
  %prol.iter245.next = add i64 %prol.iter245, 1   ; 2 uses
  %prol.iter245.cmp.not = icmp eq i64 %prol.iter245.next, %xtraiter243
  br i1 %prol.iter245.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !50

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv173.unr = phi i64 [ %indvars.iv173.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next174.prol, %vec.epilog.scalar.ph.prol ]
  %i.iz = sub nsw i64 %indvars.iv173.ph, %wide.trip.count
  %i.ja = icmp ugt i64 %i.iz, -4
  br i1 %i.ja, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv173 = phi i64 [ %indvars.iv.next174.3, %vec.epilog.scalar.ph ], [ %indvars.iv173.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv173
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !24
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ii, i64 %indvars.iv173 ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !24
  %i.jf = or i8 %i.je, %i.jc
  store i8 %i.jf, ptr %i.jd, align 1, !tbaa !24
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv.next174
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !24
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ii, i64 %indvars.iv.next174 ; 2 uses
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !24
  %i.jk = or i8 %i.jj, %i.jh
  store i8 %i.jk, ptr %i.ji, align 1, !tbaa !24
  %indvars.iv.next174.1 = add nuw nsw i64 %indvars.iv173, 2 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv.next174.1
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !24
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ii, i64 %indvars.iv.next174.1 ; 2 uses
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !24
  %i.jp = or i8 %i.jo, %i.jm
  store i8 %i.jp, ptr %i.jn, align 1, !tbaa !24
  %indvars.iv.next174.2 = add nuw nsw i64 %indvars.iv173, 3 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv.next174.2
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !24
  %i.js = getelementptr inbounds nuw i8, ptr %i.ii, i64 %indvars.iv.next174.2 ; 2 uses
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !24
  %i.ju = or i8 %i.jt, %i.jr
  store i8 %i.ju, ptr %i.js, align 1, !tbaa !24
  %indvars.iv.next174.3 = add nuw nsw i64 %indvars.iv173, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next174.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.jv = add nuw i32 %.1153, 1
  %exitcond176.not = icmp eq i32 %.1153, %.0103203
  br i1 %exitcond176.not, label %._crit_edge155.split, label %iter.check, !llvm.loop !52

._crit_edge155.split:                             ; preds = %._crit_edge, %.preheader136, %.preheader
  %i.jw = load i32, ptr %i.bm, align 8, !tbaa !13
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds i8, ptr %.1111156, i64 %i.jx
  %i.jz = add nuw i32 %.0105158, 1                ; 2 uses
  %i.ka = load i32, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.kb = icmp ult i32 %i.jz, %i.ka
  br i1 %i.kb, label %.preheader136, label %._crit_edge159, !llvm.loop !53

._crit_edge159:                                   ; preds = %._crit_edge155.split, %bb.am
  %.lcssa138 = phi i32 [ 0, %bb.am ], [ %i.ka, %._crit_edge155.split ]
  %i.kc = load i32, ptr %i.bp, align 4, !tbaa !31
  %i.kd = add i32 %i.kc, %.0104200
  store i32 %i.kd, ptr %i.bp, align 4, !tbaa !31
  %i.ke = add i32 %.lcssa138, %.0103203
  store i32 %i.ke, ptr %1, align 8, !tbaa !27
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
end_hunk_0
