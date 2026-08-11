inline.NumInlined: 7551
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 165
loop-unroll.NumUnrolled: 165
begin_hunk_0_@l___private_Lean_Elab_DocString_Builtin_Keywords_0__Lean_Doc_kwImpl:bb.a
  %i.ds = icmp sgt i32 %i.dr, 1
  br i1 %i.ds, label %bb.bv, label %bb.bw, !prof !13

bb.bv:                                            ; preds = %bb.bu
  %i.dt = add nsw i32 %i.dr, -1
  store i32 %i.dt, ptr %i.bo, align 8, !tbaa !16
  br label %bb.by

bb.bw:                                            ; preds = %bb.bu
  %.not.i.i1233 = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i1233, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bo) #6
  br label %bb.by

bb.by:                                            ; preds = %lean_inc.exit989, %bb.bx, %bb.bw, %bb.bv
  tail call void @lean_inc_heartbeat() #6
  %i.du = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.bz, label %lean_alloc_ctor.exit1320

bb.bz:                                            ; preds = %bb.by
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit1320:                         ; preds = %bb.by
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  store i32 1, ptr %i.du, align 4, !tbaa !16
  store i32 16842768, ptr %i.dw, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.dk, ptr %i.dx, align 8, !tbaa !14
  br label %lean_dec.exit1175

bb.ca:                                            ; preds = %lean_dec_ref_known.exit
  %i.dy = ptrtoint ptr %1 to i64
  %i.dz = and i64 %i.dy, 1
  %.not.i1228 = icmp eq i64 %i.dz, 0
  br i1 %.not.i1228, label %bb.cb, label %lean_dec.exit1231

bb.cb:                                            ; preds = %bb.ca
  %i.ea = load i32, ptr %1, align 4, !tbaa !16    ; 3 uses
  %i.eb = icmp sgt i32 %i.ea, 1
  br i1 %i.eb, label %bb.cc, label %bb.cd, !prof !13

bb.cc:                                            ; preds = %bb.cb
  %i.ec = add nsw i32 %i.ea, -1
  store i32 %i.ec, ptr %1, align 4, !tbaa !16
  br label %lean_dec.exit1231

bb.cd:                                            ; preds = %bb.cb
  %.not.i.i1229 = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i1229, label %lean_dec.exit1231, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit1231

lean_dec.exit1219:                                ; preds = %lean_obj_tag.exit1364.thread, %bb.dz, %bb.ex, %bb.ey, %bb.ez, %bb.cl
  %i.ed = load ptr, ptr @l_Lean_Doc_Data_instImpl_00___x40_Lean_Elab_DocString_Builtin_Keywords_1640796728____hygCtx___hyg_10_, align 8, !tbaa !14
  tail call void @lean_inc_heartbeat() #6
  %i.ee = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.cf, label %lean_alloc_ctor.exit1321

bb.cf:                                            ; preds = %lean_dec.exit1219
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit1321:                         ; preds = %lean_dec.exit1219
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store i32 1, ptr %i.ee, align 4, !tbaa !16
  store i32 131096, ptr %i.eg, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.ug, ptr %i.eh, align 8, !tbaa !14
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store ptr %i.tz, ptr %i.ei, align 8, !tbaa !14
  tail call void @lean_inc_heartbeat() #6
  %i.ej = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.cg, label %lean_alloc_ctor.exit1322

bb.cg:                                            ; preds = %lean_alloc_ctor.exit1321
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit1322:                         ; preds = %lean_alloc_ctor.exit1321
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  store i32 1, ptr %i.ej, align 4, !tbaa !16
  store i32 131096, ptr %i.el, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %i.ed, ptr %i.em, align 8, !tbaa !14
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store ptr %i.ee, ptr %i.en, align 8, !tbaa !14
  tail call void @lean_inc_heartbeat() #6
  %i.eo = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.ch, label %lean_alloc_ctor.exit1323

bb.ch:                                            ; preds = %lean_alloc_ctor.exit1322
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit1323:                         ; preds = %lean_alloc_ctor.exit1322
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  store i32 1, ptr %i.eo, align 4, !tbaa !16
  store i32 131096, ptr %i.eq, align 4
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr @l_Lean_Doc_Data_instImpl___closed__4_00___x40_Lean_Elab_DocString_Builtin_Keywords_1640796728____hygCtx___hyg_10__value, ptr %i.er, align 8, !tbaa !14
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store ptr %i.ej, ptr %i.es, align 8, !tbaa !14
  tail call void @lean_inc_heartbeat() #6
  %i.et = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.ci, label %lean_mk_empty_array_with_capacity.exit

bb.ci:                                            ; preds = %lean_alloc_ctor.exit1323
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_mk_empty_array_with_capacity.exit:           ; preds = %lean_alloc_ctor.exit1323
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  store i32 1, ptr %i.et, align 4, !tbaa !16
  store i32 50397200, ptr %i.ev, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %i.b, ptr %i.ew, align 8, !tbaa !14
  %i.ex = tail call ptr @lean_alloc_object(i64 noundef 32) #6 ; 5 uses
  store i32 1, ptr %i.ex, align 4, !tbaa !16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = and i32 %i.ez, 65535
  %i.fb = or disjoint i32 %i.fa, -167772160
  store i32 %i.fb, ptr %i.ey, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i64 0, ptr %i.fc, align 8, !tbaa !9
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i64 1, ptr %i.fd, align 8, !tbaa !9
  %i.fe = tail call ptr @lean_array_push(ptr noundef nonnull %i.ex, ptr noundef nonnull %i.et) #6
  tail call void @lean_inc_heartbeat() #6
  %i.ff = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.cj, label %lean_alloc_ctor.exit1326

