Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/test-run-command?download=true
inline.NumInlined: 20
inline.NumDeleted: 8
begin_hunk_0_@cmd__run_command:bb.a
  %i.gi = call i32 @start_command(ptr noundef nonnull %7) #15
  %i.gj = icmp slt i32 %i.gi, 0
  br i1 %i.gj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @die(ptr noundef nonnull @.str.57) #17
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.gk = call i32 @close(i32 noundef %i.gd) #15  ; 0 uses
  %i.gl = call i32 @unlink(ptr noundef nonnull %i.f) #15
  %.not.i56 = icmp eq i32 %i.gl, 0
  br i1 %.not.i56, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @die(ptr noundef nonnull @.str.58, ptr noundef nonnull %i.f) #17
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.gm = load i32, ptr %i.ge, align 8, !tbaa !35
  %i.gn = call i32 @close(i32 noundef %i.gm) #15
  %i.go = icmp slt i32 %i.gn, 0
  br i1 %i.go, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gp = call i32 @finish_command(ptr noundef nonnull %7) #15
  %i.gq = icmp slt i32 %i.gp, 0
  br i1 %i.gq, label %bb.ac, label %inherit_handle.exit

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void (ptr, ...) @die(ptr noundef nonnull @.str.59) #17
  unreachable

inherit_handle.exit:                              ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %.critedge.thread

bb.ad:                                            ; preds = %._crit_edge122
  %i.gr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(23) @.str.2) #16
  %.not44 = icmp eq i32 %i.gr, 0
  br i1 %.not44, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) @__const.test_stdin_pipe_feed.buf, i64 24, i1 false)
  %i.gs = call i64 @strbuf_read(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 0) #15
  %i.gt = icmp slt i64 %i.gs, 0
  br i1 %i.gt, label %bb.af, label %inherit_handle_child.exit

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @die(ptr noundef nonnull @.str.60) #17
  unreachable

inherit_handle_child.exit:                        ; preds = %bb.ae
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !24
  %i.gw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.61, ptr noundef %i.gv) ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %.critedge.thread

bb.ag:                                            ; preds = %bb.ad
  br i1 %i.i, label %bb.ah, label %.critedge.thread

bb.ah:                                            ; preds = %bb.ag
  %i.gx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(18) @.str.3) #16
  %.not45 = icmp eq i32 %i.gx, 0
  br i1 %.not45, label %bb.ai, label %bb.bi

