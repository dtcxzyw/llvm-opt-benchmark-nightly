Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/isocline?download=true
inline.NumInlined: 1215
inline.NumDeleted: 328
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 23
begin_hunk_0_@edit_line:bb.a
  %.021.i.i.i.i.i.i1137 = phi i64 [ %i.zq, %.preheader.i.i.i.i.i.i ], [ 1, %.preheader.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.zr = sub nsw i64 %i.zn, %.021.i.i.i.i.i.i1137
  %i.zs = getelementptr inbounds nuw i8, ptr %.val.i.i232.i.i, i64 %i.zr
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !9
  %or.cond4.i.i.i.i.i.i = icmp sgt i8 %i.zt, -65
  br i1 %or.cond4.i.i.i.i.i.i, label %sbuf_prev_ofs.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i

sbuf_prev_ofs.exit.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph1138, %.preheader.i.i.i.i.i.i.preheader
  %.2.i.i.i.i.i.i = phi i64 [ %i.zn, %.preheader.i.i.i.i.i.i.preheader ], [ %i.zn, %.preheader.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i1137, %.lr.ph1138 ] ; 3 uses
  %i.zu = icmp slt i64 %.2.i.i.i.i.i.i, 1
  br i1 %i.zu, label %sbuf_delete_char_before.exit.i.i.i, label %bb.en

bb.en:                                            ; preds = %sbuf_prev_ofs.exit.i.i.i.i
  %i.zv = sub nsw i64 %i.zn, %.2.i.i.i.i.i.i      ; 8 uses
  %i.zw = icmp slt i64 %i.zv, 0
  br i1 %i.zw, label %sbuf_delete_char_before.exit.i.i.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zm, i64 16 ; 3 uses
  %i.zy = load i64, ptr %i.zx, align 8, !tbaa !46 ; 5 uses
  %.not.i.i.i234.i.i = icmp slt i64 %i.zv, %i.zy
  br i1 %.not.i.i.i234.i.i, label %bb.ep, label %sbuf_delete_char_before.exit.i.i.i

bb.ep:                                            ; preds = %bb.eo
  %i.zz = icmp sgt i64 %i.zn, %i.zy
  %i.aaa = sub nsw i64 %i.zy, %i.zv
  %spec.select.i.i.i235.i.i = select i1 %i.zz, i64 %i.aaa, i64 %.2.i.i.i.i.i.i ; 3 uses
  %i.aab = add nuw i64 %i.zv, %spec.select.i.i.i235.i.i
  %i.aac = sub i64 %i.zy, %i.aab                  ; 2 uses
  %i.aad = icmp slt i64 %i.aac, 1
  br i1 %i.aad, label %ic_memmove.exit.i.i.i.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.aae = getelementptr inbounds nuw i8, ptr %.val.i.i232.i.i, i64 %i.zv ; 2 uses
  %i.aaf = getelementptr inbounds i8, ptr %i.aae, i64 %spec.select.i.i.i235.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aae, ptr nonnull readonly align 1 %i.aaf, i64 %i.aac, i1 false)
  %.pre.i.i.i236.i.i = load i64, ptr %i.zx, align 8, !tbaa !46
  %.pre.i.i237.i.i = load ptr, ptr %i.zm, align 8, !tbaa !49
  br label %ic_memmove.exit.i.i.i.i.i

ic_memmove.exit.i.i.i.i.i:                        ; preds = %bb.eq, %bb.ep
  %i.aag = phi ptr [ %.val.i.i232.i.i, %bb.ep ], [ %.pre.i.i237.i.i, %bb.eq ]
  %i.aah = phi i64 [ %i.zy, %bb.ep ], [ %.pre.i.i.i236.i.i, %bb.eq ]
  %i.aai = sub nsw i64 %i.aah, %spec.select.i.i.i235.i.i ; 2 uses
  store i64 %i.aai, ptr %i.zx, align 8, !tbaa !46
  %i.aaj = getelementptr inbounds i8, ptr %i.aag, i64 %i.aai
  store i8 0, ptr %i.aaj, align 1, !tbaa !9
  br label %sbuf_delete_char_before.exit.i.i.i

