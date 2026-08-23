Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/BuiltinCommand?download=true
inline.NumInlined: 10693
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 72
loop-unroll.NumUnrolled: 72
begin_hunk_0_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_reportVersoParseFailure___at___00Lean_Elab_Command_elabModuleDoc_spec__2_spec__2___redArg___boxed:bb.a
; Function Attrs: nounwind uwtable
define ptr @l_Lean_reportVersoParseFailure___at___00Lean_Elab_Command_elabModuleDoc_spec__2(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr)) #8 ; 10 uses
  %i.b = tail call ptr @l_Lean_Syntax_getPos_x3f(ptr noundef %i.a, i8 noundef zeroext 1) #8 ; 11 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not.i616 = icmp eq i64 %i.d, 0                ; 2 uses
  br i1 %.not.i616, label %lean_obj_tag.exit, label %lean_obj_tag.exit.thread

lean_obj_tag.exit:                                ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %.mask876 = and i32 %.val.i, -16777216
  %i.f = icmp eq i32 %.mask876, 16777216
  br i1 %i.f, label %bb.b, label %bb.kt

lean_obj_tag.exit.thread:                         ; preds = %bb.a
  %i.g = and i64 %i.c, 8589934590
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.b, label %lean_dec.exit511

bb.b:                                             ; preds = %lean_obj_tag.exit.thread, %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11   ; 14 uses
  %.val611 = load i32, ptr %i.b, align 8, !tbaa !13
  %i.k = icmp eq i32 %.val611, 1                  ; 4 uses
  br i1 %i.k, label %lean_dec.exit535, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = and i64 %i.l, 1
  %.not.i507 = icmp eq i64 %i.m, 0
  br i1 %.not.i507, label %bb.d, label %lean_inc.exit508

bb.d:                                             ; preds = %bb.c
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !13 ; 3 uses
  %i.n = icmp sgt i32 %.val.i.i, 0
  br i1 %i.n, label %bb.e, label %bb.f, !prof !15

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw i32 %.val.i.i, 1
  store i32 %i.o, ptr %i.j, align 4, !tbaa !13
  br label %lean_inc.exit508

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit508, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit508

lean_inc.exit508:                                 ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  br i1 %.not.i616, label %bb.h, label %lean_dec.exit535

bb.h:                                             ; preds = %lean_inc.exit508
  %i.q = load i32, ptr %i.b, align 8, !tbaa !13   ; 3 uses
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %bb.i, label %bb.j, !prof !15

bb.i:                                             ; preds = %bb.h
  %i.s = add nsw i32 %i.q, -1
  store i32 %i.s, ptr %i.b, align 8, !tbaa !13
  br label %lean_dec.exit535

bb.j:                                             ; preds = %bb.h
  %.not.i536 = icmp eq i32 %i.q, 0
  br i1 %.not.i536, label %lean_dec.exit535, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.b) #8
  br label %lean_dec.exit535

lean_dec.exit535:                                 ; preds = %lean_inc.exit508, %bb.i, %bb.j, %bb.k, %bb.b
  %.0388 = phi ptr [ %i.b, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %bb.j ], [ inttoptr (i64 1 to ptr), %bb.i ], [ inttoptr (i64 1 to ptr), %lean_inc.exit508 ] ; 12 uses
  %i.t = tail call ptr @l_Lean_Syntax_getTailPos_x3f(ptr noundef %i.a, i8 noundef zeroext 1) #8 ; 11 uses
  %i.u = ptrtoint ptr %i.a to i64
  %i.v = and i64 %i.u, 1
  %.not.i532 = icmp eq i64 %i.v, 0
  br i1 %.not.i532, label %bb.l, label %lean_dec.exit533

bb.l:                                             ; preds = %lean_dec.exit535
  %i.w = load i32, ptr %i.a, align 4, !tbaa !13   ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.m, label %bb.n, !prof !15

bb.m:                                             ; preds = %bb.l
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %i.a, align 4, !tbaa !13
  br label %lean_dec.exit533

bb.n:                                             ; preds = %bb.l
  %.not.i537 = icmp eq i32 %i.w, 0
  br i1 %.not.i537, label %lean_dec.exit533, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #8
  br label %lean_dec.exit533

lean_dec.exit533:                                 ; preds = %bb.o, %bb.n, %bb.m, %lean_dec.exit535
  %i.z = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.aa = and i64 %i.z, 1
  %.not.i618 = icmp eq i64 %i.aa, 0               ; 2 uses
  br i1 %.not.i618, label %lean_obj_tag.exit621, label %lean_obj_tag.exit621.thread

