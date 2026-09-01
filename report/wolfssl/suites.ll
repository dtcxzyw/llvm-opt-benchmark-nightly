Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/suites?download=true
inline.NumInlined: 10
inline.NumDeleted: 6
loop-unroll.NumUnrolled: 3
begin_hunk_0_@execute_test_case:bb.a
  %.014.lcssa.i = phi i64 [ %.01420.i, %bb.p ], [ %.01420.i, %bb.p ], [ %i.ba, %bb.t ], [ %i.at, %bb.q ], [ %i.at, %bb.q ], [ %i.ba, %bb.t ], [ %i.ax, %bb.r ], [ %i.ax, %bb.r ], [ 79, %bb.s ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.014.lcssa.i
  store i8 0, ptr %i.bg, align 1, !tbaa !25
  %i.bh = call ptr @wolfSSLv23_server_method_ex(ptr noundef null) #17
  %i.bi = call ptr @wolfSSL_CTX_new(ptr noundef %i.bh) #17 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %IsValidCert.exit.thread, label %IsValidCert.exit

IsValidCert.exit.thread:                          ; preds = %.critedge.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %IsValidCipherSuite.exit.thread

IsValidCert.exit:                                 ; preds = %.critedge.i124
  %i.bk = call i32 @wolfSSL_CTX_use_certificate_chain_file(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.bk, 1
  call void @wolfSSL_CTX_free(ptr noundef nonnull %i.bi) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br i1 %.not, label %bb.v, label %IsValidCipherSuite.exit.thread

bb.v:                                             ; preds = %IsValidCert.exit.thread138, %IsValidCert.exit
  %i.bl = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.66) #22 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %IsSslVersion.exit.thread, label %IsSslVersion.exit

IsSslVersion.exit:                                ; preds = %bb.v
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 3 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !25
  %i.bo = and i8 %i.bn, -2
  %switch.i.i = icmp eq i8 %i.bo, 100
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 5
  %spec.select.i.i = select i1 %switch.i.i, ptr %i.bp, ptr %i.bm
  %i.bq = call i64 @strtol(ptr noundef nonnull captures(none) %spec.select.i.i, ptr noundef null, i32 noundef 10) #17, !inline_history !31
  %i.br = and i64 %i.bq, 4294967295
  %.not148 = icmp eq i64 %i.br, 0
  br i1 %.not148, label %IsValidCipherSuite.exit.thread, label %IsSslVersion.exit.thread

IsSslVersion.exit.thread:                         ; preds = %bb.v, %IsSslVersion.exit
  %i.bs = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.66) #22 ; 3 uses
  %.not.i.i125 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i125, label %IsTls10Version.exit.thread, label %IsTls10Version.exit

IsTls10Version.exit:                              ; preds = %IsSslVersion.exit.thread
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 3 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !25
  %i.bv = and i8 %i.bu, -2
  %switch.i.i126 = icmp eq i8 %i.bv, 100
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 5
  %spec.select.i.i127 = select i1 %switch.i.i126, ptr %i.bw, ptr %i.bt
  %i.bx = call i64 @strtol(ptr noundef nonnull captures(none) %spec.select.i.i127, ptr noundef null, i32 noundef 10) #17, !inline_history !31
  %i.by = and i64 %i.bx, 4294967295
  %.not149 = icmp eq i64 %i.by, 1
  br i1 %.not149, label %IsValidCipherSuite.exit.thread, label %IsTls10Version.exit.thread

IsTls10Version.exit.thread:                       ; preds = %IsSslVersion.exit.thread, %IsTls10Version.exit
  %i.bz = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.66) #22 ; 3 uses
  %.not.i.i129 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i129, label %IsValidCipherSuite.exit.thread, label %IsOldTlsVersion.exit

IsOldTlsVersion.exit:                             ; preds = %IsTls10Version.exit.thread
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 3 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !25
  %i.cc = and i8 %i.cb, -2
  %switch.i.i130 = icmp eq i8 %i.cc, 100
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 5
  %spec.select.i.i131 = select i1 %switch.i.i130, ptr %i.cd, ptr %i.ca
  %i.ce = call i64 @strtol(ptr noundef nonnull captures(none) %spec.select.i.i131, ptr noundef null, i32 noundef 10) #17, !inline_history !31
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = icmp sgt i32 %i.cf, 2
  br i1 %i.cg, label %bb.w, label %IsValidCipherSuite.exit.thread

