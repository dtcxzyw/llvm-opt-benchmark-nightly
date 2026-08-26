Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/TaggedText?download=true
inline.NumInlined: 1513
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@l_List_foldl___at___00__private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1_spec__3:bb.a
bb.ad:                                            ; preds = %bb.ac
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.038) #6
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i.1, %bb.ab, %bb.ac, %bb.ad
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !12  ; 6 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = and i64 %i.au, 1
  %.not.i45 = icmp eq i64 %i.av, 0
  br i1 %.not.i45, label %bb.ae, label %lean_inc.exit46

bb.ae:                                            ; preds = %lean_dec_ref_known.exit
  %.val.i.i69 = load i32, ptr %i.at, align 4, !tbaa !9 ; 3 uses
  %i.aw = icmp sgt i32 %.val.i.i69, 0
  br i1 %i.aw, label %bb.af, label %bb.ag, !prof !11

bb.af:                                            ; preds = %bb.ae
  %i.ax = add nuw i32 %.val.i.i69, 1
  store i32 %i.ax, ptr %i.at, align 4, !tbaa !9
  br label %lean_inc.exit46

bb.ag:                                            ; preds = %bb.ae
  %.not.i.i70 = icmp eq i32 %.val.i.i69, 0
  br i1 %.not.i.i70, label %lean_inc.exit46, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ay = atomicrmw sub ptr %i.at, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit46

lean_inc.exit46:                                  ; preds = %bb.ah, %bb.ag, %bb.af, %lean_dec_ref_known.exit
  br i1 %.not.i51, label %bb.ai, label %lean_dec.exit57

bb.ai:                                            ; preds = %lean_inc.exit46
  %i.az = load i32, ptr %i.i, align 8, !tbaa !9   ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.aj, label %bb.ak, !prof !11

bb.aj:                                            ; preds = %bb.ai
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %i.i, align 8, !tbaa !9
  br label %lean_dec.exit57

bb.ak:                                            ; preds = %bb.ai
  %.not.i.i55 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i55, label %lean_dec.exit57, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.i) #6
  br label %lean_dec.exit57

lean_dec.exit57:                                  ; preds = %bb.aj, %bb.ak, %bb.al, %lean_inc.exit46
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !12 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !12 ; 5 uses
  %.val = load i32, ptr %i.q, align 8, !tbaa !9
  %i.bg = icmp eq i32 %.val, 1
  br i1 %i.bg, label %lean_dec.exit, label %bb.am

bb.am:                                            ; preds = %lean_dec.exit57
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = and i64 %i.bh, 1
  %.not.i43 = icmp eq i64 %i.bi, 0
  br i1 %.not.i43, label %bb.an, label %lean_inc.exit44

bb.an:                                            ; preds = %bb.am
  %.val.i.i72 = load i32, ptr %i.bf, align 4, !tbaa !9 ; 3 uses
  %i.bj = icmp sgt i32 %.val.i.i72, 0
  br i1 %i.bj, label %bb.ao, label %bb.ap, !prof !11

bb.ao:                                            ; preds = %bb.an
  %i.bk = add nuw i32 %.val.i.i72, 1
  store i32 %i.bk, ptr %i.bf, align 4, !tbaa !9
  br label %lean_inc.exit44

bb.ap:                                            ; preds = %bb.an
  %.not.i.i73 = icmp eq i32 %.val.i.i72, 0
  br i1 %.not.i.i73, label %lean_inc.exit44, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bl = atomicrmw sub ptr %i.bf, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit44

lean_inc.exit44:                                  ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am
  %i.bm = ptrtoint ptr %i.bd to i64
  %i.bn = and i64 %i.bm, 1
  %.not.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i, label %bb.ar, label %lean_inc.exit

bb.ar:                                            ; preds = %lean_inc.exit44
  %.val.i.i75 = load i32, ptr %i.bd, align 4, !tbaa !9 ; 3 uses
  %i.bo = icmp sgt i32 %.val.i.i75, 0
  br i1 %i.bo, label %bb.as, label %bb.at, !prof !11

bb.as:                                            ; preds = %bb.ar
  %i.bp = add nuw i32 %.val.i.i75, 1
  store i32 %i.bp, ptr %i.bd, align 4, !tbaa !9
  br label %lean_inc.exit

bb.at:                                            ; preds = %bb.ar
  %.not.i.i76 = icmp eq i32 %.val.i.i75, 0
  br i1 %.not.i.i76, label %lean_inc.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bq = atomicrmw sub ptr %i.bd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.au, %bb.at, %bb.as, %lean_inc.exit44
  br i1 %.not.i49, label %bb.av, label %bb.az

bb.av:                                            ; preds = %lean_inc.exit
  %i.br = load i32, ptr %i.q, align 8, !tbaa !9   ; 3 uses
  %i.bs = icmp sgt i32 %i.br, 1
  br i1 %i.bs, label %bb.aw, label %bb.ax, !prof !11

bb.aw:                                            ; preds = %bb.av
  %i.bt = add nsw i32 %i.br, -1
  store i32 %i.bt, ptr %i.q, align 8, !tbaa !9
  br label %bb.az

bb.ax:                                            ; preds = %bb.av
  %.not.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #6
  br label %bb.az

lean_dec.exit:                                    ; preds = %lean_dec.exit57
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !12
  store ptr %i.at, ptr %i.bc, align 8, !tbaa !12
  br label %bb.bb

bb.az:                                            ; preds = %lean_inc.exit, %bb.ay, %bb.ax, %bb.aw
  tail call void @lean_inc_heartbeat() #6
  %i.bu = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.ba, label %lean_alloc_ctor.exit

bb.ba:                                            ; preds = %bb.az
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.az
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 1, ptr %i.bu, align 4, !tbaa !9
  store i32 131096, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.at, ptr %i.bx, align 8, !tbaa !12
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %i.bd, ptr %i.by, align 8, !tbaa !12
  br label %bb.bb

bb.bb:                                            ; preds = %lean_alloc_ctor.exit, %lean_dec.exit
  %.040 = phi ptr [ %i.q, %lean_dec.exit ], [ %i.bu, %lean_alloc_ctor.exit ]
  %i.bz = tail call ptr @l_Lean_Widget_TaggedText_appendTag___redArg(ptr noundef %i.bf, ptr noundef nonnull %.040, ptr noundef %.0)
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define ptr @l_panic___at___00__private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1_spec__5(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load atomic i32, ptr @l_panic___at___00__private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1_spec__5___closed__0_once seq_cst, align 4, !tbaa !14
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_panic___at___00__private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1_spec__5___closed__0, align 8, !tbaa !12
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_panic___at___00__private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1_spec__5___closed__0, ptr noundef nonnull @l_panic___at___00__private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1_spec__5___closed__0_once, ptr noundef nonnull @_init_l_panic___at___00__private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1_spec__5___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = tail call ptr @lean_panic_fn_borrowed(ptr noundef %.0.i, ptr noundef %0) #6
  %i.f = tail call ptr @lean_apply_1(ptr noundef %i.e, ptr noundef %1) #6
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_panic___at___00__private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1_spec__5___closed__0() #1 {
bb.a:
  %i.a = tail call ptr @l_instInhabitedOfMonad___redArg(ptr noundef nonnull @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__19_value, ptr noundef nonnull inttoptr (i64 1 to ptr)) #6
  ret ptr %i.a
}

