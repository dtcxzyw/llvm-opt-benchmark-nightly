inline.NumInlined: 97
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj:bb.a

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi12 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %wide.load = load <4 x i8>, ptr %i.a, align 1, !tbaa !62
  %wide.load13 = load <4 x i8>, ptr %i.b, align 1, !tbaa !62
  %i.c = zext <4 x i8> %wide.load to <4 x i32>
  %i.d = zext <4 x i8> %wide.load13 to <4 x i32>
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load14 = load <4 x i32>, ptr %i.e, align 4, !tbaa !4
  %wide.load15 = load <4 x i32>, ptr %i.f, align 4, !tbaa !4
  %i.g = mul <4 x i32> %wide.load14, %i.c
  %i.h = mul <4 x i32> %wide.load15, %i.d
  %i.i = add <4 x i32> %i.g, %vec.phi             ; 2 uses
  %i.j = add <4 x i32> %i.h, %vec.phi12           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.j, %i.i
  %i.l = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader16

.lr.ph.preheader16:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.089.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader16, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader16 ] ; 3 uses
  %.089 = phi i32 [ %i.s, %.lr.ph ], [ %.089.ph, %.lr.ph.preheader16 ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1, !tbaa !62
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = mul i32 %i.q, %i.o
  %i.s = add i32 %i.r, %.089                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !100

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.08.lcssa = phi i32 [ 0, %bb.a ], [ %i.l, %middle.block ], [ %i.s, %.lr.ph ]
  ret i32 %.08.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder21Huffman_GetPrice_SpecEPKjPKhjS5_j(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #11 {
bb.a:
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %2 to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi22 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %wide.load = load <4 x i8>, ptr %i.a, align 1, !tbaa !62
  %wide.load23 = load <4 x i8>, ptr %i.b, align 1, !tbaa !62
  %i.c = zext <4 x i8> %wide.load to <4 x i32>
  %i.d = zext <4 x i8> %wide.load23 to <4 x i32>
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load24 = load <4 x i32>, ptr %i.e, align 4, !tbaa !4
  %wide.load25 = load <4 x i32>, ptr %i.f, align 4, !tbaa !4
  %i.g = mul <4 x i32> %wide.load24, %i.c
  %i.h = mul <4 x i32> %wide.load25, %i.d
  %i.i = add <4 x i32> %i.g, %vec.phi             ; 2 uses
  %i.j = add <4 x i32> %i.h, %vec.phi22           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.j, %i.i
  %i.l = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.089.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.l, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.089.i = phi i32 [ %i.s, %.lr.ph.i ], [ %.089.i.ph, %.lr.ph.i.preheader ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !62
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = mul i32 %i.q, %i.o
  %i.s = add i32 %i.r, %.089.i                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit, label %.lr.ph.i, !llvm.loop !102

_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.08.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.l, %middle.block ], [ %i.s, %.lr.ph.i ]
  %i.t = zext i32 %4 to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t ; 2 uses
  %.not.i7 = icmp eq i32 %2, %4
  br i1 %.not.i7, label %_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit16, label %.lr.ph.preheader.i8

.lr.ph.preheader.i8:                              ; preds = %_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit
  %i.v = sub i32 %2, %4                           ; 2 uses
  %wide.trip.count.i9 = zext i32 %i.v to i64      ; 3 uses
  %min.iters.check27 = icmp ult i32 %i.v, 8
  br i1 %min.iters.check27, label %.lr.ph.i10.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph.preheader.i8
  %n.vec30 = and i64 %wide.trip.count.i9, 4294967288 ; 3 uses
  br label %vector.body31

vector.body31:                                    ; preds = %vector.body31, %vector.ph28
  %index32 = phi i64 [ 0, %vector.ph28 ], [ %index.next39, %vector.body31 ] ; 3 uses
  %vec.phi33 = phi <4 x i32> [ zeroinitializer, %vector.ph28 ], [ %i.ae, %vector.body31 ]
  %vec.phi34 = phi <4 x i32> [ zeroinitializer, %vector.ph28 ], [ %i.af, %vector.body31 ]
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 %index32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %wide.load35 = load <4 x i8>, ptr %i.w, align 1, !tbaa !62
  %wide.load36 = load <4 x i8>, ptr %i.x, align 1, !tbaa !62
  %i.y = zext <4 x i8> %wide.load35 to <4 x i32>
  %i.z = zext <4 x i8> %wide.load36 to <4 x i32>
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load37 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !4
  %wide.load38 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !4
  %i.ac = mul <4 x i32> %wide.load37, %i.y
  %i.ad = mul <4 x i32> %wide.load38, %i.z
  %i.ae = add <4 x i32> %i.ac, %vec.phi33         ; 2 uses
  %i.af = add <4 x i32> %i.ad, %vec.phi34         ; 2 uses
  %index.next39 = add nuw i64 %index32, 8         ; 2 uses
  %i.ag = icmp eq i64 %index.next39, %n.vec30
  br i1 %i.ag, label %middle.block40, label %vector.body31, !llvm.loop !103

middle.block40:                                   ; preds = %vector.body31
  %bin.rdx41 = add <4 x i32> %i.af, %i.ae
  %i.ah = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx41) ; 2 uses
  %cmp.n42 = icmp eq i64 %n.vec30, %wide.trip.count.i9
  br i1 %cmp.n42, label %_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit16, label %.lr.ph.i10.preheader

.lr.ph.i10.preheader:                             ; preds = %.lr.ph.preheader.i8, %middle.block40
  %indvars.iv.i11.ph = phi i64 [ 0, %.lr.ph.preheader.i8 ], [ %n.vec30, %middle.block40 ]
  %.089.i12.ph = phi i32 [ 0, %.lr.ph.preheader.i8 ], [ %i.ah, %middle.block40 ]
  br label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %.lr.ph.i10.preheader, %.lr.ph.i10
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i13, %.lr.ph.i10 ], [ %indvars.iv.i11.ph, %.lr.ph.i10.preheader ] ; 3 uses
  %.089.i12 = phi i32 [ %i.ao, %.lr.ph.i10 ], [ %.089.i12.ph, %.lr.ph.i10.preheader ]
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i11
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !62
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i11
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = mul i32 %i.am, %i.ak
  %i.ao = add i32 %i.an, %.089.i12                ; 2 uses
  %indvars.iv.next.i13 = add nuw nsw i64 %indvars.iv.i11, 1 ; 2 uses
  %exitcond.not.i14 = icmp eq i64 %indvars.iv.next.i13, %wide.trip.count.i9
  br i1 %exitcond.not.i14, label %_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit16, label %.lr.ph.i10, !llvm.loop !104

