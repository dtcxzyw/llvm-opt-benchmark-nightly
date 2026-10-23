Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/external?download=true
inline.NumInlined: 933
inline.NumDeleted: 376
begin_hunk_0_@_ZN7CaDiCaL8External4initEi:bb.a

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit86, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit49
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !53 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !54 ; 2 uses
  %i.hl = load ptr, ptr %i.hg, align 8, !tbaa !53 ; 2 uses
  %i.hm = ptrtoint ptr %i.hi to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = shl nsw i64 %i.ho, 3
  %i.hq = zext i32 %i.hk to i64
  %i.hr = add nsw i64 %i.hp, %i.hq                ; 3 uses
  %.not26 = icmp sgt i64 %i.hr, %i.h
  br i1 %.not26, label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge
  %i.hs = add nsw i64 %i.h, 1                     ; 5 uses
  %i.ht = icmp ult i64 %i.hs, %i.hr
  br i1 %i.ht, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.hu = sdiv i64 %i.hs, 64
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.hu
  %i.hw = and i64 %i.hs, -9223372036854775745
  %i.hx = icmp ugt i64 %i.hw, -9223372036854775808
  %storemerge.idx.i.i.i.i = select i1 %i.hx, i64 -8, i64 0
  %storemerge.i.i.i.i = getelementptr inbounds i8, ptr %i.hv, i64 %storemerge.idx.i.i.i.i
  %i.hy = trunc i64 %i.hs to i32
  %i.hz = and i32 %i.hy, 63
  store ptr %storemerge.i.i.i.i, ptr %i.hh, align 8
  store i32 %i.hz, ptr %i.hj, align 8
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

bb.bd:                                            ; preds = %bb.bb
  %i.ia = sub nuw i64 %i.hs, %i.hr
  tail call void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.hg, ptr %i.hi, i32 %i.hk, i64 noundef %i.ia, i1 noundef zeroext false)
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

_ZNSt6vectorIbSaIbEE6resizeEmb.exit:              ; preds = %bb.bd, %bb.bc, %._crit_edge
  %i.ib = load ptr, ptr %0, align 8, !tbaa !51
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 3268
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !196
  %.not27 = icmp eq i32 %i.id, 0
  br i1 %.not27, label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit89, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !53 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !54 ; 2 uses
  %i.ij = load ptr, ptr %i.ie, align 8, !tbaa !53 ; 2 uses
  %i.ik = ptrtoint ptr %i.ig to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = shl nsw i64 %i.im, 3
  %i.io = zext i32 %i.ii to i64
  %i.ip = add nsw i64 %i.in, %i.io                ; 3 uses
  %.not28 = icmp sgt i64 %i.ip, %i.h
  br i1 %.not28, label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit89, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.iq = add nsw i64 %i.h, 1                     ; 5 uses
  %i.ir = icmp ult i64 %i.iq, %i.ip
  br i1 %i.ir, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.is = sdiv i64 %i.iq, 64
  %i.it = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.is
  %i.iu = and i64 %i.iq, -9223372036854775745
  %i.iv = icmp ugt i64 %i.iu, -9223372036854775808
  %storemerge.idx.i.i.i.i87 = select i1 %i.iv, i64 -8, i64 0
  %storemerge.i.i.i.i88 = getelementptr inbounds i8, ptr %i.it, i64 %storemerge.idx.i.i.i.i87
  %i.iw = trunc i64 %i.iq to i32
  %i.ix = and i32 %i.iw, 63
  store ptr %storemerge.i.i.i.i88, ptr %i.if, align 8
  store i32 %i.ix, ptr %i.ih, align 8
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit89

bb.bh:                                            ; preds = %bb.bf
  %i.iy = sub nuw i64 %i.iq, %i.ip
  tail call void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.ie, ptr %i.ig, i32 %i.ii, i64 noundef %i.iy, i1 noundef zeroext false)
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit89

_ZNSt6vectorIbSaIbEE6resizeEmb.exit89:            ; preds = %bb.bh, %bb.bg, %bb.be, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  store i32 %1, ptr %i.a, align 8, !tbaa !52
  br label %bb.bi

bb.bi:                                            ; preds = %bb.a, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit89
  ret void
}

declare void @_ZN7CaDiCaL8Internal9init_varsEi(ptr noundef nonnull align 8 dereferenceable(5704), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8External17reset_assumptionsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(568) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !190
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !190
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.e = load ptr, ptr %0, align 8, !tbaa !51
  tail call void @_ZN7CaDiCaL8Internal17reset_assumptionsEv(ptr noundef nonnull align 8 dereferenceable(5704) %i.e)
  ret void
}

declare void @_ZN7CaDiCaL8Internal17reset_assumptionsEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8External15reset_concludedEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(568) initializes((225, 226)) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 225
  store i8 0, ptr %i.a, align 1, !tbaa !197
  %i.b = load ptr, ptr %0, align 8, !tbaa !51
  tail call void @_ZN7CaDiCaL8Internal15reset_concludedEv(ptr noundef nonnull align 8 dereferenceable(5704) %i.b)
  ret void
}

declare void @_ZN7CaDiCaL8Internal15reset_concludedEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8External16reset_constraintEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(568) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !190
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !190
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.e = load ptr, ptr %0, align 8, !tbaa !51
  tail call void @_ZN7CaDiCaL8Internal16reset_constraintEv(ptr noundef nonnull align 8 dereferenceable(5704) %i.e)
  ret void
}

declare void @_ZN7CaDiCaL8Internal16reset_constraintEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7CaDiCaL8External14reset_extendedEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(568) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !198, !range !199, !noundef !200
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !198
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8External12reset_limitsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(568) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  tail call void @_ZN7CaDiCaL8Internal12reset_limitsEv(ptr noundef nonnull align 8 dereferenceable(5704) %i.a)
  ret void
}