declare ptr @lean_panic_fn_borrowed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  %i.c = lshr i64 %i.a, 1                         ; 2 uses
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec_ref_known.exit.backedge, %bb.a
  %.01047 = phi ptr [ %2, %bb.a ], [ %.01047.be, %lean_dec_ref_known.exit.backedge ] ; 91 uses
  %.01036 = phi ptr [ %1, %bb.a ], [ %.01036.be, %lean_dec_ref_known.exit.backedge ] ; 18 uses
  %i.d = ptrtoint ptr %.01036 to i64              ; 2 uses
  %i.e = and i64 %i.d, 1
  %.not.i1668 = icmp eq i64 %i.e, 0               ; 2 uses
  br i1 %.not.i1668, label %bb.c, label %bb.b

bb.b:                                             ; preds = %lean_dec_ref_known.exit
  %i.f = lshr i64 %i.d, 1
  %i.g = trunc i64 %i.f to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %lean_dec_ref_known.exit
  %i.h = getelementptr i8, ptr %.01036, i64 4
  %.val.i = load i32, ptr %i.h, align 4
  %i.i = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i1669 = phi i32 [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  %i.j = icmp eq i32 %.0.i1669, 0
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %lean_obj_tag.exit
  tail call void @lean_inc_heartbeat() #6
  %i.k = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %lean_alloc_ctor.exit

bb.e:                                             ; preds = %bb.d
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 1, ptr %i.k, align 4, !tbaa !9
  store i32 131096, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.n, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %.01047, ptr %i.o, align 8, !tbaa !12
  br label %bb.ajk

bb.f:                                             ; preds = %lean_obj_tag.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.01036, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12   ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12   ; 15 uses
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.v = and i64 %i.u, 1
  %.not.i1391 = icmp eq i64 %i.v, 0               ; 2 uses
  br i1 %.not.i1391, label %bb.g, label %lean_inc.exit1392

bb.g:                                             ; preds = %bb.f
  %.val.i.i = load i32, ptr %i.t, align 4, !tbaa !9 ; 3 uses
  %i.w = icmp sgt i32 %.val.i.i, 0
  br i1 %i.w, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.x = add nuw i32 %.val.i.i, 1
  store i32 %i.x, ptr %i.t, align 4, !tbaa !9
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not.i.i1670 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i1670, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = atomicrmw sub ptr %i.t, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.k

lean_inc.exit1392:                                ; preds = %bb.f
  %i.z = lshr i64 %i.u, 1
  %i.aa = trunc i64 %i.z to i32
  br label %lean_obj_tag.exit1674

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ab = getelementptr i8, ptr %i.t, i64 4
  %.val.i1673 = load i32, ptr %i.ab, align 4
  %i.ac = lshr i32 %.val.i1673, 24
  br label %lean_obj_tag.exit1674

lean_obj_tag.exit1674:                            ; preds = %lean_inc.exit1392, %bb.k
  %.0.i1672 = phi i32 [ %i.aa, %lean_inc.exit1392 ], [ %i.ac, %bb.k ]
  %i.ad = icmp eq i32 %.0.i1672, 0
  br i1 %i.ad, label %bb.l, label %bb.ac

bb.l:                                             ; preds = %lean_obj_tag.exit1674
  %i.ae = getelementptr inbounds nuw i8, ptr %.01036, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !12 ; 8 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = and i64 %i.ag, 1
  %.not.i1389 = icmp eq i64 %i.ah, 0
  br i1 %.not.i1389, label %bb.m, label %lean_inc.exit1390

bb.m:                                             ; preds = %bb.l
  %.val.i.i1675 = load i32, ptr %i.af, align 4, !tbaa !9 ; 3 uses
  %i.ai = icmp sgt i32 %.val.i.i1675, 0
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.aj = add nuw i32 %.val.i.i1675, 1
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !9
  br label %lean_inc.exit1390

bb.o:                                             ; preds = %bb.m
  %.not.i.i1676 = icmp eq i32 %.val.i.i1675, 0
  br i1 %.not.i.i1676, label %lean_inc.exit1390, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = atomicrmw sub ptr %i.af, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1390

lean_inc.exit1390:                                ; preds = %bb.p, %bb.o, %bb.n, %bb.l
  %.val.i1678 = load i32, ptr %.01036, align 8, !tbaa !9 ; 4 uses
  %i.al = icmp eq i32 %.val.i1678, 1
  br i1 %i.al, label %.preheader.i.preheader, label %bb.y

.preheader.i.preheader:                           ; preds = %lean_inc.exit1390
  %i.am = load ptr, ptr %i.p, align 8, !tbaa !12  ; 4 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 1
  %.not.i7.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i7.i, label %bb.q, label %lean_dec.exit.i

bb.q:                                             ; preds = %.preheader.i.preheader
  %i.ap = load i32, ptr %i.am, align 4, !tbaa !9  ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %bb.r, label %bb.s, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.ar = add nsw i32 %i.ap, -1
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !9
  br label %lean_dec.exit.i

bb.s:                                             ; preds = %bb.q
  %.not.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.am) #6
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.t, %bb.s, %bb.r, %.preheader.i.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %.01036, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !12 ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = and i64 %i.au, 1
  %.not.i7.i.1 = icmp eq i64 %i.av, 0
  br i1 %.not.i7.i.1, label %bb.u, label %lean_dec.exit.i.1

bb.u:                                             ; preds = %lean_dec.exit.i
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !9  ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %bb.x, label %bb.v, !prof !11

bb.v:                                             ; preds = %bb.u
  %.not.i.i.i.1 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.1, label %lean_dec.exit.i.1, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.at) #6
  br label %lean_dec.exit.i.1

bb.x:                                             ; preds = %bb.u
  %i.ay = add nsw i32 %i.aw, -1
  store i32 %i.ay, ptr %i.at, align 4, !tbaa !9
  br label %lean_dec.exit.i.1

lean_dec.exit.i.1:                                ; preds = %bb.x, %bb.w, %bb.v, %lean_dec.exit.i
  tail call void @lean_free_object(ptr noundef nonnull %.01036) #6
  br label %lean_dec_ref_known.exit.backedge

bb.y:                                             ; preds = %lean_inc.exit1390
  %i.az = icmp sgt i32 %.val.i1678, 1
  br i1 %i.az, label %bb.z, label %bb.aa, !prof !11

bb.z:                                             ; preds = %bb.y
  %i.ba = add nsw i32 %.val.i1678, -1
  store i32 %i.ba, ptr %.01036, align 8, !tbaa !9
  br label %lean_dec_ref_known.exit.backedge

bb.aa:                                            ; preds = %bb.y
  %.not.i.i1679 = icmp eq i32 %.val.i1678, 0
  br i1 %.not.i.i1679, label %lean_dec_ref_known.exit.backedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.01036) #6
  br label %lean_dec_ref_known.exit.backedge

bb.ac:                                            ; preds = %lean_obj_tag.exit1674
  %.val.i.i1681 = load i32, ptr %i.q, align 8, !tbaa !9 ; 3 uses
  %i.bb = icmp sgt i32 %.val.i.i1681, 0
  br i1 %i.bb, label %bb.ad, label %bb.ae, !prof !11

bb.ad:                                            ; preds = %bb.ac
  %i.bc = add nuw i32 %.val.i.i1681, 1
  store i32 %i.bc, ptr %i.q, align 8, !tbaa !9
  br label %lean_inc.exit1388
end_hunk_0
begin_hunk_1_@l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1:bb.a
  %i.zc = add nsw i32 %i.za, -1
  store i32 %i.zc, ptr %i.nd, align 4, !tbaa !9
  br label %lean_dec.exit1517

bb.pt:                                            ; preds = %bb.pr
  %.not.i.i1515 = icmp eq i32 %i.za, 0
  br i1 %.not.i.i1515, label %lean_dec.exit1517, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.nd) #6
  br label %lean_dec.exit1517

