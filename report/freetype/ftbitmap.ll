Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbitmap?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@FT_Bitmap_Embolden:bb.a

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %bb.u, %.lr.ph.split.us.preheader.i
  %.0120137.us.i.unr = phi ptr [ %.0120133.i, %.lr.ph.split.us.preheader.i ], [ %.0120.us.i.prol, %bb.u ]
  %.0119136.us.i.unr = phi i32 [ %i.bn, %.lr.ph.split.us.preheader.i ], [ %i.cq, %bb.u ]
  %.0121135.us.i.unr = phi ptr [ %i.cc, %.lr.ph.split.us.preheader.i ], [ %i.cr, %bb.u ]
  %i.cs = icmp ult i32 %i.bn, 4
  br i1 %i.cs, label %thread-pre-split, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %bb.z
  %.0120137.us.i = phi ptr [ %.0120.us.i.3, %bb.z ], [ %.0120137.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 5 uses
  %.0119136.us.i = phi i32 [ %i.da, %bb.z ], [ %.0119136.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ]
  %.0121135.us.i = phi ptr [ %i.db, %bb.z ], [ %.0121135.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 6 uses
  %i.ct = icmp ult ptr %.0121135.us.i, %.0120137.us.i
  br i1 %i.ct, label %bb.v, label %.lr.ph.split.us.i.1

bb.v:                                             ; preds = %.lr.ph.split.us.i
  call void @llvm.memset.p0.i64(ptr align 1 %.0121135.us.i, i8 0, i64 %i.co, i1 false)
  br label %.lr.ph.split.us.i.1

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
  %.0105158 = phi i32 [ 0, %.preheader136.lr.ph ], [ %i.kc, %._crit_edge155.split ]
  %.1111156 = phi ptr [ %.0110, %.preheader136.lr.ph ], [ %i.kb, %._crit_edge155.split ] ; 15 uses
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
  %i.ij = sext i32 %i.ii to i64
  %i.ik = sub nsw i64 0, %i.ij                    ; 2 uses
  %i.il = getelementptr inbounds i8, ptr %.1111156, i64 %i.ik ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

end_hunk_0
