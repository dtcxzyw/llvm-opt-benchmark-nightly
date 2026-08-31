Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/formdata?download=true
inline.NumInlined: 13
inline.NumDeleted: 8
begin_hunk_0_@curl_formadd:bb.a
  %i.gu = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 8
  store ptr %i.gv, ptr %i.f, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.gw = phi ptr [ %i.gs, %bb.cq ], [ %i.gu, %bb.cr ]
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !24
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.co
  %i.gy = phi ptr [ %i.gx, %bb.cs ], [ %.1.i, %bb.co ] ; 4 uses
  %.not214.i = icmp eq ptr %i.gy, null
  br i1 %.not214.i, label %.loopexit.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store ptr %i.gy, ptr %i.gm, align 8, !tbaa !31
  %i.gz = getelementptr inbounds nuw i8, ptr %.0150.ph.i7, i64 24
  call void @Curl_bufref_set(ptr noundef nonnull %i.gz, ptr noundef nonnull %i.gy, i64 noundef 0, ptr noundef null) #6
  br label %.outer.i

bb.cv:                                            ; preds = %bb.g
  %.not204.i.a = icmp eq ptr %.1144.i, null
  br i1 %.not204.i.a, label %bb.cw, label %bb.da

bb.cw:                                            ; preds = %bb.cv
  %i.ha = load i32, ptr %2, align 16              ; 3 uses
  %i.hb = icmp ult i32 %i.ha, 41
  br i1 %i.hb, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.hc = load ptr, ptr %i.g, align 16
  %i.hd = zext nneg i32 %i.ha to i64
  %i.he = getelementptr i8, ptr %i.hc, i64 %i.hd
  %i.hf = add nuw nsw i32 %i.ha, 8
  store i32 %i.hf, ptr %2, align 16
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  %i.hg = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 8
  store ptr %i.hh, ptr %i.f, align 8
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.hi = phi ptr [ %i.he, %bb.cx ], [ %i.hg, %bb.cy ]
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !24
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cv
  %i.hk = phi ptr [ %i.hj, %bb.cz ], [ %.1.i, %bb.cv ] ; 8 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.0150.ph.i7, i64 48 ; 2 uses
  %i.hm = call ptr @Curl_bufref_ptr(ptr noundef nonnull %i.hl) #6
  %.not205.i.a = icmp eq ptr %i.hm, null
  br i1 %.not205.i.a, label %bb.dg, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.hn = getelementptr inbounds nuw i8, ptr %.0150.ph.i7, i64 152
  %i.ho = load i8, ptr %i.hn, align 8, !tbaa !18
  %i.hp = and i8 %i.ho, 1
  %.not208.i.a = icmp eq i8 %i.hp, 0
  br i1 %.not208.i.a, label %.loopexit.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.not209.i = icmp eq ptr %i.hk, null
  br i1 %.not209.i, label %.loopexit.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.hq = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !8
  %i.hr = call ptr %i.hq(i64 noundef 1, i64 noundef 160) #6, !inline_history !10 ; 11 uses
  %.not.i249.i = icmp eq ptr %i.hr, null
  br i1 %.not.i249.i, label %.loopexit.i.sink.split, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @Curl_bufref_init(ptr noundef nonnull %i.hr) #6
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  call void @Curl_bufref_init(ptr noundef nonnull %i.hs) #6
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 48 ; 2 uses
  call void @Curl_bufref_init(ptr noundef nonnull %i.ht) #6
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 72
  call void @Curl_bufref_init(ptr noundef nonnull %i.hu) #6
  %i.hv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hk) #7
  %i.hw = call i32 @Curl_bufref_memdup0(ptr noundef nonnull %i.ht, ptr noundef nonnull %i.hk, i64 noundef %i.hv) #6
  %.not211.i = icmp eq i32 %i.hw, 0
  br i1 %.not211.i, label %bb.df, label %.loopexit.i.sink.split

bb.df:                                            ; preds = %bb.de
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hr, i64 152 ; 2 uses
  %i.hy = load i8, ptr %i.hx, align 8, !tbaa !18
  %i.hz = or i8 %i.hy, 1
  store i8 %i.hz, ptr %i.hx, align 8, !tbaa !18
  %i.ia = getelementptr inbounds nuw i8, ptr %.0150.ph.i7, i64 112 ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !28
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hr, i64 112
  store ptr %i.ib, ptr %i.ic, align 8, !tbaa !28
  store ptr %i.hr, ptr %i.ia, align 8, !tbaa !28
  br label %.outer.i

bb.dg:                                            ; preds = %bb.da
  %.not206.i.a = icmp eq ptr %i.hk, null
  br i1 %.not206.i.a, label %.loopexit.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.id = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hk) #7
  %i.ie = call i32 @Curl_bufref_memdup0(ptr noundef nonnull %i.hl, ptr noundef nonnull %i.hk, i64 noundef %i.id) #6
  %.not207.i = icmp ne i32 %i.ie, 0
  br label %.outer.i