lean_obj_tag.exit621:                             ; preds = %lean_dec.exit533
  %i.ab = getelementptr i8, ptr %i.t, i64 4
  %.val.i620 = load i32, ptr %i.ab, align 4
  %.mask877 = and i32 %.val.i620, -16777216
  %i.ac = icmp eq i32 %.mask877, 16777216
  br i1 %i.ac, label %bb.p, label %bb.ki

lean_obj_tag.exit621.thread:                      ; preds = %lean_dec.exit533
  %i.ad = and i64 %i.z, 8589934590
  %i.ae = icmp eq i64 %i.ad, 2
  br i1 %i.ae, label %bb.p, label %lean_dec.exit515

bb.p:                                             ; preds = %lean_obj_tag.exit621.thread, %lean_obj_tag.exit621
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !11 ; 11 uses
  %.val610 = load i32, ptr %i.t, align 8, !tbaa !13
  %i.ah = icmp eq i32 %.val610, 1                 ; 2 uses
  %.pre = ptrtoint ptr %i.ag to i64
  %.pre790 = and i64 %.pre, 1                     ; 2 uses
  br i1 %i.ah, label %lean_dec.exit531, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i505 = icmp eq i64 %.pre790, 0
  br i1 %.not.i505, label %bb.r, label %lean_inc.exit506

bb.r:                                             ; preds = %bb.q
  %.val.i.i622 = load i32, ptr %i.ag, align 4, !tbaa !13 ; 3 uses
  %i.ai = icmp sgt i32 %.val.i.i622, 0
  br i1 %i.ai, label %bb.s, label %bb.t, !prof !15

bb.s:                                             ; preds = %bb.r
  %i.aj = add nuw i32 %.val.i.i622, 1
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !13
  br label %lean_inc.exit506

bb.t:                                             ; preds = %bb.r
  %.not.i.i623 = icmp eq i32 %.val.i.i622, 0
  br i1 %.not.i.i623, label %lean_inc.exit506, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ak = atomicrmw sub ptr %i.ag, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit506

lean_inc.exit506:                                 ; preds = %bb.u, %bb.t, %bb.s, %bb.q
  br i1 %.not.i618, label %bb.v, label %lean_dec.exit531

bb.v:                                             ; preds = %lean_inc.exit506
  %i.al = load i32, ptr %i.t, align 8, !tbaa !13  ; 3 uses
  %i.am = icmp sgt i32 %i.al, 1
  br i1 %i.am, label %bb.w, label %bb.x, !prof !15

bb.w:                                             ; preds = %bb.v
  %i.an = add nsw i32 %i.al, -1
  store i32 %i.an, ptr %i.t, align 8, !tbaa !13
  br label %lean_dec.exit531

bb.x:                                             ; preds = %bb.v
  %.not.i539 = icmp eq i32 %i.al, 0
  br i1 %.not.i539, label %lean_dec.exit531, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.t) #8
  br label %lean_dec.exit531

lean_dec.exit531:                                 ; preds = %bb.p, %lean_inc.exit506, %bb.w, %bb.x, %bb.y
  %.0394 = phi ptr [ inttoptr (i64 1 to ptr), %bb.y ], [ inttoptr (i64 1 to ptr), %lean_inc.exit506 ], [ inttoptr (i64 1 to ptr), %bb.w ], [ inttoptr (i64 1 to ptr), %bb.x ], [ %i.t, %bb.p ] ; 11 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !11 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !11 ; 14 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !11 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !11 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !11 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 121
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !16  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !11 ; 7 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %.val612 = load i64, ptr %i.bc, align 8, !tbaa !9
  %i.bd = shl i64 %.val612, 1
  %i.be = add i64 %i.bd, -1
  %i.bf = inttoptr i64 %i.be to ptr               ; 6 uses
  %.not.i606 = icmp eq i64 %.pre790, 0
  br i1 %.not.i606, label %lean_nat_le.exit, label %lean_nat_le.exit.thread, !prof !19

lean_nat_le.exit:                                 ; preds = %lean_dec.exit531
  %i.bg = tail call zeroext i1 @lean_nat_big_le(ptr noundef %i.ag, ptr noundef nonnull %i.bf) #8
  br i1 %i.bg, label %lean_dec.exit529, label %bb.z

lean_nat_le.exit.thread:                          ; preds = %lean_dec.exit531
  %.not = icmp ugt ptr %i.ag, %i.bf
  br i1 %.not, label %.thread, label %lean_dec.exit529

.thread:                                          ; preds = %lean_nat_le.exit.thread
  br label %lean_dec.exit529

bb.z:                                             ; preds = %lean_nat_le.exit
  %i.bh = load i32, ptr %i.ag, align 4, !tbaa !13 ; 3 uses
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %bb.aa, label %bb.ab, !prof !15

