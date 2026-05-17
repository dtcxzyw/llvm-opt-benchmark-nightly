inline.NumInlined: 158
inline.NumDeleted: 40
begin_hunk_0_@opj_dwt_decode:bb.a
  %i.dv = icmp eq i32 %.3147189.i, %i.dl
  %spec.select177.i = select i1 %i.dv, i32 %i.bz, i32 %i.dt
  store i32 %spec.select177.i, ptr %i.du, align 4, !tbaa !120
  %i.dw = tail call ptr @opj_aligned_32_malloc(i64 noundef %i.bi) #15 ; 2 uses
  store ptr %i.dw, ptr %i.dm, align 8, !tbaa !121
  %.not172.i = icmp eq ptr %i.dw, null
  br i1 %.not172.i, label %bb.p, label %.critedge179.i

bb.p:                                             ; preds = %bb.o
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15
  tail call void @opj_free(ptr noundef nonnull %i.dm) #15
  br label %.thread.sink.split.i

.critedge179.i:                                   ; preds = %bb.o
  %i.dx = tail call i32 @opj_thread_pool_submit_job(ptr noundef %i.d, ptr noundef nonnull @opj_dwt_decode_v_func, ptr noundef nonnull %i.dm) #15 ; 0 uses
  %exitcond208.not.i = icmp eq i32 %i.ds, %spec.select176.i
  br i1 %exitcond208.not.i, label %bb.q, label %bb.m, !llvm.loop !124

bb.q:                                             ; preds = %.critedge179.i
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15
  br label %.critedge181.i

.critedge181.i:                                   ; preds = %bb.q, %bb.k, %._crit_edge.i
  %i.dy = add i32 %i.bt, -1                       ; 2 uses
  %.not166.i = icmp eq i32 %i.dy, 0
  br i1 %.not166.i, label %.thread.sink.split.i, label %bb.d

.thread.sink.split.i:                             ; preds = %.critedge181.i, %bb.p, %bb.n, %bb.i, %bb.g
  %.10.ph.i = phi i32 [ 0, %bb.p ], [ 0, %bb.n ], [ 0, %bb.g ], [ 0, %bb.i ], [ 1, %.critedge181.i ]
  tail call void @opj_aligned_free(ptr noundef nonnull %i.bj) #15
  br label %opj_dwt_decode_tile.exit

opj_dwt_decode_tile.exit:                         ; preds = %bb.b, %opj_dwt_max_resolution.exit.i, %.thread.sink.split.i
  %.10.i = phi i32 [ 0, %opj_dwt_max_resolution.exit.i ], [ 1, %bb.b ], [ %.10.ph.i, %.thread.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %opj_dwt_decode_partial_tile.exit

bb.r:                                             ; preds = %bb.a
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !23 ; 8 uses
  %i.eb = add i32 %2, -1                          ; 4 uses
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [192 x i8], ptr %i.ea, i64 %i.ec ; 14 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !24
  %i.eg = load i32, ptr %i.ea, align 8, !tbaa !29
  %i.eh = sub nsw i32 %i.ef, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !30
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !31
  %i.em = sub nsw i32 %i.ej, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !125 ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !126 ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.es = load i32, ptr %i.er, align 8, !tbaa !127 ; 6 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !128 ; 6 uses
  %i.ev = load i32, ptr %i.ed, align 8, !tbaa !29
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !24
  %i.ey = icmp eq i32 %i.ev, %i.ex
  br i1 %i.ey, label %opj_dwt_decode_partial_tile.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ed, i64 4 ; 3 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !31
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !30
  %i.fd = icmp eq i32 %i.fa, %i.fc
  br i1 %i.fd, label %opj_dwt_decode_partial_tile.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fe = tail call fastcc ptr @opj_dwt_init_sparse_array(ptr noundef nonnull readonly %1, i32 noundef %2) ; 14 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %opj_dwt_decode_partial_tile.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fg = icmp eq i32 %2, 1
  br i1 %i.fg, label %bb.v, label %.lr.ph.i.i6.preheader

.lr.ph.i.i6.preheader:                            ; preds = %bb.u
  %xtraiter104 = and i32 %i.eb, 1
  %i.fh = icmp eq i32 %2, 2
  br i1 %i.fh, label %.lr.ph.i.i6.epil.preheader, label %.lr.ph.i.i6.preheader.new

.lr.ph.i.i6.preheader.new:                        ; preds = %.lr.ph.i.i6.preheader
  %unroll_iter108 = and i32 %i.eb, -2
  br label %.lr.ph.i.i6

bb.v:                                             ; preds = %bb.u
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ed, i64 176
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !129 ; 2 uses
  %i.fk = load i32, ptr %i.ed, align 8, !tbaa !29 ; 2 uses
  %i.fl = sub i32 %i.fj, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ed, i64 180
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !130
  %i.fo = load i32, ptr %i.ez, align 4, !tbaa !31 ; 2 uses
  %i.fp = sub i32 %i.fn, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ed, i64 184
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !131 ; 2 uses
  %i.fs = sub i32 %i.fr, %i.fk
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ed, i64 188
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !132
  %i.fv = sub i32 %i.fu, %i.fo
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !133
  %i.fy = sub i32 %i.fr, %i.fj
  %i.fz = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.fl, i32 noundef %i.fp, i32 noundef %i.fs, i32 noundef %i.fv, ptr noundef %i.fx, i32 noundef 1, i32 noundef %i.fy, i32 noundef 1) #15 ; 0 uses
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.fe) #15
  br label %opj_dwt_decode_partial_tile.exit

.lr.ph.i.i6:                                      ; preds = %.lr.ph.i.i6, %.lr.ph.i.i6.preheader.new
  %.017.i.i7 = phi i32 [ 0, %.lr.ph.i.i6.preheader.new ], [ %.2.i.i10.1, %.lr.ph.i.i6 ]
  %.01116.i.i8 = phi ptr [ %i.ea, %.lr.ph.i.i6.preheader.new ], [ %i.gk, %.lr.ph.i.i6 ] ; 8 uses
  %niter109 = phi i32 [ 0, %.lr.ph.i.i6.preheader.new ], [ %niter109.next.1, %.lr.ph.i.i6 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 192
  %i.gb = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 200
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !24, !alias.scope !134
  %i.gd = load i32, ptr %i.ga, align 8, !tbaa !29, !alias.scope !134
  %i.ge = sub nsw i32 %i.gc, %i.gd
  %spec.select.i.i9 = tail call i32 @llvm.umax.i32(i32 %.017.i.i7, i32 %i.ge)
  %i.gf = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 204
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !30, !alias.scope !134
  %i.gh = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 196
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !31, !alias.scope !134
  %i.gj = sub nsw i32 %i.gg, %i.gi
  %.2.i.i10 = tail call i32 @llvm.umax.i32(i32 %spec.select.i.i9, i32 %i.gj)
  %i.gk = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 384 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 392
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !24, !alias.scope !134
  %i.gn = load i32, ptr %i.gk, align 8, !tbaa !29, !alias.scope !134
  %i.go = sub nsw i32 %i.gm, %i.gn
  %spec.select.i.i9.1 = tail call i32 @llvm.umax.i32(i32 %.2.i.i10, i32 %i.go)
  %i.gp = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 396
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !30, !alias.scope !134
  %i.gr = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 388
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !31, !alias.scope !134
  %i.gt = sub nsw i32 %i.gq, %i.gs
  %.2.i.i10.1 = tail call i32 @llvm.umax.i32(i32 %spec.select.i.i9.1, i32 %i.gt) ; 3 uses
  %niter109.next.1 = add i32 %niter109, 2         ; 2 uses
  %niter109.ncmp.1 = icmp eq i32 %niter109.next.1, %unroll_iter108
  br i1 %niter109.ncmp.1, label %opj_dwt_max_resolution.exit.i12.unr-lcssa, label %.lr.ph.i.i6, !llvm.loop !32

opj_dwt_max_resolution.exit.i12.unr-lcssa:        ; preds = %.lr.ph.i.i6
  %lcmp.mod105.not = icmp eq i32 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %opj_dwt_max_resolution.exit.i12, label %.lr.ph.i.i6.epil.preheader

.lr.ph.i.i6.epil.preheader:                       ; preds = %opj_dwt_max_resolution.exit.i12.unr-lcssa, %.lr.ph.i.i6.preheader
  %.017.i.i7.epil.init = phi i32 [ 0, %.lr.ph.i.i6.preheader ], [ %.2.i.i10.1, %opj_dwt_max_resolution.exit.i12.unr-lcssa ]
  %.01116.i.i8.epil.init = phi ptr [ %i.ea, %.lr.ph.i.i6.preheader ], [ %i.gk, %opj_dwt_max_resolution.exit.i12.unr-lcssa ] ; 4 uses
  %lcmp.mod107 = trunc i32 %i.eb to i1
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %i.gu = getelementptr inbounds nuw i8, ptr %.01116.i.i8.epil.init, i64 192
  %i.gv = getelementptr inbounds nuw i8, ptr %.01116.i.i8.epil.init, i64 200
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !24, !alias.scope !134
  %i.gx = load i32, ptr %i.gu, align 8, !tbaa !29, !alias.scope !134
  %i.gy = sub nsw i32 %i.gw, %i.gx
  %spec.select.i.i9.epil = tail call i32 @llvm.umax.i32(i32 %.017.i.i7.epil.init, i32 %i.gy)
  %i.gz = getelementptr inbounds nuw i8, ptr %.01116.i.i8.epil.init, i64 204
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !30, !alias.scope !134
  %i.hb = getelementptr inbounds nuw i8, ptr %.01116.i.i8.epil.init, i64 196
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !31, !alias.scope !134
  %i.hd = sub nsw i32 %i.ha, %i.hc
  %.2.i.i10.epil = tail call i32 @llvm.umax.i32(i32 %spec.select.i.i9.epil, i32 %i.hd)
  br label %opj_dwt_max_resolution.exit.i12

opj_dwt_max_resolution.exit.i12:                  ; preds = %opj_dwt_max_resolution.exit.i12.unr-lcssa, %.lr.ph.i.i6.epil.preheader
  %.2.i.i10.lcssa = phi i32 [ %.2.i.i10.1, %opj_dwt_max_resolution.exit.i12.unr-lcssa ], [ %.2.i.i10.epil, %.lr.ph.i.i6.epil.preheader ]
  %i.he = zext i32 %.2.i.i10.lcssa to i64
  %i.hf = shl nuw nsw i64 %i.he, 4
  %i.hg = tail call ptr @opj_aligned_32_malloc(i64 noundef %i.hf) #15 ; 129 uses
  %.not.i13 = icmp eq ptr %i.hg, null
  br i1 %.not.i13, label %bb.w, label %.preheader294.i

.preheader294.i:                                  ; preds = %opj_dwt_max_resolution.exit.i12
  %.not305.i = icmp eq i32 %2, 0
  br i1 %.not305.i, label %._crit_edge.i18, label %.lr.ph300.i

.lr.ph300.i:                                      ; preds = %.preheader294.i
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.not62.i.not.i = icmp eq i32 %i.eo, 0
  %i.hi = zext i32 %i.eo to i64
  %.not64.i.not.i = icmp eq i32 %i.eq, 0
  %i.hj = zext i32 %i.eq to i64
  %.not66.i.not.i = icmp eq i32 %i.es, 0
  %i.hk = zext i32 %i.es to i64
  %.not68.i.not.i = icmp eq i32 %i.eu, 0
  %i.hl = zext i32 %i.eu to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 4 ; 9 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 12 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hg, i64 17179869168 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hg, i64 17179869172 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hg, i64 17179869180 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hg, i64 16 ; 9 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hg, i64 20 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hg, i64 24 ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hg, i64 28 ; 5 uses
  br label %bb.x

bb.w:                                             ; preds = %opj_dwt_max_resolution.exit.i12
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.fe) #15
  br label %opj_dwt_decode_partial_tile.exit

