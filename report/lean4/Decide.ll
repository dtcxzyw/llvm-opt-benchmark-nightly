Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Decide?download=true
inline.NumInlined: 2449
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose:bb.a
  br label %lean_inc_ref.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw add ptr %2, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.c, %bb.d, %bb.e
  %i.f = tail call ptr @lean_alloc_object(i64 noundef 48) #4 ; 9 uses
  store i32 1, ptr %i.f, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 65535
  %i.j = or disjoint i32 %i.i, -184549376
  store i32 %i.j, ptr %i.g, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___lam__1___boxed, ptr %i.k, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i16 8, ptr %i.l, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 18
  store i16 3, ptr %i.m, align 2, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %2, ptr %i.n, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr @l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__0_value, ptr %i.o, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr inttoptr (i64 3 to ptr), ptr %i.p, align 8, !tbaa !10
  %i.q = tail call ptr @l_Lean_withoutModifyingState___at___00__private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose_spec__6___redArg(ptr noundef nonnull %i.f, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) ; 14 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = and i64 %i.r, 1
  %.not.i409 = icmp eq i64 %i.s, 0                ; 3 uses
  br i1 %.not.i409, label %bb.g, label %bb.f

bb.f:                                             ; preds = %lean_inc_ref.exit
  %i.t = lshr i64 %i.r, 1
  %i.u = trunc i64 %i.t to i32
  br label %lean_obj_tag.exit