bb.ai:                                            ; preds = %bb.ah
  %i.gy = add nsw i32 %0, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 100, ptr %i.a, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 0, ptr %i.c, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.test_stdin_pipe_feed.buf, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.quote_stress_test.args, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i32 11, ptr %4, align 16, !tbaa !51
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 110, ptr %i.gz, align 4, !tbaa !52
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.62, ptr %i.ha, align 8, !tbaa !53
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.a, ptr %i.hb, align 16, !tbaa !54
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 4, ptr %i.hc, align 8, !tbaa !55
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr @.str.19, ptr %i.hd, align 16, !tbaa !56
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @.str.63, ptr %i.he, align 8, !tbaa !57
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.hf, i8 0, i64 48, i1 false)
  store i32 11, ptr %i.hg, align 16, !tbaa !51
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 100
  store i32 115, ptr %i.hh, align 4, !tbaa !52
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr @.str.64, ptr %i.hi, align 8, !tbaa !53
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr %i.b, ptr %i.hj, align 16, !tbaa !54
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 4, ptr %i.hk, align 8, !tbaa !55
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 128
  store ptr @.str.19, ptr %i.hl, align 16, !tbaa !56
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 136
  store ptr @.str.65, ptr %i.hm, align 8, !tbaa !57
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.hn, i8 0, i64 48, i1 false)
  store i32 9, ptr %i.ho, align 16, !tbaa !51
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 196
  store i32 109, ptr %i.hp, align 4, !tbaa !52
  %i.hq = getelementptr inbounds nuw i8, ptr %4, i64 200
  store ptr @.str.66, ptr %i.hq, align 8, !tbaa !53
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 208
  store ptr %i.c, ptr %i.hr, align 16, !tbaa !54
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 216
  store i64 4, ptr %i.hs, align 8, !tbaa !55
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 224
  store ptr null, ptr %i.ht, align 16, !tbaa !56
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 232
  store ptr @.str.67, ptr %i.hu, align 8, !tbaa !57
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 240
  store i32 2, ptr %i.hv, align 16, !tbaa !58
  %i.hw = getelementptr inbounds nuw i8, ptr %4, i64 244
  store i32 0, ptr %i.hw, align 4
  %i.hx = getelementptr inbounds nuw i8, ptr %4, i64 248
  store ptr null, ptr %i.hx, align 8, !tbaa !59
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 256
  store i64 1, ptr %i.hy, align 16, !tbaa !60
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.hz, i8 0, i64 120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 16 dereferenceable(16) @__const.quote_stress_test.usage, i64 16, i1 false)
  %i.ia = call i32 @parse_options(i32 noundef range(i32 1, 2147483647) %i.gy, ptr noundef nonnull %i.fz, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %i.d, i32 noundef 0) #15 ; 2 uses
  %i.ib = call i32 @setenv(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef 0) #15 ; 0 uses
  %i.ic = load i32, ptr %i.a, align 4, !tbaa !16
  %i.id = icmp sgt i32 %i.ic, 0
  br i1 %i.id, label %.lr.ph.i58, label %._crit_edge.i57

.lr.ph.i58:                                       ; preds = %bb.ai
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.if = icmp sgt i32 %i.ia, 0
  %i.ig = zext i32 %i.ia to i64                   ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.bh, %.lr.ph.i58
  %.055102.i = phi i32 [ 0, %.lr.ph.i58 ], [ %i.kx, %bb.bh ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(136) @__const.quote_stress_test.cp, i64 136, i1 false)
  call void @strvec_clear(ptr noundef nonnull %3) #15
  %i.ij = load i32, ptr %i.c, align 4, !tbaa !16
  %.not.i59 = icmp eq i32 %i.ij, 0
  br i1 %.not.i59, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %3, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.64, ptr noundef null) #15
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %3, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, ptr noundef null) #15
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ik = load i64, ptr %i.ie, align 8, !tbaa !70 ; 2 uses
  br i1 %i.if, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  store i32 1, ptr %i.a, align 4, !tbaa !16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %bb.an
  %indvars.iv128.i = phi i64 [ 0, %bb.an ], [ %indvars.iv.next129.i, %bb.ao ] ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv128.i
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !15
  %i.in = call ptr @strvec_push(ptr noundef nonnull %3, ptr noundef %i.im) #15 ; 0 uses
  %indvars.iv.next129.i = add nuw nsw i64 %indvars.iv128.i, 1 ; 2 uses
  %exitcond.not.i65 = icmp eq i64 %indvars.iv.next129.i, %i.ig
  br i1 %exitcond.not.i65, label %.loopexit.i, label %bb.ao, !llvm.loop !40

bb.ap:                                            ; preds = %bb.am
  %i.io = load i64, ptr @my_random_next, align 8, !tbaa !71
  %.fr = freeze i64 %i.io                         ; 3 uses
  %i.ip = mul i64 %.fr, 1103515245
  %i.iq = add i64 %i.ip, 12345
  store i64 %i.iq, ptr @my_random_next, align 8, !tbaa !71
  %i.ir = urem i64 %.fr, 5
  br label %bb.aq

