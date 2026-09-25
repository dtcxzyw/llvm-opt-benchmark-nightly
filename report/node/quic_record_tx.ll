Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/quic_record_tx?download=true
inline.NumInlined: 64
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ossl_qtx_write_pkt:bb.a
  %n.vec = sub i64 %i.fc, %i.fx                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.gc, %vector.body ]
  %vec.phi284 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.gd, %vector.body ]
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %index
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %index
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %wide.vec = load <4 x i64>, ptr %i.ga, align 8, !tbaa !85
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec285 = load <4 x i64>, ptr %i.gb, align 8, !tbaa !85
  %strided.vec286 = shufflevector <4 x i64> %wide.vec285, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.gc = add <2 x i64> %strided.vec, %vec.phi    ; 2 uses
  %i.gd = add <2 x i64> %strided.vec286, %vec.phi284 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ge = icmp eq i64 %index.next, %n.vec
  br i1 %i.ge, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.gd, %i.gc
  %i.gf = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.lr.ph.i.i.i.i.preheader298

.lr.ph.i.i.i.i.preheader298:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %i.gf, %middle.block ]
  %.067.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader298, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi i64 [ %i.gj, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader298 ]
  %.067.i.i.i.i = phi i64 [ %i.gk, %.lr.ph.i.i.i.i ], [ %.067.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader298 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %.067.i.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !85
  %i.gj = add i64 %i.gi, %.08.i.i.i.i             ; 4 uses
  %i.gk = add nuw i64 %.067.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.gk, %i.fc
  br i1 %exitcond.not.i.i.i.i, label %iovec_cur_init.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !67

iovec_cur_init.exit.i.i:                          ; preds = %.lr.ph.i.i.i.i
  %i.gl = icmp eq i64 %i.gj, 0
  br i1 %i.gl, label %iovec_cur_init.exit.thread.i.i.jt4294967295, label %bb.be

bb.be:                                            ; preds = %iovec_cur_init.exit.i.i
  br i1 %switch.selectcmp.i.not.i.i, label %ossl_qtx_calculate_ciphertext_payload_len.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gm = call ptr @ossl_qrl_enc_level_set_get(ptr noundef nonnull %i.dc, i32 noundef range(i32 0, 5) %.0.i97203, i32 noundef 1) #10 ; 2 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %ossl_qtx_calculate_ciphertext_payload_len.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 96
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !38
  %i.gq = call i32 @ossl_qrl_get_suite_cipher_tag_len(i32 noundef %i.gp) #10
  %i.gr = zext i32 %i.gq to i64
  %i.gs = add i64 %i.gj, %i.gr
  br label %ossl_qtx_calculate_ciphertext_payload_len.exit.i.i

ossl_qtx_calculate_ciphertext_payload_len.exit.i.i: ; preds = %bb.bg, %bb.bf, %bb.be
  %.082.i.i = phi i64 [ 0, %bb.bf ], [ %i.gs, %bb.bg ], [ %i.gj, %bb.be ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fb, i64 80
  store ptr null, ptr %i.gt, align 8, !tbaa !90
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fb, i64 72
  store i64 %.082.i.i, ptr %i.gu, align 8, !tbaa !91
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.gw = load i8, ptr %i.gv, align 8, !tbaa !92
  %i.gx = zext i8 %i.gw to i64
  %i.gy = call i32 @ossl_quic_wire_get_encoded_pkt_hdr_len(i64 noundef %i.gx, ptr noundef nonnull %i.fb) #10 ; 2 uses
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %iovec_cur_init.exit.thread.i.i.jt4294967295, label %bb.bh

bb.bh:                                            ; preds = %ossl_qtx_calculate_ciphertext_payload_len.exit.i.i
  %i.ha = sext i32 %i.gy to i64
  %i.hb = add i64 %.082.i.i, %i.ha
  %i.hc = icmp ugt i64 %i.hb, %i.fj
  br i1 %i.hc, label %bb.cf, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.he = load i32, ptr %i.fb, align 8            ; 2 uses
  %i.hf = and i32 %i.he, 253
  %switch.selectcmp.i.i.not.i.i = icmp eq i32 %i.hf, 4
  br i1 %switch.selectcmp.i.i.not.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hg = load i64, ptr %i.dd, align 8, !tbaa !93
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fb, i64 50
  %i.hi = lshr i32 %i.he, 10
  %i.hj = and i32 %i.hi, 15
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = call i32 @ossl_quic_wire_encode_pkt_hdr_pn(i64 noundef %i.hg, ptr noundef nonnull %i.hh, i64 noundef %i.hk) #10
  %.not65.i.i = icmp eq i32 %i.hl, 0
  br i1 %.not65.i.i, label %iovec_cur_init.exit.thread.i.i.jt4294967295, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.hm = getelementptr inbounds nuw i8, ptr %.0.i72, i64 256 ; 4 uses
  %i.hn = load i64, ptr %i.fg, align 8, !tbaa !41 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hn ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i64 0, ptr %i.d, align 8, !tbaa !39
  %i.hp = load i64, ptr %i.ek, align 8, !tbaa !78
  %i.hq = sub i64 %i.hp, %i.hn
  %i.hr = call i32 @WPACKET_init_static_len(ptr noundef nonnull %2, ptr noundef nonnull %i.ho, i64 noundef %i.hq, i64 noundef 0) #10
  %.not.i.i.i77 = icmp eq i32 %i.hr, 0
  br i1 %.not.i.i.i77, label %qtx_write_hdr.exit.thread.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hs = load i8, ptr %i.hd, align 8, !tbaa !92
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
  %i.hy = load ptr, ptr %i.de, align 8, !tbaa !48 ; 2 uses
  %.not17.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not17.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hz = load i64, ptr %i.d, align 8, !tbaa !39
  %i.ia = load ptr, ptr %i.df, align 8, !tbaa !49
  %i.ib = load ptr, ptr %i.dg, align 8, !tbaa !50
  call void %i.hy(i32 noundef 1, i32 noundef 1, i32 noundef 513, ptr noundef nonnull %i.ho, i64 noundef %i.hz, ptr noundef %i.ia, ptr noundef %i.ib) #10, !inline_history !68
  br label %bb.bq

qtx_write_hdr.exit.thread.i.i:                    ; preds = %bb.bn, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %iovec_cur_init.exit.thread.i.i.jt4294967295

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.ic = load i64, ptr %i.d, align 8, !tbaa !39
  %i.id = load i64, ptr %i.fg, align 8, !tbaa !41
  %i.ie = add i64 %i.id, %i.ic                    ; 3 uses
  store i64 %i.ie, ptr %i.fg, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br i1 %switch.selectcmp.i.not.i.i, label %.lr.ph.i.i.i, label %bb.bt

.lr.ph.i.i.i:                                     ; preds = %bb.bq, %.loopexit.i.i
  %i.if = phi i64 [ %i.is, %.loopexit.i.i ], [ %i.ie, %bb.bq ] ; 2 uses
  %.sroa.17.0108.i.i = phi i64 [ %.lcssa34.i.i.i, %.loopexit.i.i ], [ 0, %bb.bq ] ; 2 uses
  %.sroa.9.0107.i.i = phi i64 [ %.sroa.9.1.i.i, %.loopexit.i.i ], [ 0, %bb.bq ] ; 3 uses
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %.sroa.9.0107.i.i ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !85 ; 2 uses
  %i.ij = sub i64 %i.ii, %.sroa.17.0108.i.i       ; 2 uses
  %.not26.peel.i.i.i = icmp eq i64 %i.ij, 0
  br i1 %.not26.peel.i.i.i, label %bb.br, label %.loopexit.i.i

bb.br:                                            ; preds = %.lr.ph.i.i.i
  %i.ik = add nuw i64 %.sroa.9.0107.i.i, 1        ; 2 uses
  %exitcond.peel.not.i.i.i = icmp eq i64 %i.ik, %i.fc
  br i1 %exitcond.peel.not.i.i.i, label %.loopexit.i, label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %bb.br, %bb.bs
  %.sroa.9.2.i.i = phi i64 [ %i.io, %bb.bs ], [ %i.ik, %bb.br ] ; 3 uses
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %.sroa.9.2.i.i ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load i64, ptr %i.im, align 8, !tbaa !85 ; 3 uses
  %.not26.i.i.i = icmp eq i64 %i.in, 0
  br i1 %.not26.i.i.i, label %bb.bs, label %.loopexit.i.i

bb.bs:                                            ; preds = %.peel.next.i.i.i
  %i.io = add i64 %.sroa.9.2.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.io, %i.fc
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %.peel.next.i.i.i, !llvm.loop !69

.loopexit.i.i:                                    ; preds = %.peel.next.i.i.i, %.lr.ph.i.i.i
  %.sroa.9.1.i.i = phi i64 [ %.sroa.9.0107.i.i, %.lr.ph.i.i.i ], [ %.sroa.9.2.i.i, %.peel.next.i.i.i ] ; 2 uses
  %.lcssa38.i.i.i = phi i64 [ %.sroa.17.0108.i.i, %.lr.ph.i.i.i ], [ 0, %.peel.next.i.i.i ]
  %.lcssa36.i.i.i = phi ptr [ %i.ig, %.lr.ph.i.i.i ], [ %i.il, %.peel.next.i.i.i ]
  %.lcssa34.i.i.i = phi i64 [ %i.ii, %.lr.ph.i.i.i ], [ %i.in, %.peel.next.i.i.i ]
  %.lcssa.i.i.i = phi i64 [ %i.ij, %.lr.ph.i.i.i ], [ %i.in, %.peel.next.i.i.i ] ; 2 uses
  %i.ip = load ptr, ptr %.lcssa36.i.i.i, align 8, !tbaa !95
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.lcssa38.i.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.if
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ir, ptr noundef nonnull align 1 dereferenceable(1) %i.iq, i64 %.lcssa.i.i.i, i1 false)
  %i.is = add i64 %.lcssa.i.i.i, %i.if            ; 2 uses
  store i64 %i.is, ptr %i.fg, align 8, !tbaa !41
  %.not31.i.i.i = icmp ult i64 %.sroa.9.1.i.i, %i.fc
  br i1 %.not31.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i

bb.bt:                                            ; preds = %bb.bq
  %gepdiff.i.i = sub nsw i64 %i.ie, %i.hn
  %4 = load <8 x i8>, ptr %i.dd, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 0, ptr %i.b, align 4, !tbaa !96
  %i.it = call ptr @ossl_qrl_enc_level_set_get(ptr noundef nonnull %i.dc, i32 noundef range(i32 0, 5) %.0.i97203, i32 noundef 1) #10 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %.not.i69.i.i = icmp eq ptr %i.it, null
  br i1 %.not.i69.i.i, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i, label %bb.bu, !prof !83

bb.bu:                                            ; preds = %bb.bt
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 88 ; 3 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !51
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 96
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !38
  %i.iy = call i64 @ossl_qrl_get_suite_max_pkt(i32 noundef %i.ix) #10
  %.not46.i.i.i = icmp ult i64 %i.iv, %i.iy
  br i1 %.not46.i.i.i, label %bb.bv, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 48
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !97 ; 7 uses
  %.not47.i.i.i = icmp eq ptr %i.ja, null
  br i1 %.not47.i.i.i, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i, label %bb.bw, !prof !83

bb.bw:                                            ; preds = %bb.bv
  %i.jb = call i32 @EVP_CIPHER_CTX_get_iv_length(ptr noundef nonnull %i.ja) #10 ; 2 uses
  %i.jc = icmp sgt i32 %i.jb, 7
  br i1 %i.jc, label %bb.bx, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i, !prof !98

bb.bx:                                            ; preds = %bb.bw
  %i.jd = getelementptr inbounds nuw i8, ptr %i.it, i64 106
  %i.je = zext nneg i32 %i.jb to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 2 %i.jd, i64 %i.je, i1 false)
  %invariant.gep.i.i.i = getelementptr i8, ptr %i.c, i64 %i.je
  %gep.7.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i, i64 -8 ; 2 uses
  %i.jf = load <8 x i8>, ptr %gep.7.i.i.i, align 1, !tbaa !99
  %5 = shufflevector <8 x i8> %4, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.jg = xor <8 x i8> %i.jf, %5
  store <8 x i8> %i.jg, ptr %gep.7.i.i.i, align 1, !tbaa !99
  %i.jh = call i32 @EVP_CipherInit_ex(ptr noundef nonnull %i.ja, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.c, i32 noundef 1) #10
  %.not48.i.i.i = icmp eq i32 %i.jh, 1
  br i1 %.not48.i.i.i, label %bb.by, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i

