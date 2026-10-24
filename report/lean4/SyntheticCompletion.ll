Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/SyntheticCompletion?download=true
inline.NumInlined: 883
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@l___private_Lean_Server_Completion_SyntheticCompletion_0__Lean_Server_Completion_findSyntheticIdentifierCompletion_x3f:bb.a
bb.dj:                                            ; preds = %bb.dh
  %.not.i283 = icmp eq i32 %i.fo, 0
  br i1 %.not.i283, label %lean_dec.exit225, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit225

bb.dl:                                            ; preds = %lean_inc.exit329
  %i.fr = tail call ptr @l_Lean_TSyntax_getId(ptr noundef nonnull %i.ep) #6 ; 3 uses
  %i.fs = load i32, ptr %i.ep, align 4, !tbaa !10 ; 3 uses
  %i.ft = icmp sgt i32 %i.fs, 1
  br i1 %i.ft, label %bb.dm, label %bb.dn, !prof !11

bb.dm:                                            ; preds = %bb.dl
  %i.fu = add nsw i32 %i.fs, -1
  store i32 %i.fu, ptr %i.ep, align 4, !tbaa !10
  br label %lean_dec.exit245

bb.dn:                                            ; preds = %bb.dl
  %.not.i285 = icmp eq i32 %i.fs, 0
  br i1 %.not.i285, label %lean_dec.exit245, label %bb.do

bb.do:                                            ; preds = %bb.dn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ep) #6
  br label %lean_dec.exit245

bb.dp:                                            ; preds = %lean_inc.exit333.thread, %lean_inc.exit333
  %i.fv = tail call ptr @l_Lean_TSyntax_getId(ptr noundef %i.da) #6
  br label %lean_dec.exit245

bb.dq:                                            ; preds = %lean_dec.exit253
  br i1 %.not.i334, label %bb.dr, label %lean_dec.exit231

bb.dr:                                            ; preds = %bb.dq
  %i.fw = load i32, ptr %i.da, align 4, !tbaa !10 ; 3 uses
  %i.fx = icmp sgt i32 %i.fw, 1
  br i1 %i.fx, label %bb.ds, label %bb.dt, !prof !11

bb.ds:                                            ; preds = %bb.dr
  %i.fy = add nsw i32 %i.fw, -1
  store i32 %i.fy, ptr %i.da, align 4, !tbaa !10
  br label %lean_dec.exit231

bb.dt:                                            ; preds = %bb.dr
  %.not.i287 = icmp eq i32 %i.fw, 0
  br i1 %.not.i287, label %lean_dec.exit231, label %bb.du

bb.du:                                            ; preds = %bb.dt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.da) #6
  br label %lean_dec.exit231

lean_dec.exit231:                                 ; preds = %bb.du, %bb.dt, %bb.ds, %bb.dq
  %i.fz = ptrtoint ptr %.0192 to i64
  %i.ga = and i64 %i.fz, 1
  %.not.i402 = icmp eq i64 %i.ga, 0
  br i1 %.not.i402, label %bb.dv, label %lean_del_object.exit403

bb.dv:                                            ; preds = %lean_dec.exit231
  tail call void @lean_free_object(ptr noundef nonnull %.0192) #6
  br label %lean_del_object.exit403

lean_del_object.exit403:                          ; preds = %lean_dec.exit231, %bb.dv
  %i.gb = ptrtoint ptr %.0171 to i64
  %i.gc = and i64 %i.gb, 1
  %.not.i404 = icmp eq i64 %i.gc, 0
  br i1 %.not.i404, label %bb.dw, label %lean_del_object.exit405

bb.dw:                                            ; preds = %lean_del_object.exit403
  tail call void @lean_free_object(ptr noundef nonnull %.0171) #6
  br label %lean_del_object.exit405

lean_del_object.exit405:                          ; preds = %lean_del_object.exit403, %bb.dw
  br i1 %.not.i342, label %bb.dx, label %lean_dec.exit229