declare void @_ZN7CaDiCaL8Internal12reset_limitsEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7CaDiCaL8External11internalizeEi(ptr noundef nonnull align 8 dereferenceable(568) %0, i32 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit30.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !52
  %i.d = icmp sgt i32 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7CaDiCaL8External4initEi(ptr noundef nonnull align 8 dereferenceable(568) %0, i32 noundef %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = zext nneg i32 %i.a to i64                ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !183
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.f
  %i.i = load i32, ptr %i.h, align 4, !tbaa !192  ; 2 uses
  %i.j = icmp slt i32 %1, 0                       ; 2 uses
  %i.k = sub nsw i32 0, %i.i
  %spec.select = select i1 %i.j, i32 %i.k, i32 %i.i ; 2 uses
  %.not23 = icmp eq i32 %spec.select, 0
  %.pre43 = load ptr, ptr %0, align 8, !tbaa !51  ; 3 uses
  br i1 %.not23, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.pre43, i64 80
  %i.m = load i32, ptr %i.l, align 8, !tbaa !189  ; 2 uses
  %i.n = add i32 %i.m, 1                          ; 3 uses
  tail call void @_ZN7CaDiCaL8Internal9init_varsEi(ptr noundef nonnull align 8 dereferenceable(5704) %.pre43, i32 noundef %i.n)
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !183
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.f
  store i32 %i.n, ptr %i.p, align 4, !tbaa !192
  %i.q = load ptr, ptr %0, align 8, !tbaa !51     ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 528 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 536 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !190  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 544 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !191
  %.not.i = icmp eq ptr %i.t, %i.v
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.a, ptr %i.t, align 4, !tbaa !192
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store ptr %i.w, ptr %i.s, align 8, !tbaa !190
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !183  ; 4 uses
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 5 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775804
  br i1 %i.ab, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #23
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ac = ashr exact i64 %i.aa, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 2305843009213693951)
  %i.ag = select i1 %i.ae, i64 2305843009213693951, i64 %i.af ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #24 ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.aa ; 2 uses
  store i32 %i.a, ptr %i.aj, align 4, !tbaa !192
  %i.ak = icmp sgt i64 %i.aa, 0
  br i1 %i.ak, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.x, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.not.i17.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ai, ptr %i.r, align 8, !tbaa !183
  store ptr %i.al, ptr %i.s, align 8, !tbaa !190
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.am, ptr %i.u, align 8, !tbaa !191
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !51
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %.pre = phi ptr [ %i.q, %bb.f ], [ %.pre.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.an = xor i32 %i.m, -1
  %spec.select27 = select i1 %i.j, i32 %i.an, i32 %i.n
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.d
  %i.ao = phi ptr [ %.pre43, %bb.d ], [ %.pre, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %.1 = phi i32 [ %spec.select, %bb.d ], [ %spec.select27, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 3268
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !196
  %.not24 = icmp eq i32 %i.aq, 0
  br i1 %.not24, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !53
  %i.at = lshr i32 %i.a, 6
  %.zext = zext nneg i32 %i.at to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.zext
  %i.av = and i64 %i.f, 63
  %i.aw = shl nuw i64 1, %i.av
  %i.ax = load i64, ptr %i.au, align 8, !tbaa !195
  %i.ay = and i64 %i.ax, %i.aw
  %.not40 = icmp eq i64 %i.ay, 0
  br i1 %.not40, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str, i32 noundef %i.a)
  %.pre44 = load ptr, ptr %0, align 8, !tbaa !51
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.az = phi ptr [ %i.ao, %bb.l ], [ %.pre44, %bb.m ], [ %i.ao, %bb.k ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 760
  %i.bb = tail call noundef i32 @llvm.abs.i32(i32 %.1, i1 true)
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !201
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load i32, ptr %i.be, align 1
  %i.bg = lshr i32 %i.bf, 24
  %i.bh = and i32 %i.bg, 7
  switch i32 %i.bh, label %bb.p [
    i32 0, label %bb.o
    i32 1, label %bb.q
    i32 2, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN7CaDiCaL8Internal11mark_activeEi(ptr noundef nonnull align 8 dereferenceable(5704) %i.az, i32 noundef %.1)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  tail call void @_ZN7CaDiCaL8Internal10reactivateEi(ptr noundef nonnull align 8 dereferenceable(5704) %i.az, i32 noundef %.1)
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.n, %bb.p, %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.bj = shl nuw i32 %i.a, 1
  %i.bk = add i32 %i.bj, -2                       ; 4 uses
  %.lobit.i.i = lshr i32 %1, 31
  %i.bl = or disjoint i32 %i.bk, %.lobit.i.i      ; 2 uses
  %i.bm = zext i32 %i.bl to i64                   ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !53 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !54 ; 2 uses
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !53 ; 3 uses
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = shl nsw i64 %i.bu, 3
  %i.bw = zext i32 %i.bq to i64
  %i.bx = add nsw i64 %i.bv, %i.bw                ; 2 uses
  %i.by = icmp ugt i64 %i.bx, %i.bm               ; 2 uses
  br i1 %i.by, label %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit, label %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit.thread

_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit: ; preds = %bb.q
  %i.bz = lshr i32 %i.bk, 6
  %.zext.i = zext nneg i32 %i.bz to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.zext.i
  %i.cb = and i64 %i.bm, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = load i64, ptr %i.ca, align 8, !tbaa !195
  %i.ce = and i64 %i.cd, %i.cc
  %.not41 = icmp eq i64 %i.ce, 0
  br i1 %.not41, label %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit.thread, label %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit30.thread

_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit.thread: ; preds = %bb.q, %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cg = icmp sgt i32 %1, 0
  %.lobit.i.i28 = zext i1 %i.cg to i32
  %i.ch = or disjoint i32 %i.bk, %.lobit.i.i28
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !53
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !54
  %i.cn = load ptr, ptr %i.cf, align 8, !tbaa !53 ; 2 uses
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = shl nsw i64 %i.cq, 3
  %i.cs = zext i32 %i.cm to i64
  %i.ct = add nsw i64 %i.cr, %i.cs
  %i.cu = icmp ugt i64 %i.ct, %i.ci
  br i1 %i.cu, label %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit30, label %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit30.thread

_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit30: ; preds = %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit.thread
  %i.cv = lshr i32 %i.bk, 6
  %.zext.i29 = zext nneg i32 %i.cv to i64         ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.zext.i29
  %i.cx = and i64 %i.ci, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = load i64, ptr %i.cw, align 8, !tbaa !195
  %i.da = and i64 %i.cz, %i.cy
  %.not42 = icmp eq i64 %i.da, 0
  br i1 %.not42, label %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit30.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit30
  br i1 %i.by, label %_ZN7CaDiCaL8External4markERSt6vectorIbSaIbEEi.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.db = add nuw i32 %i.bl, 1
  %i.dc = zext i32 %i.db to i64
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL8External9constrainEi:bb.a
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #24 ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.v ; 2 uses
  store i32 %1, ptr %i.ae, align 4, !tbaa !192
  %i.af = icmp sgt i64 %i.v, 0
  br i1 %i.af, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ad, ptr align 4 %i.s, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %.not.i17.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !183
  store ptr %i.ag, ptr %i.b, align 8, !tbaa !190
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ah, ptr %i.p, align 8, !tbaa !191
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.ai = load ptr, ptr %0, align 8, !tbaa !51
  tail call void @_ZN7CaDiCaL8Internal9constrainEi(ptr noundef nonnull align 8 dereferenceable(5704) %i.ai, i32 noundef %i.k)
  ret void
}

declare void @_ZN7CaDiCaL5Proof14add_constraintERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare void @_ZN7CaDiCaL8Internal9constrainEi(ptr noundef nonnull align 8 dereferenceable(5704), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8External17failed_constraintEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(568) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal17failed_constraintEv(ptr noundef nonnull align 8 dereferenceable(5704) %i.a)
  ret i1 %i.b
}

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal17failed_constraintEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8External5phaseEi(ptr noundef nonnull align 8 dereferenceable(568) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN7CaDiCaL8External11internalizeEi(ptr noundef nonnull align 8 dereferenceable(568) %0, i32 noundef %1)
  %i.b = load ptr, ptr %0, align 8, !tbaa !51
  tail call void @_ZN7CaDiCaL8Internal5phaseEi(ptr noundef nonnull align 8 dereferenceable(5704) %i.b, i32 noundef %i.a)
  ret void
}

declare void @_ZN7CaDiCaL8Internal5phaseEi(ptr noundef nonnull align 8 dereferenceable(5704), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8External7unphaseEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(568) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !52
  %i.d = icmp sgt i32 %i.a, %i.c
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = zext nneg i32 %i.a to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !183
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.f
  %i.i = load i32, ptr %i.h, align 4, !tbaa !192  ; 3 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i32 %1, 0
  %i.k = sub nsw i32 0, %i.i
  %spec.select = select i1 %i.j, i32 %i.k, i32 %i.i
  %i.l = load ptr, ptr %0, align 8, !tbaa !51
  tail call void @_ZN7CaDiCaL8Internal7unphaseEi(ptr noundef nonnull align 8 dereferenceable(5704) %i.l, i32 noundef %spec.select)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @_ZN7CaDiCaL8Internal7unphaseEi(ptr noundef nonnull align 8 dereferenceable(5704), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8External16add_observed_varEi(ptr noundef nonnull align 8 dereferenceable(568) %0, i32 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.0", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !198, !range !199, !noundef !200
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZN7CaDiCaL8External14reset_extendedEv.exit

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.c, align 8, !tbaa !198
  br label %_ZN7CaDiCaL8External14reset_extendedEv.exit

_ZN7CaDiCaL8External14reset_extendedEv.exit:      ; preds = %bb.b, %bb.c
  %i.f = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = zext nneg i32 %i.f to i64                ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !53   ; 4 uses
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = shl nsw i64 %i.q, 3
  %i.s = zext i32 %i.m to i64
  %i.t = add nsw i64 %i.r, %i.s                   ; 3 uses
  %.not23 = icmp sgt i64 %i.t, %i.h
  br i1 %.not23, label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7CaDiCaL8External14reset_extendedEv.exit
  %i.u = add nuw nsw i64 %i.h, 1                  ; 4 uses
  %i.v = icmp ult i64 %i.u, %i.t
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.zext44 = lshr i64 %i.u, 6
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.zext44
  %i.x = trunc nuw i64 %i.u to i32
  %i.y = and i32 %i.x, 63
  store ptr %i.w, ptr %i.j, align 8
  store i32 %i.y, ptr %i.l, align 8
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

bb.f:                                             ; preds = %bb.d
  %i.z = sub nuw nsw i64 %i.u, %i.t
  tail call void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr %i.k, i32 %i.m, i64 noundef %i.z, i1 noundef zeroext false)
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !53
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

_ZNSt6vectorIbSaIbEE6resizeEmb.exit:              ; preds = %bb.f, %bb.e, %_ZN7CaDiCaL8External14reset_extendedEv.exit
  %i.aa = phi ptr [ %.pre, %bb.f ], [ %i.n, %bb.e ], [ %i.n, %_ZN7CaDiCaL8External14reset_extendedEv.exit ]
  %i.ab = lshr i32 %i.f, 6
  %.zext = zext nneg i32 %i.ab to i64             ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.zext
  %i.ad = and i64 %i.h, 63
  %i.ae = shl nuw i64 1, %i.ad                    ; 2 uses
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !195
  %i.ag = and i64 %i.af, %i.ae
  %.not46 = icmp eq i64 %i.ag, 0
  br i1 %.not46, label %bb.g, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread

bb.g:                                             ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  tail call void @_ZN7CaDiCaL8External6freezeEi(ptr noundef nonnull align 8 dereferenceable(568) %0, i32 noundef %1)
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.zext ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !195
  %i.ak = or i64 %i.aj, %i.ae
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !195
  %i.al = tail call noundef i32 @_ZN7CaDiCaL8External11internalizeEi(ptr noundef nonnull align 8 dereferenceable(568) %0, i32 noundef %1)
  %i.am = load ptr, ptr %0, align 8, !tbaa !51
  tail call void @_ZN7CaDiCaL8Internal16add_observed_varEi(ptr noundef nonnull align 8 dereferenceable(5704) %i.am, i32 noundef %i.al)
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !206
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !236, !range !199, !noundef !200
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load i32, ptr %i.g, align 8, !tbaa !52
  %i.as = icmp sgt i32 %i.f, %i.ar
  br i1 %i.as, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !183
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.h
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !192 ; 4 uses
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = icmp slt i32 %1, 0
  %i.ay = sub nsw i32 0, %i.aw
  %spec.select.i = select i1 %i.ax, i32 %i.ay, i32 %i.aw
  %i.az = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.ba = tail call i32 @llvm.abs.i32(i32 %i.aw, i1 true)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 472
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !207
  %i.bd = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !208 ; 2 uses
  %.not.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i, label %_ZNK7CaDiCaL8External5fixedEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %3 = sext i8 %i.bf to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 712
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !209
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bd
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !211
  %.not9.i.i = icmp eq i32 %i.bj, 0
  %spec.select.i.i = select i1 %.not9.i.i, i32 %3, i32 0
  br label %_ZNK7CaDiCaL8External5fixedEi.exit

_ZNK7CaDiCaL8External5fixedEi.exit:               ; preds = %bb.j, %bb.k
  %.0.i.i = phi i32 [ 0, %bb.j ], [ %spec.select.i.i, %bb.k ] ; 2 uses
  %4 = icmp slt i32 %spec.select.i, 0
  %5 = sub nsw i32 0, %.0.i.i
  %spec.select10.i.i = select i1 %4, i32 %5, i32 %.0.i.i ; 2 uses
  %.not24 = icmp eq i32 %spec.select10.i.i, 0
  br i1 %.not24, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK7CaDiCaL8External5fixedEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bk = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #24 ; 3 uses
  %i.bl = icmp slt i32 %spec.select10.i.i, 0
  %i.bm = sub nsw i32 0, %1
  %i.bn = select i1 %i.bl, i32 %i.bm, i32 %1
  store ptr %i.bk, ptr %2, align 8, !tbaa !183
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !191
  store i32 %i.bn, ptr %i.bk, align 4, !tbaa !192
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !190
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !206 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !213
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  invoke void %i.bu(ptr noundef nonnull align 8 dereferenceable(10) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bv = load ptr, ptr %2, align 8, !tbaa !183   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdlPv(ptr noundef nonnull %i.bv) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZNK7CaDiCaL8External5fixedEi.exit.thread

_ZNK7CaDiCaL8External5fixedEi.exit.thread:        ; preds = %bb.i, %bb.h, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit, %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNK7CaDiCaL8External5fixedEi.exit, %bb.g, %bb.a
  ret void

bb.o:                                             ; preds = %bb.l
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = load ptr, ptr %2, align 8, !tbaa !183   ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i34, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdlPv(ptr noundef nonnull %i.bx) #22
  br label %.body

.body:                                            ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.bw
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8External6freezeEi(ptr noundef nonnull align 8 dereferenceable(568) %0, i32 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !198, !range !199, !noundef !200
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN7CaDiCaL8External14reset_extendedEv.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 8, !tbaa !198
  br label %_ZN7CaDiCaL8External14reset_extendedEv.exit

_ZN7CaDiCaL8External14reset_extendedEv.exit:      ; preds = %bb.a, %bb.b
  %i.e = tail call noundef i32 @_ZN7CaDiCaL8External11internalizeEi(ptr noundef nonnull align 8 dereferenceable(568) %0, i32 noundef %1)
  %i.f = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true) ; 2 uses
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !214  ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !186  ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2                   ; 2 uses
  %.not = icmp ugt i64 %i.o, %i.g
  br i1 %.not, label %bb.c, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %_ZN7CaDiCaL8External14reset_extendedEv.exit
  %i.p = add nuw i32 %i.f, 1
  %i.q = zext i32 %i.p to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !192
  %i.r = sub nuw nsw i64 %i.q, %i.o
  call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr %i.j, i64 noundef %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !186
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, %_ZN7CaDiCaL8External14reset_extendedEv.exit
  %i.s = phi ptr [ %.pre, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit ], [ %i.k, %_ZN7CaDiCaL8External14reset_extendedEv.exit ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.g ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !192  ; 2 uses
  %.not8 = icmp eq i32 %i.u, -1
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !192
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.w = load ptr, ptr %0, align 8, !tbaa !51     ; 4 uses
  %i.x = call noundef i32 @llvm.abs.i32(i32 %i.e, i1 true)
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 504 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 512 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !214 ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !186 ; 6 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2                 ; 4 uses
  %.not.i = icmp ugt i64 %i.ag, %i.y
  br i1 %.not.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !238 ; 2 uses
  %.not10.i = icmp eq i64 %i.ai, 0
  %i.aj = shl i64 %i.ai, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = add nsw i64 %i.am, 1
  %i.ao = select i1 %.not10.i, i64 %i.an, i64 %i.aj
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i64 [ %i.ao, %bb.f ], [ %i.ap, %bb.g ] ; 6 uses
  %.not11.i = icmp ugt i64 %.0.i, %i.am
  %i.ap = shl i64 %.0.i, 1
  br i1 %.not11.i, label %bb.h, label %bb.g, !llvm.loop !237

bb.h:                                             ; preds = %bb.g
  %i.aq = icmp ugt i64 %.0.i, %i.ag
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = sub nuw i64 %.0.i, %i.ag
  call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %i.ar)
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !186
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

bb.j:                                             ; preds = %bb.h
  %i.as = icmp samesign ult i64 %.0.i, %i.ag
  br i1 %i.as, label %bb.k, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.0.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.at
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.k
  store ptr %i.at, ptr %i.aa, align 8, !tbaa !214
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

_ZNSt6vectorIjSaIjEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i, %bb.k, %bb.j, %bb.i, %bb.e
  %i.au = phi ptr [ %i.ac, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i ], [ %i.ac, %bb.k ], [ %i.ac, %bb.j ], [ %.pre.i, %bb.i ], [ %i.ac, %bb.e ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.y ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !192 ; 2 uses
  %.not12.i = icmp eq i32 %i.aw, -1
  br i1 %.not12.i, label %_ZN7CaDiCaL8Internal6freezeEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i
  %i.ax = add nuw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !192
  br label %_ZN7CaDiCaL8Internal6freezeEi.exit

_ZN7CaDiCaL8Internal6freezeEi.exit:               ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, %bb.l
  ret void
}

declare void @_ZN7CaDiCaL8Internal16add_observed_varEi(ptr noundef nonnull align 8 dereferenceable(5704), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8External19remove_observed_varEi(ptr noundef nonnull align 8 dereferenceable(568) %0, i32 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN7CaDiCaL8External4meltEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !52
  %i.f = icmp sgt i32 %i.c, %i.e
  br i1 %i.f, label %_ZN7CaDiCaL8External4meltEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.h = zext nneg i32 %i.c to i64                ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.j = lshr i32 %i.c, 6
  %.zext = zext nneg i32 %i.j to i64              ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.zext
  %i.l = and i64 %i.h, 63
  %i.m = shl nuw i64 1, %i.l                      ; 2 uses
  %i.n = load i64, ptr %i.k, align 8, !tbaa !195
  %i.o = and i64 %i.n, %i.m
  %.not13 = icmp eq i64 %i.o, 0
  br i1 %.not13, label %_ZN7CaDiCaL8External4meltEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !183
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.h
  %i.s = load i32, ptr %i.r, align 4, !tbaa !192
  %i.t = load ptr, ptr %0, align 8, !tbaa !51
  tail call void @_ZN7CaDiCaL8Internal19remove_observed_varEi(ptr noundef nonnull align 8 dereferenceable(5704) %i.t, i32 noundef %i.s)
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.zext ; 2 uses
  %i.w = xor i64 %i.m, -1
  %i.x = load i64, ptr %i.v, align 8, !tbaa !195
  %i.y = and i64 %i.x, %i.w
  store i64 %i.y, ptr %i.v, align 8, !tbaa !195
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !198, !range !199, !noundef !200
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %_ZN7CaDiCaL8External14reset_extendedEv.exit.i

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.z, align 8, !tbaa !198
  br label %_ZN7CaDiCaL8External14reset_extendedEv.exit.i

_ZN7CaDiCaL8External14reset_extendedEv.exit.i:    ; preds = %bb.e, %bb.d
  %i.ac = tail call noundef i32 @_ZN7CaDiCaL8External11internalizeEi(ptr noundef nonnull align 8 dereferenceable(568) %0, i32 noundef %1)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !186
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.h ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !192 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN7CaDiCaL8External22get_entrailed_literalsERSt6vectorIiSaIiEE:bb.a
_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit.thread: ; preds = %bb.d, %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !190 ; 4 uses
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !191
  %.not.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit.thread
  store i32 %spec.select.i, ptr %i.ap, align 4, !tbaa !192
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !190
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.f:                                             ; preds = %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit.thread
  %i.as = load ptr, ptr %1, align 8, !tbaa !183   ; 4 uses
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 5 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775804
  br i1 %i.aw, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #23
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.ax = ashr exact i64 %i.av, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = call i64 @llvm.umin.i64(i64 %i.ay, i64 2305843009213693951)
  %i.bb = select i1 %i.az, i64 2305843009213693951, i64 %i.ba ; 3 uses
  %.not.i.i.i8 = icmp ne i64 %i.bb, 0
  call void @llvm.assume(i1 %.not.i.i.i8)
  %i.bc = shl nuw nsw i64 %i.bb, 2
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #24
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.av ; 2 uses
  store i32 %spec.select.i, ptr %i.be, align 4, !tbaa !192
  %i.bf = icmp sgt i64 %i.av, 0
  br i1 %i.bf, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %.noexc9
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bd, ptr align 4 %i.as, i64 %i.av, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %.noexc9
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %.not.i17.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.as) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bd, ptr %1, align 8, !tbaa !183
  store ptr %i.bg, ptr %i.h, align 8, !tbaa !190
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.bh, ptr %i.i, align 8, !tbaa !191
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.a, %bb.g
  %lpad.loopexit.split-lp29 = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %2, align 8, !tbaa !183   ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIiSaIiEED2Ev.exit11, label %bb.j

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.e, %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.013.018, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bj, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %bb.d

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef nonnull %i.bi) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit11

_ZNSt6vectorIiSaIiEED2Ev.exit11:                  ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %lpad.loopexit.split-lp29
}

declare void @_ZN7CaDiCaL8Internal22get_entrailed_literalsERSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(5704), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8External16conclude_unknownEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(568) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.0", align 8     ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !205
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 225 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !197, !range !199, !noundef !200
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.d, align 1, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  invoke void @_ZN7CaDiCaL8External22get_entrailed_literalsERSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %0, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 3104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !205
  invoke void @_ZN7CaDiCaL5Proof16conclude_unknownERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %1, align 8, !tbaa !183    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdlPv(ptr noundef nonnull %i.j) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %_ZNSt6vectorIiSaIiEED2Ev.exit
  ret void

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %1, align 8, !tbaa !183    ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIiSaIiEED2Ev.exit3, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdlPv(ptr noundef nonnull %i.l) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit3

_ZNSt6vectorIiSaIiEED2Ev.exit3:                   ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.k
}

declare void @_ZN7CaDiCaL5Proof16conclude_unknownERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8External17check_satisfiableEv(ptr noundef nonnull align 8 dereferenceable(568) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load i8, ptr %i.a, align 8, !tbaa !198, !range !199, !noundef !200
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL8External6extendEv(ptr noundef nonnull align 8 dereferenceable(568) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 3276
  %i.f = load i32, ptr %i.e, align 4, !tbaa !203
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7CaDiCaL8External16check_assignmentEMS0_KFiiE(ptr noundef nonnull align 8 dereferenceable(568) %0, i64 ptrtoint (ptr @_ZNK7CaDiCaL8External4ivalEi to i64), i64 0)
  %.pre = load ptr, ptr %0, align 8, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi ptr [ %.pre, %bb.d ], [ %i.d, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 3256
  %i.i = load i32, ptr %i.h, align 8, !tbaa !240
  %.not1 = icmp eq i32 %i.i, 0
  br i1 %.not1, label %_ZN7CaDiCaL8External27check_assumptions_satisfiedEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58   ; 2 uses
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %_ZN7CaDiCaL8External27check_assumptions_satisfiedEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.g

bb.g:                                             ; preds = %bb.m, %.lr.ph.i
  %.sroa.09.014.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.ao, %bb.m ] ; 3 uses
  %i.s = load i32, ptr %.sroa.09.014.i, align 4, !tbaa !192 ; 6 uses
  %i.t = tail call i32 @llvm.abs.i32(i32 %i.s, i1 true) ; 3 uses
  %i.u = load i32, ptr %i.o, align 8, !tbaa !52
  %.not.i.i = icmp sgt i32 %i.t, %i.u
  br i1 %.not.i.i, label %_ZNK7CaDiCaL8External4ivalEi.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = zext nneg i32 %i.t to i64                ; 2 uses
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !53
  %i.x = load i32, ptr %i.r, align 8, !tbaa !54
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !53   ; 2 uses
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = shl nsw i64 %i.ab, 3
  %i.ad = zext i32 %i.x to i64
  %i.ae = add nsw i64 %i.ac, %i.ad
  %i.af = icmp ugt i64 %i.ae, %i.v
  br i1 %i.af, label %bb.i, label %_ZNK7CaDiCaL8External4ivalEi.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ag = lshr i32 %i.t, 6
  %.zext.i.i = zext nneg i32 %i.ag to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.zext.i.i
  %i.ai = and i64 %i.v, 63
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !195
  %i.al = and i64 %i.ak, %i.aj
  %i.am = icmp ne i64 %i.al, 0
  br label %_ZNK7CaDiCaL8External4ivalEi.exit.i

_ZNK7CaDiCaL8External4ivalEi.exit.i:              ; preds = %bb.i, %bb.h, %bb.g
  %.0.i.i = phi i1 [ %i.am, %bb.i ], [ false, %bb.h ], [ false, %bb.g ]
  %i.an = icmp slt i32 %i.s, 0
  %spec.select.i.i = xor i1 %i.an, %.0.i.i
  %1 = sub nsw i32 0, %i.s
  %2 = select i1 %spec.select.i.i, i32 %i.s, i32 %1 ; 2 uses
  %.not.i = icmp eq i32 %2, %i.s
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK7CaDiCaL8External4ivalEi.exit.i
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str.6, i32 noundef %i.s)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK7CaDiCaL8External4ivalEi.exit.i
  %.not8.i = icmp eq i32 %2, 0
  br i1 %.not8.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %3 = load i32, ptr %.sroa.09.014.i, align 4, !tbaa !192
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str.7, i32 noundef %3)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i, i64 4 ; 2 uses
  %.not12.i = icmp eq ptr %i.ao, %i.m
  br i1 %.not12.i, label %_ZN7CaDiCaL8External27check_assumptions_satisfiedEv.exit.loopexit, label %bb.g

_ZN7CaDiCaL8External27check_assumptions_satisfiedEv.exit.loopexit: ; preds = %bb.m
  %.pre10 = load ptr, ptr %0, align 8, !tbaa !51
  br label %_ZN7CaDiCaL8External27check_assumptions_satisfiedEv.exit

_ZN7CaDiCaL8External27check_assumptions_satisfiedEv.exit: ; preds = %_ZN7CaDiCaL8External27check_assumptions_satisfiedEv.exit.loopexit, %bb.f, %bb.e
  %i.ap = phi ptr [ %i.g, %bb.e ], [ %.pre10, %_ZN7CaDiCaL8External27check_assumptions_satisfiedEv.exit.loopexit ], [ %i.g, %bb.f ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3260
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !241
  %.not2 = icmp eq i32 %i.ar, 0
  br i1 %.not2, label %_ZN7CaDiCaL8External26check_constraint_satisfiedEv.exit, label %bb.n

bb.n:                                             ; preds = %_ZN7CaDiCaL8External27check_assumptions_satisfiedEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !58 ; 2 uses
  %i.aw = icmp eq ptr %i.at, %i.av
  br i1 %i.aw, label %_ZN7CaDiCaL8External26check_constraint_satisfiedEv.exit, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !52
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = shl nsw i64 %i.bh, 3
  %i.bj = zext i32 %i.bd to i64
  %i.bk = add nsw i64 %i.bi, %i.bj
  br label %bb.p

bb.o:                                             ; preds = %_ZNK7CaDiCaL8External4ivalEi.exit.i5
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 4 ; 2 uses
  %.not10.i = icmp eq ptr %i.bl, %i.av
  br i1 %.not10.i, label %._crit_edge.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i3
  %.sroa.06.013.i = phi ptr [ %i.at, %.lr.ph.i3 ], [ %i.bl, %bb.o ] ; 2 uses
  %i.bm = load i32, ptr %.sroa.06.013.i, align 4, !tbaa !192 ; 3 uses
  %i.bn = tail call i32 @llvm.abs.i32(i32 %i.bm, i1 true) ; 3 uses
  %.not.i.i4 = icmp sgt i32 %i.bn, %i.ay
  br i1 %.not.i.i4, label %_ZNK7CaDiCaL8External4ivalEi.exit.i5, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.bp = icmp ugt i64 %i.bk, %i.bo
  br i1 %i.bp, label %bb.r, label %_ZNK7CaDiCaL8External4ivalEi.exit.i5

bb.r:                                             ; preds = %bb.q
  %i.bq = lshr i32 %i.bn, 6
  %.zext.i.i9 = zext nneg i32 %i.bq to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.zext.i.i9
  %i.bs = and i64 %i.bo, 63
  %i.bt = shl nuw i64 1, %i.bs
  %i.bu = load i64, ptr %i.br, align 8, !tbaa !195
  %i.bv = and i64 %i.bu, %i.bt
  %i.bw = icmp ne i64 %i.bv, 0
  br label %_ZNK7CaDiCaL8External4ivalEi.exit.i5

_ZNK7CaDiCaL8External4ivalEi.exit.i5:             ; preds = %bb.r, %bb.q, %bb.p
  %.0.i.i6 = phi i1 [ %i.bw, %bb.r ], [ false, %bb.q ], [ false, %bb.p ]
  %i.bx = icmp slt i32 %i.bm, 0
  %spec.select.i.i7 = xor i1 %i.bx, %.0.i.i6
  %.not11.i = icmp eq i32 %i.bm, 0
  %.not.i8 = or i1 %.not11.i, %spec.select.i.i7
  br i1 %.not.i8, label %_ZN7CaDiCaL8External26check_constraint_satisfiedEv.exit, label %bb.o

._crit_edge.i:                                    ; preds = %bb.o
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str.8)
  br label %_ZN7CaDiCaL8External26check_constraint_satisfiedEv.exit

_ZN7CaDiCaL8External26check_constraint_satisfiedEv.exit: ; preds = %_ZNK7CaDiCaL8External4ivalEi.exit.i5, %._crit_edge.i, %bb.n, %_ZN7CaDiCaL8External27check_assumptions_satisfiedEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8External16check_assignmentEMS0_KFiiE(ptr noundef nonnull align 8 dereferenceable(568) %0, i64 %1, i64 %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.fr159 = freeze i64 %1                         ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !215, !nonnull !200, !align !216
  %i.c = load i32, ptr %i.b, align 4, !tbaa !192  ; 3 uses
  %.not123130 = icmp eq i32 %i.c, 0
  br i1 %.not123130, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 %2 ; 9 uses
  %i.e = and i64 %.fr159, 1
  %.not89 = icmp eq i64 %i.e, 0
  %i.f = inttoptr i64 %.fr159 to ptr              ; 3 uses
  br i1 %.not89, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %.sroa.0115.0131.us = phi i32 [ %i.k, %bb.e ], [ 1, %.lr.ph ] ; 7 uses
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(568) %i.d, i32 noundef %.sroa.0115.0131.us)
  %.not90.us = icmp eq i32 %i.g, 0
  br i1 %.not90.us, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str.1, i32 noundef %.sroa.0115.0131.us)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us
  %i.h = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(568) %i.d, i32 noundef %.sroa.0115.0131.us)
  %i.i = sub nsw i32 0, %.sroa.0115.0131.us       ; 2 uses
  %i.j = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(568) %i.d, i32 noundef %i.i)
  %.not91.us = icmp eq i32 %i.h, %i.j
  br i1 %.not91.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str.2, i32 noundef %.sroa.0115.0131.us, i32 noundef %i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = add i32 %.sroa.0115.0131.us, 1
  %.not123.us = icmp eq i32 %.sroa.0115.0131.us, %i.c
  br i1 %.not123.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.i, %bb.e, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58   ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !58   ; 3 uses
  %.not124137 = icmp eq ptr %i.o, %i.n
  br i1 %.not124137, label %._crit_edge143, label %.lr.ph142

.lr.ph142:                                        ; preds = %._crit_edge
  %i.p = getelementptr inbounds i8, ptr %0, i64 %2 ; 2 uses
  %i.q = and i64 %.fr159, 1
  %.not88 = icmp eq i64 %i.q, 0
  %i.r = inttoptr i64 %.fr159 to ptr
  br label %bb.j

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %.sroa.0115.0131 = phi i32 [ %i.ai, %bb.i ], [ 1, %.lr.ph ] ; 7 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !213
  %i.t = getelementptr i8, ptr %i.s, i64 %.fr159
  %i.u = getelementptr i8, ptr %i.t, i64 -1
  %i.v = load ptr, ptr %i.u, align 8, !nosanitize !200
  %i.w = tail call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(568) %i.d, i32 noundef %.sroa.0115.0131)
  %.not90 = icmp eq i32 %i.w, 0
  br i1 %.not90, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str.1, i32 noundef %.sroa.0115.0131)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !213
  %i.y = getelementptr i8, ptr %i.x, i64 %.fr159
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = load ptr, ptr %i.z, align 8, !nosanitize !200
  %i.ab = tail call noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(568) %i.d, i32 noundef %.sroa.0115.0131)
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !213
  %i.ad = getelementptr i8, ptr %i.ac, i64 %.fr159
  %i.ae = getelementptr i8, ptr %i.ad, i64 -1
  %i.af = load ptr, ptr %i.ae, align 8, !nosanitize !200
  %i.ag = sub nsw i32 0, %.sroa.0115.0131         ; 2 uses
  %i.ah = tail call noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(568) %i.d, i32 noundef %i.ag)
  %.not91 = icmp eq i32 %i.ab, %i.ah
  br i1 %.not91, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str.2, i32 noundef %.sroa.0115.0131, i32 noundef %i.ag)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = add i32 %.sroa.0115.0131, 1
  %.not123 = icmp eq i32 %.sroa.0115.0131, %i.c
  br i1 %.not123, label %._crit_edge, label %.lr.ph.split

