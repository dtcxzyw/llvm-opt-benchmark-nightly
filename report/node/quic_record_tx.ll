inline.NumInlined: 64
inline.NumDeleted: 32
begin_hunk_0_@ossl_qtx_write_pkt:bb.a
  %i.fw = select i1 %i.fv, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %i.fc, %i.fw                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.gd, %vector.body ]
  %vec.phi238 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ge, %vector.body ]
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %index
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %index
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %i.gb = load <3 x i64>, ptr %i.fz, align 8, !tbaa !68
  %strided.vec = shufflevector <3 x i64> %i.gb, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.gc = load <3 x i64>, ptr %i.ga, align 8, !tbaa !68
  %strided.vec240 = shufflevector <3 x i64> %i.gc, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.gd = add <2 x i64> %strided.vec, %vec.phi    ; 2 uses
  %i.ge = add <2 x i64> %strided.vec240, %vec.phi238 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gf = icmp eq i64 %index.next, %n.vec
  br i1 %i.gf, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ge, %i.gd
  %i.gg = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.lr.ph.i.i.i.i.preheader243

.lr.ph.i.i.i.i.preheader243:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %i.gg, %middle.block ]
  %.067.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader243, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi i64 [ %i.gk, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader243 ]
  %.067.i.i.i.i = phi i64 [ %i.gl, %.lr.ph.i.i.i.i ], [ %.067.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader243 ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %.067.i.i.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !68
  %i.gk = add i64 %i.gj, %.08.i.i.i.i             ; 4 uses
  %i.gl = add nuw i64 %.067.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.gl, %i.fc
  br i1 %exitcond.not.i.i.i.i, label %iovec_cur_init.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !73

iovec_cur_init.exit.i.i:                          ; preds = %.lr.ph.i.i.i.i
  %i.gm = icmp eq i64 %i.gk, 0
  br i1 %i.gm, label %iovec_cur_init.exit.thread.i.i, label %bb.be

bb.be:                                            ; preds = %iovec_cur_init.exit.i.i
  br i1 %switch.selectcmp.i.not.i.i, label %ossl_qtx_calculate_ciphertext_payload_len.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gn = call ptr @ossl_qrl_enc_level_set_get(ptr noundef nonnull %i.dc, i32 noundef range(i32 0, 5) %.0.i98203, i32 noundef 1) #10 ; 2 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %ossl_qtx_calculate_ciphertext_payload_len.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 96
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !39
  %i.gr = call i32 @ossl_qrl_get_suite_cipher_tag_len(i32 noundef %i.gq) #10
  %i.gs = zext i32 %i.gr to i64
  %i.gt = add i64 %i.gk, %i.gs
  br label %ossl_qtx_calculate_ciphertext_payload_len.exit.i.i

ossl_qtx_calculate_ciphertext_payload_len.exit.i.i: ; preds = %bb.bg, %bb.bf, %bb.be
  %.082.i.i = phi i64 [ 0, %bb.bf ], [ %i.gt, %bb.bg ], [ %i.gk, %bb.be ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fb, i64 80
  store ptr null, ptr %i.gu, align 8, !tbaa !74
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fb, i64 72
  store i64 %.082.i.i, ptr %i.gv, align 8, !tbaa !77
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 8, !tbaa !78
  %i.gy = zext i8 %i.gx to i64
  %i.gz = call i32 @ossl_quic_wire_get_encoded_pkt_hdr_len(i64 noundef %i.gy, ptr noundef nonnull %i.fb) #10 ; 2 uses
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %iovec_cur_init.exit.thread.i.i, label %bb.bh

bb.bh:                                            ; preds = %ossl_qtx_calculate_ciphertext_payload_len.exit.i.i
  %i.hb = sext i32 %i.gz to i64
  %i.hc = add i64 %.082.i.i, %i.hb
  %i.hd = icmp ugt i64 %i.hc, %i.fj
  br i1 %i.hd, label %iovec_cur_init.exit.thread.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.he = load i32, ptr %i.fb, align 8            ; 2 uses
  %i.hf = and i32 %i.he, 253
  %switch.selectcmp.i.i.not.i.i = icmp eq i32 %i.hf, 4
  br i1 %switch.selectcmp.i.i.not.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hg = load i64, ptr %i.dd, align 8, !tbaa !79
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fb, i64 50
  %i.hi = lshr i32 %i.he, 10
  %i.hj = and i32 %i.hi, 15
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = call i32 @ossl_quic_wire_encode_pkt_hdr_pn(i64 noundef %i.hg, ptr noundef nonnull %i.hh, i64 noundef %i.hk) #10
  %.not65.i.i = icmp eq i32 %i.hl, 0
  br i1 %.not65.i.i, label %iovec_cur_init.exit.thread.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.hm = getelementptr inbounds nuw i8, ptr %.0.i72, i64 256 ; 4 uses
  %i.hn = load i64, ptr %i.fg, align 8, !tbaa !52 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hn ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i64 0, ptr %i.d, align 8, !tbaa !45
  %i.hp = load i64, ptr %i.ek, align 8, !tbaa !58
  %i.hq = sub i64 %i.hp, %i.hn
  %i.hr = call i32 @WPACKET_init_static_len(ptr noundef nonnull %2, ptr noundef nonnull %i.ho, i64 noundef %i.hq, i64 noundef 0) #10
  %.not.i.i.i77 = icmp eq i32 %i.hr, 0
  br i1 %.not.i.i.i77, label %qtx_write_hdr.exit.thread.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hs = load i8, ptr %i.gw, align 8, !tbaa !78
  %i.ht = zext i8 %i.hs to i64
  %i.hu = call i32 @ossl_quic_wire_encode_pkt_hdr(ptr noundef nonnull %2, i64 noundef %i.ht, ptr noundef nonnull %i.fb, ptr noundef nonnull %3) #10
  %.not15.i.i.i = icmp eq i32 %i.hu, 0
  br i1 %.not15.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hv = call i32 @WPACKET_get_total_written(ptr noundef nonnull %2, ptr noundef nonnull %i.d) #10
  %.not16.i.i.i = icmp eq i32 %i.hv, 0
  br i1 %.not16.i.i.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.hw = call i32 @WPACKET_finish(ptr noundef nonnull %2) #10 ; 0 uses
  br label %qtx_write_hdr.exit.thread.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.hx = call i32 @WPACKET_finish(ptr noundef nonnull %2) #10 ; 0 uses
  %i.hy = load ptr, ptr %i.de, align 8, !tbaa !80 ; 2 uses
  %.not17.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not17.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hz = load i64, ptr %i.d, align 8, !tbaa !45
  %i.ia = load ptr, ptr %i.df, align 8, !tbaa !81
  %i.ib = load ptr, ptr %i.dg, align 8, !tbaa !82
  call void %i.hy(i32 noundef 1, i32 noundef 1, i32 noundef 513, ptr noundef nonnull %i.ho, i64 noundef %i.hz, ptr noundef %i.ia, ptr noundef %i.ib) #10, !inline_history !83
  br label %bb.bq

qtx_write_hdr.exit.thread.i.i:                    ; preds = %bb.bn, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %iovec_cur_init.exit.thread.i.i

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.ic = load i64, ptr %i.d, align 8, !tbaa !45
  %i.id = load i64, ptr %i.fg, align 8, !tbaa !52
  %i.ie = add i64 %i.id, %i.ic                    ; 3 uses
  store i64 %i.ie, ptr %i.fg, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br i1 %switch.selectcmp.i.not.i.i, label %.lr.ph.i.i.i, label %bb.bt

.lr.ph.i.i.i:                                     ; preds = %bb.bq, %.loopexit.i.i
  %i.if = phi i64 [ %i.is, %.loopexit.i.i ], [ %i.ie, %bb.bq ] ; 2 uses
  %.sroa.9.0108.i.i = phi i64 [ %.sroa.9.1.i.i, %.loopexit.i.i ], [ 0, %bb.bq ] ; 3 uses
  %.sroa.17.0107.i.i = phi i64 [ %.lcssa34.i.i.i, %.loopexit.i.i ], [ 0, %bb.bq ] ; 2 uses
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %.sroa.9.0108.i.i ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !68 ; 2 uses
  %i.ij = sub i64 %i.ii, %.sroa.17.0107.i.i       ; 2 uses
  %.not26.peel.i.i.i = icmp eq i64 %i.ij, 0
  br i1 %.not26.peel.i.i.i, label %bb.br, label %.loopexit.i.i

bb.br:                                            ; preds = %.lr.ph.i.i.i
  %i.ik = add nuw i64 %.sroa.9.0108.i.i, 1        ; 2 uses
  %exitcond.peel.not.i.i.i = icmp eq i64 %i.ik, %i.fc
  br i1 %exitcond.peel.not.i.i.i, label %.loopexit.i, label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %bb.br, %bb.bs
  %.sroa.9.2.i.i = phi i64 [ %i.io, %bb.bs ], [ %i.ik, %bb.br ] ; 3 uses
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %.sroa.9.2.i.i ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load i64, ptr %i.im, align 8, !tbaa !68 ; 3 uses
  %.not26.i.i.i = icmp eq i64 %i.in, 0
  br i1 %.not26.i.i.i, label %bb.bs, label %.loopexit.i.i

bb.bs:                                            ; preds = %.peel.next.i.i.i
  %i.io = add i64 %.sroa.9.2.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.io, %i.fc
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %.peel.next.i.i.i, !llvm.loop !84

.loopexit.i.i:                                    ; preds = %.peel.next.i.i.i, %.lr.ph.i.i.i
  %.sroa.9.1.i.i = phi i64 [ %.sroa.9.0108.i.i, %.lr.ph.i.i.i ], [ %.sroa.9.2.i.i, %.peel.next.i.i.i ] ; 2 uses
  %.lcssa38.i.i.i = phi i64 [ %.sroa.17.0107.i.i, %.lr.ph.i.i.i ], [ 0, %.peel.next.i.i.i ]
  %.lcssa36.i.i.i = phi ptr [ %i.ig, %.lr.ph.i.i.i ], [ %i.il, %.peel.next.i.i.i ]
  %.lcssa34.i.i.i = phi i64 [ %i.ii, %.lr.ph.i.i.i ], [ %i.in, %.peel.next.i.i.i ]
  %.lcssa.i.i.i = phi i64 [ %i.ij, %.lr.ph.i.i.i ], [ %i.in, %.peel.next.i.i.i ] ; 2 uses
  %i.ip = load ptr, ptr %.lcssa36.i.i.i, align 8, !tbaa !86
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.lcssa38.i.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.if
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ir, ptr noundef nonnull align 1 dereferenceable(1) %i.iq, i64 %.lcssa.i.i.i, i1 false)
  %i.is = add i64 %.lcssa.i.i.i, %i.if            ; 2 uses
  store i64 %i.is, ptr %i.fg, align 8, !tbaa !52
  %.not31.i.i.i = icmp ult i64 %.sroa.9.1.i.i, %i.fc
  br i1 %.not31.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i

bb.bt:                                            ; preds = %bb.bq
  %gepdiff.i.i = sub nsw i64 %i.ie, %i.hn
  %i.it = load i64, ptr %i.dd, align 8, !tbaa !79 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 0, ptr %i.b, align 4, !tbaa !5
  %i.iu = call ptr @ossl_qrl_enc_level_set_get(ptr noundef nonnull %i.dc, i32 noundef range(i32 0, 5) %.0.i98203, i32 noundef 1) #10 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %.not.i69.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i69.i.i, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i, label %bb.bu, !prof !66

bb.bu:                                            ; preds = %bb.bt
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 88 ; 3 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !87
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 96
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !39
  %i.iz = call i64 @ossl_qrl_get_suite_max_pkt(i32 noundef %i.iy) #10
  %.not46.i.i.i = icmp ult i64 %i.iw, %i.iz
  br i1 %.not46.i.i.i, label %bb.bv, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iu, i64 48
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !88 ; 7 uses
  %.not47.i.i.i = icmp eq ptr %i.jb, null
  br i1 %.not47.i.i.i, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i, label %bb.bw, !prof !66

bb.bw:                                            ; preds = %bb.bv
  %i.jc = call i32 @EVP_CIPHER_CTX_get_iv_length(ptr noundef nonnull %i.jb) #10 ; 2 uses
  %i.jd = icmp sgt i32 %i.jc, 7
  br i1 %i.jd, label %bb.bx, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i, !prof !89

bb.bx:                                            ; preds = %bb.bw
  %i.je = getelementptr inbounds nuw i8, ptr %i.iu, i64 106
  %i.jf = zext nneg i32 %i.jc to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 2 %i.je, i64 %i.jf, i1 false)
  %invariant.gep.i.i.i = getelementptr i8, ptr %i.c, i64 %i.jf
  %gep.7.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i, i64 -8 ; 2 uses
  %i.jg = insertelement <2 x i64> poison, i64 %i.it, i64 0
  %i.jh = shufflevector <2 x i64> %i.jg, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ji = lshr <2 x i64> %i.jh, <i64 40, i64 32>
  %4 = lshr <2 x i64> %i.jh, <i64 56, i64 48>
  %5 = insertelement <4 x i64> poison, i64 %i.it, i64 0
  %6 = shufflevector <4 x i64> %5, <4 x i64> poison, <4 x i32> zeroinitializer
  %7 = lshr <4 x i64> %6, <i64 24, i64 16, i64 8, i64 0>
  %8 = trunc <4 x i64> %7 to <4 x i8>
  %9 = trunc <2 x i64> %i.ji to <2 x i8>
  %i.jj = trunc <2 x i64> %4 to <2 x i8>
  %i.jk = load <8 x i8>, ptr %gep.7.i.i.i, align 1, !tbaa !90
  %10 = shufflevector <2 x i8> %i.jj, <2 x i8> %9, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %11 = shufflevector <4 x i8> %8, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %12 = shufflevector <8 x i8> %10, <8 x i8> %11, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jl = xor <8 x i8> %i.jk, %12
  store <8 x i8> %i.jl, ptr %gep.7.i.i.i, align 1, !tbaa !90
  %i.jm = call i32 @EVP_CipherInit_ex(ptr noundef nonnull %i.jb, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.c, i32 noundef 1) #10
  %.not48.i.i.i = icmp eq i32 %i.jm, 1
  br i1 %.not48.i.i.i, label %bb.by, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i