bb.by:                                            ; preds = %bb.bx
  %i.ji = trunc i64 %gepdiff.i.i to i32
  %i.jj = call i32 @EVP_CipherUpdate(ptr noundef nonnull %i.ja, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ho, i32 noundef %i.ji) #10
  %.not49.i.i.i = icmp eq i32 %i.jj, 1
  br i1 %.not49.i.i.i, label %.lr.ph.i.i70.i.i, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i

.lr.ph.i.i70.i.i:                                 ; preds = %bb.by, %bb.cb
  %.sroa.9.4.i.i = phi i64 [ %.sroa.9.5.i.i, %bb.cb ], [ 0, %bb.by ] ; 3 uses
  %.sroa.17.2.i.i = phi i64 [ %.lcssa34.i.i.i.i, %bb.cb ], [ 0, %bb.by ] ; 2 uses
  %i.jk = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %.sroa.9.4.i.i ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !85 ; 2 uses
  %i.jn = sub i64 %i.jm, %.sroa.17.2.i.i          ; 2 uses
  %.not26.peel.i.i.i.i = icmp eq i64 %i.jn, 0
  br i1 %.not26.peel.i.i.i.i, label %bb.bz, label %.loopexit.i.i.i

bb.bz:                                            ; preds = %.lr.ph.i.i70.i.i
  %i.jo = add nuw i64 %.sroa.9.4.i.i, 1           ; 2 uses
  %exitcond.peel.not.i.i.i.i = icmp eq i64 %i.jo, %i.fc
  br i1 %exitcond.peel.not.i.i.i.i, label %.loopexit60.i.i.i, label %.peel.next.i.i.i.i

