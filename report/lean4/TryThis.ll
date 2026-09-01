Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/TryThis?download=true
inline.NumInlined: 2186
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@l___private_Lean_Meta_Tactic_TryThis_0__Lean_Meta_Tactic_TryThis_addExactSuggestionCore:bb.a
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_inc_ref.exit
  %i.ak = add nsw i32 %i.ai, -1
  store i32 %i.ak, ptr %i.a, align 8, !tbaa !11
  br label %lean_dec.exit852

bb.f:                                             ; preds = %lean_inc_ref.exit
  %.not.i.i850 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i850, label %lean_dec.exit852, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #4
  br label %lean_dec.exit852

lean_dec.exit852:                                 ; preds = %bb.e, %bb.f, %bb.g
  %i.al = load ptr, ptr @l_Lean_pp_mvars, align 8, !tbaa !9 ; 4 uses
  %.val.i.i864 = load i32, ptr %i.g, align 4, !tbaa !11 ; 3 uses
  %i.am = icmp sgt i32 %.val.i.i864, 0
  br i1 %i.am, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %lean_dec.exit852
  %i.an = add nuw i32 %.val.i.i864, 1
  store i32 %i.an, ptr %i.g, align 4, !tbaa !11
  br label %lean_inc_ref.exit866

bb.i:                                             ; preds = %lean_dec.exit852
  %.not.i.i865 = icmp eq i32 %.val.i.i864, 0
  br i1 %.not.i.i865, label %lean_inc_ref.exit866, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = atomicrmw sub ptr %i.g, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit866

lean_inc_ref.exit866:                             ; preds = %bb.h, %bb.i, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !9  ; 5 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 1
  %.not.i6.i = icmp eq i64 %i.as, 0
  br i1 %.not.i6.i, label %bb.k, label %lean_inc.exit.i

bb.k:                                             ; preds = %lean_inc_ref.exit866
  %.val.i.i.i = load i32, ptr %i.aq, align 4, !tbaa !11 ; 3 uses
  %i.at = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.at, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.au = add nuw i32 %.val.i.i.i, 1
  store i32 %i.au, ptr %i.aq, align 4, !tbaa !11
  br label %lean_inc.exit.i

bb.m:                                             ; preds = %bb.k
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_inc.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = atomicrmw sub ptr %i.aq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i

lean_inc.exit.i:                                  ; preds = %bb.n, %bb.m, %bb.l, %lean_inc_ref.exit866
  %i.aw = load i32, ptr %i.al, align 8, !tbaa !11 ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %bb.o, label %bb.p, !prof !13

bb.o:                                             ; preds = %lean_inc.exit.i
  %i.ay = add nsw i32 %i.aw, -1
  store i32 %i.ay, ptr %i.al, align 8, !tbaa !11
  br label %l_Lean_Option_set___at___00Lean_Meta_Tactic_TryThis_delabToRefinableSyntax_spec__0.exit

bb.p:                                             ; preds = %lean_inc.exit.i
  %.not.i.i867 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i867, label %l_Lean_Option_set___at___00Lean_Meta_Tactic_TryThis_delabToRefinableSyntax_spec__0.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.al) #4
  br label %l_Lean_Option_set___at___00Lean_Meta_Tactic_TryThis_delabToRefinableSyntax_spec__0.exit

l_Lean_Option_set___at___00Lean_Meta_Tactic_TryThis_delabToRefinableSyntax_spec__0.exit: ; preds = %bb.o, %bb.p, %bb.q
  %i.az = tail call ptr @l_Lean_Options_set___at___00Lean_Option_set___at___00Lean_Meta_Tactic_TryThis_delabToRefinableSyntax_spec__0_spec__0(ptr noundef nonnull %i.g, ptr noundef %i.aq, i8 noundef zeroext 0) ; 3 uses
  %i.ba = load ptr, ptr @l_Lean_diagnostics, align 8, !tbaa !9
  %i.bb = tail call zeroext i8 @l_Lean_Option_get___at___00Lean_Meta_Tactic_TryThis_delabToRefinableSyntax_spec__1(ptr noundef %i.az, ptr noundef %i.ba) ; 3 uses
  %i.bc = tail call zeroext i8 @l_Lean_Kernel_isDiagnosticsEnabled(ptr noundef nonnull %i.ae) #4
  %i.bd = load i32, ptr %i.ae, align 4, !tbaa !11 ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 1
  br i1 %i.be, label %bb.r, label %bb.s, !prof !13

