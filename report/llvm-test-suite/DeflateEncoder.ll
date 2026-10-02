Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/DeflateEncoder?download=true
inline.NumInlined: 97
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj:bb.a
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12
  %i.r = mul i32 %i.q, %i.o
  %i.s = add i32 %i.r, %.089                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !126

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
  %wide.load24 = load <4 x i32>, ptr %i.e, align 4, !tbaa !12
  %wide.load25 = load <4 x i32>, ptr %i.f, align 4, !tbaa !12
  %i.g = mul <4 x i32> %wide.load24, %i.c
  %i.h = mul <4 x i32> %wide.load25, %i.d
  %i.i = add <4 x i32> %i.g, %vec.phi             ; 2 uses
  %i.j = add <4 x i32> %i.h, %vec.phi22           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !127

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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12
  %i.r = mul i32 %i.q, %i.o
  %i.s = add i32 %i.r, %.089.i                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit, label %.lr.ph.i, !llvm.loop !128

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
  %n.vec29 = and i64 %wide.trip.count.i9, 4294967288 ; 3 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next38, %vector.body30 ] ; 3 uses
  %vec.phi32 = phi <4 x i32> [ zeroinitializer, %vector.ph28 ], [ %i.ae, %vector.body30 ]
  %vec.phi33 = phi <4 x i32> [ zeroinitializer, %vector.ph28 ], [ %i.af, %vector.body30 ]
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 %index31 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %wide.load34 = load <4 x i8>, ptr %i.w, align 1, !tbaa !62
  %wide.load35 = load <4 x i8>, ptr %i.x, align 1, !tbaa !62
  %i.y = zext <4 x i8> %wide.load34 to <4 x i32>
  %i.z = zext <4 x i8> %wide.load35 to <4 x i32>
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index31 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load36 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !12
  %wide.load37 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !12
  %i.ac = mul <4 x i32> %wide.load36, %i.y
  %i.ad = mul <4 x i32> %wide.load37, %i.z
  %i.ae = add <4 x i32> %i.ac, %vec.phi32         ; 2 uses
  %i.af = add <4 x i32> %i.ad, %vec.phi33         ; 2 uses
  %index.next38 = add nuw i64 %index31, 8         ; 2 uses
  %i.ag = icmp eq i64 %index.next38, %n.vec29
  br i1 %i.ag, label %middle.block39, label %vector.body30, !llvm.loop !129

middle.block39:                                   ; preds = %vector.body30
  %bin.rdx40 = add <4 x i32> %i.af, %i.ae
  %i.ah = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx40) ; 2 uses
  %cmp.n41 = icmp eq i64 %n.vec29, %wide.trip.count.i9
  br i1 %cmp.n41, label %_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit16, label %.lr.ph.i10.preheader

.lr.ph.i10.preheader:                             ; preds = %.lr.ph.preheader.i8, %middle.block39
  %indvars.iv.i11.ph = phi i64 [ 0, %.lr.ph.preheader.i8 ], [ %n.vec29, %middle.block39 ]
  %.089.i12.ph = phi i32 [ 0, %.lr.ph.preheader.i8 ], [ %i.ah, %middle.block39 ]
  br label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %.lr.ph.i10.preheader, %.lr.ph.i10
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i13, %.lr.ph.i10 ], [ %indvars.iv.i11.ph, %.lr.ph.i10.preheader ] ; 3 uses
  %.089.i12 = phi i32 [ %i.ao, %.lr.ph.i10 ], [ %.089.i12.ph, %.lr.ph.i10.preheader ]
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i11
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !62
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i11
  %i.am = load i32, ptr %i.al, align 4, !tbaa !12
  %i.an = mul i32 %i.am, %i.ak
  %i.ao = add i32 %i.an, %.089.i12                ; 2 uses
  %indvars.iv.next.i13 = add nuw nsw i64 %indvars.iv.i11, 1 ; 2 uses
  %exitcond.not.i14 = icmp eq i64 %indvars.iv.next.i13, %wide.trip.count.i9
  br i1 %exitcond.not.i14, label %_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit16, label %.lr.ph.i10, !llvm.loop !130

