Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/d1_both?download=true
inline.NumInlined: 628
inline.NumDeleted: 363
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4bssl11dtls1_flushEP6ssl_st:bb.a

._crit_edge62.i:                                  ; preds = %bb.n, %bb.m
  %i.fc = call i32 @CBB_flush(ptr noundef nonnull %9)
  %.not44.i = icmp eq i32 %i.fc, 0
  br i1 %.not44.i, label %bb.r, label %bb.s

.lr.ph61.i:                                       ; preds = %bb.m, %bb.n
  %.059.i = phi ptr [ %i.fb, %bb.n ], [ %8, %bb.m ] ; 3 uses
  %i.fd = load i64, ptr %.059.i, align 8, !tbaa !143
  %i.fe = lshr i64 %i.fd, 48
  %i.ff = call i32 @CBB_add_u64(ptr noundef nonnull %10, i64 noundef %i.fe)
  %.not46.i = icmp eq i32 %i.ff, 0
  br i1 %.not46.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph61.i
  call void @abort() #15
  unreachable

bb.p:                                             ; preds = %.lr.ph61.i
  %i.fg = load i64, ptr %.059.i, align 8, !tbaa !143
  %i.fh = and i64 %i.fg, 281474976710655
  %i.fi = call i32 @CBB_add_u64(ptr noundef nonnull %10, i64 noundef %i.fh)
  %.not49.i = icmp eq i32 %i.fi, 0
  br i1 %.not49.i, label %bb.q, label %bb.n

bb.q:                                             ; preds = %bb.p
  call void @abort() #15
  unreachable

bb.r:                                             ; preds = %._crit_edge62.i
  call void @abort() #15
  unreachable

bb.s:                                             ; preds = %._crit_edge62.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store i64 0, ptr %11, align 8, !tbaa !143
  %i.fj = call ptr @CBB_data(ptr noundef nonnull %9)
  %i.fk = call i64 @CBB_len(ptr noundef nonnull %9)
  %i.fl = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 144
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !143
  %i.fo = lshr i64 %i.fn, 48
  %i.fp = trunc nuw i64 %i.fo to i16
  %i.fq = call noundef zeroext i1 @_ZN4bssl16dtls_seal_recordEP6ssl_stPNS_16DTLSRecordNumberEPhPmmhPKhmt(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i64 noundef 584, i8 noundef zeroext 26, ptr noundef %i.fj, i64 noundef %i.fk, i16 noundef zeroext %i.fp)
  br i1 %i.fq, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.fr = call ptr @CBB_data(ptr noundef nonnull %9)
  %i.fs = call i64 @CBB_len(ptr noundef nonnull %9)
  call void @_ZN4bssl19ssl_do_msg_callbackEPK6ssl_stiiNS_4SpanIKhEE(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 26, ptr %i.fr, i64 %i.fs)
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !200
  %i.fv = load i64, ptr %i.e, align 8, !tbaa !135
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = call i32 @BIO_write(ptr noundef %i.fu, ptr noundef nonnull %i.d, i32 noundef %i.fw) ; 2 uses
  %i.fy = icmp slt i32 %i.fx, 1
  br i1 %i.fy, label %.sink.split.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fz = load ptr, ptr %i.ft, align 8, !tbaa !200
  %i.ga = call i32 @BIO_flush(ptr noundef %i.fz)
  %i.gb = icmp slt i32 %i.ga, 1
  br i1 %i.gb, label %.sink.split.i, label %.thread

.sink.split.i:                                    ; preds = %bb.u, %bb.t
  %.1.ph.i = phi i32 [ %i.fx, %bb.t ], [ -1, %bb.u ]
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !146
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 196
  store i32 3, ptr %i.ge, align 4, !tbaa !231
  br label %bb.v

.thread:                                          ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.gf = load ptr, ptr %i.f, align 8, !tbaa !76  ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 8
  %i.gh = and i16 %i.gg, -65
  store i16 %i.gh, ptr %i.gf, align 8
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !76  ; 2 uses
  %.pre137 = load i16, ptr %.pre, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.s, %.sink.split.i
  %.1.i.ph = phi i32 [ %.1.ph.i, %.sink.split.i ], [ -1, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %_ZN4bsslL11send_flightEP6ssl_st.exit.thread

bb.w:                                             ; preds = %.thread, %bb.a
  %i.gi = phi i16 [ %.pre137, %.thread ], [ %i.h, %bb.a ]
  %i.gj = phi ptr [ %.pre, %.thread ], [ %i.g, %bb.a ] ; 2 uses
  %i.gk = and i16 %i.gi, 32
  %.not27 = icmp eq i16 %i.gk, 0
  br i1 %.not27, label %_ZN4bsslL11send_flightEP6ssl_st.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !146
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 176
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !232
  %.not.i29 = icmp eq i32 %i.go, 0
  br i1 %.not.i29, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 194, ptr noundef nonnull @.str, i32 noundef 873)
  br label %_ZN4bsslL11send_flightEP6ssl_st.exit.thread

bb.z:                                             ; preds = %bb.x
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !200
  %.not.i.i30 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 119, ptr noundef nonnull @.str, i32 noundef 878)
  br label %_ZN4bsslL11send_flightEP6ssl_st.exit.thread

bb.ab:                                            ; preds = %bb.z
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gj, i64 940
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !233
  %i.gt = icmp ugt i32 %i.gs, 12
  br i1 %i.gt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 198, ptr noundef nonnull @.str, i32 noundef 883)
  br label %_ZN4bsslL11send_flightEP6ssl_st.exit.thread

bb.ad:                                            ; preds = %bb.ab
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gj, i64 936
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !199
  %i.gw = icmp ult i32 %i.gv, 228
  br i1 %i.gw, label %bb.ae, label %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i31

bb.ae:                                            ; preds = %bb.ad
  %i.gx = call i32 @SSL_get_options(ptr noundef nonnull %0)
  %i.gy = and i32 %i.gx, 4096
  %.not.i37.i = icmp eq i32 %i.gy, 0
  br i1 %.not.i37.i, label %bb.af, label %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i31