.peel.next.i.i.i.i:                               ; preds = %bb.bz, %bb.ca
  %.sroa.9.6.i.i = phi i64 [ %i.js, %bb.ca ], [ %i.jo, %bb.bz ] ; 3 uses
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %.sroa.9.6.i.i ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !85 ; 3 uses
  %.not26.i.i.i.i = icmp eq i64 %i.jr, 0
  br i1 %.not26.i.i.i.i, label %bb.ca, label %.loopexit.i.i.i

bb.ca:                                            ; preds = %.peel.next.i.i.i.i
  %i.js = add i64 %.sroa.9.6.i.i, 1               ; 2 uses
  %exitcond.not.i.i71.i.i = icmp eq i64 %i.js, %i.fc
  br i1 %exitcond.not.i.i71.i.i, label %.loopexit60.i.i.i, label %.peel.next.i.i.i.i, !llvm.loop !69

.loopexit.i.i.i:                                  ; preds = %.peel.next.i.i.i.i, %.lr.ph.i.i70.i.i
  %.sroa.9.5.i.i = phi i64 [ %.sroa.9.4.i.i, %.lr.ph.i.i70.i.i ], [ %.sroa.9.6.i.i, %.peel.next.i.i.i.i ] ; 2 uses
  %.lcssa38.i.i.i.i = phi i64 [ %.sroa.17.2.i.i, %.lr.ph.i.i70.i.i ], [ 0, %.peel.next.i.i.i.i ]
  %.lcssa36.i.i.i.i = phi ptr [ %i.jk, %.lr.ph.i.i70.i.i ], [ %i.jp, %.peel.next.i.i.i.i ]
  %.lcssa34.i.i.i.i = phi i64 [ %i.jm, %.lr.ph.i.i70.i.i ], [ %i.jr, %.peel.next.i.i.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.jn, %.lr.ph.i.i70.i.i ], [ %i.jr, %.peel.next.i.i.i.i ] ; 2 uses
  %i.jt = load ptr, ptr %.lcssa36.i.i.i.i, align 8, !tbaa !95
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.lcssa38.i.i.i.i
  %i.jv = load i64, ptr %i.fg, align 8, !tbaa !41
  %i.jw = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.jv
  %i.jx = trunc i64 %.lcssa.i.i.i.i to i32
  %i.jy = call i32 @EVP_CipherUpdate(ptr noundef nonnull %i.ja, ptr noundef nonnull %i.jw, ptr noundef nonnull %i.a, ptr noundef %i.ju, i32 noundef %i.jx) #10
  %.not50.i.i.i = icmp eq i32 %i.jy, 1
  br i1 %.not50.i.i.i, label %bb.cb, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i

