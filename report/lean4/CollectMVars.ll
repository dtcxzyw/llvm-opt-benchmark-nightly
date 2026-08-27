Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/CollectMVars?download=true
inline.NumInlined: 1096
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@l_Std_DHashMap_Internal_Raw_u2080_insertIfNew___at___00__private_Lean_Meta_CollectMVars_0__addMVars_spec__0___redArg:bb.a
  br i1 %i.dp, label %l_Std_DHashMap_Internal_Raw_u2080_expand___at___00Std_DHashMap_Internal_Raw_u2080_insertIfNew___at___00__private_Lean_Meta_CollectMVars_0__addMVars_spec__0_spec__1___redArg.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %mul.i9.mask.i = and i64 %.val.i, 4611686018427387904
  %i.dq = icmp eq i64 %mul.i9.mask.i, 0
  br i1 %i.dq, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.dr = shl nuw i64 %i.do, 2
  %i.ds = or disjoint i64 %i.dr, 1
  %i.dt = inttoptr i64 %i.ds to ptr
  br label %l_Std_DHashMap_Internal_Raw_u2080_expand___at___00Std_DHashMap_Internal_Raw_u2080_insertIfNew___at___00__private_Lean_Meta_CollectMVars_0__addMVars_spec__0_spec__1___redArg.exit

bb.be:                                            ; preds = %bb.bc
  %i.du = tail call ptr @lean_nat_overflow_mul(i64 noundef %i.do, i64 noundef 2) #5
  br label %l_Std_DHashMap_Internal_Raw_u2080_expand___at___00Std_DHashMap_Internal_Raw_u2080_insertIfNew___at___00__private_Lean_Meta_CollectMVars_0__addMVars_spec__0_spec__1___redArg.exit

l_Std_DHashMap_Internal_Raw_u2080_expand___at___00Std_DHashMap_Internal_Raw_u2080_insertIfNew___at___00__private_Lean_Meta_CollectMVars_0__addMVars_spec__0_spec__1___redArg.exit: ; preds = %bb.bb, %bb.bd, %bb.be
  %.2.i.i = phi ptr [ %i.du, %bb.be ], [ %i.dn, %bb.bb ], [ %i.dt, %bb.bd ]
  %i.dv = tail call ptr @lean_mk_array(ptr noundef %.2.i.i, ptr noundef nonnull inttoptr (i64 1 to ptr)) #5
  %i.dw = tail call ptr @l___private_Std_Data_DHashMap_Internal_Defs_0__Std_DHashMap_Internal_Raw_u2080_expand_go___at___00Std_DHashMap_Internal_Raw_u2080_expand___at___00Std_DHashMap_Internal_Raw_u2080_insertIfNew___at___00__private_Lean_Meta_CollectMVars_0__addMVars_spec__0_spec__1_spec__5___redArg(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %.0.i.i147, ptr noundef %i.dv) ; 2 uses
  br i1 %i.al, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %l_Std_DHashMap_Internal_Raw_u2080_expand___at___00Std_DHashMap_Internal_Raw_u2080_insertIfNew___at___00__private_Lean_Meta_CollectMVars_0__addMVars_spec__0_spec__1___redArg.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %.094, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %.094, i64 16
  store ptr %i.dw, ptr %i.dy, align 8, !tbaa !9
  store ptr %.0.i155, ptr %i.dx, align 8, !tbaa !9
  br label %lean_dec.exit

bb.bg:                                            ; preds = %l_Std_DHashMap_Internal_Raw_u2080_expand___at___00Std_DHashMap_Internal_Raw_u2080_insertIfNew___at___00__private_Lean_Meta_CollectMVars_0__addMVars_spec__0_spec__1___redArg.exit
  tail call void @lean_inc_heartbeat() #5
  %i.dz = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.bh, label %lean_alloc_ctor.exit151

bb.bh:                                            ; preds = %bb.bg
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit151:                          ; preds = %bb.bg
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i32 1, ptr %i.dz, align 4, !tbaa !11
  store i32 131096, ptr %i.eb, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store ptr %.0.i155, ptr %i.ec, align 8, !tbaa !9
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store ptr %i.dw, ptr %i.ed, align 8, !tbaa !9
  br label %lean_dec.exit