bb.cj:                                            ; preds = %lean_mk_empty_array_with_capacity.exit
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit1326:                         ; preds = %lean_mk_empty_array_with_capacity.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store i32 1, ptr %i.ff, align 4, !tbaa !16
  store i32 167903256, ptr %i.fh, align 4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr %i.eo, ptr %i.fi, align 8, !tbaa !14
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store ptr %i.fe, ptr %i.fj, align 8, !tbaa !14
  tail call void @lean_inc_heartbeat() #6
  %i.fk = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.ck, label %lean_alloc_ctor.exit1327

bb.ck:                                            ; preds = %lean_alloc_ctor.exit1326
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit1327:                         ; preds = %lean_alloc_ctor.exit1326
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store i32 1, ptr %i.fk, align 4, !tbaa !16
  store i32 65552, ptr %i.fm, align 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.ff, ptr %i.fn, align 8, !tbaa !14
  br label %lean_dec.exit1175

bb.cl:                                            ; preds = %bb.ne, %bb.nf, %bb.ng, %bb.nc
  %i.fo = icmp eq i8 %i.ux, 0
  %i.fp = icmp eq i8 %2, 0
  %i.fq = or i1 %i.fp, %i.fo
  br i1 %i.fq, label %lean_dec.exit1219, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  br i1 %.not.i1473, label %bb.cn, label %lean_inc.exit987

bb.cn:                                            ; preds = %bb.cm
  %.val.i.i1328 = load i32, ptr %i.ug, align 4, !tbaa !16 ; 3 uses
  %i.fr = icmp sgt i32 %.val.i.i1328, 0
  br i1 %i.fr, label %bb.co, label %bb.cp, !prof !13

bb.co:                                            ; preds = %bb.cn
  %i.fs = add nuw i32 %.val.i.i1328, 1
  store i32 %i.fs, ptr %i.ug, align 4, !tbaa !16
  br label %lean_inc.exit987

bb.cp:                                            ; preds = %bb.cn
  %.not.i.i1329 = icmp eq i32 %.val.i.i1328, 0
  br i1 %.not.i.i1329, label %lean_inc.exit987, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ft = atomicrmw sub ptr %i.ug, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit987

lean_inc.exit987:                                 ; preds = %bb.cq, %bb.cp, %bb.co, %bb.cm
  %i.fu = tail call ptr @l_Lean_unresolveNameGlobalAvoidingLocals___at___00__private_Lean_Elab_DocString_Builtin_Keywords_0__Lean_Doc_kwImpl_ofSuggestions_spec__0(ptr noundef %i.ug, i8 noundef zeroext %10, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) ; 13 uses
  %i.fv = ptrtoint ptr %i.fu to i64               ; 2 uses
  %i.fw = and i64 %i.fv, 1
  %.not.i1331 = icmp eq i64 %i.fw, 0              ; 2 uses
  br i1 %.not.i1331, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %lean_inc.exit987
  %i.fx = lshr i64 %i.fv, 1
  %i.fy = trunc i64 %i.fx to i32
  br label %lean_obj_tag.exit1334

bb.cs:                                            ; preds = %lean_inc.exit987
  %i.fz = getelementptr i8, ptr %i.fu, i64 4
  %.val.i1333 = load i32, ptr %i.fz, align 4
  %i.ga = lshr i32 %.val.i1333, 24
  br label %lean_obj_tag.exit1334

lean_obj_tag.exit1334:                            ; preds = %bb.cr, %bb.cs
  %.0.i1332 = phi i32 [ %i.fy, %bb.cr ], [ %i.ga, %bb.cs ]
  %i.gb = icmp eq i32 %.0.i1332, 0
  br i1 %i.gb, label %bb.ct, label %bb.fw

bb.ct:                                            ; preds = %lean_obj_tag.exit1334
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !14 ; 5 uses
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = and i64 %i.ge, 1
  %.not.i984 = icmp eq i64 %i.gf, 0
  br i1 %.not.i984, label %bb.cu, label %lean_inc.exit985

bb.cu:                                            ; preds = %bb.ct
  %.val.i.i1335 = load i32, ptr %i.gd, align 4, !tbaa !16 ; 3 uses
  %i.gg = icmp sgt i32 %.val.i.i1335, 0
  br i1 %i.gg, label %bb.cv, label %bb.cw, !prof !13

bb.cv:                                            ; preds = %bb.cu
  %i.gh = add nuw i32 %.val.i.i1335, 1
  store i32 %i.gh, ptr %i.gd, align 4, !tbaa !16
  br label %lean_inc.exit985

