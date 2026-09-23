Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/MatchCond?download=true
inline.NumInlined: 2269
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@l_Lean_Meta_withLocalDeclD___at___00__private_Lean_Meta_Tactic_Grind_MatchCond_0__Lean_Meta_Grind_collectMatchCondLhssAndAbstract_go_spec__0___redArg___boxed:bb.a
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %lean_dec.exit50
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %11, align 4, !tbaa !10
  br label %lean_dec_ref.exit29

bb.g:                                             ; preds = %lean_dec.exit50
  %.not.i28 = icmp eq i32 %i.g, 0
  br i1 %.not.i28, label %lean_dec_ref.exit29, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %11) #4
  br label %lean_dec_ref.exit29

lean_dec_ref.exit29:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %10 to i64
  %i.k = and i64 %i.j, 1
  %.not.i43 = icmp eq i64 %i.k, 0
  br i1 %.not.i43, label %bb.i, label %lean_dec.exit46

bb.i:                                             ; preds = %lean_dec_ref.exit29
  %i.l = load i32, ptr %10, align 4, !tbaa !10    ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %10, align 4, !tbaa !10
  br label %lean_dec.exit46

bb.k:                                             ; preds = %bb.i
  %.not.i.i44 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i44, label %lean_dec.exit46, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #4
  br label %lean_dec.exit46

lean_dec.exit46:                                  ; preds = %bb.j, %bb.k, %bb.l, %lean_dec_ref.exit29
  %i.o = load i32, ptr %9, align 4, !tbaa !10     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %lean_dec.exit46
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %9, align 4, !tbaa !10
  br label %lean_dec_ref.exit27

bb.n:                                             ; preds = %lean_dec.exit46
  %.not.i26 = icmp eq i32 %i.o, 0
  br i1 %.not.i26, label %lean_dec_ref.exit27, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #4
  br label %lean_dec_ref.exit27

lean_dec_ref.exit27:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.r = ptrtoint ptr %8 to i64
  %i.s = and i64 %i.r, 1
  %.not.i39 = icmp eq i64 %i.s, 0
  br i1 %.not.i39, label %bb.p, label %lean_dec.exit42

bb.p:                                             ; preds = %lean_dec_ref.exit27
  %i.t = load i32, ptr %8, align 4, !tbaa !10     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.q, label %bb.r, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %8, align 4, !tbaa !10
  br label %lean_dec.exit42

bb.r:                                             ; preds = %bb.p
  %.not.i.i40 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i40, label %lean_dec.exit42, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #4
  br label %lean_dec.exit42

lean_dec.exit42:                                  ; preds = %bb.q, %bb.r, %bb.s, %lean_dec_ref.exit27
  %i.w = load i32, ptr %7, align 4, !tbaa !10     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.t, label %bb.u, !prof !11

bb.t:                                             ; preds = %lean_dec.exit42
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %7, align 4, !tbaa !10
  br label %lean_dec_ref.exit25

bb.u:                                             ; preds = %lean_dec.exit42
  %.not.i24 = icmp eq i32 %i.w, 0
  br i1 %.not.i24, label %lean_dec_ref.exit25, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #4
  br label %lean_dec_ref.exit25

lean_dec_ref.exit25:                              ; preds = %bb.t, %bb.u, %bb.v
  %i.z = ptrtoint ptr %6 to i64
  %i.aa = and i64 %i.z, 1
  %.not.i35 = icmp eq i64 %i.aa, 0
  br i1 %.not.i35, label %bb.w, label %lean_dec.exit38

bb.w:                                             ; preds = %lean_dec_ref.exit25
  %i.ab = load i32, ptr %6, align 4, !tbaa !10    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.x, label %bb.y, !prof !11

bb.x:                                             ; preds = %bb.w
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %6, align 4, !tbaa !10
  br label %lean_dec.exit38

bb.y:                                             ; preds = %bb.w
  %.not.i.i36 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i36, label %lean_dec.exit38, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #4
  br label %lean_dec.exit38

lean_dec.exit38:                                  ; preds = %bb.x, %bb.y, %bb.z, %lean_dec_ref.exit25
  %i.ae = load i32, ptr %5, align 4, !tbaa !10    ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %bb.aa, label %bb.ab, !prof !11

bb.aa:                                            ; preds = %lean_dec.exit38
  %i.ag = add nsw i32 %i.ae, -1
  store i32 %i.ag, ptr %5, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.ab:                                            ; preds = %lean_dec.exit38
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #4
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.ah = ptrtoint ptr %4 to i64
  %i.ai = and i64 %i.ah, 1
  %.not.i31 = icmp eq i64 %i.ai, 0
  br i1 %.not.i31, label %bb.ad, label %lean_dec.exit34

