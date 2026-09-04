Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/ftp?download=true
inline.NumInlined: 120
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ftp_pp_statemachine:bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.bx = call ptr @curlx_dyn_ptr(ptr noundef nonnull %i.bw) #10
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.0 = phi ptr [ %i.by, %bb.ai ], [ %i.cb, %bb.aj ] ; 5 uses
  %i.bz = load i8, ptr %.0, align 1, !tbaa !11    ; 2 uses
  %i.ca = icmp eq i8 %i.bz, 32
  %i.cb = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br i1 %i.ca, label %bb.aj, label %.preheader, !llvm.loop !237

.preheader:                                       ; preds = %bb.aj, %bb.ak
  %i.cc = phi i8 [ %.pr, %bb.ak ], [ %i.bz, %bb.aj ]
  %.1 = phi ptr [ %i.cd, %bb.ak ], [ %.0, %bb.aj ] ; 2 uses
  switch i8 %i.cc, label %bb.ak [
    i8 0, label %.critedge
    i8 32, label %.critedge
  ]

bb.ak:                                            ; preds = %.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.cd, align 1, !tbaa !11
  br label %.preheader, !llvm.loop !238

.critedge:                                        ; preds = %.preheader, %.preheader
  %i.ce = ptrtoint ptr %.1 to i64
  %i.cf = ptrtoint ptr %.0 to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = call ptr @curlx_memdup0(ptr noundef nonnull %.0, i64 noundef %i.cg) #10 ; 5 uses
  %.not254 = icmp eq ptr %i.ch, null
  br i1 %.not254, label %.thread287, label %bb.al

bb.al:                                            ; preds = %.critedge
  %i.ci = call i32 @curl_strequal(ptr noundef nonnull %i.ch, ptr noundef nonnull @.str.129) #10
  %.not255 = icmp eq i32 %i.ci, 0
  br i1 %.not255, label %.thread291, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cj = call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.130) #10 ; 2 uses
  %.not256 = icmp eq i32 %i.cj, 0
  %i.ck = load ptr, ptr @Curl_cfree, align 8, !tbaa !26 ; 2 uses
  br i1 %.not256, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void %i.ck(ptr noundef nonnull %i.ch) #10
  br label %.thread287

.thread291:                                       ; preds = %bb.al
  %i.cl = load ptr, ptr @Curl_cfree, align 8, !tbaa !26
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 216 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !123
  call void %i.cl(ptr noundef %i.cn) #10
  store ptr %i.ch, ptr %i.cm, align 8, !tbaa !123
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 216 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !123
  call void %i.ck(ptr noundef %i.cp) #10
  store ptr %i.ch, ptr %i.co, align 8, !tbaa !123
  call fastcc void @ftp_state_low(ptr noundef %0, ptr noundef nonnull %i.d, i8 noundef zeroext 11)
  br label %.thread287

bb.ap:                                            ; preds = %.thread291, %bb.ah
  call fastcc void @ftp_state_low(ptr noundef %0, ptr noundef nonnull %i.d, i8 noundef zeroext 0)
  %.not257 = icmp eq ptr %0, null
  br i1 %.not257, label %.thread287, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.cr = load i64, ptr %i.cq, align 1
  %i.cs = and i64 %i.cr, 536870912
  %.not258 = icmp eq i64 %i.cs, 0
  br i1 %.not258, label %.thread287, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !91 ; 2 uses
  %.not259 = icmp eq ptr %i.cu, null
  br i1 %.not259, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !93
  %i.cx = icmp sgt i32 %i.cw, 0
  %i.cy = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8
  %i.cz = icmp sgt i32 %i.cy, 0
  %or.cond7 = select i1 %i.cx, i1 %i.cz, i1 false
  br i1 %or.cond7, label %bb.au, label %.thread287

bb.at:                                            ; preds = %bb.ar
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8, !tbaa !93
  %.old6 = icmp sgt i32 %.old, 0
  br i1 %.old6, label %bb.au, label %.thread287

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.da = load i8, ptr %i.o, align 8, !tbaa !94
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr @ftp_state_names, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !27
  call void (ptr, ptr, ...) @Curl_trc_ftp(ptr noundef nonnull %0, ptr noundef nonnull @.str.131, ptr noundef %i.dd) #10
  br label %.thread287

bb.av:                                            ; preds = %bb.e
  %i.de = icmp eq i32 %i.m, 250
  br i1 %i.de, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.df = call fastcc i32 @ftp_state_pwd(ptr noundef %0, ptr noundef %i.d) ; 0 uses
  br label %.thread287

