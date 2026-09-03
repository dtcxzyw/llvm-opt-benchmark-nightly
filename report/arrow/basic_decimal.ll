Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/basic_decimal?download=true
inline.NumInlined: 502
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN5arrow15BasicDecimal256rSEj:bb.a
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
  %i.au = zext i64 %.sroa.10.0.i to i128
  %i.av = mul nuw nsw i128 %i.ai, %i.au
  %i.aw = zext i64 %.sroa.6.0.i12 to i128         ; 3 uses
  %i.ax = mul nuw i128 %i.aw, %i.ah
  %i.ay = and i128 %i.ao, 18446744073709551615
  %i.az = add nuw i128 %i.ay, %i.ax               ; 2 uses
  %i.ba = trunc i128 %i.az to i64                 ; 2 uses
  %i.bb = lshr i128 %i.az, 64
  %i.bc = mul nuw i128 %i.aw, %i.am
  %i.bd = and i128 %i.as, 18446744073709551615
  %i.be = add nuw i128 %i.bd, %i.bc
  %i.bf = add nuw i128 %i.be, %i.bb               ; 2 uses
  %i.bg = lshr i128 %i.bf, 64
  %i.bh = mul nuw i128 %i.aw, %i.aq
  %i.bi = zext i64 %.sroa.8.0.i11 to i128         ; 2 uses
  %i.bj = mul nuw i128 %i.bi, %i.ah
  %i.bk = and i128 %i.bf, 18446744073709551615
  %i.bl = add nuw i128 %i.bk, %i.bj               ; 2 uses
  %i.bm = trunc i128 %i.bl to i64                 ; 2 uses
  %i.bn = lshr i128 %i.bl, 64
  %i.bo = mul nuw i128 %i.bi, %i.am
  %i.bp = add i128 %i.bh, %i.bo
  %i.bq = add i128 %i.bp, %i.av
  %i.br = add i128 %i.bq, %i.at
  %i.bs = add i128 %i.br, %i.bg
  %i.bt = add i128 %i.bs, %i.bn
  %i.bu = trunc i128 %i.bt to i64
  %i.bv = mul i64 %.sroa.10.0.i10, %.sroa.0.0.i
  %i.bw = add i64 %i.bv, %i.bu                    ; 2 uses
  store i64 %i.ak, ptr %0, align 8
  store i64 %i.ba, ptr %.sroa.6.0..sroa_idx.i, align 8
  store i64 %i.bm, ptr %.sroa.8.0..sroa_idx.i, align 8
  store i64 %i.bw, ptr %i.a, align 8, !tbaa !7
  br i1 %isneg, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit17
  %i.bx = sub i64 0, %i.ak
  store i64 %i.bx, ptr %0, align 8, !tbaa !9
  %i.by = icmp eq i64 %i.ak, 0
  %i.bz = zext i1 %i.by to i64                    ; 2 uses
  %i.ca = xor i64 %i.ba, -1
  %i.cb = add i64 %i.ca, %i.bz                    ; 2 uses
  store i64 %i.cb, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !9
  %i.cc = icmp eq i64 %i.cb, 0
  %i.cd = select i1 %i.cc, i64 %i.bz, i64 0       ; 2 uses
  %i.ce = xor i64 %i.bm, -1
  %i.cf = add i64 %i.cd, %i.ce                    ; 2 uses
  store i64 %i.cf, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !9
  %i.cg = icmp eq i64 %i.cf, 0
  %i.ch = select i1 %i.cg, i64 %i.cd, i64 0
  %i.ci = xor i64 %i.bw, -1
  %i.cj = add i64 %i.ch, %i.ci
  store i64 %i.cj, ptr %i.a, align 8, !tbaa !9
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
  %i.a = alloca [65 x i32], align 16              ; 10 uses
  %7 = alloca %"class.arrow::BasicDecimal256", align 8 ; 13 uses
  %8 = alloca %"class.arrow::BasicDecimal256", align 8 ; 13 uses
  %i.b = alloca [65 x i32], align 16              ; 25 uses
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
  %.120.lcssa.i.i.i = phi i64 [ 1, %.loopexit.i.thread.i.i ], [ 0, %bb.g ], [ %i.am, %middle.block ], [ %i.bj, %.lr.ph.i.i.i ] ; 29 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  %i.bm = add i64 %.120.lcssa.i.i.i, 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !9  ; 3 uses
  %i.bp = icmp slt i64 %i.bo, 0                   ; 3 uses
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i
  %i.bq = load i64, ptr %7, align 8, !tbaa !9     ; 2 uses
  %i.br = sub i64 0, %i.bq
  store i64 %i.br, ptr %7, align 8, !tbaa !9
  %i.bs = icmp eq i64 %i.bq, 0
  %i.bt = zext i1 %i.bs to i64                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !9
  %i.bw = xor i64 %i.bv, -1
  %i.bx = add i64 %i.bt, %i.bw                    ; 2 uses
  store i64 %i.bx, ptr %i.bu, align 8, !tbaa !9
  %i.by = icmp eq i64 %i.bx, 0
  %i.bz = select i1 %i.by, i64 %i.bt, i64 0       ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !9
  %i.cc = xor i64 %i.cb, -1
  %i.cd = add i64 %i.bz, %i.cc                    ; 2 uses
  store i64 %i.cd, ptr %i.ca, align 8, !tbaa !9
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = select i1 %i.ce, i64 %i.bz, i64 0
  %i.cg = xor i64 %i.bo, -1
  %i.ch = add nuw i64 %i.cf, %i.cg                ; 2 uses
  store i64 %i.ch, ptr %i.bn, align 8, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i
  %i.ci = phi i64 [ %i.ch, %bb.h ], [ %i.bo, %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i ] ; 2 uses
  %.not.i.i99.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i99.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.k, %bb.i
  %.01827.lcssa.i.i100.i = phi i64 [ 3, %bb.i ], [ 2, %bb.k ], [ 1, %bb.l ] ; 2 uses
  %.lcssa30.i.i101.i = phi i64 [ %i.ci, %bb.i ], [ %i.cl, %bb.k ], [ %i.cn, %bb.l ] ; 2 uses
  %.not21.i.i102.i = icmp ugt i64 %.lcssa30.i.i101.i, 4294967295
  br i1 %.not21.i.i102.i, label %.lr.ph.preheader.i.i104.i, label %.loopexit.i.i103.i