bb.j:                                             ; preds = %.lr.ph142, %bb.r
  %.sroa.022.0140 = phi ptr [ %i.o, %.lr.ph142 ], [ %.sroa.022.1, %bb.r ] ; 4 uses
  %.081139 = phi i1 [ false, %.lr.ph142 ], [ %.182, %bb.r ] ; 2 uses
  %.sroa.0108.0138 = phi ptr [ %i.o, %.lr.ph142 ], [ %i.az, %bb.r ] ; 5 uses
  %i.aj = load i32, ptr %.sroa.0108.0138, align 4, !tbaa !192 ; 3 uses
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  br i1 %.081139, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !248
  %fwrite87 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 20, i64 1, ptr %i.ak) #26 ; 0 uses
  %.not127132 = icmp eq ptr %.sroa.022.0140, %.sroa.0108.0138
  br i1 %.not127132, label %._crit_edge136, label %.lr.ph135

._crit_edge136:                                   ; preds = %.lr.ph135, %bb.l
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !248
end_hunk_2
begin_hunk_3_@_ZN7CaDiCaL8External16check_assignmentEMS0_KFiiE:bb.a
  %i.ax = tail call noundef i32 %i.aw(ptr noundef nonnull align 8 dereferenceable(568) %i.p, i32 noundef %i.aj)
  %i.ay = icmp eq i32 %i.ax, %i.aj
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.m
  %.182 = phi i1 [ true, %bb.n ], [ false, %bb.m ], [ %i.ay, %bb.q ]
  %.sroa.022.1 = phi ptr [ %.sroa.022.0140, %bb.n ], [ %i.ar, %bb.m ], [ %.sroa.022.0140, %bb.q ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0108.0138, i64 4 ; 2 uses
  %.not124 = icmp eq ptr %i.az, %i.n
  br i1 %.not124, label %._crit_edge143, label %bb.j, !llvm.loop !243

._crit_edge143:                                   ; preds = %bb.r, %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.sroa.0102.0153 = load ptr, ptr %i.ba, align 8, !tbaa !184 ; 2 uses
  %.not125154 = icmp eq ptr %.sroa.0102.0153, null
  br i1 %.not125154, label %.critedge, label %.lr.ph157

.lr.ph157:                                        ; preds = %._crit_edge143
  %i.bc = getelementptr inbounds i8, ptr %0, i64 %2 ; 3 uses
  %i.bd = and i64 %.fr159, 1
  %.not84 = icmp eq i64 %i.bd, 0
  %i.be = inttoptr i64 %.fr159 to ptr
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph157, %.thread119
  %.sroa.0102.0155 = phi ptr [ %.sroa.0102.0153, %.lr.ph157 ], [ %.sroa.0102.0, %.thread119 ] ; 3 uses
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !206
  %.not.not = icmp eq ptr %i.bf, null
  br i1 %.not.not, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0102.0155, i64 16 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !58 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0102.0155, i64 24 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !58 ; 5 uses
  %.not126.not144 = icmp eq ptr %i.bh, %i.bj
  br i1 %.not126.not144, label %.critedge128, label %.lr.ph149

.lr.ph149:                                        ; preds = %bb.t
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !192
  %.not85.us.peel = icmp eq i32 %i.bk, 0          ; 2 uses
  br i1 %.not84, label %.lr.ph149.split.us.preheader, label %.lr.ph149.split.preheader

.lr.ph149.split.preheader:                        ; preds = %.lr.ph149
  br i1 %.not85.us.peel, label %.thread119, label %bb.u

bb.u:                                             ; preds = %.lr.ph149.split.preheader
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %.not126.not.peel = icmp eq ptr %i.bl, %i.bj
  br i1 %.not126.not.peel, label %.critedge128, label %.lr.ph149.split.peel.next

.lr.ph149.split.us.preheader:                     ; preds = %.lr.ph149
  br i1 %.not85.us.peel, label %.thread119, label %bb.v

bb.v:                                             ; preds = %.lr.ph149.split.us.preheader
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %.not126.not.us.peel = icmp eq ptr %i.bm, %i.bj
  br i1 %.not126.not.us.peel, label %.critedge128, label %.lr.ph149.split.us.peel.next

.lr.ph149.split.us.peel.next:                     ; preds = %bb.v, %bb.w
  %.sroa.096.0145.us = phi ptr [ %i.bq, %bb.w ], [ %i.bm, %bb.v ] ; 2 uses
  %i.bn = load i32, ptr %.sroa.096.0145.us, align 4, !tbaa !192 ; 2 uses
  %i.bo = tail call noundef i32 %i.be(ptr noundef nonnull align 8 dereferenceable(568) %i.bc, i32 noundef %i.bn)
  %i.bp = icmp eq i32 %i.bo, %i.bn
  br i1 %i.bp, label %.thread119, label %bb.w

bb.w:                                             ; preds = %.lr.ph149.split.us.peel.next
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.096.0145.us, i64 4 ; 2 uses
  %.not126.not.us = icmp eq ptr %i.bq, %i.bj
  br i1 %.not126.not.us, label %.critedge128, label %.lr.ph149.split.us.peel.next, !llvm.loop !244

.lr.ph149.split.peel.next:                        ; preds = %bb.u, %bb.x
  %.sroa.096.0145 = phi ptr [ %i.by, %bb.x ], [ %i.bl, %bb.u ] ; 2 uses
  %i.br = load i32, ptr %.sroa.096.0145, align 4, !tbaa !192 ; 2 uses
  %i.bs = load ptr, ptr %i.bc, align 8, !tbaa !213
  %i.bt = getelementptr i8, ptr %i.bs, i64 %.fr159
  %i.bu = getelementptr i8, ptr %i.bt, i64 -1
  %i.bv = load ptr, ptr %i.bu, align 8, !nosanitize !200
  %i.bw = tail call noundef i32 %i.bv(ptr noundef nonnull align 8 dereferenceable(568) %i.bc, i32 noundef %i.br)
  %i.bx = icmp eq i32 %i.bw, %i.br
  br i1 %i.bx, label %.thread119, label %bb.x

bb.x:                                             ; preds = %.lr.ph149.split.peel.next
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.096.0145, i64 4 ; 2 uses
  %.not126.not = icmp eq ptr %i.by, %i.bj
  br i1 %.not126.not, label %.critedge128, label %.lr.ph149.split.peel.next, !llvm.loop !245

.critedge128:                                     ; preds = %bb.x, %bb.w, %bb.u, %bb.v, %bb.t
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !248
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.5, i64 41, i64 1, ptr %i.bz) #26 ; 0 uses
  %i.ca = load ptr, ptr %i.bi, align 8, !tbaa !190
  %i.cb = load ptr, ptr %i.bg, align 8, !tbaa !183 ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = icmp ugt i64 %i.ce, 4
  br i1 %i.cf, label %.lr.ph151, label %._crit_edge152

