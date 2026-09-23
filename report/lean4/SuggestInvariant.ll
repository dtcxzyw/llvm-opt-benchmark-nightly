Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/SuggestInvariant?download=true
inline.NumInlined: 3276
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@l_Lean_Elab_Tactic_Do_suggestInvariant___lam__5___boxed:bb.a
bb.m:                                             ; preds = %lean_dec.exit76
  %i.bi = add nsw i32 %i.bg, -1
  store i32 %i.bi, ptr %i.ai, align 4, !tbaa !11
  br label %lean_dec_ref.exit57

bb.n:                                             ; preds = %lean_dec.exit76
  %.not.i56 = icmp eq i32 %i.bg, 0
  br i1 %.not.i56, label %lean_dec_ref.exit57, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ai) #8
  br label %lean_dec_ref.exit57

lean_dec_ref.exit57:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.bj = ptrtoint ptr %i.ag to i64
  %i.bk = and i64 %i.bj, 1
  %.not.i69 = icmp eq i64 %i.bk, 0
  br i1 %.not.i69, label %bb.p, label %lean_dec.exit72

bb.p:                                             ; preds = %lean_dec_ref.exit57
  %i.bl = load i32, ptr %i.ag, align 4, !tbaa !11 ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 1
  br i1 %i.bm, label %bb.q, label %bb.r, !prof !14

bb.q:                                             ; preds = %bb.p
  %i.bn = add nsw i32 %i.bl, -1
  store i32 %i.bn, ptr %i.ag, align 4, !tbaa !11
  br label %lean_dec.exit72

bb.r:                                             ; preds = %bb.p
  %.not.i.i70 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i70, label %lean_dec.exit72, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ag) #8
  br label %lean_dec.exit72

lean_dec.exit72:                                  ; preds = %bb.q, %bb.r, %bb.s, %lean_dec_ref.exit57
  %i.bo = load i32, ptr %i.ae, align 4, !tbaa !11 ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, 1
  br i1 %i.bp, label %bb.t, label %bb.u, !prof !14

bb.t:                                             ; preds = %lean_dec.exit72
  %i.bq = add nsw i32 %i.bo, -1
  store i32 %i.bq, ptr %i.ae, align 4, !tbaa !11
  br label %lean_dec_ref.exit55

bb.u:                                             ; preds = %lean_dec.exit72
  %.not.i54 = icmp eq i32 %i.bo, 0
  br i1 %.not.i54, label %lean_dec_ref.exit55, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #8
  br label %lean_dec_ref.exit55

lean_dec_ref.exit55:                              ; preds = %bb.t, %bb.u, %bb.v
  %i.br = ptrtoint ptr %i.ac to i64
  %i.bs = and i64 %i.br, 1
  %.not.i65 = icmp eq i64 %i.bs, 0
  br i1 %.not.i65, label %bb.w, label %lean_dec.exit68

bb.w:                                             ; preds = %lean_dec_ref.exit55
  %i.bt = load i32, ptr %i.ac, align 4, !tbaa !11 ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.x, label %bb.y, !prof !14

bb.x:                                             ; preds = %bb.w
  %i.bv = add nsw i32 %i.bt, -1
  store i32 %i.bv, ptr %i.ac, align 4, !tbaa !11
  br label %lean_dec.exit68

bb.y:                                             ; preds = %bb.w
  %.not.i.i66 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i66, label %lean_dec.exit68, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ac) #8
  br label %lean_dec.exit68

lean_dec.exit68:                                  ; preds = %bb.x, %bb.y, %bb.z, %lean_dec_ref.exit55
  %i.bw = load i32, ptr %i.aa, align 4, !tbaa !11 ; 3 uses
  %i.bx = icmp sgt i32 %i.bw, 1
  br i1 %i.bx, label %bb.aa, label %bb.ab, !prof !14

bb.aa:                                            ; preds = %lean_dec.exit68
  %i.by = add nsw i32 %i.bw, -1
  store i32 %i.by, ptr %i.aa, align 4, !tbaa !11
  br label %lean_dec_ref.exit

bb.ab:                                            ; preds = %lean_dec.exit68
  %.not.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa) #8
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.bz = ptrtoint ptr %i.w to i64
  %i.ca = and i64 %i.bz, 1
  %.not.i61 = icmp eq i64 %i.ca, 0
  br i1 %.not.i61, label %bb.ad, label %lean_dec.exit64

