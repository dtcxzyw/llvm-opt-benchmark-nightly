Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/ftp?download=true
inline.NumInlined: 120
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ftp_do:bb.a
bb.bp:                                            ; preds = %bb.bo
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !93
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %bb.bq, label %bb.bw

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.gb = load i8, ptr %i.fo, align 8, !tbaa !94
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr @ftp_state_names, i64 %i.gc
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !27
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.52, ptr noundef %i.ge) #10
  br label %bb.bw

bb.br:                                            ; preds = %bb.bm
  br i1 %.not69.i.i49, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !91 ; 2 uses
  %.not68.i.i50 = icmp eq ptr %i.gg, null
  br i1 %.not68.i.i50, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !93
  %i.gj = icmp sgt i32 %i.gi, 0
  %i.gk = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8
  %i.gl = icmp sgt i32 %i.gk, 0
  %or.cond4.i.i = select i1 %i.gj, i1 %i.gl, i1 false
  br i1 %or.cond4.i.i, label %bb.bv, label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  %.old2.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8, !tbaa !93
  %.old3.i.i = icmp sgt i32 %.old2.i.i, 0
  br i1 %.old3.i.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.gm = load i8, ptr %i.fo, align 8, !tbaa !94
  %i.gn = zext i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr @ftp_state_names, i64 %i.gn
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !27
  call void (ptr, ptr, ...) @Curl_trc_ftp(ptr noundef nonnull %0, ptr noundef nonnull @.str.53, ptr noundef %i.gp) #10
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.br, %bb.bq, %bb.bp, %bb.bn
  %i.gq = load i8, ptr %1, align 1, !tbaa !97, !range !107, !noundef !108
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.bx, label %ftp_perform.exit.i

bb.bx:                                            ; preds = %bb.bw
  %i.gs = load i64, ptr %i.et, align 1
  %i.gt = and i64 %i.gs, 536870912
  %.not71.i.i = icmp eq i64 %i.gt, 0
  br i1 %.not71.i.i, label %ftp_perform.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !91 ; 2 uses
  %.not72.i.i52 = icmp eq ptr %i.gv, null
  br i1 %.not72.i.i52, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !93
  %i.gy = icmp sgt i32 %i.gx, 0
  %i.gz = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8
  %i.ha = icmp sgt i32 %i.gz, 0
  %or.cond7.i.i = select i1 %i.gy, i1 %i.ha, i1 false
  br i1 %or.cond7.i.i, label %bb.cb, label %ftp_perform.exit.i

bb.ca:                                            ; preds = %bb.by
  %.old5.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8, !tbaa !93
  %.old6.i.i = icmp sgt i32 %.old5.i.i, 0
  br i1 %.old6.i.i, label %bb.cb, label %ftp_perform.exit.i

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.hb = load i8, ptr %i.fo, align 8, !tbaa !94
  %i.hc = zext i8 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr @ftp_state_names, i64 %i.hc
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !27
  call void (ptr, ptr, ...) @Curl_trc_ftp(ptr noundef nonnull %0, ptr noundef nonnull @.str.54, ptr noundef %i.he) #10
  br label %ftp_perform.exit.i

ftp_perform.exit.i:                               ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bx, %bb.bw
  %.not.i51 = icmp eq i32 %i.fn, 0
  br i1 %.not.i51, label %bb.cc, label %ftp_perform.exit.thread.i

