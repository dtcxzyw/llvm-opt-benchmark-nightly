Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/tbv?download=true
inline.NumInlined: 189
inline.NumDeleted: 101
begin_hunk_0_@_ZN11tbv_manager8allocateEm:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13
  %i.e = zext i32 %i.d to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 dereferenceable(4) %i.a, i8 -86, i64 %i.e, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.g = load i32, ptr %i.f, align 8, !tbaa !18
  %i.h = lshr i32 %i.g, 1                         ; 2 uses
  %.not12 = icmp eq i32 %i.h, 0
  br i1 %.not12, label %select.unfold._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.h, i32 64)
  br label %.lr.ph

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.a
  ret ptr %i.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %select.unfold
  %.in = phi i32 [ %i.i, %select.unfold ], [ %spec.select, %.lr.ph.preheader ]
  %i.i = add i32 %.in, -1                         ; 4 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = and i64 %i.k, %1
  %.not8 = icmp eq i64 %i.l, 0
  %i.m = shl i32 %i.i, 1                          ; 3 uses
  %i.n = lshr i32 %i.m, 5
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19   ; 5 uses
  br i1 %.not8, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.r = xor i32 %i.q, -1
  %i.s = and i32 %i.m, 30                         ; 2 uses
  %i.t = shl nuw nsw i32 1, %i.s
  %i.u = and i32 %i.t, %i.r
  %i.v = shl nuw i32 2, %i.s
  %i.w = and i32 %i.q, %i.v
  %i.x = or disjoint i32 %i.u, %i.w
  br label %select.unfold

bb.c:                                             ; preds = %.lr.ph
  %i.y = and i32 %i.m, 30                         ; 2 uses
  %i.z = shl nuw nsw i32 1, %i.y
  %i.aa = and i32 %i.q, %i.z
  %i.ab = xor i32 %i.q, -1
  %i.ac = shl nuw i32 2, %i.y
  %i.ad = and i32 %i.ac, %i.ab
  %i.ae = or disjoint i32 %i.aa, %i.ad
  br label %select.unfold