bb.by:                                            ; preds = %bb.bx
  %i.jn = trunc i64 %gepdiff.i.i to i32
  %i.jo = call i32 @EVP_CipherUpdate(ptr noundef nonnull %i.jb, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ho, i32 noundef %i.jn) #10
  %.not49.i.i.i = icmp eq i32 %i.jo, 1
  br i1 %.not49.i.i.i, label %.lr.ph.i.i70.i.i, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i

.lr.ph.i.i70.i.i:                                 ; preds = %bb.by, %bb.cb
  %.sroa.17.2.i.i = phi i64 [ %.lcssa34.i.i.i.i, %bb.cb ], [ 0, %bb.by ] ; 2 uses
  %.sroa.9.4.i.i = phi i64 [ %.sroa.9.5.i.i, %bb.cb ], [ 0, %bb.by ] ; 3 uses
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %.sroa.9.4.i.i ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !68 ; 2 uses
  %i.js = sub i64 %i.jr, %.sroa.17.2.i.i          ; 2 uses
  %.not26.peel.i.i.i.i = icmp eq i64 %i.js, 0
  br i1 %.not26.peel.i.i.i.i, label %bb.bz, label %.loopexit.i.i.i

bb.bz:                                            ; preds = %.lr.ph.i.i70.i.i
  %i.jt = add nuw i64 %.sroa.9.4.i.i, 1           ; 2 uses
  %exitcond.peel.not.i.i.i.i = icmp eq i64 %i.jt, %i.fc
  br i1 %exitcond.peel.not.i.i.i.i, label %.loopexit62.i.i.i, label %.peel.next.i.i.i.i