bb.cc:                                            ; preds = %ftp_perform.exit.i
  %i.hf = load i8, ptr %1, align 1, !tbaa !97, !range !107, !noundef !108
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.cd, label %ftp_regular_transfer.exit

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.ft, label %bb.ce, label %.thread14.i.i

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.hh = call i32 @ftp_do_more(ptr noundef nonnull %0, ptr noundef nonnull %i.a) ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.hh, 0
  br i1 %.not.not.i.i, label %bb.cl, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hi = load i64, ptr %i.et, align 1
  %i.hj = and i64 %i.hi, 536870912
  %.not12.i.i.i = icmp eq i64 %i.hj, 0
  br i1 %.not12.i.i.i, label %bb.ck, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !91 ; 2 uses
  %.not13.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not13.i.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !93
  %i.ho = icmp sgt i32 %i.hn, 0
  %i.hp = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8
  %i.hq = icmp sgt i32 %i.hp, 0
  %or.cond.i.i.i = select i1 %i.ho, i1 %i.hq, i1 false
  br i1 %or.cond.i.i.i, label %bb.cj, label %bb.ck

bb.ci:                                            ; preds = %bb.cg
  %.old.i.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8, !tbaa !93
  %.old1.i.i.i = icmp sgt i32 %.old.i.i.i, 0
  br i1 %.old1.i.i.i, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.hr = load i8, ptr %i.fo, align 8, !tbaa !94
  %i.hs = zext i8 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr @ftp_state_names, i64 %i.hs
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !27
  call void (ptr, ptr, ...) @Curl_trc_ftp(ptr noundef nonnull %0, ptr noundef nonnull @.str.99, ptr noundef %i.hu) #10
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch, %bb.cf
  %i.hv = load ptr, ptr %i.c, align 8, !tbaa !95
  call void @Curl_conn_cf_discard_all(ptr noundef nonnull %0, ptr noundef %i.hv, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %ftp_regular_transfer.exit

bb.cl:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.hw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !87
  %.not13.i.i = icmp eq i32 %i.hx, 0
  br i1 %.not13.i.i, label %bb.cn, label %bb.cm

.thread14.i.i:                                    ; preds = %bb.cd
  %i.hy = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !87
  %.not1315.i.i = icmp eq i32 %i.hz, 0
  br i1 %.not1315.i.i, label %.thread16.i.i, label %bb.cm

bb.cm:                                            ; preds = %.thread14.i.i, %bb.cl
  call void @Curl_xfer_setup_nop(ptr noundef nonnull %0) #10
  br label %bb.cn

.thread16.i.i:                                    ; preds = %.thread14.i.i
  %i.ia = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 720 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 8
  %i.id = or i32 %i.ic, 64
  store i32 %i.id, ptr %i.ib, align 8
  br label %bb.cn

bb.cn:                                            ; preds = %.thread16.i.i, %bb.cm, %bb.cl
  %i.ie = load i8, ptr %i.i, align 1
  %i.if = or i8 %i.ie, 4
  store i8 %i.if, ptr %i.i, align 1
  br label %ftp_regular_transfer.exit

ftp_perform.exit.thread.i:                        ; preds = %ftp_perform.exit.i, %bb.bl
  %.0.i23.i = phi i32 [ %i.fn, %ftp_perform.exit.i ], [ %i.fm, %bb.bl ]
  %i.ig = load ptr, ptr @Curl_cfree, align 8, !tbaa !26
  %i.ih = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !109
  call void %i.ig(ptr noundef %i.ii) #10, !inline_history !150
  store ptr null, ptr %i.ih, align 8, !tbaa !109
  %i.ij = getelementptr inbounds nuw i8, ptr %i.e, i64 244
  store i16 0, ptr %i.ij, align 4, !tbaa !110
  %i.ik = load ptr, ptr @Curl_cfree, align 8, !tbaa !26
  %i.il = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !111
  call void %i.ik(ptr noundef %i.im) #10, !inline_history !150
  %i.in = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.in, i8 0, i64 16, i1 false)
  br label %ftp_regular_transfer.exit