bb.cw:                                            ; preds = %bb.cu
  %.not.i.i1336 = icmp eq i32 %.val.i.i1335, 0
  br i1 %.not.i.i1336, label %lean_inc.exit985, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.gi = atomicrmw sub ptr %i.gd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit985

lean_inc.exit985:                                 ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.ct
  %.val.i1338 = load i32, ptr %i.fu, align 8, !tbaa !16 ; 4 uses
  %i.gj = icmp eq i32 %.val.i1338, 1
  br i1 %i.gj, label %.preheader.i1341.preheader, label %bb.dc

.preheader.i1341.preheader:                       ; preds = %lean_inc.exit985
  %i.gk = load ptr, ptr %i.gc, align 8, !tbaa !14 ; 4 uses
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = and i64 %i.gl, 1
  %.not.i7.i1343 = icmp eq i64 %i.gm, 0
  br i1 %.not.i7.i1343, label %bb.cy, label %lean_dec.exit.i1344

bb.cy:                                            ; preds = %.preheader.i1341.preheader
  %i.gn = load i32, ptr %i.gk, align 4, !tbaa !16 ; 3 uses
  %i.go = icmp sgt i32 %i.gn, 1
  br i1 %i.go, label %bb.cz, label %bb.da, !prof !13

bb.cz:                                            ; preds = %bb.cy
  %i.gp = add nsw i32 %i.gn, -1
  store i32 %i.gp, ptr %i.gk, align 4, !tbaa !16
  br label %lean_dec.exit.i1344

bb.da:                                            ; preds = %bb.cy
  %.not.i.i.i1348 = icmp eq i32 %i.gn, 0
  br i1 %.not.i.i.i1348, label %lean_dec.exit.i1344, label %bb.db

bb.db:                                            ; preds = %bb.da
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gk) #6
  br label %lean_dec.exit.i1344

lean_dec.exit.i1344:                              ; preds = %bb.db, %bb.da, %bb.cz, %.preheader.i1341.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.fu) #6
  br label %lean_dec_ref_known.exit1349

bb.dc:                                            ; preds = %lean_inc.exit985
  %i.gq = icmp sgt i32 %.val.i1338, 1
  br i1 %i.gq, label %bb.dd, label %bb.de, !prof !13

bb.dd:                                            ; preds = %bb.dc
  %i.gr = add nsw i32 %.val.i1338, -1
  store i32 %i.gr, ptr %i.fu, align 8, !tbaa !16
  br label %lean_dec_ref_known.exit1349

bb.de:                                            ; preds = %bb.dc
  %.not.i.i1339 = icmp eq i32 %.val.i1338, 0
  br i1 %.not.i.i1339, label %lean_dec_ref_known.exit1349, label %bb.df

bb.df:                                            ; preds = %bb.de
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fu) #6
  br label %lean_dec_ref_known.exit1349

lean_dec_ref_known.exit1349:                      ; preds = %lean_dec.exit.i1344, %bb.dd, %bb.de, %bb.df
  %i.gs = load atomic i32, ptr @l___private_Lean_Elab_DocString_Builtin_Keywords_0__Lean_Doc_kwImpl___closed__1_once seq_cst, align 4, !tbaa !11
  %i.gt = icmp eq i32 %i.gs, 1
  br i1 %i.gt, label %bb.dg, label %bb.dh, !prof !13

bb.dg:                                            ; preds = %lean_dec_ref_known.exit1349
  %i.gu = load ptr, ptr @l___private_Lean_Elab_DocString_Builtin_Keywords_0__Lean_Doc_kwImpl___closed__1, align 8, !tbaa !14
  br label %lean_obj_once.exit

bb.dh:                                            ; preds = %lean_dec_ref_known.exit1349
  %i.gv = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Elab_DocString_Builtin_Keywords_0__Lean_Doc_kwImpl___closed__1, ptr noundef nonnull @l___private_Lean_Elab_DocString_Builtin_Keywords_0__Lean_Doc_kwImpl___closed__1_once, ptr noundef nonnull @_init_l___private_Lean_Elab_DocString_Builtin_Keywords_0__Lean_Doc_kwImpl___closed__1) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.dg, %bb.dh
  %.0.i1350 = phi ptr [ %i.gu, %bb.dg ], [ %i.gv, %bb.dh ]
  %i.gw = tail call ptr @l_Lean_Name_toStringWithToken___at___00Lean_Name_toString_spec__0(ptr noundef %i.gd, i8 noundef zeroext %2) #6 ; 4 uses
  %i.gx = tail call ptr @lean_string_append(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00__private_Lean_Elab_DocString_Builtin_Keywords_0__Lean_Doc_kwImpl_ofSuggestions_spec__1___closed__0_value, ptr noundef %i.gw) #6
  %i.gy = load i32, ptr %i.gw, align 4, !tbaa !16 ; 3 uses
  %i.gz = icmp sgt i32 %i.gy, 1
  br i1 %i.gz, label %bb.di, label %bb.dj, !prof !13

bb.di:                                            ; preds = %lean_obj_once.exit
  %i.ha = add nsw i32 %i.gy, -1
  store i32 %i.ha, ptr %i.gw, align 4, !tbaa !16
  br label %lean_mk_empty_array_with_capacity.exit1353

