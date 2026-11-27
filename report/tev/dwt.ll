Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dwt?download=true
inline.NumInlined: 158
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 79
begin_hunk_0_@opj_dwt_decode:bb.a
  %i.dt = mul i32 %i.ds, %i.dk
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 44
  %i.dv = icmp eq i32 %.3189.i, %i.dl
  %spec.select177.i = select i1 %i.dv, i32 %i.bz, i32 %i.dt
  store i32 %spec.select177.i, ptr %i.du, align 4, !tbaa !61
  %i.dw = tail call ptr @opj_aligned_32_malloc(i64 noundef %i.bi) #15 ; 2 uses
  store ptr %i.dw, ptr %i.dm, align 8, !tbaa !62
  %.not172.i = icmp eq ptr %i.dw, null
  br i1 %.not172.i, label %bb.p, label %.critedge179.i

bb.p:                                             ; preds = %bb.o
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15
  tail call void @opj_free(ptr noundef nonnull %i.dm) #15
  br label %.thread.sink.split.i

.critedge179.i:                                   ; preds = %bb.o
  %i.dx = tail call i32 @opj_thread_pool_submit_job(ptr noundef %i.d, ptr noundef nonnull @opj_dwt_decode_v_func, ptr noundef nonnull %i.dm) #15 ; 0 uses
  %exitcond207.not.i = icmp eq i32 %i.ds, %spec.select176.i
  br i1 %exitcond207.not.i, label %bb.q, label %bb.m, !llvm.loop !166

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
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !29 ; 8 uses
  %i.eb = add i32 %2, -1                          ; 4 uses
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [192 x i8], ptr %i.ea, i64 %i.ec ; 14 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !31
  %i.eg = load i32, ptr %i.ea, align 8, !tbaa !32
  %i.eh = sub nsw i32 %i.ef, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !33
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !34
  %i.em = sub nsw i32 %i.ej, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !63 ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !64 ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.es = load i32, ptr %i.er, align 8, !tbaa !65 ; 6 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !66 ; 6 uses
  %i.ev = load i32, ptr %i.ed, align 8, !tbaa !32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !31
  %i.ey = icmp eq i32 %i.ev, %i.ex
  br i1 %i.ey, label %opj_dwt_decode_partial_tile.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ed, i64 4 ; 3 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !34
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !33
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
  %xtraiter151 = and i32 %i.eb, 1
  %i.fh = icmp eq i32 %2, 2
  br i1 %i.fh, label %.lr.ph.i.i6.epil.preheader, label %.lr.ph.i.i6.preheader.new

.lr.ph.i.i6.preheader.new:                        ; preds = %.lr.ph.i.i6.preheader
  %unroll_iter155 = and i32 %i.eb, -2
  br label %.lr.ph.i.i6

bb.v:                                             ; preds = %bb.u
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ed, i64 176
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !67 ; 2 uses
  %i.fk = load i32, ptr %i.ed, align 8, !tbaa !32 ; 2 uses
  %i.fl = sub i32 %i.fj, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ed, i64 180
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !68
  %i.fo = load i32, ptr %i.ez, align 4, !tbaa !34 ; 2 uses
  %i.fp = sub i32 %i.fn, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ed, i64 184
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !69 ; 2 uses
  %i.fs = sub i32 %i.fr, %i.fk
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ed, i64 188
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !70
  %i.fv = sub i32 %i.fu, %i.fo
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !71
  %i.fy = sub i32 %i.fr, %i.fj
  %i.fz = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.fl, i32 noundef %i.fp, i32 noundef %i.fs, i32 noundef %i.fv, ptr noundef %i.fx, i32 noundef 1, i32 noundef %i.fy, i32 noundef 1) #15 ; 0 uses
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.fe) #15
  br label %opj_dwt_decode_partial_tile.exit

.lr.ph.i.i6:                                      ; preds = %.lr.ph.i.i6, %.lr.ph.i.i6.preheader.new
  %.017.i.i7 = phi i32 [ 0, %.lr.ph.i.i6.preheader.new ], [ %.2.i.i10.1, %.lr.ph.i.i6 ]
  %.01116.i.i8 = phi ptr [ %i.ea, %.lr.ph.i.i6.preheader.new ], [ %i.gk, %.lr.ph.i.i6 ] ; 8 uses
  %niter156 = phi i32 [ 0, %.lr.ph.i.i6.preheader.new ], [ %niter156.next.1, %.lr.ph.i.i6 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 192
  %i.gb = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 200
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !31, !alias.scope !196
  %i.gd = load i32, ptr %i.ga, align 8, !tbaa !32, !alias.scope !196
  %i.ge = sub nsw i32 %i.gc, %i.gd
  %spec.select.i.i9 = tail call i32 @llvm.umax.i32(i32 %.017.i.i7, i32 %i.ge)
  %i.gf = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 204
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !33, !alias.scope !196
  %i.gh = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 196
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !34, !alias.scope !196
  %i.gj = sub nsw i32 %i.gg, %i.gi
  %.2.i.i10 = tail call i32 @llvm.umax.i32(i32 %spec.select.i.i9, i32 %i.gj)
  %i.gk = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 384 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 392
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !31, !alias.scope !196
  %i.gn = load i32, ptr %i.gk, align 8, !tbaa !32, !alias.scope !196
  %i.go = sub nsw i32 %i.gm, %i.gn
  %spec.select.i.i9.1 = tail call i32 @llvm.umax.i32(i32 %.2.i.i10, i32 %i.go)
  %i.gp = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 396
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !33, !alias.scope !196
  %i.gr = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 388
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !34, !alias.scope !196
  %i.gt = sub nsw i32 %i.gq, %i.gs
  %.2.i.i10.1 = tail call i32 @llvm.umax.i32(i32 %spec.select.i.i9.1, i32 %i.gt) ; 3 uses
  %niter156.next.1 = add i32 %niter156, 2         ; 2 uses
  %niter156.ncmp.1 = icmp eq i32 %niter156.next.1, %unroll_iter155
  br i1 %niter156.ncmp.1, label %opj_dwt_max_resolution.exit.i12.unr-lcssa, label %.lr.ph.i.i6, !llvm.loop !0

opj_dwt_max_resolution.exit.i12.unr-lcssa:        ; preds = %.lr.ph.i.i6
  %lcmp.mod152.not = icmp eq i32 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %opj_dwt_max_resolution.exit.i12, label %.lr.ph.i.i6.epil.preheader

.lr.ph.i.i6.epil.preheader:                       ; preds = %opj_dwt_max_resolution.exit.i12.unr-lcssa, %.lr.ph.i.i6.preheader
  %.017.i.i7.epil.init = phi i32 [ 0, %.lr.ph.i.i6.preheader ], [ %.2.i.i10.1, %opj_dwt_max_resolution.exit.i12.unr-lcssa ]
  %.01116.i.i8.epil.init = phi ptr [ %i.ea, %.lr.ph.i.i6.preheader ], [ %i.gk, %opj_dwt_max_resolution.exit.i12.unr-lcssa ] ; 4 uses
  %lcmp.mod154 = trunc i32 %i.eb to i1
  tail call void @llvm.assume(i1 %lcmp.mod154)
  %i.gu = getelementptr inbounds nuw i8, ptr %.01116.i.i8.epil.init, i64 192
  %i.gv = getelementptr inbounds nuw i8, ptr %.01116.i.i8.epil.init, i64 200
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !31, !alias.scope !196
  %i.gx = load i32, ptr %i.gu, align 8, !tbaa !32, !alias.scope !196
  %i.gy = sub nsw i32 %i.gw, %i.gx
  %spec.select.i.i9.epil = tail call i32 @llvm.umax.i32(i32 %.017.i.i7.epil.init, i32 %i.gy)
  %i.gz = getelementptr inbounds nuw i8, ptr %.01116.i.i8.epil.init, i64 204
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !33, !alias.scope !196
  %i.hb = getelementptr inbounds nuw i8, ptr %.01116.i.i8.epil.init, i64 196
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !34, !alias.scope !196
  %i.hd = sub nsw i32 %i.ha, %i.hc
  %.2.i.i10.epil = tail call i32 @llvm.umax.i32(i32 %spec.select.i.i9.epil, i32 %i.hd)
  br label %opj_dwt_max_resolution.exit.i12

opj_dwt_max_resolution.exit.i12:                  ; preds = %opj_dwt_max_resolution.exit.i12.unr-lcssa, %.lr.ph.i.i6.epil.preheader
  %.2.i.i10.lcssa = phi i32 [ %.2.i.i10.1, %opj_dwt_max_resolution.exit.i12.unr-lcssa ], [ %.2.i.i10.epil, %.lr.ph.i.i6.epil.preheader ]
  %i.he = zext i32 %.2.i.i10.lcssa to i64
  %i.hf = shl nuw nsw i64 %i.he, 4
  %i.hg = tail call ptr @opj_aligned_32_malloc(i64 noundef %i.hf) #15 ; 142 uses
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
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 4 ; 8 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 12 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hg, i64 17179869168 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hg, i64 17179869172 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hg, i64 17179869180 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hg, i64 16 ; 11 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hg, i64 20
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hg, i64 24 ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hg, i64 28 ; 5 uses
  %scevgep = getelementptr i8, ptr %i.hg, i64 8
  %scevgep114 = getelementptr i8, ptr %i.hg, i64 4
  %scevgep116 = getelementptr i8, ptr %i.hg, i64 8
  %scevgep118 = getelementptr i8, ptr %i.hg, i64 4
  %scevgep120 = getelementptr i8, ptr %i.hg, i64 4
  br label %bb.x

bb.w:                                             ; preds = %opj_dwt_max_resolution.exit.i12
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.fe) #15
  br label %opj_dwt_decode_partial_tile.exit