._crit_edge152:                                   ; preds = %.lr.ph151, %.critedge128
  %i.cg = load ptr, ptr @stderr, align 8, !tbaa !248
  %i.ch = tail call i32 @fputc(i32 noundef 48, ptr noundef %i.cg) ; 0 uses
  tail call void @_ZN7CaDiCaL17fatal_message_endEv()
  br label %.thread119

.lr.ph151:                                        ; preds = %.critedge128, %.lr.ph151
  %i.ci = phi ptr [ %i.cp, %.lr.ph151 ], [ %i.cb, %.critedge128 ]
  %.0150 = phi i64 [ %i.cn, %.lr.ph151 ], [ 1, %.critedge128 ] ; 2 uses
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !248
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.0150
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !192
  %i.cm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cj, ptr noundef nonnull @.str.4, i32 noundef %i.cl) #27 ; 0 uses
  %i.cn = add nuw i64 %.0150, 1                   ; 2 uses
  %i.co = load ptr, ptr %i.bi, align 8, !tbaa !190
  %i.cp = load ptr, ptr %i.bg, align 8, !tbaa !183 ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 2
  %i.cu = icmp ult i64 %i.cn, %i.ct
  br i1 %i.cu, label %.lr.ph151, label %._crit_edge152, !llvm.loop !246