bb.x:                                             ; preds = %bb.bs, %.lr.ph300.i
  %.0172299.i = phi i32 [ 1, %.lr.ph300.i ], [ %i.apn, %bb.bs ] ; 3 uses
  %.0173298.i = phi ptr [ %i.ea, %.lr.ph300.i ], [ %i.hw, %bb.bs ] ; 8 uses
  %.0174297.i = phi i32 [ %i.eh, %.lr.ph300.i ], [ %i.ia, %bb.bs ] ; 11 uses
  %.0175296.i = phi i32 [ %i.em, %.lr.ph300.i ], [ %i.if, %bb.bs ] ; 13 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.0173298.i, i64 192 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.0173298.i, i64 200
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !24
  %i.hz = load i32, ptr %i.hw, align 8, !tbaa !29 ; 2 uses
  %i.ia = sub nsw i32 %i.hy, %i.hz                ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0173298.i, i64 204
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !30
  %i.id = getelementptr inbounds nuw i8, ptr %.0173298.i, i64 196
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !31 ; 2 uses
  %i.if = sub i32 %i.ic, %i.ie                    ; 5 uses
  %i.ig = sub i32 %i.ia, %.0174297.i              ; 10 uses
  %i.ih = srem i32 %i.hz, 2                       ; 2 uses
  %i.ii = sub i32 %i.if, %.0175296.i              ; 11 uses
  %i.ij = srem i32 %i.ie, 2                       ; 2 uses
  %i.ik = load i32, ptr %i.hh, align 4, !tbaa !22 ; 2 uses
  %i.il = icmp eq i32 %i.ik, %.0172299.i
  br i1 %i.il, label %opj_dwt_get_band_coordinates.exit206.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.im = sub i32 %i.ik, %.0172299.i              ; 2 uses
  %i.in = zext i32 %i.im to i64                   ; 9 uses
  %notmask.i.i = shl nsw i64 -1, %i.in
  %i.io = xor i64 %notmask.i.i, -1                ; 8 uses
  %i.ip = add nuw i64 %i.io, %i.hi
  %i.iq = lshr i64 %i.ip, %i.in
  %i.ir = trunc i64 %i.iq to i32
  %.ph.i = select i1 %.not62.i.not.i, i32 0, i32 %i.ir ; 2 uses
  %i.is = add nuw i64 %i.io, %i.hj
  %i.it = lshr i64 %i.is, %i.in
  %i.iu = trunc i64 %i.it to i32
  %.ph275.i = select i1 %.not64.i.not.i, i32 0, i32 %i.iu ; 2 uses
  %i.iv = add nuw i64 %i.io, %i.hk
  %i.iw = lshr i64 %i.iv, %i.in
  %i.ix = trunc i64 %i.iw to i32
  %.ph278.i = select i1 %.not66.i.not.i, i32 0, i32 %i.ix ; 2 uses
  %i.iy = add nuw i64 %i.io, %i.hl
  %i.iz = lshr i64 %i.iy, %i.in
  %i.ja = trunc i64 %i.iz to i32
  %.ph280.i = select i1 %.not68.i.not.i, i32 0, i32 %i.ja ; 2 uses
  %i.jb = add i32 %i.im, -1
  %i.jc = shl nuw i32 1, %i.jb                    ; 8 uses
  %.not62.i197.i = icmp ugt i32 %i.eo, %i.jc
  %i.jd = sub nuw i32 %i.eo, %i.jc
  %i.je = zext i32 %i.jd to i64
  %i.jf = add nuw i64 %i.je, %i.io
  %i.jg = lshr i64 %i.jf, %i.in
  %i.jh = trunc i64 %i.jg to i32
  %.ph282.i = select i1 %.not62.i197.i, i32 %i.jh, i32 0 ; 2 uses
  %.not66.i198.i = icmp ugt i32 %i.es, %i.jc
  %i.ji = sub nuw i32 %i.es, %i.jc
  %i.jj = zext i32 %i.ji to i64
  %i.jk = add nuw i64 %i.jj, %i.io
  %i.jl = lshr i64 %i.jk, %i.in
  %i.jm = trunc i64 %i.jl to i32
  %.ph284.i = select i1 %.not66.i198.i, i32 %i.jm, i32 0 ; 2 uses
  %.not64.i202.i = icmp ugt i32 %i.eq, %i.jc
  %i.jn = sub nuw i32 %i.eq, %i.jc
  %i.jo = zext i32 %i.jn to i64
  %i.jp = add nuw i64 %i.jo, %i.io
  %i.jq = lshr i64 %i.jp, %i.in
  %i.jr = trunc i64 %i.jq to i32
  %.ph286.i = select i1 %.not64.i202.i, i32 %i.jr, i32 0 ; 2 uses
  %.not68.i203.i = icmp ugt i32 %i.eu, %i.jc
  br i1 %.not68.i203.i, label %bb.z, label %opj_dwt_get_band_coordinates.exit206.i

bb.z:                                             ; preds = %bb.y
  %i.js = sub nuw i32 %i.eu, %i.jc
  %i.jt = zext i32 %i.js to i64
  %i.ju = add nuw i64 %i.jt, %i.io
  %i.jv = lshr i64 %i.ju, %i.in
  %i.jw = trunc i64 %i.jv to i32
  br label %opj_dwt_get_band_coordinates.exit206.i

