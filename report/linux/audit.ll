Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/audit?download=true
inline.NumInlined: 330
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@audit_receive:bb.a
  %i.hm = load i32, ptr getelementptr inbounds nuw (i8, ptr @af, i64 12), align 4
  %i.hn = or i32 %i.hm, %i.hd
  store i32 %i.hn, ptr getelementptr inbounds nuw (i8, ptr @af, i64 12), align 4
  br label %audit_set_feature.exit

bb.by:                                            ; preds = %bb.ca, %bb.f
  %i.ho = load i32, ptr @audit_enabled, align 4
  %i.hp = icmp eq i32 %i.ho, 0
  %i.hq = icmp ne i16 %i.al, 1107
  %or.cond.i = and i1 %i.hq, %i.hp
  br i1 %or.cond.i, label %audit_receive_msg.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hr = icmp slt i32 %i.av, 2
  br i1 %i.hr, label %audit_receive_msg.exit.thread, label %bb.cb

bb.ca:                                            ; preds = %bb.f
  %i.hs = add nsw i16 %i.al, -1100
  %i.ht = icmp ult i16 %i.hs, 100
  %i.hu = add nsw i16 %i.al, -2100
  %i.hv = icmp ult i16 %i.hu, 900
  %or.cond6.i = or i1 %i.ht, %i.hv
  br i1 %or.cond6.i, label %bb.by, label %audit_set_feature.exit

bb.cb:                                            ; preds = %bb.bz
  %i.hw = call i32 @audit_filter(i32 noundef %i.aw, i32 noundef 0) #17 ; 2 uses
  %i.hx = icmp eq i32 %i.hw, 1
  br i1 %i.hx, label %bb.cc, label %audit_set_feature.exit

bb.cc:                                            ; preds = %bb.cb
  %i.hy = icmp eq i16 %i.al, 1124
  br i1 %i.hy, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.hz = call i32 @tty_audit_push() #17          ; 2 uses
  %.not248.i = icmp eq i32 %i.hz, 0
  br i1 %.not248.i, label %bb.cf, label %audit_set_feature.exit

bb.ce:                                            ; preds = %bb.cc
  call fastcc void @audit_log_common_recv_msg(ptr noundef null, ptr noundef nonnull %i.a, i16 noundef zeroext %i.al) #22, !srcloc !71
  %i.ia = zext nneg i32 %i.av to i64
  %i.ib = getelementptr i8, ptr %i.au, i64 %i.ia
  %i.ic = getelementptr i8, ptr %i.ib, i64 -1
  store i8 0, ptr %i.ic, align 1
  %i.id = load ptr, ptr %i.a, align 8             ; 2 uses
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %i.id, ptr noundef @.str.50, i32 noundef 8560, ptr noundef %i.au) #22
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  call fastcc void @audit_log_common_recv_msg(ptr noundef null, ptr noundef nonnull %i.a, i16 noundef zeroext 1124) #22, !srcloc !71
  %i.ie = load ptr, ptr %i.a, align 8             ; 3 uses
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %i.ie, ptr noundef @.str.51) #22
  %i.if = zext nneg i32 %i.av to i64
  %i.ig = getelementptr i8, ptr %i.au, i64 %i.if
  %i.ih = getelementptr i8, ptr %i.ig, i64 -1
  %i.ii = load i8, ptr %i.ih, align 1
  %i.ij = icmp eq i8 %i.ii, 0
  %i.ik = add i32 %.val255.i, -17
  %spec.select.i = select i1 %i.ij, i32 %i.ik, i32 %i.av
  %i.il = zext nneg i32 %spec.select.i to i64
  call void @audit_log_n_untrustedstring(ptr noundef %i.ie, ptr noundef %i.au, i64 noundef %i.il) #22
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.im = phi ptr [ %i.ie, %bb.cf ], [ %i.id, %bb.ce ]
  call void @audit_log_end(ptr noundef %i.im) #22
  br label %audit_set_feature.exit