.thread119:                                       ; preds = %.lr.ph149.split.peel.next, %.lr.ph149.split.us.peel.next, %.lr.ph149.split.us.preheader, %.lr.ph149.split.preheader, %._crit_edge152
  %.sroa.0102.0 = load ptr, ptr %.sroa.0102.0155, align 8, !tbaa !184 ; 2 uses
  %.not125 = icmp eq ptr %.sroa.0102.0, null
  br i1 %.not125, label %.critedge, label %bb.s

.critedge:                                        ; preds = %.thread119, %bb.s, %._crit_edge143
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK7CaDiCaL8External4ivalEi(ptr noundef nonnull align 8 dereferenceable(568) %0, i32 noundef %1) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !52
  %.not = icmp sgt i32 %i.a, %i.c
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %i.a to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !54
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = shl nsw i64 %i.m, 3
  %i.o = zext i32 %i.i to i64
  %i.p = add nsw i64 %i.n, %i.o
  %i.q = icmp ugt i64 %i.p, %i.d
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = lshr i32 %i.a, 6
  %.zext = zext nneg i32 %i.r to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.zext
  %i.t = and i64 %i.d, 63
  %i.u = shl nuw i64 1, %i.t
  %i.v = load i64, ptr %i.s, align 8, !tbaa !195
  %i.w = and i64 %i.v, %i.u
  %i.x = icmp ne i64 %i.w, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ %i.x, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  %i.y = icmp slt i32 %1, 0
  %spec.select = xor i1 %i.y, %.0
  %i.z = sub nsw i32 0, %1
  %i.aa = select i1 %spec.select, i32 %1, i32 %i.z
  ret i32 %i.aa
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8External27check_assumptions_satisfiedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(568) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 2 uses
  %.not1213 = icmp eq ptr %i.b, %i.d
  br i1 %.not1213, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.09.014 = phi ptr [ %i.b, %.lr.ph ], [ %i.af, %bb.h ] ; 3 uses
  %i.i = load i32, ptr %.sroa.09.014, align 4, !tbaa !192 ; 6 uses
  %i.j = tail call i32 @llvm.abs.i32(i32 %i.i, i1 true) ; 3 uses
  %i.k = load i32, ptr %i.e, align 8, !tbaa !52
  %.not.i = icmp sgt i32 %i.j, %i.k
  br i1 %.not.i, label %_ZNK7CaDiCaL8External4ivalEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = zext nneg i32 %i.j to i64                ; 2 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.n = load i32, ptr %i.h, align 8, !tbaa !54
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = shl nsw i64 %i.r, 3
  %i.t = zext i32 %i.n to i64
  %i.u = add nsw i64 %i.s, %i.t
  %i.v = icmp ugt i64 %i.u, %i.l
  br i1 %i.v, label %bb.d, label %_ZNK7CaDiCaL8External4ivalEi.exit

bb.d:                                             ; preds = %bb.c
  %i.w = lshr i32 %i.j, 6
  %.zext.i = zext nneg i32 %i.w to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.zext.i
  %i.y = and i64 %i.l, 63
  %i.z = shl nuw i64 1, %i.y
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !195
  %i.ab = and i64 %i.aa, %i.z
  %i.ac = icmp ne i64 %i.ab, 0
  br label %_ZNK7CaDiCaL8External4ivalEi.exit