bb.aa:                                            ; preds = %bb.z
  %i.bj = add nsw i32 %i.bh, -1
  store i32 %i.bj, ptr %i.ag, align 4, !tbaa !13
  br label %lean_dec.exit529

bb.ab:                                            ; preds = %bb.z
  %.not.i541 = icmp eq i32 %i.bh, 0
  br i1 %.not.i541, label %lean_dec.exit529, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ag) #8
  br label %lean_dec.exit529

bb.ad:                                            ; preds = %bb.do, %lean_inc_ref.exit677
  %i.bk = tail call ptr @lean_st_ref_take(ptr noundef %6) #8 ; 14 uses
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !11 ; 5 uses
  %i.bm = load ptr, ptr %i.aw, align 8, !tbaa !11 ; 5 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = and i64 %i.bn, 1
  %.not.i503 = icmp eq i64 %i.bo, 0
  br i1 %.not.i503, label %bb.ae, label %lean_inc.exit504

bb.ae:                                            ; preds = %bb.ad
  %.val.i.i625 = load i32, ptr %i.bm, align 4, !tbaa !13 ; 3 uses
  %i.bp = icmp sgt i32 %.val.i.i625, 0
  br i1 %i.bp, label %bb.af, label %bb.ag, !prof !15

bb.af:                                            ; preds = %bb.ae
  %i.bq = add nuw i32 %.val.i.i625, 1
  store i32 %i.bq, ptr %i.bm, align 4, !tbaa !13
  br label %lean_inc.exit504

bb.ag:                                            ; preds = %bb.ae
  %.not.i.i626 = icmp eq i32 %.val.i.i625, 0
  br i1 %.not.i.i626, label %lean_inc.exit504, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.br = atomicrmw sub ptr %i.bm, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit504

lean_inc.exit504:                                 ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad
  %i.bs = ptrtoint ptr %i.bl to i64
  %i.bt = and i64 %i.bs, 1
  %.not.i501 = icmp eq i64 %i.bt, 0
  br i1 %.not.i501, label %bb.ai, label %lean_inc.exit502

bb.ai:                                            ; preds = %lean_inc.exit504
  %.val.i.i628 = load i32, ptr %i.bl, align 4, !tbaa !13 ; 3 uses
  %i.bu = icmp sgt i32 %.val.i.i628, 0
  br i1 %i.bu, label %bb.aj, label %bb.ak, !prof !15

bb.aj:                                            ; preds = %bb.ai
  %i.bv = add nuw i32 %.val.i.i628, 1
  store i32 %i.bv, ptr %i.bl, align 4, !tbaa !13
  br label %lean_inc.exit502

bb.ak:                                            ; preds = %bb.ai
  %.not.i.i629 = icmp eq i32 %.val.i.i628, 0
  br i1 %.not.i.i629, label %lean_inc.exit502, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bw = atomicrmw sub ptr %i.bl, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit502

lean_inc.exit502:                                 ; preds = %bb.al, %bb.ak, %bb.aj, %lean_inc.exit504
  tail call void @lean_inc_heartbeat() #8
  %i.bx = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.am, label %lean_alloc_ctor.exit

bb.am:                                            ; preds = %lean_inc.exit502
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc.exit502
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 1, ptr %i.bx, align 4, !tbaa !13
  store i32 131096, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.bl, ptr %i.ca, align 8, !tbaa !11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.bm, ptr %i.cb, align 8, !tbaa !11
  tail call void @lean_inc_heartbeat() #8
  %i.cc = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.an, label %lean_inc.exit500

bb.an:                                            ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_inc.exit500:                                 ; preds = %lean_alloc_ctor.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 1, ptr %i.cc, align 4, !tbaa !13
  store i32 67239960, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.bx, ptr %i.cf, align 8, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store ptr %i.ht, ptr %i.cg, align 8, !tbaa !11
  %.val.i.i635 = load i32, ptr %i.ap, align 4, !tbaa !13 ; 3 uses
  %i.ch = icmp sgt i32 %.val.i.i635, 0
  br i1 %i.ch, label %bb.ao, label %bb.ap, !prof !15

bb.ao:                                            ; preds = %lean_inc.exit500
  %i.ci = add nuw i32 %.val.i.i635, 1
  store i32 %i.ci, ptr %i.ap, align 4, !tbaa !13
  br label %lean_inc_ref.exit637

bb.ap:                                            ; preds = %lean_inc.exit500
  %.not.i.i636 = icmp eq i32 %.val.i.i635, 0
  br i1 %.not.i.i636, label %lean_inc_ref.exit637, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cj = atomicrmw sub ptr %i.ap, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit637