bb.aq:                                            ; preds = %bb.as, %bb.ap
  %indvars.iv125.i = phi i64 [ 0, %bb.ap ], [ %indvars.iv.next126.i, %bb.as ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.is = load i64, ptr @my_random_next, align 8, !tbaa !71 ; 2 uses
  %i.it = mul i64 %i.is, 1103515245
  %i.iu = add i64 %i.it, 12345
  %i.iv = urem i64 %i.is, 19                      ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %indvars.iv.i60 = phi i64 [ 0, %bb.aq ], [ %indvars.iv.next.i61, %bb.ar ] ; 3 uses
  %i.iw = phi i64 [ %i.iu, %bb.aq ], [ %i.iy, %bb.ar ] ; 2 uses
  %i.ix = mul i64 %i.iw, 1103515245
  %i.iy = add i64 %i.ix, 12345                    ; 2 uses
  %i.iz = urem i64 %i.iw, 26
  %i.ja = getelementptr inbounds nuw i8, ptr @__const.quote_stress_test.special, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !66
  %i.jc = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i60
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !66
  %indvars.iv.next.i61 = add nuw nsw i64 %indvars.iv.i60, 1
  %exitcond.not.a = icmp eq i64 %indvars.iv.i60, %i.iv
  br i1 %exitcond.not.a, label %bb.as, label %bb.ar, !llvm.loop !41

bb.as:                                            ; preds = %bb.ar
  store i64 %i.iy, ptr @my_random_next, align 8, !tbaa !71
  %i.jd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.iv
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 1
  store i8 0, ptr %i.je, align 1, !tbaa !66
  %i.jf = call ptr @strvec_push(ptr noundef nonnull %3, ptr noundef nonnull %i.e) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  %indvars.iv.next126.i = add nuw nsw i64 %indvars.iv125.i, 1
  %exitcond121.not = icmp eq i64 %indvars.iv125.i, %i.ir
  br i1 %exitcond121.not, label %.loopexit.loopexit104.i, label %bb.aq, !llvm.loop !42

.loopexit.loopexit104.i:                          ; preds = %bb.as
  %i.jg = urem i64 %.fr, 5
  %i.jh = add nuw nsw i64 %i.jg, 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ao, %.loopexit.loopexit104.i
  %.049.i = phi i64 [ %i.jh, %.loopexit.loopexit104.i ], [ %i.ig, %bb.ao ] ; 2 uses
  %i.ji = load i32, ptr %i.b, align 4, !tbaa !16
  %i.jj = icmp slt i32 %.055102.i, %i.ji
  br i1 %i.jj, label %bb.bh, label %bb.at

bb.at:                                            ; preds = %.loopexit.i
  %i.jk = load ptr, ptr %3, align 8, !tbaa !72
  call void @strvec_pushv(ptr noundef nonnull %5, ptr noundef %i.jk) #15
  store i64 0, ptr %i.ih, align 8, !tbaa !22
  %i.jl = load ptr, ptr %i.ii, align 8, !tbaa !24 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.jl, @strbuf_slopbuf
  br i1 %.not9.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i8 0, ptr %i.jl, align 1, !tbaa !66
  br label %strbuf_setlen.exit.i

bb.av:                                            ; preds = %bb.at
  %i.jm = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !66
  %.not10.i.i = icmp eq i8 %i.jm, 0
  br i1 %.not10.i.i, label %strbuf_setlen.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @__assert_fail(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #17
  unreachable

strbuf_setlen.exit.i:                             ; preds = %bb.av, %bb.au
  %i.jn = call i32 @pipe_command(ptr noundef nonnull %5, ptr noundef null, i64 noundef 0, ptr noundef nonnull %2, i64 noundef 0, ptr noundef null, i64 noundef 0) #15
  %i.jo = icmp slt i32 %i.jn, 0
  br i1 %i.jo, label %bb.ax, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %strbuf_setlen.exit.i
  %.pre140.i = load ptr, ptr %3, align 8, !tbaa !72
  %.pre141.i = load ptr, ptr %i.ii, align 8, !tbaa !24
  br label %.preheader.i62

bb.ax:                                            ; preds = %strbuf_setlen.exit.i
  %i.jp = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.74) #15 ; 0 uses
  br label %bb.bg

.preheader.i62:                                   ; preds = %bb.az, %.preheader.preheader.i
  %i.jq = phi ptr [ %.pre141.i, %.preheader.preheader.i ], [ %i.jz, %bb.az ] ; 2 uses
  %i.jr = phi ptr [ %.pre140.i, %.preheader.preheader.i ], [ %i.ka, %bb.az ] ; 2 uses
  %indvars.iv131.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next132.i, %bb.az ] ; 2 uses
  %.048101.i = phi i32 [ 0, %.preheader.preheader.i ], [ %.1.i, %bb.az ]
  %.151100.i = phi i32 [ 0, %.preheader.preheader.i ], [ %i.kf, %bb.az ] ; 2 uses
  %i.js = getelementptr [8 x i8], ptr %i.jr, i64 %i.ik
  %i.jt = getelementptr [8 x i8], ptr %i.js, i64 %indvars.iv131.i
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !15 ; 2 uses
  %i.jv = sext i32 %.151100.i to i64              ; 2 uses
  %i.jw = getelementptr inbounds i8, ptr %i.jq, i64 %i.jv ; 2 uses
  %i.jx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ju, ptr noundef nonnull dereferenceable(1) %i.jw) #16
  %.not73.i = icmp eq i32 %i.jx, 0
  br i1 %.not73.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.preheader.i62
  %i.jy = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.75, ptr noundef nonnull %i.ju, ptr noundef nonnull %i.jw) #15 ; 0 uses
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !72
  %.pre142.i = load ptr, ptr %i.ii, align 8, !tbaa !24
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.preheader.i62
  %i.jz = phi ptr [ %.pre142.i, %bb.ay ], [ %i.jq, %.preheader.i62 ] ; 2 uses
  %i.ka = phi ptr [ %.pre.i, %bb.ay ], [ %i.jr, %.preheader.i62 ]
  %.1.i = phi i32 [ -1, %bb.ay ], [ %.048101.i, %.preheader.i62 ] ; 2 uses
  %i.kb = getelementptr inbounds i8, ptr %i.jz, i64 %i.jv
  %i.kc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kb) #16
  %i.kd = trunc i64 %i.kc to i32
  %i.ke = add i32 %.151100.i, 1
  %i.kf = add i32 %i.ke, %i.kd                    ; 3 uses
  %indvars.iv.next132.i = add nuw i64 %indvars.iv131.i, 1 ; 2 uses
  %exitcond134.not.i = icmp eq i64 %indvars.iv.next132.i, %.049.i
  br i1 %exitcond134.not.i, label %bb.ba, label %.preheader.i62, !llvm.loop !43