lean_dec.exit1517:                                ; preds = %bb.ps, %bb.pt, %bb.pu, %lean_dec.exit1521
  %i.zd = ptrtoint ptr %i.dj to i64
  %i.ze = and i64 %i.zd, 1
  %.not.i1510 = icmp eq i64 %i.ze, 0
  br i1 %.not.i1510, label %bb.pv, label %lean_dec.exit1513

bb.pv:                                            ; preds = %lean_dec.exit1517
  %i.zf = load i32, ptr %i.dj, align 4, !tbaa !9  ; 3 uses
  %i.zg = icmp sgt i32 %i.zf, 1
  br i1 %i.zg, label %bb.pw, label %bb.px, !prof !11

bb.pw:                                            ; preds = %bb.pv
  %i.zh = add nsw i32 %i.zf, -1
  store i32 %i.zh, ptr %i.dj, align 4, !tbaa !9
  br label %lean_dec.exit1513

bb.px:                                            ; preds = %bb.pv
  %.not.i.i1511 = icmp eq i32 %i.zf, 0
  br i1 %.not.i.i1511, label %lean_dec.exit1513, label %bb.py

bb.py:                                            ; preds = %bb.px
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dj) #6
  br label %lean_dec.exit1513

lean_dec.exit1513:                                ; preds = %bb.pw, %bb.px, %bb.py, %lean_dec.exit1517
  br i1 %.not.i1325, label %bb.pz, label %lean_dec.exit1509

bb.pz:                                            ; preds = %lean_dec.exit1513
  %i.zi = load i32, ptr %i.co, align 4, !tbaa !9  ; 3 uses
  %i.zj = icmp sgt i32 %i.zi, 1
  br i1 %i.zj, label %bb.qa, label %bb.qb, !prof !11

bb.qa:                                            ; preds = %bb.pz
  %i.zk = add nsw i32 %i.zi, -1
  store i32 %i.zk, ptr %i.co, align 4, !tbaa !9
  br label %lean_dec.exit1509

bb.qb:                                            ; preds = %bb.pz
  %.not.i.i1507 = icmp eq i32 %i.zi, 0
  br i1 %.not.i.i1507, label %lean_dec.exit1509, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.co) #6
  br label %lean_dec.exit1509

lean_dec.exit1509:                                ; preds = %bb.qa, %bb.qb, %bb.qc, %lean_dec.exit1513
  br i1 %.not.i1327, label %bb.qd, label %lean_dec.exit1505

bb.qd:                                            ; preds = %lean_dec.exit1509
  %i.zl = load i32, ptr %i.bm, align 4, !tbaa !9  ; 3 uses
  %i.zm = icmp sgt i32 %i.zl, 1
  br i1 %i.zm, label %bb.qe, label %bb.qf, !prof !11

bb.qe:                                            ; preds = %bb.qd
  %i.zn = add nsw i32 %i.zl, -1
  store i32 %i.zn, ptr %i.bm, align 4, !tbaa !9
  br label %lean_dec.exit1505

bb.qf:                                            ; preds = %bb.qd
  %.not.i.i1503 = icmp eq i32 %i.zl, 0
  br i1 %.not.i.i1503, label %lean_dec.exit1505, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bm) #6
  br label %lean_dec.exit1505

lean_dec.exit1505:                                ; preds = %bb.qe, %bb.qf, %bb.qg, %lean_dec.exit1509
  %i.zo = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !12 ; 5 uses
  %i.zq = ptrtoint ptr %i.zp to i64
  %i.zr = and i64 %i.zq, 1
  %.not.i1295 = icmp eq i64 %i.zr, 0
  br i1 %.not.i1295, label %bb.qh, label %lean_inc.exit1296

bb.qh:                                            ; preds = %lean_dec.exit1505
  %.val.i.i1864 = load i32, ptr %i.zp, align 4, !tbaa !9 ; 3 uses
  %i.zs = icmp sgt i32 %.val.i.i1864, 0
  br i1 %i.zs, label %bb.qi, label %bb.qj, !prof !11

bb.qi:                                            ; preds = %bb.qh
  %i.zt = add nuw i32 %.val.i.i1864, 1
  store i32 %i.zt, ptr %i.zp, align 4, !tbaa !9
  br label %lean_inc.exit1296

bb.qj:                                            ; preds = %bb.qh
  %.not.i.i1865 = icmp eq i32 %.val.i.i1864, 0
  br i1 %.not.i.i1865, label %lean_inc.exit1296, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.zu = atomicrmw sub ptr %i.zp, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1296

lean_inc.exit1296:                                ; preds = %bb.qk, %bb.qj, %bb.qi, %lean_dec.exit1505
  %i.zv = load i32, ptr %i.ri, align 8, !tbaa !9  ; 3 uses
  %i.zw = icmp sgt i32 %i.zv, 1
  br i1 %i.zw, label %bb.ql, label %bb.qm, !prof !11

bb.ql:                                            ; preds = %lean_inc.exit1296
  %i.zx = add nsw i32 %i.zv, -1
  store i32 %i.zx, ptr %i.ri, align 8, !tbaa !9
  br label %lean_dec_ref.exit1211

bb.qm:                                            ; preds = %lean_inc.exit1296
  %.not.i1210 = icmp eq i32 %i.zv, 0
  br i1 %.not.i1210, label %lean_dec_ref.exit1211, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ri) #6
  br label %lean_dec_ref.exit1211

lean_dec_ref.exit1211:                            ; preds = %bb.ql, %bb.qm, %bb.qn
  %i.zy = load atomic i32, ptr @l_panic___at___00__private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1_spec__5___closed__0_once seq_cst, align 4, !tbaa !14
  %i.zz = icmp eq i32 %i.zy, 1
  br i1 %i.zz, label %bb.qo, label %bb.qp, !prof !11

bb.qo:                                            ; preds = %lean_dec_ref.exit1211
  %i.aaa = load ptr, ptr @l_panic___at___00__private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1_spec__5___closed__0, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit.thread

bb.qp:                                            ; preds = %lean_dec_ref.exit1211
  %i.aab = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_panic___at___00__private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1_spec__5___closed__0, ptr noundef nonnull @l_panic___at___00__private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1_spec__5___closed__0_once, ptr noundef nonnull @_init_l_panic___at___00__private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1_spec__5___closed__0) #6
  br label %lean_dec_ref_known.exit.thread

lean_dec_ref_known.exit.thread:                   ; preds = %bb.qp, %bb.qo
  %.0.i.i = phi ptr [ %i.aaa, %bb.qo ], [ %i.aab, %bb.qp ]
  %i.aac = tail call ptr @lean_panic_fn_borrowed(ptr noundef %.0.i.i, ptr noundef nonnull @l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___closed__2_value) #6
  %i.aad = tail call ptr @lean_apply_1(ptr noundef %i.aac, ptr noundef %i.zp) #6
  br label %bb.ajk

bb.qq:                                            ; preds = %lean_obj_tag.exit1708
  %i.aae = ptrtoint ptr %.01146.a to i64
  %i.aaf = and i64 %i.aae, 1
  %.not.i1867 = icmp eq i64 %i.aaf, 0
  br i1 %.not.i1867, label %bb.qr, label %lean_del_object.exit1868

bb.qr:                                            ; preds = %bb.qq
  tail call void @lean_free_object(ptr noundef nonnull %.01146.a) #6
  br label %lean_del_object.exit1868