bb.cb:                                            ; preds = %.loopexit.i.i.i
  %i.jz = load i64, ptr %i.fg, align 8, !tbaa !41
  %i.ka = add i64 %i.jz, %.lcssa.i.i.i.i
  store i64 %i.ka, ptr %i.fg, align 8, !tbaa !41
  %.not31.i.i.i.i = icmp ult i64 %.sroa.9.5.i.i, %i.fc
  br i1 %.not31.i.i.i.i, label %.lr.ph.i.i70.i.i, label %.loopexit60.i.i.i

.loopexit60.i.i.i:                                ; preds = %bb.cb, %bb.bz, %bb.ca
  %i.kb = call i32 @EVP_CipherFinal_ex(ptr noundef nonnull %i.ja, ptr noundef null, ptr noundef nonnull %i.b) #10
  %.not51.i.i.i = icmp eq i32 %i.kb, 1
  br i1 %.not51.i.i.i, label %bb.cc, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i

bb.cc:                                            ; preds = %.loopexit60.i.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.it, i64 100 ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !100
  %i.ke = load i64, ptr %i.fg, align 8, !tbaa !41
  %i.kf = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.ke
  %i.kg = call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef nonnull %i.ja, i32 noundef 16, i32 noundef %i.kd, ptr noundef nonnull %i.kf) #10
  %.not52.i.i.i = icmp eq i32 %i.kg, 1
  br i1 %.not52.i.i.i, label %bb.cd, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.kh = load i32, ptr %i.kc, align 4, !tbaa !100
  %i.ki = zext i32 %i.kh to i64
  %i.kj = load i64, ptr %i.fg, align 8, !tbaa !41
  %i.kk = add i64 %i.kj, %i.ki
  store i64 %i.kk, ptr %i.fg, align 8, !tbaa !41
  %i.kl = call i32 @ossl_quic_hdr_protector_encrypt(ptr noundef nonnull %i.it, ptr noundef nonnull %3) #10
  %.not53.i.i.i = icmp eq i32 %i.kl, 0
  br i1 %.not53.i.i.i, label %qtx_encrypt_into_txe.exit.thread.i.i, label %qtx_encrypt_into_txe.exit.i.i