.thread.i115.i:                                   ; preds = %bb.m
  %.not21.i6.i116.i = icmp ugt i64 %i.co, 4294967295
  br i1 %.not21.i6.i116.i, label %.lr.ph.preheader.i.i104.i, label %.loopexit.i.thread.i117.i

.loopexit.i.thread.i117.i:                        ; preds = %.thread.i115.i
  %i.cj = trunc nuw i64 %i.co to i32
  store i32 %i.cj, ptr %i.c, align 16, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i

bb.k:                                             ; preds = %bb.i
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !9  ; 2 uses
  %.not.1.i.i112.i = icmp eq i64 %i.cl, 0
  br i1 %.not.1.i.i112.i, label %bb.l, label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !9  ; 2 uses
  %.not.2.i.i113.i = icmp eq i64 %i.cn, 0
  br i1 %.not.2.i.i113.i, label %bb.m, label %bb.j

bb.m:                                             ; preds = %bb.l
  %i.co = load i64, ptr %7, align 8, !tbaa !9     ; 3 uses
  %.not.3.i.i114.i = icmp eq i64 %i.co, 0
  br i1 %.not.3.i.i114.i, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i, label %.thread.i115.i

.loopexit.i.i103.i:                               ; preds = %bb.j
  %i.cp = trunc nuw i64 %.lcssa30.i.i101.i to i32
  store i32 %i.cp, ptr %i.c, align 16, !tbaa !6
  %i.cq = add nsw i64 %.01827.lcssa.i.i100.i, -1
  br label %.lr.ph.preheader.i.i104.i

.lr.ph.preheader.i.i104.i:                        ; preds = %.loopexit.i.i103.i, %.thread.i115.i, %bb.j
  %.140.i.i105.i = phi i64 [ %i.cq, %.loopexit.i.i103.i ], [ %.01827.lcssa.i.i100.i, %bb.j ], [ 0, %.thread.i115.i ] ; 4 uses
  %.01939.i.i106.i = phi i64 [ 1, %.loopexit.i.i103.i ], [ 0, %bb.j ], [ 0, %.thread.i115.i ] ; 3 uses
  %i.cr = add nsw i64 %.140.i.i105.i, 1           ; 3 uses
  %min.iters.check89 = icmp ult i64 %i.cr, 4
  br i1 %min.iters.check89, label %.lr.ph.i.i107.i.preheader, label %vector.ph90

