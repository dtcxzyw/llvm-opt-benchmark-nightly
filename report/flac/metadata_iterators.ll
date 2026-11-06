Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/metadata_iterators?download=true
inline.NumInlined: 207
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 89
loop-unroll.NumUnrolled: 109
begin_hunk_0_@FLAC__metadata_chain_write:bb.a
  %.not.i.i.i = icmp eq i32 %.highbits.i.i.i, 0
  br i1 %.not.i.i.i, label %write_metadata_block_header_cb_.exit.i.i, label %write_metadata_block_header_cb_.exit.thread.i.i

write_metadata_block_header_cb_.exit.thread.i.i:  ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #32
  br label %chain_rewrite_metadata_in_place_.exit

write_metadata_block_header_cb_.exit.i.i:         ; preds = %bb.l
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !76
  %.not6.i.i.i = icmp eq i32 %i.ga, 0
  %i.gb = select i1 %.not6.i.i.i, i32 0, i32 128
  %i.gc = load i32, ptr %i.fw, align 8, !tbaa !79
  %i.gd = or i32 %i.gb, %i.gc
  %i.ge = trunc i32 %i.gd to i8
  store i8 %i.ge, ptr %i.g, align 1, !tbaa !52
  %i.gf = trunc i32 %i.fy to i8
  store i8 %i.gf, ptr %i.ac, align 1, !tbaa !52
  %i.gg = lshr i32 %i.fy, 8
  %i.gh = trunc i32 %i.gg to i8
  store i8 %i.gh, ptr %i.ad, align 1, !tbaa !52
  %i.gi = lshr i32 %i.fy, 16
  %i.gj = trunc i32 %i.gi to i8
  store i8 %i.gj, ptr %i.ae, align 1, !tbaa !52
  %i.gk = call i64 @fwrite(ptr noundef nonnull %i.g, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.v) #32, !inline_history !223
  %.not7.i.not.i.i = icmp eq i64 %i.gk, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #32
  br i1 %.not7.i.not.i.i, label %bb.m, label %chain_rewrite_metadata_in_place_.exit

bb.m:                                             ; preds = %write_metadata_block_header_cb_.exit.i.i
  %i.gl = load ptr, ptr %.0.i.i, align 8, !tbaa !138 ; 36 uses
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !79
  switch i32 %i.gm, label %bb.bb [
    i32 0, label %bb.n
    i32 1, label %bb.o
    i32 2, label %bb.q
    i32 3, label %bb.s
    i32 4, label %bb.u
    i32 5, label %bb.ab
    i32 6, label %bb.aq
  ]

bb.n:                                             ; preds = %bb.m
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 36
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !86
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !87
  %i.gs = load i32, ptr %i.gn, align 8, !tbaa !81 ; 2 uses
  %i.gt = trunc i32 %i.gs to i8
  store i8 %i.gt, ptr %i.ep, align 1, !tbaa !52
  %i.gu = lshr i32 %i.gs, 8
  %i.gv = trunc i32 %i.gu to i8
  store i8 %i.gv, ptr %i.f, align 16, !tbaa !52
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gl, i64 20
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !82 ; 2 uses
  %i.gy = trunc i32 %i.gx to i8
  store i8 %i.gy, ptr %i.eq, align 1, !tbaa !52
  %i.gz = lshr i32 %i.gx, 8
  %i.ha = trunc i32 %i.gz to i8
  store i8 %i.ha, ptr %i.er, align 2, !tbaa !52
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !83 ; 3 uses
  %i.hd = trunc i32 %i.hc to i8
  store i8 %i.hd, ptr %i.es, align 2, !tbaa !52
  %i.he = lshr i32 %i.hc, 8
  %i.hf = trunc i32 %i.he to i8
  store i8 %i.hf, ptr %i.et, align 1, !tbaa !52
  %i.hg = lshr i32 %i.hc, 16
  %i.hh = trunc i32 %i.hg to i8
  store i8 %i.hh, ptr %i.eu, align 4, !tbaa !52
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gl, i64 28
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !84 ; 3 uses
  %i.hk = trunc i32 %i.hj to i8
  store i8 %i.hk, ptr %i.ew, align 1, !tbaa !52
  %i.hl = lshr i32 %i.hj, 8
  %i.hm = trunc i32 %i.hl to i8
  store i8 %i.hm, ptr %i.ex, align 8, !tbaa !52
  %i.hn = lshr i32 %i.hj, 16
  %i.ho = trunc i32 %i.hn to i8
  store i8 %i.ho, ptr %i.ey, align 1, !tbaa !52
  %i.hp = add i32 %i.gr, -1                       ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !85 ; 3 uses
  %i.hs = lshr i32 %i.hr, 12
  %i.ht = trunc i32 %i.hs to i8
  store i8 %i.ht, ptr %i.ev, align 2, !tbaa !52
  %i.hu = lshr i32 %i.hr, 4
  %i.hv = trunc i32 %i.hu to i8
  store i8 %i.hv, ptr %i.ez, align 1, !tbaa !52
  %i.hw = shl i32 %i.hr, 4
  %i.hx = shl i32 %i.gp, 1
  %i.hy = add i32 %i.hx, 254
  %i.hz = lshr i32 %i.hp, 4
  %i.ia = or i32 %i.hz, %i.hy
  %i.ib = or i32 %i.ia, %i.hw
  %i.ic = trunc i32 %i.ib to i8
  store i8 %i.ic, ptr %i.fa, align 4, !tbaa !52
  %i.id = shl i32 %i.hp, 4
  %i.ie = zext i32 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !88 ; 5 uses
  %i.ih = lshr i64 %i.ig, 32
  %i.ii = and i64 %i.ih, 15
  %i.ij = or disjoint i64 %i.ii, %i.ie
  %i.ik = trunc i64 %i.ij to i8
  store i8 %i.ik, ptr %i.fb, align 1, !tbaa !52
  %i.il = trunc i64 %i.ig to i8
  store i8 %i.il, ptr %i.fd, align 1, !tbaa !52
  %i.im = lshr i64 %i.ig, 8
  %i.in = trunc i64 %i.im to i8
  store i8 %i.in, ptr %i.fe, align 16, !tbaa !52
  %i.io = lshr i64 %i.ig, 16
  %i.ip = trunc i64 %i.io to i8
  store i8 %i.ip, ptr %i.ff, align 1, !tbaa !52
  %i.iq = lshr i64 %i.ig, 24
  %i.ir = trunc i64 %i.iq to i8
  store i8 %i.ir, ptr %i.fg, align 2, !tbaa !52
  %i.is = getelementptr inbounds nuw i8, ptr %i.gl, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.fc, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.is, i64 noundef 16, i1 noundef false) #32
  %i.it = call i64 @fwrite(ptr noundef nonnull %i.f, i64 noundef 1, i64 noundef 34, ptr noundef nonnull %i.v) #32, !inline_history !25
  %.not.i.i8.i = icmp eq i64 %i.it, 34
  %..i.i.i = zext i1 %.not.i.i8.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  br label %write_metadata_block_data_cb_.exit.i

bb.o:                                             ; preds = %bb.m
  %i.iu = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !78 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.e, i8 noundef 0, i64 noundef 1024, i1 noundef false) #32
  %i.iw = lshr i32 %i.iv, 10                      ; 2 uses
  %.not2.i.i.i = icmp eq i32 %i.iw, 0
  br i1 %.not2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.ix = add nuw nsw i32 %.01.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.ix, %i.iw
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !26

.lr.ph.i.i.i:                                     ; preds = %bb.o, %bb.p
  %.01.i.i.i = phi i32 [ %i.ix, %bb.p ], [ 0, %bb.o ]
  %i.iy = call i64 @fwrite(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef 1024, ptr noundef nonnull %i.v) #32, !inline_history !27
  %.not12.i.i.i = icmp eq i64 %i.iy, 1024
  br i1 %.not12.i.i.i, label %bb.p, label %write_metadata_block_data_padding_cb_.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.p, %bb.o
  %i.iz = and i32 %i.iv, 1023
  %i.ja = zext nneg i32 %i.iz to i64              ; 2 uses
  %i.jb = call i64 @fwrite(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef %i.ja, ptr noundef nonnull %i.v) #32, !inline_history !27
  %.not.i28.i.i = icmp eq i64 %i.jb, %i.ja
  %..i29.i.i = zext i1 %.not.i28.i.i to i32
  br label %write_metadata_block_data_padding_cb_.exit.i.i

write_metadata_block_data_padding_cb_.exit.i.i:   ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i
  %.011.i.i.i = phi i32 [ %..i29.i.i, %._crit_edge.i.i.i ], [ 0, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  br label %write_metadata_block_data_cb_.exit.i

bb.q:                                             ; preds = %bb.m
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.jd = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !78
  %i.jf = call i64 @fwrite(ptr noundef nonnull %i.jc, i64 noundef 1, i64 noundef %i.eo, ptr noundef nonnull %i.v) #32, !inline_history !28
  %.not.i30.i.i = icmp eq i64 %i.jf, %i.eo
  br i1 %.not.i30.i.i, label %bb.r, label %chain_rewrite_metadata_in_place_.exit

bb.r:                                             ; preds = %bb.q
  %i.jg = sub i32 %i.je, %i.en
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !90
  %i.jj = zext i32 %i.jg to i64                   ; 2 uses
  %i.jk = call i64 @fwrite(ptr noundef %i.ji, i64 noundef 1, i64 noundef %i.jj, ptr noundef nonnull %i.v) #32, !inline_history !28
  %.not12.i31.i.i = icmp eq i64 %i.jk, %i.jj
  %..i32.i.i = zext i1 %.not12.i31.i.i to i32
  br label %write_metadata_block_data_cb_.exit.i

bb.s:                                             ; preds = %bb.m
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !92
  %.not25.i.i.i = icmp eq i32 %i.jm, 0
  br i1 %.not25.i.i.i, label %write_metadata_block_data_seektable_cb_.exit.i.i, label %.lr.ph.i33.i.i

.lr.ph.i33.i.i:                                   ; preds = %bb.s
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  br label %.lr.ph.i.i.i.i

bb.t:                                             ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.jo = load i32, ptr %i.jl, align 8, !tbaa !92
  %i.jp = zext i32 %i.jo to i64
  %i.jq = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.jp
  br i1 %i.jq, label %.lr.ph.i.i.i.i, label %write_metadata_block_data_seektable_cb_.exit.i.i, !llvm.loop !29

.lr.ph.i.i.i.i:                                   ; preds = %bb.t, %.lr.ph.i33.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i33.i.i ], [ %indvars.iv.next.i.i.i, %bb.t ] ; 2 uses
  %i.jr = load ptr, ptr %i.jn, align 8, !tbaa !93
  %i.js = getelementptr inbounds nuw [24 x i8], ptr %i.jr, i64 %indvars.iv.i.i.i ; 3 uses
  %4 = load <8 x i8>, ptr %i.js, align 8, !tbaa !95
  %5 = shufflevector <8 x i8> %4, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %5, ptr %i.d, align 16, !tbaa !52
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %6 = load <8 x i8>, ptr %i.jt, align 8, !tbaa !96
  %7 = shufflevector <8 x i8> %6, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %7, ptr %i.ej, align 8, !tbaa !52
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !97 ; 2 uses
  %i.jw = trunc i32 %i.jv to i8
  store i8 %i.jw, ptr %i.ek, align 1, !tbaa !52
  %i.jx = lshr i32 %i.jv, 8
  %i.jy = trunc i32 %i.jx to i8
  store i8 %i.jy, ptr %i.el, align 16, !tbaa !52
  %i.jz = call i64 @fwrite(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 18, ptr noundef nonnull %i.v) #32, !inline_history !30
  %.not.i34.i.i = icmp eq i64 %i.jz, 18
  br i1 %.not.i34.i.i, label %bb.t, label %write_metadata_block_data_seektable_cb_.exit.i.i

