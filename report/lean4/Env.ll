Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Env?download=true
inline.NumInlined: 1758
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@l_Lake_Env_baseVars:bb.a
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.cb, label %lean_alloc_ctor.exit468

bb.cb:                                            ; preds = %lean_dec_ref.exit409
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit468:                          ; preds = %lean_dec_ref.exit409
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store i32 1, ptr %i.ev, align 4, !tbaa !13
  store i32 131096, ptr %i.ex, align 4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store ptr @l_Lake_Env_baseVars___closed__0_value, ptr %i.ey, align 8, !tbaa !11
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store ptr %i.er, ptr %i.ez, align 8, !tbaa !11
  %i.fa = tail call ptr @lean_alloc_object(i64 noundef 152) #7 ; 5 uses
  store i32 1, ptr %i.fa, align 4, !tbaa !13
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = and i32 %i.fc, 65535
  %i.fe = or disjoint i32 %i.fd, -167772160
  store i32 %i.fe, ptr %i.fb, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i64 0, ptr %i.ff, align 8, !tbaa !16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store i64 16, ptr %i.fg, align 8, !tbaa !16
  %i.fh = tail call ptr @lean_array_push(ptr noundef nonnull %i.fa, ptr noundef nonnull %i.kf) #7
  %i.fi = tail call ptr @lean_array_push(ptr noundef %i.fh, ptr noundef nonnull %i.lm) #7
  %i.fj = tail call ptr @lean_array_push(ptr noundef %i.fi, ptr noundef nonnull %i.je) #7
  %i.fk = tail call ptr @lean_array_push(ptr noundef %i.fj, ptr noundef nonnull %i.jn) #7
  %i.fl = tail call ptr @lean_array_push(ptr noundef %i.fk, ptr noundef nonnull %i.jw) #7
  %i.fm = tail call ptr @lean_array_push(ptr noundef %i.fl, ptr noundef nonnull %i.gp) #7
  %i.fn = tail call ptr @lean_array_push(ptr noundef %i.fm, ptr noundef nonnull %i.he) #7
  %i.fo = tail call ptr @lean_array_push(ptr noundef %i.fn, ptr noundef nonnull %i.hl) #7
  %i.fp = tail call ptr @lean_array_push(ptr noundef %i.fo, ptr noundef nonnull %i.hq) #7
  %i.fq = tail call ptr @lean_array_push(ptr noundef %i.fp, ptr noundef nonnull %i.hv) #7
  %i.fr = tail call ptr @lean_array_push(ptr noundef %i.fq, ptr noundef nonnull %i.ia) #7
  %i.fs = tail call ptr @lean_array_push(ptr noundef %i.fr, ptr noundef nonnull %i.dc) #7
  %i.ft = tail call ptr @lean_array_push(ptr noundef %i.fs, ptr noundef nonnull %i.do) #7
  %i.fu = tail call ptr @lean_array_push(ptr noundef %i.ft, ptr noundef nonnull %i.ea) #7
  %i.fv = tail call ptr @lean_array_push(ptr noundef %i.fu, ptr noundef nonnull %i.em) #7
  %i.fw = tail call ptr @lean_array_push(ptr noundef %i.fv, ptr noundef nonnull %i.ev) #7
  ret ptr %i.fw

bb.cc:                                            ; preds = %lean_obj_tag.exit503.thread, %lean_obj_tag.exit503
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !11 ; 5 uses
  %.val413 = load i32, ptr %i.ab, align 8, !tbaa !13
  %i.fz = icmp eq i32 %.val413, 1
  br i1 %i.fz, label %lean_dec.exit392, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = and i64 %i.ga, 1
  %.not.i368 = icmp eq i64 %i.gb, 0
  br i1 %.not.i368, label %bb.ce, label %lean_inc.exit369

bb.ce:                                            ; preds = %bb.cd
  %.val.i.i469 = load i32, ptr %i.fy, align 4, !tbaa !13 ; 3 uses
  %i.gc = icmp sgt i32 %.val.i.i469, 0
  br i1 %i.gc, label %bb.cf, label %bb.cg, !prof !14