bb.x:                                             ; preds = %bb.bs, %.lr.ph300.i
  %.0181299.i = phi i32 [ %i.em, %.lr.ph300.i ], [ %i.if, %bb.bs ] ; 13 uses
  %.0182298.i = phi i32 [ %i.eh, %.lr.ph300.i ], [ %i.ia, %bb.bs ] ; 11 uses
  %.0183297.i = phi ptr [ %i.ea, %.lr.ph300.i ], [ %i.hw, %bb.bs ] ; 8 uses
  %.0184296.i = phi i32 [ 1, %.lr.ph300.i ], [ %i.asi, %bb.bs ] ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.0183297.i, i64 192 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.0183297.i, i64 200
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !31
  %i.hz = load i32, ptr %i.hw, align 8, !tbaa !32 ; 2 uses
  %i.ia = sub i32 %i.hy, %i.hz                    ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0183297.i, i64 204
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !33
  %i.id = getelementptr inbounds nuw i8, ptr %.0183297.i, i64 196
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !34 ; 2 uses
  %i.if = sub i32 %i.ic, %i.ie                    ; 5 uses
  %i.ig = sub i32 %i.ia, %.0182298.i              ; 10 uses
  %i.ih = srem i32 %i.hz, 2                       ; 2 uses
  %i.ii = sub i32 %i.if, %.0181299.i              ; 11 uses
  %i.ij = srem i32 %i.ie, 2                       ; 2 uses
  %i.ik = load i32, ptr %i.hh, align 4, !tbaa !28 ; 2 uses
  %i.il = icmp eq i32 %i.ik, %.0184296.i
  br i1 %i.il, label %opj_dwt_get_band_coordinates.exit206.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.im = sub i32 %i.ik, %.0184296.i              ; 2 uses
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
  %i.ka = phi i32 [ %.ph.i, %bb.y ], [ %.ph.i, %bb.z ], [ %i.eo, %bb.x ] ; 7 uses
  %i.kb = phi i32 [ %.ph275.i, %bb.y ], [ %.ph275.i, %bb.z ], [ %i.eq, %bb.x ]
  %i.kc = phi i32 [ %.ph280.i, %bb.y ], [ %.ph280.i, %bb.z ], [ %i.eu, %bb.x ]
  %i.kd = phi i32 [ %.ph284.i, %bb.y ], [ %.ph284.i, %bb.z ], [ %i.es, %bb.x ]
  %i.ke = phi i32 [ 0, %bb.y ], [ %i.jw, %bb.z ], [ %i.eu, %bb.x ]
  %i.kf = getelementptr inbounds nuw i8, ptr %.0183297.i, i64 224
  %i.kg = getelementptr inbounds nuw i8, ptr %.0183297.i, i64 272
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !75 ; 5 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.0183297.i, i64 228
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !76 ; 2 uses
  %i.kk = load i32, ptr %i.kf, align 8, !tbaa !75 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.0183297.i, i64 276
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !76 ; 2 uses
  %i.kn = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.ka, i32 %i.kh) ; 4 uses
  %i.ko = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kb, i32 %i.kj)
  %i.kp = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.jz, i32 %i.kh)
  %i.kq = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kc, i32 %i.kj)
  %i.kr = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.jy, i32 %i.kk)
  %i.ks = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kd, i32 %i.kk)
  %i.kt = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.jx, i32 %i.km)
  %i.ku = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.ke, i32 %i.km)
  %i.kv = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kn, i32 2) ; 17 uses
  %i.kw = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.kp, i32 range(i32 2, 5) 2)
  %i.kx = tail call noundef i32 @llvm.umin.i32(i32 %i.kw, i32 %.0182298.i) ; 8 uses
  %i.ky = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kr, i32 2) ; 8 uses
  %i.kz = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.ks, i32 range(i32 2, 5) 2)
  %i.la = tail call noundef i32 @llvm.umin.i32(i32 %i.kz, i32 %i.ig) ; 8 uses
  %i.lb = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.ko, i32 2) ; 13 uses
  %i.lc = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.kq, i32 range(i32 2, 5) 2)
  %i.ld = tail call noundef i32 @llvm.umin.i32(i32 %i.lc, i32 %.0181299.i) ; 9 uses
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
  %.sink381.i.a = phi i32 [ %i.le, %bb.aa ], [ %i.lb, %opj_dwt_get_band_coordinates.exit206.i ]
  %.sink380.i.a = phi i32 [ %i.lb, %bb.aa ], [ %i.le, %opj_dwt_get_band_coordinates.exit206.i ]
  %.sink376.i = phi i32 [ %i.lg, %bb.aa ], [ %i.ld, %opj_dwt_get_band_coordinates.exit206.i ]
  %.sink375.i = phi i32 [ %i.ld, %bb.aa ], [ %i.lg, %opj_dwt_get_band_coordinates.exit206.i ]
  %i.ls = shl i32 %.sink381.i.a, 1
  %i.lt = shl i32 %.sink380.i.a, 1
  %i.lu = or disjoint i32 %i.lt, 1
  %i.lv = tail call noundef i32 @llvm.umin.i32(i32 %i.ls, i32 %i.lu) ; 2 uses
  %i.lw = shl i32 %.sink376.i, 1
  %i.lx = shl i32 %.sink375.i, 1
  %i.ly = or disjoint i32 %i.lx, 1
  %i.lz = tail call noundef i32 @llvm.umax.i32(i32 %i.lw, i32 %i.ly)
  %i.ma = tail call noundef i32 @llvm.umin.i32(i32 %i.lz, i32 %i.if)
  %.not306.i = icmp eq i32 %i.if, 0
  %.pre315.i = add i32 %i.le, %.0181299.i         ; 2 uses
  %.pre316.i = add i32 %i.lg, %.0181299.i         ; 2 uses
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
  %i.mm = add i32 %i.ky, %.0182298.i
  %i.mn = add i32 %i.la, %.0182298.i
  %i.mo = sub nsw i64 0, %i.mh
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.mo
  %i.mq = shl i32 %i.ky, 1
  %i.mr = zext i32 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.mr
  %i.mt = icmp eq i32 %.0182298.i, 0
  %i.mu = icmp eq i32 %i.ig, 1
  %or.cond3.i.i = and i1 %i.mt, %i.mu
  %i.mv = icmp slt i32 %i.kv, %i.kx               ; 2 uses
  %i.mw = shl i32 %i.ig, 1                        ; 2 uses
  %i.mx = add i32 %i.mw, -2
  %i.my = sext i32 %i.mx to i64                   ; 2 uses
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.my
  %i.na = icmp slt i32 %i.ky, %i.la               ; 2 uses
  %i.nb = shl i32 %.0182298.i, 1                  ; 2 uses
  %i.nc = add i32 %i.nb, -1
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.nd ; 2 uses
  %i.nf = sext i32 %i.ky to i64                   ; 6 uses
  %i.ng = sext i32 %.0182298.i to i64             ; 2 uses
  %wide.trip.count.i.i = sext i32 %i.la to i64
  %i.nh = icmp sgt i32 %i.ig, 0
  %i.ni = icmp sgt i32 %.0182298.i, 1
  %or.cond.i.i = or i1 %i.ni, %i.nh
  %i.nj = icmp slt i32 %i.kv, 1
  %.not171.not.i.i = icmp sgt i32 %i.kv, %i.ig
  %i.nk = add i32 %i.mj, -1
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = add i32 %i.mw, -1
  %i.nn = sext i32 %i.nm to i64                   ; 3 uses
  %.pn.i.i = select i1 %.not171.not.i.i, i64 %i.nn, i64 %i.nl
  %.in.ph.i.i = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %.pn.i.i
  %5 = icmp slt i32 %i.kv, 0
  %.not172.i.i = icmp slt i32 %i.kv, %i.ig
  %i.no = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.nn ; 2 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.mk
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 4
  %i.nr = sext i32 %i.mj to i64
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.nr ; 2 uses
  %spec.select.i209.i = tail call i32 @llvm.smin.i32(i32 %i.kx, i32 %i.ig) ; 9 uses
  %.0150216.i.i = add nuw i32 %i.kv, 1            ; 3 uses
  %i.nt = icmp slt i32 %.0150216.i.i, %spec.select.i209.i
  %i.nu = sext i32 %.0150216.i.i to i64           ; 4 uses
  %i.nv = sext i32 %i.ig to i64                   ; 2 uses
  %wide.trip.count240.i.i = sext i32 %i.kx to i64
  %i.nw = add i32 %.0182298.i, -1                 ; 2 uses
  %i.nx = icmp sgt i32 %i.nw, %i.ky
  %spec.select191.i.i = tail call i32 @llvm.smin.i32(i32 %i.la, i32 %i.nw)
  %i.ny = sext i32 %spec.select191.i.i to i64     ; 2 uses
  %i.nz = add i32 %i.nb, -2
  %i.oa = sext i32 %i.nz to i64                   ; 2 uses
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.oa
  %i.oc = zext i32 %i.ll to i64
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.oc
  %..i = select i1 %.not172.i.i, ptr %i.nq, ptr %i.no
  %i.oe = add i32 %spec.select.i209.i, -2
  %umin = tail call i32 @llvm.umin.i32(i32 %i.ka, i32 %i.kh)
  %i.of = add i32 %i.oe, %umin
  %umin95 = tail call i32 @llvm.umin.i32(i32 %i.kn, i32 2)
  %i.og = add i32 %i.of, %umin95
  %i.oh = sub i32 %i.og, %i.ka                    ; 2 uses
  %i.oi = shl i32 %i.kv, 1
  %i.oj = shl nsw i64 %i.nu, 3                    ; 3 uses
  %i.ok = add i32 %spec.select.i209.i, -2
  %umin111 = tail call i32 @llvm.umin.i32(i32 %i.ka, i32 %i.kh)
  %i.ol = add i32 %i.ok, %umin111
  %umin112 = tail call i32 @llvm.umin.i32(i32 %i.kn, i32 2)
  %i.om = add i32 %i.ol, %umin112
  %i.on = sub i32 %i.om, %i.ka
  %i.oo = zext i32 %i.on to i64
  %i.op = shl nuw nsw i64 %i.oo, 3                ; 2 uses
  %i.oq = add nsw i64 %i.oj, %i.op                ; 2 uses
  %scevgep113 = getelementptr i8, ptr %scevgep, i64 %i.oq
  %scevgep115 = getelementptr i8, ptr %scevgep114, i64 %i.oj
  %i.or = shl i32 %i.kv, 1
  %i.os = sext i32 %i.or to i64
  %i.ot = shl nsw i64 %i.os, 2                    ; 2 uses
  %i.ou = getelementptr i8, ptr %scevgep116, i64 %i.op
  %scevgep117 = getelementptr i8, ptr %i.ou, i64 %i.ot
  %scevgep119 = getelementptr i8, ptr %scevgep118, i64 %i.ot
  %scevgep121 = getelementptr i8, ptr %scevgep120, i64 %i.oq ; 2 uses
  %scevgep122 = getelementptr i8, ptr %i.hg, i64 %i.oj ; 2 uses
  %i.ov = tail call i32 @llvm.umin.i32(i32 %i.ka, i32 %i.kh)
  %i.ow = tail call i32 @llvm.umin.i32(i32 %i.kn, i32 2)
  %i.ox = add i32 %spec.select.i209.i, %i.ov
  %i.oy = add i32 %i.ox, %i.ow
  %i.oz = add i32 %i.oy, -2
  %i.pa = sub i32 %i.oz, %i.ka                    ; 2 uses
  %i.pb = zext i32 %i.pa to i64
  %i.pc = add nuw nsw i64 %i.pb, 1                ; 2 uses
  %min.iters.check124 = icmp ult i32 %i.pa, 12
  %mul.overflow = icmp slt i32 %i.oh, 0
  %i.pd = add i32 %i.kv, %i.oh
  %i.pe = shl i32 %i.pd, 1
  %i.pf = icmp slt i32 %i.pe, %i.oi
  %i.pg = or i1 %i.pf, %mul.overflow
  %bound0 = icmp ult ptr %scevgep122, %scevgep117
  %bound1 = icmp ult ptr %scevgep119, %scevgep121
  %found.conflict = and i1 %bound0, %bound1
  %bound0125 = icmp ult ptr %scevgep122, %scevgep113
  %bound1126 = icmp ult ptr %scevgep115, %scevgep121
  %found.conflict127 = and i1 %bound0125, %bound1126
  %conflict.rdx = or i1 %found.conflict, %found.conflict127
  %i.ph = and i64 %i.pc, 3                        ; 2 uses
  %i.pi = icmp eq i64 %i.ph, 0
  %i.pj = select i1 %i.pi, i64 4, i64 %i.ph
  %n.vec129 = sub nsw i64 %i.pc, %i.pj            ; 3 uses
  %i.pk = add nsw i64 %n.vec129, %i.nu
  %i.pl = trunc i64 %n.vec129 to i32
  %i.pm = add i32 %i.kv, %i.pl
  %i.pn = add nsw i64 %i.nf, 1
  %i.po = tail call i64 @llvm.smax.i64(i64 %i.ny, i64 %i.pn)
  %i.pp = sub i64 %i.po, %i.nf                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.pp, 5
  %i.pq = and i64 %i.pp, 3                        ; 2 uses
  %i.pr = icmp eq i64 %i.pq, 0
  %i.ps = select i1 %i.pr, i64 4, i64 %i.pq
  %n.vec = sub i64 %i.pp, %i.ps                   ; 2 uses
  %i.pt = add i64 %n.vec, %i.nf
  br label %bb.ac

.preheader.i17:                                   ; preds = %bb.bh, %bb.ab
  %i.pu = shl nsw i32 %i.ij, 2                    ; 2 uses
  %i.pv = sext i32 %i.pu to i64
  %i.pw = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.pv
  %i.px = shl i32 %i.lb, 3                        ; 3 uses
  %i.py = zext i32 %i.px to i64                   ; 2 uses
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.py
  %i.qa = sub nsw i32 4, %i.pu
  %i.qb = zext nneg i32 %i.qa to i64
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qb
  %i.qd = shl i32 %i.le, 3                        ; 2 uses
  %i.qe = zext i32 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %i.qe
  %i.qg = icmp eq i32 %.0181299.i, 0
  %i.qh = icmp eq i32 %i.ii, 1
  %or.cond3.i211.i = and i1 %i.qg, %i.qh
  %i.qi = icmp slt i32 %i.lb, %i.ld               ; 2 uses
  %i.qj = shl i32 %i.ii, 3                        ; 2 uses
  %i.qk = add i32 %i.qj, -8                       ; 4 uses
  %.not320.us.i.i = icmp sgt i32 %i.ii, 0         ; 2 uses
  %i.ql = zext i32 %i.qk to i64                   ; 3 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ql
  %i.qn = or disjoint i64 %i.ql, 1                ; 2 uses
  %i.qo = trunc nuw i64 %i.qn to i32
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qn
  %i.qq = or disjoint i64 %i.ql, 3                ; 2 uses
  %i.qr = trunc nuw i64 %i.qq to i32
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qq
  %i.qt = select i1 %.not320.us.i.i, i32 0, i32 %i.qk
  %i.qu = zext i32 %i.qt to i64
  %.in321.us.us.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qu
  %i.qv = icmp slt i32 %i.le, %i.lg               ; 2 uses
  %i.qw = shl i32 %.0181299.i, 3                  ; 4 uses
  %i.qx = add i32 %i.qw, -4                       ; 6 uses
  %i.qy = zext i32 %i.qx to i64
  %i.qz = or disjoint i32 %i.qx, 1                ; 2 uses
  %i.ra = or disjoint i32 %i.qx, 2                ; 2 uses
  %i.rb = or disjoint i32 %i.qx, 3                ; 2 uses
  %.in315.us370.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qy ; 3 uses
  %i.rc = add i32 %i.qw, -2
  %.in315.v.us369.2.i.i = zext i32 %i.rc to i64
  %.in315.us370.2.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us369.2.i.i
  %i.rd = getelementptr inbounds nuw i8, ptr %.in315.us370.i.i, i64 8
  %i.re = add i32 %i.qw, -1
  %.in315.v.us369.3.i.i = zext i32 %i.re to i64
  %.in315.us370.3.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us369.3.i.i
  %i.rf = getelementptr inbounds nuw i8, ptr %.in315.us370.i.i, i64 12
  %i.rg = icmp sgt i32 %.0181299.i, 1
  %or.cond.i213.i = or i1 %i.rg, %.not320.us.i.i
  %i.rh = icmp slt i32 %i.lb, 1
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.lb, i32 %i.ii)
  %.pn341.in.i.i = shl i32 %..i.i, 3
  %.pn341.i.i = add i32 %.pn341.in.i.i, -4
  %6 = icmp slt i32 %i.lb, 0
  %.not312.i.i = icmp slt i32 %i.lb, %i.ii
  %i.ri = add i32 %i.qj, -4                       ; 2 uses
  %invariant.op.i.i = or disjoint i32 %i.px, 4
  %i.rj = zext i32 %i.ri to i64                   ; 2 uses
  %i.rk = zext i32 %.pn341.i.i to i64
  %i.rl = zext i32 %invariant.op.i.i to i64
  %.in311.ph.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.rk ; 4 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.py ; 7 uses
  %.in311.ph.1.i.i = getelementptr inbounds nuw i8, ptr %.in311.ph.i.i, i64 4
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 4 ; 2 uses
  %.in311.ph.2.i.i = getelementptr inbounds nuw i8, ptr %.in311.ph.i.i, i64 8
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rm, i64 8 ; 4 uses
  %.in311.ph.3.i.i = getelementptr inbounds nuw i8, ptr %.in311.ph.i.i, i64 12
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rm, i64 12 ; 2 uses
  %i.rq = add nuw nsw i32 %i.lb, 1                ; 2 uses
  %spec.select.i218.i = tail call i32 @llvm.smin.i32(i32 %i.ld, i32 %i.ii) ; 8 uses
  %i.rr = add nuw nsw i32 %i.lb, 2                ; 2 uses
  %i.rs = icmp slt i32 %i.rr, %spec.select.i218.i
  %i.rt = sext i32 %i.px to i64
  %i.ru = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.rt
  %i.rv = sext i32 %i.rq to i64
  %i.rw = sext i32 %spec.select.i218.i to i64
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.rj ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 12
  %i.sa = add i32 %.0181299.i, -1
  %spec.select322.i.i = tail call i32 @llvm.smin.i32(i32 %i.lg, i32 %i.sa) ; 8 uses
  %i.sb = add nuw nsw i32 %i.le, 1                ; 2 uses
  %i.sc = icmp slt i32 %i.sb, %spec.select322.i.i
  %i.sd = sext i32 %i.qd to i64
  %i.se = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.sd
  %i.sf = sext i32 %i.le to i64
  %i.sg = sext i32 %spec.select322.i.i to i64
  %i.sh = add i32 %i.qw, -8                       ; 3 uses
  %.not304.us.i.i = icmp sgt i32 %.0181299.i, 0
  %i.si = zext i32 %i.sh to i64
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.si
  %i.sk = select i1 %.not304.us.i.i, i32 0, i32 %i.sh
  %i.sl = zext i32 %i.sk to i64
  %.in305.us.us.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.sl ; 3 uses
  %.in305.us.us.1.i.i = getelementptr inbounds nuw i8, ptr %.in305.us.us.i.i, i64 4
  %.in305.us.us.3.i.i = getelementptr inbounds nuw i8, ptr %.in305.us.us.i.i, i64 12
  %i.sm = shl i32 %i.lv, 2
  %i.sn = zext i32 %i.sm to i64
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.sn
  %.301.v.i = select i1 %.not312.i.i, i64 %i.rl, i64 %i.rj
  %.301.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.301.v.i ; 4 uses
  %.302.i = getelementptr inbounds nuw i8, ptr %.301.i, i64 4
  %.303.i = getelementptr inbounds nuw i8, ptr %.301.i, i64 8
  %.304.i = getelementptr inbounds nuw i8, ptr %.301.i, i64 12
  br label %bb.bi

