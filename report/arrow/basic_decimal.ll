Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/basic_decimal?download=true
inline.NumInlined: 502
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5arrow15BasicDecimal256lSEj:bb.a
  %.sink = phi i64 [ %i.ae, %.lr.ph41.preheader ], [ 32, %bb.b ]
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
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !noalias !35 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !35 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !35 ; 2 uses
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
  %.sroa.0.0.i = phi i64 [ %i.g, %bb.b ], [ %.sroa.0.0.copyload.i, %bb.a ] ; 2 uses
  %.sroa.0.0.copyload.i3 = load i64, ptr %1, align 8, !noalias !36 ; 3 uses
  %.sroa.6.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload.i5 = load i64, ptr %.sroa.6.0..sroa_idx.i4, align 8, !noalias !36 ; 2 uses
  %.sroa.8.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload.i7 = load i64, ptr %.sroa.8.0..sroa_idx.i6, align 8, !noalias !36 ; 2 uses
  %i.t = icmp slt i64 %i.d, 0
  br i1 %i.t, label %bb.c, label %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit17

bb.c:                                             ; preds = %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit
  %i.u = sub i64 0, %.sroa.0.0.copyload.i3
  %i.v = icmp eq i64 %.sroa.0.0.copyload.i3, 0
  %i.w = zext i1 %i.v to i64                      ; 2 uses
  %i.x = xor i64 %.sroa.6.0.copyload.i5, -1
  %i.y = add i64 %i.w, %i.x                       ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 %i.w, i64 0         ; 2 uses
  %i.ab = xor i64 %.sroa.8.0.copyload.i7, -1
  %i.ac = add i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = select i1 %i.ad, i64 %i.aa, i64 0
  %i.af = xor i64 %i.d, -1
  %i.ag = add nuw i64 %i.ae, %i.af
  br label %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit17