ftp_regular_transfer.exit:                        ; preds = %ftp_perform.exit.thread.i, %bb.cn, %bb.ck, %bb.cc, %.thread, %bb.bd, %bb.bc, %wc_statemach.exit, %wc_statemach.exit, %bb.a
  %.1 = phi i32 [ 2, %bb.a ], [ 0, %wc_statemach.exit ], [ %i.ep, %bb.bd ], [ %.5.i, %bb.bc ], [ %.033.ph, %.thread ], [ 0, %wc_statemach.exit ], [ %.0.i23.i, %ftp_perform.exit.thread.i ], [ 0, %bb.cc ], [ 0, %bb.cn ], [ %i.hh, %bb.ck ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @ftp_done(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = tail call ptr @Curl_meta_get(ptr noundef %0, ptr noundef nonnull @.str.1) #10 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.h = tail call ptr @Curl_conn_meta_get(ptr noundef %i.g, ptr noundef nonnull @.str) #10 ; 25 uses
  %i.i = icmp ne ptr %i.e, null
  %i.j = icmp ne ptr %i.h, null
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %bb.bv

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !95
  switch i32 %1, label %bb.d [
    i32 36, label %bb.c
    i32 13, label %bb.c
    i32 30, label %bb.c
    i32 10, label %bb.c
    i32 12, label %bb.c
    i32 17, label %bb.c
    i32 19, label %bb.c
    i32 18, label %bb.c
    i32 25, label %bb.c
    i32 9, label %bb.c
    i32 63, label %bb.c
    i32 78, label %bb.c
    i32 23, label %bb.c
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br i1 %2, label %bb.d, label %ftp_done_status.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 251 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1
  %i.n = and i8 %i.m, -21
  %i.o = or disjoint i8 %i.n, 16
  store i8 %i.o, ptr %i.l, align 1
  tail call void @Curl_conncontrol(ptr noundef %i.k, i32 noundef 1) #10
  br label %ftp_done_status.exit

ftp_done_status.exit:                             ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %1, %bb.d ], [ 0, %bb.c ]     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4628 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 64
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %ftp_done_wildcard.exit, label %bb.e

bb.e:                                             ; preds = %ftp_done_status.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2016 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !105
  %.not9.i = icmp eq ptr %i.t, null
  br i1 %.not9.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 176 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !112
  %.not10.i = icmp eq ptr %i.v, null
  br i1 %.not10.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @Curl_set_in_callback(ptr noundef nonnull %0, i1 noundef zeroext true) #10
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !105
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !104
  %i.z = tail call i64 %i.w(ptr noundef %i.y) #10, !inline_history !171 ; 0 uses
  tail call void @Curl_set_in_callback(ptr noundef nonnull %0, i1 noundef zeroext false) #10
  %i.aa = load ptr, ptr @Curl_cfree, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 192 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !109
  tail call void %i.aa(ptr noundef %i.ac) #10, !inline_history !172
  store ptr null, ptr %i.ab, align 8, !tbaa !109
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 244
  store i16 0, ptr %i.ad, align 4, !tbaa !110
  %i.ae = load ptr, ptr @Curl_cfree, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !111
  tail call void %i.ae(ptr noundef %i.ag) #10, !inline_history !172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  store i64 -1, ptr %i.ah, align 8, !tbaa !89
  br label %ftp_done_wildcard.exit

ftp_done_wildcard.exit:                           ; preds = %ftp_done_status.exit, %bb.h
  %.not.i61 = icmp eq i32 %.0.i, 0
  br i1 %.not.i61, label %bb.i, label %ftp_done_path.exit.thread

bb.i:                                             ; preds = %ftp_done_wildcard.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !111 ; 4 uses
  %.not32.i = icmp eq ptr %i.aj, null
  br i1 %.not32.i, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !102
  %i.am = icmp eq i8 %i.al, 2
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = load i8, ptr %i.aj, align 1, !tbaa !11
  %i.ao = icmp eq i8 %i.an, 47
  br i1 %i.ao, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ap = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #9
  %i.aq = load ptr, ptr @Curl_cfree, align 8, !tbaa !26
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 200 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !113
  tail call void %i.aq(ptr noundef %i.as) #10, !inline_history !173
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 251
  %i.au = load i8, ptr %i.at, align 1
  %i.av = and i8 %i.au, 16
  %.not33.i = icmp eq i8 %i.av, 0
  br i1 %.not33.i, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.aw = load i8, ptr %i.ak, align 8, !tbaa !102
  %i.ax = icmp eq i8 %i.aw, 2
  br i1 %i.ax, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !112 ; 2 uses
  %.not34.i = icmp eq ptr %i.az, null
  br i1 %.not34.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bb = phi i64 [ %i.ba, %bb.o ], [ 0, %bb.n ]
  %i.bc = sub i64 %i.ap, %i.bb
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.0.i62 = phi i64 [ %i.bc, %bb.p ], [ 0, %bb.m ]
  %i.bd = tail call ptr @curlx_memdup0(ptr noundef nonnull %i.aj, i64 noundef %.0.i62) #10
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %storemerge.i = phi ptr [ %i.bd, %bb.q ], [ null, %bb.l ]
  store ptr %storemerge.i, ptr %i.ar, align 8, !tbaa !113
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.k, %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !113 ; 2 uses
  %.not87 = icmp eq ptr %i.bf, null
  br i1 %.not87, label %ftp_done_path.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.bh = load i64, ptr %i.bg, align 1
  %i.bi = and i64 %i.bh, 536870912
  %.not35.i = icmp eq i64 %i.bi, 0
  br i1 %.not35.i, label %ftp_done_path.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !91 ; 2 uses
  %.not36.i = icmp eq ptr %i.bk, null
  br i1 %.not36.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !93
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %bb.w, label %ftp_done_path.exit

bb.w:                                             ; preds = %bb.v, %bb.u
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.101, ptr noundef nonnull %i.bf) #10
  br label %ftp_done_path.exit

ftp_done_path.exit:                               ; preds = %bb.s, %bb.t, %bb.v, %bb.w
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !95  ; 2 uses
  %i.bp = tail call zeroext i1 @Curl_conn_is_setup(ptr noundef %i.bo, i32 noundef 1) #10
  br i1 %i.bp, label %bb.x, label %ftp_done_secondary_socket.exit.thread111

ftp_done_secondary_socket.exit.thread111:         ; preds = %ftp_done_path.exit
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  br label %bb.af

ftp_done_path.exit.thread:                        ; preds = %ftp_done_wildcard.exit
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 251 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = and i8 %i.bt, -5
  store i8 %i.bu, ptr %i.bs, align 1
  tail call void @Curl_conncontrol(ptr noundef %i.br, i32 noundef 1) #10
  %i.bv = load ptr, ptr @Curl_cfree, align 8, !tbaa !26
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 200 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !113
  tail call void %i.bv(ptr noundef %i.bx) #10, !inline_history !173
  store ptr null, ptr %i.bw, align 8, !tbaa !113
  %i.by = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.bz = tail call zeroext i1 @Curl_conn_is_setup(ptr noundef %i.by, i32 noundef 1) #10
  br i1 %i.bz, label %.thread, label %ftp_done_secondary_socket.exit.thread

ftp_done_secondary_socket.exit.thread:            ; preds = %ftp_done_path.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  br label %ftp_done_control_reply.exit.thread

bb.x:                                             ; preds = %ftp_done_path.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 251 ; 3 uses
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = and i8 %i.cb, 2
  %.not18.i = icmp eq i8 %i.cc, 0
  br i1 %.not18.i, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !114
  %i.cf = icmp sgt i64 %i.ce, 0
  br i1 %i.cf, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.cg = tail call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.102) #10 ; 3 uses
  %.not19.i = icmp eq i32 %i.cg, 0
  br i1 %.not19.i, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ch = tail call ptr @curl_easy_strerror(i32 noundef %i.cg) #10
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.103, ptr noundef %i.ch) #10
  %i.ci = load i8, ptr %i.ca, align 1
  %i.cj = and i8 %i.ci, -5
  store i8 %i.cj, ptr %i.ca, align 1
  tail call void @Curl_conncontrol(ptr noundef %i.bo, i32 noundef 1) #10
  br label %.thread