bb.ad:                                            ; preds = %lean_dec_ref.exit
  %i.cb = load i32, ptr %i.w, align 4, !tbaa !11  ; 3 uses
  %i.cc = icmp sgt i32 %i.cb, 1
  br i1 %i.cc, label %bb.ae, label %bb.af, !prof !14

bb.ae:                                            ; preds = %bb.ad
  %i.cd = add nsw i32 %i.cb, -1
  store i32 %i.cd, ptr %i.w, align 4, !tbaa !11
  br label %lean_dec.exit64

bb.af:                                            ; preds = %bb.ad
  %.not.i.i62 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i62, label %lean_dec.exit64, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.w) #8
  br label %lean_dec.exit64

lean_dec.exit64:                                  ; preds = %bb.ae, %bb.af, %bb.ag, %lean_dec_ref.exit
  %i.ce = ptrtoint ptr %i.s to i64
  %i.cf = and i64 %i.ce, 1
  %.not.i60 = icmp eq i64 %i.cf, 0
  br i1 %.not.i60, label %bb.ah, label %lean_dec.exit

bb.ah:                                            ; preds = %lean_dec.exit64
  %i.cg = load i32, ptr %i.s, align 4, !tbaa !11  ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, 1
  br i1 %i.ch, label %bb.ai, label %bb.aj, !prof !14

bb.ai:                                            ; preds = %bb.ah
  %i.ci = add nsw i32 %i.cg, -1
  store i32 %i.ci, ptr %i.s, align 4, !tbaa !11
  br label %lean_dec.exit