bb.ch:                                            ; preds = %bb.f, %bb.f
  %i.in = sext i32 %i.av to i64
  %i.io = icmp ult i32 %i.av, 1040
  br i1 %i.io, label %audit_receive_msg.exit.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ip = load i32, ptr @audit_enabled, align 4
  %i.iq = icmp eq i32 %i.ip, 2
  br i1 %i.iq, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.ir = load ptr, ptr %i.n, align 16
  %i.is = load ptr, ptr %i.l, align 8
  %i.it = getelementptr i8, ptr %i.is, i64 8
  %.sroa.0.0.copyload.i37 = load i32, ptr %i.it, align 8
  %.val.i38 = load i32, ptr %i.m, align 4
  %i.iu = call ptr @audit_log_start(ptr noundef %i.ir, i32 noundef 3264, i32 noundef 1305) #22 ; 7 uses
  store ptr %i.iu, ptr %i.a, align 8
  %.not.i40 = icmp eq ptr %i.iu, null
  br i1 %.not.i40, label %audit_log_common_recv_msg.exit43, label %bb.ck, !prof !16

bb.ck:                                            ; preds = %bb.cj
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %i.iu, ptr noundef @.str.73, i32 noundef %.val.i38, i32 noundef %.sroa.0.0.copyload.i37) #22
  %.val.i.i41 = load i32, ptr %i.o, align 4
  %.val2.i.i42 = load i32, ptr %i.p, align 8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull readonly %i.iu, ptr noundef @.str.13, i32 noundef %.val2.i.i42, i32 noundef %.val.i.i41) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 0, ptr %1, align 4, !annotation !21
  call void @security_current_getlsmprop_subj(ptr noundef nonnull %1) #17
  %i.iv = call range(i32 -2147483648, 1) i32 @audit_log_subj_ctx(ptr noundef nonnull %i.iu, ptr noundef nonnull %1) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %audit_log_common_recv_msg.exit43

audit_log_common_recv_msg.exit43:                 ; preds = %bb.cj, %bb.ck
  %i.iw = icmp eq i16 %i.al, 1011
  %i.ix = select i1 %i.iw, ptr @.str.53, ptr @.str.54
  %i.iy = load i32, ptr @audit_enabled, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %i.iu, ptr noundef @.str.52, ptr noundef nonnull %i.ix, i32 noundef %i.iy) #22
  call void @audit_log_end(ptr noundef %i.iu) #22
  br label %audit_receive_msg.exit.thread

bb.cl:                                            ; preds = %bb.ci
  %i.iz = call i32 @audit_rule_change(i32 noundef %i.aw, i32 noundef %i.at, ptr noundef %i.au, i64 noundef %i.in) #17
  br label %audit_set_feature.exit

bb.cm:                                            ; preds = %bb.f
  %i.ja = call i32 @audit_list_rules_send(ptr noundef %0, i32 noundef %i.at) #17
  br label %audit_set_feature.exit

bb.cn:                                            ; preds = %bb.f
  %i.jb = load i32, ptr @audit_enabled, align 4
  %i.jc = icmp eq i32 %i.jb, 2
  br i1 %i.jc, label %audit_receive_msg.exit.thread, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @audit_trim_trees() #17
  %i.jd = load ptr, ptr %i.l, align 8
  %i.je = getelementptr i8, ptr %i.jd, i64 8
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.je, align 8
  %.val.i31 = load i32, ptr %i.m, align 4
  %i.jf = load i32, ptr @audit_enabled, align 4
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store ptr null, ptr %i.a, align 8
  br label %audit_log_common_recv_msg.exit36

bb.cq:                                            ; preds = %bb.co
  %i.jh = load ptr, ptr %i.n, align 16
  %i.ji = call ptr @audit_log_start(ptr noundef %i.jh, i32 noundef 3264, i32 noundef 1305) #22 ; 6 uses
  store ptr %i.ji, ptr %i.a, align 8
  %.not.i33 = icmp eq ptr %i.ji, null
  br i1 %.not.i33, label %audit_log_common_recv_msg.exit36, label %bb.cr, !prof !16

