inline.NumInlined: 20
inline.NumDeleted: 9
begin_hunk_0_@ea_read_header:bb.a
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gz, i64 56
  store i64 %i.hn, ptr %i.ho, align 8, !tbaa !82
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  store i64 %i.hn, ptr %i.hp, align 8, !tbaa !83
  %i.hq = load i32, ptr %i.n, align 4, !tbaa !49  ; 2 uses
  %.not28.i = icmp eq i32 %i.hq, 0
  br i1 %.not28.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hr = load i32, ptr %i.o, align 4, !tbaa !52
  tail call void @avpriv_set_pts_info(ptr noundef nonnull %i.gz, i32 noundef 64, i32 noundef %i.hq, i32 noundef %i.hr) #4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gz, i64 204
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gz, i64 88
  %i.hu = load i64, ptr %i.n, align 4             ; 2 uses
  %.sroa.01.0.insert.insert.i.i = tail call i64 @llvm.fshl.i64(i64 %i.hu, i64 %i.hu, i64 32) ; 2 uses
  store i64 %.sroa.01.0.insert.insert.i.i, ptr %i.ht, align 8
  store i64 %.sroa.01.0.insert.insert.i.i, ptr %i.hs, align 4
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bw
  %i.hv = load i32, ptr %i.h, align 4, !tbaa !46
  %.not.i54 = icmp eq i32 %i.hv, 0
  br i1 %.not.i54, label %bb.ck, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hw = tail call ptr @avformat_new_stream(ptr noundef %0, ptr noundef null) #4 ; 9 uses
  %.not27.i55 = icmp eq ptr %i.hw, null
  br i1 %.not27.i55, label %init_video_stream.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !56
  %i.hz = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 %i.hy, ptr %i.hz, align 4, !tbaa !62
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !63 ; 4 uses
  store i32 0, ptr %i.ib, align 8, !tbaa !64
  %i.ic = load i32, ptr %i.h, align 4, !tbaa !46  ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  store i32 %i.ic, ptr %i.id, align 4, !tbaa !67
  %i.ie = icmp eq i32 %i.ic, 2
  br i1 %i.ie, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.if = getelementptr inbounds nuw i8, ptr %i.hw, i64 808
  store i32 2, ptr %i.if, align 8, !tbaa !68
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store i32 0, ptr %i.ig, align 8, !tbaa !81
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ib, i64 72
  %i.ij = load <2 x i32>, ptr %i.ih, align 4, !tbaa !44
  store <2 x i32> %i.ij, ptr %i.ii, align 8, !tbaa !44
  %i.ik = load i32, ptr %i.i, align 4, !tbaa !51
  %i.il = sext i32 %i.ik to i64                   ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hw, i64 56
  store i64 %i.il, ptr %i.im, align 8, !tbaa !82
  %i.in = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  store i64 %i.il, ptr %i.in, align 8, !tbaa !83
  %i.io = load i32, ptr %i.j, align 4, !tbaa !49  ; 2 uses
  %.not28.i56 = icmp eq i32 %i.io, 0
  br i1 %.not28.i56, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ip = load i32, ptr %i.k, align 4, !tbaa !52
  tail call void @avpriv_set_pts_info(ptr noundef nonnull %i.hw, i32 noundef 64, i32 noundef %i.io, i32 noundef %i.ip) #4
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hw, i64 204
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hw, i64 88
  %i.is = load i64, ptr %i.j, align 4             ; 2 uses
  %.sroa.01.0.insert.insert.i.i57 = tail call i64 @llvm.fshl.i64(i64 %i.is, i64 %i.is, i64 32) ; 2 uses
  store i64 %.sroa.01.0.insert.insert.i.i57, ptr %i.ir, align 8
  store i64 %.sroa.01.0.insert.insert.i.i57, ptr %i.iq, align 4
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.cd
  %i.it = load i32, ptr %i.e, align 4, !tbaa !30
  %.not49 = icmp eq i32 %i.it, 0
  br i1 %.not49, label %bb.ct, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !38 ; 2 uses
  %i.iw = add i32 %i.iv, -3
  %or.cond = icmp ult i32 %i.iw, -2
  br i1 %or.cond, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.7, i32 noundef %i.iv) #4
  br label %bb.ct

bb.cn:                                            ; preds = %bb.cl
  %i.ix = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !36 ; 2 uses
  %i.iz = icmp slt i32 %i.iy, 1
  br i1 %i.iz, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %i.iy) #4
  br label %bb.ct

bb.cp:                                            ; preds = %bb.cn
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !37 ; 2 uses
  %i.jc = add i32 %i.jb, -3
  %or.cond52 = icmp ult i32 %i.jc, -2
  br i1 %or.cond52, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %i.jb) #4
  br label %bb.ct

bb.cr:                                            ; preds = %bb.cp
  %i.jd = tail call ptr @avformat_new_stream(ptr noundef %0, ptr noundef null) #4 ; 5 uses
  %.not50 = icmp eq ptr %i.jd, null
  br i1 %.not50, label %init_video_stream.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.je = load i32, ptr %i.ix, align 8, !tbaa !36
  tail call void @avpriv_set_pts_info(ptr noundef nonnull %i.jd, i32 noundef 33, i32 noundef 1, i32 noundef %i.je) #4
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !63 ; 8 uses
  store i32 1, ptr %i.jg, align 8, !tbaa !64
  %i.jh = load i32, ptr %i.e, align 4, !tbaa !30
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  store i32 %i.jh, ptr %i.ji, align 4, !tbaa !67
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store i32 0, ptr %i.jj, align 8, !tbaa !81
  %i.jk = load i32, ptr %i.iu, align 4, !tbaa !38 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 132
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !84
  %i.jm = load i32, ptr %i.ix, align 8, !tbaa !36 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jg, i64 152
  store i32 %i.jm, ptr %i.jn, align 8, !tbaa !85
  %i.jo = load i32, ptr %i.ja, align 4, !tbaa !37
  %i.jp = shl nsw i32 %i.jo, 3                    ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jg, i64 56
  store i32 %i.jp, ptr %i.jq, align 8, !tbaa !86
  %i.jr = sext i32 %i.jk to i64
  %i.js = sext i32 %i.jm to i64
  %i.jt = mul nsw i64 %i.js, %i.jr
  %i.ju = sext i32 %i.jp to i64
  %i.jv = mul nsw i64 %i.jt, %i.ju
  %i.jw = ashr exact i64 %i.jv, 2
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jg, i64 48
  store i64 %i.jw, ptr %i.jx, align 8, !tbaa !87
  %i.jy = mul nsw i32 %i.jp, %i.jk
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jg, i64 156
  store i32 %i.jy, ptr %i.jz, align 4, !tbaa !88
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !56
  %i.kc = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %i.kb, ptr %i.kc, align 8, !tbaa !89
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jd, i64 40
  store i64 0, ptr %i.kd, align 8, !tbaa !90
  br label %init_video_stream.exit

