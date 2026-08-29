Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/basic_decimal?download=true
inline.NumInlined: 502
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5arrowltERKNS_15BasicDecimal256ES2_:bb.a
  %.not3 = icmp eq i64 %i.l, %i.n
  br i1 %.not3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp ult i64 %i.l, %i.n
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = load i64, ptr %0, align 8, !tbaa !9
  %i.q = load i64, ptr %1, align 8, !tbaa !9
  %i.r = icmp ult i64 %i.p, %i.q
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %i.s = phi i1 [ %i.e, %bb.b ], [ %i.j, %bb.d ], [ %i.o, %bb.f ], [ %i.r, %bb.g ]
  ret i1 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrow15BasicDecimal2563AbsERKS0_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::BasicDecimal256") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 3 uses
  %i.a = icmp slt i64 %.sroa.10.0.copyload, 0
  br i1 %i.a, label %bb.b, label %_ZN5arrow15BasicDecimal2563AbsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = sub i64 0, %.sroa.0.0.copyload
  %i.c = icmp eq i64 %.sroa.0.0.copyload, 0
  %i.d = zext i1 %i.c to i64                      ; 2 uses
  %i.e = xor i64 %.sroa.6.0.copyload, -1
  %i.f = add i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = select i1 %i.g, i64 %i.d, i64 0          ; 2 uses
  %i.i = xor i64 %.sroa.8.0.copyload, -1
  %i.j = add i64 %i.h, %i.i                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 %i.h, i64 0
  %i.m = xor i64 %.sroa.10.0.copyload, -1
  %i.n = add nuw i64 %i.l, %i.m
  br label %_ZN5arrow15BasicDecimal2563AbsEv.exit

