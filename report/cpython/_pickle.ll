inline.NumInlined: 778
inline.NumDeleted: 166
begin_hunk_0_@load:bb.a
  %i.zc = add nuw nsw i64 %i.zb, 6                ; 2 uses
  %i.zd = sub i64 9223372036854775807, %.val9.i.i322
  %i.ze = icmp ugt i64 %i.zc, %i.zd
  br i1 %i.ze, label %bb.hc, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.zf = add i64 %i.zc, %.val9.i.i322            ; 3 uses
  %i.zg = icmp ugt i64 %i.zf, 1152921504606846975
  br i1 %i.zg, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.zh = shl nuw nsw i64 %i.zf, 3
  %i.zi = call ptr @PyMem_Realloc(ptr noundef %i.za, i64 noundef %i.zh) #14 ; 3 uses
  %i.zj = icmp eq ptr %i.zi, null
  br i1 %i.zj, label %bb.hc, label %Pdata_grow.exit.i.i326

Pdata_grow.exit.i.i326:                           ; preds = %bb.hb
  store ptr %i.zi, ptr %i.yz, align 8, !tbaa !172
  store i64 %i.zf, ptr %i.yw, align 8, !tbaa !171
  %.val8.pre.i.i327 = load i64, ptr %i.yv, align 8, !tbaa !38
  br label %load_list.exit

bb.hc:                                            ; preds = %bb.hb, %bb.ha, %bb.gz
  %i.zk = call ptr @PyErr_NoMemory() #14          ; 0 uses
  br label %load_binint.exit.thread

load_list.exit:                                   ; preds = %.loopexit.i, %Pdata_grow.exit.i.i326
  %.val8.i.i324 = phi i64 [ %.val8.pre.i.i327, %Pdata_grow.exit.i.i326 ], [ %.val9.i.i322, %.loopexit.i ] ; 2 uses
  %i.zl = phi ptr [ %i.zi, %Pdata_grow.exit.i.i326 ], [ %i.za, %.loopexit.i ]
  %i.zm = getelementptr [8 x i8], ptr %i.zl, i64 %.val8.i.i324
  store ptr %i.xa, ptr %i.zm, align 8, !tbaa !40
  %i.zn = add i64 %.val8.i.i324, 1
  store i64 %i.zn, ptr %i.yv, align 8, !tbaa !38
  br label %.backedge.backedge

bb.hd:                                            ; preds = %bb.o
  %i.zo = call ptr @PyDict_New() #14              ; 2 uses
  %i.zp = icmp eq ptr %i.zo, null
  br i1 %i.zp, label %load_binint.exit.thread, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.zq = load ptr, ptr %i.w, align 8, !tbaa !173 ; 3 uses
  %i.zr = getelementptr i8, ptr %i.zq, i64 16     ; 3 uses
  %.val9.i.i329 = load i64, ptr %i.zr, align 8, !tbaa !38 ; 5 uses
  %i.zs = getelementptr i8, ptr %i.zq, i64 48     ; 2 uses
  %i.zt = load i64, ptr %i.zs, align 8, !tbaa !171
  %i.zu = icmp eq i64 %.val9.i.i329, %i.zt
  %i.zv = getelementptr i8, ptr %i.zq, i64 24     ; 2 uses
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !172 ; 2 uses
  br i1 %i.zu, label %bb.hf, label %load_empty_dict.exit

bb.hf:                                            ; preds = %bb.he
  %i.zx = lshr i64 %.val9.i.i329, 3
  %i.zy = add nuw nsw i64 %i.zx, 6                ; 2 uses
  %i.zz = sub i64 9223372036854775807, %.val9.i.i329
  %i.aaa = icmp ugt i64 %i.zy, %i.zz
  br i1 %i.aaa, label %bb.hi, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.aab = add i64 %i.zy, %.val9.i.i329           ; 3 uses
  %i.aac = icmp ugt i64 %i.aab, 1152921504606846975
  br i1 %i.aac, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.aad = shl nuw nsw i64 %i.aab, 3
  %i.aae = call ptr @PyMem_Realloc(ptr noundef %i.zw, i64 noundef %i.aad) #14 ; 3 uses
  %i.aaf = icmp eq ptr %i.aae, null
  br i1 %i.aaf, label %bb.hi, label %Pdata_grow.exit.i.i333

Pdata_grow.exit.i.i333:                           ; preds = %bb.hh
  store ptr %i.aae, ptr %i.zv, align 8, !tbaa !172
  store i64 %i.aab, ptr %i.zs, align 8, !tbaa !171
  %.val8.pre.i.i334 = load i64, ptr %i.zr, align 8, !tbaa !38
  br label %load_empty_dict.exit

bb.hi:                                            ; preds = %bb.hh, %bb.hg, %bb.hf
  %i.aag = call ptr @PyErr_NoMemory() #14         ; 0 uses
  br label %load_binint.exit.thread

load_empty_dict.exit:                             ; preds = %bb.he, %Pdata_grow.exit.i.i333
  %.val8.i.i331 = phi i64 [ %.val8.pre.i.i334, %Pdata_grow.exit.i.i333 ], [ %.val9.i.i329, %bb.he ] ; 2 uses
  %i.aah = phi ptr [ %i.aae, %Pdata_grow.exit.i.i333 ], [ %i.zw, %bb.he ]
  %i.aai = getelementptr [8 x i8], ptr %i.aah, i64 %.val8.i.i331
  store ptr %i.zo, ptr %i.aai, align 8, !tbaa !40
  %i.aaj = add i64 %.val8.i.i331, 1
  store i64 %i.aaj, ptr %i.zr, align 8, !tbaa !38
  br label %.backedge.backedge

bb.hj:                                            ; preds = %bb.o
  %i.aak = load i64, ptr %i.v, align 8, !tbaa !178 ; 2 uses
  %i.aal = icmp slt i64 %i.aak, 1
  br i1 %i.aal, label %marker.exit.thread.i347, label %bb.hk

marker.exit.thread.i347:                          ; preds = %bb.hj
  %i.aam = load ptr, ptr %i.av, align 8, !tbaa !21
  call void @PyErr_SetString(ptr noundef %i.aam, ptr noundef nonnull @.str.108) #14
  br label %load_binint.exit.thread

bb.hk:                                            ; preds = %bb.hj
  %i.aan = load ptr, ptr %i.aw, align 8, !tbaa !181
  %i.aao = add nsw i64 %i.aak, -1                 ; 4 uses
  store i64 %i.aao, ptr %i.v, align 8, !tbaa !178
  %i.aap = getelementptr [8 x i8], ptr %i.aan, i64 %i.aao ; 2 uses
  %i.aaq = load i64, ptr %i.aap, align 8, !tbaa !60 ; 6 uses
  %i.aar = icmp ne i64 %i.aao, 0
  %i.aas = zext i1 %i.aar to i32
  %i.aat = load ptr, ptr %i.w, align 8, !tbaa !173 ; 3 uses
  %i.aau = getelementptr i8, ptr %i.aat, i64 32
  store i32 %i.aas, ptr %i.aau, align 8, !tbaa !168
  %.not.i29.i = icmp eq i64 %i.aao, 0
  br i1 %.not.i29.i, label %marker.exit.i335, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.aav = getelementptr i8, ptr %i.aap, i64 -8
  %i.aaw = load i64, ptr %i.aav, align 8, !tbaa !60
  br label %marker.exit.i335

marker.exit.i335:                                 ; preds = %bb.hl, %bb.hk
  %i.aax = phi i64 [ %i.aaw, %bb.hl ], [ 0, %bb.hk ]
  %i.aay = getelementptr i8, ptr %i.aat, i64 40
  store i64 %i.aax, ptr %i.aay, align 8, !tbaa !170
  %i.aaz = icmp slt i64 %i.aaq, 0
  br i1 %i.aaz, label %load_binint.exit.thread, label %bb.hm

bb.hm:                                            ; preds = %marker.exit.i335
  %i.aba = getelementptr i8, ptr %i.aat, i64 16
  %.val.i336 = load i64, ptr %i.aba, align 8, !tbaa !38 ; 3 uses
  %i.abb = call ptr @PyDict_New() #14             ; 9 uses
  %i.abc = icmp eq ptr %i.abb, null
  br i1 %i.abc, label %load_binint.exit.thread, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.abd = sub i64 %.val.i336, %i.aaq
  %i.abe = and i64 %i.abd, 1
  %.not.i337 = icmp eq i64 %i.abe, 0
  br i1 %.not.i337, label %bb.hr, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.abf = load ptr, ptr %i.av, align 8, !tbaa !21
  call void @PyErr_SetString(ptr noundef %i.abf, ptr noundef nonnull @.str.109) #14
  %i.abg = load i32, ptr %i.abb, align 8, !tbaa !46 ; 2 uses
  %.not.i26.i = icmp sgt i32 %i.abg, -1
  br i1 %.not.i26.i, label %bb.hp, label %load_binint.exit.thread

bb.hp:                                            ; preds = %bb.ho
  %i.abh = add nsw i32 %i.abg, -1                 ; 2 uses
  store i32 %i.abh, ptr %i.abb, align 8, !tbaa !46
  %i.abi = icmp eq i32 %i.abh, 0
  br i1 %i.abi, label %bb.hq, label %load_binint.exit.thread

bb.hq:                                            ; preds = %bb.hp
  call void @_Py_Dealloc(ptr noundef nonnull %i.abb) #14
  br label %load_binint.exit.thread

bb.hr:                                            ; preds = %bb.hn
  %i.abj = add nuw i64 %i.aaq, 1                  ; 2 uses
  %i.abk = icmp slt i64 %i.abj, %.val.i336
  br i1 %i.abk, label %.lr.ph.i, label %._crit_edge.i338

bb.hs:                                            ; preds = %.lr.ph.i
  %i.abl = add i64 %.035.i, 2                     ; 2 uses
  %i.abm = icmp slt i64 %i.abl, %.val.i336
  br i1 %i.abm, label %.lr.ph.i, label %._crit_edge.i338, !llvm.loop !188

.lr.ph.i:                                         ; preds = %bb.hr, %bb.hs
  %.035.i = phi i64 [ %i.abl, %bb.hs ], [ %i.abj, %bb.hr ] ; 2 uses
  %i.abn = load ptr, ptr %i.w, align 8, !tbaa !173
  %i.abo = getelementptr i8, ptr %i.abn, i64 24
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !172
  %i.abq = getelementptr [8 x i8], ptr %i.abp, i64 %.035.i ; 2 uses
  %i.abr = getelementptr i8, ptr %i.abq, i64 -8
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !40
  %i.abt = load ptr, ptr %i.abq, align 8, !tbaa !40
  %i.abu = call i32 @PyDict_SetItem(ptr noundef nonnull %i.abb, ptr noundef %i.abs, ptr noundef %i.abt) #14
  %i.abv = icmp slt i32 %i.abu, 0
  br i1 %i.abv, label %bb.ht, label %bb.hs

bb.ht:                                            ; preds = %.lr.ph.i
  %i.abw = load i32, ptr %i.abb, align 8, !tbaa !46 ; 2 uses
  %.not.i.i346 = icmp sgt i32 %i.abw, -1
  br i1 %.not.i.i346, label %bb.hu, label %load_binint.exit.thread

bb.hu:                                            ; preds = %bb.ht
  %i.abx = add nsw i32 %i.abw, -1                 ; 2 uses
  store i32 %i.abx, ptr %i.abb, align 8, !tbaa !46
  %i.aby = icmp eq i32 %i.abx, 0
  br i1 %i.aby, label %bb.hv, label %load_binint.exit.thread

bb.hv:                                            ; preds = %bb.hu
  call void @_Py_Dealloc(ptr noundef nonnull %i.abb) #14
  br label %load_binint.exit.thread

._crit_edge.i338:                                 ; preds = %bb.hs, %bb.hr
  %i.abz = load ptr, ptr %i.w, align 8, !tbaa !173 ; 3 uses
  %i.aca = getelementptr i8, ptr %i.abz, i64 16   ; 2 uses
  %.val.i.i339 = load i64, ptr %i.aca, align 8, !tbaa !38 ; 3 uses
  %.not.i30.i = icmp slt i64 %i.aaq, %.val.i.i339
  br i1 %.not.i30.i, label %.preheader.i.i345, label %Pdata_clear.exit.i

.preheader.i.i345:                                ; preds = %._crit_edge.i338
  %i.acb = getelementptr i8, ptr %i.abz, i64 24
  br label %bb.hw

bb.hw:                                            ; preds = %Py_DECREF.exit.i.i, %.preheader.i.i345
  %.in.i = phi i64 [ %.val.i.i339, %.preheader.i.i345 ], [ %2, %Py_DECREF.exit.i.i ]
  %2 = add nsw i64 %.in.i, -1                     ; 3 uses
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !172
  %i.acd = getelementptr [8 x i8], ptr %i.acc, i64 %2 ; 2 uses
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !40 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.ace, null
  br i1 %.not18.i.i, label %Py_DECREF.exit.i.i, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  store ptr null, ptr %i.acd, align 8, !tbaa !40
  %i.acf = load i32, ptr %i.ace, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.acf, -1
  br i1 %.not.i.i.i, label %bb.hy, label %Py_DECREF.exit.i.i

bb.hy:                                            ; preds = %bb.hx
  %i.acg = add nsw i32 %i.acf, -1                 ; 2 uses
  store i32 %i.acg, ptr %i.ace, align 8, !tbaa !46
  %i.ach = icmp eq i32 %i.acg, 0
  br i1 %i.ach, label %bb.hz, label %Py_DECREF.exit.i.i

bb.hz:                                            ; preds = %bb.hy
  call void @_Py_Dealloc(ptr noundef nonnull %i.ace) #14
  br label %Py_DECREF.exit.i.i