bb.dj:                                            ; preds = %lean_obj_once.exit
  %.not.i1027 = icmp eq i32 %i.gy, 0
  br i1 %.not.i1027, label %lean_mk_empty_array_with_capacity.exit1353, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gw) #6
  br label %lean_mk_empty_array_with_capacity.exit1353

lean_mk_empty_array_with_capacity.exit1353:       ; preds = %bb.dk, %bb.dj, %bb.di
  %i.hb = tail call ptr @lean_string_append(ptr noundef %i.gx, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00__private_Lean_Elab_DocString_Builtin_Keywords_0__Lean_Doc_kwImpl_categorySuggestions_spec__1___closed__1_value) #6
  %i.hc = tail call ptr @lean_alloc_object(i64 noundef 32) #6 ; 5 uses
  store i32 1, ptr %i.hc, align 4, !tbaa !16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4
  %i.hf = and i32 %i.he, 65535
  %i.hg = or disjoint i32 %i.hf, -167772160
  store i32 %i.hg, ptr %i.hd, align 4
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store i64 0, ptr %i.hh, align 8, !tbaa !9
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  store i64 1, ptr %i.hi, align 8, !tbaa !9
  %i.hj = tail call ptr @lean_array_push(ptr noundef nonnull %i.hc, ptr noundef %i.hb) #6
  %i.hk = tail call ptr @l___private_Lean_Elab_DocString_Builtin_Keywords_0__Lean_Doc_kwImpl_makeHint___redArg(ptr noundef %.0.i1350, ptr noundef %i.hj, ptr noundef %8, ptr noundef %9) ; 11 uses
  %i.hl = ptrtoint ptr %i.hk to i64               ; 2 uses
  %i.hm = and i64 %i.hl, 1
  %.not.i1354 = icmp eq i64 %i.hm, 0              ; 2 uses
  br i1 %.not.i1354, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %lean_mk_empty_array_with_capacity.exit1353
  %i.hn = lshr i64 %i.hl, 1
  %i.ho = trunc i64 %i.hn to i32
  br label %lean_obj_tag.exit1357

bb.dm:                                            ; preds = %lean_mk_empty_array_with_capacity.exit1353
  %i.hp = getelementptr i8, ptr %i.hk, i64 4
  %.val.i1356 = load i32, ptr %i.hp, align 4
  %i.hq = lshr i32 %.val.i1356, 24
  br label %lean_obj_tag.exit1357

lean_obj_tag.exit1357:                            ; preds = %bb.dl, %bb.dm
  %.0.i1355 = phi i32 [ %i.ho, %bb.dl ], [ %i.hq, %bb.dm ]
  %i.hr = icmp eq i32 %.0.i1355, 0
  br i1 %i.hr, label %bb.dn, label %bb.fa

bb.dn:                                            ; preds = %lean_obj_tag.exit1357
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !14 ; 10 uses
  %i.hu = ptrtoint ptr %i.ht to i64               ; 2 uses
  %i.hv = and i64 %i.hu, 1
  %.not.i982 = icmp eq i64 %i.hv, 0
  br i1 %.not.i982, label %bb.do, label %lean_obj_tag.exit1364.thread

bb.do:                                            ; preds = %bb.dn
  %.val.i.i1358 = load i32, ptr %i.ht, align 4, !tbaa !16 ; 3 uses
  %i.hw = icmp sgt i32 %.val.i.i1358, 0
  br i1 %i.hw, label %bb.dp, label %bb.dq, !prof !13

bb.dp:                                            ; preds = %bb.do
  %i.hx = add nuw i32 %.val.i.i1358, 1
  store i32 %i.hx, ptr %i.ht, align 4, !tbaa !16
  br label %lean_obj_tag.exit1364

bb.dq:                                            ; preds = %bb.do
  %.not.i.i1359 = icmp eq i32 %.val.i.i1358, 0
  br i1 %.not.i.i1359, label %lean_obj_tag.exit1364, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.hy = atomicrmw sub ptr %i.ht, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_obj_tag.exit1364

lean_obj_tag.exit1364:                            ; preds = %bb.dp, %bb.dq, %bb.dr
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.hk, i32 noundef 1)
  %i.hz = getelementptr i8, ptr %i.ht, i64 4
  %.val.i1363 = load i32, ptr %i.hz, align 4
  %.mask1833 = and i32 %.val.i1363, -16777216
  %i.ia = icmp eq i32 %.mask1833, 16777216
end_hunk_0
begin_hunk_1_@l___private_Lean_Elab_DocString_Builtin_Keywords_0__Lean_Doc_kwImpl:bb.a
  %i.rl = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.rm = icmp eq ptr %i.rl, null
  br i1 %i.rm, label %bb.kv, label %lean_alloc_ctor.exit1443

bb.kv:                                            ; preds = %bb.ku
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit1443:                         ; preds = %bb.ku
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  store i32 1, ptr %i.rl, align 4, !tbaa !16
  store i32 16842768, ptr %i.rn, align 4
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  store ptr %i.rb, ptr %i.ro, align 8, !tbaa !14
  br label %lean_dec.exit1175

