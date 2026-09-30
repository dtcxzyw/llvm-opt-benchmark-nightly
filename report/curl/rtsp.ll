Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/rtsp?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@rtsp_filter_rtp:bb.a
  switch i32 %i.t, label %rtp_write_body_junk.exit207 [
    i32 0, label %.preheader
    i32 1, label %bb.p
    i32 2, label %bb.x
    i32 3, label %bb.af
  ]

.preheader:                                       ; preds = %bb.e
  %scevgep293 = getelementptr i8, ptr %.0142373, i64 %.0134374 ; 2 uses
  %i.u = add i64 %.0134374, %.0119375             ; 2 uses
  br i1 %.not181, label %.preheader.split, label %.preheader.split.us

.preheader.split.us:                              ; preds = %.preheader, %bb.f
  %.1120271.us = phi i64 [ %i.aa, %bb.f ], [ %.0119375, %.preheader ] ; 2 uses
  %.1135270.us = phi i64 [ %i.z, %bb.f ], [ %.0134374, %.preheader ] ; 2 uses
  %.1143269.us = phi ptr [ %i.y, %bb.f ], [ %.0142373, %.preheader ] ; 3 uses
  %i.v = load i8, ptr %.1143269.us, align 1, !tbaa !75
  %.not175.us = icmp eq i8 %i.v, 36
  br i1 %.not175.us, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.preheader.split.us
  %i.w = load i64, ptr %4, align 8, !tbaa !9
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %4, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %.1143269.us, i64 1
  %i.z = add i64 %.1135270.us, -1                 ; 2 uses
  %i.aa = add i64 %.1120271.us, 1
  %.not174.us = icmp eq i64 %i.z, 0
  br i1 %.not174.us, label %.thread, label %.preheader.split.us, !llvm.loop !109

.preheader.split:                                 ; preds = %.preheader, %bb.j
  %.1120271 = phi i64 [ %i.al, %bb.j ], [ %.0119375, %.preheader ] ; 3 uses
  %.1135270 = phi i64 [ %i.ak, %bb.j ], [ %.0134374, %.preheader ] ; 3 uses
  %.1143269 = phi ptr [ %i.aj, %bb.j ], [ %.0142373, %.preheader ] ; 5 uses
  %i.ab = load i8, ptr %.1143269, align 1, !tbaa !75
  switch i8 %i.ab, label %bb.j [
    i8 36, label %.critedge
    i8 82, label %bb.g
  ]

bb.g:                                             ; preds = %.preheader.split
  %i.ac = load i32, ptr %i.k, align 8, !tbaa !82
  %.not179 = icmp eq i32 %i.ac, 11
  br i1 %.not179, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call i64 @llvm.umin.i64(i64 %.1135270, i64 5)
  %i.ae = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.1143269, ptr noundef nonnull dereferenceable(1) @.str.54, i64 noundef %i.ad) #6
  %.not180 = icmp eq i32 %i.ae, 0
  br i1 %.not180, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.e, align 8, !tbaa !90
  %i.af = load i8, ptr %i.c, align 4
  %i.ag = or i8 %i.af, 1
  store i8 %i.ag, ptr %i.c, align 4
  br label %.thread241

bb.j:                                             ; preds = %.preheader.split, %bb.h, %bb.g
  %i.ah = load i64, ptr %4, align 8, !tbaa !9
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %4, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %.1143269, i64 1
  %i.ak = add i64 %.1135270, -1                   ; 2 uses
  %i.al = add i64 %.1120271, 1
  %.not174 = icmp eq i64 %i.ak, 0
  br i1 %.not174, label %.thread, label %.preheader.split, !llvm.loop !109