Py_DECREF.exit.i.i:                               ; preds = %bb.hz, %bb.hy, %bb.hx, %bb.hw
  %.not17.i.not.i = icmp sgt i64 %2, %i.aaq
  br i1 %.not17.i.not.i, label %bb.hw, label %._crit_edge.i.i, !llvm.loop !180

._crit_edge.i.i:                                  ; preds = %Py_DECREF.exit.i.i
  store i64 %i.aaq, ptr %i.aca, align 8, !tbaa !38
  %.pre.i = load ptr, ptr %i.w, align 8, !tbaa !173 ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre.i, i64 16
  %.val9.i.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !38
  br label %Pdata_clear.exit.i

Pdata_clear.exit.i:                               ; preds = %._crit_edge.i.i, %._crit_edge.i338
  %.val9.i.i340 = phi i64 [ %.val.i.i339, %._crit_edge.i338 ], [ %.val9.i.pre.i, %._crit_edge.i.i ] ; 5 uses
  %i.aci = phi ptr [ %i.abz, %._crit_edge.i338 ], [ %.pre.i, %._crit_edge.i.i ] ; 3 uses
  %i.acj = getelementptr i8, ptr %i.aci, i64 16   ; 2 uses
  %i.ack = getelementptr i8, ptr %i.aci, i64 48   ; 2 uses
  %i.acl = load i64, ptr %i.ack, align 8, !tbaa !171
  %i.acm = icmp eq i64 %.val9.i.i340, %i.acl
  %i.acn = getelementptr i8, ptr %i.aci, i64 24   ; 2 uses
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !172 ; 2 uses
  br i1 %i.acm, label %bb.ia, label %load_dict.exit

bb.ia:                                            ; preds = %Pdata_clear.exit.i
  %i.acp = lshr i64 %.val9.i.i340, 3
  %i.acq = add nuw nsw i64 %i.acp, 6              ; 2 uses
  %i.acr = sub i64 9223372036854775807, %.val9.i.i340
  %i.acs = icmp ugt i64 %i.acq, %i.acr
  br i1 %i.acs, label %bb.id, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.act = add i64 %i.acq, %.val9.i.i340          ; 3 uses
  %i.acu = icmp ugt i64 %i.act, 1152921504606846975
  br i1 %i.acu, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.acv = shl nuw nsw i64 %i.act, 3
  %i.acw = call ptr @PyMem_Realloc(ptr noundef %i.aco, i64 noundef %i.acv) #14 ; 3 uses
  %i.acx = icmp eq ptr %i.acw, null
  br i1 %i.acx, label %bb.id, label %Pdata_grow.exit.i.i343

Pdata_grow.exit.i.i343:                           ; preds = %bb.ic
  store ptr %i.acw, ptr %i.acn, align 8, !tbaa !172
  store i64 %i.act, ptr %i.ack, align 8, !tbaa !171
  %.val8.pre.i.i344 = load i64, ptr %i.acj, align 8, !tbaa !38
  br label %load_dict.exit

bb.id:                                            ; preds = %bb.ic, %bb.ib, %bb.ia
  %i.acy = call ptr @PyErr_NoMemory() #14         ; 0 uses
  br label %load_binint.exit.thread

load_dict.exit:                                   ; preds = %Pdata_clear.exit.i, %Pdata_grow.exit.i.i343
  %.val8.i.i342 = phi i64 [ %.val8.pre.i.i344, %Pdata_grow.exit.i.i343 ], [ %.val9.i.i340, %Pdata_clear.exit.i ] ; 2 uses
  %i.acz = phi ptr [ %i.acw, %Pdata_grow.exit.i.i343 ], [ %i.aco, %Pdata_clear.exit.i ]
  %i.ada = getelementptr [8 x i8], ptr %i.acz, i64 %.val8.i.i342
  store ptr %i.abb, ptr %i.ada, align 8, !tbaa !40
  %i.adb = add i64 %.val8.i.i342, 1
  store i64 %i.adb, ptr %i.acj, align 8, !tbaa !38
  br label %.backedge.backedge

bb.ie:                                            ; preds = %bb.o
  %i.adc = call ptr @PySet_New(ptr noundef null) #14 ; 2 uses
  %i.add = icmp eq ptr %i.adc, null
  br i1 %i.add, label %load_binint.exit.thread, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.ade = load ptr, ptr %i.w, align 8, !tbaa !173 ; 3 uses
  %i.adf = getelementptr i8, ptr %i.ade, i64 16   ; 3 uses
  %.val9.i.i348 = load i64, ptr %i.adf, align 8, !tbaa !38 ; 5 uses
  %i.adg = getelementptr i8, ptr %i.ade, i64 48   ; 2 uses
  %i.adh = load i64, ptr %i.adg, align 8, !tbaa !171
  %i.adi = icmp eq i64 %.val9.i.i348, %i.adh
  %i.adj = getelementptr i8, ptr %i.ade, i64 24   ; 2 uses
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !172 ; 2 uses
  br i1 %i.adi, label %bb.ig, label %load_empty_set.exit

bb.ig:                                            ; preds = %bb.if
  %i.adl = lshr i64 %.val9.i.i348, 3
  %i.adm = add nuw nsw i64 %i.adl, 6              ; 2 uses
  %i.adn = sub i64 9223372036854775807, %.val9.i.i348
  %i.ado = icmp ugt i64 %i.adm, %i.adn
  br i1 %i.ado, label %bb.ij, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.adp = add i64 %i.adm, %.val9.i.i348          ; 3 uses
  %i.adq = icmp ugt i64 %i.adp, 1152921504606846975
  br i1 %i.adq, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.adr = shl nuw nsw i64 %i.adp, 3
  %i.ads = call ptr @PyMem_Realloc(ptr noundef %i.adk, i64 noundef %i.adr) #14 ; 3 uses
  %i.adt = icmp eq ptr %i.ads, null
  br i1 %i.adt, label %bb.ij, label %Pdata_grow.exit.i.i352

Pdata_grow.exit.i.i352:                           ; preds = %bb.ii
  store ptr %i.ads, ptr %i.adj, align 8, !tbaa !172
  store i64 %i.adp, ptr %i.adg, align 8, !tbaa !171
  %.val8.pre.i.i353 = load i64, ptr %i.adf, align 8, !tbaa !38
  br label %load_empty_set.exit

bb.ij:                                            ; preds = %bb.ii, %bb.ih, %bb.ig
  %i.adu = call ptr @PyErr_NoMemory() #14         ; 0 uses
  br label %load_binint.exit.thread

load_empty_set.exit:                              ; preds = %bb.if, %Pdata_grow.exit.i.i352
  %.val8.i.i350 = phi i64 [ %.val8.pre.i.i353, %Pdata_grow.exit.i.i352 ], [ %.val9.i.i348, %bb.if ] ; 2 uses
  %i.adv = phi ptr [ %i.ads, %Pdata_grow.exit.i.i352 ], [ %i.adk, %bb.if ]
  %i.adw = getelementptr [8 x i8], ptr %i.adv, i64 %.val8.i.i350
  store ptr %i.adc, ptr %i.adw, align 8, !tbaa !40
  %i.adx = add i64 %.val8.i.i350, 1
  store i64 %i.adx, ptr %i.adf, align 8, !tbaa !38
  br label %.backedge.backedge

bb.ik:                                            ; preds = %bb.o
  %i.ady = load i64, ptr %i.v, align 8, !tbaa !178 ; 2 uses
  %i.adz = icmp slt i64 %i.ady, 1
  br i1 %i.adz, label %marker.exit.thread.i372, label %bb.il

marker.exit.thread.i372:                          ; preds = %bb.ik
  %i.aea = load ptr, ptr %i.av, align 8, !tbaa !21
  call void @PyErr_SetString(ptr noundef %i.aea, ptr noundef nonnull @.str.108) #14
  br label %load_binint.exit.thread

bb.il:                                            ; preds = %bb.ik
  %i.aeb = load ptr, ptr %i.aw, align 8, !tbaa !181
  %i.aec = add nsw i64 %i.ady, -1                 ; 4 uses
  store i64 %i.aec, ptr %i.v, align 8, !tbaa !178
  %i.aed = getelementptr [8 x i8], ptr %i.aeb, i64 %i.aec ; 2 uses
  %i.aee = load i64, ptr %i.aed, align 8, !tbaa !60 ; 18 uses
  %i.aef = icmp ne i64 %i.aec, 0                  ; 2 uses
  %i.aeg = zext i1 %i.aef to i32
  %i.aeh = load ptr, ptr %i.w, align 8, !tbaa !173 ; 5 uses
  %i.aei = getelementptr i8, ptr %i.aeh, i64 32
  store i32 %i.aeg, ptr %i.aei, align 8, !tbaa !168
  %.not.i69.i = icmp eq i64 %i.aec, 0
  br i1 %.not.i69.i, label %marker.exit.i354, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.aej = getelementptr i8, ptr %i.aed, i64 -8
  %i.aek = load i64, ptr %i.aej, align 8, !tbaa !60
  br label %marker.exit.i354

marker.exit.i354:                                 ; preds = %bb.im, %bb.il
  %i.ael = phi i64 [ %i.aek, %bb.im ], [ 0, %bb.il ] ; 2 uses
  %i.aem = getelementptr i8, ptr %i.aeh, i64 40
  store i64 %i.ael, ptr %i.aem, align 8, !tbaa !170
  %i.aen = icmp slt i64 %i.aee, 0
  br i1 %i.aen, label %load_binint.exit.thread, label %bb.in

bb.in:                                            ; preds = %marker.exit.i354
  %i.aeo = getelementptr i8, ptr %i.aeh, i64 16
  %.val66.i = load i64, ptr %i.aeo, align 8, !tbaa !38 ; 4 uses
  %i.aep = icmp sle i64 %i.aee, %.val66.i
  %.not.i355 = icmp sgt i64 %i.aee, %i.ael
  %or.cond.i = select i1 %i.aep, i1 %.not.i355, i1 false
  br i1 %or.cond.i, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  %.val67.i = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.aeq = select i1 %i.aef, ptr @.str.102, ptr @.str.103
  call void @PyErr_SetString(ptr noundef %.val67.i, ptr noundef nonnull %i.aeq) #14
  br label %load_binint.exit.thread

bb.ip:                                            ; preds = %bb.in
  %i.aer = getelementptr i8, ptr %i.aeh, i64 24
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !172
  %i.aet = getelementptr [8 x i8], ptr %i.aes, i64 %i.aee
  %i.aeu = getelementptr i8, ptr %i.aet, i64 -8
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !40 ; 3 uses
  %i.aew = getelementptr i8, ptr %i.aev, i64 8
  %.val65.i = load ptr, ptr %i.aew, align 8, !tbaa !52 ; 2 uses
  %.not81.i = icmp eq ptr %.val65.i, @PySet_Type
  br i1 %.not81.i, label %.thread.i, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.aex = call i32 @PyType_IsSubtype(ptr noundef %.val65.i, ptr noundef nonnull @PySet_Type) #14
  %.not54.i = icmp eq i32 %i.aex, 0
  br i1 %.not54.i, label %bb.iv, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %.pre86.i = load ptr, ptr %i.w, align 8, !tbaa !173 ; 4 uses
  %.phi.trans.insert.i356 = getelementptr i8, ptr %.pre86.i, i64 40
  %.pre87.i = load i64, ptr %.phi.trans.insert.i356, align 8, !tbaa !170
  %i.aey = icmp slt i64 %i.aee, %.pre87.i
  br i1 %i.aey, label %bb.is, label %..thread.i_crit_edge

..thread.i_crit_edge:                             ; preds = %bb.ir
  %.phi.trans.insert = getelementptr i8, ptr %.pre86.i, i64 16
  %.val.i.i357.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !38
  br label %.thread.i

bb.is:                                            ; preds = %bb.ir
  %.val24.i.i = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.aez = getelementptr i8, ptr %.pre86.i, i64 32
  %.val25.i.i = load i32, ptr %i.aez, align 8, !tbaa !168
  %.not.i.i.i362 = icmp eq i32 %.val25.i.i, 0
  %i.afa = select i1 %.not.i.i.i362, ptr @.str.103, ptr @.str.102
  call void @PyErr_SetString(ptr noundef %.val24.i.i, ptr noundef nonnull %i.afa) #14
  br label %load_binint.exit.thread

.thread.i:                                        ; preds = %..thread.i_crit_edge, %bb.ip
  %.val.i.i357 = phi i64 [ %.val.i.i357.pre, %..thread.i_crit_edge ], [ %.val66.i, %bb.ip ] ; 3 uses
  %i.afb = phi ptr [ %.pre86.i, %..thread.i_crit_edge ], [ %i.aeh, %bb.ip ] ; 2 uses
  %i.afc = getelementptr i8, ptr %i.afb, i64 16
  %i.afd = sub i64 %.val.i.i357, %i.aee           ; 6 uses
  %i.afe = call ptr @PyTuple_New(i64 noundef %i.afd) #14 ; 7 uses
  %i.aff = ptrtoaddr ptr %i.afe to i64
  %i.afg = icmp eq ptr %i.afe, null
  br i1 %i.afg, label %load_binint.exit.thread, label %.preheader.i.i358

.preheader.i.i358:                                ; preds = %.thread.i
  %i.afh = icmp sgt i64 %i.afd, 0
  br i1 %i.afh, label %.lr.ph.i.i360, label %.loopexit.i359

.lr.ph.i.i360:                                    ; preds = %.preheader.i.i358
  %i.afi = getelementptr i8, ptr %i.afb, i64 24
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !172 ; 7 uses
  %i.afk = getelementptr i8, ptr %i.afe, i64 32   ; 6 uses
  %min.iters.check1985 = icmp ult i64 %i.afd, 4
  br i1 %min.iters.check1985, label %scalar.ph1984.preheader, label %vector.memcheck1982