bb.af:                                            ; preds = %bb.ae
  %i.gz = load ptr, ptr %i.gp, align 8, !tbaa !200
  %i.ha = call i64 @BIO_ctrl(ptr noundef %i.gz, i32 noundef 40, i64 noundef 0, ptr noundef null) ; 2 uses
  %i.hb = add i64 %i.ha, -228
  %or.cond12.i.i34 = icmp ult i64 %i.hb, 1073741597
  br i1 %or.cond12.i.i34, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hc = trunc nuw nsw i64 %i.ha to i32
  %i.hd = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 936
  store i32 %i.hc, ptr %i.he, align 8, !tbaa !199
  br label %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i31

bb.ah:                                            ; preds = %bb.af
  %i.hf = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 936
  store i32 1472, ptr %i.hg, align 8, !tbaa !199
  %i.hh = load ptr, ptr %i.gp, align 8, !tbaa !200
  %i.hi = call i64 @BIO_ctrl(ptr noundef %i.hh, i32 noundef 42, i64 noundef 1472, ptr noundef null) ; 0 uses
  br label %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i31

_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i31:    ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ad
  %i.hj = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 936
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !199 ; 2 uses
  %i.hm = zext i32 %i.hl to i64                   ; 2 uses
  invoke void @OPENSSL_free(ptr noundef null)
          to label %.noexc.i32 unwind label %bb.aj

.noexc.i32:                                       ; preds = %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i31
  %i.hn = icmp eq i32 %i.hl, 0
  br i1 %i.hn, label %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit.i, label %bb.ai

bb.ai:                                            ; preds = %.noexc.i32
  %i.ho = invoke ptr @OPENSSL_malloc(i64 noundef %i.hm)
          to label %.noexc38.i unwind label %bb.aj ; 2 uses

.noexc38.i:                                       ; preds = %bb.ai
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit.thread.i, label %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit.i

_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit.i:     ; preds = %.noexc38.i, %.noexc.i32
  %.sroa.067.2.i = phi ptr [ null, %.noexc.i32 ], [ %i.ho, %.noexc38.i ] ; 9 uses
  %i.hq = load ptr, ptr %i.f, align 8, !tbaa !76  ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 928
  %i.hs = load i8, ptr %i.hr, align 8, !tbaa !141 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 640
  %i.hu = load i8, ptr %i.ht, align 8, !tbaa !139 ; 2 uses
  %i.hv = icmp ugt i8 %i.hu, %i.hs
  br i1 %i.hv, label %.lr.ph.i33, label %._crit_edge.i