.critedge:                                        ; preds = %.preheader.split.us, %.preheader.split
  %.us-phi = phi ptr [ %.1143269, %.preheader.split ], [ %.1143269.us, %.preheader.split.us ] ; 3 uses
  %.us-phi272 = phi i64 [ %.1135270, %.preheader.split ], [ %.1135270.us, %.preheader.split.us ]
  %.us-phi273 = phi i64 [ %.1120271, %.preheader.split ], [ %.1120271.us, %.preheader.split.us ] ; 3 uses
  %.not176 = icmp eq i64 %.us-phi273, 0
  br i1 %.not176, label %rtp_write_body_junk.exit.thread, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.am = sub i64 0, %.us-phi273
  %i.an = getelementptr inbounds i8, ptr %.us-phi, i64 %i.am
  br i1 %.not163, label %rtp_write_body_junk.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load i8, ptr %i.c, align 4
  %i.ap = and i8 %i.ao, 1
  %.not19.i = icmp eq i8 %i.ap, 0
  br i1 %.not19.i, label %bb.m, label %rtp_write_body_junk.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !89  ; 3 uses
  %i.ar = icmp sgt i64 %i.aq, -1
  br i1 %i.ar, label %bb.n, label %rtp_write_body_junk.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.as = load i64, ptr %i.d, align 8, !tbaa !112 ; 2 uses
  %i.at = icmp slt i64 %i.as, %i.aq
  br i1 %i.at, label %rtp_write_body_junk.exit, label %rtp_write_body_junk.exit.thread

rtp_write_body_junk.exit:                         ; preds = %bb.n
  %i.au = sub nsw i64 %i.aq, %i.as
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 range(i64 1, 0) %.us-phi273, i64 %i.au)
  %i.av = tail call i32 @Curl_client_write(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.an, i64 noundef %spec.select.i) #5 ; 2 uses
  %.not177 = icmp eq i32 %i.av, 0
  br i1 %.not177, label %rtp_write_body_junk.exit.thread, label %rtp_write_body_junk.exit207

rtp_write_body_junk.exit.thread:                  ; preds = %bb.l, %bb.k, %bb.n, %bb.m, %rtp_write_body_junk.exit, %.critedge
  %i.aw = tail call i32 @curlx_dyn_addn(ptr noundef nonnull %1, ptr noundef nonnull %.us-phi, i64 noundef 1) #5
  %.not178 = icmp eq i32 %i.aw, 0
  br i1 %.not178, label %bb.o, label %rtp_write_body_junk.exit207

bb.o:                                             ; preds = %rtp_write_body_junk.exit.thread
  %i.ax = load i64, ptr %4, align 8, !tbaa !9
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %4, align 8, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %.us-phi, i64 1
  %i.ba = add i64 %.us-phi272, -1
  store i32 1, ptr %i.e, align 8, !tbaa !90
  br label %.thread

bb.p:                                             ; preds = %bb.e
  %i.bb = load i8, ptr %.0142373, align 1, !tbaa !75
  %i.bc = zext i8 %i.bb to i32                    ; 3 uses
  %i.bd = lshr i32 %i.bc, 3
  %i.be = and i32 %i.bc, 7
  %i.bf = zext nneg i32 %i.bd to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !75
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 1, %i.be
  %i.bk = and i32 %i.bj, %i.bi
  %.not171 = icmp eq i32 %i.bk, 0
  br i1 %.not171, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.e, align 8, !tbaa !90
  %i.bl = load i64, ptr %4, align 8, !tbaa !9
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.r, label %rtp_write_body_junk.exit191.thread

bb.r:                                             ; preds = %bb.q
  %i.bn = tail call ptr @curlx_dyn_ptr(ptr noundef nonnull %1) #5
  %i.bo = load i32, ptr %i.b, align 4, !tbaa !111
  %.not.i186 = icmp eq i32 %i.bo, 0
  br i1 %.not.i186, label %rtp_write_body_junk.exit191.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = load i8, ptr %i.c, align 4
  %i.bq = and i8 %i.bp, 1
  %.not19.i187 = icmp eq i8 %i.bq, 0
  br i1 %.not19.i187, label %bb.t, label %rtp_write_body_junk.exit191.thread

bb.t:                                             ; preds = %bb.s
  %i.br = load i64, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %i.bs = icmp sgt i64 %i.br, -1
  br i1 %i.bs, label %bb.u, label %rtp_write_body_junk.exit191.thread

bb.u:                                             ; preds = %bb.t
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !112
  %i.bu = icmp slt i64 %i.bt, %i.br
  br i1 %i.bu, label %rtp_write_body_junk.exit191, label %rtp_write_body_junk.exit191.thread