lean_obj_once.exit1424:                           ; preds = %bb.jv, %bb.ju, %bb.jt, %lean_dec.exit.i1434, %bb.ji, %bb.jh
  %.1777 = phi ptr [ %i.pv, %bb.ji ], [ %i.px, %bb.jv ], [ %i.px, %bb.ju ], [ %i.pu, %bb.jh ], [ %i.px, %lean_dec.exit.i1434 ], [ %i.px, %bb.jt ]
  tail call void @lean_inc_heartbeat() #6
  %i.rp = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.rq = icmp eq ptr %i.rp, null
  br i1 %i.rq, label %bb.gt, label %lean_alloc_ctor.exit1382

bb.kw:                                            ; preds = %lean_alloc_ctor.exit1554, %bb.xa, %bb.xb, %bb.xc
  %.1857.ph = phi ptr [ %i.aik, %bb.xc ], [ %i.aik, %bb.xb ], [ %i.aik, %bb.xa ], [ %i.aga, %lean_alloc_ctor.exit1554 ] ; 5 uses
  %i.rr = getelementptr i8, ptr %.1857.ph, i64 8
  %.1857.val = load i64, ptr %i.rr, align 8, !tbaa !9
  %i.rs = ptrtoint ptr %i.bd to i64
  %i.rt = and i64 %i.rs, 1
  %.not.i964 = icmp eq i64 %i.rt, 0               ; 5 uses
  br i1 %.not.i964, label %bb.kx, label %lean_inc.exit965

bb.kx:                                            ; preds = %bb.kw
  %.val.i.i1444 = load i32, ptr %i.bd, align 4, !tbaa !16 ; 3 uses
  %i.ru = icmp sgt i32 %.val.i.i1444, 0
  br i1 %i.ru, label %bb.ky, label %bb.kz, !prof !13

bb.ky:                                            ; preds = %bb.kx
  %i.rv = add nuw i32 %.val.i.i1444, 1
  store i32 %i.rv, ptr %i.bd, align 4, !tbaa !16
  br label %lean_inc.exit965

bb.kz:                                            ; preds = %bb.kx
  %.not.i.i1445 = icmp eq i32 %.val.i.i1444, 0
  br i1 %.not.i.i1445, label %lean_inc.exit965, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.rw = atomicrmw sub ptr %i.bd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit965

lean_inc.exit965:                                 ; preds = %bb.la, %bb.kz, %bb.ky, %bb.kw
  %i.rx = ptrtoint ptr %.1874 to i64
  %i.ry = and i64 %i.rx, 1
  %.not.i962 = icmp eq i64 %i.ry, 0               ; 6 uses
  br i1 %.not.i962, label %bb.lb, label %lean_inc.exit963

bb.lb:                                            ; preds = %lean_inc.exit965
  %.val.i.i1447 = load i32, ptr %.1874, align 4, !tbaa !16 ; 3 uses
  %i.rz = icmp sgt i32 %.val.i.i1447, 0
  br i1 %i.rz, label %bb.lc, label %bb.ld, !prof !13

bb.lc:                                            ; preds = %bb.lb
  %i.sa = add nuw i32 %.val.i.i1447, 1
  store i32 %i.sa, ptr %.1874, align 4, !tbaa !16
  br label %lean_inc.exit963

bb.ld:                                            ; preds = %bb.lb
  %.not.i.i1448 = icmp eq i32 %.val.i.i1447, 0
  br i1 %.not.i.i1448, label %lean_inc.exit963, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.sb = atomicrmw sub ptr %.1874, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit963

lean_inc.exit963:                                 ; preds = %bb.le, %bb.ld, %bb.lc, %lean_inc.exit965
  %i.sc = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_DocString_Builtin_Keywords_0__Lean_Doc_kwImpl_spec__4(ptr noundef %.1874, ptr noundef %i.bd, ptr noundef nonnull %.1857.ph, i64 noundef %.1857.val, i64 noundef 0, ptr noundef nonnull @l___private_Lean_Elab_DocString_Builtin_Keywords_0__Lean_Doc_kwImpl_categorySuggestions___closed__0_value, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) ; 13 uses
  %i.sd = load i32, ptr %.1857.ph, align 8, !tbaa !16 ; 3 uses
  %i.se = icmp sgt i32 %i.sd, 1
  br i1 %i.se, label %bb.lf, label %bb.lg, !prof !13

bb.lf:                                            ; preds = %lean_inc.exit963
  %i.sf = add nsw i32 %i.sd, -1
  store i32 %i.sf, ptr %.1857.ph, align 8, !tbaa !16
  br label %lean_dec_ref.exit1012

bb.lg:                                            ; preds = %lean_inc.exit963
  %.not.i1011 = icmp eq i32 %i.sd, 0
  br i1 %.not.i1011, label %lean_dec_ref.exit1012, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1857.ph) #6
  br label %lean_dec_ref.exit1012

lean_dec_ref.exit1012:                            ; preds = %bb.lf, %bb.lg, %bb.lh
  %i.sg = ptrtoint ptr %i.sc to i64               ; 2 uses
  %i.sh = and i64 %i.sg, 1
  %.not.i1450 = icmp eq i64 %i.sh, 0              ; 2 uses
  br i1 %.not.i1450, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %lean_dec_ref.exit1012
  %i.si = lshr i64 %i.sg, 1
  %i.sj = trunc i64 %i.si to i32
  br label %lean_obj_tag.exit1453