bb.dx:                                            ; preds = %lean_del_object.exit405
  %i.gd = load i32, ptr %i.as, align 4, !tbaa !10 ; 3 uses
  %i.ge = icmp sgt i32 %i.gd, 1
  br i1 %i.ge, label %bb.dy, label %bb.dz, !prof !11

bb.dy:                                            ; preds = %bb.dx
  %i.gf = add nsw i32 %i.gd, -1
  store i32 %i.gf, ptr %i.as, align 4, !tbaa !10
  br label %lean_dec.exit229

bb.dz:                                            ; preds = %bb.dx
  %.not.i289 = icmp eq i32 %i.gd, 0
  br i1 %.not.i289, label %lean_dec.exit229, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.as) #6
  br label %lean_dec.exit229

lean_dec.exit229:                                 ; preds = %bb.ea, %bb.dz, %bb.dy, %lean_del_object.exit405
  br i1 %.not.i344, label %bb.eb, label %lean_dec.exit227

bb.eb:                                            ; preds = %lean_dec.exit229
  %i.gg = load i32, ptr %i.al, align 4, !tbaa !10 ; 3 uses
  %i.gh = icmp sgt i32 %i.gg, 1
  br i1 %i.gh, label %bb.ec, label %bb.ed, !prof !11

bb.ec:                                            ; preds = %bb.eb
  %i.gi = add nsw i32 %i.gg, -1
  store i32 %i.gi, ptr %i.al, align 4, !tbaa !10
  br label %lean_dec.exit227

bb.ed:                                            ; preds = %bb.eb
  %.not.i291 = icmp eq i32 %i.gg, 0
  br i1 %.not.i291, label %lean_dec.exit227, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.al) #6
  br label %lean_dec.exit227

lean_dec.exit227:                                 ; preds = %bb.ee, %bb.ed, %bb.ec, %lean_dec.exit229
  br i1 %.not.i348, label %lean_dec.exit225, label %bb.ef

bb.ef:                                            ; preds = %lean_dec.exit227
  %i.gj = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.gk = icmp sgt i32 %i.gj, 1
  br i1 %i.gk, label %bb.eg, label %bb.eh, !prof !11

bb.eg:                                            ; preds = %bb.ef
  %i.gl = add nsw i32 %i.gj, -1
  store i32 %i.gl, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit225

bb.eh:                                            ; preds = %bb.ef
  %.not.i293 = icmp eq i32 %i.gj, 0
  br i1 %.not.i293, label %lean_dec.exit225, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit225

bb.ej:                                            ; preds = %lean_alloc_ctor.exit408
  %i.gm = getelementptr inbounds nuw i8, ptr %.0192, i64 8
  store ptr %i.if, ptr %i.gm, align 8, !tbaa !13
  br label %lean_dec.exit225

bb.ek:                                            ; preds = %lean_alloc_ctor.exit408
  %i.gn = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %i.if, ptr %i.go, align 8, !tbaa !13
  br label %lean_dec.exit225

bb.el:                                            ; preds = %.split, %lean_nat_lt.exit
  %i.gp = and i64 %.pre-phi, 1
  %.not.i220 = icmp eq i64 %i.gp, 0
  br i1 %.not.i220, label %bb.em, label %lean_dec.exit221

bb.em:                                            ; preds = %bb.el
  %i.gq = load i32, ptr %.0182, align 4, !tbaa !10 ; 3 uses
  %i.gr = icmp sgt i32 %i.gq, 1
  br i1 %i.gr, label %bb.en, label %bb.eo, !prof !11

bb.en:                                            ; preds = %bb.em
  %i.gs = add nsw i32 %i.gq, -1
  store i32 %i.gs, ptr %.0182, align 4, !tbaa !10
  br label %lean_dec.exit221

bb.eo:                                            ; preds = %bb.em
  %.not.i297 = icmp eq i32 %i.gq, 0
  br i1 %.not.i297, label %lean_dec.exit221, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0182) #6
  br label %lean_dec.exit221

