Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/tool_cb_hdr?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0_@tool_header_cb:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 5
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.n
  %.032.i = phi ptr [ %i.at, %bb.n ], [ %i.aq, %.preheader.i.preheader ] ; 6 uses
  %i.ar = load i8, ptr %.032.i, align 1, !tbaa !20
  switch i8 %i.ar, label %.critedge.i.preheader [
    i8 32, label %bb.m
    i8 9, label %bb.m
  ]

.critedge.i.preheader:                            ; preds = %bb.m, %.preheader.i
  br label %.critedge.i

bb.m:                                             ; preds = %.preheader.i, %.preheader.i
  %i.as = icmp ult ptr %.032.i, %i.an
  br i1 %i.as, label %bb.n, label %.critedge.i.preheader

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.032.i, i64 1
  br label %.preheader.i, !llvm.loop !22

.critedge.i:                                      ; preds = %.critedge.i.preheader, %.critedge2.i
  %i.au = phi i8 [ %.pre.i, %.critedge2.i ], [ 10, %.critedge.i.preheader ] ; 2 uses
  %.030.i = phi ptr [ %i.aw, %.critedge2.i ], [ %i.an, %.critedge.i.preheader ] ; 3 uses
  switch i8 %i.au, label %bb.o [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
  ]

bb.o:                                             ; preds = %.critedge.i
  %i.av = add i8 %i.au, -10
  %or.cond.i = icmp ult i8 %i.av, 4
  br i1 %or.cond.i, label %.critedge2.i, label %.critedge4.i

.critedge2.i:                                     ; preds = %bb.o, %.critedge.i, %.critedge.i
  %i.aw = getelementptr inbounds i8, ptr %.030.i, i64 -1 ; 2 uses
  %.pre.i = load i8, ptr %i.aw, align 1, !tbaa !20
  br label %.critedge.i, !llvm.loop !23

.critedge4.i:                                     ; preds = %bb.o
  %.not.i = icmp ult ptr %.030.i, %.032.i
  br i1 %.not.i, label %.thread157, label %bb.p

bb.p:                                             ; preds = %.critedge4.i
  %i.ax = ptrtoint ptr %.030.i to i64
  %i.ay = ptrtoint ptr %.032.i to i64
  %reass.sub = sub i64 %i.ax, %i.ay
  %i.az = add i64 %reass.sub, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.ba = load ptr, ptr %i.ak, align 8, !tbaa !42
  %i.bb = call i32 @fileno(ptr noundef %i.ba) #10 ; 3 uses
  %.not36.i = icmp eq i32 %i.bb, -1
  br i1 %.not36.i, label %save_etag.exit.thread144, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = call i32 @fstat(i32 noundef %i.bb, ptr noundef nonnull %4) #10
  %.not37.i = icmp eq i32 %i.bc, 0
  br i1 %.not37.i, label %bb.r, label %save_etag.exit.thread144

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !48
  %i.bf = and i32 %i.be, 61440
  %i.bg = icmp eq i32 %i.bf, 32768
  br i1 %i.bg, label %bb.s, label %save_etag.exit.thread144

bb.s:                                             ; preds = %bb.r
  %i.bh = call i32 @ftruncate(i32 noundef %i.bb, i64 noundef 0) #10
  %.not38.i = icmp eq i32 %i.bh, 0
  br i1 %.not38.i, label %save_etag.exit.thread144, label %save_etag.exit

save_etag.exit.thread144:                         ; preds = %bb.p, %bb.q, %bb.r, %bb.s
  %i.bi = load ptr, ptr %i.ak, align 8, !tbaa !42
  %i.bj = call i64 @fwrite(ptr noundef nonnull %.032.i, i64 noundef 1, i64 noundef %i.az, ptr noundef %i.bi) ; 0 uses
  %i.bk = load ptr, ptr %i.ak, align 8, !tbaa !42
  %i.bl = call i32 @fputc(i32 noundef 10, ptr noundef %i.bk) ; 0 uses
  %i.bm = load ptr, ptr %i.ak, align 8, !tbaa !42
  %i.bn = call i32 @fflush(ptr noundef %i.bm)     ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %.thread157

save_etag.exit:                                   ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %content_disposition.exit.thread

bb.t:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 616 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !49, !range !50, !noundef !51
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.u, label %.thread157