bb.ba:                                            ; preds = %bb.az
  %i.kg = sext i32 %i.kf to i64
  %i.kh = load i64, ptr %i.ih, align 8, !tbaa !22 ; 2 uses
  %.not70.i = icmp eq i64 %i.kh, %i.kg
  br i1 %.not70.i, label %bb.bb, label %.thread.i

.thread.i:                                        ; preds = %bb.ba
  %i.ki = trunc i64 %i.kh to i32
  %i.kj = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.76, i32 noundef %i.ki, i32 noundef %i.kf) #15 ; 0 uses
  br label %.loopexit80.i

bb.bb:                                            ; preds = %bb.ba
  %.not71.i63 = icmp eq i32 %.1.i, 0
  br i1 %.not71.i63, label %bb.be, label %.loopexit80.i

.loopexit80.i:                                    ; preds = %bb.bb, %.thread.i
  %i.kk = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.kl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kk, ptr noundef nonnull @.str.77, i32 noundef %.055102.i) #18 ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.loopexit80.i
  %indvars.iv135.i = phi i64 [ 0, %.loopexit80.i ], [ %indvars.iv.next136.i, %bb.bc ] ; 3 uses
  %i.km = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.kn = load ptr, ptr %3, align 8, !tbaa !72
  %i.ko = getelementptr [8 x i8], ptr %i.kn, i64 %i.ik
  %i.kp = getelementptr [8 x i8], ptr %i.ko, i64 %indvars.iv135.i
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !15
  %i.kr = trunc nuw nsw i64 %indvars.iv135.i to i32
  %i.ks = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.km, ptr noundef nonnull @.str.78, i32 noundef %i.kr, ptr noundef %i.kq) #18 ; 0 uses
  %indvars.iv.next136.i = add nuw i64 %indvars.iv135.i, 1 ; 2 uses
  %exitcond139.not.i = icmp eq i64 %indvars.iv.next136.i, %.049.i
  br i1 %exitcond139.not.i, label %bb.bd, label %bb.bc, !llvm.loop !44