_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit16: ; preds = %.lr.ph.i10, %middle.block40, %_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit
  %.08.lcssa.i15 = phi i32 [ 0, %_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit ], [ %i.ah, %middle.block40 ], [ %i.ao, %.lr.ph.i10 ]
  %i.ap = add i32 %.08.lcssa.i15, %.08.lcssa.i
  ret i32 %i.ap
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK9NCompress8NDeflate8NEncoder6CCoder15GetLzBlockPriceEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(39764) %0) local_unnamed_addr #12 align 2 {
vector.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 6 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi19 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %wide.load = load <4 x i8>, ptr %i.e, align 8, !tbaa !62
  %wide.load20 = load <4 x i8>, ptr %i.f, align 4, !tbaa !62
  %i.g = zext <4 x i8> %wide.load to <4 x i32>
  %i.h = zext <4 x i8> %wide.load20 to <4 x i32>
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load21 = load <4 x i32>, ptr %i.i, align 8, !tbaa !4
  %wide.load22 = load <4 x i32>, ptr %i.j, align 8, !tbaa !4
  %i.k = mul <4 x i32> %wide.load21, %i.g
  %i.l = mul <4 x i32> %wide.load22, %i.h
  %i.m = add <4 x i32> %i.k, %vec.phi             ; 2 uses
  %i.n = add <4 x i32> %i.l, %vec.phi19           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, 288
  br i1 %i.o, label %_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit.i, label %vector.body, !llvm.loop !105