bb.ac:                                            ; preds = %bb.bh, %.lr.ph.i14
  %.0176295.i = phi i32 [ 0, %.lr.ph.i14 ], [ %.pre-phi319.i, %bb.bh ] ; 9 uses
  %.not189.i = icmp uge i32 %.0176295.i, %i.lb
  %i.sp = icmp ult i32 %.0176295.i, %i.ld
  %or.cond.i15 = and i1 %.not189.i, %i.sp
  br i1 %or.cond.i15, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not190.i = icmp uge i32 %.0176295.i, %.pre315.i
  %i.sq = icmp ult i32 %.0176295.i, %.pre316.i
  %or.cond291.i = and i1 %.not190.i, %i.sq
  br i1 %or.cond291.i, label %bb.ae, label %._crit_edge314.i

._crit_edge314.i:                                 ; preds = %bb.ad
  %.pre318.i = add nuw i32 %.0176295.i, 1
  br label %bb.bh

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %i.mb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.me, align 4, !tbaa !46
  store i32 0, ptr %i.mg, align 4, !tbaa !46
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.sr = add nuw i32 %.0176295.i, 1              ; 4 uses
  %i.ss = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.kv, i32 noundef %.0176295.i, i32 noundef %i.kx, i32 noundef %i.sr, ptr noundef nonnull %i.ml, i32 noundef 2, i32 noundef 0, i32 noundef 1) #15 ; 0 uses
  %i.st = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.mm, i32 noundef %.0176295.i, i32 noundef %i.mn, i32 noundef %i.sr, ptr noundef nonnull %i.ms, i32 noundef 2, i32 noundef 0, i32 noundef 1) #15 ; 0 uses
  br i1 %i.lh, label %bb.ah, label %bb.ax

bb.ah:                                            ; preds = %bb.ag
  br i1 %or.cond.i.i, label %bb.ai, label %opj_dwt_decode_partial_1.exit.i

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.mv, label %bb.aj, label %.loopexit208.i.i

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.nj, label %bb.ak, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.aj
  %i.su = load i32, ptr %.in.ph.i.i, align 4, !tbaa !46
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.sv = load i32, ptr %i.hm, align 4, !tbaa !46 ; 3 uses
  br i1 %5, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak, %.thread.i.i
  %i.sw = phi i32 [ %i.su, %.thread.i.i ], [ %i.sv, %bb.ak ]
  %.pre.i = load i32, ptr %..i, align 4, !tbaa !46
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.sx = phi i32 [ %i.sv, %bb.ak ], [ %.pre.i, %bb.al ]
  %i.sy = phi i32 [ %i.sv, %bb.ak ], [ %i.sw, %bb.al ]
  %i.sz = add i32 %i.sx, 2
  %i.ta = add i32 %i.sz, %i.sy
  %i.tb = ashr i32 %i.ta, 2
  %i.tc = load i32, ptr %i.ns, align 4, !tbaa !46
  %i.td = sub nsw i32 %i.tc, %i.tb
  store i32 %i.td, ptr %i.ns, align 4, !tbaa !46
  br i1 %i.nt, label %.lr.ph219.i.i.preheader, label %.preheader207.i.i

.lr.ph219.i.i.preheader:                          ; preds = %bb.am
  %brmerge = select i1 %min.iters.check124, i1 true, i1 %i.pg
  %brmerge173 = select i1 %brmerge, i1 true, i1 %conflict.rdx
  br i1 %brmerge173, label %.lr.ph219.i.i.preheader143, label %vector.body130

.lr.ph219.i.i.preheader143:                       ; preds = %.lr.ph219.i.i.preheader, %vector.body130
  %indvars.iv233.i.i.ph = phi i64 [ %i.nu, %.lr.ph219.i.i.preheader ], [ %i.pk, %vector.body130 ] ; 5 uses
  %.0150.in217.i.i.ph = phi i32 [ %i.kv, %.lr.ph219.i.i.preheader ], [ %i.pm, %vector.body130 ] ; 2 uses
  %i.te = trunc i64 %indvars.iv233.i.i.ph to i32  ; 2 uses
  %i.tf = sub i32 %spec.select.i209.i, %i.te
  %.neg = add i32 %i.te, 1
  %xtraiter157 = and i32 %i.tf, 1
  %lcmp.mod158.not = icmp eq i32 %xtraiter157, 0
  br i1 %lcmp.mod158.not, label %.lr.ph219.i.i.prol.loopexit, label %.lr.ph219.i.i.prol

.lr.ph219.i.i.prol:                               ; preds = %.lr.ph219.i.i.preheader143
  %i.tg = shl nsw i32 %.0150.in217.i.i.ph, 1
  %i.th = sext i32 %i.tg to i64
  %i.ti = getelementptr [4 x i8], ptr %i.hg, i64 %i.th
  %i.tj = getelementptr i8, ptr %i.ti, i64 4
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !46
  %.idx256.i.i.prol = shl nsw i64 %indvars.iv233.i.i.ph, 3
  %i.tl = getelementptr i8, ptr %i.hg, i64 %.idx256.i.i.prol ; 3 uses
  %i.tm = getelementptr i8, ptr %i.tl, i64 4
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !46
  %i.to = add i32 %i.tk, 2
  %i.tp = add i32 %i.to, %i.tn
  %i.tq = ashr i32 %i.tp, 2
  %i.tr = load i32, ptr %i.tl, align 4, !tbaa !46
  %i.ts = sub nsw i32 %i.tr, %i.tq
  store i32 %i.ts, ptr %i.tl, align 4, !tbaa !46
  %indvars.iv.next234.i.i.prol = add nsw i64 %indvars.iv233.i.i.ph, 1
  %i.tt = trunc nsw i64 %indvars.iv233.i.i.ph to i32
  br label %.lr.ph219.i.i.prol.loopexit

.lr.ph219.i.i.prol.loopexit:                      ; preds = %.lr.ph219.i.i.prol, %.lr.ph219.i.i.preheader143
  %indvars.iv233.i.i.unr = phi i64 [ %indvars.iv233.i.i.ph, %.lr.ph219.i.i.preheader143 ], [ %indvars.iv.next234.i.i.prol, %.lr.ph219.i.i.prol ]
  %.0150.in217.i.i.unr = phi i32 [ %.0150.in217.i.i.ph, %.lr.ph219.i.i.preheader143 ], [ %i.tt, %.lr.ph219.i.i.prol ]
  %i.tu = icmp eq i32 %spec.select.i209.i, %.neg
  br i1 %i.tu, label %.preheader207.i.i, label %.lr.ph219.i.i

vector.body130:                                   ; preds = %.lr.ph219.i.i.preheader, %vector.body130
  %index131 = phi i64 [ %index.next137, %vector.body130 ], [ 0, %.lr.ph219.i.i.preheader ] ; 3 uses
  %i.tv = add i64 %index131, %i.nu                ; 4 uses
  %i.tw = trunc i64 %index131 to i32
  %i.tx = add i32 %i.kv, %i.tw
  %i.ty = shl nsw i32 %i.tx, 1
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr [4 x i8], ptr %i.hg, i64 %i.tz
  %i.ub = getelementptr i8, ptr %i.ua, i64 4
  %wide.vec132 = load <8 x i32>, ptr %i.ub, align 4, !tbaa !46, !alias.scope !197
  %strided.vec133 = shufflevector <8 x i32> %wide.vec132, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.uc = shl i64 %i.tv, 3
  %i.ud = shl i64 %i.tv, 3
  %i.ue = shl i64 %i.tv, 3
  %i.uf = shl i64 %i.tv, 3
  %i.ug = getelementptr i8, ptr %i.hg, i64 %i.uc  ; 2 uses
  %i.uh = getelementptr i8, ptr %i.hg, i64 %i.ud
  %i.ui = getelementptr i8, ptr %i.uh, i64 8
  %i.uj = getelementptr i8, ptr %i.hg, i64 %i.ue
  %i.uk = getelementptr i8, ptr %i.uj, i64 16
  %i.ul = getelementptr i8, ptr %i.hg, i64 %i.uf
  %i.um = getelementptr i8, ptr %i.ul, i64 24
  %wide.vec134 = load <8 x i32>, ptr %i.ug, align 4, !tbaa !46 ; 2 uses
  %strided.vec135 = shufflevector <8 x i32> %wide.vec134, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec136 = shufflevector <8 x i32> %wide.vec134, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.un = add <4 x i32> %strided.vec133, splat (i32 2)
  %i.uo = add <4 x i32> %i.un, %strided.vec136
  %i.up = ashr <4 x i32> %i.uo, splat (i32 2)
  %i.uq = sub nsw <4 x i32> %strided.vec135, %i.up ; 4 uses
  %i.ur = extractelement <4 x i32> %i.uq, i64 0
  store i32 %i.ur, ptr %i.ug, align 4, !tbaa !46, !alias.scope !198, !noalias !199
  %i.us = extractelement <4 x i32> %i.uq, i64 1
  store i32 %i.us, ptr %i.ui, align 4, !tbaa !46, !alias.scope !198, !noalias !199
  %i.ut = extractelement <4 x i32> %i.uq, i64 2
  store i32 %i.ut, ptr %i.uk, align 4, !tbaa !46, !alias.scope !198, !noalias !199
  %i.uu = extractelement <4 x i32> %i.uq, i64 3
  store i32 %i.uu, ptr %i.um, align 4, !tbaa !46, !alias.scope !198, !noalias !199
  %index.next137 = add nuw i64 %index131, 4       ; 2 uses
  %i.uv = icmp eq i64 %index.next137, %n.vec129
  br i1 %i.uv, label %.lr.ph219.i.i.preheader143, label %vector.body130, !llvm.loop !173

.preheader207.i.i:                                ; preds = %.lr.ph219.i.i.prol.loopexit, %.lr.ph219.i.i, %bb.am
  %.0150.lcssa.i.i = phi i32 [ %.0150216.i.i, %bb.am ], [ %spec.select.i209.i, %.lr.ph219.i.i ], [ %spec.select.i209.i, %.lr.ph219.i.i.prol.loopexit ] ; 2 uses
  %i.uw = icmp slt i32 %.0150.lcssa.i.i, %i.kx
  br i1 %i.uw, label %.lr.ph223.i.i, label %.loopexit208.i.i

.lr.ph223.i.i:                                    ; preds = %.preheader207.i.i
  %i.ux = sext i32 %.0150.lcssa.i.i to i64
  br label %bb.an

.lr.ph219.i.i:                                    ; preds = %.lr.ph219.i.i.prol.loopexit, %.lr.ph219.i.i
  %indvars.iv233.i.i = phi i64 [ %indvars.iv.next234.i.i.1, %.lr.ph219.i.i ], [ %indvars.iv233.i.i.unr, %.lr.ph219.i.i.prol.loopexit ] ; 4 uses
  %.0150.in217.i.i = phi i32 [ %i.vz, %.lr.ph219.i.i ], [ %.0150.in217.i.i.unr, %.lr.ph219.i.i.prol.loopexit ]
end_hunk_0
begin_hunk_1_@opj_dwt_decode:bb.a
  %i.xr = icmp slt i32 %.2.lcssa.i.i, %i.la
  br i1 %i.xr, label %.lr.ph229.i.i, label %opj_dwt_decode_partial_1.exit.i

.lr.ph225.i.i:                                    ; preds = %.lr.ph225.i.i.preheader142, %.lr.ph225.i.i
  %indvars.iv242.i.i = phi i64 [ %indvars.iv.next243.i.i, %.lr.ph225.i.i ], [ %indvars.iv242.i.i.ph, %.lr.ph225.i.i.preheader142 ] ; 2 uses
  %.idx259.i.i = shl nsw i64 %indvars.iv242.i.i, 3
  %i.xs = getelementptr inbounds i8, ptr %i.hg, i64 %.idx259.i.i ; 2 uses
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !46
  %indvars.iv.next243.i.i = add nsw i64 %indvars.iv242.i.i, 1 ; 4 uses
  %.idx260.i.i = shl nsw i64 %indvars.iv.next243.i.i, 3
  %i.xu = getelementptr inbounds i8, ptr %i.hg, i64 %.idx260.i.i
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !46
  %i.xw = add nsw i32 %i.xv, %i.xt
  %i.xx = ashr i32 %i.xw, 1
  %i.xy = getelementptr i8, ptr %i.xs, i64 4      ; 2 uses
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !46
  %i.ya = add nsw i32 %i.xx, %i.xz
  store i32 %i.ya, ptr %i.xy, align 4, !tbaa !46
  %i.yb = icmp slt i64 %indvars.iv.next243.i.i, %i.ny
  br i1 %i.yb, label %.lr.ph225.i.i, label %.preheader.loopexit.i.i, !llvm.loop !177

.lr.ph229.i.i:                                    ; preds = %.preheader.i.i, %bb.aw
  %.3227.i.i = phi i32 [ %i.yo, %bb.aw ], [ %.2.lcssa.i.i, %.preheader.i.i ] ; 7 uses
  %i.yc = icmp slt i32 %.3227.i.i, 0
  br i1 %i.yc, label %bb.at, label %.thread197.i.i

