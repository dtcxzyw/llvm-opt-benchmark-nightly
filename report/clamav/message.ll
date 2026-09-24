Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/message?download=true
inline.NumInlined: 53
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@messageSavePartial:bb.a
bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 6
  %i.as = call ptr @cli_safer_strdup(ptr noundef nonnull %i.ar) #20 ; 7 uses
  %.not204.i = icmp eq ptr %i.as, null
  br i1 %.not204.i, label %.critedge213.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = call i32 @cli_chomp(ptr noundef nonnull %i.as) #20 ; 0 uses
  %i.au = call i64 @strstrip(ptr noundef nonnull %i.as) #20 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.105, ptr noundef nonnull %i.as) #20
  %i.av = load i8, ptr %i.as, align 1, !tbaa !28
  %.not206.i = icmp eq i8 %i.av, 0
  %spec.select4.i = select i1 %.not206.i, ptr @.str.101, ptr %i.as
  call void @fileblobPartialSet(ptr noundef %.2167234.i, ptr noundef nonnull %i.c, ptr noundef nonnull %spec.select4.i) #20, !callees !49, !inline_history !0
  call void @free(ptr noundef nonnull %i.as) #20
  br label %.thread249.i

.critedge213.i:                                   ; preds = %bb.q, %bb.p
  call void @fileblobPartialSet(ptr noundef %.2167234.i, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.101) #20, !callees !49, !inline_history !0
  br label %.thread249.i

.thread249.i:                                     ; preds = %.critedge213.i, %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !37
  store ptr null, ptr %i.ad, align 8, !tbaa !43
  br label %bb.x

bb.s:                                             ; preds = %bb.o, %bb.n
  %.2167236.i = phi ptr [ %i.ak, %bb.n ], [ %.2167234.i, %bb.o ] ; 4 uses
  %i.ay = icmp eq i32 %i.aj, 5
  br i1 %i.ay, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.106) #20
  %i.az = load ptr, ptr %0, align 8, !tbaa !24
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  store i32 0, ptr %i.ba, align 4, !tbaa !34
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0154.i = phi i32 [ 0, %bb.t ], [ %i.aj, %bb.s ] ; 3 uses
  %i.bb = call ptr @messageFindArgument(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.18) ; 2 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %messageGetFilename.exit.i, label %messageGetFilename.exit.thread.i

messageGetFilename.exit.i:                        ; preds = %bb.u
  %i.bc = call ptr @messageFindArgument(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.35) ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.thread260.i, label %messageGetFilename.exit.thread.i

messageGetFilename.exit.thread.i:                 ; preds = %messageGetFilename.exit.i, %bb.u
  %.0.i216243.i = phi ptr [ %i.bc, %messageGetFilename.exit.i ], [ %i.bb, %bb.u ] ; 3 uses
  %i.be = icmp eq i32 %.0154.i, 0
  br i1 %i.be, label %bb.v, label %bb.w

bb.v:                                             ; preds = %messageGetFilename.exit.thread.i
  call void @messageSetEncoding(ptr noundef nonnull %0, ptr noundef nonnull @.str.48)
  br label %bb.w

.thread260.i:                                     ; preds = %messageGetFilename.exit.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.107) #20
  call void @messageAddArgument(ptr noundef nonnull %0, ptr noundef nonnull @.str.99)
  call void @fileblobPartialSet(ptr noundef %.2167236.i, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.101) #20, !callees !49, !inline_history !0
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !22
  br label %bb.x