vector.memcheck1982:                              ; preds = %.lr.ph.i.i360
  %i.afl = ptrtoaddr ptr %i.afj to i64
  %i.afm = add i64 %i.aff, 32
  %i.afn = shl i64 %i.aee, 3
  %i.afo = add i64 %i.afn, %i.afl
  %i.afp = sub i64 %i.afm, %i.afo
  %diff.check1983 = icmp ult i64 %i.afp, 32
  br i1 %diff.check1983, label %scalar.ph1984.preheader, label %vector.ph1986

vector.ph1986:                                    ; preds = %vector.memcheck1982
  %n.vec1988 = and i64 %i.afd, 9223372036854775804 ; 4 uses
  %i.afq = add nuw i64 %i.aee, %n.vec1988
  %i.afr = getelementptr [8 x i8], ptr %i.afj, i64 %i.aee
  br label %vector.body1989

vector.body1989:                                  ; preds = %vector.body1989, %vector.ph1986
  %index1990 = phi i64 [ 0, %vector.ph1986 ], [ %index.next1993, %vector.body1989 ] ; 3 uses
  %i.afs = getelementptr [8 x i8], ptr %i.afr, i64 %index1990 ; 2 uses
  %i.aft = getelementptr i8, ptr %i.afs, i64 16
  %wide.load1991 = load <2 x ptr>, ptr %i.afs, align 8, !tbaa !40
  %wide.load1992 = load <2 x ptr>, ptr %i.aft, align 8, !tbaa !40
  %i.afu = getelementptr [8 x i8], ptr %i.afk, i64 %index1990 ; 2 uses
  %i.afv = getelementptr i8, ptr %i.afu, i64 16
  store <2 x ptr> %wide.load1991, ptr %i.afu, align 8, !tbaa !40
  store <2 x ptr> %wide.load1992, ptr %i.afv, align 8, !tbaa !40
  %index.next1993 = add nuw i64 %index1990, 4     ; 2 uses
  %i.afw = icmp eq i64 %index.next1993, %n.vec1988
  br i1 %i.afw, label %middle.block1994, label %vector.body1989, !llvm.loop !189

middle.block1994:                                 ; preds = %vector.body1989
  %cmp.n1995 = icmp eq i64 %i.afd, %n.vec1988
  br i1 %cmp.n1995, label %.loopexit.i359, label %scalar.ph1984.preheader

scalar.ph1984.preheader:                          ; preds = %vector.memcheck1982, %.lr.ph.i.i360, %middle.block1994
  %.027.i.i.ph = phi i64 [ 0, %vector.memcheck1982 ], [ 0, %.lr.ph.i.i360 ], [ %n.vec1988, %middle.block1994 ] ; 3 uses
  %.02026.i.i.ph = phi i64 [ %i.aee, %vector.memcheck1982 ], [ %i.aee, %.lr.ph.i.i360 ], [ %i.afq, %middle.block1994 ] ; 2 uses
  %i.afx = sub i64 %.val.i.i357, %i.aee
  %xtraiter2249 = and i64 %i.afx, 3               ; 2 uses
  %lcmp.mod2250.not = icmp eq i64 %xtraiter2249, 0
  br i1 %lcmp.mod2250.not, label %scalar.ph1984.prol.loopexit, label %scalar.ph1984.prol

scalar.ph1984.prol:                               ; preds = %scalar.ph1984.preheader, %scalar.ph1984.prol
  %.027.i.i.prol = phi i64 [ %i.agc, %scalar.ph1984.prol ], [ %.027.i.i.ph, %scalar.ph1984.preheader ] ; 2 uses
  %.02026.i.i.prol = phi i64 [ %i.agb, %scalar.ph1984.prol ], [ %.02026.i.i.ph, %scalar.ph1984.preheader ] ; 2 uses
  %prol.iter2251 = phi i64 [ %prol.iter2251.next, %scalar.ph1984.prol ], [ 0, %scalar.ph1984.preheader ]
  %i.afy = getelementptr [8 x i8], ptr %i.afj, i64 %.02026.i.i.prol
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !40
  %i.aga = getelementptr [8 x i8], ptr %i.afk, i64 %.027.i.i.prol
  store ptr %i.afz, ptr %i.aga, align 8, !tbaa !40
  %i.agb = add i64 %.02026.i.i.prol, 1            ; 2 uses
  %i.agc = add nuw nsw i64 %.027.i.i.prol, 1      ; 2 uses
  %prol.iter2251.next = add i64 %prol.iter2251, 1 ; 2 uses
  %prol.iter2251.cmp.not = icmp eq i64 %prol.iter2251.next, %xtraiter2249
  br i1 %prol.iter2251.cmp.not, label %scalar.ph1984.prol.loopexit, label %scalar.ph1984.prol, !llvm.loop !190

scalar.ph1984.prol.loopexit:                      ; preds = %scalar.ph1984.prol, %scalar.ph1984.preheader
  %.027.i.i.unr = phi i64 [ %.027.i.i.ph, %scalar.ph1984.preheader ], [ %i.agc, %scalar.ph1984.prol ]
  %.02026.i.i.unr = phi i64 [ %.02026.i.i.ph, %scalar.ph1984.preheader ], [ %i.agb, %scalar.ph1984.prol ]
  %i.agd = sub i64 %.027.i.i.ph, %.val.i.i357
  %i.age = add i64 %i.agd, %i.aee
  %i.agf = icmp ugt i64 %i.age, -4
  br i1 %i.agf, label %.loopexit.i359, label %scalar.ph1984

scalar.ph1984:                                    ; preds = %scalar.ph1984.prol.loopexit, %scalar.ph1984
  %.027.i.i = phi i64 [ %i.agz, %scalar.ph1984 ], [ %.027.i.i.unr, %scalar.ph1984.prol.loopexit ] ; 5 uses
  %.02026.i.i = phi i64 [ %i.agy, %scalar.ph1984 ], [ %.02026.i.i.unr, %scalar.ph1984.prol.loopexit ] ; 5 uses
  %i.agg = getelementptr [8 x i8], ptr %i.afj, i64 %.02026.i.i
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !40
  %i.agi = getelementptr [8 x i8], ptr %i.afk, i64 %.027.i.i
  store ptr %i.agh, ptr %i.agi, align 8, !tbaa !40
  %i.agj = getelementptr [8 x i8], ptr %i.afj, i64 %.02026.i.i
  %i.agk = getelementptr i8, ptr %i.agj, i64 8
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !40
  %i.agm = getelementptr [8 x i8], ptr %i.afk, i64 %.027.i.i
  %i.agn = getelementptr i8, ptr %i.agm, i64 8
  store ptr %i.agl, ptr %i.agn, align 8, !tbaa !40
  %i.ago = getelementptr [8 x i8], ptr %i.afj, i64 %.02026.i.i
  %i.agp = getelementptr i8, ptr %i.ago, i64 16
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !40
  %i.agr = getelementptr [8 x i8], ptr %i.afk, i64 %.027.i.i
  %i.ags = getelementptr i8, ptr %i.agr, i64 16
  store ptr %i.agq, ptr %i.ags, align 8, !tbaa !40
  %i.agt = getelementptr [8 x i8], ptr %i.afj, i64 %.02026.i.i
  %i.agu = getelementptr i8, ptr %i.agt, i64 24
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !40
  %i.agw = getelementptr [8 x i8], ptr %i.afk, i64 %.027.i.i
  %i.agx = getelementptr i8, ptr %i.agw, i64 24
  store ptr %i.agv, ptr %i.agx, align 8, !tbaa !40
  %i.agy = add i64 %.02026.i.i, 4
  %i.agz = add nuw nsw i64 %.027.i.i, 4           ; 2 uses
  %exitcond.not.i.i361.3 = icmp eq i64 %i.agz, %i.afd
  br i1 %exitcond.not.i.i361.3, label %.loopexit.i359, label %scalar.ph1984, !llvm.loop !191

.loopexit.i359:                                   ; preds = %scalar.ph1984.prol.loopexit, %scalar.ph1984, %middle.block1994, %.preheader.i.i358
  store i64 %i.aee, ptr %i.afc, align 8, !tbaa !38
  %i.aha = call i32 @_PySet_Update(ptr noundef nonnull %i.aev, ptr noundef nonnull %i.afe) #14
  %i.ahb = load i32, ptr %i.afe, align 8, !tbaa !46 ; 2 uses
  %.not.i60.i = icmp sgt i32 %i.ahb, -1
  br i1 %.not.i60.i, label %bb.it, label %load_additems.exit

bb.it:                                            ; preds = %.loopexit.i359
  %i.ahc = add nsw i32 %i.ahb, -1                 ; 2 uses
  store i32 %i.ahc, ptr %i.afe, align 8, !tbaa !46
  %i.ahd = icmp eq i32 %i.ahc, 0
  br i1 %i.ahd, label %bb.iu, label %load_additems.exit

bb.iu:                                            ; preds = %bb.it
  call void @_Py_Dealloc(ptr noundef nonnull %i.afe) #14
  br label %load_additems.exit

bb.iv:                                            ; preds = %bb.iq
  %i.ahe = call ptr @PyObject_GetAttr(ptr noundef nonnull %i.aev, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 74160)) #14 ; 8 uses
  %i.ahf = icmp eq ptr %i.ahe, null
  br i1 %i.ahf, label %load_binint.exit.thread, label %.preheader.i363

.preheader.i363:                                  ; preds = %bb.iv
  %i.ahg = icmp samesign ult i64 %i.aee, %.val66.i
  br i1 %i.ahg, label %.lr.ph.i366, label %._crit_edge.i364

.lr.ph.i366:                                      ; preds = %.preheader.i363, %Py_DECREF.exit59.thread.i
  %.04583.i = phi i64 [ %i.ail, %Py_DECREF.exit59.thread.i ], [ %i.aee, %.preheader.i363 ] ; 4 uses
  %i.ahh = load ptr, ptr %i.w, align 8, !tbaa !173
  %i.ahi = getelementptr i8, ptr %i.ahh, i64 24
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !172
  %i.ahk = getelementptr [8 x i8], ptr %i.ahj, i64 %.04583.i
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !40 ; 4 uses
  %i.ahm = call ptr @PyObject_CallOneArg(ptr noundef nonnull %i.ahe, ptr noundef %i.ahl) #14 ; 4 uses
  %i.ahn = load i32, ptr %i.ahl, align 8, !tbaa !46 ; 2 uses
  %.not.i.i71.i = icmp sgt i32 %i.ahn, -1
  br i1 %.not.i.i71.i, label %bb.iw, label %_Pickle_FastCall.exit.i

bb.iw:                                            ; preds = %.lr.ph.i366
  %i.aho = add nsw i32 %i.ahn, -1                 ; 2 uses
  store i32 %i.aho, ptr %i.ahl, align 8, !tbaa !46
  %i.ahp = icmp eq i32 %i.aho, 0
  br i1 %i.ahp, label %bb.ix, label %_Pickle_FastCall.exit.i

bb.ix:                                            ; preds = %bb.iw
  call void @_Py_Dealloc(ptr noundef nonnull %i.ahl) #14
  br label %_Pickle_FastCall.exit.i

_Pickle_FastCall.exit.i:                          ; preds = %bb.ix, %bb.iw, %.lr.ph.i366
  %.not55.i = icmp eq ptr %i.ahm, null
  br i1 %.not55.i, label %bb.iy, label %bb.jf

bb.iy:                                            ; preds = %_Pickle_FastCall.exit.i
  %i.ahq = load ptr, ptr %i.w, align 8, !tbaa !173 ; 3 uses
  %i.ahr = add nuw nsw i64 %.04583.i, 1           ; 2 uses
  %i.ahs = getelementptr i8, ptr %i.ahq, i64 16   ; 2 uses
  %.val.i72.i = load i64, ptr %i.ahs, align 8, !tbaa !38 ; 2 uses
  %.not.i73.i = icmp slt i64 %i.ahr, %.val.i72.i
  br i1 %.not.i73.i, label %.preheader.i74.i, label %Pdata_clear.exit.i367

.preheader.i74.i:                                 ; preds = %bb.iy
  %i.aht = add nsw i64 %.val.i72.i, -1
  %i.ahu = getelementptr i8, ptr %i.ahq, i64 24
  br label %bb.iz

bb.iz:                                            ; preds = %Py_DECREF.exit.i.i369, %.preheader.i74.i
  %i.ahv = phi i64 [ %i.aht, %.preheader.i74.i ], [ %i.aic, %Py_DECREF.exit.i.i369 ] ; 2 uses
  %i.ahw = load ptr, ptr %i.ahu, align 8, !tbaa !172
  %i.ahx = getelementptr [8 x i8], ptr %i.ahw, i64 %i.ahv ; 2 uses
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !40 ; 4 uses
  %.not18.i.i368 = icmp eq ptr %i.ahy, null
  br i1 %.not18.i.i368, label %Py_DECREF.exit.i.i369, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  store ptr null, ptr %i.ahx, align 8, !tbaa !40
  %i.ahz = load i32, ptr %i.ahy, align 8, !tbaa !46 ; 2 uses
  %.not.i.i76.i = icmp sgt i32 %i.ahz, -1
  br i1 %.not.i.i76.i, label %bb.jb, label %Py_DECREF.exit.i.i369

bb.jb:                                            ; preds = %bb.ja
  %i.aia = add nsw i32 %i.ahz, -1                 ; 2 uses
  store i32 %i.aia, ptr %i.ahy, align 8, !tbaa !46
  %i.aib = icmp eq i32 %i.aia, 0
  br i1 %i.aib, label %bb.jc, label %Py_DECREF.exit.i.i369