bb.ad:                                            ; preds = %lean_dec_ref.exit
  %i.aj = load i32, ptr %4, align 4, !tbaa !10    ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %bb.ae, label %bb.af, !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.al = add nsw i32 %i.aj, -1
  store i32 %i.al, ptr %4, align 4, !tbaa !10
  br label %lean_dec.exit34

bb.af:                                            ; preds = %bb.ad
  %.not.i.i32 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i32, label %lean_dec.exit34, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec.exit34

lean_dec.exit34:                                  ; preds = %bb.ae, %bb.af, %bb.ag, %lean_dec_ref.exit
  %i.am = ptrtoint ptr %3 to i64
  %i.an = and i64 %i.am, 1
  %.not.i30 = icmp eq i64 %i.an, 0
  br i1 %.not.i30, label %bb.ah, label %lean_dec.exit

bb.ah:                                            ; preds = %lean_dec.exit34
  %i.ao = load i32, ptr %3, align 4, !tbaa !10    ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %bb.ai, label %bb.aj, !prof !11

bb.ai:                                            ; preds = %bb.ah
  %i.aq = add nsw i32 %i.ao, -1
  store i32 %i.aq, ptr %3, align 4, !tbaa !10
  br label %lean_dec.exit

bb.aj:                                            ; preds = %bb.ah
  %.not.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.ai, %bb.aj, %bb.ak, %lean_dec.exit34
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_MatchCond_0__Lean_Meta_Grind_collectMatchCondLhssAndAbstract_go___lam__1___boxed(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load <2 x ptr>, ptr %0, align 8, !tbaa !13
  %i.b = load ptr, ptr %0, align 8, !tbaa !13     ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1 = load <2 x ptr>, ptr %i.c, align 8, !tbaa !13
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = load <2 x ptr>, ptr %2, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %4 = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !13   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !13   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !13   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !13 ; 5 uses
  %.val.i.i.i = load i32, ptr %i.h, align 4, !tbaa !10 ; 3 uses
  %i.ac = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.ac, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.ad = add nuw i32 %.val.i.i.i, 1
  store i32 %i.ad, ptr %i.h, align 4, !tbaa !10
  br label %lean_inc_ref.exit.i

bb.c:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_inc_ref.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit.i

lean_inc_ref.exit.i:                              ; preds = %bb.d, %bb.c, %bb.b
  %i.af = ptrtoint ptr %i.b to i64
  %i.ag = and i64 %i.af, 1
  %.not.i.i79 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i79, label %bb.e, label %l___private_Lean_Meta_Tactic_Grind_MatchCond_0__Lean_Meta_Grind_collectMatchCondLhssAndAbstract_go___lam__1.exit

bb.e:                                             ; preds = %lean_inc_ref.exit.i
  %.val.i.i38.i = load i32, ptr %i.b, align 4, !tbaa !10 ; 3 uses
  %i.ah = icmp sgt i32 %.val.i.i38.i, 0
  br i1 %i.ah, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.ai = add nuw i32 %.val.i.i38.i, 1
  store i32 %i.ai, ptr %i.b, align 4, !tbaa !10
  br label %l___private_Lean_Meta_Tactic_Grind_MatchCond_0__Lean_Meta_Grind_collectMatchCondLhssAndAbstract_go___lam__1.exit

bb.g:                                             ; preds = %bb.e
  %.not.i.i39.i = icmp eq i32 %.val.i.i38.i, 0
  br i1 %.not.i.i39.i, label %l___private_Lean_Meta_Tactic_Grind_MatchCond_0__Lean_Meta_Grind_collectMatchCondLhssAndAbstract_go___lam__1.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  br label %l___private_Lean_Meta_Tactic_Grind_MatchCond_0__Lean_Meta_Grind_collectMatchCondLhssAndAbstract_go___lam__1.exit

l___private_Lean_Meta_Tactic_Grind_MatchCond_0__Lean_Meta_Grind_collectMatchCondLhssAndAbstract_go___lam__1.exit: ; preds = %lean_inc_ref.exit.i, %bb.f, %bb.g, %bb.h
  %i.ak = tail call ptr @lean_alloc_object(i64 noundef 104) #4, !inline_history !24 ; 12 uses
  store i32 1, ptr %i.ak, align 4, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = and i32 %i.am, 65535
  %i.ao = or disjoint i32 %i.an, -184549376
  store i32 %i.ao, ptr %i.al, align 4
  %5 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @l___private_Lean_Meta_Tactic_Grind_MatchCond_0__Lean_Meta_Grind_collectMatchCondLhssAndAbstract_go___lam__0___boxed, ptr %5, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i16 22, ptr %i.ap, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 18
  store i16 10, ptr %i.aq, align 2, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store <2 x ptr> %i.a, ptr %i.ar, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr %i.h, ptr %i.as, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store <2 x ptr> %1, ptr %i.at, align 8, !tbaa !13
  %6 = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store <2 x ptr> %3, ptr %6, align 8, !tbaa !13
  %7 = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  store <2 x ptr> %i.e, ptr %7, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  store ptr %4, ptr %i.au, align 8, !tbaa !13
  %i.av = tail call ptr @lean_name_append_index_after(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_MatchCond_0__Lean_Meta_Grind_collectMatchCondLhssAndAbstract_go___lam__1___closed__1_value, ptr noundef %i.b) #4, !inline_history !24
  %i.aw = tail call ptr @l_Lean_Meta_withLocalDecl___at___00Lean_Meta_withLocalDeclD___at___00__private_Lean_Meta_Tactic_Grind_MatchCond_0__Lean_Meta_Grind_collectMatchCondLhssAndAbstract_go_spec__0_spec__0___redArg(ptr noundef %i.av, i8 noundef zeroext 0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.ak, i8 noundef zeroext 0, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t, ptr noundef %i.v, ptr noundef %i.x, ptr noundef %i.z, ptr noundef %i.ab), !inline_history !24
  %i.ax = ptrtoint ptr %i.ab to i64
  %i.ay = and i64 %i.ax, 1
  %.not.i75 = icmp eq i64 %i.ay, 0
  br i1 %.not.i75, label %bb.i, label %lean_dec.exit78

bb.i:                                             ; preds = %l___private_Lean_Meta_Tactic_Grind_MatchCond_0__Lean_Meta_Grind_collectMatchCondLhssAndAbstract_go___lam__1.exit
  %i.az = load i32, ptr %i.ab, align 4, !tbaa !10 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %i.ab, align 4, !tbaa !10
  br label %lean_dec.exit78

bb.k:                                             ; preds = %bb.i
  %.not.i.i76 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i76, label %lean_dec.exit78, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #4
  br label %lean_dec.exit78

lean_dec.exit78:                                  ; preds = %bb.j, %bb.k, %bb.l, %l___private_Lean_Meta_Tactic_Grind_MatchCond_0__Lean_Meta_Grind_collectMatchCondLhssAndAbstract_go___lam__1.exit
  %i.bc = load i32, ptr %i.z, align 4, !tbaa !10  ; 3 uses
  %i.bd = icmp sgt i32 %i.bc, 1
  br i1 %i.bd, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %lean_dec.exit78
  %i.be = add nsw i32 %i.bc, -1
  store i32 %i.be, ptr %i.z, align 4, !tbaa !10
  br label %lean_dec_ref.exit57

bb.n:                                             ; preds = %lean_dec.exit78
  %.not.i56 = icmp eq i32 %i.bc, 0
  br i1 %.not.i56, label %lean_dec_ref.exit57, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.z) #4
  br label %lean_dec_ref.exit57

