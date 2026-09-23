Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Proof?download=true
inline.NumInlined: 7358
inline.NumDeleted: 83
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumUnrolled: 76
begin_hunk_0_@l___private_Lean_Meta_Tactic_Grind_Arith_Cutsat_Proof_0__Int_Linear_Poly_denoteExprUsingCurrVars___boxed:bb.a
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #11
  br label %lean_dec.exit35

lean_dec.exit35:                                  ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit60
  %i.o = load i32, ptr %9, align 4, !tbaa !16     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !10

bb.m:                                             ; preds = %lean_dec.exit35
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %9, align 4, !tbaa !16
  br label %lean_dec_ref.exit58

bb.n:                                             ; preds = %lean_dec.exit35
  %.not.i57 = icmp eq i32 %i.o, 0
  br i1 %.not.i57, label %lean_dec_ref.exit58, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #11
  br label %lean_dec_ref.exit58

lean_dec_ref.exit58:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.r = ptrtoint ptr %8 to i64
  %i.s = and i64 %i.r, 1
  %.not.i32 = icmp eq i64 %i.s, 0
  br i1 %.not.i32, label %bb.p, label %lean_dec.exit33

bb.p:                                             ; preds = %lean_dec_ref.exit58
  %i.t = load i32, ptr %8, align 4, !tbaa !16     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.q, label %bb.r, !prof !10

bb.q:                                             ; preds = %bb.p
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %8, align 4, !tbaa !16
  br label %lean_dec.exit33

bb.r:                                             ; preds = %bb.p
  %.not.i41 = icmp eq i32 %i.t, 0
  br i1 %.not.i41, label %lean_dec.exit33, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #11
  br label %lean_dec.exit33

lean_dec.exit33:                                  ; preds = %bb.s, %bb.r, %bb.q, %lean_dec_ref.exit58
  %i.w = load i32, ptr %7, align 4, !tbaa !16     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.t, label %bb.u, !prof !10

bb.t:                                             ; preds = %lean_dec.exit33
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %7, align 4, !tbaa !16
  br label %lean_dec_ref.exit56

bb.u:                                             ; preds = %lean_dec.exit33
  %.not.i55 = icmp eq i32 %i.w, 0
  br i1 %.not.i55, label %lean_dec_ref.exit56, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #11
  br label %lean_dec_ref.exit56

lean_dec_ref.exit56:                              ; preds = %bb.t, %bb.u, %bb.v
  %i.z = ptrtoint ptr %6 to i64
  %i.aa = and i64 %i.z, 1
  %.not.i30 = icmp eq i64 %i.aa, 0
  br i1 %.not.i30, label %bb.w, label %lean_dec.exit31

bb.w:                                             ; preds = %lean_dec_ref.exit56
  %i.ab = load i32, ptr %6, align 4, !tbaa !16    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.x, label %bb.y, !prof !10

bb.x:                                             ; preds = %bb.w
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %6, align 4, !tbaa !16
  br label %lean_dec.exit31

bb.y:                                             ; preds = %bb.w
  %.not.i43 = icmp eq i32 %i.ab, 0
  br i1 %.not.i43, label %lean_dec.exit31, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #11
  br label %lean_dec.exit31

lean_dec.exit31:                                  ; preds = %bb.z, %bb.y, %bb.x, %lean_dec_ref.exit56
  %i.ae = load i32, ptr %5, align 4, !tbaa !16    ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %bb.aa, label %bb.ab, !prof !10

bb.aa:                                            ; preds = %lean_dec.exit31
  %i.ag = add nsw i32 %i.ae, -1
  store i32 %i.ag, ptr %5, align 4, !tbaa !16
  br label %lean_dec_ref.exit54

bb.ab:                                            ; preds = %lean_dec.exit31
  %.not.i53 = icmp eq i32 %i.ae, 0
  br i1 %.not.i53, label %lean_dec_ref.exit54, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #11
  br label %lean_dec_ref.exit54

lean_dec_ref.exit54:                              ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.ah = ptrtoint ptr %4 to i64
  %i.ai = and i64 %i.ah, 1
  %.not.i28 = icmp eq i64 %i.ai, 0
  br i1 %.not.i28, label %bb.ad, label %lean_dec.exit29

bb.ad:                                            ; preds = %lean_dec_ref.exit54
  %i.aj = load i32, ptr %4, align 4, !tbaa !16    ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %bb.ae, label %bb.af, !prof !10

bb.ae:                                            ; preds = %bb.ad
  %i.al = add nsw i32 %i.aj, -1
  store i32 %i.al, ptr %4, align 4, !tbaa !16
  br label %lean_dec.exit29

bb.af:                                            ; preds = %bb.ad
  %.not.i45 = icmp eq i32 %i.aj, 0
  br i1 %.not.i45, label %lean_dec.exit29, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #11
  br label %lean_dec.exit29

