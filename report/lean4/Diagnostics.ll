inline.NumInlined: 1359
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@l_Lean_log___at___00Lean_logInfo___at___00Lean_Meta_Simp_reportDiag_spec__0_spec__0___boxed:bb.a
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %3, align 4, !tbaa !11
  br label %lean_dec_ref.exit19

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i18 = icmp eq i32 %i.w, 0
  br i1 %.not.i18, label %lean_dec_ref.exit19, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #5
  br label %lean_dec_ref.exit19

lean_dec_ref.exit19:                              ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l_Lean_logInfo___at___00Lean_Meta_Simp_reportDiag_spec__0(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = tail call noundef nonnull ptr @l_Lean_logAt___at___00Lean_log___at___00Lean_logInfo___at___00Lean_Meta_Simp_reportDiag_spec__0_spec__0_spec__1(ptr noundef %i.b, ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef readonly %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4)
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l_Lean_logInfo___at___00Lean_Meta_Simp_reportDiag_spec__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = tail call noundef nonnull ptr @l_Lean_logAt___at___00Lean_log___at___00Lean_logInfo___at___00Lean_Meta_Simp_reportDiag_spec__0_spec__0_spec__1(ptr noundef %i.b, ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef readonly %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4)
  %i.d = ptrtoint ptr %4 to i64
  %i.e = and i64 %i.d, 1
  %.not.i10 = icmp eq i64 %i.e, 0
  br i1 %.not.i10, label %bb.b, label %lean_dec.exit11

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %4, align 4, !tbaa !11     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %4, align 4, !tbaa !11
  br label %lean_dec.exit11

bb.d:                                             ; preds = %bb.b
  %.not.i12 = icmp eq i32 %i.f, 0
  br i1 %.not.i12, label %lean_dec.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #5
  br label %lean_dec.exit11

lean_dec.exit11:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.i = load i32, ptr %3, align 8, !tbaa !11     ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_dec.exit11
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %3, align 8, !tbaa !11
  br label %lean_dec_ref.exit18

bb.g:                                             ; preds = %lean_dec.exit11
  %.not.i17 = icmp eq i32 %i.i, 0
  br i1 %.not.i17, label %lean_dec_ref.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #5
  br label %lean_dec_ref.exit18

lean_dec_ref.exit18:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.l = ptrtoint ptr %2 to i64
  %i.m = and i64 %i.l, 1
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit18
  %i.n = load i32, ptr %2, align 4, !tbaa !11     ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %2, align 4, !tbaa !11
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i13 = icmp eq i32 %i.n, 0
  br i1 %.not.i13, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit18
  %i.q = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %lean_dec.exit
  %i.s = add nsw i32 %i.q, -1
  store i32 %i.s, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit16

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i15 = icmp eq i32 %i.q, 0
  br i1 %.not.i15, label %lean_dec_ref.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec_ref.exit16

lean_dec_ref.exit16:                              ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_Simp_reportDiag___lam__0(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Meta_Simp_mkDiagMessages(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) ; 12 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i90 = icmp eq i64 %i.c, 0                 ; 3 uses
  br i1 %.not.i90, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = trunc i64 %i.d to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val.i = load i32, ptr %i.f, align 4
  %i.g = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i91 = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = icmp eq i32 %.0.i91, 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9    ; 14 uses
  %.val88 = load i32, ptr %i.a, align 8, !tbaa !11
  %i.k = icmp eq i32 %.val88, 1                   ; 3 uses
  br i1 %i.h, label %bb.d, label %bb.ac

bb.d:                                             ; preds = %lean_obj_tag.exit
  br i1 %i.k, label %lean_nat_eq.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = and i64 %i.l, 1
  %.not.i80 = icmp eq i64 %i.m, 0
  br i1 %.not.i80, label %bb.f, label %lean_inc.exit81

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !11 ; 3 uses
  %i.n = icmp sgt i32 %.val.i.i, 0
  br i1 %i.n, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.o = add nuw i32 %.val.i.i, 1
  store i32 %i.o, ptr %i.j, align 4, !tbaa !11
  br label %lean_inc.exit81

bb.h:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit81, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit81

lean_inc.exit81:                                  ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i90, label %bb.j, label %lean_nat_eq.exit

bb.j:                                             ; preds = %lean_inc.exit81
  %i.q = load i32, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.s = add nsw i32 %i.q, -1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !11
  br label %lean_nat_eq.exit

bb.l:                                             ; preds = %bb.j
  %.not.i82 = icmp eq i32 %i.q, 0
  br i1 %.not.i82, label %lean_nat_eq.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #5
  br label %lean_nat_eq.exit

lean_nat_eq.exit:                                 ; preds = %bb.d, %bb.m, %bb.l, %bb.k, %lean_inc.exit81
  %.070 = phi ptr [ %i.a, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ], [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %lean_inc.exit81 ] ; 4 uses
  %i.t = getelementptr i8, ptr %i.j, i64 8
  %.val89 = load i64, ptr %i.t, align 8, !tbaa !16
  %.mask = and i64 %.val89, 9223372036854775807
  %i.u = icmp eq i64 %.mask, 0                    ; 2 uses
  %5 = zext i1 %i.u to i8
  br i1 %i.u, label %bb.v, label %bb.n

bb.n:                                             ; preds = %lean_nat_eq.exit
  %i.v = ptrtoint ptr %.070 to i64
  %i.w = and i64 %i.v, 1
  %.not.i92 = icmp eq i64 %i.w, 0
  br i1 %.not.i92, label %bb.o, label %lean_del_object.exit

bb.o:                                             ; preds = %bb.n
  tail call void @lean_free_object(ptr noundef nonnull %.070) #5
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.n, %bb.o
  %i.x = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_Meta_Simp_mkSimpDiagSummary_spec__3___redArg___closed__3_once seq_cst, align 4, !tbaa !14
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %lean_del_object.exit
  %i.z = load double, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_Meta_Simp_mkSimpDiagSummary_spec__3___redArg___closed__3, align 8, !tbaa !24
  br label %lean_float_once.exit

bb.q:                                             ; preds = %lean_del_object.exit
  %i.aa = tail call double @lean_float_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_Meta_Simp_mkSimpDiagSummary_spec__3___redArg___closed__3, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_Meta_Simp_mkSimpDiagSummary_spec__3___redArg___closed__3_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_Meta_Simp_mkSimpDiagSummary_spec__3___redArg___closed__3) #5
  br label %lean_float_once.exit

lean_float_once.exit:                             ; preds = %bb.p, %bb.q
  %.0.i93 = phi double [ %i.z, %bb.p ], [ %i.aa, %bb.q ] ; 2 uses
  tail call void @lean_inc_heartbeat() #5
  %i.ab = tail call noalias ptr @mi_malloc_small(i64 noundef 56) #5 ; 10 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.r, label %lean_alloc_ctor.exit

bb.r:                                             ; preds = %lean_float_once.exit
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_float_once.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !16
  store i32 1, ptr %i.ab, align 8, !tbaa !11
  store i32 196664, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_Meta_Simp_mkSimpDiagSummary_spec__3___redArg___closed__2_value, ptr %i.af, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.ag, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_Meta_Simp_mkSimpDiagSummary_spec__3___redArg___closed__4_value, ptr %i.ah, align 8, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store double %.0.i93, ptr %i.ai, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store double %.0.i93, ptr %i.aj, align 8, !tbaa !24
  store i8 %5, ptr %i.ae, align 8, !tbaa !23
  %i.ak = load atomic i32, ptr @l_Lean_Meta_Simp_reportDiag___lam__0___closed__2_once seq_cst, align 4, !tbaa !14
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.s, label %bb.t, !prof !13

bb.s:                                             ; preds = %lean_alloc_ctor.exit
  %i.am = load ptr, ptr @l_Lean_Meta_Simp_reportDiag___lam__0___closed__2, align 8, !tbaa !9
  br label %lean_obj_once.exit

bb.t:                                             ; preds = %lean_alloc_ctor.exit
  %i.an = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Meta_Simp_reportDiag___lam__0___closed__2, ptr noundef nonnull @l_Lean_Meta_Simp_reportDiag___lam__0___closed__2_once, ptr noundef nonnull @_init_l_Lean_Meta_Simp_reportDiag___lam__0___closed__2) #5
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.s, %bb.t
  %.0.i94 = phi ptr [ %i.am, %bb.s ], [ %i.an, %bb.t ]
  tail call void @lean_inc_heartbeat() #5
  %i.ao = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #5 ; 7 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.u, label %lean_alloc_ctor.exit95

