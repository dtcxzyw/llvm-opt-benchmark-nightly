Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic_record_tx?download=true
inline.NumInlined: 60
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ossl_qtx_write_pkt:bb.a
  %n.vec = sub i64 %i.fm, %i.gi                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.gn, %vector.body ]
  %vec.phi284 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.go, %vector.body ]
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %index
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %index
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %wide.vec = load <4 x i64>, ptr %i.gl, align 8, !tbaa !84
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec285 = load <4 x i64>, ptr %i.gm, align 8, !tbaa !84
  %strided.vec286 = shufflevector <4 x i64> %wide.vec285, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.gn = add <2 x i64> %strided.vec, %vec.phi    ; 2 uses
  %i.go = add <2 x i64> %strided.vec286, %vec.phi284 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gp = icmp eq i64 %index.next, %n.vec
  br i1 %i.gp, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.go, %i.gn
  %i.gq = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.lr.ph.i.i.i.i.preheader298

.lr.ph.i.i.i.i.preheader298:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %i.gq, %middle.block ]
  %.067.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader298, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi i64 [ %i.gu, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader298 ]
  %.067.i.i.i.i = phi i64 [ %i.gv, %.lr.ph.i.i.i.i ], [ %.067.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader298 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %.067.i.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !84
  %i.gu = add i64 %i.gt, %.08.i.i.i.i             ; 4 uses
  %i.gv = add nuw i64 %.067.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.gv, %i.fm
  br i1 %exitcond.not.i.i.i.i, label %iovec_cur_init.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !65

iovec_cur_init.exit.i.i:                          ; preds = %.lr.ph.i.i.i.i
  %i.gw = icmp eq i64 %i.gu, 0
  br i1 %i.gw, label %iovec_cur_init.exit.thread.i.i.jt4294967295, label %bb.bk

bb.bk:                                            ; preds = %iovec_cur_init.exit.i.i
  br i1 %switch.selectcmp.i.not.i.i, label %ossl_qtx_calculate_ciphertext_payload_len.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gx = call ptr @ossl_qrl_enc_level_set_get(ptr noundef nonnull %i.dc, i32 noundef range(i32 0, 5) %.0.i100209, i32 noundef 1) #10 ; 2 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %ossl_qtx_calculate_ciphertext_payload_len.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 96
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !36
  %i.hb = call i32 @ossl_qrl_get_suite_cipher_tag_len(i32 noundef %i.ha) #10
  %i.hc = zext i32 %i.hb to i64
  %i.hd = add i64 %i.gu, %i.hc
  br label %ossl_qtx_calculate_ciphertext_payload_len.exit.i.i

ossl_qtx_calculate_ciphertext_payload_len.exit.i.i: ; preds = %bb.bm, %bb.bl, %bb.bk
  %.082.i.i = phi i64 [ 0, %bb.bl ], [ %i.hd, %bb.bm ], [ %i.gu, %bb.bk ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.fl, i64 80
  store ptr null, ptr %i.he, align 8, !tbaa !89
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fl, i64 72
  store i64 %.082.i.i, ptr %i.hf, align 8, !tbaa !90
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.hh = load i8, ptr %i.hg, align 8, !tbaa !91
  %i.hi = zext i8 %i.hh to i64
  %i.hj = call i64 @ossl_quic_wire_get_encoded_pkt_hdr_len(i64 noundef %i.hi, ptr noundef nonnull %i.fl) #10 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %iovec_cur_init.exit.thread.i.i.jt4294967295, label %bb.bn

bb.bn:                                            ; preds = %ossl_qtx_calculate_ciphertext_payload_len.exit.i.i
  %i.hl = add i64 %i.hj, %.082.i.i
  %i.hm = icmp ugt i64 %i.hl, %i.fu
  br i1 %i.hm, label %bb.cl, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i77, i64 24
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.hp = load i32, ptr %i.fl, align 8            ; 2 uses
  %i.hq = and i32 %i.hp, 253
  %switch.selectcmp.i.i.not.i.i = icmp eq i32 %i.hq, 4
  br i1 %switch.selectcmp.i.i.not.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hr = load i64, ptr %i.dd, align 8, !tbaa !92
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fl, i64 50
  %i.ht = lshr i32 %i.hp, 10
  %i.hu = and i32 %i.ht, 15
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = call i32 @ossl_quic_wire_encode_pkt_hdr_pn(i64 noundef %i.hr, ptr noundef nonnull %i.hs, i64 noundef %i.hv) #10
  %.not65.i.i = icmp eq i32 %i.hw, 0
  br i1 %.not65.i.i, label %iovec_cur_init.exit.thread.i.i.jt4294967295, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.i77, i64 256 ; 4 uses
  %i.hy = load i64, ptr %i.fq, align 8, !tbaa !39 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hy ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i64 0, ptr %i.d, align 8, !tbaa !37
  %i.ia = load i64, ptr %i.hn, align 8, !tbaa !76
  %i.ib = sub i64 %i.ia, %i.hy
  %i.ic = call i32 @WPACKET_init_static_len(ptr noundef nonnull %2, ptr noundef nonnull %i.hz, i64 noundef %i.ib, i64 noundef 0) #10
  %.not.i.i.i80 = icmp eq i32 %i.ic, 0
  br i1 %.not.i.i.i80, label %qtx_write_hdr.exit.thread.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.id = load i8, ptr %i.ho, align 8, !tbaa !91
  %i.ie = zext i8 %i.id to i64
  %i.if = call i32 @ossl_quic_wire_encode_pkt_hdr(ptr noundef nonnull %2, i64 noundef %i.ie, ptr noundef nonnull %i.fl, ptr noundef nonnull %3) #10
  %.not15.i.i.i = icmp eq i32 %i.if, 0
  br i1 %.not15.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ig = call i32 @WPACKET_get_total_written(ptr noundef nonnull %2, ptr noundef nonnull %i.d) #10
  %.not16.i.i.i = icmp eq i32 %i.ig, 0
  br i1 %.not16.i.i.i, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.ih = call i32 @WPACKET_finish(ptr noundef nonnull %2) #10 ; 0 uses
  br label %qtx_write_hdr.exit.thread.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.ii = call i32 @WPACKET_finish(ptr noundef nonnull %2) #10 ; 0 uses
  %i.ij = load ptr, ptr %i.de, align 8, !tbaa !46 ; 2 uses
  %.not17.i.i.i = icmp eq ptr %i.ij, null
  br i1 %.not17.i.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ik = load i64, ptr %i.d, align 8, !tbaa !37
  %i.il = load ptr, ptr %i.df, align 8, !tbaa !47
  %i.im = load ptr, ptr %i.dg, align 8, !tbaa !48
  call void %i.ij(i32 noundef 1, i32 noundef 1, i32 noundef 513, ptr noundef nonnull %i.hz, i64 noundef %i.ik, ptr noundef %i.il, ptr noundef %i.im) #10, !inline_history !66
  br label %bb.bw

qtx_write_hdr.exit.thread.i.i:                    ; preds = %bb.bt, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %iovec_cur_init.exit.thread.i.i.jt4294967295

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.in = load i64, ptr %i.d, align 8, !tbaa !37
  %i.io = load i64, ptr %i.fq, align 8, !tbaa !39
  %i.ip = add i64 %i.io, %i.in                    ; 3 uses
  store i64 %i.ip, ptr %i.fq, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br i1 %switch.selectcmp.i.not.i.i, label %.lr.ph.i.i.i, label %bb.bz

.lr.ph.i.i.i:                                     ; preds = %bb.bw, %.loopexit.i.i
  %i.iq = phi i64 [ %i.jd, %.loopexit.i.i ], [ %i.ip, %bb.bw ] ; 2 uses
  %.sroa.17.0108.i.i = phi i64 [ %.lcssa34.i.i.i, %.loopexit.i.i ], [ 0, %bb.bw ] ; 2 uses
  %.sroa.9.0107.i.i = phi i64 [ %.sroa.9.1.i.i, %.loopexit.i.i ], [ 0, %bb.bw ] ; 3 uses
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %.sroa.9.0107.i.i ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load i64, ptr %i.is, align 8, !tbaa !84 ; 2 uses
  %i.iu = sub i64 %i.it, %.sroa.17.0108.i.i       ; 2 uses
  %.not26.peel.i.i.i = icmp eq i64 %i.iu, 0
  br i1 %.not26.peel.i.i.i, label %bb.bx, label %.loopexit.i.i

bb.bx:                                            ; preds = %.lr.ph.i.i.i
  %i.iv = add nuw i64 %.sroa.9.0107.i.i, 1        ; 2 uses
  %exitcond.peel.not.i.i.i = icmp eq i64 %i.iv, %i.fm
  br i1 %exitcond.peel.not.i.i.i, label %.loopexit.i, label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %bb.bx, %bb.by
  %.sroa.9.2.i.i = phi i64 [ %i.iz, %bb.by ], [ %i.iv, %bb.bx ] ; 3 uses
  %i.iw = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %.sroa.9.2.i.i ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !84 ; 3 uses
  %.not26.i.i.i = icmp eq i64 %i.iy, 0
  br i1 %.not26.i.i.i, label %bb.by, label %.loopexit.i.i

bb.by:                                            ; preds = %.peel.next.i.i.i
  %i.iz = add nuw i64 %.sroa.9.2.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.iz, %i.fm
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %.peel.next.i.i.i, !llvm.loop !67

.loopexit.i.i:                                    ; preds = %.peel.next.i.i.i, %.lr.ph.i.i.i
  %.sroa.9.1.i.i = phi i64 [ %.sroa.9.0107.i.i, %.lr.ph.i.i.i ], [ %.sroa.9.2.i.i, %.peel.next.i.i.i ] ; 2 uses
  %.lcssa38.i.i.i = phi i64 [ %.sroa.17.0108.i.i, %.lr.ph.i.i.i ], [ 0, %.peel.next.i.i.i ]
  %.lcssa36.i.i.i = phi ptr [ %i.ir, %.lr.ph.i.i.i ], [ %i.iw, %.peel.next.i.i.i ]
  %.lcssa34.i.i.i = phi i64 [ %i.it, %.lr.ph.i.i.i ], [ %i.iy, %.peel.next.i.i.i ]
  %.lcssa.i.i.i = phi i64 [ %i.iu, %.lr.ph.i.i.i ], [ %i.iy, %.peel.next.i.i.i ] ; 2 uses
  %i.ja = load ptr, ptr %.lcssa36.i.i.i, align 8, !tbaa !94
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.lcssa38.i.i.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.iq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jc, ptr noundef nonnull align 1 dereferenceable(1) %i.jb, i64 %.lcssa.i.i.i, i1 false)
  %i.jd = add i64 %.lcssa.i.i.i, %i.iq            ; 2 uses
  store i64 %i.jd, ptr %i.fq, align 8, !tbaa !39
  %.not31.i.i.i = icmp ult i64 %.sroa.9.1.i.i, %i.fm
  br i1 %.not31.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i

bb.bz:                                            ; preds = %bb.bw
  %gepdiff.i.i = sub nsw i64 %i.ip, %i.hy
  %4 = load <8 x i8>, ptr %i.dd, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 0, ptr %i.b, align 4, !tbaa !95
  %i.je = call ptr @ossl_qrl_enc_level_set_get(ptr noundef nonnull %i.dc, i32 noundef range(i32 0, 5) %.0.i100209, i32 noundef 1) #10 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %.not.i69.i.i = icmp eq ptr %i.je, null
  br i1 %.not.i69.i.i, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i, label %bb.ca, !prof !82

bb.ca:                                            ; preds = %bb.bz
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 88 ; 3 uses
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !49
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 96
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !36
  %i.jj = call i64 @ossl_qrl_get_suite_max_pkt(i32 noundef %i.ji) #10
  %.not46.i.i.i = icmp ult i64 %i.jg, %i.jj
  br i1 %.not46.i.i.i, label %bb.cb, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.jk = getelementptr inbounds nuw i8, ptr %i.je, i64 48
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !96 ; 7 uses
  %.not47.i.i.i = icmp eq ptr %i.jl, null
  br i1 %.not47.i.i.i, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i, label %bb.cc, !prof !82

bb.cc:                                            ; preds = %bb.cb
  %i.jm = call i32 @EVP_CIPHER_CTX_get_iv_length(ptr noundef nonnull %i.jl) #10 ; 2 uses
  %i.jn = icmp sgt i32 %i.jm, 7
  br i1 %i.jn, label %bb.cd, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i, !prof !77

bb.cd:                                            ; preds = %bb.cc
  %i.jo = getelementptr inbounds nuw i8, ptr %i.je, i64 106
  %i.jp = zext nneg i32 %i.jm to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 2 %i.jo, i64 %i.jp, i1 false)
  %invariant.gep.i.i.i = getelementptr i8, ptr %i.c, i64 %i.jp
  %gep.7.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i, i64 -8 ; 2 uses
  %i.jq = load <8 x i8>, ptr %gep.7.i.i.i, align 1, !tbaa !97
  %5 = shufflevector <8 x i8> %4, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.jr = xor <8 x i8> %i.jq, %5
  store <8 x i8> %i.jr, ptr %gep.7.i.i.i, align 1, !tbaa !97
  %i.js = call i32 @EVP_CipherInit_ex(ptr noundef nonnull %i.jl, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.c, i32 noundef 1) #10
  %.not48.i.i.i = icmp eq i32 %i.js, 1
  br i1 %.not48.i.i.i, label %bb.ce, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.jt = trunc i64 %gepdiff.i.i to i32
  %i.ju = call i32 @EVP_CipherUpdate(ptr noundef nonnull %i.jl, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hz, i32 noundef %i.jt) #10
  %.not49.i.i.i = icmp eq i32 %i.ju, 1
  br i1 %.not49.i.i.i, label %.lr.ph.i.i70.i.i, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i