_ZNK7CaDiCaL8External4ivalEi.exit:                ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i1 [ %i.ac, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  %i.ad = icmp slt i32 %i.i, 0
  %spec.select.i = xor i1 %i.ad, %.0.i
  %1 = sub nsw i32 0, %i.i
  %2 = select i1 %spec.select.i, i32 %i.i, i32 %1 ; 2 uses
  %.not = icmp eq i32 %2, %i.i
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK7CaDiCaL8External4ivalEi.exit
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str.6, i32 noundef %i.i)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK7CaDiCaL8External4ivalEi.exit
  %.not8 = icmp eq i32 %2, 0
  br i1 %.not8, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %.sroa.09.014, align 4, !tbaa !192
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str.7, i32 noundef %i.ae)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.09.014, i64 4 ; 2 uses
  %.not12 = icmp eq ptr %i.af, %i.d
  br i1 %.not12, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8External26check_constraint_satisfiedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(568) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 2 uses
  %.not1012 = icmp eq ptr %i.b, %i.d
  br i1 %.not1012, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = shl nsw i64 %i.o, 3
  %i.q = zext i32 %i.k to i64
  %i.r = add nsw i64 %i.p, %i.q
  br label %bb.c

bb.b:                                             ; preds = %_ZNK7CaDiCaL8External4ivalEi.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.013, i64 4 ; 2 uses
  %.not10 = icmp eq ptr %i.s, %i.d
  br i1 %.not10, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.06.013 = phi ptr [ %i.b, %.lr.ph ], [ %i.s, %bb.b ] ; 2 uses
  %i.t = load i32, ptr %.sroa.06.013, align 4, !tbaa !192 ; 3 uses
  %i.u = tail call i32 @llvm.abs.i32(i32 %i.t, i1 true) ; 3 uses
  %.not.i = icmp sgt i32 %i.u, %i.f
  br i1 %.not.i, label %_ZNK7CaDiCaL8External4ivalEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = icmp ugt i64 %i.r, %i.v
  br i1 %i.w, label %bb.e, label %_ZNK7CaDiCaL8External4ivalEi.exit

bb.e:                                             ; preds = %bb.d
  %i.x = lshr i32 %i.u, 6
  %.zext.i = zext nneg i32 %i.x to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.zext.i
  %i.z = and i64 %i.v, 63
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !195
  %i.ac = and i64 %i.ab, %i.aa
  %i.ad = icmp ne i64 %i.ac, 0
  br label %_ZNK7CaDiCaL8External4ivalEi.exit

_ZNK7CaDiCaL8External4ivalEi.exit:                ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i1 [ %i.ad, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  %i.ae = icmp slt i32 %i.t, 0
  %spec.select.i = xor i1 %i.ae, %.0.i
  %.not11 = icmp eq i32 %i.t, 0
  %.not = or i1 %.not11, %spec.select.i
  br i1 %.not, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str.8)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK7CaDiCaL8External4ivalEi.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8External19check_unsatisfiableEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(568) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3264
  %i.c = load i32, ptr %i.b, align 8, !tbaa !204
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN7CaDiCaL8External13check_failingEv(ptr noundef nonnull align 8 dereferenceable(568) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8External13check_failingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(568) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CaDiCaL::DeferDeletePtr", align 8 ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24 ; 13 uses
  invoke void @_ZN7CaDiCaL6SolverC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store ptr %i.a, ptr %1, align 8, !tbaa !220
  invoke void @_ZN7CaDiCaL6Solver6prefixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull @.str.9)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %.not5874 = icmp eq ptr %i.c, %i.e
  br i1 %.not5874, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN7CaDiCaL8External6failedEi.exit.thread, %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !51
  %i.i = invoke noundef zeroext i1 @_ZN7CaDiCaL8Internal17failed_constraintEv(ptr noundef nonnull align 8 dereferenceable(5704) %i.h)
          to label %_ZN7CaDiCaL8External17failed_constraintEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #22
  br label %bb.s

bb.e:                                             ; preds = %.lr.ph, %_ZN7CaDiCaL8External6failedEi.exit.thread
  %.sroa.054.075 = phi ptr [ %i.c, %.lr.ph ], [ %i.w, %_ZN7CaDiCaL8External6failedEi.exit.thread ] ; 2 uses
  %i.k = load i32, ptr %.sroa.054.075, align 4, !tbaa !192 ; 3 uses
  %i.l = tail call i32 @llvm.abs.i32(i32 %i.k, i1 true) ; 2 uses
  %i.m = load i32, ptr %i.f, align 8, !tbaa !52
  %i.n = icmp sgt i32 %i.l, %i.m
  br i1 %i.n, label %_ZN7CaDiCaL8External6failedEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = zext nneg i32 %i.l to i64
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !183
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  %i.r = load i32, ptr %i.q, align 4, !tbaa !192  ; 3 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8External6failedEi.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = icmp slt i32 %i.k, 0
  %i.t = sub nsw i32 0, %i.r
  %spec.select.i = select i1 %i.s, i32 %i.t, i32 %i.r
  %i.u = load ptr, ptr %0, align 8, !tbaa !51
  %i.v = invoke noundef zeroext i1 @_ZN7CaDiCaL8Internal6failedEi(ptr noundef nonnull align 8 dereferenceable(5704) %i.u, i32 noundef %spec.select.i)
          to label %_ZN7CaDiCaL8External6failedEi.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7CaDiCaL8External6failedEi.exit:               ; preds = %bb.g
  br i1 %i.v, label %bb.h, label %_ZN7CaDiCaL8External6failedEi.exit.thread

bb.h:                                             ; preds = %_ZN7CaDiCaL8External6failedEi.exit
  invoke void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef %i.k)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 0)
          to label %_ZN7CaDiCaL8External6failedEi.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7CaDiCaL8External6failedEi.exit.thread:        ; preds = %bb.f, %bb.e, %bb.i, %_ZN7CaDiCaL8External6failedEi.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.054.075, i64 4 ; 2 uses
  %.not58 = icmp eq ptr %i.w, %i.e
  br i1 %.not58, label %._crit_edge, label %bb.e

_ZN7CaDiCaL8External17failed_constraintEv.exit:   ; preds = %._crit_edge
  br i1 %i.i, label %bb.j, label %.loopexit68

bb.j:                                             ; preds = %_ZN7CaDiCaL8External17failed_constraintEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !58   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !58  ; 2 uses
  %.not5976 = icmp eq ptr %i.y, %i.aa
  br i1 %.not5976, label %.loopexit68, label %.lr.ph79

.lr.ph79:                                         ; preds = %bb.j, %bb.k
  %.sroa.050.077 = phi ptr [ %i.ac, %bb.k ], [ %i.y, %bb.j ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN7CaDiCaL8External14generate_cubesEii:bb.a
  br label %bb.f

bb.f:                                             ; preds = %_ZN7CaDiCaL8External6frozenEi.exit.thread.i, %_ZN7CaDiCaL8External6frozenEi.exit.i, %bb.d
  %i.al = add i32 %.sroa.012.020.i, 1
  %.not16.i = icmp eq i32 %.sroa.012.020.i, %i.i
  br i1 %.not16.i, label %_ZN7CaDiCaL8External22update_molten_literalsEv.exit, label %bb.d

_ZN7CaDiCaL8External22update_molten_literalsEv.exit: ; preds = %bb.f, %_ZN7CaDiCaL8External14reset_extendedEv.exit, %bb.c
  tail call void @_ZN7CaDiCaL8Internal12reset_limitsEv(ptr noundef nonnull align 8 dereferenceable(5704) %i.d)
  %i.am = load ptr, ptr %1, align 8, !tbaa !51
  tail call void @_ZN7CaDiCaL8Internal14generate_cubesEii(ptr dead_on_unwind writable sret(%"struct.CaDiCaL::CubesWithStatus") align 8 %0, ptr noundef nonnull align 8 dereferenceable(5704) %i.am, i32 noundef %2, i32 noundef %3)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !252 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !252 ; 2 uses
  %.not12.i = icmp eq ptr %i.ao, %i.aq
  br i1 %.not12.i, label %.loopexit14, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZN7CaDiCaL8External22update_molten_literalsEv.exit, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %.sroa.08.013.i = phi ptr [ %i.bd, %_ZNSt6vectorIiSaIiEED2Ev.exit.i ], [ %i.ao, %_ZN7CaDiCaL8External22update_molten_literalsEv.exit ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !190 ; 2 uses
  %i.at = load ptr, ptr %.sroa.08.013.i, align 8, !tbaa !183 ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, %i.at      ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i10
  %i.ax = icmp ugt i64 %i.aw, 9223372036854775804
  br i1 %i.ax, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !253

.noexc.i.i.i:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #24
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  %.pre.i = load ptr, ptr %.sroa.08.013.i, align 8, !tbaa !58 ; 2 uses
  %.pre14.i = load ptr, ptr %i.ar, align 8, !tbaa !58
  %.pre15.i = ptrtoint ptr %.pre14.i to i64
  %.pre16.i = ptrtoint ptr %.pre.i to i64
  %.pre = sub i64 %.pre15.i, %.pre16.i            ; 3 uses
  %i.az = icmp sgt i64 %.pre, 4
  br i1 %i.az, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i, label %.thread, !prof !254

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i:              ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr align 4 %.pre.i, i64 %.pre, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread.i

.thread:                                          ; preds = %.lr.ph.i10, %bb.h
  %i.ba = phi ptr [ %i.ay, %bb.h ], [ null, %.lr.ph.i10 ]
  %.pre-phi24 = phi i64 [ %.pre, %bb.h ], [ 0, %.lr.ph.i10 ]
  %i.bb = icmp ne i64 %.pre-phi24, 4
  %or.cond.i11 = and i1 %i.bb, %.not.i.i.i.i.i
  br i1 %or.cond.i11, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread.i:       ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i, %.thread
  %i.bc = phi ptr [ %i.ba, %.thread ], [ %i.ay, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.bc) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread.i, %.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i, i64 24 ; 2 uses
  %.not.i12 = icmp eq ptr %i.bd, %i.aq
  br i1 %.not.i12, label %.loopexit14, label %.lr.ph.i10, !llvm.loop !251

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %lpad.loopexit.split-lp26 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7CaDiCaL15CubesWithStatusD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #25
  resume { ptr, i32 } %lpad.loopexit.split-lp26

.loopexit14:                                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %_ZN7CaDiCaL8External22update_molten_literalsEv.exit
  ret void
}

declare void @_ZN7CaDiCaL8Internal14generate_cubesEii(ptr dead_on_unwind writable sret(%"struct.CaDiCaL::CubesWithStatus") align 8, ptr noundef nonnull align 8 dereferenceable(5704), i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL15CubesWithStatusD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !257  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !258  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.f, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !183 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #22
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.b, %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !255

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !257
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.g = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #22
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  ret void
}

declare void @_ZN7CaDiCaL19fatal_message_startEv() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #14

declare void @_ZN7CaDiCaL17fatal_message_endEv() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

declare void @_ZN7CaDiCaL6SolverC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

declare void @_ZN7CaDiCaL6Solver6prefixEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #6

declare void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #6

declare noundef i32 @_ZN7CaDiCaL6Solver5solveEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL14DeferDeletePtrINS_6SolverEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !220    ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL6SolverD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.a) #25
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8External36traverse_all_frozen_units_as_clausesERNS_14ClauseIteratorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.0", align 8     ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i8, ptr %i.b, align 4, !tbaa !222, !range !199, !noundef !200
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !215, !nonnull !200, !align !216
  %i.g = load i32, ptr %i.f, align 4, !tbaa !192  ; 2 uses
  %.not4549 = icmp eq i32 %i.g, 0
  br i1 %.not4549, label %_ZNSt6vectorIiSaIiEED2Ev.exit36, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN7CaDiCaL8External6frozenEi.exit.thread
  %i.n = phi ptr [ null, %.lr.ph ], [ %6, %_ZN7CaDiCaL8External6frozenEi.exit.thread ] ; 9 uses
  %i.o = phi ptr [ null, %.lr.ph ], [ %7, %_ZN7CaDiCaL8External6frozenEi.exit.thread ] ; 9 uses
  %.sroa.038.050 = phi i32 [ 1, %.lr.ph ], [ %i.bs, %_ZN7CaDiCaL8External6frozenEi.exit.thread ] ; 6 uses
  %i.p = call i32 @llvm.abs.i32(i32 %.sroa.038.050, i1 true) ; 3 uses
  %i.q = load i32, ptr %i.h, align 8, !tbaa !52
  %i.r = icmp sgt i32 %i.p, %i.q
  br i1 %i.r, label %_ZN7CaDiCaL8External6frozenEi.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !214
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !186  ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = lshr exact i64 %i.w, 2
  %i.y = trunc i64 %i.x to i32
  %.not.i = icmp slt i32 %i.p, %i.y
  br i1 %.not.i, label %_ZN7CaDiCaL8External6frozenEi.exit, label %_ZN7CaDiCaL8External6frozenEi.exit.thread