bb.w:                                             ; preds = %bb.v, %messageGetFilename.exit.thread.i
  %i.bg = load i8, ptr %.0.i216243.i, align 1, !tbaa !28
  %.not202.i = icmp eq i8 %i.bg, 0
  %spec.select5.i = select i1 %.not202.i, ptr @.str.101, ptr %.0.i216243.i
  call void @fileblobPartialSet(ptr noundef %.2167236.i, ptr noundef nonnull %i.c, ptr noundef nonnull %spec.select5.i) #20, !callees !49, !inline_history !0
  %i.bh = load ptr, ptr %i.g, align 8, !tbaa !22
  call void @free(ptr noundef nonnull %.0.i216243.i) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread260.i, %.thread249.i
  %.1155259.i = phi i32 [ 6, %.thread249.i ], [ %.0154.i, %bb.w ], [ %.0154.i, %.thread260.i ]
  %.0163258.i = phi ptr [ %i.ax, %.thread249.i ], [ %i.bh, %bb.w ], [ %i.bf, %.thread260.i ] ; 4 uses
  %.2167235256.i = phi ptr [ %.2167234.i, %.thread249.i ], [ %.2167236.i, %bb.w ], [ %.2167236.i, %.thread260.i ] ; 8 uses
  %.1155259.fr.i = freeze i32 %.1155259.i         ; 5 uses
  %i.bi = icmp eq ptr %.0163258.i, null
  br i1 %i.bi, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.108) #20
  br label %messageExport.exit.thread.sink.split

bb.z:                                             ; preds = %bb.x
  switch i32 %.1155259.fr.i, label %.preheader.split.i [
    i32 0, label %bb.an
    i32 6, label %.preheader.split.us.i
  ]

.preheader.split.us.i:                            ; preds = %bb.z, %bb.am
  %.1164.us.i = phi ptr [ %i.cl, %bb.am ], [ %.0163258.i, %bb.z ] ; 2 uses
  %.0153.us.i = phi i64 [ %.2.us.i, %bb.am ], [ 0, %bb.z ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bj = load ptr, ptr %.1164.us.i, align 8, !tbaa !38
  %i.bk = call ptr @lineGetData(ptr noundef %i.bj) #20 ; 6 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.am, label %bb.aa

bb.aa:                                            ; preds = %.preheader.split.us.i
  %i.bm = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.bk, ptr noundef nonnull dereferenceable(7) @.str.72, i64 noundef 6) #22
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.thread273.i, label %.thread263.us.i

.thread263.us.i:                                  ; preds = %bb.aa
  %i.bo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bk) #22
  %i.bp = add i64 %i.bo, 2                        ; 3 uses
  %i.bq = icmp ugt i64 %i.bp, 1023                ; 2 uses
  br i1 %i.bq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.thread263.us.i
  %i.br = call ptr @cli_max_malloc(i64 noundef %i.bp) #20 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %.split.us.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.thread263.us.i
  %.0152.us.i = phi ptr [ %i.br, %bb.ab ], [ %i.a, %.thread263.us.i ] ; 6 uses
  %i.bt = load i8, ptr %i.bk, align 1, !tbaa !28  ; 2 uses
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bv = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.bk, ptr noundef nonnull dereferenceable(7) @.str.72, i64 noundef 6) #22
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ad, %bb.ah
  %i.bx = phi i8 [ %.pr.i, %bb.ah ], [ %i.bt, %bb.ad ] ; 2 uses
  %.498.i = phi ptr [ %.599.i, %bb.ah ], [ %i.bk, %bb.ad ] ; 3 uses
  %.6.i = phi ptr [ %.7.i, %bb.ah ], [ %.0152.us.i, %bb.ad ] ; 5 uses
  switch i8 %i.bx, label %bb.ag [
    i8 0, label %bb.ai
    i8 61, label %bb.ae
  ]

bb.ae:                                            ; preds = %.preheader.i
  %i.by = getelementptr inbounds nuw i8, ptr %.498.i, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !28  ; 2 uses
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cb = getelementptr inbounds nuw i8, ptr %.498.i, i64 2
  %i.cc = add i8 %i.bz, -64
  br label %bb.ah

bb.ag:                                            ; preds = %.preheader.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.498.i, i64 1
  %i.ce = add i8 %i.bx, -42
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %storemerge.i = phi i8 [ %i.ce, %bb.ag ], [ %i.cc, %bb.af ]
  %.599.i = phi ptr [ %i.cd, %bb.ag ], [ %i.cb, %bb.af ] ; 2 uses
  %.7.i = getelementptr inbounds nuw i8, ptr %.6.i, i64 1
  store i8 %storemerge.i, ptr %.6.i, align 1, !tbaa !28
  %.pr.i = load i8, ptr %.599.i, align 1, !tbaa !28
  br label %.preheader.i