.lr.ph.i33:                                       ; preds = %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ic = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i, %bb.ai, %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i31
  %.sroa.067.0.i = phi ptr [ %.sroa.067.2.i, %._crit_edge.i ], [ null, %bb.ai ], [ null, %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i31 ]
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.ak:                                            ; preds = %.thread82.i, %.lr.ph.i33
  %12 = phi i8 [ %i.hu, %.lr.ph.i33 ], [ %16, %.thread82.i ] ; 2 uses
  %i.ih = phi ptr [ %i.hq, %.lr.ph.i33 ], [ %18, %.thread82.i ] ; 3 uses
  %i.ii = phi i8 [ %i.hs, %.lr.ph.i33 ], [ %17, %.thread82.i ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 932
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !142
  %13 = icmp ugt i8 %12, %i.ii
  br i1 %13, label %.split.i.i, label %.thread.i

.split.i.i:                                       ; preds = %bb.ak, %.thread30.i.i
  %i.il = phi ptr [ %.pre.i.i, %.thread30.i.i ], [ %i.ih, %bb.ak ] ; 4 uses
  %.sroa.4.0.i.i = phi i64 [ %i.pa, %.thread30.i.i ], [ %i.hm, %bb.ak ] ; 7 uses
  %.sroa.0.0.i.i = phi ptr [ %i.pb, %.thread30.i.i ], [ %.sroa.067.2.i, %bb.ak ] ; 4 uses
  %.08.i.i = phi i64 [ %i.oy, %.thread30.i.i ], [ 0, %bb.ak ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 0, ptr %i.a, align 8, !tbaa !135
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 928 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 304
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 640
  %i.ip = load i8, ptr %i.io, align 8, !tbaa !139 ; 2 uses
  %.promoted.i.i.i = load i8, ptr %i.im, align 8, !tbaa !141 ; 2 uses
  %i.iq = icmp ugt i8 %i.ip, %.promoted.i.i.i
  br i1 %i.iq, label %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit.lr.ph.i.i.i, label %_ZN4bsslL16seal_next_recordEP6ssl_stNS_4SpanIhEEPm.exit.thread.i.i

_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit.lr.ph.i.i.i: ; preds = %.split.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.il, i64 932
  %i.is = zext i8 %.promoted.i.i.i to i64
  %wide.trip.count.i.i.i = zext i8 %i.ip to i64
  br label %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit.i.i.i

_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit.i.i.i: ; preds = %bb.al, %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.is, %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.al ] ; 2 uses
  %i.it = getelementptr inbounds nuw [48 x i8], ptr %i.in, i64 %indvars.iv.i.i.i ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 18
  %i.iv = load i8, ptr %i.iu, align 2, !tbaa !149, !range !150, !noundef !151
  %i.iw = trunc nuw i8 %i.iv to i1
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  %i.iy = load i64, ptr %i.ix, align 8
  %i.iz = icmp ne i64 %i.iy, 0
  %.not159.i.i.i = select i1 %i.iw, i1 true, i1 %i.iz
  br i1 %.not159.i.i.i, label %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit97.i.i.i, label %bb.al

bb.al:                                            ; preds = %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit.i.i.i
  store i32 0, ptr %i.ir, align 4, !tbaa !142
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.ja = trunc nuw i64 %indvars.iv.next.i.i.i to i8
  store i8 %i.ja, ptr %i.im, align 8, !tbaa !141
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN4bsslL16seal_next_recordEP6ssl_stNS_4SpanIhEEPm.exit.thread.i.i, label %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit.i.i.i, !llvm.loop !195

_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit97.i.i.i: ; preds = %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit.i.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.it, i64 18
  %i.jc = getelementptr inbounds nuw i8, ptr %i.it, i64 16 ; 6 uses
  %i.jd = load i16, ptr %i.jc, align 8, !tbaa !148
  %i.je = invoke noundef i64 @_ZN4bssl20dtls_seal_prefix_lenEPK6ssl_stt(ptr noundef nonnull %0, i16 noundef zeroext %i.jd)
          to label %.noexc39.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc39.i:                                       ; preds = %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit97.i.i.i
  %i.jf = load i16, ptr %i.jc, align 8, !tbaa !148
  %i.jg = invoke noundef i64 @_ZN4bssl23dtls_seal_max_input_lenEPK6ssl_sttm(ptr noundef nonnull %0, i16 noundef zeroext %i.jf, i64 noundef %.sroa.4.0.i.i)
          to label %.noexc40.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc40.i:                                       ; preds = %.noexc39.i
  %i.jh = icmp eq i64 %i.jg, 0
  br i1 %i.jh, label %_ZN4bsslL16seal_next_recordEP6ssl_stNS_4SpanIhEEPm.exit.thread.i.i, label %bb.am

bb.am:                                            ; preds = %.noexc40.i
  %i.ji = load i8, ptr %i.jb, align 2, !tbaa !149, !range !150, !noundef !151
  %i.jj = trunc nuw i8 %i.ji to i1
  br i1 %i.jj, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store i64 0, ptr %1, align 8, !tbaa !143
  %i.jk = load i16, ptr %i.jc, align 8, !tbaa !148
  %i.jl = invoke noundef zeroext i1 @_ZN4bssl16dtls_seal_recordEP6ssl_stPNS_16DTLSRecordNumberEPhPmmhPKhmt(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %.sroa.0.0.i.i, ptr noundef nonnull %i.a, i64 noundef %.sroa.4.0.i.i, i8 noundef zeroext 20, ptr noundef nonnull @_ZZN4bsslL16seal_next_recordEP6ssl_stNS_4SpanIhEEPmE17kChangeCipherSpec, i64 noundef 1, i16 noundef zeroext %i.jk)
          to label %.noexc41.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41.i:                                       ; preds = %bb.an
  br i1 %i.jl, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.noexc41.i
  invoke void @_ZN4bssl19ssl_do_msg_callbackEPK6ssl_stiiNS_4SpanIKhEE(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 20, ptr nonnull @_ZZN4bsslL16seal_next_recordEP6ssl_stNS_4SpanIhEEPmE17kChangeCipherSpec, i64 1)
          to label %.noexc42.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42.i:                                       ; preds = %bb.ao
  %i.jm = load ptr, ptr %i.f, align 8, !tbaa !76  ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 932
  store i32 0, ptr %i.jn, align 4, !tbaa !142
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 928 ; 2 uses
  %i.jp = load i8, ptr %i.jo, align 8, !tbaa !141
  %i.jq = add i8 %i.jp, 1
  store i8 %i.jq, ptr %i.jo, align 8, !tbaa !141
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc42.i, %.noexc41.i
  %.0.i.i.i = phi i32 [ 1, %.noexc42.i ], [ 0, %.noexc41.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %_ZN4bsslL16seal_next_recordEP6ssl_stNS_4SpanIhEEPm.exit.i.i

bb.aq:                                            ; preds = %bb.am
  %i.jr = load i16, ptr %i.jc, align 8, !tbaa !148
  %.not82.i.i.i = icmp eq i16 %i.jr, 0
  %i.js = icmp ugt i64 %i.je, %.sroa.4.0.i.i
  br i1 %i.js, label %bb.ar, label %_ZNK4bssl4SpanIhE7subspanEmm.exit.i.i.i

bb.ar:                                            ; preds = %bb.aq
  call void @abort() #15
  unreachable

_ZNK4bssl4SpanIhE7subspanEmm.exit.i.i.i:          ; preds = %bb.aq
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.je ; 2 uses
  %i.ju = sub nuw nsw i64 %.sroa.4.0.i.i, %i.je
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.jg, i64 %i.ju) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.jv = invoke i32 @CBB_init_fixed(ptr noundef nonnull %2, ptr noundef %i.jt, i64 noundef %.sroa.speculated.i.i.i.i)
          to label %.noexc43.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc43.i:                                       ; preds = %_ZNK4bssl4SpanIhE7subspanEmm.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store i64 0, ptr %3, align 8, !tbaa !143
  store i8 0, ptr %i.hx, align 1, !tbaa !235
  store i32 0, ptr %i.hz, align 8, !tbaa !236
  %i.jw = load ptr, ptr %i.f, align 8, !tbaa !76  ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 928
  %i.jy = load i8, ptr %i.jx, align 8, !tbaa !141 ; 3 uses
  store i8 %i.jy, ptr %i.hw, align 8, !tbaa !237
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 932
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !142
  store i32 %i.ka, ptr %i.hy, align 4, !tbaa !238
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jw, i64 640
  %i.kc = load i8, ptr %i.kb, align 8, !tbaa !139
  %i.kd = icmp ugt i8 %i.kc, %i.jy
  br i1 %i.kd, label %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit98.i.i.i, label %.thread146.i.i.i

_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit98.i.i.i: ; preds = %.noexc43.i, %bb.bl
  %i.ke = phi i8 [ %i.na, %bb.bl ], [ %i.jy, %.noexc43.i ]
  %i.kf = phi ptr [ %i.mw, %bb.bl ], [ %i.jw, %.noexc43.i ] ; 2 uses
  %i.kg = zext i8 %i.ke to i64
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 304
  %i.ki = getelementptr inbounds nuw [48 x i8], ptr %i.kh, i64 %i.kg ; 5 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kk = load i16, ptr %i.kj, align 8, !tbaa !148
  %i.kl = load i16, ptr %i.jc, align 8, !tbaa !148
  %.not83.i.i.i = icmp ne i16 %i.kk, %i.kl
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 18
  %i.kn = load i8, ptr %i.km, align 2, !range !150
  %i.ko = trunc nuw i8 %i.kn to i1
  %or.cond.i.i.i = select i1 %.not83.i.i.i, i1 true, i1 %i.ko
  br i1 %or.cond.i.i.i, label %.thread146.i.i.i, label %bb.as

bb.as:                                            ; preds = %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit98.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.kp = load ptr, ptr %i.ki, align 8, !tbaa !19
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !20
  store ptr %i.kp, ptr %4, align 8, !tbaa !26
  store i64 %i.kr, ptr %i.ia, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.ks = invoke noundef zeroext i1 @_ZN4bssl20dtls1_parse_fragmentEP6cbs_stPNS_12hm_header_stES1_(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5)
          to label %.noexc44.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc44.i:                                       ; preds = %bb.as
  %i.kt = load i32, ptr %i.ib, align 4
  %i.ku = icmp eq i32 %i.kt, 0
  %or.cond.not.i.i.i = select i1 %i.ks, i1 %i.ku, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.at, label %.thread154.i.i.i

bb.at:                                            ; preds = %.noexc44.i
  %i.kv = load i32, ptr %i.ic, align 4, !tbaa !30 ; 3 uses
  %i.kw = zext i32 %i.kv to i64                   ; 3 uses
  %i.kx = load i64, ptr %i.id, align 8, !tbaa !27
  %.not.i.i.i = icmp eq i64 %i.kx, %i.kw
  br i1 %.not.i.i.i, label %bb.au, label %.thread154.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.ky = load i32, ptr %i.ie, align 4, !tbaa !31
  %.not85.i.i.i = icmp eq i32 %i.kv, %i.ky
  %i.kz = load i64, ptr %i.ia, align 8
  %.not86.i.i.i = icmp eq i64 %i.kz, 0
  %or.cond157.i.i.i = select i1 %.not85.i.i.i, i1 %.not86.i.i.i, i1 false
  br i1 %or.cond157.i.i.i, label %bb.av, label %.thread154.i.i.i

.thread154.i.i.i:                                 ; preds = %bb.au, %bb.at, %.noexc44.i
  invoke void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 748)
          to label %.noexc45.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45.i:                                       ; preds = %.thread154.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.loopexit.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.la = load ptr, ptr %5, align 8, !tbaa !26
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ki, i64 24 ; 2 uses
  %i.lc = load ptr, ptr %i.f, align 8, !tbaa !76  ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 932
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !142
  %i.lf = zext i32 %i.le to i64
  %i.lg = call { i64, i64 } @_ZNK4bssl17DTLSMessageBitmap17NextUnmarkedRangeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.lb, i64 noundef %i.lf) ; 2 uses
  %i.lh = extractvalue { i64, i64 } %i.lg, 0      ; 2 uses
  %i.li = extractvalue { i64, i64 } %i.lg, 1      ; 2 uses
  %i.lj = icmp eq i64 %i.lh, %i.li
  br i1 %i.lj, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.av