bb.ax:                                            ; preds = %bb.av
  call fastcc void @ftp_state_low(ptr noundef %0, ptr noundef nonnull %i.d, i8 noundef zeroext 0)
  %.not249 = icmp eq ptr %0, null
  br i1 %.not249, label %.thread287, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.dh = load i64, ptr %i.dg, align 1
  %i.di = and i64 %i.dh, 536870912
  %.not250 = icmp eq i64 %i.di, 0
  br i1 %.not250, label %.thread287, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !91 ; 2 uses
  %.not251 = icmp eq ptr %i.dk, null
  br i1 %.not251, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !93
  %i.dn = icmp sgt i32 %i.dm, 0
  %i.do = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8
  %i.dp = icmp sgt i32 %i.do, 0
  %or.cond10 = select i1 %i.dn, i1 %i.dp, i1 false
  br i1 %or.cond10, label %bb.bc, label %.thread287

bb.bb:                                            ; preds = %bb.az
  %.old8 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8, !tbaa !93
  %.old9 = icmp sgt i32 %.old8, 0
  br i1 %.old9, label %bb.bc, label %.thread287

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.dq = load i8, ptr %i.o, align 8, !tbaa !94
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr @ftp_state_names, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !27
  call void (ptr, ptr, ...) @Curl_trc_ftp(ptr noundef nonnull %0, ptr noundef nonnull @.str.131, ptr noundef %i.dt) #10
  br label %.thread287

bb.bd:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.du = icmp sgt i32 %i.m, 399
  br i1 %i.du, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 236
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !129
  %.not248 = icmp eq i32 %i.dw, 0
  br i1 %.not248, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.132, i32 noundef %i.m) #10
  br label %.thread287

bb.bg:                                            ; preds = %bb.be, %bb.bd
  %i.dx = call fastcc i32 @ftp_state_quote(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.e, i1 noundef zeroext false, i8 noundef zeroext %i.p)
  br label %.thread287

bb.bh:                                            ; preds = %bb.e
  %.off242 = add i32 %i.m, -200
  %.not241 = icmp ult i32 %.off242, 100
  br i1 %.not241, label %bb.bo, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 2179
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !240 ; 2 uses
  %.not244 = icmp eq i8 %i.dz, 0
  br i1 %.not244, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 246
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !130 ; 2 uses
  %.not245 = icmp eq i16 %i.eb, 0
  br i1 %.not245, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 236 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !129
  %.not246 = icmp eq i32 %i.ed, 0
  br i1 %.not246, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  store i32 1, ptr %i.ec, align 4, !tbaa !129
  %i.ee = icmp eq i8 %i.dz, 2
  %i.ef = zext i1 %i.ee to i32
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  store i32 %i.ef, ptr %i.eg, align 8, !tbaa !140
  %i.eh = zext i16 %i.eb to i64
  %i.ei = getelementptr i8, ptr %i.d, i64 192
  %.val271 = load ptr, ptr %i.ei, align 8, !tbaa !109
  %2 = getelementptr [8 x i8], ptr %.val271, i64 %i.eh ; 2 uses
  %3 = getelementptr i8, ptr %2, i64 -8
  %i.ej = getelementptr i8, ptr %2, i64 -4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !126
  %i.el = getelementptr i8, ptr %i.d, i64 184
  %.val276 = load ptr, ptr %i.el, align 8, !tbaa !111
  %i.em = load i32, ptr %3, align 4, !tbaa !125
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds i8, ptr %.val276, i64 %i.en
  %i.ep = call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.133, i32 noundef %i.ek, ptr noundef %i.eo) #10 ; 2 uses
  %.not247 = icmp eq i32 %i.ep, 0
  br i1 %.not247, label %bb.bm, label %.thread287

bb.bm:                                            ; preds = %bb.bl
  call fastcc void @ftp_state_low(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i8 noundef zeroext 18)
  br label %.thread287

bb.bn:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.134) #10
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 251 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = or i8 %i.er, 16
  store i8 %i.es, ptr %i.eq, align 1
  br label %.thread287

