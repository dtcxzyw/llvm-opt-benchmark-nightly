Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/smtp?download=true
inline.NumInlined: 53
inline.NumDeleted: 25
begin_hunk_0_@cr_eob_read:bb.a
  store i8 %i.ca, ptr %i.f, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.cc = call zeroext i1 @Curl_bufq_is_empty(ptr noundef nonnull %i.cb) #7
  br i1 %i.cc, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cd = call i32 @Curl_bufq_cread(ptr noundef nonnull %i.cb, ptr noundef %2, i64 noundef %3, ptr noundef %4) #7
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  store i64 0, ptr %4, align 8, !tbaa !121
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.4 = phi i32 [ 0, %bb.ah ], [ %i.cd, %bb.ag ]
  %i.ce = load i8, ptr %i.f, align 8              ; 2 uses
  %i.cf = and i8 %i.ce, 1
  %.not133 = icmp eq i8 %i.cf, 0
  br i1 %.not133, label %bb.ar, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cg = call zeroext i1 @Curl_bufq_is_empty(ptr noundef nonnull %i.cb) #7
  br i1 %i.cg, label %bb.ak, label %._crit_edge148

._crit_edge148:                                   ; preds = %bb.aj
  %.pre149 = load i8, ptr %i.f, align 8
  br label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  %.not134 = icmp eq ptr %0, null
  br i1 %.not134, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.ci = load i64, ptr %i.ch, align 1
  %i.cj = and i64 %i.ci, 536870912
  %.not135 = icmp eq i64 %i.cj, 0
  br i1 %.not135, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !74 ; 2 uses
  %.not136 = icmp eq ptr %i.cl, null
  br i1 %.not136, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !76
  %i.co = icmp sgt i32 %i.cn, 0
  %i.cp = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8
  %i.cq = icmp sgt i32 %i.cp, 0
  %or.cond7 = select i1 %i.co, i1 %i.cq, i1 false
  br i1 %or.cond7, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %.old5 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8, !tbaa !76
  %.old6 = icmp sgt i32 %.old5, 0
  br i1 %.old6, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.an, %bb.ao
  call void (ptr, ptr, ...) @Curl_trc_smtp(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #7
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.al, %bb.ak
  %i.cr = load i8, ptr %i.f, align 8
  %i.cs = or i8 %i.cr, 4                          ; 2 uses
  store i8 %i.cs, ptr %i.f, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge148, %bb.aq, %bb.ai
  %i.ct = phi i8 [ %.pre149, %._crit_edge148 ], [ %i.cs, %bb.aq ], [ %i.ce, %bb.ai ]
  %i.cu = lshr i8 %i.ct, 2
  %.lobit = and i8 %i.cu, 1
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.m, %bb.ar
  %.lobit.sink = phi i8 [ %.lobit, %bb.ar ], [ 0, %bb.m ]
  %.199.ph = phi i32 [ %.4, %bb.ar ], [ 0, %bb.m ]
  store i8 %.lobit.sink, ptr %5, align 1, !tbaa !79
  br label %.critedge

.critedge:                                        ; preds = %bb.p, %bb.o, %.critedge.sink.split, %bb.ad, %bb.v, %bb.i
  %.199 = phi i32 [ %i.bh, %bb.v ], [ %i.by, %bb.ad ], [ %.199.ph, %.critedge.sink.split ], [ %i.m, %bb.i ], [ %i.ao, %bb.p ], [ %i.an, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.199
}

; Function Attrs: nounwind uwtable
define internal void @cr_eob_close(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @Curl_bufq_free(ptr noundef nonnull %i.c) #7
  ret void
}

declare zeroext i1 @Curl_creader_def_needs_rewind(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @cr_eob_total_length(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #5 {
bb.a:
  ret i64 -1
}

declare i32 @Curl_creader_def_resume_from(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @Curl_creader_def_cntrl(ptr noundef, ptr noundef, i32 noundef) #2

declare zeroext i1 @Curl_creader_def_is_paused(ptr noundef, ptr noundef) #2

declare void @Curl_creader_def_done(ptr noundef, ptr noundef, i32 noundef) #2

declare void @Curl_bufq_init2(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Curl_bufq_is_empty(ptr noundef) local_unnamed_addr #2

declare i32 @Curl_creader_read(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @Curl_bufq_cwrite(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_bufq_cread(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @Curl_bufq_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare void @Curl_xfer_setup_nop(ptr noundef) local_unnamed_addr #2

declare void @Curl_conncontrol(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Curl_pp_statemach(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @smtp_pp_statemachine(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.f = tail call ptr @Curl_conn_meta_get(ptr noundef %1, ptr noundef nonnull @.str) #7 ; 25 uses
  %i.g = tail call ptr @Curl_meta_get(ptr noundef %0, ptr noundef nonnull @.str.1) #7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store i64 0, ptr %i.e, align 8, !tbaa !121
  %i.h = icmp ne ptr %i.f, null
  %i.i = icmp ne ptr %i.g, null
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond, label %.preheader192, label %.critedge

.preheader192:                                    ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 184 ; 19 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 200 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 176 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 180 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 13 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4640
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 3 uses
  %i.v = getelementptr i8, ptr %i.g, i64 16       ; 6 uses
  %i.w = icmp ne ptr %0, null                     ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 120 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 417
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2180 ; 4 uses
  %.pre = load i32, ptr %i.j, align 8, !tbaa !106
  %i.ad = icmp eq i32 %.pre, 5
  br i1 %i.ad, label %.backedge, label %bb.m

.backedge:                                        ; preds = %thread-pre-split173, %smtp_state_starttls_resp.exit.thread170, %.preheader192
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !77  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i8 0, ptr %i.c, align 1, !tbaa !79
  %i.af = call zeroext i1 @Curl_conn_is_ssl(ptr noundef %i.ae, i32 noundef 0) #7
  br i1 %i.af, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.backedge
  %i.ag = call ptr @Curl_conn_get_origin(ptr noundef %i.ae, i32 noundef 0) #7
  %i.ah = call i32 @Curl_ssl_cfilter_add(ptr noundef nonnull %0, ptr noundef %i.ag, ptr noundef %i.ae, i32 noundef 0) #7 ; 2 uses
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.c, label %smtp_perform_upgrade_tls.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 728
  store ptr @Curl_scheme_smtps, ptr %i.ai, align 8, !tbaa !145
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.backedge
  %i.aj = call i32 @Curl_conn_connect(ptr noundef nonnull %0, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %i.c) #7 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0                    ; 2 uses
  %i.al = load i8, ptr %i.c, align 1, !range !107
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond.i = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %or.cond.i, label %bb.e, label %smtp_perform_upgrade_tls.exit

bb.e:                                             ; preds = %bb.d
  %i.an = load i8, ptr %i.l, align 8
  store i16 0, ptr %i.m, align 8, !tbaa !146
  store i16 0, ptr %i.n, align 4, !tbaa !101
  %i.ao = and i8 %i.an, -20
  %i.ap = or disjoint i8 %i.ao, 1
  store i8 %i.ap, ptr %i.l, align 8
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !115
  %i.ar = call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef nonnull @.str.46, ptr noundef %i.aq) #7 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %bb.f, label %smtp_perform_upgrade_tls.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.as = load i32, ptr %i.j, align 8, !tbaa !106 ; 2 uses
  %.not14.i = icmp eq i32 %i.as, 2
  br i1 %.not14.i, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = load i64, ptr %i.p, align 1
  %i.au = and i64 %i.at, 536870912
  %.not.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !74  ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not16.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !76
  %i.ay = icmp sgt i32 %i.ax, 0
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8
  %i.ba = icmp sgt i32 %i.az, 0
  %or.cond.i.i.i = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %or.cond.i.i.i, label %bb.k, label %.thread

bb.j:                                             ; preds = %bb.h
  %.old.i.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8, !tbaa !76
  %.old1.i.i.i = icmp sgt i32 %.old.i.i.i, 0
  br i1 %.old1.i.i.i, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bb = zext i32 %i.as to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @smtp_state.names, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !80
  call void (ptr, ptr, ...) @Curl_trc_smtp(ptr noundef nonnull %0, ptr noundef nonnull @.str.39, ptr noundef %i.bd, ptr noundef nonnull @.str.28) #7
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.f
  store i32 2, ptr %i.j, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.m

smtp_perform_upgrade_tls.exit.thread:             ; preds = %bb.b, %bb.e
  %.0.i.ph = phi i32 [ %i.ar, %bb.e ], [ %i.ah, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %.critedge

smtp_perform_upgrade_tls.exit:                    ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br i1 %i.ak, label %bb.l, label %.critedge

bb.l:                                             ; preds = %smtp_perform_upgrade_tls.exit
  %.pr = load i32, ptr %i.j, align 8, !tbaa !106
  %i.be = icmp eq i32 %.pr, 5
  br i1 %i.be, label %.critedge, label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l, %.preheader192
  %i.bf = load i64, ptr %i.r, align 8, !tbaa !147
  %.not73 = icmp eq i64 %i.bf, 0
  br i1 %.not73, label %.preheader, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = call i32 @Curl_pp_flushsend(ptr noundef %0, ptr noundef nonnull %i.f) #7
  br label %.critedge

.preheader:                                       ; preds = %bb.m, %smtp_state_servergreet_resp.exit.thread178.thread184
  %i.bh = call i32 @Curl_pp_readresp(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #7 ; 2 uses
  %.not74 = icmp eq i32 %i.bh, 0
  br i1 %.not74, label %bb.o, label %.critedge

bb.o:                                             ; preds = %.preheader
  %i.bi = load i32, ptr %i.j, align 8, !tbaa !106 ; 5 uses
  %i.bj = icmp ne i32 %i.bi, 12
  %i.bk = load i32, ptr %i.d, align 4             ; 23 uses
  %i.bl = icmp ne i32 %i.bk, 1                    ; 5 uses
  %or.cond3 = select i1 %i.bj, i1 %i.bl, i1 false
  br i1 %or.cond3, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.bk, ptr %i.s, align 8, !tbaa !148
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not75 = icmp eq i32 %i.bk, 0
  br i1 %.not75, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  switch i32 %i.bi, label %bb.dz [
    i32 1, label %bb.s
    i32 2, label %bb.aa
    i32 3, label %bb.bd
    i32 4, label %bb.bk
    i32 6, label %bb.bu
    i32 7, label %bb.cd
    i32 8, label %bb.cv
    i32 9, label %bb.cy
    i32 10, label %bb.dm
    i32 11, label %bb.dt
  ]

bb.s:                                             ; preds = %bb.r
  %.off.i = add i32 %i.bk, -200
  %.not.i79 = icmp ult i32 %.off.i, 100
  br i1 %.not.i79, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef range(i32 1, 0) %i.bk) #7
  br label %.critedge

bb.u:                                             ; preds = %bb.s
  store i16 0, ptr %i.m, align 8, !tbaa !146
  store i16 0, ptr %i.n, align 4, !tbaa !101
  %i.bm = load i8, ptr %i.l, align 8
  %i.bn = and i8 %i.bm, -19
  store i8 %i.bn, ptr %i.l, align 8
  %i.bo = load ptr, ptr %i.o, align 8, !tbaa !115
  %i.bp = call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull @.str.46, ptr noundef %i.bo) #7 ; 2 uses
  %.not.i.i81 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i81, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.bq = load i32, ptr %i.j, align 8, !tbaa !106 ; 3 uses
  %i.br = icmp ne i32 %i.bq, 2
  %or.cond4.i.i.i = and i1 %i.w, %i.br
  br i1 %or.cond4.i.i.i, label %bb.w, label %smtp_state_servergreet_resp.exit.thread178.thread184.sink.split

bb.w:                                             ; preds = %bb.v
  %i.bs = load i64, ptr %i.p, align 1
  %i.bt = and i64 %i.bs, 536870912
  %.not.i.i.i83 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.i83, label %smtp_state_servergreet_resp.exit.thread178.thread184.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = load ptr, ptr %i.q, align 8, !tbaa !74  ; 2 uses
  %.not16.i.i.i84 = icmp eq ptr %i.bu, null
  br i1 %.not16.i.i.i84, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !76
  %i.bx = icmp sgt i32 %i.bw, 0
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8
  %i.bz = icmp sgt i32 %i.by, 0
  %or.cond.i.i.i85 = select i1 %i.bx, i1 %i.bz, i1 false
  br i1 %or.cond.i.i.i85, label %smtp_state_servergreet_resp.exit.thread178.thread184.sink.split.sink.split, label %smtp_state_servergreet_resp.exit.thread178.thread184.sink.split

bb.z:                                             ; preds = %bb.x
  %.old.i.i.i86 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8, !tbaa !76
  %.old1.i.i.i87 = icmp sgt i32 %.old.i.i.i86, 0
  br i1 %.old1.i.i.i87, label %smtp_state_servergreet_resp.exit.thread178.thread184.sink.split.sink.split, label %smtp_state_servergreet_resp.exit.thread178.thread184.sink.split

bb.aa:                                            ; preds = %bb.r
  %i.ca = call ptr @curlx_dyn_ptr(ptr noundef nonnull %i.x) #7 ; 2 uses
  %i.cb = load i64, ptr %i.y, align 8, !tbaa !122 ; 3 uses
  %i.cc = add i32 %i.bk, -300
  %i.cd = icmp ult i32 %i.cc, -100
  %or.cond.i88 = and i1 %i.bl, %i.cd
  br i1 %or.cond.i88, label %bb.ab, label %bb.ak

bb.ab:                                            ; preds = %bb.aa
  %i.ce = load i8, ptr %i.ac, align 4, !tbaa !149
  %i.cf = icmp ult i8 %i.ce, 2
  br i1 %i.cf, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cg = load ptr, ptr %i.k, align 8, !tbaa !77
  %i.ch = call zeroext i1 @Curl_conn_is_ssl(ptr noundef %i.cg, i32 noundef 0) #7
  br i1 %i.ch, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  store i16 0, ptr %i.n, align 4, !tbaa !101
  %i.ci = load ptr, ptr %i.o, align 8, !tbaa !115
  %i.cj = call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef nonnull @.str.54, ptr noundef %i.ci) #7 ; 2 uses
  %.not.i.i90 = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i90, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.ck = load i32, ptr %i.j, align 8, !tbaa !106 ; 3 uses
  %.not108.i = icmp eq i32 %i.ck, 3
  br i1 %.not108.i, label %smtp_state_servergreet_resp.exit.thread178.thread184.sink.split, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cl = load i64, ptr %i.p, align 1
  %i.cm = and i64 %i.cl, 536870912
  %.not.i.i.i91 = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i.i91, label %smtp_state_servergreet_resp.exit.thread178.thread184.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cn = load ptr, ptr %i.q, align 8, !tbaa !74  ; 2 uses
  %.not16.i.i.i92 = icmp eq ptr %i.cn, null
  br i1 %.not16.i.i.i92, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !76
  %i.cq = icmp sgt i32 %i.cp, 0
  %i.cr = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8
  %i.cs = icmp sgt i32 %i.cr, 0
  %or.cond.i.i.i93 = select i1 %i.cq, i1 %i.cs, i1 false
  br i1 %or.cond.i.i.i93, label %smtp_state_servergreet_resp.exit.thread178.thread184.sink.split.sink.split, label %smtp_state_servergreet_resp.exit.thread178.thread184.sink.split

bb.ai:                                            ; preds = %bb.ag
  %.old.i.i.i95 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8, !tbaa !76
  %.old1.i.i.i96 = icmp sgt i32 %.old.i.i.i95, 0
  br i1 %.old1.i.i.i96, label %smtp_state_servergreet_resp.exit.thread178.thread184.sink.split.sink.split, label %smtp_state_servergreet_resp.exit.thread178.thread184.sink.split

bb.aj:                                            ; preds = %bb.ac
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.48, i32 noundef range(i32 1, 0) %i.bk) #7
  br label %.critedge

bb.ak:                                            ; preds = %bb.aa
  %i.ct = icmp ugt i64 %i.cb, 3
  br i1 %i.ct, label %bb.al, label %bb.bc

bb.al:                                            ; preds = %bb.ak
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 5 uses
  %i.cv = add i64 %i.cb, -4                       ; 3 uses
  %i.cw = icmp ugt i64 %i.cv, 7
  br i1 %i.cw, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.cx = call i32 @curl_strnequal(ptr noundef nonnull %i.cu, ptr noundef nonnull @.str.30, i64 noundef 8) #7
  %.not.i89 = icmp eq i32 %i.cx, 0
  br i1 %.not.i89, label %.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cy = load i8, ptr %i.l, align 8
  %i.cz = or i8 %i.cy, 2
  store i8 %i.cz, ptr %i.l, align 8
  br label %.thread103.i

bb.ao:                                            ; preds = %bb.al
  %i.da = icmp samesign ugt i64 %i.cv, 3
  br i1 %i.da, label %.thread99.i, label %.thread103.i

.thread.i:                                        ; preds = %bb.am
  %i.db = call i32 @curl_strnequal(ptr noundef nonnull %i.cu, ptr noundef nonnull @.str.49, i64 noundef 4) #7
  %.not87.i = icmp eq i32 %i.db, 0
  br i1 %.not87.i, label %bb.aq, label %bb.ap

.thread99.i:                                      ; preds = %bb.ao
  %i.dc = call i32 @curl_strnequal(ptr noundef nonnull %i.cu, ptr noundef nonnull @.str.49, i64 noundef 4) #7
  %.not87100.i = icmp eq i32 %i.dc, 0
  br i1 %.not87100.i, label %.thread101.i, label %bb.ap

bb.ap:                                            ; preds = %.thread99.i, %.thread.i
  %i.dd = load i8, ptr %i.l, align 8
  %i.de = or i8 %i.dd, 4
  store i8 %i.de, ptr %i.l, align 8
  br label %.thread103.i

bb.aq:                                            ; preds = %.thread.i
  %i.df = call i32 @curl_strnequal(ptr noundef nonnull %i.cu, ptr noundef nonnull @.str.50, i64 noundef 8) #7
  %.not88.i = icmp eq i32 %i.df, 0
  br i1 %.not88.i, label %.thread102.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dg = load i8, ptr %i.l, align 8
  %i.dh = or i8 %i.dg, 8
  store i8 %i.dh, ptr %i.l, align 8
  br label %.thread103.i

.thread101.i:                                     ; preds = %.thread99.i
  %.not107.i = icmp eq i64 %i.cv, 4
  br i1 %.not107.i, label %.thread103.i, label %.thread102.i

.thread102.i:                                     ; preds = %.thread101.i, %bb.aq
  %i.di = call i32 @curl_strnequal(ptr noundef nonnull %i.cu, ptr noundef nonnull @.str.51, i64 noundef 5) #7
  %.not89.i = icmp eq i32 %i.di, 0
  br i1 %.not89.i, label %.thread103.i, label %bb.as

bb.as:                                            ; preds = %.thread102.i
  %i.dj = load i8, ptr %i.l, align 8
  %i.dk = or i8 %i.dj, 16
  store i8 %i.dk, ptr %i.l, align 8
  %i.dl = add i64 %i.cb, -9                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %.not90111116.i = icmp eq i64 %i.dl, 0
  br i1 %.not90111116.i, label %.critedge94.thread.i, label %.lr.ph.lr.ph.i

.lr.ph.lr.ph.i:                                   ; preds = %bb.as
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ca, i64 9
  br label %.lr.ph.i

.critedge94.thread.i:                             ; preds = %.critedge94.i, %.critedge3.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.thread103.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.backedge, %.lr.ph.lr.ph.i
  %.1113.i = phi i64 [ %i.dl, %.lr.ph.lr.ph.i ], [ %.1113.i.be, %.lr.ph.i.backedge ] ; 4 uses
  %.178112.i = phi ptr [ %i.dm, %.lr.ph.lr.ph.i ], [ %.178112.i.be, %.lr.ph.i.backedge ] ; 5 uses
  %i.dn = load i8, ptr %.178112.i, align 1, !tbaa !93
  switch i8 %i.dn, label %.critedge.preheader.i [
    i8 32, label %.critedge3.i
    i8 9, label %.critedge3.i
    i8 10, label %.critedge3.i
    i8 13, label %.critedge3.i
  ]

.critedge3.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.do = getelementptr inbounds nuw i8, ptr %.178112.i, i64 1
  %i.dp = add i64 %.1113.i, -1                    ; 2 uses
  %.not90.i = icmp eq i64 %i.dp, 0
  br i1 %.not90.i, label %.critedge94.thread.i, label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %.critedge3.i, %.critedge94.i
  %.1113.i.be = phi i64 [ %i.dp, %.critedge3.i ], [ %i.dz, %.critedge94.i ]
  %.178112.i.be = phi ptr [ %i.do, %.critedge3.i ], [ %i.dy, %.critedge94.i ]
  br label %.lr.ph.i, !llvm.loop !142

.critedge.preheader.i:                            ; preds = %.lr.ph.i, %.critedge.i
  %.075115.i = phi i64 [ %i.ds, %.critedge.i ], [ 0, %.lr.ph.i ] ; 6 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.178112.i, i64 %.075115.i
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !93
  switch i8 %i.dr, label %.critedge.i [
    i8 32, label %.critedge5.i
    i8 9, label %.critedge5.i
    i8 10, label %.critedge5.i
    i8 13, label %.critedge5.i
  ]

.critedge.i:                                      ; preds = %.critedge.preheader.i
  %i.ds = add nuw i64 %.075115.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ds, %.1113.i
  br i1 %exitcond.not.i, label %.critedge5.i, label %.critedge.preheader.i, !llvm.loop !143

.critedge5.i:                                     ; preds = %.critedge.i, %.critedge.preheader.i, %.critedge.preheader.i, %.critedge.preheader.i, %.critedge.preheader.i
  %.075.lcssa.i = phi i64 [ %.075115.i, %.critedge.preheader.i ], [ %.075115.i, %.critedge.preheader.i ], [ %.075115.i, %.critedge.preheader.i ], [ %.075115.i, %.critedge.preheader.i ], [ %.1113.i, %.critedge.i ] ; 4 uses
  %i.dt = call zeroext i16 @Curl_sasl_decode_mech(ptr noundef nonnull %.178112.i, i64 noundef %.075.lcssa.i, ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not91.i = icmp ne i16 %i.dt, 0
  %i.du = load i64, ptr %i.b, align 8
  %i.dv = icmp eq i64 %i.du, %.075.lcssa.i
  %or.cond97.i = select i1 %.not91.i, i1 %i.dv, i1 false
  br i1 %or.cond97.i, label %bb.at, label %.critedge94.i

bb.at:                                            ; preds = %.critedge5.i
  %i.dw = load i16, ptr %i.m, align 8, !tbaa !146
  %i.dx = or i16 %i.dw, %i.dt
  store i16 %i.dx, ptr %i.m, align 8, !tbaa !146
  br label %.critedge94.i

.critedge94.i:                                    ; preds = %bb.at, %.critedge5.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.178112.i, i64 %.075.lcssa.i
  %i.dz = sub nuw i64 %.1113.i, %.075.lcssa.i     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %.not90111.i = icmp eq i64 %i.dz, 0
  br i1 %.not90111.i, label %.critedge94.thread.i, label %.lr.ph.i.backedge

.thread103.i:                                     ; preds = %.critedge94.thread.i, %.thread102.i, %.thread101.i, %bb.ar, %bb.ap, %bb.ao, %bb.an
  br i1 %i.bl, label %bb.au, label %smtp_state_servergreet_resp.exit.thread178thread-pre-split

bb.au:                                            ; preds = %.thread103.i
  %i.ea = load i8, ptr %i.ac, align 4, !tbaa !149
  %.not92.i = icmp eq i8 %i.ea, 0
  br i1 %.not92.i, label %bb.bb, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eb = load ptr, ptr %i.k, align 8, !tbaa !77
  %i.ec = call zeroext i1 @Curl_conn_is_ssl(ptr noundef %i.eb, i32 noundef 0) #7
  br i1 %i.ec, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ed = load i8, ptr %i.l, align 8
  %i.ee = and i8 %i.ed, 2
  %.not93.i = icmp eq i8 %i.ee, 0
  br i1 %.not93.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ef = call fastcc i32 @smtp_perform_starttls(ptr noundef nonnull %0, ptr noundef nonnull %i.f)
  br label %smtp_state_servergreet_resp.exit

bb.ay:                                            ; preds = %bb.aw
  %i.eg = load i8, ptr %i.ac, align 4, !tbaa !149
  %i.eh = icmp eq i8 %i.eg, 1
  br i1 %i.eh, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ei = call fastcc i32 @smtp_perform_authentication(ptr noundef nonnull %0, ptr noundef nonnull %i.f)
  br label %smtp_state_servergreet_resp.exit

bb.ba:                                            ; preds = %bb.ay
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.52) #7
  br label %.critedge

bb.bb:                                            ; preds = %bb.av, %bb.au
  %i.ej = call fastcc i32 @smtp_perform_authentication(ptr noundef nonnull %0, ptr noundef nonnull %i.f)
  br label %smtp_state_servergreet_resp.exit

bb.bc:                                            ; preds = %bb.ak
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.53) #7
  br label %.critedge

bb.bd:                                            ; preds = %bb.r
  %.off.i97 = add i32 %i.bk, -200
  %.not.i98 = icmp ult i32 %.off.i97, 100
  br i1 %.not.i98, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef range(i32 1, 0) %i.bk) #7
  br label %.critedge

bb.bf:                                            ; preds = %bb.bd
  br i1 %i.w, label %bb.bg, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split

bb.bg:                                            ; preds = %bb.bf
  %i.ek = load i64, ptr %i.p, align 1
  %i.el = and i64 %i.ek, 536870912
  %.not.i.i100 = icmp eq i64 %i.el, 0
  br i1 %.not.i.i100, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.em = load ptr, ptr %i.q, align 8, !tbaa !74  ; 2 uses
  %.not16.i.i = icmp eq ptr %i.em, null
  br i1 %.not16.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !76
  %i.ep = icmp sgt i32 %i.eo, 0
  %i.eq = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8
  %i.er = icmp sgt i32 %i.eq, 0
  %or.cond.i.i = select i1 %i.ep, i1 %i.er, i1 false
  br i1 %or.cond.i.i, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split.sink.split, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split

bb.bj:                                            ; preds = %bb.bh
  %.old.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8, !tbaa !76
  %.old1.i.i = icmp sgt i32 %.old.i.i, 0
  br i1 %.old1.i.i, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split.sink.split, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split

bb.bk:                                            ; preds = %bb.r
  %i.es = load i64, ptr %i.ab, align 8, !tbaa !150
  %.not.i101 = icmp eq i64 %i.es, 0
  br i1 %.not.i101, label %bb.bl, label %.critedge

bb.bl:                                            ; preds = %bb.bk
  %.not12.i = icmp eq i32 %i.bk, 220
  br i1 %.not12.i, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.et = load i8, ptr %i.ac, align 4, !tbaa !149
  %.not13.i = icmp eq i8 %i.et, 1
  br i1 %.not13.i, label %smtp_state_starttls_resp.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.55, i32 noundef range(i32 1, 0) %i.bk) #7
  br label %.critedge

bb.bo:                                            ; preds = %bb.bl
  br i1 %i.w, label %bb.bp, label %smtp_state_starttls_resp.exit.thread170

bb.bp:                                            ; preds = %bb.bo
  %i.eu = load i64, ptr %i.p, align 1
  %i.ev = and i64 %i.eu, 536870912
  %.not.i.i104 = icmp eq i64 %i.ev, 0
  br i1 %.not.i.i104, label %smtp_state_starttls_resp.exit.thread170, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ew = load ptr, ptr %i.q, align 8, !tbaa !74  ; 2 uses
  %.not16.i.i105 = icmp eq ptr %i.ew, null
  br i1 %.not16.i.i105, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !76
  %i.ez = icmp sgt i32 %i.ey, 0
  %i.fa = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8
  %i.fb = icmp sgt i32 %i.fa, 0
  %or.cond.i.i106 = select i1 %i.ez, i1 %i.fb, i1 false
  br i1 %or.cond.i.i106, label %bb.bt, label %smtp_state_starttls_resp.exit.thread170

bb.bs:                                            ; preds = %bb.bq
  %.old.i.i107 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8, !tbaa !76
  %.old1.i.i108 = icmp sgt i32 %.old.i.i107, 0
  br i1 %.old1.i.i108, label %bb.bt, label %smtp_state_starttls_resp.exit.thread170

bb.bt:                                            ; preds = %bb.bs, %bb.br
  call void (ptr, ptr, ...) @Curl_trc_smtp(ptr noundef nonnull %0, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #7
  br label %smtp_state_starttls_resp.exit.thread170

smtp_state_starttls_resp.exit.thread170:          ; preds = %bb.bo, %bb.bp, %bb.br, %bb.bs, %bb.bt
  store i32 5, ptr %i.j, align 8, !tbaa !106
  br label %.backedge

smtp_state_starttls_resp.exit:                    ; preds = %bb.bm
  %i.fc = call fastcc i32 @smtp_perform_authentication(ptr noundef nonnull %0, ptr noundef nonnull %i.f) ; 2 uses
  %.not76 = icmp eq i32 %i.fc, 0
  br i1 %.not76, label %thread-pre-split173, label %.critedge

thread-pre-split173:                              ; preds = %smtp_state_starttls_resp.exit
  %.pr174 = load i32, ptr %i.j, align 8, !tbaa !106 ; 2 uses
  %i.fd = icmp eq i32 %.pr174, 5
  br i1 %i.fd, label %.backedge, label %smtp_state_servergreet_resp.exit.thread178

bb.bu:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.fe = call i32 @Curl_sasl_continue(ptr noundef nonnull %i.aa, ptr noundef %0, i32 noundef range(i32 1, 0) %i.bk, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not.i109 = icmp eq i32 %i.fe, 0
  br i1 %.not.i109, label %bb.bv, label %smtp_state_auth_resp.exit

bb.bv:                                            ; preds = %bb.bu
  %i.ff = load i32, ptr %i.a, align 4, !tbaa !123
  switch i32 %i.ff, label %smtp_state_auth_resp.exit [
    i32 2, label %bb.bw
    i32 0, label %bb.cc
  ]

bb.bw:                                            ; preds = %bb.bv
  %i.fg = load i32, ptr %i.j, align 8, !tbaa !106 ; 2 uses
  %i.fh = icmp ne i32 %i.fg, 0
  %or.cond4.i.i111 = and i1 %i.w, %i.fh
  br i1 %or.cond4.i.i111, label %bb.bx, label %smtp_state.exit.i112

bb.bx:                                            ; preds = %bb.bw
  %i.fi = load i64, ptr %i.p, align 1
  %i.fj = and i64 %i.fi, 536870912
  %.not.i.i113 = icmp eq i64 %i.fj, 0
  br i1 %.not.i.i113, label %smtp_state.exit.i112, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fk = load ptr, ptr %i.q, align 8, !tbaa !74  ; 2 uses
  %.not16.i.i114 = icmp eq ptr %i.fk, null
  br i1 %.not16.i.i114, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !76
  %i.fn = icmp sgt i32 %i.fm, 0
  %i.fo = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8
  %i.fp = icmp sgt i32 %i.fo, 0
  %or.cond.i.i115 = select i1 %i.fn, i1 %i.fp, i1 false
  br i1 %or.cond.i.i115, label %bb.cb, label %smtp_state.exit.i112

bb.ca:                                            ; preds = %bb.by
  %.old.i.i116 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8, !tbaa !76
  %.old1.i.i117 = icmp sgt i32 %.old.i.i116, 0
  br i1 %.old1.i.i117, label %bb.cb, label %smtp_state.exit.i112

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.fq = zext i32 %i.fg to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr @smtp_state.names, i64 %i.fq
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !80
  call void (ptr, ptr, ...) @Curl_trc_smtp(ptr noundef nonnull %0, ptr noundef nonnull @.str.39, ptr noundef %i.fs, ptr noundef nonnull @.str.26) #7
  br label %smtp_state.exit.i112

smtp_state.exit.i112:                             ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bx, %bb.bw
  store i32 0, ptr %i.j, align 8, !tbaa !106
  br label %smtp_state_auth_resp.exit

bb.cc:                                            ; preds = %bb.bv
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.56) #7
  br label %smtp_state_auth_resp.exit

smtp_state_auth_resp.exit:                        ; preds = %bb.bu, %bb.bv, %smtp_state.exit.i112, %bb.cc
  %.0.i110 = phi i32 [ %i.fe, %bb.bu ], [ 0, %bb.bv ], [ 0, %smtp_state.exit.i112 ], [ 67, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %smtp_state_servergreet_resp.exit

bb.cd:                                            ; preds = %bb.r
  %i.ft = call ptr @curlx_dyn_ptr(ptr noundef nonnull %i.x) #7
  %i.fu = load i64, ptr %i.y, align 8, !tbaa !122
  %i.fv = load ptr, ptr %i.v, align 8, !tbaa !84
  %.not.i118 = icmp ne ptr %i.fv, null            ; 2 uses
  %i.fw = add i32 %i.bk, -300
  %i.fx = icmp ult i32 %i.fw, -100                ; 2 uses
  %or.cond.i119 = and i1 %i.fx, %.not.i118
  br i1 %or.cond.i119, label %switch.early.test.i, label %bb.ce

switch.early.test.i:                              ; preds = %bb.cd
  switch i32 %i.bk, label %bb.cf [
    i32 553, label %.thread.i120
    i32 1, label %.thread.i120
  ]

bb.ce:                                            ; preds = %bb.cd
  %.not.not.i = xor i1 %.not.i118, true
  %i.fy = and i1 %i.bl, %.not.not.i
  %or.cond49.i = and i1 %i.fx, %i.fy
  br i1 %or.cond49.i, label %bb.cf, label %.thread.i120

bb.cf:                                            ; preds = %bb.ce, %switch.early.test.i
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef range(i32 1, 0) %i.bk) #7
  br label %.critedge

.thread.i120:                                     ; preds = %bb.ce, %switch.early.test.i, %switch.early.test.i
  %i.fz = load i32, ptr %i.z, align 1
  %i.ga = and i32 %i.fz, 65536
  %.not37.i = icmp eq i32 %i.ga, 0
  br i1 %.not37.i, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.thread.i120
  %i.gb = call i32 @Curl_client_write(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %i.ft, i64 noundef %i.fu) #7
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.thread.i120
  %.0.i121 = phi i32 [ 0, %.thread.i120 ], [ %i.gb, %bb.cg ] ; 2 uses
  %i.gc = icmp eq i32 %.0.i121, 0
  %or.cond7.i = and i1 %i.bl, %i.gc
  br i1 %or.cond7.i, label %bb.ci, label %smtp_state_servergreet_resp.exit

bb.ci:                                            ; preds = %bb.ch
  %i.gd = load ptr, ptr %i.v, align 8, !tbaa !84  ; 2 uses
  %.not38.i = icmp eq ptr %i.gd, null
  br i1 %.not38.i, label %bb.cq, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !151 ; 2 uses
  store ptr %i.gf, ptr %i.v, align 8, !tbaa !84
  %.not39.i = icmp eq ptr %i.gf, null
  br i1 %.not39.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.gg = call fastcc i32 @smtp_perform_command(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br label %smtp_state_servergreet_resp.exit

bb.cl:                                            ; preds = %bb.cj
  %i.gh = load i32, ptr %i.j, align 8, !tbaa !106 ; 3 uses
  %.not50.i = icmp eq i32 %i.gh, 0
  br i1 %.not50.i, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.gi = load i64, ptr %i.p, align 1
  %i.gj = and i64 %i.gi, 536870912
  %.not.i.i122 = icmp eq i64 %i.gj, 0
  br i1 %.not.i.i122, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.gk = load ptr, ptr %i.q, align 8, !tbaa !74  ; 2 uses
  %.not16.i.i123 = icmp eq ptr %i.gk, null
  br i1 %.not16.i.i123, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !76
  %i.gn = icmp sgt i32 %i.gm, 0
  %i.go = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8
  %i.gp = icmp sgt i32 %i.go, 0
  %or.cond.i.i124 = select i1 %i.gn, i1 %i.gp, i1 false
  br i1 %or.cond.i.i124, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split.sink.split.sink.split, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split

bb.cp:                                            ; preds = %bb.cn
  %.old.i.i126 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8, !tbaa !76
  %.old1.i.i127 = icmp sgt i32 %.old.i.i126, 0
  br i1 %.old1.i.i127, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split.sink.split.sink.split, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split

bb.cq:                                            ; preds = %bb.ci
  %i.gq = load i32, ptr %i.j, align 8, !tbaa !106 ; 3 uses
  %.not51.i = icmp eq i32 %i.gq, 0
  br i1 %.not51.i, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.gr = load i64, ptr %i.p, align 1
  %i.gs = and i64 %i.gr, 536870912
  %.not.i42.i = icmp eq i64 %i.gs, 0
  br i1 %.not.i42.i, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.gt = load ptr, ptr %i.q, align 8, !tbaa !74  ; 2 uses
  %.not16.i43.i = icmp eq ptr %i.gt, null
  br i1 %.not16.i43.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !76
  %i.gw = icmp sgt i32 %i.gv, 0
  %i.gx = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8
  %i.gy = icmp sgt i32 %i.gx, 0
  %or.cond.i44.i = select i1 %i.gw, i1 %i.gy, i1 false
  br i1 %or.cond.i44.i, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split.sink.split.sink.split, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split

bb.cu:                                            ; preds = %bb.cs
  %.old.i45.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8, !tbaa !76
  %.old1.i46.i = icmp sgt i32 %.old.i45.i, 0
  br i1 %.old1.i46.i, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split.sink.split.sink.split, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split

bb.cv:                                            ; preds = %bb.r
  %.off.i128 = add i32 %i.bk, -200
  %.not.i129 = icmp ult i32 %.off.i128, 100
  br i1 %.not.i129, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.58, i32 noundef range(i32 1, 0) %i.bk) #7
  br label %.critedge

bb.cx:                                            ; preds = %bb.cv
  %.val.i = load ptr, ptr %i.v, align 8, !tbaa !84
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !104
  %i.gz = call fastcc i32 @smtp_perform_rcpt_to(ptr noundef %0, ptr noundef nonnull %i.f, ptr %.val.val.i)
  br label %smtp_state_servergreet_resp.exit

bb.cy:                                            ; preds = %bb.r
  %.off.i131 = add i32 %i.bk, -200
  %.not.i132 = icmp ult i32 %.off.i131, 100
  br i1 %.not.i132, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ha = load i64, ptr %i.p, align 1
  %i.hb = and i64 %i.ha, 4
  %.not27.i = icmp eq i64 %i.hb, 0
  store i32 %i.bk, ptr %i.t, align 8, !tbaa !85
  br i1 %.not27.i, label %bb.db, label %bb.dc

bb.da:                                            ; preds = %bb.cy
  %i.hc = load i8, ptr %i.u, align 8
  %i.hd = or i8 %i.hc, 1
  store i8 %i.hd, ptr %i.u, align 8
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.61, i32 noundef range(i32 1, 0) %i.bk) #7
  br label %.critedge

bb.dc:                                            ; preds = %bb.da, %bb.cz
  %i.he = load ptr, ptr %i.v, align 8, !tbaa !84
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !151 ; 3 uses
  store ptr %i.hg, ptr %i.v, align 8, !tbaa !84
  %.not28.i = icmp eq ptr %i.hg, null
  br i1 %.not28.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %.val.val.i133 = load ptr, ptr %i.hg, align 8, !tbaa !104
  %i.hh = call fastcc i32 @smtp_perform_rcpt_to(ptr noundef %0, ptr noundef nonnull %i.f, ptr %.val.val.i133)
  br label %smtp_state_servergreet_resp.exit

bb.de:                                            ; preds = %bb.dc
  %i.hi = load i8, ptr %i.u, align 8
  %i.hj = and i8 %i.hi, 1
  %.not29.i = icmp eq i8 %i.hj, 0
  br i1 %.not29.i, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.hk = load i32, ptr %i.t, align 8, !tbaa !85
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %i.hk) #7
  br label %.critedge

bb.dg:                                            ; preds = %bb.de
  %i.hl = call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.36) #7 ; 2 uses
  %.not30.i = icmp eq i32 %i.hl, 0
  br i1 %.not30.i, label %bb.dh, label %.critedge

bb.dh:                                            ; preds = %bb.dg
  %i.hm = load i32, ptr %i.j, align 8, !tbaa !106 ; 3 uses
  %i.hn = icmp ne i32 %i.hm, 10
  %or.cond4.i.i135 = and i1 %i.w, %i.hn
  br i1 %or.cond4.i.i135, label %bb.di, label %smtp_state_servergreet_resp.exit.thread178.thread184.sink.split

bb.di:                                            ; preds = %bb.dh
  %i.ho = load i64, ptr %i.p, align 1
  %i.hp = and i64 %i.ho, 536870912
  %.not.i.i137 = icmp eq i64 %i.hp, 0
  br i1 %.not.i.i137, label %smtp_state_servergreet_resp.exit.thread178.thread184.sink.split, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.hq = load ptr, ptr %i.q, align 8, !tbaa !74  ; 2 uses
  %.not16.i.i138 = icmp eq ptr %i.hq, null
  br i1 %.not16.i.i138, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !76
  %i.ht = icmp sgt i32 %i.hs, 0
  %i.hu = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8
  %i.hv = icmp sgt i32 %i.hu, 0
  %or.cond.i.i139 = select i1 %i.ht, i1 %i.hv, i1 false
  br i1 %or.cond.i.i139, label %smtp_state_servergreet_resp.exit.thread178.thread184.sink.split.sink.split, label %smtp_state_servergreet_resp.exit.thread178.thread184.sink.split

bb.dl:                                            ; preds = %bb.dj
  %.old.i.i140 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8, !tbaa !76
  %.old1.i.i141 = icmp sgt i32 %.old.i.i140, 0
  br i1 %.old1.i.i141, label %smtp_state_servergreet_resp.exit.thread178.thread184.sink.split.sink.split, label %smtp_state_servergreet_resp.exit.thread178.thread184.sink.split

bb.dm:                                            ; preds = %bb.r
  %.not.i142 = icmp eq i32 %i.bk, 354
  br i1 %.not.i142, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.63, i32 noundef range(i32 1, 0) %i.bk) #7
  br label %.critedge

bb.do:                                            ; preds = %bb.dm
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 4152
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !102
  call void @Curl_pgrsSetUploadSize(ptr noundef %0, i64 noundef %i.hx) #7
  call void @Curl_xfer_setup_send(ptr noundef %0, i32 noundef 0) #7
  %i.hy = load i32, ptr %i.j, align 8, !tbaa !106 ; 3 uses
  %i.hz = icmp ne i32 %i.hy, 0
  %or.cond4.i.i144 = and i1 %i.w, %i.hz
  br i1 %or.cond4.i.i144, label %bb.dp, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split

bb.dp:                                            ; preds = %bb.do
  %i.ia = load i64, ptr %i.p, align 1
  %i.ib = and i64 %i.ia, 536870912
  %.not.i.i146 = icmp eq i64 %i.ib, 0
  br i1 %.not.i.i146, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ic = load ptr, ptr %i.q, align 8, !tbaa !74  ; 2 uses
  %.not16.i.i147 = icmp eq ptr %i.ic, null
  br i1 %.not16.i.i147, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !76
  %i.if = icmp sgt i32 %i.ie, 0
  %i.ig = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8
  %i.ih = icmp sgt i32 %i.ig, 0
  %or.cond.i.i148 = select i1 %i.if, i1 %i.ih, i1 false
  br i1 %or.cond.i.i148, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split.sink.split.sink.split, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split

bb.ds:                                            ; preds = %bb.dq
  %.old.i.i149 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8, !tbaa !76
  %.old1.i.i150 = icmp sgt i32 %.old.i.i149, 0
  br i1 %.old1.i.i150, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split.sink.split.sink.split, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split

bb.dt:                                            ; preds = %bb.r
  br i1 %i.w, label %bb.du, label %smtp_state_postdata_resp.exit

bb.du:                                            ; preds = %bb.dt
  %i.ii = load i64, ptr %i.p, align 1
  %i.ij = and i64 %i.ii, 536870912
  %.not.i.i154 = icmp eq i64 %i.ij, 0
  br i1 %.not.i.i154, label %smtp_state_postdata_resp.exit, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ik = load ptr, ptr %i.q, align 8, !tbaa !74  ; 2 uses
  %.not16.i.i155 = icmp eq ptr %i.ik, null
  br i1 %.not16.i.i155, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load i32, ptr %i.il, align 8, !tbaa !76
  %i.in = icmp sgt i32 %i.im, 0
  %i.io = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8
  %i.ip = icmp sgt i32 %i.io, 0
  %or.cond.i.i156 = select i1 %i.in, i1 %i.ip, i1 false
  br i1 %or.cond.i.i156, label %bb.dy, label %smtp_state_postdata_resp.exit

bb.dx:                                            ; preds = %bb.dv
  %.old.i.i157 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8, !tbaa !76
  %.old1.i.i158 = icmp sgt i32 %.old.i.i157, 0
  br i1 %.old1.i.i158, label %bb.dy, label %smtp_state_postdata_resp.exit

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  call void (ptr, ptr, ...) @Curl_trc_smtp(ptr noundef nonnull %0, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.26) #7
  br label %smtp_state_postdata_resp.exit

smtp_state_postdata_resp.exit:                    ; preds = %bb.dt, %bb.du, %bb.dw, %bb.dx, %bb.dy
  %.not.i153 = icmp eq i32 %i.bk, 250
  store i32 0, ptr %i.j, align 8, !tbaa !106
  br i1 %.not.i153, label %smtp_state_servergreet_resp.exit.thread178.thread, label %.critedge

bb.dz:                                            ; preds = %bb.r
  %i.iq = icmp ne i32 %i.bi, 0
  %or.cond4.i = and i1 %i.w, %i.iq
  br i1 %or.cond4.i, label %bb.ea, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split

bb.ea:                                            ; preds = %bb.dz
  %i.ir = load i64, ptr %i.p, align 1
  %i.is = and i64 %i.ir, 536870912
  %.not.i159 = icmp eq i64 %i.is, 0
  br i1 %.not.i159, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.it = load ptr, ptr %i.q, align 8, !tbaa !74  ; 2 uses
  %.not16.i = icmp eq ptr %i.it, null
  br i1 %.not16.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !76
  %i.iw = icmp sgt i32 %i.iv, 0
  %i.ix = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8
  %i.iy = icmp sgt i32 %i.ix, 0
  %or.cond.i160 = select i1 %i.iw, i1 %i.iy, i1 false
  br i1 %or.cond.i160, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split.sink.split.sink.split, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split

bb.ed:                                            ; preds = %bb.eb
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8, !tbaa !76
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split.sink.split.sink.split, label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split

smtp_state_servergreet_resp.exit:                 ; preds = %bb.dd, %bb.cx, %bb.ck, %bb.ch, %bb.bb, %bb.az, %bb.ax, %smtp_state_auth_resp.exit
  %.0 = phi i32 [ %.0.i121, %bb.ch ], [ %i.gz, %bb.cx ], [ %i.ei, %bb.az ], [ %i.ej, %bb.bb ], [ %i.gg, %bb.ck ], [ %i.ef, %bb.ax ], [ %.0.i110, %smtp_state_auth_resp.exit ], [ %i.hh, %bb.dd ] ; 2 uses
  %.not77 = icmp eq i32 %.0, 0
  br i1 %.not77, label %smtp_state_servergreet_resp.exit.thread178thread-pre-split, label %.critedge

smtp_state_servergreet_resp.exit.thread178.thread.sink.split.sink.split.sink.split: ; preds = %bb.ec, %bb.ed, %bb.dr, %bb.ds, %bb.ct, %bb.cu, %bb.co, %bb.cp
  %.sink377 = phi i32 [ %i.hy, %bb.dr ], [ %i.gh, %bb.co ], [ %i.gq, %bb.ct ], [ %i.gh, %bb.cp ], [ %i.gq, %bb.cu ], [ %i.hy, %bb.ds ], [ %i.bi, %bb.ed ], [ %i.bi, %bb.ec ]
  %i.iz = zext i32 %.sink377 to i64
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr @smtp_state.names, i64 %i.iz
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !80
  br label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split.sink.split

smtp_state_servergreet_resp.exit.thread178.thread.sink.split.sink.split: ; preds = %smtp_state_servergreet_resp.exit.thread178.thread.sink.split.sink.split.sink.split, %bb.bi, %bb.bj
  %.sink370 = phi ptr [ @.str.29, %bb.bj ], [ @.str.29, %bb.bi ], [ %i.jb, %smtp_state_servergreet_resp.exit.thread178.thread.sink.split.sink.split.sink.split ]
  call void (ptr, ptr, ...) @Curl_trc_smtp(ptr noundef nonnull %0, ptr noundef nonnull @.str.39, ptr noundef %.sink370, ptr noundef nonnull @.str.26) #7
  br label %smtp_state_servergreet_resp.exit.thread178.thread.sink.split

smtp_state_servergreet_resp.exit.thread178.thread.sink.split: ; preds = %smtp_state_servergreet_resp.exit.thread178.thread.sink.split.sink.split, %bb.ed, %bb.ec, %bb.ea, %bb.dz, %bb.do, %bb.dp, %bb.dr, %bb.ds, %bb.cq, %bb.cr, %bb.ct, %bb.cu, %bb.cl, %bb.cm, %bb.co, %bb.cp, %bb.bf, %bb.bg, %bb.bi, %bb.bj
  store i32 0, ptr %i.j, align 8, !tbaa !106
  br label %smtp_state_servergreet_resp.exit.thread178.thread

smtp_state_servergreet_resp.exit.thread178.thread: ; preds = %smtp_state_servergreet_resp.exit.thread178.thread.sink.split, %smtp_state_postdata_resp.exit
  br label %.critedge

smtp_state_servergreet_resp.exit.thread178thread-pre-split: ; preds = %smtp_state_servergreet_resp.exit, %.thread103.i
  %.pr181.pr = load i32, ptr %i.j, align 8, !tbaa !106
  br label %smtp_state_servergreet_resp.exit.thread178

smtp_state_servergreet_resp.exit.thread178:       ; preds = %smtp_state_servergreet_resp.exit.thread178thread-pre-split, %thread-pre-split173
  %.pr181 = phi i32 [ %.pr181.pr, %smtp_state_servergreet_resp.exit.thread178thread-pre-split ], [ %.pr174, %thread-pre-split173 ]
  %.not78 = icmp eq i32 %.pr181, 0
  br i1 %.not78, label %.critedge, label %smtp_state_servergreet_resp.exit.thread178.thread184

smtp_state_servergreet_resp.exit.thread178.thread184.sink.split.sink.split: ; preds = %bb.dk, %bb.dl, %bb.ah, %bb.ai, %bb.y, %bb.z
  %.sink374 = phi i32 [ %i.ck, %bb.ah ], [ %i.bq, %bb.y ], [ %i.bq, %bb.z ], [ %i.ck, %bb.ai ], [ %i.hm, %bb.dl ], [ %i.hm, %bb.dk ]
  %.str.36.sink = phi ptr [ @.str.29, %bb.ah ], [ @.str.28, %bb.y ], [ @.str.28, %bb.z ], [ @.str.29, %bb.ai ], [ @.str.36, %bb.dl ], [ @.str.36, %bb.dk ]
  %.sink.ph = phi i32 [ 3, %bb.ah ], [ 2, %bb.y ], [ 2, %bb.z ], [ 3, %bb.ai ], [ 10, %bb.dl ], [ 10, %bb.dk ]
  %i.jc = zext i32 %.sink374 to i64
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr @smtp_state.names, i64 %i.jc
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !80
  call void (ptr, ptr, ...) @Curl_trc_smtp(ptr noundef nonnull %0, ptr noundef nonnull @.str.39, ptr noundef %i.je, ptr noundef nonnull %.str.36.sink) #7
  br label %smtp_state_servergreet_resp.exit.thread178.thread184.sink.split

smtp_state_servergreet_resp.exit.thread178.thread184.sink.split: ; preds = %smtp_state_servergreet_resp.exit.thread178.thread184.sink.split.sink.split, %bb.dh, %bb.di, %bb.dk, %bb.dl, %bb.ae, %bb.af, %bb.ah, %bb.ai, %bb.v, %bb.w, %bb.y, %bb.z
  %.sink = phi i32 [ 2, %bb.v ], [ 3, %bb.ae ], [ 10, %bb.dk ], [ 2, %bb.z ], [ 2, %bb.y ], [ 2, %bb.w ], [ 10, %bb.di ], [ 3, %bb.ai ], [ 3, %bb.ah ], [ 3, %bb.af ], [ 10, %bb.dh ], [ 10, %bb.dl ], [ %.sink.ph, %smtp_state_servergreet_resp.exit.thread178.thread184.sink.split.sink.split ]
  store i32 %.sink, ptr %i.j, align 8, !tbaa !106
  br label %smtp_state_servergreet_resp.exit.thread178.thread184

smtp_state_servergreet_resp.exit.thread178.thread184: ; preds = %smtp_state_servergreet_resp.exit.thread178.thread184.sink.split, %smtp_state_servergreet_resp.exit.thread178
  %i.jf = call zeroext i1 @Curl_pp_moredata(ptr noundef nonnull %i.f) #7
  br i1 %i.jf, label %.preheader, label %.critedge, !llvm.loop !144

.critedge:                                        ; preds = %bb.bk, %bb.dg, %bb.ad, %bb.u, %smtp_state_starttls_resp.exit, %smtp_state_servergreet_resp.exit.thread178.thread184, %bb.q, %smtp_state_servergreet_resp.exit, %smtp_state_servergreet_resp.exit.thread178, %.preheader, %smtp_perform_upgrade_tls.exit, %bb.l, %smtp_state_servergreet_resp.exit.thread178.thread, %bb.bn, %bb.dn, %bb.db, %bb.cw, %bb.cf, %bb.be, %bb.ba, %bb.aj, %bb.bc, %bb.t, %bb.df, %smtp_state_postdata_resp.exit, %smtp_perform_upgrade_tls.exit.thread, %bb.a, %bb.n
  %.064 = phi i32 [ 2, %bb.a ], [ %i.bg, %bb.n ], [ 64, %bb.ba ], [ 9, %bb.aj ], [ %i.aj, %smtp_perform_upgrade_tls.exit ], [ 8, %bb.bc ], [ 64, %bb.bn ], [ 8, %bb.t ], [ 55, %bb.df ], [ %.0.i.ph, %smtp_perform_upgrade_tls.exit.thread ], [ 55, %bb.dn ], [ 8, %smtp_state_postdata_resp.exit ], [ 55, %bb.db ], [ 55, %bb.cw ], [ 8, %bb.cf ], [ 9, %bb.be ], [ 0, %smtp_state_servergreet_resp.exit.thread178.thread ], [ 0, %bb.l ], [ 8, %bb.bk ], [ %i.fc, %smtp_state_starttls_resp.exit ], [ %i.bp, %bb.u ], [ %i.cj, %bb.ad ], [ %i.hl, %bb.dg ], [ 0, %bb.q ], [ 0, %smtp_state_servergreet_resp.exit.thread178 ], [ 0, %smtp_state_servergreet_resp.exit.thread178.thread184 ], [ %.0, %smtp_state_servergreet_resp.exit ], [ %i.bh, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  ret i32 %.064
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @smtp_endofresp(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = tail call ptr @Curl_conn_meta_get(ptr noundef %1, ptr noundef nonnull @.str) #7 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %i.e = icmp ult i64 %3, 4
  %or.cond38 = or i1 %i.e, %.not
  br i1 %or.cond38, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %2, align 1, !tbaa !93
  %i.g = add i8 %i.f, -48
  %or.cond35 = icmp ult i8 %i.g, 10
  br i1 %or.cond35, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !93
  %i.j = add i8 %i.i, -48
  %or.cond36 = icmp ult i8 %i.j, 10
  br i1 %or.cond36, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !93
  %i.m = add i8 %i.l, -48
  %or.cond37 = icmp ult i8 %i.m, 10
  br i1 %or.cond37, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !93    ; 2 uses
  %i.p = icmp eq i8 %i.o, 32
  %i.q = icmp eq i64 %3, 5                        ; 4 uses
  %or.cond = or i1 %i.q, %i.p
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store ptr %i.a, ptr %i.c, align 8, !tbaa !80
  %i.r = select i1 %i.q, i64 5, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) %2, i64 %i.r, i1 false)
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.q, i64 5, i64 3
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i8 0, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 1, !tbaa !93
  %i.s = select i1 %i.q, i64 99999, i64 999
  %i.t = call i32 @curlx_str_number(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i64 noundef %i.s) #7
  %.not34 = icmp eq i32 %i.t, 0
  br i1 %.not34, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.u = load i64, ptr %i.b, align 8, !tbaa !121
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %i.w = icmp eq i32 %i.v, 1
  %spec.select = select i1 %i.w, i32 0, i32 %i.v
  store i32 %spec.select, ptr %4, align 4, !tbaa !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.x = icmp eq i8 %i.o, 45
  br i1 %i.x, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.z = load i32, ptr %i.y, align 8, !tbaa !106
  switch i32 %i.z, label %bb.k [
    i32 2, label %bb.j
    i32 7, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  store i32 1, ptr %4, align 4, !tbaa !123
  br label %bb.k

.critedge:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.i, %.critedge, %bb.b, %bb.c, %bb.d, %bb.a, %bb.g
  %.1 = phi i1 [ false, %bb.a ], [ false, %.critedge ], [ false, %bb.h ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.g ], [ true, %bb.j ], [ false, %bb.i ]
  ret i1 %.1
}

declare void @Curl_sasl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Curl_pp_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Curl_pgrs_now(ptr noundef) local_unnamed_addr #2

declare i32 @Curl_pp_flushsend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_pp_readresp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Curl_pp_moredata(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Curl_conn_is_ssl(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Curl_ssl_cfilter_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Curl_conn_get_origin(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Curl_conn_connect(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @Curl_failf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @curlx_dyn_ptr(ptr noundef) local_unnamed_addr #2

declare i32 @curl_strnequal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i16 @Curl_sasl_decode_mech(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @smtp_perform_starttls(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.30) #7 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !106  ; 2 uses
  %i.d = icmp ne i32 %i.c, 4
  %i.e = icmp ne ptr %0, null
  %or.cond4.i = and i1 %i.e, %i.d
  br i1 %or.cond4.i, label %bb.c, label %smtp_state.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.g = load i64, ptr %i.f, align 1
  %i.h = and i64 %i.g, 536870912
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %smtp_state.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74   ; 2 uses
  %.not16.i = icmp eq ptr %i.j, null
  br i1 %.not16.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !76
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8
  %i.o = icmp sgt i32 %i.n, 0
  %or.cond.i = select i1 %i.m, i1 %i.o, i1 false
  br i1 %or.cond.i, label %bb.g, label %smtp_state.exit

bb.f:                                             ; preds = %bb.d
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8, !tbaa !76
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.g, label %smtp_state.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = zext i32 %i.c to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @smtp_state.names, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !80
  tail call void (ptr, ptr, ...) @Curl_trc_smtp(ptr noundef nonnull %0, ptr noundef nonnull @.str.39, ptr noundef %i.r, ptr noundef nonnull @.str.30) #7
  br label %smtp_state.exit

smtp_state.exit:                                  ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.g
  store i32 4, ptr %i.b, align 8, !tbaa !106
  br label %bb.h

bb.h:                                             ; preds = %smtp_state.exit, %bb.a
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @smtp_perform_authentication(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, 16
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.f = tail call zeroext i1 @Curl_sasl_can_authenticate(ptr noundef nonnull %i.e, ptr noundef %0) #7
end_hunk_0
begin_hunk_1_@smtp_perform_rcpt_to:bb.a
bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.l, align 1, !tbaa !93
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.05 = phi ptr [ @.str.7, %bb.f ], [ %i.m, %bb.g ], [ @.str.7, %bb.c ], [ @.str.7, %bb.e ], [ @.str.7, %bb.d ] ; 2 uses
  %strchr.i = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.e, i32 64) ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %strchr.i, ptr %i.n, align 8, !tbaa !95
  %.not33.i = icmp eq ptr %strchr.i, null
  br i1 %.not33.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %strchr.i, align 1, !tbaa !93
  %i.o = getelementptr inbounds nuw i8, ptr %strchr.i, i64 1
  store ptr %i.o, ptr %i.n, align 8, !tbaa !95
  %i.p = call i32 @Curl_idnconvert_hostname(ptr noundef nonnull %2) #7 ; 0 uses
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !95  ; 2 uses
  %.not14 = icmp eq ptr %.pre, null
  br i1 %.not14, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.59, ptr noundef nonnull %i.e, ptr noundef nonnull %.pre, ptr noundef nonnull %.05) #7
  br label %bb.k

.thread:                                          ; preds = %bb.h, %bb.i
  %i.r = call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.60, ptr noundef nonnull %i.e, ptr noundef nonnull %.05) #7
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %.0 = phi i32 [ %i.q, %bb.j ], [ %i.r, %.thread ] ; 2 uses
  %i.s = load ptr, ptr @Curl_cfree, align 8, !tbaa !11
  call void %i.s(ptr noundef nonnull %i.e) #7
  %.not15 = icmp eq i32 %.0, 0
  br i1 %.not15, label %bb.l, label %smtp_parse_address.exit

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !106  ; 2 uses
  %i.v = icmp ne i32 %i.u, 9
  %i.w = icmp ne ptr %0, null
  %or.cond4.i = and i1 %i.w, %i.v
  br i1 %or.cond4.i, label %bb.m, label %smtp_state.exit

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.y = load i64, ptr %i.x, align 1
  %i.z = and i64 %i.y, 536870912
  %.not.i16 = icmp eq i64 %i.z, 0
  br i1 %.not.i16, label %smtp_state.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !74 ; 2 uses
  %.not16.i = icmp eq ptr %i.ab, null
  br i1 %.not16.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !76
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8
  %i.ag = icmp sgt i32 %i.af, 0
  %or.cond.i = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond.i, label %bb.q, label %smtp_state.exit

bb.p:                                             ; preds = %bb.n
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8, !tbaa !76
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.q, label %smtp_state.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ah = zext i32 %i.u to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @smtp_state.names, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !80
  call void (ptr, ptr, ...) @Curl_trc_smtp(ptr noundef nonnull %0, ptr noundef nonnull @.str.39, ptr noundef %i.aj, ptr noundef nonnull @.str.35) #7
  br label %smtp_state.exit

smtp_state.exit:                                  ; preds = %bb.l, %bb.m, %bb.o, %bb.p, %bb.q
  store i32 9, ptr %i.t, align 8, !tbaa !106
  br label %smtp_parse_address.exit

smtp_parse_address.exit:                          ; preds = %bb.a, %bb.k, %smtp_state.exit
  %.011 = phi i32 [ %.0, %bb.k ], [ 0, %smtp_state.exit ], [ 27, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %.011
}

declare void @Curl_pgrsSetUploadSize(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Curl_xfer_setup_send(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @curlx_str_number(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @smtp_perform_auth(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.c = tail call ptr @Curl_conn_meta_get(ptr noundef %i.b, ptr noundef nonnull @.str) #7 ; 3 uses
  %i.d = tail call ptr @Curl_bufref_ptr(ptr noundef %2) #7 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not15 = icmp eq ptr %i.d, null
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.66, ptr noundef %1, ptr noundef nonnull %i.d) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = tail call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.67, ptr noundef %1) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.012 = phi i32 [ 2, %bb.a ], [ %i.e, %bb.c ], [ %i.f, %bb.d ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define internal i32 @smtp_continue_auth(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.c = tail call ptr @Curl_conn_meta_get(ptr noundef %i.b, ptr noundef nonnull @.str) #7 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @Curl_bufref_ptr(ptr noundef %2) #7
  %i.e = tail call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.43, ptr noundef %i.d) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @smtp_cancel_auth(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.c = tail call ptr @Curl_conn_meta_get(ptr noundef %i.b, ptr noundef nonnull @.str) #7 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.68) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 3) i32 @smtp_get_message(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.c = tail call ptr @Curl_conn_meta_get(ptr noundef %i.b, ptr noundef nonnull @.str) #7 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = tail call ptr @curlx_dyn_ptr(ptr noundef nonnull %i.d) #7
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.g = load i64, ptr %i.f, align 8, !tbaa !122  ; 2 uses
  %i.h = icmp ugt i64 %i.g, 4
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %i.g, -4
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %.026 = phi ptr [ %i.j, %bb.c ], [ %i.l, %.critedge ] ; 5 uses
  %.0 = phi i64 [ %i.i, %bb.c ], [ %i.m, %.critedge ] ; 3 uses
  %i.k = load i8, ptr %.026, align 1, !tbaa !93
  switch i8 %i.k, label %.preheader [
    i8 32, label %.critedge
    i8 9, label %.critedge
  ]

.preheader:                                       ; preds = %bb.d
  %.not3233 = icmp eq i64 %.0, 0
  br i1 %.not3233, label %._crit_edge, label %.lr.ph

.critedge:                                        ; preds = %bb.d, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.026, i64 1
  %i.m = add i64 %.0, -1
  br label %bb.d, !llvm.loop !152

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.134 = phi i64 [ %i.n, %bb.e ], [ %.0, %.preheader ] ; 2 uses
  %i.n = add i64 %.134, -1                        ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.026, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !93
  switch i8 %i.p, label %._crit_edge [
    i8 10, label %bb.e
    i8 13, label %bb.e
    i8 32, label %bb.e
    i8 9, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.not32 = icmp eq i64 %i.n, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !153

._crit_edge:                                      ; preds = %bb.e, %.lr.ph, %.preheader
  %.1.lcssa = phi i64 [ 0, %.preheader ], [ %.134, %.lr.ph ], [ 0, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.026, i64 %.1.lcssa
  store i8 0, ptr %i.q, align 1, !tbaa !93
  tail call void @Curl_bufref_set(ptr noundef %1, ptr noundef nonnull %.026, i64 noundef %.1.lcssa, ptr noundef null) #7
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  tail call void @Curl_bufref_set(ptr noundef %1, ptr noundef nonnull @.str.7, i64 noundef 0, ptr noundef null) #7
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f, %bb.a
  %.027 = phi i32 [ 2, %bb.a ], [ 0, %bb.f ], [ 0, %._crit_edge ]
  ret i32 %.027
}

declare ptr @Curl_bufref_ptr(ptr noundef) local_unnamed_addr #2

declare void @Curl_bufref_set(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_sasl_parse_url_auth_option(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Curl_gethostname(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Curl_pp_pollset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Curl_pp_needs_flush(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !105}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"p1 _ZTS11connectdata", !10, i64 0}
!14 = !{!"p1 _ZTS10Curl_llist", !10, i64 0}
!15 = !{!"p1 _ZTS15Curl_llist_node", !10, i64 0}
!16 = !{!"Curl_llist_node", !14, i64 0, !10, i64 8, !15, i64 16, !15, i64 24}
!17 = !{!"CURLMsg", !7, i64 0, !10, i64 8, !6, i64 16}
!18 = !{!"Curl_message", !16, i64 0, !17, i64 32}
!19 = !{!"p1 _ZTS10Curl_multi", !10, i64 0}
!20 = !{!"p1 _ZTS10Curl_share", !10, i64 0}
!21 = !{!"any p2 pointer", !10, i64 0}
!22 = !{!"p2 _ZTS17Curl_hash_element", !21, i64 0}
!23 = !{!"Curl_hash", !22, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !12, i64 32, !12, i64 40}
!24 = !{!"p1 _ZTS8PslCache", !10, i64 0}
!25 = !{!"curltime", !12, i64 0, !7, i64 8}
!26 = !{!"p1 _ZTS12Curl_cwriter", !10, i64 0}
!27 = !{!"p1 _ZTS12Curl_creader", !10, i64 0}
!28 = !{!"p1 _ZTS9buf_chunk", !10, i64 0}
!29 = !{!"p1 _ZTS9bufc_pool", !10, i64 0}
!30 = !{!"bufq", !28, i64 0, !28, i64 8, !28, i64 16, !29, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !7, i64 56}
!31 = !{!"p1 omnipotent char", !10, i64 0}
!32 = !{!"SingleRequest", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !25, i64 40, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !6, i64 76, !6, i64 77, !7, i64 80, !26, i64 88, !27, i64 96, !30, i64 104, !12, i64 168, !12, i64 176, !31, i64 184, !31, i64 192, !6, i64 200, !31, i64 208, !31, i64 216, !31, i64 224, !6, i64 232, !7, i64 233, !7, i64 233, !7, i64 233, !7, i64 233, !7, i64 233, !7, i64 233, !7, i64 233, !7, i64 233, !7, i64 234, !7, i64 234, !7, i64 234, !7, i64 234, !7, i64 234, !7, i64 234, !7, i64 234, !7, i64 234, !7, i64 235, !7, i64 235, !7, i64 235, !7, i64 235, !7, i64 235, !7, i64 235}
!33 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!34 = !{!"p1 _ZTS10curl_slist", !10, i64 0}
!35 = !{!"p1 _ZTS13curl_httppost", !10, i64 0}
!36 = !{!"p1 _ZTS13curl_mimepart", !10, i64 0}
!37 = !{!"p1 _ZTS9curl_blob", !10, i64 0}
!38 = !{!"ssl_primary_config", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !31, i64 56, !31, i64 64, !31, i64 72, !31, i64 80, !31, i64 88, !31, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !31, i64 136, !31, i64 144, !31, i64 152, !7, i64 160, !6, i64 164, !6, i64 165, !7, i64 166, !7, i64 166, !7, i64 166, !7, i64 166, !7, i64 166}
!39 = !{!"ssl_config_data", !38, i64 0, !12, i64 168, !10, i64 176, !10, i64 184, !7, i64 192, !7, i64 192, !7, i64 192, !7, i64 192, !7, i64 192, !7, i64 192, !7, i64 192, !7, i64 192, !7, i64 193, !7, i64 193, !7, i64 193}
!40 = !{!"short", !6, i64 0}
!41 = !{!"ssl_general_config", !7, i64 0}
!42 = !{!"p1 _ZTS8Curl_URL", !10, i64 0}
!43 = !{!"UserDefined", !33, i64 0, !10, i64 8, !31, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !7, i64 48, !7, i64 52, !10, i64 56, !10, i64 64, !12, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !34, i64 320, !35, i64 328, !36, i64 336, !34, i64 344, !34, i64 352, !34, i64 360, !12, i64 368, !39, i64 376, !39, i64 576, !34, i64 776, !40, i64 784, !6, i64 786, !6, i64 787, !41, i64 788, !12, i64 792, !7, i64 800, !7, i64 804, !10, i64 808, !34, i64 816, !12, i64 824, !12, i64 832, !6, i64 840, !6, i64 841, !6, i64 842, !34, i64 848, !34, i64 856, !34, i64 864, !7, i64 872, !6, i64 880, !6, i64 1480, !7, i64 1544, !12, i64 1552, !12, i64 1560, !10, i64 1568, !7, i64 1576, !10, i64 1584, !10, i64 1592, !10, i64 1600, !10, i64 1608, !10, i64 1616, !12, i64 1624, !12, i64 1632, !12, i64 1640, !12, i64 1648, !12, i64 1656, !7, i64 1664, !7, i64 1668, !7, i64 1672, !10, i64 1680, !10, i64 1688, !12, i64 1696, !42, i64 1704, !10, i64 1712, !10, i64 1720, !34, i64 1728, !7, i64 1736, !40, i64 1740, !40, i64 1742, !40, i64 1744, !40, i64 1746, !40, i64 1748, !40, i64 1750, !40, i64 1752, !6, i64 1754, !6, i64 1755, !6, i64 1756, !6, i64 1757, !6, i64 1758, !6, i64 1759, !6, i64 1760, !6, i64 1761, !6, i64 1762, !7, i64 1763, !7, i64 1763, !7, i64 1763, !7, i64 1763, !7, i64 1763, !7, i64 1763, !7, i64 1763, !7, i64 1763, !7, i64 1764, !7, i64 1764, !7, i64 1764, !7, i64 1764, !7, i64 1764, !7, i64 1764, !7, i64 1764, !7, i64 1764, !7, i64 1765, !7, i64 1765, !7, i64 1765, !7, i64 1765, !7, i64 1765, !7, i64 1765, !7, i64 1765, !7, i64 1765, !7, i64 1766, !7, i64 1766, !7, i64 1766, !7, i64 1766, !7, i64 1766, !7, i64 1766, !7, i64 1766, !7, i64 1766, !7, i64 1767, !7, i64 1767, !7, i64 1767, !7, i64 1767, !7, i64 1767, !7, i64 1767, !7, i64 1767, !7, i64 1767, !7, i64 1768, !7, i64 1768, !7, i64 1768, !7, i64 1768, !7, i64 1768, !7, i64 1768, !7, i64 1768, !7, i64 1768, !7, i64 1769, !7, i64 1769, !7, i64 1769, !7, i64 1769, !7, i64 1769, !7, i64 1769, !7, i64 1769, !7, i64 1769, !7, i64 1770, !7, i64 1770, !7, i64 1770}
!44 = !{!"p1 _ZTS10CookieInfo", !10, i64 0}
!45 = !{!"p1 _ZTS4hsts", !10, i64 0}
!46 = !{!"p1 _ZTS10altsvcinfo", !10, i64 0}
!47 = !{!"Curl_rlimit", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !25, i64 56, !7, i64 72}
!48 = !{!"pgrs_dir", !12, i64 0, !12, i64 8, !12, i64 16, !47, i64 24}
!49 = !{!"Progress", !25, i64 0, !12, i64 16, !48, i64 24, !48, i64 128, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !25, i64 328, !25, i64 344, !25, i64 360, !25, i64 376, !25, i64 392, !6, i64 408, !6, i64 456, !7, i64 552, !7, i64 556, !7, i64 556, !7, i64 556, !7, i64 556, !7, i64 556, !7, i64 556}
!50 = !{!"dynbuf", !31, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!51 = !{!"p1 _ZTS9Curl_peer", !10, i64 0}
!52 = !{!"p1 _ZTS10Curl_creds", !10, i64 0}
!53 = !{!"digestdata", !52, i64 0, !51, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !31, i64 56, !7, i64 64, !6, i64 68, !7, i64 69, !7, i64 69}
!54 = !{!"auth", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 12}
!55 = !{!"p1 _ZTS17Curl_resolv_async", !10, i64 0}
!56 = !{!"p1 _ZTS9Curl_tree", !10, i64 0}
!57 = !{!"Curl_tree", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !25, i64 32, !10, i64 48}
!58 = !{!"Curl_llist", !15, i64 0, !15, i64 8, !10, i64 16, !12, i64 24}
!59 = !{!"urlpieces", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !31, i64 56}
!60 = !{!"bufref", !10, i64 0, !31, i64 8, !12, i64 16}
!61 = !{!"p1 _ZTS17Curl_header_store", !10, i64 0}
!62 = !{!"p1 _ZTS13curl_trc_feat", !10, i64 0}
!63 = !{!"store_netrc", !50, i64 0, !31, i64 32, !7, i64 40}
!64 = !{!"dynamically_allocated_data", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40}
!65 = !{!"http_negotiation", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !7, i64 4, !7, i64 4, !7, i64 4, !7, i64 4}
!66 = !{!"UrlState", !25, i64 0, !12, i64 16, !12, i64 24, !50, i64 32, !34, i64 64, !12, i64 72, !51, i64 80, !51, i64 88, !7, i64 96, !7, i64 100, !10, i64 104, !31, i64 112, !53, i64 120, !53, i64 192, !54, i64 264, !54, i64 280, !55, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !31, i64 336, !7, i64 344, !25, i64 352, !57, i64 368, !58, i64 424, !6, i64 456, !31, i64 1296, !31, i64 1304, !12, i64 1312, !7, i64 1320, !7, i64 1324, !7, i64 1328, !6, i64 1332, !12, i64 1368, !10, i64 1376, !10, i64 1384, !42, i64 1392, !59, i64 1400, !60, i64 1464, !60, i64 1488, !34, i64 1512, !36, i64 1520, !36, i64 1528, !12, i64 1536, !50, i64 1544, !58, i64 1576, !6, i64 1608, !61, i64 1704, !34, i64 1712, !62, i64 1720, !63, i64 1728, !52, i64 1776, !64, i64 1784, !65, i64 1832, !40, i64 1840, !6, i64 1842, !6, i64 1843, !7, i64 1844, !7, i64 1844, !7, i64 1844, !7, i64 1844, !7, i64 1844, !7, i64 1844, !7, i64 1844, !7, i64 1844, !7, i64 1845, !7, i64 1845, !7, i64 1845, !7, i64 1845, !7, i64 1845, !7, i64 1845, !7, i64 1845, !7, i64 1845, !7, i64 1846, !7, i64 1846, !7, i64 1846, !7, i64 1846, !7, i64 1846, !7, i64 1846, !7, i64 1846}
!67 = !{!"p1 _ZTS12WildcardData", !10, i64 0}
!68 = !{!"ip_quadruple", !6, i64 0, !6, i64 46, !40, i64 92, !40, i64 94, !6, i64 96}
!69 = !{!"p2 _ZTS10curl_slist", !21, i64 0}
!70 = !{!"curl_certinfo", !7, i64 0, !69, i64 8}
!71 = !{!"PureInfo", !7, i64 0, !7, i64 4, !7, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !31, i64 56, !31, i64 64, !12, i64 72, !7, i64 80, !68, i64 84, !31, i64 184, !7, i64 192, !70, i64 200, !7, i64 216, !7, i64 220, !7, i64 220}
!72 = !{!"curl_tlssessioninfo", !7, i64 0, !10, i64 8}
!73 = !{!"Curl_easy", !7, i64 0, !12, i64 8, !7, i64 16, !7, i64 20, !10, i64 24, !13, i64 32, !7, i64 40, !7, i64 44, !18, i64 48, !19, i64 104, !19, i64 112, !20, i64 120, !23, i64 128, !24, i64 176, !32, i64 184, !43, i64 424, !44, i64 2200, !45, i64 2208, !46, i64 2216, !49, i64 2224, !66, i64 2784, !67, i64 4632, !71, i64 4640, !72, i64 4864}
!74 = !{!73, !62, i64 4504}
!75 = !{!"curl_trc_feat", !31, i64 0, !7, i64 8}
!76 = !{!75, !7, i64 8}
!77 = !{!73, !13, i64 32}
!78 = !{!"_Bool", !6, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!31, !31, i64 0}
!81 = !{!"SMTP", !7, i64 0, !31, i64 8, !34, i64 16, !7, i64 24, !12, i64 32, !7, i64 40, !7, i64 40}
!82 = !{!81, !7, i64 0}
!83 = !{!73, !34, i64 2152}
!84 = !{!81, !34, i64 16}
!85 = !{!81, !7, i64 24}
!86 = !{!73, !36, i64 760}
!87 = !{!"p1 _ZTS9curl_mime", !10, i64 0}
!88 = !{!"mime_state", !7, i64 0, !10, i64 8, !12, i64 16}
!89 = !{!"p1 _ZTS12mime_encoder", !10, i64 0}
!90 = !{!"mime_encoder_state", !12, i64 0, !12, i64 8, !12, i64 16, !6, i64 24}
!91 = !{!"curl_mimepart", !87, i64 0, !36, i64 8, !7, i64 16, !7, i64 20, !31, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !33, i64 64, !34, i64 72, !34, i64 80, !31, i64 88, !31, i64 96, !31, i64 104, !12, i64 112, !88, i64 120, !89, i64 144, !90, i64 152, !12, i64 432}
!92 = !{!91, !7, i64 16}
!93 = !{!6, !6, i64 0}
!94 = !{!"hostname", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24}
!95 = !{!94, !31, i64 16}
!96 = !{!94, !31, i64 8}
!97 = !{!"pingpong", !12, i64 0, !31, i64 8, !12, i64 16, !12, i64 24, !25, i64 32, !50, i64 48, !50, i64 80, !12, i64 112, !12, i64 120, !10, i64 128, !10, i64 136, !7, i64 144, !7, i64 144}
!98 = !{!"p1 _ZTS9SASLproto", !10, i64 0}
!99 = !{!"SASL", !98, i64 0, !7, i64 8, !31, i64 16, !40, i64 24, !40, i64 26, !40, i64 28, !7, i64 30, !7, i64 30, !7, i64 30}
!100 = !{!"smtp_conn", !97, i64 0, !99, i64 152, !7, i64 184, !31, i64 192, !7, i64 200, !7, i64 200, !7, i64 200, !7, i64 200, !7, i64 200}
!101 = !{!100, !40, i64 180}
!102 = !{!73, !12, i64 4152}
!103 = !{!"curl_slist", !31, i64 0, !34, i64 8}
!104 = !{!103, !31, i64 0}
!105 = !{!"llvm.loop.mustprogress"}
!106 = !{!100, !7, i64 184}
!107 = !{i8 0, i8 2}
!108 = !{}
!109 = !{!81, !31, i64 8}
!110 = !{!"proxy_info", !51, i64 0, !52, i64 8, !6, i64 16}
!111 = !{!"", !6, i64 0, !12, i64 32}
!112 = !{!"ConnectBits", !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 1, !7, i64 1, !7, i64 1, !7, i64 1, !7, i64 1, !7, i64 1, !7, i64 1, !7, i64 1, !7, i64 2, !7, i64 2, !7, i64 2, !7, i64 2, !7, i64 2, !7, i64 2, !7, i64 2, !7, i64 2, !7, i64 3}
!113 = !{!"p1 _ZTS11Curl_scheme", !10, i64 0}
!114 = !{!"connectdata", !16, i64 0, !16, i64 32, !10, i64 64, !10, i64 72, !12, i64 80, !31, i64 88, !23, i64 96, !51, i64 144, !51, i64 152, !51, i64 160, !51, i64 168, !110, i64 176, !110, i64 200, !52, i64 224, !51, i64 232, !31, i64 240, !25, i64 248, !25, i64 264, !6, i64 280, !6, i64 288, !6, i64 304, !6, i64 320, !7, i64 336, !7, i64 340, !111, i64 344, !38, i64 384, !38, i64 552, !112, i64 720, !113, i64 728, !113, i64 736, !25, i64 744, !19, i64 760, !31, i64 768, !7, i64 776, !7, i64 780, !40, i64 784, !40, i64 786, !6, i64 788, !6, i64 789, !6, i64 790, !6, i64 791}
!115 = !{!100, !31, i64 192}
!116 = !{!"p1 _ZTS11Curl_crtype", !10, i64 0}
!117 = !{!"Curl_creader", !116, i64 0, !27, i64 8, !10, i64 16, !7, i64 24}
!118 = !{!117, !10, i64 16}
!119 = !{!"cr_eob_ctx", !117, i64 0, !30, i64 32, !12, i64 96, !12, i64 104, !7, i64 112, !7, i64 112, !7, i64 112}
!120 = !{!119, !12, i64 96}
!121 = !{!12, !12, i64 0}
!122 = !{!100, !12, i64 120}
!123 = !{!7, !7, i64 0}
!124 = distinct !{null, null, null, null}
!125 = distinct !{null, null, null}
!126 = distinct !{!126, !105}
!127 = !{!73, !12, i64 184}
!128 = !{!81, !12, i64 32}
!129 = !{!91, !7, i64 20}
!130 = !{!73, !34, i64 744}
!131 = !{!34, !34, i64 0}
!132 = !{!27, !27, i64 0}
!133 = distinct !{!133, !105}
!134 = distinct !{!134, !105}
!135 = distinct !{!135, !105}
!136 = !{!100, !10, i64 128}
!137 = !{!100, !10, i64 136}
!138 = !{!114, !31, i64 240}
!139 = !{!73, !31, i64 4232}
!140 = distinct !{!140, !105}
!141 = !{!117, !27, i64 8}
!142 = distinct !{!142, !105}
!143 = distinct !{!143, !105}
!144 = distinct !{!144, !105}
!145 = !{!114, !113, i64 728}
!146 = !{!100, !40, i64 176}
!147 = !{!100, !12, i64 16}
!148 = !{!73, !7, i64 4640}
!149 = !{!73, !6, i64 2180}
!150 = !{!100, !12, i64 112}
!151 = !{!103, !34, i64 8}
!152 = distinct !{!152, !105}
!153 = distinct !{!153, !105}
end_hunk_1