lean_dec.exit221:                                 ; preds = %bb.ep, %bb.eo, %bb.en, %bb.el
  %i.gt = ptrtoint ptr %.0171 to i64
  %i.gu = and i64 %i.gt, 1
  %.not.i406 = icmp eq i64 %i.gu, 0
  br i1 %.not.i406, label %bb.eq, label %lean_del_object.exit407

bb.eq:                                            ; preds = %lean_dec.exit221
  tail call void @lean_free_object(ptr noundef nonnull %.0171) #6
  br label %lean_del_object.exit407

lean_del_object.exit407:                          ; preds = %lean_dec.exit221, %bb.eq
  br i1 %.not.i348, label %lean_dec.exit219, label %bb.er

bb.er:                                            ; preds = %lean_del_object.exit407
  %i.gv = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.gw = icmp sgt i32 %i.gv, 1
  br i1 %i.gw, label %bb.es, label %bb.et, !prof !11

bb.es:                                            ; preds = %bb.er
  %i.gx = add nsw i32 %i.gv, -1
  store i32 %i.gx, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit219

bb.et:                                            ; preds = %bb.er
  %.not.i299 = icmp eq i32 %i.gv, 0
  br i1 %.not.i299, label %lean_dec.exit219, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit219

bb.ev:                                            ; preds = %lean_nat_lt.exit
  %i.gy = and i64 %.pre-phi, 1
  %.not.i = icmp eq i64 %i.gy, 0
  br i1 %.not.i, label %lean_nat_sub.exit, label %bb.ew, !prof !20

bb.ew:                                            ; preds = %.split, %bb.ev
  %i.gz = and i64 %i.a, 1
  %.not436 = icmp eq i64 %i.gz, 0
  br i1 %.not436, label %lean_nat_sub.exit.thread426, label %bb.ex, !prof !20

lean_nat_sub.exit.thread426:                      ; preds = %bb.ew
  %i.ha = tail call ptr @lean_nat_big_sub(ptr noundef %.0182, ptr noundef %0) #6
  br label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  %i.hb = lshr i64 %.pre-phi, 1                   ; 2 uses
  %i.hc = lshr i64 %i.a, 1                        ; 2 uses
  %i.hd = icmp samesign ult i64 %i.hb, %i.hc
  br i1 %i.hd, label %lean_dec.exit215, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.he = sub nuw nsw i64 %i.hb, %i.hc
  %i.hf = shl nuw i64 %i.he, 1
  %i.hg = or disjoint i64 %i.hf, 1
  %i.hh = inttoptr i64 %i.hg to ptr
  br label %lean_dec.exit215

lean_nat_sub.exit:                                ; preds = %bb.ev
  %i.hi = tail call ptr @lean_nat_big_sub(ptr noundef %.0182, ptr noundef %0) #6 ; 2 uses
  br i1 %.not.i348, label %lean_dec.exit217.thread, label %bb.ez

bb.ez:                                            ; preds = %lean_nat_sub.exit.thread426, %lean_nat_sub.exit
  %.not.i519 = phi i1 [ false, %lean_nat_sub.exit.thread426 ], [ true, %lean_nat_sub.exit ]
  %i.hj = phi ptr [ %i.ha, %lean_nat_sub.exit.thread426 ], [ %i.hi, %lean_nat_sub.exit ] ; 2 uses
  %i.hk = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.hl = icmp sgt i32 %i.hk, 1
  br i1 %i.hl, label %bb.fa, label %bb.fb, !prof !11

bb.fa:                                            ; preds = %bb.ez
  %i.hm = add nsw i32 %i.hk, -1
  store i32 %i.hm, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit217

bb.fb:                                            ; preds = %bb.ez
  %.not.i301 = icmp eq i32 %i.hk, 0
  br i1 %.not.i301, label %lean_dec.exit217, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit217

