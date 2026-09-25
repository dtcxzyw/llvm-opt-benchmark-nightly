Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/xtc2?download=true
inline.NumInlined: 79
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 37
begin_hunk_0_@compute_magic_bits:.loopexit.2
  %.2.1.2 = select i1 %i.co, i32 %.2.244, i32 66
  %.2.2.2 = select i1 %i.cp, i32 %.2.1.2, i32 67
  %.2.3.2 = select i1 %i.cq, i32 %.2.2.2, i32 68
  %.2.4.2 = select i1 %i.cr, i32 %.2.3.2, i32 69
  %.2.5.2 = select i1 %i.cs, i32 %.2.4.2, i32 70
  %.2.6.2 = select i1 %i.ct, i32 %.2.5.2, i32 71
  %.2.7.2 = select i1 %i.cu, i32 %.2.6.2, i32 72
  %.2.8.2 = select i1 %i.cv, i32 %.2.7.2, i32 73
  %.2.9.2 = select i1 %i.cw, i32 %.2.8.2, i32 74
  %.2.10.2 = select i1 %i.cx, i32 %.2.9.2, i32 75
  %.2.11.2 = select i1 %i.cy, i32 %.2.10.2, i32 76
  %.2.12.2 = select i1 %i.cz, i32 %.2.11.2, i32 77
  %.2.13.2 = select i1 %i.da, i32 %.2.12.2, i32 78
  %.2.14.2 = select i1 %i.db, i32 %.2.13.2, i32 79
  %.2.15.2 = select i1 %i.dc, i32 %.2.14.2, i32 80
  %.2.16.2 = select i1 %i.dd, i32 %.2.15.2, i32 81
  %.2.17.2 = select i1 %i.de, i32 %.2.16.2, i32 82
  %.2.18.2 = select i1 %i.df, i32 %.2.17.2, i32 83
  %.2.19.2 = select i1 %i.dg, i32 %.2.18.2, i32 84
  %.2.20.2 = select i1 %i.dh, i32 %.2.19.2, i32 85
  %.2.21.2 = select i1 %i.di, i32 %.2.20.2, i32 86
  %.2.22.2 = select i1 %i.dj, i32 %.2.21.2, i32 87
  %.2.23.2 = select i1 %i.dk, i32 %.2.22.2, i32 88
  %.2.24.2 = select i1 %i.dl, i32 %.2.23.2, i32 89
  %.2.25.2 = select i1 %i.dm, i32 %.2.24.2, i32 90
  %.2.26.2 = select i1 %i.dn, i32 %.2.25.2, i32 91
  %.2.27.2 = select i1 %i.do, i32 %.2.26.2, i32 92
  %.2.28.2 = select i1 %i.dp, i32 %.2.27.2, i32 93
  %.2.29.2 = select i1 %i.dq, i32 %.2.28.2, i32 94
  %.2.30.2 = select i1 %i.dr, i32 %.2.29.2, i32 95
  %i.dv = extractelement <2 x i1> %i.dt, i64 0
  %.2.31.2 = select i1 %i.dv, i32 %.2.30.2, i32 96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.2.31.2
}

declare void @Ptngc_out8bits(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_large(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef %3, ptr nofree noundef nonnull readonly captures(none) %4, i32 noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %7) unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %3, 3
  br i1 %i.a, label %.preheader49, label %bb.b

.preheader49:                                     ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph.preheader, label %.loopexit50

.lr.ph.preheader:                                 ; preds = %.preheader49
  %wide.trip.count61 = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv58 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next59, %.lr.ph ] ; 2 uses
  tail call void @Ptngc_writebits(ptr noundef %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %7) #11
  %.idx72 = mul nuw nsw i64 %indvars.iv58, 12
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %.idx72
  tail call fastcc void @trajcoder_base_compress(ptr noundef nonnull readonly %i.c, i32 noundef 3, ptr noundef nonnull readonly %4, ptr noundef nonnull %6)
  tail call void @Ptngc_writemanybits(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %5, ptr noundef nonnull %7) #11
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61
  br i1 %exitcond62.not, label %.loopexit50, label %.lr.ph, !llvm.loop !52