bb.lj:                                            ; preds = %lean_dec_ref.exit1012
  %i.sk = getelementptr i8, ptr %i.sc, i64 4
  %.val.i1452 = load i32, ptr %i.sk, align 4
  %i.sl = lshr i32 %.val.i1452, 24
  br label %lean_obj_tag.exit1453

lean_obj_tag.exit1453:                            ; preds = %bb.li, %bb.lj
  %.0.i1451 = phi i32 [ %i.sj, %bb.li ], [ %i.sl, %bb.lj ]
  %i.sm = icmp eq i32 %.0.i1451, 0
  br i1 %i.sm, label %bb.lk, label %bb.sx

bb.lk:                                            ; preds = %lean_obj_tag.exit1453
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sc, i64 8 ; 2 uses
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !14 ; 18 uses
  %i.sp = ptrtoint ptr %i.so to i64
  %i.sq = and i64 %i.sp, 1
  %.not.i960 = icmp eq i64 %i.sq, 0               ; 4 uses
  br i1 %.not.i960, label %bb.ll, label %lean_inc.exit961

bb.ll:                                            ; preds = %bb.lk
  %.val.i.i1454 = load i32, ptr %i.so, align 4, !tbaa !16 ; 3 uses
  %i.sr = icmp sgt i32 %.val.i.i1454, 0
  br i1 %i.sr, label %bb.lm, label %bb.ln, !prof !13

bb.lm:                                            ; preds = %bb.ll
  %i.ss = add nuw i32 %.val.i.i1454, 1
  store i32 %i.ss, ptr %i.so, align 4, !tbaa !16
  br label %lean_inc.exit961

bb.ln:                                            ; preds = %bb.ll
  %.not.i.i1455 = icmp eq i32 %.val.i.i1454, 0
  br i1 %.not.i.i1455, label %lean_inc.exit961, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.st = atomicrmw sub ptr %i.so, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit961

lean_inc.exit961:                                 ; preds = %bb.lo, %bb.ln, %bb.lm, %bb.lk
  %.val.i1457 = load i32, ptr %i.sc, align 8, !tbaa !16 ; 4 uses
  %i.su = icmp eq i32 %.val.i1457, 1
  br i1 %i.su, label %.preheader.i1460.preheader, label %bb.lt

.preheader.i1460.preheader:                       ; preds = %lean_inc.exit961
  %i.sv = load ptr, ptr %i.sn, align 8, !tbaa !14 ; 4 uses
  %i.sw = ptrtoint ptr %i.sv to i64
  %i.sx = and i64 %i.sw, 1
  %.not.i7.i1462 = icmp eq i64 %i.sx, 0
  br i1 %.not.i7.i1462, label %bb.lp, label %lean_dec.exit.i1463

bb.lp:                                            ; preds = %.preheader.i1460.preheader
  %i.sy = load i32, ptr %i.sv, align 4, !tbaa !16 ; 3 uses
  %i.sz = icmp sgt i32 %i.sy, 1
  br i1 %i.sz, label %bb.lq, label %bb.lr, !prof !13

bb.lq:                                            ; preds = %bb.lp
  %i.ta = add nsw i32 %i.sy, -1
  store i32 %i.ta, ptr %i.sv, align 4, !tbaa !16
  br label %lean_dec.exit.i1463

bb.lr:                                            ; preds = %bb.lp
  %.not.i.i.i1467 = icmp eq i32 %i.sy, 0
  br i1 %.not.i.i.i1467, label %lean_dec.exit.i1463, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.sv) #6
  br label %lean_dec.exit.i1463

lean_dec.exit.i1463:                              ; preds = %bb.ls, %bb.lr, %bb.lq, %.preheader.i1460.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.sc) #6
  br label %lean_nat_eq.exit

bb.lt:                                            ; preds = %lean_inc.exit961
  %i.tb = icmp sgt i32 %.val.i1457, 1
  br i1 %i.tb, label %bb.lu, label %bb.lv, !prof !13

bb.lu:                                            ; preds = %bb.lt
  %i.tc = add nsw i32 %.val.i1457, -1
  store i32 %i.tc, ptr %i.sc, align 8, !tbaa !16
  br label %lean_nat_eq.exit

bb.lv:                                            ; preds = %bb.lt
  %.not.i.i1458 = icmp eq i32 %.val.i1457, 0
  br i1 %.not.i.i1458, label %lean_nat_eq.exit, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.sc) #6
  br label %lean_nat_eq.exit

lean_nat_eq.exit:                                 ; preds = %bb.lw, %bb.lv, %bb.lu, %lean_dec.exit.i1463
  %i.td = getelementptr i8, ptr %i.so, i64 8
  %.val1279 = load i64, ptr %i.td, align 8, !tbaa !9 ; 2 uses
  %i.te = shl i64 %.val1279, 1                    ; 2 uses
  %.not = icmp eq i64 %i.te, 0
  br i1 %.not, label %bb.qp, label %lean_nat_lt.exit