_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit16: ; preds = %.lr.ph.i10, %middle.block39, %_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit
  %.08.lcssa.i15 = phi i32 [ 0, %_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit ], [ %i.ah, %middle.block39 ], [ %i.ao, %.lr.ph.i10 ]
  %i.ap = add i32 %.08.lcssa.i15, %.08.lcssa.i
  ret i32 %i.ap
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK9NCompress8NDeflate8NEncoder6CCoder15GetLzBlockPriceEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(39764) %0) local_unnamed_addr #12 align 2 {
vector.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 6 uses
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
  %wide.load21 = load <4 x i32>, ptr %i.i, align 8, !tbaa !12
  %wide.load22 = load <4 x i32>, ptr %i.j, align 8, !tbaa !12
  %i.k = mul <4 x i32> %wide.load21, %i.g
  %i.l = mul <4 x i32> %wide.load22, %i.h
  %i.m = add <4 x i32> %i.k, %vec.phi             ; 2 uses
  %i.n = add <4 x i32> %i.l, %vec.phi19           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, 288
  br i1 %i.o, label %_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit.i, label %vector.body, !llvm.loop !131

_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit.i: ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.n, %i.m
  %i.p = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3284
  %i.r = load i8, ptr %i.d, align 1, !tbaa !62
  %i.s = load i32, ptr %i.q, align 4, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3288
  %i.w = load i32, ptr %i.v, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !62
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3292
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3296
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 27
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2228
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3424 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3428
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3436
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3440
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3448
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 3452
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2244
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3504
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2252
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3520
  %i.at = load i32, ptr %i.ah, align 8, !tbaa !12
  %i.au = load i32, ptr %i.ai, align 4, !tbaa !12
  %1 = load i32, ptr %i.aj, align 8, !tbaa !12
  %2 = load i32, ptr %i.ak, align 4, !tbaa !12
  %i.av = add i32 %1, %2
  %i.aw = shl i32 %i.av, 1
  %3 = load i32, ptr %i.am, align 8, !tbaa !12
  %4 = load <16 x i8>, ptr %i.ag, align 4, !tbaa !62
  %5 = load <16 x i32>, ptr %i.ah, align 8, !tbaa !12 ; 5 uses
  %6 = load i32, ptr %i.an, align 4, !tbaa !12
  %7 = add i32 %3, %6
  %8 = shl i32 %7, 2
  %9 = load <4 x i32>, ptr %i.ap, align 8, !tbaa !12 ; 2 uses
  %10 = load <4 x i32>, ptr %i.aq, align 8, !tbaa !12 ; 2 uses
  %i.ax = load <2 x i32>, ptr %i.al, align 8, !tbaa !12
  %11 = shufflevector <16 x i32> %5, <16 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %12 = shufflevector <4 x i32> %10, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = shufflevector <16 x i32> %11, <16 x i32> %12, <16 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19>
  %14 = shufflevector <4 x i32> %9, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = shufflevector <16 x i32> %13, <16 x i32> %14, <16 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15>
  %16 = shufflevector <16 x i32> %5, <16 x i32> poison, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %17 = shufflevector <16 x i32> %15, <16 x i32> %16, <16 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ay = shufflevector <2 x i32> %i.ax, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %18 = shufflevector <16 x i32> %i.ay, <16 x i32> %17, <16 x i32> <i32 0, i32 1, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.az = mul <16 x i32> %18, <i32 3, i32 3, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12>
  %19 = extractelement <16 x i32> %5, i64 14
  %20 = extractelement <16 x i32> %5, i64 15
  %21 = add i32 %19, %20
  %22 = shl i32 %21, 3
  %23 = zext <16 x i8> %4 to <16 x i32>
  %24 = mul <16 x i32> %5, %23
  %25 = load <16 x i8>, ptr %i.ao, align 4
  %26 = load <4 x i8>, ptr %i.ar, align 4, !tbaa !62
  %27 = load <4 x i32>, ptr %i.as, align 8, !tbaa !12
  %28 = shufflevector <4 x i32> %9, <4 x i32> %10, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %29 = shufflevector <4 x i32> %27, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %30 = shufflevector <8 x i32> %28, <8 x i32> %29, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %31 = shufflevector <4 x i8> %26, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %32 = shufflevector <16 x i8> %31, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 13, i8 13, i8 14, i8 14>, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 28, i32 29, i32 30, i32 31>
  %33 = shufflevector <16 x i8> %25, <16 x i8> %32, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %34 = zext <16 x i8> %33 to <16 x i32>
  %i.ba = mul <16 x i32> %30, %34
  %i.bb = zext i8 %i.r to i32
  %i.bc = mul i32 %i.s, %i.bb
  %i.bd = zext i8 %i.u to i32
  %i.be = mul i32 %i.w, %i.bd
  %i.bf = zext i8 %i.y to i32
  %i.bg = mul i32 %i.aa, %i.bf
  %i.bh = load <16 x i8>, ptr %i.ab, align 1, !tbaa !62
  %i.bi = load <8 x i8>, ptr %i.ad, align 1, !tbaa !62
  %i.bj = load <4 x i8>, ptr %i.ae, align 1, !tbaa !62
  %i.bk = load <4 x i8>, ptr %i.af, align 8, !tbaa !62
  %i.bl = load <32 x i32>, ptr %i.ac, align 8, !tbaa !12
  %i.bm = shufflevector <4 x i8> %i.bj, <4 x i8> %i.bk, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bn = shufflevector <16 x i8> %i.bh, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bo = shufflevector <32 x i8> %i.bn, <32 x i8> %i.bm, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.bp = shufflevector <8 x i8> %i.bi, <8 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bq = shufflevector <32 x i8> %i.bo, <32 x i8> %i.bp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.br = zext <32 x i8> %i.bq to <32 x i32>
  %i.bs = mul <32 x i32> %i.bl, %i.br             ; 2 uses
  %i.bt = shufflevector <32 x i32> %i.bs, <32 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bu = add <16 x i32> %i.bt, %24
  %i.bv = add <16 x i32> %i.bu, %i.az
  %35 = shufflevector <16 x i32> %i.bv, <16 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %36 = shufflevector <32 x i32> %35, <32 x i32> %i.bs, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %37 = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %36)
  %i.bw = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ba)
  %op.rdx48 = add i32 %i.bw, %i.be
  %op.rdx = add i32 %i.bc, %i.bg
  %op.rdx25 = add i32 %i.aw, %8
  %op.rdx26 = add i32 %22, %i.au
  %op.rdx27 = add i32 %i.at, %i.p
  %op.rdx28 = add i32 %op.rdx48, %op.rdx
  %op.rdx29 = add i32 %op.rdx25, %op.rdx26
  %op.rdx30 = add i32 %op.rdx27, %37
  %op.rdx31 = add i32 %op.rdx28, %op.rdx29
  %op.rdx32 = add i32 %op.rdx31, %op.rdx30
  ret i32 %op.rdx32
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv(ptr noundef nonnull align 8 dereferenceable(39764) initializes((1372, 1376), (2256, 3536)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3408
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1372 ; 5 uses
  store i32 0, ptr %i.d, align 4, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4912 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1280) %i.b, i8 0, i64 1280, i1 false)
  %i.f = load i32, ptr %i.e, align 8, !tbaa !83
  store i32 0, ptr %i.e, align 8, !tbaa !83
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
  %i.u = load i32, ptr %i.i, align 4, !tbaa !77
  %i.v = load i32, ptr %i.j, align 8, !tbaa !73
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr %i.g, align 8, !tbaa !64
  %i.y = icmp ult i32 %i.x, 653286
  %.not = icmp ult i32 %i.t, %i.f
  %or.cond = select i1 %i.y, i1 %.not, i1 false
  br i1 %or.cond, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.z = load i8, ptr %i.k, align 8, !tbaa !65, !range !54, !noundef !55
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %i.h, align 8, !tbaa !69
  %i.ac = load i32, ptr %i.l, align 8, !tbaa !70
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i32, ptr %i.m, align 8, !tbaa !84
  %.not13 = icmp ult i32 %i.s, %i.ae
  br i1 %.not13, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.af = load i8, ptr %i.n, align 4, !tbaa !37, !range !54, !noundef !55
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder10GetMatchesEv(ptr noundef nonnull align 8 dereferenceable(39764) %0)
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !58  ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !66 ; 2 uses
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit.thread, label %bb.i