bb.aj:                                            ; preds = %bb.ah
  %.not.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.s) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.ai, %bb.aj, %bb.ak, %lean_dec.exit64
  ret ptr %i.as
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Tactic_Do_suggestInvariant___lam__6(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i8 %7 to i64
  %i.b = shl nuw nsw i64 %i.a, 1
  %i.c = or disjoint i64 %i.b, 1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @lean_alloc_object(i64 noundef 120) #8 ; 18 uses
  store i32 1, ptr %i.e, align 4, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 65535
  %i.i = or disjoint i32 %i.h, -184549376
  store i32 %i.i, ptr %i.f, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @l_Lean_Elab_Tactic_Do_suggestInvariant___lam__5___boxed, ptr %i.j, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i16 22, ptr %i.k, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  store i16 12, ptr %i.l, align 2, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %10, ptr %i.m, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %0, ptr %i.n, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %1, ptr %i.o, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %2, ptr %i.p, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %3, ptr %i.q, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %4, ptr %i.r, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %5, ptr %i.s, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr @l_Lean_Elab_Tactic_Do_suggestInvariant___lam__1___closed__0_value, ptr %i.t, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr @l_Lean_Elab_Tactic_Do_suggestInvariant___lam__1___closed__1_value, ptr %i.u, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr %6, ptr %i.v, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store ptr %i.d, ptr %i.w, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr %8, ptr %i.x, align 8, !tbaa !16
  %i.y = tail call ptr @l_Lean_Meta_withLocalDecl___at___00Lean_Meta_withLocalDeclD___at___00Lean_Elab_Tactic_Do_suggestInvariant_spec__2_spec__3___redArg(ptr noundef nonnull @l_Lean_Elab_Tactic_Do_suggestInvariant___lam__1___closed__1_value, i8 noundef zeroext 0, ptr noundef %9, ptr noundef nonnull %i.e, i8 noundef zeroext 0, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18)
  ret ptr %i.y
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Tactic_Do_suggestInvariant___lam__6___boxed(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !16   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !16   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !16 ; 5 uses
  %i.ac = ptrtoint ptr %i.f to i64
  %i.ad = and i64 %i.ac, 510
  %i.ae = or disjoint i64 %i.ad, 1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load <2 x ptr>, ptr %0, align 8, !tbaa !16
  %1 = load <2 x ptr>, ptr %i.a, align 8, !tbaa !16
  %i.ah = load <2 x ptr>, ptr %i.b, align 8, !tbaa !16
  %i.ai = tail call ptr @lean_alloc_object(i64 noundef 120) #8 ; 15 uses
  store i32 1, ptr %i.ai, align 4, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = and i32 %i.ak, 65535
  %i.am = or disjoint i32 %i.al, -184549376
  store i32 %i.am, ptr %i.aj, align 4
  %2 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @l_Lean_Elab_Tactic_Do_suggestInvariant___lam__5___boxed, ptr %2, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i16 22, ptr %i.an, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 18
  store i16 12, ptr %i.ao, align 2, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.l, ptr %i.ap, align 8, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store <2 x ptr> %i.ag, ptr %i.aq, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store <2 x ptr> %1, ptr %i.ar, align 8, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  store <2 x ptr> %i.ah, ptr %i.as, align 8, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  store ptr @l_Lean_Elab_Tactic_Do_suggestInvariant___lam__1___closed__0_value, ptr %i.at, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store ptr @l_Lean_Elab_Tactic_Do_suggestInvariant___lam__1___closed__1_value, ptr %i.au, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  store ptr %i.d, ptr %i.av, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  store ptr %i.af, ptr %i.aw, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  store ptr %i.h, ptr %i.ax, align 8, !tbaa !16
  %i.ay = tail call ptr @l_Lean_Meta_withLocalDecl___at___00Lean_Meta_withLocalDeclD___at___00Lean_Elab_Tactic_Do_suggestInvariant_spec__2_spec__3___redArg(ptr noundef nonnull @l_Lean_Elab_Tactic_Do_suggestInvariant___lam__1___closed__1_value, i8 noundef zeroext 0, ptr noundef %i.j, ptr noundef nonnull %i.ai, i8 noundef zeroext 0, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t, ptr noundef %i.v, ptr noundef %i.x, ptr noundef %i.z, ptr noundef %i.ab)
  %i.az = ptrtoint ptr %i.ab to i64
  %i.ba = and i64 %i.az, 1
  %.not.i63 = icmp eq i64 %i.ba, 0
  br i1 %.not.i63, label %bb.b, label %lean_dec.exit66

bb.b:                                             ; preds = %bb.a
  %i.bb = load i32, ptr %i.ab, align 4, !tbaa !11 ; 3 uses
  %i.bc = icmp sgt i32 %i.bb, 1
  br i1 %i.bc, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.bd = add nsw i32 %i.bb, -1
  store i32 %i.bd, ptr %i.ab, align 4, !tbaa !11
  br label %lean_dec.exit66

bb.d:                                             ; preds = %bb.b
  %.not.i.i64 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i64, label %lean_dec.exit66, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #8
  br label %lean_dec.exit66

lean_dec.exit66:                                  ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  %i.be = load i32, ptr %i.z, align 4, !tbaa !11  ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 1
  br i1 %i.bf, label %bb.f, label %bb.g, !prof !14

bb.f:                                             ; preds = %lean_dec.exit66
  %i.bg = add nsw i32 %i.be, -1
  store i32 %i.bg, ptr %i.z, align 4, !tbaa !11
  br label %lean_dec_ref.exit53

bb.g:                                             ; preds = %lean_dec.exit66
  %.not.i52 = icmp eq i32 %i.be, 0
  br i1 %.not.i52, label %lean_dec_ref.exit53, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.z) #8
  br label %lean_dec_ref.exit53

lean_dec_ref.exit53:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.bh = ptrtoint ptr %i.x to i64
  %i.bi = and i64 %i.bh, 1
  %.not.i59 = icmp eq i64 %i.bi, 0
  br i1 %.not.i59, label %bb.i, label %lean_dec.exit62

bb.i:                                             ; preds = %lean_dec_ref.exit53
  %i.bj = load i32, ptr %i.x, align 4, !tbaa !11  ; 3 uses
  %i.bk = icmp sgt i32 %i.bj, 1
  br i1 %i.bk, label %bb.j, label %bb.k, !prof !14

bb.j:                                             ; preds = %bb.i
  %i.bl = add nsw i32 %i.bj, -1
  store i32 %i.bl, ptr %i.x, align 4, !tbaa !11
  br label %lean_dec.exit62

bb.k:                                             ; preds = %bb.i
  %.not.i.i60 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i60, label %lean_dec.exit62, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.x) #8
  br label %lean_dec.exit62

lean_dec.exit62:                                  ; preds = %bb.j, %bb.k, %bb.l, %lean_dec_ref.exit53
  %i.bm = load i32, ptr %i.v, align 4, !tbaa !11  ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, 1
  br i1 %i.bn, label %bb.m, label %bb.n, !prof !14