lean_nat_lt.exit:                                 ; preds = %lean_nat_eq.exit
  %i.tf = icmp ugt i64 %i.te, 3                   ; 2 uses
  %10 = zext i1 %i.tf to i8
  br i1 %i.tf, label %bb.oh, label %bb.lx

bb.lx:                                            ; preds = %lean_nat_lt.exit
  %i.tg = ptrtoint ptr %i.bf to i64
  %i.th = and i64 %i.tg, 1
  %.not.i1156 = icmp eq i64 %i.th, 0
  br i1 %.not.i1156, label %bb.ly, label %lean_dec.exit1159

bb.ly:                                            ; preds = %bb.lx
  %i.ti = load i32, ptr %i.bf, align 4, !tbaa !16 ; 3 uses
  %i.tj = icmp sgt i32 %i.ti, 1
  br i1 %i.tj, label %bb.lz, label %bb.ma, !prof !13

bb.lz:                                            ; preds = %bb.ly
  %i.tk = add nsw i32 %i.ti, -1
  store i32 %i.tk, ptr %i.bf, align 4, !tbaa !16
  br label %lean_dec.exit1159

bb.ma:                                            ; preds = %bb.ly
  %.not.i.i1157 = icmp eq i32 %i.ti, 0
  br i1 %.not.i.i1157, label %lean_dec.exit1159, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bf) #6
  br label %lean_dec.exit1159

lean_dec.exit1159:                                ; preds = %bb.lz, %bb.ma, %bb.mb, %bb.lx
  br i1 %.not.i964, label %bb.mc, label %lean_dec.exit1155

bb.mc:                                            ; preds = %lean_dec.exit1159
  %i.tl = load i32, ptr %i.bd, align 4, !tbaa !16 ; 3 uses
  %i.tm = icmp sgt i32 %i.tl, 1
  br i1 %i.tm, label %bb.md, label %bb.me, !prof !13

bb.md:                                            ; preds = %bb.mc
  %i.tn = add nsw i32 %i.tl, -1
  store i32 %i.tn, ptr %i.bd, align 4, !tbaa !16
  br label %lean_dec.exit1155

bb.me:                                            ; preds = %bb.mc
  %.not.i.i1153 = icmp eq i32 %i.tl, 0
  br i1 %.not.i.i1153, label %lean_dec.exit1155, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bd) #6
  br label %lean_dec.exit1155

lean_dec.exit1155:                                ; preds = %bb.md, %bb.me, %bb.mf, %lean_dec.exit1159
  %i.to = getelementptr inbounds nuw i8, ptr %i.so, i64 24
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !14 ; 9 uses
  %i.tq = ptrtoint ptr %i.tp to i64
  %i.tr = and i64 %i.tq, 1
  %.not.i.i.i1469 = icmp eq i64 %i.tr, 0          ; 2 uses
  br i1 %.not.i.i.i1469, label %bb.mg, label %lean_array_fget.exit

bb.mg:                                            ; preds = %lean_dec.exit1155
  %.val.i.i.i.i = load i32, ptr %i.tp, align 4, !tbaa !16 ; 3 uses
  %i.ts = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.ts, label %bb.mh, label %bb.mi, !prof !13

bb.mh:                                            ; preds = %bb.mg
  %i.tt = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.tt, ptr %i.tp, align 4, !tbaa !16
  br label %lean_array_fget.exit

bb.mi:                                            ; preds = %bb.mg
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %lean_array_fget.exit, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.tu = atomicrmw sub ptr %i.tp, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_array_fget.exit

lean_array_fget.exit:                             ; preds = %lean_dec.exit1155, %bb.mh, %bb.mi, %bb.mj
  br i1 %.not.i960, label %bb.mk, label %lean_dec.exit1151

bb.mk:                                            ; preds = %lean_array_fget.exit
  %i.tv = load i32, ptr %i.so, align 8, !tbaa !16 ; 3 uses
  %i.tw = icmp sgt i32 %i.tv, 1
  br i1 %i.tw, label %bb.ml, label %bb.mm, !prof !13

bb.ml:                                            ; preds = %bb.mk
  %i.tx = add nsw i32 %i.tv, -1
  store i32 %i.tx, ptr %i.so, align 8, !tbaa !16
  br label %lean_dec.exit1151

bb.mm:                                            ; preds = %bb.mk
  %.not.i.i1149 = icmp eq i32 %i.tv, 0
  br i1 %.not.i.i1149, label %lean_dec.exit1151, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.so) #6
  br label %lean_dec.exit1151

lean_dec.exit1151:                                ; preds = %bb.ml, %bb.mm, %bb.mn, %lean_array_fget.exit
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !14 ; 17 uses
  %i.ua = ptrtoint ptr %i.tz to i64
  %i.ub = and i64 %i.ua, 1
  %.not.i958 = icmp eq i64 %i.ub, 0               ; 5 uses
  br i1 %.not.i958, label %bb.mo, label %lean_inc.exit959

