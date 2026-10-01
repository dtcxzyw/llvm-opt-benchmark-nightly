Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/sgd?download=true
inline.NumInlined: 27
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@sgd:bb.a
  %.0137207.i = phi i64 [ %.1138.lcssa.i, %._crit_edge.i ], [ 0, %gv_calloc.exit ] ; 2 uses
  %.0152206.i = phi ptr [ %i.cj, %._crit_edge.i ], [ %i.ad, %gv_calloc.exit ] ; 3 uses
  %i.ch = add i64 %.0208.i, 1                     ; 2 uses
  %i.ci = tail call ptr @agfstedge(ptr noundef %0, ptr noundef nonnull %.0152206.i) #14 ; 2 uses
  %.not159202.i = icmp eq ptr %i.ci, null
  br i1 %.not159202.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph210.i
  %.1138.lcssa.i = phi i64 [ %.0137207.i, %.lr.ph210.i ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.cj = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.0152206.i) #14 ; 2 uses
  %.not.i156 = icmp eq ptr %i.cj, null
  br i1 %.not.i156, label %._crit_edge211.i, label %.lr.ph210.i, !llvm.loop !8

.lr.ph.i:                                         ; preds = %.lr.ph210.i, %.lr.ph.i
  %.1138204.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.0137207.i, %.lr.ph210.i ]
  %.0153203.i = phi ptr [ %i.cv, %.lr.ph.i ], [ %i.ci, %.lr.ph210.i ] ; 4 uses
  %i.ck = load i32, ptr %.0153203.i, align 8
  %i.cl = and i32 %i.ck, 3                        ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 3
  %i.cn = select i1 %i.cm, i64 56, i64 120
  %i.co = getelementptr inbounds nuw i8, ptr %.0153203.i, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !80
  %i.cq = icmp eq i32 %i.cl, 2
  %i.cr = select i1 %i.cq, i64 56, i64 -8
  %i.cs = getelementptr inbounds i8, ptr %.0153203.i, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !80
  %.not160.i = icmp ne ptr %i.cp, %i.ct
  %i.cu = zext i1 %.not160.i to i64
  %spec.select.i = add i64 %.1138204.i, %i.cu     ; 2 uses
  %i.cv = tail call ptr @agnxtedge(ptr noundef %0, ptr noundef nonnull %.0153203.i, ptr noundef nonnull %.0152206.i) #14 ; 2 uses
  %.not159.i = icmp eq ptr %i.cv, null
  br i1 %.not159.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !9

._crit_edge225.i:                                 ; preds = %._crit_edge218.i, %gv_calloc.exit171.i
  %.3.lcssa.i = phi i64 [ 0, %gv_calloc.exit171.i ], [ %.4.lcssa.i, %._crit_edge218.i ]
  %.1.lcssa.i = phi i64 [ 0, %gv_calloc.exit171.i ], [ %i.dv, %._crit_edge218.i ]
  %i.cw = load ptr, ptr %i.bk, align 8, !tbaa !71 ; 5 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.1.lcssa.i
  store i64 %.3.lcssa.i, ptr %i.cx, align 8, !tbaa !72
  switch i32 %.1, label %bb.ap [
    i32 0, label %extract_adjacency.exit
    i32 2, label %bb.ad
  ]

bb.w:                                             ; preds = %._crit_edge218.i, %.lr.ph224.i
  %.1223.i = phi i64 [ 0, %.lr.ph224.i ], [ %i.dv, %._crit_edge218.i ] ; 5 uses
  %.3222.i = phi i64 [ 0, %.lr.ph224.i ], [ %.4.lcssa.i, %._crit_edge218.i ] ; 3 uses
  %.0151221.i = phi ptr [ %i.cf, %.lr.ph224.i ], [ %i.dw, %._crit_edge218.i ] ; 5 uses
  %i.cy = load ptr, ptr %i.bk, align 8, !tbaa !71
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.1223.i
  store i64 %.3222.i, ptr %i.cz, align 8, !tbaa !72
  %i.da = getelementptr inbounds nuw i8, ptr %.0151221.i, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !36
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 163
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !66
  %i.de = icmp ugt i8 %i.dd, 1
  %i.df = load i64, ptr %i.cg, align 8, !tbaa !81
  %i.dg = icmp ult i64 %i.df, 65
  br i1 %i.dg, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = load ptr, ptr %i.bj, align 8, !tbaa !28
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0.i.i = phi ptr [ %i.dh, %bb.x ], [ %i.bj, %bb.w ] ; 2 uses
  %i.di = trunc i64 %.1223.i to i8
  %i.dj = and i8 %i.di, 7
  %i.dk = shl nuw i8 1, %i.dj                     ; 2 uses
  br i1 %i.de, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dl = lshr i64 %.1223.i, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.dl ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !28
  %i.do = or i8 %i.dn, %i.dk
  store i8 %i.do, ptr %i.dm, align 1, !tbaa !28
  br label %bitarray_set.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.dp = xor i8 %i.dk, -1
  %i.dq = lshr i64 %.1223.i, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.dq ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !28
  %i.dt = and i8 %i.ds, %i.dp
  store i8 %i.dt, ptr %i.dr, align 1, !tbaa !28
  br label %bitarray_set.exit.i