_ZN7CaDiCaL8External6frozenEi.exit:               ; preds = %bb.d
  %i.z = zext nneg i32 %i.p to i64                ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !192
  %.not46 = icmp eq i32 %i.ab, 0
  br i1 %.not46, label %_ZN7CaDiCaL8External6frozenEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN7CaDiCaL8External6frozenEi.exit
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !183
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.z
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !192 ; 4 uses
  %.not.i30 = icmp eq i32 %i.ae, 0
  br i1 %.not.i30, label %_ZN7CaDiCaL8External6frozenEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = icmp slt i32 %.sroa.038.050, 0
  %i.ag = sub nsw i32 0, %i.ae
  %spec.select.i = select i1 %i.af, i32 %i.ag, i32 %i.ae
  %i.ah = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.ai = call i32 @llvm.abs.i32(i32 %i.ae, i1 true)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 472
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !207
  %i.al = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !208 ; 2 uses
  %.not.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i, label %_ZNK7CaDiCaL8External5fixedEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %3 = sext i8 %i.an to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 712
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !209
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.al
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !211
  %.not9.i.i = icmp eq i32 %i.ar, 0
  %spec.select.i.i = select i1 %.not9.i.i, i32 %3, i32 0
  br label %_ZNK7CaDiCaL8External5fixedEi.exit

_ZNK7CaDiCaL8External5fixedEi.exit:               ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ 0, %bb.f ], [ %spec.select.i.i, %bb.g ] ; 2 uses
  %4 = icmp slt i32 %spec.select.i, 0
  %5 = sub nsw i32 0, %.0.i.i
  %spec.select10.i.i = select i1 %4, i32 %5, i32 %.0.i.i ; 2 uses
  %.not = icmp eq i32 %spec.select10.i.i, 0
  br i1 %.not, label %_ZN7CaDiCaL8External6frozenEi.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK7CaDiCaL8External5fixedEi.exit
  %i.as = icmp slt i32 %spec.select10.i.i, 0
  %i.at = sub nsw i32 0, %.sroa.038.050
  %i.au = select i1 %i.as, i32 %i.at, i32 %.sroa.038.050 ; 2 uses
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !191
  %.not.i31 = icmp eq ptr %i.o, %i.av
  br i1 %.not.i31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.au, ptr %i.o, align 4, !tbaa !192
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store ptr %i.aw, ptr %i.l, align 8, !tbaa !190
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.j:                                             ; preds = %bb.h
  %i.ax = ptrtoint ptr %i.o to i64
  %i.ay = ptrtoint ptr %i.n to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 5 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775804
  br i1 %i.ba, label %bb.k, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #23
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bb = ashr exact i64 %i.az, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = call i64 @llvm.umin.i64(i64 %i.bc, i64 2305843009213693951)
  %i.bf = select i1 %i.bd, i64 2305843009213693951, i64 %i.be ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bf, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #24
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc32:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.az ; 2 uses
  store i32 %i.au, ptr %i.bi, align 4, !tbaa !192
  %i.bj = icmp sgt i64 %i.az, 0
  br i1 %i.bj, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.l:                                             ; preds = %.noexc32
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bh, ptr align 4 %i.n, i64 %i.az, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.l, %.noexc32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.n) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bh, ptr %2, align 8, !tbaa !183
  store ptr %i.bk, ptr %i.l, align 8, !tbaa !190
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.bl, ptr %i.m, align 8, !tbaa !191
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.i
  %i.bm = load ptr, ptr %1, align 8, !tbaa !213
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = invoke noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre.pre = load ptr, ptr %2, align 8, !tbaa !183 ; 6 uses
  br i1 %i.bp, label %bb.o, label %_ZNSt6vectorIiSaIiEE5clearEv.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.k
  %lpad.loopexit.split-lp68 = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %2, align 8, !tbaa !183   ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = load ptr, ptr %i.l, align 8, !tbaa !190 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.br, %.pre.pre
  br i1 %.not.i.i33, label %_ZN7CaDiCaL8External6frozenEi.exit.thread, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.o
  store ptr %.pre.pre, ptr %i.l, align 8, !tbaa !190
  br label %_ZN7CaDiCaL8External6frozenEi.exit.thread