bb.cf:                                            ; preds = %bb.ce
  %i.gd = add nuw i32 %.val.i.i469, 1
  store i32 %i.gd, ptr %i.fy, align 4, !tbaa !13
  br label %lean_inc.exit369

bb.cg:                                            ; preds = %bb.ce
  %.not.i.i470 = icmp eq i32 %.val.i.i469, 0
  br i1 %.not.i.i470, label %lean_inc.exit369, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ge = atomicrmw sub ptr %i.fy, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit369

lean_inc.exit369:                                 ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.cd
  br i1 %.not.i380, label %bb.ci, label %bb.cm

bb.ci:                                            ; preds = %lean_inc.exit369
  %i.gf = load i32, ptr %i.ab, align 8, !tbaa !13 ; 3 uses
  %i.gg = icmp sgt i32 %i.gf, 1
  br i1 %i.gg, label %bb.cj, label %bb.ck, !prof !14

bb.cj:                                            ; preds = %bb.ci
  %i.gh = add nsw i32 %i.gf, -1
  store i32 %i.gh, ptr %i.ab, align 8, !tbaa !13
  br label %bb.cm

bb.ck:                                            ; preds = %bb.ci
  %.not.i396 = icmp eq i32 %i.gf, 0
  br i1 %.not.i396, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #7
  br label %bb.cm

bb.cm:                                            ; preds = %lean_inc.exit369, %bb.cj, %bb.ck, %bb.cl
  tail call void @lean_inc_heartbeat() #7
  %i.gi = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %bb.cn, label %lean_alloc_ctor.exit472

bb.cn:                                            ; preds = %bb.cm
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit472:                          ; preds = %bb.cm
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  store i32 1, ptr %i.gi, align 4, !tbaa !13
  store i32 16842768, ptr %i.gk, align 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store ptr %i.fy, ptr %i.gl, align 8, !tbaa !11
  br label %lean_dec.exit392

bb.co:                                            ; preds = %lean_obj_tag.exit503
  %i.gm = load i32, ptr %i.ab, align 4, !tbaa !13 ; 3 uses
  %i.gn = icmp sgt i32 %i.gm, 1
  br i1 %i.gn, label %bb.cp, label %bb.cq, !prof !14

bb.cp:                                            ; preds = %bb.co
  %i.go = add nsw i32 %i.gm, -1
  store i32 %i.go, ptr %i.ab, align 4, !tbaa !13
  br label %lean_dec.exit392

bb.cq:                                            ; preds = %bb.co
  %.not.i398 = icmp eq i32 %i.gm, 0
  br i1 %.not.i398, label %lean_dec.exit392, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #7
  br label %lean_dec.exit392

lean_dec.exit392:                                 ; preds = %lean_obj_tag.exit503.thread, %bb.cp, %bb.cq, %bb.cr, %bb.cc, %lean_alloc_ctor.exit472
  %.1356 = phi ptr [ %i.ab, %bb.cc ], [ %i.gi, %lean_alloc_ctor.exit472 ], [ @l_Lake_Env_noToolchainVars___closed__16_value, %bb.cr ], [ @l_Lake_Env_noToolchainVars___closed__16_value, %bb.cq ], [ @l_Lake_Env_noToolchainVars___closed__16_value, %bb.cp ], [ @l_Lake_Env_noToolchainVars___closed__16_value, %lean_obj_tag.exit503.thread ]
  tail call void @lean_inc_heartbeat() #7
  %i.gp = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.cs, label %lean_alloc_ctor.exit473

bb.cs:                                            ; preds = %lean_dec.exit392
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit473:                          ; preds = %lean_dec.exit392
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  store i32 1, ptr %i.gp, align 4, !tbaa !13
  store i32 131096, ptr %i.gr, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store ptr @l_Lake_Env_compute___closed__5_value, ptr %i.gs, align 8, !tbaa !11
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store ptr %.1356, ptr %i.gt, align 8, !tbaa !11
  %i.gu = tail call ptr @l_Std_DTreeMap_Internal_Impl_foldlM___at___00Std_DTreeMap_Internal_Impl_foldl___at___00Lean_NameMap_toJson___at___00Lake_Env_baseVars_spec__0_spec__1_spec__3(ptr noundef nonnull inttoptr (i64 3 to ptr), ptr noundef %i.s)
  tail call void @lean_inc_heartbeat() #7
  %i.gv = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.ct, label %l_Lean_NameMap_toJson___at___00Lake_Env_baseVars_spec__0.exit