_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit.thread: ; preds = %bb.h
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !52
  %i.al = load i32, ptr %i.d, align 4, !tbaa !82  ; 2 uses
  %i.am = add i32 %i.al, 1                        ; 2 uses
  store i32 %i.am, ptr %i.d, align 4, !tbaa !82
  %i.an = zext i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.an
  br label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.ap = zext i16 %i.ai to i64
  %i.aq = getelementptr [2 x i8], ptr %i.ah, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -2
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !66
  %i.at = zext i16 %i.as to i32                   ; 3 uses
  %i.au = load i16, ptr %i.aq, align 2, !tbaa !66
  %i.av = zext i16 %i.au to i32
  store i32 %i.av, ptr %i.a, align 4, !tbaa !12
  %i.aw = add nsw i32 %i.at, -1                   ; 4 uses
  %i.ax = load i8, ptr %i.k, align 8, !tbaa !65, !range !54, !noundef !55
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = icmp eq i32 %i.aw, 0
  %or.cond.not.i.i = or i1 %i.az, %i.ay
  br i1 %or.cond.not.i.i, label %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load i8, ptr %i.p, align 1, !tbaa !38, !range !54, !noundef !55
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @Bt3Zip_MatchFinder_Skip(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.aw)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @Hc3Zip_MatchFinder_Skip(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.aw)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bc = load i32, ptr %i.q, align 4, !tbaa !72
  %i.bd = add i32 %i.bc, %i.aw
  store i32 %i.bd, ptr %i.q, align 4, !tbaa !72
  br label %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit

bb.n:                                             ; preds = %bb.g
  %i.be = call noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder10GetOptimalERj(ptr noundef nonnull align 8 dereferenceable(39764) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit

_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit: ; preds = %bb.m, %bb.i, %bb.n
  %.0 = phi i32 [ %i.be, %bb.n ], [ %i.at, %bb.m ], [ %i.at, %bb.i ] ; 4 uses
  %i.bf = load ptr, ptr %i.r, align 8, !tbaa !52
  %i.bg = load i32, ptr %i.d, align 4, !tbaa !82  ; 2 uses
  %i.bh = add i32 %i.bg, 1                        ; 3 uses
  store i32 %i.bh, ptr %i.d, align 4, !tbaa !82
  %i.bi = zext i32 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bi ; 3 uses
  %i.bk = icmp ugt i32 %.0, 2
  br i1 %i.bk, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit
  %i.bl = add i32 %.0, -3                         ; 2 uses
  %i.bm = trunc i32 %i.bl to i16
  store i16 %i.bm, ptr %i.bj, align 2, !tbaa !86
  %i.bn = zext i32 %i.bl to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !62
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1028 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !12
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !12
  %i.bv = load i32, ptr %i.a, align 4, !tbaa !12  ; 4 uses
  %i.bw = trunc i32 %i.bv to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !87
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
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !12
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !12
  %.pre = load i32, ptr %i.q, align 4, !tbaa !72
  br label %bb.s

bb.r:                                             ; preds = %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit.thread, %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit
  %i.cm = phi i32 [ %i.am, %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit.thread ], [ %i.bh, %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit ]
  %i.cn = phi ptr [ %i.ao, %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit.thread ], [ %i.bj, %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit ] ; 2 uses
  %.017 = phi i32 [ 1, %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit.thread ], [ %.0, %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit ]
  %i.co = load ptr, ptr %0, align 8, !tbaa !71
  %i.cp = load i32, ptr %i.q, align 4, !tbaa !72  ; 2 uses
  %i.cq = sub i32 0, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds i8, ptr %i.co, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !62  ; 2 uses
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !12
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !12
  store i16 -32768, ptr %i.cn, align 2, !tbaa !86
  %i.cy = zext i8 %i.ct to i16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  store i16 %i.cy, ptr %i.cz, align 2, !tbaa !87
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit
  %i.da = phi i32 [ %i.cp, %bb.r ], [ %.pre, %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit ]
end_hunk_0
begin_hunk_1_@_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv:bb.a
  %i.ct = tail call noundef i32 %i.cs(ptr noundef nonnull align 8 dereferenceable(39788) %0) ; 0 uses
  br label %_ZeqRK4GUIDS1_.exit23.thread

_ZeqRK4GUIDS1_.exit23.thread:                     ; preds = %_ZeqRK4GUIDS1_.exit23.thread.sink.split, %bb.aa, %bb.v, %bb.z, %bb.u, %bb.ab, %bb.t, %bb.x, %bb.s, %bb.ac, %bb.r, %bb.y, %bb.q, %bb.p, %bb.w, %_ZeqRK4GUIDS1_.exit.thread, %_ZeqRK4GUIDS1_.exit23
  %.0 = phi i32 [ -2147467262, %bb.v ], [ -2147467262, %bb.aa ], [ -2147467262, %_ZeqRK4GUIDS1_.exit23 ], [ -2147467262, %_ZeqRK4GUIDS1_.exit.thread ], [ -2147467262, %bb.w ], [ -2147467262, %bb.p ], [ -2147467262, %bb.q ], [ -2147467262, %bb.y ], [ -2147467262, %bb.r ], [ -2147467262, %bb.ac ], [ -2147467262, %bb.s ], [ -2147467262, %bb.x ], [ -2147467262, %bb.t ], [ -2147467262, %bb.ab ], [ -2147467262, %bb.u ], [ -2147467262, %bb.z ], [ 0, %_ZeqRK4GUIDS1_.exit23.thread.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv(ptr noundef nonnull align 8 dereferenceable(39788) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !106
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv(ptr noundef nonnull align 8 dereferenceable(39788) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !106
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(39788) %0) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D2Ev(ptr noundef nonnull align 8 dereferenceable(39788) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev(ptr noundef nonnull align 8 dead_on_return(39764) dereferenceable(39764) %i.a) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev(ptr noundef nonnull align 8 dereferenceable(39788) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev(ptr noundef nonnull align 8 dead_on_return(39764) dereferenceable(39764) %i.a) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 39792) #25
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = tail call noundef i32 @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(39788) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2)
  ret i32 %i.b
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv(ptr noundef %0) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !106
  ret i32 %i.c
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv(ptr noundef %0) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !106
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(39788) %i.d) #23, !inline_history !166
  br label %_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv.exit

_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv.exit: ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D1Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev(ptr noundef nonnull align 8 dead_on_return(39764) dereferenceable(39764) %i.a) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev(ptr noundef nonnull align 8 dead_on_return(39764) dereferenceable(39764) %i.b) #23
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(39788) %i.a, i64 noundef 39792) #25
  ret void
}