opj_dwt_get_band_coordinates.exit206.i:           ; preds = %bb.z, %bb.y, %bb.x
  %i.jx = phi i32 [ %.ph286.i, %bb.y ], [ %.ph286.i, %bb.z ], [ %i.eq, %bb.x ]
  %i.jy = phi i32 [ %.ph282.i, %bb.y ], [ %.ph282.i, %bb.z ], [ %i.eo, %bb.x ]
  %i.jz = phi i32 [ %.ph278.i, %bb.y ], [ %.ph278.i, %bb.z ], [ %i.es, %bb.x ]
  %i.ka = phi i32 [ %.ph.i, %bb.y ], [ %.ph.i, %bb.z ], [ %i.eo, %bb.x ]
  %i.kb = phi i32 [ %.ph275.i, %bb.y ], [ %.ph275.i, %bb.z ], [ %i.eq, %bb.x ]
  %i.kc = phi i32 [ %.ph280.i, %bb.y ], [ %.ph280.i, %bb.z ], [ %i.eu, %bb.x ]
  %i.kd = phi i32 [ %.ph284.i, %bb.y ], [ %.ph284.i, %bb.z ], [ %i.es, %bb.x ]
  %i.ke = phi i32 [ 0, %bb.y ], [ %i.jw, %bb.z ], [ %i.eu, %bb.x ]
  %i.kf = getelementptr inbounds nuw i8, ptr %.0173298.i, i64 224
  %i.kg = getelementptr inbounds nuw i8, ptr %.0173298.i, i64 272
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !137 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.0173298.i, i64 228
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !141 ; 2 uses
  %i.kk = load i32, ptr %i.kf, align 8, !tbaa !137 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.0173298.i, i64 276
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !141 ; 2 uses
  %i.kn = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.ka, i32 %i.kh)
  %i.ko = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kb, i32 %i.kj)
  %i.kp = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.jz, i32 %i.kh)
  %i.kq = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kc, i32 %i.kj)
  %i.kr = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.jy, i32 %i.kk)
  %i.ks = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kd, i32 %i.kk)
  %i.kt = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.jx, i32 %i.km)
  %i.ku = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.ke, i32 %i.km)
  %i.kv = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kn, i32 2) ; 12 uses
  %i.kw = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.kp, i32 range(i32 2, 5) 2)
  %i.kx = tail call noundef i32 @llvm.umin.i32(i32 %i.kw, i32 %.0174297.i) ; 8 uses
  %i.ky = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kr, i32 2) ; 8 uses
  %i.kz = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.ks, i32 range(i32 2, 5) 2)
  %i.la = tail call noundef i32 @llvm.umin.i32(i32 %i.kz, i32 %i.ig) ; 8 uses
  %i.lb = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.ko, i32 2) ; 13 uses
  %i.lc = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.kq, i32 range(i32 2, 5) 2)
  %i.ld = tail call noundef i32 @llvm.umin.i32(i32 %i.lc, i32 %.0175296.i) ; 9 uses
  %i.le = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kt, i32 2) ; 9 uses
  %i.lf = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.ku, i32 range(i32 2, 5) 2)
  %i.lg = tail call noundef i32 @llvm.umin.i32(i32 %i.lf, i32 %i.ii) ; 8 uses
  %i.lh = icmp eq i32 %i.ih, 0                    ; 5 uses
  %.382.i = select i1 %i.lh, i32 %i.kv, i32 %i.ky
  %.383.i = select i1 %i.lh, i32 %i.ky, i32 %i.kv
  %.384.i = select i1 %i.lh, i32 %i.kx, i32 %i.la
  %.385.i = select i1 %i.lh, i32 %i.la, i32 %i.kx
  %i.li = shl i32 %.382.i, 1
  %i.lj = shl i32 %.383.i, 1
  %i.lk = or disjoint i32 %i.lj, 1
  %i.ll = tail call noundef i32 @llvm.umin.i32(i32 %i.li, i32 %i.lk) ; 3 uses
  %i.lm = shl i32 %.384.i, 1
  %i.ln = shl i32 %.385.i, 1
  %i.lo = or disjoint i32 %i.ln, 1
  %i.lp = tail call noundef i32 @llvm.umax.i32(i32 %i.lm, i32 %i.lo) ; 2 uses
  %i.lq = tail call noundef i32 @llvm.umin.i32(i32 %i.lp, i32 %i.ia) ; 5 uses
  %i.lr = icmp eq i32 %i.ij, 0                    ; 2 uses
  br i1 %i.lr, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %opj_dwt_get_band_coordinates.exit206.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %opj_dwt_get_band_coordinates.exit206.i
  %.sink381.i = phi i32 [ %i.le, %bb.aa ], [ %i.lb, %opj_dwt_get_band_coordinates.exit206.i ]
  %.sink380.i = phi i32 [ %i.lb, %bb.aa ], [ %i.le, %opj_dwt_get_band_coordinates.exit206.i ]
  %.sink376.i = phi i32 [ %i.lg, %bb.aa ], [ %i.ld, %opj_dwt_get_band_coordinates.exit206.i ]
  %.sink375.i = phi i32 [ %i.ld, %bb.aa ], [ %i.lg, %opj_dwt_get_band_coordinates.exit206.i ]
  %i.ls = shl i32 %.sink381.i, 1
  %i.lt = shl i32 %.sink380.i, 1
  %i.lu = or disjoint i32 %i.lt, 1
  %i.lv = tail call noundef i32 @llvm.umin.i32(i32 %i.ls, i32 %i.lu) ; 2 uses
  %i.lw = shl i32 %.sink376.i, 1
  %i.lx = shl i32 %.sink375.i, 1
  %i.ly = or disjoint i32 %i.lx, 1
  %i.lz = tail call noundef i32 @llvm.umax.i32(i32 %i.lw, i32 %i.ly)
  %i.ma = tail call noundef i32 @llvm.umin.i32(i32 %i.lz, i32 %i.if)
  %.not306.i = icmp eq i32 %i.if, 0
  %.pre315.i = add i32 %i.le, %.0175296.i         ; 2 uses
  %.pre316.i = add i32 %i.lg, %.0175296.i         ; 2 uses
  br i1 %.not306.i, label %.preheader.i17, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.ab
  %i.mb = icmp ult i32 %i.lp, %i.ia
  %i.mc = add i32 %i.lq, -1
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.md
  %i.mf = zext i32 %i.lq to i64
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.mf
  %i.mh = sext i32 %i.ih to i64                   ; 2 uses
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.mh
  %i.mj = shl i32 %i.kv, 1                        ; 3 uses
  %i.mk = zext i32 %i.mj to i64                   ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.mk
  %i.mm = add i32 %i.ky, %.0174297.i
  %i.mn = add i32 %i.la, %.0174297.i
  %i.mo = sub nsw i64 0, %i.mh
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.mo
  %i.mq = shl i32 %i.ky, 1
  %i.mr = zext i32 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.mr
  %i.mt = icmp eq i32 %.0174297.i, 0
  %i.mu = icmp eq i32 %i.ig, 1
  %or.cond3.i.i = and i1 %i.mt, %i.mu
  %i.mv = icmp slt i32 %i.kv, %i.kx               ; 2 uses
  %i.mw = shl i32 %i.ig, 1                        ; 2 uses
  %i.mx = add i32 %i.mw, -2
  %i.my = sext i32 %i.mx to i64                   ; 2 uses
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.my
  %i.na = icmp slt i32 %i.ky, %i.la               ; 2 uses
  %i.nb = shl i32 %.0174297.i, 1                  ; 2 uses
  %i.nc = add i32 %i.nb, -1
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.nd ; 2 uses
  %i.nf = sext i32 %i.ky to i64                   ; 6 uses
  %i.ng = sext i32 %.0174297.i to i64             ; 2 uses
  %wide.trip.count.i.i = sext i32 %i.la to i64
  %i.nh = icmp sgt i32 %i.ig, 0
  %i.ni = icmp sgt i32 %.0174297.i, 1
  %or.cond.i.i = or i1 %i.ni, %i.nh
  %i.nj = icmp slt i32 %i.kv, 1
  %.not171.not.i.i = icmp sgt i32 %i.kv, %i.ig
  %i.nk = add i32 %i.mj, -1
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = add i32 %i.mw, -1
  %i.nn = sext i32 %i.nm to i64                   ; 3 uses
  %.pn.i.i = select i1 %.not171.not.i.i, i64 %i.nn, i64 %i.nl
  %.in.ph.i.i = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %.pn.i.i
  %i.no = icmp slt i32 %i.kv, 0
  %.not172.i.i = icmp slt i32 %i.kv, %i.ig
  %i.np = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.nn ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.mk
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  %i.ns = sext i32 %i.mj to i64
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.ns ; 2 uses
  %spec.select.i209.i = tail call i32 @llvm.smin.i32(i32 %i.kx, i32 %i.ig) ; 3 uses
  %.0150216.i.i = add nuw nsw i32 %i.kv, 1        ; 3 uses
  %i.nu = icmp slt i32 %.0150216.i.i, %spec.select.i209.i
  %i.nv = sext i32 %.0150216.i.i to i64
  %i.nw = sext i32 %i.ig to i64                   ; 2 uses
  %wide.trip.count240.i.i = sext i32 %i.kx to i64
  %i.nx = add i32 %.0174297.i, -1                 ; 2 uses
  %i.ny = icmp sgt i32 %i.nx, %i.ky
  %spec.select191.i.i = tail call i32 @llvm.smin.i32(i32 %i.la, i32 %i.nx)
  %i.nz = sext i32 %spec.select191.i.i to i64     ; 2 uses
  %i.oa = add i32 %i.nb, -2
  %i.ob = sext i32 %i.oa to i64                   ; 2 uses
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.ob
  %i.od = zext i32 %i.ll to i64
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.od
  %..i = select i1 %.not172.i.i, ptr %i.nr, ptr %i.np
  %i.of = add nsw i64 %i.nf, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.nz, i64 %i.of)
  %i.og = sub i64 %smax, %i.nf                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.og, 5
  %n.mod.vf = and i64 %i.og, 3                    ; 2 uses
  %i.oh = icmp eq i64 %n.mod.vf, 0
  %i.oi = select i1 %i.oh, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %i.og, %i.oi                   ; 2 uses
  %i.oj = add i64 %n.vec, %i.nf
  br label %bb.ac

.preheader.i17:                                   ; preds = %bb.bh, %bb.ab
  %i.ok = shl nsw i32 %i.ij, 2                    ; 2 uses
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.ol
  %i.on = shl i32 %i.lb, 3                        ; 3 uses
  %i.oo = zext i32 %i.on to i64                   ; 2 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %i.oo
  %i.oq = sub nsw i32 4, %i.ok
  %i.or = zext nneg i32 %i.oq to i64
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.or
  %i.ot = shl i32 %i.le, 3                        ; 2 uses
  %i.ou = zext i32 %i.ot to i64
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %i.ou
  %i.ow = icmp eq i32 %.0175296.i, 0
  %i.ox = icmp eq i32 %i.ii, 1
  %or.cond3.i211.i = and i1 %i.ow, %i.ox
  %i.oy = icmp slt i32 %i.lb, %i.ld               ; 2 uses
  %i.oz = shl i32 %i.ii, 3                        ; 2 uses
  %i.pa = add i32 %i.oz, -8                       ; 4 uses
  %.not320.us.i.i = icmp sgt i32 %i.ii, 0         ; 2 uses
  %i.pb = zext i32 %i.pa to i64                   ; 3 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.pb
  %i.pd = or disjoint i64 %i.pb, 1                ; 2 uses
  %i.pe = trunc nuw i64 %i.pd to i32
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.pd
  %i.pg = or disjoint i64 %i.pb, 3                ; 2 uses
  %i.ph = trunc nuw i64 %i.pg to i32
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.pg
  %i.pj = select i1 %.not320.us.i.i, i32 0, i32 %i.pa
  %i.pk = zext i32 %i.pj to i64
  %.in321.us.us.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.pk
  %i.pl = icmp slt i32 %i.le, %i.lg               ; 2 uses
  %i.pm = shl i32 %.0175296.i, 3                  ; 4 uses
  %i.pn = add i32 %i.pm, -4                       ; 6 uses
  %i.po = zext i32 %i.pn to i64
  %i.pp = or disjoint i32 %i.pn, 1                ; 2 uses
  %i.pq = or disjoint i32 %i.pn, 2                ; 2 uses
  %i.pr = or disjoint i32 %i.pn, 3                ; 2 uses
  %.in315.us370.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.po ; 3 uses
  %i.ps = add i32 %i.pm, -2
  %.in315.v.us369.2.i.i = zext i32 %i.ps to i64
  %.in315.us370.2.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us369.2.i.i
  %i.pt = getelementptr inbounds nuw i8, ptr %.in315.us370.i.i, i64 8
  %i.pu = add i32 %i.pm, -1
  %.in315.v.us369.3.i.i = zext i32 %i.pu to i64
  %.in315.us370.3.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us369.3.i.i
  %i.pv = getelementptr inbounds nuw i8, ptr %.in315.us370.i.i, i64 12
  %i.pw = icmp sgt i32 %.0175296.i, 1
  %or.cond.i213.i = or i1 %i.pw, %.not320.us.i.i
  %i.px = icmp slt i32 %i.lb, 1
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.lb, i32 %i.ii)
  %.pn341.in.i.i = shl i32 %..i.i, 3
  %.pn341.i.i = add i32 %.pn341.in.i.i, -4
  %i.py = icmp slt i32 %i.lb, 0
  %.not312.i.i = icmp slt i32 %i.lb, %i.ii
  %i.pz = add i32 %i.oz, -4                       ; 2 uses
  %invariant.op.i.i = or disjoint i32 %i.on, 4
  %i.qa = zext i32 %i.pz to i64                   ; 2 uses
  %i.qb = zext i32 %.pn341.i.i to i64
  %i.qc = zext i32 %invariant.op.i.i to i64
  %.in311.ph.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qb ; 4 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.oo ; 7 uses
  %.in311.ph.1.i.i = getelementptr inbounds nuw i8, ptr %.in311.ph.i.i, i64 4
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 4 ; 2 uses
  %.in311.ph.2.i.i = getelementptr inbounds nuw i8, ptr %.in311.ph.i.i, i64 8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 8 ; 4 uses
  %.in311.ph.3.i.i = getelementptr inbounds nuw i8, ptr %.in311.ph.i.i, i64 12
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 12 ; 2 uses
  %i.qh = add nuw nsw i32 %i.lb, 1                ; 2 uses
  %spec.select.i218.i = tail call i32 @llvm.smin.i32(i32 %i.ld, i32 %i.ii) ; 8 uses
  %i.qi = add nuw nsw i32 %i.lb, 2                ; 2 uses
  %i.qj = icmp slt i32 %i.qi, %spec.select.i218.i
  %i.qk = sext i32 %i.on to i64
  %i.ql = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.qk
  %i.qm = sext i32 %i.qh to i64
  %i.qn = sext i32 %spec.select.i218.i to i64
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qa ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 12
  %i.qr = add i32 %.0175296.i, -1
  %spec.select322.i.i = tail call i32 @llvm.smin.i32(i32 %i.lg, i32 %i.qr) ; 8 uses
  %i.qs = add nuw nsw i32 %i.le, 1                ; 2 uses
  %i.qt = icmp slt i32 %i.qs, %spec.select322.i.i
  %i.qu = sext i32 %i.ot to i64
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.qu
  %i.qw = sext i32 %i.le to i64
  %i.qx = sext i32 %spec.select322.i.i to i64
  %i.qy = add i32 %i.pm, -8                       ; 3 uses
  %.not304.us.i.i = icmp sgt i32 %.0175296.i, 0
  %i.qz = zext i32 %i.qy to i64
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qz
  %i.rb = select i1 %.not304.us.i.i, i32 0, i32 %i.qy
  %i.rc = zext i32 %i.rb to i64
  %.in305.us.us.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.rc ; 3 uses
  %.in305.us.us.1.i.i = getelementptr inbounds nuw i8, ptr %.in305.us.us.i.i, i64 4
  %.in305.us.us.3.i.i = getelementptr inbounds nuw i8, ptr %.in305.us.us.i.i, i64 12
  %i.rd = shl i32 %i.lv, 2
  %i.re = zext i32 %i.rd to i64
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.re
  %.301.v.i = select i1 %.not312.i.i, i64 %i.qc, i64 %i.qa
  %.301.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.301.v.i ; 4 uses
  %.302.i = getelementptr inbounds nuw i8, ptr %.301.i, i64 4
  %.303.i = getelementptr inbounds nuw i8, ptr %.301.i, i64 8
  %.304.i = getelementptr inbounds nuw i8, ptr %.301.i, i64 12
  br label %bb.bi