.thread197.i.i:                                   ; preds = %.lr.ph229.i.i
  %.not175.i.i = icmp slt i32 %.3227.i.i, %.0182298.i
  %i.yd = shl nuw nsw i32 %.3227.i.i, 1
  %i.ye = zext nneg i32 %i.yd to i64
  %.in176.ph.v.i.i = select i1 %.not175.i.i, i64 %i.ye, i64 %i.oa
  %.in176.ph.i.i = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %.in176.ph.v.i.i
  %i.yf = load i32, ptr %.in176.ph.i.i, align 4, !tbaa !46
  %i.yg = add nuw nsw i32 %.3227.i.i, 1
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph229.i.i
  %i.yh = load i32, ptr %i.hg, align 4, !tbaa !46 ; 2 uses
  %i.yi = add nuw nsw i32 %.3227.i.i, 1
  %.not205.i.i = icmp eq i32 %.3227.i.i, -1
  br i1 %.not205.i.i, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at, %.thread197.i.i
  %i.yj = phi i32 [ %i.yg, %.thread197.i.i ], [ 0, %bb.at ] ; 4 uses
  %i.yk = phi i32 [ %i.yf, %.thread197.i.i ], [ %i.yh, %bb.at ] ; 2 uses
  %.not177.i.i = icmp slt i32 %i.yj, %.0182298.i
  br i1 %.not177.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.yl = shl nuw nsw i32 %i.yj, 1
  %i.ym = zext nneg i32 %i.yl to i64
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ym
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %i.yo = phi i32 [ %i.yj, %bb.av ], [ %i.yi, %bb.at ], [ %i.yj, %bb.au ] ; 2 uses
  %i.yp = phi i32 [ %i.yk, %bb.av ], [ %i.yh, %bb.at ], [ %i.yk, %bb.au ]
  %.in178.i.i = phi ptr [ %i.yn, %bb.av ], [ %i.hg, %bb.at ], [ %i.ob, %bb.au ]
  %i.yq = load i32, ptr %.in178.i.i, align 4, !tbaa !46
  %i.yr = add nsw i32 %i.yq, %i.yp
  %i.ys = ashr i32 %i.yr, 1
  %i.yt = shl nsw i32 %.3227.i.i, 1
  %i.yu = sext i32 %i.yt to i64
  %i.yv = getelementptr [4 x i8], ptr %i.hg, i64 %i.yu
  %i.yw = getelementptr i8, ptr %i.yv, i64 4      ; 2 uses
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !46
  %i.yy = add nsw i32 %i.ys, %i.yx
  store i32 %i.yy, ptr %i.yw, align 4, !tbaa !46
  %i.yz = icmp slt i32 %i.yo, %i.la
  br i1 %i.yz, label %.lr.ph229.i.i, label %opj_dwt_decode_partial_1.exit.i, !llvm.loop !178

bb.ax:                                            ; preds = %bb.ag
  br i1 %or.cond3.i.i, label %bb.ay, label %.preheader211.i.i

.preheader211.i.i:                                ; preds = %bb.ax
  br i1 %i.mv, label %.lr.ph.i208.i, label %.preheader209.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.za = load i32, ptr %i.hg, align 4, !tbaa !46
  %i.zb = sdiv i32 %i.za, 2
  store i32 %i.zb, ptr %i.hg, align 4, !tbaa !46
  br label %opj_dwt_decode_partial_1.exit.i

.preheader209.i.i:                                ; preds = %bb.bc, %.preheader211.i.i
  br i1 %i.na, label %.lr.ph215.i.i, label %opj_dwt_decode_partial_1.exit.i

.lr.ph.i208.i:                                    ; preds = %.preheader211.i.i, %bb.bc
  %.4212.i.i = phi i32 [ %i.zs, %bb.bc ], [ %i.kv, %.preheader211.i.i ] ; 6 uses
  %i.zc = shl nsw i32 %.4212.i.i, 1               ; 2 uses
  %i.zd = sext i32 %i.zc to i64
  %i.ze = getelementptr [4 x i8], ptr %i.hg, i64 %i.zd
  %i.zf = getelementptr i8, ptr %i.ze, i64 4      ; 2 uses
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !46
  %i.zh = icmp slt i32 %.4212.i.i, 0
  br i1 %i.zh, label %bb.az, label %.thread200.i.i

.thread200.i.i:                                   ; preds = %.lr.ph.i208.i
  %.not187.i.i = icmp slt i32 %.4212.i.i, %i.ig
  %i.zi = zext nneg i32 %i.zc to i64
  %.in188.ph.v.i.i = select i1 %.not187.i.i, i64 %i.zi, i64 %i.my
  %.in188.ph.i.i = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %.in188.ph.v.i.i
  %i.zj = load i32, ptr %.in188.ph.i.i, align 4, !tbaa !46
  %i.zk = add nuw nsw i32 %.4212.i.i, 1
  br label %bb.ba

bb.az:                                            ; preds = %.lr.ph.i208.i
  %i.zl = load i32, ptr %i.hg, align 4, !tbaa !46 ; 2 uses
  %i.zm = add nuw nsw i32 %.4212.i.i, 1
  %.not204.i.i = icmp eq i32 %.4212.i.i, -1
  br i1 %.not204.i.i, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az, %.thread200.i.i
  %i.zn = phi i32 [ %i.zk, %.thread200.i.i ], [ 0, %bb.az ] ; 4 uses
  %i.zo = phi i32 [ %i.zj, %.thread200.i.i ], [ %i.zl, %bb.az ] ; 2 uses
  %.not189.i.i = icmp slt i32 %i.zn, %i.ig
  br i1 %.not189.i.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.zp = shl nuw nsw i32 %i.zn, 1
  %i.zq = zext nneg i32 %i.zp to i64
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.zq
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %i.zs = phi i32 [ %i.zn, %bb.bb ], [ %i.zm, %bb.az ], [ %i.zn, %bb.ba ] ; 2 uses
  %i.zt = phi i32 [ %i.zo, %bb.bb ], [ %i.zl, %bb.az ], [ %i.zo, %bb.ba ]
  %.in190.i.i = phi ptr [ %i.zr, %bb.bb ], [ %i.hg, %bb.az ], [ %i.mz, %bb.ba ]
  %i.zu = load i32, ptr %.in190.i.i, align 4, !tbaa !46
  %i.zv = add i32 %i.zt, 2
  %i.zw = add i32 %i.zv, %i.zu
  %i.zx = ashr i32 %i.zw, 2
  %i.zy = sub i32 %i.zg, %i.zx
  store i32 %i.zy, ptr %i.zf, align 4, !tbaa !46
  %i.zz = icmp slt i32 %i.zs, %i.kx
  br i1 %i.zz, label %.lr.ph.i208.i, label %.preheader209.i.i, !llvm.loop !179

.lr.ph215.i.i:                                    ; preds = %.preheader209.i.i, %bb.bf
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bf ], [ %i.nf, %.preheader209.i.i ] ; 6 uses
  %.idx.i.i = shl i64 %indvars.iv.i.i, 3
  %i.aaa = getelementptr i8, ptr %i.hg, i64 %.idx.i.i ; 4 uses
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !46
  %i.aac = icmp slt i64 %indvars.iv.i.i, 0
  br i1 %i.aac, label %.thread202.i.i, label %bb.bd

.thread202.i.i:                                   ; preds = %.lr.ph215.i.i
  %i.aad = load i32, ptr %i.hm, align 4, !tbaa !46
  br label %bb.bf

bb.bd:                                            ; preds = %.lr.ph215.i.i
  %.not183.i.i = icmp slt i64 %indvars.iv.i.i, %i.ng
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aaa, i64 4
  %.in184.i.i = select i1 %.not183.i.i, ptr %i.aae, ptr %i.ne
  %i.aaf = load i32, ptr %.in184.i.i, align 4, !tbaa !46 ; 2 uses
  %i.aag = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %i.aag, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.not185.not.i.i = icmp sgt i64 %indvars.iv.i.i, %i.ng
  %i.aah = getelementptr i8, ptr %i.aaa, i64 -4
  %spec.select262.i.i = select i1 %.not185.not.i.i, ptr %i.ne, ptr %i.aah
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %.thread202.i.i
  %i.aai = phi i32 [ %i.aaf, %bb.be ], [ %i.aaf, %bb.bd ], [ %i.aad, %.thread202.i.i ]
  %.in186.i.i = phi ptr [ %spec.select262.i.i, %bb.be ], [ %i.hm, %bb.bd ], [ %i.hm, %.thread202.i.i ]
  %i.aaj = load i32, ptr %.in186.i.i, align 4, !tbaa !46
  %i.aak = add i32 %i.aaj, %i.aai
  %i.aal = ashr i32 %i.aak, 1
  %i.aam = add i32 %i.aal, %i.aab
  store i32 %i.aam, ptr %i.aaa, align 4, !tbaa !46
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %opj_dwt_decode_partial_1.exit.i, label %.lr.ph215.i.i, !llvm.loop !180

opj_dwt_decode_partial_1.exit.i:                  ; preds = %bb.bf, %bb.aw, %.preheader209.i.i, %bb.ay, %.preheader.i.i, %.loopexit208.i.i, %bb.ah
  %i.aan = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.fe, i32 noundef %i.ll, i32 noundef %.0176295.i, i32 noundef %i.lq, i32 noundef %i.sr, ptr noundef nonnull %i.od, i32 noundef 1, i32 noundef 0, i32 noundef 1) #15
  %.not192.i = icmp eq i32 %i.aan, 0
  br i1 %.not192.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %opj_dwt_decode_partial_1.exit.i
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.fe) #15
  tail call void @opj_aligned_free(ptr noundef nonnull %i.hg) #15
  br label %opj_dwt_decode_partial_tile.exit

bb.bh:                                            ; preds = %opj_dwt_decode_partial_1.exit.i, %._crit_edge314.i
  %.pre-phi319.i = phi i32 [ %.pre318.i, %._crit_edge314.i ], [ %i.sr, %opj_dwt_decode_partial_1.exit.i ] ; 2 uses
  %exitcond.not.i16 = icmp eq i32 %.pre-phi319.i, %i.if
  br i1 %exitcond.not.i16, label %.preheader.i17, label %bb.ac, !llvm.loop !181

bb.bi:                                            ; preds = %opj_dwt_decode_partial_1_parallel.exit.i, %.preheader.i17
  %.0177.i = phi i32 [ %i.aar, %opj_dwt_decode_partial_1_parallel.exit.i ], [ %i.ll, %.preheader.i17 ] ; 6 uses
  %i.aao = icmp ult i32 %.0177.i, %i.lq
  br i1 %i.aao, label %bb.bj, label %bb.bs

bb.bj:                                            ; preds = %bb.bi
  %i.aap = sub nuw i32 %i.lq, %.0177.i
  %i.aaq = tail call noundef i32 @llvm.umin.i32(i32 %i.aap, i32 4)
  %i.aar = add i32 %i.aaq, %.0177.i               ; 4 uses
  %i.aas = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %.0177.i, i32 noundef %i.lb, i32 noundef %i.aar, i32 noundef %i.ld, ptr noundef nonnull %i.pz, i32 noundef 1, i32 noundef 8, i32 noundef 1) #15 ; 0 uses
  %i.aat = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %.0177.i, i32 noundef %.pre315.i, i32 noundef %i.aar, i32 noundef %.pre316.i, ptr noundef nonnull %i.qf, i32 noundef 1, i32 noundef 8, i32 noundef 1) #15 ; 0 uses
  br i1 %i.lr, label %bb.bk, label %bb.br

bb.bk:                                            ; preds = %bb.bj
  br i1 %or.cond.i213.i, label %bb.bl, label %opj_dwt_decode_partial_1_parallel.exit.i

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.qi, label %.preheader350.i.i, label %.loopexit347.i.i

.preheader350.i.i:                                ; preds = %bb.bl
  br i1 %i.rh, label %bb.bm, label %.thread.1.i.i.a

bb.bm:                                            ; preds = %.preheader350.i.i
  br i1 %6, label %.thread360.i, label %.thread.1.i.i.a

.thread360.i:                                     ; preds = %bb.bm
  %7 = load <2 x i32>, ptr %i.hs, align 4, !tbaa !46
  %8 = shl <2 x i32> %7, splat (i32 1)
  %9 = add <2 x i32> %8, splat (i32 2)
  %10 = ashr <2 x i32> %9, splat (i32 2)
  %11 = load <2 x i32>, ptr %i.rm, align 4, !tbaa !46
  %12 = sub nsw <2 x i32> %11, %10
  store <2 x i32> %12, ptr %i.rm, align 4, !tbaa !46
  %13 = load i32, ptr %i.hu, align 4, !tbaa !46
  %reass.add389.i = shl i32 %13, 1
  %i.aau = add i32 %reass.add389.i, 2
  %i.aav = ashr i32 %i.aau, 2
  %i.aaw = load i32, ptr %i.ro, align 4, !tbaa !46
  %i.aax = sub nsw i32 %i.aaw, %i.aav
  store i32 %i.aax, ptr %i.ro, align 4, !tbaa !46
  %i.aay = load i32, ptr %i.hv, align 4, !tbaa !46 ; 2 uses
  br label %bb.bn

.thread.1.i.i.a:                                  ; preds = %.preheader350.i.i, %bb.bm
  %.in387.i = phi ptr [ %i.hv, %bb.bm ], [ %.in311.ph.3.i.i, %.preheader350.i.i ]
  %.in386.i = phi ptr [ %i.hu, %bb.bm ], [ %.in311.ph.2.i.i, %.preheader350.i.i ]
  %spec.select = phi ptr [ %i.ht, %bb.bm ], [ %.in311.ph.1.i.i, %.preheader350.i.i ]
  %.in = phi ptr [ %i.hs, %bb.bm ], [ %.in311.ph.i.i, %.preheader350.i.i ]
  %14 = load i32, ptr %.in, align 4, !tbaa !46
  %.pre310.i = load i32, ptr %.301.i, align 4, !tbaa !46
  %15 = add i32 %14, 2
  %16 = add i32 %15, %.pre310.i
  %17 = ashr i32 %16, 2
  %18 = load i32, ptr %i.rm, align 4, !tbaa !46
  %19 = sub nsw i32 %18, %17
  store i32 %19, ptr %i.rm, align 4, !tbaa !46
  %20 = load i32, ptr %spec.select, align 4, !tbaa !46
  %.pre311.i = load i32, ptr %.302.i, align 4, !tbaa !46
  %21 = add i32 %20, 2
  %22 = add i32 %21, %.pre311.i
  %23 = ashr i32 %22, 2
  %24 = load i32, ptr %i.rn, align 4, !tbaa !46
  %25 = sub nsw i32 %24, %23
  store i32 %25, ptr %i.rn, align 4, !tbaa !46
  %26 = load i32, ptr %.in386.i, align 4, !tbaa !46
  %.pre312.i = load i32, ptr %.303.i, align 4, !tbaa !46
  %27 = add i32 %26, 2
  %i.aaz = add i32 %27, %.pre312.i
  %i.aba = ashr i32 %i.aaz, 2
  %i.abb = load i32, ptr %i.ro, align 4, !tbaa !46
  %i.abc = sub nsw i32 %i.abb, %i.aba
  store i32 %i.abc, ptr %i.ro, align 4, !tbaa !46
  %28 = load i32, ptr %.in387.i, align 4, !tbaa !46
  %.pre313.i.a = load i32, ptr %.304.i, align 4, !tbaa !46
  br label %bb.bn