lean_del_object.exit1868:                         ; preds = %bb.qq, %bb.qr
  %i.aag = ptrtoint ptr %.01142 to i64
  %i.aah = and i64 %i.aag, 1
  %.not.i1869 = icmp eq i64 %i.aah, 0
  br i1 %.not.i1869, label %bb.qs, label %lean_del_object.exit1870

bb.qs:                                            ; preds = %lean_del_object.exit1868
  tail call void @lean_free_object(ptr noundef nonnull %.01142) #6
  br label %lean_del_object.exit1870

lean_del_object.exit1870:                         ; preds = %lean_del_object.exit1868, %bb.qs
  %i.aai = ptrtoint ptr %.01133 to i64
  %i.aaj = and i64 %i.aai, 1
  %.not.i1871 = icmp eq i64 %i.aaj, 0
  br i1 %.not.i1871, label %bb.qt, label %lean_del_object.exit1872

bb.qt:                                            ; preds = %lean_del_object.exit1870
  tail call void @lean_free_object(ptr noundef nonnull %.01133) #6
  br label %lean_del_object.exit1872

lean_del_object.exit1872:                         ; preds = %lean_del_object.exit1870, %bb.qt
  %i.aak = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !21
  %.val.i1873 = load i32, ptr %i.df, align 4, !tbaa !9 ; 4 uses
  %i.aam = icmp eq i32 %.val.i1873, 1
  br i1 %i.aam, label %.preheader.i1876, label %bb.qu

.preheader.i1876:                                 ; preds = %lean_del_object.exit1872
  tail call void @lean_free_object(ptr noundef nonnull %i.df) #6
  br label %lean_dec_ref_known.exit1878

bb.qu:                                            ; preds = %lean_del_object.exit1872
  %i.aan = icmp sgt i32 %.val.i1873, 1
  br i1 %i.aan, label %bb.qv, label %bb.qw, !prof !11

bb.qv:                                            ; preds = %bb.qu
  %i.aao = add nsw i32 %.val.i1873, -1
  store i32 %i.aao, ptr %i.df, align 4, !tbaa !9
  br label %lean_dec_ref_known.exit1878

bb.qw:                                            ; preds = %bb.qu
  %.not.i.i1874 = icmp eq i32 %.val.i1873, 0
  br i1 %.not.i.i1874, label %lean_dec_ref_known.exit1878, label %bb.qx

bb.qx:                                            ; preds = %bb.qw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.df) #6
  br label %lean_dec_ref_known.exit1878

lean_dec_ref_known.exit1878:                      ; preds = %.preheader.i1876, %bb.qv, %bb.qw, %bb.qx
  %i.aap = tail call zeroext i8 @l_Std_Format_FlattenAllowability_shouldFlatten(ptr noundef %i.cc) #6
  %3 = icmp eq i8 %i.aap, 0
  %i.aaq = icmp ne i8 %i.aal, 0
  %brmerge = select i1 %3, i1 true, i1 %i.aaq
  br i1 %brmerge, label %bb.adx, label %bb.ahx

bb.qy:                                            ; preds = %lean_obj_tag.exit1708
  %i.aar = ptrtoint ptr %.01133 to i64
  %i.aas = and i64 %i.aar, 1
  %.not.i1879 = icmp eq i64 %i.aas, 0
  br i1 %.not.i1879, label %bb.qz, label %lean_del_object.exit1880

bb.qz:                                            ; preds = %bb.qy
  tail call void @lean_free_object(ptr noundef nonnull %.01133) #6
  br label %lean_del_object.exit1880

lean_del_object.exit1880:                         ; preds = %bb.qy, %bb.qz
  %i.aat = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !12 ; 23 uses
  %.val = load i32, ptr %i.df, align 8, !tbaa !9
  %i.aav = icmp eq i32 %.val, 1                   ; 2 uses
  br i1 %i.aav, label %lean_dec.exit1501, label %bb.ra

bb.ra:                                            ; preds = %lean_del_object.exit1880
  %i.aaw = ptrtoint ptr %i.aau to i64
  %i.aax = and i64 %i.aaw, 1
  %.not.i1293 = icmp eq i64 %i.aax, 0
  br i1 %.not.i1293, label %bb.rb, label %lean_inc.exit1294

bb.rb:                                            ; preds = %bb.ra
  %.val.i.i1881 = load i32, ptr %i.aau, align 4, !tbaa !9 ; 3 uses
  %i.aay = icmp sgt i32 %.val.i.i1881, 0
  br i1 %i.aay, label %bb.rc, label %bb.rd, !prof !11

bb.rc:                                            ; preds = %bb.rb
  %i.aaz = add nuw i32 %.val.i.i1881, 1
  store i32 %i.aaz, ptr %i.aau, align 4, !tbaa !9
  br label %lean_inc.exit1294

bb.rd:                                            ; preds = %bb.rb
  %.not.i.i1882 = icmp eq i32 %.val.i.i1881, 0
  br i1 %.not.i.i1882, label %lean_inc.exit1294, label %bb.re

bb.re:                                            ; preds = %bb.rd
  %i.aba = atomicrmw sub ptr %i.aau, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1294

lean_inc.exit1294:                                ; preds = %bb.re, %bb.rd, %bb.rc, %bb.ra
  br i1 %.not.i1705, label %bb.rf, label %lean_dec.exit1501

bb.rf:                                            ; preds = %lean_inc.exit1294
  %i.abb = load i32, ptr %i.df, align 8, !tbaa !9 ; 3 uses
  %i.abc = icmp sgt i32 %i.abb, 1
  br i1 %i.abc, label %bb.rg, label %bb.rh, !prof !11

bb.rg:                                            ; preds = %bb.rf
  %i.abd = add nsw i32 %i.abb, -1
  store i32 %i.abd, ptr %i.df, align 8, !tbaa !9
  br label %lean_dec.exit1501

bb.rh:                                            ; preds = %bb.rf
  %.not.i.i1499 = icmp eq i32 %i.abb, 0
  br i1 %.not.i.i1499, label %lean_dec.exit1501, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.df) #6
  br label %lean_dec.exit1501

lean_dec.exit1501:                                ; preds = %lean_inc.exit1294, %bb.ri, %bb.rh, %bb.rg, %lean_del_object.exit1880
  %.01167.a = phi ptr [ %i.df, %lean_del_object.exit1880 ], [ inttoptr (i64 1 to ptr), %bb.rg ], [ inttoptr (i64 1 to ptr), %bb.rh ], [ inttoptr (i64 1 to ptr), %bb.ri ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1294 ] ; 3 uses
  %.val.i.i1884 = load i32, ptr %i.aau, align 4, !tbaa !9 ; 3 uses
  %i.abe = icmp sgt i32 %.val.i.i1884, 0
  br i1 %i.abe, label %bb.rj, label %bb.rk, !prof !11

bb.rj:                                            ; preds = %lean_dec.exit1501
  %i.abf = add nuw i32 %.val.i.i1884, 1
  store i32 %i.abf, ptr %i.aau, align 4, !tbaa !9
  br label %lean_inc_ref.exit1886

bb.rk:                                            ; preds = %lean_dec.exit1501
  %.not.i.i1885 = icmp eq i32 %.val.i.i1884, 0
  br i1 %.not.i.i1885, label %lean_inc_ref.exit1886, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.abg = atomicrmw sub ptr %i.aau, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1886