sbuf_delete_char_before.exit.i.i.i:               ; preds = %ic_memmove.exit.i.i.i.i.i, %bb.eo, %bb.en, %sbuf_prev_ofs.exit.i.i.i.i, %bb.em
  %.0.i.i233.i.i = phi i64 [ %i.zv, %ic_memmove.exit.i.i.i.i.i ], [ 0, %sbuf_prev_ofs.exit.i.i.i.i ], [ %i.zv, %bb.en ], [ %i.zv, %bb.eo ], [ 0, %bb.em ]
  store i64 %.0.i.i233.i.i, ptr %i.ae, align 8, !tbaa !325
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %.outer.outer.i.i.backedge

bb.er:                                            ; preds = %sbuf_clear.exit211.i.i, %sbuf_clear.exit211.i.i, %sbuf_clear.exit211.i.i
  %i.aak = load ptr, ptr %0, align 8, !tbaa !87
  %.val161.i.i = load ptr, ptr %i.aak, align 8, !tbaa !33
  %i.aal = call ptr %.val161.i.i(i64 noundef 40) #28, !inline_history !352 ; 8 uses
  %.not.i.i238.i.i = icmp eq ptr %i.aal, null
  br i1 %.not.i.i238.i.i, label %hsearch_push.exit239.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.aam, i8 0, i64 7, i1 false)
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aal, i64 8
  store i64 %.4355.ph.i.i.ph, ptr %i.aan, align 8, !tbaa !353
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aal, i64 16
  store i64 %.4347.ph.i.i.ph, ptr %i.aao, align 8, !tbaa !356
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aal, i64 24
  store i64 %.5.ph.ph.i.i, ptr %i.aap, align 8, !tbaa !357
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aal, i64 32
  store i8 0, ptr %i.aaq, align 8, !tbaa !358
  store ptr %.4366.ph.i.i, ptr %i.aal, align 8, !tbaa !359
  br label %hsearch_push.exit239.i.i

hsearch_push.exit239.i.i:                         ; preds = %bb.es, %bb.er
  %.11.i.i = phi ptr [ %.4366.ph.i.i, %bb.er ], [ %i.aal, %bb.es ] ; 4 uses
  %i.aar = load ptr, ptr %i.bv, align 8, !tbaa !167 ; 2 uses
  %i.aas = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 16
  %i.aau = load i64, ptr %i.aat, align 8, !tbaa !46
  %i.aav = icmp slt i64 %i.aau, 0
  br i1 %i.aav, label %sbuf_string.exit242.i.i, label %bb.et

bb.et:                                            ; preds = %hsearch_push.exit239.i.i
  %i.aaw = load ptr, ptr %i.aas, align 8, !tbaa !49 ; 2 uses
  %i.aax = icmp eq ptr %i.aaw, null
  %spec.select.i.i240.i.i = select i1 %i.aax, ptr @.str.3, ptr %i.aaw
  br label %sbuf_string.exit242.i.i

sbuf_string.exit242.i.i:                          ; preds = %bb.et, %hsearch_push.exit239.i.i
  %.0.i.i241.i.i = phi ptr [ %spec.select.i.i240.i.i, %bb.et ], [ null, %hsearch_push.exit239.i.i ]
  %i.aay = load i64, ptr %i.aar, align 8, !tbaa !172 ; 4 uses
  %i.aaz = icmp slt i64 %i.tr, %i.aay
  br i1 %i.aaz, label %history_get.exit.lr.ph.i243.i.i, label %.loopexit432.i.i

history_get.exit.lr.ph.i243.i.i:                  ; preds = %sbuf_string.exit242.i.i
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aar, i64 16
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !174
  %i.abc = getelementptr [8 x i8], ptr %i.abb, i64 %i.aay
  call void @llvm.assume(i1 %i.ts)
  br label %history_get.exit.i244.i.i