write_metadata_block_data_seektable_cb_.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.t, %bb.s
  %.011.i36.i.i = phi i32 [ 1, %bb.s ], [ 0, %.lr.ph.i.i.i.i ], [ 1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  br label %write_metadata_block_data_cb_.exit.i

bb.u:                                             ; preds = %bb.m
  %i.ka = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  br i1 %.not.i.i.i.i, label %pack_uint32_little_endian_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.u
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !104 ; 2 uses
  br i1 %i.ft, label %.lr.ph.i.i37.i.i.epil.preheader, label %.lr.ph.i.i37.i.i

.lr.ph.i.i37.i.i:                                 ; preds = %.lr.ph.i.preheader.i.i.i, %.lr.ph.i.i37.i.i
  %.058.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i37.i.i ], [ %i.kb, %.lr.ph.i.preheader.i.i.i ] ; 4 uses
  %.067.i.i.i.i = phi ptr [ %i.kq, %.lr.ph.i.i37.i.i ], [ %i.c, %.lr.ph.i.preheader.i.i.i ] ; 9 uses
  %niter148 = phi i32 [ %niter148.next.7, %.lr.ph.i.i37.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i ]
  %i.kc = trunc i32 %.058.i.i.i.i to i8
  %i.kd = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i, i64 1
  store i8 %i.kc, ptr %.067.i.i.i.i, align 1, !tbaa !52
  %i.ke = lshr i32 %.058.i.i.i.i, 8
  %i.kf = trunc i32 %i.ke to i8
  %i.kg = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i, i64 2
  store i8 %i.kf, ptr %i.kd, align 1, !tbaa !52
  %i.kh = lshr i32 %.058.i.i.i.i, 16
  %i.ki = trunc i32 %i.kh to i8
  %i.kj = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i, i64 3
  store i8 %i.ki, ptr %i.kg, align 1, !tbaa !52
  %i.kk = lshr i32 %.058.i.i.i.i, 24
  %i.kl = trunc nuw i32 %i.kk to i8
  %i.km = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i, i64 4
  store i8 %i.kl, ptr %i.kj, align 1, !tbaa !52
  %i.kn = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i, i64 5
  store i8 0, ptr %i.km, align 1, !tbaa !52
  %i.ko = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i, i64 6
  store i8 0, ptr %i.kn, align 1, !tbaa !52
  %i.kp = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i, i64 7
  store i8 0, ptr %i.ko, align 1, !tbaa !52
  %i.kq = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i, i64 8 ; 2 uses
  store i8 0, ptr %i.kp, align 1, !tbaa !52
  %niter148.next.7 = add i32 %niter148, 8         ; 2 uses
  %niter148.ncmp.7 = icmp eq i32 %niter148.next.7, %unroll_iter147
  br i1 %niter148.ncmp.7, label %pack_uint32_little_endian_.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i37.i.i, !llvm.loop !31

pack_uint32_little_endian_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i37.i.i
  br i1 %lcmp.mod145.not, label %pack_uint32_little_endian_.exit.i.i.i, label %.lr.ph.i.i37.i.i.epil.preheader

.lr.ph.i.i37.i.i.epil.preheader:                  ; preds = %pack_uint32_little_endian_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.preheader.i.i.i
  %.058.i.i.i.i.epil.init = phi i32 [ %i.kb, %.lr.ph.i.preheader.i.i.i ], [ 0, %pack_uint32_little_endian_.exit.i.i.i.loopexit.unr-lcssa ]
  %.067.i.i.i.i.epil.init = phi ptr [ %i.c, %.lr.ph.i.preheader.i.i.i ], [ %i.kq, %pack_uint32_little_endian_.exit.i.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod146)
  br label %.lr.ph.i.i37.i.i.epil

.lr.ph.i.i37.i.i.epil:                            ; preds = %.lr.ph.i.i37.i.i.epil, %.lr.ph.i.i37.i.i.epil.preheader
  %.058.i.i.i.i.epil = phi i32 [ %i.kt, %.lr.ph.i.i37.i.i.epil ], [ %.058.i.i.i.i.epil.init, %.lr.ph.i.i37.i.i.epil.preheader ] ; 2 uses
  %.067.i.i.i.i.epil = phi ptr [ %i.ks, %.lr.ph.i.i37.i.i.epil ], [ %.067.i.i.i.i.epil.init, %.lr.ph.i.i37.i.i.epil.preheader ] ; 2 uses
  %epil.iter144 = phi i32 [ %epil.iter144.next, %.lr.ph.i.i37.i.i.epil ], [ 0, %.lr.ph.i.i37.i.i.epil.preheader ]
  %i.kr = trunc i32 %.058.i.i.i.i.epil to i8
  %i.ks = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i.epil, i64 1
  store i8 %i.kr, ptr %.067.i.i.i.i.epil, align 1, !tbaa !52
  %i.kt = lshr i32 %.058.i.i.i.i.epil, 8
  %epil.iter144.next = add i32 %epil.iter144, 1   ; 2 uses
  %epil.iter144.cmp.not = icmp eq i32 %epil.iter144.next, %xtraiter143
  br i1 %epil.iter144.cmp.not, label %pack_uint32_little_endian_.exit.i.i.i, label %.lr.ph.i.i37.i.i.epil, !llvm.loop !224

pack_uint32_little_endian_.exit.i.i.i:            ; preds = %pack_uint32_little_endian_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i37.i.i.epil, %bb.u
  %i.ku = call i64 @fwrite(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef %i.eh, ptr noundef nonnull %i.v) #32, !inline_history !32
  %.not.i38.i.i = icmp eq i64 %i.ku, %i.eh
  br i1 %.not.i38.i.i, label %bb.v, label %write_metadata_block_data_vorbis_comment_cb_.exit.i.i

bb.v:                                             ; preds = %pack_uint32_little_endian_.exit.i.i.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !152
  %i.kx = load i32, ptr %i.ka, align 8, !tbaa !104
  %i.ky = zext i32 %i.kx to i64
  %i.kz = call i64 @fwrite(ptr noundef %i.kw, i64 noundef 1, i64 noundef %i.ky, ptr noundef nonnull %i.v) #32, !inline_history !32
  %i.la = load i32, ptr %i.ka, align 8, !tbaa !104
  %i.lb = zext i32 %i.la to i64
  %.not37.i.i.i = icmp eq i64 %i.kz, %i.lb
  br i1 %.not37.i.i.i, label %bb.w, label %write_metadata_block_data_vorbis_comment_cb_.exit.i.i

bb.w:                                             ; preds = %bb.v
  %i.lc = getelementptr inbounds nuw i8, ptr %i.gl, i64 32 ; 4 uses
  br i1 %.not.i41.i.i.i, label %pack_uint32_little_endian_.exit47.i.i.i, label %.lr.ph.i42.preheader.i.i.i

.lr.ph.i42.preheader.i.i.i:                       ; preds = %bb.w
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !105 ; 2 uses
  br i1 %i.fu, label %.lr.ph.i42.i.i.i.epil.preheader, label %.lr.ph.i42.i.i.i

.lr.ph.i42.i.i.i:                                 ; preds = %.lr.ph.i42.preheader.i.i.i, %.lr.ph.i42.i.i.i
  %.058.i44.i.i.i = phi i32 [ 0, %.lr.ph.i42.i.i.i ], [ %i.ld, %.lr.ph.i42.preheader.i.i.i ] ; 4 uses
  %.067.i45.i.i.i = phi ptr [ %i.ls, %.lr.ph.i42.i.i.i ], [ %i.c, %.lr.ph.i42.preheader.i.i.i ] ; 9 uses
  %niter154 = phi i32 [ %niter154.next.7, %.lr.ph.i42.i.i.i ], [ 0, %.lr.ph.i42.preheader.i.i.i ]
  %i.le = trunc i32 %.058.i44.i.i.i to i8
  %i.lf = getelementptr inbounds nuw i8, ptr %.067.i45.i.i.i, i64 1
  store i8 %i.le, ptr %.067.i45.i.i.i, align 1, !tbaa !52
  %i.lg = lshr i32 %.058.i44.i.i.i, 8
  %i.lh = trunc i32 %i.lg to i8
  %i.li = getelementptr inbounds nuw i8, ptr %.067.i45.i.i.i, i64 2
  store i8 %i.lh, ptr %i.lf, align 1, !tbaa !52
  %i.lj = lshr i32 %.058.i44.i.i.i, 16
  %i.lk = trunc i32 %i.lj to i8
  %i.ll = getelementptr inbounds nuw i8, ptr %.067.i45.i.i.i, i64 3
  store i8 %i.lk, ptr %i.li, align 1, !tbaa !52
  %i.lm = lshr i32 %.058.i44.i.i.i, 24
  %i.ln = trunc nuw i32 %i.lm to i8
  %i.lo = getelementptr inbounds nuw i8, ptr %.067.i45.i.i.i, i64 4
  store i8 %i.ln, ptr %i.ll, align 1, !tbaa !52
  %i.lp = getelementptr inbounds nuw i8, ptr %.067.i45.i.i.i, i64 5
  store i8 0, ptr %i.lo, align 1, !tbaa !52
  %i.lq = getelementptr inbounds nuw i8, ptr %.067.i45.i.i.i, i64 6
  store i8 0, ptr %i.lp, align 1, !tbaa !52
  %i.lr = getelementptr inbounds nuw i8, ptr %.067.i45.i.i.i, i64 7
  store i8 0, ptr %i.lq, align 1, !tbaa !52
  %i.ls = getelementptr inbounds nuw i8, ptr %.067.i45.i.i.i, i64 8 ; 2 uses
  store i8 0, ptr %i.lr, align 1, !tbaa !52
  %niter154.next.7 = add i32 %niter154, 8         ; 2 uses
  %niter154.ncmp.7 = icmp eq i32 %niter154.next.7, %unroll_iter153
  br i1 %niter154.ncmp.7, label %pack_uint32_little_endian_.exit47.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i42.i.i.i, !llvm.loop !31

pack_uint32_little_endian_.exit47.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i42.i.i.i
  br i1 %lcmp.mod151.not, label %pack_uint32_little_endian_.exit47.i.i.i, label %.lr.ph.i42.i.i.i.epil.preheader

.lr.ph.i42.i.i.i.epil.preheader:                  ; preds = %pack_uint32_little_endian_.exit47.i.i.i.loopexit.unr-lcssa, %.lr.ph.i42.preheader.i.i.i
  %.058.i44.i.i.i.epil.init = phi i32 [ %i.ld, %.lr.ph.i42.preheader.i.i.i ], [ 0, %pack_uint32_little_endian_.exit47.i.i.i.loopexit.unr-lcssa ]
  %.067.i45.i.i.i.epil.init = phi ptr [ %i.c, %.lr.ph.i42.preheader.i.i.i ], [ %i.ls, %pack_uint32_little_endian_.exit47.i.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod152)
  br label %.lr.ph.i42.i.i.i.epil