vector.ph90:                                      ; preds = %.lr.ph.preheader.i.i104.i
  %n.vec91 = and i64 %i.cr, -4                    ; 4 uses
  %i.cs = sub nsw i64 %.140.i.i105.i, %n.vec91
  %i.ct = shl nsw i64 %n.vec91, 1
  %i.cu = or disjoint i64 %.01939.i.i106.i, %i.ct ; 2 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next100, %vector.body92 ] ; 3 uses
  %i.cv = sub i64 %.140.i.i105.i, %index93
  %i.cw = shl nuw i64 %index93, 1
  %i.cx = or disjoint i64 %.01939.i.i106.i, %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.cv ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 -24
  %wide.load94 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !9 ; 2 uses
  %wide.load95 = load <2 x i64>, ptr %i.da, align 8, !tbaa !9 ; 2 uses
  %i.db = lshr <2 x i64> %wide.load94, splat (i64 32)
  %i.dc = shufflevector <2 x i64> %i.db, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.dd = lshr <2 x i64> %wide.load95, splat (i64 32)
  %i.de = shufflevector <2 x i64> %i.dd, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cx
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cx
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = shufflevector <2 x i64> %i.dc, <2 x i64> %wide.load94, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  %interleaved.vec98 = trunc <4 x i64> %i.di to <4 x i32>
  store <4 x i32> %interleaved.vec98, ptr %i.df, align 4, !tbaa !6
  %i.dj = shufflevector <2 x i64> %i.de, <2 x i64> %wide.load95, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  %interleaved.vec99 = trunc <4 x i64> %i.dj to <4 x i32>
  store <4 x i32> %interleaved.vec99, ptr %i.dh, align 4, !tbaa !6
  %index.next100 = add nuw i64 %index93, 4        ; 2 uses
  %i.dk = icmp eq i64 %index.next100, %n.vec91
  br i1 %i.dk, label %middle.block101, label %vector.body92, !llvm.loop !39

middle.block101:                                  ; preds = %vector.body92
  %cmp.n102 = icmp eq i64 %i.cr, %n.vec91
  br i1 %cmp.n102, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i, label %.lr.ph.i.i107.i.preheader

.lr.ph.i.i107.i.preheader:                        ; preds = %.lr.ph.preheader.i.i104.i, %middle.block101
  %.029.i.i108.i.ph = phi i64 [ %.140.i.i105.i, %.lr.ph.preheader.i.i104.i ], [ %i.cs, %middle.block101 ]
  %.12028.i.i109.i.ph = phi i64 [ %.01939.i.i106.i, %.lr.ph.preheader.i.i104.i ], [ %i.cu, %middle.block101 ]
  br label %.lr.ph.i.i107.i