bb.w:                                             ; preds = %IsOldTlsVersion.exit
  %.not91 = icmp eq i32 %4, 0
  br i1 %.not91, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %puts92 = call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  %i.ch = icmp sgt i32 %0, 39
  br i1 %i.ch, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %puts93 = call i32 @puts(ptr nonnull dereferenceable(1) @str.23) ; 0 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ci = add nsw i32 %0, 1                       ; 2 uses
  store i32 %i.ci, ptr %10, align 8, !tbaa !20
  %i.cj = sext i32 %0 to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cj
  store ptr @noVerifyFlag, ptr %i.ck, align 8, !tbaa !9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.w
  %.pr = phi i32 [ %0, %bb.y ], [ %i.ci, %bb.z ], [ %0, %bb.w ] ; 5 uses
  %.not94 = icmp eq i32 %5, 0                     ; 2 uses
  br i1 %.not94, label %thread-pre-split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %puts95 = call i32 @puts(ptr nonnull dereferenceable(1) @str.19) ; 0 uses
  %i.cl = icmp sgt i32 %.pr, 39
  br i1 %i.cl, label %thread-pre-split.thread, label %bb.ac

thread-pre-split.thread:                          ; preds = %bb.ab
  %puts96 = call i32 @puts(ptr nonnull dereferenceable(1) @str.23) ; 0 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cm = add nsw i32 %.pr, 1                     ; 2 uses
  store i32 %i.cm, ptr %10, align 8, !tbaa !20
  %i.cn = sext i32 %.pr to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cn
  store ptr @nonblockFlag, ptr %i.co, align 8, !tbaa !9
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.aa, %bb.ac
  %i.cp = phi i32 [ %i.cm, %bb.ac ], [ %.pr, %bb.aa ] ; 5 uses
  %i.cq = icmp sgt i32 %i.cp, 38
  br i1 %i.cq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %thread-pre-split.thread, %thread-pre-split
  %i.cr = phi i32 [ %.pr, %thread-pre-split.thread ], [ %i.cp, %thread-pre-split ]
  %puts97 = call i32 @puts(ptr nonnull dereferenceable(1) @str.21) ; 0 uses
  br label %bb.af

bb.ae:                                            ; preds = %thread-pre-split
  %i.cs = sext i32 %i.cp to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cs
  store ptr @portFlag, ptr %i.ct, align 8, !tbaa !9
  %i.cu = add nsw i32 %i.cp, 2                    ; 2 uses
  store i32 %i.cu, ptr %10, align 8, !tbaa !20
  %i.cv = sext i32 %i.cp to i64
  %i.cw = getelementptr [8 x i8], ptr %1, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  store ptr @svrPort, ptr %i.cx, align 8, !tbaa !9
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cy = phi i32 [ %i.cu, %bb.ae ], [ %i.cr, %bb.ad ] ; 6 uses
  %.not98 = icmp eq i32 %7, 0
  br i1 %.not98, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cz = icmp sgt i32 %i.cy, 38
  br i1 %i.cz, label %.thread, label %bb.ah

.thread:                                          ; preds = %bb.ag
  %puts99 = call i32 @puts(ptr nonnull dereferenceable(1) @str.22) ; 0 uses
  store i8 0, ptr %i.c, align 16, !tbaa !25
  br label %.lr.ph159.preheader

bb.ah:                                            ; preds = %bb.ag
  %i.da = sext i32 %i.cy to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %1, i64 %i.da
  store ptr @intTestFlag, ptr %i.db, align 8, !tbaa !9
  %i.dc = add nsw i32 %i.cy, 2                    ; 2 uses
  store i32 %i.dc, ptr %10, align 8, !tbaa !20
  %i.dd = sext i32 %i.cy to i64
  %i.de = getelementptr [8 x i8], ptr %1, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 8
  store ptr @forceDefCipherListFlag, ptr %i.df, align 8, !tbaa !9
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %i.dg = phi i32 [ %i.cy, %bb.af ], [ %i.dc, %bb.ah ] ; 2 uses
  store i8 0, ptr %i.c, align 16, !tbaa !25
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph159.preheader, label %.loopexit151