bb.bi:                                            ; preds = %.split181, %.split, %lean_nat_le.exit, %lean_dec.exit101
  br i1 %i.al, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ee = getelementptr inbounds nuw i8, ptr %.094, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %.094, i64 16
  store ptr %.0.i.i147, ptr %i.ef, align 8, !tbaa !9
  store ptr %.0.i155, ptr %i.ee, align 8, !tbaa !9
  br label %lean_dec.exit

bb.bk:                                            ; preds = %bb.bi
  tail call void @lean_inc_heartbeat() #5
  %i.eg = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.bl, label %lean_alloc_ctor.exit152

bb.bl:                                            ; preds = %bb.bk
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit152:                          ; preds = %bb.bk
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store i32 1, ptr %i.eg, align 4, !tbaa !11
  store i32 131096, ptr %i.ei, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %.0.i155, ptr %i.ej, align 8, !tbaa !9
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store ptr %.0.i.i147, ptr %i.ek, align 8, !tbaa !9
  br label %lean_dec.exit

l_Std_DHashMap_Internal_AssocList_contains___at___00Std_DHashMap_Internal_Raw_u2080_insertIfNew___at___00__private_Lean_Meta_CollectMVars_0__addMVars_spec__0_spec__0___redArg.exit: ; preds = %bb.e
  %i.el = ptrtoint ptr %2 to i64
  %i.em = and i64 %i.el, 1
  %.not.i98 = icmp eq i64 %i.em, 0
  br i1 %.not.i98, label %bb.bm, label %lean_dec.exit99

bb.bm:                                            ; preds = %l_Std_DHashMap_Internal_AssocList_contains___at___00Std_DHashMap_Internal_Raw_u2080_insertIfNew___at___00__private_Lean_Meta_CollectMVars_0__addMVars_spec__0_spec__0___redArg.exit
  %i.en = load i32, ptr %2, align 4, !tbaa !11    ; 3 uses
  %i.eo = icmp sgt i32 %i.en, 1
  br i1 %i.eo, label %bb.bn, label %bb.bo, !prof !13

bb.bn:                                            ; preds = %bb.bm
  %i.ep = add nsw i32 %i.en, -1
  store i32 %i.ep, ptr %2, align 4, !tbaa !11
  br label %lean_dec.exit99

bb.bo:                                            ; preds = %bb.bm
  %.not.i126 = icmp eq i32 %i.en, 0
  br i1 %.not.i126, label %lean_dec.exit99, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec.exit99

lean_dec.exit99:                                  ; preds = %bb.bp, %bb.bo, %bb.bn, %l_Std_DHashMap_Internal_AssocList_contains___at___00Std_DHashMap_Internal_Raw_u2080_insertIfNew___at___00__private_Lean_Meta_CollectMVars_0__addMVars_spec__0_spec__0___redArg.exit
  %i.eq = ptrtoint ptr %1 to i64
  %i.er = and i64 %i.eq, 1
  %.not.i97 = icmp eq i64 %i.er, 0
  br i1 %.not.i97, label %bb.bq, label %lean_dec.exit

bb.bq:                                            ; preds = %lean_dec.exit99
  %i.es = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.et = icmp sgt i32 %i.es, 1
  br i1 %i.et, label %bb.br, label %bb.bs, !prof !13

bb.br:                                            ; preds = %bb.bq
  %i.eu = add nsw i32 %i.es, -1
  store i32 %i.eu, ptr %1, align 4, !tbaa !11
  br label %lean_dec.exit

