Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/DeclModifiers?download=true
inline.NumInlined: 2604
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@l_Lean_Elab_checkNotAlreadyDeclared___redArg___lam__10:bb.a
  store ptr @l_Lean_Elab_checkNotAlreadyDeclared___redArg___lam__11___boxed, ptr %i.ez, align 8, !tbaa !10
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i16 8, ptr %i.fa, align 8, !tbaa !20
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 18
  store i16 7, ptr %i.fb, align 2, !tbaa !20
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  store ptr %6, ptr %i.fc, align 8, !tbaa !10
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  store ptr inttoptr (i64 3 to ptr), ptr %i.fd, align 8, !tbaa !10
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  store ptr %1, ptr %i.fe, align 8, !tbaa !10
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  store ptr %4, ptr %i.ff, align 8, !tbaa !10
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eu, i64 56
  store ptr %5, ptr %i.fg, align 8, !tbaa !10
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  store ptr %i.ea, ptr %i.fh, align 8, !tbaa !10
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eu, i64 72
  store ptr %i.ea, ptr %i.fi, align 8, !tbaa !10
  %.val.i.i193 = load i32, ptr %3, align 4, !tbaa !14 ; 3 uses
  %i.fj = icmp sgt i32 %.val.i.i193, 0
  br i1 %i.fj, label %bb.bh, label %bb.bi, !prof !16

bb.bh:                                            ; preds = %lean_inc.exit
  %i.fk = add nuw i32 %.val.i.i193, 1
  store i32 %i.fk, ptr %3, align 4, !tbaa !14
  br label %lean_inc_ref.exit195

bb.bi:                                            ; preds = %lean_inc.exit
  %.not.i.i194 = icmp eq i32 %.val.i.i193, 0
  br i1 %.not.i.i194, label %lean_inc_ref.exit195, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fl = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit195

lean_inc_ref.exit195:                             ; preds = %bb.bh, %bb.bi, %bb.bj
  %i.fm = tail call ptr @l_Lean_Elab_checkNotAlreadyDeclared___redArg___lam__2(ptr noundef nonnull %0, i8 noundef zeroext 0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6)
  %i.fn = tail call ptr @lean_apply_4(ptr noundef %5, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %i.fm, ptr noundef nonnull %i.eu) #8
  br label %bb.bk

bb.bk:                                            ; preds = %lean_inc_ref.exit195, %lean_dec_ref.exit143
  %.sink = phi ptr [ %i.fn, %lean_inc_ref.exit195 ], [ %i.dw, %lean_dec_ref.exit143 ]
  %i.fo = tail call ptr @l_Lean_withEnv___redArg(ptr noundef nonnull %1, ptr noundef %9, ptr noundef nonnull %3, ptr noundef nonnull %i.aj, ptr noundef %.sink) #8
  ret ptr %i.fo
}