rtp_write_body_junk.exit191:                      ; preds = %bb.u
  %i.bv = tail call i32 @Curl_client_write(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %i.bn, i64 noundef 1) #5 ; 2 uses
  %.not172 = icmp eq i32 %i.bv, 0
  br i1 %.not172, label %rtp_write_body_junk.exit191.thread, label %rtp_write_body_junk.exit207

rtp_write_body_junk.exit191.thread:               ; preds = %bb.s, %bb.r, %bb.u, %bb.t, %bb.q, %rtp_write_body_junk.exit191
  %.3122 = phi i64 [ %.0119375, %rtp_write_body_junk.exit191 ], [ 1, %bb.q ], [ %.0119375, %bb.t ], [ %.0119375, %bb.u ], [ %.0119375, %bb.r ], [ %.0119375, %bb.s ]
  tail call void @curlx_dyn_free(ptr noundef nonnull %1) #5
  br label %.thread

bb.v:                                             ; preds = %bb.p
  store i32 %i.bc, ptr %i.j, align 8, !tbaa !88
  %i.bw = tail call i32 @curlx_dyn_addn(ptr noundef nonnull %1, ptr noundef nonnull %.0142373, i64 noundef 1) #5
  %.not173 = icmp eq i32 %i.bw, 0
  br i1 %.not173, label %bb.w, label %rtp_write_body_junk.exit207

bb.w:                                             ; preds = %bb.v
  %i.bx = load i64, ptr %4, align 8, !tbaa !9
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %4, align 8, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %.0142373, i64 1
  %i.ca = add i64 %.0134374, -1
  store i32 2, ptr %i.e, align 8, !tbaa !90
  br label %.thread

bb.x:                                             ; preds = %bb.e
  %i.cb = tail call i64 @curlx_dyn_len(ptr noundef nonnull %1) #5
  %i.cc = tail call i32 @curlx_dyn_addn(ptr noundef nonnull %1, ptr noundef %.0142373, i64 noundef 1) #5
  %.not169 = icmp eq i32 %i.cc, 0
  br i1 %.not169, label %bb.y, label %rtp_write_body_junk.exit207

bb.y:                                             ; preds = %bb.x
  %i.cd = load i64, ptr %4, align 8, !tbaa !9
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %4, align 8, !tbaa !9
  %i.cf = getelementptr inbounds nuw i8, ptr %.0142373, i64 1 ; 3 uses
  %i.cg = add i64 %.0134374, -1                   ; 3 uses
  %i.ch = icmp eq i64 %i.cb, 2
  br i1 %i.ch, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = tail call ptr @curlx_dyn_ptr(ptr noundef nonnull %1) #5 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %5 = load i16, ptr %i.cj, align 1               ; 2 uses
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %i.ck = zext i16 %6 to i64
  %i.cl = add nuw nsw i64 %i.ck, 4
  store i64 %i.cl, ptr %i.f, align 8, !tbaa !113
  %i.cm = icmp eq i16 %5, 0
  br i1 %i.cm, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.cn = load ptr, ptr %i.g, align 8, !tbaa !114 ; 2 uses
  %.not.i192 = icmp eq ptr %i.cn, null
  br i1 %.not.i192, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.co = load ptr, ptr %i.h, align 8, !tbaa !115
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sink.i = phi i64 [ 448, %bb.ab ], [ 1992, %bb.aa ]
  %.018.i = phi ptr [ %i.co, %bb.ab ], [ %i.cn, %bb.aa ]
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  %.0.i = load ptr, ptr %i.cp, align 8, !tbaa !80
  tail call void @Curl_set_in_callback(ptr noundef nonnull %0, i1 noundef zeroext true) #5
  %i.cq = tail call i64 %.018.i(ptr noundef nonnull %i.ci, i64 noundef 1, i64 noundef 4, ptr noundef %.0.i) #5, !inline_history !110
  tail call void @Curl_set_in_callback(ptr noundef nonnull %0, i1 noundef zeroext false) #5
  switch i64 %i.cq, label %.thread241.thread [
    i64 268435457, label %.thread241.thread.loopexit
    i64 4, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.z
  store i32 3, ptr %i.e, align 8, !tbaa !90
  br label %.thread

.thread241.thread.loopexit:                       ; preds = %bb.ac
  br label %.thread241.thread

.thread241.thread:                                ; preds = %bb.ac, %.thread241.thread.loopexit
  %.str.57.sink.i = phi ptr [ @.str.56, %.thread241.thread.loopexit ], [ @.str.57, %bb.ac ]
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull %.str.57.sink.i) #5
  tail call void @curlx_dyn_free(ptr noundef nonnull %1) #5
  store i32 0, ptr %i.e, align 8, !tbaa !90
  br label %rtp_write_body_junk.exit207