end_hunk_0
begin_hunk_1_@_ZN4bssl11dtls1_flushEP6ssl_st:bb.a
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 932
  store i32 0, ptr %i.mx, align 4, !tbaa !142
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 928 ; 2 uses
  %i.mz = load i8, ptr %i.my, align 8, !tbaa !141
  %i.na = add i8 %i.mz, 1                         ; 3 uses
  store i8 %i.na, ptr %i.my, align 8, !tbaa !141
  br i1 %.not82.i.i.i, label %.thread146.sink.split.i.i.i, label %bb.bl

bb.bk:                                            ; preds = %.noexc54.i, %.noexc53.i, %.noexc52.i, %.noexc51.i, %.noexc50.i, %.noexc49.i, %.noexc48.i
  invoke void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 787)
          to label %.noexc57.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc57.i:                                       ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.loopexit.i.i.i

bb.bl:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 640
  %i.nc = load i8, ptr %i.nb, align 8, !tbaa !139
  %i.nd = icmp ugt i8 %i.nc, %i.na
  br i1 %i.nd, label %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit98.i.i.i, label %.thread146.i.i.i

.thread146.sink.split.i.i.i:                      ; preds = %._crit_edge.i.i.i, %.noexc56.i, %..thread146.sink.split.i.loopexit_crit_edge.i.i
  %.pre54.i.i = phi ptr [ %i.mp, %.noexc56.i ], [ %.pre54.pre.pre.i.i, %..thread146.sink.split.i.loopexit_crit_edge.i.i ], [ %i.mw, %._crit_edge.i.i.i ]
  %.471.ph.i.i.i = phi i32 [ 2, %.noexc56.i ], [ 2, %..thread146.sink.split.i.loopexit_crit_edge.i.i ], [ 1, %._crit_edge.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.thread146.i.i.i

.thread146.i.i.i:                                 ; preds = %bb.bl, %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit98.i.i.i, %.thread146.sink.split.i.i.i, %.noexc43.i
  %i.ne = phi ptr [ %.pre54.i.i, %.thread146.sink.split.i.i.i ], [ %i.jw, %.noexc43.i ], [ %i.mw, %bb.bl ], [ %i.kf, %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit98.i.i.i ] ; 2 uses
  %.471.i.i.i = phi i32 [ %.471.ph.i.i.i, %.thread146.sink.split.i.i.i ], [ 2, %.noexc43.i ], [ 2, %bb.bl ], [ 1, %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit98.i.i.i ] ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 928
  %i.ng = load i8, ptr %i.nf, align 8, !tbaa !141
  store i8 %i.ng, ptr %i.hx, align 1, !tbaa !235
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 932
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !142
  store i32 %i.ni, ptr %i.hz, align 8, !tbaa !236
  %i.nj = invoke i64 @CBB_len(ptr noundef nonnull %2)
          to label %.noexc58.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58.i:                                       ; preds = %.thread146.i.i.i
  %i.nk = icmp eq i64 %i.nj, 0
  br i1 %i.nk, label %.loopexit.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %.noexc58.i
  %i.nl = invoke ptr @CBB_data(ptr noundef nonnull %2)
          to label %.noexc59.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59.i:                                       ; preds = %bb.bm
  %i.nm = invoke i64 @CBB_len(ptr noundef nonnull %2)
          to label %.noexc60.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60.i:                                       ; preds = %.noexc59.i
  %i.nn = load i16, ptr %i.jc, align 8, !tbaa !148
  %i.no = invoke noundef zeroext i1 @_ZN4bssl16dtls_seal_recordEP6ssl_stPNS_16DTLSRecordNumberEPhPmmhPKhmt(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %.sroa.0.0.i.i, ptr noundef nonnull %i.a, i64 noundef %.sroa.4.0.i.i, i8 noundef zeroext 22, ptr noundef %i.nl, i64 noundef %i.nm, i16 noundef zeroext %i.nn)
          to label %.noexc61.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc61.i:                                       ; preds = %.noexc60.i
  br i1 %i.no, label %bb.bn, label %.loopexit.i.i.i

bb.bn:                                            ; preds = %.noexc61.i
  %i.np = load ptr, ptr %i.gl, align 8, !tbaa !146
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 208
  %i.nr = load i16, ptr %i.nq, align 8, !tbaa !239
  %i.ns = icmp eq i16 %i.nr, 0
  br i1 %i.ns, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nt = invoke noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
          to label %.noexc62.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc62.i:                                       ; preds = %bb.bo
  %i.nu = icmp ugt i16 %i.nt, 771
  br i1 %i.nu, label %bb.bp, label %.loopexit.i.i.i

bb.bp:                                            ; preds = %.noexc62.i, %bb.bn
  %i.nv = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 648
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !140 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.nx, null
  br i1 %.not.i.i.i.i, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  %i.ny = invoke ptr @OPENSSL_malloc(i64 noundef 784)
          to label %.noexc63.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc63.i:                                       ; preds = %bb.bq
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %_ZN4bssl10MakeUniqueINS_8MRUQueueINS_14DTLSSentRecordELm32EEEJEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_.exit.i.i.i, label %bb.br

bb.br:                                            ; preds = %.noexc63.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(784) %i.ny, i8 0, i64 784, i1 false), !noalias !240
  br label %_ZN4bssl10MakeUniqueINS_8MRUQueueINS_14DTLSSentRecordELm32EEEJEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_.exit.i.i.i