.lr.ph.i.i70.i.i:                                 ; preds = %bb.ce, %bb.ch
  %.sroa.9.4.i.i = phi i64 [ %.sroa.9.5.i.i, %bb.ch ], [ 0, %bb.ce ] ; 3 uses
  %.sroa.17.2.i.i = phi i64 [ %.lcssa34.i.i.i.i, %bb.ch ], [ 0, %bb.ce ] ; 2 uses
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %.sroa.9.4.i.i ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !84 ; 2 uses
  %i.jy = sub i64 %i.jx, %.sroa.17.2.i.i          ; 2 uses
  %.not26.peel.i.i.i.i = icmp eq i64 %i.jy, 0
  br i1 %.not26.peel.i.i.i.i, label %bb.cf, label %.loopexit.i.i.i

bb.cf:                                            ; preds = %.lr.ph.i.i70.i.i
  %i.jz = add nuw i64 %.sroa.9.4.i.i, 1           ; 2 uses
  %exitcond.peel.not.i.i.i.i = icmp eq i64 %i.jz, %i.fm
  br i1 %exitcond.peel.not.i.i.i.i, label %.loopexit60.i.i.i, label %.peel.next.i.i.i.i

.peel.next.i.i.i.i:                               ; preds = %bb.cf, %bb.cg
  %.sroa.9.6.i.i = phi i64 [ %i.kd, %bb.cg ], [ %i.jz, %bb.cf ] ; 3 uses
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %.sroa.9.6.i.i ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !84 ; 3 uses
  %.not26.i.i.i.i = icmp eq i64 %i.kc, 0
  br i1 %.not26.i.i.i.i, label %bb.cg, label %.loopexit.i.i.i