bb.b:                                             ; preds = %bb.a
  tail call void @Ptngc_writebits(ptr noundef %0, i32 noundef 15, i32 noundef 5, ptr noundef nonnull %7) #11
  %i.d = add nsw i32 %3, -3
  tail call void @Ptngc_writebits(ptr noundef %0, i32 noundef %i.d, i32 noundef 4, ptr noundef nonnull %7) #11
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  tail call fastcc void @trajcoder_base_compress(ptr noundef nonnull readonly %i.e, i32 noundef 3, ptr noundef nonnull readonly %4, ptr noundef nonnull %6)
  tail call void @Ptngc_writemanybits(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %5, ptr noundef nonnull %7) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit50, label %bb.c, !llvm.loop !1

.loopexit50:                                      ; preds = %bb.c, %.lr.ph, %.preheader49
  %i.f = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %.not = icmp eq i32 %i.f, %3
  br i1 %.not, label %.loopexit, label %.preheader48

.preheader48:                                     ; preds = %.loopexit50
  %i.g = icmp sgt i32 %i.f, %3
  br i1 %i.g, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader48
  %i.h = sext i32 %3 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv68 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next69, %.preheader ] ; 3 uses
  %i.i = add nsw i64 %indvars.iv68, %i.h
  %i.j = mul nsw i64 %i.i, 3                      ; 3 uses
  %i.k = mul nuw nsw i64 %indvars.iv68, 3         ; 3 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %2, i64 %i.j
  %i.m = load i32, ptr %i.l, align 4, !tbaa !12
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.k
  store i32 %i.m, ptr %i.n, align 4, !tbaa !12
  %i.o = getelementptr [4 x i8], ptr %2, i64 %i.j
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.k
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %i.q, ptr %i.s, align 4, !tbaa !12
  %i.t = getelementptr [4 x i8], ptr %2, i64 %i.j
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !12
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.v, ptr %i.x, align 4, !tbaa !12
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %i.y = load i32, ptr %1, align 4, !tbaa !12     ; 2 uses
  %i.z = sub nsw i32 %i.y, %3
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next69, %i.aa
  br i1 %i.ab, label %.preheader, label %.loopexit, !llvm.loop !53

.loopexit:                                        ; preds = %.preheader, %.preheader48, %.loopexit50
  %i.ac = phi i32 [ %3, %.loopexit50 ], [ %i.f, %.preheader48 ], [ %i.y, %.preheader ]
  %i.ad = sub nsw i32 %i.ac, %3
  store i32 %i.ad, ptr %1, align 4, !tbaa !12
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare void @Ptngc_writebits(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @trajcoder_base_compress(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 3, 2147483647) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [19 x i32], align 16              ; 12 uses
  %i.b = alloca [19 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.a, i8 0, i64 76, i1 false)
  %i.c = load i32, ptr %0, align 4, !tbaa !12
  call void @Ptngc_largeint_add(i32 noundef %i.c, ptr noundef nonnull %i.a, i32 noundef 19) #11
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.d = trunc nuw nsw i64 %indvars.iv to i32
  %i.e = urem i32 %i.d, 3
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !12
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr @magic, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !12
  call void @Ptngc_largeint_mul(i32 noundef %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 19) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.a, ptr noundef nonnull align 16 dereferenceable(76) %i.b, i64 76, i1 false)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !12
  call void @Ptngc_largeint_add(i32 noundef %i.m, ptr noundef nonnull %i.a, i32 noundef 19) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !54

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.o = load i32, ptr %i.n, align 8, !tbaa !12
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %vector.body, label %bb.d