lean_inc_ref.exit637:                             ; preds = %bb.ao, %bb.ap, %bb.aq
  tail call void @lean_inc_heartbeat() #8
  %i.ck = tail call noalias ptr @mi_malloc_small(i64 noundef 56) #8 ; 11 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.ar, label %lean_alloc_ctor.exit638

bb.ar:                                            ; preds = %lean_inc_ref.exit637
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit638:                          ; preds = %lean_inc_ref.exit637
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  store i64 512, ptr %i.cn, align 8, !tbaa !9
  store i32 1, ptr %i.ck, align 8, !tbaa !13
  store i32 327736, ptr %i.cm, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.ap, ptr %i.co, align 8, !tbaa !11
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store ptr %i.ha, ptr %i.cp, align 8, !tbaa !11
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.cq, align 8, !tbaa !11
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_reportVersoParseFailure___at___00Lean_Elab_Command_elabModuleDoc_spec__2_spec__2___redArg___closed__0_value, ptr %i.cr, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  store ptr %i.cc, ptr %i.cs, align 8, !tbaa !11
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !11 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !11 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !11 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !11 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !11 ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !11 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bk, i64 56 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !11 ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !11 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !11 ; 5 uses
  %.val609 = load i32, ptr %i.bk, align 8, !tbaa !13
  %i.dl = icmp eq i32 %.val609, 1
  br i1 %i.dl, label %bb.cg, label %bb.as

bb.as:                                            ; preds = %lean_alloc_ctor.exit638
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = and i64 %i.dm, 1
  %.not.i497 = icmp eq i64 %i.dn, 0
  br i1 %.not.i497, label %bb.at, label %lean_inc.exit498

bb.at:                                            ; preds = %bb.as
  %.val.i.i639 = load i32, ptr %i.dk, align 4, !tbaa !13 ; 3 uses
  %i.do = icmp sgt i32 %.val.i.i639, 0
  br i1 %i.do, label %bb.au, label %bb.av, !prof !15

bb.au:                                            ; preds = %bb.at
  %i.dp = add nuw i32 %.val.i.i639, 1
  store i32 %i.dp, ptr %i.dk, align 4, !tbaa !13
  br label %lean_inc.exit498

bb.av:                                            ; preds = %bb.at
  %.not.i.i640 = icmp eq i32 %.val.i.i639, 0
  br i1 %.not.i.i640, label %lean_inc.exit498, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dq = atomicrmw sub ptr %i.dk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit498

lean_inc.exit498:                                 ; preds = %bb.aw, %bb.av, %bb.au, %bb.as
  %i.dr = ptrtoint ptr %i.di to i64
  %i.ds = and i64 %i.dr, 1
  %.not.i495 = icmp eq i64 %i.ds, 0
  br i1 %.not.i495, label %bb.ax, label %lean_inc.exit496
end_hunk_0
begin_hunk_1_@l_Lean_reportVersoParseFailure___at___00Lean_Elab_Command_elabModuleDoc_spec__2:bb.a
bb.fq:                                            ; preds = %lean_del_object.exit697
  %i.kw = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.kx, align 8, !tbaa !11
  br label %lean_dec_ref.exit588

bb.fr:                                            ; preds = %lean_obj_tag.exit689
  %i.ky = load i32, ptr %i.ja, align 8, !tbaa !13 ; 3 uses
  %i.kz = icmp sgt i32 %i.ky, 1
  br i1 %i.kz, label %bb.fs, label %bb.ft, !prof !15

bb.fs:                                            ; preds = %bb.fr
  %i.la = add nsw i32 %i.ky, -1
  store i32 %i.la, ptr %i.ja, align 8, !tbaa !13
  br label %lean_dec_ref.exit582

bb.ft:                                            ; preds = %bb.fr
  %.not.i581 = icmp eq i32 %i.ky, 0
  br i1 %.not.i581, label %lean_dec_ref.exit582, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ja) #8
  br label %lean_dec_ref.exit582

lean_dec_ref.exit582:                             ; preds = %bb.fs, %bb.ft, %bb.fu
  %i.lb = load i32, ptr %.0424, align 4, !tbaa !13 ; 3 uses
  %i.lc = icmp sgt i32 %i.lb, 1
  br i1 %i.lc, label %bb.fv, label %bb.fw, !prof !15

bb.fv:                                            ; preds = %lean_dec_ref.exit582
  %i.ld = add nsw i32 %i.lb, -1
  store i32 %i.ld, ptr %.0424, align 4, !tbaa !13
  br label %lean_dec_ref.exit580