bb.r:                                             ; preds = %l_Lean_Option_set___at___00Lean_Meta_Tactic_TryThis_delabToRefinableSyntax_spec__0.exit
  %i.bf = add nsw i32 %i.bd, -1
  store i32 %i.bf, ptr %i.ae, align 4, !tbaa !11
  br label %lean_dec_ref.exit690

bb.s:                                             ; preds = %l_Lean_Option_set___at___00Lean_Meta_Tactic_TryThis_delabToRefinableSyntax_spec__0.exit
  %.not.i689 = icmp eq i32 %i.bd, 0
  br i1 %.not.i689, label %lean_dec_ref.exit690, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref.exit690

lean_dec_ref.exit690:                             ; preds = %bb.r, %bb.s, %bb.t
  %i.bg = icmp eq i8 %i.bc, 0
  %i.bh = icmp eq i8 %i.bb, 0
  %i.bi = xor i1 %i.bg, %i.bh
  br i1 %i.bi, label %.thread, label %bb.kh

lean_dec.exit832.thread1127:                      ; preds = %bb.fb, %bb.fc, %bb.go, %bb.gn, %bb.ea, %bb.dz, %bb.dy, %bb.gp
  %.0533 = phi ptr [ inttoptr (i64 1 to ptr), %bb.go ], [ inttoptr (i64 1 to ptr), %bb.gp ], [ %i.kh, %bb.fc ], [ %.0598, %bb.fb ], [ inttoptr (i64 1 to ptr), %bb.dy ], [ inttoptr (i64 1 to ptr), %bb.dz ], [ inttoptr (i64 1 to ptr), %bb.ea ], [ inttoptr (i64 1 to ptr), %bb.gn ]
  %.0523 = phi ptr [ %i.lm, %bb.go ], [ %i.lm, %bb.gp ], [ %i.iu, %bb.fc ], [ %i.iu, %bb.fb ], [ %i.id, %bb.dy ], [ %i.id, %bb.dz ], [ %i.id, %bb.ea ], [ %i.lm, %bb.gn ]
  %.0514 = phi ptr [ %i.lt, %bb.go ], [ %i.lt, %bb.gp ], [ %i.jb, %bb.fc ], [ %i.jb, %bb.fb ], [ %i.ik, %bb.dy ], [ %i.ik, %bb.dz ], [ %i.ik, %bb.ea ], [ %i.lt, %bb.gn ]
  tail call void @lean_inc_heartbeat() #4
  %i.bj = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 6 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.u, label %lean_alloc_ctor.exit

bb.u:                                             ; preds = %lean_dec.exit832.thread1127
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec.exit832.thread1127
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 1, ptr %i.bj, align 4, !tbaa !11
  store i32 131096, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @l___private_Lean_Meta_Tactic_TryThis_0__Lean_Meta_Tactic_TryThis_addExactSuggestionCore___closed__1_value, ptr %i.bm, align 8, !tbaa !9
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %.0523, ptr %i.bn, align 8, !tbaa !9
  tail call void @lean_inc_heartbeat() #4
  %i.bo = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.v, label %lean_alloc_ctor.exit869

bb.v:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit869:                          ; preds = %lean_alloc_ctor.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 1, ptr %i.bo, align 4, !tbaa !11
  store i32 16842768, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %.0514, ptr %i.br, align 8, !tbaa !9
  tail call void @lean_inc_heartbeat() #4
  %i.bs = tail call noalias ptr @mi_malloc_small(i64 noundef 56) #4 ; 10 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.w, label %lean_alloc_ctor.exit870

bb.w:                                             ; preds = %lean_alloc_ctor.exit869
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit870:                          ; preds = %lean_alloc_ctor.exit869
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 1, ptr %i.bs, align 4, !tbaa !11
  store i32 393272, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bj, ptr %i.bv, align 8, !tbaa !9
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.bw, align 8, !tbaa !9
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store ptr %.0533, ptr %i.bx, align 8, !tbaa !9
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.by, align 8, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  store ptr %i.bo, ptr %i.bz, align 8, !tbaa !9
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.ca, align 8, !tbaa !9
  tail call void @lean_inc_heartbeat() #4
  %i.cb = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.x, label %lean_alloc_ctor.exit871