bb.g:                                             ; preds = %lean_inc_ref.exit
  %i.v = getelementptr i8, ptr %i.q, i64 4
  %.val.i = load i32, ptr %i.v, align 4
  %i.w = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.f, %bb.g
  %.0.i410 = phi i32 [ %i.u, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i410, 0
  br i1 %i.x, label %bb.h, label %bb.ew

bb.h:                                             ; preds = %lean_obj_tag.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !10   ; 11 uses
  %.val407 = load i32, ptr %i.q, align 8, !tbaa !12
  %i.aa = icmp eq i32 %.val407, 1                 ; 2 uses
  br i1 %i.aa, label %lean_dec.exit368, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = and i64 %i.ab, 1
  %.not.i380 = icmp eq i64 %i.ac, 0
  br i1 %.not.i380, label %bb.j, label %lean_inc.exit381

bb.j:                                             ; preds = %bb.i
  %.val.i.i411 = load i32, ptr %i.z, align 4, !tbaa !12 ; 3 uses
  %i.ad = icmp sgt i32 %.val.i.i411, 0
  br i1 %i.ad, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.ae = add nuw i32 %.val.i.i411, 1
  store i32 %i.ae, ptr %i.z, align 4, !tbaa !12
  br label %lean_inc.exit381

bb.l:                                             ; preds = %bb.j
  %.not.i.i412 = icmp eq i32 %.val.i.i411, 0
  br i1 %.not.i.i412, label %lean_inc.exit381, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = atomicrmw add ptr %i.z, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit381

lean_inc.exit381:                                 ; preds = %bb.m, %bb.l, %bb.k, %bb.i
  br i1 %.not.i409, label %bb.n, label %lean_dec.exit368

bb.n:                                             ; preds = %lean_inc.exit381
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !12  ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %bb.p, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.ai = add nsw i32 %i.ag, -1
  store i32 %i.ai, ptr %i.q, align 8, !tbaa !12
  br label %lean_dec.exit368

bb.p:                                             ; preds = %bb.n
  %.not.i382 = icmp eq i32 %i.ag, 0
  br i1 %.not.i382, label %lean_dec.exit368, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #4
  br label %lean_dec.exit368

lean_dec.exit368:                                 ; preds = %lean_inc.exit381, %bb.o, %bb.p, %bb.q, %bb.h
  %.0335 = phi ptr [ %i.q, %bb.h ], [ inttoptr (i64 1 to ptr), %bb.q ], [ inttoptr (i64 1 to ptr), %bb.p ], [ inttoptr (i64 1 to ptr), %bb.o ], [ inttoptr (i64 1 to ptr), %lean_inc.exit381 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !10 ; 24 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !10 ; 9 uses
  %.val406 = load i32, ptr %i.z, align 8, !tbaa !12
  %i.an = icmp eq i32 %.val406, 1                 ; 3 uses
  br i1 %i.an, label %lean_nat_eq.exit, label %bb.r

bb.r:                                             ; preds = %lean_dec.exit368
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = and i64 %i.ao, 1
  %.not.i378 = icmp eq i64 %i.ap, 0
  br i1 %.not.i378, label %bb.s, label %lean_inc.exit379

bb.s:                                             ; preds = %bb.r
  %.val.i.i414 = load i32, ptr %i.am, align 4, !tbaa !12 ; 3 uses
  %i.aq = icmp sgt i32 %.val.i.i414, 0
  br i1 %i.aq, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.ar = add nuw i32 %.val.i.i414, 1
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !12
  br label %lean_inc.exit379

bb.u:                                             ; preds = %bb.s
  %.not.i.i415 = icmp eq i32 %.val.i.i414, 0
  br i1 %.not.i.i415, label %lean_inc.exit379, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = atomicrmw add ptr %i.am, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit379

lean_inc.exit379:                                 ; preds = %bb.v, %bb.u, %bb.t, %bb.r
  %i.at = ptrtoint ptr %i.ak to i64
  %i.au = and i64 %i.at, 1
  %.not.i376 = icmp eq i64 %i.au, 0
  br i1 %.not.i376, label %bb.w, label %lean_inc.exit377

bb.w:                                             ; preds = %lean_inc.exit379
  %.val.i.i417 = load i32, ptr %i.ak, align 4, !tbaa !12 ; 3 uses
  %i.av = icmp sgt i32 %.val.i.i417, 0
  br i1 %i.av, label %bb.x, label %bb.y, !prof !13

bb.x:                                             ; preds = %bb.w
  %i.aw = add nuw i32 %.val.i.i417, 1
  store i32 %i.aw, ptr %i.ak, align 4, !tbaa !12
  br label %lean_inc.exit377

bb.y:                                             ; preds = %bb.w
  %.not.i.i418 = icmp eq i32 %.val.i.i417, 0
  br i1 %.not.i.i418, label %lean_inc.exit377, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = atomicrmw add ptr %i.ak, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit377

lean_inc.exit377:                                 ; preds = %lean_inc.exit379, %bb.x, %bb.y, %bb.z
  %i.ay = load i32, ptr %i.z, align 8, !tbaa !12  ; 3 uses
  %i.az = icmp sgt i32 %i.ay, 1
  br i1 %i.az, label %bb.aa, label %bb.ab, !prof !13

bb.aa:                                            ; preds = %lean_inc.exit377
  %i.ba = add nsw i32 %i.ay, -1
  store i32 %i.ba, ptr %i.z, align 8, !tbaa !12
  br label %lean_nat_eq.exit

bb.ab:                                            ; preds = %lean_inc.exit377
  %.not.i383 = icmp eq i32 %i.ay, 0
  br i1 %.not.i383, label %lean_nat_eq.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.z) #4
  br label %lean_nat_eq.exit

bb.ad:                                            ; preds = %lean_alloc_ctor.exit516
  tail call void @lean_inc_heartbeat() #4
  %i.bb = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.ae, label %lean_dec.exit.sink.split.sink.split

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_nat_eq.exit:                                 ; preds = %lean_dec.exit368, %bb.ac, %bb.ab, %bb.aa
  %.0349 = phi ptr [ %i.z, %lean_dec.exit368 ], [ inttoptr (i64 1 to ptr), %bb.ac ], [ inttoptr (i64 1 to ptr), %bb.ab ], [ inttoptr (i64 1 to ptr), %bb.aa ] ; 10 uses
  %i.bd = getelementptr i8, ptr %i.am, i64 8
  %.val408 = load i64, ptr %i.bd, align 8, !tbaa !15
  %i.be = shl i64 %.val408, 1                     ; 2 uses
  %.not = icmp eq i64 %i.be, 0
  br i1 %.not, label %bb.ay, label %lean_nat_eq.exit405

lean_nat_eq.exit405:                              ; preds = %lean_nat_eq.exit
  %.not533 = icmp eq i64 %i.be, 2
  %l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__46_value.l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__47_value = select i1 %.not533, ptr @l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__47_value, ptr @l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__46_value
  %i.bf = load atomic i32, ptr @l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__41_once seq_cst, align 4, !tbaa !17
  %i.bg = icmp eq i32 %i.bf, 1
  br i1 %i.bg, label %bb.af, label %bb.ag, !prof !13

bb.af:                                            ; preds = %lean_nat_eq.exit405
  %i.bh = load ptr, ptr @l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__41, align 8, !tbaa !10
  br label %lean_inc_ref.exit423

bb.ag:                                            ; preds = %lean_nat_eq.exit405
  %i.bi = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__41, ptr noundef nonnull @l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__41_once, ptr noundef nonnull @_init_l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__41) #4
  br label %lean_inc_ref.exit423