.lr.ph159.preheader:                              ; preds = %.thread, %bb.ai
  %i.di = phi i32 [ %i.cy, %.thread ], [ %i.dg, %bb.ai ]
  %i.dj = zext nneg i32 %i.di to i64
  br label %.lr.ph159

.lr.ph159:                                        ; preds = %.lr.ph159.preheader, %bb.ak
  %indvars.iv169 = phi i64 [ 0, %.lr.ph159.preheader ], [ %indvars.iv.next170, %bb.ak ] ; 2 uses
  %.1158 = phi i64 [ 0, %.lr.ph159.preheader ], [ %i.do, %bb.ak ]
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv169
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !9  ; 2 uses
  %i.dm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dl) #22
  %i.dn = add nuw nsw i64 %.1158, 2
  %i.do = add i64 %i.dn, %i.dm                    ; 2 uses
  %i.dp = icmp ugt i64 %i.do, 239
  br i1 %i.dp, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph159
  %puts100 = call i32 @puts(ptr nonnull dereferenceable(1) @str.23) ; 0 uses
  br label %.loopexit151

bb.ak:                                            ; preds = %.lr.ph159
  %i.dq = call i64 @wc_strlcat(ptr noundef nonnull %i.c, ptr noundef nonnull %i.dl, i64 noundef 240) #17 ; 0 uses
  %i.dr = call i64 @wc_strlcat(ptr noundef nonnull %i.c, ptr noundef nonnull @flagSep, i64 noundef 240) #17 ; 0 uses
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %i.ds = icmp samesign ult i64 %indvars.iv.next170, %i.dj
  br i1 %i.ds, label %.lr.ph159, label %.loopexit151, !llvm.loop !32

.loopexit151:                                     ; preds = %bb.ak, %bb.ai, %bb.aj
  %i.dt = load i32, ptr @execute_test_case.tests, align 4, !tbaa !24
  %i.du = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %i.dt, ptr noundef nonnull %i.c) ; 0 uses
  %i.dv = load i32, ptr @execute_test_case.tests, align 4, !tbaa !24
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr @execute_test_case.tests, align 4, !tbaa !24
  %i.dx = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @exitWithRetFlag) #22 ; 2 uses
  %12 = icmp ne ptr %i.dx, null                   ; 2 uses
  store i8 0, ptr %i.c, align 16, !tbaa !25
  %i.dy = icmp sgt i32 %2, 0
  br i1 %i.dy, label %.lr.ph162.preheader, label %.loopexit150

.lr.ph162.preheader:                              ; preds = %.loopexit151
  %i.dz = zext nneg i32 %2 to i64
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162.preheader, %bb.am
  %indvars.iv172 = phi i64 [ 0, %.lr.ph162.preheader ], [ %indvars.iv.next173, %bb.am ] ; 2 uses
  %.2161 = phi i64 [ 0, %.lr.ph162.preheader ], [ %i.ee, %bb.am ]
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv172
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !9  ; 2 uses
  %i.ec = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eb) #22
  %i.ed = add nuw nsw i64 %.2161, 2
  %i.ee = add i64 %i.ed, %i.ec                    ; 2 uses
  %i.ef = icmp ugt i64 %i.ee, 239
  br i1 %i.ef, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph162
  %puts102 = call i32 @puts(ptr nonnull dereferenceable(1) @str.30) ; 0 uses
  br label %.loopexit150

bb.am:                                            ; preds = %.lr.ph162
  %i.eg = call i64 @wc_strlcat(ptr noundef nonnull %i.c, ptr noundef nonnull %i.eb, i64 noundef 240) #17 ; 0 uses
  %i.eh = call i64 @wc_strlcat(ptr noundef nonnull %i.c, ptr noundef nonnull @flagSep, i64 noundef 240) #17 ; 0 uses
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.ei = icmp samesign ult i64 %indvars.iv.next173, %i.dz
  br i1 %i.ei, label %.lr.ph162, label %.loopexit150, !llvm.loop !33