bb.x:                                             ; preds = %lean_alloc_ctor.exit870
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit871:                          ; preds = %lean_alloc_ctor.exit870
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 1, ptr %i.cb, align 4, !tbaa !11
  store i32 65552, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.bs, ptr %i.ce, align 8, !tbaa !9
  tail call void @lean_inc_heartbeat() #4
  %i.cf = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 4 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.y, label %lean_alloc_ctor.exit872

bb.y:                                             ; preds = %lean_alloc_ctor.exit871
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit872:                          ; preds = %lean_alloc_ctor.exit871
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i32 1, ptr %i.cf, align 4, !tbaa !11
  store i32 65552, ptr %i.ch, align 4
  br label %lean_dec.exit832.thread.sink.split

bb.z:                                             ; preds = %bb.hh, %bb.hi
  %.0.i976 = phi ptr [ %i.ng, %bb.hh ], [ %i.nh, %bb.hi ] ; 4 uses
  %l_Lean_logAt___at___00Lean_logInfoAt___at___00Lean_Meta_Tactic_TryThis_addSuggestion_spec__0_spec__0___closed__0_value.l___private_Lean_Meta_Tactic_TryThis_0__Lean_Meta_Tactic_TryThis_addExactSuggestionCore___closed__7_value = select i1 %i.dl, ptr @l___private_Lean_Meta_Tactic_TryThis_0__Lean_Meta_Tactic_TryThis_addExactSuggestionCore___closed__7_value, ptr @l_Lean_logAt___at___00Lean_logInfoAt___at___00Lean_Meta_Tactic_TryThis_addSuggestion_spec__0_spec__0___closed__0_value ; 3 uses
  %.val.i.i873 = load i32, ptr %l_Lean_logAt___at___00Lean_logInfoAt___at___00Lean_Meta_Tactic_TryThis_addSuggestion_spec__0_spec__0___closed__0_value.l___private_Lean_Meta_Tactic_TryThis_0__Lean_Meta_Tactic_TryThis_addExactSuggestionCore___closed__7_value, align 8, !tbaa !11 ; 2 uses
  %i.ci = icmp sgt i32 %.val.i.i873, 0
  br i1 %i.ci, label %lean_inc_ref.exit875, label %bb.aa, !prof !13

bb.aa:                                            ; preds = %bb.z
  %.not.i.i874 = icmp eq i32 %.val.i.i873, 0
  br i1 %.not.i.i874, label %lean_inc_ref.exit875, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cj = atomicrmw sub ptr %l_Lean_logAt___at___00Lean_logInfoAt___at___00Lean_Meta_Tactic_TryThis_addSuggestion_spec__0_spec__0___closed__0_value.l___private_Lean_Meta_Tactic_TryThis_0__Lean_Meta_Tactic_TryThis_addExactSuggestionCore___closed__7_value, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit875

lean_inc_ref.exit875:                             ; preds = %bb.z, %bb.aa, %bb.ab
  %i.ck = tail call ptr @l_Lean_stringToMessageData(ptr noundef nonnull %l_Lean_logAt___at___00Lean_logInfoAt___at___00Lean_Meta_Tactic_TryThis_addSuggestion_spec__0_spec__0___closed__0_value.l___private_Lean_Meta_Tactic_TryThis_0__Lean_Meta_Tactic_TryThis_addExactSuggestionCore___closed__7_value) #4
  %.val.i.i876 = load i32, ptr %.0.i976, align 4, !tbaa !11 ; 3 uses
  %i.cl = icmp sgt i32 %.val.i.i876, 0
  br i1 %i.cl, label %bb.ac, label %bb.ad, !prof !13

bb.ac:                                            ; preds = %lean_inc_ref.exit875
  %i.cm = add nuw i32 %.val.i.i876, 1
  store i32 %i.cm, ptr %.0.i976, align 4, !tbaa !11
  br label %lean_inc_ref.exit878

bb.ad:                                            ; preds = %lean_inc_ref.exit875
  %.not.i.i877 = icmp eq i32 %.val.i.i876, 0
  br i1 %.not.i.i877, label %lean_inc_ref.exit878, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cn = atomicrmw sub ptr %.0.i976, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit878

lean_inc_ref.exit878:                             ; preds = %bb.ac, %bb.ad, %bb.ae
  tail call void @lean_inc_heartbeat() #4
  %i.co = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 6 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.af, label %lean_alloc_ctor.exit879