_ZN5arrow15BasicDecimal2563AbsERKS0_.exit17:      ; preds = %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit, %bb.c
  %.sroa.10.0.i10 = phi i64 [ %i.ag, %bb.c ], [ %i.d, %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit ]
  %.sroa.8.0.i11 = phi i64 [ %i.ac, %bb.c ], [ %.sroa.8.0.copyload.i7, %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit ]
  %.sroa.6.0.i12 = phi i64 [ %i.y, %bb.c ], [ %.sroa.6.0.copyload.i5, %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit ]
  %.sroa.0.0.i13 = phi i64 [ %i.u, %bb.c ], [ %.sroa.0.0.copyload.i3, %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit ]
  %i.ah = zext i64 %.sroa.0.0.i to i128           ; 3 uses
  %i.ai = zext i64 %.sroa.0.0.i13 to i128         ; 4 uses
  %i.aj = mul nuw i128 %i.ai, %i.ah               ; 2 uses
  %i.ak = trunc i128 %i.aj to i64                 ; 3 uses
  %i.al = lshr i128 %i.aj, 64
  %i.am = zext i64 %.sroa.6.0.i to i128           ; 3 uses
  %i.an = mul nuw i128 %i.ai, %i.am
  %i.ao = add nuw i128 %i.al, %i.an               ; 2 uses
  %i.ap = lshr i128 %i.ao, 64
  %i.aq = zext i64 %.sroa.8.0.i to i128           ; 2 uses
  %i.ar = mul nuw i128 %i.ai, %i.aq
  %i.as = add nuw i128 %i.ap, %i.ar               ; 2 uses
  %i.at = lshr i128 %i.as, 64
  %2 = zext i64 %.sroa.10.0.i to i128
  %3 = mul nuw nsw i128 %i.ai, %2
  %i.au = zext i64 %.sroa.6.0.i12 to i128         ; 3 uses
  %i.av = mul nuw i128 %i.au, %i.ah
  %i.aw = and i128 %i.ao, 18446744073709551615
  %i.ax = add nuw i128 %i.aw, %i.av               ; 2 uses
  %i.ay = trunc i128 %i.ax to i64                 ; 2 uses
  %i.az = lshr i128 %i.ax, 64
  %i.ba = mul nuw i128 %i.au, %i.am
  %i.bb = and i128 %i.as, 18446744073709551615
  %i.bc = add nuw i128 %i.bb, %i.ba
  %i.bd = add nuw i128 %i.bc, %i.az               ; 2 uses
  %i.be = lshr i128 %i.bd, 64
  %4 = mul nuw i128 %i.au, %i.aq
  %i.bf = zext i64 %.sroa.8.0.i11 to i128         ; 2 uses
  %i.bg = mul nuw i128 %i.bf, %i.ah
  %i.bh = and i128 %i.bd, 18446744073709551615
  %i.bi = add nuw i128 %i.bh, %i.bg               ; 2 uses
  %i.bj = trunc i128 %i.bi to i64                 ; 2 uses
  %i.bk = lshr i128 %i.bi, 64
  %5 = mul nuw i128 %i.bf, %i.am
  %6 = add i128 %4, %5
  %7 = add i128 %6, %3
  %8 = add i128 %7, %i.at
  %9 = add i128 %8, %i.be
  %10 = add i128 %9, %i.bk
  %11 = trunc i128 %10 to i64
  %12 = mul i64 %.sroa.10.0.i10, %.sroa.0.0.i
  %i.bl = add i64 %12, %11                        ; 2 uses
  store i64 %i.ak, ptr %0, align 8
  store i64 %i.ay, ptr %.sroa.6.0..sroa_idx.i, align 8
  store i64 %i.bj, ptr %.sroa.8.0..sroa_idx.i, align 8
  store i64 %i.bl, ptr %i.a, align 8, !tbaa !7
  br i1 %isneg, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit17
  %i.bm = sub i64 0, %i.ak
  store i64 %i.bm, ptr %0, align 8, !tbaa !9
  %i.bn = icmp eq i64 %i.ak, 0
  %i.bo = zext i1 %i.bn to i64                    ; 2 uses
  %i.bp = xor i64 %i.ay, -1
  %i.bq = add i64 %i.bp, %i.bo                    ; 2 uses
  store i64 %i.bq, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !9
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = select i1 %i.br, i64 %i.bo, i64 0       ; 2 uses
  %i.bt = xor i64 %i.bj, -1
  %i.bu = add i64 %i.bs, %i.bt                    ; 2 uses
  store i64 %i.bu, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !9
  %i.bv = icmp eq i64 %i.bu, 0
  %i.bw = select i1 %i.bv, i64 %i.bs, i64 0
  %i.bx = xor i64 %i.bl, -1
  %i.by = add i64 %i.bw, %i.bx
  store i64 %i.by, ptr %i.a, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit17
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i32 0, 3) i32 @_ZNK5arrow15BasicDecimal2566DivideERKS0_PS0_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::array.2", align 8     ; 13 uses
  %5 = alloca %"struct.std::array.2", align 8     ; 13 uses
  %6 = alloca %"struct.std::array.2", align 8     ; 13 uses
  %i.a = alloca [65 x i32], align 16              ; 8 uses
  %7 = alloca %"class.arrow::BasicDecimal256", align 8 ; 13 uses
  %8 = alloca %"class.arrow::BasicDecimal256", align 8 ; 13 uses
  %i.b = alloca [65 x i32], align 16              ; 23 uses
  %i.c = alloca [64 x i32], align 16              ; 22 uses
  %i.d = alloca [64 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 0, ptr %i.b, align 16, !tbaa !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9    ; 3 uses
  %i.h = icmp slt i64 %i.g, 0                     ; 5 uses
  %.035.i.i.i.i.lcssa.sroa.gep180 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.035.i.i.i.i.lcssa.sroa.gep181 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.035.i.i.i.i.lcssa.sroa.gep182 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.035.i.i.i.lcssa.sroa.gep183 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.035.i.i.i.lcssa.sroa.gep184 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.035.i.i.i.lcssa.sroa.gep185 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.035.i.i144.i.lcssa.sroa.gep186 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.035.i.i144.i.lcssa.sroa.gep187 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.035.i.i144.i.lcssa.sroa.gep188 = getelementptr inbounds nuw i8, ptr %4, i64 24
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %8, align 8, !tbaa !9      ; 2 uses
  %i.j = sub i64 0, %i.i
  store i64 %i.j, ptr %8, align 8, !tbaa !9
  %i.k = icmp eq i64 %i.i, 0
  %i.l = zext i1 %i.k to i64                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9
  %i.o = xor i64 %i.n, -1
  %i.p = add i64 %i.l, %i.o                       ; 2 uses
  store i64 %i.p, ptr %i.m, align 8, !tbaa !9
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 %i.l, i64 0          ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !9
  %i.u = xor i64 %i.t, -1
  %i.v = add i64 %i.r, %i.u                       ; 2 uses
  store i64 %i.v, ptr %i.s, align 8, !tbaa !9
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i64 %i.r, i64 0
  %i.y = xor i64 %i.g, -1
  %i.z = add nuw i64 %i.x, %i.y                   ; 2 uses
  store i64 %i.z, ptr %i.f, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = phi i64 [ %i.z, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.01827.lcssa.i.i.i = phi i64 [ 3, %bb.c ], [ 2, %bb.e ], [ 1, %bb.f ] ; 2 uses
  %.lcssa30.i.i.i = phi i64 [ %i.aa, %bb.c ], [ %i.ad, %bb.e ], [ %i.af, %bb.f ] ; 2 uses
  %.not21.i.i.i = icmp ugt i64 %.lcssa30.i.i.i, 4294967295
  br i1 %.not21.i.i.i, label %.lr.ph.preheader.i.i.i, label %.loopexit.i.i.i

.thread.i.i:                                      ; preds = %bb.g
  %.not21.i6.i.i = icmp ugt i64 %i.ag, 4294967295
  br i1 %.not21.i6.i.i, label %.lr.ph.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.thread.i.i
  %i.ab = trunc nuw i64 %i.ag to i32
  store i32 %i.ab, ptr %i.e, align 4, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !9  ; 2 uses
  %.not.1.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.1.i.i.i, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !9  ; 2 uses
  %.not.2.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.2.i.i.i, label %bb.g, label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.ag = load i64, ptr %8, align 8, !tbaa !9     ; 3 uses
  %.not.3.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.3.i.i.i, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i, label %.thread.i.i

.loopexit.i.i.i:                                  ; preds = %bb.d
  %i.ah = trunc nuw i64 %.lcssa30.i.i.i to i32
  store i32 %i.ah, ptr %i.e, align 4, !tbaa !6
  %i.ai = add nsw i64 %.01827.lcssa.i.i.i, -1
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.loopexit.i.i.i, %.thread.i.i, %bb.d
  %.140.i.i.i = phi i64 [ %i.ai, %.loopexit.i.i.i ], [ %.01827.lcssa.i.i.i, %bb.d ], [ 0, %.thread.i.i ] ; 4 uses
  %.01939.i.i.i = phi i64 [ 1, %.loopexit.i.i.i ], [ 0, %bb.d ], [ 0, %.thread.i.i ] ; 3 uses
  %i.aj = add nsw i64 %.140.i.i.i, 1              ; 3 uses
  %min.iters.check = icmp ult i64 %i.aj, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %i.aj, -4                      ; 4 uses
  %i.ak = sub nsw i64 %.140.i.i.i, %n.vec
  %i.al = shl nsw i64 %n.vec, 1
  %i.am = or disjoint i64 %.01939.i.i.i, %i.al    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = sub i64 %.140.i.i.i, %index
  %i.ao = shl nuw i64 %index, 1
  %i.ap = or disjoint i64 %.01939.i.i.i, %i.ao    ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.an ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -24
  %wide.load = load <2 x i64>, ptr %i.ar, align 8, !tbaa !9 ; 2 uses
  %wide.load84 = load <2 x i64>, ptr %i.as, align 8, !tbaa !9 ; 2 uses
  %i.at = lshr <2 x i64> %wide.load, splat (i64 32)
  %i.au = shufflevector <2 x i64> %i.at, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.av = lshr <2 x i64> %wide.load84, splat (i64 32)
  %i.aw = shufflevector <2 x i64> %i.av, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ap
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ap
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = shufflevector <2 x i64> %i.au, <2 x i64> %wide.load, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  %interleaved.vec = trunc <4 x i64> %i.ba to <4 x i32>
  store <4 x i32> %interleaved.vec, ptr %i.ax, align 4, !tbaa !6
  %i.bb = shufflevector <2 x i64> %i.aw, <2 x i64> %wide.load84, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  %interleaved.vec86 = trunc <4 x i64> %i.bb to <4 x i32>
  store <4 x i32> %interleaved.vec86, ptr %i.az, align 4, !tbaa !6
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %.029.i.i.i.ph = phi i64 [ %.140.i.i.i, %.lr.ph.preheader.i.i.i ], [ %i.ak, %middle.block ]
  %.12028.i.i.i.ph = phi i64 [ %.01939.i.i.i, %.lr.ph.preheader.i.i.i ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.029.i.i.i = phi i64 [ %i.bl, %.lr.ph.i.i.i ], [ %.029.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.12028.i.i.i = phi i64 [ %i.bj, %.lr.ph.i.i.i ], [ %.12028.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.029.i.i.i
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !9  ; 2 uses
  %i.bf = lshr i64 %i.be, 32
  %i.bg = trunc nuw i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.12028.i.i.i ; 2 uses
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !6
  %i.bi = trunc i64 %i.be to i32
  %i.bj = add nuw nsw i64 %.12028.i.i.i, 2        ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !6
  %i.bl = add nsw i64 %.029.i.i.i, -1
  %.not44.i.i.i = icmp eq i64 %.029.i.i.i, 0
  br i1 %.not44.i.i.i, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i, label %.lr.ph.i.i.i, !llvm.loop !38

_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.g, %.loopexit.i.thread.i.i
  %.120.lcssa.i.i.i = phi i64 [ 1, %.loopexit.i.thread.i.i ], [ 0, %bb.g ], [ %i.am, %middle.block ], [ %i.bj, %.lr.ph.i.i.i ] ; 27 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
end_hunk_0