_ZN4bssl10MakeUniqueINS_8MRUQueueINS_14DTLSSentRecordELm32EEEJEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_.exit.i.i.i: ; preds = %bb.br, %.noexc63.i
  %i.oa = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 648 ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !140 ; 2 uses
  store ptr %i.ny, ptr %i.ob, align 8, !tbaa !140
  %.not.i.i.i.i.i.i = icmp eq ptr %i.oc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4bssl8MRUQueueINS0_14DTLSSentRecordELm32EEENS0_8internal7DeleterEED2Ev.exit.i.i, label %bb.bs

bb.bs:                                            ; preds = %_ZN4bssl10MakeUniqueINS_8MRUQueueINS_14DTLSSentRecordELm32EEEJEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_.exit.i.i.i
  invoke void @OPENSSL_free(ptr noundef nonnull %i.oc)
          to label %._ZNSt10unique_ptrIN4bssl8MRUQueueINS0_14DTLSSentRecordELm32EEENS0_8internal7DeleterEED2Ev.exit_crit_edge.i.i unwind label %bb.bt

._ZNSt10unique_ptrIN4bssl8MRUQueueINS0_14DTLSSentRecordELm32EEENS0_8internal7DeleterEED2Ev.exit_crit_edge.i.i: ; preds = %bb.bs
  %.pre55.i.i = load ptr, ptr %i.f, align 8, !tbaa !76
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre55.i.i, i64 648
  %.pre56.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !140
  br label %_ZNSt10unique_ptrIN4bssl8MRUQueueINS0_14DTLSSentRecordELm32EEENS0_8internal7DeleterEED2Ev.exit.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.od = landingpad { ptr, i32 }
          catch ptr null
  %i.oe = extractvalue { ptr, i32 } %i.od, 0
  call void @__clang_call_terminate(ptr %i.oe) #15
  unreachable

_ZNSt10unique_ptrIN4bssl8MRUQueueINS0_14DTLSSentRecordELm32EEENS0_8internal7DeleterEED2Ev.exit.i.i: ; preds = %._ZNSt10unique_ptrIN4bssl8MRUQueueINS0_14DTLSSentRecordELm32EEENS0_8internal7DeleterEED2Ev.exit_crit_edge.i.i, %_ZN4bssl10MakeUniqueINS_8MRUQueueINS_14DTLSSentRecordELm32EEEJEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_.exit.i.i.i
  %i.of = phi ptr [ %.pre56.i.i, %._ZNSt10unique_ptrIN4bssl8MRUQueueINS0_14DTLSSentRecordELm32EEENS0_8internal7DeleterEED2Ev.exit_crit_edge.i.i ], [ %i.ny, %_ZN4bssl10MakeUniqueINS_8MRUQueueINS_14DTLSSentRecordELm32EEEJEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_.exit.i.i.i ] ; 2 uses
  %.not.i108.i.i.i = icmp eq ptr %i.of, null
  br i1 %.not.i108.i.i.i, label %.loopexit.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt10unique_ptrIN4bssl8MRUQueueINS0_14DTLSSentRecordELm32EEENS0_8internal7DeleterEED2Ev.exit.i.i, %bb.bp
  %i.og = phi ptr [ %i.of, %_ZNSt10unique_ptrIN4bssl8MRUQueueINS0_14DTLSSentRecordELm32EEENS0_8internal7DeleterEED2Ev.exit.i.i ], [ %i.nx, %bb.bp ] ; 4 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 768 ; 3 uses
  %i.oi = load i8, ptr %i.oh, align 8, !tbaa !242 ; 2 uses
  %i.oj = icmp ult i8 %i.oi, 32
  br i1 %i.oj, label %_ZN4bssl13InplaceVectorINS_14DTLSSentRecordELm32EE8PushBackES1_.exit.i.i.i.i, label %_ZN4bssl8MRUQueueINS_14DTLSSentRecordELm32EEixEm.exit.i.i.i.i