bb.af:                                            ; preds = %lean_inc_ref.exit878
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit879:                          ; preds = %lean_inc_ref.exit878
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i32 1, ptr %i.co, align 4, !tbaa !11
  store i32 117571608, ptr %i.cq, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %.0.i976, ptr %i.cr, align 8, !tbaa !9
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store ptr %i.ck, ptr %i.cs, align 8, !tbaa !9
  %i.ct = load atomic i32, ptr @l___private_Lean_Meta_Tactic_TryThis_0__Lean_Meta_Tactic_TryThis_addExactSuggestionCore___closed__3_once seq_cst, align 4, !tbaa !23
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %bb.ag, label %bb.ah, !prof !13

bb.ag:                                            ; preds = %lean_alloc_ctor.exit879
  %i.cv = load ptr, ptr @l___private_Lean_Meta_Tactic_TryThis_0__Lean_Meta_Tactic_TryThis_addExactSuggestionCore___closed__3, align 8, !tbaa !9
  br label %lean_obj_once.exit

bb.ah:                                            ; preds = %lean_alloc_ctor.exit879
  %i.cw = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_TryThis_0__Lean_Meta_Tactic_TryThis_addExactSuggestionCore___closed__3, ptr noundef nonnull @l___private_Lean_Meta_Tactic_TryThis_0__Lean_Meta_Tactic_TryThis_addExactSuggestionCore___closed__3_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_TryThis_0__Lean_Meta_Tactic_TryThis_addExactSuggestionCore___closed__3) #4
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.ag, %bb.ah
  %.0.i880 = phi ptr [ %i.cv, %bb.ag ], [ %i.cw, %bb.ah ]
  tail call void @lean_inc_heartbeat() #4
  %i.cx = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 6 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.ai, label %lean_alloc_ctor.exit881

bb.ai:                                            ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit881:                          ; preds = %lean_obj_once.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 1, ptr %i.cx, align 4, !tbaa !11
  store i32 117571608, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.co, ptr %i.da, align 8, !tbaa !9
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store ptr %.0.i880, ptr %i.db, align 8, !tbaa !9
  %i.dc = tail call ptr @l___private_Lean_Meta_Tactic_TryThis_0__Lean_Meta_Tactic_TryThis_mkFailedToMakeTacticMsg(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.nb)
  tail call void @lean_inc_heartbeat() #4
  %i.dd = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.aj, label %lean_alloc_ctor.exit882

bb.aj:                                            ; preds = %lean_alloc_ctor.exit881
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit882:                          ; preds = %lean_alloc_ctor.exit881
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store i32 1, ptr %i.dd, align 4, !tbaa !11
  store i32 16842768, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.dc, ptr %i.dg, align 8, !tbaa !9
  tail call void @lean_inc_heartbeat() #4
  %i.dh = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 4 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ak, label %lean_alloc_ctor.exit883

bb.ak:                                            ; preds = %lean_alloc_ctor.exit882
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit883:                          ; preds = %lean_alloc_ctor.exit882
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 1, ptr %i.dh, align 4, !tbaa !11
  store i32 65552, ptr %i.dj, align 4
  br label %lean_dec.exit832.thread.sink.split

bb.al:                                            ; preds = %bb.mt, %bb.ms, %bb.mr, %lean_dec.exit.i1048
  %i.dk = getelementptr i8, ptr %i.ui, i64 8
  %.val862 = load i64, ptr %i.dk, align 8, !tbaa !14
  %.mask = and i64 %.val862, 9223372036854775807
  %i.dl = icmp ne i64 %.mask, 0                   ; 3 uses
  %. = zext i1 %i.dl to i8
  %i.dm = tail call ptr @l___private_Lean_Meta_Tactic_TryThis_0__Lean_Meta_Tactic_TryThis_mkExactSuggestionSyntax(ptr noundef nonnull %2, i8 noundef zeroext %., ptr noundef %7, ptr noundef %8, ptr noundef nonnull %i.td, ptr noundef %10) ; 14 uses
  %i.dn = ptrtoint ptr %i.dm to i64               ; 2 uses
  %i.do = and i64 %i.dn, 1
  %.not.i884 = icmp eq i64 %i.do, 0               ; 3 uses
  br i1 %.not.i884, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dp = lshr i64 %i.dn, 1
  %i.dq = trunc i64 %i.dp to i32
  br label %lean_obj_tag.exit