bb.bo:                                            ; preds = %bb.bh
  %i.et = getelementptr inbounds nuw i8, ptr %i.d, i64 236
  store i32 0, ptr %i.et, align 4, !tbaa !129
  %i.eu = getelementptr inbounds nuw i8, ptr %i.d, i64 246 ; 2 uses
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !130 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 244
  %i.ex = load i16, ptr %i.ew, align 4, !tbaa !110
  %.not243 = icmp ult i16 %i.ev, %i.ex
  br i1 %.not243, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ey = call fastcc i32 @ftp_state_mdtm(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.e)
  br label %.thread287

bb.bq:                                            ; preds = %bb.bo
  %i.ez = add nuw i16 %i.ev, 1
  store i16 %i.ez, ptr %i.eu, align 2, !tbaa !130
  %i.fa = getelementptr i8, ptr %i.d, i64 192
  %.val270 = load ptr, ptr %i.fa, align 8, !tbaa !109
  %i.fb = zext i16 %i.ev to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.val270, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !126
  %i.ff = getelementptr i8, ptr %i.d, i64 184
  %.val274 = load ptr, ptr %i.ff, align 8, !tbaa !111
  %i.fg = load i32, ptr %i.fc, align 4, !tbaa !125
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds i8, ptr %.val274, i64 %i.fh
  %i.fj = call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.60, i32 noundef %i.fe, ptr noundef %i.fi) #10
  br label %.thread287

bb.br:                                            ; preds = %bb.e
  %.off = add i32 %i.m, -200
  %.not239 = icmp ult i32 %.off, 100
  br i1 %.not239, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fk = getelementptr inbounds nuw i8, ptr %i.d, i64 240 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !140 ; 2 uses
  %i.fm = add nsw i32 %i.fl, -1
  store i32 %i.fm, ptr %i.fk, align 8, !tbaa !140
  %.not240 = icmp eq i32 %i.fl, 0
  br i1 %.not240, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.135, i32 noundef %i.m) #10
  br label %.thread287

bb.bu:                                            ; preds = %bb.bs, %bb.br
  call fastcc void @ftp_state_low(ptr noundef %0, ptr noundef nonnull %i.d, i8 noundef zeroext 17)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.d, i64 246
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !130
  %i.fp = zext i16 %i.fo to i64
  %i.fq = getelementptr i8, ptr %i.d, i64 192
  %.val = load ptr, ptr %i.fq, align 8, !tbaa !109
  %i.fr = getelementptr [8 x i8], ptr %.val, i64 %i.fp ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 -8
  %i.ft = getelementptr i8, ptr %i.fr, i64 -4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !126
  %i.fv = getelementptr i8, ptr %i.d, i64 184
  %.val272 = load ptr, ptr %i.fv, align 8, !tbaa !111
  %i.fw = load i32, ptr %i.fs, align 4, !tbaa !125
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds i8, ptr %.val272, i64 %i.fx
  %i.fz = call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.60, i32 noundef %i.fu, ptr noundef %i.fy) #10
  br label %.thread287

bb.bv:                                            ; preds = %bb.e
  %i.ga = call fastcc i32 @ftp_state_mdtm_resp(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %i.m)
  br label %.thread287

bb.bw:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.gb = call fastcc i32 @ftp_state_type_resp(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %i.m, i8 noundef zeroext %i.p)
  br label %.thread287

bb.bx:                                            ; preds = %bb.e, %bb.e, %bb.e
  %i.gc = call fastcc i32 @ftp_state_size_resp(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %i.m, i8 noundef zeroext %i.p)
  br label %.thread287

bb.by:                                            ; preds = %bb.e, %bb.e
  %i.gd = call fastcc i32 @ftp_state_rest_resp(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %i.m, i8 noundef zeroext %i.p)
  br label %.thread287

bb.bz:                                            ; preds = %bb.e
  %.not238 = icmp eq i32 %i.m, 200
  br i1 %.not238, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.136, i32 noundef %i.m) #10
  br label %.thread287

bb.cb:                                            ; preds = %bb.bz
  %i.ge = call fastcc i32 @ftp_state_use_pasv(ptr noundef %0, ptr noundef %i.d, ptr noundef %1)
  br label %.thread287

bb.cc:                                            ; preds = %bb.e
  %i.gf = call fastcc i32 @ftp_state_pasv_resp(ptr noundef %0, ptr noundef %i.d, i32 noundef %i.m)
  br label %.thread287

bb.cd:                                            ; preds = %bb.e
  %i.gg = call fastcc i32 @ftp_state_port_resp(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %i.m)
  br label %.thread287

bb.ce:                                            ; preds = %bb.e, %bb.e
  %i.gh = call fastcc i32 @ftp_state_get_resp(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %i.m, i8 noundef zeroext %i.p)
  br label %.thread287