.lr.ph.i.i107.i:                                  ; preds = %.lr.ph.i.i107.i.preheader, %.lr.ph.i.i107.i
  %.029.i.i108.i = phi i64 [ %i.dt, %.lr.ph.i.i107.i ], [ %.029.i.i108.i.ph, %.lr.ph.i.i107.i.preheader ] ; 3 uses
  %.12028.i.i109.i = phi i64 [ %i.dr, %.lr.ph.i.i107.i ], [ %.12028.i.i109.i.ph, %.lr.ph.i.i107.i.preheader ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.029.i.i108.i
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !9  ; 2 uses
  %i.dn = lshr i64 %i.dm, 32
  %i.do = trunc nuw i64 %i.dn to i32
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.12028.i.i109.i ; 2 uses
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !6
  %i.dq = trunc i64 %i.dm to i32
  %i.dr = add nuw nsw i64 %.12028.i.i109.i, 2     ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i32 %i.dq, ptr %i.ds, align 4, !tbaa !6
  %i.dt = add nsw i64 %.029.i.i108.i, -1
  %.not44.i.i110.i = icmp eq i64 %.029.i.i108.i, 0
  br i1 %.not44.i.i110.i, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i, label %.lr.ph.i.i107.i, !llvm.loop !40

_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i: ; preds = %.lr.ph.i.i107.i, %middle.block101, %bb.m, %.loopexit.i.thread.i117.i
  %.120.lcssa.i.i111.i = phi i64 [ 1, %.loopexit.i.thread.i117.i ], [ 0, %bb.m ], [ %i.cu, %middle.block101 ], [ %i.dr, %.lr.ph.i.i107.i ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %.not.not.i = icmp slt i64 %.120.lcssa.i.i.i, %.120.lcssa.i.i111.i
  br i1 %.not.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal256EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

bb.o:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i
  switch i64 %.120.lcssa.i.i111.i, label %bb.z [
    i64 0, label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal256EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit
    i64 1, label %.lr.ph.i.i
  ]

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.du = load i32, ptr %i.c, align 16, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.dv = zext i32 %i.du to i64                   ; 6 uses
  %9 = add i64 %.120.lcssa.i.i.i, 1               ; 2 uses
  %10 = icmp eq i64 %.120.lcssa.i.i.i, 0
  br i1 %10, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %9, -2
  br label %bb.u

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.u
  %11 = and i64 %.120.lcssa.i.i.i, 1
  %lcmp.mod.not.not = icmp eq i64 %11, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge.i.i

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.032.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %31, %._crit_edge.i.i.unr-lcssa ] ; 2 uses
  %.02231.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.gd, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod173 = trunc i64 %9 to i1
  tail call void @llvm.assume(i1 %lcmp.mod173)
  %12 = shl nuw i64 %.02231.i.i.epil.init, 32
  %13 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.032.i.i.epil.init
  %14 = load i32, ptr %13, align 4, !tbaa !6
  %15 = zext i32 %14 to i64
  %16 = or disjoint i64 %12, %15                  ; 2 uses
  %17 = udiv i64 %16, %i.dv
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.032.i.i.epil.init
  store i32 %18, ptr %19, align 4, !tbaa !6
  %20 = urem i64 %16, %i.dv
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa169 = phi i64 [ %i.gd, %._crit_edge.i.i.unr-lcssa ], [ %20, %.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.dw = add i64 %.120.lcssa.i.i.i, -8           ; 2 uses
  %i.dx = icmp sgt i64 %i.dw, -1
  br i1 %i.dx, label %.lr.ph.i.i.i.i, label %.lr.ph37.i.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dy = add nsw i64 %.02533.i.i.i.i, -1
  %i.dz = icmp sgt i64 %.02533.i.i.i.i, 0
  br i1 %i.dz, label %.lr.ph.i.i.i.i, label %.lr.ph37.i.i.i.i, !llvm.loop !41

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i, %bb.p
  %.02533.i.i.i.i = phi i64 [ %i.dy, %bb.p ], [ %i.dw, %._crit_edge.i.i ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.02533.i.i.i.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !6
  %.not.i.i.i.i = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i.i

.preheader.i.i.i.i:                               ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %.thread.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.035.i.i.i.i.lcssa, %.thread.i.i.i.i ], [ 1, %bb.q ], [ 2, %bb.r ], [ 3, %bb.s ], [ 4, %bb.t ] ; 2 uses
  %i.ec = icmp samesign ult i64 %.0.lcssa.i.i.i.i, 4
  br i1 %i.ec, label %.lr.ph39.preheader.i.i.i.i, label %bb.v

.lr.ph39.preheader.i.i.i.i:                       ; preds = %.preheader.i.i.i.i
  %i.ed = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 3    ; 2 uses
  %scevgep.i.i.i.i = getelementptr i8, ptr %6, i64 %i.ed
  %i.ee = sub nuw nsw i64 32, %i.ed
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i, i8 0, i64 %i.ee, i1 false)
  br label %bb.v

.lr.ph37.i.i.i.i:                                 ; preds = %._crit_edge.i.i, %bb.p
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.120.lcssa.i.i.i ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !6
  %i.eh = zext i32 %i.eg to i64                   ; 2 uses
  %i.ei = icmp eq i64 %.120.lcssa.i.i.i, 0
  br i1 %i.ei, label %.thread.i.i.i.i, label %bb.q

.thread.i.i.i.i:                                  ; preds = %.lr.ph37.i.i.i.i.3, %.lr.ph37.i.i.i.i.2, %.lr.ph37.i.i.i.i.1, %.lr.ph37.i.i.i.i
  %.035.i.i.i.i.lcssa.sroa.phi = phi ptr [ %6, %.lr.ph37.i.i.i.i ], [ %.035.i.i.i.i.lcssa.sroa.gep180, %.lr.ph37.i.i.i.i.1 ], [ %.035.i.i.i.i.lcssa.sroa.gep181, %.lr.ph37.i.i.i.i.2 ], [ %.035.i.i.i.i.lcssa.sroa.gep182, %.lr.ph37.i.i.i.i.3 ]
  %.035.i.i.i.i.lcssa = phi i64 [ 1, %.lr.ph37.i.i.i.i ], [ 2, %.lr.ph37.i.i.i.i.1 ], [ 3, %.lr.ph37.i.i.i.i.2 ], [ 4, %.lr.ph37.i.i.i.i.3 ]
  %.lcssa165 = phi i64 [ %i.eh, %.lr.ph37.i.i.i.i ], [ %i.er, %.lr.ph37.i.i.i.i.1 ], [ %i.fc, %.lr.ph37.i.i.i.i.2 ], [ %i.fn, %.lr.ph37.i.i.i.i.3 ]
  store i64 %.lcssa165, ptr %.035.i.i.i.i.lcssa.sroa.phi, align 8
  br label %.preheader.i.i.i.i

bb.q:                                             ; preds = %.lr.ph37.i.i.i.i
  %i.ej = add nsw i64 %.120.lcssa.i.i.i, -2       ; 3 uses
  %i.ek = getelementptr i8, ptr %i.ef, i64 -4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !6
  %i.em = zext i32 %i.el to i64
  %i.en = shl nuw i64 %i.em, 32
  %i.eo = or disjoint i64 %i.en, %i.eh
  store i64 %i.eo, ptr %6, align 8
  %.not = icmp eq i64 %.120.lcssa.i.i.i, 1
  br i1 %.not, label %.preheader.i.i.i.i, label %.lr.ph37.i.i.i.i.1

.lr.ph37.i.i.i.i.1:                               ; preds = %bb.q
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ej ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !6
  %i.er = zext i32 %i.eq to i64                   ; 2 uses
  %i.es = icmp eq i64 %i.ej, 0
  br i1 %i.es, label %.thread.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph37.i.i.i.i.1
  %i.et = add nsw i64 %.120.lcssa.i.i.i, -4       ; 3 uses
  %i.eu = getelementptr i8, ptr %i.ep, i64 -4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !6
  %i.ew = zext i32 %i.ev to i64
  %i.ex = shl nuw i64 %i.ew, 32
  %i.ey = or disjoint i64 %i.ex, %i.er
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ey, ptr %i.ez, align 8
  %.not189 = icmp eq i64 %i.ej, 1
  br i1 %.not189, label %.preheader.i.i.i.i, label %.lr.ph37.i.i.i.i.2

.lr.ph37.i.i.i.i.2:                               ; preds = %bb.r
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.et ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !6
  %i.fc = zext i32 %i.fb to i64                   ; 2 uses
  %i.fd = icmp eq i64 %i.et, 0
  br i1 %i.fd, label %.thread.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph37.i.i.i.i.2
  %i.fe = getelementptr i8, ptr %i.fa, i64 -4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !6
  %i.fg = zext i32 %i.ff to i64
  %i.fh = shl nuw i64 %i.fg, 32
  %i.fi = or disjoint i64 %i.fh, %i.fc
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.fi, ptr %i.fj, align 8
  %.not190 = icmp eq i64 %i.et, 1
  br i1 %.not190, label %.preheader.i.i.i.i, label %.lr.ph37.i.i.i.i.3

.lr.ph37.i.i.i.i.3:                               ; preds = %bb.s
  %i.fk = add nsw i64 %.120.lcssa.i.i.i, -6       ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fk ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !6
  %i.fn = zext i32 %i.fm to i64                   ; 2 uses
  %i.fo = icmp eq i64 %i.fk, 0
  br i1 %i.fo, label %.thread.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph37.i.i.i.i.3
  %i.fp = getelementptr i8, ptr %i.fl, i64 -4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !6
  %i.fr = zext i32 %i.fq to i64
  %i.fs = shl nuw i64 %i.fr, 32
  %i.ft = or disjoint i64 %i.fs, %i.fn
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.ft, ptr %i.fu, align 8
  br label %.preheader.i.i.i.i

_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN5arrowL12SingleDivideINS_15BasicDecimal256EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i.new
  %.032.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %31, %bb.u ] ; 4 uses
  %.032.i.i.a = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.gd, %bb.u ]
  %.02231.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ge, %bb.u ]
  %21 = shl nuw i64 %.032.i.i.a, 32
  %22 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.032.i.i
  %23 = load i32, ptr %22, align 8, !tbaa !6
  %24 = zext i32 %23 to i64
  %25 = or disjoint i64 %21, %24                  ; 2 uses
  %26 = udiv i64 %25, %i.dv
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.032.i.i
  store i32 %27, ptr %28, align 8, !tbaa !6
  %29 = urem i64 %25, %i.dv
  %30 = or disjoint i64 %.032.i.i, 1              ; 2 uses
  %i.fv = shl nuw i64 %29, 32
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %30
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !6
  %i.fy = zext i32 %i.fx to i64
  %i.fz = or disjoint i64 %i.fv, %i.fy            ; 2 uses
  %i.ga = udiv i64 %i.fz, %i.dv
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %30
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !6
  %i.gd = urem i64 %i.fz, %i.dv                   ; 3 uses
  %31 = add nuw nsw i64 %.032.i.i, 2              ; 2 uses
  %i.ge = add i64 %.02231.i.i, 2                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ge, %unroll_iter
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i.unr-lcssa, label %bb.u, !llvm.loop !42