bb.bs:                                            ; preds = %bb.bq
  %.not.i128 = icmp eq i32 %i.es, 0
  br i1 %.not.i128, label %lean_dec.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec.exit99, %bb.br, %bb.bs, %bb.bt, %lean_alloc_ctor.exit152, %bb.bj, %lean_alloc_ctor.exit151, %bb.bf
  %.4 = phi ptr [ %i.eg, %lean_alloc_ctor.exit152 ], [ %i.dz, %lean_alloc_ctor.exit151 ], [ %.094, %bb.bf ], [ %.094, %bb.bj ], [ %0, %bb.bt ], [ %0, %bb.bs ], [ %0, %bb.br ], [ %0, %lean_dec.exit99 ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_CollectMVars_0__addMVars_spec__2(i8 noundef zeroext %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6, ptr noundef %7, ptr nofree readnone captures(none) %8, ptr nofree readnone captures(none) %9) local_unnamed_addr #0 {
bb.a:
  %.not150 = icmp ult i64 %3, %2
  br i1 %.not150, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = icmp eq i8 %0, 0
  br i1 %i.b, label %.lr.ph.split.us, label %lean_dec.exit

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.thread136.us
  %.057152.us = phi i64 [ %i.bd, %.thread136.us ], [ %3, %.lr.ph ] ; 2 uses
  %.059151.us = phi ptr [ %.364134.us, %.thread136.us ], [ %4, %.lr.ph ] ; 6 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.057152.us
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 6 uses
  %i.e = tail call ptr @l_Lean_MVarId_isDelayedAssigned___at___00__private_Lean_Meta_CollectMVars_0__addMVars_spec__1___redArg(ptr noundef %i.d, ptr noundef %7) ; 18 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.g = and i64 %i.f, 1
  %.not.i93.us = icmp eq i64 %i.g, 0              ; 2 uses
  br i1 %.not.i93.us, label %lean_obj_tag.exit.us, label %lean_obj_tag.exit.thread.us

lean_obj_tag.exit.thread.us:                      ; preds = %.lr.ph.split.us
  %i.h = and i64 %i.f, 8589934590
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.s, label %lean_obj_tag.exit99.us

lean_obj_tag.exit.us:                             ; preds = %.lr.ph.split.us
  %i.j = getelementptr i8, ptr %i.e, i64 4
  %.val.i.us = load i32, ptr %i.j, align 4
  %i.k = icmp ult i32 %.val.i.us, 16777216
  br i1 %i.k, label %bb.s, label %.split.us

lean_obj_tag.exit99.us:                           ; preds = %lean_obj_tag.exit.thread.us
  %i.l = and i64 %i.f, 8589934590
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.b, label %.split.us

bb.b:                                             ; preds = %lean_obj_tag.exit99.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !9    ; 7 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = and i64 %i.p, 1
  %.not.i82.us = icmp eq i64 %i.q, 0              ; 2 uses
  br i1 %.not.i82.us, label %bb.c, label %lean_inc.exit83.us

bb.c:                                             ; preds = %bb.b
  %.val.i.i100.us = load i32, ptr %i.o, align 4, !tbaa !11 ; 3 uses
  %i.r = icmp sgt i32 %.val.i.i100.us, 0
  br i1 %i.r, label %bb.f, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %.not.i.i101.us = icmp eq i32 %.val.i.i100.us, 0
  br i1 %.not.i.i101.us, label %lean_inc.exit83.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = atomicrmw sub ptr %i.o, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit83.us

bb.f:                                             ; preds = %bb.c
  %i.t = add nuw i32 %.val.i.i100.us, 1
  store i32 %i.t, ptr %i.o, align 4, !tbaa !11
  br label %lean_inc.exit83.us

lean_inc.exit83.us:                               ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.val.i103.us = load i32, ptr %i.e, align 8, !tbaa !11 ; 4 uses
  %i.u = icmp eq i32 %.val.i103.us, 1
  br i1 %i.u, label %.preheader.i105.us.preheader, label %bb.g

.preheader.i105.us.preheader:                     ; preds = %lean_inc.exit83.us
  %10 = load ptr, ptr %i.n, align 8, !tbaa !9     ; 4 uses
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 1
  %.not.i.i107.us = icmp eq i64 %12, 0
  br i1 %.not.i.i107.us, label %bb.k, label %lean_dec.exit.i108.us

bb.g:                                             ; preds = %lean_inc.exit83.us
  %i.v = icmp sgt i32 %.val.i103.us, 1
  br i1 %i.v, label %bb.j, label %bb.h, !prof !13

bb.h:                                             ; preds = %bb.g
  %.not.i8.i104.us = icmp eq i32 %.val.i103.us, 0
  br i1 %.not.i8.i104.us, label %lean_dec_ref_known.exit112.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.e) #5
  br label %lean_dec_ref_known.exit112.us

bb.j:                                             ; preds = %bb.g
  %i.w = add nsw i32 %.val.i103.us, -1
  store i32 %i.w, ptr %i.e, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit112.us