bb.cr:                                            ; preds = %bb.cq
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %i.ji, ptr noundef @.str.73, i32 noundef %.val.i31, i32 noundef %.sroa.0.0.copyload.i30) #22
  %.val.i.i34 = load i32, ptr %i.o, align 4
  %.val2.i.i35 = load i32, ptr %i.p, align 8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull readonly %i.ji, ptr noundef @.str.13, i32 noundef %.val2.i.i35, i32 noundef %.val.i.i34) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i32 0, ptr %2, align 4, !annotation !21
  call void @security_current_getlsmprop_subj(ptr noundef nonnull %2) #17
  %i.jj = call range(i32 -2147483648, 1) i32 @audit_log_subj_ctx(ptr noundef nonnull %i.ji, ptr noundef nonnull %2) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %audit_log_common_recv_msg.exit36

audit_log_common_recv_msg.exit36:                 ; preds = %bb.cp, %bb.cq, %bb.cr
  %i.jk = phi ptr [ null, %bb.cp ], [ null, %bb.cq ], [ %i.ji, %bb.cr ] ; 2 uses
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %i.jk, ptr noundef @.str.55) #22
  call void @audit_log_end(ptr noundef %i.jk) #22
  br label %audit_set_feature.exit

bb.cs:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.jl = sext i32 %i.av to i64
  %i.jm = load i32, ptr @audit_enabled, align 4
  %.not231.i = icmp eq i32 %i.jm, 2
  br i1 %.not231.i, label %bb.de, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.jn = icmp ult i32 %i.av, 8
  br i1 %i.jn, label %.thread287.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %.sroa.060.0.copyload.i = load i32, ptr %i.au, align 4
  %.sroa.561.0..sroa_idx.i = getelementptr i8, ptr %.0105, i64 20
  %.sroa.561.0.copyload.i = load i32, ptr %.sroa.561.0..sroa_idx.i, align 4
  %i.jo = getelementptr i8, ptr %.0105, i64 24
  store ptr %i.jo, ptr %i.b, align 8
  %i.jp = add nsw i64 %i.jl, -8
  store i64 %i.jp, ptr %i.c, align 8
  %i.jq = zext i32 %.sroa.060.0.copyload.i to i64
  %i.jr = call ptr @audit_unpack_string(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef %i.jq) #17 ; 11 uses
  %i.js = icmp ugt ptr %i.jr, inttoptr (i64 -4096 to ptr)
  br i1 %i.js, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = trunc i64 %i.jt to i32
  br label %.thread287.i

bb.cw:                                            ; preds = %bb.cu
  %i.jv = zext i32 %.sroa.561.0.copyload.i to i64
  %i.jw = call ptr @audit_unpack_string(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef %i.jv) #17 ; 10 uses
  %i.jx = icmp ugt ptr %i.jw, inttoptr (i64 -4096 to ptr)
  br i1 %i.jx, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = trunc i64 %i.jy to i32
  br label %.thread287.sink.split.i

bb.cy:                                            ; preds = %bb.cw
  %i.ka = call i32 @audit_tag_tree(ptr noundef %i.jr, ptr noundef %i.jw) #17 ; 2 uses
  %i.kb = load ptr, ptr %i.l, align 8
  %i.kc = getelementptr i8, ptr %i.kb, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.kc, align 8
  %.val.i26 = load i32, ptr %i.m, align 4
  %i.kd = load i32, ptr @audit_enabled, align 4
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store ptr null, ptr %i.a, align 8
  br label %audit_log_common_recv_msg.exit

bb.da:                                            ; preds = %bb.cy
  %i.kf = load ptr, ptr %i.n, align 16
  %i.kg = call ptr @audit_log_start(ptr noundef %i.kf, i32 noundef 3264, i32 noundef 1305) #22 ; 6 uses
  store ptr %i.kg, ptr %i.a, align 8
  %.not.i28 = icmp eq ptr %i.kg, null
  br i1 %.not.i28, label %audit_log_common_recv_msg.exit, label %bb.db, !prof !16