bb.bn:                                            ; preds = %.thread.1.i.i.a, %.thread360.i
  %i.abd = phi i32 [ %i.aay, %.thread360.i ], [ %.pre313.i.a, %.thread.1.i.i.a ]
  %29 = phi i32 [ %i.aay, %.thread360.i ], [ %28, %.thread.1.i.i.a ]
  %i.abe = add i32 %i.abd, 2
  %i.abf = add i32 %i.abe, %29
  %i.abg = ashr i32 %i.abf, 2
  %i.abh = load i32, ptr %i.rp, align 4, !tbaa !46
  %i.abi = sub nsw i32 %i.abh, %i.abg
  store i32 %i.abi, ptr %i.rp, align 4, !tbaa !46
  br i1 %i.rs, label %.lr.ph.preheader.i.i, label %.loopexit349.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bn
  %i.abj = load <2 x i64>, ptr %i.ru, align 16, !tbaa !50
  br label %.lr.ph.i220.i

.lr.ph.i220.i:                                    ; preds = %.lr.ph.i220.i, %.lr.ph.preheader.i.i
  %indvars.iv.i221.i = phi i64 [ %i.rv, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i222.i, %.lr.ph.i220.i ] ; 3 uses
  %i.abk = phi i32 [ %i.rr, %.lr.ph.preheader.i.i ], [ %i.ach, %.lr.ph.i220.i ]
  %.0278375.i.i = phi <2 x i64> [ %i.abj, %.lr.ph.preheader.i.i ], [ %i.abv, %.lr.ph.i220.i ]
  %i.abl = shl nsw i64 %indvars.iv.i221.i, 3      ; 2 uses
  %i.abm = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.abl ; 2 uses
  %i.abn = load <4 x i32>, ptr %i.abm, align 16, !tbaa !50
  %i.abo = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.abl
  %i.abp = load <4 x i32>, ptr %i.abo, align 16, !tbaa !50
  %i.abq = shl nsw i32 %i.abk, 3
  %i.abr = sext i32 %i.abq to i64                 ; 2 uses
  %i.abs = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.abr ; 2 uses
  %i.abt = load <4 x i32>, ptr %i.abs, align 16, !tbaa !50
  %i.abu = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.abr
  %i.abv = load <2 x i64>, ptr %i.abu, align 16, !tbaa !50 ; 2 uses
  %i.abw = bitcast <2 x i64> %.0278375.i.i to <4 x i32>
  %i.abx = add <4 x i32> %i.abp, splat (i32 2)    ; 2 uses
  %i.aby = add <4 x i32> %i.abx, %i.abw
  %i.abz = ashr <4 x i32> %i.aby, splat (i32 2)
  %i.aca = sub <4 x i32> %i.abn, %i.abz
  %i.acb = bitcast <2 x i64> %i.abv to <4 x i32>
  %i.acc = add <4 x i32> %i.abx, %i.acb
  %i.acd = ashr <4 x i32> %i.acc, splat (i32 2)
  %i.ace = sub <4 x i32> %i.abt, %i.acd
  store <4 x i32> %i.aca, ptr %i.abm, align 16, !tbaa !50
  store <4 x i32> %i.ace, ptr %i.abs, align 16, !tbaa !50
  %indvars.iv.next.i222.i = add nsw i64 %indvars.iv.i221.i, 2 ; 2 uses
  %i.acf = add nsw i64 %indvars.iv.i221.i, 3      ; 2 uses
  %i.acg = icmp slt i64 %i.acf, %i.rw
  %i.ach = trunc nsw i64 %i.acf to i32
  br i1 %i.acg, label %.lr.ph.i220.i, label %.loopexit349.loopexit.i.i, !llvm.loop !182

.loopexit349.loopexit.i.i:                        ; preds = %.lr.ph.i220.i
  %i.aci = trunc nsw i64 %indvars.iv.next.i222.i to i32
  br label %.loopexit349.i.i

.loopexit349.i.i:                                 ; preds = %.loopexit349.loopexit.i.i, %bb.bn
  %.1.i.i = phi i32 [ %i.rq, %bb.bn ], [ %i.aci, %.loopexit349.loopexit.i.i ] ; 7 uses
  %i.acj = icmp slt i32 %.1.i.i, %spec.select.i218.i
  br i1 %i.acj, label %.preheader348.i.i.preheader, label %.preheader346.i.i

.preheader348.i.i.preheader:                      ; preds = %.loopexit349.i.i
  %i.ack = sub i32 %spec.select.i218.i, %.1.i.i
  %.neg163 = add i32 %.1.i.i, 1
  %xtraiter159 = and i32 %i.ack, 1
  %lcmp.mod160.not = icmp eq i32 %xtraiter159, 0
  br i1 %lcmp.mod160.not, label %.preheader348.i.i.prol.loopexit, label %.preheader348.i.i.prol

.preheader348.i.i.prol:                           ; preds = %.preheader348.i.i.preheader
  %i.acl = shl i32 %.1.i.i, 3                     ; 2 uses
  %i.acm = add i32 %i.acl, -4
  %i.acn = zext i32 %i.acm to i64
  %i.aco = zext i32 %i.acl to i64
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.acn
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.aco ; 3 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 16
  %i.acs = load <4 x i32>, ptr %i.acp, align 4, !tbaa !46
  %i.act = load <4 x i32>, ptr %i.acr, align 4, !tbaa !46
  %i.acu = add <4 x i32> %i.acs, splat (i32 2)
  %i.acv = add <4 x i32> %i.acu, %i.act
  %i.acw = ashr <4 x i32> %i.acv, splat (i32 2)
  %i.acx = load <4 x i32>, ptr %i.acq, align 4, !tbaa !46
  %i.acy = sub nsw <4 x i32> %i.acx, %i.acw
  store <4 x i32> %i.acy, ptr %i.acq, align 4, !tbaa !46
  %i.acz = add nsw i32 %.1.i.i, 1
  br label %.preheader348.i.i.prol.loopexit

.preheader348.i.i.prol.loopexit:                  ; preds = %.preheader348.i.i.prol, %.preheader348.i.i.preheader
  %.2378.i.i.unr = phi i32 [ %.1.i.i, %.preheader348.i.i.preheader ], [ %i.acz, %.preheader348.i.i.prol ]
  %i.ada = icmp eq i32 %spec.select.i218.i, %.neg163
  br i1 %i.ada, label %.preheader346.i.i, label %.preheader348.i.i

.preheader348.i.i:                                ; preds = %.preheader348.i.i.prol.loopexit, %.preheader348.i.i
  %.2378.i.i = phi i32 [ %i.aee, %.preheader348.i.i ], [ %.2378.i.i.unr, %.preheader348.i.i.prol.loopexit ] ; 3 uses
  %i.adb = shl i32 %.2378.i.i, 3                  ; 2 uses
  %i.adc = add i32 %i.adb, -4
  %i.add = zext i32 %i.adc to i64
  %i.ade = zext i32 %i.adb to i64
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.add
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ade ; 3 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 16
  %i.adi = load <4 x i32>, ptr %i.adf, align 4, !tbaa !46
  %i.adj = load <4 x i32>, ptr %i.adh, align 4, !tbaa !46
  %i.adk = add <4 x i32> %i.adi, splat (i32 2)
  %i.adl = add <4 x i32> %i.adk, %i.adj
  %i.adm = ashr <4 x i32> %i.adl, splat (i32 2)
  %i.adn = load <4 x i32>, ptr %i.adg, align 4, !tbaa !46
  %i.ado = sub nsw <4 x i32> %i.adn, %i.adm
  store <4 x i32> %i.ado, ptr %i.adg, align 4, !tbaa !46
  %i.adp = shl i32 %.2378.i.i, 3                  ; 2 uses
  %i.adq = add i32 %i.adp, 8
  %i.adr = or disjoint i32 %i.adp, 4
  %i.ads = zext i32 %i.adr to i64
  %i.adt = zext i32 %i.adq to i64
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ads
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.adt ; 3 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 16
  %i.adx = load <4 x i32>, ptr %i.adu, align 4, !tbaa !46
  %i.ady = load <4 x i32>, ptr %i.adw, align 4, !tbaa !46
  %i.adz = add <4 x i32> %i.adx, splat (i32 2)
  %i.aea = add <4 x i32> %i.adz, %i.ady
  %i.aeb = ashr <4 x i32> %i.aea, splat (i32 2)
  %i.aec = load <4 x i32>, ptr %i.adv, align 4, !tbaa !46
  %i.aed = sub nsw <4 x i32> %i.aec, %i.aeb
  store <4 x i32> %i.aed, ptr %i.adv, align 4, !tbaa !46
  %i.aee = add nsw i32 %.2378.i.i, 2              ; 2 uses
  %exitcond445.not.i.i.1 = icmp eq i32 %i.aee, %spec.select.i218.i
  br i1 %exitcond445.not.i.i.1, label %.preheader346.i.i, label %.preheader348.i.i, !llvm.loop !183

.preheader346.i.i:                                ; preds = %.preheader348.i.i.prol.loopexit, %.preheader348.i.i, %.loopexit349.i.i
  %.2.lcssa.i219.i = phi i32 [ %.1.i.i, %.loopexit349.i.i ], [ %spec.select.i218.i, %.preheader348.i.i ], [ %spec.select.i218.i, %.preheader348.i.i.prol.loopexit ] ; 2 uses
  %i.aef = icmp slt i32 %.2.lcssa.i219.i, %i.ld
  br i1 %i.aef, label %.preheader345.i.i, label %.loopexit347.i.i

.preheader345.i.i:                                ; preds = %.preheader346.i.i, %.split384.us.i.i
  %.3388.i.i = phi i32 [ %i.ahv, %.split384.us.i.i ], [ %.2.lcssa.i219.i, %.preheader346.i.i ] ; 6 uses
  %i.aeg = icmp slt i32 %.3388.i.i, 1
  %i.aeh = shl i32 %.3388.i.i, 3                  ; 4 uses
  %..3.i.i = tail call i32 @llvm.smin.i32(i32 %.3388.i.i, i32 %i.ii)
  %.pn339.in.i.i = shl i32 %..3.i.i, 3
  %.pn339.i.i = add i32 %.pn339.in.i.i, -4        ; 2 uses
  %.not308.i.i = icmp slt i32 %.3388.i.i, %i.ii   ; 2 uses
  %invariant.op381.i.i = or disjoint i32 %i.aeh, 4 ; 2 uses
  br i1 %i.aeg, label %.preheader345.split.us.i.i, label %.preheader345.split.i.i

.preheader345.split.us.i.i:                       ; preds = %.preheader345.i.i
  %i.aei = icmp slt i32 %.3388.i.i, 0
  %i.aej = zext i32 %i.aeh to i64                 ; 4 uses
  br i1 %i.aei, label %.preheader345.split.us.split.us.preheader.i.i, label %.preheader345.split.us.split.preheader.i.i

.preheader345.split.us.split.preheader.i.i:       ; preds = %.preheader345.split.us.i.i
  %.in309.us.v.v.v.i.i = select i1 %.not308.i.i, i32 %invariant.op381.i.i, i32 %i.ri
  %i.aek = zext i32 %.in309.us.v.v.v.i.i to i64
  %.in309.us.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.aek ; 3 uses
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.aej ; 3 uses
  %i.aem = load <2 x i32>, ptr %i.hs, align 4, !tbaa !46
  %i.aen = load <2 x i32>, ptr %.in309.us.i.i, align 4, !tbaa !46
  %i.aeo = add <2 x i32> %i.aem, splat (i32 2)
  %i.aep = add <2 x i32> %i.aeo, %i.aen
  %i.aeq = ashr <2 x i32> %i.aep, splat (i32 2)
  %i.aer = load <2 x i32>, ptr %i.ael, align 4, !tbaa !46
  %i.aes = sub nsw <2 x i32> %i.aer, %i.aeq
  store <2 x i32> %i.aes, ptr %i.ael, align 4, !tbaa !46
  %i.aet = load i32, ptr %i.hu, align 4, !tbaa !46
  %.in309.us.2.i.i = getelementptr inbounds nuw i8, ptr %.in309.us.i.i, i64 8
  %i.aeu = load i32, ptr %.in309.us.2.i.i, align 4, !tbaa !46
  %i.aev = add i32 %i.aet, 2
  %i.aew = add i32 %i.aev, %i.aeu
  %i.aex = ashr i32 %i.aew, 2
  %i.aey = getelementptr inbounds nuw i8, ptr %i.ael, i64 8 ; 2 uses
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !46
  %i.afa = sub nsw i32 %i.aez, %i.aex
  store i32 %i.afa, ptr %i.aey, align 4, !tbaa !46
  %i.afb = load i32, ptr %i.hv, align 4, !tbaa !46
  %.in309.us.3.i.i = getelementptr inbounds nuw i8, ptr %.in309.us.i.i, i64 12
  %i.afc = load i32, ptr %.in309.us.3.i.i, align 4, !tbaa !46
  %i.afd = add i32 %i.afb, 2
  %i.afe = add i32 %i.afd, %i.afc
  br label %.split384.us.i.i

.preheader345.split.us.split.us.preheader.i.i:    ; preds = %.preheader345.split.us.i.i
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.aej ; 3 uses
  %i.afg = load <2 x i32>, ptr %i.hs, align 4, !tbaa !46
  %i.afh = shl <2 x i32> %i.afg, splat (i32 1)
  %i.afi = add <2 x i32> %i.afh, splat (i32 2)
  %i.afj = ashr <2 x i32> %i.afi, splat (i32 2)
  %i.afk = load <2 x i32>, ptr %i.aff, align 4, !tbaa !46
  %i.afl = sub nsw <2 x i32> %i.afk, %i.afj
  store <2 x i32> %i.afl, ptr %i.aff, align 4, !tbaa !46
  %i.afm = load i32, ptr %i.hu, align 4, !tbaa !46
  %reass.add516.i.i = shl i32 %i.afm, 1
  %i.afn = add i32 %reass.add516.i.i, 2
  %i.afo = ashr i32 %i.afn, 2
  %i.afp = getelementptr inbounds nuw i8, ptr %i.aff, i64 8 ; 2 uses
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !46
  %i.afr = sub nsw i32 %i.afq, %i.afo
  store i32 %i.afr, ptr %i.afp, align 4, !tbaa !46
  %i.afs = load i32, ptr %i.hv, align 4, !tbaa !46
  %reass.add517.i.i = shl i32 %i.afs, 1
  %i.aft = add i32 %reass.add517.i.i, 2
  br label %.split384.us.i.i

.preheader345.split.i.i:                          ; preds = %.preheader345.i.i
  br i1 %.not308.i.i, label %.thread325.us.preheader.i.i, label %.thread325.preheader.i.i