bitarray_set.exit.i:                              ; preds = %bb.aa, %bb.z
  %i.du = tail call ptr @agfstedge(ptr noundef %0, ptr noundef nonnull %.0151221.i) #14 ; 2 uses
  %.not158214.i = icmp eq ptr %i.du, null
  br i1 %.not158214.i, label %._crit_edge218.i, label %.lr.ph217.i

._crit_edge218.i:                                 ; preds = %bb.ac, %bitarray_set.exit.i
  %.4.lcssa.i = phi i64 [ %.3222.i, %bitarray_set.exit.i ], [ %.5.i, %bb.ac ] ; 2 uses
  %i.dv = add i64 %.1223.i, 1                     ; 2 uses
  %i.dw = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.0151221.i) #14 ; 2 uses
  %.not157.i = icmp eq ptr %i.dw, null
  br i1 %.not157.i, label %._crit_edge225.i, label %bb.w, !llvm.loop !10

.lr.ph217.i:                                      ; preds = %bitarray_set.exit.i, %bb.ac
  %.4216.i = phi i64 [ %.5.i, %bb.ac ], [ %.3222.i, %bitarray_set.exit.i ] ; 4 uses
  %.0150215.i = phi ptr [ %i.ey, %bb.ac ], [ %i.du, %bitarray_set.exit.i ] ; 5 uses
  %i.dx = load i32, ptr %.0150215.i, align 8
  %i.dy = and i32 %i.dx, 3                        ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 3
  %i.ea = select i1 %i.dz, i64 56, i64 120
  %i.eb = getelementptr inbounds nuw i8, ptr %.0150215.i, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !80 ; 3 uses
  %i.ed = icmp eq i32 %i.dy, 2
  %i.ee = select i1 %i.ed, i64 56, i64 -8
  %i.ef = getelementptr inbounds i8, ptr %.0150215.i, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !80 ; 2 uses
  %i.eh = icmp eq ptr %i.ec, %i.eg
  br i1 %i.eh, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph217.i
  %i.ei = icmp eq ptr %i.ec, %.0151221.i
  %..i = select i1 %i.ei, ptr %i.eg, ptr %i.ec
  %i.ej = getelementptr inbounds nuw i8, ptr %..i, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !36
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 164
  %i.em = load i32, ptr %i.el, align 4, !tbaa !82
  %i.en = sext i32 %i.em to i64
  %i.eo = load ptr, ptr %i.cb, align 8, !tbaa !73
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.4216.i
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !72
  %i.eq = getelementptr inbounds nuw i8, ptr %.0150215.i, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !36
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 184
  %i.et = load double, ptr %i.es, align 8, !tbaa !88
  %i.eu = fptrunc double %i.et to float
  %i.ev = load ptr, ptr %i.cd, align 8, !tbaa !74
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.4216.i
  store float %i.eu, ptr %i.ew, align 4, !tbaa !90
  %i.ex = add i64 %.4216.i, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph217.i
  %.5.i = phi i64 [ %.4216.i, %.lr.ph217.i ], [ %i.ex, %bb.ab ] ; 2 uses
  %i.ey = tail call ptr @agnxtedge(ptr noundef %0, ptr noundef nonnull %.0150215.i, ptr noundef nonnull %.0151221.i) #14 ; 2 uses
  %.not158.i = icmp eq ptr %i.ey, null
  br i1 %.not158.i, label %._crit_edge218.i, label %.lr.ph217.i, !llvm.loop !11