history_get.exit.i244.i.i:                        ; preds = %bb.eu, %history_get.exit.lr.ph.i243.i.i
  %.058.i245.i.i = phi i64 [ %i.tr, %history_get.exit.lr.ph.i243.i.i ], [ %i.abh, %bb.eu ] ; 4 uses
  %i.abd = xor i64 %.058.i245.i.i, -1
  %i.abe = getelementptr [8 x i8], ptr %i.abc, i64 %i.abd
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !61 ; 2 uses
  %i.abg = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.abf, ptr noundef nonnull readonly dereferenceable(1) %.0.i.i241.i.i) #29 ; 2 uses
  %.not35.i246.i.i = icmp eq ptr %i.abg, null
  br i1 %.not35.i246.i.i, label %bb.eu, label %.thread46.i247.i.i

bb.eu:                                            ; preds = %history_get.exit.i244.i.i
  %i.abh = add i64 %.058.i245.i.i, 1              ; 2 uses
  %exitcond.not.i251.i.i = icmp eq i64 %i.abh, %i.aay
  br i1 %exitcond.not.i251.i.i, label %.loopexit432.i.i, label %history_get.exit.i244.i.i, !llvm.loop !360

.thread46.i247.i.i:                               ; preds = %history_get.exit.i244.i.i
  %.not.i39.i248.i.i = icmp slt i64 %.058.i245.i.i, %i.aay
  %i.abi = ptrtoint ptr %i.abf to i64
  %spec.select424.i.i = select i1 %.not.i39.i248.i.i, i64 %i.abi, i64 0
  %i.abj = ptrtoint ptr %i.abg to i64
  %i.abk = sub i64 %i.abj, %spec.select424.i.i
  br label %.outer.i.i.outer.backedge

.outer.i.i.outer.backedge:                        ; preds = %.thread46.i247.i.i, %.thread46.i263.i.i
  %.4366.ph.i.i.ph.be = phi ptr [ %.13.i.i, %.thread46.i263.i.i ], [ %.11.i.i, %.thread46.i247.i.i ]
  %.4355.ph.i.i.ph.be = phi i64 [ %.157.i.i.i, %.thread46.i263.i.i ], [ %.058.i245.i.i, %.thread46.i247.i.i ]
  %.4347.ph.i.i.ph.be = phi i64 [ %i.act, %.thread46.i263.i.i ], [ %i.abk, %.thread46.i247.i.i ]
  br label %.outer.i.i.outer

.loopexit432.i.i:                                 ; preds = %bb.eu, %sbuf_string.exit242.i.i
  %.not429.i.i = icmp eq ptr %.11.i.i, null
  br i1 %.not429.i.i, label %hsearch_pop.exit254.i.i, label %bb.ev

bb.ev:                                            ; preds = %.loopexit432.i.i
  %i.abl = load ptr, ptr %0, align 8, !tbaa !87
  %i.abm = load ptr, ptr %.11.i.i, align 8, !tbaa !359
  %i.abn = getelementptr i8, ptr %i.abl, i64 16
  %.val.i253.i.i = load ptr, ptr %i.abn, align 8, !tbaa !50
  call void %.val.i253.i.i(ptr noundef nonnull %.11.i.i) #28, !inline_history !365
  br label %hsearch_pop.exit254.i.i

hsearch_pop.exit254.i.i:                          ; preds = %bb.ev, %.loopexit432.i.i
  %.12.i.i = phi ptr [ %i.abm, %bb.ev ], [ null, %.loopexit432.i.i ] ; 2 uses
  %i.abo = load ptr, ptr %i.aa, align 8, !tbaa !137
  %i.abp = getelementptr i8, ptr %i.abo, i64 33
  %.val154.i.i = load i8, ptr %i.abp, align 1, !tbaa !165, !range !130, !noundef !131
  %i.abq = trunc nuw i8 %.val154.i.i to i1
  br i1 %i.abq, label %.outer.i.i.backedge, label %bb.ew

bb.ew:                                            ; preds = %hsearch_pop.exit254.i.i
  %i.abr = load ptr, ptr @stderr, align 8, !tbaa !75
  %fputc.i255.i.i = call i32 @fputc(i32 7, ptr %i.abr) ; 0 uses
  %i.abs = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.abt = call i32 @fflush(ptr noundef %i.abs)   ; 0 uses
  br label %.outer.i.i.backedge