.thread325.preheader.i.i:                         ; preds = %.preheader345.split.i.i
  %i.afu = zext i32 %i.aeh to i64                 ; 2 uses
  %i.afv = zext i32 %.pn339.i.i to i64
  %.in307.ph.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.afv ; 3 uses
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.afu ; 3 uses
  %i.afx = load <2 x i32>, ptr %.in307.ph.i.i, align 4, !tbaa !46
  %i.afy = load <2 x i32>, ptr %i.rx, align 4, !tbaa !46
  %i.afz = add <2 x i32> %i.afx, splat (i32 2)
  %i.aga = add <2 x i32> %i.afz, %i.afy
  %i.agb = ashr <2 x i32> %i.aga, splat (i32 2)
  %i.agc = load <2 x i32>, ptr %i.afw, align 4, !tbaa !46
  %i.agd = sub nsw <2 x i32> %i.agc, %i.agb
  store <2 x i32> %i.agd, ptr %i.afw, align 4, !tbaa !46
  %.in307.ph.2.i.i = getelementptr inbounds nuw i8, ptr %.in307.ph.i.i, i64 8
  %i.age = load i32, ptr %.in307.ph.2.i.i, align 4, !tbaa !46
  %i.agf = load i32, ptr %i.ry, align 4, !tbaa !46
  %i.agg = add i32 %i.age, 2
  %i.agh = add i32 %i.agg, %i.agf
  %i.agi = ashr i32 %i.agh, 2
  %i.agj = getelementptr inbounds nuw i8, ptr %i.afw, i64 8 ; 2 uses
  %i.agk = load i32, ptr %i.agj, align 4, !tbaa !46
  %i.agl = sub nsw i32 %i.agk, %i.agi
  store i32 %i.agl, ptr %i.agj, align 4, !tbaa !46
  %.in307.ph.3.i.i = getelementptr inbounds nuw i8, ptr %.in307.ph.i.i, i64 12
  %i.agm = load i32, ptr %.in307.ph.3.i.i, align 4, !tbaa !46
  %i.agn = load i32, ptr %i.rz, align 4, !tbaa !46
  %i.ago = add i32 %i.agm, 2
  %i.agp = add i32 %i.ago, %i.agn
  br label %.split384.us.i.i

.thread325.us.preheader.i.i:                      ; preds = %.preheader345.split.i.i
  %i.agq = zext i32 %.pn339.i.i to i64
  %i.agr = zext i32 %invariant.op381.i.i to i64
  %i.ags = zext i32 %i.aeh to i64                 ; 2 uses
  %.in307.ph.us.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.agq ; 3 uses
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.agr ; 3 uses
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ags ; 3 uses
  %i.agv = load <2 x i32>, ptr %.in307.ph.us.i.i, align 4, !tbaa !46
  %i.agw = load <2 x i32>, ptr %i.agt, align 4, !tbaa !46
  %i.agx = add <2 x i32> %i.agv, splat (i32 2)
  %i.agy = add <2 x i32> %i.agx, %i.agw
  %i.agz = ashr <2 x i32> %i.agy, splat (i32 2)
  %i.aha = load <2 x i32>, ptr %i.agu, align 4, !tbaa !46
  %i.ahb = sub nsw <2 x i32> %i.aha, %i.agz
  store <2 x i32> %i.ahb, ptr %i.agu, align 4, !tbaa !46
  %.in307.ph.us.2.i.i = getelementptr inbounds nuw i8, ptr %.in307.ph.us.i.i, i64 8
  %i.ahc = load i32, ptr %.in307.ph.us.2.i.i, align 4, !tbaa !46
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agt, i64 8
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !46
  %i.ahf = add i32 %i.ahc, 2
  %i.ahg = add i32 %i.ahf, %i.ahe
  %i.ahh = ashr i32 %i.ahg, 2
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.agu, i64 8 ; 2 uses
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !46
  %i.ahk = sub nsw i32 %i.ahj, %i.ahh
  store i32 %i.ahk, ptr %i.ahi, align 4, !tbaa !46
  %.in307.ph.us.3.i.i = getelementptr inbounds nuw i8, ptr %.in307.ph.us.i.i, i64 12
  %i.ahl = load i32, ptr %.in307.ph.us.3.i.i, align 4, !tbaa !46
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.agt, i64 12
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !46
  %i.aho = add i32 %i.ahl, 2
  %i.ahp = add i32 %i.aho, %i.ahn
  br label %.split384.us.i.i

.split384.us.i.i:                                 ; preds = %.thread325.us.preheader.i.i, %.thread325.preheader.i.i, %.preheader345.split.us.split.us.preheader.i.i, %.preheader345.split.us.split.preheader.i.i
  %.sink524.i.i = phi i32 [ %i.agp, %.thread325.preheader.i.i ], [ %i.ahp, %.thread325.us.preheader.i.i ], [ %i.afe, %.preheader345.split.us.split.preheader.i.i ], [ %i.aft, %.preheader345.split.us.split.us.preheader.i.i ]
  %.sink.i.i = phi i64 [ %i.afu, %.thread325.preheader.i.i ], [ %i.ags, %.thread325.us.preheader.i.i ], [ %i.aej, %.preheader345.split.us.split.preheader.i.i ], [ %i.aej, %.preheader345.split.us.split.us.preheader.i.i ]
  %i.ahq = ashr i32 %.sink524.i.i, 2
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.sink.i.i
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 12 ; 2 uses
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !46
  %i.ahu = sub nsw i32 %i.aht, %i.ahq
  store i32 %i.ahu, ptr %i.ahs, align 4, !tbaa !46
  %i.ahv = add nsw i32 %.3388.i.i, 1              ; 2 uses
  %exitcond466.not.i.i = icmp eq i32 %i.ahv, %i.ld
  br i1 %exitcond466.not.i.i, label %.loopexit347.i.i, label %.preheader345.i.i, !llvm.loop !184

.loopexit347.i.i:                                 ; preds = %.split384.us.i.i, %.preheader346.i.i, %bb.bl
  br i1 %i.qv, label %bb.bo, label %opj_dwt_decode_partial_1_parallel.exit.i

bb.bo:                                            ; preds = %.loopexit347.i.i
  br i1 %i.sc, label %bb.bp, label %.loopexit344.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.ahw = load <2 x i64>, ptr %i.se, align 16, !tbaa !50
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %bb.bp
  %indvars.iv467.i.i = phi i64 [ %i.sf, %bb.bp ], [ %indvars.iv.next468.i.i, %bb.bq ] ; 3 uses
  %i.ahx = phi i32 [ %i.sb, %bb.bp ], [ %i.ais, %bb.bq ]
  %.0276389.i.i = phi <2 x i64> [ %i.ahw, %bb.bp ], [ %i.aih, %bb.bq ]
  %.idx.i216.i = shl nsw i64 %indvars.iv467.i.i, 5
  %i.ahy = getelementptr inbounds i8, ptr %i.hs, i64 %.idx.i216.i ; 2 uses
  %i.ahz = load <4 x i32>, ptr %i.ahy, align 16, !tbaa !50
  %i.aia = shl nsw i32 %i.ahx, 3
  %i.aib = sext i32 %i.aia to i64                 ; 2 uses
  %i.aic = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.aib
  %i.aid = load <4 x i32>, ptr %i.aic, align 16, !tbaa !50 ; 2 uses
  %i.aie = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.aib ; 2 uses
  %i.aif = load <4 x i32>, ptr %i.aie, align 16, !tbaa !50
  %indvars.iv.next468.i.i = add nsw i64 %indvars.iv467.i.i, 2 ; 3 uses
  %.idx518.i.i = shl nsw i64 %indvars.iv.next468.i.i, 5
  %i.aig = getelementptr inbounds i8, ptr %i.hg, i64 %.idx518.i.i
  %i.aih = load <2 x i64>, ptr %i.aig, align 16, !tbaa !50 ; 2 uses
  %i.aii = bitcast <2 x i64> %.0276389.i.i to <4 x i32>
  %i.aij = add <4 x i32> %i.aid, %i.aii
  %i.aik = ashr <4 x i32> %i.aij, splat (i32 1)
  %i.ail = add <4 x i32> %i.aik, %i.ahz
  %i.aim = bitcast <2 x i64> %i.aih to <4 x i32>
  %i.ain = add <4 x i32> %i.aid, %i.aim
  %i.aio = ashr <4 x i32> %i.ain, splat (i32 1)
  %i.aip = add <4 x i32> %i.aio, %i.aif
  store <4 x i32> %i.ail, ptr %i.ahy, align 16, !tbaa !50
  store <4 x i32> %i.aip, ptr %i.aie, align 16, !tbaa !50
  %i.aiq = add nsw i64 %indvars.iv467.i.i, 3      ; 2 uses
  %i.air = icmp slt i64 %i.aiq, %i.sg
  %i.ais = trunc nsw i64 %i.aiq to i32
  br i1 %i.air, label %bb.bq, label %.loopexit344.loopexit.i.i, !llvm.loop !185

.loopexit344.loopexit.i.i:                        ; preds = %bb.bq
  %i.ait = trunc nsw i64 %indvars.iv.next468.i.i to i32
  br label %.loopexit344.i.i

.loopexit344.i.i:                                 ; preds = %.loopexit344.loopexit.i.i, %bb.bo
  %.5.i.i = phi i32 [ %i.le, %bb.bo ], [ %i.ait, %.loopexit344.loopexit.i.i ] ; 7 uses
  %i.aiu = icmp slt i32 %.5.i.i, %spec.select322.i.i
  br i1 %i.aiu, label %.preheader343.i.i.preheader, label %.preheader342.i.i

.preheader343.i.i.preheader:                      ; preds = %.loopexit344.i.i
  %i.aiv = sub i32 %spec.select322.i.i, %.5.i.i
  %.neg164 = add i32 %.5.i.i, 1
  %xtraiter161 = and i32 %i.aiv, 1
  %lcmp.mod162.not = icmp eq i32 %xtraiter161, 0
  br i1 %lcmp.mod162.not, label %.preheader343.i.i.prol.loopexit, label %.preheader343.i.i.prol

.preheader343.i.i.prol:                           ; preds = %.preheader343.i.i.preheader
  %i.aiw = shl i32 %.5.i.i, 3                     ; 2 uses
  %i.aix = add i32 %i.aiw, 8
  %i.aiy = zext i32 %i.aix to i64
  %i.aiz = zext i32 %i.aiw to i64
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.aiz ; 2 uses
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.aiy
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aja, i64 16 ; 2 uses
  %i.ajd = load <4 x i32>, ptr %i.aja, align 4, !tbaa !46
  %i.aje = load <4 x i32>, ptr %i.ajb, align 4, !tbaa !46
  %i.ajf = add nsw <4 x i32> %i.aje, %i.ajd
  %i.ajg = ashr <4 x i32> %i.ajf, splat (i32 1)
  %i.ajh = load <4 x i32>, ptr %i.ajc, align 4, !tbaa !46
  %i.aji = add nsw <4 x i32> %i.ajg, %i.ajh
  store <4 x i32> %i.aji, ptr %i.ajc, align 4, !tbaa !46
  %i.ajj = add nsw i32 %.5.i.i, 1
  br label %.preheader343.i.i.prol.loopexit

.preheader343.i.i.prol.loopexit:                  ; preds = %.preheader343.i.i.prol, %.preheader343.i.i.preheader
  %.6392.i.i.unr = phi i32 [ %.5.i.i, %.preheader343.i.i.preheader ], [ %i.ajj, %.preheader343.i.i.prol ]
  %i.ajk = icmp eq i32 %spec.select322.i.i, %.neg164
  br i1 %i.ajk, label %.preheader342.i.i, label %.preheader343.i.i

.preheader343.i.i:                                ; preds = %.preheader343.i.i.prol.loopexit, %.preheader343.i.i
  %.6392.i.i = phi i32 [ %i.akl, %.preheader343.i.i ], [ %.6392.i.i.unr, %.preheader343.i.i.prol.loopexit ] ; 3 uses
  %i.ajl = shl i32 %.6392.i.i, 3                  ; 2 uses
  %i.ajm = add i32 %i.ajl, 8
  %i.ajn = zext i32 %i.ajm to i64
  %i.ajo = zext i32 %i.ajl to i64
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ajo ; 2 uses
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ajn
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajp, i64 16 ; 2 uses
  %i.ajs = load <4 x i32>, ptr %i.ajp, align 4, !tbaa !46
  %i.ajt = load <4 x i32>, ptr %i.ajq, align 4, !tbaa !46 ; 2 uses
  %i.aju = add nsw <4 x i32> %i.ajt, %i.ajs
  %i.ajv = ashr <4 x i32> %i.aju, splat (i32 1)
  %i.ajw = load <4 x i32>, ptr %i.ajr, align 4, !tbaa !46
  %i.ajx = add nsw <4 x i32> %i.ajv, %i.ajw
  store <4 x i32> %i.ajx, ptr %i.ajr, align 4, !tbaa !46
  %i.ajy = shl i32 %.6392.i.i, 3                  ; 2 uses
  %i.ajz = add i32 %i.ajy, 8
  %i.aka = add i32 %i.ajy, 16
  %i.akb = zext i32 %i.aka to i64
  %i.akc = zext i32 %i.ajz to i64
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.akc
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.akb
  %i.akf = getelementptr inbounds nuw i8, ptr %i.akd, i64 16 ; 2 uses
  %i.akg = load <4 x i32>, ptr %i.ake, align 4, !tbaa !46
  %i.akh = add nsw <4 x i32> %i.akg, %i.ajt
  %i.aki = ashr <4 x i32> %i.akh, splat (i32 1)
  %i.akj = load <4 x i32>, ptr %i.akf, align 4, !tbaa !46
  %i.akk = add nsw <4 x i32> %i.aki, %i.akj
  store <4 x i32> %i.akk, ptr %i.akf, align 4, !tbaa !46
  %i.akl = add nsw i32 %.6392.i.i, 2              ; 2 uses
  %exitcond474.not.i.i.1 = icmp eq i32 %i.akl, %spec.select322.i.i
  br i1 %exitcond474.not.i.i.1, label %.preheader342.i.i, label %.preheader343.i.i, !llvm.loop !186

.preheader342.i.i:                                ; preds = %.preheader343.i.i.prol.loopexit, %.preheader343.i.i, %.loopexit344.i.i
  %.6.lcssa.i.i = phi i32 [ %.5.i.i, %.loopexit344.i.i ], [ %spec.select322.i.i, %.preheader343.i.i ], [ %spec.select322.i.i, %.preheader343.i.i.prol.loopexit ] ; 2 uses
  %i.akm = icmp slt i32 %.6.lcssa.i.i, %i.lg
  br i1 %i.akm, label %.preheader.i214.i, label %opj_dwt_decode_partial_1_parallel.exit.i