lean_inc_ref.exit423:                             ; preds = %bb.af, %bb.ag
  %.0.i420 = phi ptr [ %i.bh, %bb.af ], [ %i.bi, %bb.ag ]
  %i.bj = tail call ptr @l_Lean_stringToMessageData(ptr noundef nonnull %l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__46_value.l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__47_value) #4
  tail call void @lean_inc_heartbeat() #4
  %i.bk = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 6 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.ah, label %lean_alloc_ctor.exit424

bb.ah:                                            ; preds = %lean_inc_ref.exit423
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit424:                          ; preds = %lean_inc_ref.exit423
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 1, ptr %i.bk, align 4, !tbaa !12
  store i32 117571608, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %.0.i420, ptr %i.bn, align 8, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr %i.bj, ptr %i.bo, align 8, !tbaa !10
  %i.bp = load atomic i32, ptr @l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__43_once seq_cst, align 4, !tbaa !17
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %bb.ai, label %bb.aj, !prof !13

bb.ai:                                            ; preds = %lean_alloc_ctor.exit424
  %i.br = load ptr, ptr @l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__43, align 8, !tbaa !10
  br label %lean_obj_once.exit426

bb.aj:                                            ; preds = %lean_alloc_ctor.exit424
  %i.bs = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__43, ptr noundef nonnull @l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__43_once, ptr noundef nonnull @_init_l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__43) #4
  br label %lean_obj_once.exit426

lean_obj_once.exit426:                            ; preds = %bb.ai, %bb.aj
  %.0.i425 = phi ptr [ %i.br, %bb.ai ], [ %i.bs, %bb.aj ]
  tail call void @lean_inc_heartbeat() #4
  %i.bt = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 6 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.ak, label %lean_alloc_ctor.exit427

bb.ak:                                            ; preds = %lean_obj_once.exit426
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit427:                          ; preds = %lean_obj_once.exit426
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 1, ptr %i.bt, align 4, !tbaa !12
  store i32 117571608, ptr %i.bv, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bk, ptr %i.bw, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr %.0.i425, ptr %i.bx, align 8, !tbaa !10
  %i.by = tail call ptr @lean_array_to_list(ptr noundef nonnull %i.am) #4
  %i.bz = tail call ptr @l_Lean_MessageData_andList(ptr noundef %i.by) #4
  tail call void @lean_inc_heartbeat() #4
  %i.ca = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 6 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.al, label %lean_alloc_ctor.exit428

bb.al:                                            ; preds = %lean_alloc_ctor.exit427
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit428:                          ; preds = %lean_alloc_ctor.exit427
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store i32 1, ptr %i.ca, align 4, !tbaa !12
  store i32 117571608, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.bt, ptr %i.cd, align 8, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store ptr %i.bz, ptr %i.ce, align 8, !tbaa !10
  %i.cf = load atomic i32, ptr @l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__45_once seq_cst, align 4, !tbaa !17
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.am, label %bb.an, !prof !13

bb.am:                                            ; preds = %lean_alloc_ctor.exit428
  %i.ch = load ptr, ptr @l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__45, align 8, !tbaa !10
  br label %lean_obj_once.exit430

bb.an:                                            ; preds = %lean_alloc_ctor.exit428
  %i.ci = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__45, ptr noundef nonnull @l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__45_once, ptr noundef nonnull @_init_l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__45) #4
  br label %lean_obj_once.exit430

lean_obj_once.exit430:                            ; preds = %bb.am, %bb.an
  %.0.i429 = phi ptr [ %i.ch, %bb.am ], [ %i.ci, %bb.an ]
  tail call void @lean_inc_heartbeat() #4
  %i.cj = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 6 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.ao, label %lean_alloc_ctor.exit431

bb.ao:                                            ; preds = %lean_obj_once.exit430
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit431:                          ; preds = %lean_obj_once.exit430
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 1, ptr %i.cj, align 4, !tbaa !12
  store i32 117571608, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.ca, ptr %i.cm, align 8, !tbaa !10
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr %.0.i429, ptr %i.cn, align 8, !tbaa !10
  %i.co = tail call ptr @l_Lean_MessageData_ofConstName(ptr noundef nonnull @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_blameDecideReductionFailure_spec__2___redArg___closed__2_value, i8 noundef zeroext 0) #4
  tail call void @lean_inc_heartbeat() #4
  %i.cp = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 6 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.ap, label %lean_alloc_ctor.exit432