bb.jc:                                            ; preds = %bb.jb
  call void @_Py_Dealloc(ptr noundef nonnull %i.ahy) #14
  br label %Py_DECREF.exit.i.i369

Py_DECREF.exit.i.i369:                            ; preds = %bb.jc, %bb.jb, %bb.ja, %bb.iz
  %i.aic = add i64 %i.ahv, -1                     ; 2 uses
  %.not17.i.not.i370 = icmp sgt i64 %i.aic, %.04583.i
  br i1 %.not17.i.not.i370, label %bb.iz, label %._crit_edge.i77.i, !llvm.loop !180

._crit_edge.i77.i:                                ; preds = %Py_DECREF.exit.i.i369
  store i64 %i.ahr, ptr %i.ahs, align 8, !tbaa !38
  %.pre.i371 = load ptr, ptr %i.w, align 8, !tbaa !173
  br label %Pdata_clear.exit.i367

Pdata_clear.exit.i367:                            ; preds = %._crit_edge.i77.i, %bb.iy
  %i.aid = phi ptr [ %i.ahq, %bb.iy ], [ %.pre.i371, %._crit_edge.i77.i ]
  %i.aie = getelementptr i8, ptr %i.aid, i64 16
  store i64 %i.aee, ptr %i.aie, align 8, !tbaa !38
  %i.aif = load i32, ptr %i.ahe, align 8, !tbaa !46 ; 2 uses
  %.not.i58.i = icmp sgt i32 %i.aif, -1
  br i1 %.not.i58.i, label %bb.jd, label %load_binint.exit.thread

bb.jd:                                            ; preds = %Pdata_clear.exit.i367
  %i.aig = add nsw i32 %i.aif, -1                 ; 2 uses
  store i32 %i.aig, ptr %i.ahe, align 8, !tbaa !46
  %i.aih = icmp eq i32 %i.aig, 0
  br i1 %i.aih, label %bb.je, label %load_binint.exit.thread

bb.je:                                            ; preds = %bb.jd
  call void @_Py_Dealloc(ptr noundef nonnull %i.ahe) #14
  br label %load_binint.exit.thread

bb.jf:                                            ; preds = %_Pickle_FastCall.exit.i
  %i.aii = load i32, ptr %i.ahm, align 8, !tbaa !46 ; 2 uses
  %.not.i56.i = icmp sgt i32 %i.aii, -1
  br i1 %.not.i56.i, label %bb.jg, label %Py_DECREF.exit59.thread.i

bb.jg:                                            ; preds = %bb.jf
  %i.aij = add nsw i32 %i.aii, -1                 ; 2 uses
  store i32 %i.aij, ptr %i.ahm, align 8, !tbaa !46
  %i.aik = icmp eq i32 %i.aij, 0
  br i1 %i.aik, label %bb.jh, label %Py_DECREF.exit59.thread.i

bb.jh:                                            ; preds = %bb.jg
  call void @_Py_Dealloc(ptr noundef nonnull %i.ahm) #14
  br label %Py_DECREF.exit59.thread.i

Py_DECREF.exit59.thread.i:                        ; preds = %bb.jh, %bb.jg, %bb.jf
  %i.ail = add i64 %.04583.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ail, %.val66.i
  br i1 %exitcond.not.i, label %._crit_edge.i364, label %.lr.ph.i366, !llvm.loop !192

._crit_edge.i364:                                 ; preds = %Py_DECREF.exit59.thread.i, %.preheader.i363
  %i.aim = load ptr, ptr %i.w, align 8, !tbaa !173
  %i.ain = getelementptr i8, ptr %i.aim, i64 16
  store i64 %i.aee, ptr %i.ain, align 8, !tbaa !38
  %i.aio = load i32, ptr %i.ahe, align 8, !tbaa !46 ; 2 uses
  %.not.i.i365 = icmp sgt i32 %i.aio, -1
  br i1 %.not.i.i365, label %bb.ji, label %.backedge.backedge

bb.ji:                                            ; preds = %._crit_edge.i364
  %i.aip = add nsw i32 %i.aio, -1                 ; 2 uses
  store i32 %i.aip, ptr %i.ahe, align 8, !tbaa !46
  %i.aiq = icmp eq i32 %i.aip, 0
  br i1 %i.aiq, label %bb.jj, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.ji, %bb.jj, %._crit_edge.i364, %load_build.exit.thread1577, %._crit_edge.i.i604, %bb.tt, %Py_DECREF.exit.i592, %bb.tl, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.cj, %bb.ck, %bb.do, %bb.dp, %bb.dq, %bb.ff, %bb.fg, %bb.gf, %bb.gg, %bb.gh, %bb.gi, %bb.gj, %bb.gk, %bb.gl, %load_tuple.exit, %load_additems.exit, %bb.md, %bb.me, %load_append.exit, %load_appends.exit, %load_build.exit, %load_binput.exit, %load_long_binput.exit, %load_put.exit, %load_memoize.exit, %bb.ty, %load_setitems.exit, %bb.wm, %bb.wn, %bb.wo, %load_none.exit, %load_binint.exit, %load_binint1.exit, %load_binint2.exit, %load_int.exit, %load_long.exit, %load_float.exit, %load_binfloat.exit, %load_counted_bytearray.exit, %load_next_buffer.exit, %load_string.exit, %load_unicode.exit, %load_empty_list.exit, %load_list.exit, %load_empty_dict.exit, %load_dict.exit, %load_empty_set.exit, %load_frozenset.exit, %load_obj.exit, %load_inst.exit, %load_global.exit, %load_stack_global.exit, %load_dup.exit, %load_binget.exit, %load_long_binget.exit, %load_get.exit, %load_mark.exit, %load_persid.exit, %load_binpersid.exit, %load_reduce.exit, %load_proto.exit, %load_frame.exit, %load_bool.exit, %load_bool.exit682
  br label %.backedge

bb.jj:                                            ; preds = %bb.ji
  call void @_Py_Dealloc(ptr noundef nonnull %i.ahe) #14
  br label %.backedge.backedge

load_additems.exit:                               ; preds = %.loopexit.i359, %bb.it, %bb.iu
  %i.air = icmp slt i32 %i.aha, 0
  br i1 %i.air, label %load_binint.exit.thread, label %.backedge.backedge

bb.jk:                                            ; preds = %bb.o
  %i.ais = load i64, ptr %i.v, align 8, !tbaa !178 ; 2 uses
  %i.ait = icmp slt i64 %i.ais, 1
  br i1 %i.ait, label %marker.exit.thread.i390, label %bb.jl

marker.exit.thread.i390:                          ; preds = %bb.jk
  %i.aiu = load ptr, ptr %i.av, align 8, !tbaa !21
  call void @PyErr_SetString(ptr noundef %i.aiu, ptr noundef nonnull @.str.108) #14
  br label %load_binint.exit.thread

bb.jl:                                            ; preds = %bb.jk
  %i.aiv = load ptr, ptr %i.aw, align 8, !tbaa !181
  %i.aiw = add nsw i64 %i.ais, -1                 ; 4 uses
  store i64 %i.aiw, ptr %i.v, align 8, !tbaa !178
  %i.aix = getelementptr [8 x i8], ptr %i.aiv, i64 %i.aiw ; 2 uses
  %i.aiy = load i64, ptr %i.aix, align 8, !tbaa !60 ; 11 uses
  %i.aiz = icmp ne i64 %i.aiw, 0                  ; 2 uses
  %i.aja = zext i1 %i.aiz to i32
  %i.ajb = load ptr, ptr %i.w, align 8, !tbaa !173 ; 4 uses
  %i.ajc = getelementptr i8, ptr %i.ajb, i64 32
  store i32 %i.aja, ptr %i.ajc, align 8, !tbaa !168
  %.not.i14.i = icmp eq i64 %i.aiw, 0
  br i1 %.not.i14.i, label %marker.exit.i373, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.ajd = getelementptr i8, ptr %i.aix, i64 -8
  %i.aje = load i64, ptr %i.ajd, align 8, !tbaa !60
  br label %marker.exit.i373

marker.exit.i373:                                 ; preds = %bb.jm, %bb.jl
  %i.ajf = phi i64 [ %i.aje, %bb.jm ], [ 0, %bb.jl ] ; 2 uses
  %i.ajg = getelementptr i8, ptr %i.ajb, i64 40
  store i64 %i.ajf, ptr %i.ajg, align 8, !tbaa !170
  %i.ajh = icmp slt i64 %i.aiy, 0
  br i1 %i.ajh, label %load_binint.exit.thread, label %bb.jn

bb.jn:                                            ; preds = %marker.exit.i373
  %i.aji = icmp slt i64 %i.aiy, %i.ajf
  br i1 %i.aji, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  %.val24.i.i389 = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.ajj = select i1 %i.aiz, ptr @.str.102, ptr @.str.103
  call void @PyErr_SetString(ptr noundef %.val24.i.i389, ptr noundef nonnull %i.ajj) #14
  br label %load_binint.exit.thread

bb.jp:                                            ; preds = %bb.jn
  %i.ajk = getelementptr i8, ptr %i.ajb, i64 16   ; 2 uses
  %.val.i.i374 = load i64, ptr %i.ajk, align 8, !tbaa !38 ; 3 uses
  %i.ajl = sub i64 %.val.i.i374, %i.aiy           ; 6 uses
  %i.ajm = call ptr @PyTuple_New(i64 noundef %i.ajl) #14 ; 7 uses
  %i.ajn = ptrtoaddr ptr %i.ajm to i64
  %i.ajo = icmp eq ptr %i.ajm, null
  br i1 %i.ajo, label %load_binint.exit.thread, label %.preheader.i.i375

.preheader.i.i375:                                ; preds = %bb.jp
  %i.ajp = icmp sgt i64 %i.ajl, 0
  br i1 %i.ajp, label %.lr.ph.i.i385, label %.loopexit.i376

.lr.ph.i.i385:                                    ; preds = %.preheader.i.i375
  %i.ajq = getelementptr i8, ptr %i.ajb, i64 24
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !172 ; 7 uses
  %i.ajs = getelementptr i8, ptr %i.ajm, i64 32   ; 6 uses
  %min.iters.check2001 = icmp ult i64 %i.ajl, 4
  br i1 %min.iters.check2001, label %scalar.ph2000.preheader, label %vector.memcheck1998

vector.memcheck1998:                              ; preds = %.lr.ph.i.i385
  %i.ajt = ptrtoaddr ptr %i.ajr to i64
  %i.aju = add i64 %i.ajn, 32
  %i.ajv = shl i64 %i.aiy, 3
  %i.ajw = add i64 %i.ajv, %i.ajt
  %i.ajx = sub i64 %i.aju, %i.ajw
  %diff.check1999 = icmp ult i64 %i.ajx, 32
  br i1 %diff.check1999, label %scalar.ph2000.preheader, label %vector.ph2002

vector.ph2002:                                    ; preds = %vector.memcheck1998
  %n.vec2004 = and i64 %i.ajl, 9223372036854775804 ; 4 uses
  %i.ajy = add nuw i64 %i.aiy, %n.vec2004
  %i.ajz = getelementptr [8 x i8], ptr %i.ajr, i64 %i.aiy
  br label %vector.body2005

vector.body2005:                                  ; preds = %vector.body2005, %vector.ph2002
  %index2006 = phi i64 [ 0, %vector.ph2002 ], [ %index.next2009, %vector.body2005 ] ; 3 uses
  %i.aka = getelementptr [8 x i8], ptr %i.ajz, i64 %index2006 ; 2 uses
  %i.akb = getelementptr i8, ptr %i.aka, i64 16
  %wide.load2007 = load <2 x ptr>, ptr %i.aka, align 8, !tbaa !40
  %wide.load2008 = load <2 x ptr>, ptr %i.akb, align 8, !tbaa !40
  %i.akc = getelementptr [8 x i8], ptr %i.ajs, i64 %index2006 ; 2 uses
  %i.akd = getelementptr i8, ptr %i.akc, i64 16
  store <2 x ptr> %wide.load2007, ptr %i.akc, align 8, !tbaa !40
  store <2 x ptr> %wide.load2008, ptr %i.akd, align 8, !tbaa !40
  %index.next2009 = add nuw i64 %index2006, 4     ; 2 uses
  %i.ake = icmp eq i64 %index.next2009, %n.vec2004
  br i1 %i.ake, label %middle.block2010, label %vector.body2005, !llvm.loop !193

middle.block2010:                                 ; preds = %vector.body2005
  %cmp.n2011 = icmp eq i64 %i.ajl, %n.vec2004
  br i1 %cmp.n2011, label %.loopexit.i376, label %scalar.ph2000.preheader

scalar.ph2000.preheader:                          ; preds = %vector.memcheck1998, %.lr.ph.i.i385, %middle.block2010
  %.027.i.i386.ph = phi i64 [ 0, %vector.memcheck1998 ], [ 0, %.lr.ph.i.i385 ], [ %n.vec2004, %middle.block2010 ] ; 3 uses
  %.02026.i.i387.ph = phi i64 [ %i.aiy, %vector.memcheck1998 ], [ %i.aiy, %.lr.ph.i.i385 ], [ %i.ajy, %middle.block2010 ] ; 2 uses
  %i.akf = sub i64 %.val.i.i374, %i.aiy
  %xtraiter2246 = and i64 %i.akf, 3               ; 2 uses
  %lcmp.mod2247.not = icmp eq i64 %xtraiter2246, 0
  br i1 %lcmp.mod2247.not, label %scalar.ph2000.prol.loopexit, label %scalar.ph2000.prol