bb.ac:                                            ; preds = %bb.bh, %.lr.ph.i14
  %.0180295.i = phi i32 [ 0, %.lr.ph.i14 ], [ %.pre-phi319.i, %bb.bh ] ; 9 uses
  %.not189.i = icmp uge i32 %.0180295.i, %i.lb
  %i.rg = icmp ult i32 %.0180295.i, %i.ld
  %or.cond.i15 = and i1 %.not189.i, %i.rg
  br i1 %or.cond.i15, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not190.i = icmp uge i32 %.0180295.i, %.pre315.i
  %i.rh = icmp ult i32 %.0180295.i, %.pre316.i
  %or.cond291.i = and i1 %.not190.i, %i.rh
  br i1 %or.cond291.i, label %bb.ae, label %._crit_edge314.i

._crit_edge314.i:                                 ; preds = %bb.ad
  %.pre318.i = add nuw i32 %.0180295.i, 1
  br label %bb.bh

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %i.mb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.me, align 4, !tbaa !3
  store i32 0, ptr %i.mg, align 4, !tbaa !3
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.ri = add nuw i32 %.0180295.i, 1              ; 4 uses
  %i.rj = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.kv, i32 noundef %.0180295.i, i32 noundef %i.kx, i32 noundef %i.ri, ptr noundef nonnull %i.ml, i32 noundef 2, i32 noundef 0, i32 noundef 1) #15 ; 0 uses
  %i.rk = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.mm, i32 noundef %.0180295.i, i32 noundef %i.mn, i32 noundef %i.ri, ptr noundef nonnull %i.ms, i32 noundef 2, i32 noundef 0, i32 noundef 1) #15 ; 0 uses
  br i1 %i.lh, label %bb.ah, label %bb.ax

bb.ah:                                            ; preds = %bb.ag
  br i1 %or.cond.i.i, label %bb.ai, label %opj_dwt_decode_partial_1.exit.i

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.mv, label %bb.aj, label %.loopexit208.i.i

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.nj, label %bb.ak, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.aj
  %i.rl = load i32, ptr %.in.ph.i.i, align 4, !tbaa !3
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.rm = load i32, ptr %i.hm, align 4, !tbaa !3  ; 3 uses
  br i1 %i.no, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak, %.thread.i.i
  %i.rn = phi i32 [ %i.rl, %.thread.i.i ], [ %i.rm, %bb.ak ]
  %.pre.i = load i32, ptr %..i, align 4, !tbaa !3
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ro = phi i32 [ %i.rm, %bb.ak ], [ %.pre.i, %bb.al ]
  %i.rp = phi i32 [ %i.rm, %bb.ak ], [ %i.rn, %bb.al ]
  %i.rq = add i32 %i.ro, 2
  %i.rr = add i32 %i.rq, %i.rp
  %i.rs = ashr i32 %i.rr, 2
  %i.rt = load i32, ptr %i.nt, align 4, !tbaa !3
  %i.ru = sub nsw i32 %i.rt, %i.rs
  store i32 %i.ru, ptr %i.nt, align 4, !tbaa !3
  br i1 %i.nu, label %.lr.ph219.i.i, label %.preheader207.i.i

.preheader207.i.i:                                ; preds = %.lr.ph219.i.i, %bb.am
  %.0150.lcssa.i.i = phi i32 [ %.0150216.i.i, %bb.am ], [ %spec.select.i209.i, %.lr.ph219.i.i ] ; 2 uses
  %i.rv = icmp slt i32 %.0150.lcssa.i.i, %i.kx
  br i1 %i.rv, label %.lr.ph223.i.i, label %.loopexit208.i.i

.lr.ph223.i.i:                                    ; preds = %.preheader207.i.i
  %i.rw = sext i32 %.0150.lcssa.i.i to i64
  br label %bb.an

.lr.ph219.i.i:                                    ; preds = %bb.am, %.lr.ph219.i.i
  %indvars.iv233.i.i = phi i64 [ %indvars.iv.next234.i.i, %.lr.ph219.i.i ], [ %i.nv, %bb.am ] ; 3 uses
  %.0150.in217.i.i = phi i32 [ %i.sk, %.lr.ph219.i.i ], [ %i.kv, %bb.am ]
  %i.rx = shl nsw i32 %.0150.in217.i.i, 1
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr [4 x i8], ptr %i.hg, i64 %i.ry
  %i.sa = getelementptr i8, ptr %i.rz, i64 4
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !3
  %.idx256.i.i = shl i64 %indvars.iv233.i.i, 3
  %i.sc = getelementptr i8, ptr %i.hg, i64 %.idx256.i.i ; 3 uses
  %i.sd = getelementptr i8, ptr %i.sc, i64 4
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !3
  %i.sf = add i32 %i.sb, 2
  %i.sg = add i32 %i.sf, %i.se
  %i.sh = ashr i32 %i.sg, 2
  %i.si = load i32, ptr %i.sc, align 4, !tbaa !3
  %i.sj = sub nsw i32 %i.si, %i.sh
  store i32 %i.sj, ptr %i.sc, align 4, !tbaa !3
  %indvars.iv.next234.i.i = add nsw i64 %indvars.iv233.i.i, 1 ; 2 uses
  %i.sk = trunc nsw i64 %indvars.iv233.i.i to i32
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next234.i.i to i32
  %exitcond236.not.i.i = icmp eq i32 %spec.select.i209.i, %lftr.wideiv.i.i
  br i1 %exitcond236.not.i.i, label %.preheader207.i.i, label %.lr.ph219.i.i, !llvm.loop !142

bb.an:                                            ; preds = %bb.ar, %.lr.ph223.i.i
  %indvars.iv237.i.i = phi i64 [ %i.rw, %.lr.ph223.i.i ], [ %indvars.iv.next238.i.i, %bb.ar ] ; 8 uses
  %i.sl = icmp slt i64 %indvars.iv237.i.i, 1
  br i1 %i.sl, label %bb.ao, label %.thread194.i.i

.thread194.i.i:                                   ; preds = %bb.an
  %.not179.not.i.i = icmp sgt i64 %indvars.iv237.i.i, %i.nw
  %i.sm = shl nuw i64 %indvars.iv237.i.i, 1
  %i.sn = add i64 %i.sm, 4294967295
  %i.so = and i64 %i.sn, 4294967295
  %.pn206.i.i = select i1 %.not179.not.i.i, i64 %i.nn, i64 %i.so
  %.in180.ph.i.i = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %.pn206.i.i
  %i.sp = load i32, ptr %.in180.ph.i.i, align 4, !tbaa !3
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.sq = load i32, ptr %i.hm, align 4, !tbaa !3  ; 2 uses
  %i.sr = icmp slt i64 %indvars.iv237.i.i, 0
  br i1 %i.sr, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.thread194.i.i
  %i.ss = phi i32 [ %i.sp, %.thread194.i.i ], [ %i.sq, %bb.ao ] ; 2 uses
  %.not181.i.i = icmp slt i64 %indvars.iv237.i.i, %i.nw
  br i1 %.not181.i.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %.idx257.i.i = shl nuw nsw i64 %indvars.iv237.i.i, 3
  %i.st = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.idx257.i.i
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.sv = phi i32 [ %i.ss, %bb.aq ], [ %i.sq, %bb.ao ], [ %i.ss, %bb.ap ]
  %.in182.i.i = phi ptr [ %i.su, %bb.aq ], [ %i.hm, %bb.ao ], [ %i.np, %bb.ap ]
  %i.sw = load i32, ptr %.in182.i.i, align 4, !tbaa !3
  %i.sx = add i32 %i.sv, 2
  %i.sy = add i32 %i.sx, %i.sw
  %i.sz = ashr i32 %i.sy, 2
  %.idx258.i.i = shl nsw i64 %indvars.iv237.i.i, 3
  %i.ta = getelementptr inbounds i8, ptr %i.hg, i64 %.idx258.i.i ; 2 uses
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !3
  %i.tc = sub nsw i32 %i.tb, %i.sz
  store i32 %i.tc, ptr %i.ta, align 4, !tbaa !3
  %indvars.iv.next238.i.i = add nsw i64 %indvars.iv237.i.i, 1 ; 2 uses
  %exitcond241.not.i.i = icmp eq i64 %indvars.iv.next238.i.i, %wide.trip.count240.i.i
  br i1 %exitcond241.not.i.i, label %.loopexit208.i.i, label %bb.an, !llvm.loop !143

.loopexit208.i.i:                                 ; preds = %bb.ar, %.preheader207.i.i, %bb.ai
  br i1 %i.na, label %bb.as, label %opj_dwt_decode_partial_1.exit.i

bb.as:                                            ; preds = %.loopexit208.i.i
  br i1 %i.ny, label %.lr.ph225.i.i.preheader, label %.preheader.i.i

.lr.ph225.i.i.preheader:                          ; preds = %bb.as
  br i1 %min.iters.check, label %.lr.ph225.i.i.preheader96, label %vector.body

.lr.ph225.i.i.preheader96:                        ; preds = %vector.body, %.lr.ph225.i.i.preheader
  %indvars.iv242.i.i.ph = phi i64 [ %i.nf, %.lr.ph225.i.i.preheader ], [ %i.oj, %vector.body ]
  br label %.lr.ph225.i.i

vector.body:                                      ; preds = %.lr.ph225.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph225.i.i.preheader ] ; 2 uses
  %i.td = add i64 %index, %i.nf                   ; 5 uses
end_hunk_0
begin_hunk_1_@opj_dwt_decode:bb.a

.lr.ph229.i.i:                                    ; preds = %.preheader.i.i, %bb.aw
  %.3227.i.i = phi i32 [ %i.uz, %bb.aw ], [ %.2.lcssa.i.i, %.preheader.i.i ] ; 7 uses
  %i.un = icmp slt i32 %.3227.i.i, 0
  br i1 %i.un, label %bb.at, label %.thread197.i.i