declare ptr @l_Lean_Environment_setExporting(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @l_Lean_withEnv___redArg(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_checkNotAlreadyDeclared___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, 1
  %.not.i33 = icmp eq i64 %i.f, 0
  br i1 %.not.i33, label %bb.b, label %lean_inc_n.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %i.d, align 4, !tbaa !14 ; 3 uses
  %i.g = icmp sgt i32 %.val.i.i, 0
  br i1 %i.g, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i32 %.val.i.i, 2
  store i32 %i.h, ptr %i.d, align 4, !tbaa !14
  br label %lean_inc_n.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_n.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = atomicrmw sub ptr %i.d, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit

lean_inc_n.exit:                                  ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !10   ; 6 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = and i64 %i.l, 1
  %.not.i34 = icmp eq i64 %i.m, 0
  br i1 %.not.i34, label %bb.f, label %lean_inc_n.exit37

bb.f:                                             ; preds = %lean_inc_n.exit
  %.val.i.i35 = load i32, ptr %i.k, align 4, !tbaa !14 ; 3 uses
  %i.n = icmp sgt i32 %.val.i.i35, 0
  br i1 %i.n, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.o = add nuw i32 %.val.i.i35, 2
  store i32 %i.o, ptr %i.k, align 4, !tbaa !14
  br label %lean_inc_n.exit37

bb.h:                                             ; preds = %bb.f
  %.not.i.i36 = icmp eq i32 %.val.i.i35, 0
  br i1 %.not.i.i36, label %lean_inc_n.exit37, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = atomicrmw sub ptr %i.k, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit37

lean_inc_n.exit37:                                ; preds = %lean_inc_n.exit, %bb.g, %bb.h, %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !10   ; 4 uses
  %.val.i.i38 = load i32, ptr %i.r, align 4, !tbaa !14 ; 3 uses
  %i.s = icmp sgt i32 %.val.i.i38, 0
  br i1 %i.s, label %bb.j, label %bb.k, !prof !16

bb.j:                                             ; preds = %lean_inc_n.exit37
  %i.t = add nuw i32 %.val.i.i38, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !14
  br label %lean_inc_ref.exit

bb.k:                                             ; preds = %lean_inc_n.exit37
  %.not.i.i39 = icmp eq i32 %.val.i.i38, 0
  br i1 %.not.i.i39, label %lean_inc_ref.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = atomicrmw sub ptr %i.r, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.j, %bb.k, %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !10   ; 5 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.x, 1
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %bb.m, label %lean_inc.exit

bb.m:                                             ; preds = %lean_inc_ref.exit
  %.val.i.i40 = load i32, ptr %i.w, align 4, !tbaa !14 ; 3 uses
  %i.z = icmp sgt i32 %.val.i.i40, 0
  br i1 %i.z, label %bb.n, label %bb.o, !prof !16

bb.n:                                             ; preds = %bb.m
  %i.aa = add nuw i32 %.val.i.i40, 1
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !14
  br label %lean_inc.exit

bb.o:                                             ; preds = %bb.m
  %.not.i.i41 = icmp eq i32 %.val.i.i40, 0
  br i1 %.not.i.i41, label %lean_inc.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = atomicrmw sub ptr %i.w, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.p, %bb.o, %bb.n, %lean_inc_ref.exit
  %i.ac = tail call ptr @lean_alloc_object(i64 noundef 104) #8 ; 16 uses
  store i32 1, ptr %i.ac, align 4, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = and i32 %i.ae, 65535
  %i.ag = or disjoint i32 %i.af, -184549376
  store i32 %i.ag, ptr %i.ad, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @l_Lean_Elab_checkNotAlreadyDeclared___redArg___lam__10, ptr %i.ah, align 8, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i16 11, ptr %i.ai, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 18
  store i16 10, ptr %i.aj, align 2, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.r, ptr %i.ak, align 8, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %0, ptr %i.al, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr %4, ptr %i.am, align 8, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store ptr %1, ptr %i.an, align 8, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store ptr %2, ptr %i.ao, align 8, !tbaa !10
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store ptr %i.d, ptr %i.ap, align 8, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  store ptr %5, ptr %i.aq, align 8, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store ptr %i.w, ptr %i.ar, align 8, !tbaa !10
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  store ptr %i.k, ptr %i.as, align 8, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  store ptr %3, ptr %i.at, align 8, !tbaa !10
  %i.au = tail call ptr @lean_apply_4(ptr noundef %i.d, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %i.k, ptr noundef nonnull %i.ac) #8
  ret ptr %i.au
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_checkNotAlreadyDeclared(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_checkNotAlreadyDeclared___redArg(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Elab_Visibility_ctorIdx(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %switch.selectcmp = icmp eq i8 %0, 1
  %switch.select = select i1 %switch.selectcmp, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4 = icmp eq i8 %0, 0
  %switch.select5 = select i1 %switch.selectcmp4, ptr inttoptr (i64 1 to ptr), ptr %switch.select
  ret ptr %switch.select5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Elab_Visibility_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.c, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i = icmp eq i8 %i.c, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Elab_Visibility_toCtorIdx(i8 noundef zeroext %0) local_unnamed_addr #3 {
l_Lean_Elab_Visibility_ctorIdx.exit:
  %switch.selectcmp.i = icmp eq i8 %0, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i = icmp eq i8 %0, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Elab_Visibility_toCtorIdx___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i.i = icmp eq i8 %i.c, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i.i = icmp eq i8 %i.c, 0
  %switch.select5.i.i = select i1 %switch.selectcmp4.i.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i.i
  ret ptr %switch.select5.i.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Elab_Visibility_ctorElim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !14
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Elab_Visibility_ctorElim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !14
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Elab_Visibility_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %4, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %4, align 4, !tbaa !14
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Elab_Visibility_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit9

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %4, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %4, align 4, !tbaa !14
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit9, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %4, align 4, !tbaa !14
  br label %lean_dec.exit9

bb.h:                                             ; preds = %bb.f
  %.not.i10 = icmp eq i32 %i.f, 0
  br i1 %.not.i10, label %lean_dec.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #8
  br label %lean_dec.exit9

lean_dec.exit9:                                   ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  %i.i = ptrtoint ptr %1 to i64
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.j, label %lean_dec.exit

bb.j:                                             ; preds = %lean_dec.exit9
  %i.k = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.k, label %bb.l, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %1, align 4, !tbaa !14
  br label %lean_dec.exit

bb.l:                                             ; preds = %bb.j
  %.not.i11 = icmp eq i32 %i.k, 0
  br i1 %.not.i11, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit9
  ret ptr %4
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Elab_Visibility_regular_elim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !14
end_hunk_0
begin_hunk_1_@l_Lean_Elab_elabVisibility___redArg___lam__3___boxed:bb.a

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_elabVisibility___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, 1
  %.not.i47 = icmp eq i64 %i.f, 0
  br i1 %.not.i47, label %bb.b, label %lean_inc_n.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %i.d, align 4, !tbaa !14 ; 3 uses
  %i.g = icmp sgt i32 %.val.i.i, 0
  br i1 %i.g, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i32 %.val.i.i, 2
  store i32 %i.h, ptr %i.d, align 4, !tbaa !14
  br label %lean_inc_n.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_n.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = atomicrmw sub ptr %i.d, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit

lean_inc_n.exit:                                  ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !10   ; 5 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = and i64 %i.l, 1
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.f, label %lean_inc.exit

bb.f:                                             ; preds = %lean_inc_n.exit
  %.val.i.i48 = load i32, ptr %i.k, align 4, !tbaa !14 ; 3 uses
  %i.n = icmp sgt i32 %.val.i.i48, 0
  br i1 %i.n, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.o = add nuw i32 %.val.i.i48, 1
  store i32 %i.o, ptr %i.k, align 4, !tbaa !14
  br label %lean_inc.exit

bb.h:                                             ; preds = %bb.f
  %.not.i.i49 = icmp eq i32 %.val.i.i48, 0
  br i1 %.not.i.i49, label %lean_inc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = atomicrmw sub ptr %i.k, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.i, %bb.h, %bb.g, %lean_inc_n.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !10   ; 7 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = and i64 %i.s, 1
  %.not.i50 = icmp eq i64 %i.t, 0
  br i1 %.not.i50, label %bb.j, label %lean_inc_ref.exit59

bb.j:                                             ; preds = %lean_inc.exit
  %.val.i.i51 = load i32, ptr %i.r, align 4, !tbaa !14 ; 3 uses
  %i.u = icmp sgt i32 %.val.i.i51, 0
  br i1 %i.u, label %bb.k, label %bb.l, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.v = add nuw i32 %.val.i.i51, 3
  store i32 %i.v, ptr %i.r, align 4, !tbaa !14
  br label %lean_inc_ref.exit59

bb.l:                                             ; preds = %bb.j
  %.not.i.i52 = icmp eq i32 %.val.i.i51, 0
  br i1 %.not.i.i52, label %lean_inc_ref.exit59, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = atomicrmw sub ptr %i.r, i32 3 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit59

lean_inc_ref.exit59:                              ; preds = %lean_inc.exit, %bb.k, %bb.l, %bb.m
  %i.x = tail call ptr @lean_alloc_object(i64 noundef 32) #8 ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = and i32 %i.z, 65535
  %i.ab = or disjoint i32 %i.aa, -184549376
  store i32 %i.ab, ptr %i.y, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @l_Lean_Elab_elabVisibility___redArg___lam__0, ptr %i.ac, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i16 2, ptr %i.ad, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 18
  store i16 1, ptr %i.ae, align 2, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.r, ptr %i.af, align 8, !tbaa !10
  store i32 2, ptr %i.x, align 8, !tbaa !14
  %i.ag = tail call ptr @lean_alloc_object(i64 noundef 32) #8 ; 7 uses
  store i32 1, ptr %i.ag, align 4, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = and i32 %i.ai, 65535
  %i.ak = or disjoint i32 %i.aj, -184549376
  store i32 %i.ak, ptr %i.ah, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @l_Lean_Elab_checkNotAlreadyDeclared___redArg___lam__5, ptr %i.al, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i16 2, ptr %i.am, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 18
  store i16 1, ptr %i.an, align 2, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.x, ptr %i.ao, align 8, !tbaa !10
  %i.ap = tail call ptr @lean_alloc_object(i64 noundef 32) #8 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = and i32 %i.ar, 65535
  %i.at = or disjoint i32 %i.as, -184549376
  store i32 %i.at, ptr %i.aq, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr @l_Lean_Elab_elabVisibility___redArg___lam__2, ptr %i.au, align 8, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i16 2, ptr %i.av, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 18
  store i16 1, ptr %i.aw, align 2, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.r, ptr %i.ax, align 8, !tbaa !10
  store i32 2, ptr %i.ap, align 8, !tbaa !14
  %i.ay = tail call ptr @lean_alloc_object(i64 noundef 32) #8 ; 7 uses
  store i32 1, ptr %i.ay, align 4, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = and i32 %i.ba, 65535
  %i.bc = or disjoint i32 %i.bb, -184549376
  store i32 %i.bc, ptr %i.az, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @l_Lean_Elab_checkNotAlreadyDeclared___redArg___lam__5, ptr %i.bd, align 8, !tbaa !10
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i16 2, ptr %i.be, align 8, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 18
  store i16 1, ptr %i.bf, align 2, !tbaa !20
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr %i.ap, ptr %i.bg, align 8, !tbaa !10
  %i.bh = tail call ptr @lean_alloc_object(i64 noundef 128) #8 ; 19 uses
  store i32 1, ptr %i.bh, align 4, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = and i32 %i.bj, 65535
  %i.bl = or disjoint i32 %i.bk, -184549376
  store i32 %i.bl, ptr %i.bi, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr @l_Lean_Elab_elabVisibility___redArg___lam__3___boxed, ptr %i.bm, align 8, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i16 14, ptr %i.bn, align 8, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 18
  store i16 13, ptr %i.bo, align 2, !tbaa !20
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store ptr %6, ptr %i.bp, align 8, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store ptr %i.r, ptr %i.bq, align 8, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store ptr %0, ptr %i.br, align 8, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store ptr %1, ptr %i.bs, align 8, !tbaa !10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  store ptr %4, ptr %i.bt, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  store ptr %5, ptr %i.bu, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  store ptr %3, ptr %i.bv, align 8, !tbaa !10
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  store ptr %2, ptr %i.bw, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  store ptr %i.d, ptr %i.bx, align 8, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  store ptr %i.ag, ptr %i.by, align 8, !tbaa !10
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 104
  store ptr %i.x, ptr %i.bz, align 8, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bh, i64 112
  store ptr %i.ap, ptr %i.ca, align 8, !tbaa !10
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 120
  store ptr %i.ay, ptr %i.cb, align 8, !tbaa !10
  %i.cc = tail call ptr @lean_apply_4(ptr noundef %i.d, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %i.k, ptr noundef nonnull %i.bh) #8
  ret ptr %i.cc
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_elabVisibility(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_elabVisibility___redArg(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Elab_RecKind_ctorIdx(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %switch.selectcmp = icmp eq i8 %0, 1
  %switch.select = select i1 %switch.selectcmp, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4 = icmp eq i8 %0, 0
  %switch.select5 = select i1 %switch.selectcmp4, ptr inttoptr (i64 1 to ptr), ptr %switch.select
  ret ptr %switch.select5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Elab_RecKind_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.c, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i = icmp eq i8 %i.c, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Elab_RecKind_toCtorIdx(i8 noundef zeroext %0) local_unnamed_addr #3 {
l_Lean_Elab_RecKind_ctorIdx.exit:
  %switch.selectcmp.i = icmp eq i8 %0, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i = icmp eq i8 %0, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Elab_RecKind_toCtorIdx___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i.i = icmp eq i8 %i.c, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i.i = icmp eq i8 %i.c, 0
  %switch.select5.i.i = select i1 %switch.selectcmp4.i.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i.i
  ret ptr %switch.select5.i.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Elab_RecKind_ctorElim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !14
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Elab_RecKind_ctorElim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !14
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Elab_RecKind_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %4, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %4, align 4, !tbaa !14
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Elab_RecKind_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit9

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %4, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %4, align 4, !tbaa !14
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit9, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %4, align 4, !tbaa !14
  br label %lean_dec.exit9

bb.h:                                             ; preds = %bb.f
  %.not.i10 = icmp eq i32 %i.f, 0
  br i1 %.not.i10, label %lean_dec.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #8
  br label %lean_dec.exit9

lean_dec.exit9:                                   ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  %i.i = ptrtoint ptr %1 to i64
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.j, label %lean_dec.exit

bb.j:                                             ; preds = %lean_dec.exit9
  %i.k = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.k, label %bb.l, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %1, align 4, !tbaa !14
  br label %lean_dec.exit

bb.l:                                             ; preds = %bb.j
  %.not.i11 = icmp eq i32 %i.k, 0
  br i1 %.not.i11, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit9
  ret ptr %4
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Elab_RecKind_partial_elim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !14
end_hunk_1
begin_hunk_2_@l_Lean_Elab_RecKind_nonrec_elim___boxed:bb.a
  %.val.i.i.i = load i32, ptr %3, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %3, align 4, !tbaa !14
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %3, align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 4, !tbaa !14
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i6 = icmp eq i32 %i.f, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %3
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Elab_RecKind_default_elim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !14
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Elab_RecKind_default_elim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !14
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Elab_RecKind_default_elim(ptr nofree noundef readnone captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %3, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %3, align 4, !tbaa !14
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Elab_RecKind_default_elim___boxed(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %3, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %3, align 4, !tbaa !14
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %3, align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 4, !tbaa !14
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i6 = icmp eq i32 %i.f, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Elab_ComputeKind_ctorIdx(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %switch.selectcmp = icmp eq i8 %0, 1
  %switch.select = select i1 %switch.selectcmp, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4 = icmp eq i8 %0, 0
  %switch.select5 = select i1 %switch.selectcmp4, ptr inttoptr (i64 1 to ptr), ptr %switch.select
  ret ptr %switch.select5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Elab_ComputeKind_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.c, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i = icmp eq i8 %i.c, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Elab_ComputeKind_toCtorIdx(i8 noundef zeroext %0) local_unnamed_addr #3 {
l_Lean_Elab_ComputeKind_ctorIdx.exit:
  %switch.selectcmp.i = icmp eq i8 %0, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i = icmp eq i8 %0, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Elab_ComputeKind_toCtorIdx___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i.i = icmp eq i8 %i.c, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i.i = icmp eq i8 %i.c, 0
  %switch.select5.i.i = select i1 %switch.selectcmp4.i.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i.i
  ret ptr %switch.select5.i.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Elab_ComputeKind_ctorElim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !14
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Elab_ComputeKind_ctorElim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !14
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Elab_ComputeKind_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %4, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %4, align 4, !tbaa !14
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Elab_ComputeKind_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit9

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %4, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %4, align 4, !tbaa !14
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit9, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %4, align 4, !tbaa !14
  br label %lean_dec.exit9

bb.h:                                             ; preds = %bb.f
  %.not.i10 = icmp eq i32 %i.f, 0
  br i1 %.not.i10, label %lean_dec.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #8
  br label %lean_dec.exit9

lean_dec.exit9:                                   ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  %i.i = ptrtoint ptr %1 to i64
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.j, label %lean_dec.exit

bb.j:                                             ; preds = %lean_dec.exit9
  %i.k = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.k, label %bb.l, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %1, align 4, !tbaa !14
  br label %lean_dec.exit

bb.l:                                             ; preds = %bb.j
  %.not.i11 = icmp eq i32 %i.k, 0
  br i1 %.not.i11, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit9
  ret ptr %4
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Elab_ComputeKind_regular_elim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !14
end_hunk_2
begin_hunk_3_@l_Lean_Elab_ComputeKind_meta_elim___boxed:bb.a
  %.val.i.i.i = load i32, ptr %3, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %3, align 4, !tbaa !14
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %3, align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 4, !tbaa !14
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i6 = icmp eq i32 %i.f, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %3
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Elab_ComputeKind_noncomputable_elim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !14
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Elab_ComputeKind_noncomputable_elim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !14
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Elab_ComputeKind_noncomputable_elim(ptr nofree noundef readnone captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %3, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %3, align 4, !tbaa !14
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Elab_ComputeKind_noncomputable_elim___boxed(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %3, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %3, align 4, !tbaa !14
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %3, align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 4, !tbaa !14
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i6 = icmp eq i32 %i.f, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 2) i8 @l_Lean_Elab_instBEqComputeKind_beq(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
lean_dec.exit:
  %switch.selectcmp4.i = icmp eq i8 %0, 0         ; 2 uses
  %switch.selectcmp.i = icmp ne i8 %0, 1
  %switch.selectcmp4.i14 = icmp eq i8 %1, 0
  %i.a = icmp eq i8 %1, 1
  %2 = xor i1 %switch.selectcmp.i, %i.a
  %not.switch.selectcmp4.i = xor i1 %switch.selectcmp4.i, true
  %3 = and i1 %2, %not.switch.selectcmp4.i
  %4 = select i1 %switch.selectcmp4.i14, i1 %switch.selectcmp4.i, i1 %3
  %i.b = zext i1 %4 to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Elab_instBEqComputeKind_beq___boxed(ptr noundef %0, ptr noundef %1) #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8                     ; 2 uses
  %switch.selectcmp4.i.i = icmp eq i8 %i.c, 0     ; 2 uses
  %switch.selectcmp.i.i = icmp ne i8 %i.c, 1
  %switch.selectcmp4.i14.i = icmp eq i8 %i.f, 0
  %switch.selectcmp.i12.i = icmp eq i8 %i.f, 1
  %2 = xor i1 %switch.selectcmp.i.i, %switch.selectcmp.i12.i
  %not.switch.selectcmp4.i.i = xor i1 %switch.selectcmp4.i.i, true
  %3 = and i1 %2, %not.switch.selectcmp4.i.i
  %4 = select i1 %switch.selectcmp4.i14.i, i1 %switch.selectcmp4.i.i, i1 %3
  %5 = select i1 %4, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 1 to ptr)
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_instReprComputeKind_repr(i8 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = and i64 %i.a, 1
  %.not99 = icmp eq i64 %i.b, 0                   ; 3 uses
  switch i8 %0, label %bb.p [
    i8 0, label %bb.b
    i8 1, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %.not99, label %lean_nat_le.exit, label %.split, !prof !22

.split:                                           ; preds = %bb.b
  %.not116 = icmp ult ptr %1, inttoptr (i64 2049 to ptr)
  br i1 %.not116, label %bb.c, label %bb.f

lean_nat_le.exit:                                 ; preds = %bb.b
  %i.c = tail call zeroext i1 @lean_nat_big_le(ptr noundef nonnull inttoptr (i64 2049 to ptr), ptr noundef %1) #8
  br i1 %i.c, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.split, %lean_nat_le.exit
  %i.d = load atomic i32, ptr @l_Lean_Elab_instReprComputeKind_repr___closed__6_once seq_cst, align 4, !tbaa !18
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @l_Lean_Elab_instReprComputeKind_repr___closed__6, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.e:                                             ; preds = %bb.c
  %i.g = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_instReprComputeKind_repr___closed__6, ptr noundef nonnull @l_Lean_Elab_instReprComputeKind_repr___closed__6_once, ptr noundef nonnull @_init_l_Lean_Elab_instReprComputeKind_repr___closed__6) #8
  br label %lean_obj_once.exit

bb.f:                                             ; preds = %.split, %lean_nat_le.exit
  %i.h = load atomic i32, ptr @l_Lean_Elab_instReprComputeKind_repr___closed__7_once seq_cst, align 4, !tbaa !18
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.j = load ptr, ptr @l_Lean_Elab_instReprComputeKind_repr___closed__7, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.h:                                             ; preds = %bb.f
  %i.k = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_instReprComputeKind_repr___closed__7, ptr noundef nonnull @l_Lean_Elab_instReprComputeKind_repr___closed__7_once, ptr noundef nonnull @_init_l_Lean_Elab_instReprComputeKind_repr___closed__7) #8
  br label %lean_obj_once.exit

bb.i:                                             ; preds = %bb.a
  br i1 %.not99, label %lean_nat_le.exit69, label %.split106, !prof !22

.split106:                                        ; preds = %bb.i
  %.not = icmp ult ptr %1, inttoptr (i64 2049 to ptr)
  br i1 %.not, label %bb.j, label %bb.m

lean_nat_le.exit69:                               ; preds = %bb.i
  %i.l = tail call zeroext i1 @lean_nat_big_le(ptr noundef nonnull inttoptr (i64 2049 to ptr), ptr noundef %1) #8
  br i1 %i.l, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.split106, %lean_nat_le.exit69
  %i.m = load atomic i32, ptr @l_Lean_Elab_instReprComputeKind_repr___closed__6_once seq_cst, align 4, !tbaa !18
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.k, label %bb.l, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.o = load ptr, ptr @l_Lean_Elab_instReprComputeKind_repr___closed__6, align 8, !tbaa !10
  br label %lean_obj_once.exit78

bb.l:                                             ; preds = %bb.j
  %i.p = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_instReprComputeKind_repr___closed__6, ptr noundef nonnull @l_Lean_Elab_instReprComputeKind_repr___closed__6_once, ptr noundef nonnull @_init_l_Lean_Elab_instReprComputeKind_repr___closed__6) #8
  br label %lean_obj_once.exit78

bb.m:                                             ; preds = %.split106, %lean_nat_le.exit69
  %i.q = load atomic i32, ptr @l_Lean_Elab_instReprComputeKind_repr___closed__7_once seq_cst, align 4, !tbaa !18
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.n, label %bb.o, !prof !16

bb.n:                                             ; preds = %bb.m
  %i.s = load ptr, ptr @l_Lean_Elab_instReprComputeKind_repr___closed__7, align 8, !tbaa !10
  br label %lean_obj_once.exit78

bb.o:                                             ; preds = %bb.m
  %i.t = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_instReprComputeKind_repr___closed__7, ptr noundef nonnull @l_Lean_Elab_instReprComputeKind_repr___closed__7_once, ptr noundef nonnull @_init_l_Lean_Elab_instReprComputeKind_repr___closed__7) #8
  br label %lean_obj_once.exit78

bb.p:                                             ; preds = %bb.a
  br i1 %.not99, label %lean_nat_le.exit73, label %.split107, !prof !22

.split107:                                        ; preds = %bb.p
  %.not117 = icmp ult ptr %1, inttoptr (i64 2049 to ptr)
  br i1 %.not117, label %bb.q, label %bb.t

lean_nat_le.exit73:                               ; preds = %bb.p
  %i.u = tail call zeroext i1 @lean_nat_big_le(ptr noundef nonnull inttoptr (i64 2049 to ptr), ptr noundef %1) #8
  br i1 %i.u, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.split107, %lean_nat_le.exit73
  %i.v = load atomic i32, ptr @l_Lean_Elab_instReprComputeKind_repr___closed__6_once seq_cst, align 4, !tbaa !18
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.r, label %bb.s, !prof !16

bb.r:                                             ; preds = %bb.q
  %i.x = load ptr, ptr @l_Lean_Elab_instReprComputeKind_repr___closed__6, align 8, !tbaa !10
  br label %lean_obj_once.exit82

bb.s:                                             ; preds = %bb.q
  %i.y = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_instReprComputeKind_repr___closed__6, ptr noundef nonnull @l_Lean_Elab_instReprComputeKind_repr___closed__6_once, ptr noundef nonnull @_init_l_Lean_Elab_instReprComputeKind_repr___closed__6) #8
  br label %lean_obj_once.exit82

bb.t:                                             ; preds = %.split107, %lean_nat_le.exit73
  %i.z = load atomic i32, ptr @l_Lean_Elab_instReprComputeKind_repr___closed__7_once seq_cst, align 4, !tbaa !18
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.u, label %bb.v, !prof !16

bb.u:                                             ; preds = %bb.t
  %i.ab = load ptr, ptr @l_Lean_Elab_instReprComputeKind_repr___closed__7, align 8, !tbaa !10
  br label %lean_obj_once.exit82

bb.v:                                             ; preds = %bb.t
  %i.ac = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_instReprComputeKind_repr___closed__7, ptr noundef nonnull @l_Lean_Elab_instReprComputeKind_repr___closed__7_once, ptr noundef nonnull @_init_l_Lean_Elab_instReprComputeKind_repr___closed__7) #8
  br label %lean_obj_once.exit82

lean_obj_once.exit:                               ; preds = %bb.h, %bb.g, %bb.e, %bb.d
  %.057 = phi ptr [ %i.g, %bb.e ], [ %i.f, %bb.d ], [ %i.j, %bb.g ], [ %i.k, %bb.h ] ; 5 uses
  %i.ad = ptrtoint ptr %.057 to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i63 = icmp eq i64 %i.ae, 0
  br i1 %.not.i63, label %bb.w, label %lean_inc.exit64

bb.w:                                             ; preds = %lean_obj_once.exit
  %.val.i.i = load i32, ptr %.057, align 4, !tbaa !14 ; 3 uses
  %i.af = icmp sgt i32 %.val.i.i, 0
  br i1 %i.af, label %bb.x, label %bb.y, !prof !16

bb.x:                                             ; preds = %bb.w
  %i.ag = add nuw i32 %.val.i.i, 1
  store i32 %i.ag, ptr %.057, align 4, !tbaa !14
  br label %lean_inc.exit64

bb.y:                                             ; preds = %bb.w
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit64, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ah = atomicrmw sub ptr %.057, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit64

lean_inc.exit64:                                  ; preds = %bb.z, %bb.y, %bb.x, %lean_obj_once.exit
  tail call void @lean_inc_heartbeat() #8
  %i.ai = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.aa, label %lean_alloc_ctor.exit

bb.aa:                                            ; preds = %lean_inc.exit64
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc.exit64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 1, ptr %i.ai, align 4, !tbaa !14
  store i32 67239960, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.057, ptr %i.al, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr @l_Lean_Elab_instReprComputeKind_repr___closed__1_value, ptr %i.am, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.an = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.ab, label %lean_alloc_ctor.exit85

bb.ab:                                            ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_obj_once.exit78:                             ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %.058 = phi ptr [ %i.p, %bb.l ], [ %i.o, %bb.k ], [ %i.s, %bb.n ], [ %i.t, %bb.o ] ; 5 uses
  %i.ap = ptrtoint ptr %.058 to i64
  %i.aq = and i64 %i.ap, 1
  %.not.i61 = icmp eq i64 %i.aq, 0
  br i1 %.not.i61, label %bb.ac, label %lean_inc.exit62

bb.ac:                                            ; preds = %lean_obj_once.exit78
  %.val.i.i86 = load i32, ptr %.058, align 4, !tbaa !14 ; 3 uses
  %i.ar = icmp sgt i32 %.val.i.i86, 0
  br i1 %i.ar, label %bb.ad, label %bb.ae, !prof !16

bb.ad:                                            ; preds = %bb.ac
  %i.as = add nuw i32 %.val.i.i86, 1
  store i32 %i.as, ptr %.058, align 4, !tbaa !14
  br label %lean_inc.exit62

bb.ae:                                            ; preds = %bb.ac
  %.not.i.i87 = icmp eq i32 %.val.i.i86, 0
  br i1 %.not.i.i87, label %lean_inc.exit62, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.at = atomicrmw sub ptr %.058, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit62
end_hunk_3
begin_hunk_4_@l_Lean_Elab_instToFormatModifiers___lam__0:bb.a
  unreachable

lean_alloc_ctor.exit69:                           ; preds = %lean_alloc_ctor.exit68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 1, ptr %i.ae, align 4, !tbaa !14
  store i32 84017176, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.v, ptr %i.ah, align 8, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.aa, ptr %i.ai, align 8, !tbaa !10
  %i.aj = tail call ptr @l_Lean_Syntax_formatStx(ptr noundef %i.k, ptr noundef nonnull inttoptr (i64 1 to ptr), i8 noundef zeroext 0) #8
  %i.ak = load ptr, ptr @l_Std_Format_defWidth, align 8, !tbaa !10
  %i.al = tail call ptr @l_Std_Format_pretty(ptr noundef %i.aj, ptr noundef %i.ak, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 1 to ptr)) #8
  tail call void @lean_inc_heartbeat() #8
  %i.am = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 5 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.r, label %lean_alloc_ctor.exit70

bb.r:                                             ; preds = %lean_alloc_ctor.exit69
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit70:                           ; preds = %lean_alloc_ctor.exit69
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 1, ptr %i.am, align 4, !tbaa !14
  store i32 50397200, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.al, ptr %i.ap, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.aq = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.s, label %lean_alloc_ctor.exit71

bb.s:                                             ; preds = %lean_alloc_ctor.exit70
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit71:                           ; preds = %lean_alloc_ctor.exit70
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 1, ptr %i.aq, align 4, !tbaa !14
  store i32 84017176, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ae, ptr %i.at, align 8, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.am, ptr %i.au, align 8, !tbaa !10
  %i.av = load atomic i32, ptr @l_Lean_Elab_instToFormatModifiers___lam__0___closed__3_once seq_cst, align 4, !tbaa !18
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %bb.t, label %bb.u, !prof !16

bb.t:                                             ; preds = %lean_alloc_ctor.exit71
  %i.ax = load ptr, ptr @l_Lean_Elab_instToFormatModifiers___lam__0___closed__3, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.u:                                             ; preds = %lean_alloc_ctor.exit71
  %i.ay = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_instToFormatModifiers___lam__0___closed__3, ptr noundef nonnull @l_Lean_Elab_instToFormatModifiers___lam__0___closed__3_once, ptr noundef nonnull @_init_l_Lean_Elab_instToFormatModifiers___lam__0___closed__3) #8
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.t, %bb.u
  %.0.i = phi ptr [ %i.ax, %bb.t ], [ %i.ay, %bb.u ]
  tail call void @lean_inc_heartbeat() #8
  %i.az = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.v, label %lean_alloc_ctor.exit72

bb.v:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit72:                           ; preds = %lean_obj_once.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 1, ptr %i.az, align 4, !tbaa !14
  store i32 84017176, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr @l_Lean_Elab_instToFormatModifiers___lam__0___closed__4_value, ptr %i.bc, align 8, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.aq, ptr %i.bd, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.be = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.w, label %lean_alloc_ctor.exit73

bb.w:                                             ; preds = %lean_alloc_ctor.exit72
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit73:                           ; preds = %lean_alloc_ctor.exit72
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 1, ptr %i.be, align 4, !tbaa !14
  store i32 84017176, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.az, ptr %i.bh, align 8, !tbaa !10
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr @l_Lean_Elab_instToFormatModifiers___lam__0___closed__5_value, ptr %i.bi, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.bj = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.x, label %lean_alloc_ctor.exit74

bb.x:                                             ; preds = %lean_alloc_ctor.exit73
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit74:                           ; preds = %lean_alloc_ctor.exit73
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 1, ptr %i.bj, align 4, !tbaa !14
  store i32 67239960, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %.0.i, ptr %i.bm, align 8, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %i.be, ptr %i.bn, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.bo = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.y, label %lean_alloc_ctor.exit75

bb.y:                                             ; preds = %lean_alloc_ctor.exit74
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit75:                           ; preds = %lean_alloc_ctor.exit74
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 0, ptr %i.br, align 8, !tbaa !12
  store i32 1, ptr %i.bo, align 8, !tbaa !14
  store i32 100728856, ptr %i.bq, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bj, ptr %i.bs, align 8, !tbaa !10
  ret ptr %i.bo
}

declare ptr @l_Lean_Name_toString(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @l_Lean_Syntax_formatStx(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @l_Std_Format_pretty(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Lean_Elab_instToFormatModifiers___lam__0___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Lean_Elab_instToFormatModifiers___lam__0___closed__2_once seq_cst, align 4, !tbaa !18
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Lean_Elab_instToFormatModifiers___lam__0___closed__2, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_instToFormatModifiers___lam__0___closed__2, ptr noundef nonnull @l_Lean_Elab_instToFormatModifiers___lam__0___closed__2_once, ptr noundef nonnull @_init_l_Lean_Elab_instToFormatModifiers___lam__0___closed__2) #8
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 3 uses
  %i.e = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = icmp ult ptr %.0.i, inttoptr (i64 4294967296 to ptr)
  %or.cond.i = or i1 %i.g, %.not.i
  br i1 %or.cond.i, label %lean_nat_to_int.exit, label %bb.d

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.h = lshr i64 %i.e, 1
  %i.i = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.h) #8
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %lean_obj_once.exit, %bb.d
  %.1.i = phi ptr [ %.0.i, %lean_obj_once.exit ], [ %i.i, %bb.d ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Elab_instToFormatModifiers___lam__1(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 11 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not.i214 = icmp eq i64 %i.d, 0                ; 3 uses
  br i1 %.not.i214, label %bb.b, label %lean_inc.exit215

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %i.b, align 4, !tbaa !14 ; 3 uses
  %i.e = icmp sgt i32 %.val.i.i, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %.val.i.i, 1
  store i32 %i.f, ptr %i.b, align 4, !tbaa !14
  br label %lean_inc.exit215

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit215, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit215

lean_inc.exit215:                                 ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load i8, ptr %i.h, align 8, !tbaa !15    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.k = load i8, ptr %i.j, align 1, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.m = load i8, ptr %i.l, align 2, !tbaa !15    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 35
  %i.o = load i8, ptr %i.n, align 1, !tbaa !15    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.q = load i8, ptr %i.p, align 4, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !10   ; 4 uses
  %.val.i.i229 = load i32, ptr %i.s, align 4, !tbaa !14 ; 3 uses
  %i.t = icmp sgt i32 %.val.i.i229, 0
  br i1 %i.t, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %lean_inc.exit215
  %i.u = add nuw i32 %.val.i.i229, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !14
  br label %lean_inc_ref.exit231

bb.g:                                             ; preds = %lean_inc.exit215
  %.not.i.i230 = icmp eq i32 %.val.i.i229, 0
  br i1 %.not.i.i230, label %lean_inc_ref.exit231, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = atomicrmw sub ptr %i.s, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit231

lean_inc_ref.exit231:                             ; preds = %bb.f, %bb.g, %bb.h
  %i.w = load i32, ptr %2, align 8, !tbaa !14     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %lean_inc_ref.exit231
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %2, align 8, !tbaa !14
  br label %lean_dec_ref.exit227

bb.j:                                             ; preds = %lean_inc_ref.exit231
  %.not.i226 = icmp eq i32 %i.w, 0
  br i1 %.not.i226, label %lean_dec_ref.exit227, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec_ref.exit227

lean_dec_ref.exit227:                             ; preds = %bb.i, %bb.j, %bb.k
  br i1 %.not.i214, label %bb.m, label %bb.l

bb.l:                                             ; preds = %lean_dec_ref.exit227
  %i.z = lshr i64 %i.c, 1
  %i.aa = trunc i64 %i.z to i32
  br label %lean_obj_tag.exit

bb.m:                                             ; preds = %lean_dec_ref.exit227
  %i.ab = getelementptr i8, ptr %i.b, i64 4
  %.val.i = load i32, ptr %i.ab, align 4
  %i.ac = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.l, %bb.m
  %.0.i = phi i32 [ %i.aa, %bb.l ], [ %i.ac, %bb.m ]
  %i.ad = icmp eq i32 %.0.i, 0
  br i1 %i.ad, label %bb.cj, label %bb.n

bb.n:                                             ; preds = %lean_obj_tag.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !10 ; 12 uses
  %.val228 = load i32, ptr %i.b, align 8, !tbaa !14
  %i.ag = icmp eq i32 %.val228, 1                 ; 2 uses
  br i1 %i.ag, label %lean_dec.exit220, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = and i64 %i.ah, 1
  %.not.i212 = icmp eq i64 %i.ai, 0
  br i1 %.not.i212, label %bb.p, label %lean_inc.exit213

bb.p:                                             ; preds = %bb.o
  %.val.i.i233 = load i32, ptr %i.af, align 4, !tbaa !14 ; 3 uses
  %i.aj = icmp sgt i32 %.val.i.i233, 0
  br i1 %i.aj, label %bb.q, label %bb.r, !prof !16

bb.q:                                             ; preds = %bb.p
  %i.ak = add nuw i32 %.val.i.i233, 1
  store i32 %i.ak, ptr %i.af, align 4, !tbaa !14
  br label %lean_inc.exit213

bb.r:                                             ; preds = %bb.p
  %.not.i.i234 = icmp eq i32 %.val.i.i233, 0
  br i1 %.not.i.i234, label %lean_inc.exit213, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = atomicrmw sub ptr %i.af, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit213

lean_inc.exit213:                                 ; preds = %bb.s, %bb.r, %bb.q, %bb.o
  br i1 %.not.i214, label %bb.t, label %lean_dec.exit220

bb.t:                                             ; preds = %lean_inc.exit213
  %i.am = load i32, ptr %i.b, align 8, !tbaa !14  ; 3 uses
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %bb.u, label %bb.v, !prof !16

bb.u:                                             ; preds = %bb.t
  %i.ao = add nsw i32 %i.am, -1
  store i32 %i.ao, ptr %i.b, align 8, !tbaa !14
  br label %lean_dec.exit220

bb.v:                                             ; preds = %bb.t
  %.not.i221 = icmp eq i32 %i.am, 0
  br i1 %.not.i221, label %lean_dec.exit220, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.b) #8
  br label %lean_dec.exit220

lean_dec.exit220:                                 ; preds = %lean_inc.exit213, %bb.u, %bb.v, %bb.w, %bb.n
  %.0193 = phi ptr [ %i.b, %bb.n ], [ inttoptr (i64 1 to ptr), %bb.w ], [ inttoptr (i64 1 to ptr), %bb.v ], [ inttoptr (i64 1 to ptr), %bb.u ], [ inttoptr (i64 1 to ptr), %lean_inc.exit213 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !10 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !10 ; 8 uses
  %.val = load i32, ptr %i.af, align 8, !tbaa !14
  %i.at = icmp eq i32 %.val, 1
  br i1 %i.at, label %bb.aj, label %bb.x

bb.x:                                             ; preds = %lean_dec.exit220
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = and i64 %i.au, 1
  %.not.i210 = icmp eq i64 %i.av, 0
  br i1 %.not.i210, label %bb.y, label %lean_inc.exit211

bb.y:                                             ; preds = %bb.x
  %.val.i.i236 = load i32, ptr %i.as, align 4, !tbaa !14 ; 3 uses
  %i.aw = icmp sgt i32 %.val.i.i236, 0
  br i1 %i.aw, label %bb.z, label %bb.aa, !prof !16

bb.z:                                             ; preds = %bb.y
  %i.ax = add nuw i32 %.val.i.i236, 1
  store i32 %i.ax, ptr %i.as, align 4, !tbaa !14
  br label %lean_inc.exit211

bb.aa:                                            ; preds = %bb.y
  %.not.i.i237 = icmp eq i32 %.val.i.i236, 0
  br i1 %.not.i.i237, label %lean_inc.exit211, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ay = atomicrmw sub ptr %i.as, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit211

lean_inc.exit211:                                 ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x
  %i.az = ptrtoint ptr %i.aq to i64
  %i.ba = and i64 %i.az, 1
  %.not.i208 = icmp eq i64 %i.ba, 0
  br i1 %.not.i208, label %bb.ac, label %lean_inc.exit209

bb.ac:                                            ; preds = %lean_inc.exit211
  %.val.i.i239 = load i32, ptr %i.aq, align 4, !tbaa !14 ; 3 uses
  %i.bb = icmp sgt i32 %.val.i.i239, 0
  br i1 %i.bb, label %bb.ad, label %bb.ae, !prof !16

bb.ad:                                            ; preds = %bb.ac
  %i.bc = add nuw i32 %.val.i.i239, 1
  store i32 %i.bc, ptr %i.aq, align 4, !tbaa !14
  br label %lean_inc.exit209

bb.ae:                                            ; preds = %bb.ac
  %.not.i.i240 = icmp eq i32 %.val.i.i239, 0
  br i1 %.not.i.i240, label %lean_inc.exit209, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bd = atomicrmw sub ptr %i.aq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit209

lean_inc.exit209:                                 ; preds = %lean_inc.exit211, %bb.ad, %bb.ae, %bb.af
  %i.be = load i32, ptr %i.af, align 8, !tbaa !14 ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 1
  br i1 %i.bf, label %bb.ag, label %bb.ah, !prof !16

bb.ag:                                            ; preds = %lean_inc.exit209
  %i.bg = add nsw i32 %i.be, -1
  store i32 %i.bg, ptr %i.af, align 8, !tbaa !14
  br label %bb.ak

bb.ah:                                            ; preds = %lean_inc.exit209
  %.not.i222 = icmp eq i32 %i.be, 0
  br i1 %.not.i222, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.af) #8
  br label %bb.ak

bb.aj:                                            ; preds = %lean_dec.exit220
  %i.bh = tail call ptr @l_Lean_Syntax_formatStx(ptr noundef %i.aq, ptr noundef nonnull inttoptr (i64 1 to ptr), i8 noundef zeroext 0) #8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = and i32 %i.bj, 16777215
  %i.bl = or disjoint i32 %i.bk, 83886080
  store i32 %i.bl, ptr %i.bi, align 4
  store ptr @l_Lean_Elab_instToFormatModifiers___lam__1___closed__2_value, ptr %i.ar, align 8, !tbaa !10
  store ptr %i.bh, ptr %i.ap, align 8, !tbaa !10
  br label %bb.am

bb.ak:                                            ; preds = %bb.ag, %bb.ah, %bb.ai
  %i.bm = tail call ptr @l_Lean_Syntax_formatStx(ptr noundef %i.aq, ptr noundef nonnull inttoptr (i64 1 to ptr), i8 noundef zeroext 0) #8
  tail call void @lean_inc_heartbeat() #8
end_hunk_4
begin_hunk_5_@l_Lean_Elab_instToFormatModifiers___lam__1:bb.a
  store i32 84017176, ptr %i.de, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.cx, ptr %i.df, align 8, !tbaa !10
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store ptr @l_Lean_Elab_instToFormatModifiers___lam__1___closed__38_value, ptr %i.dg, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.dh = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.bd, label %lean_alloc_ctor.exit251

bb.bd:                                            ; preds = %lean_alloc_ctor.exit250
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit251:                          ; preds = %lean_alloc_ctor.exit250
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 1, ptr %i.dh, align 4, !tbaa !14
  store i32 67239960, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %.0.i248, ptr %i.dk, align 8, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store ptr %i.dc, ptr %i.dl, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.dm = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.be, label %lean_alloc_ctor.exit252

bb.be:                                            ; preds = %lean_alloc_ctor.exit251
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit252:                          ; preds = %lean_alloc_ctor.exit251
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 0, ptr %i.dp, align 8, !tbaa !12
  store i32 1, ptr %i.dm, align 8, !tbaa !14
  store i32 100728856, ptr %i.do, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.dh, ptr %i.dq, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.dr = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.bf, label %lean_alloc_ctor.exit253

bb.bf:                                            ; preds = %lean_alloc_ctor.exit252
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit253:                          ; preds = %lean_alloc_ctor.exit252
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store i32 1, ptr %i.dr, align 4, !tbaa !14
  store i32 84017176, ptr %i.dt, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr @l_Lean_Elab_instToFormatModifiers___lam__1___closed__32_value, ptr %i.du, align 8, !tbaa !10
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store ptr %i.dm, ptr %i.dv, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.dw = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.bg, label %lean_alloc_ctor.exit254

bb.bg:                                            ; preds = %lean_alloc_ctor.exit253
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit254:                          ; preds = %lean_alloc_ctor.exit253
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store i32 1, ptr %i.dw, align 4, !tbaa !14
  store i32 84017176, ptr %i.dy, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.dr, ptr %i.dz, align 8, !tbaa !10
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store ptr @l_Lean_Elab_instToFormatModifiers___lam__1___closed__40_value, ptr %i.ea, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.eb = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.bh, label %lean_alloc_ctor.exit255

bb.bh:                                            ; preds = %lean_alloc_ctor.exit254
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit255:                          ; preds = %lean_alloc_ctor.exit254
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store i32 1, ptr %i.eb, align 4, !tbaa !14
  store i32 16908312, ptr %i.ed, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %i.dw, ptr %i.ee, align 8, !tbaa !10
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.ef, align 8, !tbaa !10
  br label %bb.cj

bb.bi:                                            ; preds = %lean_inc.exit205
  %.val.i.i256 = load i32, ptr %.0180, align 4, !tbaa !14 ; 3 uses
  %i.eg = icmp sgt i32 %.val.i.i256, 0
  br i1 %i.eg, label %bb.bj, label %bb.bk, !prof !16

bb.bj:                                            ; preds = %bb.bi
  %i.eh = add nuw i32 %.val.i.i256, 1
  store i32 %i.eh, ptr %.0180, align 4, !tbaa !14
  br label %lean_inc.exit207

bb.bk:                                            ; preds = %bb.bi
  %.not.i.i257 = icmp eq i32 %.val.i.i256, 0
  br i1 %.not.i.i257, label %lean_inc.exit207, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ei = atomicrmw sub ptr %.0180, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit207

lean_inc.exit207:                                 ; preds = %bb.bl, %bb.bk, %bb.bj, %lean_inc.exit205
  %i.ej = tail call ptr @l_List_appendTR___redArg(ptr noundef %i.fp, ptr noundef nonnull %.0180) #8
  %i.ek = tail call ptr @lean_array_to_list(ptr noundef nonnull %i.s) #8
  %i.el = tail call ptr @l_List_mapTR_loop___redArg(ptr noundef %0, ptr noundef %i.ek, ptr noundef nonnull inttoptr (i64 1 to ptr)) #8
  %i.em = tail call ptr @l_List_appendTR___redArg(ptr noundef %i.ej, ptr noundef %i.el) #8
  %i.en = tail call ptr @l_Std_Format_joinSep___redArg(ptr noundef %1, ptr noundef %i.em, ptr noundef nonnull @l_Lean_Elab_instToFormatModifiers___lam__1___closed__3_value) #8
  %i.eo = load atomic i32, ptr @l_Lean_Elab_instToFormatModifiers___lam__1___closed__6_once seq_cst, align 4, !tbaa !18
  %i.ep = icmp eq i32 %i.eo, 1
  br i1 %i.ep, label %bb.bm, label %bb.bn, !prof !16

bb.bm:                                            ; preds = %lean_inc.exit207
  %i.eq = load ptr, ptr @l_Lean_Elab_instToFormatModifiers___lam__1___closed__6, align 8, !tbaa !10
  br label %lean_obj_once.exit260

bb.bn:                                            ; preds = %lean_inc.exit207
  %i.er = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_instToFormatModifiers___lam__1___closed__6, ptr noundef nonnull @l_Lean_Elab_instToFormatModifiers___lam__1___closed__6_once, ptr noundef nonnull @_init_l_Lean_Elab_instToFormatModifiers___lam__1___closed__6) #8
  br label %lean_obj_once.exit260

lean_obj_once.exit260:                            ; preds = %bb.bm, %bb.bn
  %.0.i259 = phi ptr [ %i.eq, %bb.bm ], [ %i.er, %bb.bn ]
  tail call void @lean_inc_heartbeat() #8
  %i.es = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.bo, label %lean_alloc_ctor.exit261

bb.bo:                                            ; preds = %lean_obj_once.exit260
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit261:                          ; preds = %lean_obj_once.exit260
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store i32 1, ptr %i.es, align 4, !tbaa !14
  store i32 84017176, ptr %i.eu, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store ptr @l_Lean_Elab_instToFormatModifiers___lam__1___closed__7_value, ptr %i.ev, align 8, !tbaa !10
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store ptr %i.en, ptr %i.ew, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.ex = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %bb.bp, label %lean_alloc_ctor.exit262

bb.bp:                                            ; preds = %lean_alloc_ctor.exit261
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit262:                          ; preds = %lean_alloc_ctor.exit261
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store i32 1, ptr %i.ex, align 4, !tbaa !14
  store i32 84017176, ptr %i.ez, align 4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %i.es, ptr %i.fa, align 8, !tbaa !10
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store ptr @l_Lean_Elab_instToFormatModifiers___lam__1___closed__8_value, ptr %i.fb, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.fc = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.bq, label %lean_alloc_ctor.exit263

bb.bq:                                            ; preds = %lean_alloc_ctor.exit262
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit263:                          ; preds = %lean_alloc_ctor.exit262
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store i32 1, ptr %i.fc, align 4, !tbaa !14
  store i32 67239960, ptr %i.fe, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr %.0.i259, ptr %i.ff, align 8, !tbaa !10
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store ptr %i.ex, ptr %i.fg, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.fh = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.br, label %lean_alloc_ctor.exit265

bb.br:                                            ; preds = %lean_alloc_ctor.exit263
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit265:                          ; preds = %lean_alloc_ctor.exit263
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store i64 0, ptr %i.fk, align 8, !tbaa !12
  store i32 1, ptr %i.fh, align 8, !tbaa !14
  store i32 100728856, ptr %i.fj, align 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.fc, ptr %i.fl, align 8, !tbaa !10
  ret ptr %i.fh

bb.bs:                                            ; preds = %bb.ca
  %.val.i.i266 = load i32, ptr %switch.select280, align 4, !tbaa !14 ; 3 uses
  %i.fm = icmp sgt i32 %.val.i.i266, 0
  br i1 %i.fm, label %bb.bt, label %bb.bu, !prof !16

bb.bt:                                            ; preds = %bb.bs
  %i.fn = add nuw i32 %.val.i.i266, 1
  store i32 %i.fn, ptr %switch.select280, align 4, !tbaa !14
  br label %lean_inc.exit205

bb.bu:                                            ; preds = %bb.bs
  %.not.i.i267 = icmp eq i32 %.val.i.i266, 0
  br i1 %.not.i.i267, label %lean_inc.exit205, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fo = atomicrmw sub ptr %switch.select280, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit205

lean_inc.exit205:                                 ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.ca
  %i.fp = tail call ptr @l_List_appendTR___redArg(ptr noundef %3, ptr noundef nonnull %switch.select280) #8
  %i.fq = icmp eq i8 %i.q, 0
  %.0180 = select i1 %i.fq, ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Elab_instToFormatModifiers___lam__1___closed__11_value ; 5 uses
  %i.fr = ptrtoint ptr %.0180 to i64
  %i.fs = and i64 %i.fr, 1
  %.not.i206 = icmp eq i64 %i.fs, 0
  br i1 %.not.i206, label %bb.bi, label %lean_inc.exit207

bb.bw:                                            ; preds = %lean_inc.exit201
  %.val.i.i269 = load i32, ptr %switch.select284, align 4, !tbaa !14 ; 3 uses
  %i.ft = icmp sgt i32 %.val.i.i269, 0
  br i1 %i.ft, label %bb.bx, label %bb.by, !prof !16

bb.bx:                                            ; preds = %bb.bw
  %i.fu = add nuw i32 %.val.i.i269, 1
  store i32 %i.fu, ptr %switch.select284, align 4, !tbaa !14
  br label %bb.ca

bb.by:                                            ; preds = %bb.bw
  %.not.i.i270 = icmp eq i32 %.val.i.i269, 0
  br i1 %.not.i.i270, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fv = atomicrmw sub ptr %switch.select284, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bx, %lean_inc.exit201
  %3 = tail call ptr @l_List_appendTR___redArg(ptr noundef %i.gi, ptr noundef nonnull %switch.select284) #8
  %switch.selectcmp = icmp eq i8 %i.o, 1
  %switch.select = select i1 %switch.selectcmp, ptr @l_Lean_Elab_instToFormatModifiers___lam__1___closed__17_value, ptr inttoptr (i64 1 to ptr)
  %switch.selectcmp279 = icmp eq i8 %i.o, 0
  %switch.select280 = select i1 %switch.selectcmp279, ptr @l_Lean_Elab_instToFormatModifiers___lam__1___closed__14_value, ptr %switch.select ; 5 uses
  %i.fw = ptrtoint ptr %switch.select280 to i64
  %i.fx = and i64 %i.fw, 1
  %.not.i.a = icmp eq i64 %i.fx, 0
  br i1 %.not.i.a, label %bb.bs, label %lean_inc.exit205

bb.cb:                                            ; preds = %bb.cj
  %.val.i.i272 = load i32, ptr %switch.select288, align 4, !tbaa !14 ; 3 uses
  %i.fy = icmp sgt i32 %.val.i.i272, 0
  br i1 %i.fy, label %bb.cc, label %bb.cd, !prof !16

bb.cc:                                            ; preds = %bb.cb
  %i.fz = add nuw i32 %.val.i.i272, 1
  store i32 %i.fz, ptr %switch.select288, align 4, !tbaa !14
  br label %lean_inc.exit

bb.cd:                                            ; preds = %bb.cb
  %.not.i.i273 = icmp eq i32 %.val.i.i272, 0
  br i1 %.not.i.i273, label %lean_inc.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ga = atomicrmw sub ptr %switch.select288, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.cj
  %i.gb = tail call ptr @l_List_appendTR___redArg(ptr noundef nonnull %.3, ptr noundef nonnull %switch.select288) #8
  %i.gc = icmp eq i8 %i.k, 0
  %spec.select = select i1 %i.gc, ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Elab_instToFormatModifiers___lam__1___closed__26_value ; 5 uses
  %i.gd = ptrtoint ptr %spec.select to i64
  %i.ge = and i64 %i.gd, 1
  %.not.i200 = icmp eq i64 %i.ge, 0
  br i1 %.not.i200, label %bb.cf, label %lean_inc.exit201

bb.cf:                                            ; preds = %lean_inc.exit
  %.val.i.i275 = load i32, ptr %spec.select, align 4, !tbaa !14 ; 3 uses
  %i.gf = icmp sgt i32 %.val.i.i275, 0
  br i1 %i.gf, label %bb.cg, label %bb.ch, !prof !16

bb.cg:                                            ; preds = %bb.cf
  %i.gg = add nuw i32 %.val.i.i275, 1
  store i32 %i.gg, ptr %spec.select, align 4, !tbaa !14
  br label %lean_inc.exit201

bb.ch:                                            ; preds = %bb.cf
  %.not.i.i276 = icmp eq i32 %.val.i.i275, 0
  br i1 %.not.i.i276, label %lean_inc.exit201, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.gh = atomicrmw sub ptr %spec.select, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit201

lean_inc.exit201:                                 ; preds = %bb.ci, %bb.ch, %bb.cg, %lean_inc.exit
  %i.gi = tail call ptr @l_List_appendTR___redArg(ptr noundef %i.gb, ptr noundef nonnull %spec.select) #8
  %switch.selectcmp281 = icmp eq i8 %i.m, 1
  %switch.select282 = select i1 %switch.selectcmp281, ptr @l_Lean_Elab_instToFormatModifiers___lam__1___closed__20_value, ptr @l_Lean_Elab_instToFormatModifiers___lam__1___closed__23_value
  %switch.selectcmp283 = icmp eq i8 %i.m, 0
  %switch.select284 = select i1 %switch.selectcmp283, ptr inttoptr (i64 1 to ptr), ptr %switch.select282 ; 5 uses
  %4 = ptrtoint ptr %switch.select284 to i64
  %5 = and i64 %4, 1
  %.not.i202 = icmp eq i64 %5, 0
  br i1 %.not.i202, label %bb.bw, label %bb.ca

bb.cj:                                            ; preds = %lean_obj_tag.exit, %lean_alloc_ctor.exit255
  %.3 = phi ptr [ %i.eb, %lean_alloc_ctor.exit255 ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit ]
  %switch.selectcmp285 = icmp eq i8 %i.i, 1
  %switch.select286 = select i1 %switch.selectcmp285, ptr @l_Lean_Elab_instToFormatModifiers___lam__1___closed__28_value, ptr @l_Lean_Elab_instToFormatModifiers___lam__1___closed__30_value
  %switch.selectcmp287 = icmp eq i8 %i.i, 0
  %switch.select288 = select i1 %switch.selectcmp287, ptr inttoptr (i64 1 to ptr), ptr %switch.select286 ; 5 uses
  %6 = ptrtoint ptr %switch.select288 to i64
  %7 = and i64 %6, 1
  %.not.i = icmp eq i64 %7, 0
  br i1 %.not.i, label %bb.cb, label %lean_inc.exit
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Lean_Elab_instToFormatModifiers___lam__1___closed__36() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Lean_Elab_instToFormatModifiers___lam__1___closed__35_once seq_cst, align 4, !tbaa !18
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Lean_Elab_instToFormatModifiers___lam__1___closed__35, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_instToFormatModifiers___lam__1___closed__35, ptr noundef nonnull @l_Lean_Elab_instToFormatModifiers___lam__1___closed__35_once, ptr noundef nonnull @_init_l_Lean_Elab_instToFormatModifiers___lam__1___closed__35) #8
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 3 uses
  %i.e = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = icmp ult ptr %.0.i, inttoptr (i64 4294967296 to ptr)
  %or.cond.i = or i1 %i.g, %.not.i
  br i1 %or.cond.i, label %lean_nat_to_int.exit, label %bb.d

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.h = lshr i64 %i.e, 1
  %i.i = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.h) #8
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %lean_obj_once.exit, %bb.d
  %.1.i = phi ptr [ %.0.i, %lean_obj_once.exit ], [ %i.i, %bb.d ]
  ret ptr %.1.i
}

declare ptr @l_List_appendTR___redArg(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lean_array_to_list(ptr noundef) local_unnamed_addr #2

declare ptr @l_List_mapTR_loop___redArg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Std_Format_joinSep___redArg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Lean_Elab_instToFormatModifiers___lam__1___closed__6() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Lean_Elab_instToFormatModifiers___lam__1___closed__5_once seq_cst, align 4, !tbaa !18
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Lean_Elab_instToFormatModifiers___lam__1___closed__5, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_instToFormatModifiers___lam__1___closed__5, ptr noundef nonnull @l_Lean_Elab_instToFormatModifiers___lam__1___closed__5_once, ptr noundef nonnull @_init_l_Lean_Elab_instToFormatModifiers___lam__1___closed__5) #8
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 3 uses
  %i.e = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = icmp ult ptr %.0.i, inttoptr (i64 4294967296 to ptr)
  %or.cond.i = or i1 %i.g, %.not.i
  br i1 %or.cond.i, label %lean_nat_to_int.exit, label %bb.d

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.h = lshr i64 %i.e, 1
  %i.i = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.h) #8
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %lean_obj_once.exit, %bb.d
  %.1.i = phi ptr [ %.0.i, %lean_obj_once.exit ], [ %i.i, %bb.d ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_instToStringModifiers___lam__0(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @l_Std_Format_defWidth, align 8, !tbaa !10
  %i.b = tail call ptr @l_Std_Format_pretty(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 1 to ptr)) #8
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_expandOptDocComment_x3f___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 10 uses
  %i.e = tail call ptr @l_Lean_Syntax_getOptional_x3f(ptr noundef %2) #8 ; 8 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = and i64 %i.f, 1
  %.not.i88 = icmp eq i64 %i.g, 0                 ; 2 uses
  br i1 %.not.i88, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i64 %i.f, 1
  %i.i = trunc i64 %i.h to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.e, i64 4
  %.val.i = load i32, ptr %i.j, align 4
  %i.k = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.i, %bb.b ], [ %i.k, %bb.c ]
  %i.l = icmp eq i32 %.0.i, 0
  br i1 %i.l, label %bb.d, label %bb.o

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = and i64 %i.m, 1
  %.not.i65 = icmp eq i64 %i.n, 0
  br i1 %.not.i65, label %bb.e, label %lean_inc.exit66

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %i.d, align 4, !tbaa !14 ; 3 uses
  %i.o = icmp sgt i32 %.val.i.i, 0
  br i1 %i.o, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw i32 %.val.i.i, 1
  store i32 %i.p, ptr %i.d, align 4, !tbaa !14
  br label %lean_inc.exit66

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit66, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = atomicrmw sub ptr %i.d, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit66

lean_inc.exit66:                                  ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %i.r = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %lean_inc.exit66
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit86

bb.j:                                             ; preds = %lean_inc.exit66
  %.not.i85 = icmp eq i32 %i.r, 0
  br i1 %.not.i85, label %lean_dec_ref.exit86, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit86

lean_dec_ref.exit86:                              ; preds = %bb.i, %bb.j, %bb.k
  %i.u = load i32, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.l, label %bb.m, !prof !16

bb.l:                                             ; preds = %lean_dec_ref.exit86
  %i.w = add nsw i32 %i.u, -1
  store i32 %i.w, ptr %0, align 8, !tbaa !14
  br label %lean_dec_ref.exit84

bb.m:                                             ; preds = %lean_dec_ref.exit86
  %.not.i83 = icmp eq i32 %i.u, 0
  br i1 %.not.i83, label %lean_dec_ref.exit84, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit84

lean_dec_ref.exit84:                              ; preds = %bb.l, %bb.m, %bb.n
  %i.x = tail call ptr @lean_apply_2(ptr noundef %i.d, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 1 to ptr)) #8
  br label %bb.bp

bb.o:                                             ; preds = %lean_obj_tag.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !10   ; 10 uses
  %.val = load i32, ptr %i.e, align 8, !tbaa !14
  %i.aa = icmp eq i32 %.val, 1                    ; 2 uses
  br i1 %i.aa, label %lean_dec.exit71, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = and i64 %i.ab, 1
  %.not.i63 = icmp eq i64 %i.ac, 0
  br i1 %.not.i63, label %bb.q, label %lean_inc.exit64

bb.q:                                             ; preds = %bb.p
  %.val.i.i89 = load i32, ptr %i.z, align 4, !tbaa !14 ; 3 uses
  %i.ad = icmp sgt i32 %.val.i.i89, 0
  br i1 %i.ad, label %bb.r, label %bb.s, !prof !16

bb.r:                                             ; preds = %bb.q
  %i.ae = add nuw i32 %.val.i.i89, 1
  store i32 %i.ae, ptr %i.z, align 4, !tbaa !14
end_hunk_5