_ZN4bssl13InplaceVectorINS_14DTLSSentRecordELm32EE8PushBackES1_.exit.i.i.i.i: ; preds = %bb.bu
  %i.ok = zext nneg i8 %i.oi to i64
  %i.ol = getelementptr inbounds nuw [24 x i8], ptr %i.og, i64 %i.ok
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ol, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.om = load i8, ptr %i.oh, align 8, !tbaa !242
  %i.on = add i8 %i.om, 1
  store i8 %i.on, ptr %i.oh, align 8, !tbaa !242
  br label %.loopexit.i.i.i

_ZN4bssl8MRUQueueINS_14DTLSSentRecordELm32EEixEm.exit.i.i.i.i: ; preds = %bb.bu
  %i.oo = getelementptr inbounds nuw i8, ptr %i.og, i64 776 ; 2 uses
  %i.op = load i8, ptr %i.oo, align 8, !tbaa !244 ; 2 uses
  %i.oq = and i8 %i.op, 31
  %i.or = zext nneg i8 %i.oq to i64
  %i.os = getelementptr inbounds nuw [24 x i8], ptr %i.og, i64 %i.or
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.os, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 20, i1 false)
  %i.ot = add i8 %i.op, 1
  %i.ou = and i8 %i.ot, 31
  store i8 %i.ou, ptr %i.oo, align 8, !tbaa !244
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %_ZN4bssl8MRUQueueINS_14DTLSSentRecordELm32EEixEm.exit.i.i.i.i, %_ZN4bssl13InplaceVectorINS_14DTLSSentRecordELm32EE8PushBackES1_.exit.i.i.i.i, %_ZNSt10unique_ptrIN4bssl8MRUQueueINS0_14DTLSSentRecordELm32EEENS0_8internal7DeleterEED2Ev.exit.i.i, %.noexc62.i, %.noexc61.i, %.noexc58.i, %.noexc57.i, %.noexc45.i
  %.8.i.i.i = phi i32 [ %.471.i.i.i, %.noexc62.i ], [ 2, %.noexc58.i ], [ 0, %.noexc61.i ], [ 0, %.noexc45.i ], [ 0, %_ZNSt10unique_ptrIN4bssl8MRUQueueINS0_14DTLSSentRecordELm32EEENS0_8internal7DeleterEED2Ev.exit.i.i ], [ 0, %.noexc57.i ], [ %.471.i.i.i, %_ZN4bssl8MRUQueueINS_14DTLSSentRecordELm32EEixEm.exit.i.i.i.i ], [ %.471.i.i.i, %_ZN4bssl13InplaceVectorINS_14DTLSSentRecordELm32EE8PushBackES1_.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %_ZN4bsslL16seal_next_recordEP6ssl_stNS_4SpanIhEEPm.exit.i.i

_ZN4bsslL16seal_next_recordEP6ssl_stNS_4SpanIhEEPm.exit.i.i: ; preds = %.loopexit.i.i.i, %bb.ap
  %.10.i.i.i = phi i32 [ %.0.i.i.i, %bb.ap ], [ %.8.i.i.i, %.loopexit.i.i.i ] ; 2 uses
  %i.ov = icmp eq i32 %.10.i.i.i, 0
  br i1 %i.ov, label %_ZN4bsslL16seal_next_packetEP6ssl_stNS_4SpanIhEEPm.exit.i, label %_ZN4bsslL16seal_next_recordEP6ssl_stNS_4SpanIhEEPm.exit.thread.i.i

_ZN4bsslL16seal_next_recordEP6ssl_stNS_4SpanIhEEPm.exit.thread.i.i: ; preds = %bb.al, %_ZN4bsslL16seal_next_recordEP6ssl_stNS_4SpanIhEEPm.exit.i.i, %.noexc40.i, %.split.i.i
  %.10.i18.i.i = phi i32 [ 2, %.split.i.i ], [ %.10.i.i.i, %_ZN4bsslL16seal_next_recordEP6ssl_stNS_4SpanIhEEPm.exit.i.i ], [ 2, %.noexc40.i ], [ 2, %bb.al ]
  %i.ow = load i64, ptr %i.a, align 8, !tbaa !135 ; 4 uses
  %i.ox = icmp ugt i64 %i.ow, %.sroa.4.0.i.i
  br i1 %i.ox, label %.split44.us.i.i, label %bb.bv

.split44.us.i.i:                                  ; preds = %_ZN4bsslL16seal_next_recordEP6ssl_stNS_4SpanIhEEPm.exit.thread.i.i
  call void @abort() #15
  unreachable

bb.bv:                                            ; preds = %_ZN4bsslL16seal_next_recordEP6ssl_stNS_4SpanIhEEPm.exit.thread.i.i
  %i.oy = add i64 %i.ow, %.08.i.i                 ; 3 uses
  %i.oz = icmp eq i32 %.10.i18.i.i, 2
  br i1 %i.oz, label %bb.bw, label %.thread30.i.i

.thread30.i.i:                                    ; preds = %bb.bv
  %i.pa = sub nuw nsw i64 %.sroa.4.0.i.i, %i.ow
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.ow
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !76
  br label %.split.i.i, !llvm.loop !198

_ZN4bsslL16seal_next_packetEP6ssl_stNS_4SpanIhEEPm.exit.i: ; preds = %_ZN4bsslL16seal_next_recordEP6ssl_stNS_4SpanIhEEPm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit.thread.i

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.pc = icmp eq i64 %i.oy, 0
  br i1 %i.pc, label %..thread_crit_edge.i, label %bb.by

..thread_crit_edge.i:                             ; preds = %bb.bw
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !76 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 640
  %.pre171.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !139
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %bb.ak
  %14 = phi i8 [ %.pre171.i, %..thread_crit_edge.i ], [ %12, %bb.ak ] ; 2 uses
  %15 = phi ptr [ %.pre.i, %..thread_crit_edge.i ], [ %i.ih, %bb.ak ] ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %15, i64 928
  %i.pe = load i8, ptr %i.pd, align 8, !tbaa !141 ; 2 uses
  %i.pf = icmp ugt i8 %14, %i.pe
  br i1 %i.pf, label %bb.bx, label %.thread82.i

bb.bx:                                            ; preds = %.thread.i
  invoke void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 169, ptr noundef nonnull @.str, i32 noundef 907)
          to label %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit.thread.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.by:                                            ; preds = %bb.bw
  %i.pg = load ptr, ptr %i.gp, align 8, !tbaa !200
  %i.ph = trunc i64 %i.oy to i32
  %i.pi = invoke i32 @BIO_write(ptr noundef %i.pg, ptr noundef %.sroa.067.2.i, i32 noundef %i.ph)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bz:                                            ; preds = %bb.by
  %i.pj = icmp sgt i32 %i.pi, 0
  %.pre172.i = load ptr, ptr %i.f, align 8, !tbaa !76 ; 4 uses
  %.phi.trans.insert173.i = getelementptr inbounds nuw i8, ptr %.pre172.i, i64 928 ; 2 uses
  br i1 %i.pj, label %..thread82_crit_edge.i, label %bb.ca