.loopexit150:                                     ; preds = %bb.am, %.loopexit151, %bb.al
  %i.ej = call fastcc i32 @IsValidCA(ptr noundef %i.c)
  %.not103 = icmp eq i32 %i.ej, 0
  br i1 %.not103, label %IsValidCipherSuite.exit.thread, label %bb.an

bb.an:                                            ; preds = %.loopexit150
  %i.ek = call fastcc i32 @IsValidCert(ptr noundef %i.c)
  %.not104 = icmp eq i32 %i.ek, 0
  br i1 %.not104, label %IsValidCipherSuite.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.el = call fastcc i32 @IsEcdsaCipherSuiteDefRsaCert(ptr noundef %i.c)
  %.not105 = icmp eq i32 %i.el, 0
  br i1 %.not105, label %bb.ap, label %IsValidCipherSuite.exit.thread

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @InitTcpReady(ptr noundef %11)
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %11, ptr %i.em, align 8, !tbaa !34
  call void @start_thread(ptr noundef nonnull @server_test, ptr noundef nonnull %10, ptr noundef nonnull %i.b) #17
  call void @wait_tcp_ready(ptr noundef nonnull %10) #17
  br i1 %.not94, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.en = icmp sgt i32 %2, 39
  br i1 %i.en, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %puts106 = call i32 @puts(ptr nonnull dereferenceable(1) @str.25) ; 0 uses
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.eo = add nsw i32 %2, 1                       ; 2 uses
  store i32 %i.eo, ptr %9, align 8, !tbaa !20
  %i.ep = sext i32 %2 to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ep
  store ptr @nonblockFlag, ptr %i.eq, align 8, !tbaa !9
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.ap
  %i.er = phi i32 [ %2, %bb.ar ], [ %i.eo, %bb.as ], [ %2, %bb.ap ] ; 5 uses
  %.not107 = icmp eq i32 %6, 0
  br i1 %.not107, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %puts108 = call i32 @puts(ptr nonnull dereferenceable(1) @str.26) ; 0 uses
  %i.es = icmp sgt i32 %i.er, 39
  br i1 %i.es, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %puts109 = call i32 @puts(ptr nonnull dereferenceable(1) @str.27) ; 0 uses
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.et = add nsw i32 %i.er, 1                    ; 2 uses
  store i32 %i.et, ptr %9, align 8, !tbaa !20
  %i.eu = sext i32 %i.er to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %3, i64 %i.eu
  store ptr @disableEMSFlag, ptr %i.ev, align 8, !tbaa !9
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw, %bb.at
  %i.ew = phi i32 [ %i.er, %bb.av ], [ %i.et, %bb.aw ], [ %i.er, %bb.at ] ; 6 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %11, i64 2
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !35 ; 2 uses
  %i.ez = zext i16 %i.ey to i32
  %.not110 = icmp eq i16 %i.ey, 0
  br i1 %.not110, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fa = icmp sgt i32 %i.ew, 38
  br i1 %i.fa, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %puts111 = call i32 @puts(ptr nonnull dereferenceable(1) @str.28) ; 0 uses
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.fb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @execute_test_case.portNumber, i64 noundef 8, ptr noundef nonnull @.str.52, i32 noundef %i.ez) #17 ; 0 uses
  %i.fc = sext i32 %i.ew to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %3, i64 %i.fc
  store ptr @portFlag, ptr %i.fd, align 8, !tbaa !9
  %i.fe = add nsw i32 %i.ew, 2                    ; 2 uses
  store i32 %i.fe, ptr %9, align 8, !tbaa !20
  %i.ff = sext i32 %i.ew to i64
  %i.fg = getelementptr [8 x i8], ptr %3, i64 %i.ff
  %i.fh = getelementptr i8, ptr %i.fg, i64 8
  store ptr @execute_test_case.portNumber, ptr %i.fh, align 8, !tbaa !9
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba, %bb.ax
  %i.fi = phi i32 [ %i.ew, %bb.az ], [ %i.fe, %bb.ba ], [ %i.ew, %bb.ax ] ; 6 uses
  %.not112 = icmp eq i32 %8, 0
  br i1 %.not112, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fj = icmp sgt i32 %i.fi, 38
  br i1 %i.fj, label %.thread206, label %bb.bd