bb.fw:                                            ; preds = %lean_dec_ref.exit582
  %.not.i579 = icmp eq i32 %i.lb, 0
  br i1 %.not.i579, label %lean_dec_ref.exit580, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0424) #8
  br label %lean_dec_ref.exit580

lean_dec_ref.exit580:                             ; preds = %bb.fv, %bb.fw, %bb.fx
  %i.le = load i32, ptr %i.nf, align 8, !tbaa !13 ; 3 uses
  %i.lf = icmp sgt i32 %i.le, 1
  br i1 %i.lf, label %bb.fy, label %bb.fz, !prof !15

bb.fy:                                            ; preds = %lean_dec_ref.exit580
  %i.lg = add nsw i32 %i.le, -1
  store i32 %i.lg, ptr %i.nf, align 8, !tbaa !13
  br label %lean_dec_ref.exit578

bb.fz:                                            ; preds = %lean_dec_ref.exit580
  %.not.i577 = icmp eq i32 %i.le, 0
  br i1 %.not.i577, label %lean_dec_ref.exit578, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.nf) #8
  br label %lean_dec_ref.exit578

lean_dec_ref.exit578:                             ; preds = %bb.fy, %bb.fz, %bb.ga
  %i.lh = ptrtoint ptr %.0394 to i64
  %i.li = and i64 %i.lh, 1
  %.not.i698 = icmp eq i64 %i.li, 0
  br i1 %.not.i698, label %bb.gb, label %lean_del_object.exit699

bb.gb:                                            ; preds = %lean_dec_ref.exit578
  tail call void @lean_free_object(ptr noundef nonnull %.0394) #8
  br label %lean_del_object.exit699

lean_del_object.exit699:                          ; preds = %lean_dec_ref.exit578, %bb.gb
  %i.lj = ptrtoint ptr %.0388 to i64
  %i.lk = and i64 %i.lj, 1
  %.not.i700 = icmp eq i64 %i.lk, 0
  br i1 %.not.i700, label %bb.gc, label %lean_dec_ref.exit588

bb.gc:                                            ; preds = %lean_del_object.exit699
  tail call void @lean_free_object(ptr noundef nonnull %.0388) #8
  br label %lean_dec_ref.exit588

.thread783:                                       ; preds = %lean_nat_eq.exit605
  %i.ll = load i32, ptr %i.pa, align 4, !tbaa !13 ; 3 uses
  %i.lm = icmp sgt i32 %i.ll, 1
  br i1 %i.lm, label %bb.gd, label %bb.ge, !prof !15

bb.gd:                                            ; preds = %.thread783
  %i.ln = add nsw i32 %i.ll, -1
  store i32 %i.ln, ptr %i.pa, align 4, !tbaa !13
  br label %lean_dec_ref.exit576

bb.ge:                                            ; preds = %.thread783
  %.not.i575 = icmp eq i32 %i.ll, 0
  br i1 %.not.i575, label %lean_dec_ref.exit576, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.pa) #8
  br label %lean_dec_ref.exit576

lean_dec_ref.exit576:                             ; preds = %bb.gd, %bb.ge, %bb.gf
  %i.lo = load i32, ptr %i.nz, align 8, !tbaa !13 ; 3 uses
  %i.lp = icmp sgt i32 %i.lo, 1
  br i1 %i.lp, label %bb.gg, label %bb.gh, !prof !15

bb.gg:                                            ; preds = %lean_dec_ref.exit576
  %i.lq = add nsw i32 %i.lo, -1
  store i32 %i.lq, ptr %i.nz, align 8, !tbaa !13
  br label %lean_dec_ref.exit574

bb.gh:                                            ; preds = %lean_dec_ref.exit576
  %.not.i573 = icmp eq i32 %i.lo, 0
  br i1 %.not.i573, label %lean_dec_ref.exit574, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.nz) #8
  br label %lean_dec_ref.exit574

lean_dec_ref.exit574:                             ; preds = %bb.gg, %bb.gh, %bb.gi
  %i.lr = load i32, ptr %i.om, align 4, !tbaa !13 ; 3 uses
  %i.ls = icmp sgt i32 %i.lr, 1
  br i1 %i.ls, label %bb.gj, label %bb.gk, !prof !15

bb.gj:                                            ; preds = %lean_dec_ref.exit574
  %i.lt = add nsw i32 %i.lr, -1
  store i32 %i.lt, ptr %i.om, align 4, !tbaa !13
  br label %lean_dec_ref.exit572

bb.gk:                                            ; preds = %lean_dec_ref.exit574
  %.not.i571 = icmp eq i32 %i.lr, 0
  br i1 %.not.i571, label %lean_dec_ref.exit572, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.om) #8
  br label %lean_dec_ref.exit572