.thread:                                          ; preds = %ftp_done_path.exit.thread, %bb.aa, %bb.z, %bb.y, %bb.x
  %.0.i64 = phi i32 [ %.0.i, %ftp_done_path.exit.thread ], [ %i.cg, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.x ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.cl = load i64, ptr %i.ck, align 1
  %i.cm = and i64 %i.cl, 536870912
  %.not12.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not12.i.i, label %ftp_done_secondary_socket.exit, label %bb.ab

bb.ab:                                            ; preds = %.thread
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !91 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.co, null
  br i1 %.not13.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !93
  %i.cr = icmp sgt i32 %i.cq, 0
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8
  %i.ct = icmp sgt i32 %i.cs, 0
  %or.cond.i.i = select i1 %i.cr, i1 %i.ct, i1 false
  br i1 %or.cond.i.i, label %bb.ae, label %ftp_done_secondary_socket.exit

bb.ad:                                            ; preds = %bb.ab
  %.old.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8, !tbaa !93
  %.old1.i.i = icmp sgt i32 %.old.i.i, 0
  br i1 %.old1.i.i, label %bb.ae, label %ftp_done_secondary_socket.exit

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !94
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr @ftp_state_names, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !27
  tail call void (ptr, ptr, ...) @Curl_trc_ftp(ptr noundef nonnull %0, ptr noundef nonnull @.str.99, ptr noundef %i.cy) #10
  br label %ftp_done_secondary_socket.exit

ftp_done_secondary_socket.exit:                   ; preds = %.thread, %bb.ac, %bb.ad, %bb.ae
  %i.cz = load ptr, ptr %i.f, align 8, !tbaa !95
  tail call void @Curl_conn_cf_discard_all(ptr noundef nonnull %0, ptr noundef %i.cz, i32 noundef 1) #10
  %i.da = load ptr, ptr %i.f, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %.not.i65 = icmp eq i32 %.0.i64, 0
  br i1 %.not.i65, label %bb.af, label %ftp_done_control_reply.exit.thread

bb.af:                                            ; preds = %ftp_done_secondary_socket.exit.thread111, %ftp_done_secondary_socket.exit
  %i.db = phi ptr [ %i.bq, %ftp_done_secondary_socket.exit.thread111 ], [ %i.da, %ftp_done_secondary_socket.exit ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !87
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.ag, label %ftp_done_control_reply.exit

bb.ag:                                            ; preds = %bb.af
  %i.df = getelementptr inbounds nuw i8, ptr %i.h, i64 251 ; 4 uses
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = and i8 %i.dg, 4
  %.not37.i = icmp eq i8 %i.dh, 0
  br i1 %.not37.i, label %ftp_done_control_reply.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.di = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.dj = load i8, ptr %i.di, align 8
  %i.dk = and i8 %i.dj, 2
  %i.dl = icmp eq i8 %i.dk, 0
  %or.cond.i67 = or i1 %2, %i.dl
  br i1 %or.cond.i67, label %ftp_done_control_reply.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.dn = tail call ptr @Curl_pgrs_now(ptr noundef nonnull %0) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 16, i1 false), !tbaa.struct !175
  %i.do = call fastcc i32 @getftpresponse(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef %i.d) ; 3 uses
  %i.dp = load i64, ptr %i.c, align 8, !tbaa !115
  %i.dq = icmp eq i64 %i.dp, 0
  %i.dr = icmp eq i32 %i.do, 28
  %or.cond3.i = select i1 %i.dq, i1 %i.dr, i1 false
  br i1 %or.cond3.i, label %.thread.i, label %bb.aj

.thread.i:                                        ; preds = %bb.ai
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.104) #10
  %i.ds = load i8, ptr %i.df, align 1
  %i.dt = and i8 %i.ds, -5
  store i8 %i.dt, ptr %i.df, align 1
  tail call void @Curl_conncontrol(ptr noundef %i.db, i32 noundef 1) #10
  br label %ftp_done_control_reply.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %.not38.i = icmp eq i32 %i.do, 0
  br i1 %.not38.i, label %bb.ak, label %ftp_done_control_reply.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.du = load i8, ptr %i.df, align 1
  %i.dv = and i8 %i.du, 2
  %.not39.i = icmp eq i8 %i.dv, 0
  br i1 %.not39.i, label %bb.ar, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !114
  %i.dy = icmp sgt i64 %i.dx, 0
  br i1 %i.dy, label %bb.am, label %ftp_done_control_reply.exit.thread114

