Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/xmerge?download=true
inline.NumInlined: 36
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@xdl_do_merge:bb.a
  %i.ls = add nsw i64 %i.kz, %i.kx
  %i.lt = getelementptr inbounds nuw i8, ptr %.3491, i64 48
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !35
  %i.lv = sub i64 %i.ls, %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %.3491, i64 56
  store i64 %i.lv, ptr %i.lw, align 8, !tbaa !36
  %i.lx = add nsw i64 %i.kz, %i.lb
  %i.ly = sub i64 %i.lx, %i.lh
  store i64 %i.ly, ptr %i.li, align 8, !tbaa !31
  %i.lz = add nsw i64 %i.lf, %i.ld
  %i.ma = getelementptr inbounds nuw i8, ptr %.3491, i64 24
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !32
  %i.mc = sub i64 %i.lz, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %.3491, i64 40
  store i64 %i.mc, ptr %i.md, align 8, !tbaa !33
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ay, %bb.aw
  %i.me = tail call ptr @xmalloc(i64 noundef 64) #10 ; 12 uses
  %.not49.i312 = icmp eq ptr %i.me, null
  br i1 %.not49.i312, label %xdl_append_merge.exit314, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store ptr null, ptr %i.me, align 8, !tbaa !37
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  store i32 2, ptr %i.mf, align 8, !tbaa !34
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 48
  store i64 %i.kx, ptr %i.mg, align 8, !tbaa !35
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 56
  store i64 %i.kz, ptr %i.mh, align 8, !tbaa !36
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  store i64 %i.lb, ptr %i.mi, align 8, !tbaa !30
  %i.mj = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  store i64 %i.kz, ptr %i.mj, align 8, !tbaa !31
  %i.mk = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  store i64 %i.ld, ptr %i.mk, align 8, !tbaa !32
  %i.ml = getelementptr inbounds nuw i8, ptr %i.me, i64 40
  store i64 %i.lf, ptr %i.ml, align 8, !tbaa !33
  br i1 %.not.i307, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store ptr %i.me, ptr %.3491, align 8, !tbaa !37
  br label %bb.bf

xdl_append_merge.exit314:                         ; preds = %bb.bc
  %.not7.i315 = icmp eq ptr %spec.select252, null
  br i1 %.not7.i315, label %xdl_cleanup_merge.exit, label %.lr.ph.i316

.lr.ph.i316:                                      ; preds = %xdl_append_merge.exit314, %.lr.ph.i316
  %.068.i318 = phi ptr [ %i.mm, %.lr.ph.i316 ], [ %spec.select252, %xdl_append_merge.exit314 ] ; 2 uses
  %i.mm = load ptr, ptr %.068.i318, align 8, !tbaa !37 ; 2 uses
  tail call void @free(ptr noundef nonnull %.068.i318) #10
  %.not.i320 = icmp eq ptr %i.mm, null
  br i1 %.not.i320, label %xdl_cleanup_merge.exit, label %.lr.ph.i316, !llvm.loop !49

bb.bf:                                            ; preds = %bb.bb, %bb.be, %bb.bd
  %.8.ph = phi ptr [ %i.me, %bb.bd ], [ %i.me, %bb.be ], [ %.3491, %bb.bb ] ; 2 uses
  %i.mn = load ptr, ptr %.2214492, align 8, !tbaa !73 ; 2 uses
  %.not225 = icmp eq ptr %i.mn, null
  br i1 %.not225, label %._crit_edge, label %bb.aw, !llvm.loop !53

._crit_edge:                                      ; preds = %bb.bf, %.preheader
  %.3.lcssa = phi ptr [ %.2374.lcssa, %.preheader ], [ %.8.ph, %bb.bf ]
  %.4.lcssa = phi ptr [ %.2.lcssa, %.preheader ], [ %spec.select252, %bb.bf ] ; 2 uses
  %.not226 = icmp eq ptr %.4.lcssa, null
  %spec.select253 = select i1 %.not226, ptr %.3.lcssa, ptr %.4.lcssa ; 14 uses
  br i1 %i.n, label %bb.bg, label %bb.bm