.thread:                                          ; preds = %bb.ac, %bb.ad
  store i8 0, ptr %.0152.us.i, align 1, !tbaa !28
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ae, %.preheader.i
  store i8 0, ptr %.6.i, align 1, !tbaa !28
  %.not208.us.i = icmp eq ptr %.6.i, %.0152.us.i
  br i1 %.not208.us.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cf = ptrtoint ptr %.6.i to i64
  %i.cg = ptrtoint ptr %.0152.us.i to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = call i32 @fileblobAddData(ptr noundef %.2167235256.i, ptr noundef nonnull %.0152.us.i, i64 noundef %i.ch) #20, !callees !53, !inline_history !0 ; 0 uses
  %i.cj = add i64 %i.ch, %.0153.us.i
  br label %bb.ak

bb.ak:                                            ; preds = %.thread, %bb.aj, %bb.ai
  %.1.us.i = phi i64 [ %i.cj, %bb.aj ], [ %.0153.us.i, %bb.ai ], [ %.0153.us.i, %.thread ] ; 2 uses
  br i1 %i.bq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @free(ptr noundef nonnull %.0152.us.i) #20
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %.preheader.split.us.i
  %.2.us.i = phi i64 [ %.0153.us.i, %.preheader.split.us.i ], [ %.1.us.i, %bb.al ], [ %.1.us.i, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ck = getelementptr inbounds nuw i8, ptr %.1164.us.i, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !37 ; 2 uses
  %.not209.us.i = icmp eq ptr %i.cl, null
  br i1 %.not209.us.i, label %.loopexit.i, label %.preheader.split.us.i

bb.an:                                            ; preds = %bb.z
  %i.cm = load i32, ptr %i.l, align 4, !tbaa !25
  %i.cn = add nsw i32 %i.cm, -1
  %i.co = zext i32 %i.cn to i64
  %i.cp = icmp eq i64 %indvars.iv.i, %i.co
  %i.cq = call ptr @textToFileblob(ptr noundef nonnull %.0163258.i, ptr noundef %.2167235256.i, i32 noundef 0) #20 ; 0 uses
  br i1 %i.cp, label %messageExport.exit, label %bb.ay

.preheader.split.i:                               ; preds = %bb.z, %bb.av
  %.1164.i = phi ptr [ %i.dm, %bb.av ], [ %.0163258.i, %bb.z ] ; 2 uses
  %.0153.i = phi i64 [ %.1.i, %bb.av ], [ 0, %bb.z ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.cr = load ptr, ptr %.1164.i, align 8, !tbaa !38
  %i.cs = call ptr @lineGetData(ptr noundef %i.cr) #20 ; 4 uses
  %.not.i.not = icmp eq ptr %i.cs, null
  br i1 %.not.i.not, label %.thread265.i, label %.thread263.i

.thread263.i:                                     ; preds = %.preheader.split.i
  %i.ct = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cs) #22
  %i.cu = add i64 %i.ct, 2                        ; 4 uses
  %i.cv = icmp ugt i64 %i.cu, 1023
  br i1 %i.cv, label %bb.ao, label %.thread15

bb.ao:                                            ; preds = %.thread263.i
  %i.cw = call ptr @cli_max_malloc(i64 noundef %i.cu) #20 ; 4 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %.split.us.i, label %bb.ap

.split.us.i:                                      ; preds = %bb.ab, %bb.ao
  %.us-phi303.i = phi i64 [ %.0153.i, %bb.ao ], [ %.0153.us.i, %bb.ab ]
  %.us-phi304.i = phi i64 [ %i.cu, %bb.ao ], [ %i.bp, %bb.ab ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.109, i64 noundef %.us-phi304.i) #20
  br label %.thread273.i

bb.ap:                                            ; preds = %bb.ao
  %i.cy = call ptr @decodeLine(ptr noundef nonnull %0, i32 noundef %.1155259.fr.i, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.cw, i64 noundef %i.cu) ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %.split306.us.i, label %bb.ar

.thread15:                                        ; preds = %.thread263.i
  %i.da = call ptr @decodeLine(ptr noundef nonnull %0, i32 noundef %.1155259.fr.i, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.a, i64 noundef 1024) ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %.thread273.i, label %bb.ar

.thread265.i:                                     ; preds = %.preheader.split.i
  switch i32 %.1155259.fr.i, label %decodeLine.exit [
    i32 6, label %decodeLine.exit.thread
    i32 5, label %decodeLine.exit.thread
    i32 2, label %decodeLine.exit.thread
    i32 1, label %bb.aq
  ]

bb.aq:                                            ; preds = %.thread265.i
  store i8 10, ptr %i.a, align 16, !tbaa !28
  br label %decodeLine.exit.thread

decodeLine.exit.thread:                           ; preds = %.thread265.i, %bb.aq, %.thread265.i, %.thread265.i
  %.8.i = phi ptr [ %i.a, %.thread265.i ], [ %i.ag, %bb.aq ], [ %i.a, %.thread265.i ], [ %i.a, %.thread265.i ] ; 2 uses
  store i8 0, ptr %.8.i, align 1, !tbaa !28
  br label %bb.ar

decodeLine.exit:                                  ; preds = %.thread265.i
  %i.dc = call ptr @cli_strrcpy(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.69) #20 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %.thread273.i, label %bb.ar

.split306.us.i:                                   ; preds = %bb.ap
  call void @free(ptr noundef nonnull %i.cw) #20
  br label %.thread273.i

bb.ar:                                            ; preds = %.thread15, %decodeLine.exit.thread, %decodeLine.exit, %bb.ap
  %i.de = phi ptr [ %i.dc, %decodeLine.exit ], [ %i.cy, %bb.ap ], [ %.8.i, %decodeLine.exit.thread ], [ %i.da, %.thread15 ] ; 2 uses
  %.0152268.i = phi ptr [ %i.a, %decodeLine.exit ], [ %i.cw, %bb.ap ], [ %i.a, %decodeLine.exit.thread ], [ %i.a, %.thread15 ] ; 4 uses
  %i.df = phi i1 [ false, %decodeLine.exit ], [ true, %bb.ap ], [ false, %decodeLine.exit.thread ], [ false, %.thread15 ]
  %.not208.i = icmp eq ptr %i.de, %.0152268.i
  br i1 %.not208.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %.0152268.i to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 2 uses
  %i.dj = call i32 @fileblobAddData(ptr noundef %.2167235256.i, ptr noundef nonnull %.0152268.i, i64 noundef %i.di) #20, !callees !53, !inline_history !0 ; 0 uses
  %i.dk = add i64 %i.di, %.0153.i
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.1.i = phi i64 [ %i.dk, %bb.as ], [ %.0153.i, %bb.ar ] ; 2 uses
  br i1 %i.df, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef nonnull %.0152268.i) #20
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.dl = getelementptr inbounds nuw i8, ptr %.1164.i, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !37 ; 2 uses
  %.not209.i = icmp eq ptr %i.dm, null
  br i1 %.not209.i, label %.loopexit.i, label %.preheader.split.i