bb.di:                                            ; preds = %bb.g
  %.not202.i.a = icmp eq ptr %.1144.i, null
  br i1 %.not202.i.a, label %bb.dj, label %bb.dn

bb.dj:                                            ; preds = %bb.di
  %i.if = load i32, ptr %2, align 16              ; 3 uses
  %i.ig = icmp ult i32 %i.if, 41
  br i1 %i.ig, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.ih = load ptr, ptr %i.g, align 16
  %i.ii = zext nneg i32 %i.if to i64
  %i.ij = getelementptr i8, ptr %i.ih, i64 %i.ii
  %i.ik = add nuw nsw i32 %i.if, 8
  store i32 %i.ik, ptr %2, align 16
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.il = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.im = getelementptr i8, ptr %i.il, i64 8
  store ptr %i.im, ptr %i.f, align 8
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.in = phi ptr [ %i.ij, %bb.dk ], [ %i.il, %bb.dl ]
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !32
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.di
  %i.ip = phi ptr [ %i.io, %bb.dm ], [ %.1.i, %bb.di ]
  %i.iq = getelementptr inbounds nuw i8, ptr %.0150.ph.i7, i64 120 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !33
  %.not203.i = icmp eq ptr %i.ir, null
  br i1 %.not203.i, label %bb.do, label %.loopexit.i

bb.do:                                            ; preds = %bb.dn
  store ptr %i.ip, ptr %i.iq, align 8, !tbaa !33
  br label %.outer.i

bb.dp:                                            ; preds = %bb.g, %bb.g
  %.not199.i.a = icmp eq ptr %.1144.i, null
  br i1 %.not199.i.a, label %bb.dq, label %bb.du

bb.dq:                                            ; preds = %bb.dp
  %i.is = load i32, ptr %2, align 16              ; 3 uses
  %i.it = icmp ult i32 %i.is, 41
  br i1 %i.it, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.iu = load ptr, ptr %i.g, align 16
  %i.iv = zext nneg i32 %i.is to i64
  %i.iw = getelementptr i8, ptr %i.iu, i64 %i.iv
  %i.ix = add nuw nsw i32 %i.is, 8
  store i32 %i.ix, ptr %2, align 16
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  %i.iy = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.iz = getelementptr i8, ptr %i.iy, i64 8
  store ptr %i.iz, ptr %i.f, align 8
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.ja = phi ptr [ %i.iw, %bb.dr ], [ %i.iy, %bb.ds ]
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !24
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.dp
  %i.jc = phi ptr [ %i.jb, %bb.dt ], [ %.1.i, %bb.dp ] ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.0150.ph.i7, i64 72 ; 2 uses
  %i.je = call ptr @Curl_bufref_ptr(ptr noundef nonnull %i.jd) #6
  %.not200.i.a = icmp eq ptr %i.je, null
  br i1 %.not200.i.a, label %bb.dv, label %.loopexit.i

bb.dv:                                            ; preds = %bb.du
  %i.jf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jc) #7
  %i.jg = call i32 @Curl_bufref_memdup0(ptr noundef nonnull %i.jd, ptr noundef nonnull %i.jc, i64 noundef %i.jf) #6
  %.not201.i = icmp ne i32 %i.jg, 0
  br label %.outer.i

.outer.i:                                         ; preds = %bb.l, %bb.dv, %bb.do, %bb.dh, %bb.df, %bb.cu, %bb.cm, %bb.ce, %bb.bw, %bb.bt, %bb.bi, %bb.az, %bb.as, %bb.al, %bb.ac, %bb.u
  %.1151.i = phi ptr [ %.0150.ph.i7, %bb.bi ], [ %.0150.ph.i7, %bb.dv ], [ %.0150.ph.i7, %bb.cu ], [ %.0150.ph.i7, %bb.ce ], [ %.0150.ph.i7, %bb.l ], [ %.0150.ph.i7, %bb.u ], [ %i.en, %bb.bt ], [ %.0150.ph.i7, %bb.dh ], [ %.0150.ph.i7, %bb.ac ], [ %.0150.ph.i7, %bb.do ], [ %.0150.ph.i7, %bb.al ], [ %.0150.ph.i7, %bb.cm ], [ %.0150.ph.i7, %bb.as ], [ %.0150.ph.i7, %bb.az ], [ %.0150.ph.i7, %bb.bw ], [ %i.hr, %bb.df ]
  %.2149.i.shrunk = phi i1 [ false, %bb.bi ], [ %.not201.i, %bb.dv ], [ false, %bb.cu ], [ false, %bb.ce ], [ false, %bb.l ], [ false, %bb.u ], [ false, %bb.bt ], [ %.not207.i, %bb.dh ], [ false, %bb.ac ], [ false, %bb.do ], [ false, %bb.al ], [ false, %bb.cm ], [ false, %bb.as ], [ false, %bb.az ], [ false, %bb.bw ], [ false, %bb.df ]
  %.2145.i = phi ptr [ %.1144.i, %bb.bi ], [ %.1144.i, %bb.dv ], [ %.1144.i, %bb.cu ], [ %.1144.i, %bb.ce ], [ %i.ag, %bb.l ], [ %.1144.i, %bb.u ], [ %.1144.i, %bb.bt ], [ %.1144.i, %bb.dh ], [ %.1144.i, %bb.ac ], [ %.1144.i, %bb.do ], [ %.1144.i, %bb.al ], [ %.1144.i, %bb.cm ], [ %.1144.i, %bb.as ], [ %.1144.i, %bb.az ], [ %.1144.i, %bb.bw ], [ %.1144.i, %bb.df ]
  %.2.i = phi ptr [ %i.dq, %bb.bi ], [ %i.jc, %bb.dv ], [ %i.gy, %bb.cu ], [ %i.ft, %bb.ce ], [ %.1.i, %bb.l ], [ %i.av, %bb.u ], [ %i.eg, %bb.bt ], [ %i.hk, %bb.dh ], [ %.1.i, %bb.ac ], [ %.1.i, %bb.do ], [ %i.bz, %bb.al ], [ %.1.i, %bb.cm ], [ %.1.i, %bb.as ], [ %.1.i, %bb.az ], [ %i.eg, %bb.bw ], [ %i.hk, %bb.df ]
  br i1 %.2149.i.shrunk, label %.loopexit.i, label %bb.b, !llvm.loop !34