qtx_encrypt_into_txe.exit.thread.sink.split.i.i:  ; preds = %.loopexit.i.i.i, %bb.cc, %.loopexit60.i.i.i, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt
  %.sink151.i.i = phi i32 [ 502, %bb.bt ], [ 529, %bb.bw ], [ 539, %bb.bx ], [ 545, %bb.by ], [ 583, %bb.cc ], [ 576, %.loopexit60.i.i.i ], [ 511, %bb.bu ], [ 522, %bb.bv ], [ 561, %.loopexit.i.i.i ]
  %.sink.i.i = phi i32 [ 786691, %bb.bt ], [ 786691, %bb.bw ], [ 524294, %bb.bx ], [ 524294, %bb.by ], [ 524294, %bb.cc ], [ 524294, %.loopexit60.i.i.i ], [ 395, %bb.bu ], [ 786691, %bb.bv ], [ 524294, %.loopexit.i.i.i ]
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink151.i.i, ptr noundef nonnull @__func__.qtx_encrypt_into_txe) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef %.sink.i.i, ptr noundef null) #10
  br label %qtx_encrypt_into_txe.exit.thread.i.i

qtx_encrypt_into_txe.exit.thread.i.i:             ; preds = %qtx_encrypt_into_txe.exit.thread.sink.split.i.i, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %iovec_cur_init.exit.thread.i.i.jt4294967295

qtx_encrypt_into_txe.exit.i.i:                    ; preds = %bb.cd
  %i.km = load i64, ptr %i.iu, align 8, !tbaa !51
  %i.kn = add i64 %i.km, 1
  store i64 %i.kn, ptr %i.iu, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.loopexit.i

iovec_cur_init.exit.thread.i.i.jt4294967295:      ; preds = %bb.bd, %ossl_qtx_calculate_ciphertext_payload_len.exit.i.i, %iovec_cur_init.exit.i.i, %qtx_encrypt_into_txe.exit.thread.i.i, %bb.bj, %qtx_write_hdr.exit.thread.i.i
  store i64 %i.fh, ptr %i.fg, align 8, !tbaa !41
  br label %.loopexit

.loopexit.i:                                      ; preds = %.loopexit.i.i, %bb.br, %bb.bs, %qtx_encrypt_into_txe.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.ko = load ptr, ptr %i.dh, align 8, !tbaa !31 ; 2 uses
  %i.kp = icmp eq ptr %i.ko, null
  br i1 %i.kp, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %.loopexit.i
  %i.kq = load ptr, ptr %i.di, align 8, !tbaa !32
  %i.kr = call ptr %i.ko(ptr noundef %i.kq) #10, !inline_history !70
  br label %bb.cg

