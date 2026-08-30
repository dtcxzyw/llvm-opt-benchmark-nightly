Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/rss?download=true
inline.NumInlined: 141
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ethnl_rss_set:bb.a
bb.cj:                                            ; preds = %bb.ci
  %i.jf = zext i32 %.val.us.i.us to i64
  %i.jg = call i32 @ethtool_rxfh_config_is_sym(i64 noundef %i.jf) #17
  %.not46.us.i.us = icmp eq i32 %i.jg, 0
  br i1 %.not46.us.i.us, label %.split.us.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jh = load ptr, ptr %i.ih, align 8
  %i.ji = load ptr, ptr %i.hs, align 8
  %i.jj = call i32 %i.jh(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef %i.ji) #17, !inline_history !27 ; 2 uses
  %.not48.us.i.us = icmp eq i32 %i.jj, 0
  br i1 %.not48.us.i.us, label %bb.cl, label %.thread.i

bb.cl:                                            ; preds = %bb.ck, %bb.ci, %.preheader.split.us.i.us
  %.7.us = phi i8 [ %.6.us, %.preheader.split.us.i.us ], [ %.6.us, %bb.ci ], [ 1, %bb.ck ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %indvars.iv.next68.i.us = add nuw nsw i64 %indvars.iv67.i.us, 1 ; 2 uses
  %exitcond70.not.i.us = icmp eq i64 %indvars.iv.next68.i.us, 28
  br i1 %exitcond70.not.i.us, label %.loopexit, label %.preheader.split.us.i.us, !llvm.loop !28

.preheader.split.us.i:                            ; preds = %.preheader.split.us.i.preheader, %bb.co
  %.6 = phi i8 [ %.7, %bb.co ], [ 0, %.preheader.split.us.i.preheader ] ; 3 uses
  %indvars.iv67.i = phi i64 [ %indvars.iv.next68.i, %bb.co ], [ 1, %.preheader.split.us.i.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.jk = getelementptr i8, ptr @ethtool_rxfh_ft_nl2ioctl, i64 %indvars.iv67.i
  store i32 0, ptr %2, align 4
  %i.jl = load i8, ptr %i.jk, align 1
  %i.jm = zext i8 %i.jl to i32
  store i32 %i.jm, ptr %i.id, align 4
  store i32 %i.bx, ptr %i.ie, align 4
  %i.jn = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv67.i
  %i.jo = load ptr, ptr %i.jn, align 8            ; 2 uses
  %.not45.us.i = icmp eq ptr %i.jo, null
  br i1 %.not45.us.i, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %.preheader.split.us.i
  %i.jp = getelementptr i8, ptr %i.jo, i64 4
  %.val.us.i = load i32, ptr %i.jp, align 4       ; 2 uses
  store i32 %.val.us.i, ptr %2, align 4
  %i.jq = zext i32 %.val.us.i to i64
  %i.jr = call i32 @ethtool_rxfh_config_is_sym(i64 noundef %i.jq) #17
  %.not46.us.i = icmp eq i32 %i.jr, 0
  br i1 %.not46.us.i, label %.split.us.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.js = load ptr, ptr %i.ih, align 8
  %i.jt = load ptr, ptr %i.hs, align 8
  %i.ju = call i32 %i.js(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef %i.jt) #17, !inline_history !27 ; 2 uses
  %.not48.us.i = icmp eq i32 %i.ju, 0
  br i1 %.not48.us.i, label %bb.co, label %.thread.i

bb.co:                                            ; preds = %bb.cn, %.preheader.split.us.i
  %.7 = phi i8 [ %.6, %.preheader.split.us.i ], [ 1, %bb.cn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %indvars.iv.next68.i = add nuw nsw i64 %indvars.iv67.i, 1 ; 2 uses
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next68.i, 28
  br i1 %exitcond70.not.i, label %.loopexit, label %.preheader.split.us.i, !llvm.loop !28

.preheader.split.i:                               ; preds = %.preheader.split.i.preheader, %bb.cr
  %.386 = phi i8 [ %.5, %bb.cr ], [ 0, %.preheader.split.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.cr ], [ 1, %.preheader.split.i.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.jv = getelementptr i8, ptr @ethtool_rxfh_ft_nl2ioctl, i64 %indvars.iv.i
  store i32 0, ptr %2, align 4
  %i.jw = load i8, ptr %i.jv, align 1
  %i.jx = zext i8 %i.jw to i32
  store i32 %i.jx, ptr %i.id, align 4
  store i32 %i.bx, ptr %i.ie, align 4
  %i.jy = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.jz = load ptr, ptr %i.jy, align 8            ; 2 uses
  %.not45.i = icmp eq ptr %i.jz, null
  br i1 %.not45.i, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %.preheader.split.i
  %i.ka = getelementptr i8, ptr %i.jz, i64 4
  %.val.i80 = load i32, ptr %i.ka, align 4
  store i32 %.val.i80, ptr %2, align 4
  %i.kb = load ptr, ptr %i.ih, align 8
  %i.kc = load ptr, ptr %i.hs, align 8
  %i.kd = call i32 %i.kb(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef %i.kc) #17, !inline_history !27 ; 2 uses
  %.not48.i = icmp eq i32 %i.kd, 0
  br i1 %.not48.i, label %bb.cr, label %.thread.i

.split.us.i:                                      ; preds = %bb.cm, %bb.cj
  %.us-phi108 = phi i64 [ %indvars.iv67.i.us, %bb.cj ], [ %indvars.iv67.i, %bb.cm ]
  %.us-phi109 = phi i8 [ %.6.us, %bb.cj ], [ %.6, %bb.cm ] ; 2 uses
  %i.ke = load ptr, ptr %i.hs, align 8            ; 4 uses
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_rss_fields.__msg) #17
  %.not47.i = icmp eq ptr %i.ke, null
  br i1 %.not47.i, label %.thread.i, label %bb.cq

bb.cq:                                            ; preds = %.split.us.i
  %i.kf = getelementptr [8 x i8], ptr %i.a, i64 %.us-phi108
  store ptr @ethnl_set_rss_fields.__msg, ptr %i.ke, align 8
  %i.kg = load ptr, ptr %i.kf, align 8
  %i.kh = getelementptr i8, ptr %i.ke, i64 8
  store ptr %i.kg, ptr %i.kh, align 8
  %i.ki = getelementptr i8, ptr %i.ke, i64 16
  store ptr null, ptr %i.ki, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.cp, %bb.cg, %bb.cn, %bb.ck, %bb.cq, %.split.us.i
  %.4 = phi i8 [ %.us-phi109, %.split.us.i ], [ %.us-phi109, %bb.cq ], [ %.386.us, %bb.cg ], [ %.6, %bb.cn ], [ %.6.us, %bb.ck ], [ %.386, %bb.cp ]
  %.1.ph.i = phi i32 [ -22, %.split.us.i ], [ -22, %bb.cq ], [ %i.iv, %bb.cg ], [ %i.ju, %bb.cn ], [ %i.jj, %bb.ck ], [ %i.kd, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %ethnl_set_rss_fields.exit.thread

bb.cr:                                            ; preds = %bb.cp, %.preheader.split.i
  %.5 = phi i8 [ %.386, %.preheader.split.i ], [ 1, %bb.cp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 28
  br i1 %exitcond.not.i, label %.loopexit, label %.preheader.split.i, !llvm.loop !28

ethnl_set_rss_fields.exit.thread:                 ; preds = %bb.cd, %.thread.i, %nla_parse_nested.exit.i, %bb.w, %bb.z, %.loopexit.sink.split.i.i, %bb.ce
  %.8.ph = phi i8 [ 0, %bb.w ], [ %.4, %.thread.i ], [ 0, %nla_parse_nested.exit.i ], [ 0, %bb.ce ], [ 0, %bb.cd ], [ 0, %.loopexit.sink.split.i.i ], [ 0, %bb.z ]
  %.2.i.ph = phi i32 [ -22, %bb.w ], [ %.1.ph.i, %.thread.i ], [ %i.ib, %nla_parse_nested.exit.i ], [ -22, %bb.ce ], [ -22, %bb.cd ], [ -22, %.loopexit.sink.split.i.i ], [ -22, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.thread94

.loopexit:                                        ; preds = %bb.cr, %bb.ch, %bb.co, %bb.cl, %bb.cb
  %.8 = phi i8 [ %.5.us, %bb.ch ], [ 0, %bb.cb ], [ %.7, %bb.co ], [ %.7.us, %bb.cl ], [ %.5, %bb.cr ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.kj = load i8, ptr %i.c, align 1, !range !16, !noundef !17
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %bb.cs, label %.thread

bb.cs:                                            ; preds = %.loopexit
  %i.kl = getelementptr i8, ptr %i.i, i64 336
  %i.km = load ptr, ptr %i.kl, align 8            ; 2 uses
  %.not69 = icmp eq ptr %i.km, null
  br i1 %.not69, label %.thread94, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.kn = load i32, ptr %i.m, align 8
  %.not70 = icmp eq i32 %i.kn, 0
  br i1 %.not70, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.ko = getelementptr i8, ptr %1, i64 96
  %i.kp = load ptr, ptr %i.ko, align 8
  %i.kq = call i32 %i.km(ptr noundef %i.d, ptr noundef nonnull %3, ptr noundef %i.kp) #17
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.kr = getelementptr i8, ptr %i.i, i64 368
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = getelementptr i8, ptr %1, i64 96
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = call i32 %i.ks(ptr noundef %i.d, ptr noundef %.054, ptr noundef nonnull %3, ptr noundef %i.ku) #17
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.0 = phi i32 [ %i.kv, %bb.cv ], [ %i.kq, %bb.cu ] ; 2 uses
  %.not71 = icmp eq i32 %.0, 0
  br i1 %.not71, label %.thread, label %.thread94

.thread:                                          ; preds = %.loopexit, %bb.cw
  %.not72 = icmp eq ptr %.054, null
  br i1 %.not72, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %.thread
  call fastcc void @rss_set_ctx_update(ptr noundef %.054, ptr noundef %i.f, ptr noundef nonnull %4, ptr noundef nonnull %3) #18, !srcloc !29
  %.not73 = icmp eq i32 %i.n, 0
  br i1 %.not73, label %.thread94, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.kw = getelementptr i8, ptr %.054, i64 8
  store i32 %i.n, ptr %i.kw, align 8
  br label %.thread94

bb.cz:                                            ; preds = %.thread
  %i.kx = load i8, ptr %i.b, align 1, !range !16, !noundef !17
  %i.ky = trunc nuw i8 %i.kx to i1
  br i1 %i.ky, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.kz = load ptr, ptr %i.bq, align 16
  %i.la = getelementptr i8, ptr %i.kz, i64 40
  store i32 0, ptr %i.la, align 8
  br label %.thread94

bb.db:                                            ; preds = %bb.cz
  br i1 %.not64, label %.thread94, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.lb = load ptr, ptr %i.bq, align 16
  %i.lc = getelementptr i8, ptr %i.lb, i64 40
  store i32 %i.n, ptr %i.lc, align 8
  br label %.thread94

.thread94:                                        ; preds = %bb.cs, %ethnl_set_rss_fields.exit.thread, %bb.t, %bb.cy, %bb.cx, %bb.db, %bb.dc, %bb.da, %bb.cw
  %.083 = phi i8 [ %.8, %bb.da ], [ %.8, %bb.db ], [ %.8, %bb.dc ], [ %.8, %bb.cx ], [ %.8, %bb.cy ], [ %.8, %bb.cw ], [ %.8.ph, %ethnl_set_rss_fields.exit.thread ], [ 0, %bb.t ], [ %.8, %bb.cs ]
  %.1 = phi i32 [ 0, %bb.da ], [ 0, %bb.db ], [ 0, %bb.dc ], [ 0, %bb.cx ], [ 0, %bb.cy ], [ %.0, %bb.cw ], [ %.2.i.ph, %ethnl_set_rss_fields.exit.thread ], [ -2, %bb.t ], [ -95, %bb.cs ]
  %i.ld = load ptr, ptr %i.bq, align 16
  %i.le = getelementptr i8, ptr %i.ld, i64 16
  call void @mutex_unlock(ptr noundef %i.le) #17
  %i.lf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.lg = load ptr, ptr %i.lf, align 8
  call void @kfree(ptr noundef %i.lg) #17
  %5 = zext nneg i8 %.083 to i32
  br label %rss_set_prep_hkey.exit

rss_set_prep_hkey.exit:                           ; preds = %bb.k, %bb.j, %bb.i, %.thread94
  %.184 = phi i32 [ %5, %.thread94 ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ]
  %.2 = phi i32 [ %.1, %.thread94 ], [ -22, %bb.i ], [ -22, %bb.j ], [ -12, %bb.k ]
  %i.lh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.li = load ptr, ptr %i.lh, align 8
  call void @kfree(ptr noundef %i.li) #17
  br label %bb.dd

bb.dd:                                            ; preds = %bb.b, %rss_set_prep_hkey.exit
  %.285 = phi i32 [ 0, %bb.b ], [ %.184, %rss_set_prep_hkey.exit ]
  %.3 = phi i32 [ %i.n, %bb.b ], [ %.2, %rss_set_prep_hkey.exit ] ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.val.i82 = load ptr, ptr %i.lj, align 8
  call void @kfree(ptr noundef %.val.i82) #17
  %.not74 = icmp eq i32 %.3, 0
  %i.lk = load i8, ptr %i.c, align 1, !range !16
  %i.ll = trunc nuw i8 %i.lk to i1
  %6 = select i1 %i.ll, i32 1, i32 %.285
  %i.lm = select i1 %.not74, i32 %6, i32 %.3
  br label %bb.de

bb.de:                                            ; preds = %bb.a, %bb.dd
  %.055 = phi i32 [ %i.lm, %bb.dd ], [ %i.j, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret i32 %.055
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ethnl_rss_create_doit(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  %2 = alloca %struct.ethtool_rxfh_param, align 8 ; 15 uses
  %3 = alloca %struct.rss_reply_data, align 8     ; 11 uses
  %4 = alloca %struct.rss_req_info, align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i8 0, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.c = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %3, i8 0, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.e = tail call ptr @__alloc_skb(i32 noundef range(i32 0, -3) 3796, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #17 ; 22 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.ba, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %.val126 = load ptr, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %1, i64 96         ; 8 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %4, ptr noundef %i.g, ptr noundef %.val126, ptr noundef %i.j, i1 noundef zeroext true) #17 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %ethnl_parse_header_dev_put.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %4, align 8                ; 17 uses
  %i.n = getelementptr i8, ptr %i.m, i64 752      ; 3 uses
  %i.o = load ptr, ptr %i.n, align 16             ; 5 uses
  %i.p = getelementptr i8, ptr %i.d, i64 16       ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %nla_get_u32_default.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %.val.i = load i32, ptr %i.r, align 4
  br label %nla_get_u32_default.exit

nla_get_u32_default.exit:                         ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %.val.i, %bb.d ], [ 0, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store i32 %.0.i, ptr %i.s, align 8
  %.val127 = load ptr, ptr %i.n, align 16         ; 3 uses
  %i.t = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.u = getelementptr i8, ptr %.val127, i64 360
  %i.v = load ptr, ptr %i.u, align 8
  %.not.i130 = icmp eq ptr %i.v, null
  br i1 %.not.i130, label %netdev_unlock_ops_compat.exit, label %bb.e

bb.e:                                             ; preds = %nla_get_u32_default.exit
  %i.w = getelementptr i8, ptr %i.t, i64 16
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %nla_get_u32_default.exit.thread.i, label %nla_get_u32_default.exit.i

nla_get_u32_default.exit.i:                       ; preds = %bb.e
  %i.y = getelementptr i8, ptr %i.x, i64 4
  %.val.i.i = load i32, ptr %i.y, align 4
  %i.z = freeze i32 %.val.i.i
  %i.aa = getelementptr i8, ptr %.val127, i64 12
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = add i32 %i.ab, -1
  %or.cond.not.i = icmp ult i32 %i.ac, %i.z
  br i1 %or.cond.not.i, label %bb.f, label %nla_get_u32_default.exit.thread.i

bb.f:                                             ; preds = %nla_get_u32_default.exit.i
  %i.ad = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not43.i = icmp eq ptr %i.ad, null
  br i1 %.not43.i, label %netdev_unlock_ops_compat.exit, label %.sink.split.i

nla_get_u32_default.exit.thread.i:                ; preds = %nla_get_u32_default.exit.i, %bb.e
  %i.ae = load i16, ptr %.val127, align 8         ; 2 uses
  %i.af = and i16 %i.ae, 1024
  %.not36.i = icmp eq i16 %i.af, 0
  br i1 %.not36.i, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %nla_get_u32_default.exit.thread.i
  %i.ag = getelementptr i8, ptr %i.t, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not37.i = icmp eq ptr %i.ah, null
  br i1 %.not37.i, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr i8, ptr %i.t, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not38.i = icmp eq ptr %i.aj, null
  br i1 %.not38.i, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %i.t, i64 48
  %i.al = load ptr, ptr %i.ak, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.i, %bb.h, %bb.g, %nla_get_u32_default.exit.thread.i
  %.0.i131 = phi ptr [ null, %nla_get_u32_default.exit.thread.i ], [ %i.al, %bb.i ], [ %i.aj, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = getelementptr i8, ptr %i.t, i64 48
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %.not.i45.i = icmp eq ptr %i.an, null
  br i1 %.not.i45.i, label %nla_get_u32_default.exit48.i, label %bb.j

bb.j:                                             ; preds = %.thread.i
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  %.val.i46.i = load i32, ptr %i.ao, align 4
  br label %nla_get_u32_default.exit48.i

nla_get_u32_default.exit48.i:                     ; preds = %bb.j, %.thread.i
  %.0.i47.i = phi i32 [ %.val.i46.i, %bb.j ], [ 0, %.thread.i ]
  %i.ap = and i16 %i.ae, 255
  %i.aq = xor i16 %i.ap, -1
  %i.ar = sext i16 %i.aq to i32
  %i.as = and i32 %.0.i47.i, %i.ar
  %.not39.i = icmp ne i32 %i.as, 0
  %.not40.i = icmp eq ptr %.0.i131, null
  %or.cond44.i = select i1 %.not39.i, i1 %.not40.i, i1 false
  %spec.select.i = select i1 %or.cond44.i, ptr %i.an, ptr %.0.i131 ; 2 uses
  %.not41.i = icmp eq ptr %spec.select.i, null
  br i1 %.not41.i, label %ethnl_rss_create_validate.exit, label %bb.k

bb.k:                                             ; preds = %nla_get_u32_default.exit48.i
  %i.at = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not42.i = icmp eq ptr %i.at, null
  br i1 %.not42.i, label %netdev_unlock_ops_compat.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.k, %bb.f
  %.sink184 = phi ptr [ %i.ad, %bb.f ], [ %i.at, %bb.k ]
  %spec.select.i.sink = phi ptr [ %i.x, %bb.f ], [ %spec.select.i, %bb.k ]
  %.028.ph.i = phi i32 [ -34, %bb.f ], [ -95, %bb.k ]
  %i.au = getelementptr i8, ptr %.sink184, i64 8
  store ptr %spec.select.i.sink, ptr %i.au, align 8
  %.sink10.i = load ptr, ptr %i.i, align 8
  %i.av = getelementptr i8, ptr %.sink10.i, i64 16
  store ptr null, ptr %i.av, align 8
  br label %netdev_unlock_ops_compat.exit

ethnl_rss_create_validate.exit:                   ; preds = %nla_get_u32_default.exit48.i
  %i.aw = getelementptr i8, ptr %i.m, i64 2569    ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !range !16, !noundef !17
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %netdev_need_ops_lock.exit.thread.i, label %netdev_need_ops_lock.exit.i

netdev_need_ops_lock.exit.i:                      ; preds = %ethnl_rss_create_validate.exit
  %i.az = getelementptr i8, ptr %i.m, i64 2288
  %i.ba = load ptr, ptr %i.az, align 16
  %.not.i132 = icmp eq ptr %i.ba, null
  br i1 %.not.i132, label %bb.l, label %netdev_need_ops_lock.exit.thread.i

netdev_need_ops_lock.exit.thread.i:               ; preds = %netdev_need_ops_lock.exit.i, %ethnl_rss_create_validate.exit
  %i.bb = getelementptr i8, ptr %i.m, i64 2576
  call void @mutex_lock(ptr noundef %i.bb) #17
  br label %netdev_lock_ops_compat.exit

bb.l:                                             ; preds = %netdev_need_ops_lock.exit.i
  call void @rtnl_lock() #17
  br label %netdev_lock_ops_compat.exit

netdev_lock_ops_compat.exit:                      ; preds = %netdev_need_ops_lock.exit.thread.i, %bb.l
  %i.bc = call i32 @ethnl_ops_begin(ptr noundef %i.m) #17 ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.av, label %bb.m

bb.m:                                             ; preds = %netdev_lock_ops_compat.exit
  %i.be = load ptr, ptr %i.n, align 16            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i32 0, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i32 0, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %i.be, i64 320
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not.i133 = icmp eq ptr %i.bi, null
  br i1 %.not.i133, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = call i32 %i.bi(ptr noundef %i.m) #17, !inline_history !30 ; 2 uses
  store i32 %i.bj, ptr %i.bf, align 4
  %i.bk = shl i32 %i.bj, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
end_hunk_0