bb.db:                                            ; preds = %bb.da
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %i.kg, ptr noundef @.str.73, i32 noundef %.val.i26, i32 noundef %.sroa.0.0.copyload.i) #22
  %.val.i.i29 = load i32, ptr %i.o, align 4
  %.val2.i.i = load i32, ptr %i.p, align 8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull readonly %i.kg, ptr noundef @.str.13, i32 noundef %.val2.i.i, i32 noundef %.val.i.i29) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !annotation !21
  call void @security_current_getlsmprop_subj(ptr noundef nonnull %3) #17
  %i.kh = call range(i32 -2147483648, 1) i32 @audit_log_subj_ctx(ptr noundef nonnull %i.kg, ptr noundef nonnull %3) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %audit_log_common_recv_msg.exit

audit_log_common_recv_msg.exit:                   ; preds = %bb.cz, %bb.da, %bb.db
  %i.ki = phi ptr [ null, %bb.cz ], [ null, %bb.da ], [ %i.kg, %bb.db ] ; 8 uses
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %i.ki, ptr noundef @.str.56) #22
  %i.kj = call i64 @strlen(ptr noundef readonly %i.jr) #17 ; 3 uses
  %i.kk = getelementptr i8, ptr %i.jr, i64 %i.kj  ; 2 uses
  %i.kl = icmp ult ptr %i.jr, %i.kk
  br i1 %i.kl, label %.lr.ph.i.i.i20, label %.loopexit.i.i19

bb.dc:                                            ; preds = %.lr.ph.i.i.i20
  %i.km = getelementptr i8, ptr %.011.i.i.i21, i64 1 ; 2 uses
  %exitcond.not.i.i.i23 = icmp eq ptr %i.km, %i.kk
  br i1 %exitcond.not.i.i.i23, label %.loopexit.i.i19, label %.lr.ph.i.i.i20, !llvm.loop !1

.lr.ph.i.i.i20:                                   ; preds = %audit_log_common_recv_msg.exit, %bb.dc
  %.011.i.i.i21 = phi ptr [ %i.km, %bb.dc ], [ %i.jr, %audit_log_common_recv_msg.exit ] ; 2 uses
  %i.kn = load i8, ptr %.011.i.i.i21, align 1     ; 2 uses
  %i.ko = icmp eq i8 %i.kn, 34
  %i.kp = add i8 %i.kn, -127
  %i.kq = icmp ult i8 %i.kp, -94
  %or.cond10.i.i.i22 = or i1 %i.ko, %i.kq
  br i1 %or.cond10.i.i.i22, label %audit_string_contains_control.exit.i.i24, label %bb.dc

audit_string_contains_control.exit.i.i24:         ; preds = %.lr.ph.i.i.i20
  call void @audit_log_n_hex(ptr noundef readonly %i.ki, ptr noundef readonly %i.jr, i64 noundef %i.kj) #22
  br label %audit_log_untrustedstring.exit25

.loopexit.i.i19:                                  ; preds = %bb.dc, %audit_log_common_recv_msg.exit
  call void @audit_log_n_string(ptr noundef readonly %i.ki, ptr noundef readonly %i.jr, i64 noundef %i.kj) #22
  br label %audit_log_untrustedstring.exit25

audit_log_untrustedstring.exit25:                 ; preds = %audit_string_contains_control.exit.i.i24, %.loopexit.i.i19
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %i.ki, ptr noundef @.str.57) #22
  %i.kr = call i64 @strlen(ptr noundef readonly %i.jw) #17 ; 3 uses
  %i.ks = getelementptr i8, ptr %i.jw, i64 %i.kr  ; 2 uses
  %i.kt = icmp ult ptr %i.jw, %i.ks
  br i1 %i.kt, label %.lr.ph.i.i.i, label %.loopexit.i.i

bb.dd:                                            ; preds = %.lr.ph.i.i.i
  %i.ku = getelementptr i8, ptr %.011.i.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq ptr %i.ku, %i.ks
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