bb.ae:                                            ; preds = %bb.ac
  tail call void @curlx_dyn_free(ptr noundef nonnull %1) #5
  store i32 0, ptr %i.e, align 8, !tbaa !90
  br label %.thread

bb.af:                                            ; preds = %bb.e
  %i.cr = tail call i64 @curlx_dyn_len(ptr noundef nonnull %1) #5
  %i.cs = load i64, ptr %i.f, align 8, !tbaa !113
  %i.ct = sub i64 %i.cs, %i.cr                    ; 5 uses
  %.not165 = icmp ugt i64 %i.ct, %.0134374
  br i1 %.not165, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cu = tail call i32 @curlx_dyn_addn(ptr noundef nonnull %1, ptr noundef %.0142373, i64 noundef %i.ct) #5
  %.not167 = icmp eq i32 %i.cu, 0
  br i1 %.not167, label %bb.ah, label %rtp_write_body_junk.exit207

bb.ah:                                            ; preds = %bb.ag
  %i.cv = load i64, ptr %4, align 8, !tbaa !9
  %i.cw = add i64 %i.cv, %i.ct
  store i64 %i.cw, ptr %4, align 8, !tbaa !9
  %i.cx = getelementptr inbounds nuw i8, ptr %.0142373, i64 %i.ct
  %i.cy = sub nuw i64 %.0134374, %i.ct
  %i.cz = tail call ptr @curlx_dyn_ptr(ptr noundef nonnull %1) #5
  %i.da = load i64, ptr %i.f, align 8, !tbaa !113 ; 3 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %rtp_client_write.exit201, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dc = load ptr, ptr %i.g, align 8, !tbaa !114 ; 2 uses
  %.not.i193 = icmp eq ptr %i.dc, null
  br i1 %.not.i193, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dd = load ptr, ptr %i.h, align 8, !tbaa !115
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sink.i194 = phi i64 [ 448, %bb.aj ], [ 1992, %bb.ai ]
  %.018.i195 = phi ptr [ %i.dd, %bb.aj ], [ %i.dc, %bb.ai ]
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i194
  %.0.i196 = load ptr, ptr %i.de, align 8, !tbaa !80
  tail call void @Curl_set_in_callback(ptr noundef nonnull %0, i1 noundef zeroext true) #5
  %i.df = tail call i64 %.018.i195(ptr noundef %i.cz, i64 noundef 1, i64 noundef %i.da, ptr noundef %.0.i196) #5, !inline_history !110 ; 2 uses
  tail call void @Curl_set_in_callback(ptr noundef nonnull %0, i1 noundef zeroext false) #5
  %i.dg = icmp eq i64 %i.df, 268435457
  br i1 %i.dg, label %rtp_client_write.exit201, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not23.i197 = icmp eq i64 %i.df, %i.da
  br i1 %.not23.i197, label %bb.ao, label %rtp_client_write.exit201

rtp_client_write.exit201:                         ; preds = %bb.ah, %bb.ak, %bb.al
  %.str.57.sink.i199 = phi ptr [ @.str.56, %bb.ak ], [ @.str.55, %bb.ah ], [ @.str.57, %bb.al ]
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull %.str.57.sink.i199) #5
  tail call void @curlx_dyn_free(ptr noundef nonnull %1) #5
  store i32 0, ptr %i.e, align 8, !tbaa !90
  br label %rtp_write_body_junk.exit207

bb.am:                                            ; preds = %bb.af
  %i.dh = tail call i32 @curlx_dyn_addn(ptr noundef nonnull %1, ptr noundef %.0142373, i64 noundef %.0134374) #5
  %.not166 = icmp eq i32 %i.dh, 0
  br i1 %.not166, label %bb.an, label %rtp_write_body_junk.exit207