lean_dec_ref.exit57:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.bf = ptrtoint ptr %i.x to i64
  %i.bg = and i64 %i.bf, 1
  %.not.i71 = icmp eq i64 %i.bg, 0
  br i1 %.not.i71, label %bb.p, label %lean_dec.exit74

bb.p:                                             ; preds = %lean_dec_ref.exit57
  %i.bh = load i32, ptr %i.x, align 4, !tbaa !10  ; 3 uses
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %bb.q, label %bb.r, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.bj = add nsw i32 %i.bh, -1
  store i32 %i.bj, ptr %i.x, align 4, !tbaa !10
  br label %lean_dec.exit74

bb.r:                                             ; preds = %bb.p
  %.not.i.i72 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i72, label %lean_dec.exit74, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.x) #4
  br label %lean_dec.exit74

lean_dec.exit74:                                  ; preds = %bb.q, %bb.r, %bb.s, %lean_dec_ref.exit57
  %i.bk = load i32, ptr %i.v, align 4, !tbaa !10  ; 3 uses
  %i.bl = icmp sgt i32 %i.bk, 1
  br i1 %i.bl, label %bb.t, label %bb.u, !prof !11

bb.t:                                             ; preds = %lean_dec.exit74
  %i.bm = add nsw i32 %i.bk, -1
  store i32 %i.bm, ptr %i.v, align 4, !tbaa !10
  br label %lean_dec_ref.exit55

bb.u:                                             ; preds = %lean_dec.exit74
  %.not.i54 = icmp eq i32 %i.bk, 0
  br i1 %.not.i54, label %lean_dec_ref.exit55, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #4
  br label %lean_dec_ref.exit55