bb.ct:                                            ; preds = %bb.ck, %bb.cq, %bb.co, %bb.cm
  store i32 0, ptr %i.e, align 4, !tbaa !30
  %i.ke = load i32, ptr %i.f, align 4, !tbaa !34
  %.not51 = icmp eq i32 %i.ke, 0
  %. = select i1 %.not51, i32 -1094995529, i32 0
  br label %init_video_stream.exit

init_video_stream.exit:                           ; preds = %bb.f, %process_audio_header_eacs.exit.i, %bb.i, %bb.ce, %bb.bx, %bb.ct, %bb.cr, %bb.cs
  %.0 = phi i32 [ -12, %bb.bx ], [ -12, %bb.ce ], [ -12, %bb.cr ], [ %., %bb.ct ], [ 0, %bb.cs ], [ -1094995529, %bb.i ], [ -1094995529, %process_audio_header_eacs.exit.i ], [ -1094995529, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @ea_read_packet(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 26 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.a
  %.0151.ph = phi i32 [ 0, %bb.a ], [ %.0151.ph.be, %.outer.backedge ] ; 12 uses
  %.0144.ph = phi i32 [ 0, %bb.a ], [ %.0144.ph.be, %.outer.backedge ] ; 5 uses
  %.0142.ph = phi i32 [ 0, %bb.a ], [ %.0142.ph.be, %.outer.backedge ] ; 5 uses
  %.0139.ph = phi i32 [ 0, %bb.a ], [ %.0139.ph.be, %.outer.backedge ]
  %.0136.ph = phi i32 [ 0, %bb.a ], [ %.0136.ph.be, %.outer.backedge ]
  %.0135.ph = phi i32 [ undef, %bb.a ], [ %.0135.ph.be, %.outer.backedge ]
  %i.s = or i32 %.0142.ph, %.0151.ph
  %or.cond = icmp ne i32 %i.s, 0                  ; 2 uses
  br label %.outer182

.outer182:                                        ; preds = %.outer, %.loopexit186
  %.0139.ph183 = phi i32 [ %.0139.ph, %.outer ], [ %.2141, %.loopexit186 ] ; 16 uses
  %.0136.ph184 = phi i32 [ %.0136.ph, %.outer ], [ %.0136331, %.loopexit186 ] ; 15 uses
  %.0135.ph185 = phi i32 [ %.0135.ph, %.outer ], [ %.0135319, %.loopexit186 ] ; 22 uses
  %i.t = icmp eq i32 %.0136.ph184, 0              ; 15 uses
  %or.cond17.not.peel = select i1 %or.cond, i1 %i.t, i1 false
  br i1 %or.cond17.not.peel, label %.loopexit385, label %.critedge.peel

.critedge.peel:                                   ; preds = %.outer182
  %i.u = tail call i32 @avio_rl32(ptr noundef %i.d) #4 ; 13 uses
  %i.v = tail call i32 @avio_feof(ptr noundef %i.d) #4
  %.not.peel = icmp eq i32 %i.v, 0
  br i1 %.not.peel, label %bb.b, label %.loopexit179

bb.b:                                             ; preds = %.critedge.peel
  %i.w = load i32, ptr %i.e, align 8, !tbaa !35
  %.not160.peel = icmp eq i32 %i.w, 0
  br i1 %.not160.peel, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = tail call i32 @avio_rb32(ptr noundef %i.d) #4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.y = tail call i32 @avio_rl32(ptr noundef %i.d) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = phi i32 [ %i.x, %bb.c ], [ %i.y, %bb.d ] ; 10 uses
  %i.aa = icmp ult i32 %i.z, 8
  br i1 %i.aa, label %.loopexit179, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = add i32 %i.z, -8                        ; 13 uses
  switch i32 %i.u, label %.loopexit386 [
    i32 1749963569, label %bb.g
    i32 1682854705, label %bb.i
    i32 1816413011, label %bb.i
    i32 1128549971, label %bb.i
    i32 1313162323, label %bb.i
    i32 0, label %.loopexit387
    i32 1699631921, label %.loopexit387
    i32 1816478547, label %.loopexit387
    i32 1145980243, label %.loopexit387
    i32 1313162579, label %.loopexit387
    i32 1749636685, label %.loopexit180
    i32 1413961323, label %.loopexit180
    i32 1413960048, label %.loopexit180
    i32 1934706516, label %.loopexit180
    i32 1799635277, label %.loopexit180
    i32 1716082253, label %.loopexit180.loopexit862
    i32 1413961318, label %.loopexit180.loopexit862
    i32 1833189709, label %.loopexit180.loopexit862
    i32 1698971981, label %.loopexit180.loopexit862
    i32 1145263213, label %.loopexit388
    i32 1261459021, label %.loopexit293
    i32 1261459009, label %.loopexit293
    i32 1749241933, label %.loopexit293
    i32 1414613360, label %.loopexit293
    i32 1177572941, label %.loopexit186
    i32 1177572929, label %.loopexit186
  ]

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp ult i32 %i.ab, 32
  br i1 %i.ac, label %.loopexit179, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call i64 @avio_skip(ptr noundef %i.d, i64 noundef 32) #4 ; 0 uses
  %i.ae = add i32 %i.z, -40
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.f, %bb.f, %bb.f
  %.0148.peel = phi i32 [ %i.ae, %bb.h ], [ %i.ab, %bb.f ], [ %i.ab, %bb.f ], [ %i.ab, %bb.f ], [ %i.ab, %bb.f ] ; 5 uses
  %i.af = load i32, ptr %i.f, align 4, !tbaa !30
  switch i32 %i.af, label %bb.m [
    i32 0, label %.loopexit389
    i32 65554, label %bb.k
    i32 86017, label %bb.k
    i32 69669, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp ult i32 %.0148.peel, 8
  br i1 %i.ag, label %.loopexit179, label %.sink.split

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.ah = icmp ult i32 %.0148.peel, 12
  br i1 %i.ah, label %.loopexit179, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call i32 @avio_rl32(ptr noundef %i.d) #4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.l
  %.sink = phi i32 [ -12, %bb.l ], [ -8, %bb.j ]
  %.1.peel.ph = phi i32 [ %i.ai, %bb.l ], [ %.0135.ph185, %bb.j ]
  %i.aj = tail call i64 @avio_skip(ptr noundef %i.d, i64 noundef 8) #4 ; 0 uses
  %i.ak = add i32 %.0148.peel, %.sink
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.i
  %.1149.peel = phi i32 [ %.0148.peel, %bb.i ], [ %i.ak, %.sink.split ] ; 2 uses
  %.1.peel = phi i32 [ %.0135.ph185, %bb.i ], [ %.1.peel.ph, %.sink.split ] ; 2 uses
  br i1 %i.t, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %0, ptr noundef nonnull @.str.32) #4
  tail call void @av_packet_unref(ptr noundef %1) #4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not166.peel = icmp eq i32 %.1149.peel, 0
  br i1 %.not166.peel, label %.peel.next, label %.loopexit390

.peel.next:                                       ; preds = %bb.o
  br i1 %or.cond, label %.loopexit385, label %.critedge

.critedge:                                        ; preds = %.peel.next, %bb.aa
  %.0135 = phi i32 [ %.1, %bb.aa ], [ %.1.peel, %.peel.next ] ; 22 uses
  %i.al = tail call i32 @avio_rl32(ptr noundef %i.d) #4 ; 13 uses
  %i.am = tail call i32 @avio_feof(ptr noundef %i.d) #4
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.p, label %.loopexit179

bb.p:                                             ; preds = %.critedge
  %i.an = load i32, ptr %i.e, align 8, !tbaa !35
  %.not160 = icmp eq i32 %i.an, 0
  br i1 %.not160, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = tail call i32 @avio_rb32(ptr noundef %i.d) #4
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ap = tail call i32 @avio_rl32(ptr noundef %i.d) #4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aq = phi i32 [ %i.ao, %bb.q ], [ %i.ap, %bb.r ] ; 10 uses
  %i.ar = icmp ult i32 %i.aq, 8
  br i1 %i.ar, label %.loopexit179, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = add i32 %i.aq, -8                       ; 13 uses
  switch i32 %i.al, label %.loopexit386 [
    i32 1749963569, label %bb.u
    i32 1682854705, label %bb.w
    i32 1816413011, label %bb.w
    i32 1128549971, label %bb.w
    i32 1313162323, label %bb.w
    i32 0, label %.loopexit387
    i32 1699631921, label %.loopexit387
    i32 1816478547, label %.loopexit387
    i32 1145980243, label %.loopexit387
    i32 1313162579, label %.loopexit387
    i32 1749636685, label %.loopexit180
    i32 1413961323, label %.loopexit180
    i32 1413960048, label %.loopexit180
    i32 1934706516, label %.loopexit180
    i32 1799635277, label %.loopexit180
    i32 1716082253, label %.loopexit180.loopexit
    i32 1413961318, label %.loopexit180.loopexit
    i32 1833189709, label %.loopexit180.loopexit
    i32 1698971981, label %.loopexit180.loopexit
    i32 1145263213, label %.loopexit388
    i32 1261459021, label %.loopexit293
    i32 1261459009, label %.loopexit293
    i32 1749241933, label %.loopexit293
    i32 1414613360, label %.loopexit293
    i32 1177572941, label %.loopexit186
    i32 1177572929, label %.loopexit186
  ]

bb.u:                                             ; preds = %bb.t
  %i.at = icmp ult i32 %i.as, 32
  br i1 %i.at, label %.loopexit179, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = tail call i64 @avio_skip(ptr noundef %i.d, i64 noundef 32) #4 ; 0 uses
  %i.av = add i32 %i.aq, -40
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t, %bb.t, %bb.t, %bb.t
  %.0148 = phi i32 [ %i.av, %bb.v ], [ %i.as, %bb.t ], [ %i.as, %bb.t ], [ %i.as, %bb.t ], [ %i.as, %bb.t ] ; 5 uses
  %i.aw = load i32, ptr %i.f, align 4, !tbaa !30  ; 2 uses
  switch i32 %i.aw, label %bb.aa [
    i32 0, label %.loopexit389
    i32 65554, label %bb.x
    i32 86017, label %bb.x
    i32 69669, label %bb.z
  ]

.loopexit389:                                     ; preds = %bb.i, %bb.w
  %.0148.lcssa = phi i32 [ %.0148, %bb.w ], [ %.0148.peel, %bb.i ]
  %.0136.lcssa329 = phi i32 [ %i.aw, %bb.w ], [ %.0136.ph184, %bb.i ]
  %.0135.lcssa316 = phi i32 [ %.0135, %bb.w ], [ %.0135.ph185, %bb.i ]
  %i.ax = zext i32 %.0148.lcssa to i64
  %i.ay = tail call i64 @avio_skip(ptr noundef %i.d, i64 noundef %i.ax) #4 ; 0 uses
  br label %.outer.backedge

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.az = icmp ult i32 %.0148, 12
  br i1 %i.az, label %.loopexit179, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ba = tail call i32 @avio_rl32(ptr noundef %i.d) #4
  br label %.sink.split642

bb.z:                                             ; preds = %bb.w
  %i.bb = icmp ult i32 %.0148, 8
  br i1 %i.bb, label %.loopexit179, label %.sink.split642

.sink.split642:                                   ; preds = %bb.z, %bb.y
  %.sink643 = phi i32 [ -12, %bb.y ], [ -8, %bb.z ]
  %.1.ph = phi i32 [ %i.ba, %bb.y ], [ %.0135, %bb.z ]
  %i.bc = tail call i64 @avio_skip(ptr noundef %i.d, i64 noundef 8) #4 ; 0 uses
  %i.bd = add i32 %.0148, %.sink643
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split642, %bb.w
  %.1149 = phi i32 [ %.0148, %bb.w ], [ %i.bd, %.sink.split642 ] ; 2 uses
  %.1 = phi i32 [ %.0135, %bb.w ], [ %.1.ph, %.sink.split642 ] ; 2 uses
  %.not166 = icmp eq i32 %.1149, 0
  br i1 %.not166, label %.critedge, label %.loopexit390, !llvm.loop !91

.loopexit390:                                     ; preds = %bb.o, %bb.aa
  %.1149.lcssa = phi i32 [ %.1149, %bb.aa ], [ %.1149.peel, %bb.o ] ; 3 uses
  %.1.lcssa = phi i32 [ %.1, %bb.aa ], [ %.1.peel, %bb.o ] ; 7 uses
  %i.be = tail call i32 @av_get_packet(ptr noundef %i.d, ptr noundef %1, i32 noundef %.1149.lcssa) #4 ; 9 uses
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %.loopexit179, label %bb.ab

bb.ab:                                            ; preds = %.loopexit390
  %i.bg = load i32, ptr %i.n, align 8, !tbaa !89
  store i32 %i.bg, ptr %i.k, align 4, !tbaa !93
  %i.bh = load i32, ptr %i.f, align 4, !tbaa !30  ; 2 uses
  switch i32 %i.bh, label %bb.ak [
    i32 69642, label %bb.ac
    i32 69652, label %bb.ac
    i32 69654, label %bb.ac
    i32 69656, label %bb.ac
    i32 69653, label %bb.ac
    i32 69655, label %bb.ah
    i32 65554, label %bb.ai
    i32 86017, label %bb.ai
    i32 69669, label %bb.aj
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab
  %i.bi = load i32, ptr %i.q, align 8, !tbaa !94
  %i.bj = icmp slt i32 %i.bi, 4
  br i1 %i.bj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.33) #4
  br label %.loopexit179

bb.ae:                                            ; preds = %bb.ac
  %i.bk = icmp eq i32 %i.bh, 69653
  %i.bl = load ptr, ptr %i.h, align 8, !tbaa !95
  %i.bm = load i32, ptr %i.bl, align 1, !tbaa !13 ; 2 uses
  br i1 %i.bk, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bn = tail call i32 @llvm.bswap.i32(i32 %i.bm)
  %i.bo = zext i32 %i.bn to i64
  store i64 %i.bo, ptr %i.p, align 8, !tbaa !96
  br label %.outer.backedge

bb.ag:                                            ; preds = %bb.ae
  %i.bp = zext i32 %i.bm to i64
  store i64 %i.bp, ptr %i.p, align 8, !tbaa !96
  br label %.outer.backedge

bb.ah:                                            ; preds = %bb.ab
  %i.bq = shl nuw nsw i32 %i.be, 1
  %i.br = load i32, ptr %i.o, align 4, !tbaa !38
  %i.bs = sdiv i32 %i.bq, %i.br
  %i.bt = sext i32 %i.bs to i64
  store i64 %i.bt, ptr %i.p, align 8, !tbaa !96
  br label %.outer.backedge

bb.ai:                                            ; preds = %bb.ab, %bb.ab
  %i.bu = sext i32 %.1.lcssa to i64
  store i64 %i.bu, ptr %i.p, align 8, !tbaa !96
  br label %.outer.backedge

bb.aj:                                            ; preds = %bb.ab
  %i.bv = load i32, ptr %i.o, align 4, !tbaa !38
  %i.bw = shl nsw i32 %i.bv, 4
  %i.bx = udiv i32 %.1149.lcssa, %i.bw
  %i.by = mul i32 %i.bx, 28
  %i.bz = zext i32 %i.by to i64
  store i64 %i.bz, ptr %i.p, align 8, !tbaa !96
  br label %.outer.backedge

bb.ak:                                            ; preds = %bb.ab
  %i.ca = load i32, ptr %i.r, align 4, !tbaa !37
  %i.cb = load i32, ptr %i.o, align 4, !tbaa !38
  %i.cc = mul nsw i32 %i.cb, %i.ca
  %i.cd = udiv i32 %.1149.lcssa, %i.cc
  %i.ce = zext i32 %i.cd to i64
  store i64 %i.ce, ptr %i.p, align 8, !tbaa !96
  br label %.outer.backedge

.loopexit387:                                     ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t
  %.0136.lcssa323 = phi i32 [ 0, %bb.t ], [ 0, %bb.t ], [ 0, %bb.t ], [ 0, %bb.t ], [ 0, %bb.t ], [ %.0136.ph184, %bb.f ], [ %.0136.ph184, %bb.f ], [ %.0136.ph184, %bb.f ], [ %.0136.ph184, %bb.f ], [ %.0136.ph184, %bb.f ]
  %.0135.lcssa310 = phi i32 [ %.0135, %bb.t ], [ %.0135, %bb.t ], [ %.0135, %bb.t ], [ %.0135, %bb.t ], [ %.0135, %bb.t ], [ %.0135.ph185, %bb.f ], [ %.0135.ph185, %bb.f ], [ %.0135.ph185, %bb.f ], [ %.0135.ph185, %bb.f ], [ %.0135.ph185, %bb.f ]
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.loopexit387
  %i.cf = tail call i32 @avio_feof(ptr noundef %i.d) #4
  %.not163 = icmp eq i32 %i.cf, 0
  br i1 %.not163, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.cg = tail call i32 @avio_rl32(ptr noundef %i.d) #4
  switch i32 %i.cg, label %bb.al [
    i32 1816675155, label %.thread
    i32 1749963569, label %.thread
    i32 1313163347, label %.thread
    i32 1145128275, label %.thread
  ]

.thread:                                          ; preds = %bb.am, %bb.am, %bb.am, %bb.am
  %i.ch = tail call i64 @avio_skip(ptr noundef %i.d, i64 noundef -4) #4 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.al, %.thread
  %i.ci = tail call i32 @avio_feof(ptr noundef %i.d) #4
  %.not164 = icmp eq i32 %i.ci, 0
  %spec.select = select i1 %.not164, i32 %.0144.ph, i32 -541478725
  br label %.outer.backedge

.loopexit180.loopexit:                            ; preds = %bb.t, %bb.t, %bb.t, %bb.t
  br label %.loopexit180

.loopexit180.loopexit862:                         ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  br label %.loopexit180

.loopexit180:                                     ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %.loopexit180.loopexit862, %.loopexit180.loopexit
  %i.cj = phi i32 [ %i.aq, %.loopexit180.loopexit ], [ %i.aq, %bb.t ], [ %i.z, %.loopexit180.loopexit862 ], [ %i.aq, %bb.t ], [ %i.aq, %bb.t ], [ %i.aq, %bb.t ], [ %i.aq, %bb.t ], [ %i.z, %bb.f ], [ %i.z, %bb.f ], [ %i.z, %bb.f ], [ %i.z, %bb.f ], [ %i.z, %bb.f ] ; 2 uses
  %i.ck = phi i32 [ %i.al, %.loopexit180.loopexit ], [ %i.al, %bb.t ], [ %i.u, %.loopexit180.loopexit862 ], [ %i.al, %bb.t ], [ %i.al, %bb.t ], [ %i.al, %bb.t ], [ %i.al, %bb.t ], [ %i.u, %bb.f ], [ %i.u, %bb.f ], [ %i.u, %bb.f ], [ %i.u, %bb.f ], [ %i.u, %bb.f ]
  %.0135320 = phi i32 [ %.0135, %.loopexit180.loopexit ], [ %.0135, %bb.t ], [ %.0135.ph185, %.loopexit180.loopexit862 ], [ %.0135, %bb.t ], [ %.0135, %bb.t ], [ %.0135, %bb.t ], [ %.0135, %bb.t ], [ %.0135.ph185, %bb.f ], [ %.0135.ph185, %bb.f ], [ %.0135.ph185, %bb.f ], [ %.0135.ph185, %bb.f ], [ %.0135.ph185, %bb.f ]
  %i.cl = phi i1 [ true, %.loopexit180.loopexit ], [ true, %bb.t ], [ %i.t, %.loopexit180.loopexit862 ], [ true, %bb.t ], [ true, %bb.t ], [ true, %bb.t ], [ true, %bb.t ], [ %i.t, %bb.f ], [ %i.t, %bb.f ], [ %i.t, %bb.f ], [ %i.t, %bb.f ], [ %i.t, %bb.f ]
  %.1140 = phi i32 [ %.0139.ph183, %.loopexit180.loopexit ], [ 1, %bb.t ], [ %.0139.ph183, %.loopexit180.loopexit862 ], [ 1, %bb.t ], [ 1, %bb.t ], [ 1, %bb.t ], [ 1, %bb.t ], [ 1, %bb.f ], [ 1, %bb.f ], [ 1, %bb.f ], [ 1, %bb.f ], [ 1, %bb.f ]
  %i.cm = icmp slt i32 %i.cj, 8
  br i1 %i.cm, label %.loopexit179, label %.thread168

.thread168:                                       ; preds = %.loopexit180
  %i.cn = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef -8, i32 noundef 1) #4 ; 0 uses
  br label %.loopexit181

.loopexit388:                                     ; preds = %bb.t, %bb.f
  %.lcssa356 = phi i32 [ %i.ab, %bb.f ], [ %i.as, %bb.t ]
  %.lcssa347 = phi i32 [ %i.z, %bb.f ], [ %i.aq, %bb.t ]
  %.0136.lcssa326 = phi i32 [ %.0136.ph184, %bb.f ], [ 0, %bb.t ]
  %.0135.lcssa313 = phi i32 [ %.0135.ph185, %bb.f ], [ %.0135, %bb.t ]
  %.lcssa302 = phi i1 [ %i.t, %bb.f ], [ true, %bb.t ]
  %i.co = icmp ult i32 %.lcssa356, 8
  br i1 %i.co, label %.loopexit179, label %bb.an

bb.an:                                            ; preds = %.loopexit388
  %i.cp = tail call i64 @avio_skip(ptr noundef %i.d, i64 noundef 8) #4 ; 0 uses
  %i.cq = add i32 %.lcssa347, -16
  br label %.loopexit186

.loopexit293:                                     ; preds = %bb.t, %bb.t, %bb.t, %bb.t, %bb.f, %bb.f, %bb.f, %bb.f
  %.lcssa357 = phi i32 [ %i.ab, %bb.f ], [ %i.ab, %bb.f ], [ %i.ab, %bb.f ], [ %i.ab, %bb.f ], [ %i.as, %bb.t ], [ %i.as, %bb.t ], [ %i.as, %bb.t ], [ %i.as, %bb.t ]
  %.lcssa338 = phi i32 [ %i.u, %bb.f ], [ %i.u, %bb.f ], [ %i.u, %bb.f ], [ %i.u, %bb.f ], [ %i.al, %bb.t ], [ %i.al, %bb.t ], [ %i.al, %bb.t ], [ %i.al, %bb.t ]
  %.0136.lcssa327 = phi i32 [ %.0136.ph184, %bb.f ], [ %.0136.ph184, %bb.f ], [ %.0136.ph184, %bb.f ], [ %.0136.ph184, %bb.f ], [ 0, %bb.t ], [ 0, %bb.t ], [ 0, %bb.t ], [ 0, %bb.t ]
  %.0135.lcssa314 = phi i32 [ %.0135.ph185, %bb.f ], [ %.0135.ph185, %bb.f ], [ %.0135.ph185, %bb.f ], [ %.0135.ph185, %bb.f ], [ %.0135, %bb.t ], [ %.0135, %bb.t ], [ %.0135, %bb.t ], [ %.0135, %bb.t ]
  %.lcssa303 = phi i1 [ %i.t, %bb.f ], [ %i.t, %bb.f ], [ %i.t, %bb.f ], [ %i.t, %bb.f ], [ true, %bb.t ], [ true, %bb.t ], [ true, %bb.t ], [ true, %bb.t ]
  br label %.loopexit186

.loopexit186:                                     ; preds = %bb.t, %bb.t, %bb.f, %bb.f, %.loopexit293, %bb.an
  %i.cr = phi i32 [ %.lcssa338, %.loopexit293 ], [ 1145263213, %bb.an ], [ %i.u, %bb.f ], [ %i.u, %bb.f ], [ %i.al, %bb.t ], [ %i.al, %bb.t ]
  %.0136331 = phi i32 [ %.0136.lcssa327, %.loopexit293 ], [ %.0136.lcssa326, %bb.an ], [ %.0136.ph184, %bb.f ], [ %.0136.ph184, %bb.f ], [ 0, %bb.t ], [ 0, %bb.t ]
  %.0135319 = phi i32 [ %.0135.lcssa314, %.loopexit293 ], [ %.0135.lcssa313, %bb.an ], [ %.0135.ph185, %bb.f ], [ %.0135.ph185, %bb.f ], [ %.0135, %bb.t ], [ %.0135, %bb.t ] ; 2 uses
  %i.cs = phi i1 [ %.lcssa303, %.loopexit293 ], [ %.lcssa302, %bb.an ], [ %i.t, %bb.f ], [ %i.t, %bb.f ], [ true, %bb.t ], [ true, %bb.t ]
  %.2150 = phi i32 [ %.lcssa357, %.loopexit293 ], [ %i.cq, %bb.an ], [ %i.ab, %bb.f ], [ %i.ab, %bb.f ], [ %i.as, %bb.t ], [ %i.as, %bb.t ] ; 2 uses
  %.2141 = phi i32 [ 1, %.loopexit293 ], [ %.0139.ph183, %bb.an ], [ %.0139.ph183, %bb.f ], [ %.0139.ph183, %bb.f ], [ %.0139.ph183, %bb.t ], [ %.0139.ph183, %bb.t ] ; 2 uses
  %.not161 = icmp eq i32 %.2150, 0
  br i1 %.not161, label %.outer182, label %.loopexit181, !llvm.loop !97

.loopexit181:                                     ; preds = %.loopexit186, %.thread168
  %i.ct = phi i32 [ %i.ck, %.thread168 ], [ %i.cr, %.loopexit186 ] ; 5 uses
  %.0135318 = phi i32 [ %.0135320, %.thread168 ], [ %.0135319, %.loopexit186 ] ; 2 uses
  %i.cu = phi i1 [ %i.cl, %.thread168 ], [ %i.cs, %.loopexit186 ] ; 2 uses
  %.2141173 = phi i32 [ %.1140, %.thread168 ], [ %.2141, %.loopexit186 ] ; 3 uses
  %.2150172 = phi i32 [ %i.cj, %.thread168 ], [ %.2150, %.loopexit186 ] ; 6 uses
  %i.cv = icmp ugt i32 %.2150172, 2147483644
  br i1 %i.cv, label %.loopexit179, label %bb.ao

bb.ao:                                            ; preds = %.loopexit181
  %i.cw = load i32, ptr %i.g, align 4, !tbaa !34
  %i.cx = icmp eq i32 %i.cw, 106
  br i1 %i.cx, label %bb.ap, label %.thread174

bb.ap:                                            ; preds = %bb.ao
  %i.cy = icmp eq i32 %i.ct, 1177572941
  %i.cz = icmp eq i32 %i.ct, 1261459021
  %i.da = or i1 %i.cy, %i.cz
  br i1 %i.cu, label %bb.ar, label %bb.aq

.thread174:                                       ; preds = %bb.ao
  br i1 %i.cu, label %.thread175, label %bb.aq

bb.aq:                                            ; preds = %.thread174, %bb.ap
  %i.db = phi i1 [ false, %.thread174 ], [ %i.da, %bb.ap ]
  %i.dc = tail call i32 @av_append_packet(ptr noundef %i.d, ptr noundef %1, i32 noundef %.2150172) #4
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  switch i32 %i.ct, label %.thread175 [
    i32 1261459021, label %bb.as
    i32 1177572941, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar, %bb.ar
  %i.dd = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef -3, i32 noundef 1) #4 ; 0 uses
  br label %.thread175

.thread175:                                       ; preds = %bb.ar, %.thread174, %bb.as
  %i.de = phi i1 [ true, %bb.as ], [ false, %bb.ar ], [ false, %.thread174 ] ; 2 uses
  %i.df = phi i32 [ 3, %bb.as ], [ 0, %bb.ar ], [ 0, %.thread174 ]
  %i.dg = add nuw nsw i32 %i.df, %.2150172
  %i.dh = tail call i32 @av_get_packet(ptr noundef %i.d, ptr noundef %1, i32 noundef %i.dg) #4 ; 3 uses
  %i.di = icmp sgt i32 %i.dh, -1
  %or.cond9 = and i1 %i.de, %i.di
  br i1 %or.cond9, label %.thread176, label %bb.at

.thread176:                                       ; preds = %.thread175
  %i.dj = trunc i32 %.2150172 to i8
  %i.dk = load ptr, ptr %i.h, align 8, !tbaa !95
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 2
  store i8 %i.dj, ptr %i.dl, align 1, !tbaa !13
  %i.dm = lshr i32 %.2150172, 8
  %i.dn = trunc i32 %i.dm to i8
  %i.do = load ptr, ptr %i.h, align 8, !tbaa !95
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  store i8 %i.dn, ptr %i.dp, align 1, !tbaa !13
  %i.dq = lshr i32 %.2150172, 16
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = load ptr, ptr %i.h, align 8, !tbaa !95
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !13
  br label %bb.au

bb.at:                                            ; preds = %.thread175, %bb.aq
  %i.dt = phi i1 [ %i.db, %bb.aq ], [ %i.de, %.thread175 ]
  %.2146 = phi i32 [ %i.dc, %bb.aq ], [ %i.dh, %.thread175 ] ; 3 uses
  %i.du = icmp slt i32 %.2146, 0
  br i1 %i.du, label %.outer.backedge, label %bb.au

.outer.backedge:                                  ; preds = %bb.at, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.ag, %bb.af, %.loopexit386, %bb.ax, %.loopexit, %.loopexit389
  %.0151.ph.be = phi i32 [ %.0151.ph, %.loopexit386 ], [ %.0151.ph, %bb.ax ], [ %.0151.ph, %.loopexit389 ], [ 1, %.loopexit ], [ %.0151.ph, %bb.ah ], [ %.0151.ph, %bb.af ], [ %.0151.ph, %bb.ag ], [ %.0151.ph, %bb.ak ], [ %.0151.ph, %bb.aj ], [ %.0151.ph, %bb.ai ], [ %.0151.ph, %bb.at ]
  %.0144.ph.be = phi i32 [ %.0144.ph, %.loopexit386 ], [ %.2146178, %bb.ax ], [ %.0144.ph, %.loopexit389 ], [ %spec.select, %.loopexit ], [ %i.be, %bb.ah ], [ %i.be, %bb.af ], [ %i.be, %bb.ag ], [ %i.be, %bb.ak ], [ %i.be, %bb.aj ], [ %i.be, %bb.ai ], [ %.2146, %bb.at ]
  %.0142.ph.be = phi i32 [ %.0142.ph, %.loopexit386 ], [ 1, %bb.ax ], [ %.0142.ph, %.loopexit389 ], [ %.0142.ph, %.loopexit ], [ 1, %bb.ah ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 1, %bb.ak ], [ 1, %bb.aj ], [ 1, %bb.ai ], [ 1, %bb.at ]
  %.0139.ph.be = phi i32 [ %.0139.ph183, %.loopexit386 ], [ %.2141173, %bb.ax ], [ %.0139.ph183, %.loopexit389 ], [ %.0139.ph183, %.loopexit ], [ %.0139.ph183, %bb.ah ], [ %.0139.ph183, %bb.af ], [ %.0139.ph183, %bb.ag ], [ %.0139.ph183, %bb.ak ], [ %.0139.ph183, %bb.aj ], [ %.0139.ph183, %bb.ai ], [ %.2141173, %bb.at ]
  %.0136.ph.be = phi i32 [ %.0136.lcssa322, %.loopexit386 ], [ %i.dy, %bb.ax ], [ %.0136.lcssa329, %.loopexit389 ], [ %.0136.lcssa323, %.loopexit ], [ 0, %bb.ah ], [ 0, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ak ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.at ]
  %.0135.ph.be = phi i32 [ %.0135.lcssa309, %.loopexit386 ], [ %.0135318, %bb.ax ], [ %.0135.lcssa316, %.loopexit389 ], [ %.0135.lcssa310, %.loopexit ], [ %.1.lcssa, %bb.ah ], [ %.1.lcssa, %bb.af ], [ %.1.lcssa, %bb.ag ], [ %.1.lcssa, %bb.ak ], [ %.1.lcssa, %bb.aj ], [ %.1.lcssa, %bb.ai ], [ %.0135318, %bb.at ]
  br label %.outer, !llvm.loop !97

bb.au:                                            ; preds = %.thread176, %bb.at
  %.2146178 = phi i32 [ %i.dh, %.thread176 ], [ %.2146, %bb.at ]
  %i.dv = phi i1 [ true, %.thread176 ], [ %i.dt, %bb.at ]
  %i.dw = icmp eq i32 %i.ct, 1749636685
  %i.dx = select i1 %i.dv, i1 true, i1 %i.dw
  %i.dy = zext i1 %i.dx to i32
  %i.dz = load i32, ptr %i.i, align 8, !tbaa !54
  %.not162 = icmp eq i32 %i.dz, 0
  br i1 %.not162, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  switch i32 %i.ct, label %bb.aw [
    i32 1261459009, label %bb.ax
    i32 1177572929, label %bb.ax
  ]

bb.aw:                                            ; preds = %bb.av, %bb.au
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.av, %bb.aw
  %storemerge.in = phi ptr [ %i.l, %bb.aw ], [ %i.j, %bb.av ], [ %i.j, %bb.av ]
  %storemerge = load i32, ptr %storemerge.in, align 4, !tbaa !44
  store i32 %storemerge, ptr %i.k, align 4, !tbaa !93
  %i.ea = load i32, ptr %i.m, align 8, !tbaa !98
  %i.eb = or i32 %i.ea, %.2141173
  store i32 %i.eb, ptr %i.m, align 8, !tbaa !98
  br label %.outer.backedge

.loopexit386:                                     ; preds = %bb.f, %bb.t
  %.lcssa352 = phi i32 [ %i.as, %bb.t ], [ %i.ab, %bb.f ]
  %.0136.lcssa322 = phi i32 [ 0, %bb.t ], [ %.0136.ph184, %bb.f ]
  %.0135.lcssa309 = phi i32 [ %.0135, %bb.t ], [ %.0135.ph185, %bb.f ]
  %i.ec = zext i32 %.lcssa352 to i64
  %i.ed = tail call i64 @avio_skip(ptr noundef %i.d, i64 noundef %i.ec) #4 ; 0 uses
  br label %.outer.backedge

.loopexit385:                                     ; preds = %.outer182, %.peel.next
  %2 = icmp ne i32 %.0142.ph, 0
  %3 = icmp eq i32 %.0151.ph, 0
  %i.ee = icmp slt i32 %.0144.ph, 0
  %or.cond13.not856 = or i1 %i.ee, %3
  %or.cond15 = or i1 %2, %or.cond13.not856
  %.0144. = select i1 %or.cond15, i32 %.0144.ph, i32 -11
  br label %.loopexit179

.loopexit179:                                     ; preds = %.loopexit181, %.loopexit180, %.loopexit390, %.loopexit388, %.critedge.peel, %bb.e, %bb.g, %bb.j, %bb.k, %bb.z, %bb.x, %bb.u, %bb.s, %.critedge, %.loopexit385, %bb.ad
  %.0 = phi i32 [ %.0144., %.loopexit385 ], [ -1094995529, %bb.ad ], [ -1094995529, %bb.g ], [ -1094995529, %bb.s ], [ -1094995529, %bb.u ], [ -1094995529, %bb.z ], [ -1094995529, %bb.x ], [ -541478725, %.critedge ], [ -1094995529, %bb.j ], [ -1094995529, %bb.k ], [ -1094995529, %bb.e ], [ -1094995529, %.loopexit388 ], [ -541478725, %.critedge.peel ], [ -1094995529, %.loopexit180 ], [ -1094995529, %.loopexit181 ], [ %i.be, %.loopexit390 ]
  ret i32 %.0
}