.thread206:                                       ; preds = %bb.bc
  %puts113 = call i32 @puts(ptr nonnull dereferenceable(1) @str.29) ; 0 uses
  store i8 0, ptr %i.c, align 16, !tbaa !25
  br label %.lr.ph165.preheader

bb.bd:                                            ; preds = %bb.bc
  %i.fk = sext i32 %i.fi to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %3, i64 %i.fk
  store ptr @intTestFlag, ptr %i.fl, align 8, !tbaa !9
  %i.fm = add nsw i32 %i.fi, 2                    ; 2 uses
  store i32 %i.fm, ptr %9, align 8, !tbaa !20
  %i.fn = sext i32 %i.fi to i64
  %i.fo = getelementptr [8 x i8], ptr %3, i64 %i.fn
  %i.fp = getelementptr i8, ptr %i.fo, i64 8
  store ptr @forceDefCipherListFlag, ptr %i.fp, align 8, !tbaa !9
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bb
  %i.fq = phi i32 [ %i.fi, %bb.bb ], [ %i.fm, %bb.bd ] ; 2 uses
  store i8 0, ptr %i.c, align 16, !tbaa !25
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %.lr.ph165.preheader, label %.loopexit

.lr.ph165.preheader:                              ; preds = %.thread206, %bb.be
  %i.fs = phi i32 [ %i.fi, %.thread206 ], [ %i.fq, %bb.be ]
  %i.ft = zext nneg i32 %i.fs to i64
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %bb.bg
  %indvars.iv175 = phi i64 [ 0, %.lr.ph165.preheader ], [ %indvars.iv.next176, %bb.bg ] ; 2 uses
  %.3164 = phi i64 [ 0, %.lr.ph165.preheader ], [ %i.fy, %bb.bg ]
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv175
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !9  ; 2 uses
  %i.fw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #22
  %i.fx = add nuw nsw i64 %.3164, 2
  %i.fy = add i64 %i.fx, %i.fw                    ; 2 uses
  %i.fz = icmp ugt i64 %i.fy, 239
  br i1 %i.fz, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph165
  %puts114 = call i32 @puts(ptr nonnull dereferenceable(1) @str.30) ; 0 uses
  br label %.loopexit

bb.bg:                                            ; preds = %.lr.ph165
  %i.ga = call i64 @wc_strlcat(ptr noundef nonnull %i.c, ptr noundef nonnull %i.fv, i64 noundef 240) #17 ; 0 uses
  %i.gb = call i64 @wc_strlcat(ptr noundef nonnull %i.c, ptr noundef nonnull @flagSep, i64 noundef 240) #17 ; 0 uses
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %i.gc = icmp samesign ult i64 %indvars.iv.next176, %i.ft
  br i1 %i.gc, label %.lr.ph165, label %.loopexit, !llvm.loop !39

.loopexit:                                        ; preds = %bb.bg, %bb.be, %bb.bf
  %i.gd = load i32, ptr @execute_test_case.tests, align 4, !tbaa !24
  %i.ge = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, i32 noundef %i.gd, ptr noundef nonnull %i.c) ; 0 uses
  %i.gf = load i32, ptr @execute_test_case.tests, align 4, !tbaa !24
  %i.gg = add nsw i32 %i.gf, 1
  store i32 %i.gg, ptr @execute_test_case.tests, align 4, !tbaa !24
  %i.gh = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @exitWithRetFlag) #22 ; 2 uses
  %13 = icmp ne ptr %i.gh, null                   ; 2 uses
  %i.gi = call ptr @client_test(ptr noundef nonnull %9) #17 ; 0 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !21 ; 2 uses
  %i.gl = icmp ne i32 %i.gk, 0
  %or.cond120 = xor i1 %13, %i.gl
  br i1 %or.cond120, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.loopexit
  %.not115 = icmp eq ptr %i.gh, null
  %i.gm = select i1 %.not115, ptr @.str.57, ptr @.str.56
  %i.gn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, i32 noundef %i.gk, ptr noundef nonnull %i.gm) ; 0 uses
  call void @exit(i32 noundef 1) #23
  unreachable