bb.cg:                                            ; preds = %.peel.next.i.i.i.i
  %i.kd = add nuw i64 %.sroa.9.6.i.i, 1           ; 2 uses
  %exitcond.not.i.i71.i.i = icmp eq i64 %i.kd, %i.fm
  br i1 %exitcond.not.i.i71.i.i, label %.loopexit60.i.i.i, label %.peel.next.i.i.i.i, !llvm.loop !67

.loopexit.i.i.i:                                  ; preds = %.peel.next.i.i.i.i, %.lr.ph.i.i70.i.i
  %.sroa.9.5.i.i = phi i64 [ %.sroa.9.4.i.i, %.lr.ph.i.i70.i.i ], [ %.sroa.9.6.i.i, %.peel.next.i.i.i.i ] ; 2 uses
  %.lcssa38.i.i.i.i = phi i64 [ %.sroa.17.2.i.i, %.lr.ph.i.i70.i.i ], [ 0, %.peel.next.i.i.i.i ]
  %.lcssa36.i.i.i.i = phi ptr [ %i.jv, %.lr.ph.i.i70.i.i ], [ %i.ka, %.peel.next.i.i.i.i ]
  %.lcssa34.i.i.i.i = phi i64 [ %i.jx, %.lr.ph.i.i70.i.i ], [ %i.kc, %.peel.next.i.i.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.jy, %.lr.ph.i.i70.i.i ], [ %i.kc, %.peel.next.i.i.i.i ] ; 2 uses
  %i.ke = load ptr, ptr %.lcssa36.i.i.i.i, align 8, !tbaa !94
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 %.lcssa38.i.i.i.i
  %i.kg = load i64, ptr %i.fq, align 8, !tbaa !39
  %i.kh = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.kg
  %i.ki = trunc i64 %.lcssa.i.i.i.i to i32
  %i.kj = call i32 @EVP_CipherUpdate(ptr noundef nonnull %i.jl, ptr noundef nonnull %i.kh, ptr noundef nonnull %i.a, ptr noundef %i.kf, i32 noundef %i.ki) #10
  %.not50.i.i.i = icmp eq i32 %i.kj, 1
  br i1 %.not50.i.i.i, label %bb.ch, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i

