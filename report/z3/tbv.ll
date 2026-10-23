Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/tbv?download=true
inline.NumInlined: 189
inline.NumDeleted: 101
begin_hunk_0_@_ZN11tbv_manager8allocateEv:bb.a
bb.a:
  %i.a = tail call noundef ptr @_ZN24fixed_bit_vector_manager8allocateEv(ptr noundef nonnull align 8 dereferenceable(540) %0) ; 2 uses
  %i.b = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK24fixed_bit_vector_manager5fill0ER16fixed_bit_vector(ptr noundef nonnull align 8 dereferenceable(540) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare noundef ptr @_ZN24fixed_bit_vector_manager8allocateEv(ptr noundef nonnull align 8 dereferenceable(540)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11tbv_manager9allocate1Ev(ptr noundef nonnull align 8 dereferenceable(552) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN24fixed_bit_vector_manager8allocateEv(ptr noundef nonnull align 8 dereferenceable(552) %0) ; 3 uses
  %i.b = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK24fixed_bit_vector_manager5fill0ER16fixed_bit_vector(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %i.e = zext i32 %i.d to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 dereferenceable(4) %i.a, i8 85, i64 %i.e, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNK11tbv_manager5fill1ER3tbv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %0, ptr nofree noundef nonnull returned writeonly align 4 captures(ret: address, provenance) dereferenceable(4) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20
  %i.c = zext i32 %i.b to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %1, i8 85, i64 %i.c, i1 false)
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11tbv_manager9allocate0Ev(ptr noundef nonnull align 8 dereferenceable(552) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN24fixed_bit_vector_manager8allocateEv(ptr noundef nonnull align 8 dereferenceable(552) %0) ; 3 uses
  %i.b = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK24fixed_bit_vector_manager5fill0ER16fixed_bit_vector(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %i.e = zext i32 %i.d to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 dereferenceable(4) %i.a, i8 -86, i64 %i.e, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNK11tbv_manager5fill0ER3tbv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %0, ptr nofree noundef nonnull returned writeonly align 4 captures(ret: address, provenance) dereferenceable(4) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20
  %i.c = zext i32 %i.b to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %1, i8 -86, i64 %i.c, i1 false)
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11tbv_manager9allocateXEv(ptr noundef nonnull align 8 dereferenceable(552) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN24fixed_bit_vector_manager8allocateEv(ptr noundef nonnull align 8 dereferenceable(552) %0) ; 3 uses
  %i.b = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK24fixed_bit_vector_manager5fill0ER16fixed_bit_vector(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.c = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK24fixed_bit_vector_manager5fill1ER16fixed_bit_vector(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNK11tbv_manager5fillXER3tbv(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull returned align 4 dereferenceable(4) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK24fixed_bit_vector_manager5fill1ER16fixed_bit_vector(ptr noundef nonnull align 8 dereferenceable(540) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11tbv_manager8allocateERK3tbv(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN24fixed_bit_vector_manager8allocateEv(ptr noundef nonnull align 8 dereferenceable(552) %0) ; 3 uses
  %i.b = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK24fixed_bit_vector_manager5fill0ER16fixed_bit_vector(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  tail call void @_ZNK24fixed_bit_vector_manager4copyER16fixed_bit_vectorRKS0_(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK11tbv_manager4copyER3tbvRKS0_(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZNK24fixed_bit_vector_manager4copyER16fixed_bit_vectorRKS0_(ptr noundef nonnull align 8 dereferenceable(540) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11tbv_manager8allocateEm(ptr noundef nonnull align 8 dereferenceable(552) %0, i64 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN24fixed_bit_vector_manager8allocateEv(ptr noundef nonnull align 8 dereferenceable(552) %0) ; 4 uses
  %i.b = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK24fixed_bit_vector_manager5fill0ER16fixed_bit_vector(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %i.e = zext i32 %i.d to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 dereferenceable(4) %i.a, i8 -86, i64 %i.e, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21
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
  %i.i = add nsw i32 %.in, -1                     ; 4 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = and i64 %i.k, %1
  %.not8 = icmp eq i64 %i.l, 0
  %i.m = shl i32 %i.i, 1                          ; 3 uses
  %i.n = lshr i32 %i.m, 5
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !22   ; 5 uses
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
  store i32 %i.af, ptr %i.p, align 4, !tbaa !22
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %select.unfold._crit_edge, label %.lr.ph, !llvm.loop !0
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
  %i.f = load i32, ptr %i.e, align 4, !tbaa !22   ; 3 uses
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
  store i32 %i.p, ptr %i.e, align 4, !tbaa !22
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
  %4 = shl i32 %i.g, 1                            ; 2 uses
  %i.k = shl nuw i32 %i.j, 30
  %sext.i.i = ashr i32 %i.k, 31
  %i.l = lshr i32 %4, 5
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !22   ; 3 uses
  %i.p = xor i32 %sext.i.i, %i.o
  %i.q = and i32 %4, 30                           ; 2 uses
  %i.r = shl nuw nsw i32 1, %i.q
  %i.s = and i32 %i.p, %i.r
  %i.t = and i32 %i.j, 1
  %.neg.i.i6.i.i = sub nsw i32 0, %i.t
  %i.u = xor i32 %i.o, %.neg.i.i6.i.i
  %i.v = shl nuw i32 2, %i.q
  %i.w = and i32 %i.u, %i.v
  %i.x = or disjoint i32 %i.s, %i.w
  %i.y = xor i32 %i.x, %i.o
  store i32 %i.y, ptr %i.n, align 4, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11tbv_manager3setER3tbvmjj.exit, label %.lr.ph.i, !llvm.loop !1

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
  %5 = shl i32 %i.d, 1                            ; 2 uses
  %i.h = shl nuw i32 %i.g, 30
  %sext.i = ashr i32 %i.h, 31
  %i.i = lshr i32 %5, 5
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !22   ; 3 uses
  %i.m = xor i32 %i.l, %sext.i
  %i.n = and i32 %5, 30                           ; 2 uses
  %i.o = shl nuw nsw i32 1, %i.n
  %i.p = and i32 %i.m, %i.o
  %i.q = and i32 %i.g, 1
  %.neg.i.i6.i = sub nsw i32 0, %i.q
  %i.r = xor i32 %i.l, %.neg.i.i6.i
  %i.s = shl nuw i32 2, %i.n
  %i.t = and i32 %i.r, %i.s
  %i.u = or disjoint i32 %i.p, %i.t
  %i.v = xor i32 %i.u, %i.l
  store i32 %i.v, ptr %i.k, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11tbv_manager8allocateERK3tbvPKj(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN24fixed_bit_vector_manager8allocateEv(ptr noundef nonnull align 8 dereferenceable(552) %0) ; 3 uses
  %i.b = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK24fixed_bit_vector_manager5fill0ER16fixed_bit_vector(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21
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
  %i.g = load i32, ptr %i.f, align 4, !tbaa !22
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.h = shl nuw i32 %indvars.iv.tr, 1
  %i.i = lshr i64 %indvars.iv, 4
  %i.j = and i64 %i.i, 268435455
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !22   ; 2 uses
  %i.m = and i32 %i.h, 30                         ; 2 uses
  %i.n = shl nuw nsw i32 1, %i.m
  %i.o = and i32 %i.l, %i.n
  %.not.i.i = icmp ne i32 %i.o, 0
  %i.p = shl nuw i32 2, %i.m
  %i.q = and i32 %i.l, %i.p
  %i.r = icmp ne i32 %i.q, 0
  %.neg = sext i1 %i.r to i32
  %i.s = shl i32 %i.g, 1                          ; 2 uses
  %sext.i = sext i1 %.not.i.i to i32
  %i.t = lshr i32 %i.s, 5
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !22   ; 3 uses
  %i.x = xor i32 %i.w, %sext.i
  %i.y = and i32 %i.s, 30                         ; 2 uses
  %i.z = shl nuw nsw i32 1, %i.y
  %i.aa = and i32 %i.x, %i.z
  %i.ab = xor i32 %i.w, %.neg
  %i.ac = shl nuw i32 2, %i.y
  %i.ad = and i32 %i.ab, %i.ac
  %i.ae = or disjoint i32 %i.aa, %i.ad
  %i.af = xor i32 %i.ae, %i.w
  store i32 %i.af, ptr %i.v, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11tbv_manager8allocateEPKc(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN24fixed_bit_vector_manager8allocateEv(ptr noundef nonnull align 8 dereferenceable(552) %0) ; 5 uses
  %i.b = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK24fixed_bit_vector_manager5fill0ER16fixed_bit_vector(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.c = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK24fixed_bit_vector_manager5fill1ER16fixed_bit_vector(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !22   ; 3 uses
  %i.r = and i32 %i.m, 30                         ; 2 uses
  %i.s = shl nuw nsw i32 1, %i.r
  %i.t = and i32 %i.q, %i.s
  %i.u = xor i32 %i.q, -1
  %i.v = shl nuw i32 2, %i.r
  %i.w = and i32 %i.v, %i.u
  %i.x = or disjoint i32 %i.t, %i.w
  %i.y = xor i32 %i.x, %i.q
  store i32 %i.y, ptr %i.p, align 4, !tbaa !22
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.022, 1
  %i.aa = shl i32 %.022, 1                        ; 2 uses
  %i.ab = lshr i32 %i.aa, 5
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !22 ; 3 uses
  %i.af = xor i32 %i.ae, -1
  %i.ag = and i32 %i.aa, 30                       ; 2 uses
  %i.ah = shl nuw nsw i32 1, %i.ag
  %i.ai = and i32 %i.ah, %i.af
  %i.aj = shl nuw i32 2, %i.ag
  %i.ak = and i32 %i.ae, %i.aj
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = xor i32 %i.al, %i.ae
  store i32 %i.am, ptr %i.ad, align 4, !tbaa !22
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
  br i1 %i.au, label %.lr.ph, label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11tbv_manager7projectERK10bit_vectorRK3tbv(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN24fixed_bit_vector_manager8allocateEv(ptr noundef nonnull align 8 dereferenceable(552) %0) ; 3 uses
  %i.b = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK24fixed_bit_vector_manager5fill0ER16fixed_bit_vector(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !42     ; 2 uses
  %.not15 = icmp eq i32 %i.c, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.014 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ]  ; 3 uses
  %.01213 = phi i32 [ 0, %.lr.ph ], [ %i.am, %bb.d ] ; 4 uses
  %i.f = lshr i32 %.01213, 5
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !22
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !22   ; 2 uses
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
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !22 ; 3 uses
  %i.ac = xor i32 %i.ab, %sext.i
  %i.ad = and i32 %i.x, 30                        ; 2 uses
  %i.ae = shl nuw nsw i32 1, %i.ad
  %i.af = and i32 %i.ac, %i.ae
  %i.ag = xor i32 %i.ab, %.neg
  %i.ah = shl nuw i32 2, %i.ad
  %i.ai = and i32 %i.ag, %i.ah
  %i.aj = or disjoint i32 %i.af, %i.ai
  %i.ak = xor i32 %i.aj, %i.ab
  store i32 %i.ak, ptr %i.aa, align 4, !tbaa !22
  %i.al = add i32 %.014, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %.014, %bb.b ], [ %i.al, %bb.c ]
  %i.am = add nuw i32 %.01213, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.am, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11tbv_manager3setER3tbvRK8rationaljj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(552) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, 1
  %i.e = icmp eq i8 %i.d, 0
  %i.f = load i32, ptr %i.a, align 8
  %i.g = icmp eq i32 %i.f, 1
  %i.h = select i1 %i.e, i1 %i.g, i1 false
  br i1 %i.h, label %.split, label %_ZNK8rational9is_uint64Ev.exit.preheader

_ZNK8rational9is_uint64Ev.exit.preheader:         ; preds = %.split, %bb.a
  %i.i = add i32 %3, 1                            ; 2 uses
  %.not = icmp eq i32 %i.i, %4
  br i1 %.not, label %_ZN11tbv_manager3setER3tbvmjj.exit, label %_ZNK8rational9is_uint64Ev.exit.preheader16

_ZNK8rational9is_uint64Ev.exit.preheader16:       ; preds = %_ZNK8rational9is_uint64Ev.exit.preheader
  %i.j = sub i32 %i.i, %4
  br label %_ZNK8rational9is_uint64Ev.exit

.split:                                           ; preds = %bb.a
  %i.k = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !27
  %i.l = tail call noundef zeroext i1 @_ZNK11mpz_managerILb1EE9is_uint64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br i1 %i.l, label %bb.b, label %_ZNK8rational9is_uint64Ev.exit.preheader

bb.b:                                             ; preds = %.split
  %i.m = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !27
  %i.n = tail call noundef i64 @_ZNK11mpz_managerILb1EE10get_uint64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.o = add i32 %3, 1                            ; 2 uses
  %.not10.i = icmp eq i32 %i.o, %4
  br i1 %.not10.i, label %_ZN11tbv_manager3setER3tbvmjj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.p = sub i32 %i.o, %4
  %wide.trip.count.i = zext i32 %i.p to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.q = trunc nuw i64 %indvars.iv.i to i32
  %i.r = add i32 %4, %i.q
  %i.s = shl nuw i64 1, %indvars.iv.i
  %i.t = and i64 %i.s, %i.n
  %.not.i = icmp eq i64 %i.t, 0
  %i.u = select i1 %.not.i, i32 1, i32 2          ; 2 uses
  %5 = shl i32 %i.r, 1                            ; 2 uses
  %i.v = shl nuw i32 %i.u, 30
  %sext.i.i = ashr i32 %i.v, 31
  %i.w = lshr i32 %5, 5
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !22   ; 3 uses
  %i.aa = xor i32 %sext.i.i, %i.z
  %i.ab = and i32 %5, 30                          ; 2 uses
  %i.ac = shl nuw nsw i32 1, %i.ab
  %i.ad = and i32 %i.aa, %i.ac
  %i.ae = and i32 %i.u, 1
  %.neg.i.i6.i.i = sub nsw i32 0, %i.ae
  %i.af = xor i32 %i.z, %.neg.i.i6.i.i
  %i.ag = shl nuw i32 2, %i.ab
  %i.ah = and i32 %i.af, %i.ag
  %i.ai = or disjoint i32 %i.ad, %i.ah
  %i.aj = xor i32 %i.ai, %i.z
  store i32 %i.aj, ptr %i.y, align 4, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11tbv_manager3setER3tbvmjj.exit, label %.lr.ph.i, !llvm.loop !1

_ZNK8rational9is_uint64Ev.exit:                   ; preds = %_ZNK8rational9is_uint64Ev.exit.preheader16, %_ZNK8rational9is_uint64Ev.exit
  %.015 = phi i32 [ %i.bd, %_ZNK8rational9is_uint64Ev.exit ], [ 0, %_ZNK8rational9is_uint64Ev.exit.preheader16 ] ; 3 uses
  %i.ak = add i32 %.015, %4
  %i.al = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !27
  %i.am = tail call noundef zeroext i1 @_ZN11mpz_managerILb1EE7get_bitERK3mpzj(ptr noundef nonnull align 8 dereferenceable(728) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.015)
  %i.an = select i1 %i.am, i32 2, i32 1           ; 2 uses
  %6 = shl i32 %i.ak, 1                           ; 2 uses
  %i.ao = shl nuw i32 %i.an, 30
  %sext.i = ashr i32 %i.ao, 31
  %i.ap = lshr i32 %6, 5
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !22 ; 3 uses
  %i.at = xor i32 %sext.i, %i.as
  %i.au = and i32 %6, 30                          ; 2 uses
  %i.av = shl nuw nsw i32 1, %i.au
  %i.aw = and i32 %i.at, %i.av
  %i.ax = and i32 %i.an, 1
  %.neg.i.i6.i = sub nsw i32 0, %i.ax
  %i.ay = xor i32 %i.as, %.neg.i.i6.i
  %i.az = shl nuw i32 2, %i.au
  %i.ba = and i32 %i.ay, %i.az
  %i.bb = or disjoint i32 %i.aw, %i.ba
  %i.bc = xor i32 %i.bb, %i.as
  store i32 %i.bc, ptr %i.ar, align 4, !tbaa !22
  %i.bd = add nuw i32 %.015, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, %i.j
  br i1 %exitcond.not, label %_ZN11tbv_manager3setER3tbvmjj.exit, label %_ZNK8rational9is_uint64Ev.exit, !llvm.loop !44

_ZN11tbv_manager3setER3tbvmjj.exit:               ; preds = %_ZNK8rational9is_uint64Ev.exit, %.lr.ph.i, %_ZNK8rational9is_uint64Ev.exit.preheader, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11tbv_manager3setER3tbvRKS0_jj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = shl i32 %3, 1
  %i.b = or disjoint i32 %i.a, 1
  %i.c = shl i32 %4, 1
  tail call void @_ZN16fixed_bit_vector3setERKS_jj(ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %i.b, i32 noundef %i.c)
  ret void
}

declare void @_ZN16fixed_bit_vector3setERKS_jj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11tbv_manager8allocateERK8rational(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.rational, align 8            ; 13 uses
  %3 = alloca %class.rational, align 8            ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, 1
  %i.e = icmp eq i8 %i.d, 0
  %i.f = load i32, ptr %i.a, align 8
  %i.g = icmp eq i32 %i.f, 1
  %i.h = select i1 %i.e, i1 %i.g, i1 false
  br i1 %i.h, label %_ZNK8rational9is_uint64Ev.exit, label %_ZNK8rational9is_uint64Ev.exit.thread

_ZNK8rational9is_uint64Ev.exit:                   ; preds = %bb.a
  %i.i = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !27
  %i.j = tail call noundef zeroext i1 @_ZNK11mpz_managerILb1EE9is_uint64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br i1 %i.j, label %bb.b, label %_ZNK8rational9is_uint64Ev.exit.thread

bb.b:                                             ; preds = %_ZNK8rational9is_uint64Ev.exit
  %i.k = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !27
  %i.l = tail call noundef i64 @_ZNK11mpz_managerILb1EE10get_uint64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.m = tail call noundef ptr @_ZN24fixed_bit_vector_manager8allocateEv(ptr noundef nonnull align 8 dereferenceable(552) %0) ; 5 uses
  %i.n = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK24fixed_bit_vector_manager5fill0ER16fixed_bit_vector(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.m) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.p = load i32, ptr %i.o, align 4, !tbaa !20
  %i.q = zext i32 %i.p to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 dereferenceable(4) %i.m, i8 -86, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.s = load i32, ptr %i.r, align 8, !tbaa !21
  %i.t = lshr i32 %i.s, 1                         ; 2 uses
  %.not12.i = icmp eq i32 %i.t, 0
  br i1 %.not12.i, label %_ZN11tbv_manager8allocateEm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.t, i32 64)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %select.unfold.i, %.lr.ph.preheader.i
  %.in.i = phi i32 [ %i.u, %select.unfold.i ], [ %spec.select.i, %.lr.ph.preheader.i ]
  %i.u = add nsw i32 %.in.i, -1                   ; 5 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw i64 1, %i.v
  %i.x = and i64 %i.w, %i.l
  %.not8.i = icmp eq i64 %i.x, 0
  %i.y = shl nuw nsw i32 %i.u, 1                  ; 2 uses
  %i.z = lshr i32 %i.u, 4
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !22 ; 5 uses
  br i1 %.not8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ad = xor i32 %i.ac, -1
  %i.ae = and i32 %i.y, 30                        ; 2 uses
  %i.af = shl nuw nsw i32 1, %i.ae
  %i.ag = and i32 %i.af, %i.ad
  br label %select.unfold.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.ah = and i32 %i.y, 30                        ; 2 uses
  %i.ai = shl nuw nsw i32 1, %i.ah
  %i.aj = and i32 %i.ai, %i.ac
  %i.ak = xor i32 %i.ac, -1
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.d, %bb.c
  %.sink32 = phi i32 [ %i.ah, %bb.d ], [ %i.ae, %bb.c ]
  %.sink31 = phi i32 [ %i.ak, %bb.d ], [ %i.ac, %bb.c ]
  %.sink = phi i32 [ %i.aj, %bb.d ], [ %i.ag, %bb.c ]
  %i.al = shl nuw i32 2, %.sink32
  %i.am = and i32 %i.al, %.sink31
  %i.an = or disjoint i32 %.sink, %i.am
  %i.ao = xor i32 %i.an, %i.ac
  store i32 %i.ao, ptr %i.ab, align 4, !tbaa !22
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZN11tbv_manager8allocateEm.exit, label %.lr.ph.i, !llvm.loop !0

_ZNK8rational9is_uint64Ev.exit.thread:            ; preds = %bb.a, %_ZNK8rational9is_uint64Ev.exit
  %i.ap = tail call noundef ptr @_ZN24fixed_bit_vector_manager8allocateEv(ptr noundef nonnull align 8 dereferenceable(552) %0) ; 5 uses
  %i.aq = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK24fixed_bit_vector_manager5fill0ER16fixed_bit_vector(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ap) ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !20
  %i.at = zext i32 %i.as to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 dereferenceable(4) %i.ap, i8 -86, i64 %i.at, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.av = load i32, ptr %i.au, align 8, !tbaa !21
  %i.aw = lshr i32 %i.av, 1                       ; 2 uses
  %.not22 = icmp eq i32 %i.aw, 0
  br i1 %.not22, label %_ZN11tbv_manager8allocateEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK8rational9is_uint64Ev.exit.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.k
  %.01523 = phi i32 [ %i.aw, %.lr.ph ], [ %i.bd, %bb.k ]
  %i.bd = add nsw i32 %.01523, -1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN8rational12power_of_twoEj(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %3, i32 noundef %i.bd)
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  store i32 0, ptr %2, align 8, !tbaa !51, !alias.scope !48
  %i.be = load i8, ptr %i.ax, align 4, !alias.scope !48
  %i.bf = and i8 %i.be, -4
  store i8 %i.bf, ptr %i.ax, align 4, !alias.scope !48
  store ptr null, ptr %i.ay, align 8, !tbaa !52, !alias.scope !48
  store i32 1, ptr %i.az, align 8, !tbaa !51, !alias.scope !48
  %i.bg = load i8, ptr %i.ba, align 4, !alias.scope !48
  %i.bh = and i8 %i.bg, -4
  store i8 %i.bh, ptr %i.ba, align 4, !alias.scope !48
  store ptr null, ptr %i.bb, align 8, !tbaa !52, !alias.scope !48
  %i.bi = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !27, !noalias !48 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE11bitwise_andERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i unwind label %.body

.noexc.i:                                         ; preds = %bb.e
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %bb.f unwind label %.body

.body:                                            ; preds = %.noexc.i, %bb.e
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #22
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.bj

bb.f:                                             ; preds = %.noexc.i
  store i32 1, ptr %i.az, align 8, !tbaa !51, !alias.scope !48
  %i.bk = load i8, ptr %i.ba, align 4, !alias.scope !48
  %i.bl = and i8 %i.bk, -2
  store i8 %i.bl, ptr %i.ba, align 4, !alias.scope !48
  %i.bm = load i32, ptr %2, align 8, !tbaa !51
  %i.bn = icmp eq i32 %i.bm, 0
  %i.bo = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !27 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i18 unwind label %bb.g

.noexc.i18:                                       ; preds = %bb.f
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %.noexc.i18, %bb.f
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #21
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i18
  %i.br = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !27 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.br, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i19 unwind label %bb.h

.noexc.i19:                                       ; preds = %_ZN8rationalD2Ev.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bc)
          to label %_ZN8rationalD2Ev.exit20 unwind label %bb.h

bb.h:                                             ; preds = %.noexc.i19, %_ZN8rationalD2Ev.exit
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
end_hunk_0