.preheader.i:                                     ; preds = %bb.f, %bb.ev
  %.1262.i = phi ptr [ %.2263.i, %bb.ev ], [ null, %bb.f ] ; 13 uses
  %.1258.i = phi ptr [ %.2259.i, %bb.ev ], [ null, %bb.f ] ; 14 uses
  %.051114.i.i = phi ptr [ %i.lg, %bb.ev ], [ null, %bb.f ] ; 4 uses
  %.053113.i.i = phi ptr [ %i.mp, %bb.ev ], [ %i.b, %bb.f ] ; 23 uses
  %.sroa.0.0108.i.i = phi i64 [ %.sroa.0.2.i.i, %bb.ev ], [ 0, %bb.f ] ; 2 uses
  %i.jh = call ptr @Curl_bufref_ptr(ptr noundef nonnull %.053113.i.i) #6 ; 2 uses
  %.not64.i.i = icmp eq ptr %i.jh, null           ; 2 uses
  br i1 %.not64.i.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.preheader.i
  %i.ji = getelementptr inbounds nuw i8, ptr %.053113.i.i, i64 24
  %i.jj = call ptr @Curl_bufref_ptr(ptr noundef nonnull %i.ji) #6
  %i.jk = icmp ne ptr %i.jj, null
  %i.jl = icmp ne ptr %.051114.i.i, null
  %or.cond.i.i = or i1 %i.jl, %i.jk
  br i1 %or.cond.i.i, label %bb.dy, label %.loopexit.i

bb.dx:                                            ; preds = %.preheader.i
  %.old2.not.i.i = icmp eq ptr %.051114.i.i, null
  br i1 %.old2.not.i.i, label %.loopexit.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.jm = getelementptr inbounds nuw i8, ptr %.053113.i.i, i64 128 ; 3 uses
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !27
  %.not65.i.i.a = icmp eq i64 %i.jn, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.053113.i.i, i64 152 ; 5 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !tbaa !18 ; 2 uses
  %i.jo = and i8 %.pre.i.i, 1
  %.not66.i.i = icmp eq i8 %i.jo, 0
  %or.cond123.i.i = select i1 %.not65.i.i.a, i1 true, i1 %.not66.i.i
  br i1 %or.cond123.i.i, label %._crit_edge.i.i, label %.loopexit.i

._crit_edge.i.i:                                  ; preds = %bb.dy
  %i.jp = zext i8 %.pre.i.i to i32                ; 4 uses
  %i.jq = and i32 %i.jp, 9
  %or.cond89.not.i.i = icmp eq i32 %i.jq, 9
  br i1 %or.cond89.not.i.i, label %.loopexit.i, label %bb.dz