bb.k:                                             ; preds = %.preheader.i105.us.preheader
  %i.x = load i32, ptr %10, align 4, !tbaa !11    ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.n, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  %.not.i7.i111.us = icmp eq i32 %i.x, 0
  br i1 %.not.i7.i111.us, label %lean_dec.exit.i108.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #5
  br label %lean_dec.exit.i108.us

bb.n:                                             ; preds = %bb.k
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %10, align 4, !tbaa !11
  br label %lean_dec.exit.i108.us

lean_dec.exit.i108.us:                            ; preds = %bb.n, %bb.m, %bb.l, %.preheader.i105.us.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.e) #5
  br label %lean_dec_ref_known.exit112.us

lean_dec_ref_known.exit112.us:                    ; preds = %lean_dec.exit.i108.us, %bb.j, %bb.i, %bb.h
  br i1 %.not.i82.us, label %bb.o, label %lean_dec.exit76.us

bb.o:                                             ; preds = %lean_dec_ref_known.exit112.us
  %i.aa = load i32, ptr %i.o, align 4, !tbaa !11  ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.r, label %bb.p, !prof !13

bb.p:                                             ; preds = %bb.o
  %.not.i87.us = icmp eq i32 %i.aa, 0
  br i1 %.not.i87.us, label %lean_dec.exit76.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #5
  br label %lean_dec.exit76.us

bb.r:                                             ; preds = %bb.o
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %i.o, align 4, !tbaa !11
  br label %lean_dec.exit76.us

lean_dec.exit76.us:                               ; preds = %bb.r, %bb.q, %bb.p, %lean_dec_ref_known.exit112.us
  %i.ad = and i64 %i.p, 510
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.thread136.us, label %lean_dec.exit.us

bb.s:                                             ; preds = %lean_obj_tag.exit.us, %lean_obj_tag.exit.thread.us
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !9  ; 7 uses
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = and i64 %i.ah, 1
  %.not.i84.us = icmp eq i64 %i.ai, 0             ; 2 uses
  br i1 %.not.i84.us, label %bb.t, label %lean_inc.exit85.us

bb.t:                                             ; preds = %bb.s
  %.val.i.i.us = load i32, ptr %i.ag, align 4, !tbaa !11 ; 3 uses
  %i.aj = icmp sgt i32 %.val.i.i.us, 0
  br i1 %i.aj, label %bb.w, label %bb.u, !prof !13

bb.u:                                             ; preds = %bb.t
  %.not.i.i.us = icmp eq i32 %.val.i.i.us, 0
  br i1 %.not.i.i.us, label %lean_inc.exit85.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = atomicrmw sub ptr %i.ag, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit85.us

bb.w:                                             ; preds = %bb.t
  %i.al = add nuw i32 %.val.i.i.us, 1
  store i32 %i.al, ptr %i.ag, align 4, !tbaa !11
  br label %lean_inc.exit85.us

lean_inc.exit85.us:                               ; preds = %bb.w, %bb.v, %bb.u, %bb.s
  %.val.i94.us = load i32, ptr %i.e, align 8, !tbaa !11 ; 4 uses
  %i.am = icmp eq i32 %.val.i94.us, 1
  br i1 %i.am, label %.preheader.i.us.preheader, label %bb.x

.preheader.i.us.preheader:                        ; preds = %lean_inc.exit85.us
  %13 = load ptr, ptr %i.af, align 8, !tbaa !9    ; 4 uses
  %14 = ptrtoint ptr %13 to i64
  %15 = and i64 %14, 1
  %.not.i.i95.us = icmp eq i64 %15, 0
  br i1 %.not.i.i95.us, label %bb.ab, label %lean_dec.exit.i.us

bb.x:                                             ; preds = %lean_inc.exit85.us
  %i.an = icmp sgt i32 %.val.i94.us, 1
  br i1 %i.an, label %bb.aa, label %bb.y, !prof !13

bb.y:                                             ; preds = %bb.x
  %.not.i8.i.us = icmp eq i32 %.val.i94.us, 0
  br i1 %.not.i8.i.us, label %lean_dec_ref_known.exit.us, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.e) #5
  br label %lean_dec_ref_known.exit.us