scalar.ph2000.prol:                               ; preds = %scalar.ph2000.preheader, %scalar.ph2000.prol
  %.027.i.i386.prol = phi i64 [ %i.akk, %scalar.ph2000.prol ], [ %.027.i.i386.ph, %scalar.ph2000.preheader ] ; 2 uses
  %.02026.i.i387.prol = phi i64 [ %i.akj, %scalar.ph2000.prol ], [ %.02026.i.i387.ph, %scalar.ph2000.preheader ] ; 2 uses
  %prol.iter2248 = phi i64 [ %prol.iter2248.next, %scalar.ph2000.prol ], [ 0, %scalar.ph2000.preheader ]
  %i.akg = getelementptr [8 x i8], ptr %i.ajr, i64 %.02026.i.i387.prol
  %i.akh = load ptr, ptr %i.akg, align 8, !tbaa !40
  %i.aki = getelementptr [8 x i8], ptr %i.ajs, i64 %.027.i.i386.prol
  store ptr %i.akh, ptr %i.aki, align 8, !tbaa !40
  %i.akj = add i64 %.02026.i.i387.prol, 1         ; 2 uses
  %i.akk = add nuw nsw i64 %.027.i.i386.prol, 1   ; 2 uses
  %prol.iter2248.next = add i64 %prol.iter2248, 1 ; 2 uses
  %prol.iter2248.cmp.not = icmp eq i64 %prol.iter2248.next, %xtraiter2246
  br i1 %prol.iter2248.cmp.not, label %scalar.ph2000.prol.loopexit, label %scalar.ph2000.prol, !llvm.loop !194

scalar.ph2000.prol.loopexit:                      ; preds = %scalar.ph2000.prol, %scalar.ph2000.preheader
  %.027.i.i386.unr = phi i64 [ %.027.i.i386.ph, %scalar.ph2000.preheader ], [ %i.akk, %scalar.ph2000.prol ]
  %.02026.i.i387.unr = phi i64 [ %.02026.i.i387.ph, %scalar.ph2000.preheader ], [ %i.akj, %scalar.ph2000.prol ]
  %i.akl = sub i64 %.027.i.i386.ph, %.val.i.i374
  %i.akm = add i64 %i.akl, %i.aiy
  %i.akn = icmp ugt i64 %i.akm, -4
  br i1 %i.akn, label %.loopexit.i376, label %scalar.ph2000

scalar.ph2000:                                    ; preds = %scalar.ph2000.prol.loopexit, %scalar.ph2000
  %.027.i.i386 = phi i64 [ %i.alh, %scalar.ph2000 ], [ %.027.i.i386.unr, %scalar.ph2000.prol.loopexit ] ; 5 uses
end_hunk_0
begin_hunk_1_@load:bb.a
  %i.bmv = getelementptr i8, ptr %i.bmp, i64 24
  %i.bmw = load ptr, ptr %i.bmv, align 8, !tbaa !172
  %i.bmx = getelementptr [8 x i8], ptr %i.bmw, i64 %.val21.i
  %i.bmy = getelementptr i8, ptr %i.bmx, i64 -8
  %i.bmz = load ptr, ptr %i.bmy, align 8, !tbaa !40
  %i.bna = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.bnb = call ptr @PyLong_FromString(ptr noundef %i.bna, ptr noundef null, i32 noundef 10) #14 ; 5 uses
  %i.bnc = icmp eq ptr %i.bnb, null
  br i1 %i.bnc, label %load_put.exit.thread, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  %i.bnd = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.bnb) #14 ; 2 uses
  %i.bne = load i32, ptr %i.bnb, align 8, !tbaa !46 ; 2 uses
  %.not.i.i579 = icmp sgt i32 %i.bne, -1
  br i1 %.not.i.i579, label %bb.tc, label %Py_DECREF.exit.i580

bb.tc:                                            ; preds = %bb.tb
  %i.bnf = add nsw i32 %i.bne, -1                 ; 2 uses
  store i32 %i.bnf, ptr %i.bnb, align 8, !tbaa !46
  %i.bng = icmp eq i32 %i.bnf, 0
  br i1 %i.bng, label %bb.td, label %Py_DECREF.exit.i580

bb.td:                                            ; preds = %bb.tc
  call void @_Py_Dealloc(ptr noundef nonnull %i.bnb) #14
  br label %Py_DECREF.exit.i580

Py_DECREF.exit.i580:                              ; preds = %bb.td, %bb.tc, %bb.tb
  %i.bnh = icmp slt i64 %i.bnd, 0
  br i1 %i.bnh, label %bb.te, label %load_put.exit

bb.te:                                            ; preds = %Py_DECREF.exit.i580
  %i.bni = call ptr @PyErr_Occurred() #14
  %.not20.i = icmp eq ptr %i.bni, null
  br i1 %.not20.i, label %bb.tf, label %load_put.exit.thread

bb.tf:                                            ; preds = %bb.te
  %i.bnj = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !40
  call void @PyErr_SetString(ptr noundef %i.bnj, ptr noundef nonnull @.str.121) #14
  br label %load_put.exit.thread

load_put.exit.thread:                             ; preds = %bb.sv, %bb.ta, %bb.sx, %bb.sz, %bb.tf, %bb.te
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %load_binint.exit.thread