.preheader.i214.i:                                ; preds = %.preheader342.i.i, %.split398.us.i.i
  %.7402.i.i = phi i32 [ %i.ami, %.split398.us.i.i ], [ %.6.lcssa.i.i, %.preheader342.i.i ] ; 6 uses
  %i.akn = icmp slt i32 %.7402.i.i, 0
  %i.ako = shl i32 %.7402.i.i, 3                  ; 2 uses
  %invariant.op394.i.i = or disjoint i32 %i.ako, 4 ; 3 uses
  br i1 %i.akn, label %.preheader.split.us.i.i, label %.preheader.split.i.i

.preheader.split.us.i.i:                          ; preds = %.preheader.i214.i
  %.not337.i.i = icmp eq i32 %.7402.i.i, -1
  %i.akp = zext i32 %invariant.op394.i.i to i64   ; 2 uses
  br i1 %.not337.i.i, label %.preheader.split.us.split.us.preheader.i.i, label %.preheader.split.us.split.preheader.i.i

.preheader.split.us.split.preheader.i.i:          ; preds = %.preheader.split.us.i.i
  %i.akq = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.akp ; 2 uses
  %i.akr = load <4 x i32>, ptr %i.hg, align 4, !tbaa !46
  %i.aks = load <4 x i32>, ptr %i.akq, align 4, !tbaa !46
  %i.akt = add nsw <4 x i32> %i.aks, %i.akr
  store <4 x i32> %i.akt, ptr %i.akq, align 4, !tbaa !46
  br label %.split398.us.i.i

.preheader.split.us.split.us.preheader.i.i:       ; preds = %.preheader.split.us.i.i
  %i.aku = load i32, ptr %i.hg, align 4, !tbaa !46
  %i.akv = load i32, ptr %.in305.us.us.i.i, align 4, !tbaa !46
  %i.akw = add nsw i32 %i.akv, %i.aku
  %i.akx = ashr i32 %i.akw, 1
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.akp ; 2 uses
  %i.akz = load i32, ptr %i.aky, align 4, !tbaa !46
  %i.ala = add nsw i32 %i.akx, %i.akz
  store i32 %i.ala, ptr %i.aky, align 4, !tbaa !46
  %i.alb = load <2 x i32>, ptr %i.hm, align 4, !tbaa !46
  %i.alc = load <2 x i32>, ptr %.in305.us.us.1.i.i, align 4, !tbaa !46
  %i.ald = add nsw <2 x i32> %i.alc, %i.alb
  %i.ale = ashr <2 x i32> %i.ald, splat (i32 1)
  %i.alf = load <2 x i32>, ptr %i.hq, align 4, !tbaa !46
  %i.alg = add nsw <2 x i32> %i.ale, %i.alf
  store <2 x i32> %i.alg, ptr %i.hq, align 4, !tbaa !46
  %i.alh = load i32, ptr %i.ho, align 4, !tbaa !46
  %i.ali = load i32, ptr %.in305.us.us.3.i.i, align 4, !tbaa !46
  %i.alj = add nsw i32 %i.ali, %i.alh
  %i.alk = ashr i32 %i.alj, 1
  %i.all = load i32, ptr %i.hr, align 4, !tbaa !46
  %i.alm = add nsw i32 %i.alk, %i.all
  store i32 %i.alm, ptr %i.hr, align 4, !tbaa !46
  br label %.split398.us.i.i

.preheader.split.i.i:                             ; preds = %.preheader.i214.i
  %.not303.i.i = icmp slt i32 %.7402.i.i, %.0181299.i
  %.pn336.i.i = select i1 %.not303.i.i, i32 %i.ako, i32 %i.sh
  %i.aln = add nuw nsw i32 %.7402.i.i, 1          ; 2 uses
  %.not304.i.i = icmp slt i32 %i.aln, %.0181299.i
  %i.alo = zext i32 %.pn336.i.i to i64            ; 2 uses
  br i1 %.not304.i.i, label %.thread328.us.preheader.i.i, label %.thread328.preheader.i.i

.thread328.preheader.i.i:                         ; preds = %.preheader.split.i.i
  %i.alp = zext i32 %invariant.op394.i.i to i64
  %.in.ph.i215.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.alo
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.alp ; 2 uses
  %i.alr = load <4 x i32>, ptr %.in.ph.i215.i, align 4, !tbaa !46
  %i.als = load <4 x i32>, ptr %i.sj, align 4, !tbaa !46
  %i.alt = add nsw <4 x i32> %i.als, %i.alr
  %i.alu = ashr <4 x i32> %i.alt, splat (i32 1)
  %i.alv = load <4 x i32>, ptr %i.alq, align 4, !tbaa !46
  %i.alw = add nsw <4 x i32> %i.alu, %i.alv
  store <4 x i32> %i.alw, ptr %i.alq, align 4, !tbaa !46
  br label %.split398.us.i.i

.thread328.us.preheader.i.i:                      ; preds = %.preheader.split.i.i
  %i.alx = shl i32 %i.aln, 3
  %i.aly = zext i32 %i.alx to i64
  %i.alz = zext i32 %invariant.op394.i.i to i64
  %.in.ph.us.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.alo
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.aly
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.alz ; 2 uses
  %i.amc = load <4 x i32>, ptr %.in.ph.us.i.i, align 4, !tbaa !46
  %i.amd = load <4 x i32>, ptr %i.ama, align 4, !tbaa !46
  %i.ame = add nsw <4 x i32> %i.amd, %i.amc
  %i.amf = ashr <4 x i32> %i.ame, splat (i32 1)
  %i.amg = load <4 x i32>, ptr %i.amb, align 4, !tbaa !46
  %i.amh = add nsw <4 x i32> %i.amf, %i.amg
  store <4 x i32> %i.amh, ptr %i.amb, align 4, !tbaa !46
  br label %.split398.us.i.i
end_hunk_1
begin_hunk_2_@opj_dwt_decode:bb.a
  %i.anr = load i32, ptr %.in319.ph.2.i.i, align 4, !tbaa !46
  %i.ans = load <2 x i32>, ptr %i.anp, align 4, !tbaa !46
  %i.ant = load <2 x i32>, ptr %i.qp, align 4, !tbaa !46
  %i.anu = insertelement <2 x i32> poison, i32 %i.anq, i64 0
  %i.anv = insertelement <2 x i32> %i.anu, i32 %i.anr, i64 1
  %i.anw = add <2 x i32> %i.anv, splat (i32 2)
  %i.anx = add <2 x i32> %i.anw, %i.ant
  %i.any = ashr <2 x i32> %i.anx, splat (i32 2)
  %i.anz = sub <2 x i32> %i.ans, %i.any
  store <2 x i32> %i.anz, ptr %i.anp, align 4, !tbaa !46
  %i.aoa = or disjoint i32 %i.aml, 3
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anf, i64 28 ; 2 uses
  %i.aoc = load i32, ptr %i.aob, align 4, !tbaa !46
  %.in319.ph.v.v.3.i.i = select i1 %.not318.i.i, i32 %i.aoa, i32 %i.qr
  %.in319.ph.v.3.i.i = zext i32 %.in319.ph.v.v.3.i.i to i64
  %.in319.ph.3.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in319.ph.v.3.i.i
  %i.aod = load i32, ptr %.in319.ph.3.i.i, align 4, !tbaa !46
  %i.aoe = load i32, ptr %i.qs, align 4, !tbaa !46
  %i.aof = add i32 %i.aod, 2
  %i.aog = add i32 %i.aof, %i.aoe
  %i.aoh = ashr i32 %i.aog, 2
  %i.aoi = sub i32 %i.aoc, %i.aoh
  store i32 %i.aoi, ptr %i.aob, align 4, !tbaa !46
  br label %.split.us.i.i

.thread331.us.preheader.i.i:                      ; preds = %.preheader356.split.i.i
  %i.aoj = shl i32 %i.and, 3
  %i.aok = zext i32 %i.aml to i64
  %i.aol = zext i32 %i.aoj to i64
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.aok ; 2 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 16 ; 2 uses
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.aol
  %i.aop = load <4 x i32>, ptr %i.aon, align 4, !tbaa !46
  %i.aoq = load <4 x i32>, ptr %i.aom, align 4, !tbaa !46
  %i.aor = load <4 x i32>, ptr %i.aoo, align 4, !tbaa !46
  %i.aos = add <4 x i32> %i.aoq, splat (i32 2)
  %i.aot = add <4 x i32> %i.aos, %i.aor
  %i.aou = ashr <4 x i32> %i.aot, splat (i32 2)
  %i.aov = sub <4 x i32> %i.aop, %i.aou
  store <4 x i32> %i.aov, ptr %i.aon, align 4, !tbaa !46
  br label %.split.us.i.i

.preheader354.i.i:                                ; preds = %.split.us.i.i, %.preheader357.i.i
  br i1 %i.qv, label %.preheader353.i.i, label %opj_dwt_decode_partial_1_parallel.exit.i

.split.us.i.i:                                    ; preds = %.thread331.us.preheader.i.i, %.thread331.preheader.i.i, %.preheader356.split.us.split.us.preheader.i.i, %.preheader356.split.us.split.preheader.i.i
  %i.aow = add nsw i32 %.8361.i.i, 1              ; 2 uses
  %exitcond.not.i212.i = icmp eq i32 %i.aow, %i.ld
  br i1 %exitcond.not.i212.i, label %.preheader354.i.i, label %.preheader356.i.i, !llvm.loop !188

.preheader353.i.i:                                ; preds = %.preheader354.i.i, %.split364.us.i.i
  %.9372.i.i = phi i32 [ %i.asg, %.split364.us.i.i ], [ %i.le, %.preheader354.i.i ] ; 6 uses
  %i.aox = shl i32 %.9372.i.i, 3                  ; 8 uses
  %i.aoy = icmp slt i32 %.9372.i.i, 0
  %.not314.i.i = icmp slt i32 %.9372.i.i, %.0181299.i ; 8 uses
  %.not316.not.i.i = icmp sgt i32 %.9372.i.i, %.0181299.i
  %i.aoz = add i32 %i.aox, -4
  br i1 %i.aoy, label %.thread333.us.preheader.i.i, label %.preheader353.split.i.i

.thread333.us.preheader.i.i:                      ; preds = %.preheader353.i.i
  %i.apa = zext i32 %i.aox to i64
  %i.apb = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.apa ; 2 uses
  %i.apc = load <4 x i32>, ptr %i.apb, align 4, !tbaa !46
  %i.apd = load <4 x i32>, ptr %i.hs, align 4, !tbaa !46
  %i.ape = shl <4 x i32> %i.apd, splat (i32 1)
  %i.apf = ashr exact <4 x i32> %i.ape, splat (i32 1)
  %i.apg = add <4 x i32> %i.apf, %i.apc
  store <4 x i32> %i.apg, ptr %i.apb, align 4, !tbaa !46
  br label %.split364.us.i.i

.preheader353.split.i.i:                          ; preds = %.preheader353.i.i
  %i.aph = icmp eq i32 %.9372.i.i, 0
  br i1 %i.aph, label %.preheader353.split.split.us.preheader.i.i, label %.preheader353.split.split.i.i

.preheader353.split.split.us.preheader.i.i:       ; preds = %.preheader353.split.i.i
  %.in315.v.v.us.i.i = select i1 %.not314.i.i, i32 4, i32 %i.qx
  %.in315.v.us.i.i = zext i32 %.in315.v.v.us.i.i to i64
  %.in315.us.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us.i.i
  %i.api = load i32, ptr %.in315.us.i.i, align 4, !tbaa !46
  %.in315.v.v.us.1.i.i = select i1 %.not314.i.i, i32 5, i32 %i.qz
  %.in315.v.us.1.i.i = zext i32 %.in315.v.v.us.1.i.i to i64
  %.in315.us.1.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us.1.i.i
  %i.apj = load i32, ptr %.in315.us.1.i.i, align 4, !tbaa !46
  %i.apk = load <2 x i32>, ptr %i.hg, align 4, !tbaa !46
  %i.apl = load <2 x i32>, ptr %i.hs, align 4, !tbaa !46
  %i.apm = insertelement <2 x i32> poison, i32 %i.api, i64 0
  %i.apn = insertelement <2 x i32> %i.apm, i32 %i.apj, i64 1
  %i.apo = add <2 x i32> %i.apl, %i.apn
  %i.app = ashr <2 x i32> %i.apo, splat (i32 1)
  %i.apq = add <2 x i32> %i.app, %i.apk
  store <2 x i32> %i.apq, ptr %i.hg, align 4, !tbaa !46
  %i.apr = load i32, ptr %i.hn, align 4, !tbaa !46
  %.in315.v.v.us.2.i.i = select i1 %.not314.i.i, i32 6, i32 %i.ra
  %.in315.v.us.2.i.i = zext i32 %.in315.v.v.us.2.i.i to i64
  %.in315.us.2.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us.2.i.i
  %i.aps = load i32, ptr %.in315.us.2.i.i, align 4, !tbaa !46
  %i.apt = load i32, ptr %i.hu, align 4, !tbaa !46
  %i.apu = add i32 %i.apt, %i.aps
  %i.apv = ashr i32 %i.apu, 1
  %i.apw = add i32 %i.apv, %i.apr
  store i32 %i.apw, ptr %i.hn, align 4, !tbaa !46
  %i.apx = load i32, ptr %i.ho, align 4, !tbaa !46
  %.in315.v.v.us.3.i.i = select i1 %.not314.i.i, i32 7, i32 %i.rb
  %.in315.v.us.3.i.i = zext i32 %.in315.v.v.us.3.i.i to i64
  %.in315.us.3.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us.3.i.i
  %i.apy = load i32, ptr %.in315.us.3.i.i, align 4, !tbaa !46
  %i.apz = load i32, ptr %i.hv, align 4, !tbaa !46
  %i.aqa = add i32 %i.apz, %i.apy
  %i.aqb = ashr i32 %i.aqa, 1
  %i.aqc = add i32 %i.aqb, %i.apx
  store i32 %i.aqc, ptr %i.ho, align 4, !tbaa !46
  br label %.split364.us.i.i

.preheader353.split.split.i.i:                    ; preds = %.preheader353.split.i.i
  br i1 %.not316.not.i.i, label %.preheader353.split.split.split.us.preheader.i.i, label %.preheader353.split.split.split.preheader.i.i