bb.ct:                                            ; preds = %lean_alloc_ctor.exit473
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

l_Lean_NameMap_toJson___at___00Lake_Env_baseVars_spec__0.exit: ; preds = %lean_alloc_ctor.exit473
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  store i32 1, ptr %i.gv, align 4, !tbaa !13
  store i32 83951632, ptr %i.gx, align 4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store ptr %i.gu, ptr %i.gy, align 8, !tbaa !11
  %i.gz = tail call ptr @l_Lean_Json_compress(ptr noundef nonnull %i.gv) #7
  tail call void @lean_inc_heartbeat() #7
  %i.ha = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.cu, label %lean_alloc_ctor.exit474

bb.cu:                                            ; preds = %l_Lean_NameMap_toJson___at___00Lake_Env_baseVars_spec__0.exit
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit474:                          ; preds = %l_Lean_NameMap_toJson___at___00Lake_Env_baseVars_spec__0.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store i32 1, ptr %i.ha, align 4, !tbaa !13
  store i32 16842768, ptr %i.hc, align 4
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store ptr %i.gz, ptr %i.hd, align 8, !tbaa !11
  tail call void @lean_inc_heartbeat() #7
  %i.he = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %bb.cv, label %lean_alloc_ctor.exit475

bb.cv:                                            ; preds = %lean_alloc_ctor.exit474
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit475:                          ; preds = %lean_alloc_ctor.exit474
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  store i32 1, ptr %i.he, align 4, !tbaa !13
  store i32 131096, ptr %i.hg, align 4
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store ptr @l___private_Lake_Config_Env_0__Lake_Env_compute_computePkgUrlMap___closed__0_value, ptr %i.hh, align 8, !tbaa !11
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store ptr %i.ha, ptr %i.hi, align 8, !tbaa !11
  %1 = icmp eq i8 %i.z, 0
  %.0342 = select i1 %1, ptr @l_Lake_Env_baseVars___closed__1_value, ptr @l_Lake_Env_baseVars___closed__2_value ; 3 uses
  %.val.i.i476 = load i32, ptr %.0342, align 8, !tbaa !13 ; 2 uses
  %2 = icmp sgt i32 %.val.i.i476, 0
  br i1 %2, label %lean_inc_ref.exit478, label %3, !prof !14

3:                                                ; preds = %lean_alloc_ctor.exit475
  %.not.i.i477 = icmp eq i32 %.val.i.i476, 0
  br i1 %.not.i.i477, label %lean_inc_ref.exit478, label %4

4:                                                ; preds = %3
  %5 = atomicrmw sub ptr %.0342, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit478

lean_inc_ref.exit478:                             ; preds = %lean_alloc_ctor.exit475, %3, %4
  tail call void @lean_inc_heartbeat() #7
  %6 = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb.cw, label %lean_alloc_ctor.exit479

bb.cw:                                            ; preds = %lean_inc_ref.exit478
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit479:                          ; preds = %lean_inc_ref.exit478
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 1, ptr %6, align 4, !tbaa !13
  store i32 16842768, ptr %i.hj, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.0342, ptr %i.hk, align 8, !tbaa !11
  tail call void @lean_inc_heartbeat() #7
  %i.hl = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %bb.cx, label %lean_alloc_ctor.exit480

bb.cx:                                            ; preds = %lean_alloc_ctor.exit479
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit480:                          ; preds = %lean_alloc_ctor.exit479
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  store i32 1, ptr %i.hl, align 4, !tbaa !13
  store i32 131096, ptr %i.hn, align 4
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store ptr @l_Lake_Env_compute___closed__2_value, ptr %i.ho, align 8, !tbaa !11
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store ptr %6, ptr %i.hp, align 8, !tbaa !11
  tail call void @lean_inc_heartbeat() #7
  %i.hq = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.cy, label %lean_alloc_ctor.exit481