lean_inc_ref.exit1886:                            ; preds = %bb.rj, %bb.rk, %bb.rl
  %i.abh = tail call ptr @lean_string_posof(ptr noundef nonnull %i.aau, i32 noundef 10) #6 ; 11 uses
  %i.abi = getelementptr i8, ptr %i.aau, i64 8
  %.val1667 = load i64, ptr %i.abi, align 8, !tbaa !16
  %i.abj = shl i64 %.val1667, 1
  %i.abk = add i64 %i.abj, -1
  %i.abl = inttoptr i64 %i.abk to ptr             ; 3 uses
  %i.abm = ptrtoint ptr %i.abh to i64
  %i.abn = and i64 %i.abm, 1
  %.not.i1650 = icmp eq i64 %i.abn, 0             ; 2 uses
  br i1 %.not.i1650, label %lean_nat_eq.exit, label %lean_nat_eq.exit.thread, !prof !20

lean_nat_eq.exit:                                 ; preds = %lean_inc_ref.exit1886
  %i.abo = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %i.abh, ptr noundef nonnull %i.abl) #6
  br i1 %i.abo, label %bb.ub, label %bb.rm

lean_nat_eq.exit.thread:                          ; preds = %lean_inc_ref.exit1886
  %.not = icmp eq ptr %i.abh, %i.abl
  br i1 %.not, label %lean_dec.exit1477, label %bb.rm

bb.rm:                                            ; preds = %lean_nat_eq.exit.thread, %lean_nat_eq.exit
  %i.abp = getelementptr inbounds nuw i8, ptr %.01047, i64 8
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !12 ; 5 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %.01047, i64 16
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !12 ; 5 uses
  %.01047.val1656 = load i32, ptr %.01047, align 8, !tbaa !9
  %i.abt = icmp eq i32 %.01047.val1656, 1         ; 2 uses
  br i1 %i.abt, label %bb.rn, label %bb.rs

bb.rn:                                            ; preds = %bb.rm
  %i.abu = getelementptr inbounds nuw i8, ptr %.01047, i64 24
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !12 ; 4 uses
  %i.abw = ptrtoint ptr %i.abv to i64
  %i.abx = and i64 %i.abw, 1
  %.not.i1494 = icmp eq i64 %i.abx, 0
  br i1 %.not.i1494, label %bb.ro, label %lean_dec.exit1497

bb.ro:                                            ; preds = %bb.rn
  %i.aby = load i32, ptr %i.abv, align 4, !tbaa !9 ; 3 uses
  %i.abz = icmp sgt i32 %i.aby, 1
  br i1 %i.abz, label %bb.rp, label %bb.rq, !prof !11

bb.rp:                                            ; preds = %bb.ro
  %i.aca = add nsw i32 %i.aby, -1
  store i32 %i.aca, ptr %i.abv, align 4, !tbaa !9
  br label %lean_dec.exit1497

bb.rq:                                            ; preds = %bb.ro
  %.not.i.i1495 = icmp eq i32 %i.aby, 0
  br i1 %.not.i.i1495, label %lean_dec.exit1497, label %bb.rr

bb.rr:                                            ; preds = %bb.rq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.abv) #6
  br label %lean_dec.exit1497

bb.rs:                                            ; preds = %bb.rm
  %i.acb = ptrtoint ptr %i.abs to i64
  %i.acc = and i64 %i.acb, 1
  %.not.i1291 = icmp eq i64 %i.acc, 0
  br i1 %.not.i1291, label %bb.rt, label %lean_inc.exit1292

bb.rt:                                            ; preds = %bb.rs
  %.val.i.i1887 = load i32, ptr %i.abs, align 4, !tbaa !9 ; 3 uses
  %i.acd = icmp sgt i32 %.val.i.i1887, 0
  br i1 %i.acd, label %bb.ru, label %bb.rv, !prof !11

bb.ru:                                            ; preds = %bb.rt
  %i.ace = add nuw i32 %.val.i.i1887, 1
  store i32 %i.ace, ptr %i.abs, align 4, !tbaa !9
  br label %lean_inc.exit1292

bb.rv:                                            ; preds = %bb.rt
  %.not.i.i1888 = icmp eq i32 %.val.i.i1887, 0
  br i1 %.not.i.i1888, label %lean_inc.exit1292, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %i.acf = atomicrmw sub ptr %i.abs, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1292

lean_inc.exit1292:                                ; preds = %bb.rw, %bb.rv, %bb.ru, %bb.rs
  %i.acg = ptrtoint ptr %i.abq to i64
  %i.ach = and i64 %i.acg, 1
  %.not.i1289 = icmp eq i64 %i.ach, 0
  br i1 %.not.i1289, label %bb.rx, label %lean_inc.exit1290

bb.rx:                                            ; preds = %lean_inc.exit1292
  %.val.i.i1890 = load i32, ptr %i.abq, align 4, !tbaa !9 ; 3 uses
  %i.aci = icmp sgt i32 %.val.i.i1890, 0
  br i1 %i.aci, label %bb.ry, label %bb.rz, !prof !11

bb.ry:                                            ; preds = %bb.rx
  %i.acj = add nuw i32 %.val.i.i1890, 1
  store i32 %i.acj, ptr %i.abq, align 4, !tbaa !9
  br label %lean_inc.exit1290

bb.rz:                                            ; preds = %bb.rx
  %.not.i.i1891 = icmp eq i32 %.val.i.i1890, 0
  br i1 %.not.i.i1891, label %lean_inc.exit1290, label %bb.sa

bb.sa:                                            ; preds = %bb.rz
  %i.ack = atomicrmw sub ptr %i.abq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1290

lean_inc.exit1290:                                ; preds = %lean_inc.exit1292, %bb.ry, %bb.rz, %bb.sa
  %i.acl = load i32, ptr %.01047, align 8, !tbaa !9 ; 3 uses
  %i.acm = icmp sgt i32 %i.acl, 1
  br i1 %i.acm, label %bb.sb, label %bb.sc, !prof !11

bb.sb:                                            ; preds = %lean_inc.exit1290
  %i.acn = add nsw i32 %i.acl, -1
  store i32 %i.acn, ptr %.01047, align 8, !tbaa !9
  br label %lean_dec.exit1497

bb.sc:                                            ; preds = %lean_inc.exit1290
  %.not.i.i1491 = icmp eq i32 %i.acl, 0
  br i1 %.not.i.i1491, label %lean_dec.exit1497, label %bb.sd

end_hunk_1
begin_hunk_2_@l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1:bb.a
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.apw) #6
  br label %lean_dec.exit.i2002

lean_dec.exit.i2002:                              ; preds = %bb.zv, %bb.zu, %bb.zt, %.preheader.i1999.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.df) #6
  br label %lean_dec_ref_known.exit2007

bb.zw:                                            ; preds = %lean_inc.exit1262
  %i.aqc = icmp sgt i32 %.val.i1996, 1
  br i1 %i.aqc, label %bb.zx, label %bb.zy, !prof !11

bb.zx:                                            ; preds = %bb.zw
  %i.aqd = add nsw i32 %.val.i1996, -1
  store i32 %i.aqd, ptr %i.df, align 8, !tbaa !9
  br label %lean_dec_ref_known.exit2007

bb.zy:                                            ; preds = %bb.zw
  %.not.i.i1997 = icmp eq i32 %.val.i1996, 0
  br i1 %.not.i.i1997, label %lean_dec_ref_known.exit2007, label %bb.zz

bb.zz:                                            ; preds = %bb.zy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.df) #6
  br label %lean_dec_ref_known.exit2007

lean_dec_ref_known.exit2007:                      ; preds = %lean_dec.exit.i2002, %bb.zx, %bb.zy, %bb.zz
  %i.aqe = tail call zeroext i8 @l_Std_Format_FlattenAllowability_shouldFlatten(ptr noundef %i.cc) #6
  %i.aqf = icmp eq i8 %i.aqe, 0
  br i1 %i.aqf, label %bb.aaa, label %bb.aaw