_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit.i: ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.n, %i.m
  %i.p = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3284
  %1 = load i8, ptr %i.d, align 1, !tbaa !62
  %2 = load i32, ptr %i.q, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %3 = load i8, ptr %i.r, align 1, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3288
  %i.t = load i32, ptr %i.s, align 8, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !62
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3292
  %4 = load i32, ptr %i.w, align 4, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3296
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 27
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2228
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3424 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3428
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3440
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3448
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2244
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3488 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2245
  %7 = load i8, ptr %i.aj, align 1, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3492
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2246
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3496 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 3512
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2254
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 3528 ; 2 uses
  %i.aq = load i32, ptr %i.ad, align 8, !tbaa !4
  %i.ar = load i32, ptr %i.ae, align 4, !tbaa !4
  %8 = load <16 x i8>, ptr %i.ac, align 4, !tbaa !62
  %9 = load <16 x i32>, ptr %i.ad, align 8, !tbaa !4 ; 5 uses
  %10 = load <2 x i32>, ptr %5, align 8, !tbaa !4 ; 2 uses
  %11 = load <2 x i32>, ptr %6, align 8, !tbaa !4 ; 2 uses
  %12 = shufflevector <2 x i32> %10, <2 x i32> %11, <2 x i32> <i32 0, i32 2>
  %13 = shufflevector <2 x i32> %10, <2 x i32> %11, <2 x i32> <i32 1, i32 3>
  %14 = add <2 x i32> %12, %13
  %15 = extractelement <16 x i32> %9, i64 14
  %16 = extractelement <16 x i32> %9, i64 15
  %i.as = add i32 %15, %16
  %i.at = shl i32 %i.as, 3
  %i.au = zext <16 x i8> %8 to <16 x i32>
  %i.av = mul <16 x i32> %9, %i.au
  %i.aw = zext i8 %i.ah to i32
  %i.ax = zext i8 %7 to i32
  %17 = load <2 x i8>, ptr %i.ao, align 2, !tbaa !62
  %i.ay = load <8 x i8>, ptr %i.al, align 2, !tbaa !62
  %i.az = load <8 x i32>, ptr %i.am, align 8, !tbaa !4
  %18 = load <2 x i32>, ptr %i.ap, align 8, !tbaa !4
  %19 = load <2 x i32>, ptr %i.af, align 8, !tbaa !4
  %20 = shufflevector <8 x i32> %i.az, <8 x i32> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <2 x i32> %18, <2 x i32> %19, <12 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>
  %22 = shufflevector <12 x i32> %20, <12 x i32> %21, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = shufflevector <16 x i32> %9, <16 x i32> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %24 = shufflevector <16 x i32> %22, <16 x i32> %23, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %25 = zext <8 x i8> %i.ay to <8 x i32>
  %26 = zext <2 x i8> %17 to <2 x i32>
  %27 = shufflevector <2 x i32> %26, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %28 = shufflevector <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3, i32 3, i32 5, i32 5, i32 6, i32 6>, <16 x i32> %27, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ba = shufflevector <8 x i32> %25, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bb = shufflevector <16 x i32> %i.ba, <16 x i32> %28, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bc = mul <16 x i32> %24, %i.bb
  %29 = load <2 x i32>, ptr %i.ai, align 8, !tbaa !4
  %i.bd = load i32, ptr %i.ak, align 4, !tbaa !4
  %30 = load i32, ptr %i.ai, align 8, !tbaa !4
  %31 = load <4 x i32>, ptr %i.an, align 8, !tbaa !4
  %32 = load <4 x i32>, ptr %i.am, align 8, !tbaa !4
  %33 = load <2 x i32>, ptr %i.ap, align 8, !tbaa !4
  %34 = shufflevector <2 x i32> %29, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %35 = shufflevector <16 x i32> %9, <16 x i32> %34, <16 x i32> <i32 12, i32 13, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %36 = shufflevector <2 x i32> %14, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %37 = shufflevector <16 x i32> %35, <16 x i32> %36, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17>
  %38 = shufflevector <4 x i32> %32, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %39 = shufflevector <16 x i32> %37, <16 x i32> %38, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 14, i32 15>
  %40 = shufflevector <4 x i32> %31, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %41 = shufflevector <16 x i32> %39, <16 x i32> %40, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %42 = shufflevector <2 x i32> %33, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %43 = shufflevector <16 x i32> %41, <16 x i32> %42, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %44 = mul <16 x i32> %43, <i32 7, i32 7, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 2, i32 4>
  %45 = mul i32 %30, %i.aw
  %46 = mul i32 %i.bd, %i.ax
  %47 = zext i8 %1 to i32
  %48 = mul i32 %2, %47
  %49 = zext i8 %3 to i32
  %50 = mul i32 %i.t, %49
  %51 = zext i8 %i.v to i32
  %52 = mul i32 %4, %51
  %53 = load <16 x i8>, ptr %i.x, align 1, !tbaa !62
  %54 = load <8 x i8>, ptr %i.z, align 1, !tbaa !62
  %55 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !62
  %56 = load <4 x i8>, ptr %i.ab, align 8, !tbaa !62
  %57 = load <32 x i32>, ptr %i.y, align 8, !tbaa !4
  %58 = shufflevector <4 x i8> %55, <4 x i8> %56, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %59 = shufflevector <16 x i8> %53, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %60 = shufflevector <32 x i8> %59, <32 x i8> %58, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %61 = shufflevector <8 x i8> %54, <8 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %62 = shufflevector <32 x i8> %60, <32 x i8> %61, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %63 = zext <32 x i8> %62 to <32 x i32>
  %64 = mul <32 x i32> %57, %63                   ; 2 uses
  %65 = shufflevector <32 x i32> %64, <32 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %66 = add <16 x i32> %65, %i.av
  %67 = add <16 x i32> %66, %i.bc
  %rdx.op24 = add <16 x i32> %67, %44
  %68 = shufflevector <16 x i32> %rdx.op24, <16 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %69 = shufflevector <32 x i32> %68, <32 x i32> %64, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %70 = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %69)
  %op.rdx46 = add i32 %70, %50
  %op.rdx47 = add i32 %48, %52
  %op.rdx48 = add i32 %45, %46
  %op.rdx49 = add i32 %i.at, %i.ar
  %op.rdx50 = add i32 %i.aq, %i.p
  %op.rdx51 = add i32 %op.rdx46, %op.rdx47
  %op.rdx52 = add i32 %op.rdx48, %op.rdx49
  %op.rdx53 = add i32 %op.rdx51, %op.rdx52
  %op.rdx54 = add i32 %op.rdx53, %op.rdx50
  ret i32 %op.rdx54
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv(ptr noundef nonnull align 8 dereferenceable(39764) initializes((1372, 1376), (2256, 3536)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3408
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1372 ; 5 uses
  store i32 0, ptr %i.d, align 4, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4912 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1280) %i.b, i8 0, i64 1280, i1 false)
  %i.f = load i32, ptr %i.e, align 8, !tbaa !107
  store i32 0, ptr %i.e, align 8, !tbaa !107
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1268
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1269
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1380 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.s, %bb.a
  %i.s = phi i32 [ %i.db, %bb.s ], [ 0, %bb.a ]
  %i.t = phi i32 [ %i.de, %bb.s ], [ 0, %bb.a ]   ; 2 uses
  %i.u = load i32, ptr %i.i, align 4, !tbaa !82
  %i.v = load i32, ptr %i.j, align 8, !tbaa !77
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr %i.g, align 8, !tbaa !65
  %i.y = icmp ult i32 %i.x, 653286
  %.not = icmp ult i32 %i.t, %i.f
  %or.cond = select i1 %i.y, i1 %.not, i1 false
  br i1 %or.cond, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.z = load i8, ptr %i.k, align 8, !tbaa !66, !range !51, !noundef !52
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %i.h, align 8, !tbaa !72
  %i.ac = load i32, ptr %i.l, align 8, !tbaa !73
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i32, ptr %i.m, align 8, !tbaa !108
  %.not13 = icmp ult i32 %i.s, %i.ae
  br i1 %.not13, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.af = load i8, ptr %i.n, align 4, !tbaa !33, !range !51, !noundef !52
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder10GetMatchesEv(ptr noundef nonnull align 8 dereferenceable(39764) %0)
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !55  ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !67 ; 2 uses
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit.thread, label %bb.i