bb.cy:                                            ; preds = %lean_alloc_ctor.exit480
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit481:                          ; preds = %lean_alloc_ctor.exit480
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  store i32 1, ptr %i.hq, align 4, !tbaa !13
  store i32 131096, ptr %i.hs, align 4
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store ptr @l_Lake_Env_compute___closed__6_value, ptr %i.ht, align 8, !tbaa !11
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store ptr %i.ai, ptr %i.hu, align 8, !tbaa !11
  tail call void @lean_inc_heartbeat() #7
  %i.hv = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.cz, label %lean_alloc_ctor.exit482

bb.cz:                                            ; preds = %lean_alloc_ctor.exit481
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit482:                          ; preds = %lean_alloc_ctor.exit481
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  store i32 1, ptr %i.hv, align 4, !tbaa !13
  store i32 131096, ptr %i.hx, align 4
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store ptr @l_Lake_Env_compute___closed__7_value, ptr %i.hy, align 8, !tbaa !11
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store ptr %i.ap, ptr %i.hz, align 8, !tbaa !11
  tail call void @lean_inc_heartbeat() #7
  %i.ia = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %bb.da, label %lean_alloc_ctor.exit483

bb.da:                                            ; preds = %lean_alloc_ctor.exit482
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit483:                          ; preds = %lean_alloc_ctor.exit482
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  store i32 1, ptr %i.ia, align 4, !tbaa !13
  store i32 131096, ptr %i.ic, align 4
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store ptr @l_Lake_Env_compute___closed__8_value, ptr %i.id, align 8, !tbaa !11
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store ptr %i.aw, ptr %i.ie, align 8, !tbaa !11
  br i1 %.not.i372, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %lean_alloc_ctor.exit483
  %i.if = lshr i64 %i.be, 1
  %i.ig = trunc i64 %i.if to i32
  br label %lean_obj_tag.exit487

bb.dc:                                            ; preds = %lean_alloc_ctor.exit483
  %i.ih = getelementptr i8, ptr %i.bd, i64 4
  %.val.i486 = load i32, ptr %i.ih, align 4
  %i.ii = lshr i32 %.val.i486, 24
  br label %lean_obj_tag.exit487

lean_obj_tag.exit487:                             ; preds = %bb.db, %bb.dc
  %.0.i485 = phi i32 [ %i.ig, %bb.db ], [ %i.ii, %bb.dc ]
  %i.ij = icmp eq i32 %.0.i485, 0
  br i1 %i.ij, label %lean_dec.exit394, label %bb.aw

bb.dd:                                            ; preds = %lean_nat_eq.exit
  tail call void @lean_inc_heartbeat() #7
  %i.ik = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %bb.de, label %lean_alloc_ctor.exit488

bb.de:                                            ; preds = %bb.dd
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit488:                          ; preds = %bb.dd
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  store i32 1, ptr %i.ik, align 4, !tbaa !13
  store i32 16842768, ptr %i.im, align 4
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store ptr %i.bk, ptr %i.in, align 8, !tbaa !11
  br label %lean_dec_ref.exit405

bb.df:                                            ; preds = %lean_nat_eq.exit
  %i.io = load i32, ptr %i.bk, align 8, !tbaa !13 ; 3 uses
  %i.ip = icmp sgt i32 %i.io, 1
  br i1 %i.ip, label %bb.dg, label %bb.dh, !prof !14

bb.dg:                                            ; preds = %bb.df
  %i.iq = add nsw i32 %i.io, -1
  store i32 %i.iq, ptr %i.bk, align 8, !tbaa !13
  br label %lean_dec_ref.exit405

bb.dh:                                            ; preds = %bb.df
  %.not.i404 = icmp eq i32 %i.io, 0
  br i1 %.not.i404, label %lean_dec_ref.exit405, label %bb.di

bb.di:                                            ; preds = %bb.dh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bk) #7
  br label %lean_dec_ref.exit405