bb.ex:                                            ; preds = %sbuf_clear.exit211.i.i, %sbuf_clear.exit211.i.i, %sbuf_clear.exit211.i.i
  %i.abu = load ptr, ptr %0, align 8, !tbaa !87
  %.val160.i.i = load ptr, ptr %i.abu, align 8, !tbaa !33
  %i.abv = call ptr %.val160.i.i(i64 noundef 40) #28, !inline_history !352 ; 8 uses
  %.not.i.i257.i.i = icmp eq ptr %i.abv, null
  br i1 %.not.i.i257.i.i, label %hsearch_push.exit258.i.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.abw, i8 0, i64 7, i1 false)
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abv, i64 8
  store i64 %.4355.ph.i.i.ph, ptr %i.abx, align 8, !tbaa !353
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abv, i64 16
  store i64 %.4347.ph.i.i.ph, ptr %i.aby, align 8, !tbaa !356
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abv, i64 24
  store i64 %.5.ph.ph.i.i, ptr %i.abz, align 8, !tbaa !357
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abv, i64 32
  store i8 0, ptr %i.aca, align 8, !tbaa !358
  store ptr %.4366.ph.i.i, ptr %i.abv, align 8, !tbaa !359
  br label %hsearch_push.exit258.i.i

hsearch_push.exit258.i.i:                         ; preds = %bb.ey, %bb.ex
  %.13.i.i = phi ptr [ %.4366.ph.i.i, %bb.ex ], [ %i.abv, %bb.ey ] ; 4 uses
  %i.acb = load ptr, ptr %i.bv, align 8, !tbaa !167 ; 2 uses
  %i.acc = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 16
  %i.ace = load i64, ptr %i.acd, align 8, !tbaa !46
  %i.acf = icmp slt i64 %i.ace, 0
  br i1 %i.acf, label %sbuf_string.exit261.i.i, label %bb.ez

bb.ez:                                            ; preds = %hsearch_push.exit258.i.i
  %i.acg = load ptr, ptr %i.acc, align 8, !tbaa !49 ; 2 uses
  %i.ach = icmp eq ptr %i.acg, null
  %spec.select.i.i259.i.i = select i1 %i.ach, ptr @.str.3, ptr %i.acg
  br label %sbuf_string.exit261.i.i

sbuf_string.exit261.i.i:                          ; preds = %bb.ez, %hsearch_push.exit258.i.i
  %.0.i.i260.i.i = phi ptr [ %spec.select.i.i259.i.i, %bb.ez ], [ null, %hsearch_push.exit258.i.i ]
  br i1 %i.tq, label %history_get.exit38.lr.ph.i.i.i, label %.loopexit433.i.i

history_get.exit38.lr.ph.i.i.i:                   ; preds = %sbuf_string.exit261.i.i
  %i.aci = load i64, ptr %i.acb, align 8, !tbaa !172 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acb, i64 16
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !174
  %i.acl = getelementptr [8 x i8], ptr %i.ack, i64 %i.aci
  %.not.i36.i.i.i = icmp sle i64 %.4355.ph.i.i.ph, %i.aci
  call void @llvm.assume(i1 %.not.i36.i.i.i)
  br label %history_get.exit38.i.i.i

history_get.exit38.i.i.i:                         ; preds = %bb.fa, %history_get.exit38.lr.ph.i.i.i
  %.157.i.in.i.i = phi i64 [ %.4355.ph.i.i.ph, %history_get.exit38.lr.ph.i.i.i ], [ %.157.i.i.i, %bb.fa ] ; 3 uses
  %.157.i.i.i = add nsw i64 %.157.i.in.i.i, -1    ; 2 uses
  %i.acm = sub nsw i64 0, %.157.i.in.i.i
  %i.acn = getelementptr [8 x i8], ptr %i.acl, i64 %i.acm
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !61 ; 2 uses
  %i.acp = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.aco, ptr noundef nonnull readonly dereferenceable(1) %.0.i.i260.i.i) #29 ; 2 uses
  %.not.i262.i.i = icmp eq ptr %i.acp, null
  br i1 %.not.i262.i.i, label %bb.fa, label %.thread46.i263.i.i