bb.u:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit95:                           ; preds = %lean_obj_once.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 1, ptr %i.ao, align 4, !tbaa !11
  store i32 151191584, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ab, ptr %i.ar, align 8, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %.0.i94, ptr %i.as, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.j, ptr %i.at, align 8, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !9
  %i.aw = tail call noundef nonnull ptr @l_Lean_logAt___at___00Lean_log___at___00Lean_logInfo___at___00Lean_Meta_Simp_reportDiag_spec__0_spec__0_spec__1(ptr noundef %i.av, ptr noundef nonnull %i.ao, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef readonly %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4)
  br label %lean_dec.exit

bb.v:                                             ; preds = %lean_nat_eq.exit
  %i.ax = load i32, ptr %i.j, align 8, !tbaa !11  ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %bb.v
  %i.az = add nsw i32 %i.ax, -1
  store i32 %i.az, ptr %i.j, align 8, !tbaa !11
  br label %lean_dec.exit76

bb.x:                                             ; preds = %bb.v
  %.not.i83 = icmp eq i32 %i.ax, 0
  br i1 %.not.i83, label %lean_dec.exit76, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #5
  br label %lean_dec.exit76

lean_dec.exit76:                                  ; preds = %bb.y, %bb.x, %bb.w
  br i1 %i.k, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %lean_dec.exit76
  %i.ba = getelementptr inbounds nuw i8, ptr %.070, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ba, align 8, !tbaa !9
  br label %lean_dec.exit