bb.am:                                            ; preds = %bb.al
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.ea = load i64, ptr %i.dz, align 1
  %i.eb = and i64 %i.ea, 536870912
  %.not42.i = icmp eq i64 %i.eb, 0
  br i1 %.not42.i, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !91 ; 2 uses
  %.not43.i = icmp eq ptr %i.ed, null
  br i1 %.not43.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !93
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %bb.an
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.105) #10
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.am
  tail call void @Curl_conncontrol(ptr noundef %i.db, i32 noundef 1) #10
  br label %ftp_done_control_reply.exit.thread114

bb.ar:                                            ; preds = %bb.ak
  %i.eh = load i32, ptr %i.d, align 4, !tbaa !12  ; 2 uses
  switch i32 %i.eh, label %bb.at [
    i32 226, label %ftp_done_control_reply.exit.thread114
    i32 250, label %ftp_done_control_reply.exit.thread114
    i32 552, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.106) #10
  br label %ftp_done_control_reply.exit.thread

bb.at:                                            ; preds = %bb.ar
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.107, i32 noundef %i.eh) #10
  br label %ftp_done_control_reply.exit.thread

ftp_done_control_reply.exit.thread:               ; preds = %bb.aj, %ftp_done_secondary_socket.exit, %.thread.i, %bb.at, %bb.as, %ftp_done_secondary_socket.exit.thread
  %.0.i66.ph = phi i32 [ %.0.i, %ftp_done_secondary_socket.exit.thread ], [ 70, %bb.as ], [ 18, %bb.at ], [ 28, %.thread.i ], [ %.0.i64, %ftp_done_secondary_socket.exit ], [ %i.do, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %ftp_done_check_partial.exit

ftp_done_control_reply.exit.thread114:            ; preds = %bb.al, %bb.aq, %bb.ar, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.au

ftp_done_control_reply.exit:                      ; preds = %bb.af, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br i1 %2, label %ftp_done_check_partial.exit, label %bb.au

bb.au:                                            ; preds = %ftp_done_control_reply.exit.thread114, %ftp_done_control_reply.exit
  %i.ei = load i32, ptr %i.p, align 4             ; 2 uses
  %i.ej = and i32 %i.ei, 32768
  %.not.i69 = icmp eq i32 %i.ej, 0
  br i1 %.not.i69, label %bb.bb, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ek = load i32, ptr %i.dc, align 8, !tbaa !87
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.aw, label %ftp_done_check_partial.exit

bb.aw:                                            ; preds = %bb.av
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 4152
  %i.en = load i64, ptr %i.em, align 8, !tbaa !116 ; 4 uses
  %.not37.i71 = icmp eq i64 %i.en, -1
  br i1 %.not37.i71, label %ftp_done_check_partial.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.ep = load i64, ptr %i.eo, align 1
  %i.eq = and i64 %i.ep, 256
  %.not38.i72 = icmp eq i64 %i.eq, 0
  %i.er = and i32 %i.ei, 4096
  %.not39.i73 = icmp eq i32 %i.er, 0
  %or.cond43.i = and i1 %.not39.i73, %.not38.i72
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.et = load i64, ptr %i.es, align 8, !tbaa !176 ; 3 uses
  br i1 %or.cond43.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %.not40.i = icmp eq i64 %i.en, %i.et
  br i1 %.not40.i, label %ftp_done_check_partial.exit, label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.eu = icmp sgt i64 %i.en, %i.et
  br i1 %i.eu, label %bb.ba, label %ftp_done_check_partial.exit

bb.ba:                                            ; preds = %bb.az, %bb.ay
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.113, i64 noundef %i.et, i64 noundef %i.en) #10
  br label %ftp_done_check_partial.exit