bb.aa:                                            ; preds = %bb.x
  %i.ao = add nsw i32 %.val.i94.us, -1
  store i32 %i.ao, ptr %i.e, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit.us

bb.ab:                                            ; preds = %.preheader.i.us.preheader
  %i.ap = load i32, ptr %13, align 4, !tbaa !11   ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %bb.ae, label %bb.ac, !prof !13

bb.ac:                                            ; preds = %bb.ab
  %.not.i7.i.us = icmp eq i32 %i.ap, 0
  br i1 %.not.i7.i.us, label %lean_dec.exit.i.us, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %13) #5
  br label %lean_dec.exit.i.us

bb.ae:                                            ; preds = %bb.ab
  %i.ar = add nsw i32 %i.ap, -1
  store i32 %i.ar, ptr %13, align 4, !tbaa !11
  br label %lean_dec.exit.i.us

lean_dec.exit.i.us:                               ; preds = %bb.ae, %bb.ad, %bb.ac, %.preheader.i.us.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.e) #5
  br label %lean_dec_ref_known.exit.us

lean_dec_ref_known.exit.us:                       ; preds = %lean_dec.exit.i.us, %bb.aa, %bb.z, %bb.y
  br i1 %.not.i84.us, label %bb.af, label %lean_dec.exit78.us

bb.af:                                            ; preds = %lean_dec_ref_known.exit.us
  %i.as = load i32, ptr %i.ag, align 4, !tbaa !11 ; 3 uses
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %bb.ai, label %bb.ag, !prof !13

bb.ag:                                            ; preds = %bb.af
  %.not.i86.us = icmp eq i32 %i.as, 0
  br i1 %.not.i86.us, label %lean_dec.exit78.us, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ag) #5
  br label %lean_dec.exit78.us

bb.ai:                                            ; preds = %bb.af
  %i.au = add nsw i32 %i.as, -1
  store i32 %i.au, ptr %i.ag, align 4, !tbaa !11
  br label %lean_dec.exit78.us

lean_dec.exit78.us:                               ; preds = %bb.ai, %bb.ah, %bb.ag, %lean_dec_ref_known.exit.us
  %i.av = and i64 %i.ah, 510
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %lean_dec.exit.us, label %.thread136.us

lean_dec.exit.us:                                 ; preds = %lean_dec.exit78.us, %lean_dec.exit76.us
  %i.ax = ptrtoint ptr %i.d to i64
  %i.ay = and i64 %i.ax, 1
  %.not.i79.us = icmp eq i64 %i.ay, 0
  br i1 %.not.i79.us, label %bb.aj, label %.thread129.us

bb.aj:                                            ; preds = %lean_dec.exit.us
  %.val.i.i117.us = load i32, ptr %i.d, align 4, !tbaa !11 ; 3 uses
  %i.az = icmp sgt i32 %.val.i.i117.us, 0
  br i1 %i.az, label %bb.am, label %bb.ak, !prof !13

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i118.us = icmp eq i32 %.val.i.i117.us, 0
  br i1 %.not.i.i118.us, label %.thread129.us, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ba = atomicrmw sub ptr %i.d, i32 1 monotonic, align 4 ; 0 uses
  br label %.thread129.us

bb.am:                                            ; preds = %bb.aj
  %i.bb = add nuw i32 %.val.i.i117.us, 1
  store i32 %i.bb, ptr %i.d, align 4, !tbaa !11
  br label %.thread129.us

.thread129.us:                                    ; preds = %bb.am, %bb.al, %bb.ak, %lean_dec.exit.us
  %i.bc = tail call ptr @l_Std_DHashMap_Internal_Raw_u2080_insertIfNew___at___00__private_Lean_Meta_CollectMVars_0__addMVars_spec__0___redArg(ptr noundef %.059151.us, ptr noundef %i.d, ptr noundef nonnull inttoptr (i64 1 to ptr))
  br label %.thread136.us