bb.dz:                                            ; preds = %._crit_edge.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %.053113.i.i, i64 96 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !29
  %.not69.i.i = icmp eq ptr %i.js, null
  %i.jt = and i32 %i.jp, 48
  %or.cond90.not.i.i = icmp eq i32 %i.jt, 48
  %or.cond110.i.i = and i1 %or.cond90.not.i.i, %.not69.i.i
  %i.ju = and i32 %i.jp, 10
  %or.cond91.not.i.i = icmp eq i32 %i.ju, 10
  %or.cond111.i.i = or i1 %or.cond91.not.i.i, %or.cond110.i.i
  br i1 %or.cond111.i.i, label %.loopexit.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.jv = and i32 %i.jp, 17
  %or.cond92.i.i = icmp eq i32 %i.jv, 0
  br i1 %or.cond92.i.i, label %bb.ed, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.jw = getelementptr inbounds nuw i8, ptr %.053113.i.i, i64 48 ; 2 uses
  %i.jx = call ptr @Curl_bufref_ptr(ptr noundef nonnull %i.jw) #6
  %.not76.i.i.a = icmp eq ptr %i.jx, null
  br i1 %.not76.i.i.a, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.jy = load i8, ptr %.phi.trans.insert.i.i, align 8, !tbaa !18
  %i.jz = and i8 %i.jy, 16
  %.not77.i.i.a = icmp eq i8 %i.jz, 0
  %.v.i.i = select i1 %.not77.i.i.a, i64 24, i64 72
  %i.ka = getelementptr inbounds nuw i8, ptr %.053113.i.i, i64 %.v.i.i
  %i.kb = call ptr @Curl_bufref_ptr(ptr noundef nonnull %i.ka) #6
  %i.kc = call ptr @Curl_mime_contenttype(ptr noundef %i.kb) #6 ; 2 uses
  %.not78.i.i.a = icmp eq ptr %i.kc, null
  %3 = inttoptr i64 %.sroa.0.0108.i.i to ptr
  %spec.select.i.i = select i1 %.not78.i.i.a, ptr %3, ptr %i.kc ; 2 uses
  %.not79.i.i.a = icmp eq ptr %spec.select.i.i, null
  %spec.store.select.i.i = select i1 %.not79.i.i.a, ptr @.str.2, ptr %spec.select.i.i ; 2 uses
  %i.kd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select.i.i) #7
  %i.ke = call i32 @Curl_bufref_memdup0(ptr noundef nonnull %i.jw, ptr noundef nonnull %spec.store.select.i.i, i64 noundef %i.kd) #6
  %.not80.i.i.a = icmp eq i32 %i.ke, 0
  br i1 %.not80.i.i.a, label %bb.ed, label %.loopexit.i

bb.ed:                                            ; preds = %bb.ec, %bb.eb, %bb.ea
  br i1 %.not64.i.i, label %bb.eg, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.kf = getelementptr inbounds nuw i8, ptr %.053113.i.i, i64 136
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !25 ; 2 uses
  %.not81.i.i.a = icmp eq i64 %i.kg, 0
  br i1 %.not81.i.i.a, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.kh = call ptr @memchr(ptr noundef nonnull %i.jh, i32 noundef 0, i64 noundef %i.kg) #7
  %.not82.i.i.a = icmp eq ptr %i.kh, null
  br i1 %.not82.i.i.a, label %bb.eg, label %.loopexit.i

bb.eg:                                            ; preds = %bb.ef, %bb.ee, %bb.ed
  %i.ki = load i8, ptr %.phi.trans.insert.i.i, align 8, !tbaa !18
  %i.kj = and i8 %i.ki, 4
  %.not83.i.i = icmp eq i8 %i.kj, 0
  br i1 %.not83.i.i, label %bb.eh, label %FormInfoCopyField.exit.thread.i.i

bb.eh:                                            ; preds = %bb.eg
  %i.kk = getelementptr inbounds nuw i8, ptr %.053113.i.i, i64 136
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !25 ; 2 uses
  %i.km = call ptr @Curl_bufref_ptr(ptr noundef nonnull %.053113.i.i) #6 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.km, null
  br i1 %.not.i.i.i, label %FormInfoCopyField.exit.thread.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %.not10.i.i.i = icmp eq i64 %i.kl, 0
  br i1 %.not10.i.i.i, label %bb.ej, label %FormInfoCopyField.exit.i.i

bb.ej:                                            ; preds = %bb.ei
  %i.kn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.km) #7
  br label %FormInfoCopyField.exit.i.i

FormInfoCopyField.exit.i.i:                       ; preds = %bb.ej, %bb.ei
  %.07.i.i.i = phi i64 [ %i.kl, %bb.ei ], [ %i.kn, %bb.ej ]
  %i.ko = call i32 @Curl_bufref_memdup0(ptr noundef nonnull %.053113.i.i, ptr noundef nonnull %i.km, i64 noundef %.07.i.i.i) #6
  %.not84.i.i.a = icmp eq i32 %i.ko, 0
  br i1 %.not84.i.i.a, label %FormInfoCopyField.exit.thread.i.i, label %.loopexit.i

FormInfoCopyField.exit.thread.i.i:                ; preds = %FormInfoCopyField.exit.i.i, %bb.eh, %bb.eg
  %i.kp = load i8, ptr %.phi.trans.insert.i.i, align 8, !tbaa !18
  %i.kq = and i8 %i.kp, 107
  %.not85.i.i = icmp eq i8 %i.kq, 0
  br i1 %.not85.i.i, label %bb.ek, label %FormInfoCopyField.exit97.thread.i.i