bb.bb:                                            ; preds = %bb.au
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !106 ; 3 uses
  %.not32.i74 = icmp eq i64 %i.ew, -1
  br i1 %.not32.i74, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !177 ; 3 uses
  %.not33.i75 = icmp eq i64 %i.ew, %i.ey
  br i1 %.not33.i75, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !114
  %.not34.i76 = icmp eq i64 %i.fa, %i.ey
  br i1 %.not34.i76, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.114, i64 noundef %i.ey) #10
  br label %ftp_done_check_partial.exit

bb.bf:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.fb = getelementptr inbounds nuw i8, ptr %i.h, i64 251
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = and i8 %i.fc, 2
  %.not35.i77 = icmp eq i8 %i.fd, 0
  br i1 %.not35.i77, label %bb.bg, label %ftp_done_check_partial.exit

bb.bg:                                            ; preds = %bb.bf
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !177
  %.not36.i78 = icmp eq i64 %i.ff, 0
  %i.fg = icmp sgt i64 %i.ew, 0
  %or.cond45.i = and i1 %i.fg, %.not36.i78
  br i1 %or.cond45.i, label %bb.bh, label %ftp_done_check_partial.exit

bb.bh:                                            ; preds = %bb.bg
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.115) #10
  br label %ftp_done_check_partial.exit