bb.aaa:                                           ; preds = %lean_dec_ref_known.exit2007
  br i1 %i.dk, label %bb.aab, label %bb.aac

bb.aab:                                           ; preds = %bb.aaa
  %i.aqg = getelementptr inbounds nuw i8, ptr %.01146.a, i64 8
  store ptr %i.apn, ptr %i.aqg, align 8, !tbaa !12
  br label %bb.aae

bb.aac:                                           ; preds = %bb.aaa
  tail call void @lean_inc_heartbeat() #6
  %i.aqh = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #6 ; 7 uses
  %i.aqi = icmp eq ptr %i.aqh, null
  br i1 %i.aqi, label %bb.aad, label %lean_alloc_ctor.exit2008

bb.aad:                                           ; preds = %bb.aac
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit2008:                         ; preds = %bb.aac
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqh, i64 4
  store i32 1, ptr %i.aqh, align 4, !tbaa !9
  store i32 196640, ptr %i.aqj, align 4
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqh, i64 8
  store ptr %i.apn, ptr %i.aqk, align 8, !tbaa !12
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqh, i64 16
  store ptr %i.dh, ptr %i.aql, align 8, !tbaa !12
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqh, i64 24
  store ptr %i.dj, ptr %i.aqm, align 8, !tbaa !12
  br label %bb.aae

bb.aae:                                           ; preds = %lean_alloc_ctor.exit2008, %bb.aab
  %.01145 = phi ptr [ %.01146.a, %bb.aab ], [ %i.aqh, %lean_alloc_ctor.exit2008 ] ; 2 uses
  br i1 %i.cp, label %bb.aaf, label %bb.aag

bb.aaf:                                           ; preds = %bb.aae
  %i.aqn = getelementptr inbounds nuw i8, ptr %.01142, i64 8
  %i.aqo = getelementptr inbounds nuw i8, ptr %.01142, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.aqo, align 8, !tbaa !12
  store ptr %.01145, ptr %i.aqn, align 8, !tbaa !12
  br label %bb.aai

bb.aag:                                           ; preds = %bb.aae
  tail call void @lean_inc_heartbeat() #6
  %i.aqp = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.aqq = icmp eq ptr %i.aqp, null
  br i1 %i.aqq, label %bb.aah, label %lean_alloc_ctor.exit2009

bb.aah:                                           ; preds = %bb.aag
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit2009:                         ; preds = %bb.aag
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqp, i64 4
  store i32 1, ptr %i.aqp, align 4, !tbaa !9
  store i32 16908312, ptr %i.aqr, align 4
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqp, i64 8
  store ptr %.01145, ptr %i.aqs, align 8, !tbaa !12
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqp, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.aqt, align 8, !tbaa !12
  br label %bb.aai

bb.aai:                                           ; preds = %lean_alloc_ctor.exit2009, %bb.aaf
  %.01144 = phi ptr [ %.01142, %bb.aaf ], [ %i.aqp, %lean_alloc_ctor.exit2009 ]
  tail call void @lean_inc_heartbeat() #6
  %i.aqu = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #6 ; 7 uses
  %i.aqv = icmp eq ptr %i.aqu, null
  br i1 %i.aqv, label %bb.aaj, label %lean_alloc_ctor.exit.i2010

bb.aaj:                                           ; preds = %bb.aai
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit.i2010:                       ; preds = %bb.aai
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqu, i64 4
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqu, i64 24 ; 2 uses
  store i64 0, ptr %i.aqx, align 8, !tbaa !16
  store i32 1, ptr %i.aqu, align 8, !tbaa !9
  store i32 131104, ptr %i.aqw, align 4
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqu, i64 8
  store ptr %i.cc, ptr %i.aqy, align 8, !tbaa !12
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqu, i64 16
  store ptr %i.co, ptr %i.aqz, align 8, !tbaa !12
  store i8 %i.cj, ptr %i.aqx, align 8, !tbaa !21
  tail call void @lean_inc_heartbeat() #6
  %i.ara = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.arb = icmp eq ptr %i.ara, null
  br i1 %i.arb, label %bb.aak, label %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit2011

bb.aak:                                           ; preds = %lean_alloc_ctor.exit.i2010
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit2011: ; preds = %lean_alloc_ctor.exit.i2010
  %i.arc = getelementptr inbounds nuw i8, ptr %i.ara, i64 4
  store i32 1, ptr %i.ara, align 4, !tbaa !9
  store i32 16908312, ptr %i.arc, align 4
  %i.ard = getelementptr inbounds nuw i8, ptr %i.ara, i64 8
  store ptr %i.aqu, ptr %i.ard, align 8, !tbaa !12
  %i.are = getelementptr inbounds nuw i8, ptr %i.ara, i64 16
  store ptr %i.bm, ptr %i.are, align 8, !tbaa !12
  %i.arf = tail call ptr @l___private_Init_Data_Format_Basic_0__Std_Format_pushGroup___at___00__private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1_spec__4(i8 noundef zeroext %i.apu, ptr noundef nonnull %.01144, ptr noundef nonnull %i.ara, ptr noundef %0, ptr noundef %.01047) ; 5 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arf, i64 8
  %i.arh = load ptr, ptr %i.arg, align 8, !tbaa !12 ; 7 uses
  %i.ari = ptrtoint ptr %i.arh to i64
  %i.arj = and i64 %i.ari, 1
  %.not.i1259 = icmp eq i64 %i.arj, 0
  br i1 %.not.i1259, label %bb.aal, label %lean_inc.exit1260

bb.aal:                                           ; preds = %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit2011
  %.val.i.i2012 = load i32, ptr %i.arh, align 4, !tbaa !9 ; 3 uses
  %i.ark = icmp sgt i32 %.val.i.i2012, 0
  br i1 %i.ark, label %bb.aam, label %bb.aan, !prof !11

bb.aam:                                           ; preds = %bb.aal
  %i.arl = add nuw i32 %.val.i.i2012, 1
  store i32 %i.arl, ptr %i.arh, align 4, !tbaa !9
  br label %lean_inc.exit1260

bb.aan:                                           ; preds = %bb.aal
  %.not.i.i2013 = icmp eq i32 %.val.i.i2012, 0
  br i1 %.not.i.i2013, label %lean_inc.exit1260, label %bb.aao

bb.aao:                                           ; preds = %bb.aan
  %i.arm = atomicrmw sub ptr %i.arh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1260

lean_inc.exit1260:                                ; preds = %bb.aao, %bb.aan, %bb.aam, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit2011
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arf, i64 16
  %i.aro = load ptr, ptr %i.arn, align 8, !tbaa !12 ; 7 uses
  %i.arp = ptrtoint ptr %i.aro to i64
  %i.arq = and i64 %i.arp, 1
  %.not.i1257 = icmp eq i64 %i.arq, 0
  br i1 %.not.i1257, label %bb.aap, label %lean_inc.exit1258

bb.aap:                                           ; preds = %lean_inc.exit1260
  %.val.i.i2015 = load i32, ptr %i.aro, align 4, !tbaa !9 ; 3 uses
  %i.arr = icmp sgt i32 %.val.i.i2015, 0
  br i1 %i.arr, label %bb.aaq, label %bb.aar, !prof !11

bb.aaq:                                           ; preds = %bb.aap
  %i.ars = add nuw i32 %.val.i.i2015, 1
  store i32 %i.ars, ptr %i.aro, align 4, !tbaa !9
  br label %lean_inc.exit1258