lean_dec_ref.exit405:                             ; preds = %bb.di, %bb.dh, %bb.dg, %lean_alloc_ctor.exit488
  %.0360 = phi ptr [ %i.ik, %lean_alloc_ctor.exit488 ], [ inttoptr (i64 1 to ptr), %bb.dg ], [ inttoptr (i64 1 to ptr), %bb.dh ], [ inttoptr (i64 1 to ptr), %bb.di ]
  %i.ir = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !11 ; 4 uses
  %.val.i.i489 = load i32, ptr %i.is, align 4, !tbaa !13 ; 3 uses
  %i.it = icmp sgt i32 %.val.i.i489, 0
  br i1 %i.it, label %bb.dj, label %bb.dk, !prof !14

bb.dj:                                            ; preds = %lean_dec_ref.exit405
  %i.iu = add nuw i32 %.val.i.i489, 1
  store i32 %i.iu, ptr %i.is, align 4, !tbaa !13
  br label %lean_inc_ref.exit491

bb.dk:                                            ; preds = %lean_dec_ref.exit405
  %.not.i.i490 = icmp eq i32 %.val.i.i489, 0
  br i1 %.not.i.i490, label %lean_inc_ref.exit491, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.iv = atomicrmw sub ptr %i.is, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit491

lean_inc_ref.exit491:                             ; preds = %bb.dj, %bb.dk, %bb.dl
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !11 ; 4 uses
  %.val.i.i492 = load i32, ptr %i.ix, align 4, !tbaa !13 ; 3 uses
  %i.iy = icmp sgt i32 %.val.i.i492, 0
  br i1 %i.iy, label %bb.dm, label %bb.dn, !prof !14

bb.dm:                                            ; preds = %lean_inc_ref.exit491
  %i.iz = add nuw i32 %.val.i.i492, 1
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !13
  br label %lean_inc_ref.exit494

bb.dn:                                            ; preds = %lean_inc_ref.exit491
  %.not.i.i493 = icmp eq i32 %.val.i.i492, 0
  br i1 %.not.i.i493, label %lean_inc_ref.exit494, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ja = atomicrmw sub ptr %i.ix, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit494

lean_inc_ref.exit494:                             ; preds = %bb.dm, %bb.dn, %bb.do
  %i.jb = load i32, ptr %i.b, align 8, !tbaa !13  ; 3 uses
  %i.jc = icmp sgt i32 %i.jb, 1
  br i1 %i.jc, label %bb.dp, label %bb.dq, !prof !14

bb.dp:                                            ; preds = %lean_inc_ref.exit494
  %i.jd = add nsw i32 %i.jb, -1
  store i32 %i.jd, ptr %i.b, align 8, !tbaa !13
  br label %lean_dec_ref.exit407

bb.dq:                                            ; preds = %lean_inc_ref.exit494
  %.not.i406 = icmp eq i32 %i.jb, 0
  br i1 %.not.i406, label %lean_dec_ref.exit407, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.b) #7
  br label %lean_dec_ref.exit407

lean_dec_ref.exit407:                             ; preds = %bb.dp, %bb.dq, %bb.dr
  tail call void @lean_inc_heartbeat() #7
  %i.je = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %bb.ds, label %lean_alloc_ctor.exit495

bb.ds:                                            ; preds = %lean_dec_ref.exit407
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit495:                          ; preds = %lean_dec_ref.exit407
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  store i32 1, ptr %i.je, align 4, !tbaa !13
  store i32 131096, ptr %i.jg, align 4
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store ptr @l_Lake_Env_computeToolchain___closed__0_value, ptr %i.jh, align 8, !tbaa !11
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store ptr %.0360, ptr %i.ji, align 8, !tbaa !11
  tail call void @lean_inc_heartbeat() #7
  %i.jj = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.jk = icmp eq ptr %i.jj, null
  br i1 %i.jk, label %bb.dt, label %lean_alloc_ctor.exit496

bb.dt:                                            ; preds = %lean_alloc_ctor.exit495
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit496:                          ; preds = %lean_alloc_ctor.exit495
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  store i32 1, ptr %i.jj, align 4, !tbaa !13
  store i32 16842768, ptr %i.jl, align 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store ptr %i.ix, ptr %i.jm, align 8, !tbaa !11
  tail call void @lean_inc_heartbeat() #7
  %i.jn = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.jo = icmp eq ptr %i.jn, null
end_hunk_0