ftp_done_check_partial.exit:                      ; preds = %ftp_done_control_reply.exit.thread, %ftp_done_control_reply.exit, %bb.av, %bb.aw, %bb.ay, %bb.az, %bb.ba, %bb.be, %bb.bf, %bb.bg, %bb.bh
  %.0.i70 = phi i32 [ 0, %ftp_done_control_reply.exit ], [ 18, %bb.ba ], [ 0, %bb.az ], [ 0, %bb.ay ], [ 0, %bb.aw ], [ 0, %bb.av ], [ 18, %bb.be ], [ 0, %bb.bf ], [ 0, %bb.bg ], [ 19, %bb.bh ], [ %.0.i66.ph, %ftp_done_control_reply.exit.thread ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 0, ptr %i.fh, align 8, !tbaa !87
  %i.fi = getelementptr inbounds nuw i8, ptr %i.h, i64 251 ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = and i8 %i.fj, -3
  store i8 %i.fk, ptr %i.fi, align 1
  %i.fl = icmp ne i32 %1, 0
  %i.fm = icmp ne i32 %.0.i70, 0
  %or.cond3 = select i1 %i.fl, i1 true, i1 %i.fm
  %or.cond5 = or i1 %2, %or.cond3
  br i1 %or.cond5, label %ftp_sendquote.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %ftp_done_check_partial.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !178 ; 2 uses
  %.not = icmp eq ptr %i.fo, null
  br i1 %.not, label %ftp_sendquote.exit.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fp = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bq, %bb.bj
  %.02538.i = phi ptr [ %i.fo, %bb.bj ], [ %i.fz, %bb.bq ] ; 2 uses
  %i.fq = load ptr, ptr %.02538.i, align 8, !tbaa !118 ; 4 uses
  %.not29.i = icmp eq ptr %i.fq, null
  br i1 %.not29.i, label %bb.bq, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !11
  %i.fs = icmp ne i8 %i.fr, 42                    ; 2 uses
  %not..i = xor i1 %i.fs, true
  %spec.select.idx.i = zext i1 %not..i to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 %spec.select.idx.i
  %i.ft = tail call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef %0, ptr noundef nonnull %i.h, ptr noundef nonnull @.str.55, ptr noundef nonnull %spec.select.i) #10 ; 2 uses
  %.not30.i = icmp eq i32 %i.ft, 0
  br i1 %.not30.i, label %bb.bm, label %.thread34.i