lean_dec.exit217:                                 ; preds = %bb.fc, %bb.fb, %bb.fa
  br i1 %.not.i519, label %lean_dec.exit217.thread, label %lean_dec.exit215

lean_dec.exit217.thread:                          ; preds = %lean_nat_sub.exit, %lean_dec.exit217
  %.1.i425429 = phi ptr [ %i.hj, %lean_dec.exit217 ], [ %i.hi, %lean_nat_sub.exit ] ; 3 uses
  %i.hn = load i32, ptr %.0182, align 4, !tbaa !10 ; 3 uses
  %i.ho = icmp sgt i32 %i.hn, 1
  br i1 %i.ho, label %bb.fd, label %bb.fe, !prof !11

bb.fd:                                            ; preds = %lean_dec.exit217.thread
  %i.hp = add nsw i32 %i.hn, -1
  store i32 %i.hp, ptr %.0182, align 4, !tbaa !10
  br label %lean_dec.exit215

bb.fe:                                            ; preds = %lean_dec.exit217.thread
  %.not.i303 = icmp eq i32 %i.hn, 0
  br i1 %.not.i303, label %lean_dec.exit215, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0182) #6
  br label %lean_dec.exit215

lean_dec.exit215:                                 ; preds = %bb.ex, %bb.ey, %bb.ff, %bb.fe, %bb.fd, %lean_dec.exit217
  %.1.i425428 = phi ptr [ %i.hj, %lean_dec.exit217 ], [ %.1.i425429, %bb.ff ], [ %.1.i425429, %bb.fd ], [ %.1.i425429, %bb.fe ], [ inttoptr (i64 1 to ptr), %bb.ex ], [ %i.hh, %bb.ey ] ; 2 uses
  br i1 %i.bx, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %lean_dec.exit215
  %i.hq = getelementptr inbounds nuw i8, ptr %.0171, i64 8
  store ptr %.1.i425428, ptr %i.hq, align 8, !tbaa !13
  br label %lean_dec.exit219

bb.fh:                                            ; preds = %lean_dec.exit215
  %i.hr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store ptr %.1.i425428, ptr %i.hs, align 8, !tbaa !13
  br label %lean_dec.exit219

lean_dec.exit219:                                 ; preds = %lean_del_object.exit407, %bb.es, %bb.et, %bb.eu, %bb.fh, %bb.fg
  %.1186 = phi ptr [ %i.hr, %bb.fh ], [ %.0171, %bb.fg ], [ inttoptr (i64 1 to ptr), %bb.eu ], [ inttoptr (i64 1 to ptr), %bb.et ], [ inttoptr (i64 1 to ptr), %bb.es ], [ inttoptr (i64 1 to ptr), %lean_del_object.exit407 ]
  %i.ht = tail call ptr @l_Lean_Elab_Info_lctx(ptr noundef %i.as) #6
  br i1 %.not.i342, label %bb.fi, label %lean_dec.exit223

bb.fi:                                            ; preds = %lean_dec.exit219
  %i.hu = load i32, ptr %i.as, align 4, !tbaa !10 ; 3 uses
  %i.hv = icmp sgt i32 %i.hu, 1
  br i1 %i.hv, label %bb.fj, label %bb.fk, !prof !11

bb.fj:                                            ; preds = %bb.fi
  %i.hw = add nsw i32 %i.hu, -1
  store i32 %i.hw, ptr %i.as, align 4, !tbaa !10
  br label %lean_dec.exit223

bb.fk:                                            ; preds = %bb.fi
  %.not.i295 = icmp eq i32 %i.hu, 0
  br i1 %.not.i295, label %lean_dec.exit223, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.as) #6
  br label %lean_dec.exit223

lean_dec.exit223:                                 ; preds = %bb.fl, %bb.fk, %bb.fj, %lean_dec.exit219
  tail call void @lean_inc_heartbeat() #6
  %i.hx = tail call noalias ptr @mi_malloc_small(i64 noundef 48) #6 ; 9 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.fm, label %lean_alloc_ctor.exit