bb.bg:                                            ; preds = %._crit_edge
  %.val255 = load ptr, ptr %i.q, align 8, !tbaa !74 ; 2 uses
  %.val256 = load ptr, ptr %i.r, align 8, !tbaa !74 ; 2 uses
  %.not12.i = icmp eq ptr %spec.select253, null
  br i1 %.not12.i, label %xdl_refine_zdiff3_conflicts.exit, label %.lr.ph15.i

.lr.ph15.i:                                       ; preds = %bb.bg, %.critedge2.i
  %.013.i = phi ptr [ %i.oc, %.critedge2.i ], [ %spec.select253, %bb.bg ] ; 6 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.013.i, i64 8
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !34
  %.not31.i = icmp eq i32 %i.mp, 0
  br i1 %.not31.i, label %.preheader.i, label %.critedge2.i

.preheader.i:                                     ; preds = %.lr.ph15.i
  %i.mq = getelementptr inbounds nuw i8, ptr %.013.i, i64 40 ; 6 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.013.i, i64 16 ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.013.i, i64 32 ; 5 uses
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !31 ; 2 uses
  %.not323.i = icmp eq i64 %i.mt, 0
  br i1 %.not323.i, label %.critedge2.i, label %.lr.ph.i324

.lr.ph.i324:                                      ; preds = %.preheader.i
  %i.mu = getelementptr inbounds nuw i8, ptr %.013.i, i64 24 ; 4 uses
  %.pre.i = load i64, ptr %i.mq, align 8, !tbaa !33
  %.not33.i497 = icmp eq i64 %.pre.i, 0
  br i1 %.not33.i497, label %.lr.ph9.i, label %.lr.ph498.preheader

.lr.ph498.preheader:                              ; preds = %.lr.ph.i324
  %.pre544 = load i64, ptr %i.mr, align 8, !tbaa !30
  %.pre545 = load i64, ptr %i.mu, align 8, !tbaa !32
  br label %.lr.ph498

bb.bh:                                            ; preds = %bb.bi
  %.not33.i = icmp eq i64 %i.nf, 0
  br i1 %.not33.i, label %.critedge.i, label %.lr.ph498, !llvm.loop !54

.lr.ph498:                                        ; preds = %.lr.ph498.preheader, %bb.bh
  %i.mv = phi i64 [ %.pre545, %.lr.ph498.preheader ], [ %i.nj, %bb.bh ]
  %i.mw = phi i64 [ %.pre544, %.lr.ph498.preheader ], [ %i.nh, %bb.bh ]
  %i.mx = getelementptr inbounds [24 x i8], ptr %.val255, i64 %i.mw ; 2 uses
  %i.my = getelementptr inbounds [24 x i8], ptr %.val256, i64 %i.mv ; 2 uses
  %i.mz = load i64, ptr %4, align 8, !tbaa !20
  %.val41.i = load ptr, ptr %i.mx, align 8, !tbaa !45
  %i.na = getelementptr i8, ptr %i.mx, i64 8
  %.val42.i = load i64, ptr %i.na, align 8, !tbaa !46
  %.val43.i = load ptr, ptr %i.my, align 8, !tbaa !45
  %i.nb = getelementptr i8, ptr %i.my, i64 8
  %.val44.i = load i64, ptr %i.nb, align 8, !tbaa !46
  %i.nc = tail call i32 @xdl_recmatch(ptr noundef %.val41.i, i64 noundef %.val42.i, ptr noundef %.val43.i, i64 noundef %.val44.i, i64 noundef %i.mz) #10
  %.not34.i = icmp eq i32 %i.nc, 0
  %.pr.pre.pre.i = load i64, ptr %i.ms, align 8, !tbaa !31 ; 2 uses
  br i1 %.not34.i, label %.critedge.i, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph498
  %i.nd = add nsw i64 %.pr.pre.pre.i, -1          ; 3 uses
  store i64 %i.nd, ptr %i.ms, align 8, !tbaa !31
  %i.ne = load i64, ptr %i.mq, align 8, !tbaa !33
  %i.nf = add nsw i64 %i.ne, -1                   ; 2 uses
  store i64 %i.nf, ptr %i.mq, align 8, !tbaa !33
  %i.ng = load i64, ptr %i.mr, align 8, !tbaa !30
  %i.nh = add nsw i64 %i.ng, 1                    ; 2 uses
  store i64 %i.nh, ptr %i.mr, align 8, !tbaa !30
  %i.ni = load i64, ptr %i.mu, align 8, !tbaa !32
  %i.nj = add nsw i64 %i.ni, 1                    ; 2 uses
  store i64 %i.nj, ptr %i.mu, align 8, !tbaa !32
  %.not32.i = icmp eq i64 %i.nd, 0
  br i1 %.not32.i, label %.critedge2.i, label %bb.bh, !llvm.loop !54