_ZN5arrow15BasicDecimal2563AbsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.10.0 = phi i64 [ %i.n, %bb.b ], [ %.sroa.10.0.copyload, %bb.a ]
  %.sroa.8.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.8.0.copyload, %bb.a ]
  %.sroa.6.0 = phi i64 [ %i.f, %bb.b ], [ %.sroa.6.0.copyload, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.b, %bb.b ], [ %.sroa.0.0.copyload, %bb.a ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx2, align 8
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx4, align 8
  %.sroa.10.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx6, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256pLERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !9
  %i.b = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.c = add i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp ult i64 %i.c, %i.b
  %.2 = zext i1 %i.d to i64
  store i64 %i.c, ptr %0, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9    ; 2 uses
  %i.g = add i64 %i.f, %.2                        ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.f                  ; 2 uses
  %spec.select.1 = zext i1 %i.h to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9    ; 2 uses
  %i.k = add i64 %i.g, %i.j                       ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  %i.m = select i1 %i.h, i64 2, i64 1
  %.2.1 = select i1 %i.l, i64 %i.m, i64 %spec.select.1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !9    ; 2 uses
  %i.p = add i64 %i.o, %.2.1                      ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o                  ; 2 uses
  %spec.select.2 = zext i1 %i.q to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !9    ; 2 uses
  %i.t = add i64 %i.p, %i.s                       ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = select i1 %i.q, i64 2, i64 1
  %.2.2 = select i1 %i.u, i64 %i.v, i64 %spec.select.2
  store i64 %i.t, ptr %i.r, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !9
  %i.y = add i64 %i.x, %.2.2
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !9
  %i.ab = add i64 %i.y, %i.aa
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !9
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256mIERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !noalias !28 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !28
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !28
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !28
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %i.b = zext i1 %i.a to i64                      ; 2 uses
  %i.c = xor i64 %.sroa.6.0.copyload.i, -1
  %i.d = add i64 %i.b, %i.c                       ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.e, i64 %i.b, i64 0          ; 2 uses
  %i.g = xor i64 %.sroa.8.0.copyload.i, -1
  %i.h = add i64 %i.f, %i.g                       ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = select i1 %i.i, i64 %i.f, i64 0
  %i.k = xor i64 %.sroa.10.0.copyload.i, -1
  %i.l = add i64 %i.j, %i.k
  %i.m = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.n = sub i64 %i.m, %.sroa.0.0.copyload.i      ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %.2.i = zext i1 %i.o to i64
  store i64 %i.n, ptr %0, align 8, !tbaa !9
  %i.p = add i64 %i.d, %.2.i                      ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.d                  ; 2 uses
  %spec.select.1.i = zext i1 %i.q to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !9    ; 2 uses
  %i.t = add i64 %i.p, %i.s                       ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = select i1 %i.q, i64 2, i64 1
  %.2.1.i = select i1 %i.u, i64 %i.v, i64 %spec.select.1.i
  store i64 %i.t, ptr %i.r, align 8, !tbaa !9
  %i.w = add i64 %.2.1.i, %i.h                    ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.h                  ; 2 uses
  %spec.select.2.i = zext i1 %i.x to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !9    ; 2 uses
  %i.aa = add i64 %i.w, %i.z                      ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = select i1 %i.x, i64 2, i64 1
  %.2.2.i = select i1 %i.ab, i64 %i.ac, i64 %spec.select.2.i
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !9
  %i.af = add i64 %i.l, %i.ae
  %i.ag = add i64 %i.af, %.2.2.i
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !9
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrowngERKNS_15BasicDecimal256E(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::BasicDecimal256") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8
  %i.a = sub i64 0, %.sroa.0.0.copyload
  %i.b = icmp eq i64 %.sroa.0.0.copyload, 0
  %i.c = zext i1 %i.b to i64                      ; 2 uses
  %i.d = xor i64 %.sroa.6.0.copyload, -1
  %i.e = add i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = select i1 %i.f, i64 %i.c, i64 0          ; 2 uses
  %i.h = xor i64 %.sroa.8.0.copyload, -1
  %i.i = add i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = select i1 %i.j, i64 %i.g, i64 0
  %i.l = xor i64 %.sroa.10.0.copyload, -1
  %i.m = add i64 %i.k, %i.l
  store i64 %i.a, ptr %0, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %.sroa.6.0..sroa_idx2, align 8
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %.sroa.8.0..sroa_idx4, align 8
  %.sroa.10.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.m, ptr %.sroa.10.0..sroa_idx6, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256lSEj(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 6                           ; 6 uses
  %i.c = icmp ugt i32 %1, 255
  br i1 %i.c, label %.loopexit.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = and i32 %1, 63                           ; 3 uses
  %i.e = zext nneg i32 %i.d to i64                ; 4 uses
  %.not30.not = icmp eq i32 %i.d, 0
  %i.f = sub nuw nsw i32 64, %i.d
  %i.g = zext nneg i32 %i.f to i64                ; 3 uses
  br i1 %.not30.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.neg = xor i32 %i.b, -1
  %i.h = zext nneg i32 %i.b to i64                ; 3 uses
  %i.i = sext i32 %.neg to i64
  %invariant.gep = getelementptr [8 x i8], ptr %0, i64 %i.i ; 3 uses
  %i.j = sub nuw nsw i64 3, %i.h
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = shl i64 %i.l, %i.e                       ; 2 uses
  store i64 %i.n, ptr %i.m, align 8, !tbaa !9
  %.not31.not52 = icmp ult i32 %1, 192
  br i1 %.not31.not52, label %.lr.ph.split, label %.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.o = zext nneg i32 %i.b to i64                ; 3 uses
  %i.p = sub nuw nsw i64 3, %i.o
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %i.s, align 8, !tbaa !9
  %.not.us.not = icmp ult i32 %1, 192
  br i1 %.not.us.not, label %.lr.ph.split.us.1, label %.preheader

.lr.ph.split.us.1:                                ; preds = %.lr.ph.split.us.preheader
  %i.t = sub nuw nsw i64 2, %i.o
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %i.w, align 8, !tbaa !9
  %.not.us.not.1 = icmp ult i32 %1, 128
  br i1 %.not.us.not.1, label %.lr.ph.split.us.2, label %.preheader

.lr.ph.split.us.2:                                ; preds = %.lr.ph.split.us.1
  %i.x = sub nuw nsw i64 1, %i.o
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !9
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.split, %.lr.ph.split.2, %.lr.ph.split.us.preheader, %.lr.ph.split.us.1, %.lr.ph.split.us.2, %.lr.ph.split.preheader
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %.lr.ph.split.1, %.preheader
  %2 = add nsw i32 %i.b, -1
  %3 = zext nneg i32 %2 to i64
  %4 = shl nuw nsw i64 %3, 3
  %5 = add nuw nsw i64 %4, 8
  br label %.loopexit.sink.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader
  %gep = getelementptr i8, ptr %invariant.gep, i64 24
  %i.ab = load i64, ptr %gep, align 8, !tbaa !9
  %i.ac = lshr i64 %i.ab, %i.g
  %i.ad = or i64 %i.ac, %i.n
  store i64 %i.ad, ptr %i.m, align 8, !tbaa !9
  %i.ae = sub nuw nsw i64 2, %i.h
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = shl i64 %i.ag, %i.e                     ; 2 uses
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !9
  %.not31.not = icmp ult i32 %1, 128
  br i1 %.not31.not, label %.lr.ph.split.1, label %.preheader

.lr.ph.split.1:                                   ; preds = %.lr.ph.split
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 16
  %i.aj = load i64, ptr %gep.1, align 8, !tbaa !9
  %i.ak = lshr i64 %i.aj, %i.g
  %i.al = or i64 %i.ak, %i.ai
  store i64 %i.al, ptr %i.ah, align 8, !tbaa !9
  %i.am = sub nuw nsw i64 1, %i.h
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = shl i64 %i.ao, %i.e                     ; 2 uses
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !9
  %cond = icmp eq i32 %i.b, 0
  br i1 %cond, label %.lr.ph.split.2, label %.lr.ph41.preheader

.lr.ph.split.2:                                   ; preds = %.lr.ph.split.1
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 8
  %i.ar = load i64, ptr %gep.2, align 8, !tbaa !9
  %i.as = lshr i64 %i.ar, %i.g
  %i.at = or i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !9
  %i.au = load i64, ptr %0, align 8, !tbaa !9
  %i.av = shl i64 %i.au, %i.e
  store i64 %i.av, ptr %0, align 8, !tbaa !9
  br label %.preheader

.loopexit.sink.split:                             ; preds = %bb.b, %.lr.ph41.preheader
  %.sink = phi i64 [ %5, %.lr.ph41.preheader ], [ 32, %bb.b ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %0, i8 0, i64 %.sink, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %.preheader, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256rSEj(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %"struct.std::array.2", align 8     ; 10 uses
  %3 = alloca %"struct.std::array.2", align 8     ; 8 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9
  %i.d = ashr i64 %i.c, 63                        ; 12 uses
  %i.e = lshr i32 %1, 6                           ; 3 uses
  %i.f = icmp ugt i32 %1, 255
  br i1 %i.f, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  store i64 %i.d, ptr %0, align 8, !tbaa !9
  %.06.i.i.i.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %.06.i.i.i.i.ptr.1.i, align 8, !tbaa !9
  %.06.i.i.i.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.06.i.i.i.i.ptr.2.i, align 8, !tbaa !9
  store i64 %i.d, ptr %i.b, align 8, !tbaa !9
  br label %bb.l

.lr.ph:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  store i64 %i.d, ptr %2, align 8
  %.06.i.i.i.i.ptr.1.i25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %.06.i.i.i.i.ptr.1.i25, align 8
  %.06.i.i.i.i.ptr.2.i26 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.d, ptr %.06.i.i.i.i.ptr.2.i26, align 8
  %.06.i.i.i.i.ptr.3.i27 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.d, ptr %.06.i.i.i.i.ptr.3.i27, align 8
  %i.g = and i32 %1, 63                           ; 3 uses
  %i.h = zext nneg i32 %i.g to i64                ; 4 uses
  %.not = icmp eq i32 %i.g, 0
  %i.i = sub nuw nsw i32 64, %i.g
  %i.j = zext nneg i32 %i.i to i64                ; 4 uses
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.k = lshr i32 %1, 6                           ; 4 uses
  %i.l = zext nneg i32 %i.k to i64                ; 5 uses
  %i.m = zext nneg i32 %i.e to i64                ; 4 uses
  %i.n = or disjoint i32 %i.k, 4
  %i.o = sub nuw nsw i32 %i.n, %i.e
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.l ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !9
  %i.r = lshr i64 %i.q, %i.h
  %i.s = sub nuw nsw i64 %i.l, %i.m
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.s
  %.not24 = icmp eq i32 %i.k, 3
  br i1 %.not24, label %bb.e, label %bb.d

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.u = lshr exact i32 %1, 3
  %i.v = zext nneg i32 %i.u to i64
  %scevgep = getelementptr i8, ptr %3, i64 %i.v
  %i.w = shl nuw nsw i32 %i.e, 3
  %narrow = sub nuw nsw i32 32, %i.w
  %i.x = zext nneg i32 %narrow to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %scevgep, i64 %i.x, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.g, %bb.i, %bb.k, %.lr.ph.split.us.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.l

bb.d:                                             ; preds = %.lr.ph.split.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.in.sroa.speculate.load. = load i64, ptr %i.y, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.preheader, %bb.d
  %.in.sroa.speculated = phi i64 [ %.in.sroa.speculate.load., %bb.d ], [ %i.d, %.lr.ph.split.preheader ]
  %i.z = shl i64 %.in.sroa.speculated, %i.j
  %i.aa = or i64 %i.z, %i.r
  store i64 %i.aa, ptr %i.t, align 8
  %indvars.iv.next = add nuw nsw i64 %i.l, 1      ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !9
  %i.ad = lshr i64 %i.ac, %i.h
  %i.ae = sub nuw nsw i64 %indvars.iv.next, %i.m
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ae
  %.not24.1 = icmp eq i64 %indvars.iv.next, 3
  br i1 %.not24.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.in.sroa.speculate.load..1 = load i64, ptr %i.ag, align 8, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.1
  %.in.sroa.speculated.1 = phi i64 [ %.in.sroa.speculate.load..1, %bb.f ], [ %i.d, %.lr.ph.split.1 ]
  %i.ah = shl i64 %.in.sroa.speculated.1, %i.j
  %i.ai = or i64 %i.ah, %i.ad
  store i64 %i.ai, ptr %i.af, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %i.l, 2    ; 4 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.split.2

.lr.ph.split.2:                                   ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.1 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !9
  %i.al = lshr i64 %i.ak, %i.h
  %i.am = sub nuw nsw i64 %indvars.iv.next.1, %i.m
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.am
  %.not24.2 = icmp eq i64 %indvars.iv.next.1, 3
  br i1 %.not24.2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.in.sroa.speculate.load..2 = load i64, ptr %i.ao, align 8, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.split.2
  %.in.sroa.speculated.2 = phi i64 [ %.in.sroa.speculate.load..2, %bb.h ], [ %i.d, %.lr.ph.split.2 ]
  %i.ap = shl i64 %.in.sroa.speculated.2, %i.j
  %i.aq = or i64 %i.ap, %i.al
  store i64 %i.aq, ptr %i.an, align 8
  %indvars.iv.next.2 = add nuw nsw i64 %i.l, 3    ; 3 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, %wide.trip.count
  br i1 %exitcond.not.2, label %._crit_edge, label %.lr.ph.split.3

.lr.ph.split.3:                                   ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.2 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !9
  %i.at = lshr i64 %i.as, %i.h
  %i.au = sub nuw nsw i64 %indvars.iv.next.2, %i.m
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.au
  %.not24.3 = icmp eq i32 %i.k, 0
  br i1 %.not24.3, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.in.sroa.speculate.load..3 = load i64, ptr %i.aw, align 8, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.split.3
  %.in.sroa.speculated.3 = phi i64 [ %.in.sroa.speculate.load..3, %bb.j ], [ %i.d, %.lr.ph.split.3 ]
  %i.ax = shl i64 %.in.sroa.speculated.3, %i.j
  %i.ay = or i64 %i.ax, %i.at
  store i64 %i.ay, ptr %i.av, align 8
  br label %._crit_edge

bb.l:                                             ; preds = %bb.c, %._crit_edge, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256mLERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 4 uses
  %i.e = xor i64 %i.d, %i.b
  %isneg = icmp sgt i64 %i.e, -1
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !noalias !31 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !31 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !31 ; 2 uses
  %i.f = icmp slt i64 %i.b, 0
  br i1 %i.f, label %bb.b, label %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 0, %.sroa.0.0.copyload.i
  %i.h = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %i.i = zext i1 %i.h to i64                      ; 2 uses
  %i.j = xor i64 %.sroa.6.0.copyload.i, -1
  %i.k = add i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 %i.i, i64 0          ; 2 uses
  %i.n = xor i64 %.sroa.8.0.copyload.i, -1
  %i.o = add i64 %i.m, %i.n                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  %i.q = select i1 %i.p, i64 %i.m, i64 0
  %i.r = xor i64 %i.b, -1
  %i.s = add nuw i64 %i.q, %i.r
  br label %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit

_ZN5arrow15BasicDecimal2563AbsERKS0_.exit:        ; preds = %bb.a, %bb.b
  %.sroa.10.0.i = phi i64 [ %i.s, %bb.b ], [ %i.b, %bb.a ]
  %.sroa.8.0.i = phi i64 [ %i.o, %bb.b ], [ %.sroa.8.0.copyload.i, %bb.a ]
  %.sroa.6.0.i = phi i64 [ %i.k, %bb.b ], [ %.sroa.6.0.copyload.i, %bb.a ]
end_hunk_0