.loopexit:                                        ; preds = %bb.az, %iovec_cur_init.exit.thread.i.i.jt4294967295
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.ks = load ptr, ptr %i.dk, align 8, !tbaa !29 ; 2 uses
  %.not24.i.jt4294967295 = icmp eq ptr %i.ks, null
  br i1 %.not24.i.jt4294967295, label %qtx_mutate_write.exit.jt4294967295, label %bb.ch

bb.cf:                                            ; preds = %bb.ba, %bb.bh
  store i64 %i.fh, ptr %i.fg, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.kt = load ptr, ptr %i.dk, align 8, !tbaa !29 ; 2 uses
  %.not24.i.jt4294967294 = icmp eq ptr %i.kt, null
  br i1 %.not24.i.jt4294967294, label %qtx_mutate_write.exit.jt4294967294, label %bb.ci

bb.cg:                                            ; preds = %.loopexit.i, %bb.ce
  %.0.i25.i = phi ptr [ %i.kr, %bb.ce ], [ null, %.loopexit.i ]
  %i.ku = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.kv = load i64, ptr %i.dd, align 8, !tbaa !93
  %i.kw = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.kx = load i64, ptr %i.g, align 8, !tbaa !39
  %i.ky = load i64, ptr %i.dj, align 8, !tbaa !44
  call void @ossl_qlog_event_transport_packet_sent(ptr noundef %.0.i25.i, ptr noundef %i.ku, i64 noundef %i.kv, ptr noundef %i.kw, i64 noundef %i.kx, i64 noundef %i.ky) #10
  %i.kz = load ptr, ptr %i.dk, align 8, !tbaa !29 ; 2 uses
  %.not24.i.jt1 = icmp eq ptr %i.kz, null
  br i1 %.not24.i.jt1, label %qtx_mutate_write.exit.jt1, label %bb.cj

bb.ch:                                            ; preds = %.loopexit
  %i.la = load ptr, ptr %i.db, align 8, !tbaa !30
  call void %i.ks(ptr noundef %i.la) #10, !inline_history !65
  br label %qtx_mutate_write.exit.jt4294967295

bb.ci:                                            ; preds = %bb.cf
  %i.lb = load ptr, ptr %i.db, align 8, !tbaa !30
  call void %i.kt(ptr noundef %i.lb) #10, !inline_history !65
  br label %qtx_mutate_write.exit.jt4294967294

bb.cj:                                            ; preds = %bb.cg
  %i.lc = load ptr, ptr %i.db, align 8, !tbaa !30
  call void %i.kz(ptr noundef %i.lc) #10, !inline_history !65
  br label %qtx_mutate_write.exit.jt1

qtx_mutate_write.exit.jt4294967295:               ; preds = %bb.ch, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %ossl_qtx_finish_dgram.exit92

qtx_mutate_write.exit.jt4294967294:               ; preds = %bb.ci, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br i1 %.1, label %ossl_qtx_finish_dgram.exit92, label %bb.ck

qtx_mutate_write.exit.jt1:                        ; preds = %bb.cj, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  %i.ld = load i64, ptr %i.cv, align 8, !tbaa !46
  %i.le = add i64 %i.ld, 1
  store i64 %i.le, ptr %i.cv, align 8, !tbaa !46
  %i.lf = load ptr, ptr %1, align 8, !tbaa !75
  %i.lg = load i32, ptr %i.lf, align 8            ; 2 uses
  %i.lh = and i32 %i.lg, 255
  %i.li = and i32 %i.lg, 253
  %switch.selectcmp.i.i.not.i = icmp eq i32 %i.li, 4
  %i.lj = icmp eq i32 %i.lh, 5
  %.not116.not = or i1 %i.lj, %switch.selectcmp.i.i.not.i
  %.not62117 = icmp eq i32 %i.j, 0
  %.not62 = select i1 %.not116.not, i1 true, i1 %.not62117
  br i1 %.not62, label %bb.cu, label %ossl_qtx_finish_dgram.exit92

bb.ck:                                            ; preds = %qtx_mutate_write.exit.jt4294967294
  %i.lk = load ptr, ptr %i.cp, align 8, !tbaa !27 ; 12 uses
  %i.ll = icmp eq ptr %i.lk, null
  br i1 %i.ll, label %ossl_qtx_finish_dgram.exit85.backedge, label %bb.cl

ossl_qtx_finish_dgram.exit85.backedge:            ; preds = %bb.ck, %ossl_list_txe_insert_tail.exit.i81
  br label %ossl_qtx_finish_dgram.exit85
end_hunk_0