.peel.next.i.i.i.i:                               ; preds = %bb.bz, %bb.ca
  %.sroa.9.6.i.i = phi i64 [ %i.jx, %bb.ca ], [ %i.jt, %bb.bz ] ; 3 uses
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %.sroa.9.6.i.i ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !68 ; 3 uses
  %.not26.i.i.i.i = icmp eq i64 %i.jw, 0
  br i1 %.not26.i.i.i.i, label %bb.ca, label %.loopexit.i.i.i

bb.ca:                                            ; preds = %.peel.next.i.i.i.i
  %i.jx = add i64 %.sroa.9.6.i.i, 1               ; 2 uses
  %exitcond.not.i.i71.i.i = icmp eq i64 %i.jx, %i.fc
  br i1 %exitcond.not.i.i71.i.i, label %.loopexit62.i.i.i, label %.peel.next.i.i.i.i, !llvm.loop !84

.loopexit.i.i.i:                                  ; preds = %.peel.next.i.i.i.i, %.lr.ph.i.i70.i.i
  %.sroa.9.5.i.i = phi i64 [ %.sroa.9.4.i.i, %.lr.ph.i.i70.i.i ], [ %.sroa.9.6.i.i, %.peel.next.i.i.i.i ] ; 2 uses
  %.lcssa38.i.i.i.i = phi i64 [ %.sroa.17.2.i.i, %.lr.ph.i.i70.i.i ], [ 0, %.peel.next.i.i.i.i ]
  %.lcssa36.i.i.i.i = phi ptr [ %i.jp, %.lr.ph.i.i70.i.i ], [ %i.ju, %.peel.next.i.i.i.i ]
  %.lcssa34.i.i.i.i = phi i64 [ %i.jr, %.lr.ph.i.i70.i.i ], [ %i.jw, %.peel.next.i.i.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.js, %.lr.ph.i.i70.i.i ], [ %i.jw, %.peel.next.i.i.i.i ] ; 2 uses
  %i.jy = load ptr, ptr %.lcssa36.i.i.i.i, align 8, !tbaa !86
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %.lcssa38.i.i.i.i
  %i.ka = load i64, ptr %i.fg, align 8, !tbaa !52
  %i.kb = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.ka
  %i.kc = trunc i64 %.lcssa.i.i.i.i to i32
  %i.kd = call i32 @EVP_CipherUpdate(ptr noundef nonnull %i.jb, ptr noundef nonnull %i.kb, ptr noundef nonnull %i.a, ptr noundef %i.jz, i32 noundef %i.kc) #10
  %.not50.i.i.i = icmp eq i32 %i.kd, 1
  br i1 %.not50.i.i.i, label %bb.cb, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i