bb.ek:                                            ; preds = %FormInfoCopyField.exit.thread.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %.053113.i.i, i64 24 ; 2 uses
  %i.ks = load i64, ptr %i.jm, align 8, !tbaa !27 ; 2 uses
  %i.kt = call ptr @Curl_bufref_ptr(ptr noundef nonnull %i.kr) #6 ; 3 uses
  %.not.i93.i.i = icmp eq ptr %i.kt, null
  br i1 %.not.i93.i.i, label %FormInfoCopyField.exit97.thread.i.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %.not10.i94.i.i = icmp eq i64 %i.ks, 0
  br i1 %.not10.i94.i.i, label %bb.em, label %FormInfoCopyField.exit97.i.i

bb.em:                                            ; preds = %bb.el
  %i.ku = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kt) #7
  br label %FormInfoCopyField.exit97.i.i

FormInfoCopyField.exit97.i.i:                     ; preds = %bb.em, %bb.el
  %.07.i95.i.i = phi i64 [ %i.ks, %bb.el ], [ %i.ku, %bb.em ]
  %i.kv = call i32 @Curl_bufref_memdup0(ptr noundef nonnull %i.kr, ptr noundef nonnull %i.kt, i64 noundef %.07.i95.i.i) #6
  %.not86.i.i = icmp eq i32 %i.kv, 0
  br i1 %.not86.i.i, label %FormInfoCopyField.exit97.thread.i.i, label %.loopexit.i

FormInfoCopyField.exit97.thread.i.i:              ; preds = %FormInfoCopyField.exit97.i.i, %bb.ek, %FormInfoCopyField.exit.thread.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %.053113.i.i, i64 136
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !25 ; 2 uses
  %.not.i98.i.i = icmp eq i64 %i.kx, 0
  br i1 %.not.i98.i.i, label %bb.en, label %bb.ep

bb.en:                                            ; preds = %FormInfoCopyField.exit97.thread.i.i
  %i.ky = call ptr @Curl_bufref_ptr(ptr noundef nonnull %.053113.i.i) #6
  %.not48.i.i.i = icmp eq ptr %i.ky, null
  br i1 %.not48.i.i.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.kz = call ptr @Curl_bufref_ptr(ptr noundef nonnull %.053113.i.i) #6
  %i.la = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kz) #7
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en, %FormInfoCopyField.exit97.thread.i.i
  %.0.i99.i.i = phi i64 [ %i.kx, %FormInfoCopyField.exit97.thread.i.i ], [ %i.la, %bb.eo ], [ 0, %bb.en ] ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.053113.i.i, i64 144 ; 2 uses
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !30
  %i.ld = icmp slt i64 %i.lc, 0
  %i.le = icmp slt i64 %.0.i99.i.i, 0
  %or.cond.i.i.i = select i1 %i.ld, i1 true, i1 %i.le
  br i1 %or.cond.i.i.i, label %.loopexit.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.lf = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !8
  %i.lg = call ptr %i.lf(i64 noundef 1, i64 noundef 112) #6, !inline_history !36 ; 19 uses
  %.not49.i.i.i = icmp eq ptr %i.lg, null
  br i1 %.not49.i.i.i, label %.loopexit.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.lh = call ptr @Curl_bufref_ptr(ptr noundef nonnull %.053113.i.i) #6
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store ptr %i.lh, ptr %i.li, align 8, !tbaa !37
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  store i64 %.0.i99.i.i, ptr %i.lj, align 8, !tbaa !40
  %i.lk = getelementptr inbounds nuw i8, ptr %.053113.i.i, i64 24
  %i.ll = call ptr @Curl_bufref_ptr(ptr noundef nonnull %i.lk) #6
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  store ptr %i.ll, ptr %i.lm, align 8, !tbaa !41
  %i.ln = load i64, ptr %i.jm, align 8, !tbaa !27
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 104
  store i64 %i.ln, ptr %i.lo, align 8, !tbaa !42
  %i.lp = load ptr, ptr %i.jr, align 8, !tbaa !29
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lg, i64 40
  store ptr %i.lp, ptr %i.lq, align 8, !tbaa !43
  %i.lr = load i64, ptr %i.lb, align 8, !tbaa !30
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lg, i64 48
  store i64 %i.lr, ptr %i.ls, align 8, !tbaa !44
  %i.lt = getelementptr inbounds nuw i8, ptr %.053113.i.i, i64 48 ; 3 uses
  %i.lu = call ptr @Curl_bufref_ptr(ptr noundef nonnull %i.lt) #6
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lg, i64 56
  store ptr %i.lu, ptr %i.lv, align 8, !tbaa !45
  %i.lw = load i8, ptr %.phi.trans.insert.i.i, align 8, !tbaa !18
  %i.lx = or i8 %i.lw, -128
  %i.ly = zext i8 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lg, i64 80
  store i64 %i.ly, ptr %i.lz, align 8, !tbaa !46
  %i.ma = getelementptr inbounds nuw i8, ptr %.053113.i.i, i64 120
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !33
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lg, i64 64
  store ptr %i.mb, ptr %i.mc, align 8, !tbaa !47
  %i.md = getelementptr inbounds nuw i8, ptr %.053113.i.i, i64 72
  %i.me = call ptr @Curl_bufref_ptr(ptr noundef nonnull %i.md) #6
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lg, i64 88
  store ptr %i.me, ptr %i.mf, align 8, !tbaa !48
  %i.mg = getelementptr inbounds nuw i8, ptr %.053113.i.i, i64 104
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !31
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lg, i64 96
  store ptr %i.mh, ptr %i.mi, align 8, !tbaa !49
  %.not50.i.i.i = icmp eq ptr %.051114.i.i, null
  br i1 %.not50.i.i.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.mj = getelementptr inbounds nuw i8, ptr %.051114.i.i, i64 72 ; 2 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !50
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lg, i64 72
  store ptr %i.mk, ptr %i.ml, align 8, !tbaa !50
  store ptr %i.lg, ptr %i.mj, align 8, !tbaa !50
  br label %AddHttpPost.exit.i.i