bb.u:                                             ; preds = %bb.t
  %i.br = ptrtoaddr ptr %i.h to i64               ; 2 uses
  %i.bs = icmp ugt i64 %i.g, 9
  br i1 %i.bs, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %bb.u
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !44
  %i.bu = call i32 @curl_strnequal(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef 9) #10
  %.not.i134 = icmp ne i32 %i.bu, 0
  %.off.i = add i64 %i.bt, -300
  %i.bv = icmp ult i64 %.off.i, 100
  %or.cond.i135 = and i1 %i.bv, %.not.i134
  br i1 %or.cond.i135, label %bb.w, label %bb.ah

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 9
  store ptr %i.bw, ptr %i.a, align 8, !tbaa !19
  call void @curlx_str_passblanks(ptr noundef nonnull %i.a) #10
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !19  ; 3 uses
  %i.by = icmp ult ptr %i.bx, %i.h
  br i1 %i.by, label %bb.x, label %.critedge150.i

bb.x:                                             ; preds = %bb.w
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %0 to i64
  %.neg137.i = add i64 %i.g, %i.ca
  %i.cb = sub i64 %.neg137.i, %i.bz
  %i.cc = call fastcc ptr @parse_filename(ptr noundef %i.bx, i64 noundef %i.cb, i8 noundef signext 0) ; 5 uses
  %.not138.i = icmp eq ptr %i.cc, null
  br i1 %.not138.i, label %.critedge150.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 464
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !42
  %.not139.i = icmp eq ptr %i.ce, null
  br i1 %.not139.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %i.cc) #10
  br label %.critedge148.i

bb.aa:                                            ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 488 ; 3 uses
  %i.cg = load i8, ptr %i.cf, align 8
  %i.ch = and i8 %i.cg, 1
  %.not140.i = icmp eq i8 %i.ch, 0
  br i1 %.not140.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = load ptr, ptr %i.f, align 8, !tbaa !52
  call void @free(ptr noundef %i.ci) #10
  store ptr null, ptr %i.f, align 8, !tbaa !52
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cj = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 144
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !53 ; 2 uses
  %.not141.i = icmp eq ptr %i.cl, null
  br i1 %.not141.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cm = call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.cl, ptr noundef nonnull %i.cc) #10 ; 3 uses
  call void @free(ptr noundef nonnull %i.cc) #10
  %.not142.i = icmp eq ptr %i.cm, null
  br i1 %.not142.i, label %.critedge148.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cn = call noalias ptr @strdup(ptr noundef nonnull %i.cm) #10
  store ptr %i.cn, ptr %i.f, align 8, !tbaa !52
  call void @curl_free(ptr noundef nonnull %i.cm) #10
  %i.co = load ptr, ptr %i.f, align 8, !tbaa !52
  %.not143.not.i = icmp eq ptr %i.co, null
  br i1 %.not143.not.i, label %.critedge148.i, label %bb.ag

bb.af:                                            ; preds = %bb.ac
  store ptr %i.cc, ptr %i.f, align 8, !tbaa !52
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cp = load i8, ptr %i.cf, align 8
  %i.cq = or i8 %i.cp, 3
  store i8 %i.cq, ptr %i.cf, align 8
  br label %.critedge150.i

.critedge148.i:                                   ; preds = %bb.ae, %bb.ad, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %content_disposition.exit.thread

bb.ah:                                            ; preds = %bb.v
  %i.cr = icmp ugt i64 %i.g, 20
  br i1 %i.cr, label %bb.ai, label %.thread.i

bb.ai:                                            ; preds = %bb.ah
  %i.cs = call i32 @curl_strnequal(ptr noundef %0, ptr noundef nonnull @.str.6, i64 noundef 20) #10
  %.not122.i = icmp eq i32 %i.cs, 0
  br i1 %.not122.i, label %.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store ptr %i.ct, ptr %i.b, align 8, !tbaa !19
  %i.cu = getelementptr inbounds i8, ptr %i.h, i64 -9
  br label %.critedge155.i

.critedge155.i:                                   ; preds = %.lr.ph191.i, %bb.aj
  %.promoted190197.i = phi ptr [ %i.ct, %bb.aj ], [ %.promoted190194.i, %.lr.ph191.i ] ; 5 uses
  %i.cv = icmp ult ptr %.promoted190197.i, %i.h
  br i1 %i.cv, label %.lr.ph.preheader.i, label %.critedge.i136