declare void @_ZN10COutBuffer4FreeEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN9NCompress8NDeflate8NEncoderL7SzAllocEPvm(ptr nofree readnone captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @MyAlloc(i64 noundef %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN9NCompress8NDeflate8NEncoderL6SzFreeEPvS2_(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  tail call void @MyFree(ptr noundef %1)
  ret void
}

declare noundef zeroext i1 @_ZN10COutBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef) local_unnamed_addr #1

declare void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #1

declare void @_ZN10COutBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare noundef i64 @_ZNK10COutBuffer16GetProcessedSizeEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare noundef i32 @_ZN10COutBuffer5FlushEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_DeflateEncoder.cpp() #19 section ".text.startup" {
bb.a:
  store <8 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, align 16
  store <4 x i16> <i16 2056, i16 2313, i16 2570, i16 2827>, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 8), align 8
  store <4 x i32> <i32 202116108, i32 218959117, i32 235802126, i32 252645135>, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 16), align 16
  store i64 1157442765409226768, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 32), align 16
  store i64 1229782938247303441, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 40), align 8
  store i64 1302123111085380114, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 48), align 16
  store i64 1374463283923456787, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 56), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 64), i8 20, i64 16, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 80), i8 21, i64 16, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 96), i8 22, i64 16, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 112), i8 23, i64 16, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 128), i8 24, i64 32, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 160), i8 25, i64 32, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 192), i8 26, i64 32, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 224), i8 27, i64 32, i1 false), !tbaa !62
  store i8 28, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 255), align 1
  store <4 x i8> <i8 0, i8 1, i8 2, i8 3>, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, align 16, !tbaa !62
  store i16 1028, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 4), align 4
  store i16 1285, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 6), align 2
  store i32 101058054, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 8), align 8
  store i32 117901063, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 12), align 4
  store i64 578721382704613384, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 16), align 16
  store i64 651061555542690057, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 24), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 32), i8 10, i64 16, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 48), i8 11, i64 16, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 64), i8 12, i64 32, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 96), i8 13, i64 32, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 128), i8 14, i64 64, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 192), i8 15, i64 64, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 256), i8 16, i64 128, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 384), i8 17, i64 128, i1 false), !tbaa !62
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bitreverse.v4i16(<4 x i16>) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !63}
!1 = distinct !{!1, !63}
!2 = distinct !{!2, !63}
!3 = distinct !{!3, !63, !81}
!4 = distinct !{null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !10, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"p1 _ZTS20ISequentialOutStream", !13, i64 0}
!16 = !{!"_ZTS9CMyComPtrI20ISequentialOutStreamE", !15, i64 0}
!17 = !{!"long long", !10, i64 0}
!18 = !{!"bool", !10, i64 0}
!19 = !{!"_ZTS10COutBuffer", !14, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !16, i64 24, !17, i64 32, !14, i64 40, !18, i64 48}
!20 = !{!19, !14, i64 0}
!21 = !{!19, !11, i64 8}
!22 = !{!16, !15, i64 0}
!23 = !{!"p1 int", !13, i64 0}
!24 = !{!"long", !10, i64 0}
!25 = !{!"_ZTS13_CMatchFinder", !14, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !23, i64 40, !23, i64 48, !11, i64 56, !11, i64 60, !14, i64 64, !13, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !24, i64 104, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !10, i64 140}
!26 = !{!"_ZTS12CBitlEncoder", !19, i64 0, !11, i64 56, !10, i64 60}
!27 = !{!"_ZTS12ISeqInStream", !13, i64 0}
!28 = !{!"p1 _ZTS19ISequentialInStream", !13, i64 0}
!29 = !{!"_ZTS9CMyComPtrI19ISequentialInStreamE", !28, i64 0}
!30 = !{!"_ZTSN9NCompress8NDeflate8NEncoder13_CSeqInStreamE", !27, i64 0, !29, i64 8}
!31 = !{!"p1 _ZTSN9NCompress8NDeflate8NEncoder10CCodeValueE", !13, i64 0}
!32 = !{!"p1 short", !13, i64 0}
!33 = !{!"_ZTSN9NCompress8NDeflate7CLevelsE", !10, i64 0, !10, i64 288}
!34 = !{!"p1 _ZTSN9NCompress8NDeflate8NEncoder7CTablesE", !13, i64 0}
!35 = !{!"_ZTSN9NCompress8NDeflate8NEncoder6CCoderE", !25, i64 0, !26, i64 1168, !30, i64 1232, !31, i64 1248, !32, i64 1256, !11, i64 1264, !18, i64 1268, !18, i64 1269, !32, i64 1272, !32, i64 1280, !11, i64 1288, !11, i64 1292, !11, i64 1296, !18, i64 1300, !18, i64 1301, !11, i64 1304, !11, i64 1308, !11, i64 1312, !14, i64 1320, !14, i64 1328, !18, i64 1336, !18, i64 1337, !10, i64 1338, !11, i64 1360, !11, i64 1364, !11, i64 1368, !11, i64 1372, !18, i64 1376, !11, i64 1380, !11, i64 1384, !11, i64 1388, !10, i64 1392, !10, i64 1648, !10, i64 1904, !33, i64 1936, !10, i64 2256, !10, i64 3408, !10, i64 3536, !10, i64 4688, !10, i64 4816, !10, i64 4892, !11, i64 4912, !34, i64 4920, !10, i64 4928, !11, i64 39760}
!36 = !{!35, !11, i64 1264}
!37 = !{!35, !18, i64 1268}
!38 = !{!35, !18, i64 1269}
!39 = !{!35, !11, i64 1292}
!40 = !{!35, !11, i64 1296}
!41 = !{!35, !18, i64 1336}
!42 = !{!35, !18, i64 1337}
!43 = !{!35, !34, i64 4920}
!44 = !{!35, !11, i64 39760}
!45 = !{!35, !11, i64 1312}
!46 = !{!35, !11, i64 1308}
!47 = !{!35, !14, i64 1320}
!48 = !{!35, !14, i64 1328}
!49 = !{!29, !28, i64 0}
!50 = !{!"vtable pointer", !9, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!35, !31, i64 1248}
!53 = !{!35, !18, i64 1301}
!54 = !{i8 0, i8 2}
!55 = !{}
!56 = !{!35, !32, i64 1272}
!57 = !{!35, !32, i64 1280}
!58 = !{!35, !32, i64 1256}
!59 = !{!"short", !10, i64 0}
!60 = !{!"_ZTS14tagPROPVARIANT", !59, i64 0, !59, i64 2, !59, i64 4, !59, i64 6, !10, i64 8}
!61 = !{!60, !59, i64 0}
!62 = !{!10, !10, i64 0}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!35, !11, i64 1288}
!65 = !{!35, !18, i64 1376}
!66 = !{!59, !59, i64 0}
!67 = !{!"llvm.loop.isvectorized", i32 1}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = !{!35, !11, i64 16}
!70 = !{!35, !11, i64 8}
!71 = !{!35, !14, i64 0}
!72 = !{!35, !11, i64 1380}
!73 = !{!35, !11, i64 1384}
!74 = !{!"_ZTSN9NCompress8NDeflate8NEncoder8COptimalE", !11, i64 0, !59, i64 4, !59, i64 6}
!75 = !{!74, !59, i64 4}
!76 = !{!74, !59, i64 6}
!77 = !{!35, !11, i64 1388}
!78 = !{!26, !11, i64 56}
!79 = !{!26, !10, i64 60}
!80 = !{!19, !11, i64 12}
!81 = !{!"llvm.loop.peeled.count", i32 1}
!82 = !{!35, !11, i64 1372}
!83 = !{!35, !11, i64 4912}
!84 = !{!35, !11, i64 1304}
!85 = !{!"_ZTSN9NCompress8NDeflate8NEncoder10CCodeValueE", !59, i64 0, !59, i64 2}
!86 = !{!85, !59, i64 0}
!87 = !{!85, !59, i64 2}
!88 = !{!"_ZTSN9NCompress8NDeflate8NEncoder7CTablesE", !33, i64 0, !18, i64 320, !18, i64 321, !18, i64 322, !11, i64 324, !11, i64 328}
!89 = !{!88, !11, i64 324}
!90 = !{!88, !11, i64 328}
!91 = !{i64 0, i64 288, !62, i64 288, i64 32, !62}
!92 = !{!35, !11, i64 1360}
!93 = !{!35, !11, i64 1364}
!94 = !{!35, !11, i64 1368}
!95 = !{!88, !18, i64 322}
!96 = !{!35, !18, i64 1300}
!97 = !{!88, !18, i64 321}
!98 = !{!88, !18, i64 320}
!99 = !{!"p1 _ZTSN9NCompress8NDeflate8NEncoder6CCoderE", !13, i64 0}
!100 = !{!"_ZTSN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserE", !99, i64 0}
!101 = !{!100, !99, i64 0}
!102 = !{!"_ZTS16CSystemException", !11, i64 0}
!103 = !{!102, !11, i64 0}
!104 = !{!13, !13, i64 0}
!105 = !{!"_ZTS13CMyUnknownImp", !11, i64 0}
!106 = !{!105, !11, i64 0}
!107 = !{!19, !14, i64 40}
!108 = !{!14, !14, i64 0}
!109 = !{!35, !11, i64 112}
!110 = !{!35, !11, i64 96}
!111 = !{!35, !11, i64 60}
!112 = distinct !{!112, !63, !67, !68}
!113 = distinct !{!113, !63, !68, !67}
!114 = distinct !{!114, !63}
!115 = distinct !{!115, !63}
!116 = distinct !{!116, !63}
!117 = distinct !{!117, !121}
!118 = distinct !{!118, !63}
!119 = distinct !{!119, !63}
!120 = !{!74, !11, i64 0}
!121 = !{!"llvm.loop.unroll.disable"}
!122 = distinct !{!122, !63, !124}
!123 = distinct !{!123, !63}
!124 = !{!"llvm.loop.unswitch.partial.disable"}
!125 = distinct !{!125, !63, !67, !68}
!126 = distinct !{!126, !63, !68, !67}
!127 = distinct !{!127, !63, !67, !68}
!128 = distinct !{!128, !63, !68, !67}
!129 = distinct !{!129, !63, !67, !68}
!130 = distinct !{!130, !63, !68, !67}
!131 = distinct !{!131, !63, !67, !68}
!132 = distinct !{!132, !63}
!133 = distinct !{!133, !63, !67}
!134 = distinct !{!134, !63}
!135 = !{!"branch_weights", i32 1, i32 1048575}
!136 = distinct !{!136, !"LVerDomain"}
!137 = distinct !{!137, !136}
!138 = distinct !{!138, !136}
!139 = distinct !{!139, !63, !67, !68}
!140 = distinct !{!140, !63, !67}
!141 = !{!137}
!142 = !{!138}
!143 = distinct !{!143, !63, !67, !68}
!144 = distinct !{!144, !63, !67, !68}
!145 = distinct !{!145, !63, !81}
!146 = distinct !{!146, !63, !81}
!147 = distinct !{!147, !63, !81}
!148 = distinct !{!148, !63, !81}
!149 = distinct !{!149, !63, !81}
!150 = distinct !{!150, !63, !81}
!151 = distinct !{!151, !63}
!152 = distinct !{!152, !63}
!153 = distinct !{!153, !63}
!154 = distinct !{!154, !63}
!155 = distinct !{!155, !63}
!156 = distinct !{!156, !63}
!157 = distinct !{!157, !63}
!158 = !{!24, !24, i64 0}
!159 = distinct !{null}
!160 = distinct !{!160, !63}
!161 = !{!17, !17, i64 0}
!162 = !{!35, !13, i64 1232}
end_hunk_1