bb.ch:                                            ; preds = %.loopexit.i.i.i
  %i.kk = load i64, ptr %i.fq, align 8, !tbaa !39
  %i.kl = add i64 %i.kk, %.lcssa.i.i.i.i
  store i64 %i.kl, ptr %i.fq, align 8, !tbaa !39
  %.not31.i.i.i.i = icmp ult i64 %.sroa.9.5.i.i, %i.fm
  br i1 %.not31.i.i.i.i, label %.lr.ph.i.i70.i.i, label %.loopexit60.i.i.i

.loopexit60.i.i.i:                                ; preds = %bb.ch, %bb.cf, %bb.cg
  %i.km = call i32 @EVP_CipherFinal_ex(ptr noundef nonnull %i.jl, ptr noundef null, ptr noundef nonnull %i.b) #10
  %.not51.i.i.i = icmp eq i32 %i.km, 1
  br i1 %.not51.i.i.i, label %bb.ci, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i

bb.ci:                                            ; preds = %.loopexit60.i.i.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.je, i64 100 ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !98
  %i.kp = load i64, ptr %i.fq, align 8, !tbaa !39
  %i.kq = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.kp
  %i.kr = call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef nonnull %i.jl, i32 noundef 16, i32 noundef %i.ko, ptr noundef nonnull %i.kq) #10
  %.not52.i.i.i = icmp eq i32 %i.kr, 1
  br i1 %.not52.i.i.i, label %bb.cj, label %qtx_encrypt_into_txe.exit.thread.sink.split.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.ks = load i32, ptr %i.kn, align 4, !tbaa !98
  %i.kt = zext i32 %i.ks to i64
  %i.ku = load i64, ptr %i.fq, align 8, !tbaa !39
  %i.kv = add i64 %i.ku, %i.kt
  store i64 %i.kv, ptr %i.fq, align 8, !tbaa !39
  %i.kw = call i32 @ossl_quic_hdr_protector_encrypt(ptr noundef nonnull %i.je, ptr noundef nonnull %3) #10
  %.not53.i.i.i = icmp eq i32 %i.kw, 0
  br i1 %.not53.i.i.i, label %qtx_encrypt_into_txe.exit.thread.i.i, label %qtx_encrypt_into_txe.exit.i.i