bb.mo:                                            ; preds = %lean_dec.exit1151
  %.val.i.i1470 = load i32, ptr %i.tz, align 4, !tbaa !16 ; 3 uses
  %i.uc = icmp sgt i32 %.val.i.i1470, 0
  br i1 %i.uc, label %bb.mp, label %bb.mq, !prof !13

bb.mp:                                            ; preds = %bb.mo
  %i.ud = add nuw i32 %.val.i.i1470, 1
  store i32 %i.ud, ptr %i.tz, align 4, !tbaa !16
  br label %lean_inc.exit959

bb.mq:                                            ; preds = %bb.mo
  %.not.i.i1471 = icmp eq i32 %.val.i.i1470, 0
  br i1 %.not.i.i1471, label %lean_inc.exit959, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.ue = atomicrmw sub ptr %i.tz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit959

lean_inc.exit959:                                 ; preds = %bb.mr, %bb.mq, %bb.mp, %lean_dec.exit1151
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !14 ; 22 uses
  %i.uh = ptrtoint ptr %i.ug to i64
  %i.ui = and i64 %i.uh, 1
  %.not.i1473 = icmp eq i64 %i.ui, 0              ; 6 uses
  br i1 %.not.i1473, label %bb.ms, label %lean_inc_n.exit

bb.ms:                                            ; preds = %lean_inc.exit959
  %.val.i.i1474 = load i32, ptr %i.ug, align 4, !tbaa !16 ; 3 uses
  %i.uj = icmp sgt i32 %.val.i.i1474, 0
  br i1 %i.uj, label %bb.mt, label %bb.mu, !prof !13

bb.mt:                                            ; preds = %bb.ms
  %i.uk = add nuw i32 %.val.i.i1474, 2
  store i32 %i.uk, ptr %i.ug, align 4, !tbaa !16
  br label %lean_inc_n.exit

bb.mu:                                            ; preds = %bb.ms
  %.not.i.i1475 = icmp eq i32 %.val.i.i1474, 0
  br i1 %.not.i.i1475, label %lean_inc_n.exit, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.ul = atomicrmw sub ptr %i.ug, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit

lean_inc_n.exit:                                  ; preds = %lean_inc.exit959, %bb.mt, %bb.mu, %bb.mv
  br i1 %.not.i.i.i1469, label %bb.mw, label %lean_dec.exit1147

bb.mw:                                            ; preds = %lean_inc_n.exit
  %i.um = load i32, ptr %i.tp, align 8, !tbaa !16 ; 3 uses
  %i.un = icmp sgt i32 %i.um, 1
  br i1 %i.un, label %bb.mx, label %bb.my, !prof !13

bb.mx:                                            ; preds = %bb.mw
  %i.uo = add nsw i32 %i.um, -1
  store i32 %i.uo, ptr %i.tp, align 8, !tbaa !16
  br label %lean_dec.exit1147

bb.my:                                            ; preds = %bb.mw
  %.not.i.i1145 = icmp eq i32 %i.um, 0
  br i1 %.not.i.i1145, label %lean_dec.exit1147, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.tp) #6
  br label %lean_dec.exit1147

lean_dec.exit1147:                                ; preds = %bb.mx, %bb.my, %bb.mz, %lean_inc_n.exit
  %i.up = tail call ptr @l_Lean_Elab_addConstInfo___at___00__private_Lean_Elab_DocString_Builtin_Keywords_0__Lean_Doc_kwImpl_spec__5(ptr noundef %3, ptr noundef %i.ug, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %4, ptr poison, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) ; 9 uses
  %i.uq = ptrtoint ptr %i.up to i64               ; 2 uses
  %i.ur = and i64 %i.uq, 1
  %.not.i1476 = icmp eq i64 %i.ur, 0              ; 2 uses
  br i1 %.not.i1476, label %bb.nb, label %bb.na

bb.na:                                            ; preds = %lean_dec.exit1147
  %i.us = lshr i64 %i.uq, 1
  %i.ut = trunc i64 %i.us to i32
  br label %lean_obj_tag.exit1479

bb.nb:                                            ; preds = %lean_dec.exit1147
  %i.uu = getelementptr i8, ptr %i.up, i64 4
  %.val.i1478 = load i32, ptr %i.uu, align 4
  %i.uv = lshr i32 %.val.i1478, 24
  br label %lean_obj_tag.exit1479

lean_obj_tag.exit1479:                            ; preds = %bb.na, %bb.nb
  %.0.i1477 = phi i32 [ %i.ut, %bb.na ], [ %i.uv, %bb.nb ]
  %i.uw = icmp eq i32 %.0.i1477, 0
  br i1 %i.uw, label %bb.nc, label %bb.nh

bb.nc:                                            ; preds = %lean_obj_tag.exit1479
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.up, i32 noundef 1)
  %i.ux = tail call zeroext i8 @l_Lean_Name_isAnonymous(ptr noundef %.1874) #6
  br i1 %.not.i962, label %bb.nd, label %bb.cl

bb.nd:                                            ; preds = %bb.nc
  %i.uy = load i32, ptr %.1874, align 4, !tbaa !16 ; 3 uses
  %i.uz = icmp sgt i32 %i.uy, 1
  br i1 %i.uz, label %bb.ne, label %bb.nf, !prof !13

end_hunk_1