bb.an:                                            ; preds = %bb.am
  %i.di = load i64, ptr %4, align 8, !tbaa !9
  %i.dj = add i64 %i.di, %.0134374
  store i64 %i.dj, ptr %4, align 8, !tbaa !9
  %i.dk = getelementptr inbounds nuw i8, ptr %.0142373, i64 %.0134374
  br label %.thread

bb.ao:                                            ; preds = %bb.al
  tail call void @curlx_dyn_free(ptr noundef nonnull %1) #5
  store i32 0, ptr %i.e, align 8, !tbaa !90
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.j, %bb.ae, %bb.y, %bb.ad, %rtp_write_body_junk.exit191.thread, %bb.w, %bb.o, %bb.an, %bb.ao
  %.7149 = phi ptr [ %i.az, %bb.o ], [ %i.bz, %bb.w ], [ %i.cf, %bb.ad ], [ %i.dk, %bb.an ], [ %i.cx, %bb.ao ], [ %i.cf, %bb.y ], [ %scevgep293, %bb.j ], [ %.0142373, %rtp_write_body_junk.exit191.thread ], [ %i.cf, %bb.ae ], [ %scevgep293, %bb.f ] ; 2 uses
  %.7141 = phi i64 [ %i.ba, %bb.o ], [ %i.ca, %bb.w ], [ %i.cg, %bb.ad ], [ 0, %bb.an ], [ %i.cy, %bb.ao ], [ %i.cg, %bb.y ], [ 0, %bb.j ], [ %.0134374, %rtp_write_body_junk.exit191.thread ], [ %i.cg, %bb.ae ], [ 0, %bb.f ] ; 2 uses
  %.6 = phi i64 [ 0, %bb.o ], [ %.0119375, %bb.w ], [ %.0119375, %bb.ad ], [ %.0119375, %bb.an ], [ %.0119375, %bb.ao ], [ %.0119375, %bb.y ], [ %i.u, %bb.j ], [ %.3122, %rtp_write_body_junk.exit191.thread ], [ %.0119375, %bb.ae ], [ %i.u, %bb.f ] ; 2 uses
  %.not = icmp eq i64 %.7141, 0
  br i1 %.not, label %.thread241, label %.lr.ph

.thread241:                                       ; preds = %.thread, %bb.a, %bb.i
  %.8150 = phi ptr [ %.1143269, %bb.i ], [ %2, %bb.a ], [ %.7149, %.thread ]
  %.7 = phi i64 [ %.1120271, %bb.i ], [ 0, %bb.a ], [ %.6, %.thread ] ; 3 uses
  %.not349 = icmp eq i64 %.7, 0
  br i1 %.not349, label %rtp_write_body_junk.exit207, label %bb.ap

bb.ap:                                            ; preds = %.thread241
  %i.dl = sub i64 0, %.7
  %i.dm = getelementptr inbounds i8, ptr %.8150, i64 %i.dl
  %i.dn = load i32, ptr %i.b, align 4, !tbaa !111
  %.not.i202 = icmp eq i32 %i.dn, 0
  br i1 %.not.i202, label %rtp_write_body_junk.exit207, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.do = load i8, ptr %i.c, align 4
  %i.dp = and i8 %i.do, 1
  %.not19.i203 = icmp eq i8 %i.dp, 0
  br i1 %.not19.i203, label %bb.ar, label %rtp_write_body_junk.exit207

bb.ar:                                            ; preds = %bb.aq
  %i.dq = load i64, ptr %i.a, align 8, !tbaa !89  ; 3 uses
  %i.dr = icmp sgt i64 %i.dq, -1
  br i1 %i.dr, label %bb.as, label %rtp_write_body_junk.exit207

bb.as:                                            ; preds = %bb.ar
  %i.ds = load i64, ptr %i.d, align 8, !tbaa !112 ; 2 uses
  %i.dt = icmp slt i64 %i.ds, %i.dq
  br i1 %i.dt, label %.critedge.i205, label %rtp_write_body_junk.exit207

.critedge.i205:                                   ; preds = %bb.as
  %i.du = sub nsw i64 %i.dq, %i.ds
  %spec.select.i206 = tail call i64 @llvm.smin.i64(i64 range(i64 1, 0) %.7, i64 %i.du)
  %i.dv = tail call i32 @Curl_client_write(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.dm, i64 noundef %spec.select.i206) #5
  br label %rtp_write_body_junk.exit207