bb.fa:                                            ; preds = %history_get.exit38.i.i.i
  %i.acq = icmp samesign ugt i64 %.157.i.in.i.i, 1
  br i1 %i.acq, label %history_get.exit38.i.i.i, label %.loopexit433.i.i, !llvm.loop !366

.thread46.i263.i.i:                               ; preds = %history_get.exit38.i.i.i
  %i.acr = ptrtoint ptr %i.aco to i64
  %i.acs = ptrtoint ptr %i.acp to i64
  %i.act = sub i64 %i.acs, %i.acr
  br label %.outer.i.i.outer.backedge

.loopexit433.i.i:                                 ; preds = %bb.fa, %sbuf_string.exit261.i.i
  %.not428.i.i = icmp eq ptr %.13.i.i, null
  br i1 %.not428.i.i, label %hsearch_pop.exit269.i.i, label %bb.fb

bb.fb:                                            ; preds = %.loopexit433.i.i
  %i.acu = load ptr, ptr %0, align 8, !tbaa !87
  %i.acv = load ptr, ptr %.13.i.i, align 8, !tbaa !359
  %i.acw = getelementptr i8, ptr %i.acu, i64 16
  %.val.i268.i.i = load ptr, ptr %i.acw, align 8, !tbaa !50
  call void %.val.i268.i.i(ptr noundef nonnull %.13.i.i) #28, !inline_history !365
  br label %hsearch_pop.exit269.i.i

hsearch_pop.exit269.i.i:                          ; preds = %bb.fb, %.loopexit433.i.i
  %.14.i.i = phi ptr [ %i.acv, %bb.fb ], [ null, %.loopexit433.i.i ] ; 2 uses
  %i.acx = load ptr, ptr %i.aa, align 8, !tbaa !137
  %i.acy = getelementptr i8, ptr %i.acx, i64 33
  %.val153.i.i = load i8, ptr %i.acy, align 1, !tbaa !165, !range !130, !noundef !131
  %i.acz = trunc nuw i8 %.val153.i.i to i1
  br i1 %i.acz, label %.outer.i.i.backedge, label %bb.fc

bb.fc:                                            ; preds = %hsearch_pop.exit269.i.i
  %i.ada = load ptr, ptr @stderr, align 8, !tbaa !75
  %fputc.i270.i.i = call i32 @fputc(i32 7, ptr %i.ada) ; 0 uses
  %i.adb = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.adc = call i32 @fflush(ptr noundef %i.adb)   ; 0 uses
  br label %.outer.i.i.backedge

.outer.i.i.backedge:                              ; preds = %bb.fc, %hsearch_pop.exit269.i.i, %bb.ew, %hsearch_pop.exit254.i.i
  %.4366.ph.i.i.be = phi ptr [ %.14.i.i, %bb.fc ], [ %.12.i.i, %bb.ew ], [ %.14.i.i, %hsearch_pop.exit269.i.i ], [ %.12.i.i, %hsearch_pop.exit254.i.i ]
  br label %.outer.i.i