bb.aa:                                            ; preds = %lean_dec.exit76
  tail call void @lean_inc_heartbeat() #5
  %i.bb = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.ab, label %lean_alloc_ctor.exit96

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit96:                           ; preds = %bb.aa
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 1, ptr %i.bb, align 4, !tbaa !11
  store i32 65552, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.be, align 8, !tbaa !9
  br label %lean_dec.exit

bb.ac:                                            ; preds = %lean_obj_tag.exit
  br i1 %i.k, label %lean_dec.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bf = ptrtoint ptr %i.j to i64
  %i.bg = and i64 %i.bf, 1
  %.not.i79 = icmp eq i64 %i.bg, 0
  br i1 %.not.i79, label %bb.ae, label %lean_inc.exit

bb.ae:                                            ; preds = %bb.ad
  %.val.i.i97 = load i32, ptr %i.j, align 4, !tbaa !11 ; 3 uses
  %i.bh = icmp sgt i32 %.val.i.i97, 0
  br i1 %i.bh, label %bb.af, label %bb.ag, !prof !13

bb.af:                                            ; preds = %bb.ae
  %i.bi = add nuw i32 %.val.i.i97, 1
  store i32 %i.bi, ptr %i.j, align 4, !tbaa !11
  br label %lean_inc.exit

bb.ag:                                            ; preds = %bb.ae
  %.not.i.i98 = icmp eq i32 %.val.i.i97, 0
  br i1 %.not.i.i98, label %lean_inc.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bj = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad
  br i1 %.not.i90, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %lean_inc.exit
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !11  ; 3 uses
  %i.bl = icmp sgt i32 %i.bk, 1
  br i1 %i.bl, label %bb.aj, label %bb.ak, !prof !13

bb.aj:                                            ; preds = %bb.ai
  %i.bm = add nsw i32 %i.bk, -1
  store i32 %i.bm, ptr %i.a, align 8, !tbaa !11
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %.not.i85 = icmp eq i32 %i.bk, 0
  br i1 %.not.i85, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #5
  br label %bb.am

bb.am:                                            ; preds = %lean_inc.exit, %bb.aj, %bb.ak, %bb.al
  tail call void @lean_inc_heartbeat() #5
  %i.bn = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.an, label %lean_alloc_ctor.exit100

bb.an:                                            ; preds = %bb.am
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit100:                          ; preds = %bb.am
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 1, ptr %i.bn, align 4, !tbaa !11
  store i32 16842768, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.j, ptr %i.bq, align 8, !tbaa !9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.ac, %lean_alloc_ctor.exit100, %lean_alloc_ctor.exit95, %bb.z, %lean_alloc_ctor.exit96
  %.3 = phi ptr [ %i.bb, %lean_alloc_ctor.exit96 ], [ %i.aw, %lean_alloc_ctor.exit95 ], [ %.070, %bb.z ], [ %i.bn, %lean_alloc_ctor.exit100 ], [ %i.a, %bb.ac ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Lean_Meta_Simp_reportDiag___lam__0___closed__2() #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull @l_Lean_Meta_Simp_reportDiag___lam__0___closed__1_value) #5
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_Simp_reportDiag___lam__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Meta_Simp_reportDiag___lam__0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.b = ptrtoint ptr %4 to i64
  %i.c = and i64 %i.b, 1
  %.not.i11 = icmp eq i64 %i.c, 0
  br i1 %.not.i11, label %bb.b, label %lean_dec.exit12

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 4, !tbaa !11     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %4, align 4, !tbaa !11
  br label %lean_dec.exit12

bb.d:                                             ; preds = %bb.b
  %.not.i13 = icmp eq i32 %i.d, 0
  br i1 %.not.i13, label %lean_dec.exit12, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #5
  br label %lean_dec.exit12

lean_dec.exit12:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !11     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_dec.exit12
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %3, align 4, !tbaa !11
  br label %lean_dec_ref.exit21

bb.g:                                             ; preds = %lean_dec.exit12
  %.not.i20 = icmp eq i32 %i.g, 0
  br i1 %.not.i20, label %lean_dec_ref.exit21, label %bb.h
end_hunk_0