bb.v:                                             ; preds = %.lr.ph39.preheader.i.i.i.i, %.preheader.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i, i8 0, i64 24, i1 false)
  store i64 %.lcssa169, ptr %3, align 8
  %i.gf = xor i1 %i.h, %i.bp
  br i1 %i.gf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gg = load i64, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.gh = sub i64 0, %i.gg
  store i64 %i.gh, ptr %2, align 8, !tbaa !9
  %i.gi = icmp eq i64 %i.gg, 0
  %i.gj = zext i1 %i.gi to i64                    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !9
  %i.gm = xor i64 %i.gl, -1
  %i.gn = add i64 %i.gj, %i.gm                    ; 2 uses
  store i64 %i.gn, ptr %i.gk, align 8, !tbaa !9
  %i.go = icmp eq i64 %i.gn, 0
  %i.gp = select i1 %i.go, i64 %i.gj, i64 0       ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !9
  %i.gs = xor i64 %i.gr, -1
  %i.gt = add i64 %i.gp, %i.gs                    ; 2 uses
  store i64 %i.gt, ptr %i.gq, align 8, !tbaa !9
  %i.gu = icmp eq i64 %i.gt, 0
  %i.gv = select i1 %i.gu, i64 %i.gp, i64 0
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !9
  %i.gy = xor i64 %i.gx, -1
  %i.gz = add i64 %i.gv, %i.gy
  store i64 %i.gz, ptr %i.gw, align 8, !tbaa !9
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %i.h, label %bb.y, label %_ZN5arrowL12SingleDivideINS_15BasicDecimal256EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