.thread197.i.i:                                   ; preds = %.lr.ph229.i.i
  %.not175.i.i = icmp slt i32 %.3227.i.i, %.0174297.i
  %i.uo = shl nuw nsw i32 %.3227.i.i, 1
  %i.up = zext nneg i32 %i.uo to i64
  %.in176.ph.v.i.i = select i1 %.not175.i.i, i64 %i.up, i64 %i.ob
  %.in176.ph.i.i = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %.in176.ph.v.i.i
  %i.uq = load i32, ptr %.in176.ph.i.i, align 4, !tbaa !3
  %i.ur = add nuw nsw i32 %.3227.i.i, 1
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph229.i.i
  %i.us = load i32, ptr %i.hg, align 4, !tbaa !3  ; 2 uses
  %i.ut = add nuw nsw i32 %.3227.i.i, 1
  %.not205.i.i = icmp eq i32 %.3227.i.i, -1
  br i1 %.not205.i.i, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at, %.thread197.i.i
  %i.uu = phi i32 [ %i.ur, %.thread197.i.i ], [ 0, %bb.at ] ; 4 uses
  %i.uv = phi i32 [ %i.uq, %.thread197.i.i ], [ %i.us, %bb.at ] ; 2 uses
  %.not177.i.i = icmp slt i32 %i.uu, %.0174297.i
  br i1 %.not177.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.uw = shl nuw nsw i32 %i.uu, 1
  %i.ux = zext nneg i32 %i.uw to i64
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ux
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %i.uz = phi i32 [ %i.uu, %bb.av ], [ %i.ut, %bb.at ], [ %i.uu, %bb.au ] ; 2 uses
  %i.va = phi i32 [ %i.uv, %bb.av ], [ %i.us, %bb.at ], [ %i.uv, %bb.au ]
  %.in178.i.i = phi ptr [ %i.uy, %bb.av ], [ %i.hg, %bb.at ], [ %i.oc, %bb.au ]
  %i.vb = load i32, ptr %.in178.i.i, align 4, !tbaa !3
  %i.vc = add nsw i32 %i.vb, %i.va
  %i.vd = ashr i32 %i.vc, 1
  %i.ve = shl nsw i32 %.3227.i.i, 1
  %i.vf = sext i32 %i.ve to i64
  %i.vg = getelementptr [4 x i8], ptr %i.hg, i64 %i.vf
  %i.vh = getelementptr i8, ptr %i.vg, i64 4      ; 2 uses
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !3
  %i.vj = add nsw i32 %i.vd, %i.vi
  store i32 %i.vj, ptr %i.vh, align 4, !tbaa !3
  %i.vk = icmp slt i32 %i.uz, %i.la
  br i1 %i.vk, label %.lr.ph229.i.i, label %opj_dwt_decode_partial_1.exit.i, !llvm.loop !146

bb.ax:                                            ; preds = %bb.ag
  br i1 %or.cond3.i.i, label %bb.ay, label %.preheader211.i.i

.preheader211.i.i:                                ; preds = %bb.ax
  br i1 %i.mv, label %.lr.ph.i208.i, label %.preheader209.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.vl = load i32, ptr %i.hg, align 4, !tbaa !3
  %i.vm = sdiv i32 %i.vl, 2
  store i32 %i.vm, ptr %i.hg, align 4, !tbaa !3
  br label %opj_dwt_decode_partial_1.exit.i

.preheader209.i.i:                                ; preds = %bb.bc, %.preheader211.i.i
  br i1 %i.na, label %.lr.ph215.i.i, label %opj_dwt_decode_partial_1.exit.i

.lr.ph.i208.i:                                    ; preds = %.preheader211.i.i, %bb.bc
  %.4212.i.i = phi i32 [ %i.wd, %bb.bc ], [ %i.kv, %.preheader211.i.i ] ; 6 uses
  %i.vn = shl nsw i32 %.4212.i.i, 1               ; 2 uses
  %i.vo = sext i32 %i.vn to i64
  %i.vp = getelementptr [4 x i8], ptr %i.hg, i64 %i.vo
  %i.vq = getelementptr i8, ptr %i.vp, i64 4      ; 2 uses
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !3
  %i.vs = icmp slt i32 %.4212.i.i, 0
  br i1 %i.vs, label %bb.az, label %.thread200.i.i

.thread200.i.i:                                   ; preds = %.lr.ph.i208.i
  %.not187.i.i = icmp slt i32 %.4212.i.i, %i.ig
  %i.vt = zext nneg i32 %i.vn to i64
  %.in188.ph.v.i.i = select i1 %.not187.i.i, i64 %i.vt, i64 %i.my
  %.in188.ph.i.i = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %.in188.ph.v.i.i
  %i.vu = load i32, ptr %.in188.ph.i.i, align 4, !tbaa !3
  %i.vv = add nuw nsw i32 %.4212.i.i, 1
  br label %bb.ba

bb.az:                                            ; preds = %.lr.ph.i208.i
  %i.vw = load i32, ptr %i.hg, align 4, !tbaa !3  ; 2 uses
  %i.vx = add nuw nsw i32 %.4212.i.i, 1
  %.not204.i.i = icmp eq i32 %.4212.i.i, -1
  br i1 %.not204.i.i, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az, %.thread200.i.i
  %i.vy = phi i32 [ %i.vv, %.thread200.i.i ], [ 0, %bb.az ] ; 4 uses
  %i.vz = phi i32 [ %i.vu, %.thread200.i.i ], [ %i.vw, %bb.az ] ; 2 uses
  %.not189.i.i = icmp slt i32 %i.vy, %i.ig
  br i1 %.not189.i.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.wa = shl nuw nsw i32 %i.vy, 1
  %i.wb = zext nneg i32 %i.wa to i64
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.wb
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %i.wd = phi i32 [ %i.vy, %bb.bb ], [ %i.vx, %bb.az ], [ %i.vy, %bb.ba ] ; 2 uses
  %i.we = phi i32 [ %i.vz, %bb.bb ], [ %i.vw, %bb.az ], [ %i.vz, %bb.ba ]
  %.in190.i.i = phi ptr [ %i.wc, %bb.bb ], [ %i.hg, %bb.az ], [ %i.mz, %bb.ba ]
  %i.wf = load i32, ptr %.in190.i.i, align 4, !tbaa !3
  %i.wg = add i32 %i.we, 2
  %i.wh = add i32 %i.wg, %i.wf
  %i.wi = ashr i32 %i.wh, 2
  %i.wj = sub i32 %i.vr, %i.wi
  store i32 %i.wj, ptr %i.vq, align 4, !tbaa !3
  %i.wk = icmp slt i32 %i.wd, %i.kx
  br i1 %i.wk, label %.lr.ph.i208.i, label %.preheader209.i.i, !llvm.loop !147

.lr.ph215.i.i:                                    ; preds = %.preheader209.i.i, %bb.bf
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bf ], [ %i.nf, %.preheader209.i.i ] ; 6 uses
  %.idx.i.i = shl i64 %indvars.iv.i.i, 3
  %i.wl = getelementptr i8, ptr %i.hg, i64 %.idx.i.i ; 4 uses
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !3
  %i.wn = icmp slt i64 %indvars.iv.i.i, 0
  br i1 %i.wn, label %.thread202.i.i, label %bb.bd

.thread202.i.i:                                   ; preds = %.lr.ph215.i.i
  %i.wo = load i32, ptr %i.hm, align 4, !tbaa !3
  br label %bb.bf

bb.bd:                                            ; preds = %.lr.ph215.i.i
  %.not183.i.i = icmp slt i64 %indvars.iv.i.i, %i.ng
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wl, i64 4
  %.in184.i.i = select i1 %.not183.i.i, ptr %i.wp, ptr %i.ne
  %i.wq = load i32, ptr %.in184.i.i, align 4, !tbaa !3 ; 2 uses
  %i.wr = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %i.wr, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.not185.not.i.i = icmp sgt i64 %indvars.iv.i.i, %i.ng
  %i.ws = getelementptr i8, ptr %i.wl, i64 -4
  %spec.select262.i.i = select i1 %.not185.not.i.i, ptr %i.ne, ptr %i.ws
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %.thread202.i.i
  %i.wt = phi i32 [ %i.wq, %bb.be ], [ %i.wq, %bb.bd ], [ %i.wo, %.thread202.i.i ]
  %.in186.i.i = phi ptr [ %spec.select262.i.i, %bb.be ], [ %i.hm, %bb.bd ], [ %i.hm, %.thread202.i.i ]
  %i.wu = load i32, ptr %.in186.i.i, align 4, !tbaa !3
  %i.wv = add i32 %i.wu, %i.wt
  %i.ww = ashr i32 %i.wv, 1
  %i.wx = add i32 %i.ww, %i.wm
  store i32 %i.wx, ptr %i.wl, align 4, !tbaa !3
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %opj_dwt_decode_partial_1.exit.i, label %.lr.ph215.i.i, !llvm.loop !148

opj_dwt_decode_partial_1.exit.i:                  ; preds = %bb.bf, %bb.aw, %.preheader209.i.i, %bb.ay, %.preheader.i.i, %.loopexit208.i.i, %bb.ah
  %i.wy = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.fe, i32 noundef %i.ll, i32 noundef %.0180295.i, i32 noundef %i.lq, i32 noundef %i.ri, ptr noundef nonnull %i.oe, i32 noundef 1, i32 noundef 0, i32 noundef 1) #15
  %.not192.i = icmp eq i32 %i.wy, 0
  br i1 %.not192.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %opj_dwt_decode_partial_1.exit.i
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.fe) #15
  tail call void @opj_aligned_free(ptr noundef nonnull %i.hg) #15
  br label %opj_dwt_decode_partial_tile.exit

bb.bh:                                            ; preds = %opj_dwt_decode_partial_1.exit.i, %._crit_edge314.i
  %.pre-phi319.i = phi i32 [ %.pre318.i, %._crit_edge314.i ], [ %i.ri, %opj_dwt_decode_partial_1.exit.i ] ; 2 uses
  %exitcond.not.i16 = icmp eq i32 %.pre-phi319.i, %i.if
  br i1 %exitcond.not.i16, label %.preheader.i17, label %bb.ac, !llvm.loop !149

bb.bi:                                            ; preds = %opj_dwt_decode_partial_1_parallel.exit.i, %.preheader.i17
  %.0181.i = phi i32 [ %i.xc, %opj_dwt_decode_partial_1_parallel.exit.i ], [ %i.ll, %.preheader.i17 ] ; 6 uses
  %i.wz = icmp ult i32 %.0181.i, %i.lq
  br i1 %i.wz, label %bb.bj, label %bb.bs

bb.bj:                                            ; preds = %bb.bi
  %i.xa = sub nuw i32 %i.lq, %.0181.i
  %i.xb = tail call noundef i32 @llvm.umin.i32(i32 %i.xa, i32 4)
  %i.xc = add i32 %i.xb, %.0181.i                 ; 4 uses
  %i.xd = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %.0181.i, i32 noundef %i.lb, i32 noundef %i.xc, i32 noundef %i.ld, ptr noundef nonnull %i.op, i32 noundef 1, i32 noundef 8, i32 noundef 1) #15 ; 0 uses
  %i.xe = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %.0181.i, i32 noundef %.pre315.i, i32 noundef %i.xc, i32 noundef %.pre316.i, ptr noundef nonnull %i.ov, i32 noundef 1, i32 noundef 8, i32 noundef 1) #15 ; 0 uses
  br i1 %i.lr, label %bb.bk, label %bb.br

bb.bk:                                            ; preds = %bb.bj
  br i1 %or.cond.i213.i, label %bb.bl, label %opj_dwt_decode_partial_1_parallel.exit.i

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.oy, label %.preheader350.i.i, label %.loopexit347.i.i