bb.et:                                            ; preds = %bb.er
  %.not51.i.i.i = icmp eq ptr %.1258.i, null
  br i1 %.not51.i.i.i, label %AddHttpPost.exit.i.i, label %.else.i

.else.i:                                          ; preds = %bb.et
  store ptr %i.lg, ptr %.1258.i, align 8, !tbaa !51
  br label %AddHttpPost.exit.i.i

AddHttpPost.exit.i.i:                             ; preds = %.else.i, %bb.et, %bb.es
  %.2263.i = phi ptr [ %.1262.i, %bb.es ], [ %.1262.i, %.else.i ], [ %i.lg, %bb.et ] ; 2 uses
  %.2259.i = phi ptr [ %.1258.i, %bb.es ], [ %i.lg, %.else.i ], [ %i.lg, %bb.et ] ; 2 uses
  %i.mm = call ptr @Curl_bufref_ptr(ptr noundef nonnull %i.lt) #6
  %.not88.i.i = icmp eq ptr %i.mm, null
  br i1 %.not88.i.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %AddHttpPost.exit.i.i
  %i.mn = call ptr @Curl_bufref_ptr(ptr noundef nonnull %i.lt) #6
  %4 = ptrtoint ptr %i.mn to i64
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %AddHttpPost.exit.i.i
  %.sroa.0.2.i.i = phi i64 [ %.sroa.0.0108.i.i, %AddHttpPost.exit.i.i ], [ %4, %bb.eu ]
  %i.mo = getelementptr inbounds nuw i8, ptr %.053113.i.i, i64 112
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !28 ; 2 uses
  %.not.i251.i.a = icmp eq ptr %i.mp, null
  br i1 %.not.i251.i.a, label %FormAddCheck.exit.i, label %.preheader.i, !llvm.loop !52