bb.cb:                                            ; preds = %.loopexit.i.i.i
  %i.ke = load i64, ptr %i.fg, align 8, !tbaa !52
  %i.kf = add i64 %i.ke, %.lcssa.i.i.i.i
  store i64 %i.kf, ptr %i.fg, align 8, !tbaa !52
  %.not31.i.i.i.i = icmp ult i64 %.sroa.9.5.i.i, %i.fc
  br i1 %.not31.i.i.i.i, label %.lr.ph.i.i70.i.i, label %.loopexit62.i.i.i

.loopexit62.i.i.i:                                ; preds = %bb.cb, %bb.bz, %bb.ca
  %i.kg = call i32 @EVP_CipherFinal_ex(ptr noundef nonnull %i.jb, ptr noundef null, ptr noundef nonnull %i.b) #10
  %.not51.i.i.i = icmp eq i32 %i.kg, 1
  br i1 %.not51.i.i.i, label %bb.cc, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i

bb.cc:                                            ; preds = %.loopexit62.i.i.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.iu, i64 100 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !91
  %i.kj = load i64, ptr %i.fg, align 8, !tbaa !52
  %i.kk = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.kj
  %i.kl = call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef nonnull %i.jb, i32 noundef 16, i32 noundef %i.ki, ptr noundef nonnull %i.kk) #10
  %.not52.i.i.i = icmp eq i32 %i.kl, 1
  br i1 %.not52.i.i.i, label %bb.cd, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.km = load i32, ptr %i.kh, align 4, !tbaa !91
  %i.kn = zext i32 %i.km to i64
  %i.ko = load i64, ptr %i.fg, align 8, !tbaa !52
  %i.kp = add i64 %i.ko, %i.kn
  store i64 %i.kp, ptr %i.fg, align 8, !tbaa !52
  %i.kq = call i32 @ossl_quic_hdr_protector_encrypt(ptr noundef nonnull %i.iu, ptr noundef nonnull %3) #10
  %.not53.i.i.i = icmp eq i32 %i.kq, 0
  br i1 %.not53.i.i.i, label %qtx_encrypt_into_txe.exit.thread.i.i, label %qtx_encrypt_into_txe.exit.i.i