.preheader350.i.i:                                ; preds = %bb.bl
  br i1 %i.px, label %bb.bm, label %.thread.i217.i

.thread.i217.i:                                   ; preds = %.preheader350.i.i
  %i.xf = load i32, ptr %.in311.ph.i.i, align 4, !tbaa !3
  br label %.thread.1.i.i

bb.bm:                                            ; preds = %.preheader350.i.i
  %i.xg = load i32, ptr %i.hs, align 4, !tbaa !3  ; 2 uses
  br i1 %i.py, label %.thread360.i, label %.thread.1.i.i

.thread360.i:                                     ; preds = %bb.bm
  %5 = load i32, ptr %i.ht, align 4, !tbaa !3
  %6 = insertelement <2 x i32> poison, i32 %i.xg, i64 0
  %7 = insertelement <2 x i32> %6, i32 %5, i64 1
  %8 = shl <2 x i32> %7, splat (i32 1)
  %9 = add <2 x i32> %8, splat (i32 2)
  %10 = ashr <2 x i32> %9, splat (i32 2)
  %i.xh = load <2 x i32>, ptr %i.qd, align 4, !tbaa !3
  %11 = sub nsw <2 x i32> %i.xh, %10
  store <2 x i32> %11, ptr %i.qd, align 4, !tbaa !3
  %12 = load i32, ptr %i.hu, align 4, !tbaa !3
  %reass.add389.i = shl i32 %12, 1
  %13 = add i32 %reass.add389.i, 2
  %14 = ashr i32 %13, 2
  %15 = load i32, ptr %i.qf, align 4, !tbaa !3
  %16 = sub nsw i32 %15, %14
  store i32 %16, ptr %i.qf, align 4, !tbaa !3
  %i.xi = load i32, ptr %i.hv, align 4, !tbaa !3  ; 2 uses
  br label %bb.bn

.thread.1.i.i:                                    ; preds = %bb.bm, %.thread.i217.i
  %.in387.i = phi ptr [ %.in311.ph.3.i.i, %.thread.i217.i ], [ %i.hv, %bb.bm ]
  %.in386.i = phi ptr [ %.in311.ph.2.i.i, %.thread.i217.i ], [ %i.hu, %bb.bm ]
  %spec.select = phi ptr [ %.in311.ph.1.i.i, %.thread.i217.i ], [ %i.ht, %bb.bm ]
  %i.xj = phi i32 [ %i.xf, %.thread.i217.i ], [ %i.xg, %bb.bm ]
  %.pre310.i = load i32, ptr %.301.i, align 4, !tbaa !3
  %i.xk = add i32 %i.xj, 2
  %i.xl = add i32 %i.xk, %.pre310.i
  %i.xm = ashr i32 %i.xl, 2
  %i.xn = load i32, ptr %i.qd, align 4, !tbaa !3
  %i.xo = sub nsw i32 %i.xn, %i.xm
  store i32 %i.xo, ptr %i.qd, align 4, !tbaa !3
  %i.xp = load i32, ptr %spec.select, align 4, !tbaa !3
  %.pre311.i = load i32, ptr %.302.i, align 4, !tbaa !3
  %i.xq = add i32 %i.xp, 2
  %i.xr = add i32 %i.xq, %.pre311.i
  %i.xs = ashr i32 %i.xr, 2
  %i.xt = load i32, ptr %i.qe, align 4, !tbaa !3
  %i.xu = sub nsw i32 %i.xt, %i.xs
  store i32 %i.xu, ptr %i.qe, align 4, !tbaa !3
  %i.xv = load i32, ptr %.in386.i, align 4, !tbaa !3
  %.pre312.i = load i32, ptr %.303.i, align 4, !tbaa !3
  %i.xw = add i32 %i.xv, 2
  %i.xx = add i32 %i.xw, %.pre312.i
  %i.xy = ashr i32 %i.xx, 2
  %i.xz = load i32, ptr %i.qf, align 4, !tbaa !3
  %i.ya = sub nsw i32 %i.xz, %i.xy
  store i32 %i.ya, ptr %i.qf, align 4, !tbaa !3
  %i.yb = load i32, ptr %.in387.i, align 4, !tbaa !3
  %.pre313.i = load i32, ptr %.304.i, align 4, !tbaa !3
  br label %bb.bn

bb.bn:                                            ; preds = %.thread.1.i.i, %.thread360.i
  %i.yc = phi i32 [ %i.xi, %.thread360.i ], [ %.pre313.i, %.thread.1.i.i ]
  %i.yd = phi i32 [ %i.xi, %.thread360.i ], [ %i.yb, %.thread.1.i.i ]
  %i.ye = add i32 %i.yc, 2
  %i.yf = add i32 %i.ye, %i.yd
  %i.yg = ashr i32 %i.yf, 2
  %i.yh = load i32, ptr %i.qg, align 4, !tbaa !3
  %i.yi = sub nsw i32 %i.yh, %i.yg
  store i32 %i.yi, ptr %i.qg, align 4, !tbaa !3
  br i1 %i.qj, label %.lr.ph.preheader.i.i, label %.loopexit349.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bn
  %i.yj = load <2 x i64>, ptr %i.ql, align 16, !tbaa !62
  br label %.lr.ph.i220.i

.lr.ph.i220.i:                                    ; preds = %.lr.ph.i220.i, %.lr.ph.preheader.i.i
  %indvars.iv.i221.i = phi i64 [ %i.qm, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i222.i, %.lr.ph.i220.i ] ; 3 uses
  %i.yk = phi i32 [ %i.qi, %.lr.ph.preheader.i.i ], [ %i.zh, %.lr.ph.i220.i ]
  %.0276375.i.i = phi <2 x i64> [ %i.yj, %.lr.ph.preheader.i.i ], [ %i.yv, %.lr.ph.i220.i ]
  %i.yl = shl nsw i64 %indvars.iv.i221.i, 3       ; 2 uses
  %i.ym = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.yl ; 2 uses
  %i.yn = load <4 x i32>, ptr %i.ym, align 16, !tbaa !62
  %i.yo = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.yl
  %i.yp = load <4 x i32>, ptr %i.yo, align 16, !tbaa !62
  %i.yq = shl nsw i32 %i.yk, 3
  %i.yr = sext i32 %i.yq to i64                   ; 2 uses
  %i.ys = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.yr ; 2 uses
  %i.yt = load <4 x i32>, ptr %i.ys, align 16, !tbaa !62
  %i.yu = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.yr
  %i.yv = load <2 x i64>, ptr %i.yu, align 16, !tbaa !62 ; 2 uses
  %i.yw = bitcast <2 x i64> %.0276375.i.i to <4 x i32>
  %i.yx = add <4 x i32> %i.yp, splat (i32 2)      ; 2 uses
  %i.yy = add <4 x i32> %i.yx, %i.yw
  %i.yz = ashr <4 x i32> %i.yy, splat (i32 2)
  %i.za = sub <4 x i32> %i.yn, %i.yz
  %i.zb = bitcast <2 x i64> %i.yv to <4 x i32>
  %i.zc = add <4 x i32> %i.yx, %i.zb
  %i.zd = ashr <4 x i32> %i.zc, splat (i32 2)
  %i.ze = sub <4 x i32> %i.yt, %i.zd
  store <4 x i32> %i.za, ptr %i.ym, align 16, !tbaa !62
  store <4 x i32> %i.ze, ptr %i.ys, align 16, !tbaa !62
  %indvars.iv.next.i222.i = add nsw i64 %indvars.iv.i221.i, 2 ; 2 uses
  %i.zf = add nsw i64 %indvars.iv.i221.i, 3       ; 2 uses
  %i.zg = icmp slt i64 %i.zf, %i.qn
  %i.zh = trunc nsw i64 %i.zf to i32
  br i1 %i.zg, label %.lr.ph.i220.i, label %.loopexit349.loopexit.i.i, !llvm.loop !150

.loopexit349.loopexit.i.i:                        ; preds = %.lr.ph.i220.i
  %i.zi = trunc nsw i64 %indvars.iv.next.i222.i to i32
  br label %.loopexit349.i.i

.loopexit349.i.i:                                 ; preds = %.loopexit349.loopexit.i.i, %bb.bn
  %.1.i.i = phi i32 [ %i.qh, %bb.bn ], [ %i.zi, %.loopexit349.loopexit.i.i ] ; 7 uses
  %i.zj = icmp slt i32 %.1.i.i, %spec.select.i218.i
  br i1 %i.zj, label %.preheader348.i.i.preheader, label %.preheader346.i.i

.preheader348.i.i.preheader:                      ; preds = %.loopexit349.i.i
  %i.zk = sub i32 %spec.select.i218.i, %.1.i.i
  %.neg = add i32 %.1.i.i, 1
  %xtraiter110 = and i32 %i.zk, 1
  %lcmp.mod111.not = icmp eq i32 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %.preheader348.i.i.prol.loopexit, label %.preheader348.i.i.prol

.preheader348.i.i.prol:                           ; preds = %.preheader348.i.i.preheader
  %i.zl = shl i32 %.1.i.i, 3                      ; 2 uses
  %i.zm = add i32 %i.zl, -4
  %i.zn = zext i32 %i.zm to i64
  %i.zo = zext i32 %i.zl to i64
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.zn
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.zo ; 3 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 16
  %i.zs = load <4 x i32>, ptr %i.zp, align 4, !tbaa !3
  %i.zt = load <4 x i32>, ptr %i.zr, align 4, !tbaa !3
  %i.zu = add <4 x i32> %i.zs, splat (i32 2)
  %i.zv = add <4 x i32> %i.zu, %i.zt
  %i.zw = ashr <4 x i32> %i.zv, splat (i32 2)
  %i.zx = load <4 x i32>, ptr %i.zq, align 4, !tbaa !3
  %i.zy = sub nsw <4 x i32> %i.zx, %i.zw
  store <4 x i32> %i.zy, ptr %i.zq, align 4, !tbaa !3
  %i.zz = add nsw i32 %.1.i.i, 1
  br label %.preheader348.i.i.prol.loopexit

.preheader348.i.i.prol.loopexit:                  ; preds = %.preheader348.i.i.prol, %.preheader348.i.i.preheader
  %.2378.i.i.unr = phi i32 [ %.1.i.i, %.preheader348.i.i.preheader ], [ %i.zz, %.preheader348.i.i.prol ]
  %i.aaa = icmp eq i32 %spec.select.i218.i, %.neg
  br i1 %i.aaa, label %.preheader346.i.i, label %.preheader348.i.i