.critedge.i:                                      ; preds = %bb.bh, %.lr.ph498
  %.pr.i = phi i64 [ %.pr.pre.pre.i, %.lr.ph498 ], [ %i.nd, %bb.bh ] ; 2 uses
  %.not358.i = icmp eq i64 %.pr.i, 0
  br i1 %.not358.i, label %.critedge2.i, label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %.lr.ph.i324, %.critedge.i
  %.pr.i593 = phi i64 [ %.pr.i, %.critedge.i ], [ %i.mt, %.lr.ph.i324 ]
  %.pre17.i = load i64, ptr %i.mq, align 8, !tbaa !33
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bl, %.lr.ph9.i
  %i.nk = phi i64 [ %.pre17.i, %.lr.ph9.i ], [ %i.ob, %bb.bl ] ; 2 uses
  %i.nl = phi i64 [ %.pr.i593, %.lr.ph9.i ], [ %i.nz, %bb.bl ]
  %.not36.i = icmp eq i64 %i.nk, 0
  br i1 %.not36.i, label %.critedge2.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.nm = load i64, ptr %i.mr, align 8, !tbaa !30
  %i.nn = getelementptr [24 x i8], ptr %.val255, i64 %i.nm
  %i.no = getelementptr [24 x i8], ptr %i.nn, i64 %i.nl ; 2 uses
  %i.np = getelementptr i8, ptr %i.no, i64 -24
  %i.nq = load i64, ptr %i.mu, align 8, !tbaa !32
  %i.nr = getelementptr [24 x i8], ptr %.val256, i64 %i.nq
  %i.ns = getelementptr [24 x i8], ptr %i.nr, i64 %i.nk ; 2 uses
  %i.nt = getelementptr i8, ptr %i.ns, i64 -24
  %i.nu = load i64, ptr %4, align 8, !tbaa !20
  %.val.i = load ptr, ptr %i.np, align 8, !tbaa !45
  %i.nv = getelementptr i8, ptr %i.no, i64 -16
  %.val38.i = load i64, ptr %i.nv, align 8, !tbaa !46
  %.val39.i = load ptr, ptr %i.nt, align 8, !tbaa !45
  %i.nw = getelementptr i8, ptr %i.ns, i64 -16
  %.val40.i = load i64, ptr %i.nw, align 8, !tbaa !46
  %i.nx = tail call i32 @xdl_recmatch(ptr noundef %.val.i, i64 noundef %.val38.i, ptr noundef %.val39.i, i64 noundef %.val40.i, i64 noundef %i.nu) #10
  %.not37.i = icmp eq i32 %i.nx, 0
  br i1 %.not37.i, label %.critedge2.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ny = load i64, ptr %i.ms, align 8, !tbaa !31
  %i.nz = add nsw i64 %i.ny, -1                   ; 3 uses
  store i64 %i.nz, ptr %i.ms, align 8, !tbaa !31
  %i.oa = load i64, ptr %i.mq, align 8, !tbaa !33
  %i.ob = add nsw i64 %i.oa, -1                   ; 2 uses
  store i64 %i.ob, ptr %i.mq, align 8, !tbaa !33
  %.not35.i = icmp eq i64 %i.nz, 0
  br i1 %.not35.i, label %.critedge2.i, label %bb.bj, !llvm.loop !55

.critedge2.i:                                     ; preds = %bb.bi, %bb.bl, %bb.bk, %bb.bj, %.critedge.i, %.preheader.i, %.lr.ph15.i
  %i.oc = load ptr, ptr %.013.i, align 8, !tbaa !37 ; 2 uses
  %.not.i323 = icmp eq ptr %i.oc, null
  br i1 %.not.i323, label %xdl_refine_zdiff3_conflicts.exit, label %.lr.ph15.i, !llvm.loop !56

bb.bm:                                            ; preds = %._crit_edge
  %i.od = icmp slt i32 %.0195, 2
  %.not71.i = icmp eq ptr %spec.select253, null
  %or.cond400 = select i1 %i.od, i1 true, i1 %.not71.i
  br i1 %or.cond400, label %xdl_refine_zdiff3_conflicts.exit, label %.lr.ph74.i