_ZN7CaDiCaL8External6frozenEi.exit.thread:        ; preds = %bb.e, %bb.d, %bb.c, %_ZN7CaDiCaL8External6frozenEi.exit, %_ZNK7CaDiCaL8External5fixedEi.exit, %bb.o, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %6 = phi ptr [ %i.n, %bb.e ], [ %i.n, %bb.d ], [ %i.n, %bb.c ], [ %i.n, %_ZN7CaDiCaL8External6frozenEi.exit ], [ %i.n, %_ZNK7CaDiCaL8External5fixedEi.exit ], [ %.pre.pre, %bb.o ], [ %.pre.pre, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %7 = phi ptr [ %i.o, %bb.e ], [ %i.o, %bb.d ], [ %i.o, %bb.c ], [ %i.o, %_ZN7CaDiCaL8External6frozenEi.exit ], [ %i.o, %_ZNK7CaDiCaL8External5fixedEi.exit ], [ %i.br, %bb.o ], [ %.pre.pre, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.bs = add i32 %.sroa.038.050, 1
  %.not45 = icmp eq i32 %.sroa.038.050, %i.g
  br i1 %.not45, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.c

bb.p:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef nonnull %i.bq) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %lpad.loopexit.split-lp68

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.n, %_ZN7CaDiCaL8External6frozenEi.exit.thread
  %i.bt = phi ptr [ %6, %_ZN7CaDiCaL8External6frozenEi.exit.thread ], [ %.pre.pre, %bb.n ] ; 2 uses
  %.not45.lcssa = phi i1 [ true, %_ZN7CaDiCaL8External6frozenEi.exit.thread ], [ false, %bb.n ] ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIiSaIiEED2Ev.exit36, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  call void @_ZdlPv(ptr noundef nonnull %i.bt) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit36

_ZNSt6vectorIiSaIiEED2Ev.exit36:                  ; preds = %bb.b, %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.q
  %.not45.lcssa67 = phi i1 [ %.not45.lcssa, %bb.q ], [ %.not45.lcssa, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ true, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %_ZNSt6vectorIiSaIiEED2Ev.exit36
  %.6 = phi i1 [ %.not45.lcssa67, %_ZNSt6vectorIiSaIiEED2Ev.exit36 ], [ true, %bb.a ]
  ret i1 %.6
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8External42traverse_all_non_frozen_units_as_witnessesERNS_15WitnessIteratorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.0", align 8     ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i8, ptr %i.b, align 4, !tbaa !222, !range !199, !noundef !200
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !215, !nonnull !200, !align !216
  %i.g = load i32, ptr %i.f, align 4, !tbaa !192  ; 2 uses
  %.not5155 = icmp eq i32 %i.g, 0
  br i1 %.not5155, label %_ZNSt6vectorIiSaIiEED2Ev.exit41, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNK7CaDiCaL8External5fixedEi.exit.thread
  %i.n = phi ptr [ null, %.lr.ph ], [ %6, %_ZNK7CaDiCaL8External5fixedEi.exit.thread ] ; 8 uses
  %i.o = phi ptr [ null, %.lr.ph ], [ %7, %_ZNK7CaDiCaL8External5fixedEi.exit.thread ] ; 8 uses
  %.sroa.043.056 = phi i32 [ 1, %.lr.ph ], [ %i.ck, %_ZNK7CaDiCaL8External5fixedEi.exit.thread ] ; 7 uses
  %i.p = call i32 @llvm.abs.i32(i32 %.sroa.043.056, i1 true) ; 3 uses
  %i.q = load i32, ptr %i.h, align 8, !tbaa !52
  %i.r = icmp sgt i32 %i.p, %i.q
  br i1 %i.r, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !214
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !186  ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = lshr exact i64 %i.w, 2
  %i.y = trunc i64 %i.x to i32
  %.not.i = icmp slt i32 %i.p, %i.y
  %i.z = zext nneg i32 %i.p to i64                ; 2 uses
  br i1 %.not.i, label %_ZN7CaDiCaL8External6frozenEi.exit, label %.thread

_ZN7CaDiCaL8External6frozenEi.exit:               ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !192
  %.not52 = icmp eq i32 %i.ab, 0
  br i1 %.not52, label %.thread, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread

.thread:                                          ; preds = %bb.d, %_ZN7CaDiCaL8External6frozenEi.exit
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !183 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.z
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !192 ; 4 uses
  %.not.i35 = icmp eq i32 %i.ae, 0
  br i1 %.not.i35, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.af = icmp slt i32 %.sroa.043.056, 0
  %i.ag = sub nsw i32 0, %i.ae
  %spec.select.i = select i1 %i.af, i32 %i.ag, i32 %i.ae
  %i.ah = load ptr, ptr %0, align 8, !tbaa !51    ; 4 uses
  %i.ai = call i32 @llvm.abs.i32(i32 %i.ae, i1 true)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 472
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !207
  %i.al = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !208 ; 2 uses
  %.not.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i, label %_ZNK7CaDiCaL8External5fixedEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %3 = sext i8 %i.an to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 712
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !209
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.al
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !211
  %.not9.i.i = icmp eq i32 %i.ar, 0
  %spec.select.i.i = select i1 %.not9.i.i, i32 %3, i32 0
  br label %_ZNK7CaDiCaL8External5fixedEi.exit

_ZNK7CaDiCaL8External5fixedEi.exit:               ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ 0, %bb.e ], [ %spec.select.i.i, %bb.f ] ; 2 uses
  %4 = icmp slt i32 %spec.select.i, 0
  %5 = sub nsw i32 0, %.0.i.i
  %spec.select10.i.i = select i1 %4, i32 %5, i32 %.0.i.i ; 2 uses
  %.not = icmp eq i32 %spec.select10.i.i, 0
  br i1 %.not, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK7CaDiCaL8External5fixedEi.exit
  %i.as = icmp slt i32 %spec.select10.i.i, 0      ; 2 uses
  %i.at = sub nsw i32 0, %.sroa.043.056
  %i.au = select i1 %i.as, i32 %i.at, i32 %.sroa.043.056 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 3556
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !259
  %.not31 = icmp eq i32 %i.aw, 0
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = sext i32 %.sroa.043.056 to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !192 ; 3 uses
  %i.ba = sub nsw i32 0, %i.az
  %i.bb = select i1 %i.as, i32 %i.ba, i32 %i.az
  %i.bc = call i32 @llvm.abs.i32(i32 %i.az, i1 true)
  %i.bd = call noundef i32 @llvm.fshl.i32(i32 %i.bc, i32 %i.bb, i32 1)
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 152
  %i.bf = sext i32 %i.bd to i64
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !187
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !195
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bj = phi i64 [ %i.bi, %bb.h ], [ 1, %bb.g ]
  %i.bk = load ptr, ptr %i.m, align 8, !tbaa !191
  %.not.i36 = icmp eq ptr %i.o, %i.bk
  br i1 %.not.i36, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.au, ptr %i.o, align 4, !tbaa !192
  %i.bl = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store ptr %i.bl, ptr %i.l, align 8, !tbaa !190
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.k:                                             ; preds = %bb.i
  %i.bm = ptrtoint ptr %i.o to i64
  %i.bn = ptrtoint ptr %i.n to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 5 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775804
  br i1 %i.bp, label %bb.l, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #23
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.bq = ashr exact i64 %i.bo, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 2305843009213693951)
  %i.bu = select i1 %i.bs, i64 2305843009213693951, i64 %i.bt ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bv = shl nuw nsw i64 %i.bu, 2
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #24
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc37:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  store i32 %i.au, ptr %i.bx, align 4, !tbaa !192
  %i.by = icmp sgt i64 %i.bo, 0
  br i1 %i.by, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %.noexc37
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bw, ptr align 4 %i.n, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %.noexc37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.n) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bw, ptr %2, align 8, !tbaa !183
  store ptr %i.bz, ptr %i.l, align 8, !tbaa !190
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.ca, ptr %i.m, align 8, !tbaa !191
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.j
  %i.cb = load i32, ptr %i.h, align 8, !tbaa !52
  %i.cc = sext i32 %i.cb to i64
  %i.cd = add i64 %i.bj, %i.cc
  %i.ce = load ptr, ptr %1, align 8, !tbaa !213
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.cd)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre.pre = load ptr, ptr %2, align 8, !tbaa !183 ; 6 uses
  br i1 %i.ch, label %bb.p, label %_ZNSt6vectorIiSaIiEE5clearEv.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.l
  %lpad.loopexit.split-lp75 = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %2, align 8, !tbaa !183   ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cj = load ptr, ptr %i.l, align 8, !tbaa !190 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.cj, %.pre.pre
  br i1 %.not.i.i38, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.p
  store ptr %.pre.pre, ptr %i.l, align 8, !tbaa !190
  br label %_ZNK7CaDiCaL8External5fixedEi.exit.thread

_ZNK7CaDiCaL8External5fixedEi.exit.thread:        ; preds = %bb.c, %.thread, %_ZN7CaDiCaL8External6frozenEi.exit, %_ZNK7CaDiCaL8External5fixedEi.exit, %bb.p, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %6 = phi ptr [ %i.n, %bb.c ], [ %i.n, %.thread ], [ %i.n, %_ZN7CaDiCaL8External6frozenEi.exit ], [ %i.n, %_ZNK7CaDiCaL8External5fixedEi.exit ], [ %.pre.pre, %bb.p ], [ %.pre.pre, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %7 = phi ptr [ %i.o, %bb.c ], [ %i.o, %.thread ], [ %i.o, %_ZN7CaDiCaL8External6frozenEi.exit ], [ %i.o, %_ZNK7CaDiCaL8External5fixedEi.exit ], [ %i.cj, %bb.p ], [ %.pre.pre, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.ck = add i32 %.sroa.043.056, 1
  %.not51 = icmp eq i32 %.sroa.043.056, %i.g
  br i1 %.not51, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.c

bb.q:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef nonnull %i.ci) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %lpad.loopexit.split-lp75

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.o, %_ZNK7CaDiCaL8External5fixedEi.exit.thread
  %i.cl = phi ptr [ %6, %_ZNK7CaDiCaL8External5fixedEi.exit.thread ], [ %.pre.pre, %bb.o ] ; 2 uses
  %.not51.lcssa = phi i1 [ true, %_ZNK7CaDiCaL8External5fixedEi.exit.thread ], [ false, %bb.o ] ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIiSaIiEED2Ev.exit41, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  call void @_ZdlPv(ptr noundef nonnull %i.cl) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit41

_ZNSt6vectorIiSaIiEED2Ev.exit41:                  ; preds = %bb.b, %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.r
  %.not51.lcssa74 = phi i1 [ %.not51.lcssa, %bb.r ], [ %.not51.lcssa, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ true, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %_ZNSt6vectorIiSaIiEED2Ev.exit41
  %.6 = phi i1 [ %.not51.lcssa74, %_ZNSt6vectorIiSaIiEED2Ev.exit41 ], [ true, %bb.a ]
  ret i1 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK7CaDiCaL8External10copy_flagsERS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(568) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(568) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 760
  %i.c = load ptr, ptr %1, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 760
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !192
  %i.h = load i32, ptr %i.e, align 8, !tbaa !192
  %i.i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.h) ; 2 uses
  %.not24 = icmp eq i32 %i.i, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = add i32 %i.i, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.l, i32 2)
  %wide.trip.count = zext i32 %umax to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !183
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !192  ; 2 uses
  %.not21 = icmp eq i32 %i.o, 0
  br i1 %.not21, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !183
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !192  ; 2 uses
  %.not22 = icmp eq i32 %i.r, 0
  br i1 %.not22, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %0, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 760
  %i.u = tail call i32 @llvm.abs.i32(i32 %i.o, i1 true)
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !201
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.v
  %i.y = load i32, ptr %i.x, align 1
  %i.z = and i32 %i.y, 117440512
  %i.aa = icmp eq i32 %i.z, 16777216
  br i1 %i.aa, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %1, align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 760
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.r, i1 true)
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !201
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load i32, ptr %i.ag, align 1
  %i.ai = and i32 %i.ah, 117440512
  %i.aj = icmp eq i32 %i.ai, 16777216
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !201
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.v ; 4 uses
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !201
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ae ; 5 uses
  %i.ao = load i32, ptr %i.al, align 1
  %.lobit.i = and i32 %i.ao, 256
  %i.ap = load i32, ptr %i.an, align 1
  %i.aq = and i32 %i.ap, -257
  %i.ar = or disjoint i32 %i.aq, %.lobit.i        ; 2 uses
  store i32 %i.ar, ptr %i.an, align 1
  %i.as = load i32, ptr %i.al, align 1
  %.lobit5.i = and i32 %i.as, 512
  %i.at = and i32 %i.ar, -513
  %i.au = or disjoint i32 %i.at, %.lobit5.i       ; 2 uses
  store i32 %i.au, ptr %i.an, align 1
  %i.av = load i32, ptr %i.al, align 1
  %.lobit6.i = and i32 %i.av, 1024
  %i.aw = and i32 %i.au, -1025
  %i.ax = or disjoint i32 %i.aw, %.lobit6.i       ; 2 uses
  store i32 %i.ax, ptr %i.an, align 1
  %i.ay = load i32, ptr %i.al, align 1
  %i.az = and i32 %i.ay, 24576
  %i.ba = and i32 %i.ax, -24577
  %i.bb = or disjoint i32 %i.ba, %i.az
  store i32 %i.bb, ptr %i.an, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.d, %bb.e, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %bb.b, !llvm.loop !260
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8External27export_learned_empty_clauseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(568) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !213
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef 0)
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !213
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8External26export_learned_unit_clauseEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(568) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !213
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef 1)
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !51
  %i.h = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 528
  %i.j = zext nneg i32 %i.h to i64
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !183
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.j
  %i.m = load i32, ptr %i.l, align 4, !tbaa !192  ; 2 uses
  %i.n = icmp slt i32 %1, 0
  %i.o = sub nsw i32 0, %i.m
  %spec.select.i = select i1 %i.n, i32 %i.o, i32 %i.m
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !213
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i32 noundef %spec.select.i)
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !213
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8External27export_learned_large_clauseERKSt6vectorIiSaIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(568) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190
  %i.c = load ptr, ptr %1, align 8, !tbaa !183
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
end_hunk_4