.thread136.us:                                    ; preds = %.thread129.us, %lean_dec.exit78.us, %lean_dec.exit76.us
  %.364134.us = phi ptr [ %i.bc, %.thread129.us ], [ %.059151.us, %lean_dec.exit78.us ], [ %.059151.us, %lean_dec.exit76.us ] ; 2 uses
  %i.bd = add nuw i64 %.057152.us, 1              ; 2 uses
  %exitcond162.not = icmp eq i64 %i.bd, %2
  br i1 %exitcond162.not, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %.thread129, %.thread136.us, %bb.a
  %.059.lcssa = phi ptr [ %4, %bb.a ], [ %.364134.us, %.thread136.us ], [ %i.cd, %.thread129 ]
  tail call void @lean_inc_heartbeat() #5
  %i.be = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.an, label %.sink.split

bb.an:                                            ; preds = %._crit_edge
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_dec.exit:                                    ; preds = %.lr.ph, %.thread129
  %.057152 = phi i64 [ %i.ce, %.thread129 ], [ %3, %.lr.ph ] ; 2 uses
  %.059151 = phi ptr [ %i.cd, %.thread129 ], [ %4, %.lr.ph ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.057152
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !9  ; 5 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = and i64 %i.bi, 1
  %.not.i79 = icmp eq i64 %i.bj, 0
  br i1 %.not.i79, label %bb.bc, label %.thread129

.split.us:                                        ; preds = %lean_obj_tag.exit.us, %lean_obj_tag.exit99.us
  %i.bk = load i32, ptr %.059151.us, align 4, !tbaa !11 ; 3 uses
  %i.bl = icmp sgt i32 %i.bk, 1
  br i1 %i.bl, label %bb.ao, label %bb.ap, !prof !13

bb.ao:                                            ; preds = %.split.us
  %i.bm = add nsw i32 %i.bk, -1
  store i32 %i.bm, ptr %.059151.us, align 4, !tbaa !11
  br label %lean_dec_ref.exit92

bb.ap:                                            ; preds = %.split.us
  %.not.i91 = icmp eq i32 %i.bk, 0
  br i1 %.not.i91, label %lean_dec_ref.exit92, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.059151.us) #5
  br label %lean_dec_ref.exit92

lean_dec_ref.exit92:                              ; preds = %bb.ao, %bb.ap, %bb.aq
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !9  ; 5 uses
  %.val = load i32, ptr %i.e, align 8, !tbaa !11
  %i.bp = icmp eq i32 %.val, 1
  br i1 %i.bp, label %bb.bg, label %bb.ar

bb.ar:                                            ; preds = %lean_dec_ref.exit92
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = and i64 %i.bq, 1
  %.not.i80 = icmp eq i64 %i.br, 0
  br i1 %.not.i80, label %bb.as, label %lean_inc.exit81

bb.as:                                            ; preds = %bb.ar
  %.val.i.i113 = load i32, ptr %i.bo, align 4, !tbaa !11 ; 3 uses
  %i.bs = icmp sgt i32 %.val.i.i113, 0
  br i1 %i.bs, label %bb.at, label %bb.au, !prof !13

bb.at:                                            ; preds = %bb.as
  %i.bt = add nuw i32 %.val.i.i113, 1
  store i32 %i.bt, ptr %i.bo, align 4, !tbaa !11
  br label %lean_inc.exit81

bb.au:                                            ; preds = %bb.as
  %.not.i.i114 = icmp eq i32 %.val.i.i113, 0
  br i1 %.not.i.i114, label %lean_inc.exit81, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bu = atomicrmw sub ptr %i.bo, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit81

lean_inc.exit81:                                  ; preds = %bb.av, %bb.au, %bb.at, %bb.ar
  br i1 %.not.i93.us, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %lean_inc.exit81
  %i.bv = load i32, ptr %i.e, align 8, !tbaa !11  ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, 1
  br i1 %i.bw, label %bb.ax, label %bb.ay, !prof !13

bb.ax:                                            ; preds = %bb.aw
  %i.bx = add nsw i32 %i.bv, -1
  store i32 %i.bx, ptr %i.e, align 8, !tbaa !11
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  %.not.i89 = icmp eq i32 %i.bv, 0
  br i1 %.not.i89, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.e) #5
  br label %bb.ba

bb.ba:                                            ; preds = %lean_inc.exit81, %bb.ax, %bb.ay, %bb.az
  tail call void @lean_inc_heartbeat() #5
  %i.by = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.bb, label %.sink.split

bb.bb:                                            ; preds = %bb.ba
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