bb.ap:                                            ; preds = %lean_alloc_ctor.exit431
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit432:                          ; preds = %lean_alloc_ctor.exit431
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store i32 1, ptr %i.cp, align 4, !tbaa !12
  store i32 117571608, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.cj, ptr %i.cs, align 8, !tbaa !10
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store ptr %i.co, ptr %i.ct, align 8, !tbaa !10
  %i.cu = load atomic i32, ptr @l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__6_once seq_cst, align 4, !tbaa !17
  %i.cv = icmp eq i32 %i.cu, 1
  br i1 %i.cv, label %bb.aq, label %bb.ar, !prof !13

bb.aq:                                            ; preds = %lean_alloc_ctor.exit432
  %i.cw = load ptr, ptr @l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__6, align 8, !tbaa !10
  br label %lean_obj_once.exit434

bb.ar:                                            ; preds = %lean_alloc_ctor.exit432
  %i.cx = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__6, ptr noundef nonnull @l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__6_once, ptr noundef nonnull @_init_l___private_Lean_Elab_Tactic_Decide_0__Lean_Elab_Tactic_evalDecideCore_diagnose___closed__6) #4
  br label %lean_obj_once.exit434

lean_obj_once.exit434:                            ; preds = %bb.aq, %bb.ar
  %.0.i433 = phi ptr [ %i.cw, %bb.aq ], [ %i.cx, %bb.ar ]
  tail call void @lean_inc_heartbeat() #4
  %i.cy = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 6 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.as, label %lean_alloc_ctor.exit435

bb.as:                                            ; preds = %lean_obj_once.exit434
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit435:                          ; preds = %lean_obj_once.exit434
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 1, ptr %i.cy, align 4, !tbaa !12
  store i32 117571608, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.cp, ptr %i.db, align 8, !tbaa !10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr %.0.i433, ptr %i.dc, align 8, !tbaa !10
  %i.dd = ptrtoint ptr %i.ak to i64
  %i.de = and i64 %i.dd, 1
  %.not.i370 = icmp eq i64 %i.de, 0
  br i1 %.not.i370, label %bb.at, label %lean_inc.exit371

bb.at:                                            ; preds = %lean_alloc_ctor.exit435
  %.val.i.i436 = load i32, ptr %i.ak, align 4, !tbaa !12 ; 3 uses
  %i.df = icmp sgt i32 %.val.i.i436, 0
  br i1 %i.df, label %bb.au, label %bb.av, !prof !13

bb.au:                                            ; preds = %bb.at
  %i.dg = add nuw i32 %.val.i.i436, 1
  store i32 %i.dg, ptr %i.ak, align 4, !tbaa !12
  br label %lean_inc.exit371

bb.av:                                            ; preds = %bb.at
  %.not.i.i437 = icmp eq i32 %.val.i.i436, 0
  br i1 %.not.i.i437, label %lean_inc.exit371, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dh = atomicrmw add ptr %i.ak, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit371

lean_inc.exit371:                                 ; preds = %bb.aw, %bb.av, %bb.au, %lean_alloc_ctor.exit435
  %i.di = tail call ptr @l_Lean_indentExpr(ptr noundef %i.ak) #4
  tail call void @lean_inc_heartbeat() #4
  %i.dj = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.ax, label %lean_alloc_ctor.exit439

bb.ax:                                            ; preds = %lean_inc.exit371
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.ay:                                            ; preds = %lean_nat_eq.exit
  %i.dl = load i32, ptr %i.am, align 8, !tbaa !12 ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 1
  br i1 %i.dm, label %bb.az, label %bb.ba, !prof !13

bb.az:                                            ; preds = %bb.ay
  %i.dn = add nsw i32 %i.dl, -1
  store i32 %i.dn, ptr %i.am, align 8, !tbaa !12
  br label %lean_dec.exit364

bb.ba:                                            ; preds = %bb.ay
  %.not.i385 = icmp eq i32 %i.dl, 0
  br i1 %.not.i385, label %lean_dec.exit364, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.am) #4
  br label %lean_dec.exit364

end_hunk_0