.loopexit.i.sink.split:                           ; preds = %bb.dd, %bb.de, %bb.br, %bb.bs
  %.lcssa.sink = phi ptr [ %i.en, %bb.br ], [ %i.en, %bb.bs ], [ %i.hr, %bb.de ], [ %i.hr, %bb.dd ]
  %i.mq = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  call void %i.mq(ptr noundef %.lcssa.sink) #6
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.l, %bb.dg, %bb.dn, %bb.db, %bb.dc, %bb.ct, %bb.cn, %bb.cf, %bb.cd, %bb.bx, %bb.bu, %bb.bv, %bb.bp, %bb.bq, %bb.bg, %bb.bh, %bb.ba, %bb.ak, %bb.ae, %bb.v, %bb.t, %bb.n, %bb.h, %bb.g, %bb.du, %.outer.i, %bb.eq, %bb.ep, %FormInfoCopyField.exit97.i.i, %FormInfoCopyField.exit.i.i, %bb.ef, %bb.ec, %bb.dz, %._crit_edge.i.i, %bb.dy, %bb.dx, %bb.dw, %.loopexit.i.sink.split
  %.0261.ph.i = phi ptr [ null, %.loopexit.i.sink.split ], [ %.1262.i, %bb.eq ], [ %.1262.i, %bb.dw ], [ %.1262.i, %bb.dx ], [ %.1262.i, %bb.dy ], [ %.1262.i, %._crit_edge.i.i ], [ %.1262.i, %bb.dz ], [ %.1262.i, %bb.ec ], [ %.1262.i, %bb.ef ], [ %.1262.i, %FormInfoCopyField.exit.i.i ], [ %.1262.i, %FormInfoCopyField.exit97.i.i ], [ %.1262.i, %bb.ep ], [ null, %.outer.i ], [ null, %bb.du ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.n ], [ null, %bb.t ], [ null, %bb.v ], [ null, %bb.ae ], [ null, %bb.ak ], [ null, %bb.ba ], [ null, %bb.bh ], [ null, %bb.bg ], [ null, %bb.bq ], [ null, %bb.bp ], [ null, %bb.bv ], [ null, %bb.bu ], [ null, %bb.bx ], [ null, %bb.cd ], [ null, %bb.cf ], [ null, %bb.cn ], [ null, %bb.ct ], [ null, %bb.dc ], [ null, %bb.db ], [ null, %bb.dn ], [ null, %bb.dg ], [ null, %bb.l ]
  %.0257.ph.i = phi ptr [ null, %.loopexit.i.sink.split ], [ %.1258.i, %bb.eq ], [ %.1258.i, %bb.dw ], [ %.1258.i, %bb.dx ], [ %.1258.i, %bb.dy ], [ %.1258.i, %._crit_edge.i.i ], [ %.1258.i, %bb.dz ], [ %.1258.i, %bb.ec ], [ %.1258.i, %bb.ef ], [ %.1258.i, %FormInfoCopyField.exit.i.i ], [ %.1258.i, %FormInfoCopyField.exit97.i.i ], [ %.1258.i, %bb.ep ], [ null, %.outer.i ], [ null, %bb.du ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.n ], [ null, %bb.t ], [ null, %bb.v ], [ null, %bb.ae ], [ null, %bb.ak ], [ null, %bb.ba ], [ null, %bb.bh ], [ null, %bb.bg ], [ null, %bb.bq ], [ null, %bb.bp ], [ null, %bb.bv ], [ null, %bb.bu ], [ null, %bb.bx ], [ null, %bb.cd ], [ null, %bb.cf ], [ null, %bb.cn ], [ null, %bb.ct ], [ null, %bb.dc ], [ null, %bb.db ], [ null, %bb.dn ], [ null, %bb.dg ], [ null, %bb.l ]
  %.3.ph.i = phi i32 [ 1, %.loopexit.i.sink.split ], [ 1, %bb.eq ], [ 1, %bb.ep ], [ 1, %FormInfoCopyField.exit97.i.i ], [ 1, %FormInfoCopyField.exit.i.i ], [ 3, %bb.ef ], [ 1, %bb.ec ], [ 5, %bb.dz ], [ 5, %._crit_edge.i.i ], [ 5, %bb.dy ], [ 5, %bb.dx ], [ 5, %bb.dw ], [ 1, %bb.bv ], [ 2, %bb.bp ], [ 3, %bb.bq ], [ 3, %bb.bg ], [ 1, %bb.bh ], [ 2, %bb.ba ], [ 3, %bb.ak ], [ 2, %bb.ae ], [ 2, %bb.v ], [ 3, %bb.t ], [ 2, %bb.n ], [ 6, %bb.h ], [ 4, %bb.g ], [ 2, %bb.du ], [ 1, %.outer.i ], [ 3, %bb.l ], [ 3, %bb.dg ], [ 2, %bb.dn ], [ 2, %bb.db ], [ 3, %bb.dc ], [ 3, %bb.ct ], [ 2, %bb.cn ], [ 2, %bb.cf ], [ 3, %bb.cd ], [ 2, %bb.bx ], [ 3, %bb.bu ]
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ew, %.loopexit.i
  %.06.i.i = phi ptr [ %i.b, %.loopexit.i ], [ %i.mv, %bb.ew ] ; 5 uses
  call void @Curl_bufref_free(ptr noundef nonnull %.06.i.i) #6
  %i.mr = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  call void @Curl_bufref_free(ptr noundef nonnull %i.mr) #6
  %i.ms = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48
  call void @Curl_bufref_free(ptr noundef nonnull %i.ms) #6
  %i.mt = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 72
  call void @Curl_bufref_free(ptr noundef nonnull %i.mt) #6
  %i.mu = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 112
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !28 ; 2 uses
  %.not.i252.i = icmp eq ptr %i.mv, null
  br i1 %.not.i252.i, label %FormAddCheck.exit.i, label %bb.ew, !llvm.loop !53

FormAddCheck.exit.i:                              ; preds = %bb.ev, %bb.ew
  %.not196276.i = phi i1 [ false, %bb.ew ], [ true, %bb.ev ]
  %.3274.i = phi i32 [ %.3.ph.i, %bb.ew ], [ 0, %bb.ev ] ; 2 uses
  %.0257272.i = phi ptr [ %.0257.ph.i, %bb.ew ], [ %.2259.i, %bb.ev ]
  %.0261270.i = phi ptr [ %.0261.ph.i, %bb.ew ], [ %.2263.i, %bb.ev ] ; 2 uses
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ex, %FormAddCheck.exit.i
  %.0152288.i = phi ptr [ %i.b, %FormAddCheck.exit.i ], [ %i.mx, %bb.ex ] ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.0152288.i, i64 112
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !28 ; 2 uses
  %i.my = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  call void %i.my(ptr noundef nonnull %.0152288.i) #6, !inline_history !54
  %.not197.i.a = icmp eq ptr %i.mx, null
  br i1 %.not197.i.a, label %bb.ey, label %bb.ex, !llvm.loop !55