_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit.thread: ; preds = %bb.h
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.al = load i32, ptr %i.d, align 4, !tbaa !106 ; 2 uses
  %i.am = add i32 %i.al, 1                        ; 2 uses
  store i32 %i.am, ptr %i.d, align 4, !tbaa !106
  %i.an = zext i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.an
  br label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.ap = zext i16 %i.ai to i64
  %i.aq = getelementptr [2 x i8], ptr %i.ah, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -2
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !67
  %i.at = zext i16 %i.as to i32                   ; 3 uses
  %i.au = load i16, ptr %i.aq, align 2, !tbaa !67
  %i.av = zext i16 %i.au to i32
  store i32 %i.av, ptr %i.a, align 4, !tbaa !4
  %i.aw = add nsw i32 %i.at, -1                   ; 4 uses
  %i.ax = load i8, ptr %i.k, align 8, !tbaa !66, !range !51, !noundef !52
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = icmp eq i32 %i.aw, 0
  %or.cond.not.i.i = or i1 %i.az, %i.ay
  br i1 %or.cond.not.i.i, label %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load i8, ptr %i.p, align 1, !tbaa !34, !range !51, !noundef !52
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @Bt3Zip_MatchFinder_Skip(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.aw)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @Hc3Zip_MatchFinder_Skip(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.aw)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bc = load i32, ptr %i.q, align 4, !tbaa !76
  %i.bd = add i32 %i.bc, %i.aw
  store i32 %i.bd, ptr %i.q, align 4, !tbaa !76
  br label %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit

bb.n:                                             ; preds = %bb.g
  %i.be = call noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder10GetOptimalERj(ptr noundef nonnull align 8 dereferenceable(39764) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit

_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit: ; preds = %bb.m, %bb.i, %bb.n
  %.0 = phi i32 [ %i.be, %bb.n ], [ %i.at, %bb.m ], [ %i.at, %bb.i ] ; 4 uses
  %i.bf = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.bg = load i32, ptr %i.d, align 4, !tbaa !106 ; 2 uses
  %i.bh = add i32 %i.bg, 1                        ; 3 uses
  store i32 %i.bh, ptr %i.d, align 4, !tbaa !106
  %i.bi = zext i32 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bi ; 3 uses
  %i.bk = icmp ugt i32 %.0, 2
  br i1 %i.bk, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit
  %i.bl = add i32 %.0, -3                         ; 2 uses
  %i.bm = trunc i32 %i.bl to i16
  store i16 %i.bm, ptr %i.bj, align 2, !tbaa !109
  %i.bn = zext i32 %i.bl to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !62
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1028 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !4
  %i.bv = load i32, ptr %i.a, align 4, !tbaa !4   ; 4 uses
  %i.bw = trunc i32 %i.bv to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !111
  %i.by = icmp ult i32 %i.bv, 512
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bz = zext nneg i32 %i.bv to i64
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !62
  %i.cc = zext i8 %i.cb to i64
  br label %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit

bb.q:                                             ; preds = %bb.o
  %i.cd = lshr i32 %i.bv, 8
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !62
  %i.ch = zext i8 %i.cg to i64
  %i.ci = add nuw nsw i64 %i.ch, 16
  br label %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit

_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit: ; preds = %bb.p, %bb.q
  %.0.i14 = phi i64 [ %i.cc, %bb.p ], [ %i.ci, %bb.q ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0.i14 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !4
  %.pre = load i32, ptr %i.q, align 4, !tbaa !76
  br label %bb.s

bb.r:                                             ; preds = %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit.thread, %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit
  %i.cm = phi i32 [ %i.am, %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit.thread ], [ %i.bh, %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit ]
  %i.cn = phi ptr [ %i.ao, %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit.thread ], [ %i.bj, %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit ] ; 2 uses
  %.017 = phi i32 [ 1, %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit.thread ], [ %.0, %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit ]
  %i.co = load ptr, ptr %0, align 8, !tbaa !74
  %i.cp = load i32, ptr %i.q, align 4, !tbaa !76  ; 2 uses
  %i.cq = sub i32 0, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds i8, ptr %i.co, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !62  ; 2 uses
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !4
  store i16 -32768, ptr %i.cn, align 2, !tbaa !109
  %i.cy = zext i8 %i.ct to i16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  store i16 %i.cy, ptr %i.cz, align 2, !tbaa !111
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit
  %i.da = phi i32 [ %i.cp, %bb.r ], [ %.pre, %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit ]
end_hunk_0