.thread780:                                       ; preds = %lean_dec.exit517
  %i.lu = load ptr, ptr %i.pt, align 8, !tbaa !11 ; 5 uses
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = and i64 %i.lv, 1
  %.not.i477 = icmp eq i64 %i.lw, 0
  br i1 %.not.i477, label %bb.gm, label %lean_inc.exit478

bb.gm:                                            ; preds = %.thread780
  %.val.i.i702 = load i32, ptr %i.lu, align 4, !tbaa !13 ; 3 uses
  %i.lx = icmp sgt i32 %.val.i.i702, 0
  br i1 %i.lx, label %bb.gn, label %bb.go, !prof !15

bb.gn:                                            ; preds = %bb.gm
  %i.ly = add nuw i32 %.val.i.i702, 1
  store i32 %i.ly, ptr %i.lu, align 4, !tbaa !13
  br label %lean_inc.exit478

bb.go:                                            ; preds = %bb.gm
  %.not.i.i703 = icmp eq i32 %.val.i.i702, 0
  br i1 %.not.i.i703, label %lean_inc.exit478, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.lz = atomicrmw sub ptr %i.lu, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit478

lean_inc.exit478:                                 ; preds = %bb.gp, %bb.go, %bb.gn, %.thread780
  %i.ma = load i32, ptr %i.pk, align 8, !tbaa !13 ; 3 uses
  %i.mb = icmp sgt i32 %i.ma, 1
  br i1 %i.mb, label %bb.gq, label %bb.gr, !prof !15

bb.gq:                                            ; preds = %lean_inc.exit478
  %i.mc = add nsw i32 %i.ma, -1
  store i32 %i.mc, ptr %i.pk, align 8, !tbaa !13
  br label %lean_dec_ref.exit570

bb.gr:                                            ; preds = %lean_inc.exit478
  %.not.i569 = icmp eq i32 %i.ma, 0
  br i1 %.not.i569, label %lean_dec_ref.exit570, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.pk) #8
  br label %lean_dec_ref.exit570

lean_dec_ref.exit570:                             ; preds = %bb.gq, %bb.gr, %bb.gs
  %i.md = tail call ptr @l_Lean_Parser_ParserState_setPos(ptr noundef nonnull %i.om, ptr noundef %i.lu) #8
  %.val.i.i705 = load i32, ptr %i.nf, align 8, !tbaa !13 ; 3 uses
  %i.me = icmp sgt i32 %.val.i.i705, 0
  br i1 %i.me, label %bb.gt, label %bb.gu, !prof !15

bb.gt:                                            ; preds = %lean_dec_ref.exit570
  %i.mf = add nuw i32 %.val.i.i705, 1
  store i32 %i.mf, ptr %i.nf, align 8, !tbaa !13
  br label %lean_inc_ref.exit707

bb.gu:                                            ; preds = %lean_dec_ref.exit570
  %.not.i.i706 = icmp eq i32 %.val.i.i705, 0
  br i1 %.not.i.i706, label %lean_inc_ref.exit707, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.mg = atomicrmw sub ptr %i.nf, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit707

lean_inc_ref.exit707:                             ; preds = %bb.gt, %bb.gu, %bb.gv
  %i.mh = tail call ptr @l_Lean_Parser_ParserFn_run(ptr noundef nonnull @l_Lean_reportVersoParseFailure___at___00Lean_Elab_Command_elabModuleDoc_spec__2___closed__4_value, ptr noundef nonnull %i.nf, ptr noundef nonnull %i.nz, ptr noundef nonnull %i.pa, ptr noundef %i.md) #8
  br label %lean_dec_ref.exit572

lean_dec.exit529:                                 ; preds = %.thread, %bb.aa, %bb.ab, %bb.ac, %lean_nat_le.exit.thread, %lean_nat_le.exit
  %.0411 = phi ptr [ %i.ag, %lean_nat_le.exit.thread ], [ %i.ag, %lean_nat_le.exit ], [ %i.bf, %bb.ac ], [ %i.bf, %bb.ab ], [ %i.bf, %bb.aa ], [ %i.bf, %.thread ] ; 6 uses
  %i.mi = tail call ptr @lean_st_ref_get(ptr noundef %6) #8 ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !11 ; 5 uses
  %.val.i708 = load i32, ptr %i.mk, align 4, !tbaa !13 ; 3 uses
  %i.ml = icmp sgt i32 %.val.i708, 0
  br i1 %i.ml, label %bb.gw, label %bb.gx, !prof !15

bb.gw:                                            ; preds = %lean_dec.exit529
  %i.mm = add nuw i32 %.val.i708, 2
  store i32 %i.mm, ptr %i.mk, align 4, !tbaa !13
  br label %lean_inc_ref_n.exit