bb.cf:                                            ; preds = %bb.e
  %i.gi = call fastcc i32 @ftp_state_stor_resp(ptr noundef %0, ptr noundef %i.d, i32 noundef %i.m)
  br label %.thread287

bb.cg:                                            ; preds = %bb.e
  call fastcc void @ftp_state_low(ptr noundef %0, ptr noundef nonnull %i.d, i8 noundef zeroext 0)
  br label %.thread287

.thread287:                                       ; preds = %.critedge, %bb.an, %bb.f, %bb.r, %bb.s, %bb.ag, %bb.aw, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %bb.o, %bb.q, %bb.u, %bb.t, %bb.z, %bb.aa, %bb.ab, %bb.af, %bb.au, %bb.at, %bb.as, %bb.aq, %bb.ap, %bb.bc, %bb.bb, %bb.ba, %bb.ay, %bb.ax, %bb.bg, %bb.bf, %bb.bp, %bb.bq, %bb.bn, %bb.bm, %bb.bl, %bb.bu, %bb.bt, %bb.p, %.thread, %bb.ae, %bb.ao, %bb.m, %bb.x, %bb.g, %bb.d, %bb.a, %bb.ca, %bb.c
  %.2212 = phi i32 [ %i.j, %bb.c ], [ 64, %bb.x ], [ %i.k, %bb.d ], [ 64, %bb.m ], [ 8, %bb.g ], [ 64, %bb.p ], [ 84, %bb.ca ], [ 2, %bb.a ], [ 0, %bb.cg ], [ %i.q, %bb.f ], [ %.1209.ph, %.thread ], [ %i.ao, %bb.o ], [ %i.gi, %bb.cf ], [ %i.at, %bb.q ], [ %i.au, %bb.r ], [ %i.av, %bb.s ], [ %i.ba, %bb.t ], [ 0, %bb.u ], [ %i.bm, %bb.z ], [ 0, %bb.aa ], [ %i.bn, %bb.ab ], [ %i.bs, %bb.ae ], [ %i.bt, %bb.af ], [ %i.bu, %bb.ag ], [ 0, %bb.au ], [ 0, %bb.as ], [ 0, %bb.at ], [ 0, %bb.aq ], [ 0, %bb.ap ], [ 0, %bb.ao ], [ 0, %bb.aw ], [ 0, %bb.bc ], [ 0, %bb.ba ], [ 0, %bb.bb ], [ 0, %bb.ay ], [ 0, %bb.ax ], [ %i.dx, %bb.bg ], [ 21, %bb.bf ], [ 9, %bb.bn ], [ %i.ep, %bb.bl ], [ 0, %bb.bm ], [ %i.ey, %bb.bp ], [ %i.fj, %bb.bq ], [ %i.fz, %bb.bu ], [ 9, %bb.bt ], [ %i.ga, %bb.bv ], [ %i.gb, %bb.bw ], [ %i.gc, %bb.bx ], [ %i.gd, %bb.by ], [ %i.ge, %bb.cb ], [ %i.gf, %bb.cc ], [ %i.gg, %bb.cd ], [ %i.gh, %bb.ce ], [ 27, %.critedge ], [ %i.cj, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.2212
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @ftp_endofresp(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4) #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = icmp ugt i64 %3, 3
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %2, align 1, !tbaa !11
  %i.e = add i8 %i.d, -48
  %or.cond = icmp ult i8 %i.e, 10
  br i1 %or.cond, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11
  %i.h = add i8 %i.g, -48
  %or.cond5 = icmp ult i8 %i.h, 10
  br i1 %or.cond5, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !11
  %i.k = add i8 %i.j, -48
  %or.cond6 = icmp ult i8 %i.k, 10
  br i1 %or.cond6, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11
  %i.n = icmp eq i8 %i.m, 32
  br i1 %i.n, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = call i32 @curlx_str_number(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef 999) #10
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = load i64, ptr %i.b, align 8, !tbaa !115
  %i.q = trunc i64 %i.p to i32
  store i32 %i.q, ptr %4, align 4, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0 = phi i1 [ true, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret i1 %.0
}

declare void @Curl_pp_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ftp_wait_resp(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef range(i32 1, 0) %3) unnamed_addr #3 {
bb.a:
  switch i32 %3, label %bb.e [
    i32 230, label %bb.b
end_hunk_0