bb.y:                                             ; preds = %bb.x
  %i.ha = load i64, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.hb = sub i64 0, %i.ha
  store i64 %i.hb, ptr %3, align 8, !tbaa !9
  %i.hc = icmp eq i64 %i.ha, 0
  %i.hd = zext i1 %i.hc to i64                    ; 2 uses
  %i.he = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !9
  %i.hf = xor i64 %i.he, -1
  %i.hg = add i64 %i.hd, %i.hf                    ; 2 uses
  store i64 %i.hg, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !9
  %i.hh = icmp eq i64 %i.hg, 0
  %i.hi = select i1 %i.hh, i64 %i.hd, i64 0       ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !9
  %i.hl = xor i64 %i.hk, -1
  %i.hm = add i64 %i.hi, %i.hl                    ; 2 uses
  store i64 %i.hm, ptr %i.hj, align 8, !tbaa !9
  %i.hn = icmp eq i64 %i.hm, 0
  %i.ho = select i1 %i.hn, i64 %i.hi, i64 0
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !9
  %i.hr = xor i64 %i.hq, -1
  %i.hs = add i64 %i.ho, %i.hr
  store i64 %i.hs, ptr %i.hp, align 8, !tbaa !9
  br label %_ZN5arrowL12SingleDivideINS_15BasicDecimal256EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