bb.ad:                                            ; preds = %._crit_edge225.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.ez = load i64, ptr %i.ae, align 8, !tbaa !75 ; 9 uses
  %i.fa = icmp ult i64 %i.ez, 65
  br i1 %i.fa, label %bitarray_new.exit179.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fb = lshr i64 %i.ez, 3
  %i.fc = and i64 %i.ez, 7
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = zext i1 %i.fd to i64
  %i.ff = add nuw nsw i64 %i.fb, %i.fe            ; 4 uses
  %i.fg = tail call noalias ptr @calloc(i64 noundef %i.ff, i64 noundef 1) #16 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fi = load ptr, ptr @stderr, align 8, !tbaa !31
  %i.fj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fi, ptr noundef nonnull @.str.8, i64 noundef %i.ff) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.ag:                                            ; preds = %bb.ae
  store ptr %i.fg, ptr %5, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ez, ptr %i.fk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.fl = tail call noalias ptr @calloc(i64 noundef %i.ff, i64 noundef 1) #16 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.ah, label %bitarray_new.exit179.thread.i

bitarray_new.exit179.thread.i:                    ; preds = %bb.ag
  store ptr %i.fl, ptr %6, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.ez, ptr %i.fn, align 8
  br label %.lr.ph254.i

bb.ah:                                            ; preds = %bb.ag
  %i.fo = load ptr, ptr @stderr, align 8, !tbaa !31
  %i.fp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fo, ptr noundef nonnull @.str.8, i64 noundef %i.ff) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bitarray_new.exit179.i:                           ; preds = %bb.ad
  store ptr null, ptr %5, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ez, ptr %i.fq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr null, ptr %6, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %i.ez, ptr %i.fr, align 8
  %.not256.i = icmp eq i64 %i.ez, 0
  br i1 %.not256.i, label %bitarray_reset.exit.i, label %.lr.ph254.i

.lr.ph254.i:                                      ; preds = %bitarray_new.exit179.i, %bitarray_new.exit179.thread.i
  %i.fs = phi ptr [ %i.fn, %bitarray_new.exit179.thread.i ], [ %i.fr, %bitarray_new.exit179.i ] ; 4 uses
  %i.ft = phi ptr [ %i.fk, %bitarray_new.exit179.thread.i ], [ %i.fq, %bitarray_new.exit179.i ] ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i = load i64, ptr %i.cw, align 8, !tbaa !72
  br label %bb.ak

.loopexit.i:                                      ; preds = %bitarray_set.exit191.i, %._crit_edge251.i
  %i.fx = phi i64 [ %i.hn, %._crit_edge251.i ], [ %i.kp, %bitarray_set.exit191.i ]
  %exitcond.not.i = icmp eq i64 %i.gg, %i.ez
  br i1 %exitcond.not.i, label %._crit_edge255.i, label %bb.ak, !llvm.loop !12

._crit_edge255.i:                                 ; preds = %.loopexit.i
  %.pre268.i.a = load i64, ptr %i.ft, align 8, !tbaa !81
  %i.fy = icmp ugt i64 %.pre268.i.a, 64
  br i1 %i.fy, label %bb.ai, label %bitarray_reset.exit.i

bb.ai:                                            ; preds = %._crit_edge255.i
  %i.fz = load ptr, ptr %5, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.fz) #14
  br label %bitarray_reset.exit.i

bitarray_reset.exit.i:                            ; preds = %bb.ai, %._crit_edge255.i, %bitarray_new.exit179.i
  %i.ga = phi ptr [ %i.fs, %bb.ai ], [ %i.fs, %._crit_edge255.i ], [ %i.fr, %bitarray_new.exit179.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !81
  %i.gc = icmp ugt i64 %i.gb, 64
  br i1 %i.gc, label %bb.aj, label %bitarray_reset.exit180.i

bb.aj:                                            ; preds = %bitarray_reset.exit.i
  %i.gd = load ptr, ptr %6, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.gd) #14
  br label %bitarray_reset.exit180.i

bitarray_reset.exit180.i:                         ; preds = %bb.aj, %bitarray_reset.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %extract_adjacency.exit

