Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/ftp?download=true
inline.NumInlined: 120
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ftp_done:bb.a
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
  br i1 %i.dy, label %bb.am, label %ftp_done_control_reply.exit

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
  br label %ftp_done_control_reply.exit

bb.ar:                                            ; preds = %bb.ak
  %i.eh = load i32, ptr %i.d, align 4, !tbaa !12  ; 2 uses
  switch i32 %i.eh, label %bb.at [
    i32 226, label %ftp_done_control_reply.exit
    i32 250, label %ftp_done_control_reply.exit
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

ftp_done_control_reply.exit:                      ; preds = %bb.af, %bb.ag, %bb.ah, %bb.al, %bb.aq, %bb.ar, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br i1 %2, label %ftp_done_check_partial.exit, label %bb.au

bb.au:                                            ; preds = %ftp_done_control_reply.exit
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
  %3 = or i32 %.0.i70, %1
  %i.fl = icmp ne i32 %3, 0
  %or.cond5 = or i1 %2, %i.fl
  br i1 %or.cond5, label %ftp_sendquote.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %ftp_done_check_partial.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !178 ; 2 uses
  %.not = icmp eq ptr %i.fn, null
  br i1 %.not, label %ftp_sendquote.exit.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fo = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bq, %bb.bj
  %.02538.i = phi ptr [ %i.fn, %bb.bj ], [ %i.fy, %bb.bq ] ; 2 uses
  %i.fp = load ptr, ptr %.02538.i, align 8, !tbaa !118 ; 4 uses
  %.not29.i = icmp eq ptr %i.fp, null
  br i1 %.not29.i, label %bb.bq, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !11
  %i.fr = icmp ne i8 %i.fq, 42                    ; 2 uses
  %not..i = xor i1 %i.fr, true
  %spec.select.idx.i = zext i1 %not..i to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 %spec.select.idx.i
  %i.fs = tail call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef %0, ptr noundef nonnull %i.h, ptr noundef nonnull @.str.55, ptr noundef nonnull %spec.select.i) #10 ; 2 uses
  %.not30.i = icmp eq i32 %i.fs, 0
  br i1 %.not30.i, label %bb.bm, label %.thread34.i

bb.bm:                                            ; preds = %bb.bl
  %i.ft = tail call ptr @Curl_pgrs_now(ptr noundef %0) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %i.ft, i64 16, i1 false), !tbaa.struct !175
  %i.fu = call fastcc i32 @getftpresponse(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  %.not31.i = icmp eq i32 %i.fu, 0
  br i1 %.not31.i, label %bb.bn, label %.thread34.i

bb.bn:                                            ; preds = %bb.bm
  %i.fv = load i32, ptr %i.b, align 4
  %i.fw = icmp sgt i32 %i.fv, 399
  %or.cond.i79 = select i1 %i.fr, i1 %i.fw, i1 false
  br i1 %or.cond.i79, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.116, ptr noundef nonnull %i.fp) #10
  br label %.thread34.i