qtx_encrypt_into_txe.exit.thread.sink.split.i.i:  ; preds = %.loopexit.i.i.i, %bb.cc, %.loopexit62.i.i.i, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt
  %.sink151.i.i = phi i32 [ 502, %bb.bt ], [ 529, %bb.bw ], [ 539, %bb.bx ], [ 545, %bb.by ], [ 583, %bb.cc ], [ 576, %.loopexit62.i.i.i ], [ 511, %bb.bu ], [ 522, %bb.bv ], [ 561, %.loopexit.i.i.i ]
  %.sink.i.i = phi i32 [ 786691, %bb.bt ], [ 786691, %bb.bw ], [ 524294, %bb.bx ], [ 524294, %bb.by ], [ 524294, %bb.cc ], [ 524294, %.loopexit62.i.i.i ], [ 395, %bb.bu ], [ 786691, %bb.bv ], [ 524294, %.loopexit.i.i.i ]
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink151.i.i, ptr noundef nonnull @__func__.qtx_encrypt_into_txe) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef %.sink.i.i, ptr noundef null) #10
  br label %qtx_encrypt_into_txe.exit.thread.i.i

qtx_encrypt_into_txe.exit.thread.i.i:             ; preds = %qtx_encrypt_into_txe.exit.thread.sink.split.i.i, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %iovec_cur_init.exit.thread.i.i