bb.aar:                                           ; preds = %bb.aap
  %.not.i.i2016 = icmp eq i32 %.val.i.i2015, 0
  br i1 %.not.i.i2016, label %lean_inc.exit1258, label %bb.aas

bb.aas:                                           ; preds = %bb.aar
  %i.art = atomicrmw sub ptr %i.aro, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1258

lean_inc.exit1258:                                ; preds = %bb.aas, %bb.aar, %bb.aaq, %lean_inc.exit1260
  %i.aru = load i32, ptr %i.arf, align 8, !tbaa !9 ; 3 uses
  %i.arv = icmp sgt i32 %i.aru, 1
  br i1 %i.arv, label %bb.aat, label %bb.aau, !prof !11

bb.aat:                                           ; preds = %lean_inc.exit1258
  %i.arw = add nsw i32 %i.aru, -1
  store i32 %i.arw, ptr %i.arf, align 8, !tbaa !9
  br label %lean_dec_ref_known.exit.backedge

bb.aau:                                           ; preds = %lean_inc.exit1258
  %.not.i1202 = icmp eq i32 %i.aru, 0
  br i1 %.not.i1202, label %lean_dec_ref_known.exit.backedge, label %bb.aav

bb.aav:                                           ; preds = %bb.aau
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.arf) #6
  br label %lean_dec_ref_known.exit.backedge

lean_dec_ref_known.exit.backedge:                 ; preds = %bb.aav, %bb.aau, %bb.aat, %bb.tx, %bb.tw, %bb.tv, %bb.nm, %bb.nl, %bb.nk, %bb.jy, %bb.jx, %bb.jw, %bb.ab, %bb.aa, %bb.z, %lean_dec.exit.i.1, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit1963, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit1990, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit2061, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit2125, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit1772, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit1753, %lean_alloc_ctor.exit1863, %bb.pk, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit1907, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit1936, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit2021, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit2107, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit2089
  %.01047.be = phi ptr [ %.01084, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit2107 ], [ %.01136, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit2061 ], [ %.01160.a, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit ], [ %.01047, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit1990 ], [ %.01181.a, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit1772 ], [ %.01163, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit1907 ], [ %.01047, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit2021 ], [ %.01044, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit2125 ], [ %i.yp, %lean_alloc_ctor.exit1863 ], [ %.01047, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit1963 ], [ %.01176.a, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit1753 ], [ %.01047, %bb.ab ], [ %i.aro, %bb.aav ], [ %i.qc, %bb.jy ], [ %.01172.a, %bb.pk ], [ %.01156.a, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit1936 ], [ %i.vt, %bb.nm ], [ %i.aey, %bb.tx ], [ %.01129, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit2089 ], [ %.01047, %lean_dec.exit.i.1 ], [ %.01047, %bb.z ], [ %.01047, %bb.aa ], [ %i.qc, %bb.jw ], [ %i.qc, %bb.jx ], [ %i.vt, %bb.nk ], [ %i.vt, %bb.nl ], [ %i.aey, %bb.tv ], [ %i.aey, %bb.tw ], [ %i.aro, %bb.aat ], [ %i.aro, %bb.aau ]
  %.01036.be = phi ptr [ %i.beg, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit2107 ], [ %i.axg, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit2061 ], [ %i.gv, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit ], [ %i.apf, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit1990 ], [ %i.my, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit1772 ], [ %i.afn, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit1907 ], [ %i.asq, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit2021 ], [ %i.bgt, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit2125 ], [ %i.rp, %lean_alloc_ctor.exit1863 ], [ %i.amk, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit1963 ], [ %i.ka, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit1753 ], [ %i.af, %bb.ab ], [ %i.arh, %bb.aav ], [ %i.pv, %bb.jy ], [ %i.rp, %bb.pk ], [ %i.ajj, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit1936 ], [ %i.vm, %bb.nm ], [ %i.aer, %bb.tx ], [ %i.baw, %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit2089 ], [ %i.af, %lean_dec.exit.i.1 ], [ %i.af, %bb.z ], [ %i.af, %bb.aa ], [ %i.pv, %bb.jw ], [ %i.pv, %bb.jx ], [ %i.vm, %bb.nk ], [ %i.vm, %bb.nl ], [ %i.aer, %bb.tv ], [ %i.aer, %bb.tw ], [ %i.arh, %bb.aat ], [ %i.arh, %bb.aau ]
  br label %lean_dec_ref_known.exit

bb.aaw:                                           ; preds = %lean_dec_ref_known.exit2007
  br i1 %i.dk, label %bb.aax, label %bb.aay

bb.aax:                                           ; preds = %bb.aaw
  %i.arx = getelementptr inbounds nuw i8, ptr %.01146.a, i64 8
  store ptr %i.apn, ptr %i.arx, align 8, !tbaa !12
  br label %bb.aba

bb.aay:                                           ; preds = %bb.aaw
  tail call void @lean_inc_heartbeat() #6
  %i.ary = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #6 ; 7 uses
  %i.arz = icmp eq ptr %i.ary, null
  br i1 %i.arz, label %bb.aaz, label %lean_alloc_ctor.exit2018

bb.aaz:                                           ; preds = %bb.aay
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit2018:                         ; preds = %bb.aay
  %i.asa = getelementptr inbounds nuw i8, ptr %i.ary, i64 4
  store i32 1, ptr %i.ary, align 4, !tbaa !9
  store i32 196640, ptr %i.asa, align 4
  %i.asb = getelementptr inbounds nuw i8, ptr %i.ary, i64 8
  store ptr %i.apn, ptr %i.asb, align 8, !tbaa !12
  %i.asc = getelementptr inbounds nuw i8, ptr %i.ary, i64 16
  store ptr %i.dh, ptr %i.asc, align 8, !tbaa !12
  %i.asd = getelementptr inbounds nuw i8, ptr %i.ary, i64 24
  store ptr %i.dj, ptr %i.asd, align 8, !tbaa !12
  br label %bb.aba

bb.aba:                                           ; preds = %lean_alloc_ctor.exit2018, %bb.aax
  %.01141.a = phi ptr [ %.01146.a, %bb.aax ], [ %i.ary, %lean_alloc_ctor.exit2018 ] ; 2 uses
  br i1 %i.cp, label %bb.abb, label %bb.abc

bb.abb:                                           ; preds = %bb.aba
  %i.ase = getelementptr inbounds nuw i8, ptr %.01142, i64 8
  store ptr %.01141.a, ptr %i.ase, align 8, !tbaa !12
  br label %bb.abe

bb.abc:                                           ; preds = %bb.aba
  tail call void @lean_inc_heartbeat() #6
  %i.asf = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.asg = icmp eq ptr %i.asf, null
  br i1 %i.asg, label %bb.abd, label %lean_alloc_ctor.exit2019

bb.abd:                                           ; preds = %bb.abc
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit2019:                         ; preds = %bb.abc
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asf, i64 4
  store i32 1, ptr %i.asf, align 4, !tbaa !9
  store i32 16908312, ptr %i.ash, align 4
  %i.asi = getelementptr inbounds nuw i8, ptr %i.asf, i64 8
  store ptr %.01141.a, ptr %i.asi, align 8, !tbaa !12
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asf, i64 16
  store ptr %i.co, ptr %i.asj, align 8, !tbaa !12
  br label %bb.abe

bb.abe:                                           ; preds = %lean_alloc_ctor.exit2019, %bb.abb
  %.01140 = phi ptr [ %.01142, %bb.abb ], [ %i.asf, %lean_alloc_ctor.exit2019 ]
  tail call void @lean_inc_heartbeat() #6
  %i.ask = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #6 ; 7 uses
  %i.asl = icmp eq ptr %i.ask, null
  br i1 %i.asl, label %bb.abf, label %lean_alloc_ctor.exit.i2020