.lr.ph.i42.i.i.i.epil:                            ; preds = %.lr.ph.i42.i.i.i.epil, %.lr.ph.i42.i.i.i.epil.preheader
  %.058.i44.i.i.i.epil = phi i32 [ %i.lv, %.lr.ph.i42.i.i.i.epil ], [ %.058.i44.i.i.i.epil.init, %.lr.ph.i42.i.i.i.epil.preheader ] ; 2 uses
  %.067.i45.i.i.i.epil = phi ptr [ %i.lu, %.lr.ph.i42.i.i.i.epil ], [ %.067.i45.i.i.i.epil.init, %.lr.ph.i42.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter150 = phi i32 [ %epil.iter150.next, %.lr.ph.i42.i.i.i.epil ], [ 0, %.lr.ph.i42.i.i.i.epil.preheader ]
  %i.lt = trunc i32 %.058.i44.i.i.i.epil to i8
  %i.lu = getelementptr inbounds nuw i8, ptr %.067.i45.i.i.i.epil, i64 1
  store i8 %i.lt, ptr %.067.i45.i.i.i.epil, align 1, !tbaa !52
  %i.lv = lshr i32 %.058.i44.i.i.i.epil, 8
  %epil.iter150.next = add i32 %epil.iter150, 1   ; 2 uses
  %epil.iter150.cmp.not = icmp eq i32 %epil.iter150.next, %xtraiter149
  br i1 %epil.iter150.cmp.not, label %pack_uint32_little_endian_.exit47.i.i.i, label %.lr.ph.i42.i.i.i.epil, !llvm.loop !225

pack_uint32_little_endian_.exit47.i.i.i:          ; preds = %pack_uint32_little_endian_.exit47.i.i.i.loopexit.unr-lcssa, %.lr.ph.i42.i.i.i.epil, %bb.w
  %i.lw = call i64 @fwrite(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef %i.ei, ptr noundef nonnull %i.v) #32, !inline_history !32
  %.not38.i.i.i = icmp eq i64 %i.lw, %i.ei
  br i1 %.not38.i.i.i, label %.preheader.i.i.i, label %write_metadata_block_data_vorbis_comment_cb_.exit.i.i

.preheader.i.i.i:                                 ; preds = %pack_uint32_little_endian_.exit47.i.i.i
  %i.lx = load i32, ptr %i.lc, align 8, !tbaa !105
  %.not61.i.i.i = icmp eq i32 %i.lx, 0
  br i1 %.not61.i.i.i, label %write_metadata_block_data_vorbis_comment_cb_.exit.i.i, label %.lr.ph.i39.i.i

.lr.ph.i39.i.i:                                   ; preds = %.preheader.i.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %i.gl, i64 40 ; 5 uses
  br i1 %.not.i.i.i.i, label %pack_uint32_little_endian_.exit54.us.i.i.i, label %.lr.ph.i49.preheader.preheader.i.i.i

.lr.ph.i49.preheader.preheader.i.i.i:             ; preds = %.lr.ph.i39.i.i
  %.pre.i.i.i = load ptr, ptr %i.ly, align 8, !tbaa !106
  br label %.lr.ph.i49.preheader.i.i.i

pack_uint32_little_endian_.exit54.us.i.i.i:       ; preds = %.lr.ph.i39.i.i, %bb.x
  %indvars.iv65.i.i.i = phi i64 [ %indvars.iv.next66.i.i.i, %bb.x ], [ 0, %.lr.ph.i39.i.i ] ; 3 uses
  %i.lz = call i64 @fwrite(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef %i.eh, ptr noundef nonnull %i.v) #32, !inline_history !32
  %.not39.us.i.i.i = icmp eq i64 %i.lz, %i.eh
  br i1 %.not39.us.i.i.i, label %bb.y, label %write_metadata_block_data_vorbis_comment_cb_.exit.i.i

bb.x:                                             ; preds = %bb.y
  %indvars.iv.next66.i.i.i = add nuw nsw i64 %indvars.iv65.i.i.i, 1 ; 2 uses
  %i.ma = load i32, ptr %i.lc, align 8, !tbaa !105
  %i.mb = zext i32 %i.ma to i64
  %i.mc = icmp samesign ult i64 %indvars.iv.next66.i.i.i, %i.mb
  br i1 %i.mc, label %pack_uint32_little_endian_.exit54.us.i.i.i, label %write_metadata_block_data_vorbis_comment_cb_.exit.i.i, !llvm.loop !33

bb.y:                                             ; preds = %pack_uint32_little_endian_.exit54.us.i.i.i
  %i.md = load ptr, ptr %i.ly, align 8, !tbaa !106
  %i.me = getelementptr inbounds nuw [16 x i8], ptr %i.md, i64 %indvars.iv65.i.i.i ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !102
  %i.mh = load i32, ptr %i.me, align 8, !tbaa !100
  %i.mi = zext i32 %i.mh to i64
  %i.mj = call i64 @fwrite(ptr noundef %i.mg, i64 noundef 1, i64 noundef %i.mi, ptr noundef nonnull %i.v) #32, !inline_history !32
  %i.mk = load ptr, ptr %i.ly, align 8, !tbaa !106
  %i.ml = getelementptr inbounds nuw [16 x i8], ptr %i.mk, i64 %indvars.iv65.i.i.i
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !100
  %i.mn = zext i32 %i.mm to i64
  %.not40.us.i.i.i = icmp eq i64 %i.mj, %i.mn
  br i1 %.not40.us.i.i.i, label %bb.x, label %write_metadata_block_data_vorbis_comment_cb_.exit.i.i

bb.z:                                             ; preds = %bb.aa
end_hunk_0
begin_hunk_1_@write_metadata_block_data_:bb.a
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 18 uses
  %i.b = alloca [1024 x i8], align 16             ; 28 uses
  %i.c = alloca [4 x i8], align 1                 ; 12 uses
  %i.d = alloca [18 x i8], align 16               ; 7 uses
  %i.e = alloca [1024 x i8], align 16             ; 5 uses
  %i.f = alloca [34 x i8], align 16               ; 22 uses
  %i.g = load i32, ptr %2, align 8, !tbaa !79
  switch i32 %i.g, label %bb.ap [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.i
    i32 5, label %bb.p
    i32 6, label %bb.ae
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !87
  %i.m = load i32, ptr %i.h, align 8, !tbaa !81   ; 2 uses
  %i.n = trunc i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %i.n, ptr %i.o, align 1, !tbaa !52
  %i.p = lshr i32 %i.m, 8
  %i.q = trunc i32 %i.p to i8
  store i8 %i.q, ptr %i.f, align 16, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !82   ; 2 uses
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  store i8 %i.t, ptr %i.u, align 1, !tbaa !52
  %i.v = lshr i32 %i.s, 8
  %i.w = trunc i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 %i.w, ptr %i.x, align 2, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !83   ; 3 uses
  %i.aa = trunc i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  store i8 %i.aa, ptr %i.ab, align 2, !tbaa !52
  %i.ac = lshr i32 %i.z, 8
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !52
  %i.af = lshr i32 %i.z, 16
  %i.ag = trunc i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i8 %i.ag, ptr %i.ah, align 4, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !84 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.al = trunc i32 %i.aj to i8
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  store i8 %i.al, ptr %i.am, align 1, !tbaa !52
  %i.an = lshr i32 %i.aj, 8
  %i.ao = trunc i32 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %i.ao, ptr %i.ap, align 8, !tbaa !52
  %i.aq = lshr i32 %i.aj, 16
  %i.ar = trunc i32 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !52
  %i.at = add i32 %i.l, -1                        ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !85 ; 3 uses
  %i.aw = lshr i32 %i.av, 12
  %i.ax = trunc i32 %i.aw to i8
  store i8 %i.ax, ptr %i.ak, align 2, !tbaa !52
  %i.ay = lshr i32 %i.av, 4
  %i.az = trunc i32 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !52
  %i.bb = shl i32 %i.av, 4
  %i.bc = shl i32 %i.j, 1
  %i.bd = add i32 %i.bc, 254
  %i.be = lshr i32 %i.at, 4
  %i.bf = or i32 %i.be, %i.bd
  %i.bg = or i32 %i.bf, %i.bb
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i8 %i.bh, ptr %i.bi, align 4, !tbaa !52
  %i.bj = shl i32 %i.at, 4
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !88 ; 5 uses
  %i.bn = lshr i64 %i.bm, 32
  %i.bo = and i64 %i.bn, 15
  %i.bp = or disjoint i64 %i.bo, %i.bk
  %i.bq = trunc i64 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 13
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !52
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 18
  %i.bt = trunc i64 %i.bm to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !52
  %i.bv = lshr i64 %i.bm, 8
  %i.bw = trunc i64 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 %i.bw, ptr %i.bx, align 16, !tbaa !52
  %i.by = lshr i64 %i.bm, 16
  %i.bz = trunc i64 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !52
  %i.cb = lshr i64 %i.bm, 24
  %i.cc = trunc i64 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  store i8 %i.cc, ptr %i.cd, align 2, !tbaa !52
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.bs, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ce, i64 noundef 16, i1 noundef false) #32
  %i.cf = call i64 @fwrite(ptr noundef nonnull %i.f, i64 noundef 1, i64 noundef 34, ptr noundef %0) #32, !inline_history !25
  %.not.i.i = icmp eq i64 %i.cf, 34
  %..i.i = zext i1 %.not.i.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  br label %write_metadata_block_data_cb_.exit

bb.c:                                             ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !78 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.e, i8 noundef 0, i64 noundef 1024, i1 noundef false) #32
  %i.ci = lshr i32 %i.ch, 10                      ; 2 uses
  %.not2.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.cj = add nuw nsw i32 %.01.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.cj, %i.ci
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !26

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.01.i.i = phi i32 [ %i.cj, %bb.d ], [ 0, %bb.c ]
  %i.ck = call i64 @fwrite(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef 1024, ptr noundef %0) #32, !inline_history !27
  %.not12.i.i = icmp eq i64 %i.ck, 1024
  br i1 %.not12.i.i, label %bb.d, label %write_metadata_block_data_padding_cb_.exit.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.cl = and i32 %i.ch, 1023
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cn = call i64 @fwrite(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef %i.cm, ptr noundef %0) #32, !inline_history !27
  %.not.i28.i = icmp eq i64 %i.cn, %i.cm
  %..i29.i = zext i1 %.not.i28.i to i32
  br label %write_metadata_block_data_padding_cb_.exit.i