lean_dec.exit29:                                  ; preds = %bb.ag, %bb.af, %bb.ae, %lean_dec_ref.exit54
  %i.am = ptrtoint ptr %3 to i64
  %i.an = and i64 %i.am, 1
  %.not.i26 = icmp eq i64 %i.an, 0
  br i1 %.not.i26, label %bb.ah, label %lean_dec.exit27

bb.ah:                                            ; preds = %lean_dec.exit29
  %i.ao = load i32, ptr %3, align 4, !tbaa !16    ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %bb.ai, label %bb.aj, !prof !10

bb.ai:                                            ; preds = %bb.ah
  %i.aq = add nsw i32 %i.ao, -1
  store i32 %i.aq, ptr %3, align 4, !tbaa !16
  br label %lean_dec.exit27

bb.aj:                                            ; preds = %bb.ah
  %.not.i47 = icmp eq i32 %i.ao, 0
  br i1 %.not.i47, label %lean_dec.exit27, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #11
  br label %lean_dec.exit27

lean_dec.exit27:                                  ; preds = %bb.ak, %bb.aj, %bb.ai, %lean_dec.exit29
  %i.ar = ptrtoint ptr %2 to i64
  %i.as = and i64 %i.ar, 1
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %bb.al, label %lean_dec.exit

bb.al:                                            ; preds = %lean_dec.exit27
  %i.at = load i32, ptr %2, align 4, !tbaa !16    ; 3 uses
  %i.au = icmp sgt i32 %i.at, 1
  br i1 %i.au, label %bb.am, label %bb.an, !prof !10

bb.am:                                            ; preds = %bb.al
  %i.av = add nsw i32 %i.at, -1
  store i32 %i.av, ptr %2, align 4, !tbaa !16
  br label %lean_dec.exit

bb.an:                                            ; preds = %bb.al
  %.not.i49 = icmp eq i32 %i.at, 0
  br i1 %.not.i49, label %lean_dec.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #11
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.ao, %bb.an, %bb.am, %lean_dec.exit27
  %i.aw = load i32, ptr %1, align 4, !tbaa !16    ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %bb.ap, label %bb.aq, !prof !10

bb.ap:                                            ; preds = %lean_dec.exit
  %i.ay = add nsw i32 %i.aw, -1
  store i32 %i.ay, ptr %1, align 4, !tbaa !16
  br label %lean_dec_ref.exit52

bb.aq:                                            ; preds = %lean_dec.exit
  %.not.i51 = icmp eq i32 %i.aw, 0
  br i1 %.not.i51, label %lean_dec_ref.exit52, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #11
  br label %lean_dec_ref.exit52

lean_dec_ref.exit52:                              ; preds = %bb.ap, %bb.aq, %bb.ar
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define nonnull ptr @l___private_Lean_Meta_Tactic_Grind_Arith_Cutsat_Proof_0__Lean_Meta_Grind_Arith_Cutsat_MulEqProof_ctorIdx(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %switch.selectcmp = icmp eq i32 %.0.i, 1
  %switch.select = select i1 %switch.selectcmp, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp5 = icmp eq i32 %.0.i, 0
  %switch.select6 = select i1 %switch.selectcmp5, ptr inttoptr (i64 1 to ptr), ptr %switch.select
  ret ptr %switch.select6
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Lean_Meta_Tactic_Grind_Arith_Cutsat_Proof_0__Lean_Meta_Grind_Arith_Cutsat_MulEqProof_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_dec.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i, 24                   ; 3 uses
  %1 = load i32, ptr %0, align 4, !tbaa !16       ; 3 uses
  %2 = icmp sgt i32 %1, 1
  br i1 %2, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %1, -1
  store i32 %i.g, ptr %0, align 4, !tbaa !16
  br label %lean_dec.exit

bb.e:                                             ; preds = %bb.c
  %.not.i3 = icmp eq i32 %1, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #11
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.b, %bb.f, %bb.e, %bb.d
  %.0.i.i5 = phi i32 [ %i.f, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ], [ %i.d, %bb.b ] ; 2 uses
  %switch.selectcmp5.i = icmp eq i32 %.0.i.i5, 0
  %switch.selectcmp.i = icmp eq i32 %.0.i.i5, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.select6.i = select i1 %switch.selectcmp5.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select6.i
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_Arith_Cutsat_Proof_0__Lean_Meta_Grind_Arith_Cutsat_MulEqProof_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i26 = icmp eq i64 %i.b, 0
  br i1 %.not.i26, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  switch i32 %.0.i, label %bb.ay [
    i32 0, label %bb.d
    i32 1, label %bb.x
  ]

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12   ; 5 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, 1
  %.not.i24 = icmp eq i64 %i.j, 0
  br i1 %.not.i24, label %bb.e, label %lean_inc.exit25

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %i.h, align 4, !tbaa !16 ; 3 uses
  %i.k = icmp sgt i32 %.val.i.i, 0
  br i1 %i.k, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw i32 %.val.i.i, 1
  store i32 %i.l, ptr %i.h, align 4, !tbaa !16
  br label %lean_inc.exit25

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit25, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit25

lean_inc.exit25:                                  ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12   ; 4 uses
  %.val.i.i27 = load i32, ptr %i.o, align 4, !tbaa !16 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i27, 0
  br i1 %i.p, label %bb.i, label %bb.j, !prof !10

bb.i:                                             ; preds = %lean_inc.exit25
  %i.q = add nuw i32 %.val.i.i27, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !16
  br label %lean_inc_ref.exit29

bb.j:                                             ; preds = %lean_inc.exit25
  %.not.i.i28 = icmp eq i32 %.val.i.i27, 0
  br i1 %.not.i.i28, label %lean_inc_ref.exit29, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = atomicrmw sub ptr %i.o, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit29

lean_inc_ref.exit29:                              ; preds = %bb.i, %bb.j, %bb.k
  %.val.i30 = load i32, ptr %0, align 8, !tbaa !16 ; 4 uses
  %i.s = icmp eq i32 %.val.i30, 1
  br i1 %i.s, label %.preheader.i.preheader, label %bb.t

.preheader.i.preheader:                           ; preds = %lean_inc_ref.exit29
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !12   ; 4 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 1
  %.not.i.i31 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i31, label %bb.l, label %lean_dec.exit.i

bb.l:                                             ; preds = %.preheader.i.preheader
  %i.w = load i32, ptr %i.t, align 4, !tbaa !16   ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.m, label %bb.n, !prof !10

bb.m:                                             ; preds = %bb.l
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %i.t, align 4, !tbaa !16
  br label %lean_dec.exit.i

bb.n:                                             ; preds = %bb.l
  %.not.i7.i = icmp eq i32 %i.w, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.t) #11
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.o, %bb.n, %bb.m, %.preheader.i.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !12  ; 4 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = and i64 %i.ab, 1
  %.not.i.i31.1 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i31.1, label %bb.p, label %lean_dec.exit.i.1