qtx_encrypt_into_txe.exit.thread.sink.split.i.i:  ; preds = %.loopexit.i.i.i, %bb.ci, %.loopexit60.i.i.i, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz
  %.sink151.i.i = phi i32 [ 495, %bb.bz ], [ 522, %bb.cc ], [ 532, %bb.cd ], [ 538, %bb.ce ], [ 576, %bb.ci ], [ 569, %.loopexit60.i.i.i ], [ 504, %bb.ca ], [ 515, %bb.cb ], [ 554, %.loopexit.i.i.i ]
  %.sink.i.i = phi i32 [ 786691, %bb.bz ], [ 786691, %bb.cc ], [ 524294, %bb.cd ], [ 524294, %bb.ce ], [ 524294, %bb.ci ], [ 524294, %.loopexit60.i.i.i ], [ 395, %bb.ca ], [ 786691, %bb.cb ], [ 524294, %.loopexit.i.i.i ]
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink151.i.i, ptr noundef nonnull @__func__.qtx_encrypt_into_txe) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef %.sink.i.i, ptr noundef null) #10
  br label %qtx_encrypt_into_txe.exit.thread.i.i

qtx_encrypt_into_txe.exit.thread.i.i:             ; preds = %qtx_encrypt_into_txe.exit.thread.sink.split.i.i, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %iovec_cur_init.exit.thread.i.i.jt4294967295

qtx_encrypt_into_txe.exit.i.i:                    ; preds = %bb.cj
  %i.kx = load i64, ptr %i.jf, align 8, !tbaa !49
  %i.ky = add i64 %i.kx, 1
  store i64 %i.ky, ptr %i.jf, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.loopexit.i

iovec_cur_init.exit.thread.i.i.jt4294967295:      ; preds = %bb.bj, %ossl_qtx_calculate_ciphertext_payload_len.exit.i.i, %iovec_cur_init.exit.i.i, %qtx_encrypt_into_txe.exit.thread.i.i, %bb.bp, %qtx_write_hdr.exit.thread.i.i
  store i64 %i.fr, ptr %i.fq, align 8, !tbaa !39
  br label %.loopexit