bb.ey:                                            ; preds = %bb.ex
  br i1 %.not196276.i, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.mz = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %.not198.i = icmp eq ptr %i.mz, null
  %..i = select i1 %.not198.i, ptr %0, ptr %i.mz
  store ptr %.0261270.i, ptr %..i, align 8, !tbaa !51
  store ptr %.0257272.i, ptr %1, align 8, !tbaa !51
  br label %FormAdd.exit

bb.fa:                                            ; preds = %bb.ey
  call fastcc void @free_chain(ptr noundef %.0261270.i)
  br label %FormAdd.exit

FormAdd.exit:                                     ; preds = %bb.a, %bb.ez, %bb.fa
  %.0.i = phi i32 [ %.3274.i, %bb.ez ], [ %.3274.i, %bb.fa ], [ 1, %bb.a ]
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @curl_formget(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.curl_mimepart, align 8      ; 8 uses
  %i.a = alloca [8192 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @Curl_mime_initpart(ptr noundef nonnull %3) #6
  %i.b = call i32 @Curl_getformdata(ptr noundef null, ptr noundef nonnull %3, ptr noundef %0, ptr noundef null) ; 2 uses
  %.not18 = icmp eq i32 %i.b, 0
  br i1 %.not18, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.c = call i32 @Curl_mime_prepare_headers(ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 1) #6 ; 2 uses
  %.not1926 = icmp eq i32 %i.c, 0
  br i1 %.not1926, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = call i64 @Curl_mime_read(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 8192, ptr noundef nonnull %3) #6 ; 2 uses
  %.not2040 = icmp eq i64 %i.d, 0
  br i1 %.not2040, label %.loopexit.sink.split, label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.e = phi i64 [ %i.h, %.lr.ph ], [ %i.d, %.lr.ph.preheader ] ; 4 uses
  %i.f = icmp ugt i64 %i.e, 8192
  br i1 %i.f, label %.loopexit.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph41
  %i.g = call i64 %2(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef %i.e) #6
  %.not21 = icmp eq i64 %i.g, %i.e
  br i1 %.not21, label %.lr.ph, label %.loopexit.loopexit

.lr.ph:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.h = call i64 @Curl_mime_read(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 8192, ptr noundef nonnull %3) #6 ; 2 uses
  %.not20 = icmp eq i64 %i.h, 0
  br i1 %.not20, label %.loopexit.sink.split, label %.lr.ph41

.loopexit.loopexit:                               ; preds = %.lr.ph41, %bb.d
  %i.i = icmp eq i64 %i.e, 268435456
  %spec.store.select = select i1 %i.i, i32 42, i32 26
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.lr.ph, %.lr.ph.preheader, %.loopexit.loopexit
  %.125.ph = phi i32 [ %spec.store.select, %.loopexit.loopexit ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.b, %bb.c
  %.125 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %.125.ph, %.loopexit.sink.split ]
  call void @Curl_mime_cleanpart(ptr noundef nonnull %3) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.loopexit
  %.014 = phi i32 [ %.125, %.loopexit ], [ 43, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret i32 %.014
}

declare void @Curl_mime_initpart(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @Curl_getformdata(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @Curl_mime_cleanpart(ptr noundef %1) #6
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @curl_mime_init(ptr noundef %0) #6 ; 5 uses
  %.not92.not = icmp eq ptr %i.a, null
  br i1 %.not92.not, label %._crit_edge168.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @curl_mime_subparts(ptr noundef %1, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not94163 = icmp eq i32 %i.b, 0
  br i1 %.not94163, label %.lr.ph167, label %._crit_edge168.thread

.lr.ph167:                                        ; preds = %bb.c, %._crit_edge
  %.086164 = phi ptr [ %i.bw, %._crit_edge ], [ %2, %bb.c ] ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.086164, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %.not95 = icmp eq ptr %i.d, null
  br i1 %.not95, label %.lr.ph, label %bb.d

bb.d:                                             ; preds = %.lr.ph167
  %i.e = tail call ptr @curl_mime_addpart(ptr noundef nonnull %i.a) #6 ; 4 uses
  %.not96.not = icmp eq ptr %i.e, null
  br i1 %.not96.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.086164, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.086164, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !40   ; 2 uses
  %i.j = icmp ne ptr %i.g, null
  %i.k = icmp ne i64 %i.i, 0
  %or.cond.i = and i1 %i.j, %i.k
  br i1 %or.cond.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @curl_mime_name(ptr noundef nonnull %i.e, ptr noundef %i.g) #6
  br label %setname.exit

bb.g:                                             ; preds = %bb.e
  %i.m = tail call ptr @curlx_memdup0(ptr noundef nonnull %i.g, i64 noundef %i.i) #6 ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %._crit_edge168.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @curl_mime_name(ptr noundef nonnull %i.e, ptr noundef nonnull %i.m) #6
  %i.o = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  tail call void %i.o(ptr noundef nonnull %i.m) #6, !inline_history !56
  br label %setname.exit
end_hunk_0