bb.an:                                            ; preds = %bb.al
  %i.dr = getelementptr i8, ptr %i.dm, i64 4
  %.val.i = load i32, ptr %i.dr, align 4
  %i.ds = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.am, %bb.an
  %.0.i885 = phi i32 [ %i.dq, %bb.am ], [ %i.ds, %bb.an ]
  %i.dt = icmp eq i32 %.0.i885, 0
  br i1 %i.dt, label %bb.ao, label %bb.jl

bb.ao:                                            ; preds = %lean_obj_tag.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !9  ; 18 uses
  %.val861 = load i32, ptr %i.dm, align 8, !tbaa !11
  %i.dw = icmp eq i32 %.val861, 1                 ; 2 uses
  br i1 %i.dw, label %lean_dec.exit848, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = and i64 %i.dx, 1
  %.not.i762 = icmp eq i64 %i.dy, 0
  br i1 %.not.i762, label %bb.aq, label %lean_inc.exit763

bb.aq:                                            ; preds = %bb.ap
  %.val.i.i886 = load i32, ptr %i.dv, align 4, !tbaa !11 ; 3 uses
  %i.dz = icmp sgt i32 %.val.i.i886, 0
  br i1 %i.dz, label %bb.ar, label %bb.as, !prof !13

bb.ar:                                            ; preds = %bb.aq
  %i.ea = add nuw i32 %.val.i.i886, 1
  store i32 %i.ea, ptr %i.dv, align 4, !tbaa !11
  br label %lean_inc.exit763

bb.as:                                            ; preds = %bb.aq
  %.not.i.i887 = icmp eq i32 %.val.i.i886, 0
  br i1 %.not.i.i887, label %lean_inc.exit763, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eb = atomicrmw sub ptr %i.dv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit763

lean_inc.exit763:                                 ; preds = %bb.at, %bb.as, %bb.ar, %bb.ap
  br i1 %.not.i884, label %bb.au, label %lean_dec.exit848

bb.au:                                            ; preds = %lean_inc.exit763
  %i.ec = load i32, ptr %i.dm, align 8, !tbaa !11 ; 3 uses
  %i.ed = icmp sgt i32 %i.ec, 1
  br i1 %i.ed, label %bb.av, label %bb.aw, !prof !13

bb.av:                                            ; preds = %bb.au
  %i.ee = add nsw i32 %i.ec, -1
  store i32 %i.ee, ptr %i.dm, align 8, !tbaa !11
  br label %lean_dec.exit848

bb.aw:                                            ; preds = %bb.au
  %.not.i.i846 = icmp eq i32 %i.ec, 0
  br i1 %.not.i.i846, label %lean_dec.exit848, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dm) #4
  br label %lean_dec.exit848

lean_dec.exit848:                                 ; preds = %lean_inc.exit763, %bb.ax, %bb.aw, %bb.av, %bb.ao
  %.0602 = phi ptr [ %i.dm, %bb.ao ], [ inttoptr (i64 1 to ptr), %bb.av ], [ inttoptr (i64 1 to ptr), %bb.aw ], [ inttoptr (i64 1 to ptr), %bb.ax ], [ inttoptr (i64 1 to ptr), %lean_inc.exit763 ] ; 3 uses
  %i.ef = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.eg = and i64 %i.ef, 1
  %.not.i889 = icmp eq i64 %i.eg, 0               ; 2 uses
  br i1 %.not.i889, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %lean_dec.exit848
  %i.eh = lshr i64 %i.ef, 1
  %i.ei = trunc i64 %i.eh to i32
  br label %lean_obj_tag.exit892

bb.az:                                            ; preds = %lean_dec.exit848
  %i.ej = getelementptr i8, ptr %1, i64 4
  %.val.i891 = load i32, ptr %i.ej, align 4
  %i.ek = lshr i32 %.val.i891, 24
  br label %lean_obj_tag.exit892

lean_obj_tag.exit892:                             ; preds = %bb.ay, %bb.az
  %.0.i890 = phi i32 [ %i.ei, %bb.ay ], [ %i.ek, %bb.az ]
  %i.el = icmp eq i32 %.0.i890, 1
  br i1 %i.el, label %bb.ba, label %bb.ig

bb.ba:                                            ; preds = %lean_obj_tag.exit892
  %i.em = ptrtoint ptr %.0602 to i64
  %i.en = and i64 %i.em, 1
  %.not.i893 = icmp eq i64 %i.en, 0
  br i1 %.not.i893, label %bb.bb, label %lean_del_object.exit