.thread34.i:                                      ; preds = %bb.bm, %bb.bl, %bb.bo
  %.1.ph.i = phi i32 [ 21, %bb.bo ], [ %i.fu, %bb.bm ], [ %i.fs, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %ftp_sendquote.exit

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bk
  %i.fx = getelementptr inbounds nuw i8, ptr %.02538.i, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !119 ; 2 uses
  %.not28.i = icmp eq ptr %i.fy, null
  br i1 %.not28.i, label %ftp_sendquote.exit, label %bb.bk, !llvm.loop !174

ftp_sendquote.exit:                               ; preds = %bb.bq, %.thread34.i
  %.0 = phi i32 [ %.1.ph.i, %.thread34.i ], [ 0, %bb.bq ] ; 2 uses
  %.not58 = icmp eq ptr %0, null
  br i1 %.not58, label %bb.bv, label %ftp_sendquote.exit.thread

ftp_sendquote.exit.thread:                        ; preds = %bb.bi, %ftp_done_check_partial.exit, %ftp_sendquote.exit
  %.086 = phi i32 [ %.0, %ftp_sendquote.exit ], [ 0, %bb.bi ], [ %.0.i70, %ftp_done_check_partial.exit ] ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.ga = load i64, ptr %i.fz, align 1
  %i.gb = and i64 %i.ga, 536870912
  %.not59 = icmp eq i64 %i.gb, 0
  br i1 %.not59, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %ftp_sendquote.exit.thread
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !91 ; 2 uses
  %.not60 = icmp eq ptr %i.gd, null
  br i1 %.not60, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !93
  %i.gg = icmp sgt i32 %i.gf, 0
  %i.gh = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8
  %i.gi = icmp sgt i32 %i.gh, 0
  %or.cond7 = select i1 %i.gg, i1 %i.gi, i1 false
  br i1 %or.cond7, label %bb.bu, label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8, !tbaa !93
  %.old6 = icmp sgt i32 %.old, 0
  br i1 %.old6, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %i.gj = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  %i.gk = load i8, ptr %i.gj, align 8, !tbaa !94
  %i.gl = zext i8 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr @ftp_state_names, i64 %i.gl
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !27
  tail call void (ptr, ptr, ...) @Curl_trc_ftp(ptr noundef nonnull %0, ptr noundef nonnull @.str.100, ptr noundef %i.gn, i32 noundef %.086) #10
  br label %bb.bv

bb.bv:                                            ; preds = %ftp_sendquote.exit, %ftp_sendquote.exit.thread, %bb.bs, %bb.bt, %bb.bu, %bb.a
  %.051 = phi i32 [ 0, %bb.a ], [ %.086, %bb.bu ], [ %.086, %bb.bt ], [ %.086, %bb.bs ], [ %.086, %ftp_sendquote.exit.thread ], [ %.0, %ftp_sendquote.exit ]
  ret i32 %.051
}

; Function Attrs: nounwind uwtable
define internal i32 @ftp_do_more(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #3 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 3 uses
  %i.e = tail call ptr @Curl_conn_meta_get(ptr noundef %i.d, ptr noundef nonnull @.str) #10 ; 18 uses
  %i.f = tail call ptr @Curl_meta_get(ptr noundef %0, ptr noundef nonnull @.str.1) #10 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i8 0, ptr %i.a, align 1, !tbaa !97
  %i.g = icmp ne ptr %i.e, null
  %i.h = icmp ne ptr %i.f, null
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %.thread155

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !180
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call zeroext i1 @Curl_conn_is_tcp_listen(ptr noundef nonnull %0, i32 noundef 1) #10 ; 2 uses
  %i.l = call i32 @Curl_conn_connect(ptr noundef nonnull %0, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull %i.a) #10 ; 4 uses
  switch i32 %i.l, label %bb.f [
    i32 27, label %.thread155
    i32 0, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.a, align 1, !tbaa !97, !range !107, !noundef !108
  %i.n = trunc nuw i8 %i.m to i1
  %or.cond4 = select i1 %i.n, i1 true, i1 %i.k
  br i1 %or.cond4, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = call zeroext i1 @Curl_conn_is_ip_connected(ptr noundef nonnull %0, i32 noundef 1) #10
  br i1 %i.o, label %bb.i, label %.thread155

bb.f:                                             ; preds = %bb.c
  br i1 %i.k, label %.thread155, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %i.q = load i32, ptr %i.p, align 8, !tbaa !121
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %.thread155

bb.h:                                             ; preds = %bb.g
  store i32 -1, ptr %1, align 4, !tbaa !12
  %i.s = call fastcc i32 @ftp_epsv_disable(ptr noundef nonnull %0, ptr noundef %i.e, ptr noundef nonnull %i.d)
  br label %.thread155

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 248 ; 5 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !94
  %.not129 = icmp eq i8 %i.u, 0
  br i1 %.not129, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = call i32 @Curl_pp_statemach(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i1 noundef zeroext false, i1 noundef zeroext false) #10 ; 2 uses
  %i.w = load i8, ptr %i.t, align 8, !tbaa !94
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %1, align 4, !tbaa !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not130 = icmp eq i32 %i.v, 0
  br i1 %.not130, label %bb.m, label %.thread155

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 251
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = and i8 %i.z, 32
  %.not131 = icmp eq i8 %i.aa, 0
  br i1 %.not131, label %.thread155, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !87
end_hunk_0