.preheader348.i.i:                                ; preds = %.preheader348.i.i.prol.loopexit, %.preheader348.i.i
  %.2378.i.i = phi i32 [ %i.abe, %.preheader348.i.i ], [ %.2378.i.i.unr, %.preheader348.i.i.prol.loopexit ] ; 3 uses
  %i.aab = shl i32 %.2378.i.i, 3                  ; 2 uses
  %i.aac = add i32 %i.aab, -4
  %i.aad = zext i32 %i.aac to i64
  %i.aae = zext i32 %i.aab to i64
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.aad
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.aae ; 3 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 16
  %i.aai = load <4 x i32>, ptr %i.aaf, align 4, !tbaa !3
  %i.aaj = load <4 x i32>, ptr %i.aah, align 4, !tbaa !3
  %i.aak = add <4 x i32> %i.aai, splat (i32 2)
  %i.aal = add <4 x i32> %i.aak, %i.aaj
  %i.aam = ashr <4 x i32> %i.aal, splat (i32 2)
  %i.aan = load <4 x i32>, ptr %i.aag, align 4, !tbaa !3
  %i.aao = sub nsw <4 x i32> %i.aan, %i.aam
  store <4 x i32> %i.aao, ptr %i.aag, align 4, !tbaa !3
  %i.aap = shl i32 %.2378.i.i, 3                  ; 2 uses
  %i.aaq = add i32 %i.aap, 8
  %i.aar = or disjoint i32 %i.aap, 4
  %i.aas = zext i32 %i.aar to i64
  %i.aat = zext i32 %i.aaq to i64
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.aas
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.aat ; 3 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 16
  %i.aax = load <4 x i32>, ptr %i.aau, align 4, !tbaa !3
  %i.aay = load <4 x i32>, ptr %i.aaw, align 4, !tbaa !3
  %i.aaz = add <4 x i32> %i.aax, splat (i32 2)
  %i.aba = add <4 x i32> %i.aaz, %i.aay
  %i.abb = ashr <4 x i32> %i.aba, splat (i32 2)
  %i.abc = load <4 x i32>, ptr %i.aav, align 4, !tbaa !3
  %i.abd = sub nsw <4 x i32> %i.abc, %i.abb
  store <4 x i32> %i.abd, ptr %i.aav, align 4, !tbaa !3
  %i.abe = add nsw i32 %.2378.i.i, 2              ; 2 uses
  %exitcond445.not.i.i.1 = icmp eq i32 %i.abe, %spec.select.i218.i
  br i1 %exitcond445.not.i.i.1, label %.preheader346.i.i, label %.preheader348.i.i, !llvm.loop !151

.preheader346.i.i:                                ; preds = %.preheader348.i.i.prol.loopexit, %.preheader348.i.i, %.loopexit349.i.i
  %.2.lcssa.i219.i = phi i32 [ %.1.i.i, %.loopexit349.i.i ], [ %spec.select.i218.i, %.preheader348.i.i ], [ %spec.select.i218.i, %.preheader348.i.i.prol.loopexit ] ; 2 uses
  %i.abf = icmp slt i32 %.2.lcssa.i219.i, %i.ld
  br i1 %i.abf, label %.preheader345.i.i, label %.loopexit347.i.i

.preheader345.i.i:                                ; preds = %.preheader346.i.i, %.split384.us.i.i
  %.3388.i.i = phi i32 [ %i.aen, %.split384.us.i.i ], [ %.2.lcssa.i219.i, %.preheader346.i.i ] ; 6 uses
  %i.abg = icmp slt i32 %.3388.i.i, 1
  %i.abh = shl i32 %.3388.i.i, 3                  ; 4 uses
  %..3.i.i = tail call i32 @llvm.smin.i32(i32 %.3388.i.i, i32 %i.ii)
  %.pn339.in.i.i = shl i32 %..3.i.i, 3
  %.pn339.i.i = add i32 %.pn339.in.i.i, -4        ; 2 uses
  %.not308.i.i = icmp slt i32 %.3388.i.i, %i.ii   ; 2 uses
  %invariant.op381.i.i = or disjoint i32 %i.abh, 4 ; 2 uses
  br i1 %i.abg, label %.preheader345.split.us.i.i, label %.preheader345.split.i.i

.preheader345.split.us.i.i:                       ; preds = %.preheader345.i.i
  %i.abi = icmp slt i32 %.3388.i.i, 0
  %i.abj = zext i32 %i.abh to i64                 ; 4 uses
  %i.abk = load i32, ptr %i.hs, align 4, !tbaa !3 ; 2 uses
  br i1 %i.abi, label %.preheader345.split.us.split.us.preheader.i.i, label %.preheader345.split.us.split.preheader.i.i

.preheader345.split.us.split.preheader.i.i:       ; preds = %.preheader345.split.us.i.i
  %.in309.us.v.v.v.i.i = select i1 %.not308.i.i, i32 %invariant.op381.i.i, i32 %i.pz
  %i.abl = zext i32 %.in309.us.v.v.v.i.i to i64
  %.in309.us.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.abl ; 3 uses
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.abj ; 3 uses
  %i.abn = load i32, ptr %i.ht, align 4, !tbaa !3
  %i.abo = load <2 x i32>, ptr %.in309.us.i.i, align 4, !tbaa !3
  %i.abp = insertelement <2 x i32> poison, i32 %i.abk, i64 0
  %i.abq = insertelement <2 x i32> %i.abp, i32 %i.abn, i64 1
  %i.abr = add <2 x i32> %i.abq, splat (i32 2)
  %i.abs = add <2 x i32> %i.abr, %i.abo
  %i.abt = ashr <2 x i32> %i.abs, splat (i32 2)
  %i.abu = load <2 x i32>, ptr %i.abm, align 4, !tbaa !3
  %i.abv = sub nsw <2 x i32> %i.abu, %i.abt
  store <2 x i32> %i.abv, ptr %i.abm, align 4, !tbaa !3
  %i.abw = load i32, ptr %i.hu, align 4, !tbaa !3
  %.in309.us.2.i.i = getelementptr inbounds nuw i8, ptr %.in309.us.i.i, i64 8
  %i.abx = load i32, ptr %.in309.us.2.i.i, align 4, !tbaa !3
  %i.aby = add i32 %i.abw, 2
  %i.abz = add i32 %i.aby, %i.abx
  %i.aca = ashr i32 %i.abz, 2
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abm, i64 8 ; 2 uses
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !3
  %i.acd = sub nsw i32 %i.acc, %i.aca
  store i32 %i.acd, ptr %i.acb, align 4, !tbaa !3
  %i.ace = load i32, ptr %i.hv, align 4, !tbaa !3
  %.in309.us.3.i.i = getelementptr inbounds nuw i8, ptr %.in309.us.i.i, i64 12
  %i.acf = load i32, ptr %.in309.us.3.i.i, align 4, !tbaa !3
  %i.acg = add i32 %i.ace, 2
  %i.ach = add i32 %i.acg, %i.acf
  br label %.split384.us.i.i

.preheader345.split.us.split.us.preheader.i.i:    ; preds = %.preheader345.split.us.i.i
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.abj ; 3 uses
  %17 = load i32, ptr %i.ht, align 4, !tbaa !3
  %18 = insertelement <2 x i32> poison, i32 %i.abk, i64 0
  %19 = insertelement <2 x i32> %18, i32 %17, i64 1
  %20 = shl <2 x i32> %19, splat (i32 1)
  %21 = add <2 x i32> %20, splat (i32 2)
  %22 = ashr <2 x i32> %21, splat (i32 2)
  %i.acj = load <2 x i32>, ptr %i.aci, align 4, !tbaa !3
  %23 = sub nsw <2 x i32> %i.acj, %22
  store <2 x i32> %23, ptr %i.aci, align 4, !tbaa !3
  %24 = load i32, ptr %i.hu, align 4, !tbaa !3
  %reass.add516.i.i = shl i32 %24, 1
  %25 = add i32 %reass.add516.i.i, 2
  %26 = ashr i32 %25, 2
  %27 = getelementptr inbounds nuw i8, ptr %i.aci, i64 8 ; 2 uses
  %28 = load i32, ptr %27, align 4, !tbaa !3
  %29 = sub nsw i32 %28, %26
  store i32 %29, ptr %27, align 4, !tbaa !3
  %i.ack = load i32, ptr %i.hv, align 4, !tbaa !3
  %reass.add517.i.i = shl i32 %i.ack, 1
  %i.acl = add i32 %reass.add517.i.i, 2
  br label %.split384.us.i.i

.preheader345.split.i.i:                          ; preds = %.preheader345.i.i
  br i1 %.not308.i.i, label %.thread325.us.preheader.i.i, label %.thread325.preheader.i.i

.thread325.preheader.i.i:                         ; preds = %.preheader345.split.i.i
  %i.acm = zext i32 %i.abh to i64                 ; 2 uses
  %i.acn = zext i32 %.pn339.i.i to i64
  %.in307.ph.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.acn ; 3 uses
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.acm ; 3 uses
  %i.acp = load <2 x i32>, ptr %.in307.ph.i.i, align 4, !tbaa !3
  %i.acq = load <2 x i32>, ptr %i.qo, align 4, !tbaa !3
  %i.acr = add <2 x i32> %i.acp, splat (i32 2)
  %i.acs = add <2 x i32> %i.acr, %i.acq
  %i.act = ashr <2 x i32> %i.acs, splat (i32 2)
  %i.acu = load <2 x i32>, ptr %i.aco, align 4, !tbaa !3
  %i.acv = sub nsw <2 x i32> %i.acu, %i.act
  store <2 x i32> %i.acv, ptr %i.aco, align 4, !tbaa !3
  %.in307.ph.2.i.i = getelementptr inbounds nuw i8, ptr %.in307.ph.i.i, i64 8
  %i.acw = load i32, ptr %.in307.ph.2.i.i, align 4, !tbaa !3
  %i.acx = load i32, ptr %i.qp, align 4, !tbaa !3
  %i.acy = add i32 %i.acw, 2
  %i.acz = add i32 %i.acy, %i.acx
  %i.ada = ashr i32 %i.acz, 2
  %i.adb = getelementptr inbounds nuw i8, ptr %i.aco, i64 8 ; 2 uses
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !3
  %i.add = sub nsw i32 %i.adc, %i.ada
  store i32 %i.add, ptr %i.adb, align 4, !tbaa !3
  %.in307.ph.3.i.i = getelementptr inbounds nuw i8, ptr %.in307.ph.i.i, i64 12
  %i.ade = load i32, ptr %.in307.ph.3.i.i, align 4, !tbaa !3
  %i.adf = load i32, ptr %i.qq, align 4, !tbaa !3
  %i.adg = add i32 %i.ade, 2
  %i.adh = add i32 %i.adg, %i.adf
  br label %.split384.us.i.i