rtp_write_body_junk.exit207:                      ; preds = %bb.ag, %bb.am, %bb.x, %rtp_write_body_junk.exit, %rtp_write_body_junk.exit.thread, %rtp_write_body_junk.exit191, %bb.v, %bb.e, %.thread241.thread, %rtp_client_write.exit201, %.critedge.i205, %bb.as, %bb.ar, %bb.aq, %bb.ap, %.thread241
  %.2133 = phi i32 [ 23, %rtp_client_write.exit201 ], [ 0, %bb.aq ], [ 0, %.thread241 ], [ %i.dv, %.critedge.i205 ], [ 0, %bb.ar ], [ 0, %bb.as ], [ 0, %bb.ap ], [ 23, %.thread241.thread ], [ %i.bv, %rtp_write_body_junk.exit191 ], [ 27, %rtp_write_body_junk.exit.thread ], [ %i.av, %rtp_write_body_junk.exit ], [ 27, %bb.x ], [ 27, %bb.am ], [ 27, %bb.ag ], [ 56, %bb.e ], [ 27, %bb.v ]
  ret i32 %.2133
}

declare i32 @Curl_http_write_resp_hds(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @Curl_client_write(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @curlx_dyn_ptr(ptr noundef) local_unnamed_addr #1

declare i64 @curlx_dyn_len(ptr noundef) local_unnamed_addr #1

declare void @Curl_set_in_callback(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare zeroext i1 @Curl_conn_is_alive(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"RTSP", !5, i64 0, !5, i64 4}
!14 = !{!13, !5, i64 4}
!15 = !{!"p1 _ZTS11connectdata", !10, i64 0}
!16 = !{!"p1 _ZTS10Curl_llist", !10, i64 0}
!17 = !{!"p1 _ZTS15Curl_llist_node", !10, i64 0}
!18 = !{!"Curl_llist_node", !16, i64 0, !10, i64 8, !17, i64 16, !17, i64 24}
!19 = !{!"CURLMsg", !5, i64 0, !10, i64 8, !4, i64 16}
!20 = !{!"Curl_message", !18, i64 0, !19, i64 32}
!21 = !{!"p1 _ZTS10Curl_multi", !10, i64 0}
!22 = !{!"p1 _ZTS10Curl_share", !10, i64 0}
!23 = !{!"any p2 pointer", !10, i64 0}
!24 = !{!"p2 _ZTS17Curl_hash_element", !23, i64 0}
!25 = !{!"Curl_hash", !24, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !8, i64 32, !8, i64 40}
!26 = !{!"p1 _ZTS8PslCache", !10, i64 0}
!27 = !{!"curltime", !8, i64 0, !5, i64 8}
!28 = !{!"p1 _ZTS12Curl_cwriter", !10, i64 0}
!29 = !{!"p1 _ZTS12Curl_creader", !10, i64 0}
!30 = !{!"p1 _ZTS9buf_chunk", !10, i64 0}
!31 = !{!"p1 _ZTS9bufc_pool", !10, i64 0}
!32 = !{!"bufq", !30, i64 0, !30, i64 8, !30, i64 16, !31, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !5, i64 56}
!33 = !{!"SingleRequest", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !27, i64 40, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !4, i64 76, !4, i64 77, !5, i64 80, !28, i64 88, !29, i64 96, !32, i64 104, !8, i64 168, !8, i64 176, !11, i64 184, !11, i64 192, !4, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !4, i64 232, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235}
!34 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!35 = !{!"p1 _ZTS10curl_slist", !10, i64 0}
!36 = !{!"p1 _ZTS13curl_httppost", !10, i64 0}
!37 = !{!"p1 _ZTS13curl_mimepart", !10, i64 0}
!38 = !{!"p1 _ZTS9curl_blob", !10, i64 0}
!39 = !{!"ssl_primary_config", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !38, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !5, i64 160, !4, i64 164, !4, i64 165, !5, i64 166, !5, i64 166, !5, i64 166, !5, i64 166, !5, i64 166}
!40 = !{!"ssl_config_data", !39, i64 0, !8, i64 168, !10, i64 176, !10, i64 184, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 193, !5, i64 193, !5, i64 193}
!41 = !{!"short", !4, i64 0}
!42 = !{!"ssl_general_config", !5, i64 0}
!43 = !{!"p1 _ZTS8Curl_URL", !10, i64 0}
!44 = !{!"UserDefined", !34, i64 0, !10, i64 8, !11, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !5, i64 48, !5, i64 52, !10, i64 56, !10, i64 64, !8, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !8, i64 312, !35, i64 320, !36, i64 328, !37, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !8, i64 368, !40, i64 376, !40, i64 576, !35, i64 776, !41, i64 784, !4, i64 786, !4, i64 787, !42, i64 788, !8, i64 792, !5, i64 800, !5, i64 804, !10, i64 808, !35, i64 816, !8, i64 824, !8, i64 832, !4, i64 840, !4, i64 841, !4, i64 842, !35, i64 848, !35, i64 856, !35, i64 864, !5, i64 872, !4, i64 880, !4, i64 1480, !5, i64 1544, !8, i64 1552, !8, i64 1560, !10, i64 1568, !5, i64 1576, !10, i64 1584, !10, i64 1592, !10, i64 1600, !10, i64 1608, !10, i64 1616, !8, i64 1624, !8, i64 1632, !8, i64 1640, !8, i64 1648, !8, i64 1656, !5, i64 1664, !5, i64 1668, !5, i64 1672, !10, i64 1680, !10, i64 1688, !8, i64 1696, !43, i64 1704, !10, i64 1712, !10, i64 1720, !35, i64 1728, !5, i64 1736, !41, i64 1740, !41, i64 1742, !41, i64 1744, !41, i64 1746, !41, i64 1748, !41, i64 1750, !41, i64 1752, !4, i64 1754, !4, i64 1755, !4, i64 1756, !4, i64 1757, !4, i64 1758, !4, i64 1759, !4, i64 1760, !4, i64 1761, !4, i64 1762, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1770, !5, i64 1770, !5, i64 1770}
!45 = !{!"p1 _ZTS10CookieInfo", !10, i64 0}
!46 = !{!"p1 _ZTS4hsts", !10, i64 0}
!47 = !{!"p1 _ZTS10altsvcinfo", !10, i64 0}
!48 = !{!"Curl_rlimit", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !27, i64 56, !5, i64 72}
!49 = !{!"pgrs_dir", !8, i64 0, !8, i64 8, !8, i64 16, !48, i64 24}
!50 = !{!"Progress", !27, i64 0, !8, i64 16, !49, i64 24, !49, i64 128, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !27, i64 328, !27, i64 344, !27, i64 360, !27, i64 376, !27, i64 392, !4, i64 408, !4, i64 456, !5, i64 552, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556}
!51 = !{!"dynbuf", !11, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!52 = !{!"p1 _ZTS9Curl_peer", !10, i64 0}
!53 = !{!"p1 _ZTS10Curl_creds", !10, i64 0}
!54 = !{!"digestdata", !53, i64 0, !52, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !5, i64 64, !4, i64 68, !5, i64 69, !5, i64 69}
!55 = !{!"auth", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 12}
!56 = !{!"p1 _ZTS17Curl_resolv_async", !10, i64 0}
!57 = !{!"p1 _ZTS9Curl_tree", !10, i64 0}
!58 = !{!"Curl_tree", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !27, i64 32, !10, i64 48}
!59 = !{!"Curl_llist", !17, i64 0, !17, i64 8, !10, i64 16, !8, i64 24}
!60 = !{!"urlpieces", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56}
!61 = !{!"bufref", !10, i64 0, !11, i64 8, !8, i64 16}
!62 = !{!"p1 _ZTS17Curl_header_store", !10, i64 0}
!63 = !{!"p1 _ZTS13curl_trc_feat", !10, i64 0}
!64 = !{!"store_netrc", !51, i64 0, !11, i64 32, !5, i64 40}
!65 = !{!"dynamically_allocated_data", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!66 = !{!"http_negotiation", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3, !5, i64 4, !5, i64 4, !5, i64 4, !5, i64 4}
!67 = !{!"UrlState", !27, i64 0, !8, i64 16, !8, i64 24, !51, i64 32, !35, i64 64, !8, i64 72, !52, i64 80, !52, i64 88, !5, i64 96, !5, i64 100, !10, i64 104, !11, i64 112, !54, i64 120, !54, i64 192, !55, i64 264, !55, i64 280, !56, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !11, i64 336, !5, i64 344, !27, i64 352, !58, i64 368, !59, i64 424, !4, i64 456, !11, i64 1296, !11, i64 1304, !8, i64 1312, !5, i64 1320, !5, i64 1324, !5, i64 1328, !4, i64 1332, !8, i64 1368, !10, i64 1376, !10, i64 1384, !43, i64 1392, !60, i64 1400, !61, i64 1464, !61, i64 1488, !35, i64 1512, !37, i64 1520, !37, i64 1528, !8, i64 1536, !51, i64 1544, !59, i64 1576, !4, i64 1608, !62, i64 1704, !35, i64 1712, !63, i64 1720, !64, i64 1728, !53, i64 1776, !65, i64 1784, !66, i64 1832, !41, i64 1840, !4, i64 1842, !4, i64 1843, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846}
!68 = !{!"p1 _ZTS12WildcardData", !10, i64 0}
!69 = !{!"ip_quadruple", !4, i64 0, !4, i64 46, !41, i64 92, !41, i64 94, !4, i64 96}
!70 = !{!"p2 _ZTS10curl_slist", !23, i64 0}
!71 = !{!"curl_certinfo", !5, i64 0, !70, i64 8}
!72 = !{!"PureInfo", !5, i64 0, !5, i64 4, !5, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !11, i64 56, !11, i64 64, !8, i64 72, !5, i64 80, !69, i64 84, !11, i64 184, !5, i64 192, !71, i64 200, !5, i64 216, !5, i64 220, !5, i64 220}
!73 = !{!"curl_tlssessioninfo", !5, i64 0, !10, i64 8}
!74 = !{!"Curl_easy", !5, i64 0, !8, i64 8, !5, i64 16, !5, i64 20, !10, i64 24, !15, i64 32, !5, i64 40, !5, i64 44, !20, i64 48, !21, i64 104, !21, i64 112, !22, i64 120, !25, i64 128, !26, i64 176, !33, i64 184, !44, i64 424, !45, i64 2200, !46, i64 2208, !47, i64 2216, !50, i64 2224, !67, i64 2784, !68, i64 4632, !72, i64 4640, !73, i64 4864}
!75 = !{!4, !4, i64 0}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!74, !63, i64 4504}
!78 = !{!"curl_trc_feat", !11, i64 0, !5, i64 8}
!79 = !{!78, !5, i64 8}
!80 = !{!10, !10, i64 0}
!81 = !{!74, !15, i64 32}
!82 = !{!74, !5, i64 2000}
!83 = !{!"_Bool", !4, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!74, !5, i64 4104}
!86 = !{!13, !5, i64 0}
!87 = !{!"rtsp_conn", !51, i64 0, !5, i64 32, !8, i64 40, !5, i64 48, !5, i64 52}
!88 = !{!87, !5, i64 32}
!89 = !{!74, !8, i64 184}
!90 = !{!87, !5, i64 48}
!91 = distinct !{!91, !76}
!92 = distinct !{!92, !76}
!93 = !{!74, !5, i64 4112}
!94 = !{!74, !11, i64 4608}
!95 = !{!74, !11, i64 4576}
!96 = !{!74, !11, i64 4568}
!97 = !{!74, !11, i64 400}
!98 = !{!74, !11, i64 392}
!99 = !{!74, !11, i64 4592}
!100 = !{!74, !11, i64 4088}
!101 = !{!74, !11, i64 4584}
!102 = !{!74, !8, i64 208}
!103 = !{!74, !5, i64 4108}
!104 = !{!5, !5, i64 0}
!105 = !{!74, !8, i64 4152}
!106 = !{!74, !4, i64 4627}
!107 = !{!74, !10, i64 480}
!108 = !{!74, !8, i64 496}
!109 = distinct !{!109, !76}
!110 = distinct !{null}
!111 = !{!74, !5, i64 252}
!112 = !{!74, !8, i64 200}
!113 = !{!87, !8, i64 40}
!114 = !{!74, !10, i64 520}
!115 = !{!74, !10, i64 504}
end_hunk_0