bb.fm:                                            ; preds = %lean_dec.exit223
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec.exit223
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 40 ; 2 uses
  store i64 0, ptr %i.ia, align 8, !tbaa !15
  store i32 1, ptr %i.hx, align 8, !tbaa !10
  store i32 17039408, ptr %i.hz, align 4
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store ptr %i.da, ptr %i.ib, align 8, !tbaa !13
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store ptr %.2181, ptr %i.ic, align 8, !tbaa !13
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  store ptr %i.ht, ptr %i.id, align 8, !tbaa !13
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.ie, align 8, !tbaa !13
  store i8 %.2178, ptr %i.ia, align 8, !tbaa !26
  tail call void @lean_inc_heartbeat() #6
  %i.if = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #6 ; 8 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.fn, label %lean_alloc_ctor.exit408

bb.fn:                                            ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit408:                          ; preds = %lean_alloc_ctor.exit
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  store i32 1, ptr %i.if, align 4, !tbaa !10
  store i32 196640, ptr %i.ih, align 4
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store ptr %.1186, ptr %i.ii, align 8, !tbaa !13
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  store ptr %i.al, ptr %i.ij, align 8, !tbaa !13
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  store ptr %i.hx, ptr %i.ik, align 8, !tbaa !13
  br i1 %i.cq, label %bb.ej, label %bb.ek

lean_dec.exit245:                                 ; preds = %bb.dp, %bb.do, %bb.dn, %bb.dm, %.thread420
  %.2181 = phi ptr [ %i.fv, %bb.dp ], [ %i.fr, %bb.dm ], [ %i.fr, %bb.dn ], [ %i.fr, %bb.do ], [ %i.ex, %.thread420 ]
  %.2178 = phi i8 [ 0, %bb.dp ], [ %i.ev, %bb.dm ], [ %i.ev, %bb.dn ], [ %i.ev, %bb.do ], [ %i.ew, %.thread420 ]
  %i.il = tail call ptr @l_Lean_Syntax_getTailPos_x3f(ptr noundef %i.da, i8 noundef zeroext 0) #6 ; 4 uses
  %i.im = ptrtoint ptr %i.il to i64               ; 2 uses
  %i.in = and i64 %i.im, 1
  %.not.i409 = icmp eq i64 %i.in, 0
  br i1 %.not.i409, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %lean_dec.exit245
  %i.io = lshr i64 %i.im, 1
  %i.ip = trunc i64 %i.io to i32
  br label %lean_obj_tag.exit412

bb.fp:                                            ; preds = %lean_dec.exit245
  %i.iq = getelementptr i8, ptr %i.il, i64 4
  %.val.i411 = load i32, ptr %i.iq, align 4
  %i.ir = lshr i32 %.val.i411, 24
  br label %lean_obj_tag.exit412

lean_obj_tag.exit412:                             ; preds = %bb.fo, %bb.fp
  %.0.i410 = phi i32 [ %i.ip, %bb.fo ], [ %i.ir, %bb.fp ]
  %i.is = icmp eq i32 %.0.i410, 0
  br i1 %i.is, label %bb.fq, label %bb.ft

bb.fq:                                            ; preds = %lean_obj_tag.exit412
  %i.it = load atomic i32, ptr @l___private_Lean_Server_Completion_SyntheticCompletion_0__Lean_Server_Completion_findSyntheticIdentifierCompletion_x3f___closed__4_once seq_cst, align 4, !tbaa !17
  %i.iu = icmp eq i32 %i.it, 1
  br i1 %i.iu, label %bb.fr, label %bb.fs, !prof !11