bb.fd:                                            ; preds = %sbuf_clear.exit211.i.i
  call fastcc void @edit_show_help(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %bb.dd

bb.fe:                                            ; preds = %sbuf_clear.exit211.i.i
  %i.add = add i32 %i.vy, -32
  %or.cond.i.i.i = icmp ult i32 %i.add, 96
  %i.ade = trunc nuw nsw i32 %i.vy to i8
  br i1 %or.cond.i.i.i, label %bb.ff, label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  %i.adf = load ptr, ptr %0, align 8, !tbaa !87
  %.val159.i.i = load ptr, ptr %i.adf, align 8, !tbaa !33
  %i.adg = call ptr %.val159.i.i(i64 noundef 40) #28, !inline_history !352 ; 8 uses
  %.not.i.i272.i.i = icmp eq ptr %i.adg, null
  br i1 %.not.i.i272.i.i, label %hsearch_push.exit273.i.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.adh, i8 0, i64 7, i1 false)
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adg, i64 8
  store i64 %.4355.ph.i.i.ph, ptr %i.adi, align 8, !tbaa !353
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adg, i64 16
  store i64 %.4347.ph.i.i.ph, ptr %i.adj, align 8, !tbaa !356
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adg, i64 24
  store i64 %.5.ph.ph.i.i, ptr %i.adk, align 8, !tbaa !357
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adg, i64 32
  store i8 1, ptr %i.adl, align 8, !tbaa !358
  store ptr %.4366.ph.i.i, ptr %i.adg, align 8, !tbaa !359
  br label %hsearch_push.exit273.i.i

hsearch_push.exit273.i.i:                         ; preds = %bb.fg, %bb.ff
  %.15.i.i = phi ptr [ %.4366.ph.i.i, %bb.ff ], [ %i.adg, %bb.fg ]
  call fastcc void @edit_insert_char(ptr noundef nonnull %0, ptr noundef nonnull %6, i8 noundef signext %i.ade)
  br label %bb.fm

bb.fh:                                            ; preds = %bb.fe
  %i.adm = icmp ult i32 %i.vy, 1114112
  br i1 %i.adm, label %bb.fi, label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  %i.adn = load ptr, ptr %0, align 8, !tbaa !87
  %.val158.i.i = load ptr, ptr %i.adn, align 8, !tbaa !33
  %i.ado = call ptr %.val158.i.i(i64 noundef 40) #28, !inline_history !352 ; 8 uses
  %.not.i.i274.i.i = icmp eq ptr %i.ado, null
  br i1 %.not.i.i274.i.i, label %hsearch_push.exit275.i.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.adp, i8 0, i64 7, i1 false)
  %i.adq = getelementptr inbounds nuw i8, ptr %i.ado, i64 8
  store i64 %.4355.ph.i.i.ph, ptr %i.adq, align 8, !tbaa !353
  %i.adr = getelementptr inbounds nuw i8, ptr %i.ado, i64 16
  store i64 %.4347.ph.i.i.ph, ptr %i.adr, align 8, !tbaa !356
  %i.ads = getelementptr inbounds nuw i8, ptr %i.ado, i64 24
  store i64 %.5.ph.ph.i.i, ptr %i.ads, align 8, !tbaa !357
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ado, i64 32
  store i8 1, ptr %i.adt, align 8, !tbaa !358
  store ptr %.4366.ph.i.i, ptr %i.ado, align 8, !tbaa !359
  br label %hsearch_push.exit275.i.i

hsearch_push.exit275.i.i:                         ; preds = %bb.fj, %bb.fi
  %.16.i.i = phi ptr [ %.4366.ph.i.i, %bb.fi ], [ %i.ado, %bb.fj ]
  call fastcc void @edit_insert_unicode(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef %i.vy)
  br label %bb.fm

bb.fk:                                            ; preds = %bb.fh
  %i.adu = load ptr, ptr %i.aa, align 8, !tbaa !137
  %i.adv = getelementptr i8, ptr %i.adu, i64 33
  %.val152.i.i = load i8, ptr %i.adv, align 1, !tbaa !165, !range !130, !noundef !131
  %i.adw = trunc nuw i8 %.val152.i.i to i1
  br i1 %i.adw, label %.outer.outer.i.i.backedge, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.adx = load ptr, ptr @stderr, align 8, !tbaa !75
  %fputc.i276.i.i = call i32 @fputc(i32 7, ptr %i.adx) ; 0 uses
  %i.ady = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.adz = call i32 @fflush(ptr noundef %i.ady)   ; 0 uses
  br label %.outer.outer.i.i.backedge