.lr.ph.preheader.i:                               ; preds = %.critedge155.i
  %.promoted190197207.i = ptrtoaddr ptr %.promoted190197.i to i64
  %scevgep.i = getelementptr i8, ptr %.promoted190197.i, i64 %i.br
  %i.cw = sub i64 0, %.promoted190197207.i
  %scevgep208.i = getelementptr i8, ptr %scevgep.i, i64 %i.cw ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ak, %.lr.ph.preheader.i
  %.promoted190196.i = phi ptr [ %i.db, %bb.ak ], [ %.promoted190197.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.cx = load i8, ptr %.promoted190196.i, align 1, !tbaa !20 ; 2 uses
  %.not123.i = icmp ne i8 %i.cx, 0
  %i.cy = and i8 %i.cx, -33
  %i.cz = add i8 %i.cy, -91
  %i.da = icmp ult i8 %i.cz, -26
  %or.cond181.i = and i1 %.not123.i, %i.da
  br i1 %or.cond181.i, label %bb.ak, label %.critedge.i136

bb.ak:                                            ; preds = %.lr.ph.i
  %i.db = getelementptr inbounds nuw i8, ptr %.promoted190196.i, i64 1 ; 3 uses
  store ptr %i.db, ptr %i.b, align 8, !tbaa !19
  %exitcond.not.i = icmp eq ptr %i.db, %scevgep208.i
  br i1 %exitcond.not.i, label %.critedge.i136, label %.lr.ph.i, !llvm.loop !24

.critedge.i136:                                   ; preds = %bb.ak, %.lr.ph.i, %.critedge155.i
  %.promoted190195.i = phi ptr [ %.promoted190197.i, %.critedge155.i ], [ %scevgep208.i, %bb.ak ], [ %.promoted190196.i, %.lr.ph.i ] ; 8 uses
  %.promoted190195210.pre-phi.i = ptrtoaddr ptr %.promoted190195.i to i64
  %i.dc = icmp ugt ptr %.promoted190195.i, %i.cu
  br i1 %i.dc, label %.critedge7.i, label %bb.al

bb.al:                                            ; preds = %.critedge.i136
  %i.dd = load i64, ptr %.promoted190195.i, align 1
  %i.de = xor i64 %i.dd, 7308604897068083558
  %i.df = getelementptr i8, ptr %.promoted190195.i, i64 8
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = zext i8 %i.dg to i64
  %i.di = xor i64 %i.dh, 61
  %i.dj = or i64 %i.de, %i.di
  %i.dk = icmp ne i64 %i.dj, 0
  %i.dl = zext i1 %i.dk to i32
  %.not124.i = icmp eq i32 %i.dl, 0
  br i1 %.not124.i, label %bb.an, label %.preheader.i137

.preheader.i137:                                  ; preds = %bb.al
  %i.dm = icmp ult ptr %.promoted190195.i, %i.h
  br i1 %i.dm, label %.lr.ph191.preheader.i, label %.critedge7.i

.lr.ph191.preheader.i:                            ; preds = %.preheader.i137
  %scevgep209.i = getelementptr i8, ptr %.promoted190195.i, i64 %i.br
  %i.dn = sub i64 0, %.promoted190195210.pre-phi.i
  %scevgep211.i = getelementptr i8, ptr %scevgep209.i, i64 %i.dn
  br label %.lr.ph191.i

.lr.ph191.i:                                      ; preds = %bb.am, %.lr.ph191.preheader.i
  %.promoted190194.i = phi ptr [ %i.dp, %bb.am ], [ %.promoted190195.i, %.lr.ph191.preheader.i ] ; 3 uses
  %i.do = load i8, ptr %.promoted190194.i, align 1, !tbaa !20
  switch i8 %i.do, label %bb.am [
    i8 0, label %.critedge7.i
    i8 59, label %.critedge155.i
  ]

bb.am:                                            ; preds = %.lr.ph191.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.promoted190194.i, i64 1 ; 3 uses
  store ptr %i.dp, ptr %i.b, align 8, !tbaa !19
  %exitcond212.not.i = icmp eq ptr %i.dp, %scevgep211.i
  br i1 %exitcond212.not.i, label %.critedge7.i, label %.lr.ph191.i, !llvm.loop !25

bb.an:                                            ; preds = %bb.al
  %i.dq = getelementptr inbounds nuw i8, ptr %.promoted190195.i, i64 9
  store ptr %i.dq, ptr %i.b, align 8, !tbaa !19
  call void @curlx_str_passblanks(ptr noundef nonnull %i.b) #10
  %i.dr = load ptr, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %0 to i64
  %.neg.i = add i64 %i.g, %i.dt
  %i.du = sub i64 %.neg.i, %i.ds
  %i.dv = call fastcc ptr @parse_filename(ptr noundef %i.dr, i64 noundef %i.du, i8 noundef signext 59) ; 5 uses
  %.not125.i = icmp eq ptr %i.dv, null
  br i1 %.not125.i, label %.critedge7.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 464 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !42
  %.not126.i = icmp eq ptr %i.dx, null
  br i1 %.not126.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @free(ptr noundef nonnull %i.dv) #10
  br label %.critedge158.i

bb.aq:                                            ; preds = %bb.ao
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 488 ; 3 uses
  %i.dz = load i8, ptr %i.dy, align 8
  %i.ea = and i8 %i.dz, 1
  %.not127.i = icmp eq i8 %i.ea, 0
  br i1 %.not127.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eb = load ptr, ptr %i.f, align 8, !tbaa !52
  call void @free(ptr noundef %i.eb) #10
  store ptr null, ptr %i.f, align 8, !tbaa !52
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ec = load ptr, ptr %i.i, align 8, !tbaa !34  ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 144
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !53 ; 2 uses
  %.not128.i = icmp eq ptr %i.ee, null
  br i1 %.not128.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ef = call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.ee, ptr noundef nonnull %i.dv) #10 ; 3 uses
  call void @free(ptr noundef nonnull %i.dv) #10
  %.not129.i = icmp eq ptr %i.ef, null
  br i1 %.not129.i, label %.critedge158.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eg = call noalias ptr @strdup(ptr noundef nonnull %i.ef) #10
  store ptr %i.eg, ptr %i.f, align 8, !tbaa !52
  call void @curl_free(ptr noundef nonnull %i.ef) #10
  %i.eh = load ptr, ptr %i.f, align 8, !tbaa !52
  %.not130.not.i = icmp eq ptr %i.eh, null
  br i1 %.not130.not.i, label %.critedge158.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.au
  %.pre.i138 = load ptr, ptr %i.i, align 8, !tbaa !34
  br label %bb.aw