bb.p:                                             ; preds = %lean_dec.exit.i
  %i.ad = load i32, ptr %i.aa, align 4, !tbaa !16 ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.s, label %bb.q, !prof !10

bb.q:                                             ; preds = %bb.p
  %.not.i7.i.1 = icmp eq i32 %i.ad, 0
  br i1 %.not.i7.i.1, label %lean_dec.exit.i.1, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa) #11
  br label %lean_dec.exit.i.1

bb.s:                                             ; preds = %bb.p
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !16
  br label %lean_dec.exit.i.1

lean_dec.exit.i.1:                                ; preds = %bb.s, %bb.r, %bb.q, %lean_dec.exit.i
  tail call void @lean_free_object(ptr noundef nonnull %0) #11
  br label %lean_dec_ref_known.exit

bb.t:                                             ; preds = %lean_inc_ref.exit29
  %i.ag = icmp sgt i32 %.val.i30, 1
  br i1 %i.ag, label %bb.u, label %bb.v, !prof !10

bb.u:                                             ; preds = %bb.t
  %i.ah = add nsw i32 %.val.i30, -1
  store i32 %i.ah, ptr %0, align 8, !tbaa !16
  br label %lean_dec_ref_known.exit

bb.v:                                             ; preds = %bb.t
  %.not.i8.i = icmp eq i32 %.val.i30, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #11
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i.1, %bb.u, %bb.v, %bb.w
  %i.ai = tail call ptr @lean_apply_2(ptr noundef %1, ptr noundef %i.h, ptr noundef nonnull %i.o) #11
  br label %bb.ay

bb.x:                                             ; preds = %lean_obj_tag.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !12 ; 5 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = and i64 %i.al, 1
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %bb.y, label %lean_inc.exit

bb.y:                                             ; preds = %bb.x
  %.val.i.i32 = load i32, ptr %i.ak, align 4, !tbaa !16 ; 3 uses
  %i.an = icmp sgt i32 %.val.i.i32, 0
  br i1 %i.an, label %bb.z, label %bb.aa, !prof !10

bb.z:                                             ; preds = %bb.y
  %i.ao = add nuw i32 %.val.i.i32, 1
  store i32 %i.ao, ptr %i.ak, align 4, !tbaa !16
  br label %lean_inc.exit

bb.aa:                                            ; preds = %bb.y
  %.not.i.i33 = icmp eq i32 %.val.i.i32, 0
  br i1 %.not.i.i33, label %lean_inc.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ap = atomicrmw sub ptr %i.ak, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !12 ; 4 uses
  %.val.i.i35 = load i32, ptr %i.ar, align 4, !tbaa !16 ; 3 uses
  %i.as = icmp sgt i32 %.val.i.i35, 0
  br i1 %i.as, label %bb.ac, label %bb.ad, !prof !10

bb.ac:                                            ; preds = %lean_inc.exit
  %i.at = add nuw i32 %.val.i.i35, 1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !16
  br label %lean_inc_ref.exit37

bb.ad:                                            ; preds = %lean_inc.exit
  %.not.i.i36 = icmp eq i32 %.val.i.i35, 0
  br i1 %.not.i.i36, label %lean_inc_ref.exit37, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.au = atomicrmw sub ptr %i.ar, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit37
end_hunk_0