..thread82_crit_edge.i:                           ; preds = %bb.bz
  %.pre174.i = load i8, ptr %.phi.trans.insert173.i, align 8, !tbaa !141
  %.phi.trans.insert175.i = getelementptr inbounds nuw i8, ptr %.pre172.i, i64 640
  %.pre176.i = load i8, ptr %.phi.trans.insert175.i, align 8, !tbaa !139
  br label %.thread82.i

bb.ca:                                            ; preds = %bb.bz
  store i8 %i.ii, ptr %.phi.trans.insert173.i, align 8, !tbaa !141
  %i.pk = getelementptr inbounds nuw i8, ptr %.pre172.i, i64 932
  store i32 %i.ik, ptr %i.pk, align 4, !tbaa !142
  %i.pl = load ptr, ptr %i.gl, align 8, !tbaa !146
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 196
  store i32 3, ptr %i.pm, align 4, !tbaa !231
  br label %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit.thread.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bq, %bb.bo, %.noexc60.i, %.noexc59.i, %bb.bm, %.thread146.i.i.i, %bb.bk, %.thread154.i.i.i, %_ZNK4bssl4SpanIhE7subspanEmm.exit.i.i.i, %bb.ao, %bb.an, %.noexc39.i, %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit97.i.i.i, %_ZNK4bssl4SpanIhE7subspanEmm.exit107.i.i.i, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %.noexc47.i, %bb.ba, %bb.aw, %bb.as, %bb.by, %bb.bx
  %lpad.loopexit.split-lp262 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.thread82.i:                                      ; preds = %..thread82_crit_edge.i, %.thread.i
  %16 = phi i8 [ %14, %.thread.i ], [ %.pre176.i, %..thread82_crit_edge.i ] ; 2 uses
  %17 = phi i8 [ %i.pe, %.thread.i ], [ %.pre174.i, %..thread82_crit_edge.i ] ; 2 uses
  %18 = phi ptr [ %15, %.thread.i ], [ %.pre172.i, %..thread82_crit_edge.i ]
  %i.pn = icmp ugt i8 %16, %17
  br i1 %i.pn, label %bb.ak, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.thread82.i, %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit.i
  %i.po = load ptr, ptr %i.gp, align 8, !tbaa !200
  %i.pp = invoke i32 @BIO_flush(ptr noundef %i.po)
          to label %bb.cb unwind label %bb.aj

bb.cb:                                            ; preds = %._crit_edge.i
  %i.pq = icmp slt i32 %i.pp, 1
  br i1 %i.pq, label %bb.cc, label %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit.thread.i

bb.cc:                                            ; preds = %bb.cb
  %i.pr = load ptr, ptr %i.gl, align 8, !tbaa !146
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 196
  store i32 3, ptr %i.ps, align 4, !tbaa !231
  br label %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit.thread.i

_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit.thread.i: ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.bx, %_ZN4bsslL16seal_next_packetEP6ssl_stNS_4SpanIhEEPm.exit.i, %.noexc38.i
  %.sroa.067.275.i = phi ptr [ null, %.noexc38.i ], [ %.sroa.067.2.i, %bb.cc ], [ %.sroa.067.2.i, %bb.cb ], [ %.sroa.067.2.i, %_ZN4bsslL16seal_next_packetEP6ssl_stNS_4SpanIhEEPm.exit.i ], [ %.sroa.067.2.i, %bb.bx ], [ %.sroa.067.2.i, %bb.ca ]
  %.4.i = phi i32 [ -1, %.noexc38.i ], [ -1, %bb.cc ], [ 1, %bb.cb ], [ -1, %_ZN4bsslL16seal_next_packetEP6ssl_stNS_4SpanIhEEPm.exit.i ], [ 0, %bb.bx ], [ %i.pi, %bb.ca ] ; 2 uses
  invoke void @OPENSSL_free(ptr noundef %.sroa.067.275.i)
          to label %_ZN4bsslL11send_flightEP6ssl_st.exit unwind label %bb.cd