bb.m:                                             ; preds = %lean_dec.exit62
  %i.bo = add nsw i32 %i.bm, -1
  store i32 %i.bo, ptr %i.v, align 4, !tbaa !11
  br label %lean_dec_ref.exit51

bb.n:                                             ; preds = %lean_dec.exit62
  %.not.i50 = icmp eq i32 %i.bm, 0
  br i1 %.not.i50, label %lean_dec_ref.exit51, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #8
  br label %lean_dec_ref.exit51

lean_dec_ref.exit51:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.bp = ptrtoint ptr %i.t to i64
  %i.bq = and i64 %i.bp, 1
  %.not.i55 = icmp eq i64 %i.bq, 0
  br i1 %.not.i55, label %bb.p, label %lean_dec.exit58

bb.p:                                             ; preds = %lean_dec_ref.exit51
  %i.br = load i32, ptr %i.t, align 4, !tbaa !11  ; 3 uses
  %i.bs = icmp sgt i32 %i.br, 1
  br i1 %i.bs, label %bb.q, label %bb.r, !prof !14

bb.q:                                             ; preds = %bb.p
  %i.bt = add nsw i32 %i.br, -1
  store i32 %i.bt, ptr %i.t, align 4, !tbaa !11
  br label %lean_dec.exit58

bb.r:                                             ; preds = %bb.p
  %.not.i.i56 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i56, label %lean_dec.exit58, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.t) #8
  br label %lean_dec.exit58

lean_dec.exit58:                                  ; preds = %bb.q, %bb.r, %bb.s, %lean_dec_ref.exit51
  %i.bu = load i32, ptr %i.r, align 4, !tbaa !11  ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 1
  br i1 %i.bv, label %bb.t, label %bb.u, !prof !14

bb.t:                                             ; preds = %lean_dec.exit58
  %i.bw = add nsw i32 %i.bu, -1
  store i32 %i.bw, ptr %i.r, align 4, !tbaa !11
  br label %lean_dec_ref.exit49

bb.u:                                             ; preds = %lean_dec.exit58
  %.not.i48 = icmp eq i32 %i.bu, 0
  br i1 %.not.i48, label %lean_dec_ref.exit49, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.r) #8
  br label %lean_dec_ref.exit49

lean_dec_ref.exit49:                              ; preds = %bb.t, %bb.u, %bb.v
  %i.bx = ptrtoint ptr %i.p to i64
  %i.by = and i64 %i.bx, 1
  %.not.i54 = icmp eq i64 %i.by, 0
  br i1 %.not.i54, label %bb.w, label %lean_dec.exit

bb.w:                                             ; preds = %lean_dec_ref.exit49
  %i.bz = load i32, ptr %i.p, align 4, !tbaa !11  ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 1
  br i1 %i.ca, label %bb.x, label %bb.y, !prof !14

bb.x:                                             ; preds = %bb.w
  %i.cb = add nsw i32 %i.bz, -1
  store i32 %i.cb, ptr %i.p, align 4, !tbaa !11
  br label %lean_dec.exit

bb.y:                                             ; preds = %bb.w
  %.not.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.p) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.x, %bb.y, %bb.z, %lean_dec_ref.exit49
  %i.cc = load i32, ptr %i.n, align 4, !tbaa !11  ; 3 uses
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %bb.aa, label %bb.ab, !prof !14

bb.aa:                                            ; preds = %lean_dec.exit
  %i.ce = add nsw i32 %i.cc, -1
  store i32 %i.ce, ptr %i.n, align 4, !tbaa !11
  br label %lean_dec_ref.exit

bb.ab:                                            ; preds = %lean_dec.exit
  %.not.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #8
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.aa, %bb.ab, %bb.ac
  ret ptr %i.ay
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_Elab_Tactic_Do_suggestInvariant_spec__3___redArg(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #1 {
bb.a:
  %.not82 = icmp ult i64 %2, %1
  br i1 %.not82, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

._crit_edge:                                      ; preds = %lean_dec.exit, %bb.a
  %.048.lcssa = phi ptr [ %3, %bb.a ], [ %i.ay, %lean_dec.exit ]
  tail call void @lean_inc_heartbeat() #8
  %i.b = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %._crit_edge
end_hunk_0