.thread325.us.preheader.i.i:                      ; preds = %.preheader345.split.i.i
  %i.adi = zext i32 %.pn339.i.i to i64
  %i.adj = zext i32 %invariant.op381.i.i to i64
  %i.adk = zext i32 %i.abh to i64                 ; 2 uses
  %.in307.ph.us.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.adi ; 3 uses
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.adj ; 3 uses
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.adk ; 3 uses
  %i.adn = load <2 x i32>, ptr %.in307.ph.us.i.i, align 4, !tbaa !3
  %i.ado = load <2 x i32>, ptr %i.adl, align 4, !tbaa !3
  %i.adp = add <2 x i32> %i.adn, splat (i32 2)
  %i.adq = add <2 x i32> %i.adp, %i.ado
  %i.adr = ashr <2 x i32> %i.adq, splat (i32 2)
  %i.ads = load <2 x i32>, ptr %i.adm, align 4, !tbaa !3
  %i.adt = sub nsw <2 x i32> %i.ads, %i.adr
  store <2 x i32> %i.adt, ptr %i.adm, align 4, !tbaa !3
  %.in307.ph.us.2.i.i = getelementptr inbounds nuw i8, ptr %.in307.ph.us.i.i, i64 8
  %i.adu = load i32, ptr %.in307.ph.us.2.i.i, align 4, !tbaa !3
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adl, i64 8
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !3
  %i.adx = add i32 %i.adu, 2
  %i.ady = add i32 %i.adx, %i.adw
  %i.adz = ashr i32 %i.ady, 2
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adm, i64 8 ; 2 uses
  %i.aeb = load i32, ptr %i.aea, align 4, !tbaa !3
  %i.aec = sub nsw i32 %i.aeb, %i.adz
  store i32 %i.aec, ptr %i.aea, align 4, !tbaa !3
  %.in307.ph.us.3.i.i = getelementptr inbounds nuw i8, ptr %.in307.ph.us.i.i, i64 12
  %i.aed = load i32, ptr %.in307.ph.us.3.i.i, align 4, !tbaa !3
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adl, i64 12
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !3
  %i.aeg = add i32 %i.aed, 2
  %i.aeh = add i32 %i.aeg, %i.aef
  br label %.split384.us.i.i

.split384.us.i.i:                                 ; preds = %.thread325.us.preheader.i.i, %.thread325.preheader.i.i, %.preheader345.split.us.split.us.preheader.i.i, %.preheader345.split.us.split.preheader.i.i
  %.sink524.i.i = phi i32 [ %i.adh, %.thread325.preheader.i.i ], [ %i.aeh, %.thread325.us.preheader.i.i ], [ %i.ach, %.preheader345.split.us.split.preheader.i.i ], [ %i.acl, %.preheader345.split.us.split.us.preheader.i.i ]
  %.sink.i.i = phi i64 [ %i.acm, %.thread325.preheader.i.i ], [ %i.adk, %.thread325.us.preheader.i.i ], [ %i.abj, %.preheader345.split.us.split.preheader.i.i ], [ %i.abj, %.preheader345.split.us.split.us.preheader.i.i ]
  %i.aei = ashr i32 %.sink524.i.i, 2
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.sink.i.i
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 12 ; 2 uses
  %i.ael = load i32, ptr %i.aek, align 4, !tbaa !3
  %i.aem = sub nsw i32 %i.ael, %i.aei
  store i32 %i.aem, ptr %i.aek, align 4, !tbaa !3
  %i.aen = add nsw i32 %.3388.i.i, 1              ; 2 uses
  %exitcond466.not.i.i = icmp eq i32 %i.aen, %i.ld
  br i1 %exitcond466.not.i.i, label %.loopexit347.i.i, label %.preheader345.i.i, !llvm.loop !152

.loopexit347.i.i:                                 ; preds = %.split384.us.i.i, %.preheader346.i.i, %bb.bl
  br i1 %i.pl, label %bb.bo, label %opj_dwt_decode_partial_1_parallel.exit.i

bb.bo:                                            ; preds = %.loopexit347.i.i
  br i1 %i.qt, label %bb.bp, label %.loopexit344.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.aeo = load <2 x i64>, ptr %i.qv, align 16, !tbaa !62
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %bb.bp
  %indvars.iv467.i.i = phi i64 [ %i.qw, %bb.bp ], [ %indvars.iv.next468.i.i, %bb.bq ] ; 3 uses
  %i.aep = phi i32 [ %i.qs, %bb.bp ], [ %i.afk, %bb.bq ]
  %.0277389.i.i = phi <2 x i64> [ %i.aeo, %bb.bp ], [ %i.aez, %bb.bq ]
  %.idx.i216.i = shl nsw i64 %indvars.iv467.i.i, 5
  %i.aeq = getelementptr inbounds i8, ptr %i.hs, i64 %.idx.i216.i ; 2 uses
  %i.aer = load <4 x i32>, ptr %i.aeq, align 16, !tbaa !62
  %i.aes = shl nsw i32 %i.aep, 3
  %i.aet = sext i32 %i.aes to i64                 ; 2 uses
  %i.aeu = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.aet
  %i.aev = load <4 x i32>, ptr %i.aeu, align 16, !tbaa !62 ; 2 uses
  %i.aew = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.aet ; 2 uses
  %i.aex = load <4 x i32>, ptr %i.aew, align 16, !tbaa !62
  %indvars.iv.next468.i.i = add nsw i64 %indvars.iv467.i.i, 2 ; 3 uses
  %.idx518.i.i = shl nsw i64 %indvars.iv.next468.i.i, 5
  %i.aey = getelementptr inbounds i8, ptr %i.hg, i64 %.idx518.i.i
  %i.aez = load <2 x i64>, ptr %i.aey, align 16, !tbaa !62 ; 2 uses
  %i.afa = bitcast <2 x i64> %.0277389.i.i to <4 x i32>
  %i.afb = add <4 x i32> %i.aev, %i.afa
  %i.afc = ashr <4 x i32> %i.afb, splat (i32 1)
  %i.afd = add <4 x i32> %i.afc, %i.aer
  %i.afe = bitcast <2 x i64> %i.aez to <4 x i32>
  %i.aff = add <4 x i32> %i.aev, %i.afe
  %i.afg = ashr <4 x i32> %i.aff, splat (i32 1)
  %i.afh = add <4 x i32> %i.afg, %i.aex
  store <4 x i32> %i.afd, ptr %i.aeq, align 16, !tbaa !62
  store <4 x i32> %i.afh, ptr %i.aew, align 16, !tbaa !62
  %i.afi = add nsw i64 %indvars.iv467.i.i, 3      ; 2 uses
  %i.afj = icmp slt i64 %i.afi, %i.qx
  %i.afk = trunc nsw i64 %i.afi to i32
  br i1 %i.afj, label %bb.bq, label %.loopexit344.loopexit.i.i, !llvm.loop !153

.loopexit344.loopexit.i.i:                        ; preds = %bb.bq
  %i.afl = trunc nsw i64 %indvars.iv.next468.i.i to i32
  br label %.loopexit344.i.i

.loopexit344.i.i:                                 ; preds = %.loopexit344.loopexit.i.i, %bb.bo
  %.5.i.i = phi i32 [ %i.le, %bb.bo ], [ %i.afl, %.loopexit344.loopexit.i.i ] ; 7 uses
  %i.afm = icmp slt i32 %.5.i.i, %spec.select322.i.i
  br i1 %i.afm, label %.preheader343.i.i.preheader, label %.preheader342.i.i

.preheader343.i.i.preheader:                      ; preds = %.loopexit344.i.i
  %i.afn = sub i32 %spec.select322.i.i, %.5.i.i
  %.neg114 = add i32 %.5.i.i, 1
  %xtraiter112 = and i32 %i.afn, 1
  %lcmp.mod113.not = icmp eq i32 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.preheader343.i.i.prol.loopexit, label %.preheader343.i.i.prol

.preheader343.i.i.prol:                           ; preds = %.preheader343.i.i.preheader
  %i.afo = shl i32 %.5.i.i, 3                     ; 2 uses
  %i.afp = add i32 %i.afo, 8
  %i.afq = zext i32 %i.afp to i64
  %i.afr = zext i32 %i.afo to i64
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.afr ; 2 uses
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.afq
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afs, i64 16 ; 2 uses
  %i.afv = load <4 x i32>, ptr %i.afs, align 4, !tbaa !3
  %i.afw = load <4 x i32>, ptr %i.aft, align 4, !tbaa !3
  %i.afx = add nsw <4 x i32> %i.afw, %i.afv
  %i.afy = ashr <4 x i32> %i.afx, splat (i32 1)
  %i.afz = load <4 x i32>, ptr %i.afu, align 4, !tbaa !3
  %i.aga = add nsw <4 x i32> %i.afy, %i.afz
  store <4 x i32> %i.aga, ptr %i.afu, align 4, !tbaa !3
  %i.agb = add nsw i32 %.5.i.i, 1
  br label %.preheader343.i.i.prol.loopexit

.preheader343.i.i.prol.loopexit:                  ; preds = %.preheader343.i.i.prol, %.preheader343.i.i.preheader
  %.6392.i.i.unr = phi i32 [ %.5.i.i, %.preheader343.i.i.preheader ], [ %i.agb, %.preheader343.i.i.prol ]
  %i.agc = icmp eq i32 %spec.select322.i.i, %.neg114
  br i1 %i.agc, label %.preheader342.i.i, label %.preheader343.i.i

.preheader343.i.i:                                ; preds = %.preheader343.i.i.prol.loopexit, %.preheader343.i.i
  %.6392.i.i = phi i32 [ %i.ahd, %.preheader343.i.i ], [ %.6392.i.i.unr, %.preheader343.i.i.prol.loopexit ] ; 3 uses
  %i.agd = shl i32 %.6392.i.i, 3                  ; 2 uses
  %i.age = add i32 %i.agd, 8
  %i.agf = zext i32 %i.age to i64
  %i.agg = zext i32 %i.agd to i64
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.agg ; 2 uses
  %i.agi = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.agf
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agh, i64 16 ; 2 uses
  %i.agk = load <4 x i32>, ptr %i.agh, align 4, !tbaa !3
  %i.agl = load <4 x i32>, ptr %i.agi, align 4, !tbaa !3 ; 2 uses
  %i.agm = add nsw <4 x i32> %i.agl, %i.agk
  %i.agn = ashr <4 x i32> %i.agm, splat (i32 1)
  %i.ago = load <4 x i32>, ptr %i.agj, align 4, !tbaa !3
  %i.agp = add nsw <4 x i32> %i.agn, %i.ago
  store <4 x i32> %i.agp, ptr %i.agj, align 4, !tbaa !3
  %i.agq = shl i32 %.6392.i.i, 3                  ; 2 uses
  %i.agr = add i32 %i.agq, 8
  %i.ags = add i32 %i.agq, 16
  %i.agt = zext i32 %i.ags to i64
  %i.agu = zext i32 %i.agr to i64
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.agu
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.agt
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agv, i64 16 ; 2 uses
  %i.agy = load <4 x i32>, ptr %i.agw, align 4, !tbaa !3
  %i.agz = add nsw <4 x i32> %i.agy, %i.agl
  %i.aha = ashr <4 x i32> %i.agz, splat (i32 1)
  %i.ahb = load <4 x i32>, ptr %i.agx, align 4, !tbaa !3
  %i.ahc = add nsw <4 x i32> %i.aha, %i.ahb
  store <4 x i32> %i.ahc, ptr %i.agx, align 4, !tbaa !3
  %i.ahd = add nsw i32 %.6392.i.i, 2              ; 2 uses
  %exitcond474.not.i.i.1 = icmp eq i32 %i.ahd, %spec.select322.i.i
  br i1 %exitcond474.not.i.i.1, label %.preheader342.i.i, label %.preheader343.i.i, !llvm.loop !154

end_hunk_1