select.unfold:                                    ; preds = %bb.c, %bb.b
  %.sink13 = phi i32 [ %i.ae, %bb.c ], [ %i.x, %bb.b ]
  %i.af = xor i32 %.sink13, %i.q
  store i32 %i.af, ptr %i.p, align 4, !tbaa !19
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %select.unfold._crit_edge, label %.lr.ph, !llvm.loop !20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN11tbv_manager3setER3tbvj4tbit(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(552) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = shl i32 %2, 1                            ; 2 uses
  %i.b = shl i32 %3, 30
  %sext = ashr i32 %i.b, 31
  %i.c = lshr i32 %i.a, 5
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.d ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !19   ; 3 uses
  %i.g = xor i32 %i.f, %sext
  %i.h = and i32 %i.a, 30                         ; 2 uses
  %i.i = shl nuw nsw i32 1, %i.h
  %i.j = and i32 %i.g, %i.i
  %i.k = and i32 %3, 1
  %.neg.i.i6 = sub nsw i32 0, %i.k
  %i.l = xor i32 %i.f, %.neg.i.i6
  %i.m = shl nuw i32 2, %i.h
  %i.n = and i32 %i.l, %i.m
  %i.o = or disjoint i32 %i.j, %i.n
  %i.p = xor i32 %i.o, %i.f
  store i32 %i.p, ptr %i.e, align 4, !tbaa !19
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11tbv_manager8allocateEmjj(ptr noundef nonnull align 8 dereferenceable(552) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN24fixed_bit_vector_manager8allocateEv(ptr noundef nonnull align 8 dereferenceable(552) %0) ; 4 uses
  %i.b = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK24fixed_bit_vector_manager5fill0ER16fixed_bit_vector(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.c = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK24fixed_bit_vector_manager5fill1ER16fixed_bit_vector(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.d = add i32 %2, 1                            ; 2 uses
  %.not10.i = icmp eq i32 %i.d, %3
  br i1 %.not10.i, label %_ZN11tbv_manager3setER3tbvmjj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = sub i32 %i.d, %3
  %wide.trip.count.i = zext i32 %i.e to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.f = trunc nuw i64 %indvars.iv.i to i32
  %i.g = add i32 %3, %i.f
  %i.h = shl nuw i64 1, %indvars.iv.i
  %i.i = and i64 %i.h, %1
  %.not.i = icmp eq i64 %i.i, 0
  %i.j = select i1 %.not.i, i32 1, i32 2          ; 2 uses
  %i.k = shl i32 %i.g, 1                          ; 2 uses
  %i.l = shl nuw i32 %i.j, 30
  %sext.i.i = ashr i32 %i.l, 31
  %i.m = lshr i32 %i.k, 5
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !19   ; 3 uses
  %i.q = xor i32 %sext.i.i, %i.p
  %i.r = and i32 %i.k, 30                         ; 2 uses
  %i.s = shl nuw nsw i32 1, %i.r
  %i.t = and i32 %i.q, %i.s
  %i.u = and i32 %i.j, 1
  %.neg.i.i6.i.i = sub nsw i32 0, %i.u
  %i.v = xor i32 %i.p, %.neg.i.i6.i.i
  %i.w = shl nuw i32 2, %i.r
  %i.x = and i32 %i.v, %i.w
  %i.y = or disjoint i32 %i.t, %i.x
  %i.z = xor i32 %i.y, %i.p
  store i32 %i.z, ptr %i.o, align 4, !tbaa !19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11tbv_manager3setER3tbvmjj.exit, label %.lr.ph.i, !llvm.loop !22

_ZN11tbv_manager3setER3tbvmjj.exit:               ; preds = %.lr.ph.i, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN11tbv_manager3setER3tbvmjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(552) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = add i32 %3, 1                            ; 2 uses
  %.not10 = icmp eq i32 %i.a, %4
  br i1 %.not10, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = sub i32 %i.a, %4
  %wide.trip.count = zext i32 %i.b to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.c = trunc nuw i64 %indvars.iv to i32
  %i.d = add i32 %4, %i.c
  %i.e = shl nuw i64 1, %indvars.iv
  %i.f = and i64 %i.e, %2
  %.not = icmp eq i64 %i.f, 0
  %i.g = select i1 %.not, i32 1, i32 2            ; 2 uses
  %i.h = shl i32 %i.d, 1                          ; 2 uses
  %i.i = shl nuw i32 %i.g, 30
  %sext.i = ashr i32 %i.i, 31
  %i.j = lshr i32 %i.h, 5
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19   ; 3 uses
  %i.n = xor i32 %i.m, %sext.i
  %i.o = and i32 %i.h, 30                         ; 2 uses
  %i.p = shl nuw nsw i32 1, %i.o
  %i.q = and i32 %i.n, %i.p
  %i.r = and i32 %i.g, 1
  %.neg.i.i6.i = sub nsw i32 0, %i.r
  %i.s = xor i32 %i.m, %.neg.i.i6.i
  %i.t = shl nuw i32 2, %i.o
  %i.u = and i32 %i.s, %i.t
  %i.v = or disjoint i32 %i.q, %i.u
  %i.w = xor i32 %i.v, %i.m
  store i32 %i.w, ptr %i.l, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11tbv_manager8allocateERK3tbvPKj(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN24fixed_bit_vector_manager8allocateEv(ptr noundef nonnull align 8 dereferenceable(552) %0) ; 3 uses
  %i.b = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK24fixed_bit_vector_manager5fill0ER16fixed_bit_vector(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  %i.e = lshr i32 %i.d, 1                         ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %i.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.h = shl nuw i32 %indvars.iv.tr, 1
  %3 = lshr i64 %indvars.iv, 4
  %4 = and i64 %3, 268435455
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !19   ; 2 uses
  %i.k = and i32 %i.h, 30                         ; 2 uses
  %i.l = shl nuw nsw i32 1, %i.k
  %i.m = and i32 %i.j, %i.l
  %.not.i.i = icmp ne i32 %i.m, 0
  %i.n = shl nuw i32 2, %i.k
  %i.o = and i32 %i.j, %i.n
  %i.p = icmp ne i32 %i.o, 0
  %.neg = sext i1 %i.p to i32
  %i.q = shl i32 %i.g, 1                          ; 2 uses
  %sext.i = sext i1 %.not.i.i to i32
  %i.r = lshr i32 %i.q, 5
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !19   ; 3 uses
  %i.v = xor i32 %i.u, %sext.i
  %i.w = and i32 %i.q, 30                         ; 2 uses
  %i.x = shl nuw nsw i32 1, %i.w
  %i.y = and i32 %i.v, %i.x
  %i.z = xor i32 %i.u, %.neg
  %i.aa = shl nuw i32 2, %i.w
  %i.ab = and i32 %i.z, %i.aa
  %i.ac = or disjoint i32 %i.y, %i.ab
  %i.ad = xor i32 %i.ac, %i.u
  store i32 %i.ad, ptr %i.t, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !23
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11tbv_manager8allocateEPKc(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN24fixed_bit_vector_manager8allocateEv(ptr noundef nonnull align 8 dereferenceable(552) %0) ; 5 uses
  %i.b = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK24fixed_bit_vector_manager5fill0ER16fixed_bit_vector(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.c = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK24fixed_bit_vector_manager5fill1ER16fixed_bit_vector(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18
  %i.f = lshr i32 %i.e, 1                         ; 2 uses
  %i.g = load i8, ptr %1, align 1, !tbaa !24      ; 2 uses
  %i.h = icmp ne i8 %i.g, 0
  %i.i = icmp ne i32 %i.f, 0
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %i.k = phi i8 [ %i.ar, %bb.h ], [ %i.g, %bb.a ] ; 2 uses
  %.022 = phi i32 [ %.1, %bb.h ], [ 0, %bb.a ]    ; 7 uses
  %.01821 = phi ptr [ %i.aq, %bb.h ], [ %1, %bb.a ]
  switch i8 %i.k, label %bb.f [
    i8 48, label %bb.b
    i8 49, label %bb.c
    i8 42, label %bb.d
    i8 120, label %bb.e
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.l = add i32 %.022, 1
  %i.m = shl i32 %.022, 1                         ; 2 uses
  %i.n = lshr i32 %i.m, 5
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19   ; 3 uses
  %i.r = and i32 %i.m, 30                         ; 2 uses
  %i.s = shl nuw nsw i32 1, %i.r
  %i.t = and i32 %i.q, %i.s
  %i.u = xor i32 %i.q, -1
  %i.v = shl nuw i32 2, %i.r
  %i.w = and i32 %i.v, %i.u
  %i.x = or disjoint i32 %i.t, %i.w
  %i.y = xor i32 %i.x, %i.q
  store i32 %i.y, ptr %i.p, align 4, !tbaa !19
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.022, 1
  %i.aa = shl i32 %.022, 1                        ; 2 uses
  %i.ab = lshr i32 %i.aa, 5
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !19 ; 3 uses
  %i.af = xor i32 %i.ae, -1
  %i.ag = and i32 %i.aa, 30                       ; 2 uses
  %i.ah = shl nuw nsw i32 1, %i.ag
  %i.ai = and i32 %i.ah, %i.af
  %i.aj = shl nuw i32 2, %i.ag
  %i.ak = and i32 %i.ae, %i.aj
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = xor i32 %i.al, %i.ae
  store i32 %i.am, ptr %i.ad, align 4, !tbaa !19
  br label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %i.an = add nuw i32 %.022, 1
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph
  %i.ao = add nuw i32 %.022, 1
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.ap = icmp eq i32 %.022, 0
  br i1 %i.ap, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  switch i8 %i.k, label %._crit_edge [
    i8 32, label %bb.h
    i8 9, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.c, %bb.e, %bb.d, %bb.b
  %.1 = phi i32 [ %i.l, %bb.b ], [ %i.z, %bb.c ], [ %i.an, %bb.d ], [ %i.ao, %bb.e ], [ 0, %bb.g ], [ 0, %bb.g ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.01821, i64 1 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !24  ; 2 uses
  %i.as = icmp ne i8 %i.ar, 0
  %i.at = icmp ult i32 %.1, %i.f
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  br i1 %i.au, label %.lr.ph, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11tbv_manager7projectERK10bit_vectorRK3tbv(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN24fixed_bit_vector_manager8allocateEv(ptr noundef nonnull align 8 dereferenceable(552) %0) ; 3 uses
  %i.b = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK24fixed_bit_vector_manager5fill0ER16fixed_bit_vector(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !26     ; 2 uses
  %.not15 = icmp eq i32 %i.c, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.014 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ]  ; 3 uses
  %.01213 = phi i32 [ 0, %.lr.ph ], [ %i.am, %bb.d ] ; 4 uses
  %i.f = lshr i32 %.01213, 5
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !19
  %i.j = and i32 %.01213, 31
  %i.k = shl nuw i32 1, %i.j
  %i.l = and i32 %i.i, %i.k
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = shl i32 %.01213, 1                       ; 2 uses
  %i.n = lshr i32 %i.m, 5
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19   ; 2 uses
  %i.r = and i32 %i.m, 30                         ; 2 uses
  %i.s = shl nuw nsw i32 1, %i.r
  %i.t = and i32 %i.q, %i.s
  %.not.i.i = icmp ne i32 %i.t, 0
  %i.u = shl nuw i32 2, %i.r
  %i.v = and i32 %i.q, %i.u
  %i.w = icmp ne i32 %i.v, 0
  %.neg = sext i1 %i.w to i32
  %i.x = shl i32 %.014, 1                         ; 2 uses
  %sext.i = sext i1 %.not.i.i to i32
  %i.y = lshr i32 %i.x, 5
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !19 ; 3 uses
  %i.ac = xor i32 %i.ab, %sext.i
  %i.ad = and i32 %i.x, 30                        ; 2 uses
  %i.ae = shl nuw nsw i32 1, %i.ad
  %i.af = and i32 %i.ac, %i.ae
  %i.ag = xor i32 %i.ab, %.neg
  %i.ah = shl nuw i32 2, %i.ad
  %i.ai = and i32 %i.ag, %i.ah
  %i.aj = or disjoint i32 %i.af, %i.ai
  %i.ak = xor i32 %i.aj, %i.ab
  store i32 %i.ak, ptr %i.aa, align 4, !tbaa !19
  %i.al = add i32 %.014, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %.014, %bb.b ], [ %i.al, %bb.c ]
  %i.am = add nuw i32 %.01213, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.am, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11tbv_manager3setER3tbvRK8rationaljj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(552) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.c = load i8, ptr %i.b, align 4
end_hunk_0