declare ptr @av_default_item_name(ptr noundef) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @avformat_new_stream(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @avpriv_set_pts_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @avio_rl32(ptr noundef) local_unnamed_addr #2

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @avio_skip(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @avio_rl16(ptr noundef) local_unnamed_addr #2

declare i64 @avio_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @avio_rb32(ptr noundef) local_unnamed_addr #2

declare i32 @avio_r8(ptr noundef) local_unnamed_addr #2

declare i32 @avio_feof(ptr noundef) local_unnamed_addr #2

declare void @av_packet_unref(ptr noundef) local_unnamed_addr #2

declare i32 @av_get_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_append_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 8}
!10 = !{!"AVProbeData", !11, i64 0, !11, i64 8, !6, i64 16, !11, i64 24}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!15, !12, i64 24}
!15 = !{!"AVFormatContext", !16, i64 0, !17, i64 8, !18, i64 16, !12, i64 24, !19, i64 32, !6, i64 40, !6, i64 44, !20, i64 48, !6, i64 56, !22, i64 64, !6, i64 72, !23, i64 80, !11, i64 88, !24, i64 96, !24, i64 104, !24, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !24, i64 136, !24, i64 144, !11, i64 152, !6, i64 160, !6, i64 164, !25, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !26, i64 192, !24, i64 200, !6, i64 208, !6, i64 212, !27, i64 216, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !24, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !24, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !6, i64 368, !28, i64 376, !28, i64 384, !28, i64 392, !28, i64 400, !6, i64 408, !12, i64 416, !12, i64 424, !24, i64 432, !11, i64 440, !12, i64 448, !12, i64 456, !24, i64 464, !11, i64 472}
!16 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!17 = !{!"p1 _ZTS13AVInputFormat", !12, i64 0}
!18 = !{!"p1 _ZTS14AVOutputFormat", !12, i64 0}
!19 = !{!"p1 _ZTS11AVIOContext", !12, i64 0}
!20 = !{!"p2 _ZTS8AVStream", !21, i64 0}
!21 = !{!"any p2 pointer", !12, i64 0}
!22 = !{!"p2 _ZTS13AVStreamGroup", !21, i64 0}
!23 = !{!"p2 _ZTS9AVChapter", !21, i64 0}
!24 = !{!"long", !7, i64 0}
!25 = !{!"p2 _ZTS9AVProgram", !21, i64 0}
!26 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!27 = !{!"AVIOInterruptCB", !12, i64 0, !12, i64 8}
!28 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!29 = !{!15, !19, i64 32}
!30 = !{!31, !6, i64 68}
!31 = !{!"EaDemuxContext", !16, i64 0, !6, i64 8, !32, i64 12, !32, i64 40, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96}
!32 = !{!"VideoProperties", !6, i64 0, !33, i64 4, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!33 = !{!"AVRational", !6, i64 0, !6, i64 4}
!34 = !{!31, !6, i64 12}
!35 = !{!31, !6, i64 8}
!36 = !{!31, !6, i64 80}
!37 = !{!31, !6, i64 76}
!38 = !{!31, !6, i64 84}
!39 = !{!31, !6, i64 92}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!31, !6, i64 88}
!43 = distinct !{!43, !41}
!44 = !{!6, !6, i64 0}
!45 = distinct !{!45, !41}
!46 = !{!32, !6, i64 0}
!47 = !{!32, !6, i64 12}
!48 = !{!32, !6, i64 16}
!49 = !{!32, !6, i64 4}
!50 = !{!31, !6, i64 16}
!51 = !{!32, !6, i64 20}
!52 = !{!32, !6, i64 8}
!53 = !{!31, !6, i64 96}
!54 = !{!31, !6, i64 40}
!55 = distinct !{!55, !41}
!56 = !{!57, !6, i64 8}
!57 = !{!"AVStream", !16, i64 0, !6, i64 8, !6, i64 12, !58, i64 16, !12, i64 24, !33, i64 32, !24, i64 40, !24, i64 48, !24, i64 56, !6, i64 64, !6, i64 68, !33, i64 72, !26, i64 80, !33, i64 88, !59, i64 96, !6, i64 200, !33, i64 204, !6, i64 212}
!58 = !{!"p1 _ZTS17AVCodecParameters", !12, i64 0}
!59 = !{!"AVPacket", !60, i64 0, !24, i64 8, !24, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !61, i64 48, !6, i64 56, !24, i64 64, !24, i64 72, !12, i64 80, !60, i64 88, !33, i64 96}
!60 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!61 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!62 = !{!32, !6, i64 24}
!63 = !{!57, !58, i64 16}
!64 = !{!65, !6, i64 0}
!65 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !11, i64 16, !6, i64 24, !61, i64 32, !6, i64 40, !6, i64 44, !24, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !33, i64 80, !33, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !66, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!66 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!67 = !{!65, !6, i64 4}
!68 = !{!69, !6, i64 808}
!69 = !{!"FFStream", !57, i64 0, !70, i64 216, !6, i64 224, !71, i64 232, !6, i64 240, !72, i64 248, !6, i64 256, !73, i64 264, !6, i64 280, !6, i64 284, !74, i64 288, !75, i64 312, !76, i64 320, !6, i64 328, !6, i64 332, !24, i64 336, !24, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !24, i64 368, !24, i64 376, !24, i64 384, !6, i64 392, !24, i64 400, !24, i64 408, !24, i64 416, !6, i64 424, !6, i64 428, !7, i64 432, !7, i64 568, !7, i64 592, !24, i64 728, !7, i64 736, !7, i64 737, !33, i64 740, !10, i64 752, !77, i64 784, !24, i64 792, !6, i64 800, !6, i64 804, !6, i64 808, !78, i64 816, !79, i64 824, !6, i64 832, !6, i64 836, !24, i64 840, !24, i64 848, !80, i64 856}
!70 = !{!"p1 _ZTS15AVFormatContext", !12, i64 0}
!71 = !{!"p1 _ZTS12AVBSFContext", !12, i64 0}
!72 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!73 = !{!"", !71, i64 0, !6, i64 8}
!74 = !{!"FFFrac", !24, i64 0, !24, i64 8, !24, i64 16}
!75 = !{!"p1 _ZTS12FFStreamInfo", !12, i64 0}
!76 = !{!"p1 _ZTS12AVIndexEntry", !12, i64 0}
!77 = !{!"p1 _ZTS15PacketListEntry", !12, i64 0}
!78 = !{!"p1 _ZTS20AVCodecParserContext", !12, i64 0}
!79 = !{!"p1 _ZTS8AVPacket", !12, i64 0}
!80 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!81 = !{!65, !6, i64 8}
!82 = !{!57, !24, i64 56}
!83 = !{!57, !24, i64 48}
!84 = !{!65, !6, i64 132}
!85 = !{!65, !6, i64 152}
!86 = !{!65, !6, i64 56}
!87 = !{!65, !24, i64 48}
!88 = !{!65, !6, i64 156}
!89 = !{!31, !6, i64 72}
!90 = !{!57, !24, i64 40}
!91 = distinct !{!91, !41, !92}
!92 = !{!"llvm.loop.peeled.count", i32 1}
!93 = !{!59, !6, i64 36}
!94 = !{!59, !6, i64 32}
!95 = !{!59, !11, i64 24}
!96 = !{!59, !24, i64 64}
!97 = distinct !{!97, !41}
!98 = !{!59, !6, i64 40}
end_hunk_0