bb.gx:                                            ; preds = %lean_dec.exit529
  %.not.i709 = icmp eq i32 %.val.i708, 0
  br i1 %.not.i709, label %lean_inc_ref_n.exit, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.mn = atomicrmw sub ptr %i.mk, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref_n.exit

lean_inc_ref_n.exit:                              ; preds = %bb.gy, %bb.gx, %bb.gw
  %i.mo = load i32, ptr %i.mi, align 8, !tbaa !13 ; 3 uses
  %i.mp = icmp sgt i32 %i.mo, 1
  br i1 %i.mp, label %bb.gz, label %bb.ha, !prof !15

bb.gz:                                            ; preds = %lean_inc_ref_n.exit
  %i.mq = add nsw i32 %i.mo, -1
  store i32 %i.mq, ptr %i.mi, align 8, !tbaa !13
  br label %lean_dec.exit519

bb.ha:                                            ; preds = %lean_inc_ref_n.exit
  %.not.i551 = icmp eq i32 %i.mo, 0
  br i1 %.not.i551, label %lean_dec.exit519, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.mi) #8
  br label %lean_dec.exit519

lean_dec.exit519:                                 ; preds = %bb.hb, %bb.ha, %bb.gz
  %i.mr = ptrtoint ptr %.0411 to i64
  %i.ms = and i64 %i.mr, 1
  %.not.i475 = icmp eq i64 %i.ms, 0
  br i1 %.not.i475, label %bb.hc, label %lean_inc.exit476

bb.hc:                                            ; preds = %lean_dec.exit519
  %.val.i.i710 = load i32, ptr %.0411, align 4, !tbaa !13 ; 3 uses
  %i.mt = icmp sgt i32 %.val.i.i710, 0
  br i1 %i.mt, label %bb.hd, label %bb.he, !prof !15

bb.hd:                                            ; preds = %bb.hc
  %i.mu = add nuw i32 %.val.i.i710, 1
  store i32 %i.mu, ptr %.0411, align 4, !tbaa !13
  br label %lean_inc.exit476

bb.he:                                            ; preds = %bb.hc
  %.not.i.i711 = icmp eq i32 %.val.i.i710, 0
  br i1 %.not.i.i711, label %lean_inc.exit476, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.mv = atomicrmw sub ptr %.0411, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit476

lean_inc.exit476:                                 ; preds = %bb.hf, %bb.he, %bb.hd, %lean_dec.exit519
  %.val.i713 = load i32, ptr %i.ar, align 8, !tbaa !13 ; 3 uses
  %i.mw = icmp sgt i32 %.val.i713, 0
  br i1 %i.mw, label %bb.hg, label %bb.hh, !prof !15

bb.hg:                                            ; preds = %lean_inc.exit476
  %i.mx = add nuw i32 %.val.i713, 2
  store i32 %i.mx, ptr %i.ar, align 8, !tbaa !13
  br label %lean_inc_ref_n.exit715

bb.hh:                                            ; preds = %lean_inc.exit476
  %.not.i714 = icmp eq i32 %.val.i713, 0
  br i1 %.not.i714, label %lean_inc_ref_n.exit715, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.my = atomicrmw sub ptr %i.ar, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref_n.exit715

lean_inc_ref_n.exit715:                           ; preds = %bb.hg, %bb.hh, %bb.hi
  %.val.i.i716 = load i32, ptr %i.ap, align 4, !tbaa !13 ; 3 uses
  %i.mz = icmp sgt i32 %.val.i.i716, 0
  br i1 %i.mz, label %bb.hj, label %bb.hk, !prof !15

bb.hj:                                            ; preds = %lean_inc_ref_n.exit715
  %i.na = add nuw i32 %.val.i.i716, 1
  store i32 %i.na, ptr %i.ap, align 4, !tbaa !13
  br label %lean_inc_ref.exit718

bb.hk:                                            ; preds = %lean_inc_ref_n.exit715
  %.not.i.i717 = icmp eq i32 %.val.i.i716, 0
  br i1 %.not.i.i717, label %lean_inc_ref.exit718, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.nb = atomicrmw sub ptr %i.ap, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit718

lean_inc_ref.exit718:                             ; preds = %bb.hj, %bb.hk, %bb.hl
  %.val.i.i719 = load i32, ptr %i.bb, align 8, !tbaa !13 ; 3 uses
  %i.nc = icmp sgt i32 %.val.i.i719, 0
  br i1 %i.nc, label %bb.hm, label %bb.hn, !prof !15