vector.body:                                      ; preds = %bb.c
  %wide.load = load <8 x i32>, ptr %i.a, align 16, !tbaa !12 ; 3 uses
  %i.p = lshr <8 x i32> %wide.load, splat (i32 8)
  %i.q = shufflevector <8 x i32> %wide.load, <8 x i32> %i.p, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.r = trunc <16 x i32> %i.q to <16 x i8>
  %i.s = shufflevector <8 x i32> %wide.load, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.t = lshr <16 x i32> %i.s, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 24, i32 24, i32 24, i32 24, i32 24, i32 24, i32 24, i32 24>
  %i.u = trunc <16 x i32> %i.t to <16 x i8>
  %interleaved.vec = shufflevector <16 x i8> %i.r, <16 x i8> %i.u, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i8> %interleaved.vec, ptr %3, align 1, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %wide.load.1 = load <8 x i32>, ptr %i.v, align 16, !tbaa !12 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.x = lshr <8 x i32> %wide.load.1, splat (i32 8)
  %i.y = shufflevector <8 x i32> %wide.load.1, <8 x i32> %i.x, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.z = trunc <16 x i32> %i.y to <16 x i8>
  %i.aa = shufflevector <8 x i32> %wide.load.1, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ab = lshr <16 x i32> %i.aa, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 24, i32 24, i32 24, i32 24, i32 24, i32 24, i32 24, i32 24>
  %i.ac = trunc <16 x i32> %i.ab to <16 x i8>
  %interleaved.vec.1 = shufflevector <16 x i8> %i.z, <16 x i8> %i.ac, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i8> %interleaved.vec.1, ptr %i.w, align 1, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %4 = load <4 x i8>, ptr %i.ad, align 16, !tbaa !12
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <4 x i8> %4, ptr %5, align 1, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %6 = load <4 x i8>, ptr %i.ae, align 4, !tbaa !12
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 68
  store <4 x i8> %6, ptr %7, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite = call i64 @fwrite(ptr nonnull @.str.3, i64 47, i64 1, ptr %i.af) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable
}