bb.fr:                                            ; preds = %bb.fq
  %i.iv = load ptr, ptr @l___private_Lean_Server_Completion_SyntheticCompletion_0__Lean_Server_Completion_findSyntheticIdentifierCompletion_x3f___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.fs:                                            ; preds = %bb.fq
  %i.iw = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Server_Completion_SyntheticCompletion_0__Lean_Server_Completion_findSyntheticIdentifierCompletion_x3f___closed__4, ptr noundef nonnull @l___private_Lean_Server_Completion_SyntheticCompletion_0__Lean_Server_Completion_findSyntheticIdentifierCompletion_x3f___closed__4_once, ptr noundef nonnull @_init_l___private_Lean_Server_Completion_SyntheticCompletion_0__Lean_Server_Completion_findSyntheticIdentifierCompletion_x3f___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.fr, %bb.fs
  %.0.i413 = phi ptr [ %i.iv, %bb.fr ], [ %i.iw, %bb.fs ]
  %i.ix = tail call ptr @lean_panic_fn_borrowed(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %.0.i413) #6 ; 2 uses
  %.pre = ptrtoint ptr %i.ix to i64
  br label %bb.fy

bb.ft:                                            ; preds = %lean_obj_tag.exit412
  %i.iy = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !13 ; 5 uses
  %i.ja = ptrtoint ptr %i.iz to i64               ; 2 uses
  %i.jb = and i64 %i.ja, 1
  %.not.i327 = icmp eq i64 %i.jb, 0
  br i1 %.not.i327, label %bb.fu, label %lean_inc.exit

bb.fu:                                            ; preds = %bb.ft
  %.val.i.i414 = load i32, ptr %i.iz, align 4, !tbaa !10 ; 3 uses
  %i.jc = icmp sgt i32 %.val.i.i414, 0
  br i1 %i.jc, label %bb.fv, label %bb.fw, !prof !11

bb.fv:                                            ; preds = %bb.fu
  %i.jd = add nuw i32 %.val.i.i414, 1
  store i32 %i.jd, ptr %i.iz, align 4, !tbaa !10
  br label %lean_inc.exit

bb.fw:                                            ; preds = %bb.fu
  %.not.i.i415 = icmp eq i32 %.val.i.i414, 0
  br i1 %.not.i.i415, label %lean_inc.exit, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.je = atomicrmw add ptr %i.iz, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.fx, %bb.fw, %bb.fv, %bb.ft
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.il, i32 noundef 1)
  br label %bb.fy

bb.fy:                                            ; preds = %lean_inc.exit, %lean_obj_once.exit
  %.pre-phi = phi i64 [ %i.ja, %lean_inc.exit ], [ %.pre, %lean_obj_once.exit ] ; 4 uses
  %.0182 = phi ptr [ %i.iz, %lean_inc.exit ], [ %i.ix, %lean_obj_once.exit ] ; 10 uses
  %i.jf = trunc i64 %.pre-phi to i1
  %or.cond = select i1 %.not.i348, i1 %i.jf, i1 false, !prof !21
  br i1 %or.cond, label %.split, label %lean_nat_lt.exit, !prof !21

.split:                                           ; preds = %bb.fy
  %i.jg = icmp ult ptr %0, %.0182
  br i1 %i.jg, label %bb.ew, label %bb.el

lean_nat_lt.exit:                                 ; preds = %bb.fy
  %i.jh = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %0, ptr noundef %.0182) #6
  br i1 %i.jh, label %bb.ev, label %bb.el

bb.fz:                                            ; preds = %lean_obj_tag.exit379
  %i.ji = load i32, ptr %i.ch, align 4, !tbaa !10 ; 3 uses
  %i.jj = icmp sgt i32 %i.ji, 1
  br i1 %i.jj, label %bb.ga, label %bb.gb, !prof !11

bb.ga:                                            ; preds = %bb.fz
  %i.jk = add nsw i32 %i.ji, -1
  store i32 %i.jk, ptr %i.ch, align 4, !tbaa !10
  br label %lean_dec.exit213

bb.gb:                                            ; preds = %bb.fz
  %.not.i305 = icmp eq i32 %i.ji, 0
  br i1 %.not.i305, label %lean_dec.exit213, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ch) #6
  br label %lean_dec.exit213