bb.av:                                            ; preds = %bb.as
  store ptr %i.dv, ptr %i.f, align 8, !tbaa !52
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge.i
  %i.ei = phi ptr [ %.pre.i138, %._crit_edge.i ], [ %i.ec, %bb.av ]
  %i.ej = load i8, ptr %i.dy, align 8
  %i.ek = and i8 %i.ej, -16
  %i.el = or disjoint i8 %i.ek, 7
  store i8 %i.el, ptr %i.dy, align 8
  store i8 0, ptr %i.bo, align 8, !tbaa !49
  %i.em = call zeroext i1 @tool_create_output_file(ptr noundef nonnull %i.f, ptr noundef %i.ei) #10
  br i1 %i.em, label %bb.ax, label %.critedge158.i

bb.ax:                                            ; preds = %bb.aw
  %i.en = load ptr, ptr %i.dw, align 8, !tbaa !42
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 608 ; 5 uses
  %.01318.i.i = load ptr, ptr %i.eo, align 8, !tbaa !10 ; 2 uses
  %.not19.i.i = icmp eq ptr %.01318.i.i, null
  br i1 %.not19.i.i, label %.critedge7.sink.split.i, label %.lr.ph.i.i

bb.ay:                                            ; preds = %.lr.ph.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.01320.i.i, i64 8
  %.013.i.i = load ptr, ptr %i.ep, align 8, !tbaa !10 ; 2 uses
  %.not.i.i = icmp eq ptr %.013.i.i, null
  br i1 %.not.i.i, label %tool_write_headers.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ax, %bb.ay
  %.01320.i.i = phi ptr [ %.013.i.i, %bb.ay ], [ %.01318.i.i, %bb.ax ] ; 2 uses
  %i.eq = load ptr, ptr %.01320.i.i, align 8, !tbaa !13 ; 2 uses
  %i.er = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eq) #9 ; 2 uses
  %i.es = call i64 @fwrite(ptr noundef nonnull %i.eq, i64 noundef 1, i64 noundef %i.er, ptr noundef %i.en)
  %.not15.i.i = icmp eq i64 %i.er, %i.es
  br i1 %.not15.i.i, label %bb.ay, label %.critedge158.critedge.i