load_put.exit:                                    ; preds = %Py_DECREF.exit.i580
  %i.bnk = call fastcc i32 @_Unpickler_MemoPut(ptr noundef nonnull %1, i64 noundef %i.bnd, ptr noundef %i.bmz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.bnl = icmp slt i32 %i.bnk, 0
  br i1 %i.bnl, label %load_binint.exit.thread, label %.backedge.backedge

bb.tg:                                            ; preds = %bb.o
  %i.bnm = load ptr, ptr %i.w, align 8, !tbaa !173 ; 4 uses
  %i.bnn = getelementptr i8, ptr %i.bnm, i64 16
  %.val9.i582 = load i64, ptr %i.bnn, align 8, !tbaa !38 ; 2 uses
  %i.bno = getelementptr i8, ptr %i.bnm, i64 40
  %i.bnp = load i64, ptr %i.bno, align 8, !tbaa !170
  %.not.i583 = icmp sgt i64 %.val9.i582, %i.bnp
  br i1 %.not.i583, label %load_memoize.exit, label %load_memoize.exit.thread

load_memoize.exit.thread:                         ; preds = %bb.tg
  %.val10.i = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.bnq = getelementptr i8, ptr %i.bnm, i64 32
  %.val11.i584 = load i32, ptr %i.bnq, align 8, !tbaa !168
  %.not.i.i585 = icmp eq i32 %.val11.i584, 0
  %i.bnr = select i1 %.not.i.i585, ptr @.str.103, ptr @.str.102
  call void @PyErr_SetString(ptr noundef %.val10.i, ptr noundef nonnull %i.bnr) #14
  br label %load_binint.exit.thread

load_memoize.exit:                                ; preds = %bb.tg
  %i.bns = getelementptr i8, ptr %i.bnm, i64 24
  %i.bnt = load ptr, ptr %i.bns, align 8, !tbaa !172
  %i.bnu = getelementptr [8 x i8], ptr %i.bnt, i64 %.val9.i582
  %i.bnv = getelementptr i8, ptr %i.bnu, i64 -8
  %i.bnw = load ptr, ptr %i.bnv, align 8, !tbaa !40
  %i.bnx = load i64, ptr %i.ax, align 8, !tbaa !205
  %i.bny = call fastcc i32 @_Unpickler_MemoPut(ptr noundef nonnull %1, i64 noundef %i.bnx, ptr noundef %i.bnw)
  %i.bnz = icmp slt i32 %i.bny, 0
  br i1 %i.bnz, label %load_binint.exit.thread, label %.backedge.backedge

bb.th:                                            ; preds = %bb.o
  %i.boa = load ptr, ptr %i.w, align 8, !tbaa !173 ; 6 uses
  %i.bob = getelementptr i8, ptr %i.boa, i64 16
  %.val.i587 = load i64, ptr %i.bob, align 8, !tbaa !38 ; 3 uses
  %i.boc = load i64, ptr %i.v, align 8, !tbaa !178 ; 3 uses
  %i.bod = icmp sgt i64 %i.boc, 0
  br i1 %i.bod, label %bb.ti, label %bb.tm

bb.ti:                                            ; preds = %bb.th
  %i.boe = load ptr, ptr %i.aw, align 8, !tbaa !181
  %i.bof = getelementptr [8 x i8], ptr %i.boe, i64 %i.boc ; 2 uses
  %i.bog = getelementptr i8, ptr %i.bof, i64 -8
  %i.boh = load i64, ptr %i.bog, align 8, !tbaa !60
  %i.boi = icmp eq i64 %i.boh, %.val.i587
  br i1 %i.boi, label %bb.tj, label %bb.tm

bb.tj:                                            ; preds = %bb.ti
  %i.boj = add nsw i64 %i.boc, -1                 ; 3 uses
  store i64 %i.boj, ptr %i.v, align 8, !tbaa !178
  %i.bok = icmp ne i64 %i.boj, 0
  %i.bol = zext i1 %i.bok to i32
  %i.bom = getelementptr i8, ptr %i.boa, i64 32
  store i32 %i.bol, ptr %i.bom, align 8, !tbaa !168
  %.not24.i = icmp eq i64 %i.boj, 0
  br i1 %.not24.i, label %bb.tl, label %bb.tk

bb.tk:                                            ; preds = %bb.tj
  %i.bon = getelementptr i8, ptr %i.bof, i64 -16
  %i.boo = load i64, ptr %i.bon, align 8, !tbaa !60
  br label %bb.tl

bb.tl:                                            ; preds = %bb.tk, %bb.tj
  %i.bop = phi i64 [ %i.boo, %bb.tk ], [ 0, %bb.tj ]
  %i.boq = getelementptr i8, ptr %i.boa, i64 40
  store i64 %i.bop, ptr %i.boq, align 8, !tbaa !170
  br label %.backedge.backedge

bb.tm:                                            ; preds = %bb.ti, %bb.th
  %i.bor = getelementptr i8, ptr %i.boa, i64 40
  %i.bos = load i64, ptr %i.bor, align 8, !tbaa !170
  %.not.i588 = icmp sgt i64 %.val.i587, %i.bos
  br i1 %.not.i588, label %bb.tn, label %load_pop.exit.thread

load_pop.exit.thread:                             ; preds = %bb.tm
  %.val25.i = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.bot = getelementptr i8, ptr %i.boa, i64 32
  %.val26.i = load i32, ptr %i.bot, align 8, !tbaa !168
  %.not.i27.i589 = icmp eq i32 %.val26.i, 0
  %i.bou = select i1 %.not.i27.i589, ptr @.str.103, ptr @.str.102
  call void @PyErr_SetString(ptr noundef %.val25.i, ptr noundef nonnull %i.bou) #14
  br label %load_binint.exit.thread

bb.tn:                                            ; preds = %bb.tm
  %i.bov = add nsw i64 %.val.i587, -1             ; 2 uses
  %i.bow = getelementptr i8, ptr %i.boa, i64 24
  %i.box = load ptr, ptr %i.bow, align 8, !tbaa !172
  %i.boy = getelementptr [8 x i8], ptr %i.box, i64 %i.bov
  %i.boz = load ptr, ptr %i.boy, align 8, !tbaa !40 ; 3 uses
  %i.bpa = load i32, ptr %i.boz, align 8, !tbaa !46 ; 2 uses
  %.not.i.i591 = icmp sgt i32 %i.bpa, -1
  br i1 %.not.i.i591, label %bb.to, label %Py_DECREF.exit.i592

bb.to:                                            ; preds = %bb.tn
  %i.bpb = add nsw i32 %i.bpa, -1                 ; 2 uses
  store i32 %i.bpb, ptr %i.boz, align 8, !tbaa !46
  %i.bpc = icmp eq i32 %i.bpb, 0
  br i1 %i.bpc, label %bb.tp, label %Py_DECREF.exit.i592

bb.tp:                                            ; preds = %bb.to
  call void @_Py_Dealloc(ptr noundef nonnull %i.boz) #14
  br label %Py_DECREF.exit.i592

Py_DECREF.exit.i592:                              ; preds = %bb.tp, %bb.to, %bb.tn
  %i.bpd = load ptr, ptr %i.w, align 8, !tbaa !173
  %i.bpe = getelementptr i8, ptr %i.bpd, i64 16
  store i64 %i.bov, ptr %i.bpe, align 8, !tbaa !38
  br label %.backedge.backedge

bb.tq:                                            ; preds = %bb.o
  %i.bpf = load i64, ptr %i.v, align 8, !tbaa !178 ; 2 uses
  %i.bpg = icmp slt i64 %i.bpf, 1
  br i1 %i.bpg, label %marker.exit.thread.i605, label %bb.tr

marker.exit.thread.i605:                          ; preds = %bb.tq
  %i.bph = load ptr, ptr %i.av, align 8, !tbaa !21
  call void @PyErr_SetString(ptr noundef %i.bph, ptr noundef nonnull @.str.108) #14
  br label %load_binint.exit.thread

bb.tr:                                            ; preds = %bb.tq
  %i.bpi = load ptr, ptr %i.aw, align 8, !tbaa !181
  %i.bpj = add nsw i64 %i.bpf, -1                 ; 4 uses
  store i64 %i.bpj, ptr %i.v, align 8, !tbaa !178
  %i.bpk = getelementptr [8 x i8], ptr %i.bpi, i64 %i.bpj ; 2 uses
  %i.bpl = load i64, ptr %i.bpk, align 8, !tbaa !60 ; 4 uses
  %i.bpm = icmp ne i64 %i.bpj, 0
  %i.bpn = zext i1 %i.bpm to i32
  %i.bpo = load ptr, ptr %i.w, align 8, !tbaa !173 ; 4 uses
  %i.bpp = getelementptr i8, ptr %i.bpo, i64 32
  store i32 %i.bpn, ptr %i.bpp, align 8, !tbaa !168
  %.not.i.i593 = icmp eq i64 %i.bpj, 0
  br i1 %.not.i.i593, label %marker.exit.i594, label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  %i.bpq = getelementptr i8, ptr %i.bpk, i64 -8
  %i.bpr = load i64, ptr %i.bpq, align 8, !tbaa !60
  br label %marker.exit.i594

marker.exit.i594:                                 ; preds = %bb.ts, %bb.tr
  %i.bps = phi i64 [ %i.bpr, %bb.ts ], [ 0, %bb.tr ]
  %i.bpt = getelementptr i8, ptr %i.bpo, i64 40
  store i64 %i.bps, ptr %i.bpt, align 8, !tbaa !170
  %i.bpu = icmp slt i64 %i.bpl, 0
  br i1 %i.bpu, label %load_binint.exit.thread, label %bb.tt

bb.tt:                                            ; preds = %marker.exit.i594
  %i.bpv = getelementptr i8, ptr %i.bpo, i64 16   ; 2 uses
  %.val.i.i595 = load i64, ptr %i.bpv, align 8, !tbaa !38 ; 2 uses
  %.not.i5.i = icmp slt i64 %i.bpl, %.val.i.i595
  br i1 %.not.i5.i, label %.preheader.i.i598, label %.backedge.backedge

.preheader.i.i598:                                ; preds = %bb.tt
  %i.bpw = getelementptr i8, ptr %i.bpo, i64 24
  br label %bb.tu

bb.tu:                                            ; preds = %Py_DECREF.exit.i.i602, %.preheader.i.i598
  %.in.i599 = phi i64 [ %.val.i.i595, %.preheader.i.i598 ], [ %3, %Py_DECREF.exit.i.i602 ]
  %3 = add nsw i64 %.in.i599, -1                  ; 3 uses
  %i.bpx = load ptr, ptr %i.bpw, align 8, !tbaa !172
  %i.bpy = getelementptr [8 x i8], ptr %i.bpx, i64 %3 ; 2 uses
  %i.bpz = load ptr, ptr %i.bpy, align 8, !tbaa !40 ; 4 uses
  %.not18.i.i600 = icmp eq ptr %i.bpz, null
  br i1 %.not18.i.i600, label %Py_DECREF.exit.i.i602, label %bb.tv

bb.tv:                                            ; preds = %bb.tu
  store ptr null, ptr %i.bpy, align 8, !tbaa !40
  %i.bqa = load i32, ptr %i.bpz, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i601 = icmp sgt i32 %i.bqa, -1
  br i1 %.not.i.i.i601, label %bb.tw, label %Py_DECREF.exit.i.i602

bb.tw:                                            ; preds = %bb.tv
  %i.bqb = add nsw i32 %i.bqa, -1                 ; 2 uses
  store i32 %i.bqb, ptr %i.bpz, align 8, !tbaa !46
  %i.bqc = icmp eq i32 %i.bqb, 0
  br i1 %i.bqc, label %bb.tx, label %Py_DECREF.exit.i.i602

bb.tx:                                            ; preds = %bb.tw
  call void @_Py_Dealloc(ptr noundef nonnull %i.bpz) #14
  br label %Py_DECREF.exit.i.i602

Py_DECREF.exit.i.i602:                            ; preds = %bb.tx, %bb.tw, %bb.tv, %bb.tu
  %.not17.i.not.i603 = icmp sgt i64 %3, %i.bpl
  br i1 %.not17.i.not.i603, label %bb.tu, label %._crit_edge.i.i604, !llvm.loop !180

._crit_edge.i.i604:                               ; preds = %Py_DECREF.exit.i.i602
  store i64 %i.bpl, ptr %i.bpv, align 8, !tbaa !38
  br label %.backedge.backedge

bb.ty:                                            ; preds = %bb.o
  %i.bqd = load ptr, ptr %i.w, align 8, !tbaa !173
  %i.bqe = getelementptr i8, ptr %i.bqd, i64 16
  %.val.i606 = load i64, ptr %i.bqe, align 8, !tbaa !38
  %i.bqf = add i64 %.val.i606, -2
  %i.bqg = call fastcc range(i32 -1, 1) i32 @do_setitems(ptr noundef readonly %0, ptr noundef nonnull readonly %1, i64 noundef %i.bqf)
  %i.bqh = icmp slt i32 %i.bqg, 0
  br i1 %i.bqh, label %load_binint.exit.thread, label %.backedge.backedge

bb.tz:                                            ; preds = %bb.o
  %i.bqi = load i64, ptr %i.v, align 8, !tbaa !178 ; 2 uses
  %i.bqj = icmp slt i64 %i.bqi, 1
  br i1 %i.bqj, label %marker.exit.thread.i610, label %bb.ua

marker.exit.thread.i610:                          ; preds = %bb.tz
  %i.bqk = load ptr, ptr %i.av, align 8, !tbaa !21
  call void @PyErr_SetString(ptr noundef %i.bqk, ptr noundef nonnull @.str.108) #14
  br label %load_binint.exit.thread

bb.ua:                                            ; preds = %bb.tz
  %i.bql = load ptr, ptr %i.aw, align 8, !tbaa !181
  %i.bqm = add nsw i64 %i.bqi, -1                 ; 4 uses
  store i64 %i.bqm, ptr %i.v, align 8, !tbaa !178
  %i.bqn = getelementptr [8 x i8], ptr %i.bql, i64 %i.bqm ; 2 uses
  %i.bqo = load i64, ptr %i.bqn, align 8, !tbaa !60 ; 2 uses
  %i.bqp = icmp ne i64 %i.bqm, 0
  %i.bqq = zext i1 %i.bqp to i32
  %i.bqr = load ptr, ptr %i.w, align 8, !tbaa !173 ; 2 uses
  %i.bqs = getelementptr i8, ptr %i.bqr, i64 32
  store i32 %i.bqq, ptr %i.bqs, align 8, !tbaa !168
  %.not.i.i607 = icmp eq i64 %i.bqm, 0
  br i1 %.not.i.i607, label %marker.exit.i608, label %bb.ub

bb.ub:                                            ; preds = %bb.ua
  %i.bqt = getelementptr i8, ptr %i.bqn, i64 -8
  %i.bqu = load i64, ptr %i.bqt, align 8, !tbaa !60
  br label %marker.exit.i608

marker.exit.i608:                                 ; preds = %bb.ub, %bb.ua
  %i.bqv = phi i64 [ %i.bqu, %bb.ub ], [ 0, %bb.ua ]
  %i.bqw = getelementptr i8, ptr %i.bqr, i64 40
  store i64 %i.bqv, ptr %i.bqw, align 8, !tbaa !170
  %i.bqx = icmp slt i64 %i.bqo, 0
  br i1 %i.bqx, label %load_binint.exit.thread, label %load_setitems.exit

load_setitems.exit:                               ; preds = %marker.exit.i608
  %i.bqy = call fastcc i32 @do_setitems(ptr noundef readonly %0, ptr noundef nonnull %1, i64 noundef %i.bqo)
  %i.bqz = icmp slt i32 %i.bqy, 0
  br i1 %i.bqz, label %load_binint.exit.thread, label %.backedge.backedge

bb.uc:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.bra = call fastcc i64 @_Unpickler_Readline(ptr noundef readonly %0, ptr noundef nonnull %1, ptr noundef %i.a) ; 3 uses
  %i.brb = icmp slt i64 %i.bra, 0
  br i1 %i.brb, label %load_persid.exit.thread, label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  %i.brc = icmp eq i64 %i.bra, 0
  br i1 %i.brc, label %bb.ue, label %bb.uf

bb.ue:                                            ; preds = %bb.ud
  %.val.i620 = load ptr, ptr %i.av, align 8, !tbaa !21
  call void @PyErr_SetString(ptr noundef %.val.i620, ptr noundef nonnull @.str.92) #14
  br label %load_persid.exit.thread

bb.uf:                                            ; preds = %bb.ud
  %i.brd = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.bre = add nsw i64 %i.bra, -1
  %i.brf = call ptr @PyUnicode_DecodeASCII(ptr noundef %i.brd, i64 noundef %i.bre, ptr noundef nonnull @.str.28) #14 ; 5 uses
  %i.brg = icmp eq ptr %i.brf, null
  br i1 %i.brg, label %bb.ug, label %bb.ui

bb.ug:                                            ; preds = %bb.uf
  %i.brh = load ptr, ptr @PyExc_UnicodeDecodeError, align 8, !tbaa !40
  %i.bri = call i32 @PyErr_ExceptionMatches(ptr noundef %i.brh) #14
  %.not.i619 = icmp eq i32 %i.bri, 0
  br i1 %.not.i619, label %load_persid.exit.thread, label %bb.uh

bb.uh:                                            ; preds = %bb.ug
  %i.brj = load ptr, ptr %i.av, align 8, !tbaa !21
  call void @PyErr_SetString(ptr noundef %i.brj, ptr noundef nonnull @.str.18) #14
  br label %load_persid.exit.thread

bb.ui:                                            ; preds = %bb.uf
  %i.brk = load ptr, ptr %i.am, align 8, !tbaa !206
  %i.brl = call ptr @PyObject_CallOneArg(ptr noundef %i.brk, ptr noundef nonnull %i.brf) #14 ; 2 uses
  %i.brm = load i32, ptr %i.brf, align 8, !tbaa !46 ; 2 uses
  %.not.i.i611 = icmp sgt i32 %i.brm, -1
  br i1 %.not.i.i611, label %bb.uj, label %Py_DECREF.exit.i612

bb.uj:                                            ; preds = %bb.ui
  %i.brn = add nsw i32 %i.brm, -1                 ; 2 uses
  store i32 %i.brn, ptr %i.brf, align 8, !tbaa !46
  %i.bro = icmp eq i32 %i.brn, 0
  br i1 %i.bro, label %bb.uk, label %Py_DECREF.exit.i612

bb.uk:                                            ; preds = %bb.uj
  call void @_Py_Dealloc(ptr noundef nonnull %i.brf) #14
  br label %Py_DECREF.exit.i612

Py_DECREF.exit.i612:                              ; preds = %bb.uk, %bb.uj, %bb.ui
  %i.brp = icmp eq ptr %i.brl, null
  br i1 %i.brp, label %load_persid.exit.thread, label %bb.ul

bb.ul:                                            ; preds = %Py_DECREF.exit.i612
  %i.brq = load ptr, ptr %i.w, align 8, !tbaa !173 ; 3 uses
  %i.brr = getelementptr i8, ptr %i.brq, i64 16   ; 3 uses
  %.val9.i.i613 = load i64, ptr %i.brr, align 8, !tbaa !38 ; 5 uses
  %i.brs = getelementptr i8, ptr %i.brq, i64 48   ; 2 uses
  %i.brt = load i64, ptr %i.brs, align 8, !tbaa !171
  %i.bru = icmp eq i64 %.val9.i.i613, %i.brt
  %i.brv = getelementptr i8, ptr %i.brq, i64 24   ; 2 uses
  %i.brw = load ptr, ptr %i.brv, align 8, !tbaa !172 ; 2 uses
  br i1 %i.bru, label %bb.um, label %load_persid.exit

bb.um:                                            ; preds = %bb.ul
  %i.brx = lshr i64 %.val9.i.i613, 3
  %i.bry = add nuw nsw i64 %i.brx, 6              ; 2 uses
  %i.brz = sub i64 9223372036854775807, %.val9.i.i613
  %i.bsa = icmp ugt i64 %i.bry, %i.brz
  br i1 %i.bsa, label %bb.up, label %bb.un

bb.un:                                            ; preds = %bb.um
  %i.bsb = add i64 %i.bry, %.val9.i.i613          ; 3 uses
  %i.bsc = icmp ugt i64 %i.bsb, 1152921504606846975
  br i1 %i.bsc, label %bb.up, label %bb.uo

bb.uo:                                            ; preds = %bb.un
  %i.bsd = shl nuw nsw i64 %i.bsb, 3
  %i.bse = call ptr @PyMem_Realloc(ptr noundef %i.brw, i64 noundef %i.bsd) #14 ; 3 uses
  %i.bsf = icmp eq ptr %i.bse, null
  br i1 %i.bsf, label %bb.up, label %Pdata_grow.exit.i.i617

Pdata_grow.exit.i.i617:                           ; preds = %bb.uo
  store ptr %i.bse, ptr %i.brv, align 8, !tbaa !172
  store i64 %i.bsb, ptr %i.brs, align 8, !tbaa !171
  %.val8.pre.i.i618 = load i64, ptr %i.brr, align 8, !tbaa !38
  br label %load_persid.exit

bb.up:                                            ; preds = %bb.uo, %bb.un, %bb.um
  %i.bsg = call ptr @PyErr_NoMemory() #14         ; 0 uses
  br label %load_persid.exit.thread

load_persid.exit.thread:                          ; preds = %Py_DECREF.exit.i612, %bb.uc, %bb.ue, %bb.ug, %bb.uh, %bb.up
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %load_binint.exit.thread

load_persid.exit:                                 ; preds = %bb.ul, %Pdata_grow.exit.i.i617
  %.val8.i.i615 = phi i64 [ %.val8.pre.i.i618, %Pdata_grow.exit.i.i617 ], [ %.val9.i.i613, %bb.ul ] ; 2 uses
  %i.bsh = phi ptr [ %i.bse, %Pdata_grow.exit.i.i617 ], [ %i.brw, %bb.ul ]
  %i.bsi = getelementptr [8 x i8], ptr %i.bsh, i64 %.val8.i.i615
  store ptr %i.brl, ptr %i.bsi, align 8, !tbaa !40
  %i.bsj = add i64 %.val8.i.i615, 1
  store i64 %i.bsj, ptr %i.brr, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.backedge.backedge

bb.uq:                                            ; preds = %bb.o
  %i.bsk = load ptr, ptr %i.w, align 8, !tbaa !173 ; 4 uses
  %i.bsl = getelementptr i8, ptr %i.bsk, i64 16   ; 2 uses
  %.val10.i.i621 = load i64, ptr %i.bsl, align 8, !tbaa !38 ; 2 uses
  %i.bsm = getelementptr i8, ptr %i.bsk, i64 40
  %i.bsn = load i64, ptr %i.bsm, align 8, !tbaa !170
  %.not.i11.i = icmp sgt i64 %.val10.i.i621, %i.bsn
  br i1 %.not.i11.i, label %Pdata_pop.exit.i627, label %Pdata_pop.exit.thread.i622

Pdata_pop.exit.thread.i622:                       ; preds = %bb.uq
  %.val11.i.i623 = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.bso = getelementptr i8, ptr %i.bsk, i64 32
  %.val12.i.i624 = load i32, ptr %i.bso, align 8, !tbaa !168
  %.not.i.i.i625 = icmp eq i32 %.val12.i.i624, 0
  %i.bsp = select i1 %.not.i.i.i625, ptr @.str.103, ptr @.str.102
  call void @PyErr_SetString(ptr noundef %.val11.i.i623, ptr noundef nonnull %i.bsp) #14
  br label %load_binint.exit.thread

Pdata_pop.exit.i627:                              ; preds = %bb.uq
  %i.bsq = add nsw i64 %.val10.i.i621, -1         ; 2 uses
  store i64 %i.bsq, ptr %i.bsl, align 8, !tbaa !38
  %i.bsr = getelementptr i8, ptr %i.bsk, i64 24
  %i.bss = load ptr, ptr %i.bsr, align 8, !tbaa !172
  %i.bst = getelementptr [8 x i8], ptr %i.bss, i64 %i.bsq
  %i.bsu = load ptr, ptr %i.bst, align 8, !tbaa !40 ; 5 uses
  %i.bsv = icmp eq ptr %i.bsu, null
  br i1 %i.bsv, label %load_binint.exit.thread, label %bb.ur

bb.ur:                                            ; preds = %Pdata_pop.exit.i627
  %i.bsw = load ptr, ptr %i.am, align 8, !tbaa !206
  %i.bsx = call ptr @PyObject_CallOneArg(ptr noundef %i.bsw, ptr noundef nonnull %i.bsu) #14 ; 2 uses
  %i.bsy = load i32, ptr %i.bsu, align 8, !tbaa !46 ; 2 uses
  %.not.i.i628 = icmp sgt i32 %i.bsy, -1
  br i1 %.not.i.i628, label %bb.us, label %Py_DECREF.exit.i629

bb.us:                                            ; preds = %bb.ur
  %i.bsz = add nsw i32 %i.bsy, -1                 ; 2 uses
  store i32 %i.bsz, ptr %i.bsu, align 8, !tbaa !46
end_hunk_1
begin_hunk_2_@load:bb.a
  %i.bym = icmp ugt i32 %i.byl, -1073741825
  br i1 %i.bym, label %Py_INCREF.exit.i676, label %bb.wv

bb.wv:                                            ; preds = %bb.wu
  %i.byn = add nuw i32 %i.byl, 1
  store i32 %i.byn, ptr @_Py_FalseStruct, align 8, !tbaa !46
  br label %Py_INCREF.exit.i676

Py_INCREF.exit.i676:                              ; preds = %bb.wv, %bb.wu
  %i.byo = load ptr, ptr %i.w, align 8, !tbaa !173 ; 3 uses
  %i.byp = getelementptr i8, ptr %i.byo, i64 16   ; 3 uses
  %.val9.i.i677 = load i64, ptr %i.byp, align 8, !tbaa !38 ; 5 uses
  %i.byq = getelementptr i8, ptr %i.byo, i64 48   ; 2 uses
  %i.byr = load i64, ptr %i.byq, align 8, !tbaa !171
  %i.bys = icmp eq i64 %.val9.i.i677, %i.byr
  %i.byt = getelementptr i8, ptr %i.byo, i64 24   ; 2 uses
  %i.byu = load ptr, ptr %i.byt, align 8, !tbaa !172 ; 2 uses
  br i1 %i.bys, label %bb.ww, label %load_bool.exit682

bb.ww:                                            ; preds = %Py_INCREF.exit.i676
  %i.byv = lshr i64 %.val9.i.i677, 3
  %i.byw = add nuw nsw i64 %i.byv, 6              ; 2 uses
  %i.byx = sub i64 9223372036854775807, %.val9.i.i677
  %i.byy = icmp ugt i64 %i.byw, %i.byx
  br i1 %i.byy, label %load_bool.exit682.thread, label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  %i.byz = add i64 %i.byw, %.val9.i.i677          ; 3 uses
  %i.bza = icmp ugt i64 %i.byz, 1152921504606846975
  br i1 %i.bza, label %load_bool.exit682.thread, label %bb.wy

bb.wy:                                            ; preds = %bb.wx
  %i.bzb = shl nuw nsw i64 %i.byz, 3
  %i.bzc = call ptr @PyMem_Realloc(ptr noundef %i.byu, i64 noundef %i.bzb) #14 ; 3 uses
  %i.bzd = icmp eq ptr %i.bzc, null
  br i1 %i.bzd, label %load_bool.exit682.thread, label %Pdata_grow.exit.i.i680

Pdata_grow.exit.i.i680:                           ; preds = %bb.wy
  store ptr %i.bzc, ptr %i.byt, align 8, !tbaa !172
  store i64 %i.byz, ptr %i.byq, align 8, !tbaa !171
  %.val8.pre.i.i681 = load i64, ptr %i.byp, align 8, !tbaa !38
  br label %load_bool.exit682

load_bool.exit682.thread:                         ; preds = %bb.ww, %bb.wx, %bb.wy
  %i.bze = call ptr @PyErr_NoMemory() #14         ; 0 uses
  br label %load_binint.exit.thread

load_bool.exit682:                                ; preds = %Py_INCREF.exit.i676, %Pdata_grow.exit.i.i680
  %.val8.i.i679 = phi i64 [ %.val8.pre.i.i681, %Pdata_grow.exit.i.i680 ], [ %.val9.i.i677, %Py_INCREF.exit.i676 ] ; 2 uses
  %i.bzf = phi ptr [ %i.bzc, %Pdata_grow.exit.i.i680 ], [ %i.byu, %Py_INCREF.exit.i676 ]
  %i.bzg = getelementptr [8 x i8], ptr %i.bzf, i64 %.val8.i.i679
  store ptr @_Py_FalseStruct, ptr %i.bzg, align 8, !tbaa !40
  %i.bzh = add i64 %.val8.i.i679, 1
  store i64 %i.bzh, ptr %i.byp, align 8, !tbaa !38
  br label %.backedge.backedge

bb.wz:                                            ; preds = %bb.o
  %i.bzi = zext i8 %i.by to i32                   ; 2 uses
  %i.bzj = add i8 %i.by, -32
  %or.cond = icmp ult i8 %i.bzj, 95
  br i1 %or.cond, label %switch.early.test, label %bb.xb

switch.early.test:                                ; preds = %bb.wz
  switch i8 %i.by, label %bb.xa [
    i8 92, label %bb.xb
    i8 39, label %bb.xb
  ]

bb.xa:                                            ; preds = %switch.early.test
  %i.bzk = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.bzl = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bzk, ptr noundef nonnull @.str.89, i32 noundef %i.bzi) #14 ; 0 uses
  br label %_Unpickler_SkipConsumed.exit