lean_dec_ref.exit55:                              ; preds = %bb.t, %bb.u, %bb.v
  %i.bn = ptrtoint ptr %i.t to i64
  %i.bo = and i64 %i.bn, 1
  %.not.i67 = icmp eq i64 %i.bo, 0
  br i1 %.not.i67, label %bb.w, label %lean_dec.exit70

bb.w:                                             ; preds = %lean_dec_ref.exit55
  %i.bp = load i32, ptr %i.t, align 4, !tbaa !10  ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, 1
  br i1 %i.bq, label %bb.x, label %bb.y, !prof !11

bb.x:                                             ; preds = %bb.w
  %i.br = add nsw i32 %i.bp, -1
  store i32 %i.br, ptr %i.t, align 4, !tbaa !10
  br label %lean_dec.exit70

bb.y:                                             ; preds = %bb.w
  %.not.i.i68 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i68, label %lean_dec.exit70, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.t) #4
  br label %lean_dec.exit70

lean_dec.exit70:                                  ; preds = %bb.x, %bb.y, %bb.z, %lean_dec_ref.exit55
  %i.bs = load i32, ptr %i.r, align 4, !tbaa !10  ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %bb.aa, label %bb.ab, !prof !11

bb.aa:                                            ; preds = %lean_dec.exit70
  %i.bu = add nsw i32 %i.bs, -1
  store i32 %i.bu, ptr %i.r, align 4, !tbaa !10
  br label %lean_dec_ref.exit53

bb.ab:                                            ; preds = %lean_dec.exit70
  %.not.i52 = icmp eq i32 %i.bs, 0
  br i1 %.not.i52, label %lean_dec_ref.exit53, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.r) #4
  br label %lean_dec_ref.exit53

lean_dec_ref.exit53:                              ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.bv = ptrtoint ptr %i.p to i64
  %i.bw = and i64 %i.bv, 1
  %.not.i63 = icmp eq i64 %i.bw, 0
  br i1 %.not.i63, label %bb.ad, label %lean_dec.exit66

bb.ad:                                            ; preds = %lean_dec_ref.exit53
  %i.bx = load i32, ptr %i.p, align 4, !tbaa !10  ; 3 uses
  %i.by = icmp sgt i32 %i.bx, 1
  br i1 %i.by, label %bb.ae, label %bb.af, !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.bz = add nsw i32 %i.bx, -1
  store i32 %i.bz, ptr %i.p, align 4, !tbaa !10
  br label %lean_dec.exit66

bb.af:                                            ; preds = %bb.ad
  %.not.i.i64 = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i64, label %lean_dec.exit66, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.p) #4
  br label %lean_dec.exit66

lean_dec.exit66:                                  ; preds = %bb.ae, %bb.af, %bb.ag, %lean_dec_ref.exit53
  %i.ca = load i32, ptr %i.n, align 4, !tbaa !10  ; 3 uses
  %i.cb = icmp sgt i32 %i.ca, 1
  br i1 %i.cb, label %bb.ah, label %bb.ai, !prof !11

bb.ah:                                            ; preds = %lean_dec.exit66
  %i.cc = add nsw i32 %i.ca, -1
  store i32 %i.cc, ptr %i.n, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.ai:                                            ; preds = %lean_dec.exit66
  %.not.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.cd = ptrtoint ptr %i.l to i64
  %i.ce = and i64 %i.cd, 1
  %.not.i59 = icmp eq i64 %i.ce, 0
  br i1 %.not.i59, label %bb.ak, label %lean_dec.exit62

bb.ak:                                            ; preds = %lean_dec_ref.exit
  %i.cf = load i32, ptr %i.l, align 4, !tbaa !10  ; 3 uses
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %bb.al, label %bb.am, !prof !11

bb.al:                                            ; preds = %bb.ak
  %i.ch = add nsw i32 %i.cf, -1
  store i32 %i.ch, ptr %i.l, align 4, !tbaa !10
  br label %lean_dec.exit62

bb.am:                                            ; preds = %bb.ak
  %.not.i.i60 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i60, label %lean_dec.exit62, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.l) #4
  br label %lean_dec.exit62

lean_dec.exit62:                                  ; preds = %bb.al, %bb.am, %bb.an, %lean_dec_ref.exit
  %i.ci = ptrtoint ptr %i.j to i64
  %i.cj = and i64 %i.ci, 1
  %.not.i58 = icmp eq i64 %i.cj, 0
  br i1 %.not.i58, label %bb.ao, label %lean_dec.exit

bb.ao:                                            ; preds = %lean_dec.exit62
end_hunk_0