.lr.ph.i.i.i:                                     ; preds = %audit_log_untrustedstring.exit25, %bb.dd
  %.011.i.i.i = phi ptr [ %i.ku, %bb.dd ], [ %i.jw, %audit_log_untrustedstring.exit25 ] ; 2 uses
  %i.kv = load i8, ptr %.011.i.i.i, align 1       ; 2 uses
  %i.kw = icmp eq i8 %i.kv, 34
  %i.kx = add i8 %i.kv, -127
  %i.ky = icmp ult i8 %i.kx, -94
  %or.cond10.i.i.i = or i1 %i.kw, %i.ky
  br i1 %or.cond10.i.i.i, label %audit_string_contains_control.exit.i.i, label %bb.dd

audit_string_contains_control.exit.i.i:           ; preds = %.lr.ph.i.i.i
  call void @audit_log_n_hex(ptr noundef readonly %i.ki, ptr noundef readonly %i.jw, i64 noundef %i.kr) #22
  br label %audit_log_untrustedstring.exit

.loopexit.i.i:                                    ; preds = %bb.dd, %audit_log_untrustedstring.exit25
  call void @audit_log_n_string(ptr noundef readonly %i.ki, ptr noundef readonly %i.jw, i64 noundef %i.kr) #22
  br label %audit_log_untrustedstring.exit

audit_log_untrustedstring.exit:                   ; preds = %audit_string_contains_control.exit.i.i, %.loopexit.i.i
  %.not230.i = icmp eq i32 %i.ka, 0
  %i.kz = zext i1 %.not230.i to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %i.ki, ptr noundef @.str.58, i32 noundef %i.kz) #22
  call void @audit_log_end(ptr noundef %i.ki) #22
  call void @kfree(ptr noundef %i.jr) #17
  br label %.thread287.sink.split.i

.thread287.sink.split.i:                          ; preds = %audit_log_untrustedstring.exit, %bb.cx
  %.sink.i = phi ptr [ %i.jr, %bb.cx ], [ %i.jw, %audit_log_untrustedstring.exit ]
  %.11.ph.ph.i = phi i32 [ %i.jz, %bb.cx ], [ %i.ka, %audit_log_untrustedstring.exit ]
  call void @kfree(ptr noundef %.sink.i) #17
  br label %.thread287.i

.thread287.i:                                     ; preds = %.thread287.sink.split.i, %bb.cv, %bb.ct
  %.11.ph.i = phi i32 [ -22, %bb.ct ], [ %i.ju, %bb.cv ], [ %.11.ph.ph.i, %.thread287.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %audit_set_feature.exit

bb.de:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %audit_receive_msg.exit.thread

bb.df:                                            ; preds = %bb.f
  %lhsv.i = load i32, ptr @audit_sig_lsm, align 4
  %.not.i = icmp eq i32 %lhsv.i, 0
  br i1 %.not.i, label %_kmalloc_noprof.exit.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.la = call i32 @security_lsmprop_to_secctx(ptr noundef @audit_sig_lsm, ptr noundef nonnull %5, i32 noundef 0) #17 ; 3 uses
  %i.lb = icmp slt i32 %i.la, 0
  br i1 %i.lb, label %audit_receive_msg.exit.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.dg
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  %i.lc = zext i32 %.pre.i to i64
  %i.ld = add nuw nsw i64 %i.lc, 8
  br label %_kmalloc_noprof.exit.i

_kmalloc_noprof.exit.i:                           ; preds = %bb.df, %._crit_edge.i
  %i.le = phi i64 [ %i.ld, %._crit_edge.i ], [ 8, %bb.df ]
  %.12.i = phi i32 [ %i.la, %._crit_edge.i ], [ 0, %bb.df ]
  %i.lf = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -1, 4294967304) %i.le, i32 noundef 3264) #24 ; 6 uses
  %.not229.i = icmp eq ptr %i.lf, null
  br i1 %.not229.i, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %_kmalloc_noprof.exit.i
  %lhsv291.i = load i32, ptr @audit_sig_lsm, align 4
  %.not292.i = icmp eq i32 %lhsv291.i, 0
  br i1 %.not292.i, label %audit_receive_msg.exit.thread, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @security_release_secctx(ptr noundef nonnull %5) #17
  br label %audit_receive_msg.exit.thread

