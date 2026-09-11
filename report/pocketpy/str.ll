Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/str?download=true
inline.NumInlined: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@c11_sv__split2:bb.a
  %i.ag = sext i32 %i.ae to i64
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.ag ; 3 uses
  store ptr %i.y, ptr %i.ah, align 8, !tbaa !25
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %i.z, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !12
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %.sroa.53.0..sroa_idx, align 4
  %i.ai = load i32, ptr %i.h, align 8, !tbaa !21
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.h, align 8, !tbaa !21
  %i.ak = add nsw i32 %4, %i.w                    ; 3 uses
  %.not21.i = icmp sgt i32 %i.ak, %i.d
  br i1 %.not21.i, label %c11_sv__index2.exit.thread, label %.lr.ph.i

c11_sv__index2.exit.thread:                       ; preds = %bb.h, %.loopexit.loopexit.split.loop.exit.i, %bb.e, %.split
  %.02333 = phi i32 [ %.02335, %bb.e ], [ 0, %.split ], [ %.02335, %.loopexit.loopexit.split.loop.exit.i ], [ %i.ak, %bb.h ] ; 2 uses
  %i.al = sext i32 %.02333 to i64
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = sub nsw i32 %2, %.02333
  %i.ao = load i32, ptr %i.h, align 8, !tbaa !21  ; 2 uses
  %i.ap = load i32, ptr %i.i, align 4, !tbaa !22
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %c11_sv__index2.exit.thread
  %i.ar = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %0) #26
  tail call void @c11_vector__reserve(ptr noundef nonnull %0, i32 noundef %i.ar) #26
  %.pre45 = load i32, ptr %i.h, align 8, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %c11_sv__index2.exit.thread
  %i.as = phi i32 [ %.pre45, %bb.i ], [ %i.ao, %c11_sv__index2.exit.thread ]
  %i.at = load ptr, ptr %0, align 8, !tbaa !23
  %i.au = sext i32 %i.as to i64
  %i.av = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.au ; 3 uses
  store ptr %i.am, ptr %i.av, align 8, !tbaa !25
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 %i.an, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  %i.aw = load i32, ptr %i.h, align 8, !tbaa !21
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.h, align 8, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @c11_bytes__eq(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !12     ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !12
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = sext i32 %i.a to i64
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.c, ptr nonnull %i.d, i64 %i.e)
  %i.f = icmp eq i32 %bcmp, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @c11_sv__cmp(ptr nofree readonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %1, i32 %3)
  %i.b = sext i32 %i.a to i64
  %i.c = tail call i32 @strncmp(ptr noundef %0, ptr noundef %2, i64 noundef %i.b) #24 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  %i.d = sub nsw i32 %1, %3
  %.0 = select i1 %.not, i32 %i.d, i32 %i.c
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @c11_sv__cmp2(ptr nofree readonly captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.b)
  %i.d = sext i32 %i.c to i64
  %i.e = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull %2, i64 noundef %i.d) #24 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  %i.f = sub nsw i32 %1, %i.b
  %.0 = select i1 %.not, i32 %i.f, i32 %i.e
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @c11__streq(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #24
  %i.b = icmp eq i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @c11__sveq(ptr nofree readonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq i32 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %1 to i64
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %2, i64 %i.a)
  %i.b = icmp eq i32 %bcmp, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @c11__sveq2(ptr nofree readonly captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %.not = icmp eq i32 %1, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %sext = shl i64 %i.a, 32
  %i.c = ashr exact i64 %sext, 32
  %bcmp = tail call i32 @bcmp(ptr %0, ptr nonnull %2, i64 %i.c)
  %i.d = icmp eq i32 %bcmp, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint nounwind uwtable
declare i32 @putchar(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #17

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @c11__u8_value(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp eq i32 %0, 1
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  switch i32 %0, label %.lr.ph.split.peel.next [
    i32 2, label %.loopexit.loopexit36
    i32 3, label %.loopexit.loopexit71
    i32 4, label %.loopexit.loopexit73
  ]

.lr.ph.split.peel.next:                           ; preds = %.lr.ph
  %wide.trip.count56 = zext nneg i32 %0 to i64    ; 2 uses
  %i.c = add nsw i64 %wide.trip.count56, -1       ; 2 uses
  %min.iters.check = icmp ult i32 %0, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.peel.next
  %n.vec = and i64 %i.c, -8                       ; 3 uses
  %i.d = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi67 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %wide.load = load <4 x i8>, ptr %i.f, align 1, !tbaa !13
  %wide.load68 = load <4 x i8>, ptr %i.g, align 1, !tbaa !13
  %i.h = and <4 x i8> %wide.load, splat (i8 63)
  %i.i = and <4 x i8> %wide.load68, splat (i8 63)
  %i.j = zext nneg <4 x i8> %i.h to <4 x i32>
  %i.k = zext nneg <4 x i8> %i.i to <4 x i32>
  %i.l = xor <4 x i32> %vec.ind, splat (i32 -1)
  %i.m = add nsw <4 x i32> %broadcast.splat, %i.l
  %reass.sub = sub <4 x i32> %broadcast.splat, %vec.ind
  %i.n = mul nsw <4 x i32> %i.m, splat (i32 6)
  %i.o = mul <4 x i32> %reass.sub, splat (i32 6)
  %i.p = add <4 x i32> %i.o, splat (i32 -30)
  %i.q = shl <4 x i32> %i.j, %i.n
  %i.r = shl <4 x i32> %i.k, %i.p
  %i.s = or <4 x i32> %i.q, %vec.phi              ; 2 uses
  %i.t = or <4 x i32> %i.r, %vec.phi67            ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.t, %i.s
  %i.v = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.split.peel.next, %middle.block
  %indvars.iv53.ph = phi i64 [ 1, %.lr.ph.split.peel.next ], [ %i.d, %middle.block ]
  %.01922.ph = phi i32 [ 0, %.lr.ph.split.peel.next ], [ %i.v, %middle.block ]
  br label %scalar.ph

.loopexit.loopexit71:                             ; preds = %.lr.ph
  %i.w = load i8, ptr %1, align 1, !tbaa !13
  %i.x = and i8 %i.w, 15
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 12
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13
  %i.ac = and i8 %i.ab, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 6
  %i.af = or disjoint i32 %i.ae, %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !13
  %i.ai = and i8 %i.ah, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.af, %i.aj
  br label %.loopexit

.loopexit.loopexit73:                             ; preds = %.lr.ph
  %i.al = load i8, ptr %1, align 1, !tbaa !13
  %i.am = and i8 %i.al, 7
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 18
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %i.ar = and i8 %i.aq, 63
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 12
  %i.au = or disjoint i32 %i.at, %i.ao
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !13
  %i.ax = and i8 %i.aw, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 6
  %i.ba = or disjoint i32 %i.az, %i.au
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !13
  %i.bd = and i8 %i.bc, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.ba, %i.be
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.bg = load i8, ptr %1, align 1, !tbaa !13
  %i.bh = sext i8 %i.bg to i32
  br label %.loopexit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %scalar.ph ], [ %indvars.iv53.ph, %scalar.ph.preheader ] ; 3 uses
  %.01922 = phi i32 [ %i.br, %scalar.ph ], [ %.01922.ph, %scalar.ph.preheader ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv53
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = trunc nuw nsw i64 %indvars.iv53 to i32
  %i.bn = xor i32 %i.bm, -1
  %i.bo = add nsw i32 %0, %i.bn
  %i.bp = mul nsw i32 %i.bo, 6
  %i.bq = shl i32 %i.bl, %i.bp
  %i.br = or i32 %i.bq, %.01922                   ; 2 uses
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count56
  br i1 %exitcond57.not, label %.loopexit, label %scalar.ph, !llvm.loop !52

.loopexit.loopexit36:                             ; preds = %.lr.ph
  %i.bs = load i8, ptr %1, align 1, !tbaa !13
  %i.bt = and i8 %i.bs, 31
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 6
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !13
  %i.by = and i8 %i.bx, 63
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bv, %i.bz
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph, %.loopexit.loopexit73, %.loopexit.loopexit71, %middle.block, %.loopexit.loopexit36, %.preheader, %bb.b
  %.020 = phi i32 [ %i.bh, %bb.b ], [ 0, %.preheader ], [ %i.bf, %.loopexit.loopexit73 ], [ %i.ca, %.loopexit.loopexit36 ], [ %i.ak, %.loopexit.loopexit71 ], [ %i.v, %middle.block ], [ %i.br, %scalar.ph ]
  ret i32 %.020
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -1, 5) i32 @c11__u32_to_u8(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i32 %0 to i8
  store i8 %i.b, ptr %1, align 1, !tbaa !13
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 2048
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = lshr i32 %0, 6
  %i.e = trunc nuw nsw i32 %i.d to i8
  %i.f = or disjoint i8 %i.e, -64
  store i8 %i.f, ptr %1, align 1, !tbaa !13
  %i.g = trunc i32 %0 to i8
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !13
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ult i32 %0, 65536
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = lshr i32 %0, 12
  %i.m = trunc nuw nsw i32 %i.l to i8
  %i.n = or disjoint i8 %i.m, -32
  store i8 %i.n, ptr %1, align 1, !tbaa !13
  %i.o = lshr i32 %0, 6
  %i.p = trunc i32 %i.o to i8
  %i.q = and i8 %i.p, 63
  %i.r = or disjoint i8 %i.q, -128
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.r, ptr %i.s, align 1, !tbaa !13
  %i.t = trunc i32 %0 to i8
  %i.u = and i8 %i.t, 63
  %i.v = or disjoint i8 %i.u, -128
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.v, ptr %i.w, align 1, !tbaa !13
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.x = icmp ult i32 %0, 1114112
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = lshr i32 %0, 6
  %i.z = lshr i32 %0, 12
  %i.aa = lshr i32 %0, 18
  %i.ab = trunc i32 %0 to i8
  %i.ac = trunc i32 %i.y to i8
  %i.ad = trunc i32 %i.z to i8
  %i.ae = trunc nuw nsw i32 %i.aa to i8
  %i.af = insertelement <4 x i8> poison, i8 %i.ae, i64 0
  %i.ag = insertelement <4 x i8> %i.af, i8 %i.ad, i64 1
  %i.ah = insertelement <4 x i8> %i.ag, i8 %i.ac, i64 2
  %i.ai = insertelement <4 x i8> %i.ah, i8 %i.ab, i64 3
  %i.aj = and <4 x i8> %i.ai, <i8 -1, i8 63, i8 63, i8 63>
  %i.ak = or disjoint <4 x i8> %i.aj, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.ak, ptr %1, align 1, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.f, %bb.h, %bb.d, %bb.g
  %.025 = phi i32 [ -1, %bb.g ], [ 1, %bb.b ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.h ]
  ret i32 %.025
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @c11_strdup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %i.b = shl i64 %i.a, 32                         ; 2 uses
  %sext = add i64 %i.b, 4294967296
  %i.c = ashr exact i64 %sext, 32
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #25 ; 3 uses
  %i.e = ashr exact i64 %i.b, 32                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %0, i64 %i.e, i1 false)
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.f, align 1, !tbaa !13
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @c11_memdup(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = tail call noalias ptr @malloc(i64 noundef %i.a) #25 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %0, i64 %i.a, i1 false)
  ret ptr %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 3) i32 @c11__parse_uint(ptr nofree readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, i32 noundef %3) local_unnamed_addr #18 {
bb.a:
  store i64 0, ptr %2, align 8, !tbaa !59
  switch i32 %3, label %.critedge [
    i32 -1, label %bb.b
    i32 10, label %.thread
    i32 2, label %.thread188
    i32 8, label %.thread190
    i32 16, label %.thread192
  ]

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp sgt i32 %1, 1
  br i1 %.not.i, label %c11__sveq2.exit, label %.thread

c11__sveq2.exit:                                  ; preds = %bb.b
  %i.a = load i16, ptr %0, align 1
  %i.b = icmp ne i16 %i.a, 25136
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %c11__sveq2.exit172, label %c11__sveq2.exit162

c11__sveq2.exit162:                               ; preds = %c11__sveq2.exit
  %i.e = load i16, ptr %0, align 1
  %i.f = icmp ne i16 %i.e, 28464
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %c11__sveq2.exit177, label %c11__sveq2.exit167

c11__sveq2.exit167:                               ; preds = %c11__sveq2.exit162
  %i.i = load i16, ptr %0, align 1
  %i.j = icmp ne i16 %i.i, 30768
  %i.k = zext i1 %i.j to i32
  %bcmp.i166.fr = freeze i32 %i.k
  %i.l = icmp eq i32 %bcmp.i166.fr, 0
  br i1 %i.l, label %c11__sveq2.exit182, label %.lr.ph.preheader

.thread:                                          ; preds = %bb.b, %bb.a
  %i.m = icmp eq i32 %1, 0
  br i1 %i.m, label %.critedge, label %.preheader237

.preheader237:                                    ; preds = %.thread
  %.not143239 = icmp sgt i32 %1, 0
  br i1 %.not143239, label %.lr.ph.preheader, label %.critedge144

.lr.ph.preheader:                                 ; preds = %c11__sveq2.exit167, %.preheader237
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.n = phi i64 [ 0, %.lr.ph.preheader ], [ %i.u, %bb.c ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13    ; 2 uses
  %i.q = add i8 %i.p, -48
  %or.cond = icmp ult i8 %i.q, 10
  br i1 %or.cond, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.r = zext nneg i8 %i.p to i64
  %i.s = mul nsw i64 %i.n, 10
  %i.t = add nsw i64 %i.r, -48
  %i.u = add nsw i64 %i.t, %i.s                   ; 2 uses
  store i64 %i.u, ptr %2, align 8, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge144, label %.lr.ph, !llvm.loop !54

.critedge144:                                     ; preds = %bb.c, %.preheader237
  %i.v = icmp sgt i32 %1, 19
  %.145 = select i1 %i.v, i32 2, i32 0
  br label %.critedge

.thread188:                                       ; preds = %bb.a
  %.not.i168 = icmp sgt i32 %1, 1
  br i1 %.not.i168, label %c11__sveq2.exit172, label %.thread199

end_hunk_0