bb.hm:                                            ; preds = %lean_inc_ref.exit718
  %i.nd = add nuw i32 %.val.i.i719, 1
  store i32 %i.nd, ptr %i.bb, align 8, !tbaa !13
  br label %lean_inc_ref.exit721

bb.hn:                                            ; preds = %lean_inc_ref.exit718
  %.not.i.i720 = icmp eq i32 %.val.i.i719, 0
  br i1 %.not.i.i720, label %lean_inc_ref.exit721, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.ne = atomicrmw sub ptr %i.bb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit721

lean_inc_ref.exit721:                             ; preds = %bb.hm, %bb.hn, %bb.ho
  tail call void @lean_inc_heartbeat() #8
  %i.nf = tail call noalias ptr @mi_malloc_small(i64 noundef 40) #8 ; 27 uses
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %bb.hp, label %lean_alloc_ctor.exit722

bb.hp:                                            ; preds = %lean_inc_ref.exit721
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit722:                          ; preds = %lean_inc_ref.exit721
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  store i32 1, ptr %i.nf, align 4, !tbaa !13
  store i32 262184, ptr %i.nh, align 4
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store ptr %i.bb, ptr %i.ni, align 8, !tbaa !11
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  store ptr %i.ap, ptr %i.nj, align 8, !tbaa !11
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nf, i64 24
  store ptr %i.ar, ptr %i.nk, align 8, !tbaa !11
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nf, i64 32
  store ptr %.0411, ptr %i.nl, align 8, !tbaa !11
  %i.nm = ptrtoint ptr %i.ax to i64
  %i.nn = and i64 %i.nm, 1
  %.not.i473 = icmp eq i64 %i.nn, 0
  br i1 %.not.i473, label %bb.hq, label %lean_inc.exit474

bb.hq:                                            ; preds = %lean_alloc_ctor.exit722
  %.val.i.i723 = load i32, ptr %i.ax, align 4, !tbaa !13 ; 3 uses
  %i.no = icmp sgt i32 %.val.i.i723, 0
  br i1 %i.no, label %bb.hr, label %bb.hs, !prof !15

bb.hr:                                            ; preds = %bb.hq
  %i.np = add nuw i32 %.val.i.i723, 1
  store i32 %i.np, ptr %i.ax, align 4, !tbaa !13
  br label %lean_inc.exit474

bb.hs:                                            ; preds = %bb.hq
  %.not.i.i724 = icmp eq i32 %.val.i.i723, 0
  br i1 %.not.i.i724, label %lean_inc.exit474, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.nq = atomicrmw sub ptr %i.ax, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit474

lean_inc.exit474:                                 ; preds = %bb.ht, %bb.hs, %bb.hr, %lean_alloc_ctor.exit722
  %i.nr = ptrtoint ptr %i.av to i64
  %i.ns = and i64 %i.nr, 1
  %.not.i471 = icmp eq i64 %i.ns, 0
  br i1 %.not.i471, label %bb.hu, label %lean_inc.exit472

bb.hu:                                            ; preds = %lean_inc.exit474
  %.val.i.i726 = load i32, ptr %i.av, align 4, !tbaa !13 ; 3 uses
  %i.nt = icmp sgt i32 %.val.i.i726, 0
  br i1 %i.nt, label %bb.hv, label %bb.hw, !prof !15

bb.hv:                                            ; preds = %bb.hu
  %i.nu = add nuw i32 %.val.i.i726, 1
  store i32 %i.nu, ptr %i.av, align 4, !tbaa !13
  br label %lean_inc.exit472

bb.hw:                                            ; preds = %bb.hu
  %.not.i.i727 = icmp eq i32 %.val.i.i726, 0
  br i1 %.not.i.i727, label %lean_inc.exit472, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.nv = atomicrmw sub ptr %i.av, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit472

lean_inc.exit472:                                 ; preds = %bb.hx, %bb.hw, %bb.hv, %lean_inc.exit474
  %.val.i.i729 = load i32, ptr %i.at, align 4, !tbaa !13 ; 3 uses
  %i.nw = icmp sgt i32 %.val.i.i729, 0
  br i1 %i.nw, label %bb.hy, label %bb.hz, !prof !15

bb.hy:                                            ; preds = %lean_inc.exit472
  %i.nx = add nuw i32 %.val.i.i729, 1
  store i32 %i.nx, ptr %i.at, align 4, !tbaa !13
  br label %lean_inc_ref.exit731

bb.hz:                                            ; preds = %lean_inc.exit472
  %.not.i.i730 = icmp eq i32 %.val.i.i729, 0
  br i1 %.not.i.i730, label %lean_inc_ref.exit731, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
end_hunk_1