bb.dj:                                            ; preds = %_kmalloc_noprof.exit.i
  %i.lg = load i32, ptr @audit_sig_uid.0, align 4
  store i32 %i.lg, ptr %i.lf, align 8
  %i.lh = load i32, ptr @audit_sig_pid, align 4
  %i.li = getelementptr i8, ptr %i.lf, i64 4
  store i32 %i.lh, ptr %i.li, align 4
  %lhsv289.i = load i32, ptr @audit_sig_lsm, align 4
  %.not290.i = icmp eq i32 %lhsv289.i, 0
  br i1 %.not290.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.lj = getelementptr i8, ptr %i.lf, i64 8
  %i.lk = load ptr, ptr %5, align 8
  %i.ll = load i32, ptr %.phi.trans.insert.i, align 8
  %i.lm = zext i32 %i.ll to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.lj, ptr align 1 %i.lk, i64 %i.lm, i1 false)
  call void @security_release_secctx(ptr noundef nonnull %5) #17
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.ln = load i32, ptr %.phi.trans.insert.i, align 8
  %i.lo = add i32 %i.ln, 8
  call fastcc void @audit_send_reply(ptr noundef %0, i32 noundef %i.at, i32 noundef 1010, ptr noundef nonnull %i.lf, i32 noundef %i.lo) #22
  call void @kfree(ptr noundef nonnull %i.lf) #17
  br label %audit_set_feature.exit

bb.dm:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.lp = load ptr, ptr %i.k, align 16
  %i.lq = getelementptr i8, ptr %i.lp, i64 1008
  %i.lr = load volatile i32, ptr %i.lq, align 8   ; 2 uses
  %i.ls = and i32 %i.lr, 1
  store i32 %i.ls, ptr %8, align 4
  %i.lt = lshr i32 %i.lr, 1
  %.lobit228.i = and i32 %i.lt, 1
  store i32 %.lobit228.i, ptr %i.q, align 4
  call fastcc void @audit_send_reply(ptr noundef %0, i32 noundef %i.at, i32 noundef 1016, ptr noundef nonnull %8, i32 noundef 8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %audit_set_feature.exit

bb.dn:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store i64 0, ptr %.sroa.0.i, align 8
  %i.lu = call i32 @llvm.umin.i32(i32 %i.av, i32 8)
  %i.lv = zext nneg i32 %i.lu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i, ptr align 4 %i.au, i64 %i.lv, i1 false)
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..0.26.i = load i32, ptr %.sroa.0.i, align 8 ; 3 uses
  %or.cond9.i = icmp ult i32 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..0.26.i, 2
  %.sroa.0.i.4..sroa.0.i.4..sroa.0.i.4..sroa.0.4..sroa.0.4..sroa.0.4..4..i = load i32, ptr %.sroa.0.i.4.i.4.i.4..4..sroa_idx, align 4 ; 3 uses
  %or.cond12.i = icmp ult i32 %.sroa.0.i.4..sroa.0.i.4..sroa.0.i.4..sroa.0.4..sroa.0.4..sroa.0.4..4..i, 2
  %or.cond250.not.i = select i1 %or.cond9.i, i1 %or.cond12.i, i1 false ; 3 uses
  %.13.i = select i1 %or.cond250.not.i, i32 0, i32 -22
  br i1 %or.cond250.not.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.lw = load ptr, ptr %i.k, align 16
  %i.lx = getelementptr i8, ptr %i.lw, i64 1008
  %i.ly = load volatile i32, ptr %i.lx, align 8
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  %i.lz = sub nsw i32 0, %.sroa.0.i.4..sroa.0.i.4..sroa.0.i.4..sroa.0.4..sroa.0.4..sroa.0.4..4..i
  %i.ma = and i32 %i.lz, 2
  %i.mb = or disjoint i32 %i.ma, %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..0.26.i
  %i.mc = load ptr, ptr %i.k, align 16
  %i.md = getelementptr i8, ptr %i.mc, i64 1008   ; 2 uses
  %i.me = call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.md, i32 %i.mb, ptr elementtype(i32) %i.md) #21, !srcloc !72
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.0199.i = phi i32 [ %i.me, %bb.dp ], [ %i.ly, %bb.do ] ; 2 uses
  %i.mf = and i32 %.0199.i, 1
  %i.mg = lshr i32 %.0199.i, 1
  %.lobit.i = and i32 %i.mg, 1
  %i.mh = load ptr, ptr %i.l, align 8
  %i.mi = getelementptr i8, ptr %i.mh, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.mi, align 8
  %.val.i262.i = load i32, ptr %i.m, align 4
  %i.mj = load i32, ptr @audit_enabled, align 4
  %i.mk = icmp eq i32 %i.mj, 0
  br i1 %i.mk, label %audit_log_common_recv_msg.exit.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ml = load ptr, ptr %i.n, align 16
  %i.mm = call ptr @audit_log_start(ptr noundef %i.ml, i32 noundef 3264, i32 noundef 1305) #22 ; 5 uses
  %.not.i264.i = icmp eq ptr %i.mm, null
  br i1 %.not.i264.i, label %audit_log_common_recv_msg.exit.i, label %bb.ds, !prof !16