.thread273.i:                                     ; preds = %bb.aa, %.thread15, %decodeLine.exit, %.split306.us.i, %.split.us.i
  %.0153297.i = phi i64 [ %.0153.i, %.split306.us.i ], [ %.0153.i, %.thread15 ], [ %.us-phi303.i, %.split.us.i ], [ %.0153.i, %decodeLine.exit ], [ %.0153.us.i, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.am, %bb.av, %.thread273.i
  %.2276.i = phi i64 [ %.0153297.i, %.thread273.i ], [ %.1.i, %bb.av ], [ %.2.us.i, %bb.am ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.110, i64 noundef %.2276.i, i32 noundef %.1155259.fr.i) #20
  %i.dn = load i32, ptr %i.ae, align 8, !tbaa !23 ; 2 uses
  %.not210.i = icmp eq i32 %i.dn, 0
  br i1 %.not210.i, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.58, i32 noundef %i.dn) #20
  %i.do = load i32, ptr %i.ae, align 8, !tbaa !23
  %.not.i219.i = icmp eq i32 %i.do, 0
  br i1 %.not.i219.i, label %base64Flush.exit.thread.i, label %base64Flush.exit.i

base64Flush.exit.i:                               ; preds = %bb.aw
  %i.dp = call fastcc ptr @decode(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull @base64, i1 noundef zeroext false) ; 2 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !23
  %.not211.i = icmp eq ptr %i.dp, null
  br i1 %.not211.i, label %base64Flush.exit.thread.i, label %bb.ax