bb.bd:                                            ; preds = %bb.bc
  call void @strbuf_release(ptr noundef nonnull %2) #15
  call void @strvec_clear(ptr noundef nonnull %3) #15
  br label %bb.bg

bb.be:                                            ; preds = %bb.bb
  %.not72.i64 = icmp ne i32 %.055102.i, 0
  %i.kt = urem i32 %.055102.i, 100
  %i.ku = icmp eq i32 %i.kt, 0
  %or.cond.i = and i1 %.not72.i64, %i.ku
  br i1 %or.cond.i, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.kv = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.kw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kv, ptr noundef nonnull @.str.79, i32 noundef %.055102.i) #18 ; 0 uses
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bd, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %quote_stress_test.exit

bb.bh:                                            ; preds = %bb.bf, %bb.be, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.kx = add nuw nsw i32 %.055102.i, 1           ; 2 uses
  %i.ky = load i32, ptr %i.a, align 4, !tbaa !16
  %i.kz = icmp slt i32 %i.kx, %i.ky
  br i1 %i.kz, label %bb.aj, label %._crit_edge.i57, !llvm.loop !45

._crit_edge.i57:                                  ; preds = %bb.bh, %bb.ai
  call void @strbuf_release(ptr noundef nonnull %2) #15
  call void @strvec_clear(ptr noundef nonnull %3) #15
  br label %quote_stress_test.exit

quote_stress_test.exit:                           ; preds = %bb.bg, %._crit_edge.i57
  %i.la = phi i32 [ 1, %bb.bg ], [ 0, %._crit_edge.i57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.critedge.thread

bb.bi:                                            ; preds = %bb.ah
  %i.lb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(11) @.str.4) #16
  %.not46 = icmp eq i32 %i.lb, 0
  br i1 %.not46, label %bb.bj, label %.critedge

bb.bj:                                            ; preds = %bb.bi
  %i.lc = add nsw i32 %0, -1
  call fastcc void @quote_echo(i32 noundef %i.lc, ptr noundef nonnull %i.fz)
  br label %.critedge.thread

.critedge:                                        ; preds = %bb.bi
  %i.ld = icmp eq i32 %0, 2
  br i1 %i.ld, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.le = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(4) @.str.5) #16
  %.not4792 = icmp eq i32 %i.le, 0
  br i1 %.not4792, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.bn

.lr.ph:                                           ; preds = %.preheader
  %i.lg = getelementptr inbounds nuw i8, ptr %12, i64 24
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph, %bb.bm
  %.03794 = phi ptr [ %1, %.lr.ph ], [ %i.lh, %bb.bm ] ; 3 uses
  %.03893 = phi i32 [ %0, %.lr.ph ], [ %i.lk, %bb.bm ] ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.03794, i64 16 ; 3 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !15 ; 2 uses
  %.not55 = icmp eq ptr %i.li, null
  br i1 %.not55, label %bb.bl, label %bb.bm

end_hunk_0