bb.ds:                                            ; preds = %bb.dr
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %i.mm, ptr noundef @.str.73, i32 noundef %.val.i262.i, i32 noundef %.sroa.0.0.copyload.i.i) #22
  %.val.i.i.i = load i32, ptr %i.o, align 4
  %.val2.i.i.i = load i32, ptr %i.p, align 8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull readonly %i.mm, ptr noundef @.str.13, i32 noundef %.val2.i.i.i, i32 noundef %.val.i.i.i) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i32 0, ptr %4, align 4, !annotation !21
  call void @security_current_getlsmprop_subj(ptr noundef nonnull %4) #17
  %i.mn = call range(i32 -2147483648, 1) i32 @audit_log_subj_ctx(ptr noundef nonnull %i.mm, ptr noundef nonnull %4) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %audit_log_common_recv_msg.exit.i

audit_log_common_recv_msg.exit.i:                 ; preds = %bb.ds, %bb.dr, %bb.dq
  %.0273.i = phi ptr [ %i.mm, %bb.ds ], [ null, %bb.dr ], [ null, %bb.dq ] ; 2 uses
  %i.mo = zext i1 %or.cond250.not.i to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %.0273.i, ptr noundef @.str.59, i32 noundef %i.mf, i32 noundef %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..0.26.i, i32 noundef %.lobit.i, i32 noundef %.sroa.0.i.4..sroa.0.i.4..sroa.0.i.4..sroa.0.4..sroa.0.4..sroa.0.4..4..i, i32 noundef %i.mo) #22
  call void @audit_log_end(ptr noundef %.0273.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %audit_set_feature.exit

audit_set_feature.exit:                           ; preds = %audit_log_feature_change.exit56.1.i, %bb.bu, %audit_log_common_recv_msg.exit.i, %bb.dm, %bb.dl, %.thread287.i, %audit_log_common_recv_msg.exit36, %bb.cm, %bb.cl, %bb.cg, %bb.cd, %bb.cb, %bb.ca, %bb.bj, %bb.bi, %auditd_pid_vnr.exit.i
  %.14.i = phi i32 [ %.13.i, %audit_log_common_recv_msg.exit.i ], [ %i.hw, %bb.cb ], [ %i.hz, %bb.cd ], [ 0, %auditd_pid_vnr.exit.i ], [ 0, %bb.bi ], [ 0, %bb.bj ], [ -22, %bb.ca ], [ %i.iz, %bb.cl ], [ %i.ja, %bb.cm ], [ 0, %audit_log_common_recv_msg.exit36 ], [ %.11.ph.i, %.thread287.i ], [ %.12.i, %bb.dl ], [ 0, %bb.dm ], [ 0, %bb.cg ], [ 0, %bb.bu ], [ 0, %audit_log_feature_change.exit56.1.i ]
  %i.mp = call i32 @llvm.smin.i32(i32 %.14.i, i32 0)
  br label %audit_receive_msg.exit

audit_receive_msg.exit.thread:                    ; preds = %bb.cn, %bb.dg, %audit_netlink_ok.exit.i, %bb.bk, %bb.bz, %audit_log_common_recv_msg.exit43, %bb.ch, %bb.de, %bb.di, %bb.dh, %bb.e, %bb.c, %bb.c, %bb.c, %bb.d, %bb.bp, %bb.bn, %bb.bo
  %.4.i.ph = phi i32 [ -95, %bb.c ], [ -1, %bb.d ], [ -95, %bb.c ], [ -95, %bb.c ], [ -22, %bb.e ], [ -12, %bb.dh ], [ -12, %bb.di ], [ -1, %bb.de ], [ -22, %bb.ch ], [ -1, %audit_log_common_recv_msg.exit43 ], [ -22, %bb.bz ], [ -22, %bb.bk ], [ -1, %audit_netlink_ok.exit.i ], [ %i.la, %bb.dg ], [ -1, %bb.cn ], [ -1, %bb.bp ], [ -1, %bb.bn ], [ -1, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.dt

audit_receive_msg.exit:                           ; preds = %.thread281.i, %bb.by, %audit_set_feature.exit
  %.4.i = phi i32 [ %i.mp, %audit_set_feature.exit ], [ %.2.ph.i, %.thread281.i ], [ 0, %bb.by ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.mq = load i8, ptr %i.d, align 1, !range !19, !noundef !20
  %i.mr = trunc nuw i8 %i.mq to i1
  %i.ms = icmp ne i32 %.4.i, 0
  %or.cond = select i1 %i.mr, i1 true, i1 %i.ms
  br i1 %or.cond, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %audit_receive_msg.exit.thread, %audit_receive_msg.exit
  %.4.i97 = phi i32 [ %.4.i.ph, %audit_receive_msg.exit.thread ], [ %.4.i, %audit_receive_msg.exit ]
  call void @netlink_ack(ptr noundef %0, ptr noundef %.0105, i32 noundef %.4.i97, ptr noundef null) #17
  br label %bb.du

bb.du:                                            ; preds = %audit_receive_msg.exit, %bb.dt
  %i.mt = load i32, ptr %.0105, align 4
  %i.mu = add i32 %i.mt, 3
  %i.mv = and i32 %i.mu, -4                       ; 2 uses
  %i.mw = sub i32 %.080104, %i.mv                 ; 2 uses
  %i.mx = sext i32 %i.mv to i64
  %i.my = getelementptr i8, ptr %.0105, i64 %i.mx
  %i.mz = icmp sgt i32 %i.mw, 15
  br i1 %i.mz, label %bb.b, label %nlmsg_ok.exit.thread, !llvm.loop !59

nlmsg_ok.exit.thread:                             ; preds = %bb.b, %bb.du, %bb.a
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @audit_cmd_mutex, i64 24), align 8
  call void @mutex_unlock(ptr noundef @audit_cmd_mutex) #17
  %i.na = load i32, ptr @audit_backlog_limit, align 4 ; 2 uses
  %.not18 = icmp eq i32 %i.na, 0
  br i1 %.not18, label %bb.dy, label %bb.dv

bb.dv:                                            ; preds = %nlmsg_ok.exit.thread
  %i.nb = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @audit_queue, i64 16), align 8
  %i.nc = icmp ugt i32 %i.nb, %i.na
  br i1 %i.nc, label %bb.dw, label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.nd = getelementptr inbounds nuw i8, ptr %9, i64 8
end_hunk_0