bb.bb:                                            ; preds = %bb.ba
  tail call void @lean_free_object(ptr noundef nonnull %.0602) #4
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.ba, %bb.bb
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !9  ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !9  ; 16 uses
  %.val860 = load i32, ptr %i.dv, align 8, !tbaa !11
  %i.es = icmp eq i32 %.val860, 1                 ; 2 uses
  br i1 %i.es, label %lean_dec.exit844, label %bb.bc

bb.bc:                                            ; preds = %lean_del_object.exit
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = and i64 %i.et, 1
  %.not.i760 = icmp eq i64 %i.eu, 0
  br i1 %.not.i760, label %bb.bd, label %lean_inc.exit761

bb.bd:                                            ; preds = %bb.bc
  %.val.i.i894 = load i32, ptr %i.er, align 4, !tbaa !11 ; 3 uses
  %i.ev = icmp sgt i32 %.val.i.i894, 0
  br i1 %i.ev, label %bb.be, label %bb.bf, !prof !13

bb.be:                                            ; preds = %bb.bd
  %i.ew = add nuw i32 %.val.i.i894, 1
  store i32 %i.ew, ptr %i.er, align 4, !tbaa !11
  br label %lean_inc.exit761

bb.bf:                                            ; preds = %bb.bd
  %.not.i.i895 = icmp eq i32 %.val.i.i894, 0
  br i1 %.not.i.i895, label %lean_inc.exit761, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ex = atomicrmw sub ptr %i.er, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit761

lean_inc.exit761:                                 ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bc
  %i.ey = ptrtoint ptr %i.ep to i64
  %i.ez = and i64 %i.ey, 1
  %.not.i758 = icmp eq i64 %i.ez, 0
  br i1 %.not.i758, label %bb.bh, label %lean_inc.exit759

bb.bh:                                            ; preds = %lean_inc.exit761
  %.val.i.i897 = load i32, ptr %i.ep, align 4, !tbaa !11 ; 3 uses
  %i.fa = icmp sgt i32 %.val.i.i897, 0
  br i1 %i.fa, label %bb.bi, label %bb.bj, !prof !13

bb.bi:                                            ; preds = %bb.bh
  %i.fb = add nuw i32 %.val.i.i897, 1
  store i32 %i.fb, ptr %i.ep, align 4, !tbaa !11
  br label %lean_inc.exit759

bb.bj:                                            ; preds = %bb.bh
  %.not.i.i898 = icmp eq i32 %.val.i.i897, 0
  br i1 %.not.i.i898, label %lean_inc.exit759, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fc = atomicrmw sub ptr %i.ep, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit759

lean_inc.exit759:                                 ; preds = %lean_inc.exit761, %bb.bi, %bb.bj, %bb.bk
  %i.fd = load i32, ptr %i.dv, align 8, !tbaa !11 ; 3 uses
  %i.fe = icmp sgt i32 %i.fd, 1
  br i1 %i.fe, label %bb.bl, label %bb.bm, !prof !13

bb.bl:                                            ; preds = %lean_inc.exit759
  %i.ff = add nsw i32 %i.fd, -1
  store i32 %i.ff, ptr %i.dv, align 8, !tbaa !11
  br label %lean_dec.exit844

bb.bm:                                            ; preds = %lean_inc.exit759
  %.not.i.i842 = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i842, label %lean_dec.exit844, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dv) #4
  br label %lean_dec.exit844

lean_dec.exit844:                                 ; preds = %bb.bn, %bb.bm, %bb.bl, %lean_del_object.exit
  %.0600 = phi ptr [ %i.dv, %lean_del_object.exit ], [ inttoptr (i64 1 to ptr), %bb.bl ], [ inttoptr (i64 1 to ptr), %bb.bm ], [ inttoptr (i64 1 to ptr), %bb.bn ] ; 7 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !9  ; 5 uses
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, 1
  %.not.i756 = icmp eq i64 %i.fj, 0
  br i1 %.not.i756, label %bb.bo, label %lean_inc.exit757

bb.bo:                                            ; preds = %lean_dec.exit844
  %.val.i.i900 = load i32, ptr %i.fh, align 4, !tbaa !11 ; 3 uses
  %i.fk = icmp sgt i32 %.val.i.i900, 0
  br i1 %i.fk, label %bb.bp, label %bb.bq, !prof !13

bb.bp:                                            ; preds = %bb.bo
  %i.fl = add nuw i32 %.val.i.i900, 1
  store i32 %i.fl, ptr %i.fh, align 4, !tbaa !11
end_hunk_0