bb.ak:                                            ; preds = %.loopexit.i, %.lr.ph254.i
  %i.ge = phi i64 [ %.pre.i, %.lr.ph254.i ], [ %i.fx, %.loopexit.i ] ; 3 uses
  %.0149253.i = phi i64 [ 0, %.lr.ph254.i ], [ %i.gg, %.loopexit.i ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.0149253.i ; 2 uses
  %i.gg = add nuw i64 %.0149253.i, 1              ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.gg ; 4 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !72 ; 3 uses
  %i.gj = icmp ult i64 %i.ge, %i.gi
  br i1 %i.gj, label %.lr.ph232.i, label %._crit_edge233.i

.lr.ph232.i:                                      ; preds = %bb.ak
  %i.gk = load ptr, ptr %i.cb, align 8, !tbaa !73
  %.pre260.i = load ptr, ptr %5, align 8
  %.pre262.i = load i64, ptr %i.ft, align 8
  br label %bb.al

._crit_edge233.loopexit.i:                        ; preds = %bb.am
  %.pre262.i.a = load i64, ptr %i.gf, align 8, !tbaa !72
  br label %._crit_edge233.i

._crit_edge233.i:                                 ; preds = %._crit_edge233.loopexit.i, %bb.ak
  %i.gl = phi i64 [ %i.gi, %bb.ak ], [ %9, %._crit_edge233.loopexit.i ] ; 2 uses
  %i.gm = phi i64 [ %i.ge, %bb.ak ], [ %.pre262.i.a, %._crit_edge233.loopexit.i ] ; 3 uses
  %.0147.lcssa.i = phi i32 [ 0, %bb.ak ], [ %.1148.i, %._crit_edge233.loopexit.i ] ; 2 uses
  %i.gn = icmp ult i64 %i.gm, %i.gl
  br i1 %i.gn, label %.lr.ph250.i, label %._crit_edge251.i

.lr.ph250.i:                                      ; preds = %._crit_edge233.i
  %i.go = load ptr, ptr %i.cb, align 8, !tbaa !73 ; 3 uses
  %i.gp = load ptr, ptr %5, align 8               ; 2 uses
  %i.gq = load ptr, ptr %i.cd, align 8, !tbaa !74 ; 2 uses
  %i.gr = sitofp i32 %.0147.lcssa.i to float
  br label %bb.an

bb.al:                                            ; preds = %bb.am, %.lr.ph232.i
  %8 = phi i64 [ %i.gi, %.lr.ph232.i ], [ %9, %bb.am ]
  %i.gs = phi i64 [ %.pre262.i, %.lr.ph232.i ], [ %i.hj, %bb.am ] ; 3 uses
  %i.gt = phi ptr [ %.pre260.i, %.lr.ph232.i ], [ %i.hk, %bb.am ] ; 4 uses
  %.0146230.i = phi i64 [ %i.ge, %.lr.ph232.i ], [ %i.hl, %bb.am ] ; 2 uses
  %.0147229.i = phi i32 [ 0, %.lr.ph232.i ], [ %.1148.i, %bb.am ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %.0146230.i
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.gt, ptr %4, align 8
  store i64 %i.gs, ptr %i.fu, align 8
  %i.gw = icmp ult i64 %i.gs, 65                  ; 2 uses
  %.0.i181.i = select i1 %i.gw, ptr %4, ptr %i.gt
  %i.gx = lshr i64 %i.gv, 3                       ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.0.i181.i, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !28
  %i.ha = trunc i64 %i.gv to i8
  %i.hb = and i8 %i.ha, 7                         ; 2 uses
  %i.hc = lshr i8 %i.gz, %i.hb
  %i.hd = trunc i8 %i.hc to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br i1 %i.hd, label %bb.am, label %bitarray_set.exit183.i

bitarray_set.exit183.i:                           ; preds = %bb.al
  %spec.select196.i = select i1 %i.gw, ptr %5, ptr %i.gt
  %i.he = shl nuw i8 1, %i.hb
  %i.hf = getelementptr inbounds nuw i8, ptr %spec.select196.i, i64 %i.gx ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !28
  %i.hh = or i8 %i.hg, %i.he
  store i8 %i.hh, ptr %i.hf, align 1, !tbaa !28
  %i.hi = add nsw i32 %.0147229.i, 1
  %.pre259.i = load ptr, ptr %5, align 8
  %.pre261.i = load i64, ptr %i.ft, align 8
  %.pre261.i.a = load i64, ptr %i.gh, align 8, !tbaa !72
  br label %bb.am

bb.am:                                            ; preds = %bitarray_set.exit183.i, %bb.al
  %9 = phi i64 [ %8, %bb.al ], [ %.pre261.i.a, %bitarray_set.exit183.i ] ; 3 uses
  %i.hj = phi i64 [ %i.gs, %bb.al ], [ %.pre261.i, %bitarray_set.exit183.i ]
  %i.hk = phi ptr [ %i.gt, %bb.al ], [ %.pre259.i, %bitarray_set.exit183.i ]
  %.1148.i = phi i32 [ %.0147229.i, %bb.al ], [ %i.hi, %bitarray_set.exit183.i ] ; 2 uses
  %i.hl = add nuw i64 %.0146230.i, 1              ; 2 uses
  %i.hm = icmp ult i64 %i.hl, %9
  br i1 %i.hm, label %bb.al, label %._crit_edge233.loopexit.i, !llvm.loop !13

._crit_edge251.loopexit.i:                        ; preds = %._crit_edge247.i
  %.pre267.i.a = load i64, ptr %i.gf, align 8, !tbaa !72
  br label %._crit_edge251.i

._crit_edge251.i:                                 ; preds = %._crit_edge251.loopexit.i, %._crit_edge233.i
  %i.hn = phi i64 [ %i.jj, %._crit_edge251.loopexit.i ], [ %i.gl, %._crit_edge233.i ] ; 2 uses
  %i.ho = phi i64 [ %.pre267.i.a, %._crit_edge251.loopexit.i ], [ %i.gm, %._crit_edge233.i ] ; 2 uses
  %i.hp = icmp ult i64 %i.ho, %i.hn
  br i1 %i.hp, label %bitarray_set.exit191.lr.ph.i, label %.loopexit.i

bitarray_set.exit191.lr.ph.i:                     ; preds = %._crit_edge251.i
  %i.hq = load ptr, ptr %i.cb, align 8, !tbaa !73
  br label %bitarray_set.exit191.i

bb.an:                                            ; preds = %._crit_edge247.i, %.lr.ph250.i
  %.0145248.i = phi i64 [ %i.gm, %.lr.ph250.i ], [ %i.ji, %._crit_edge247.i ] ; 4 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.0145248.i
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !72
  %i.ht = getelementptr [8 x i8], ptr %i.cw, i64 %i.hs ; 3 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !72 ; 2 uses
  %i.hv = getelementptr i8, ptr %i.ht, i64 8      ; 3 uses
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !72 ; 2 uses
  %i.hx = icmp ult i64 %i.hu, %i.hw
  br i1 %i.hx, label %.lr.ph241.preheader.i, label %._crit_edge242.thread.i

._crit_edge242.thread.i:                          ; preds = %bb.an
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %.0145248.i
  store float %i.gr, ptr %i.hy, align 4, !tbaa !90
  br label %._crit_edge247.i

.lr.ph241.preheader.i:                            ; preds = %bb.an
  %.pre264.i = load ptr, ptr %6, align 8
  br label %.lr.ph241.i

._crit_edge242.i:                                 ; preds = %bb.ao
  %.pre266.i = load i64, ptr %i.ht, align 8, !tbaa !72 ; 2 uses
  %i.hz = icmp ult i64 %.pre266.i, %i.je
  %i.ia = add nsw i32 %.1142.i, %.0147.lcssa.i
  %i.ib = shl i32 %.1144.i, 1
  %i.ic = sub i32 %i.ia, %i.ib
  %i.id = sitofp i32 %i.ic to float
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %.0145248.i
  store float %i.id, ptr %i.ie, align 4, !tbaa !90
  br i1 %i.hz, label %bitarray_set.exit189.i, label %._crit_edge247.i

.lr.ph241.i:                                      ; preds = %bb.ao, %.lr.ph241.preheader.i
  %i.if = phi i64 [ %i.je, %bb.ao ], [ %i.hw, %.lr.ph241.preheader.i ]
  %i.ig = phi ptr [ %i.jf, %bb.ao ], [ %.pre264.i, %.lr.ph241.preheader.i ] ; 4 uses
  %.0140239.i = phi i64 [ %i.jg, %bb.ao ], [ %i.hu, %.lr.ph241.preheader.i ] ; 2 uses
  %.0141238.i = phi i32 [ %.1142.i, %bb.ao ], [ 0, %.lr.ph241.preheader.i ] ; 2 uses
  %.0143237.i = phi i32 [ %.1144.i, %bb.ao ], [ 0, %.lr.ph241.preheader.i ] ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.0140239.i
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !72 ; 2 uses
  %i.ij = load i64, ptr %i.fs, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.ig, ptr %3, align 8
  store i64 %i.ij, ptr %i.fv, align 8
  %i.ik = icmp ult i64 %i.ij, 65                  ; 2 uses
  %.0.i184.i = select i1 %i.ik, ptr %3, ptr %i.ig
  %i.il = lshr i64 %i.ii, 3                       ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.0.i184.i, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !tbaa !28
  %i.io = trunc i64 %i.ii to i8
  %i.ip = and i8 %i.io, 7                         ; 3 uses
  %i.iq = lshr i8 %i.in, %i.ip
  %i.ir = trunc i8 %i.iq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.ir, label %bb.ao, label %bitarray_set.exit186.i

bitarray_set.exit186.i:                           ; preds = %.lr.ph241.i
  %spec.select197.i = select i1 %i.ik, ptr %6, ptr %i.ig
  %i.is = shl nuw i8 1, %i.ip
  %i.it = getelementptr inbounds nuw i8, ptr %spec.select197.i, i64 %i.il ; 2 uses
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !28
  %i.iv = or i8 %i.iu, %i.is
  store i8 %i.iv, ptr %i.it, align 1, !tbaa !28
  %i.iw = add nsw i32 %.0141238.i, 1
  %i.ix = load i64, ptr %i.ft, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.gp, ptr %2, align 8
  store i64 %i.ix, ptr %i.fw, align 8
  %i.iy = icmp ult i64 %i.ix, 65
  %.0.i187.i = select i1 %i.iy, ptr %2, ptr %i.gp
  %i.iz = getelementptr inbounds nuw i8, ptr %.0.i187.i, i64 %i.il
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !28
  %i.jb = lshr i8 %i.ja, %i.ip
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.jc = and i8 %i.jb, 1
  %i.jd = zext nneg i8 %i.jc to i32
  %spec.select161.i = add nsw i32 %.0143237.i, %i.jd
  %.pre263.i = load ptr, ptr %6, align 8
  %.pre265.i = load i64, ptr %i.hv, align 8, !tbaa !72
  br label %bb.ao

bb.ao:                                            ; preds = %bitarray_set.exit186.i, %.lr.ph241.i
  %i.je = phi i64 [ %i.if, %.lr.ph241.i ], [ %.pre265.i, %bitarray_set.exit186.i ] ; 3 uses
  %i.jf = phi ptr [ %i.ig, %.lr.ph241.i ], [ %.pre263.i, %bitarray_set.exit186.i ]
  %.1144.i = phi i32 [ %.0143237.i, %.lr.ph241.i ], [ %spec.select161.i, %bitarray_set.exit186.i ] ; 2 uses
  %.1142.i = phi i32 [ %.0141238.i, %.lr.ph241.i ], [ %i.iw, %bitarray_set.exit186.i ] ; 2 uses
  %i.jg = add nuw i64 %.0140239.i, 1              ; 2 uses
  %i.jh = icmp ult i64 %i.jg, %i.je
  br i1 %i.jh, label %.lr.ph241.i, label %._crit_edge242.i, !llvm.loop !14

._crit_edge247.i:                                 ; preds = %bitarray_set.exit189.i, %._crit_edge242.i, %._crit_edge242.thread.i
  %i.ji = add nuw i64 %.0145248.i, 1              ; 2 uses
  %i.jj = load i64, ptr %i.gh, align 8, !tbaa !72 ; 2 uses
  %i.jk = icmp ult i64 %i.ji, %i.jj
  br i1 %i.jk, label %bb.an, label %._crit_edge251.loopexit.i, !llvm.loop !15

bitarray_set.exit189.i:                           ; preds = %._crit_edge242.i, %bitarray_set.exit189.i
  %.0139246.i = phi i64 [ %i.jy, %bitarray_set.exit189.i ], [ %.pre266.i, %._crit_edge242.i ] ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.0139246.i
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !72 ; 2 uses
  %i.jn = load i64, ptr %i.fs, align 8, !tbaa !81
  %i.jo = icmp ult i64 %i.jn, 65
  %i.jp = load ptr, ptr %6, align 8
  %spec.select198.i = select i1 %i.jo, ptr %6, ptr %i.jp
  %i.jq = trunc i64 %i.jm to i8
  %i.jr = and i8 %i.jq, 7
  %i.js = shl nuw i8 1, %i.jr
  %i.jt = xor i8 %i.js, -1
  %i.ju = lshr i64 %i.jm, 3
  %i.jv = getelementptr inbounds nuw i8, ptr %spec.select198.i, i64 %i.ju ; 2 uses
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !28
  %i.jx = and i8 %i.jw, %i.jt
  store i8 %i.jx, ptr %i.jv, align 1, !tbaa !28
  %i.jy = add nuw i64 %.0139246.i, 1              ; 2 uses
  %i.jz = load i64, ptr %i.hv, align 8, !tbaa !72
  %i.ka = icmp ult i64 %i.jy, %i.jz
  br i1 %i.ka, label %bitarray_set.exit189.i, label %._crit_edge247.i, !llvm.loop !16

bitarray_set.exit191.i:                           ; preds = %bitarray_set.exit191.i, %bitarray_set.exit191.lr.ph.i
  %.0136252.i = phi i64 [ %i.ho, %bitarray_set.exit191.lr.ph.i ], [ %i.ko, %bitarray_set.exit191.i ] ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %.0136252.i
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !72 ; 2 uses
  %i.kd = load i64, ptr %i.ft, align 8, !tbaa !81
  %i.ke = icmp ult i64 %i.kd, 65
  %i.kf = load ptr, ptr %5, align 8
  %spec.select199.i = select i1 %i.ke, ptr %5, ptr %i.kf
  %i.kg = trunc i64 %i.kc to i8
  %i.kh = and i8 %i.kg, 7
  %i.ki = shl nuw i8 1, %i.kh
  %i.kj = xor i8 %i.ki, -1
  %i.kk = lshr i64 %i.kc, 3
  %i.kl = getelementptr inbounds nuw i8, ptr %spec.select199.i, i64 %i.kk ; 2 uses
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !28
  %i.kn = and i8 %i.km, %i.kj
  store i8 %i.kn, ptr %i.kl, align 1, !tbaa !28
  %i.ko = add nuw i64 %.0136252.i, 1              ; 2 uses
  %i.kp = load i64, ptr %i.gh, align 8, !tbaa !72 ; 2 uses
  %i.kq = icmp ult i64 %i.ko, %i.kp
  br i1 %i.kq, label %bitarray_set.exit191.i, label %.loopexit.i, !llvm.loop !17

bb.ap:                                            ; preds = %._crit_edge225.i
  %i.kr = load ptr, ptr @stderr, align 8, !tbaa !31
  %i.ks = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kr, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 130) #17 ; 0 uses
  tail call void @abort() #19
  unreachable

extract_adjacency.exit:                           ; preds = %._crit_edge225.i, %bitarray_reset.exit180.i
  br i1 %i.e, label %.lr.ph189, label %._crit_edge190

.lr.ph189:                                        ; preds = %extract_adjacency.exit
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count226 = zext nneg i32 %i.b to i64
  br label %bb.as

bb.aq:                                            ; preds = %bb.aq, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.aq ] ; 3 uses
  %.0144185 = phi i32 [ 0, %.lr.ph.new ], [ %.1145.1, %bb.aq ]
  %.0146184 = phi i32 [ 0, %.lr.ph.new ], [ %.1147.1, %bb.aq ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.aq ]
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !59
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !36
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 163
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !66
  %i.la = icmp ugt i8 %i.kz, 1                    ; 2 uses
  %i.lb = add nsw i32 %.0146184, 1                ; 2 uses
  %i.lc = sub nsw i32 %i.b, %i.lb
  %.1147 = select i1 %i.la, i32 %.0146184, i32 %i.lb ; 2 uses
  %i.ld = select i1 %i.la, i32 0, i32 %i.lc
  %.1145 = add nsw i32 %i.ld, %.0144185
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !59
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !36
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 163
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !66
  %i.ll = icmp ugt i8 %i.lk, 1                    ; 2 uses
  %i.lm = add nsw i32 %.1147, 1                   ; 2 uses
  %i.ln = sub nsw i32 %i.b, %i.lm
  %.1147.1 = select i1 %i.ll, i32 %.1147, i32 %i.lm ; 2 uses
  %i.lo = select i1 %i.ll, i32 0, i32 %i.ln
  %.1145.1 = add nsw i32 %i.lo, %.1145            ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
end_hunk_0
