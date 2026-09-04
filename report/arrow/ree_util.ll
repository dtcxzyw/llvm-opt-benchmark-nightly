Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/ree_util?download=true
inline.NumInlined: 622
inline.NumDeleted: 247
begin_hunk_0_@_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl64ERNS1_19PhysicalIndexFinderIlEEl:bb.a
  %i.q = load i64, ptr %i.p, align 8, !tbaa !66
  %i.r = icmp slt i64 %i.c, %i.q                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = xor i64 %i.o, -1
  %i.u = add nsw i64 %.017.i.i.i.i, %i.t
  %.112.i.i.i.i = select i1 %i.r, ptr %.01116.i.i.i.i, ptr %i.s ; 2 uses
  %.1.i.i.i.i = select i1 %i.r, i64 %i.o, i64 %i.u ; 2 uses
  %i.v = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.v, label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit.i, !llvm.loop !2

_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit.i: ; preds = %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %bb.d
  %.011.lcssa.i.i.i.i = phi ptr [ %i.e, %bb.d ], [ %.112.i.i.i.i, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ]
  %i.w = ptrtoint ptr %i.e to i64
  %i.x = ptrtoint ptr %.011.lcssa.i.i.i.i to i64
  %i.y = sub i64 %i.x, %i.w
  %i.z = ashr exact i64 %i.y, 3
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !57
  %i.ae = add nsw i64 %i.g, 1                     ; 3 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ae ; 3 uses
  %i.ag = sub nsw i64 %i.ad, %i.ae                ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i30.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit37.i

_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i30.i: ; preds = %bb.e, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i30.i
  %.017.i.i.i31.i = phi i64 [ %.1.i.i.i36.i, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i30.i ], [ %i.ag, %bb.e ] ; 2 uses
  %.01116.i.i.i32.i = phi ptr [ %.112.i.i.i35.i, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i30.i ], [ %i.af, %bb.e ] ; 2 uses
  %i.ai = lshr i64 %.017.i.i.i31.i, 1             ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i32.i, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !66
  %i.al = icmp slt i64 %i.c, %i.ak                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = xor i64 %i.ai, -1
  %i.ao = add nsw i64 %.017.i.i.i31.i, %i.an
  %.112.i.i.i35.i = select i1 %i.al, ptr %.01116.i.i.i32.i, ptr %i.am ; 2 uses
  %.1.i.i.i36.i = select i1 %i.al, i64 %i.ai, i64 %i.ao ; 2 uses
  %i.ap = icmp sgt i64 %.1.i.i.i36.i, 0
  br i1 %i.ap, label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i30.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit37.i, !llvm.loop !2

_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit37.i: ; preds = %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i30.i, %bb.e
  %.011.lcssa.i.i.i29.i = phi ptr [ %i.af, %bb.e ], [ %.112.i.i.i35.i, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i30.i ]
  %i.aq = ptrtoint ptr %i.af to i64
  %i.ar = ptrtoint ptr %.011.lcssa.i.i.i29.i to i64
  %i.as = sub i64 %i.ar, %i.aq
  %i.at = ashr exact i64 %i.as, 3
  %i.au = add nsw i64 %i.at, %i.ae
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit37.i, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit.i
  %.sink.i = phi i64 [ %i.au, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit37.i ], [ %i.z, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit.i ] ; 2 uses
  store i64 %.sink.i, ptr %i.f, align 8, !tbaa !116
  br label %_ZN5arrow8ree_util8internal21FindPhysicalIndexImplIlEElRNS1_19PhysicalIndexFinderIT_EEl.exit