bb.xb:                                            ; preds = %switch.early.test, %switch.early.test, %bb.wz
  %i.bzm = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.bzn = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bzm, ptr noundef nonnull @.str.90, i32 noundef %i.bzi) #14 ; 0 uses
  br label %_Unpickler_SkipConsumed.exit

load_binint.exit.thread:                          ; preds = %bb.wj, %bb.wa, %bb.vq, %Pdata_pop.exit.i642, %Py_DECREF.exit.i646, %Pdata_pop.exit.i627, %Py_DECREF.exit.i629, %marker.exit.i608, %marker.exit.i594, %bb.sq, %bb.sg, %bb.rb, %calc_binsize.exit.i523, %bb.qm, %bb.qp, %marker.exit.i476, %Py_DECREF.exit.i466, %Pdata_pop.exit.i457, %bb.ke, %marker.exit.i392, %Py_DECREF.exit.i397, %bb.jp, %marker.exit.i373, %Py_DECREF.exit.i378, %bb.iv, %.thread.i, %marker.exit.i354, %bb.ie, %marker.exit.i335, %bb.hm, %bb.hd, %bb.gy, %marker.exit.i320, %bb.gp, %marker.exit.i, %bb.ex, %bb.dw, %bb.ea, %bb.dd, %bb.dh, %bb.di, %bb.az, %calc_binint.exit.i.i221, %bb.am, %calc_binint.exit.i.i207, %bb.z, %calc_binint.exit.i.i, %bb.o, %bb.cj, %bb.ck, %bb.do, %bb.dp, %bb.dq, %bb.ff, %bb.fg, %bb.gf, %bb.gg, %bb.gh, %bb.gi, %bb.gj, %bb.gk, %bb.gl, %load_tuple.exit, %load_additems.exit, %bb.md, %bb.me, %load_append.exit, %load_appends.exit, %load_build.exit, %load_binput.exit, %load_long_binput.exit, %load_put.exit, %load_memoize.exit, %bb.ty, %load_setitems.exit, %bb.wm, %bb.wn, %bb.wo, %bb.ef, %bb.wl, %bb.wi, %bb.wg, %bb.wc, %bb.vz, %bb.vx, %bb.wd, %bb.vs, %bb.vp, %bb.vn, %bb.vu, %bb.vk, %Pdata_pop.exit.thread.i637, %bb.uy, %Pdata_pop.exit.thread.i622, %marker.exit.thread.i610, %marker.exit.thread.i605, %bb.ss, %bb.sp, %bb.sn, %bb.su, %bb.si, %bb.sf, %bb.sd, %bb.sk, %bb.rd, %bb.ra, %bb.qy, %bb.rj, %bb.qo, %bb.ql, %bb.qj, %bb.qv, %bb.qg, %bb.qa, %marker.exit.thread.i478, %bb.nt, %bb.ni, %Py_DECREF.exit29.i, %bb.nb, %.loopexit742, %bb.nj, %Pdata_pop.exit.thread.i452, %bb.nc, %bb.kd, %bb.kt, %marker.exit.thread.i411, %bb.kb, %bb.jo, %bb.jw, %marker.exit.thread.i390, %Pdata_clear.exit.i367, %bb.jd, %bb.je, %bb.is, %marker.exit.thread.i372, %bb.io, %bb.ij, %bb.id, %bb.hu, %bb.ht, %bb.hp, %bb.ho, %bb.hv, %bb.hq, %marker.exit.thread.i347, %bb.hi, %bb.hc, %marker.exit.thread.i328, %bb.gu, %marker.exit.thread.i, %bb.ew, %bb.eu, %bb.ep, %bb.eo, %bb.em, %bb.dy, %bb.dv, %bb.dt, %bb.ek, %bb.ec, %bb.eb, %bb.ed, %bb.dz, %bb.df, %bb.dc, %bb.da, %bb.dn, %bb.bb, %bb.ay, %bb.aw, %bb.bg, %bb.ao, %bb.al, %bb.aj, %bb.at, %bb.ab, %bb.y, %bb.w, %bb.ag, %load_bool.exit682.thread, %load_bool.exit.thread, %load_persid.exit.thread, %load_pop.exit.thread, %load_memoize.exit.thread, %load_put.exit.thread, %load_mark.exit.thread, %load_get.exit.thread, %load_build.exit.thread, %load_append.exit.thread, %load_global.exit.thread, %load_inst.exit.thread, %load_unicode.exit.thread, %load_string.exit.thread, %load_float.exit.thread, %load_long.exit.thread, %load_int.exit.thread, %load_none.exit.thread
  %i.bzo = call ptr @PyErr_Occurred() #14
  %.not190 = icmp eq ptr %i.bzo, null
  br i1 %.not190, label %bb.xc, label %_Unpickler_SkipConsumed.exit

bb.xc:                                            ; preds = %load_binint.exit.thread
  %i.bzp = load i64, ptr %i.as, align 8, !tbaa !74
  %i.bzq = getelementptr i8, ptr %1, i64 184      ; 2 uses
  %i.bzr = load i64, ptr %i.bzq, align 8, !tbaa !75
  %i.bzs = sub i64 %i.bzp, %i.bzr                 ; 2 uses
  %i.bzt = icmp slt i64 %i.bzs, 1
  br i1 %i.bzt, label %bb.xh, label %bb.xd

bb.xd:                                            ; preds = %bb.xc
  %i.bzu = load ptr, ptr %i.at, align 8, !tbaa !177
  %i.bzv = call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %i.bzu, ptr noundef nonnull @.str.128, i64 noundef %i.bzs) #14 ; 4 uses
  %i.bzw = icmp eq ptr %i.bzv, null
  br i1 %i.bzw, label %_Unpickler_SkipConsumed.exit, label %bb.xe

bb.xe:                                            ; preds = %bb.xd
  %i.bzx = load i32, ptr %i.bzv, align 8, !tbaa !46 ; 2 uses
  %.not.i.i683 = icmp sgt i32 %i.bzx, -1
  br i1 %.not.i.i683, label %bb.xf, label %Py_DECREF.exit.i684

bb.xf:                                            ; preds = %bb.xe
  %i.bzy = add nsw i32 %i.bzx, -1                 ; 2 uses
  store i32 %i.bzy, ptr %i.bzv, align 8, !tbaa !46
  %i.bzz = icmp eq i32 %i.bzy, 0
  br i1 %i.bzz, label %bb.xg, label %Py_DECREF.exit.i684

