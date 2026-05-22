inline.NumInlined: 158
inline.NumDeleted: 40
begin_hunk_0_@opj_dwt_decode:bb.a

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
  %.0172299.i = phi i32 [ 1, %.lr.ph300.i ], [ %i.aqm, %bb.bs ] ; 3 uses
  %.0173298.i = phi ptr [ %i.ea, %.lr.ph300.i ], [ %i.hw, %bb.bs ] ; 8 uses
  %.0174297.i = phi i32 [ %i.eh, %.lr.ph300.i ], [ %i.ia, %bb.bs ] ; 11 uses
  %.0175296.i = phi i32 [ %i.em, %.lr.ph300.i ], [ %i.if, %bb.bs ] ; 12 uses
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
  %i.ii = sub i32 %i.if, %.0175296.i              ; 12 uses
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
  %i.pb = zext i32 %i.pa to i64                   ; 3 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.pb
  %i.pd = or disjoint i64 %i.pb, 1                ; 2 uses
  %i.pe = trunc nuw i64 %i.pd to i32
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.pd
  %i.pg = or disjoint i64 %i.pb, 3                ; 2 uses
  %i.ph = trunc nuw i64 %i.pg to i32
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.pg
  %.not320.us.narrow.i.i = icmp sgt i32 %i.ii, 1
  %i.pj = select i1 %.not320.us.narrow.i.i, i32 0, i32 %i.pa
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
  %5 = icmp sgt i32 %i.ii, 0
  %i.pw = icmp sgt i32 %.0175296.i, 1             ; 2 uses
  %or.cond.i213.i = or i1 %i.pw, %5
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
  %i.qz = zext i32 %i.qy to i64
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qz
  %i.rb = select i1 %i.pw, i32 0, i32 %i.qy
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
  %i.te = shl nsw i64 %i.td, 3
  %i.tf = shl i64 %i.td, 3
  %i.tg = shl i64 %i.td, 3
  %i.th = shl i64 %i.td, 3
  %i.ti = getelementptr inbounds i8, ptr %i.hg, i64 %i.te ; 2 uses
  %i.tj = getelementptr i8, ptr %i.hg, i64 %i.tf
  %i.tk = getelementptr i8, ptr %i.hg, i64 %i.tg
  %i.tl = getelementptr i8, ptr %i.hg, i64 %i.th
  %wide.vec = load <8 x i32>, ptr %i.ti, align 4, !tbaa !3
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.tm = shl i64 %i.td, 3
  %i.tn = getelementptr i8, ptr %i.hg, i64 %i.tm
  %i.to = getelementptr i8, ptr %i.tn, i64 4
  %wide.vec92 = load <8 x i32>, ptr %i.to, align 4, !tbaa !3 ; 2 uses
  %strided.vec93 = shufflevector <8 x i32> %wide.vec92, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec94 = shufflevector <8 x i32> %wide.vec92, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.tp = add nsw <4 x i32> %strided.vec94, %strided.vec
  %i.tq = ashr <4 x i32> %i.tp, splat (i32 1)
  %i.tr = getelementptr i8, ptr %i.ti, i64 4
  %i.ts = getelementptr i8, ptr %i.tj, i64 12
  %i.tt = getelementptr i8, ptr %i.tk, i64 20
  %i.tu = getelementptr i8, ptr %i.tl, i64 28
  %i.tv = add nsw <4 x i32> %i.tq, %strided.vec93 ; 4 uses
  %i.tw = extractelement <4 x i32> %i.tv, i64 0
  %i.tx = extractelement <4 x i32> %i.tv, i64 1
  %i.ty = extractelement <4 x i32> %i.tv, i64 2
end_hunk_0