bb.bm:                                            ; preds = %bb.bl
  %i.fu = tail call ptr @Curl_pgrs_now(ptr noundef %0) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %i.fu, i64 16, i1 false), !tbaa.struct !175
  %i.fv = call fastcc i32 @getftpresponse(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  %.not31.i = icmp eq i32 %i.fv, 0
  br i1 %.not31.i, label %bb.bn, label %.thread34.i

bb.bn:                                            ; preds = %bb.bm
  %i.fw = load i32, ptr %i.b, align 4
  %i.fx = icmp sgt i32 %i.fw, 399
  %or.cond.i79 = select i1 %i.fs, i1 %i.fx, i1 false
  br i1 %or.cond.i79, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.116, ptr noundef nonnull %i.fq) #10
  br label %.thread34.i

.thread34.i:                                      ; preds = %bb.bm, %bb.bl, %bb.bo
  %.1.ph.i = phi i32 [ 21, %bb.bo ], [ %i.fv, %bb.bm ], [ %i.ft, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %ftp_sendquote.exit

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bk
  %i.fy = getelementptr inbounds nuw i8, ptr %.02538.i, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !119 ; 2 uses
  %.not28.i = icmp eq ptr %i.fz, null
  br i1 %.not28.i, label %ftp_sendquote.exit, label %bb.bk, !llvm.loop !174

ftp_sendquote.exit:                               ; preds = %bb.bq, %.thread34.i
  %.0 = phi i32 [ %.1.ph.i, %.thread34.i ], [ 0, %bb.bq ] ; 2 uses
  %.not58 = icmp eq ptr %0, null
  br i1 %.not58, label %bb.bv, label %ftp_sendquote.exit.thread

ftp_sendquote.exit.thread:                        ; preds = %bb.bi, %ftp_done_check_partial.exit, %ftp_sendquote.exit
  %.086 = phi i32 [ %.0, %ftp_sendquote.exit ], [ 0, %bb.bi ], [ %.0.i70, %ftp_done_check_partial.exit ] ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.gb = load i64, ptr %i.ga, align 1
  %i.gc = and i64 %i.gb, 536870912
  %.not59 = icmp eq i64 %i.gc, 0
  br i1 %.not59, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %ftp_sendquote.exit.thread
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !91 ; 2 uses
  %.not60 = icmp eq ptr %i.ge, null
  br i1 %.not60, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !93
  %i.gh = icmp sgt i32 %i.gg, 0
  %i.gi = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8
  %i.gj = icmp sgt i32 %i.gi, 0
  %or.cond7 = select i1 %i.gh, i1 %i.gj, i1 false
  br i1 %or.cond7, label %bb.bu, label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8, !tbaa !93
  %.old6 = icmp sgt i32 %.old, 0
  br i1 %.old6, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %i.gk = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  %i.gl = load i8, ptr %i.gk, align 8, !tbaa !94
  %i.gm = zext i8 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr @ftp_state_names, i64 %i.gm
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !27
  tail call void (ptr, ptr, ...) @Curl_trc_ftp(ptr noundef nonnull %0, ptr noundef nonnull @.str.100, ptr noundef %i.go, i32 noundef %.086) #10
  br label %bb.bv

bb.bv:                                            ; preds = %ftp_sendquote.exit, %ftp_sendquote.exit.thread, %bb.bs, %bb.bt, %bb.bu, %bb.a
end_hunk_0