bb.xg:                                            ; preds = %bb.xf
  call void @_Py_Dealloc(ptr noundef nonnull %i.bzv) #14
  br label %Py_DECREF.exit.i684

Py_DECREF.exit.i684:                              ; preds = %bb.xg, %bb.xf, %bb.xe
  %i.caa = load i64, ptr %i.as, align 8, !tbaa !74
  store i64 %i.caa, ptr %i.bzq, align 8, !tbaa !75
  br label %bb.xh

bb.xh:                                            ; preds = %Py_DECREF.exit.i684, %bb.xc
  %i.cab = load ptr, ptr %i.am, align 8, !tbaa !40 ; 4 uses
  %.not191 = icmp eq ptr %i.cab, null
  br i1 %.not191, label %Py_DECREF.exit195, label %bb.xi

bb.xi:                                            ; preds = %bb.xh
  store ptr null, ptr %i.am, align 8, !tbaa !40
  %i.cac = load i32, ptr %i.cab, align 8, !tbaa !46 ; 2 uses
  %.not.i194 = icmp sgt i32 %i.cac, -1
  br i1 %.not.i194, label %bb.xj, label %Py_DECREF.exit195

bb.xj:                                            ; preds = %bb.xi
  %i.cad = add nsw i32 %i.cac, -1                 ; 2 uses
  store i32 %i.cad, ptr %i.cab, align 8, !tbaa !46
  %i.cae = icmp eq i32 %i.cad, 0
  br i1 %i.cae, label %bb.xk, label %Py_DECREF.exit195

bb.xk:                                            ; preds = %bb.xj
  call void @_Py_Dealloc(ptr noundef nonnull %i.cab) #14
  br label %Py_DECREF.exit195

Py_DECREF.exit195:                                ; preds = %bb.xk, %bb.xj, %bb.xi, %bb.xh
  %i.caf = load ptr, ptr %i.w, align 8, !tbaa !173 ; 4 uses
  %i.cag = getelementptr i8, ptr %i.caf, i64 16   ; 2 uses
  %.val10.i686 = load i64, ptr %i.cag, align 8, !tbaa !38 ; 2 uses
  %i.cah = getelementptr i8, ptr %i.caf, i64 40
  %i.cai = load i64, ptr %i.cah, align 8, !tbaa !170
  %.not.i687 = icmp sgt i64 %.val10.i686, %i.cai
  br i1 %.not.i687, label %bb.xm, label %bb.xl

bb.xl:                                            ; preds = %Py_DECREF.exit195
  %.val11.i688 = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.caj = getelementptr i8, ptr %i.caf, i64 32
  %.val12.i689 = load i32, ptr %i.caj, align 8, !tbaa !168
  %.not.i.i690 = icmp eq i32 %.val12.i689, 0
  %i.cak = select i1 %.not.i.i690, ptr @.str.103, ptr @.str.102
  call void @PyErr_SetString(ptr noundef %.val11.i688, ptr noundef nonnull %i.cak) #14
  br label %Pdata_pop.exit

bb.xm:                                            ; preds = %Py_DECREF.exit195
  %i.cal = add nsw i64 %.val10.i686, -1           ; 2 uses
  store i64 %i.cal, ptr %i.cag, align 8, !tbaa !38
  %i.cam = getelementptr i8, ptr %i.caf, i64 24
  %i.can = load ptr, ptr %i.cam, align 8, !tbaa !172
  %i.cao = getelementptr [8 x i8], ptr %i.can, i64 %i.cal
  %i.cap = load ptr, ptr %i.cao, align 8, !tbaa !40
  br label %Pdata_pop.exit

_Unpickler_SkipConsumed.exit:                     ; preds = %bb.xd, %bb.xa, %bb.xb, %Pdata_clear.exit, %bb.n, %.loopexit, %load_binint.exit.thread
  %i.caq = getelementptr i8, ptr %1, i64 56       ; 2 uses
  %i.car = load ptr, ptr %i.caq, align 8, !tbaa !40 ; 4 uses
  %.not193 = icmp eq ptr %i.car, null
  br i1 %.not193, label %Pdata_pop.exit, label %bb.xn

bb.xn:                                            ; preds = %_Unpickler_SkipConsumed.exit
  store ptr null, ptr %i.caq, align 8, !tbaa !40
  %i.cas = load i32, ptr %i.car, align 8, !tbaa !46 ; 2 uses
  %.not.i = icmp sgt i32 %i.cas, -1
  br i1 %.not.i, label %bb.xo, label %Pdata_pop.exit

bb.xo:                                            ; preds = %bb.xn
  %i.cat = add nsw i32 %i.cas, -1                 ; 2 uses
  store i32 %i.cat, ptr %i.car, align 8, !tbaa !46
  %i.cau = icmp eq i32 %i.cat, 0
  br i1 %i.cau, label %bb.xp, label %Pdata_pop.exit

bb.xp:                                            ; preds = %bb.xo
  call void @_Py_Dealloc(ptr noundef nonnull %i.car) #14
  br label %Pdata_pop.exit

Pdata_pop.exit:                                   ; preds = %bb.xp, %bb.xo, %bb.xn, %bb.xm, %bb.xl, %_Unpickler_SkipConsumed.exit
  %.0 = phi ptr [ null, %_Unpickler_SkipConsumed.exit ], [ %i.cap, %bb.xm ], [ null, %bb.xl ], [ null, %bb.xn ], [ null, %bb.xo ], [ null, %bb.xp ]
  ret ptr %.0
}

declare ptr @_PyMem_Strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @Pdata_clear(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %.not = icmp slt i64 %1, %.val
  br i1 %.not, label %.lr.ph, label %bb.f

.lr.ph:                                           ; preds = %bb.a
  %2 = add nsw i64 %.val, -1
  %i.b = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Py_DECREF.exit
  %i.c = phi i64 [ %2, %.lr.ph ], [ %i.j, %Py_DECREF.exit ] ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !172
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 4 uses
  %.not18 = icmp eq ptr %i.f, null
  br i1 %.not18, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.e, align 8, !tbaa !40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %.not.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !46
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #14
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.j = add i64 %i.c, -1                         ; 2 uses
  %.not17 = icmp slt i64 %i.j, %1
  br i1 %.not17, label %._crit_edge, label %bb.b, !llvm.loop !180

._crit_edge:                                      ; preds = %Py_DECREF.exit
  store i64 %1, ptr %i.a, align 8, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @load_counted_long(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 1, 5) %2) unnamed_addr #0 {
bb.a:
  %i.a = zext nneg i32 %2 to i64                  ; 6 uses
  %i.b = getelementptr i8, ptr %1, i64 168        ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !73
  %i.d = getelementptr i8, ptr %1, i64 176        ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !74   ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp slt i64 %i.f, %i.a
  br i1 %.not, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71   ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 %i.e
  %i.j = add i64 %i.e, %i.a
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.k = xor i64 %i.a, 9223372036854775807
  %i.l = icmp sgt i64 %i.e, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  tail call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.91) #14
  br label %_Unpickler_ReadImpl.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %1, i64 192
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !177
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %0, i64 16
  %.val20.i = load ptr, ptr %i.q, align 8, !tbaa !21
  tail call void @PyErr_SetString(ptr noundef %.val20.i, ptr noundef nonnull @.str.92) #14
  br label %_Unpickler_ReadImpl.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.r = tail call fastcc i64 @_Unpickler_ReadFromFile(ptr noundef readonly %0, ptr noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %i.a) ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %_Unpickler_ReadImpl.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp samesign ult i64 %i.r, %i.a
  br i1 %i.t, label %bb.h, label %_Unpickler_ReadImpl.exit

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.u, align 8, !tbaa !21
  tail call void @PyErr_SetString(ptr noundef %.val.i, ptr noundef nonnull @.str.92) #14
  br label %_Unpickler_ReadImpl.exit.thread

_Unpickler_ReadImpl.exit:                         ; preds = %bb.g
  %i.v = getelementptr i8, ptr %1, i64 152
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !71   ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %_Unpickler_ReadImpl.exit, %.critedge
  %i.x = phi ptr [ %i.h, %.critedge ], [ %i.w, %_Unpickler_ReadImpl.exit ]
  %i.y = phi i64 [ %i.j, %.critedge ], [ %i.a, %_Unpickler_ReadImpl.exit ] ; 5 uses
  %.046 = phi ptr [ %i.i, %.critedge ], [ %i.w, %_Unpickler_ReadImpl.exit ] ; 4 uses
  store i64 %i.y, ptr %i.d, align 8, !tbaa !74
  %i.z = load i8, ptr %.046, align 1, !tbaa !46
  %i.aa = zext i8 %i.z to i64                     ; 2 uses
  %exitcond.not.i = icmp eq i32 %2, 1
  br i1 %exitcond.not.i, label %calc_binint.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr i8, ptr %.046, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !46
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 8
  %i.af = or disjoint i64 %i.ae, %i.aa            ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %2, 2
  br i1 %exitcond.not.i.1, label %calc_binint.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %.046, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !46
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 16
  %i.ak = or disjoint i64 %i.aj, %i.af            ; 2 uses
  %exitcond.not.i.2 = icmp eq i32 %2, 3
  br i1 %exitcond.not.i.2, label %calc_binint.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr i8, ptr %.046, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !46
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 24
  %i.ap = or disjoint i64 %i.ao, %i.ak
  br label %calc_binint.exit

calc_binint.exit:                                 ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.lcssa = phi i64 [ %i.aa, %bb.i ], [ %i.af, %bb.j ], [ %i.ak, %bb.k ], [ %i.ap, %bb.l ] ; 3 uses
  %i.aq = icmp eq i32 %2, 4
  %i.ar = and i64 %.lcssa, 2147483648
  %i.as = sub nsw i64 0, %i.ar
  %i.at = select i1 %i.aq, i64 %i.as, i64 0
  %.1.i = or i64 %i.at, %.lcssa
  %i.au = trunc i64 %.1.i to i32                  ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %calc_binint.exit
  %i.aw = getelementptr i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21
  tail call void @PyErr_SetString(ptr noundef %i.ax, ptr noundef nonnull @.str.96) #14
  br label %_Unpickler_ReadImpl.exit.thread

bb.n:                                             ; preds = %calc_binint.exit
  %i.ay = icmp eq i32 %i.au, 0
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.az = tail call ptr @PyLong_FromLong(i64 noundef 0) #14
  br label %bb.y

bb.p:                                             ; preds = %bb.n
  %i.ba = and i64 %.lcssa, 2147483647             ; 7 uses
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !73
  %i.bc = sub i64 %i.bb, %i.y
  %.not35 = icmp sgt i64 %i.ba, %i.bc
  br i1 %.not35, label %bb.q, label %.critedge37

.critedge37:                                      ; preds = %bb.p
  %i.bd = getelementptr i8, ptr %i.x, i64 %i.y
  %i.be = add i64 %i.y, %i.ba
  br label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.bf = xor i64 %i.ba, 9223372036854775807
  %i.bg = icmp sgt i64 %i.y, %i.bf
  br i1 %i.bg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr i8, ptr %0, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !21
  tail call void @PyErr_SetString(ptr noundef %i.bi, ptr noundef nonnull @.str.91) #14
  br label %_Unpickler_ReadImpl.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.bj = getelementptr i8, ptr %1, i64 192
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !177
  %.not.i38 = icmp eq ptr %i.bk, null
  br i1 %.not.i38, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr i8, ptr %0, i64 16
  %.val20.i41 = load ptr, ptr %i.bl, align 8, !tbaa !21
  tail call void @PyErr_SetString(ptr noundef %.val20.i41, ptr noundef nonnull @.str.92) #14
  br label %_Unpickler_ReadImpl.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.bm = tail call fastcc i64 @_Unpickler_ReadFromFile(ptr noundef readonly %0, ptr noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %i.ba) ; 2 uses
  %i.bn = icmp slt i64 %i.bm, 0
  br i1 %i.bn, label %_Unpickler_ReadImpl.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = icmp samesign ult i64 %i.bm, %i.ba
  br i1 %i.bo, label %bb.w, label %_Unpickler_ReadImpl.exit42

bb.w:                                             ; preds = %bb.v
  %i.bp = getelementptr i8, ptr %0, i64 16
  %.val.i40 = load ptr, ptr %i.bp, align 8, !tbaa !21
  tail call void @PyErr_SetString(ptr noundef %.val.i40, ptr noundef nonnull @.str.92) #14
  br label %_Unpickler_ReadImpl.exit.thread

_Unpickler_ReadImpl.exit42:                       ; preds = %bb.v
  %i.bq = getelementptr i8, ptr %1, i64 152
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !71
  br label %bb.x

bb.x:                                             ; preds = %_Unpickler_ReadImpl.exit42, %.critedge37
  %storemerge53 = phi i64 [ %i.be, %.critedge37 ], [ %i.ba, %_Unpickler_ReadImpl.exit42 ]
  %.045 = phi ptr [ %i.bd, %.critedge37 ], [ %i.br, %_Unpickler_ReadImpl.exit42 ]
  store i64 %storemerge53, ptr %i.d, align 8, !tbaa !74
  %i.bs = tail call ptr @_PyLong_FromByteArray(ptr noundef %.045, i64 noundef %i.ba, i32 noundef 1, i32 noundef 1) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.o
  %.0 = phi ptr [ %i.az, %bb.o ], [ %i.bs, %bb.x ] ; 2 uses
  %i.bt = icmp eq ptr %.0, null
  br i1 %i.bt, label %_Unpickler_ReadImpl.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bu = getelementptr i8, ptr %1, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !173 ; 3 uses
end_hunk_2