qtx_encrypt_into_txe.exit.i.i:                    ; preds = %bb.cd
  %i.kr = load i64, ptr %i.iv, align 8, !tbaa !87
  %i.ks = add i64 %i.kr, 1
  store i64 %i.ks, ptr %i.iv, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.loopexit.i

iovec_cur_init.exit.thread.i.i:                   ; preds = %qtx_encrypt_into_txe.exit.thread.i.i, %qtx_write_hdr.exit.thread.i.i, %bb.bj, %bb.bh, %ossl_qtx_calculate_ciphertext_payload_len.exit.i.i, %iovec_cur_init.exit.i.i, %bb.bd, %bb.ba
  %.054.i.i = phi i32 [ -2, %bb.bh ], [ -2, %bb.ba ], [ -1, %iovec_cur_init.exit.i.i ], [ -1, %ossl_qtx_calculate_ciphertext_payload_len.exit.i.i ], [ -1, %qtx_write_hdr.exit.thread.i.i ], [ -1, %bb.bj ], [ -1, %qtx_encrypt_into_txe.exit.thread.i.i ], [ -1, %bb.bd ]
  store i64 %i.fh, ptr %i.fg, align 8, !tbaa !52
  br label %qtx_write.exit.i

qtx_write.exit.i:                                 ; preds = %iovec_cur_init.exit.thread.i.i, %bb.az
  %.0.i.i = phi i32 [ %.054.i.i, %iovec_cur_init.exit.thread.i.i ], [ 0, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.cf

.loopexit.i:                                      ; preds = %.loopexit.i.i, %bb.br, %bb.bs, %qtx_encrypt_into_txe.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.kt = load ptr, ptr %i.dh, align 8, !tbaa !35 ; 2 uses
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %qtx_get_qlog.exit.i, label %bb.ce

bb.ce:                                            ; preds = %.loopexit.i
  %i.kv = load ptr, ptr %i.di, align 8, !tbaa !36
  %i.kw = call ptr %i.kt(ptr noundef %i.kv) #10, !inline_history !92
  br label %qtx_get_qlog.exit.i

qtx_get_qlog.exit.i:                              ; preds = %bb.ce, %.loopexit.i
  %.0.i25.i = phi ptr [ %i.kw, %bb.ce ], [ null, %.loopexit.i ]
  %i.kx = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.ky = load i64, ptr %i.dd, align 8, !tbaa !79
  %i.kz = load ptr, ptr %i.f, align 8, !tbaa !65
  %i.la = load i64, ptr %i.g, align 8, !tbaa !45
  %i.lb = load i64, ptr %i.dj, align 8, !tbaa !55
  call void @ossl_qlog_event_transport_packet_sent(ptr noundef %.0.i25.i, ptr noundef %i.kx, i64 noundef %i.ky, ptr noundef %i.kz, i64 noundef %i.la, i64 noundef %i.lb) #10
  br label %bb.cf

bb.cf:                                            ; preds = %qtx_get_qlog.exit.i, %qtx_write.exit.i
  %.0.i27.i78 = phi i32 [ 1, %qtx_get_qlog.exit.i ], [ %.0.i.i, %qtx_write.exit.i ]
  %i.lc = load ptr, ptr %i.dk, align 8, !tbaa !33 ; 2 uses
  %.not24.i = icmp eq ptr %i.lc, null
  br i1 %.not24.i, label %qtx_mutate_write.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ld = load ptr, ptr %i.db, align 8, !tbaa !34
  call void %i.lc(ptr noundef %i.ld) #10, !inline_history !63
  br label %qtx_mutate_write.exit

qtx_mutate_write.exit:                            ; preds = %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  switch i32 %.0.i27.i78, label %ossl_qtx_finish_dgram.exit93 [
    i32 1, label %bb.cs
    i32 -2, label %bb.ch
  ]

bb.ch:                                            ; preds = %qtx_mutate_write.exit
  br i1 %.1, label %ossl_qtx_finish_dgram.exit93, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.le = load ptr, ptr %i.cp, align 8, !tbaa !31 ; 12 uses
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %ossl_qtx_finish_dgram.exit86.backedge, label %bb.cj

ossl_qtx_finish_dgram.exit86.backedge:            ; preds = %bb.ci, %ossl_list_txe_insert_tail.exit.i82
  br label %ossl_qtx_finish_dgram.exit86

bb.cj:                                            ; preds = %bb.ci
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !52 ; 2 uses
  %i.li = icmp eq i64 %i.lh, 0
  br i1 %i.li, label %bb.ck, label %bb.co

bb.ck:                                            ; preds = %bb.cj
  %i.lj = load ptr, ptr %i.ct, align 8, !tbaa !53 ; 3 uses
  %.not.i.i85 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i85, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store ptr %i.le, ptr %i.lj, align 8, !tbaa !26
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.lk = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store ptr %i.lj, ptr %i.lk, align 8, !tbaa !54
  store ptr null, ptr %i.le, align 8, !tbaa !26
  store ptr %i.le, ptr %i.ct, align 8, !tbaa !53
  %i.ll = load ptr, ptr %i.cs, align 8, !tbaa !25
  %i.lm = icmp eq ptr %i.ll, null
  br i1 %i.lm, label %bb.cn, label %ossl_list_txe_insert_tail.exit.i82

bb.cn:                                            ; preds = %bb.cm
  store ptr %i.le, ptr %i.cs, align 8, !tbaa !25
  br label %ossl_list_txe_insert_tail.exit.i82

bb.co:                                            ; preds = %bb.cj
  %i.ln = load ptr, ptr %i.dm, align 8, !tbaa !53 ; 3 uses
end_hunk_0