_ZN5arrowL12SingleDivideINS_15BasicDecimal256EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i: ; preds = %bb.y, %bb.x, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i.i
  %.023.i.i = phi i32 [ 2, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i.i ], [ 0, %bb.x ], [ 0, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal256EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

bb.z:                                             ; preds = %bb.o
  %i.ht = sub i64 %i.bm, %.120.lcssa.i.i111.i     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.hu = load i32, ptr %i.c, align 16, !tbaa !6  ; 3 uses
  %i.hv = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hu, i1 false) ; 13 uses
  %i.hw = icmp sgt i64 %.120.lcssa.i.i111.i, 0    ; 2 uses
  %i.hx = icmp ne i32 %i.hv, 0                    ; 3 uses
  %or.cond.i.i = and i1 %i.hw, %i.hx
  br i1 %or.cond.i.i, label %.lr.ph.i120.i, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit.i

.lr.ph.i120.i:                                    ; preds = %bb.z
  %i.hy = add nsw i64 %.120.lcssa.i.i111.i, -1    ; 4 uses
  %i.hz = sub nuw nsw i32 32, %i.hv               ; 2 uses
  %min.iters.check106 = icmp ult i64 %.120.lcssa.i.i111.i, 9
  br i1 %min.iters.check106, label %scalar.ph105.preheader, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.i120.i
  %n.vec108 = and i64 %i.hy, -8                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.hz, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert109 = insertelement <4 x i32> poison, i32 %i.hv, i64 0
  %broadcast.splat110 = shufflevector <4 x i32> %broadcast.splatinsert109, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.hu, i64 3
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph107
  %index112 = phi i64 [ 0, %vector.ph107 ], [ %index.next115, %vector.body111 ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph107 ], [ %wide.load114, %vector.body111 ]
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index112 ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index112 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 20
  %wide.load113 = load <4 x i32>, ptr %i.ic, align 4, !tbaa !6 ; 3 uses
  %wide.load114 = load <4 x i32>, ptr %i.id, align 4, !tbaa !6 ; 4 uses
  %i.ie = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load113, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.if = shufflevector <4 x i32> %wide.load113, <4 x i32> %wide.load114, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ig = shl <4 x i32> %i.ie, %broadcast.splat110
  %i.ih = shl <4 x i32> %i.if, %broadcast.splat110
  %i.ii = lshr <4 x i32> %wide.load113, %broadcast.splat
  %i.ij = lshr <4 x i32> %wide.load114, %broadcast.splat
  %i.ik = or disjoint <4 x i32> %i.ii, %i.ig
  %i.il = or disjoint <4 x i32> %i.ij, %i.ih
  %i.im = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store <4 x i32> %i.ik, ptr %i.ia, align 16, !tbaa !6
  store <4 x i32> %i.il, ptr %i.im, align 16, !tbaa !6
  %index.next115 = add nuw i64 %index112, 8       ; 2 uses
  %i.in = icmp eq i64 %index.next115, %n.vec108
  br i1 %i.in, label %middle.block116, label %vector.body111, !llvm.loop !43

middle.block116:                                  ; preds = %vector.body111
  %vector.recur.extract = extractelement <4 x i32> %wide.load114, i64 3
  %cmp.n117 = icmp eq i64 %i.hy, %n.vec108
  br i1 %cmp.n117, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i, label %scalar.ph105.preheader

scalar.ph105.preheader:                           ; preds = %.lr.ph.i120.i, %middle.block116
  %.ph164 = phi i32 [ %i.hu, %.lr.ph.i120.i ], [ %vector.recur.extract, %middle.block116 ]
  %.019.i.i.ph = phi i64 [ 0, %.lr.ph.i120.i ], [ %n.vec108, %middle.block116 ]
  br label %scalar.ph105

_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i:    ; preds = %scalar.ph105, %middle.block116
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hy ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !6
  %i.iq = shl i32 %i.ip, %i.hv
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !6
  br label %.preheader.i123.i

scalar.ph105:                                     ; preds = %scalar.ph105.preheader, %scalar.ph105
  %i.ir = phi i32 [ %i.iw, %scalar.ph105 ], [ %.ph164, %scalar.ph105.preheader ]
  %.019.i.i = phi i64 [ %i.iu, %scalar.ph105 ], [ %.019.i.i.ph, %scalar.ph105.preheader ] ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.019.i.i
  %i.it = shl i32 %i.ir, %i.hv
  %i.iu = add nuw nsw i64 %.019.i.i, 1            ; 3 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !6  ; 2 uses
  %i.ix = lshr i32 %i.iw, %i.hz
  %i.iy = or disjoint i32 %i.ix, %i.it
  store i32 %i.iy, ptr %i.is, align 4, !tbaa !6
  %exitcond.not.i121.i = icmp eq i64 %i.iu, %i.hy
  br i1 %exitcond.not.i121.i, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i, label %scalar.ph105, !llvm.loop !44