lean_dec.exit213:                                 ; preds = %lean_obj_tag.exit379.thread, %bb.gc, %bb.gb, %bb.ga
  %i.jl = ptrtoint ptr %i.cg to i64
  %i.jm = and i64 %i.jl, 1
  %.not.i210 = icmp eq i64 %i.jm, 0
  br i1 %.not.i210, label %bb.gd, label %lean_dec.exit211

bb.gd:                                            ; preds = %lean_dec.exit213
  %i.jn = load i32, ptr %i.cg, align 4, !tbaa !10 ; 3 uses
  %i.jo = icmp sgt i32 %i.jn, 1
  br i1 %i.jo, label %bb.ge, label %bb.gf, !prof !11

bb.ge:                                            ; preds = %bb.gd
  %i.jp = add nsw i32 %i.jn, -1
  store i32 %i.jp, ptr %i.cg, align 4, !tbaa !10
  br label %lean_dec.exit211

bb.gf:                                            ; preds = %bb.gd
  %.not.i307 = icmp eq i32 %i.jn, 0
  br i1 %.not.i307, label %lean_dec.exit211, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cg) #6
  br label %lean_dec.exit211

lean_dec.exit211:                                 ; preds = %bb.gg, %bb.gf, %bb.ge, %lean_dec.exit213
  %i.jq = ptrtoint ptr %.0171 to i64
  %i.jr = and i64 %i.jq, 1
  %.not.i417 = icmp eq i64 %i.jr, 0
  br i1 %.not.i417, label %bb.gh, label %lean_del_object.exit418

bb.gh:                                            ; preds = %lean_dec.exit211
  tail call void @lean_free_object(ptr noundef nonnull %.0171) #6
  br label %lean_del_object.exit418

lean_del_object.exit418:                          ; preds = %lean_dec.exit211, %bb.gh
  br i1 %.not.i342, label %bb.gi, label %lean_dec.exit209

bb.gi:                                            ; preds = %lean_del_object.exit418
  %i.js = load i32, ptr %i.as, align 4, !tbaa !10 ; 3 uses
  %i.jt = icmp sgt i32 %i.js, 1
  br i1 %i.jt, label %bb.gj, label %bb.gk, !prof !11

bb.gj:                                            ; preds = %bb.gi
  %i.ju = add nsw i32 %i.js, -1
  store i32 %i.ju, ptr %i.as, align 4, !tbaa !10
  br label %lean_dec.exit209

bb.gk:                                            ; preds = %bb.gi
  %.not.i309 = icmp eq i32 %i.js, 0
  br i1 %.not.i309, label %lean_dec.exit209, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.as) #6
  br label %lean_dec.exit209

lean_dec.exit209:                                 ; preds = %bb.gl, %bb.gk, %bb.gj, %lean_del_object.exit418
  br i1 %.not.i344, label %bb.gm, label %lean_dec.exit207

bb.gm:                                            ; preds = %lean_dec.exit209
  %i.jv = load i32, ptr %i.al, align 4, !tbaa !10 ; 3 uses
  %i.jw = icmp sgt i32 %i.jv, 1
  br i1 %i.jw, label %bb.gn, label %bb.go, !prof !11

bb.gn:                                            ; preds = %bb.gm
  %i.jx = add nsw i32 %i.jv, -1
  store i32 %i.jx, ptr %i.al, align 4, !tbaa !10
  br label %lean_dec.exit207

bb.go:                                            ; preds = %bb.gm
  %.not.i311 = icmp eq i32 %i.jv, 0
  br i1 %.not.i311, label %lean_dec.exit207, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.al) #6
  br label %lean_dec.exit207

lean_dec.exit207:                                 ; preds = %bb.gp, %bb.go, %bb.gn, %lean_dec.exit209
  br i1 %.not.i348, label %lean_dec.exit225, label %bb.gq

bb.gq:                                            ; preds = %lean_dec.exit207
  %i.jy = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.jz = icmp sgt i32 %i.jy, 1
  br i1 %i.jz, label %bb.gr, label %bb.gs, !prof !11