.preheader353.split.split.split.preheader.i.i:    ; preds = %.preheader353.split.split.i.i
  %i.aqd = zext i32 %i.aoz to i64
  %i.aqe = zext i32 %i.aox to i64
  %i.aqf = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.aqe ; 4 uses
  %i.aqg = or disjoint i32 %i.aox, 4
  %.in315.v.v.i.i = select i1 %.not314.i.i, i32 %i.aqg, i32 %i.qx
  %.in315.v.i.i = zext i32 %.in315.v.v.i.i to i64
  %.in315.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.i.i
  %i.aqh = load i32, ptr %.in315.i.i, align 4, !tbaa !46
  %i.aqi = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.aqd ; 3 uses
  %i.aqj = or disjoint i32 %i.aox, 5
  %.in315.v.v.1.i.i = select i1 %.not314.i.i, i32 %i.aqj, i32 %i.qz
  %.in315.v.1.i.i = zext i32 %.in315.v.v.1.i.i to i64
  %.in315.1.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.1.i.i
  %i.aqk = load i32, ptr %.in315.1.i.i, align 4, !tbaa !46
  %i.aql = load <2 x i32>, ptr %i.aqf, align 4, !tbaa !46
  %i.aqm = load <2 x i32>, ptr %i.aqi, align 4, !tbaa !46
  %i.aqn = insertelement <2 x i32> poison, i32 %i.aqh, i64 0
  %i.aqo = insertelement <2 x i32> %i.aqn, i32 %i.aqk, i64 1
  %i.aqp = add <2 x i32> %i.aqm, %i.aqo
  %i.aqq = ashr <2 x i32> %i.aqp, splat (i32 1)
  %i.aqr = add <2 x i32> %i.aqq, %i.aql
  store <2 x i32> %i.aqr, ptr %i.aqf, align 4, !tbaa !46
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqf, i64 8 ; 2 uses
  %i.aqt = load i32, ptr %i.aqs, align 4, !tbaa !46
  %i.aqu = or disjoint i32 %i.aox, 6
  %.in315.v.v.2.i.i = select i1 %.not314.i.i, i32 %i.aqu, i32 %i.ra
  %.in315.v.2.i.i = zext i32 %.in315.v.v.2.i.i to i64
  %.in315.2.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.2.i.i
  %i.aqv = load i32, ptr %.in315.2.i.i, align 4, !tbaa !46
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqi, i64 8
  %i.aqx = load i32, ptr %i.aqw, align 4, !tbaa !46
  %i.aqy = add i32 %i.aqx, %i.aqv
  %i.aqz = ashr i32 %i.aqy, 1
  %i.ara = add i32 %i.aqz, %i.aqt
  store i32 %i.ara, ptr %i.aqs, align 4, !tbaa !46
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqf, i64 12 ; 2 uses
  %i.arc = load i32, ptr %i.arb, align 4, !tbaa !46
  %i.ard = or disjoint i32 %i.aox, 7
  %.in315.v.v.3.i.i = select i1 %.not314.i.i, i32 %i.ard, i32 %i.rb
  %.in315.v.3.i.i = zext i32 %.in315.v.v.3.i.i to i64
  %.in315.3.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.3.i.i
  %i.are = load i32, ptr %.in315.3.i.i, align 4, !tbaa !46
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqi, i64 12
  %i.arg = load i32, ptr %i.arf, align 4, !tbaa !46
  %i.arh = add i32 %i.arg, %i.are
  %i.ari = ashr i32 %i.arh, 1
  %i.arj = add i32 %i.ari, %i.arc
  store i32 %i.arj, ptr %i.arb, align 4, !tbaa !46
  br label %.split364.us.i.i

.preheader353.split.split.split.us.preheader.i.i: ; preds = %.preheader353.split.split.i.i
  %i.ark = zext i32 %i.aox to i64
  %i.arl = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ark ; 4 uses
  %i.arm = load <2 x i32>, ptr %i.arl, align 4, !tbaa !46
  %i.arn = load <2 x i32>, ptr %.in315.us370.i.i, align 4, !tbaa !46
  %i.aro = freeze <2 x i32> %i.arn
  %i.arp = shl <2 x i32> %i.aro, splat (i32 1)
  %i.arq = ashr exact <2 x i32> %i.arp, splat (i32 1)
  %i.arr = add <2 x i32> %i.arq, %i.arm
  store <2 x i32> %i.arr, ptr %i.arl, align 4, !tbaa !46
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arl, i64 8 ; 2 uses
  %i.art = load i32, ptr %i.ars, align 4, !tbaa !46
  %i.aru = load i32, ptr %.in315.us370.2.i.i, align 4, !tbaa !46
  %i.arv = load i32, ptr %i.rd, align 4, !tbaa !46
  %i.arw = add i32 %i.arv, %i.aru
  %i.arx = ashr i32 %i.arw, 1
  %i.ary = add i32 %i.arx, %i.art
  store i32 %i.ary, ptr %i.ars, align 4, !tbaa !46
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arl, i64 12 ; 2 uses
  %i.asa = load i32, ptr %i.arz, align 4, !tbaa !46
  %i.asb = load i32, ptr %.in315.us370.3.i.i, align 4, !tbaa !46
  %i.asc = load i32, ptr %i.rf, align 4, !tbaa !46
  %i.asd = add i32 %i.asc, %i.asb
  %i.ase = ashr i32 %i.asd, 1
  %i.asf = add i32 %i.ase, %i.asa
  store i32 %i.asf, ptr %i.arz, align 4, !tbaa !46
  br label %.split364.us.i.i

.split364.us.i.i:                                 ; preds = %.preheader353.split.split.split.us.preheader.i.i, %.preheader353.split.split.split.preheader.i.i, %.preheader353.split.split.us.preheader.i.i, %.thread333.us.preheader.i.i
  %i.asg = add nsw i32 %.9372.i.i, 1              ; 2 uses
  %exitcond433.not.i.i = icmp eq i32 %i.asg, %i.lg
  br i1 %exitcond433.not.i.i, label %opj_dwt_decode_partial_1_parallel.exit.i, label %.preheader353.i.i, !llvm.loop !189

opj_dwt_decode_partial_1_parallel.exit.i:         ; preds = %.split364.us.i.i, %.split398.us.i.i, %.preheader354.i.i, %.preheader351.preheader.i.i, %.preheader342.i.i, %.loopexit347.i.i, %bb.bk
  %i.ash = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.fe, i32 noundef %.0177.i, i32 noundef %i.lv, i32 noundef %i.aar, i32 noundef %i.ma, ptr noundef nonnull %i.so, i32 noundef 1, i32 noundef 4, i32 noundef 1) #15
  %.not188.not.i = icmp eq i32 %i.ash, 0
  br i1 %.not188.not.i, label %.thread288.i, label %bb.bi, !llvm.loop !190

.thread288.i:                                     ; preds = %opj_dwt_decode_partial_1_parallel.exit.i
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.fe) #15
  tail call void @opj_aligned_free(ptr noundef nonnull %i.hg) #15
  br label %opj_dwt_decode_partial_tile.exit

bb.bs:                                            ; preds = %bb.bi
  %i.asi = add nuw i32 %.0184296.i, 1             ; 2 uses
  %exitcond309.not.i = icmp eq i32 %i.asi, %2
  br i1 %exitcond309.not.i, label %._crit_edge.i18, label %bb.x, !llvm.loop !191

._crit_edge.i18:                                  ; preds = %bb.bs, %.preheader294.i
  tail call void @opj_aligned_free(ptr noundef nonnull %i.hg) #15
  %i.asj = getelementptr inbounds nuw i8, ptr %i.ed, i64 176
  %i.ask = load i32, ptr %i.asj, align 8, !tbaa !67 ; 2 uses
  %i.asl = load i32, ptr %i.ed, align 8, !tbaa !32 ; 2 uses
  %i.asm = sub i32 %i.ask, %i.asl
  %i.asn = getelementptr inbounds nuw i8, ptr %i.ed, i64 180
  %i.aso = load i32, ptr %i.asn, align 4, !tbaa !68
  %i.asp = load i32, ptr %i.ez, align 4, !tbaa !34 ; 2 uses
  %i.asq = sub i32 %i.aso, %i.asp
  %i.asr = getelementptr inbounds nuw i8, ptr %i.ed, i64 184
  %i.ass = load i32, ptr %i.asr, align 8, !tbaa !69 ; 2 uses
  %i.ast = sub i32 %i.ass, %i.asl
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ed, i64 188
  %i.asv = load i32, ptr %i.asu, align 4, !tbaa !70
  %i.asw = sub i32 %i.asv, %i.asp
  %i.asx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.asy = load ptr, ptr %i.asx, align 8, !tbaa !71
  %i.asz = sub i32 %i.ass, %i.ask
  %i.ata = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.asm, i32 noundef %i.asq, i32 noundef %i.ast, i32 noundef %i.asw, ptr noundef %i.asy, i32 noundef 1, i32 noundef %i.asz, i32 noundef 1) #15 ; 0 uses
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.fe) #15
  br label %opj_dwt_decode_partial_tile.exit

opj_dwt_decode_partial_tile.exit:                 ; preds = %._crit_edge.i18, %.thread288.i, %bb.bg, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %opj_dwt_decode_tile.exit
  %.0 = phi i32 [ %.10.i, %opj_dwt_decode_tile.exit ], [ 1, %._crit_edge.i18 ], [ 1, %bb.r ], [ 1, %bb.v ], [ 0, %bb.w ], [ 0, %bb.t ], [ 1, %bb.s ], [ 0, %.thread288.i ], [ 0, %bb.bg ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @opj_dwt_getnorm(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %1, 0                        ; 2 uses
  %i.b = icmp ugt i32 %0, 9
  %or.cond = and i1 %i.b, %i.a
  %i.c = tail call i32 @llvm.umin.i32(i32 %0, i32 8)
  %spec.store.select = select i1 %i.a, i32 %0, i32 %i.c
  %i.d = zext i32 %spec.store.select to i64
  %.0 = select i1 %or.cond, i64 9, i64 %i.d
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [80 x i8], ptr @opj_dwt_norms, i64 %i.e
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0
  %i.h = load double, ptr %i.g, align 8, !tbaa !78
  ret double %i.h
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @opj_dwt_encode_real(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = tail call fastcc i32 @opj_dwt_encode_procedure(ptr noundef %i.b, ptr noundef %1, ptr noundef nonnull @opj_dwt_encode_and_deinterleave_v_real, ptr noundef nonnull @opj_dwt_encode_and_deinterleave_h_one_row_real)
  ret i32 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @opj_dwt_encode_and_deinterleave_v_real(ptr nofree noundef captures(none) %0, ptr nofree noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %.not = icmp ne i32 %3, 0                       ; 8 uses
  %i.c = zext i1 %.not to i32
  %i.d = add i32 %2, %i.c                         ; 3 uses
  %i.e = lshr i32 %i.d, 1                         ; 16 uses
  %i.f = sub i32 %2, %i.e                         ; 12 uses
  %i.g = icmp eq i32 %2, 1
  br i1 %i.g, label %opj_dwt_deinterleave_v_cols.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %5, 8                        ; 3 uses
  %.not41.i = icmp eq i32 %2, 0                   ; 2 uses
  br i1 %i.h, label %.preheader.i, label %.preheader33.i

.preheader33.i:                                   ; preds = %bb.b
  br i1 %.not41.i, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.preheader32.lr.ph.i

.preheader32.lr.ph.i:                             ; preds = %.preheader33.i
  %.not40.i = icmp eq i32 %5, 0
  br i1 %.not40.i, label %.preheader32.preheader.i, label %.preheader32.us.preheader.i

.preheader32.us.preheader.i:                      ; preds = %.preheader32.lr.ph.i
  %i.i = tail call i32 @llvm.usub.sat.i32(i32 7, i32 %5)
  %i.j = shl nuw nsw i32 %i.i, 2
  %narrow.i = add nuw nsw i32 %i.j, 4
  %i.k = zext nneg i32 %narrow.i to i64
  %wide.trip.count53.i = zext i32 %2 to i64
  %wide.trip.count.i = zext i32 %5 to i64         ; 6 uses
  %i.l = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %i.m = sub i64 %i.b, %i.a
  %min.iters.check = icmp ult i32 %5, 20
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  %i.o = icmp ugt i64 %i.l, 4294967295
  %invariant.op = add i64 %i.m, -1
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 4 uses
  %ind.escape = add nsw i64 %n.vec, -1            ; 2 uses
  %i.p = trunc i64 %ind.escape to i32
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader32.us.i

.preheader32.preheader.i:                         ; preds = %.preheader32.lr.ph.i
  %wide.trip.count62.i = zext i32 %2 to i64       ; 2 uses
  %xtraiter177 = and i64 %wide.trip.count62.i, 3  ; 3 uses
  %i.q = icmp ult i32 %2, 4
  br i1 %i.q, label %.preheader32.i.epil.preheader, label %.preheader32.preheader.i.new

.preheader32.preheader.i.new:                     ; preds = %.preheader32.preheader.i
  %unroll_iter = and i64 %wide.trip.count62.i, 4294967292
  br label %.preheader32.i

.preheader32.us.i:                                ; preds = %._crit_edge.us.i, %.preheader32.us.preheader.i
  %indvars.iv50.i = phi i64 [ 0, %.preheader32.us.preheader.i ], [ %indvars.iv.next51.i, %._crit_edge.us.i ] ; 2 uses
  %i.r = trunc nuw i64 %indvars.iv50.i to i32     ; 2 uses
  %i.s = shl i32 %i.r, 3                          ; 9 uses
  %i.t = mul i32 %4, %i.r                         ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader32.us.i
  %i.u = xor i32 %i.s, -1
  %i.v = icmp ult i32 %i.u, %i.n
  %i.w = xor i32 %i.t, -1
  %i.x = icmp ult i32 %i.w, %i.n
  %i.y = or i1 %i.x, %i.o
  %i.z = or i1 %i.v, %i.y
  br i1 %i.z, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aa = zext i32 %i.s to i64
  %i.ab = zext i32 %i.t to i64
  %i.ac = sub nsw i64 %i.aa, %i.ab
  %i.ad = shl nsw i64 %i.ac, 2
  %.reass = add i64 %i.ad, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.ae = trunc i64 %index to i32                 ; 2 uses
  %i.af = add i32 %i.t, %i.ae
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <4 x i32>, ptr %i.ah, align 4, !tbaa !46
  %wide.load171 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !46
  %i.aj = add i32 %i.s, %i.ae
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <4 x i32> %wide.load, ptr %i.al, align 4, !tbaa !46
  store <4 x i32> %wide.load171, ptr %i.am, align 4, !tbaa !46
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !200

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..preheader31_crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader32.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader32.us.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ao = trunc nuw i64 %indvars.iv.i.prol to i32 ; 3 uses
  %i.ap = add i32 %i.t, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !46
  %i.at = add i32 %i.s, %i.ao
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.au
  store i32 %i.as, ptr %i.av, align 4, !tbaa !46
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !201

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.lcssa176.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.i.prol, %scalar.ph.prol ]
  %.lcssa175.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.ao, %scalar.ph.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.aw = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %..preheader31_crit_edge.us.i, label %scalar.ph

end_hunk_2