_ZN5arrowL14ShiftArrayLeftEPjll.exit.i:           ; preds = %bb.z
  br i1 %i.hx, label %.preheader.i123.i, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit129.i

.preheader.i123.i:                                ; preds = %_ZN5arrowL14ShiftArrayLeftEPjll.exit.i, %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i
  %i.iz = icmp sgt i64 %.120.lcssa.i.i.i, 0
  br i1 %i.iz, label %.lr.ph.i125.i, label %._crit_edge.i124.i

.lr.ph.i125.i:                                    ; preds = %.preheader.i123.i
  %i.ja = sub nuw nsw i32 32, %i.hv               ; 2 uses
  %min.iters.check120 = icmp ult i64 %.120.lcssa.i.i.i, 8
  br i1 %min.iters.check120, label %scalar.ph119.preheader, label %vector.ph121

vector.ph121:                                     ; preds = %.lr.ph.i125.i
  %n.vec122 = and i64 %.120.lcssa.i.i.i, 9223372036854775800 ; 3 uses
  %broadcast.splatinsert123 = insertelement <4 x i32> poison, i32 %i.ja, i64 0
  %broadcast.splat124 = shufflevector <4 x i32> %broadcast.splatinsert123, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert125 = insertelement <4 x i32> poison, i32 %i.hv, i64 0
  %broadcast.splat126 = shufflevector <4 x i32> %broadcast.splatinsert125, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph121
  %index128 = phi i64 [ 0, %vector.ph121 ], [ %index.next132, %vector.body127 ] ; 3 uses
  %vector.recur129 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph121 ], [ %wide.load131, %vector.body127 ]
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index128 ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index128 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 20
  %wide.load130 = load <4 x i32>, ptr %i.jd, align 4, !tbaa !6 ; 3 uses
  %wide.load131 = load <4 x i32>, ptr %i.je, align 4, !tbaa !6 ; 4 uses
  %i.jf = shufflevector <4 x i32> %vector.recur129, <4 x i32> %wide.load130, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.jg = shufflevector <4 x i32> %wide.load130, <4 x i32> %wide.load131, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.jh = shl <4 x i32> %i.jf, %broadcast.splat126
  %i.ji = shl <4 x i32> %i.jg, %broadcast.splat126
  %i.jj = lshr <4 x i32> %wide.load130, %broadcast.splat124
  %i.jk = lshr <4 x i32> %wide.load131, %broadcast.splat124
  %i.jl = or disjoint <4 x i32> %i.jj, %i.jh
  %i.jm = or disjoint <4 x i32> %i.jk, %i.ji
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <4 x i32> %i.jl, ptr %i.jb, align 16, !tbaa !6
  store <4 x i32> %i.jm, ptr %i.jn, align 16, !tbaa !6
  %index.next132 = add nuw i64 %index128, 8       ; 2 uses
  %i.jo = icmp eq i64 %index.next132, %n.vec122
  br i1 %i.jo, label %middle.block133, label %vector.body127, !llvm.loop !45

middle.block133:                                  ; preds = %vector.body127
  %vector.recur.extract134 = extractelement <4 x i32> %wide.load131, i64 3
  %cmp.n135 = icmp eq i64 %.120.lcssa.i.i.i, %n.vec122
  br i1 %cmp.n135, label %._crit_edge.i124.i, label %scalar.ph119.preheader

scalar.ph119.preheader:                           ; preds = %.lr.ph.i125.i, %middle.block133
  %.ph = phi i32 [ 0, %.lr.ph.i125.i ], [ %vector.recur.extract134, %middle.block133 ]
  %.019.i127.i.ph = phi i64 [ 0, %.lr.ph.i125.i ], [ %n.vec122, %middle.block133 ]
  br label %scalar.ph119

._crit_edge.i124.i:                               ; preds = %scalar.ph119, %middle.block133, %.preheader.i123.i
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.120.lcssa.i.i.i ; 2 uses
end_hunk_0