bb.fm:                                            ; preds = %hsearch_push.exit275.i.i, %hsearch_push.exit273.i.i
  %.7369.i.i = phi ptr [ %.15.i.i, %hsearch_push.exit273.i.i ], [ %.16.i.i, %hsearch_push.exit275.i.i ] ; 3 uses
  %i.aea = load ptr, ptr %i.bv, align 8, !tbaa !167 ; 2 uses
  %i.aeb = load ptr, ptr %6, align 8, !tbaa !320  ; 3 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 16
  %i.aed = load i64, ptr %i.aec, align 8, !tbaa !46 ; 2 uses
  %i.aee = icmp slt i64 %i.aed, 0
  br i1 %i.aee, label %sbuf_string.exit280.i.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.aef = load ptr, ptr %i.aeb, align 8, !tbaa !49 ; 2 uses
  %i.aeg = icmp eq ptr %i.aef, null
  %spec.select.i.i278.i.i = select i1 %i.aeg, ptr @.str.3, ptr %i.aef
  br label %sbuf_string.exit280.i.i

sbuf_string.exit280.i.i:                          ; preds = %bb.fn, %bb.fm
  %.0.i.i279.i.i = phi ptr [ %spec.select.i.i278.i.i, %bb.fn ], [ null, %bb.fm ]
  %i.aeh = load i64, ptr %i.aea, align 8, !tbaa !172 ; 4 uses
  %i.aei = icmp slt i64 %.4355.ph.i.i.ph, %i.aeh
  br i1 %i.aei, label %history_get.exit.lr.ph.i281.i.i, label %.loopexit.i.i

history_get.exit.lr.ph.i281.i.i:                  ; preds = %sbuf_string.exit280.i.i
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aea, i64 16
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !174
  %i.ael = getelementptr [8 x i8], ptr %i.aek, i64 %i.aeh
  %i.aem = icmp sgt i64 %.4355.ph.i.i.ph, -1
  call void @llvm.assume(i1 %i.aem)
  br label %history_get.exit.i282.i.i

history_get.exit.i282.i.i:                        ; preds = %bb.fo, %history_get.exit.lr.ph.i281.i.i
  %.058.i283.i.i = phi i64 [ %.4355.ph.i.i.ph, %history_get.exit.lr.ph.i281.i.i ], [ %i.aer, %bb.fo ] ; 4 uses
  %i.aen = xor i64 %.058.i283.i.i, -1
  %i.aeo = getelementptr [8 x i8], ptr %i.ael, i64 %i.aen
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !61 ; 2 uses
  %i.aeq = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.aep, ptr noundef nonnull readonly dereferenceable(1) %.0.i.i279.i.i) #29 ; 2 uses
  %.not35.i284.i.i = icmp eq ptr %i.aeq, null
  br i1 %.not35.i284.i.i, label %bb.fo, label %.thread46.i285.i.i

bb.fo:                                            ; preds = %history_get.exit.i282.i.i
  %i.aer = add i64 %.058.i283.i.i, 1              ; 2 uses
  %exitcond.not.i289.i.i = icmp eq i64 %i.aer, %i.aeh
  br i1 %exitcond.not.i289.i.i, label %.loopexit.i.i, label %history_get.exit.i282.i.i, !llvm.loop !360

.thread46.i285.i.i:                               ; preds = %history_get.exit.i282.i.i
  %.not.i39.i286.i.i = icmp slt i64 %.058.i283.i.i, %i.aeh
  %i.aes = ptrtoint ptr %i.aep to i64
  %spec.select426.i.i = select i1 %.not.i39.i286.i.i, i64 %i.aes, i64 0
  %i.aet = ptrtoint ptr %i.aeq to i64
  %i.aeu = sub i64 %i.aet, %spec.select426.i.i
  %i.aev = icmp eq ptr %i.aeb, null
  %spec.select427.i.i = select i1 %i.aev, i64 0, i64 %i.aed
  br label %.outer.outer.i.i.backedge

.loopexit.i.i:                                    ; preds = %bb.fo, %sbuf_string.exit280.i.i
  %i.aew = load ptr, ptr %i.aa, align 8, !tbaa !137
  %i.aex = getelementptr i8, ptr %i.aew, i64 33
  %.val.i35.i = load i8, ptr %i.aex, align 1, !tbaa !165, !range !130, !noundef !131
  %i.aey = trunc nuw i8 %.val.i35.i to i1
  br i1 %i.aey, label %.outer.outer.i.i.backedge, label %bb.fp