bb.gr:                                            ; preds = %bb.gq
  %i.ka = add nsw i32 %i.jy, -1
  store i32 %i.ka, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit225

bb.gs:                                            ; preds = %bb.gq
  %.not.i313 = icmp eq i32 %i.jy, 0
  br i1 %.not.i313, label %lean_dec.exit225, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit225

bb.gu:                                            ; preds = %lean_obj_tag.exit372
  %i.kb = load i32, ptr %i.bo, align 4, !tbaa !10 ; 3 uses
  %i.kc = icmp sgt i32 %i.kb, 1
  br i1 %i.kc, label %bb.gv, label %bb.gw, !prof !11

bb.gv:                                            ; preds = %bb.gu
  %i.kd = add nsw i32 %i.kb, -1
  store i32 %i.kd, ptr %i.bo, align 4, !tbaa !10
  br label %lean_dec.exit203

bb.gw:                                            ; preds = %bb.gu
  %.not.i315 = icmp eq i32 %i.kb, 0
  br i1 %.not.i315, label %lean_dec.exit203, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bo) #6
  br label %lean_dec.exit203

lean_dec.exit203:                                 ; preds = %lean_obj_tag.exit372.thread, %bb.gx, %bb.gw, %bb.gv
  br i1 %.not.i342, label %bb.gy, label %lean_dec.exit201

bb.gy:                                            ; preds = %lean_dec.exit203
  %i.ke = load i32, ptr %i.as, align 4, !tbaa !10 ; 3 uses
  %i.kf = icmp sgt i32 %i.ke, 1
  br i1 %i.kf, label %bb.gz, label %bb.ha, !prof !11

bb.gz:                                            ; preds = %bb.gy
  %i.kg = add nsw i32 %i.ke, -1
  store i32 %i.kg, ptr %i.as, align 4, !tbaa !10
  br label %lean_dec.exit201

bb.ha:                                            ; preds = %bb.gy
  %.not.i317 = icmp eq i32 %i.ke, 0
  br i1 %.not.i317, label %lean_dec.exit201, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.as) #6
  br label %lean_dec.exit201

lean_dec.exit201:                                 ; preds = %bb.hb, %bb.ha, %bb.gz, %lean_dec.exit203
  br i1 %.not.i344, label %bb.hc, label %lean_dec.exit199

bb.hc:                                            ; preds = %lean_dec.exit201
  %i.kh = load i32, ptr %i.al, align 4, !tbaa !10 ; 3 uses
  %i.ki = icmp sgt i32 %i.kh, 1
  br i1 %i.ki, label %bb.hd, label %bb.he, !prof !11

bb.hd:                                            ; preds = %bb.hc
  %i.kj = add nsw i32 %i.kh, -1
  store i32 %i.kj, ptr %i.al, align 4, !tbaa !10
  br label %lean_dec.exit199

bb.he:                                            ; preds = %bb.hc
  %.not.i319 = icmp eq i32 %i.kh, 0
  br i1 %.not.i319, label %lean_dec.exit199, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.al) #6
  br label %lean_dec.exit199

lean_dec.exit199:                                 ; preds = %bb.hf, %bb.he, %bb.hd, %lean_dec.exit201
  br i1 %.not.i348, label %lean_dec.exit225, label %bb.hg

bb.hg:                                            ; preds = %lean_dec.exit199
  %i.kk = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.kl = icmp sgt i32 %i.kk, 1
  br i1 %i.kl, label %bb.hh, label %bb.hi, !prof !11

bb.hh:                                            ; preds = %bb.hg
  %i.km = add nsw i32 %i.kk, -1
  store i32 %i.km, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit225

bb.hi:                                            ; preds = %bb.hg
  %.not.i321 = icmp eq i32 %i.kk, 0
  br i1 %.not.i321, label %lean_dec.exit225, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit225
end_hunk_0