.loopexit.i:                                      ; preds = %.loopexit.i.i, %bb.bx, %bb.by, %qtx_encrypt_into_txe.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.kz = load ptr, ptr %i.dh, align 8, !tbaa !29 ; 2 uses
  %i.la = icmp eq ptr %i.kz, null
  br i1 %i.la, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %.loopexit.i
  %i.lb = load ptr, ptr %i.di, align 8, !tbaa !30
  %i.lc = call ptr %i.kz(ptr noundef %i.lb) #10, !inline_history !68
  br label %bb.cm

.loopexit:                                        ; preds = %bb.bf, %iovec_cur_init.exit.thread.i.i.jt4294967295
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.ld = load ptr, ptr %i.dk, align 8, !tbaa !27 ; 2 uses
  %.not24.i.jt4294967295 = icmp eq ptr %i.ld, null
  br i1 %.not24.i.jt4294967295, label %qtx_mutate_write.exit.jt4294967295, label %bb.cn

bb.cl:                                            ; preds = %bb.bg, %bb.bn
  store i64 %i.fr, ptr %i.fq, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.le = load ptr, ptr %i.dk, align 8, !tbaa !27 ; 2 uses
  %.not24.i.jt4294967294 = icmp eq ptr %i.le, null
  br i1 %.not24.i.jt4294967294, label %qtx_mutate_write.exit.jt4294967294, label %bb.co

bb.cm:                                            ; preds = %.loopexit.i, %bb.ck
  %.0.i25.i = phi ptr [ %i.lc, %bb.ck ], [ null, %.loopexit.i ]
  %i.lf = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.lg = load i64, ptr %i.dd, align 8, !tbaa !92
  %i.lh = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.li = load i64, ptr %i.g, align 8, !tbaa !37
  %i.lj = load i64, ptr %i.dj, align 8, !tbaa !42
  call void @ossl_qlog_event_transport_packet_sent(ptr noundef %.0.i25.i, ptr noundef %i.lf, i64 noundef %i.lg, ptr noundef %i.lh, i64 noundef %i.li, i64 noundef %i.lj) #10
  %i.lk = load ptr, ptr %i.dk, align 8, !tbaa !27 ; 2 uses
  %.not24.i.jt1 = icmp eq ptr %i.lk, null
  br i1 %.not24.i.jt1, label %qtx_mutate_write.exit.jt1, label %bb.cp

bb.cn:                                            ; preds = %.loopexit
  %i.ll = load ptr, ptr %i.db, align 8, !tbaa !28
  call void %i.ld(ptr noundef %i.ll) #10, !inline_history !63
  br label %qtx_mutate_write.exit.jt4294967295

bb.co:                                            ; preds = %bb.cl
  %i.lm = load ptr, ptr %i.db, align 8, !tbaa !28
  call void %i.le(ptr noundef %i.lm) #10, !inline_history !63
  br label %qtx_mutate_write.exit.jt4294967294

bb.cp:                                            ; preds = %bb.cm
  %i.ln = load ptr, ptr %i.db, align 8, !tbaa !28
  call void %i.lk(ptr noundef %i.ln) #10, !inline_history !63
  br label %qtx_mutate_write.exit.jt1

qtx_mutate_write.exit.jt4294967295:               ; preds = %bb.cn, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %ossl_qtx_finish_dgram.exit95

qtx_mutate_write.exit.jt4294967294:               ; preds = %bb.co, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br i1 %.1, label %ossl_qtx_finish_dgram.exit95, label %bb.cq

qtx_mutate_write.exit.jt1:                        ; preds = %bb.cp, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  %i.lo = load i64, ptr %i.cv, align 8, !tbaa !44
  %i.lp = add i64 %i.lo, 1
  store i64 %i.lp, ptr %i.cv, align 8, !tbaa !44
  %i.lq = load ptr, ptr %1, align 8, !tbaa !73
  %i.lr = load i32, ptr %i.lq, align 8            ; 2 uses
  %i.ls = and i32 %i.lr, 255
  %i.lt = and i32 %i.lr, 253
  %switch.selectcmp.i.i.not.i = icmp eq i32 %i.lt, 4
  %i.lu = icmp eq i32 %i.ls, 5
  %.not120.not = or i1 %i.lu, %switch.selectcmp.i.i.not.i
  %.not63121 = icmp eq i32 %i.j, 0
  %.not63 = select i1 %.not120.not, i1 true, i1 %.not63121
  br i1 %.not63, label %bb.da, label %ossl_qtx_finish_dgram.exit95

bb.cq:                                            ; preds = %qtx_mutate_write.exit.jt4294967294
  %i.lv = load ptr, ptr %i.cp, align 8, !tbaa !25 ; 12 uses
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %ossl_qtx_finish_dgram.exit88.backedge, label %bb.cr