tool_write_headers.exit.i:                        ; preds = %bb.ay
  %.pre.i.i = load ptr, ptr %i.eo, align 8, !tbaa !18
  br label %.critedge7.sink.split.i

.critedge7.sink.split.i:                          ; preds = %tool_write_headers.exit.i, %bb.ax
  %.pre.i.sink.i = phi ptr [ %.pre.i.i, %tool_write_headers.exit.i ], [ null, %bb.ax ]
  call void @curl_slist_free_all(ptr noundef %.pre.i.sink.i) #10
  store ptr null, ptr %i.eo, align 8, !tbaa !18
  br label %.critedge7.i

.critedge7.i:                                     ; preds = %.preheader.i137, %.critedge.i136, %bb.am, %.lr.ph191.i, %.critedge7.sink.split.i, %bb.an
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 464 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !42 ; 2 uses
  %.not135.i = icmp eq ptr %i.eu, null
  br i1 %.not135.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.critedge7.i
  %i.ev = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.ew = call zeroext i1 @tool_create_output_file(ptr noundef nonnull %i.f, ptr noundef %i.ev) #10
  br i1 %i.ew, label %._crit_edge213.i, label %.critedge158.i

._crit_edge213.i:                                 ; preds = %bb.az
  %.pre214.i = load ptr, ptr %i.et, align 8, !tbaa !42
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge213.i, %.critedge7.i
  %i.ex = phi ptr [ %.pre214.i, %._crit_edge213.i ], [ %i.eu, %.critedge7.i ]
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 608 ; 6 uses
  %.01318.i160.i = load ptr, ptr %i.ey, align 8, !tbaa !10 ; 2 uses
  %.not19.i161.i = icmp eq ptr %.01318.i160.i, null
  br i1 %.not19.i161.i, label %tool_write_headers.exit171.thread.i, label %.lr.ph.i162.i

tool_write_headers.exit171.thread.i:              ; preds = %bb.ba
  call void @curl_slist_free_all(ptr noundef null) #10
  store ptr null, ptr %i.ey, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %.thread.i

bb.bb:                                            ; preds = %.lr.ph.i162.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.01320.i163.i, i64 8
  %.013.i169.i = load ptr, ptr %i.ez, align 8, !tbaa !10 ; 2 uses
  %.not.i170.i = icmp eq ptr %.013.i169.i, null
  br i1 %.not.i170.i, label %tool_write_headers.exit171.i, label %.lr.ph.i162.i

.lr.ph.i162.i:                                    ; preds = %bb.ba, %bb.bb
  %.01320.i163.i = phi ptr [ %.013.i169.i, %bb.bb ], [ %.01318.i160.i, %bb.ba ] ; 2 uses
  %i.fa = load ptr, ptr %.01320.i163.i, align 8, !tbaa !13 ; 2 uses
  %i.fb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fa) #9 ; 2 uses
  %i.fc = call i64 @fwrite(ptr noundef nonnull %i.fa, i64 noundef 1, i64 noundef %i.fb, ptr noundef %i.ex)
  %.not15.i164.i = icmp eq i64 %i.fb, %i.fc
  br i1 %.not15.i164.i, label %bb.bb, label %.critedge182.i

tool_write_headers.exit171.i:                     ; preds = %bb.bb
  %.pre.i167.i = load ptr, ptr %i.ey, align 8, !tbaa !18
  call void @curl_slist_free_all(ptr noundef %.pre.i167.i) #10
  store ptr null, ptr %i.ey, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %.thread.i

.critedge150.i:                                   ; preds = %bb.ag, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.thread.i

.thread.i:                                        ; preds = %.critedge150.i, %tool_write_headers.exit171.i, %tool_write_headers.exit171.thread.i, %bb.ai, %bb.ah, %bb.u
end_hunk_0