bb.fp:                                            ; preds = %.loopexit.i.i
  %i.aez = load ptr, ptr @stderr, align 8, !tbaa !75
  %fputc.i293.i.i = call i32 @fputc(i32 7, ptr %i.aez) ; 0 uses
  %i.afa = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.afb = call i32 @fflush(ptr noundef %i.afa)   ; 0 uses
  br label %.outer.outer.i.i.backedge

.outer.outer.i.i.backedge:                        ; preds = %bb.fp, %.loopexit.i.i, %.thread46.i285.i.i, %bb.fl, %bb.fk, %sbuf_delete_char_before.exit.i.i.i, %hsearch_pop.exit.i.i, %bb.el
  %.4366.ph.ph.i.i.be = phi ptr [ null, %bb.el ], [ %i.yz, %sbuf_delete_char_before.exit.i.i.i ], [ %i.yz, %hsearch_pop.exit.i.i ], [ %.7369.i.i, %.loopexit.i.i ], [ %.4366.ph.i.i, %bb.fl ], [ %.7369.i.i, %bb.fp ], [ %.4366.ph.i.i, %bb.fk ], [ %.7369.i.i, %.thread46.i285.i.i ]
  %.4355.ph.ph.i.i.be = phi i64 [ %.4355.ph.i.i.ph, %bb.el ], [ %i.zb, %sbuf_delete_char_before.exit.i.i.i ], [ %i.zb, %hsearch_pop.exit.i.i ], [ %.4355.ph.i.i.ph, %.loopexit.i.i ], [ %.4355.ph.i.i.ph, %bb.fl ], [ %.4355.ph.i.i.ph, %bb.fp ], [ %.4355.ph.i.i.ph, %bb.fk ], [ %.058.i283.i.i, %.thread46.i285.i.i ]
  %.4347.ph.ph.i.i.be = phi i64 [ %.4347.ph.i.i.ph, %bb.el ], [ %i.zd, %sbuf_delete_char_before.exit.i.i.i ], [ %i.zd, %hsearch_pop.exit.i.i ], [ %.4347.ph.i.i.ph, %.loopexit.i.i ], [ %.4347.ph.i.i.ph, %bb.fl ], [ %.4347.ph.i.i.ph, %bb.fp ], [ %.4347.ph.i.i.ph, %bb.fk ], [ %i.aeu, %.thread46.i285.i.i ]
  %.5.ph.ph.i.i.be = phi i64 [ %.5.ph.ph.i.i, %bb.el ], [ %i.zf, %sbuf_delete_char_before.exit.i.i.i ], [ %i.zf, %hsearch_pop.exit.i.i ], [ %.5.ph.ph.i.i, %.loopexit.i.i ], [ %.5.ph.ph.i.i, %bb.fl ], [ %.5.ph.ph.i.i, %bb.fp ], [ %.5.ph.ph.i.i, %bb.fk ], [ %spec.select427.i.i, %.thread46.i285.i.i ]
  br label %.outer.outer.i.i

editor_restore.exit:                              ; preds = %sbuf_replace.exit.i, %bb.dz, %sbuf_len.exit.i.i203
  store i8 0, ptr %i.ca, align 1, !tbaa !335
  %.not5.i.i.i = icmp eq ptr %.4366.ph.i.i, null
  br i1 %.not5.i.i.i, label %hsearch_done.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %editor_restore.exit
  %i.afc = load ptr, ptr %0, align 8, !tbaa !87
  %i.afd = getelementptr i8, ptr %i.afc, i64 16
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fq, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %.4366.ph.i.i, %.lr.ph.i.i.i ], [ %i.afe, %bb.fq ] ; 2 uses
  %i.afe = load ptr, ptr %.06.i.i.i, align 8, !tbaa !359 ; 2 uses
end_hunk_0