bb.cd:                                            ; preds = %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit.thread.i
  %i.pt = landingpad { ptr, i32 }
          catch ptr null
  %i.pu = extractvalue { ptr, i32 } %i.pt, 0
  call void @__clang_call_terminate(ptr %i.pu) #15
  unreachable

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aj
  %.sroa.067.1.i = phi ptr [ %.sroa.067.0.i, %bb.aj ], [ %.sroa.067.2.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn.pn.i = phi { ptr, i32 } [ %i.ig, %bb.aj ], [ %lpad.loopexit.split-lp262, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @OPENSSL_free(ptr noundef %.sroa.067.1.i)
          to label %_ZN4bssl5ArrayIhED2Ev.exit64.i unwind label %bb.ce

bb.ce:                                            ; preds = %.loopexit.split-lp.i
  %i.pv = landingpad { ptr, i32 }
          catch ptr null
  %i.pw = extractvalue { ptr, i32 } %i.pv, 0
  call void @__clang_call_terminate(ptr %i.pw) #15
  unreachable

_ZN4bssl5ArrayIhED2Ev.exit64.i:                   ; preds = %.loopexit.split-lp.i
  resume { ptr, i32 } %.pn.pn.i

_ZN4bsslL11send_flightEP6ssl_st.exit:             ; preds = %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit.thread.i
  %i.px = icmp slt i32 %.4.i, 1
  br i1 %i.px, label %_ZN4bsslL11send_flightEP6ssl_st.exit.thread, label %bb.cf

bb.cf:                                            ; preds = %_ZN4bsslL11send_flightEP6ssl_st.exit
  %i.py = load ptr, ptr %i.f, align 8, !tbaa !76  ; 4 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 928
  store i8 0, ptr %i.pz, align 8, !tbaa !141
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 932
  store i32 0, ptr %i.qa, align 4, !tbaa !142
  %i.qb = load i16, ptr %i.py, align 8
  %i.qc = and i16 %i.qb, -33
  store i16 %i.qc, ptr %i.py, align 8
  %i.qd = call i32 @SSL_in_init(ptr noundef %0)
  %.not28 = icmp eq i32 %i.qd, 0
  br i1 %.not28, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.qe = call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.qf = icmp ugt i16 %i.qe, 771
  br i1 %i.qf, label %bb.ch, label %_ZN4bsslL11send_flightEP6ssl_st.exit.thread

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.qg = load ptr, ptr %i.f, align 8, !tbaa !76  ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 940
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !233
  %i.qj = icmp eq i32 %i.qi, 0
  br i1 %i.qj, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ql = load i32, ptr %i.qk, align 8, !tbaa !245
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qg, i64 976
  store i32 %i.ql, ptr %i.qm, align 8, !tbaa !138
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qg, i64 976 ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !138
  %i.qp = shl i32 %i.qo, 1
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.qp, i32 60000)
  store i32 %.sroa.speculated, ptr %i.qn, align 8, !tbaa !138
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !137
  %i.qs = call { i64, i32 } @_ZN4bssl24ssl_ctx_get_current_timeEPK10ssl_ctx_st(ptr noundef %i.qr) ; 2 uses
  %i.qt = extractvalue { i64, i32 } %i.qs, 0
  %i.qu = extractvalue { i64, i32 } %i.qs, 1
  %i.qv = load ptr, ptr %i.f, align 8, !tbaa !76  ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 944
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qv, i64 976
  %i.qy = load i32, ptr %i.qx, align 8, !tbaa !138
  %i.qz = zext i32 %i.qy to i64
  %i.ra = mul nuw nsw i64 %i.qz, 1000
  call void @_ZN4bssl9DTLSTimer17StartMicrosecondsENS_15OPENSSL_timevalEm(ptr noundef nonnull align 8 dereferenceable(16) %i.qw, i64 %i.qt, i32 %i.qu, i64 noundef %i.ra)
  br label %_ZN4bsslL11send_flightEP6ssl_st.exit.thread

_ZN4bsslL11send_flightEP6ssl_st.exit.thread:      ; preds = %bb.cg, %bb.ck, %bb.ac, %bb.aa, %bb.y, %bb.w, %_ZN4bsslL11send_flightEP6ssl_st.exit, %bb.v, %.thread43
  %.3 = phi i32 [ 1, %bb.w ], [ -1, %.thread43 ], [ %.1.i.ph, %bb.v ], [ %.4.i, %_ZN4bsslL11send_flightEP6ssl_st.exit ], [ -1, %bb.ac ], [ -1, %bb.y ], [ -1, %bb.aa ], [ 1, %bb.ck ], [ 1, %bb.cg ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZN4bssl13dtls1_min_mtuEv() local_unnamed_addr #5 {
bb.a:
  ret i32 228
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN4bssl19DTLSIncomingMessageENS0_8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !130    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4bssl8internal7DeleterclINS_19DTLSIncomingMessageEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  invoke void @OPENSSL_free(ptr noundef %i.c)
          to label %_ZN4bssl17DTLSMessageBitmapD2Ev.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #15
  unreachable

_ZN4bssl17DTLSMessageBitmapD2Ev.exit.i.i.i.i:     ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  invoke void @OPENSSL_free(ptr noundef %i.g)
          to label %_ZN4bssl19DTLSIncomingMessageD2Ev.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %_ZN4bssl17DTLSMessageBitmapD2Ev.exit.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #15
  unreachable

_ZN4bssl19DTLSIncomingMessageD2Ev.exit.i.i.i:     ; preds = %_ZN4bssl17DTLSMessageBitmapD2Ev.exit.i.i.i.i
  invoke void @OPENSSL_free(ptr noundef nonnull %i.a)
          to label %_ZN4bssl8internal7DeleterclINS_19DTLSIncomingMessageEEEvPT_.exit unwind label %bb.e

_ZN4bssl8internal7DeleterclINS_19DTLSIncomingMessageEEEvPT_.exit: ; preds = %_ZN4bssl19DTLSIncomingMessageD2Ev.exit.i.i.i, %bb.a
  ret void

bb.e:                                             ; preds = %_ZN4bssl19DTLSIncomingMessageD2Ev.exit.i.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #15
  unreachable
}

declare i32 @CBB_init_fixed(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @CBB_finish(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CBB_zero(ptr noundef) local_unnamed_addr #1

declare void @CBB_cleanup(ptr noundef) local_unnamed_addr #1

declare ptr @OPENSSL_malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

declare noundef zeroext i1 @_ZN4bssl13SSLTranscript6UpdateENS_4SpanIKhEE(ptr noundef nonnull align 8 dereferenceable(44), ptr, i64) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4bssl19DTLSOutgoingMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  invoke void @OPENSSL_free(ptr noundef %i.b)
end_hunk_1