write_metadata_block_data_padding_cb_.exit.i:     ; preds = %.lr.ph.i.i, %._crit_edge.i.i
  %.011.i.i = phi i32 [ %..i29.i, %._crit_edge.i.i ], [ 0, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  br label %write_metadata_block_data_cb_.exit

bb.e:                                             ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !78
  %i.cr = load i32, ptr @FLAC__STREAM_METADATA_APPLICATION_ID_LEN, align 4, !tbaa !51
  %i.cs = lshr i32 %i.cr, 3                       ; 2 uses
  %i.ct = zext nneg i32 %i.cs to i64              ; 2 uses
  %i.cu = tail call i64 @fwrite(ptr noundef nonnull %i.co, i64 noundef 1, i64 noundef %i.ct, ptr noundef %0) #32, !inline_history !28
  %.not.i30.i = icmp eq i64 %i.cu, %i.ct
  br i1 %.not.i30.i, label %bb.f, label %write_metadata_block_data_cb_.exit

bb.f:                                             ; preds = %bb.e
  %i.cv = sub i32 %i.cq, %i.cs
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !90
  %i.cy = zext i32 %i.cv to i64                   ; 2 uses
  %i.cz = tail call i64 @fwrite(ptr noundef %i.cx, i64 noundef 1, i64 noundef %i.cy, ptr noundef %0) #32, !inline_history !28
  %.not12.i31.i = icmp eq i64 %i.cz, %i.cy
  %..i32.i = zext i1 %.not12.i31.i to i32
  br label %write_metadata_block_data_cb_.exit

bb.g:                                             ; preds = %bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  %i.db = load i32, ptr %i.da, align 8, !tbaa !92
  %.not25.i.i = icmp eq i32 %i.db, 0
  br i1 %.not25.i.i, label %write_metadata_block_data_seektable_cb_.exit.i, label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %bb.g
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %.lr.ph.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dg = load i32, ptr %i.da, align 8, !tbaa !92
  %i.dh = zext i32 %i.dg to i64
  %i.di = icmp samesign ult i64 %indvars.iv.next.i.i, %i.dh
  br i1 %i.di, label %.lr.ph.i.i.i, label %write_metadata_block_data_seektable_cb_.exit.i, !llvm.loop !29

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i33.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i33.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 2 uses
  %i.dj = load ptr, ptr %i.dc, align 8, !tbaa !93
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %indvars.iv.i.i ; 3 uses
  %3 = load <8 x i8>, ptr %i.dk, align 8, !tbaa !95
  %4 = shufflevector <8 x i8> %3, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %4, ptr %i.d, align 16, !tbaa !52
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %5 = load <8 x i8>, ptr %i.dl, align 8, !tbaa !96
  %6 = shufflevector <8 x i8> %5, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %6, ptr %i.dd, align 8, !tbaa !52
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !97 ; 2 uses
  %i.do = trunc i32 %i.dn to i8
  store i8 %i.do, ptr %i.de, align 1, !tbaa !52
  %i.dp = lshr i32 %i.dn, 8
  %i.dq = trunc i32 %i.dp to i8
  store i8 %i.dq, ptr %i.df, align 16, !tbaa !52
  %i.dr = call i64 @fwrite(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 18, ptr noundef %0) #32, !inline_history !30
  %.not.i34.i = icmp eq i64 %i.dr, 18
  br i1 %.not.i34.i, label %bb.h, label %write_metadata_block_data_seektable_cb_.exit.i

write_metadata_block_data_seektable_cb_.exit.i:   ; preds = %.lr.ph.i.i.i, %bb.h, %bb.g
  %.011.i36.i = phi i32 [ 1, %bb.g ], [ 1, %bb.h ], [ 0, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  br label %write_metadata_block_data_cb_.exit

bb.i:                                             ; preds = %bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.dt = load i32, ptr @FLAC__STREAM_METADATA_VORBIS_COMMENT_ENTRY_LENGTH_LEN, align 4, !tbaa !51 ; 3 uses
  %i.du = lshr i32 %i.dt, 3                       ; 6 uses
  %i.dv = load i32, ptr @FLAC__STREAM_METADATA_VORBIS_COMMENT_NUM_COMMENTS_LEN, align 4, !tbaa !51 ; 2 uses
  %i.dw = lshr i32 %i.dv, 3                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %.not.i.i.i = icmp eq i32 %i.du, 0              ; 2 uses
  br i1 %.not.i.i.i, label %pack_uint32_little_endian_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.i
  %i.dx = load i32, ptr %i.ds, align 8, !tbaa !104 ; 2 uses
  %xtraiter105 = and i32 %i.du, 7                 ; 3 uses
  %i.dy = icmp ult i32 %i.dt, 64
  br i1 %i.dy, label %.lr.ph.i.i37.i.epil.preheader, label %.lr.ph.i.preheader.i.i.new

.lr.ph.i.preheader.i.i.new:                       ; preds = %.lr.ph.i.preheader.i.i
  %unroll_iter109 = and i32 %i.du, 536870904
  br label %.lr.ph.i.i37.i

.lr.ph.i.i37.i:                                   ; preds = %.lr.ph.i.i37.i, %.lr.ph.i.preheader.i.i.new
  %.058.i.i.i = phi i32 [ %i.dx, %.lr.ph.i.preheader.i.i.new ], [ 0, %.lr.ph.i.i37.i ] ; 4 uses
  %.067.i.i.i = phi ptr [ %i.c, %.lr.ph.i.preheader.i.i.new ], [ %i.en, %.lr.ph.i.i37.i ] ; 9 uses
  %niter110 = phi i32 [ 0, %.lr.ph.i.preheader.i.i.new ], [ %niter110.next.7, %.lr.ph.i.i37.i ]
  %i.dz = trunc i32 %.058.i.i.i to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 1
  store i8 %i.dz, ptr %.067.i.i.i, align 1, !tbaa !52
  %i.eb = lshr i32 %.058.i.i.i, 8
  %i.ec = trunc i32 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 2
  store i8 %i.ec, ptr %i.ea, align 1, !tbaa !52
  %i.ee = lshr i32 %.058.i.i.i, 16
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 3
  store i8 %i.ef, ptr %i.ed, align 1, !tbaa !52
  %i.eh = lshr i32 %.058.i.i.i, 24
  %i.ei = trunc nuw i32 %i.eh to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 4
  store i8 %i.ei, ptr %i.eg, align 1, !tbaa !52
  %i.ek = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 5
  store i8 0, ptr %i.ej, align 1, !tbaa !52
  %i.el = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 6
  store i8 0, ptr %i.ek, align 1, !tbaa !52
  %i.em = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 7
  store i8 0, ptr %i.el, align 1, !tbaa !52
  %i.en = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 8 ; 2 uses
  store i8 0, ptr %i.em, align 1, !tbaa !52
  %niter110.next.7 = add i32 %niter110, 8         ; 2 uses
  %niter110.ncmp.7 = icmp eq i32 %niter110.next.7, %unroll_iter109
  br i1 %niter110.ncmp.7, label %pack_uint32_little_endian_.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i37.i, !llvm.loop !31

pack_uint32_little_endian_.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i37.i
  %lcmp.mod107.not = icmp eq i32 %xtraiter105, 0
  br i1 %lcmp.mod107.not, label %pack_uint32_little_endian_.exit.i.i, label %.lr.ph.i.i37.i.epil.preheader

.lr.ph.i.i37.i.epil.preheader:                    ; preds = %pack_uint32_little_endian_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.preheader.i.i
  %.058.i.i.i.epil.init = phi i32 [ %i.dx, %.lr.ph.i.preheader.i.i ], [ 0, %pack_uint32_little_endian_.exit.i.i.loopexit.unr-lcssa ]
  %.067.i.i.i.epil.init = phi ptr [ %i.c, %.lr.ph.i.preheader.i.i ], [ %i.en, %pack_uint32_little_endian_.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod108 = icmp ne i32 %xtraiter105, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph.i.i37.i.epil

.lr.ph.i.i37.i.epil:                              ; preds = %.lr.ph.i.i37.i.epil, %.lr.ph.i.i37.i.epil.preheader
  %.058.i.i.i.epil = phi i32 [ %i.eq, %.lr.ph.i.i37.i.epil ], [ %.058.i.i.i.epil.init, %.lr.ph.i.i37.i.epil.preheader ] ; 2 uses
  %.067.i.i.i.epil = phi ptr [ %i.ep, %.lr.ph.i.i37.i.epil ], [ %.067.i.i.i.epil.init, %.lr.ph.i.i37.i.epil.preheader ] ; 2 uses
  %epil.iter106 = phi i32 [ %epil.iter106.next, %.lr.ph.i.i37.i.epil ], [ 0, %.lr.ph.i.i37.i.epil.preheader ]
  %i.eo = trunc i32 %.058.i.i.i.epil to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %.067.i.i.i.epil, i64 1
  store i8 %i.eo, ptr %.067.i.i.i.epil, align 1, !tbaa !52
  %i.eq = lshr i32 %.058.i.i.i.epil, 8
  %epil.iter106.next = add i32 %epil.iter106, 1   ; 2 uses
  %epil.iter106.cmp.not = icmp eq i32 %epil.iter106.next, %xtraiter105
  br i1 %epil.iter106.cmp.not, label %pack_uint32_little_endian_.exit.i.i, label %.lr.ph.i.i37.i.epil, !llvm.loop !258

pack_uint32_little_endian_.exit.i.i:              ; preds = %pack_uint32_little_endian_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i37.i.epil, %bb.i
  %i.er = zext nneg i32 %i.du to i64              ; 6 uses
  %i.es = call i64 @fwrite(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef %i.er, ptr noundef %0) #32, !inline_history !32
  %.not.i38.i = icmp eq i64 %i.es, %i.er
  br i1 %.not.i38.i, label %bb.j, label %write_metadata_block_data_vorbis_comment_cb_.exit.i

bb.j:                                             ; preds = %pack_uint32_little_endian_.exit.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !152
  %i.ev = load i32, ptr %i.ds, align 8, !tbaa !104
  %i.ew = zext i32 %i.ev to i64
  %i.ex = tail call i64 @fwrite(ptr noundef %i.eu, i64 noundef 1, i64 noundef %i.ew, ptr noundef %0) #32, !inline_history !32
  %i.ey = load i32, ptr %i.ds, align 8, !tbaa !104
  %i.ez = zext i32 %i.ey to i64
  %.not37.i.i = icmp eq i64 %i.ex, %i.ez
  br i1 %.not37.i.i, label %bb.k, label %write_metadata_block_data_vorbis_comment_cb_.exit.i

bb.k:                                             ; preds = %bb.j
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %.not.i41.i.i = icmp eq i32 %i.dw, 0
  br i1 %.not.i41.i.i, label %pack_uint32_little_endian_.exit47.i.i, label %.lr.ph.i42.preheader.i.i

.lr.ph.i42.preheader.i.i:                         ; preds = %bb.k
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !105 ; 2 uses
  %xtraiter111 = and i32 %i.dw, 7                 ; 3 uses
  %i.fc = icmp ult i32 %i.dv, 64
  br i1 %i.fc, label %.lr.ph.i42.i.i.epil.preheader, label %.lr.ph.i42.preheader.i.i.new

.lr.ph.i42.preheader.i.i.new:                     ; preds = %.lr.ph.i42.preheader.i.i
  %unroll_iter115 = and i32 %i.dw, 536870904
  br label %.lr.ph.i42.i.i

.lr.ph.i42.i.i:                                   ; preds = %.lr.ph.i42.i.i, %.lr.ph.i42.preheader.i.i.new
  %.058.i44.i.i = phi i32 [ %i.fb, %.lr.ph.i42.preheader.i.i.new ], [ 0, %.lr.ph.i42.i.i ] ; 4 uses
  %.067.i45.i.i = phi ptr [ %i.c, %.lr.ph.i42.preheader.i.i.new ], [ %i.fr, %.lr.ph.i42.i.i ] ; 9 uses
  %niter116 = phi i32 [ 0, %.lr.ph.i42.preheader.i.i.new ], [ %niter116.next.7, %.lr.ph.i42.i.i ]
  %i.fd = trunc i32 %.058.i44.i.i to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %.067.i45.i.i, i64 1
  store i8 %i.fd, ptr %.067.i45.i.i, align 1, !tbaa !52
  %i.ff = lshr i32 %.058.i44.i.i, 8
  %i.fg = trunc i32 %i.ff to i8
  %i.fh = getelementptr inbounds nuw i8, ptr %.067.i45.i.i, i64 2
  store i8 %i.fg, ptr %i.fe, align 1, !tbaa !52
  %i.fi = lshr i32 %.058.i44.i.i, 16
  %i.fj = trunc i32 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %.067.i45.i.i, i64 3
  store i8 %i.fj, ptr %i.fh, align 1, !tbaa !52
  %i.fl = lshr i32 %.058.i44.i.i, 24
  %i.fm = trunc nuw i32 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %.067.i45.i.i, i64 4
  store i8 %i.fm, ptr %i.fk, align 1, !tbaa !52
  %i.fo = getelementptr inbounds nuw i8, ptr %.067.i45.i.i, i64 5
  store i8 0, ptr %i.fn, align 1, !tbaa !52
  %i.fp = getelementptr inbounds nuw i8, ptr %.067.i45.i.i, i64 6
  store i8 0, ptr %i.fo, align 1, !tbaa !52
  %i.fq = getelementptr inbounds nuw i8, ptr %.067.i45.i.i, i64 7
  store i8 0, ptr %i.fp, align 1, !tbaa !52
  %i.fr = getelementptr inbounds nuw i8, ptr %.067.i45.i.i, i64 8 ; 2 uses
  store i8 0, ptr %i.fq, align 1, !tbaa !52
  %niter116.next.7 = add i32 %niter116, 8         ; 2 uses
  %niter116.ncmp.7 = icmp eq i32 %niter116.next.7, %unroll_iter115
  br i1 %niter116.ncmp.7, label %pack_uint32_little_endian_.exit47.i.i.loopexit.unr-lcssa, label %.lr.ph.i42.i.i, !llvm.loop !31

pack_uint32_little_endian_.exit47.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i42.i.i
  %lcmp.mod113.not = icmp eq i32 %xtraiter111, 0
  br i1 %lcmp.mod113.not, label %pack_uint32_little_endian_.exit47.i.i, label %.lr.ph.i42.i.i.epil.preheader

.lr.ph.i42.i.i.epil.preheader:                    ; preds = %pack_uint32_little_endian_.exit47.i.i.loopexit.unr-lcssa, %.lr.ph.i42.preheader.i.i
  %.058.i44.i.i.epil.init = phi i32 [ %i.fb, %.lr.ph.i42.preheader.i.i ], [ 0, %pack_uint32_little_endian_.exit47.i.i.loopexit.unr-lcssa ]
  %.067.i45.i.i.epil.init = phi ptr [ %i.c, %.lr.ph.i42.preheader.i.i ], [ %i.fr, %pack_uint32_little_endian_.exit47.i.i.loopexit.unr-lcssa ]
  %lcmp.mod114 = icmp ne i32 %xtraiter111, 0
  tail call void @llvm.assume(i1 %lcmp.mod114)
  br label %.lr.ph.i42.i.i.epil

.lr.ph.i42.i.i.epil:                              ; preds = %.lr.ph.i42.i.i.epil, %.lr.ph.i42.i.i.epil.preheader
  %.058.i44.i.i.epil = phi i32 [ %i.fu, %.lr.ph.i42.i.i.epil ], [ %.058.i44.i.i.epil.init, %.lr.ph.i42.i.i.epil.preheader ] ; 2 uses
  %.067.i45.i.i.epil = phi ptr [ %i.ft, %.lr.ph.i42.i.i.epil ], [ %.067.i45.i.i.epil.init, %.lr.ph.i42.i.i.epil.preheader ] ; 2 uses
  %epil.iter112 = phi i32 [ %epil.iter112.next, %.lr.ph.i42.i.i.epil ], [ 0, %.lr.ph.i42.i.i.epil.preheader ]
  %i.fs = trunc i32 %.058.i44.i.i.epil to i8
  %i.ft = getelementptr inbounds nuw i8, ptr %.067.i45.i.i.epil, i64 1
  store i8 %i.fs, ptr %.067.i45.i.i.epil, align 1, !tbaa !52
  %i.fu = lshr i32 %.058.i44.i.i.epil, 8
  %epil.iter112.next = add i32 %epil.iter112, 1   ; 2 uses
  %epil.iter112.cmp.not = icmp eq i32 %epil.iter112.next, %xtraiter111
  br i1 %epil.iter112.cmp.not, label %pack_uint32_little_endian_.exit47.i.i, label %.lr.ph.i42.i.i.epil, !llvm.loop !259

pack_uint32_little_endian_.exit47.i.i:            ; preds = %pack_uint32_little_endian_.exit47.i.i.loopexit.unr-lcssa, %.lr.ph.i42.i.i.epil, %bb.k
  %i.fv = zext nneg i32 %i.dw to i64              ; 2 uses
  %i.fw = call i64 @fwrite(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef %i.fv, ptr noundef %0) #32, !inline_history !32
  %.not38.i.i = icmp eq i64 %i.fw, %i.fv
  br i1 %.not38.i.i, label %.preheader.i.i, label %write_metadata_block_data_vorbis_comment_cb_.exit.i

.preheader.i.i:                                   ; preds = %pack_uint32_little_endian_.exit47.i.i
  %i.fx = load i32, ptr %i.fa, align 8, !tbaa !105
  %.not61.i.i = icmp eq i32 %i.fx, 0
  br i1 %.not61.i.i, label %write_metadata_block_data_vorbis_comment_cb_.exit.i, label %.lr.ph.i39.i

.lr.ph.i39.i:                                     ; preds = %.preheader.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  br i1 %.not.i.i.i, label %pack_uint32_little_endian_.exit54.us.i.i, label %.lr.ph.i49.preheader.preheader.i.i

.lr.ph.i49.preheader.preheader.i.i:               ; preds = %.lr.ph.i39.i
  %.pre.i.i = load ptr, ptr %i.fy, align 8, !tbaa !106
  %xtraiter117 = and i32 %i.du, 7                 ; 3 uses
  %i.fz = icmp ult i32 %i.dt, 64
  %unroll_iter121 = and i32 %i.du, 536870904
  %lcmp.mod119.not = icmp eq i32 %xtraiter117, 0
  %lcmp.mod120 = icmp ne i32 %xtraiter117, 0
  br label %.lr.ph.i49.preheader.i.i

end_hunk_1
begin_hunk_2_@write_metadata_block_data_cb_:bb.a
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 18 uses
  %i.b = alloca [1024 x i8], align 16             ; 28 uses
  %i.c = alloca [4 x i8], align 1                 ; 12 uses
  %i.d = alloca [18 x i8], align 16               ; 7 uses
  %i.e = alloca [1024 x i8], align 16             ; 5 uses
  %i.f = alloca [34 x i8], align 16               ; 22 uses
  %i.g = load i32, ptr %2, align 8, !tbaa !79
  switch i32 %i.g, label %bb.ap [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.i
    i32 5, label %bb.p
    i32 6, label %bb.ae
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !87
  %i.m = load i32, ptr %i.h, align 8, !tbaa !81   ; 2 uses
  %i.n = trunc i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %i.n, ptr %i.o, align 1, !tbaa !52
  %i.p = lshr i32 %i.m, 8
  %i.q = trunc i32 %i.p to i8
  store i8 %i.q, ptr %i.f, align 16, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !82   ; 2 uses
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  store i8 %i.t, ptr %i.u, align 1, !tbaa !52
  %i.v = lshr i32 %i.s, 8
  %i.w = trunc i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 %i.w, ptr %i.x, align 2, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !83   ; 3 uses
  %i.aa = trunc i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  store i8 %i.aa, ptr %i.ab, align 2, !tbaa !52
  %i.ac = lshr i32 %i.z, 8
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !52
  %i.af = lshr i32 %i.z, 16
  %i.ag = trunc i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i8 %i.ag, ptr %i.ah, align 4, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !84 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.al = trunc i32 %i.aj to i8
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  store i8 %i.al, ptr %i.am, align 1, !tbaa !52
  %i.an = lshr i32 %i.aj, 8
  %i.ao = trunc i32 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %i.ao, ptr %i.ap, align 8, !tbaa !52
  %i.aq = lshr i32 %i.aj, 16
  %i.ar = trunc i32 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !52
  %i.at = add i32 %i.l, -1                        ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !85 ; 3 uses
  %i.aw = lshr i32 %i.av, 12
  %i.ax = trunc i32 %i.aw to i8
  store i8 %i.ax, ptr %i.ak, align 2, !tbaa !52
  %i.ay = lshr i32 %i.av, 4
  %i.az = trunc i32 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !52
  %i.bb = shl i32 %i.av, 4
  %i.bc = shl i32 %i.j, 1
  %i.bd = add i32 %i.bc, 254
  %i.be = lshr i32 %i.at, 4
  %i.bf = or i32 %i.be, %i.bd
  %i.bg = or i32 %i.bf, %i.bb
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i8 %i.bh, ptr %i.bi, align 4, !tbaa !52
  %i.bj = shl i32 %i.at, 4
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !88 ; 5 uses
  %i.bn = lshr i64 %i.bm, 32
  %i.bo = and i64 %i.bn, 15
  %i.bp = or disjoint i64 %i.bo, %i.bk
  %i.bq = trunc i64 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 13
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !52
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 18
  %i.bt = trunc i64 %i.bm to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !52
  %i.bv = lshr i64 %i.bm, 8
  %i.bw = trunc i64 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 %i.bw, ptr %i.bx, align 16, !tbaa !52
  %i.by = lshr i64 %i.bm, 16
  %i.bz = trunc i64 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !52
  %i.cb = lshr i64 %i.bm, 24
  %i.cc = trunc i64 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  store i8 %i.cc, ptr %i.cd, align 2, !tbaa !52
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.bs, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ce, i64 noundef 16, i1 noundef false) #32
  %i.cf = call i64 %1(ptr noundef nonnull %i.f, i64 noundef 1, i64 noundef 34, ptr noundef %0) #32, !inline_history !273
  %.not.i = icmp eq i64 %i.cf, 34
  %..i = zext i1 %.not.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  br label %write_metadata_block_data_application_cb_.exit

bb.c:                                             ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !78 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.e, i8 noundef 0, i64 noundef 1024, i1 noundef false) #32
  %i.ci = lshr i32 %i.ch, 10                      ; 2 uses
  %.not2.i = icmp eq i32 %i.ci, 0
  br i1 %.not2.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.cj = add nuw nsw i32 %.01.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cj, %i.ci
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !26

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.01.i = phi i32 [ %i.cj, %bb.d ], [ 0, %bb.c ]
  %i.ck = call i64 %1(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef 1024, ptr noundef %0) #32, !inline_history !274
  %.not12.i = icmp eq i64 %i.ck, 1024
  br i1 %.not12.i, label %bb.d, label %write_metadata_block_data_padding_cb_.exit

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.cl = and i32 %i.ch, 1023
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cn = call i64 %1(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef %i.cm, ptr noundef %0) #32, !inline_history !274
  %.not.i28 = icmp eq i64 %i.cn, %i.cm
  %..i29 = zext i1 %.not.i28 to i32
  br label %write_metadata_block_data_padding_cb_.exit

write_metadata_block_data_padding_cb_.exit:       ; preds = %.lr.ph.i, %._crit_edge.i
  %.011.i = phi i32 [ %..i29, %._crit_edge.i ], [ 0, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  br label %write_metadata_block_data_application_cb_.exit

bb.e:                                             ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !78
  %i.cr = load i32, ptr @FLAC__STREAM_METADATA_APPLICATION_ID_LEN, align 4, !tbaa !51
  %i.cs = lshr i32 %i.cr, 3                       ; 2 uses
  %i.ct = zext nneg i32 %i.cs to i64              ; 2 uses
  %i.cu = tail call i64 %1(ptr noundef nonnull %i.co, i64 noundef 1, i64 noundef %i.ct, ptr noundef %0) #32, !inline_history !275
  %.not.i30 = icmp eq i64 %i.cu, %i.ct
  br i1 %.not.i30, label %bb.f, label %write_metadata_block_data_application_cb_.exit

bb.f:                                             ; preds = %bb.e
  %i.cv = sub i32 %i.cq, %i.cs
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !90
  %i.cy = zext i32 %i.cv to i64                   ; 2 uses
  %i.cz = tail call i64 %1(ptr noundef %i.cx, i64 noundef 1, i64 noundef %i.cy, ptr noundef %0) #32, !inline_history !275
  %.not12.i31 = icmp eq i64 %i.cz, %i.cy
  %..i32 = zext i1 %.not12.i31 to i32
  br label %write_metadata_block_data_application_cb_.exit

bb.g:                                             ; preds = %bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  %i.db = load i32, ptr %i.da, align 8, !tbaa !92
  %.not25.i = icmp eq i32 %i.db, 0
  br i1 %.not25.i, label %write_metadata_block_data_seektable_cb_.exit, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %bb.g
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %.lr.ph.i.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dg = load i32, ptr %i.da, align 8, !tbaa !92
  %i.dh = zext i32 %i.dg to i64
  %i.di = icmp samesign ult i64 %indvars.iv.next.i, %i.dh
  br i1 %i.di, label %.lr.ph.i.i, label %write_metadata_block_data_seektable_cb_.exit, !llvm.loop !29

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i33
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i33 ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %i.dj = load ptr, ptr %i.dc, align 8, !tbaa !93
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %indvars.iv.i ; 3 uses
  %3 = load <8 x i8>, ptr %i.dk, align 8, !tbaa !95
  %4 = shufflevector <8 x i8> %3, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %4, ptr %i.d, align 16, !tbaa !52
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %5 = load <8 x i8>, ptr %i.dl, align 8, !tbaa !96
  %6 = shufflevector <8 x i8> %5, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %6, ptr %i.dd, align 8, !tbaa !52
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !97 ; 2 uses
  %i.do = trunc i32 %i.dn to i8
  store i8 %i.do, ptr %i.de, align 1, !tbaa !52
  %i.dp = lshr i32 %i.dn, 8
  %i.dq = trunc i32 %i.dp to i8
  store i8 %i.dq, ptr %i.df, align 16, !tbaa !52
  %i.dr = call i64 %1(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 18, ptr noundef %0) #32, !inline_history !276
  %.not.i34 = icmp eq i64 %i.dr, 18
  br i1 %.not.i34, label %bb.h, label %write_metadata_block_data_seektable_cb_.exit

write_metadata_block_data_seektable_cb_.exit:     ; preds = %bb.h, %.lr.ph.i.i, %bb.g
  %.011.i36 = phi i32 [ 1, %bb.g ], [ 0, %.lr.ph.i.i ], [ 1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  br label %write_metadata_block_data_application_cb_.exit

bb.i:                                             ; preds = %bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.dt = load i32, ptr @FLAC__STREAM_METADATA_VORBIS_COMMENT_ENTRY_LENGTH_LEN, align 4, !tbaa !51 ; 3 uses
  %i.du = lshr i32 %i.dt, 3                       ; 6 uses
  %i.dv = load i32, ptr @FLAC__STREAM_METADATA_VORBIS_COMMENT_NUM_COMMENTS_LEN, align 4, !tbaa !51 ; 2 uses
  %i.dw = lshr i32 %i.dv, 3                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %.not.i.i = icmp eq i32 %i.du, 0                ; 2 uses
  br i1 %.not.i.i, label %pack_uint32_little_endian_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.i
  %i.dx = load i32, ptr %i.ds, align 8, !tbaa !104 ; 2 uses
  %xtraiter186 = and i32 %i.du, 7                 ; 3 uses
  %i.dy = icmp ult i32 %i.dt, 64
  br i1 %i.dy, label %.lr.ph.i.i37.epil.preheader, label %.lr.ph.i.preheader.i.new

.lr.ph.i.preheader.i.new:                         ; preds = %.lr.ph.i.preheader.i
  %unroll_iter190 = and i32 %i.du, 536870904
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37, %.lr.ph.i.preheader.i.new
  %.058.i.i = phi i32 [ %i.dx, %.lr.ph.i.preheader.i.new ], [ 0, %.lr.ph.i.i37 ] ; 4 uses
  %.067.i.i = phi ptr [ %i.c, %.lr.ph.i.preheader.i.new ], [ %i.en, %.lr.ph.i.i37 ] ; 9 uses
  %niter191 = phi i32 [ 0, %.lr.ph.i.preheader.i.new ], [ %niter191.next.7, %.lr.ph.i.i37 ]
  %i.dz = trunc i32 %.058.i.i to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 1
  store i8 %i.dz, ptr %.067.i.i, align 1, !tbaa !52
  %i.eb = lshr i32 %.058.i.i, 8
  %i.ec = trunc i32 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 2
  store i8 %i.ec, ptr %i.ea, align 1, !tbaa !52
  %i.ee = lshr i32 %.058.i.i, 16
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 3
  store i8 %i.ef, ptr %i.ed, align 1, !tbaa !52
  %i.eh = lshr i32 %.058.i.i, 24
  %i.ei = trunc nuw i32 %i.eh to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 4
  store i8 %i.ei, ptr %i.eg, align 1, !tbaa !52
  %i.ek = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 5
  store i8 0, ptr %i.ej, align 1, !tbaa !52
  %i.el = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 6
  store i8 0, ptr %i.ek, align 1, !tbaa !52
  %i.em = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 7
  store i8 0, ptr %i.el, align 1, !tbaa !52
  %i.en = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 8 ; 2 uses
  store i8 0, ptr %i.em, align 1, !tbaa !52
  %niter191.next.7 = add i32 %niter191, 8         ; 2 uses
  %niter191.ncmp.7 = icmp eq i32 %niter191.next.7, %unroll_iter190
  br i1 %niter191.ncmp.7, label %pack_uint32_little_endian_.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i37, !llvm.loop !31

pack_uint32_little_endian_.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i37
  %lcmp.mod188.not = icmp eq i32 %xtraiter186, 0
  br i1 %lcmp.mod188.not, label %pack_uint32_little_endian_.exit.i, label %.lr.ph.i.i37.epil.preheader

.lr.ph.i.i37.epil.preheader:                      ; preds = %pack_uint32_little_endian_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.preheader.i
  %.058.i.i.epil.init = phi i32 [ %i.dx, %.lr.ph.i.preheader.i ], [ 0, %pack_uint32_little_endian_.exit.i.loopexit.unr-lcssa ]
  %.067.i.i.epil.init = phi ptr [ %i.c, %.lr.ph.i.preheader.i ], [ %i.en, %pack_uint32_little_endian_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod189 = icmp ne i32 %xtraiter186, 0
  tail call void @llvm.assume(i1 %lcmp.mod189)
  br label %.lr.ph.i.i37.epil

.lr.ph.i.i37.epil:                                ; preds = %.lr.ph.i.i37.epil, %.lr.ph.i.i37.epil.preheader
  %.058.i.i.epil = phi i32 [ %i.eq, %.lr.ph.i.i37.epil ], [ %.058.i.i.epil.init, %.lr.ph.i.i37.epil.preheader ] ; 2 uses
  %.067.i.i.epil = phi ptr [ %i.ep, %.lr.ph.i.i37.epil ], [ %.067.i.i.epil.init, %.lr.ph.i.i37.epil.preheader ] ; 2 uses
  %epil.iter187 = phi i32 [ %epil.iter187.next, %.lr.ph.i.i37.epil ], [ 0, %.lr.ph.i.i37.epil.preheader ]
  %i.eo = trunc i32 %.058.i.i.epil to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %.067.i.i.epil, i64 1
  store i8 %i.eo, ptr %.067.i.i.epil, align 1, !tbaa !52
  %i.eq = lshr i32 %.058.i.i.epil, 8
  %epil.iter187.next = add i32 %epil.iter187, 1   ; 2 uses
  %epil.iter187.cmp.not = icmp eq i32 %epil.iter187.next, %xtraiter186
  br i1 %epil.iter187.cmp.not, label %pack_uint32_little_endian_.exit.i, label %.lr.ph.i.i37.epil, !llvm.loop !277

pack_uint32_little_endian_.exit.i:                ; preds = %pack_uint32_little_endian_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i37.epil, %bb.i
  %i.er = zext nneg i32 %i.du to i64              ; 6 uses
  %i.es = call i64 %1(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef %i.er, ptr noundef %0) #32, !inline_history !278
  %.not.i38 = icmp eq i64 %i.es, %i.er
  br i1 %.not.i38, label %bb.j, label %write_metadata_block_data_vorbis_comment_cb_.exit

bb.j:                                             ; preds = %pack_uint32_little_endian_.exit.i
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !152
  %i.ev = load i32, ptr %i.ds, align 8, !tbaa !104
  %i.ew = zext i32 %i.ev to i64
  %i.ex = call i64 %1(ptr noundef %i.eu, i64 noundef 1, i64 noundef %i.ew, ptr noundef %0) #32, !inline_history !278
  %i.ey = load i32, ptr %i.ds, align 8, !tbaa !104
  %i.ez = zext i32 %i.ey to i64
  %.not37.i = icmp eq i64 %i.ex, %i.ez
  br i1 %.not37.i, label %bb.k, label %write_metadata_block_data_vorbis_comment_cb_.exit

bb.k:                                             ; preds = %bb.j
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %.not.i41.i = icmp eq i32 %i.dw, 0
  br i1 %.not.i41.i, label %pack_uint32_little_endian_.exit47.i, label %.lr.ph.i42.preheader.i

.lr.ph.i42.preheader.i:                           ; preds = %bb.k
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !105 ; 2 uses
  %xtraiter192 = and i32 %i.dw, 7                 ; 3 uses
  %i.fc = icmp ult i32 %i.dv, 64
  br i1 %i.fc, label %.lr.ph.i42.i.epil.preheader, label %.lr.ph.i42.preheader.i.new

.lr.ph.i42.preheader.i.new:                       ; preds = %.lr.ph.i42.preheader.i
  %unroll_iter196 = and i32 %i.dw, 536870904
  br label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %.lr.ph.i42.i, %.lr.ph.i42.preheader.i.new
  %.058.i44.i = phi i32 [ %i.fb, %.lr.ph.i42.preheader.i.new ], [ 0, %.lr.ph.i42.i ] ; 4 uses
  %.067.i45.i = phi ptr [ %i.c, %.lr.ph.i42.preheader.i.new ], [ %i.fr, %.lr.ph.i42.i ] ; 9 uses
  %niter197 = phi i32 [ 0, %.lr.ph.i42.preheader.i.new ], [ %niter197.next.7, %.lr.ph.i42.i ]
  %i.fd = trunc i32 %.058.i44.i to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %.067.i45.i, i64 1
  store i8 %i.fd, ptr %.067.i45.i, align 1, !tbaa !52
  %i.ff = lshr i32 %.058.i44.i, 8
  %i.fg = trunc i32 %i.ff to i8
  %i.fh = getelementptr inbounds nuw i8, ptr %.067.i45.i, i64 2
  store i8 %i.fg, ptr %i.fe, align 1, !tbaa !52
  %i.fi = lshr i32 %.058.i44.i, 16
  %i.fj = trunc i32 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %.067.i45.i, i64 3
  store i8 %i.fj, ptr %i.fh, align 1, !tbaa !52
  %i.fl = lshr i32 %.058.i44.i, 24
  %i.fm = trunc nuw i32 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %.067.i45.i, i64 4
  store i8 %i.fm, ptr %i.fk, align 1, !tbaa !52
  %i.fo = getelementptr inbounds nuw i8, ptr %.067.i45.i, i64 5
  store i8 0, ptr %i.fn, align 1, !tbaa !52
  %i.fp = getelementptr inbounds nuw i8, ptr %.067.i45.i, i64 6
  store i8 0, ptr %i.fo, align 1, !tbaa !52
  %i.fq = getelementptr inbounds nuw i8, ptr %.067.i45.i, i64 7
  store i8 0, ptr %i.fp, align 1, !tbaa !52
  %i.fr = getelementptr inbounds nuw i8, ptr %.067.i45.i, i64 8 ; 2 uses
  store i8 0, ptr %i.fq, align 1, !tbaa !52
  %niter197.next.7 = add i32 %niter197, 8         ; 2 uses
  %niter197.ncmp.7 = icmp eq i32 %niter197.next.7, %unroll_iter196
  br i1 %niter197.ncmp.7, label %pack_uint32_little_endian_.exit47.i.loopexit.unr-lcssa, label %.lr.ph.i42.i, !llvm.loop !31

pack_uint32_little_endian_.exit47.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i42.i
  %lcmp.mod194.not = icmp eq i32 %xtraiter192, 0
  br i1 %lcmp.mod194.not, label %pack_uint32_little_endian_.exit47.i, label %.lr.ph.i42.i.epil.preheader

.lr.ph.i42.i.epil.preheader:                      ; preds = %pack_uint32_little_endian_.exit47.i.loopexit.unr-lcssa, %.lr.ph.i42.preheader.i
  %.058.i44.i.epil.init = phi i32 [ %i.fb, %.lr.ph.i42.preheader.i ], [ 0, %pack_uint32_little_endian_.exit47.i.loopexit.unr-lcssa ]
  %.067.i45.i.epil.init = phi ptr [ %i.c, %.lr.ph.i42.preheader.i ], [ %i.fr, %pack_uint32_little_endian_.exit47.i.loopexit.unr-lcssa ]
  %lcmp.mod195 = icmp ne i32 %xtraiter192, 0
  call void @llvm.assume(i1 %lcmp.mod195)
  br label %.lr.ph.i42.i.epil

.lr.ph.i42.i.epil:                                ; preds = %.lr.ph.i42.i.epil, %.lr.ph.i42.i.epil.preheader
  %.058.i44.i.epil = phi i32 [ %i.fu, %.lr.ph.i42.i.epil ], [ %.058.i44.i.epil.init, %.lr.ph.i42.i.epil.preheader ] ; 2 uses
  %.067.i45.i.epil = phi ptr [ %i.ft, %.lr.ph.i42.i.epil ], [ %.067.i45.i.epil.init, %.lr.ph.i42.i.epil.preheader ] ; 2 uses
  %epil.iter193 = phi i32 [ %epil.iter193.next, %.lr.ph.i42.i.epil ], [ 0, %.lr.ph.i42.i.epil.preheader ]
  %i.fs = trunc i32 %.058.i44.i.epil to i8
  %i.ft = getelementptr inbounds nuw i8, ptr %.067.i45.i.epil, i64 1
  store i8 %i.fs, ptr %.067.i45.i.epil, align 1, !tbaa !52
  %i.fu = lshr i32 %.058.i44.i.epil, 8
  %epil.iter193.next = add i32 %epil.iter193, 1   ; 2 uses
  %epil.iter193.cmp.not = icmp eq i32 %epil.iter193.next, %xtraiter192
  br i1 %epil.iter193.cmp.not, label %pack_uint32_little_endian_.exit47.i, label %.lr.ph.i42.i.epil, !llvm.loop !279

pack_uint32_little_endian_.exit47.i:              ; preds = %pack_uint32_little_endian_.exit47.i.loopexit.unr-lcssa, %.lr.ph.i42.i.epil, %bb.k
  %i.fv = zext nneg i32 %i.dw to i64              ; 2 uses
  %i.fw = call i64 %1(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef %i.fv, ptr noundef %0) #32, !inline_history !278
  %.not38.i = icmp eq i64 %i.fw, %i.fv
  br i1 %.not38.i, label %.preheader.i, label %write_metadata_block_data_vorbis_comment_cb_.exit

.preheader.i:                                     ; preds = %pack_uint32_little_endian_.exit47.i
  %i.fx = load i32, ptr %i.fa, align 8, !tbaa !105
  %.not61.i = icmp eq i32 %i.fx, 0
  br i1 %.not61.i, label %write_metadata_block_data_vorbis_comment_cb_.exit, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %.preheader.i
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  br i1 %.not.i.i, label %pack_uint32_little_endian_.exit54.us.i, label %.lr.ph.i49.preheader.preheader.i

.lr.ph.i49.preheader.preheader.i:                 ; preds = %.lr.ph.i39
  %.pre.i = load ptr, ptr %i.fy, align 8, !tbaa !106
  %xtraiter198 = and i32 %i.du, 7                 ; 3 uses
  %i.fz = icmp ult i32 %i.dt, 64
  %unroll_iter202 = and i32 %i.du, 536870904
  %lcmp.mod200.not = icmp eq i32 %xtraiter198, 0
  %lcmp.mod201 = icmp ne i32 %xtraiter198, 0
  br label %.lr.ph.i49.preheader.i

end_hunk_2
begin_hunk_3_@write_metadata_block_data_cb_:bb.a
  %i.xo = getelementptr inbounds i8, ptr %.089.i120.i72, i64 -8 ; 3 uses
  store i8 0, ptr %i.xo, align 1, !tbaa !52
  %niter155.next.7 = add i32 %niter155, 8         ; 2 uses
  %niter155.ncmp.7 = icmp eq i32 %niter155.next.7, %unroll_iter154
  br i1 %niter155.ncmp.7, label %pack_uint32_.exit122.i74.loopexit.unr-lcssa, label %.lr.ph.i117.i70, !llvm.loop !36

pack_uint32_.exit122.i74.loopexit.unr-lcssa:      ; preds = %.lr.ph.i117.i70
  %lcmp.mod152.not = icmp eq i32 %xtraiter150, 0
  br i1 %lcmp.mod152.not, label %pack_uint32_.exit122.i74, label %.lr.ph.i117.i70.epil.preheader

.lr.ph.i117.i70.epil.preheader:                   ; preds = %pack_uint32_.exit122.i74.loopexit.unr-lcssa, %.lr.ph.preheader.i116.i69
  %.0710.i119.i.epil.init = phi i32 [ %i.ww, %.lr.ph.preheader.i116.i69 ], [ 0, %pack_uint32_.exit122.i74.loopexit.unr-lcssa ]
  %.089.i120.i72.epil.init = phi ptr [ %i.wy, %.lr.ph.preheader.i116.i69 ], [ %i.xo, %pack_uint32_.exit122.i74.loopexit.unr-lcssa ]
  %lcmp.mod153 = icmp ne i32 %xtraiter150, 0
  call void @llvm.assume(i1 %lcmp.mod153)
  br label %.lr.ph.i117.i70.epil

.lr.ph.i117.i70.epil:                             ; preds = %.lr.ph.i117.i70.epil, %.lr.ph.i117.i70.epil.preheader
  %.0710.i119.i.epil = phi i32 [ %i.xr, %.lr.ph.i117.i70.epil ], [ %.0710.i119.i.epil.init, %.lr.ph.i117.i70.epil.preheader ] ; 2 uses
  %.089.i120.i72.epil = phi ptr [ %i.xq, %.lr.ph.i117.i70.epil ], [ %.089.i120.i72.epil.init, %.lr.ph.i117.i70.epil.preheader ]
  %epil.iter151 = phi i32 [ %epil.iter151.next, %.lr.ph.i117.i70.epil ], [ 0, %.lr.ph.i117.i70.epil.preheader ]
  %i.xp = trunc i32 %.0710.i119.i.epil to i8
  %i.xq = getelementptr inbounds i8, ptr %.089.i120.i72.epil, i64 -1 ; 2 uses
  store i8 %i.xp, ptr %i.xq, align 1, !tbaa !52
  %i.xr = lshr i32 %.0710.i119.i.epil, 8
  %epil.iter151.next = add i32 %epil.iter151, 1   ; 2 uses
  %epil.iter151.cmp.not = icmp eq i32 %epil.iter151.next, %xtraiter150
  br i1 %epil.iter151.cmp.not, label %pack_uint32_.exit122.i74, label %.lr.ph.i117.i70.epil, !llvm.loop !293

pack_uint32_.exit122.i74:                         ; preds = %pack_uint32_.exit122.i74.loopexit.unr-lcssa, %.lr.ph.i117.i70.epil, %bb.am
  %.pre-phi142.i = phi i64 [ 0, %bb.am ], [ %i.wx, %.lr.ph.i117.i70.epil ], [ %i.wx, %pack_uint32_.exit122.i74.loopexit.unr-lcssa ] ; 2 uses
  %i.xs = call i64 %1(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %.pre-phi142.i, ptr noundef %0) #32, !inline_history !287
  %.not72.i = icmp eq i64 %i.xs, %.pre-phi142.i
  br i1 %.not72.i, label %bb.an, label %write_metadata_block_data_picture_cb_.exit

bb.an:                                            ; preds = %pack_uint32_.exit122.i74
  %i.xt = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_DATA_LENGTH_LEN, align 4, !tbaa !51 ; 2 uses
  %i.xu = lshr i32 %i.xt, 3                       ; 4 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %.not.i123.i75 = icmp eq i32 %i.xu, 0
  br i1 %.not.i123.i75, label %pack_uint32_.exit130.i81, label %.lr.ph.preheader.i124.i76

.lr.ph.preheader.i124.i76:                        ; preds = %bb.an
  %i.xw = load i32, ptr %i.xv, align 8, !tbaa !155 ; 2 uses
  %i.xx = zext nneg i32 %i.xu to i64              ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.xx ; 2 uses
  %xtraiter156 = and i32 %i.xu, 7                 ; 3 uses
  %i.xz = icmp ult i32 %i.xt, 64
  br i1 %i.xz, label %.lr.ph.i125.i77.epil.preheader, label %.lr.ph.preheader.i124.i76.new

.lr.ph.preheader.i124.i76.new:                    ; preds = %.lr.ph.preheader.i124.i76
  %unroll_iter160 = and i32 %i.xu, 536870904
  br label %.lr.ph.i125.i77

.lr.ph.i125.i77:                                  ; preds = %.lr.ph.i125.i77, %.lr.ph.preheader.i124.i76.new
  %.0710.i127.i = phi i32 [ %i.xw, %.lr.ph.preheader.i124.i76.new ], [ 0, %.lr.ph.i125.i77 ] ; 4 uses
  %.089.i128.i79 = phi ptr [ %i.xy, %.lr.ph.preheader.i124.i76.new ], [ %i.yo, %.lr.ph.i125.i77 ] ; 8 uses
  %niter161 = phi i32 [ 0, %.lr.ph.preheader.i124.i76.new ], [ %niter161.next.7, %.lr.ph.i125.i77 ]
  %i.ya = trunc i32 %.0710.i127.i to i8
  %i.yb = getelementptr inbounds i8, ptr %.089.i128.i79, i64 -1
  store i8 %i.ya, ptr %i.yb, align 1, !tbaa !52
  %i.yc = lshr i32 %.0710.i127.i, 8
  %i.yd = trunc i32 %i.yc to i8
  %i.ye = getelementptr inbounds i8, ptr %.089.i128.i79, i64 -2
  store i8 %i.yd, ptr %i.ye, align 1, !tbaa !52
  %i.yf = lshr i32 %.0710.i127.i, 16
  %i.yg = trunc i32 %i.yf to i8
  %i.yh = getelementptr inbounds i8, ptr %.089.i128.i79, i64 -3
  store i8 %i.yg, ptr %i.yh, align 1, !tbaa !52
  %i.yi = lshr i32 %.0710.i127.i, 24
  %i.yj = trunc nuw i32 %i.yi to i8
  %i.yk = getelementptr inbounds i8, ptr %.089.i128.i79, i64 -4
  store i8 %i.yj, ptr %i.yk, align 1, !tbaa !52
  %i.yl = getelementptr inbounds i8, ptr %.089.i128.i79, i64 -5
  store i8 0, ptr %i.yl, align 1, !tbaa !52
  %i.ym = getelementptr inbounds i8, ptr %.089.i128.i79, i64 -6
  store i8 0, ptr %i.ym, align 1, !tbaa !52
  %i.yn = getelementptr inbounds i8, ptr %.089.i128.i79, i64 -7
  store i8 0, ptr %i.yn, align 1, !tbaa !52
  %i.yo = getelementptr inbounds i8, ptr %.089.i128.i79, i64 -8 ; 3 uses
  store i8 0, ptr %i.yo, align 1, !tbaa !52
  %niter161.next.7 = add i32 %niter161, 8         ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %pack_uint32_.exit130.i81.loopexit.unr-lcssa, label %.lr.ph.i125.i77, !llvm.loop !36

pack_uint32_.exit130.i81.loopexit.unr-lcssa:      ; preds = %.lr.ph.i125.i77
  %lcmp.mod158.not = icmp eq i32 %xtraiter156, 0
  br i1 %lcmp.mod158.not, label %pack_uint32_.exit130.i81, label %.lr.ph.i125.i77.epil.preheader

.lr.ph.i125.i77.epil.preheader:                   ; preds = %pack_uint32_.exit130.i81.loopexit.unr-lcssa, %.lr.ph.preheader.i124.i76
  %.0710.i127.i.epil.init = phi i32 [ %i.xw, %.lr.ph.preheader.i124.i76 ], [ 0, %pack_uint32_.exit130.i81.loopexit.unr-lcssa ]
  %.089.i128.i79.epil.init = phi ptr [ %i.xy, %.lr.ph.preheader.i124.i76 ], [ %i.yo, %pack_uint32_.exit130.i81.loopexit.unr-lcssa ]
  %lcmp.mod159 = icmp ne i32 %xtraiter156, 0
  call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph.i125.i77.epil

.lr.ph.i125.i77.epil:                             ; preds = %.lr.ph.i125.i77.epil, %.lr.ph.i125.i77.epil.preheader
  %.0710.i127.i.epil = phi i32 [ %i.yr, %.lr.ph.i125.i77.epil ], [ %.0710.i127.i.epil.init, %.lr.ph.i125.i77.epil.preheader ] ; 2 uses
  %.089.i128.i79.epil = phi ptr [ %i.yq, %.lr.ph.i125.i77.epil ], [ %.089.i128.i79.epil.init, %.lr.ph.i125.i77.epil.preheader ]
  %epil.iter157 = phi i32 [ %epil.iter157.next, %.lr.ph.i125.i77.epil ], [ 0, %.lr.ph.i125.i77.epil.preheader ]
  %i.yp = trunc i32 %.0710.i127.i.epil to i8
  %i.yq = getelementptr inbounds i8, ptr %.089.i128.i79.epil, i64 -1 ; 2 uses
  store i8 %i.yp, ptr %i.yq, align 1, !tbaa !52
  %i.yr = lshr i32 %.0710.i127.i.epil, 8
  %epil.iter157.next = add i32 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i32 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %pack_uint32_.exit130.i81, label %.lr.ph.i125.i77.epil, !llvm.loop !294

pack_uint32_.exit130.i81:                         ; preds = %pack_uint32_.exit130.i81.loopexit.unr-lcssa, %.lr.ph.i125.i77.epil, %bb.an
  %.pre-phi144.i = phi i64 [ 0, %bb.an ], [ %i.xx, %.lr.ph.i125.i77.epil ], [ %i.xx, %pack_uint32_.exit130.i81.loopexit.unr-lcssa ] ; 2 uses
  %i.ys = call i64 %1(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %.pre-phi144.i, ptr noundef %0) #32, !inline_history !287
  %.not73.i = icmp eq i64 %i.ys, %.pre-phi144.i
  br i1 %.not73.i, label %bb.ao, label %write_metadata_block_data_picture_cb_.exit

bb.ao:                                            ; preds = %pack_uint32_.exit130.i81
  %i.yt = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !156
  %i.yv = load i32, ptr %i.xv, align 8, !tbaa !155
  %i.yw = zext i32 %i.yv to i64
  %i.yx = call i64 %1(ptr noundef %i.yu, i64 noundef 1, i64 noundef %i.yw, ptr noundef %0) #32, !inline_history !287
  %i.yy = load i32, ptr %i.xv, align 8, !tbaa !155
  %i.yz = zext i32 %i.yy to i64
  %.not74.i = icmp eq i64 %i.yx, %i.yz
  %..i82 = zext i1 %.not74.i to i32
  br label %write_metadata_block_data_picture_cb_.exit

write_metadata_block_data_picture_cb_.exit:       ; preds = %pack_uint32_.exit.i57, %pack_uint32_.exit82.i, %bb.ag, %pack_uint32_.exit90.i, %bb.ai, %pack_uint32_.exit98.i, %pack_uint32_.exit106.i, %pack_uint32_.exit114.i, %pack_uint32_.exit122.i74, %pack_uint32_.exit130.i81, %bb.ao
  %.0.i60 = phi i32 [ 0, %pack_uint32_.exit130.i81 ], [ 0, %pack_uint32_.exit.i57 ], [ 0, %pack_uint32_.exit82.i ], [ 0, %bb.ag ], [ 0, %pack_uint32_.exit90.i ], [ 0, %bb.ai ], [ 0, %pack_uint32_.exit98.i ], [ 0, %pack_uint32_.exit106.i ], [ 0, %pack_uint32_.exit114.i ], [ 0, %pack_uint32_.exit122.i74 ], [ %..i82, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %write_metadata_block_data_application_cb_.exit

bb.ap:                                            ; preds = %bb.a
  %i.za = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.zb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.zc = load i32, ptr %i.zb, align 8, !tbaa !78
  %.val = load ptr, ptr %i.za, align 8, !tbaa !129
  %i.zd = zext i32 %i.zc to i64                   ; 2 uses
  %i.ze = tail call i64 %1(ptr noundef %.val, i64 noundef 1, i64 noundef %i.zd, ptr noundef %0) #32, !inline_history !295
  %.not.i83 = icmp eq i64 %i.ze, %i.zd
  %..i84 = zext i1 %.not.i83 to i32
  br label %write_metadata_block_data_application_cb_.exit

write_metadata_block_data_application_cb_.exit:   ; preds = %bb.f, %bb.e, %bb.ap, %write_metadata_block_data_picture_cb_.exit, %write_metadata_block_data_cuesheet_cb_.exit, %write_metadata_block_data_vorbis_comment_cb_.exit, %write_metadata_block_data_seektable_cb_.exit, %write_metadata_block_data_padding_cb_.exit, %bb.b
  %.0 = phi i32 [ %..i84, %bb.ap ], [ %..i, %bb.b ], [ %.011.i, %write_metadata_block_data_padding_cb_.exit ], [ %.0.i60, %write_metadata_block_data_picture_cb_.exit ], [ %.011.i36, %write_metadata_block_data_seektable_cb_.exit ], [ %.035.i, %write_metadata_block_data_vorbis_comment_cb_.exit ], [ %.4.i, %write_metadata_block_data_cuesheet_cb_.exit ], [ 0, %bb.e ], [ %..i32, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memset_chk(ptr noundef writeonly, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @lstat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #28

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @utimensat(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #29

; Function Attrs: nofree nounwind
declare noundef i32 @chown(ptr noundef readonly captures(none), i32 noundef, i32 noundef) local_unnamed_addr #11

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.bitreverse.i8(i8) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { alwaysinline nobuiltin nounwind sspstrong uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind sspstrong willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind sspstrong willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn }
attributes #26 = { nofree "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #29 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { nounwind }
attributes #33 = { nounwind allocsize(0,1) }
attributes #34 = { nounwind willreturn memory(read) }
attributes #35 = { nounwind allocsize(0) }
attributes #36 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!43, !44}
!llvm.ident = !{!45}
!llvm.errno.tbaa = !{!50}

!0 = distinct !{!0, !72}
!1 = distinct !{!1, !72}
!2 = distinct !{!2, !72}
!3 = distinct !{!3, !72}
!4 = distinct !{!4, !72}
!5 = distinct !{!5, !72}
!6 = distinct !{!6, !72}
!7 = distinct !{null}
!8 = distinct !{null}
!9 = distinct !{!9, !72}
!10 = distinct !{!10, !72}
!11 = distinct !{!11, !72}
!12 = distinct !{null, null}
!13 = distinct !{null, null}
!14 = distinct !{null, null, null}
!15 = distinct !{null, null, null}
!16 = distinct !{null, null, null}
!17 = distinct !{null, null, null}
!18 = distinct !{null, null, null}
!19 = distinct !{null, null, null, null}
!20 = distinct !{null, null, null}
!21 = distinct !{null, null, null, ptr @read_metadata_block_data_picture_cstring_cb_}
!22 = distinct !{null, null, null}
!23 = distinct !{!23, !72}
!24 = distinct !{!24, !72}
!25 = distinct !{ptr @write_metadata_block_data_cb_, null}
!26 = distinct !{!26, !72}
!27 = distinct !{ptr @write_metadata_block_data_cb_, null}
!28 = distinct !{ptr @write_metadata_block_data_cb_, null}
!29 = distinct !{!29, !72}
!30 = distinct !{ptr @write_metadata_block_data_cb_, null}
!31 = distinct !{!31, !72}
!32 = distinct !{ptr @write_metadata_block_data_cb_, null}
!33 = distinct !{!33, !72}
!34 = distinct !{ptr @write_metadata_block_data_cb_, null}
!35 = distinct !{!35, !72}
!36 = distinct !{!36, !72}
!37 = distinct !{!37, !72}
!38 = distinct !{!38, !72}
!39 = distinct !{ptr @write_metadata_block_data_cb_, null}
!40 = distinct !{ptr @write_metadata_block_data_cb_, null}
!41 = distinct !{!41, !72}
!42 = distinct !{!42, !72}
!43 = !{i32 8, !"PIC Level", i32 2}
!44 = !{i32 7, !"uwtable", i32 2}
!45 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !{!"omnipotent char", !46, i64 0}
!48 = !{!"int", !47, i64 0}
!49 = !{!"__libc_errno", !48, i64 0}
!50 = !{!49, !48, i64 0}
!51 = !{!48, !48, i64 0}
!52 = !{!47, !47, i64 0}
!53 = !{!"any pointer", !47, i64 0}
!54 = !{!"p1 _ZTS20FLAC__StreamMetadata", !53, i64 0}
!55 = !{!"", !48, i64 0, !54, i64 8}
!56 = !{!55, !48, i64 0}
!57 = !{!55, !54, i64 8}
!58 = !{!54, !54, i64 0}
!59 = !{!"long", !47, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!"p1 _ZTS8_IO_FILE", !53, i64 0}
!62 = !{!"p1 omnipotent char", !53, i64 0}
!63 = !{!"timespec", !59, i64 0, !59, i64 8}
!64 = !{!"stat", !59, i64 0, !59, i64 8, !59, i64 16, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !59, i64 40, !59, i64 48, !59, i64 56, !59, i64 64, !63, i64 72, !63, i64 88, !63, i64 104, !47, i64 120}
!65 = !{!"FLAC__Metadata_SimpleIterator", !61, i64 0, !62, i64 8, !62, i64 16, !64, i64 24, !48, i64 168, !48, i64 172, !48, i64 176, !47, i64 184, !59, i64 224, !48, i64 232, !48, i64 236, !48, i64 240, !48, i64 244}
!66 = !{!65, !59, i64 224}
!67 = !{!65, !61, i64 0}
!68 = !{!65, !48, i64 168}
!69 = !{!65, !62, i64 8}
!70 = !{!65, !62, i64 16}
!71 = !{!65, !48, i64 240}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!65, !48, i64 176}
!74 = !{!65, !48, i64 236}
!75 = !{!"FLAC__StreamMetadata", !48, i64 0, !48, i64 4, !48, i64 8, !47, i64 16}
!76 = !{!75, !48, i64 4}
!77 = !{!65, !48, i64 244}
!78 = !{!75, !48, i64 8}
!79 = !{!75, !48, i64 0}
!80 = !{!"", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !59, i64 32, !47, i64 40}
!81 = !{!80, !48, i64 0}
!82 = !{!80, !48, i64 4}
!83 = !{!80, !48, i64 8}
!84 = !{!80, !48, i64 12}
!85 = !{!80, !48, i64 16}
!86 = !{!80, !48, i64 20}
!87 = !{!80, !48, i64 24}
!88 = !{!80, !59, i64 32}
!89 = !{!"", !47, i64 0, !62, i64 8}
!90 = !{!89, !62, i64 8}
!91 = !{!"", !48, i64 0, !53, i64 8}
!92 = !{!91, !48, i64 0}
!93 = !{!91, !53, i64 8}
!94 = !{!"", !59, i64 0, !59, i64 8, !48, i64 16}
!95 = !{!94, !59, i64 0}
!96 = !{!94, !59, i64 8}
!97 = !{!94, !48, i64 16}
!98 = !{ptr @read_metadata_block_data_vorbis_comment_entry_cb_}
!99 = !{!"", !48, i64 0, !62, i64 8}
!100 = !{!99, !48, i64 0}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = !{!99, !62, i64 8}
!103 = !{!"", !99, i64 0, !48, i64 16, !53, i64 24}
!104 = !{!103, !48, i64 0}
!105 = !{!103, !48, i64 16}
!106 = !{!103, !53, i64 24}
!107 = !{!"", !47, i64 0, !59, i64 136, !48, i64 144, !48, i64 148, !53, i64 152}
!108 = !{!107, !59, i64 136}
!109 = !{!107, !48, i64 144}
!110 = !{!107, !48, i64 148}
!111 = !{!107, !53, i64 152}
!112 = !{!"", !59, i64 0, !47, i64 8, !47, i64 9, !48, i64 22, !48, i64 22, !47, i64 23, !53, i64 24}
!113 = !{!112, !59, i64 0}
!114 = !{!112, !47, i64 8}
!115 = !{!112, !47, i64 23}
!116 = !{!112, !53, i64 24}
!117 = !{!"", !59, i64 0, !47, i64 8}
!118 = !{!117, !59, i64 0}
!119 = !{!117, !47, i64 8}
!120 = !{!"", !48, i64 0, !62, i64 8, !62, i64 16, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !48, i64 40, !62, i64 48}
!121 = !{!120, !48, i64 0}
!122 = !{!62, !62, i64 0}
!123 = !{!120, !48, i64 24}
!124 = !{!120, !48, i64 28}
!125 = !{!120, !48, i64 32}
!126 = !{!120, !48, i64 36}
!127 = !{ptr @read_metadata_block_data_picture_cstring_cb_}
!128 = !{!"", !62, i64 0}
!129 = !{!128, !62, i64 0}
!130 = !{!65, !48, i64 232}
!131 = !{!65, !48, i64 172}
!132 = !{!61, !61, i64 0}
!133 = !{!"p1 _ZTS19FLAC__Metadata_Node", !53, i64 0}
!134 = !{!"FLAC__Metadata_Chain", !62, i64 0, !48, i64 8, !133, i64 16, !133, i64 24, !48, i64 32, !48, i64 36, !59, i64 40, !59, i64 48, !59, i64 56, !53, i64 64, !53, i64 72}
!135 = !{!134, !133, i64 16}
!136 = !{!"FLAC__Metadata_Node", !54, i64 0, !133, i64 8, !133, i64 16}
!137 = !{!136, !133, i64 16}
!138 = !{!136, !54, i64 0}
!139 = !{!134, !62, i64 0}
!140 = !{!134, !48, i64 36}
!141 = !{!134, !48, i64 8}
!142 = !{!134, !59, i64 56}
!143 = !{!134, !53, i64 72}
!144 = !{!134, !59, i64 40}
!145 = !{!134, !133, i64 24}
!146 = !{!136, !133, i64 8}
!147 = !{!134, !48, i64 32}
!148 = !{!134, !59, i64 48}
!149 = !{!133, !133, i64 0}
!150 = !{!"", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40}
!151 = !{!150, !53, i64 0}
!152 = !{!103, !62, i64 8}
!153 = !{!120, !62, i64 8}
!154 = !{!120, !62, i64 16}
!155 = !{!120, !48, i64 40}
!156 = !{!120, !62, i64 48}
!157 = !{!64, !48, i64 24}
end_hunk_3