bb.ax:                                            ; preds = %base64Flush.exit.i
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dq, %i.af
  %i.ds = call i32 @fileblobAddData(ptr noundef %.2167235256.i, ptr noundef nonnull %i.b, i64 noundef %i.dr) #20, !callees !53, !inline_history !0 ; 0 uses
  br label %base64Flush.exit.thread.i

base64Flush.exit.thread.i:                        ; preds = %bb.ax, %base64Flush.exit.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.ay

bb.ay:                                            ; preds = %bb.an, %base64Flush.exit.thread.i, %.loopexit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dt = load i32, ptr %i.l, align 4, !tbaa !25
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp slt i64 %indvars.iv.next.i, %i.du
  br i1 %i.dv, label %bb.l, label %messageExport.exit

messageExport.exit:                               ; preds = %bb.ay, %bb.an, %messageGetBody.exit215.i, %.thread224.i
  %.4173.i = phi ptr [ %i.x, %messageGetBody.exit215.i ], [ %.0165314.i, %.thread224.i ], [ %.2167235256.i, %bb.an ], [ %.2167235256.i, %bb.ay ] ; 2 uses
  %.not = icmp eq ptr %.4173.i, null
  br i1 %.not, label %messageExport.exit.thread, label %messageExport.exit.thread.sink.split

messageExport.exit.thread.sink.split:             ; preds = %messageExport.exit, %bb.k, %bb.y
  %.2167235256.i.lcssa.sink = phi ptr [ %.2167235256.i, %bb.y ], [ %.4173.i, %messageExport.exit ], [ %i.j, %bb.k ]
  %.0.ph = phi i32 [ 26, %bb.y ], [ 0, %messageExport.exit ], [ 0, %bb.k ]
  call void @fileblobDestroy(ptr noundef %.2167235256.i.lcssa.sink) #20
  br label %messageExport.exit.thread

messageExport.exit.thread:                        ; preds = %messageExport.exit.thread.sink.split, %messageGetBody.exit.i, %bb.a, %bb.b, %messageExport.exit
  %.0 = phi i32 [ 26, %messageGetBody.exit.i ], [ 26, %messageExport.exit ], [ 26, %bb.b ], [ 26, %bb.a ], [ %.0.ph, %messageExport.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  ret i32 %.0
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #14

declare ptr @fileblobCreate() local_unnamed_addr #5

declare void @fileblobDestroy(ptr noundef) local_unnamed_addr #5

declare void @fileblobPartialSet(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @fileblobAddData(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @textToFileblob(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @fileblobSetCTX(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @messageToFileblob(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 16 uses
  %i.b = alloca [4 x i8], align 1                 ; 5 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.61) #20
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %messageExport.exit, label %messageGetBody.exit.i

messageGetBody.exit.i:                            ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %messageExport.exit, label %bb.b

bb.b:                                             ; preds = %messageGetBody.exit.i
  %i.g = tail call ptr @fileblobCreate() #20, !callees !48, !inline_history !0 ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %messageExport.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 8 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.96, i32 noundef %i.j) #20
  %i.k = load i32, ptr %i.i, align 4, !tbaa !25   ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
end_hunk_0