bb.abf:                                           ; preds = %bb.abe
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit.i2020:                       ; preds = %bb.abe
  %i.asm = getelementptr inbounds nuw i8, ptr %i.ask, i64 4
  %i.asn = getelementptr inbounds nuw i8, ptr %i.ask, i64 24 ; 2 uses
  store i64 0, ptr %i.asn, align 8, !tbaa !16
  store i32 1, ptr %i.ask, align 8, !tbaa !9
  store i32 131104, ptr %i.asm, align 4
  %i.aso = getelementptr inbounds nuw i8, ptr %i.ask, i64 8
  store ptr %i.cc, ptr %i.aso, align 8, !tbaa !12
  %i.asp = getelementptr inbounds nuw i8, ptr %i.ask, i64 16
  store ptr %.01140, ptr %i.asp, align 8, !tbaa !12
  store i8 %i.cj, ptr %i.asn, align 8, !tbaa !21
  tail call void @lean_inc_heartbeat() #6
  %i.asq = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.asr = icmp eq ptr %i.asq, null
  br i1 %i.asr, label %bb.abg, label %l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit2021

bb.abg:                                           ; preds = %lean_alloc_ctor.exit.i2020
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___lam__0.exit2021: ; preds = %lean_alloc_ctor.exit.i2020
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asq, i64 4
  store i32 1, ptr %i.asq, align 4, !tbaa !9
  store i32 16908312, ptr %i.ass, align 4
  %i.ast = getelementptr inbounds nuw i8, ptr %i.asq, i64 8
  store ptr %i.ask, ptr %i.ast, align 8, !tbaa !12
  %i.asu = getelementptr inbounds nuw i8, ptr %i.asq, i64 16
  store ptr %i.bm, ptr %i.asu, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit.backedge

bb.abh:                                           ; preds = %lean_obj_tag.exit1708
  %i.asv = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.asw = load ptr, ptr %i.asv, align 8, !tbaa !12 ; 5 uses
  %i.asx = ptrtoint ptr %i.asw to i64
  %i.asy = and i64 %i.asx, 1
  %.not.i1255 = icmp eq i64 %i.asy, 0
  br i1 %.not.i1255, label %bb.abi, label %lean_inc.exit1256

bb.abi:                                           ; preds = %bb.abh
  %.val.i.i2022 = load i32, ptr %i.asw, align 4, !tbaa !9 ; 3 uses
  %i.asz = icmp sgt i32 %.val.i.i2022, 0
  br i1 %i.asz, label %bb.abj, label %bb.abk, !prof !11

bb.abj:                                           ; preds = %bb.abi
  %i.ata = add nuw i32 %.val.i.i2022, 1
  store i32 %i.ata, ptr %i.asw, align 4, !tbaa !9
  br label %lean_inc.exit1256

bb.abk:                                           ; preds = %bb.abi
  %.not.i.i2023 = icmp eq i32 %.val.i.i2022, 0
  br i1 %.not.i.i2023, label %lean_inc.exit1256, label %bb.abl

bb.abl:                                           ; preds = %bb.abk
  %i.atb = atomicrmw sub ptr %i.asw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1256

lean_inc.exit1256:                                ; preds = %bb.abl, %bb.abk, %bb.abj, %bb.abh
  %i.atc = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.atd = load ptr, ptr %i.atc, align 8, !tbaa !12 ; 6 uses
  %i.ate = ptrtoint ptr %i.atd to i64
  %i.atf = and i64 %i.ate, 1
  %.not.i1253 = icmp eq i64 %i.atf, 0
  br i1 %.not.i1253, label %bb.abm, label %lean_inc.exit1254

bb.abm:                                           ; preds = %lean_inc.exit1256
  %.val.i.i2025 = load i32, ptr %i.atd, align 4, !tbaa !9 ; 3 uses
  %i.atg = icmp sgt i32 %.val.i.i2025, 0
  br i1 %i.atg, label %bb.abn, label %bb.abo, !prof !11

bb.abn:                                           ; preds = %bb.abm
  %i.ath = add nuw i32 %.val.i.i2025, 1
  store i32 %i.ath, ptr %i.atd, align 4, !tbaa !9
  br label %lean_inc.exit1254

bb.abo:                                           ; preds = %bb.abm
  %.not.i.i2026 = icmp eq i32 %.val.i.i2025, 0
  br i1 %.not.i.i2026, label %lean_inc.exit1254, label %bb.abp

bb.abp:                                           ; preds = %bb.abo
  %i.ati = atomicrmw sub ptr %i.atd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1254

lean_inc.exit1254:                                ; preds = %bb.abp, %bb.abo, %bb.abn, %lean_inc.exit1256
  %.val.i2028 = load i32, ptr %i.df, align 8, !tbaa !9 ; 4 uses
  %i.atj = icmp eq i32 %.val.i2028, 1
  br i1 %i.atj, label %.preheader.i2031.preheader, label %bb.aby

.preheader.i2031.preheader:                       ; preds = %lean_inc.exit1254
  %i.atk = load ptr, ptr %i.asv, align 8, !tbaa !12 ; 4 uses
  %i.atl = ptrtoint ptr %i.atk to i64
  %i.atm = and i64 %i.atl, 1
  %.not.i7.i2033 = icmp eq i64 %i.atm, 0
  br i1 %.not.i7.i2033, label %bb.abq, label %lean_dec.exit.i2034

bb.abq:                                           ; preds = %.preheader.i2031.preheader
  %i.atn = load i32, ptr %i.atk, align 4, !tbaa !9 ; 3 uses
  %i.ato = icmp sgt i32 %i.atn, 1
  br i1 %i.ato, label %bb.abr, label %bb.abs, !prof !11

bb.abr:                                           ; preds = %bb.abq
  %i.atp = add nsw i32 %i.atn, -1
  store i32 %i.atp, ptr %i.atk, align 4, !tbaa !9
  br label %lean_dec.exit.i2034

bb.abs:                                           ; preds = %bb.abq
  %.not.i.i.i2038 = icmp eq i32 %i.atn, 0
  br i1 %.not.i.i.i2038, label %lean_dec.exit.i2034, label %bb.abt

bb.abt:                                           ; preds = %bb.abs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.atk) #6
  br label %lean_dec.exit.i2034

lean_dec.exit.i2034:                              ; preds = %bb.abt, %bb.abs, %bb.abr, %.preheader.i2031.preheader
  %i.atq = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.atr = load ptr, ptr %i.atq, align 8, !tbaa !12 ; 4 uses
  %i.ats = ptrtoint ptr %i.atr to i64
  %i.att = and i64 %i.ats, 1
  %.not.i7.i2033.1 = icmp eq i64 %i.att, 0
  br i1 %.not.i7.i2033.1, label %bb.abu, label %lean_dec.exit.i2034.1

bb.abu:                                           ; preds = %lean_dec.exit.i2034
  %i.atu = load i32, ptr %i.atr, align 4, !tbaa !9 ; 3 uses
  %i.atv = icmp sgt i32 %i.atu, 1
  br i1 %i.atv, label %bb.abx, label %bb.abv, !prof !11

bb.abv:                                           ; preds = %bb.abu
  %.not.i.i.i2038.1 = icmp eq i32 %i.atu, 0
  br i1 %.not.i.i.i2038.1, label %lean_dec.exit.i2034.1, label %bb.abw
end_hunk_2