bb.bc:                                            ; preds = %lean_dec.exit
  %.val.i.i117 = load i32, ptr %i.bh, align 4, !tbaa !11 ; 3 uses
  %i.ca = icmp sgt i32 %.val.i.i117, 0
  br i1 %i.ca, label %bb.bd, label %bb.be, !prof !13

bb.bd:                                            ; preds = %bb.bc
  %i.cb = add nuw i32 %.val.i.i117, 1
  store i32 %i.cb, ptr %i.bh, align 4, !tbaa !11
  br label %.thread129

bb.be:                                            ; preds = %bb.bc
  %.not.i.i118 = icmp eq i32 %.val.i.i117, 0
  br i1 %.not.i.i118, label %.thread129, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cc = atomicrmw sub ptr %i.bh, i32 1 monotonic, align 4 ; 0 uses
  br label %.thread129

.thread129:                                       ; preds = %lean_dec.exit, %bb.bd, %bb.be, %bb.bf
  %i.cd = tail call ptr @l_Std_DHashMap_Internal_Raw_u2080_insertIfNew___at___00__private_Lean_Meta_CollectMVars_0__addMVars_spec__0___redArg(ptr noundef %.059151, ptr noundef %i.bh, ptr noundef nonnull inttoptr (i64 1 to ptr)) ; 2 uses
  %i.ce = add nuw i64 %.057152, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ce, %2
  br i1 %exitcond.not, label %._crit_edge, label %lean_dec.exit

.sink.split:                                      ; preds = %bb.ba, %._crit_edge
  %.sink188 = phi ptr [ %i.be, %._crit_edge ], [ %i.by, %bb.ba ] ; 4 uses
  %.sink = phi i32 [ 65552, %._crit_edge ], [ 16842768, %bb.ba ]
  %.059.lcssa.sink = phi ptr [ %.059.lcssa, %._crit_edge ], [ %i.bo, %bb.ba ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sink188, i64 4
  store i32 1, ptr %.sink188, align 4, !tbaa !11
  store i32 %.sink, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %.sink188, i64 8
  store ptr %.059.lcssa.sink, ptr %i.cg, align 8, !tbaa !9
  br label %bb.bg

bb.bg:                                            ; preds = %.sink.split, %lean_dec_ref.exit92
  %.5.ph = phi ptr [ %i.e, %lean_dec_ref.exit92 ], [ %.sink188, %.sink.split ]
  ret ptr %.5.ph
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_CollectMVars_0__addMVars_spec__2___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr nofree noundef readnone captures(none) %10) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = getelementptr i8, ptr %2, i64 8
  %.val44 = load i64, ptr %i.d, align 8, !tbaa !14
  %i.e = load i32, ptr %2, align 8, !tbaa !11     ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1
  store i32 %i.g, ptr %2, align 8, !tbaa !11
  br label %lean_dec.exit28

bb.c:                                             ; preds = %bb.a
  %.not.i29 = icmp eq i32 %i.e, 0
  br i1 %.not.i29, label %lean_dec.exit28, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec.exit28

lean_dec.exit28:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.h = getelementptr i8, ptr %3, i64 8
  %.val = load i64, ptr %i.h, align 8, !tbaa !14
  %i.i = load i32, ptr %3, align 8, !tbaa !11     ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec.exit28
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %3, align 8, !tbaa !11
  br label %lean_dec.exit26

bb.f:                                             ; preds = %lean_dec.exit28
  %.not.i30 = icmp eq i32 %i.i, 0
  br i1 %.not.i30, label %lean_dec.exit26, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #5
  br label %lean_dec.exit26

lean_dec.exit26:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.l = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_CollectMVars_0__addMVars_spec__2(i8 noundef zeroext %i.c, ptr noundef %1, i64 noundef %.val44, i64 noundef %.val, ptr noundef %4, ptr poison, ptr poison, ptr noundef %7, ptr poison, ptr poison)
  %i.m = ptrtoint ptr %9 to i64
  %i.n = and i64 %i.m, 1
  %.not.i23 = icmp eq i64 %i.n, 0
  br i1 %.not.i23, label %bb.h, label %lean_dec.exit24

bb.h:                                             ; preds = %lean_dec.exit26
  %i.o = load i32, ptr %9, align 4, !tbaa !11     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.q = add nsw i32 %i.o, -1
end_hunk_0