ossl_qtx_finish_dgram.exit88.backedge:            ; preds = %bb.cq, %ossl_list_txe_insert_tail.exit.i84
  br label %ossl_qtx_finish_dgram.exit88
end_hunk_0
begin_hunk_1_@ossl_qtx_set_mdpl:bb.a
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 872
  store i64 %1, ptr %i.b, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ossl_qtx_get_mdpl(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ossl_qtx_get_queue_len_datagrams(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.b = load i64, ptr %i.a, align 8, !tbaa !102
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ossl_qtx_get_queue_len_bytes(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.b = load i64, ptr %i.a, align 8, !tbaa !103
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @ossl_qtx_get_cur_dgram_len_bytes(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ossl_qtx_get_unflushed_pkt_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define i32 @ossl_qtx_trigger_key_update(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call i32 @ossl_qrl_enc_level_set_key_update(ptr noundef nonnull %i.a, i32 noundef 3) #10
  ret i32 %i.b
}

declare i32 @ossl_qrl_enc_level_set_key_update(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i64 @ossl_qtx_get_cur_epoch_pkt_count(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call ptr @ossl_qrl_enc_level_set_get(ptr noundef nonnull %i.a, i32 noundef %1, i32 noundef 1) #10 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.e = load i64, ptr %i.d, align 8, !tbaa !49
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ossl_qtx_get_max_epoch_pkt_count(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call ptr @ossl_qrl_enc_level_set_get(ptr noundef nonnull %i.a, i32 noundef %1, i32 noundef 1) #10 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !36
  %i.f = tail call i64 @ossl_qrl_get_suite_max_pkt(i32 noundef %i.e) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

declare i64 @ossl_qrl_get_suite_max_pkt(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ossl_qtx_set_msg_callback(ptr nofree noundef writeonly captures(none) initializes((1000, 1008), (1016, 1024)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store ptr %1, ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store ptr %2, ptr %i.b, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ossl_qtx_set_msg_callback_arg(ptr nofree noundef writeonly captures(none) initializes((1008, 1016)) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store ptr %1, ptr %i.a, align 8, !tbaa !48
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @ossl_qtx_get_key_epoch(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call ptr @ossl_qrl_enc_level_set_get(ptr noundef nonnull %i.a, i32 noundef 3, i32 noundef 1) #10 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

declare i32 @BIO_ADDR_family(ptr noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare ptr @CRYPTO_realloc(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ossl_qlog_event_transport_packet_sent(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @ossl_quic_wire_get_encoded_pkt_hdr_len(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ossl_quic_wire_encode_pkt_hdr_pn(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @WPACKET_init_static_len(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ossl_quic_wire_encode_pkt_hdr(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WPACKET_get_total_written(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WPACKET_finish(ptr noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_iv_length(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CipherInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CipherUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CipherFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_ctrl(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ossl_quic_hdr_protector_encrypt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS15ossl_lib_ctx_st", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"p1 _ZTS6bio_st", !8, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!"ossl_qrl_enc_level_set_st", !4, i64 0}
!14 = !{!"p1 _ZTS6txe_st", !8, i64 0}
!15 = !{!"ossl_list_st_txe", !14, i64 0, !14, i64 8, !12, i64 16}
!16 = !{!"p1 _ZTS6ssl_st", !8, i64 0}
!17 = !{!"ossl_qtx_st", !9, i64 0, !10, i64 8, !13, i64 16, !11, i64 848, !8, i64 856, !8, i64 864, !12, i64 872, !15, i64 880, !15, i64 904, !12, i64 928, !12, i64 936, !14, i64 944, !12, i64 952, !12, i64 960, !12, i64 968, !8, i64 976, !8, i64 984, !8, i64 992, !8, i64 1000, !8, i64 1008, !16, i64 1016}
!18 = !{!17, !11, i64 848}
!19 = !{!17, !12, i64 872}
!20 = !{!15, !14, i64 0}
!21 = !{!"", !14, i64 0, !14, i64 8}
!22 = !{!"txe_st", !21, i64 0, !12, i64 16, !12, i64 24, !4, i64 32, !4, i64 144}
!23 = !{!22, !14, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!17, !14, i64 944}
!26 = !{!17, !8, i64 976}
!27 = !{!17, !8, i64 984}
!28 = !{!17, !8, i64 992}
!29 = !{!17, !8, i64 856}
!30 = !{!17, !8, i64 864}
!31 = !{!"p1 _ZTS17evp_cipher_ctx_st", !8, i64 0}
!32 = !{!"p1 _ZTS13evp_cipher_st", !8, i64 0}
!33 = !{!"quic_hdr_protector_st", !9, i64 0, !10, i64 8, !31, i64 16, !32, i64 24, !5, i64 32}
!34 = !{!"p1 _ZTS9evp_md_st", !8, i64 0}
!35 = !{!"ossl_qrl_enc_level_st", !33, i64 0, !34, i64 40, !4, i64 48, !9, i64 64, !10, i64 72, !12, i64 80, !12, i64 88, !5, i64 96, !5, i64 100, !4, i64 104, !4, i64 105, !4, i64 106, !4, i64 138}
!36 = !{!35, !5, i64 96}
!37 = !{!12, !12, i64 0}
!38 = !{!"p1 _ZTS11bio_addr_st", !8, i64 0}
!39 = !{!22, !12, i64 16}
!40 = !{!15, !14, i64 8}
!41 = !{!22, !14, i64 8}
!42 = !{!17, !12, i64 968}
!43 = !{!15, !12, i64 16}
!44 = !{!17, !12, i64 952}
!45 = !{!35, !12, i64 80}
!46 = !{!17, !8, i64 1000}
!47 = !{!17, !16, i64 1016}
!48 = !{!17, !8, i64 1008}
!49 = !{!35, !12, i64 88}
!50 = !{!"bio_msg_st", !8, i64 0, !12, i64 8, !38, i64 16, !38, i64 24, !12, i64 32}
!51 = !{!50, !8, i64 0}
!52 = !{!50, !12, i64 8}
!53 = !{!50, !12, i64 32}
!54 = !{!50, !38, i64 16}
!55 = !{!50, !38, i64 24}
!56 = !{!"ossl_qtx_args_st", !9, i64 0, !10, i64 8, !11, i64 16, !12, i64 24, !8, i64 32, !8, i64 40}
!57 = !{!56, !12, i64 24}
!58 = !{!8, !8, i64 0}
!59 = !{!56, !11, i64 16}
!60 = distinct !{!60, !24}
!61 = !{!17, !9, i64 0}
!62 = !{!17, !10, i64 8}
!63 = distinct !{null}
!64 = distinct !{!64, !24, !85, !86}
!65 = distinct !{!65, !24, !86, !85}
!66 = distinct !{null, null, null}
!67 = distinct !{!67, !93}
!68 = distinct !{null, null}
!69 = !{!"p1 _ZTS15quic_pkt_hdr_st", !8, i64 0}
!70 = !{!"p1 _ZTS17ossl_qtx_iovec_st", !8, i64 0}
!71 = !{!"ossl_qtx_pkt_st", !69, i64 0, !70, i64 8, !12, i64 16, !38, i64 24, !38, i64 32, !12, i64 40, !5, i64 48}
!72 = !{!71, !5, i64 48}
!73 = !{!71, !69, i64 0}
!74 = !{!71, !38, i64 24}
!75 = !{!71, !38, i64 32}
!76 = !{!22, !12, i64 24}
!77 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!78 = !{!71, !70, i64 8}
!79 = !{!71, !12, i64 16}
!80 = !{!69, !69, i64 0}
!81 = !{!70, !70, i64 0}
!82 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!83 = !{!"ossl_qtx_iovec_st", !10, i64 0, !12, i64 8}
!84 = !{!83, !12, i64 8}
!85 = !{!"llvm.loop.isvectorized", i32 1}
!86 = !{!"llvm.loop.unroll.runtime.disable"}
!87 = !{!"quic_conn_id_st", !4, i64 0, !4, i64 1}
!88 = !{!"quic_pkt_hdr_st", !5, i64 0, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 2, !5, i64 2, !5, i64 4, !87, i64 8, !87, i64 29, !4, i64 50, !10, i64 56, !12, i64 64, !12, i64 72, !10, i64 80}
!89 = !{!88, !10, i64 80}
!90 = !{!88, !12, i64 72}
!91 = !{!88, !4, i64 8}
!92 = !{!71, !12, i64 40}
!93 = !{!"llvm.loop.peeled.count", i32 1}
!94 = !{!83, !10, i64 0}
!95 = !{!5, !5, i64 0}
!96 = !{!31, !31, i64 0}
!97 = !{!4, !4, i64 0}
!98 = !{!35, !5, i64 100}
!99 = distinct !{!99, !24}
!100 = distinct !{!100, !24}
!101 = !{!14, !14, i64 0}
!102 = !{!17, !12, i64 928}
!103 = !{!17, !12, i64 936}
end_hunk_1