declare void @Ptngc_writemanybits(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @Ptngc_pack_flush(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef i32 @Ptngc_unpack_array_xtc2(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [19 x i32], align 16              ; 9 uses
  %i.b = alloca [19 x i32], align 16              ; 7 uses
  %i.c = alloca [19 x i32], align 16              ; 6 uses
  %i.d = alloca [19 x i32], align 16              ; 4 uses
  %i.e = alloca [19 x i32], align 16              ; 9 uses
  %i.f = alloca [19 x i32], align 16              ; 7 uses
  %i.g = alloca ptr, align 8                      ; 70 uses
  %i.h = alloca i32, align 4                      ; 88 uses
  %i.i = alloca [3 x i32], align 4                ; 6 uses
  %i.j = alloca [72 x i8], align 16               ; 12 uses
  %i.k = alloca [21 x i32], align 16              ; 13 uses
  %i.l = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  store ptr %1, ptr %i.g, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  %i.m = sdiv i32 %3, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #11
  %i.n = load i8, ptr %1, align 1, !tbaa !19
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.a
  %i.o = phi ptr [ %1, %bb.a ], [ %i.al, %bb.e ]  ; 2 uses
  %i.p = phi i32 [ 0, %bb.a ], [ %i.am, %bb.e ]
  %.in.i = phi i32 [ 32, %bb.a ], [ %i.y, %bb.e ]
  %.026.i = phi i8 [ %i.n, %bb.a ], [ %.1.i.1, %bb.e ] ; 2 uses
  %.01625.i = phi i32 [ 128, %bb.a ], [ %.117.i.1, %bb.e ] ; 2 uses
  %.01824.i = phi i32 [ 0, %bb.a ], [ %i.ag, %bb.e ]
  %i.q = zext i8 %.026.i to i32
  %i.r = and i32 %.01625.i, %i.q
  %.not725 = icmp eq i32 %i.r, 0
  %i.s = add nsw i32 %i.p, 1                      ; 2 uses
  store i32 %i.s, ptr %i.h, align 4, !tbaa !12
  %i.t = lshr i32 %.01625.i, 1                    ; 2 uses
  %.not21.i = icmp eq i32 %i.t, 0
  br i1 %.not21.i, label %bb.b, label %.lr.ph.i.1

bb.b:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 3 uses
  store ptr %i.u, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.v = load i8, ptr %i.u, align 1, !tbaa !19
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.b, %.lr.ph.i
  %i.w = phi ptr [ %i.o, %.lr.ph.i ], [ %i.u, %bb.b ] ; 2 uses
  %i.x = phi i32 [ %i.s, %.lr.ph.i ], [ 0, %bb.b ]
  %.117.i = phi i32 [ %i.t, %.lr.ph.i ], [ 128, %bb.b ] ; 2 uses
  %.1.i = phi i8 [ %.026.i, %.lr.ph.i ], [ %i.v, %bb.b ] ; 2 uses
  %i.y = add nsw i32 %.in.i, -2                   ; 3 uses
  %i.z = shl i32 %.01824.i, 2
  %i.aa = select i1 %.not725, i32 0, i32 2
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = zext i8 %.1.i to i32
  %i.ad = and i32 %.117.i, %i.ac
  %i.ae = icmp ne i32 %i.ad, 0                    ; 2 uses
  %i.af = zext i1 %i.ae to i32
  %i.ag = or disjoint i32 %i.ab, %i.af            ; 2 uses
  %i.ah = add nsw i32 %i.x, 1                     ; 2 uses
  store i32 %i.ah, ptr %i.h, align 4, !tbaa !12
  %i.ai = lshr i32 %.117.i, 1                     ; 2 uses
  %.not21.i.1 = icmp eq i32 %i.ai, 0
  br i1 %.not21.i.1, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph.i.1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 4 uses
  store ptr %i.aj, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %.not22.i.1 = icmp eq i32 %i.y, 0
  br i1 %.not22.i.1, label %readbits.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.1
  %i.al = phi ptr [ %i.w, %.lr.ph.i.1 ], [ %i.aj, %bb.d ] ; 2 uses
  %i.am = phi i32 [ %i.ah, %.lr.ph.i.1 ], [ 0, %bb.d ] ; 2 uses
  %.117.i.1 = phi i32 [ %i.ai, %.lr.ph.i.1 ], [ 128, %bb.d ]
  %.1.i.1 = phi i8 [ %.1.i, %.lr.ph.i.1 ], [ %i.ak, %bb.d ]
  %.not.i.1 = icmp eq i32 %i.y, 0
  br i1 %.not.i.1, label %readbits.exit, label %.lr.ph.i, !llvm.loop !2

readbits.exit:                                    ; preds = %bb.e, %bb.c
  %i.an = phi i32 [ 0, %bb.c ], [ %i.am, %bb.e ]  ; 2 uses
  %i.ao = phi ptr [ %i.aj, %bb.c ], [ %i.al, %bb.e ] ; 2 uses
  %i.ap = add nsw i32 %i.ag, 1
  %i.aq = sdiv i32 %i.ap, 2                       ; 2 uses
  %i.ar = sub nsw i32 0, %i.aq
  %spec.select.i = select i1 %i.ae, i32 %i.aq, i32 %i.ar ; 4 uses
  %i.as = load i8, ptr %i.ao, align 1, !tbaa !19
  %i.at = lshr i32 128, %i.an
  br label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %bb.i, %readbits.exit
  %i.au = phi ptr [ %i.ao, %readbits.exit ], [ %i.br, %bb.i ] ; 2 uses
  %i.av = phi i32 [ %i.an, %readbits.exit ], [ %i.bs, %bb.i ]
  %.in.i127 = phi i32 [ 32, %readbits.exit ], [ %i.be, %bb.i ]
  %.026.i128 = phi i8 [ %i.as, %readbits.exit ], [ %.1.i133.1, %bb.i ] ; 2 uses
  %.01625.i129 = phi i32 [ %i.at, %readbits.exit ], [ %.117.i132.1, %bb.i ] ; 2 uses
  %.01824.i130 = phi i32 [ 0, %readbits.exit ], [ %i.bm, %bb.i ]
  %i.aw = zext i8 %.026.i128 to i32
  %i.ax = and i32 %.01625.i129, %i.aw
  %.not726 = icmp eq i32 %i.ax, 0
  %i.ay = add nsw i32 %i.av, 1                    ; 2 uses
  store i32 %i.ay, ptr %i.h, align 4, !tbaa !12
  %i.az = lshr i32 %.01625.i129, 1                ; 2 uses
  %.not21.i131 = icmp eq i32 %i.az, 0
  br i1 %.not21.i131, label %bb.f, label %.lr.ph.i126.1

bb.f:                                             ; preds = %.lr.ph.i126
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 3 uses
  store ptr %i.ba, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !19
  br label %.lr.ph.i126.1

.lr.ph.i126.1:                                    ; preds = %bb.f, %.lr.ph.i126
  %i.bc = phi ptr [ %i.au, %.lr.ph.i126 ], [ %i.ba, %bb.f ] ; 2 uses
  %i.bd = phi i32 [ %i.ay, %.lr.ph.i126 ], [ 0, %bb.f ]
  %.117.i132 = phi i32 [ %i.az, %.lr.ph.i126 ], [ 128, %bb.f ] ; 2 uses
  %.1.i133 = phi i8 [ %.026.i128, %.lr.ph.i126 ], [ %i.bb, %bb.f ] ; 2 uses
  %i.be = add nsw i32 %.in.i127, -2               ; 3 uses
  %i.bf = shl i32 %.01824.i130, 2
  %i.bg = select i1 %.not726, i32 0, i32 2
  %i.bh = or disjoint i32 %i.bf, %i.bg
  %i.bi = zext i8 %.1.i133 to i32
  %i.bj = and i32 %.117.i132, %i.bi
  %i.bk = icmp ne i32 %i.bj, 0                    ; 2 uses
  %i.bl = zext i1 %i.bk to i32
  %i.bm = or disjoint i32 %i.bh, %i.bl            ; 2 uses
  %i.bn = add nsw i32 %i.bd, 1                    ; 2 uses
  store i32 %i.bn, ptr %i.h, align 4, !tbaa !12
  %i.bo = lshr i32 %.117.i132, 1                  ; 2 uses
  %.not21.i131.1 = icmp eq i32 %i.bo, 0
  br i1 %.not21.i131.1, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i126.1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 4 uses
  store ptr %i.bp, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %.not22.i135.1 = icmp eq i32 %i.be, 0
  br i1 %.not22.i135.1, label %readbits.exit136, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i126.1
  %i.br = phi ptr [ %i.bc, %.lr.ph.i126.1 ], [ %i.bp, %bb.h ] ; 2 uses
  %i.bs = phi i32 [ %i.bn, %.lr.ph.i126.1 ], [ 0, %bb.h ] ; 2 uses
  %.117.i132.1 = phi i32 [ %i.bo, %.lr.ph.i126.1 ], [ 128, %bb.h ]
  %.1.i133.1 = phi i8 [ %.1.i133, %.lr.ph.i126.1 ], [ %i.bq, %bb.h ]
  %.not.i134.1 = icmp eq i32 %i.be, 0
  br i1 %.not.i134.1, label %readbits.exit136, label %.lr.ph.i126, !llvm.loop !2

readbits.exit136:                                 ; preds = %bb.i, %bb.g
  %i.bt = phi i32 [ 0, %bb.g ], [ %i.bs, %bb.i ]  ; 2 uses
  %i.bu = phi ptr [ %i.bp, %bb.g ], [ %i.br, %bb.i ] ; 2 uses
  %i.bv = add nsw i32 %i.bm, 1
  %i.bw = sdiv i32 %i.bv, 2                       ; 2 uses
  %i.bx = sub nsw i32 0, %i.bw
  %spec.select.i137 = select i1 %i.bk, i32 %i.bw, i32 %i.bx ; 4 uses
  %i.by = load i8, ptr %i.bu, align 1, !tbaa !19
  %i.bz = lshr i32 128, %i.bt
  br label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %bb.m, %readbits.exit136
  %i.ca = phi ptr [ %i.bu, %readbits.exit136 ], [ %i.cx, %bb.m ] ; 2 uses
  %i.cb = phi i32 [ %i.bt, %readbits.exit136 ], [ %i.cy, %bb.m ]
  %.in.i139 = phi i32 [ 32, %readbits.exit136 ], [ %i.ck, %bb.m ]
  %.026.i140 = phi i8 [ %i.by, %readbits.exit136 ], [ %.1.i145.1, %bb.m ] ; 2 uses
  %.01625.i141 = phi i32 [ %i.bz, %readbits.exit136 ], [ %.117.i144.1, %bb.m ] ; 2 uses
  %.01824.i142 = phi i32 [ 0, %readbits.exit136 ], [ %i.cs, %bb.m ]
  %i.cc = zext i8 %.026.i140 to i32
  %i.cd = and i32 %.01625.i141, %i.cc
  %.not727 = icmp eq i32 %i.cd, 0
  %i.ce = add nsw i32 %i.cb, 1                    ; 2 uses
  store i32 %i.ce, ptr %i.h, align 4, !tbaa !12
  %i.cf = lshr i32 %.01625.i141, 1                ; 2 uses
  %.not21.i143 = icmp eq i32 %i.cf, 0
end_hunk_0