bb.bi:                                            ; preds = %.loopexit
  %i.go = load i64, ptr %i.b, align 8, !tbaa !40
  call void @join_thread(i64 noundef %i.go) #17
  %i.gp = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !21 ; 2 uses
  %i.gr = icmp ne i32 %i.gq, 0
  %or.cond121 = xor i1 %12, %i.gr
  br i1 %or.cond121, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %.not101 = icmp eq ptr %i.dx, null
  %i.gs = select i1 %.not101, ptr @.str.57, ptr @.str.56
  %i.gt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.58, i32 noundef %i.gq, ptr noundef nonnull %i.gs) ; 0 uses
  call void @exit(i32 noundef 1) #23
  unreachable

bb.bk:                                            ; preds = %bb.bi
  call fastcc void @FreeTcpReady(ptr noundef %11)
  %or.cond9 = or i1 %12, %13
  %. = select i1 %or.cond9, i32 -123, i32 0
  br label %IsValidCipherSuite.exit.thread

IsValidCipherSuite.exit.thread:                   ; preds = %bb.j, %bb.l, %bb.m, %IsTls10Version.exit.thread, %.loopexit152, %bb.f, %IsValidCert.exit.thread, %bb.bk, %bb.ao, %bb.an, %.loopexit150, %IsOldTlsVersion.exit, %IsTls10Version.exit, %IsSslVersion.exit, %IsValidCert.exit, %IsKyberLevelAvailable.exit, %IsValidCipherSuite.exit
  %.077 = phi i32 [ -123, %IsValidCipherSuite.exit ], [ -123, %IsValidCert.exit ], [ -124, %IsSslVersion.exit ], [ -124, %IsTls10Version.exit ], [ -123, %bb.an ], [ %., %bb.bk ], [ -123, %bb.ao ], [ -123, %.loopexit150 ], [ -124, %IsOldTlsVersion.exit ], [ -123, %IsKyberLevelAvailable.exit ], [ -123, %.loopexit152 ], [ -123, %IsValidCert.exit.thread ], [ -123, %bb.f ], [ -124, %IsTls10Version.exit.thread ], [ -123, %bb.l ], [ -123, %bb.m ], [ -123, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  ret i32 %.077
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare i64 @wc_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @IsValidCert(ptr nofree noundef nonnull readonly %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.65) #22 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %.021 = phi ptr [ %i.d, %bb.b ], [ %i.r, %bb.h ] ; 5 uses
  %.01420 = phi i64 [ 0, %bb.b ], [ %i.t, %bb.h ] ; 8 uses
  %i.e = load i8, ptr %.021, align 1, !tbaa !25   ; 2 uses
  switch i8 %i.e, label %bb.d [
    i8 32, label %.critedge
    i8 0, label %.critedge
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.021, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01420
  store i8 %i.e, ptr %i.g, align 4, !tbaa !25
  %i.h = or disjoint i64 %.01420, 1               ; 3 uses
  %i.i = load i8, ptr %i.f, align 1, !tbaa !25    ; 2 uses
  switch i8 %i.i, label %bb.e [
    i8 32, label %.critedge
    i8 0, label %.critedge
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.021, i64 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  store i8 %i.i, ptr %i.k, align 1, !tbaa !25
  %i.l = or disjoint i64 %.01420, 2               ; 3 uses
  %i.m = load i8, ptr %i.j, align 1, !tbaa !25    ; 2 uses
  switch i8 %i.m, label %bb.f [
    i8 32, label %.critedge
    i8 0, label %.critedge
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.l
  store i8 %i.m, ptr %i.n, align 2, !tbaa !25
  %i.o = or disjoint i64 %.01420, 3               ; 3 uses
  %exitcond.not.2 = icmp eq i64 %.01420, 76
  br i1 %exitcond.not.2, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.021, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !25    ; 2 uses
  switch i8 %i.q, label %bb.h [
    i8 32, label %.critedge
    i8 0, label %.critedge
  ]

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.021, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  store i8 %i.q, ptr %i.s, align 1, !tbaa !25
  %i.t = add nuw nsw i64 %.01420, 4
  br label %bb.c

.critedge:                                        ; preds = %bb.g, %bb.g, %bb.f, %bb.e, %bb.e, %bb.d, %bb.d, %bb.c, %bb.c
  %.014.lcssa = phi i64 [ %.01420, %bb.c ], [ %.01420, %bb.c ], [ %i.o, %bb.g ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.o, %bb.g ], [ %i.l, %bb.e ], [ %i.l, %bb.e ], [ 79, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %.014.lcssa
  store i8 0, ptr %i.u, align 1, !tbaa !25
  %i.v = tail call ptr @wolfSSLv23_server_method_ex(ptr noundef null) #17
  %i.w = tail call ptr @wolfSSL_CTX_new(ptr noundef %i.v) #17 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.y = call i32 @wolfSSL_CTX_use_certificate_chain_file(ptr noundef nonnull %i.w, ptr noundef nonnull %i.a) #17
  %i.z = icmp eq i32 %i.y, 1
  %i.aa = zext i1 %i.z to i32
  call void @wolfSSL_CTX_free(ptr noundef nonnull %i.w) #17
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.a, %bb.i
  %.015 = phi i32 [ %i.aa, %bb.i ], [ 1, %bb.a ], [ 0, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @IsValidCA(ptr nofree noundef nonnull readonly %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.67) #22 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %.021 = phi ptr [ %i.d, %bb.b ], [ %i.r, %bb.h ] ; 5 uses
  %.01420 = phi i64 [ 0, %bb.b ], [ %i.t, %bb.h ] ; 8 uses
  %i.e = load i8, ptr %.021, align 1, !tbaa !25   ; 2 uses
  switch i8 %i.e, label %bb.d [
    i8 32, label %.critedge
    i8 0, label %.critedge
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.021, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01420
  store i8 %i.e, ptr %i.g, align 4, !tbaa !25
  %i.h = or disjoint i64 %.01420, 1               ; 3 uses
  %i.i = load i8, ptr %i.f, align 1, !tbaa !25    ; 2 uses
  switch i8 %i.i, label %bb.e [
    i8 32, label %.critedge
    i8 0, label %.critedge
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.021, i64 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  store i8 %i.i, ptr %i.k, align 1, !tbaa !25
  %i.l = or disjoint i64 %.01420, 2               ; 3 uses
  %i.m = load i8, ptr %i.j, align 1, !tbaa !25    ; 2 uses
  switch i8 %i.m, label %bb.f [
    i8 32, label %.critedge
    i8 0, label %.critedge
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.l
  store i8 %i.m, ptr %i.n, align 2, !tbaa !25
  %i.o = or disjoint i64 %.01420, 3               ; 3 uses
  %exitcond.not.2 = icmp eq i64 %.01420, 76
  br i1 %exitcond.not.2, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.021, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !25    ; 2 uses
  switch i8 %i.q, label %bb.h [
    i8 32, label %.critedge
    i8 0, label %.critedge
  ]

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.021, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  store i8 %i.q, ptr %i.s, align 1, !tbaa !25
  %i.t = add nuw nsw i64 %.01420, 4
  br label %bb.c

.critedge:                                        ; preds = %bb.g, %bb.g, %bb.f, %bb.e, %bb.e, %bb.d, %bb.d, %bb.c, %bb.c
  %.014.lcssa = phi i64 [ %.01420, %bb.c ], [ %.01420, %bb.c ], [ %i.o, %bb.g ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.o, %bb.g ], [ %i.l, %bb.e ], [ %i.l, %bb.e ], [ 79, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %.014.lcssa
  store i8 0, ptr %i.u, align 1, !tbaa !25
  %i.v = tail call ptr @wolfSSLv23_server_method_ex(ptr noundef null) #17
  %i.w = tail call ptr @wolfSSL_CTX_new(ptr noundef %i.v) #17 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.y = call i32 @wolfSSL_CTX_use_certificate_chain_file(ptr noundef nonnull %i.w, ptr noundef nonnull %i.a) #17
  %i.z = icmp eq i32 %i.y, 1
  %i.aa = zext i1 %i.z to i32
  call void @wolfSSL_CTX_free(ptr noundef nonnull %i.w) #17
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.a, %bb.i
  %.015 = phi i32 [ %i.aa, %bb.i ], [ 1, %bb.a ], [ 0, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.015
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @IsEcdsaCipherSuiteDefRsaCert(ptr nofree noundef nonnull readonly %0) unnamed_addr #9 {
bb.a:
end_hunk_0