.lr.ph74.i:                                       ; preds = %bb.bm
  %i.oe = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.of = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.og = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bz, %.lr.ph74.i
  %.05272.i = phi ptr [ %spec.select253, %.lr.ph74.i ], [ %i.ra, %bb.bz ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.oh = getelementptr inbounds nuw i8, ptr %.05272.i, i64 16 ; 2 uses
  %i.oi = load <2 x i64>, ptr %i.oh, align 8, !tbaa !76 ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.05272.i, i64 8 ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !34
  %.not58.i = icmp eq i32 %i.ok, 0
  br i1 %.not58.i, label %bb.bo, label %bb.bz

bb.bo:                                            ; preds = %bb.bn
  %i.ol = getelementptr inbounds nuw i8, ptr %.05272.i, i64 32 ; 2 uses
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !31 ; 2 uses
  %i.on = icmp eq i64 %i.om, 0
  br i1 %i.on, label %bb.bz, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.oo = getelementptr inbounds nuw i8, ptr %.05272.i, i64 40 ; 2 uses
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !33 ; 2 uses
  %i.oq = icmp eq i64 %i.op, 0
  br i1 %i.oq, label %bb.bz, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.or = load ptr, ptr %i.q, align 8, !tbaa !74
  %9 = extractelement <2 x i64> %i.oi, i64 0
  %i.os = getelementptr inbounds [24 x i8], ptr %i.or, i64 %9 ; 2 uses
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !45 ; 2 uses
  store ptr %i.ot, ptr %6, align 8, !tbaa !26
  %i.ou = getelementptr [24 x i8], ptr %i.os, i64 %i.om ; 2 uses
  %i.ov = getelementptr i8, ptr %i.ou, i64 -24
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !45
  %i.ox = getelementptr i8, ptr %i.ou, i64 -16
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !46
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.oy
  %i.pa = ptrtoint ptr %i.oz to i64
  %i.pb = ptrtoint ptr %i.ot to i64
  %i.pc = sub i64 %i.pa, %i.pb
  store i64 %i.pc, ptr %i.oe, align 8, !tbaa !23
  %i.pd = load ptr, ptr %i.r, align 8, !tbaa !74
  %10 = extractelement <2 x i64> %i.oi, i64 1
  %i.pe = getelementptr inbounds [24 x i8], ptr %i.pd, i64 %10 ; 2 uses
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !45 ; 2 uses
  store ptr %i.pf, ptr %7, align 8, !tbaa !26
  %i.pg = getelementptr [24 x i8], ptr %i.pe, i64 %i.op ; 2 uses
  %i.ph = getelementptr i8, ptr %i.pg, i64 -24
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !45
  %i.pj = getelementptr i8, ptr %i.pg, i64 -16
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !46
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.pk
  %i.pm = ptrtoint ptr %i.pl to i64
  %i.pn = ptrtoint ptr %i.pf to i64
  %i.po = sub i64 %i.pm, %i.pn
  store i64 %i.po, ptr %i.of, align 8, !tbaa !23
  %i.pp = call i32 @xdl_do_diff(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %4, ptr noundef nonnull %8) #10
  %i.pq = icmp slt i32 %i.pp, 0
  br i1 %i.pq, label %xdl_refine_conflicts.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pr = load i64, ptr %4, align 8, !tbaa !20
  %i.ps = call i32 @xdl_change_compact(ptr noundef nonnull %8, ptr noundef nonnull %i.og, i64 noundef %i.pr) #10
  %i.pt = icmp slt i32 %i.ps, 0
  br i1 %i.pt, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.pu = load i64, ptr %4, align 8, !tbaa !20
  %i.pv = call i32 @xdl_change_compact(ptr noundef nonnull %i.og, ptr noundef nonnull %8, i64 noundef %i.pu) #10
  %i.pw = icmp slt i32 %i.pv, 0
  br i1 %i.pw, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.px = call i32 @xdl_build_script(ptr noundef nonnull %8, ptr noundef nonnull %i.a) #10
  %i.py = icmp slt i32 %i.px, 0
  br i1 %i.py, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  call void @xdl_free_env(ptr noundef nonnull %8) #10
  br label %xdl_refine_conflicts.exit

bb.bv:                                            ; preds = %bb.bt
  %i.pz = load ptr, ptr %i.a, align 8, !tbaa !14  ; 7 uses
  %.not59.i = icmp eq ptr %i.pz, null
  br i1 %.not59.i, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call void @xdl_free_env(ptr noundef nonnull %8) #10
  store i32 4, ptr %i.oj, align 8, !tbaa !34
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bv
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.qb = shl <2 x i64> %i.oi, splat (i64 32)
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pz, i64 24
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !70
  store i64 %i.qd, ptr %i.ol, align 8, !tbaa !31
  %i.qe = ashr exact <2 x i64> %i.qb, splat (i64 32) ; 2 uses
  %i.qf = load <2 x i64>, ptr %i.qa, align 8, !tbaa !76
  %i.qg = add nsw <2 x i64> %i.qf, %i.qe
  store <2 x i64> %i.qg, ptr %i.oh, align 8, !tbaa !76
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pz, i64 32
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !72
  store i64 %i.qi, ptr %i.oo, align 8, !tbaa !33
  %i.qj = load ptr, ptr %i.pz, align 8, !tbaa !73
  %.not6069.i = icmp eq ptr %i.qj, null
  br i1 %.not6069.i, label %._crit_edge.i, label %.lr.ph.i326

.lr.ph.i326:                                      ; preds = %bb.bx, %bb.by
  %.15370.i = phi ptr [ %i.qk, %bb.by ], [ %.05272.i, %bb.bx ] ; 2 uses
  %i.qk = call ptr @xmalloc(i64 noundef 64) #10   ; 9 uses
  %.not61.not.i = icmp eq ptr %i.qk, null
  br i1 %.not61.not.i, label %.thread.i, label %bb.by

.thread.i:                                        ; preds = %.lr.ph.i326
  call void @xdl_free_env(ptr noundef nonnull %8) #10
  call void @xdl_free_script(ptr noundef nonnull %i.pz) #10
  br label %xdl_refine_conflicts.exit

bb.by:                                            ; preds = %.lr.ph.i326
  %i.ql = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !73 ; 5 uses
  store ptr %i.qm, ptr %i.a, align 8, !tbaa !14
  %i.qn = load ptr, ptr %.15370.i, align 8, !tbaa !37
  store ptr %i.qn, ptr %i.qk, align 8, !tbaa !37
  store ptr %i.qk, ptr %.15370.i, align 8, !tbaa !37
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  store i32 0, ptr %i.qo, align 8, !tbaa !34
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !70
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qk, i64 32
  store i64 %i.qs, ptr %i.qt, align 8, !tbaa !31
  %i.qu = load <2 x i64>, ptr %i.qp, align 8, !tbaa !76
  %i.qv = add nsw <2 x i64> %i.qu, %i.qe
  store <2 x i64> %i.qv, ptr %i.qq, align 8, !tbaa !76
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qm, i64 32
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !72
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qk, i64 40
  store i64 %i.qx, ptr %i.qy, align 8, !tbaa !33
  %i.qz = load ptr, ptr %i.qm, align 8, !tbaa !73
  %.not60.i = icmp eq ptr %i.qz, null
  br i1 %.not60.i, label %._crit_edge.i, label %.lr.ph.i326, !llvm.loop !57

._crit_edge.i:                                    ; preds = %bb.by, %bb.bx
  %.153.lcssa.i = phi ptr [ %.05272.i, %bb.bx ], [ %i.qk, %bb.by ]
  call void @xdl_free_env(ptr noundef nonnull %8) #10
  call void @xdl_free_script(ptr noundef nonnull %i.pz) #10
  br label %bb.bz

bb.bz:                                            ; preds = %._crit_edge.i, %bb.bw, %bb.bp, %bb.bo, %bb.bn
  %.355.ph.i = phi ptr [ %.05272.i, %bb.bp ], [ %.153.lcssa.i, %._crit_edge.i ], [ %.05272.i, %bb.bo ], [ %.05272.i, %bb.bn ], [ %.05272.i, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.ra = load ptr, ptr %.355.ph.i, align 8, !tbaa !37 ; 2 uses
  %.not.i325 = icmp eq ptr %i.ra, null
  br i1 %.not.i325, label %.preheader.i328, label %bb.bn, !llvm.loop !58

xdl_refine_conflicts.exit:                        ; preds = %bb.bq, %bb.bu, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %.lr.ph.i335.preheader

.preheader.i328:                                  ; preds = %bb.bz
  %i.rb = load ptr, ptr %spec.select253, align 8, !tbaa !37 ; 3 uses
  %.not31.not43.i = icmp eq ptr %i.rb, null
  br i1 %.not31.not43.i, label %xdl_refine_zdiff3_conflicts.exit, label %.lr.ph.i329

.lr.ph.i329:                                      ; preds = %.preheader.i328
  %.not399 = icmp eq i32 %.0195, 2
  br i1 %.not399, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i329, %lines_contain_alnum.exit.us.i
  %i.rc = phi ptr [ %i.sh, %lines_contain_alnum.exit.us.i ], [ %i.rb, %.lr.ph.i329 ] ; 9 uses
  %.02145.us.i = phi i32 [ %.2.us.i, %lines_contain_alnum.exit.us.i ], [ 0, %.lr.ph.i329 ] ; 3 uses
  %.02544.us.i = phi ptr [ %.227.us.i, %lines_contain_alnum.exit.us.i ], [ %spec.select253, %.lr.ph.i329 ] ; 7 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.02544.us.i, i64 16
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !30 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.02544.us.i, i64 32 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !30 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.02544.us.i, i64 8
  %i.rj = load i32, ptr %i.ri, align 8, !tbaa !34
  %.not32.us.i = icmp eq i32 %i.rj, 0
  br i1 %.not32.us.i, label %bb.ca, label %lines_contain_alnum.exit.us.i

bb.ca:                                            ; preds = %.lr.ph.split.us.i
  %i.rk = trunc i64 %i.rh to i32
  %i.rl = load i64, ptr %i.rf, align 8, !tbaa !31
  %i.rm = add nsw i64 %i.rl, %i.re
  %i.rn = trunc i64 %i.rm to i32
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !34
  %.not33.us.i = icmp ne i32 %i.rp, 0
  %i.rq = sub nsw i32 %i.rk, %i.rn
  %i.rr = icmp sgt i32 %i.rq, 3
  %or.cond.i = select i1 %.not33.us.i, i1 true, i1 %i.rr
  br i1 %or.cond.i, label %lines_contain_alnum.exit.us.i, label %lines_contain_alnum.exit.thread.us.i

lines_contain_alnum.exit.thread.us.i:             ; preds = %bb.ca
  %i.rs = add nsw i32 %.02145.us.i, 1
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rc, i64 32
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !31
  %i.rv = sub i64 %i.rh, %i.re
  %i.rw = add i64 %i.rv, %i.ru
  store i64 %i.rw, ptr %i.rf, align 8, !tbaa !31
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rc, i64 24
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !32
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rc, i64 40
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !33
  %i.sb = add nsw i64 %i.sa, %i.ry
  %i.sc = getelementptr inbounds nuw i8, ptr %.02544.us.i, i64 24
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !32
  %i.se = sub i64 %i.sb, %i.sd
  %i.sf = getelementptr inbounds nuw i8, ptr %.02544.us.i, i64 40
  store i64 %i.se, ptr %i.sf, align 8, !tbaa !33
  %i.sg = load ptr, ptr %i.rc, align 8, !tbaa !37
  store ptr %i.sg, ptr %.02544.us.i, align 8, !tbaa !37
  call void @free(ptr noundef nonnull %i.rc) #10
  br label %lines_contain_alnum.exit.us.i

lines_contain_alnum.exit.us.i:                    ; preds = %lines_contain_alnum.exit.thread.us.i, %bb.ca, %.lr.ph.split.us.i
  %.227.us.i = phi ptr [ %i.rc, %bb.ca ], [ %.02544.us.i, %lines_contain_alnum.exit.thread.us.i ], [ %i.rc, %.lr.ph.split.us.i ] ; 2 uses
  %.2.us.i = phi i32 [ %.02145.us.i, %bb.ca ], [ %i.rs, %lines_contain_alnum.exit.thread.us.i ], [ %.02145.us.i, %.lr.ph.split.us.i ] ; 2 uses
  %i.sh = load ptr, ptr %.227.us.i, align 8, !tbaa !37 ; 2 uses
  %.not31.not.us.i = icmp eq ptr %i.sh, null
  br i1 %.not31.not.us.i, label %xdl_simplify_non_conflicts.exit, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i329, %lines_contain_alnum.exit.i
  %i.si = phi ptr [ %i.ub, %lines_contain_alnum.exit.i ], [ %i.rb, %.lr.ph.i329 ] ; 10 uses
  %.02145.i = phi i32 [ %.2.i332, %lines_contain_alnum.exit.i ], [ 0, %.lr.ph.i329 ] ; 4 uses
  %.02544.i = phi ptr [ %.227.i, %lines_contain_alnum.exit.i ], [ %spec.select253, %.lr.ph.i329 ] ; 7 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.02544.i, i64 16
  %i.sk = load i64, ptr %i.sj, align 8, !tbaa !30 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.02544.i, i64 32 ; 2 uses
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !31
  %i.sn = add nsw i64 %i.sm, %i.sk                ; 2 uses
  %i.so = trunc i64 %i.sn to i32
  %i.sp = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !30 ; 2 uses
  %i.sr = trunc i64 %i.sq to i32
  %i.ss = getelementptr inbounds nuw i8, ptr %.02544.i, i64 8
  %i.st = load i32, ptr %i.ss, align 8, !tbaa !34
  %.not32.i331 = icmp eq i32 %i.st, 0
  br i1 %.not32.i331, label %bb.cb, label %lines_contain_alnum.exit.i

bb.cb:                                            ; preds = %.lr.ph.split.i
  %i.su = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %i.sv = load i32, ptr %i.su, align 8, !tbaa !34
  %.not33.i333 = icmp eq i32 %i.sv, 0
  br i1 %.not33.i333, label %bb.cc, label %lines_contain_alnum.exit.i

bb.cc:                                            ; preds = %bb.cb
  %i.sw = sub nsw i32 %i.sr, %i.so                ; 2 uses
  %i.sx = icmp sgt i32 %i.sw, 3
  br i1 %i.sx, label %bb.cd, label %lines_contain_alnum.exit.thread.i

bb.cd:                                            ; preds = %bb.cc
  %i.sy = load ptr, ptr %i.q, align 8, !tbaa !74
  %sext.i = shl i64 %i.sn, 32
  %i.sz = ashr exact i64 %sext.i, 32
  br label %bb.ce

bb.ce:                                            ; preds = %._crit_edge682, %bb.cd
  %indvars.iv.i.i = phi i64 [ %i.sz, %bb.cd ], [ %indvars.iv.next.i.i, %._crit_edge682 ] ; 2 uses
  %.014.i.i = phi i32 [ %i.sw, %bb.cd ], [ %i.tl, %._crit_edge682 ]
  %i.ta = getelementptr inbounds [24 x i8], ptr %i.sy, i64 %indvars.iv.i.i ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i677 = icmp eq i64 %i.tc, 0
  br i1 %.not.i.i.i677, label %._crit_edge682, label %.lr.ph681

.lr.ph681:                                        ; preds = %bb.ce
  %i.td = load ptr, ptr %i.ta, align 8, !tbaa !45
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cg
  %i.te = add nsw i64 %.0.i.i.i679, -1            ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.02.i.i.i678, i64 1
  %.not.i.i.i = icmp eq i64 %i.te, 0
  br i1 %.not.i.i.i, label %._crit_edge682, label %bb.cg, !llvm.loop !59

bb.cg:                                            ; preds = %.lr.ph681, %bb.cf
  %.0.i.i.i679 = phi i64 [ %i.tc, %.lr.ph681 ], [ %i.te, %bb.cf ]
  %.02.i.i.i678 = phi ptr [ %i.td, %.lr.ph681 ], [ %i.tf, %bb.cf ] ; 2 uses
  %i.tg = load i8, ptr %.02.i.i.i678, align 1, !tbaa !48
  %i.th = zext i8 %i.tg to i64
  %i.ti = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.th
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !48
  %i.tk = and i8 %i.tj, 6
  %.not4.i.i.i = icmp eq i8 %i.tk, 0
  br i1 %.not4.i.i.i, label %bb.cf, label %lines_contain_alnum.exit.i, !llvm.loop !59

._crit_edge682:                                   ; preds = %bb.cf, %bb.ce
  %i.tl = add nsw i32 %.014.i.i, -1               ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1
end_hunk_0