_ZN5arrow8ree_util8internal21FindPhysicalIndexImplIlEElRNS1_19PhysicalIndexFinderIT_EEl.exit: ; preds = %bb.b, %bb.c, %.sink.split.i
  %.0.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.b ], [ %.sink.i, %.sink.split.i ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 -4611686018427387904, 4611686018427387904) i64 @_ZN5arrow8ree_util17FindPhysicalIndexERKNS_9ArraySpanEll(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !57   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !56   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61   ; 3 uses
  %i.l = add nsw i64 %2, %1                       ; 3 uses
  %i.m = icmp sgt i64 %i.g, 0                     ; 3 uses
  switch i32 %i.e, label %bb.d [
    i32 5, label %bb.b
    i32 7, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.i ; 4 uses
  br i1 %i.m, label %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElRKNS_9ArraySpanEll.exit

_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %bb.b, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %.1.i.i.i.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %.01116.i.i.i.i = phi ptr [ %.112.i.i.i.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.n, %bb.b ] ; 2 uses
  %i.o = lshr i64 %.017.i.i.i.i, 1                ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %.01116.i.i.i.i, i64 %i.o ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !63
  %i.r = sext i16 %i.q to i64
  %i.s = icmp slt i64 %i.l, %i.r                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.u = xor i64 %i.o, -1
  %i.v = add nsw i64 %.017.i.i.i.i, %i.u
  %.112.i.i.i.i = select i1 %i.s, ptr %.01116.i.i.i.i, ptr %i.t ; 2 uses
  %.1.i.i.i.i = select i1 %i.s, i64 %i.o, i64 %i.v ; 2 uses
  %i.w = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.w, label %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElRKNS_9ArraySpanEll.exit, !llvm.loop !0

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.i ; 4 uses
  br i1 %i.m, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElRKNS_9ArraySpanEll.exit

_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %bb.c, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.017.i.i.i.i14 = phi i64 [ %.1.i.i.i.i19, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.g, %bb.c ] ; 2 uses
  %.01116.i.i.i.i15 = phi ptr [ %.112.i.i.i.i18, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.x, %bb.c ] ; 2 uses
  %i.y = lshr i64 %.017.i.i.i.i14, 1              ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i.i.i15, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !9
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %i.l, %i.ab                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ae = xor i64 %i.y, -1
  %i.af = add nsw i64 %.017.i.i.i.i14, %i.ae
  %.112.i.i.i.i18 = select i1 %i.ac, ptr %.01116.i.i.i.i15, ptr %i.ad ; 2 uses
  %.1.i.i.i.i19 = select i1 %i.ac, i64 %i.y, i64 %i.af ; 2 uses
  %i.ag = icmp sgt i64 %.1.i.i.i.i19, 0
  br i1 %i.ag, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElRKNS_9ArraySpanEll.exit, !llvm.loop !1

bb.d:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.i ; 4 uses
  br i1 %i.m, label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElRKNS_9ArraySpanEll.exit

_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %bb.d, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.017.i.i.i.i21 = phi i64 [ %.1.i.i.i.i26, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.g, %bb.d ] ; 2 uses
  %.01116.i.i.i.i22 = phi ptr [ %.112.i.i.i.i25, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.ah, %bb.d ] ; 2 uses
  %i.ai = lshr i64 %.017.i.i.i.i21, 1             ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i.i22, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !66
  %i.al = icmp slt i64 %i.l, %i.ak                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = xor i64 %i.ai, -1
  %i.ao = add nsw i64 %.017.i.i.i.i21, %i.an
  %.112.i.i.i.i25 = select i1 %i.al, ptr %.01116.i.i.i.i22, ptr %i.am ; 2 uses
  %.1.i.i.i.i26 = select i1 %i.al, i64 %i.ai, i64 %i.ao ; 2 uses
  %i.ap = icmp sgt i64 %.1.i.i.i.i26, 0
  br i1 %i.ap, label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElRKNS_9ArraySpanEll.exit, !llvm.loop !2

_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElRKNS_9ArraySpanEll.exit: ; preds = %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %bb.d, %bb.c, %bb.b
  %.sink = phi ptr [ %i.x, %bb.c ], [ %i.n, %bb.b ], [ %i.n, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.ah, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.ah, %bb.d ], [ %i.x, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ]
  %.011.lcssa.i.i.i.i20.sink = phi ptr [ %i.x, %bb.c ], [ %i.n, %bb.b ], [ %.112.i.i.i.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %.112.i.i.i.i25, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.ah, %bb.d ], [ %.112.i.i.i.i18, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ]
  %.sink30 = phi i64 [ 2, %bb.c ], [ 1, %bb.b ], [ 1, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ 3, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ 3, %bb.d ], [ 2, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ]
  %i.aq = ptrtoint ptr %.sink to i64
  %i.ar = ptrtoint ptr %.011.lcssa.i.i.i.i20.sink to i64
  %i.as = sub i64 %i.ar, %i.aq
  %i.at = ashr exact i64 %i.as, %.sink30
  ret i64 %i.at
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 -4611686018427387903, 4611686018427387905) i64 @_ZN5arrow8ree_util18FindPhysicalLengthERKNS_9ArraySpanE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !56   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !57   ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !57   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !56   ; 6 uses
  %i.p = icmp sgt i64 %i.k, 0                     ; 3 uses
  switch i32 %i.e, label %bb.f [
    i32 5, label %bb.b
    i32 7, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.g ; 4 uses
  br i1 %i.p, label %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit.i.i.i

_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %bb.b, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %.01116.i.i.i.i.i.i = phi ptr [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ], [ %i.q, %bb.b ] ; 2 uses
  %i.r = lshr i64 %.017.i.i.i.i.i.i, 1            ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %.01116.i.i.i.i.i.i, i64 %i.r ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !63
  %i.u = sext i16 %i.t to i64
  %i.v = icmp slt i64 %i.o, %i.u                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.x = xor i64 %i.r, -1
  %i.y = add nsw i64 %.017.i.i.i.i.i.i, %i.x
  %.112.i.i.i.i.i.i = select i1 %i.v, ptr %.01116.i.i.i.i.i.i, ptr %i.w ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.v, i64 %i.r, i64 %i.y ; 2 uses
  %i.z = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.z, label %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit.i.i.i, !llvm.loop !0

_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit.i.i.i: ; preds = %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %bb.b
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.q, %bb.b ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %i.aa = ptrtoint ptr %.011.lcssa.i.i.i.i.i.i to i64 ; 2 uses
  %i.ab = icmp eq i64 %i.m, 0
  br i1 %i.ab, label %_ZN5arrow8ree_util8internal18FindPhysicalLengthIsEElRKNS_9ArraySpanE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit.i.i.i
  %1 = ptrtoint ptr %i.q to i64
  %2 = sub i64 %i.aa, %1                          ; 2 uses
  %i.ac = ashr exact i64 %2, 1
  %3 = getelementptr inbounds i8, ptr %i.q, i64 %2 ; 2 uses
  %i.ad = sub nsw i64 %i.k, %i.ac                 ; 2 uses
  %i.ae = add nsw i64 %i.m, -1
  %i.af = add nsw i64 %i.ae, %i.o
  %i.ag = icmp sgt i64 %i.ad, 0
  br i1 %i.ag, label %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit16.i.i.i

_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i: ; preds = %bb.c, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i
  %.017.i.i.i10.i.i.i = phi i64 [ %.1.i.i.i15.i.i.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i ], [ %i.ad, %bb.c ] ; 2 uses
  %.01116.i.i.i11.i.i.i = phi ptr [ %.112.i.i.i14.i.i.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i ], [ %3, %bb.c ] ; 2 uses
  %i.ah = lshr i64 %.017.i.i.i10.i.i.i, 1         ; 3 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %.01116.i.i.i11.i.i.i, i64 %i.ah ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !63
  %i.ak = sext i16 %i.aj to i64
  %i.al = icmp slt i64 %i.af, %i.ak               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.an = xor i64 %i.ah, -1
  %i.ao = add nsw i64 %.017.i.i.i10.i.i.i, %i.an
  %.112.i.i.i14.i.i.i = select i1 %i.al, ptr %.01116.i.i.i11.i.i.i, ptr %i.am ; 2 uses
  %.1.i.i.i15.i.i.i = select i1 %i.al, i64 %i.ah, i64 %i.ao ; 2 uses
  %i.ap = icmp sgt i64 %.1.i.i.i15.i.i.i, 0
  br i1 %i.ap, label %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit16.i.i.i, !llvm.loop !0

_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit16.i.i.i: ; preds = %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i, %bb.c
  %.011.lcssa.i.i.i8.i.i.i = phi ptr [ %3, %bb.c ], [ %.112.i.i.i14.i.i.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i ]
  %4 = ptrtoint ptr %.011.lcssa.i.i.i8.i.i.i to i64
  %i.aq = sub i64 %4, %i.aa
  %i.ar = ashr exact i64 %i.aq, 1
  %i.as = add nsw i64 %i.ar, 1
  br label %_ZN5arrow8ree_util8internal18FindPhysicalLengthIsEElRKNS_9ArraySpanE.exit

bb.d:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.g ; 4 uses
  br i1 %i.p, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit.i.i.i

_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %bb.d, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i
  %.017.i.i.i.i.i.i16 = phi i64 [ %.1.i.i.i.i.i.i21, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  %.01116.i.i.i.i.i.i17 = phi ptr [ %.112.i.i.i.i.i.i20, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ], [ %i.at, %bb.d ] ; 2 uses
  %i.au = lshr i64 %.017.i.i.i.i.i.i16, 1         ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i.i.i.i.i17, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !9
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %i.o, %i.ax                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ba = xor i64 %i.au, -1
  %i.bb = add nsw i64 %.017.i.i.i.i.i.i16, %i.ba
  %.112.i.i.i.i.i.i20 = select i1 %i.ay, ptr %.01116.i.i.i.i.i.i17, ptr %i.az ; 2 uses
  %.1.i.i.i.i.i.i21 = select i1 %i.ay, i64 %i.au, i64 %i.bb ; 2 uses
  %i.bc = icmp sgt i64 %.1.i.i.i.i.i.i21, 0
  br i1 %i.bc, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit.i.i.i, !llvm.loop !1

_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit.i.i.i: ; preds = %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %bb.d
  %.011.lcssa.i.i.i.i.i.i7 = phi ptr [ %i.at, %bb.d ], [ %.112.i.i.i.i.i.i20, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %i.bd = ptrtoint ptr %.011.lcssa.i.i.i.i.i.i7 to i64 ; 2 uses
  %i.be = icmp eq i64 %i.m, 0
  br i1 %i.be, label %_ZN5arrow8ree_util8internal18FindPhysicalLengthIsEElRKNS_9ArraySpanE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit.i.i.i
  %5 = ptrtoint ptr %i.at to i64
  %6 = sub i64 %i.bd, %5                          ; 2 uses
  %i.bf = ashr exact i64 %6, 2
  %7 = getelementptr inbounds i8, ptr %i.at, i64 %6 ; 2 uses
  %i.bg = sub nsw i64 %i.k, %i.bf                 ; 2 uses
  %i.bh = add nsw i64 %i.m, -1
  %i.bi = add nsw i64 %i.bh, %i.o
  %i.bj = icmp sgt i64 %i.bg, 0
  br i1 %i.bj, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit16.i.i.i

_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i: ; preds = %bb.e, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i
  %.017.i.i.i10.i.i.i10 = phi i64 [ %.1.i.i.i15.i.i.i15, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i ], [ %i.bg, %bb.e ] ; 2 uses
  %.01116.i.i.i11.i.i.i11 = phi ptr [ %.112.i.i.i14.i.i.i14, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i ], [ %7, %bb.e ] ; 2 uses
  %i.bk = lshr i64 %.017.i.i.i10.i.i.i10, 1       ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i.i11.i.i.i11, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !9
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %i.bi, %i.bn               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bq = xor i64 %i.bk, -1
  %i.br = add nsw i64 %.017.i.i.i10.i.i.i10, %i.bq
  %.112.i.i.i14.i.i.i14 = select i1 %i.bo, ptr %.01116.i.i.i11.i.i.i11, ptr %i.bp ; 2 uses
  %.1.i.i.i15.i.i.i15 = select i1 %i.bo, i64 %i.bk, i64 %i.br ; 2 uses
  %i.bs = icmp sgt i64 %.1.i.i.i15.i.i.i15, 0
  br i1 %i.bs, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit16.i.i.i, !llvm.loop !1

_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit16.i.i.i: ; preds = %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i, %bb.e
  %.011.lcssa.i.i.i8.i.i.i8 = phi ptr [ %7, %bb.e ], [ %.112.i.i.i14.i.i.i14, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i ]
  %8 = ptrtoint ptr %.011.lcssa.i.i.i8.i.i.i8 to i64
  %i.bt = sub i64 %8, %i.bd
  %i.bu = ashr exact i64 %i.bt, 2
  %i.bv = add nsw i64 %i.bu, 1
  br label %_ZN5arrow8ree_util8internal18FindPhysicalLengthIsEElRKNS_9ArraySpanE.exit

bb.f:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.g ; 4 uses
  br i1 %i.p, label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit.i.i.i

_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %bb.f, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i
  %.017.i.i.i.i.i.i31 = phi i64 [ %.1.i.i.i.i.i.i36, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ], [ %i.k, %bb.f ] ; 2 uses
  %.01116.i.i.i.i.i.i32 = phi ptr [ %.112.i.i.i.i.i.i35, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ], [ %i.bw, %bb.f ] ; 2 uses
  %i.bx = lshr i64 %.017.i.i.i.i.i.i31, 1         ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i.i.i.i32, i64 %i.bx ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !66
  %i.ca = icmp slt i64 %i.o, %i.bz                ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cc = xor i64 %i.bx, -1
  %i.cd = add nsw i64 %.017.i.i.i.i.i.i31, %i.cc
  %.112.i.i.i.i.i.i35 = select i1 %i.ca, ptr %.01116.i.i.i.i.i.i32, ptr %i.cb ; 2 uses
  %.1.i.i.i.i.i.i36 = select i1 %i.ca, i64 %i.bx, i64 %i.cd ; 2 uses
  %i.ce = icmp sgt i64 %.1.i.i.i.i.i.i36, 0
  br i1 %i.ce, label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit.i.i.i, !llvm.loop !2

_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit.i.i.i: ; preds = %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %bb.f
  %.011.lcssa.i.i.i.i.i.i22 = phi ptr [ %i.bw, %bb.f ], [ %.112.i.i.i.i.i.i35, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %i.cf = ptrtoint ptr %.011.lcssa.i.i.i.i.i.i22 to i64 ; 2 uses
  %i.cg = icmp eq i64 %i.m, 0
  br i1 %i.cg, label %_ZN5arrow8ree_util8internal18FindPhysicalLengthIsEElRKNS_9ArraySpanE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit.i.i.i
  %9 = ptrtoint ptr %i.bw to i64
  %10 = sub i64 %i.cf, %9                         ; 2 uses
  %i.ch = ashr exact i64 %10, 3
  %11 = getelementptr inbounds i8, ptr %i.bw, i64 %10 ; 2 uses
  %i.ci = sub nsw i64 %i.k, %i.ch                 ; 2 uses
  %i.cj = add nsw i64 %i.m, -1
  %i.ck = add nsw i64 %i.cj, %i.o
  %i.cl = icmp sgt i64 %i.ci, 0
  br i1 %i.cl, label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit16.i.i.i

_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i: ; preds = %bb.g, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i
  %.017.i.i.i10.i.i.i25 = phi i64 [ %.1.i.i.i15.i.i.i30, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i ], [ %i.ci, %bb.g ] ; 2 uses
  %.01116.i.i.i11.i.i.i26 = phi ptr [ %.112.i.i.i14.i.i.i29, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i ], [ %11, %bb.g ] ; 2 uses
  %i.cm = lshr i64 %.017.i.i.i10.i.i.i25, 1       ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i11.i.i.i26, i64 %i.cm ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !66
  %i.cp = icmp slt i64 %i.ck, %i.co               ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cr = xor i64 %i.cm, -1
  %i.cs = add nsw i64 %.017.i.i.i10.i.i.i25, %i.cr
  %.112.i.i.i14.i.i.i29 = select i1 %i.cp, ptr %.01116.i.i.i11.i.i.i26, ptr %i.cq ; 2 uses
  %.1.i.i.i15.i.i.i30 = select i1 %i.cp, i64 %i.cm, i64 %i.cs ; 2 uses
  %i.ct = icmp sgt i64 %.1.i.i.i15.i.i.i30, 0
  br i1 %i.ct, label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit16.i.i.i, !llvm.loop !2

_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit16.i.i.i: ; preds = %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i, %bb.g
  %.011.lcssa.i.i.i8.i.i.i23 = phi ptr [ %11, %bb.g ], [ %.112.i.i.i14.i.i.i29, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i.i.i ]
  %12 = ptrtoint ptr %.011.lcssa.i.i.i8.i.i.i23 to i64
  %i.cu = sub i64 %12, %i.cf
  %i.cv = ashr exact i64 %i.cu, 3
  %i.cw = add nsw i64 %i.cv, 1
  br label %_ZN5arrow8ree_util8internal18FindPhysicalLengthIsEElRKNS_9ArraySpanE.exit

_ZN5arrow8ree_util8internal18FindPhysicalLengthIsEElRKNS_9ArraySpanE.exit: ; preds = %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit16.i.i.i, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit.i.i.i, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit16.i.i.i, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit.i.i.i, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit16.i.i.i, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit.i.i.i
  %.0 = phi i64 [ 0, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit.i.i.i ], [ 0, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit.i.i.i ], [ %i.as, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit16.i.i.i ], [ %i.bv, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit16.i.i.i ], [ %i.cw, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit16.i.i.i ], [ 0, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit.i.i.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i64 } @_ZN5arrow8ree_util17FindPhysicalRangeERKNS_9ArraySpanEll(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !56   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !57   ; 7 uses
  %i.l = icmp sgt i64 %i.k, 0                     ; 3 uses
  switch i32 %i.e, label %bb.f [
    i32 5, label %bb.b
    i32 7, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.g ; 4 uses
  br i1 %i.l, label %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit.i

_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %bb.b, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %.1.i.i.i.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %.01116.i.i.i.i = phi ptr [ %.112.i.i.i.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.n = lshr i64 %.017.i.i.i.i, 1                ; 3 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %.01116.i.i.i.i, i64 %i.n ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !63
  %i.q = sext i16 %i.p to i64
  %i.r = icmp slt i64 %1, %i.q                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.t = xor i64 %i.n, -1
  %i.u = add nsw i64 %.017.i.i.i.i, %i.t
  %.112.i.i.i.i = select i1 %i.r, ptr %.01116.i.i.i.i, ptr %i.s ; 2 uses
  %.1.i.i.i.i = select i1 %i.r, i64 %i.n, i64 %i.u ; 2 uses
  %i.v = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.v, label %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit.i, !llvm.loop !0

_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit.i: ; preds = %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %bb.b
  %.011.lcssa.i.i.i.i = phi ptr [ %i.m, %bb.b ], [ %.112.i.i.i.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ]
  %i.w = ptrtoint ptr %i.m to i64
  %i.x = ptrtoint ptr %.011.lcssa.i.i.i.i to i64  ; 2 uses
  %i.y = sub i64 %i.x, %i.w                       ; 2 uses
  %i.z = ashr exact i64 %i.y, 1                   ; 3 uses
  %i.aa = icmp eq i64 %2, 0
  br i1 %i.aa, label %_ZN5arrow8ree_util8internal17FindPhysicalRangeIsEESt4pairIllEPKT_lll.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit.i
  %3 = getelementptr inbounds i8, ptr %i.m, i64 %i.y ; 2 uses
  %i.ab = sub nsw i64 %i.k, %i.z                  ; 2 uses
  %i.ac = add i64 %1, -1
  %i.ad = add i64 %i.ac, %2
  %i.ae = icmp sgt i64 %i.ab, 0
  br i1 %i.ae, label %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit16.i

_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i: ; preds = %bb.c, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i
  %.017.i.i.i10.i = phi i64 [ %.1.i.i.i15.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i ], [ %i.ab, %bb.c ] ; 2 uses
  %.01116.i.i.i11.i = phi ptr [ %.112.i.i.i14.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i ], [ %3, %bb.c ] ; 2 uses
  %i.af = lshr i64 %.017.i.i.i10.i, 1             ; 3 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.01116.i.i.i11.i, i64 %i.af ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !63
  %i.ai = sext i16 %i.ah to i64
  %i.aj = icmp slt i64 %i.ad, %i.ai               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.al = xor i64 %i.af, -1
  %i.am = add nsw i64 %.017.i.i.i10.i, %i.al
  %.112.i.i.i14.i = select i1 %i.aj, ptr %.01116.i.i.i11.i, ptr %i.ak ; 2 uses
  %.1.i.i.i15.i = select i1 %i.aj, i64 %i.af, i64 %i.am ; 2 uses
  %i.an = icmp sgt i64 %.1.i.i.i15.i, 0
  br i1 %i.an, label %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit16.i, !llvm.loop !0

_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit16.i: ; preds = %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i, %bb.c
  %.011.lcssa.i.i.i8.i = phi ptr [ %3, %bb.c ], [ %.112.i.i.i14.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i ]
  %4 = ptrtoint ptr %.011.lcssa.i.i.i8.i to i64
  %i.ao = sub i64 %4, %i.x
  %i.ap = ashr exact i64 %i.ao, 1
  %i.aq = add nsw i64 %i.ap, 1
  br label %_ZN5arrow8ree_util8internal17FindPhysicalRangeIsEESt4pairIllEPKT_lll.exit

bb.d:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.g ; 4 uses
  br i1 %i.l, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit.i

_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %bb.d, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.017.i.i.i.i30 = phi i64 [ %.1.i.i.i.i35, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  %.01116.i.i.i.i31 = phi ptr [ %.112.i.i.i.i34, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.ar, %bb.d ] ; 2 uses
  %i.as = lshr i64 %.017.i.i.i.i30, 1             ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i.i.i31, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !9
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %1, %i.av                  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.ay = xor i64 %i.as, -1
  %i.az = add nsw i64 %.017.i.i.i.i30, %i.ay
  %.112.i.i.i.i34 = select i1 %i.aw, ptr %.01116.i.i.i.i31, ptr %i.ax ; 2 uses
  %.1.i.i.i.i35 = select i1 %i.aw, i64 %i.as, i64 %i.az ; 2 uses
  %i.ba = icmp sgt i64 %.1.i.i.i.i35, 0
  br i1 %i.ba, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit.i, !llvm.loop !1

_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit.i: ; preds = %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %bb.d
  %.011.lcssa.i.i.i.i19 = phi ptr [ %i.ar, %bb.d ], [ %.112.i.i.i.i34, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ]
  %i.bb = ptrtoint ptr %i.ar to i64
  %i.bc = ptrtoint ptr %.011.lcssa.i.i.i.i19 to i64 ; 2 uses
  %i.bd = sub i64 %i.bc, %i.bb                    ; 2 uses
  %i.be = ashr exact i64 %i.bd, 2                 ; 3 uses
  %i.bf = icmp eq i64 %2, 0
  br i1 %i.bf, label %_ZN5arrow8ree_util8internal17FindPhysicalRangeIsEESt4pairIllEPKT_lll.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit.i
  %5 = getelementptr inbounds i8, ptr %i.ar, i64 %i.bd ; 2 uses
  %i.bg = sub nsw i64 %i.k, %i.be                 ; 2 uses
  %i.bh = add i64 %1, -1
  %i.bi = add i64 %i.bh, %2
  %i.bj = icmp sgt i64 %i.bg, 0
  br i1 %i.bj, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit16.i

_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i: ; preds = %bb.e, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i
  %.017.i.i.i10.i24 = phi i64 [ %.1.i.i.i15.i29, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i ], [ %i.bg, %bb.e ] ; 2 uses
  %.01116.i.i.i11.i25 = phi ptr [ %.112.i.i.i14.i28, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i ], [ %5, %bb.e ] ; 2 uses
  %i.bk = lshr i64 %.017.i.i.i10.i24, 1           ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i.i11.i25, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !9
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %i.bi, %i.bn               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bq = xor i64 %i.bk, -1
  %i.br = add nsw i64 %.017.i.i.i10.i24, %i.bq
  %.112.i.i.i14.i28 = select i1 %i.bo, ptr %.01116.i.i.i11.i25, ptr %i.bp ; 2 uses
  %.1.i.i.i15.i29 = select i1 %i.bo, i64 %i.bk, i64 %i.br ; 2 uses
  %i.bs = icmp sgt i64 %.1.i.i.i15.i29, 0
  br i1 %i.bs, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit16.i, !llvm.loop !1

_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit16.i: ; preds = %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i, %bb.e
  %.011.lcssa.i.i.i8.i20 = phi ptr [ %5, %bb.e ], [ %.112.i.i.i14.i28, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i ]
  %6 = ptrtoint ptr %.011.lcssa.i.i.i8.i20 to i64
  %i.bt = sub i64 %6, %i.bc
  %i.bu = ashr exact i64 %i.bt, 2
  %i.bv = add nsw i64 %i.bu, 1
  br label %_ZN5arrow8ree_util8internal17FindPhysicalRangeIsEESt4pairIllEPKT_lll.exit

bb.f:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.g ; 4 uses
  br i1 %i.l, label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit.i

_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %bb.f, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.017.i.i.i.i47 = phi i64 [ %.1.i.i.i.i52, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.k, %bb.f ] ; 2 uses
  %.01116.i.i.i.i48 = phi ptr [ %.112.i.i.i.i51, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.bw, %bb.f ] ; 2 uses
  %i.bx = lshr i64 %.017.i.i.i.i47, 1             ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i.i48, i64 %i.bx ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !66
  %i.ca = icmp slt i64 %1, %i.bz                  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cc = xor i64 %i.bx, -1
  %i.cd = add nsw i64 %.017.i.i.i.i47, %i.cc
  %.112.i.i.i.i51 = select i1 %i.ca, ptr %.01116.i.i.i.i48, ptr %i.cb ; 2 uses
  %.1.i.i.i.i52 = select i1 %i.ca, i64 %i.bx, i64 %i.cd ; 2 uses
  %i.ce = icmp sgt i64 %.1.i.i.i.i52, 0
  br i1 %i.ce, label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit.i, !llvm.loop !2

_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit.i: ; preds = %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %bb.f
  %.011.lcssa.i.i.i.i36 = phi ptr [ %i.bw, %bb.f ], [ %.112.i.i.i.i51, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ]
  %i.cf = ptrtoint ptr %i.bw to i64
  %i.cg = ptrtoint ptr %.011.lcssa.i.i.i.i36 to i64 ; 2 uses
  %i.ch = sub i64 %i.cg, %i.cf                    ; 2 uses
  %i.ci = ashr exact i64 %i.ch, 3                 ; 3 uses
  %i.cj = icmp eq i64 %2, 0
  br i1 %i.cj, label %_ZN5arrow8ree_util8internal17FindPhysicalRangeIsEESt4pairIllEPKT_lll.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit.i
  %7 = getelementptr inbounds i8, ptr %i.bw, i64 %i.ch ; 2 uses
  %i.ck = sub nsw i64 %i.k, %i.ci                 ; 2 uses
  %i.cl = add i64 %1, -1
  %i.cm = add i64 %i.cl, %2
  %i.cn = icmp sgt i64 %i.ck, 0
  br i1 %i.cn, label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit16.i

_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i: ; preds = %bb.g, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i
  %.017.i.i.i10.i41 = phi i64 [ %.1.i.i.i15.i46, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i ], [ %i.ck, %bb.g ] ; 2 uses
  %.01116.i.i.i11.i42 = phi ptr [ %.112.i.i.i14.i45, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i ], [ %7, %bb.g ] ; 2 uses
  %i.co = lshr i64 %.017.i.i.i10.i41, 1           ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i11.i42, i64 %i.co ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !66
  %i.cr = icmp slt i64 %i.cm, %i.cq               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ct = xor i64 %i.co, -1
  %i.cu = add nsw i64 %.017.i.i.i10.i41, %i.ct
  %.112.i.i.i14.i45 = select i1 %i.cr, ptr %.01116.i.i.i11.i42, ptr %i.cs ; 2 uses
  %.1.i.i.i15.i46 = select i1 %i.cr, i64 %i.co, i64 %i.cu ; 2 uses
  %i.cv = icmp sgt i64 %.1.i.i.i15.i46, 0
  br i1 %i.cv, label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i, label %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit16.i, !llvm.loop !2

_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit16.i: ; preds = %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i, %bb.g
  %.011.lcssa.i.i.i8.i37 = phi ptr [ %7, %bb.g ], [ %.112.i.i.i14.i45, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i9.i ]
  %8 = ptrtoint ptr %.011.lcssa.i.i.i8.i37 to i64
  %i.cw = sub i64 %8, %i.cg
  %i.cx = ashr exact i64 %i.cw, 3
  %i.cy = add nsw i64 %i.cx, 1
  br label %_ZN5arrow8ree_util8internal17FindPhysicalRangeIsEESt4pairIllEPKT_lll.exit

_ZN5arrow8ree_util8internal17FindPhysicalRangeIsEESt4pairIllEPKT_lll.exit: ; preds = %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit16.i, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit.i, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit16.i, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit.i, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit16.i, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit.i
  %.pn54 = phi i64 [ %i.be, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit16.i ], [ %i.z, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit16.i ], [ %i.z, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit.i ], [ %i.be, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit.i ], [ %i.ci, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit.i ], [ %i.ci, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit16.i ]
  %.sroa.3.0.i.pn = phi i64 [ %i.bv, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit16.i ], [ %i.aq, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit16.i ], [ 0, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIsEElPKT_lll.exit.i ], [ 0, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIiEElPKT_lll.exit.i ], [ 0, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit.i ], [ %i.cy, %_ZN5arrow8ree_util8internal17FindPhysicalIndexIlEElPKT_lll.exit16.i ]
  %.fca.0.insert.i.pn = insertvalue { i64, i64 } poison, i64 %.pn54, 0
  %.pn = insertvalue { i64, i64 } %.fca.0.insert.i.pn, i64 %.sroa.3.0.i.pn, 1
  ret { i64, i64 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8ree_util29ValidateRunEndEncodedChildrenERKNS_17RunEndEncodedTypeElRKSt10shared_ptrINS_9ArrayDataEES8_ll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %i.o = alloca i64, align 8                      ; 4 uses
  %i.p = alloca i64, align 8                      ; 4 uses
  %i.q = alloca i16, align 2                      ; 4 uses
  %i.r = alloca i64, align 8                      ; 4 uses
  %i.s = alloca i64, align 8                      ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 10 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !177
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !181
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183  ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !55
  switch i32 %i.z, label %bb.bj [
    i32 5, label %bb.b
    i32 7, label %bb.af
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %2, ptr %i.m, align 8, !tbaa !66, !noalias !184
  store i64 %5, ptr %i.n, align 8, !tbaa !66, !noalias !184
  store i64 %6, ptr %i.o, align 8, !tbaa !66, !noalias !184
  %i.aa = add nsw i64 %6, %2                      ; 4 uses
  %i.ab = icmp sgt i64 %i.aa, 32767
  br i1 %i.ab, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #11, !noalias !184
  store i64 %i.aa, ptr %i.p, align 8, !tbaa !66, !noalias !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #11, !noalias !184
  store i16 32767, ptr %i.q, align 2, !tbaa !63, !noalias !184
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11, !noalias !185
  call void @_ZN5arrow8internal12JoinToStringIJRA84_KcRNS_8DataTypeERA26_S2_lRA31_S2_sEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 1 dereferenceable(84) @.str, ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 1 dereferenceable(26) @.str.1, ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, ptr noundef nonnull align 2 dereferenceable(2) %i.q), !noalias !185
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %15, align 8, !tbaa !70, !noalias !185 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN5arrow6Status7InvalidIJRA84_KcRNS_8DataTypeERA26_S2_lRA31_S2_sEEES0_DpOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !65, !noalias !185
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #12
  br label %_ZN5arrow6Status7InvalidIJRA84_KcRNS_8DataTypeERA26_S2_lRA31_S2_sEEES0_DpOT_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %15, align 8, !tbaa !70, !noalias !185 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i: ; preds = %bb.e
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !65, !noalias !185
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i27.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i27.i21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i27.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.jc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i ], [ %i.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i29 ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i27.i ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i37 ], [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i27.i21 ], [ %i.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i27.i44 ], [ %i.in, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i52 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11, !noalias !185
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA84_KcRNS_8DataTypeERA26_S2_lRA31_S2_sEEES0_DpOT_.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11, !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #11, !noalias !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #11, !noalias !184
  br label %_ZN5arrow8ree_util12_GLOBAL__N_129ValidateRunEndEncodedChildrenIsEENS_6StatusERKNS_17RunEndEncodedTypeElRKSt10shared_ptrINS_9ArrayDataEESB_ll.exit

bb.f:                                             ; preds = %bb.b
  %i.an = load ptr, ptr %3, align 8, !tbaa !188, !noalias !184 ; 2 uses
  %.not33.i = icmp eq ptr %i.an, null
  br i1 %.not33.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5arrow6Status8FromArgsIJRA31_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(31) @.str.3)
  br label %_ZN5arrow8ree_util12_GLOBAL__N_129ValidateRunEndEncodedChildrenIsEENS_6StatusERKNS_17RunEndEncodedTypeElRKSt10shared_ptrINS_9ArrayDataEESB_ll.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %4, align 8, !tbaa !188, !noalias !184
  %.not34.i = icmp eq ptr %i.ao, null
  br i1 %.not34.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(29) @.str.4)
  br label %_ZN5arrow8ree_util12_GLOBAL__N_129ValidateRunEndEncodedChildrenIsEENS_6StatusERKNS_17RunEndEncodedTypeElRKSt10shared_ptrINS_9ArrayDataEESB_ll.exit

bb.j:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !183, !noalias !184
  %i.aq = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef nonnull align 8 dereferenceable(72) %i.x, i1 noundef zeroext false), !noalias !184
  br i1 %i.aq, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !177, !noalias !184
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !181, !noalias !184
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !183, !noalias !184
  %i.av = load ptr, ptr %3, align 8, !tbaa !188, !noalias !184
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !183, !noalias !184
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11, !noalias !189
  call void @_ZN5arrow8internal12JoinToStringIJRA19_KcRKNS_17RunEndEncodedTypeERA10_S2_RNS_8DataTypeERA23_S2_SB_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 1 dereferenceable(19) @.str.5, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(10) @.str.6, ptr noundef nonnull align 8 dereferenceable(72) %i.au, ptr noundef nonnull align 1 dereferenceable(23) @.str.7, ptr noundef nonnull align 8 dereferenceable(72) %i.aw), !noalias !189
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = load ptr, ptr %14, align 8, !tbaa !70, !noalias !189 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZN5arrow6Status7InvalidIJRA19_KcRKNS_17RunEndEncodedTypeERA10_S2_RNS_8DataTypeERA23_S2_SB_EEES0_DpOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29.i: ; preds = %bb.l
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !65, !noalias !189
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #12
  br label %_ZN5arrow6Status7InvalidIJRA19_KcRKNS_17RunEndEncodedTypeERA10_S2_RNS_8DataTypeERA23_S2_SB_EEES0_DpOT_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %14, align 8, !tbaa !70, !noalias !189 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i27.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i26.i: ; preds = %bb.m
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !65, !noalias !189
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i27.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11, !noalias !189
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA19_KcRKNS_17RunEndEncodedTypeERA10_S2_RNS_8DataTypeERA23_S2_SB_EEES0_DpOT_.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11, !noalias !189
  br label %_ZN5arrow8ree_util12_GLOBAL__N_129ValidateRunEndEncodedChildrenIsEENS_6StatusERKNS_17RunEndEncodedTypeElRKSt10shared_ptrINS_9ArrayDataEESB_ll.exit

bb.n:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %4, align 8, !tbaa !188, !noalias !184
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !183, !noalias !184
  %i.bk = load ptr, ptr %i.t, align 8, !tbaa !177, !noalias !184
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !181, !noalias !184
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !183, !noalias !184
  %i.bp = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bo, i1 noundef zeroext false), !noalias !184
  br i1 %i.bp, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %i.t, align 8, !tbaa !177, !noalias !184
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
end_hunk_0
