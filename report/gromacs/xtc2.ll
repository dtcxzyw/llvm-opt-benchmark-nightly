Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/xtc2?download=true
inline.NumInlined: 79
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 37
begin_hunk_0_@compute_magic_bits:.loopexit.2
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
  %i.ae = load <4 x i8>, ptr %i.ad, align 16, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <4 x i8> %i.ae, ptr %i.af, align 1, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.ah = load <4 x i8>, ptr %i.ag, align 4, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 68
  store <4 x i8> %i.ah, ptr %i.ai, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite = call i64 @fwrite(ptr nonnull @.str.3, i64 47, i64 1, ptr %i.aj) #12 ; 0 uses
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
  %i.j = alloca [72 x i8], align 16               ; 13 uses
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
  br i1 %.not21.i143, label %bb.j, label %.lr.ph.i138.1

bb.j:                                             ; preds = %.lr.ph.i138
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 3 uses
  store ptr %i.cg, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !19
  br label %.lr.ph.i138.1

.lr.ph.i138.1:                                    ; preds = %bb.j, %.lr.ph.i138
  %i.ci = phi ptr [ %i.ca, %.lr.ph.i138 ], [ %i.cg, %bb.j ] ; 2 uses
  %i.cj = phi i32 [ %i.ce, %.lr.ph.i138 ], [ 0, %bb.j ]
  %.117.i144 = phi i32 [ %i.cf, %.lr.ph.i138 ], [ 128, %bb.j ] ; 2 uses
  %.1.i145 = phi i8 [ %.026.i140, %.lr.ph.i138 ], [ %i.ch, %bb.j ] ; 2 uses
  %i.ck = add nsw i32 %.in.i139, -2               ; 3 uses
  %i.cl = shl i32 %.01824.i142, 2
  %i.cm = select i1 %.not727, i32 0, i32 2
  %i.cn = or disjoint i32 %i.cl, %i.cm
  %i.co = zext i8 %.1.i145 to i32
  %i.cp = and i32 %.117.i144, %i.co
  %i.cq = icmp ne i32 %i.cp, 0                    ; 2 uses
  %i.cr = zext i1 %i.cq to i32
  %i.cs = or disjoint i32 %i.cn, %i.cr            ; 2 uses
  %i.ct = add nsw i32 %i.cj, 1                    ; 2 uses
  store i32 %i.ct, ptr %i.h, align 4, !tbaa !12
  %i.cu = lshr i32 %.117.i144, 1                  ; 2 uses
  %.not21.i143.1 = icmp eq i32 %i.cu, 0
  br i1 %.not21.i143.1, label %bb.k, label %bb.m
end_hunk_0
begin_hunk_1_@Ptngc_unpack_array_xtc2:bb.a
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !19
  %.pre460 = zext i8 %i.kt to i32
  br label %.lr.ph.i172.7

.lr.ph.i172.7:                                    ; preds = %.lr.ph.i172.6.thread, %bb.aa, %.lr.ph.i172.6
  %.not559613 = phi i1 [ %.not559, %bb.aa ], [ %.not559, %.lr.ph.i172.6 ], [ %.not559611, %.lr.ph.i172.6.thread ]
  %.pre-phi461 = phi i32 [ %.pre460, %bb.aa ], [ %.pre-phi457, %.lr.ph.i172.6 ], [ %.pre458, %.lr.ph.i172.6.thread ]
  %i.ku = phi ptr [ %i.ks, %bb.aa ], [ %i.kd, %.lr.ph.i172.6 ], [ %i.kn, %.lr.ph.i172.6.thread ] ; 2 uses
  %i.kv = phi i32 [ 0, %bb.aa ], [ %i.kq, %.lr.ph.i172.6 ], [ 1, %.lr.ph.i172.6.thread ]
  %.117.i178.6 = phi i32 [ 128, %bb.aa ], [ %i.kr, %.lr.ph.i172.6 ], [ 64, %.lr.ph.i172.6.thread ] ; 2 uses
  %i.kw = shl nuw nsw i32 %i.kl, 2
  %i.kx = select i1 %.not559613, i32 0, i32 2
  %i.ky = or disjoint i32 %i.kw, %i.kx
  %i.kz = and i32 %.117.i178.6, %.pre-phi461
  %i.la = icmp ne i32 %i.kz, 0
  %i.lb = zext i1 %i.la to i32
  %i.lc = or disjoint i32 %i.ky, %i.lb            ; 3 uses
  %i.ld = add nuw nsw i32 %i.kv, 1                ; 2 uses
  store i32 %i.ld, ptr %i.h, align 4, !tbaa !12
  %.not21.i177.7 = icmp samesign ult i32 %.117.i178.6, 2
  br i1 %.not21.i177.7, label %bb.ab, label %readbits.exit182

bb.ab:                                            ; preds = %.lr.ph.i172.7
  %i.le = getelementptr inbounds nuw i8, ptr %i.ku, i64 1 ; 2 uses
  store ptr %i.le, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  br label %readbits.exit182

readbits.exit182:                                 ; preds = %.lr.ph.i172.7, %bb.ab
  %i.lf = phi i32 [ 0, %bb.ab ], [ %i.ld, %.lr.ph.i172.7 ] ; 4 uses
  %i.lg = phi ptr [ %i.le, %bb.ab ], [ %i.ku, %.lr.ph.i172.7 ] ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.lc, ptr %i.lh, align 4, !tbaa !12
  %i.li = load i8, ptr %i.lg, align 1, !tbaa !19
  %i.lj = lshr i32 128, %i.lf
  %i.lk = zext i8 %i.li to i32                    ; 2 uses
  %i.ll = and i32 %i.lj, %i.lk
  %.not560 = icmp eq i32 %i.ll, 0
  %i.lm = add nuw nsw i32 %i.lf, 1
  %i.ln = lshr i32 64, %i.lf
  %.not21.i188 = icmp samesign ugt i32 %i.lf, 6
  br i1 %.not21.i188, label %bb.ac, label %.lr.ph.i183.1

bb.ac:                                            ; preds = %readbits.exit182
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 1 ; 3 uses
  store ptr %i.lo, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !19
  %.pre434 = zext i8 %i.lp to i32
  br label %.lr.ph.i183.1

.lr.ph.i183.1:                                    ; preds = %bb.ac, %readbits.exit182
  %.pre-phi435 = phi i32 [ %.pre434, %bb.ac ], [ %i.lk, %readbits.exit182 ] ; 3 uses
  %i.lq = phi ptr [ %i.lo, %bb.ac ], [ %i.lg, %readbits.exit182 ] ; 3 uses
  %i.lr = phi i32 [ 0, %bb.ac ], [ %i.lm, %readbits.exit182 ]
  %.117.i189 = phi i32 [ 128, %bb.ac ], [ %i.ln, %readbits.exit182 ] ; 3 uses
  %i.ls = select i1 %.not560, i32 0, i32 2
  %i.lt = and i32 %.117.i189, %.pre-phi435
  %i.lu = icmp ne i32 %i.lt, 0
  %i.lv = zext i1 %i.lu to i32
  %i.lw = or disjoint i32 %i.ls, %i.lv
  %i.lx = lshr i32 %.117.i189, 1                  ; 2 uses
  %.not21.i188.1 = icmp eq i32 %i.lx, 0
  br i1 %.not21.i188.1, label %.lr.ph.i183.2.thread, label %.lr.ph.i183.2

.lr.ph.i183.2.thread:                             ; preds = %.lr.ph.i183.1
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lq, i64 1 ; 3 uses
  store ptr %i.ly, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !19  ; 2 uses
  %.pre436 = zext i8 %i.lz to i32
  %.not561616 = icmp sgt i8 %i.lz, -1
  br label %.lr.ph.i183.3

.lr.ph.i183.2:                                    ; preds = %.lr.ph.i183.1
  %i.ma = and i32 %i.lx, %.pre-phi435
  %.not561 = icmp eq i32 %i.ma, 0                 ; 2 uses
  %i.mb = add nuw nsw i32 %i.lr, 2
  %i.mc = lshr i32 %.117.i189, 2                  ; 2 uses
  %.not21.i188.2 = icmp eq i32 %i.mc, 0
  br i1 %.not21.i188.2, label %bb.ad, label %.lr.ph.i183.3

bb.ad:                                            ; preds = %.lr.ph.i183.2
  %i.md = getelementptr inbounds nuw i8, ptr %i.lq, i64 1 ; 3 uses
  store ptr %i.md, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.me = load i8, ptr %i.md, align 1, !tbaa !19
  %.pre438 = zext i8 %i.me to i32
  br label %.lr.ph.i183.3

.lr.ph.i183.3:                                    ; preds = %.lr.ph.i183.2.thread, %bb.ad, %.lr.ph.i183.2
  %.not561618 = phi i1 [ %.not561, %bb.ad ], [ %.not561, %.lr.ph.i183.2 ], [ %.not561616, %.lr.ph.i183.2.thread ]
  %.pre-phi439 = phi i32 [ %.pre438, %bb.ad ], [ %.pre-phi435, %.lr.ph.i183.2 ], [ %.pre436, %.lr.ph.i183.2.thread ] ; 3 uses
  %i.mf = phi ptr [ %i.md, %bb.ad ], [ %i.lq, %.lr.ph.i183.2 ], [ %i.ly, %.lr.ph.i183.2.thread ] ; 3 uses
  %i.mg = phi i32 [ 0, %bb.ad ], [ %i.mb, %.lr.ph.i183.2 ], [ 1, %.lr.ph.i183.2.thread ]
  %.117.i189.2 = phi i32 [ 128, %bb.ad ], [ %i.mc, %.lr.ph.i183.2 ], [ 64, %.lr.ph.i183.2.thread ] ; 3 uses
  %i.mh = shl nuw nsw i32 %i.lw, 2
  %i.mi = select i1 %.not561618, i32 0, i32 2
  %i.mj = or disjoint i32 %i.mh, %i.mi
  %i.mk = and i32 %.117.i189.2, %.pre-phi439
  %i.ml = icmp ne i32 %i.mk, 0
  %i.mm = zext i1 %i.ml to i32
  %i.mn = or disjoint i32 %i.mj, %i.mm
  %i.mo = lshr i32 %.117.i189.2, 1                ; 2 uses
  %.not21.i188.3 = icmp eq i32 %i.mo, 0
  br i1 %.not21.i188.3, label %.lr.ph.i183.4.thread, label %.lr.ph.i183.4

.lr.ph.i183.4.thread:                             ; preds = %.lr.ph.i183.3
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mf, i64 1 ; 3 uses
  store ptr %i.mp, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !19  ; 2 uses
  %.pre440 = zext i8 %i.mq to i32
  %.not562621 = icmp sgt i8 %i.mq, -1
  br label %.lr.ph.i183.5

.lr.ph.i183.4:                                    ; preds = %.lr.ph.i183.3
  %i.mr = and i32 %i.mo, %.pre-phi439
  %.not562 = icmp eq i32 %i.mr, 0                 ; 2 uses
  %i.ms = add nuw nsw i32 %i.mg, 2
  %i.mt = lshr i32 %.117.i189.2, 2                ; 2 uses
  %.not21.i188.4 = icmp eq i32 %i.mt, 0
  br i1 %.not21.i188.4, label %bb.ae, label %.lr.ph.i183.5

bb.ae:                                            ; preds = %.lr.ph.i183.4
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mf, i64 1 ; 3 uses
  store ptr %i.mu, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !19
  %.pre442 = zext i8 %i.mv to i32
  br label %.lr.ph.i183.5

.lr.ph.i183.5:                                    ; preds = %.lr.ph.i183.4.thread, %bb.ae, %.lr.ph.i183.4
  %.not562623 = phi i1 [ %.not562, %bb.ae ], [ %.not562, %.lr.ph.i183.4 ], [ %.not562621, %.lr.ph.i183.4.thread ]
  %.pre-phi443 = phi i32 [ %.pre442, %bb.ae ], [ %.pre-phi439, %.lr.ph.i183.4 ], [ %.pre440, %.lr.ph.i183.4.thread ] ; 3 uses
  %i.mw = phi ptr [ %i.mu, %bb.ae ], [ %i.mf, %.lr.ph.i183.4 ], [ %i.mp, %.lr.ph.i183.4.thread ] ; 3 uses
  %i.mx = phi i32 [ 0, %bb.ae ], [ %i.ms, %.lr.ph.i183.4 ], [ 1, %.lr.ph.i183.4.thread ]
  %.117.i189.4 = phi i32 [ 128, %bb.ae ], [ %i.mt, %.lr.ph.i183.4 ], [ 64, %.lr.ph.i183.4.thread ] ; 3 uses
  %i.my = shl nuw nsw i32 %i.mn, 2
  %i.mz = select i1 %.not562623, i32 0, i32 2
  %i.na = or disjoint i32 %i.my, %i.mz
  %i.nb = and i32 %.117.i189.4, %.pre-phi443
  %i.nc = icmp ne i32 %i.nb, 0
  %i.nd = zext i1 %i.nc to i32
  %i.ne = or disjoint i32 %i.na, %i.nd
  %i.nf = lshr i32 %.117.i189.4, 1                ; 2 uses
  %.not21.i188.5 = icmp eq i32 %i.nf, 0
  br i1 %.not21.i188.5, label %.lr.ph.i183.6.thread, label %.lr.ph.i183.6

.lr.ph.i183.6.thread:                             ; preds = %.lr.ph.i183.5
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mw, i64 1 ; 3 uses
  store ptr %i.ng, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !19  ; 2 uses
  %.pre444 = zext i8 %i.nh to i32
  %.not563626 = icmp sgt i8 %i.nh, -1
  br label %.lr.ph.i183.7

.lr.ph.i183.6:                                    ; preds = %.lr.ph.i183.5
  %i.ni = and i32 %i.nf, %.pre-phi443
  %.not563 = icmp eq i32 %i.ni, 0                 ; 2 uses
  %i.nj = add nuw nsw i32 %i.mx, 2
  %i.nk = lshr i32 %.117.i189.4, 2                ; 2 uses
  %.not21.i188.6 = icmp eq i32 %i.nk, 0
  br i1 %.not21.i188.6, label %bb.af, label %.lr.ph.i183.7

bb.af:                                            ; preds = %.lr.ph.i183.6
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mw, i64 1 ; 3 uses
  store ptr %i.nl, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !19
  %.pre446 = zext i8 %i.nm to i32
  br label %.lr.ph.i183.7

.lr.ph.i183.7:                                    ; preds = %.lr.ph.i183.6.thread, %bb.af, %.lr.ph.i183.6
  %.not563628 = phi i1 [ %.not563, %bb.af ], [ %.not563, %.lr.ph.i183.6 ], [ %.not563626, %.lr.ph.i183.6.thread ]
  %.pre-phi447 = phi i32 [ %.pre446, %bb.af ], [ %.pre-phi443, %.lr.ph.i183.6 ], [ %.pre444, %.lr.ph.i183.6.thread ]
  %i.nn = phi ptr [ %i.nl, %bb.af ], [ %i.mw, %.lr.ph.i183.6 ], [ %i.ng, %.lr.ph.i183.6.thread ]
  %i.no = phi i32 [ 0, %bb.af ], [ %i.nj, %.lr.ph.i183.6 ], [ 1, %.lr.ph.i183.6.thread ]
  %.117.i189.6 = phi i32 [ 128, %bb.af ], [ %i.nk, %.lr.ph.i183.6 ], [ 64, %.lr.ph.i183.6.thread ] ; 2 uses
  %i.np = shl nuw nsw i32 %i.ne, 2
  %i.nq = select i1 %.not563628, i32 0, i32 2
  %i.nr = or disjoint i32 %i.np, %i.nq
  %i.ns = and i32 %.117.i189.6, %.pre-phi447
  %i.nt = icmp ne i32 %i.ns, 0
  %i.nu = zext i1 %i.nt to i32
  %i.nv = or disjoint i32 %i.nr, %i.nu
  %i.nw = add nuw nsw i32 %i.no, 1
  store i32 %i.nw, ptr %i.h, align 4, !tbaa !12
  %.not21.i188.7 = icmp samesign ult i32 %.117.i189.6, 2
  br i1 %.not21.i188.7, label %bb.ag, label %readbits.exit193

bb.ag:                                            ; preds = %.lr.ph.i183.7
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nn, i64 1
  store ptr %i.nx, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  br label %readbits.exit193

readbits.exit193:                                 ; preds = %.lr.ph.i183.7, %bb.ag
  %i.ny = call fastcc i32 @compute_magic_bits(ptr noundef %i.i) ; 5 uses
  %.off354 = add i32 %3, 2
  %.not331 = icmp ult i32 %.off354, 5
  br i1 %.not331, label %._crit_edge353, label %.lr.ph352

.lr.ph352:                                        ; preds = %readbits.exit193
  %i.nz = icmp samesign ugt i32 %i.ny, 7
  %i.oa = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.oc = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.od = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %4 = add nsw i32 %i.ny, -8
  %5 = lshr i32 %4, 3
  %6 = zext nneg i32 %5 to i64
  %scevgep = getelementptr i8, ptr %i.j, i64 %6
  %i.of = zext nneg i32 %i.lc to i64
  %i.og = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %i.of
  %i.oh = zext nneg i32 %i.ij to i64
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %i.oh
  %i.oj = zext nneg i32 %i.fr to i64
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %i.oj
  %i.ol = zext nneg i32 %i.lc to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %i.ol
  %i.on = zext nneg i32 %i.ij to i64
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %i.on
  %i.op = zext nneg i32 %i.fr to i64
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  %i.ou = insertelement <2 x i32> poison, i32 %spec.select.i137, i64 0
  %i.ov = insertelement <2 x i32> %i.ou, i32 %spec.select.i149, i64 1
  %i.ow = insertelement <2 x i32> poison, i32 %spec.select.i, i64 0
  %i.ox = insertelement <2 x i32> %i.ow, i32 %spec.select.i137, i64 1
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph352, %bb.bu
  %.0101349 = phi ptr [ %2, %.lr.ph352 ], [ %.5, %bb.bu ] ; 10 uses
  %.0109348 = phi i32 [ 0, %.lr.ph352 ], [ %.2111, %bb.bu ] ; 11 uses
  %.0112345 = phi i32 [ 0, %.lr.ph352 ], [ %.1113, %bb.bu ] ; 7 uses
  %.0114344 = phi i32 [ %i.m, %.lr.ph352 ], [ %.3117, %bb.bu ] ; 7 uses
  %.sroa.071.0341 = phi i32 [ %spec.select.i, %.lr.ph352 ], [ %.sroa.071.5, %bb.bu ] ; 5 uses
  %.0118332 = phi i32 [ %i.nv, %.lr.ph352 ], [ %.1119, %bb.bu ] ; 10 uses
  %i.oy = phi <2 x i32> [ %i.ov, %.lr.ph352 ], [ %i.adw, %bb.bu ] ; 5 uses
  %i.oz = load ptr, ptr %i.g, align 8, !tbaa !16  ; 3 uses
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !19
  %i.pb = load i32, ptr %i.h, align 4, !tbaa !12  ; 3 uses
  %i.pc = lshr i32 128, %i.pb
  %i.pd = zext i8 %i.pa to i32
  %i.pe = and i32 %i.pc, %i.pd
  %.not53.i.not = icmp eq i32 %i.pe, 0            ; 2 uses
  %i.pf = add nsw i32 %i.pb, 1                    ; 2 uses
  store i32 %i.pf, ptr %i.h, align 4, !tbaa !12
  %.not21.i.i = icmp ugt i32 %i.pb, 6
  br i1 %.not21.i.i, label %bb.ai, label %readbits.exit.i, !llvm.loop !2

bb.ai:                                            ; preds = %bb.ah
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oz, i64 1 ; 2 uses
  store ptr %i.pg, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  br label %readbits.exit.i

readbits.exit.i:                                  ; preds = %bb.ai, %bb.ah
  %i.ph = phi i32 [ %i.pf, %bb.ah ], [ 0, %bb.ai ] ; 3 uses
  %i.pi = phi ptr [ %i.oz, %bb.ah ], [ %i.pg, %bb.ai ] ; 3 uses
  br i1 %.not53.i.not, label %.lr.ph.i17.i, label %.lr.ph.i195

.lr.ph.i17.i:                                     ; preds = %readbits.exit.i
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !19
  %i.pk = lshr i32 128, %i.ph
  %i.pl = zext i8 %i.pj to i32
  %i.pm = and i32 %i.pk, %i.pl
  %.not.i194 = icmp eq i32 %i.pm, 0
  %i.pn = add nuw nsw i32 %i.ph, 1                ; 2 uses
  store i32 %i.pn, ptr %i.h, align 4, !tbaa !12
  %.not21.i22.i = icmp samesign ugt i32 %i.ph, 6
  br i1 %.not21.i22.i, label %bb.aj, label %readbits.exit27.i, !llvm.loop !2

bb.aj:                                            ; preds = %.lr.ph.i17.i
  %i.po = getelementptr inbounds nuw i8, ptr %i.pi, i64 1 ; 2 uses
  store ptr %i.po, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  br label %readbits.exit27.i

readbits.exit27.i:                                ; preds = %bb.aj, %.lr.ph.i17.i
  %i.pp = phi i32 [ %i.pn, %.lr.ph.i17.i ], [ 0, %bb.aj ] ; 4 uses
  %i.pq = phi ptr [ %i.pi, %.lr.ph.i17.i ], [ %i.po, %bb.aj ] ; 5 uses
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !19
  %i.ps = lshr i32 128, %i.pp
  %i.pt = zext i8 %i.pr to i32                    ; 3 uses
  %i.pu = and i32 %i.ps, %i.pt
  %.not567.a = icmp eq i32 %i.pu, 0               ; 2 uses
  %i.pv = add nuw nsw i32 %i.pp, 1                ; 2 uses
  %i.pw = lshr i32 64, %i.pp                      ; 2 uses
  %.not21.i246 = icmp samesign ugt i32 %i.pp, 6   ; 2 uses
  br i1 %.not.i194, label %.lr.ph.i241, label %.lr.ph.i28.i

.lr.ph.i28.i:                                     ; preds = %readbits.exit27.i
  br i1 %.not21.i246, label %bb.ak, label %.lr.ph.i28.1.i

bb.ak:                                            ; preds = %.lr.ph.i28.i
  %i.px = getelementptr inbounds nuw i8, ptr %i.pq, i64 1 ; 3 uses
  store ptr %i.px, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.py = load i8, ptr %i.px, align 1, !tbaa !19
  %.pre.i = zext i8 %i.py to i32
  br label %.lr.ph.i28.1.i

.lr.ph.i28.1.i:                                   ; preds = %bb.ak, %.lr.ph.i28.i
  %.pre-phi.i = phi i32 [ %.pre.i, %bb.ak ], [ %i.pt, %.lr.ph.i28.i ]
  %i.pz = phi ptr [ %i.px, %bb.ak ], [ %i.pq, %.lr.ph.i28.i ] ; 2 uses
  %i.qa = phi i32 [ 0, %bb.ak ], [ %i.pv, %.lr.ph.i28.i ]
  %.117.i34.i = phi i32 [ 128, %bb.ak ], [ %i.pw, %.lr.ph.i28.i ] ; 2 uses
  %i.qb = select i1 %.not567.a, i32 0, i32 2
  %i.qc = and i32 %.117.i34.i, %.pre-phi.i
  %i.qd = icmp ne i32 %i.qc, 0
  %i.qe = zext i1 %i.qd to i32
  %i.qf = or disjoint i32 %i.qb, %i.qe
  %i.qg = add nuw nsw i32 %i.qa, 1                ; 2 uses
  store i32 %i.qg, ptr %i.h, align 4, !tbaa !12
  %.not21.i33.1.i = icmp samesign ult i32 %.117.i34.i, 2
  br i1 %.not21.i33.1.i, label %bb.al, label %readbits.exit38.i

bb.al:                                            ; preds = %.lr.ph.i28.1.i
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pz, i64 1 ; 2 uses
  store ptr %i.qh, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  br label %readbits.exit38.i

readbits.exit38.i:                                ; preds = %bb.al, %.lr.ph.i28.1.i
  %i.qi = phi i32 [ 0, %bb.al ], [ %i.qg, %.lr.ph.i28.1.i ] ; 8 uses
  %i.qj = phi ptr [ %i.qh, %bb.al ], [ %i.pz, %.lr.ph.i28.1.i ] ; 6 uses
  switch i32 %i.qf, label %default.unreachable [
    i32 0, label %.lr.ph.i195
    i32 1, label %.thread283
    i32 2, label %.lr.ph.i254
    i32 3, label %.lr.ph.i39.i
  ]

.lr.ph.i39.i:                                     ; preds = %readbits.exit38.i
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !19
  %i.ql = lshr i32 128, %i.qi
  %i.qm = zext i8 %i.qk to i32
  %i.qn = and i32 %i.ql, %i.qm
  %.not54.i = icmp eq i32 %i.qn, 0
  %i.qo = add nuw nsw i32 %i.qi, 1                ; 2 uses
  store i32 %i.qo, ptr %i.h, align 4, !tbaa !12
  %.not21.i44.i = icmp samesign ugt i32 %i.qi, 6
  br i1 %.not21.i44.i, label %bb.am, label %readbits.exit49.i, !llvm.loop !2

bb.am:                                            ; preds = %.lr.ph.i39.i
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qj, i64 1 ; 2 uses
  store ptr %i.qp, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  br label %readbits.exit49.i

readbits.exit49.i:                                ; preds = %bb.am, %.lr.ph.i39.i
  %i.qq = phi i32 [ 0, %bb.am ], [ %i.qo, %.lr.ph.i39.i ] ; 4 uses
  %i.qr = phi ptr [ %i.qp, %bb.am ], [ %i.qj, %.lr.ph.i39.i ] ; 3 uses
  br i1 %.not54.i, label %bb.bs, label %.lr.ph.i213

default.unreachable:                              ; preds = %readbits.exit38.i
  unreachable

.lr.ph.i195:                                      ; preds = %readbits.exit.i, %readbits.exit38.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.j, i8 0, i64 72, i1 false), !tbaa !19
  call fastcc void @readmanybits(ptr noundef %i.g, ptr noundef %i.h, i32 noundef %i.ny, ptr noundef %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.e, ptr noundef nonnull align 16 dereferenceable(72) %i.j, i64 72, i1 false)
  store i32 0, ptr %i.ob, align 8, !tbaa !12
  %i.qs = load i32, ptr %i.om, align 4, !tbaa !12
  %i.qt = call i32 @Ptngc_largeint_div(i32 noundef %i.qs, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef 19) #11 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.e, ptr noundef nonnull align 16 dereferenceable(76) %i.f, i64 76, i1 false)
  store i32 %i.qt, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !12
  %i.qu = load i32, ptr %i.oo, align 4, !tbaa !12
  %i.qv = call i32 @Ptngc_largeint_div(i32 noundef %i.qu, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef 19) #11 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.e, ptr noundef nonnull align 16 dereferenceable(76) %i.f, i64 76, i1 false)
  store i32 %i.qv, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !12
  %i.qw = load i32, ptr %i.oq, align 4, !tbaa !12
  %i.qx = call i32 @Ptngc_largeint_div(i32 noundef %i.qw, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef 19) #11 ; 3 uses
  store i32 %i.qx, ptr %i.k, align 16, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  %i.qy = insertelement <2 x i32> poison, i32 %i.qv, i64 0
  %i.qz = insertelement <2 x i32> %i.qy, i32 %i.qt, i64 1 ; 2 uses
  br i1 %.not53.i.not, label %.loopexit.thread, label %.thread283

.thread283:                                       ; preds = %readbits.exit38.i, %.lr.ph.i195
  %.sroa.0.0 = phi i32 [ %i.qx, %.lr.ph.i195 ], [ 0, %readbits.exit38.i ] ; 2 uses
  %.sroa.10.0 = phi i32 [ %i.qv, %.lr.ph.i195 ], [ 0, %readbits.exit38.i ] ; 2 uses
  %.sroa.14.0 = phi i32 [ %i.qt, %.lr.ph.i195 ], [ 0, %readbits.exit38.i ] ; 2 uses
  %i.ra = phi i1 [ true, %.lr.ph.i195 ], [ false, %readbits.exit38.i ]
  %.not124282287 = phi i1 [ false, %.lr.ph.i195 ], [ true, %readbits.exit38.i ] ; 2 uses
  %i.rb = phi <2 x i32> [ %i.qz, %.lr.ph.i195 ], [ zeroinitializer, %readbits.exit38.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #11
  store i32 %.0118332, ptr %i.l, align 4, !tbaa !12
  store i32 %.0118332, ptr %i.oc, align 4, !tbaa !12
  store i32 %.0118332, ptr %i.od, align 4, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.j, i8 0, i64 72, i1 false), !tbaa !19
  %i.rc = sext i32 %.0118332 to i64
  %i.rd = getelementptr inbounds [32 x i8], ptr @magic_bits, i64 %i.rc
  %i.re = zext nneg i32 %.0109348 to i64
  %i.rf = getelementptr [4 x i8], ptr %i.rd, i64 %i.re
  %i.rg = getelementptr i8, ptr %i.rf, i64 -4
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !12
  call fastcc void @readmanybits(ptr noundef %i.g, ptr noundef %i.h, i32 noundef %i.rh, ptr noundef %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.c, ptr noundef nonnull align 16 dereferenceable(72) %i.j, i64 72, i1 false)
  store i32 0, ptr %i.oe, align 8, !tbaa !12
  %.not.i199 = icmp eq i32 %.0109348, 0
  br i1 %.not.i199, label %.loopexit674, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.thread283
end_hunk_1
begin_hunk_2_@Ptngc_unpack_array_xtc2:bb.a
bb.az:                                            ; preds = %positive_int.exit.2
  %i.ut = icmp slt i32 %i.un, 0
  br i1 %i.ut, label %bb.ba, label %positive_int.exit208.2

bb.ba:                                            ; preds = %bb.az
  %i.uu = xor i32 %i.un, -1
  %i.uv = shl nuw nsw i32 %i.uu, 1
  %i.uw = add nuw nsw i32 %i.uv, 2
  br label %positive_int.exit208.2

bb.bb:                                            ; preds = %positive_int.exit.2
  %i.ux = shl nuw i32 %i.un, 1
  %i.uy = add i32 %i.ux, -1
  br label %positive_int.exit208.2

positive_int.exit208.2:                           ; preds = %bb.bb, %bb.ba, %bb.az
  %.0.i207.2 = phi i32 [ %i.uy, %bb.bb ], [ %i.uw, %bb.ba ], [ 0, %bb.az ]
  store i32 %.0.i207.2, ptr %i.ot, align 4, !tbaa !12
  %i.uz = insertelement <2 x i32> poison, i32 %i.tl, i64 0
  %i.va = insertelement <2 x i32> %i.uz, i32 %i.um, i64 1
  br i1 %.not124282287, label %.preheader293, label %.loopexit.thread

.loopexit:                                        ; preds = %.loopexit674
  br i1 %.not124282287, label %.preheader293, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.lr.ph.i195, %.loopexit, %positive_int.exit208.2
  %.sroa.14.2646 = phi i32 [ %i.um, %positive_int.exit208.2 ], [ %.sroa.14.0, %.loopexit ], [ %i.qt, %.lr.ph.i195 ]
  %.sroa.10.2645 = phi i32 [ %i.tl, %positive_int.exit208.2 ], [ %.sroa.10.0, %.loopexit ], [ %i.qv, %.lr.ph.i195 ]
  %.sroa.0.2644 = phi i32 [ %i.sk, %positive_int.exit208.2 ], [ %.sroa.0.0, %.loopexit ], [ %i.qx, %.lr.ph.i195 ] ; 3 uses
  %.not125290635642 = phi i1 [ false, %positive_int.exit208.2 ], [ false, %.loopexit ], [ true, %.lr.ph.i195 ]
  %i.vb = phi <2 x i32> [ %i.va, %positive_int.exit208.2 ], [ %i.rb, %.loopexit ], [ %i.qz, %.lr.ph.i195 ] ; 2 uses
  %i.vc = add nsw i32 %.sroa.0.2644, %spec.select.i
  %i.vd = getelementptr inbounds nuw i8, ptr %.0101349, i64 4
  store i32 %i.vc, ptr %.0101349, align 4, !tbaa !12
  %i.ve = add nsw i32 %.sroa.10.2645, %spec.select.i137
  %i.vf = getelementptr inbounds nuw i8, ptr %.0101349, i64 8
  store i32 %i.ve, ptr %i.vd, align 4, !tbaa !12
  %i.vg = add nsw i32 %.sroa.14.2646, %spec.select.i149
  %i.vh = getelementptr inbounds nuw i8, ptr %.0101349, i64 12 ; 2 uses
  store i32 %i.vg, ptr %i.vf, align 4, !tbaa !12
  %i.vi = add nsw i32 %.0114344, -1               ; 2 uses
  br i1 %.not125290635642, label %bb.bu, label %.preheader293

.preheader293:                                    ; preds = %positive_int.exit208.2, %.loopexit, %.loopexit.thread
  %.1658 = phi ptr [ %i.vh, %.loopexit.thread ], [ %.0101349, %.loopexit ], [ %.0101349, %positive_int.exit208.2 ] ; 2 uses
  %.1115657 = phi i32 [ %i.vi, %.loopexit.thread ], [ %.0114344, %.loopexit ], [ %.0114344, %positive_int.exit208.2 ]
  %.sroa.071.1656 = phi i32 [ %.sroa.0.2644, %.loopexit.thread ], [ %.sroa.071.0341, %.loopexit ], [ %.sroa.071.0341, %positive_int.exit208.2 ] ; 2 uses
  %i.vj = phi <2 x i32> [ %i.vb, %.loopexit.thread ], [ %i.oy, %.loopexit ], [ %i.oy, %positive_int.exit208.2 ] ; 2 uses
  %i.vk = icmp sgt i32 %.0109348, 0
  br i1 %i.vk, label %.lr.ph.preheader, label %._crit_edge326

.lr.ph.preheader:                                 ; preds = %.preheader293
  %wide.trip.count = zext nneg i32 %.0109348 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.2325 = phi ptr [ %.1658, %.lr.ph.preheader ], [ %i.wj, %.lr.ph ] ; 3 uses
  %.sroa.071.2323 = phi i32 [ %.sroa.071.1656, %.lr.ph.preheader ], [ %i.vu, %.lr.ph ]
  %i.vl = phi <2 x i32> [ %i.vj, %.lr.ph.preheader ], [ %i.wc, %.lr.ph ]
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.vm = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx ; 2 uses
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !12 ; 2 uses
  %i.vo = add nsw i32 %i.vn, 1
  %i.vp = sdiv i32 %i.vo, 2                       ; 2 uses
  %i.vq = and i32 %i.vn, 1
  %i.vr = icmp eq i32 %i.vq, 0
  %i.vs = sub nsw i32 0, %i.vp
  %spec.select.i209 = select i1 %i.vr, i32 %i.vs, i32 %i.vp
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vm, i64 4
  %i.vu = add nsw i32 %spec.select.i209, %.sroa.071.2323 ; 3 uses
  %i.vv = load <2 x i32>, ptr %i.vt, align 4, !tbaa !12 ; 2 uses
  %i.vw = add nsw <2 x i32> %i.vv, splat (i32 1)
  %i.vx = sdiv <2 x i32> %i.vw, splat (i32 2)     ; 2 uses
  %i.vy = and <2 x i32> %i.vv, splat (i32 1)
  %i.vz = icmp eq <2 x i32> %i.vy, zeroinitializer
  %i.wa = sub nsw <2 x i32> zeroinitializer, %i.vx
  %i.wb = select <2 x i1> %i.vz, <2 x i32> %i.wa, <2 x i32> %i.vx
  %i.wc = add nsw <2 x i32> %i.wb, %i.vl          ; 4 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.2325, i64 8
  %i.we = shufflevector <2 x i32> %i.wc, <2 x i32> poison, <2 x i32> <i32 poison, i32 0>
  %i.wf = insertelement <2 x i32> %i.we, i32 %i.vu, i64 0
  %i.wg = add nsw <2 x i32> %i.wf, %i.ox
  store <2 x i32> %i.wg, ptr %.2325, align 4, !tbaa !12
  %i.wh = extractelement <2 x i32> %i.wc, i64 1
  %i.wi = add nsw i32 %i.wh, %spec.select.i149
  %i.wj = getelementptr inbounds nuw i8, ptr %.2325, i64 12 ; 2 uses
  store i32 %i.wi, ptr %i.wd, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond382.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond382.not, label %._crit_edge326, label %.lr.ph, !llvm.loop !56

._crit_edge326:                                   ; preds = %.lr.ph, %.preheader293
  %.sroa.071.2.lcssa = phi i32 [ %.sroa.071.1656, %.preheader293 ], [ %i.vu, %.lr.ph ]
  %.2.lcssa = phi ptr [ %.1658, %.preheader293 ], [ %i.wj, %.lr.ph ]
  %i.wk = phi <2 x i32> [ %i.vj, %.preheader293 ], [ %i.wc, %.lr.ph ]
  %i.wl = sub nsw i32 %.1115657, %.0109348
  br label %bb.bu

.lr.ph.i213:                                      ; preds = %readbits.exit49.i
  %i.wm = load i8, ptr %i.qr, align 1, !tbaa !19
  %i.wn = lshr i32 128, %i.qq
  %i.wo = zext i8 %i.wm to i32                    ; 2 uses
  %i.wp = and i32 %i.wn, %i.wo
  %.not564 = icmp eq i32 %i.wp, 0
  %i.wq = add nuw nsw i32 %i.qq, 1
  %i.wr = lshr i32 64, %i.qq
  %.not21.i218 = icmp samesign ugt i32 %i.qq, 6
  br i1 %.not21.i218, label %bb.bc, label %.lr.ph.i213.1

bb.bc:                                            ; preds = %.lr.ph.i213
  %i.ws = getelementptr inbounds nuw i8, ptr %i.qr, i64 1 ; 3 uses
  store ptr %i.ws, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !19
  %.pre428 = zext i8 %i.wt to i32
  br label %.lr.ph.i213.1

.lr.ph.i213.1:                                    ; preds = %bb.bc, %.lr.ph.i213
  %.pre-phi429 = phi i32 [ %.pre428, %bb.bc ], [ %i.wo, %.lr.ph.i213 ] ; 3 uses
  %i.wu = phi ptr [ %i.ws, %bb.bc ], [ %i.qr, %.lr.ph.i213 ] ; 3 uses
  %i.wv = phi i32 [ 0, %bb.bc ], [ %i.wq, %.lr.ph.i213 ]
  %.117.i219 = phi i32 [ 128, %bb.bc ], [ %i.wr, %.lr.ph.i213 ] ; 3 uses
  %i.ww = select i1 %.not564, i32 0, i32 2
  %i.wx = and i32 %.117.i219, %.pre-phi429
  %i.wy = icmp ne i32 %i.wx, 0
  %i.wz = zext i1 %i.wy to i32
  %i.xa = or disjoint i32 %i.ww, %i.wz
  %i.xb = lshr i32 %.117.i219, 1                  ; 2 uses
  %.not21.i218.1 = icmp eq i32 %i.xb, 0
  br i1 %.not21.i218.1, label %.lr.ph.i213.2.thread, label %.lr.ph.i213.2

.lr.ph.i213.2.thread:                             ; preds = %.lr.ph.i213.1
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wu, i64 1 ; 3 uses
  store ptr %i.xc, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !19  ; 2 uses
  %.pre430 = zext i8 %i.xd to i32
  %.not565661 = icmp sgt i8 %i.xd, -1
  br label %.lr.ph.i213.3

.lr.ph.i213.2:                                    ; preds = %.lr.ph.i213.1
  %i.xe = and i32 %i.xb, %.pre-phi429
  %.not565 = icmp eq i32 %i.xe, 0                 ; 2 uses
  %.reass = add nuw nsw i32 %i.wv, 2
  %i.xf = lshr i32 %.117.i219, 2                  ; 2 uses
  %.not21.i218.2 = icmp eq i32 %i.xf, 0
  br i1 %.not21.i218.2, label %bb.bd, label %.lr.ph.i213.3

bb.bd:                                            ; preds = %.lr.ph.i213.2
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wu, i64 1 ; 3 uses
  store ptr %i.xg, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !19
  %.pre432 = zext i8 %i.xh to i32
  br label %.lr.ph.i213.3

.lr.ph.i213.3:                                    ; preds = %.lr.ph.i213.2.thread, %bb.bd, %.lr.ph.i213.2
  %.not565663 = phi i1 [ %.not565, %bb.bd ], [ %.not565, %.lr.ph.i213.2 ], [ %.not565661, %.lr.ph.i213.2.thread ]
  %.pre-phi433 = phi i32 [ %.pre432, %bb.bd ], [ %.pre-phi429, %.lr.ph.i213.2 ], [ %.pre430, %.lr.ph.i213.2.thread ]
  %i.xi = phi ptr [ %i.xg, %bb.bd ], [ %i.wu, %.lr.ph.i213.2 ], [ %i.xc, %.lr.ph.i213.2.thread ]
  %i.xj = phi i32 [ 0, %bb.bd ], [ %.reass, %.lr.ph.i213.2 ], [ 1, %.lr.ph.i213.2.thread ]
  %.117.i219.2 = phi i32 [ 128, %bb.bd ], [ %i.xf, %.lr.ph.i213.2 ], [ 64, %.lr.ph.i213.2.thread ] ; 2 uses
  %i.xk = shl nuw nsw i32 %i.xa, 2
  %i.xl = select i1 %.not565663, i32 0, i32 2
  %i.xm = or disjoint i32 %i.xk, %i.xl
  %i.xn = and i32 %.117.i219.2, %.pre-phi433
  %i.xo = icmp ne i32 %i.xn, 0
  %i.xp = zext i1 %i.xo to i32
  %i.xq = or disjoint i32 %i.xm, %i.xp
  %i.xr = add nuw nsw i32 %i.xj, 1
  store i32 %i.xr, ptr %i.h, align 4, !tbaa !12
  %.not21.i218.3 = icmp samesign ult i32 %.117.i219.2, 2
  br i1 %.not21.i218.3, label %bb.be, label %.preheader.preheader

bb.be:                                            ; preds = %.lr.ph.i213.3
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xi, i64 1
  store ptr %i.xs, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.be, %.lr.ph.i213.3
  %i.xt = add nuw nsw i32 %i.xq, 3                ; 2 uses
  %i.xu = load i32, ptr %i.og, align 4, !tbaa !12
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %readmanybits.exit
  %.4314 = phi ptr [ %i.abr, %readmanybits.exit ], [ %.0101349, %.preheader.preheader ] ; 4 uses
  %.0104313 = phi i32 [ %i.abs, %readmanybits.exit ], [ 0, %.preheader.preheader ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.j, i8 0, i64 72, i1 false), !tbaa !19
  br i1 %i.nz, label %.lr.ph.i225.preheader, label %._crit_edge.i

.lr.ph.i225.preheader:                            ; preds = %.preheader
  %.promoted = load ptr, ptr %i.g, align 8, !tbaa !16
  %.promoted312 = load i32, ptr %i.h, align 4, !tbaa !12
  br label %.lr.ph.i225

.lr.ph.i225:                                      ; preds = %.lr.ph.i225.preheader, %readbits.exit.i229
  %i.xv = phi i32 [ %i.aak, %readbits.exit.i229 ], [ %.promoted312, %.lr.ph.i225.preheader ] ; 4 uses
  %i.xw = phi ptr [ %i.aal, %readbits.exit.i229 ], [ %.promoted, %.lr.ph.i225.preheader ] ; 3 uses
  %.023.i = phi ptr [ %i.aam, %readbits.exit.i229 ], [ %i.j, %.lr.ph.i225.preheader ] ; 3 uses
  %.0922.i = phi i32 [ %i.aan, %readbits.exit.i229 ], [ %i.ny, %.lr.ph.i225.preheader ]
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !19
  %i.xy = lshr i32 128, %i.xv
  %i.xz = zext i8 %i.xx to i32                    ; 2 uses
  %i.ya = and i32 %i.xy, %i.xz
  %.not55.i = icmp eq i32 %i.ya, 0
  %i.yb = add nuw nsw i32 %i.xv, 1
  %i.yc = lshr i32 64, %i.xv
  %.not21.i.i226 = icmp ugt i32 %i.xv, 6
  br i1 %.not21.i.i226, label %bb.bf, label %.lr.ph.i.1.i

bb.bf:                                            ; preds = %.lr.ph.i225
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xw, i64 1 ; 3 uses
  store ptr %i.yd, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.ye = load i8, ptr %i.yd, align 1, !tbaa !19
  %.pre.i230 = zext i8 %i.ye to i32
  br label %.lr.ph.i.1.i

.lr.ph.i.1.i:                                     ; preds = %bb.bf, %.lr.ph.i225
  %i.yf = phi ptr [ %i.yd, %bb.bf ], [ %i.xw, %.lr.ph.i225 ] ; 3 uses
  %.pre-phi.i227 = phi i32 [ %.pre.i230, %bb.bf ], [ %i.xz, %.lr.ph.i225 ] ; 3 uses
  %i.yg = phi i32 [ 0, %bb.bf ], [ %i.yb, %.lr.ph.i225 ]
  %.117.i.i = phi i32 [ 128, %bb.bf ], [ %i.yc, %.lr.ph.i225 ] ; 3 uses
  %i.yh = select i1 %.not55.i, i8 0, i8 2
  %i.yi = and i32 %.117.i.i, %.pre-phi.i227
  %i.yj = icmp ne i32 %i.yi, 0
  %i.yk = zext i1 %i.yj to i8
  %i.yl = or disjoint i8 %i.yh, %i.yk
  %i.ym = lshr i32 %.117.i.i, 1                   ; 2 uses
  %.not21.i.1.i = icmp eq i32 %i.ym, 0
  br i1 %.not21.i.1.i, label %.lr.ph.i.2.thread.i, label %.lr.ph.i.2.i

.lr.ph.i.2.thread.i:                              ; preds = %.lr.ph.i.1.i
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yf, i64 1 ; 3 uses
  store ptr %i.yn, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !19  ; 2 uses
  %.pre34.i = zext i8 %i.yo to i32
  %.not5661.i = icmp sgt i8 %i.yo, -1
  br label %.lr.ph.i.3.i

.lr.ph.i.2.i:                                     ; preds = %.lr.ph.i.1.i
  %i.yp = and i32 %i.ym, %.pre-phi.i227
  %.not56.i228 = icmp eq i32 %i.yp, 0             ; 2 uses
  %.reass.i = add nuw nsw i32 %i.yg, 2
  %i.yq = lshr i32 %.117.i.i, 2                   ; 2 uses
  %.not21.i.2.i = icmp eq i32 %i.yq, 0
  br i1 %.not21.i.2.i, label %bb.bg, label %.lr.ph.i.3.i

bb.bg:                                            ; preds = %.lr.ph.i.2.i
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yf, i64 1 ; 3 uses
  store ptr %i.yr, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !19
  %.pre36.i = zext i8 %i.ys to i32
  br label %.lr.ph.i.3.i

.lr.ph.i.3.i:                                     ; preds = %bb.bg, %.lr.ph.i.2.i, %.lr.ph.i.2.thread.i
  %i.yt = phi ptr [ %i.yr, %bb.bg ], [ %i.yf, %.lr.ph.i.2.i ], [ %i.yn, %.lr.ph.i.2.thread.i ] ; 3 uses
  %.not5663.i = phi i1 [ %.not56.i228, %bb.bg ], [ %.not56.i228, %.lr.ph.i.2.i ], [ %.not5661.i, %.lr.ph.i.2.thread.i ]
  %.pre-phi37.i = phi i32 [ %.pre36.i, %bb.bg ], [ %.pre-phi.i227, %.lr.ph.i.2.i ], [ %.pre34.i, %.lr.ph.i.2.thread.i ] ; 3 uses
  %i.yu = phi i32 [ 0, %bb.bg ], [ %.reass.i, %.lr.ph.i.2.i ], [ 1, %.lr.ph.i.2.thread.i ]
  %.117.i.2.i = phi i32 [ 128, %bb.bg ], [ %i.yq, %.lr.ph.i.2.i ], [ 64, %.lr.ph.i.2.thread.i ] ; 3 uses
  %i.yv = shl nuw nsw i8 %i.yl, 2
  %i.yw = select i1 %.not5663.i, i8 0, i8 2
  %i.yx = or disjoint i8 %i.yw, %i.yv
  %i.yy = and i32 %.117.i.2.i, %.pre-phi37.i
  %i.yz = icmp ne i32 %i.yy, 0
  %i.za = zext i1 %i.yz to i8
  %i.zb = or disjoint i8 %i.yx, %i.za
  %i.zc = lshr i32 %.117.i.2.i, 1                 ; 2 uses
  %.not21.i.3.i = icmp eq i32 %i.zc, 0
  br i1 %.not21.i.3.i, label %.lr.ph.i.4.thread.i, label %.lr.ph.i.4.i

.lr.ph.i.4.thread.i:                              ; preds = %.lr.ph.i.3.i
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yt, i64 1 ; 3 uses
  store ptr %i.zd, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !19  ; 2 uses
  %.pre38.i = zext i8 %i.ze to i32
  %.not5766.i = icmp sgt i8 %i.ze, -1
  br label %.lr.ph.i.5.i

.lr.ph.i.4.i:                                     ; preds = %.lr.ph.i.3.i
  %i.zf = and i32 %i.zc, %.pre-phi37.i
  %.not57.i = icmp eq i32 %i.zf, 0                ; 2 uses
  %.reass76.i = add nuw nsw i32 %i.yu, 2
  %i.zg = lshr i32 %.117.i.2.i, 2                 ; 2 uses
  %.not21.i.4.i = icmp eq i32 %i.zg, 0
  br i1 %.not21.i.4.i, label %bb.bh, label %.lr.ph.i.5.i

bb.bh:                                            ; preds = %.lr.ph.i.4.i
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yt, i64 1 ; 3 uses
  store ptr %i.zh, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !19
  %.pre40.i = zext i8 %i.zi to i32
  br label %.lr.ph.i.5.i

.lr.ph.i.5.i:                                     ; preds = %bb.bh, %.lr.ph.i.4.i, %.lr.ph.i.4.thread.i
  %i.zj = phi ptr [ %i.zh, %bb.bh ], [ %i.yt, %.lr.ph.i.4.i ], [ %i.zd, %.lr.ph.i.4.thread.i ] ; 3 uses
  %.not5768.i = phi i1 [ %.not57.i, %bb.bh ], [ %.not57.i, %.lr.ph.i.4.i ], [ %.not5766.i, %.lr.ph.i.4.thread.i ]
  %.pre-phi41.i = phi i32 [ %.pre40.i, %bb.bh ], [ %.pre-phi37.i, %.lr.ph.i.4.i ], [ %.pre38.i, %.lr.ph.i.4.thread.i ] ; 3 uses
  %i.zk = phi i32 [ 0, %bb.bh ], [ %.reass76.i, %.lr.ph.i.4.i ], [ 1, %.lr.ph.i.4.thread.i ]
  %.117.i.4.i = phi i32 [ 128, %bb.bh ], [ %i.zg, %.lr.ph.i.4.i ], [ 64, %.lr.ph.i.4.thread.i ] ; 3 uses
  %i.zl = shl nuw nsw i8 %i.zb, 2
  %i.zm = select i1 %.not5768.i, i8 0, i8 2
  %i.zn = or disjoint i8 %i.zm, %i.zl
  %i.zo = and i32 %.117.i.4.i, %.pre-phi41.i
  %i.zp = icmp ne i32 %i.zo, 0
  %i.zq = zext i1 %i.zp to i8
  %i.zr = or disjoint i8 %i.zn, %i.zq
  %i.zs = lshr i32 %.117.i.4.i, 1                 ; 2 uses
  %.not21.i.5.i = icmp eq i32 %i.zs, 0
  br i1 %.not21.i.5.i, label %.lr.ph.i.6.thread.i, label %.lr.ph.i.6.i

.lr.ph.i.6.thread.i:                              ; preds = %.lr.ph.i.5.i
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zj, i64 1 ; 3 uses
  store ptr %i.zt, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !19  ; 2 uses
  %.pre42.i = zext i8 %i.zu to i32
  %.not5871.i = icmp sgt i8 %i.zu, -1
  br label %.lr.ph.i.7.i

.lr.ph.i.6.i:                                     ; preds = %.lr.ph.i.5.i
  %i.zv = and i32 %i.zs, %.pre-phi41.i
  %.not58.i = icmp eq i32 %i.zv, 0                ; 2 uses
  %.reass77.i = add nuw nsw i32 %i.zk, 2
  %i.zw = lshr i32 %.117.i.4.i, 2                 ; 2 uses
  %.not21.i.6.i = icmp eq i32 %i.zw, 0
  br i1 %.not21.i.6.i, label %bb.bi, label %.lr.ph.i.7.i

bb.bi:                                            ; preds = %.lr.ph.i.6.i
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zj, i64 1 ; 3 uses
  store ptr %i.zx, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !19
  %.pre44.i = zext i8 %i.zy to i32
  br label %.lr.ph.i.7.i

.lr.ph.i.7.i:                                     ; preds = %bb.bi, %.lr.ph.i.6.i, %.lr.ph.i.6.thread.i
  %i.zz = phi ptr [ %i.zx, %bb.bi ], [ %i.zj, %.lr.ph.i.6.i ], [ %i.zt, %.lr.ph.i.6.thread.i ] ; 2 uses
  %.not5873.i = phi i1 [ %.not58.i, %bb.bi ], [ %.not58.i, %.lr.ph.i.6.i ], [ %.not5871.i, %.lr.ph.i.6.thread.i ]
  %.pre-phi45.i = phi i32 [ %.pre44.i, %bb.bi ], [ %.pre-phi41.i, %.lr.ph.i.6.i ], [ %.pre42.i, %.lr.ph.i.6.thread.i ]
  %i.aaa = phi i32 [ 0, %bb.bi ], [ %.reass77.i, %.lr.ph.i.6.i ], [ 1, %.lr.ph.i.6.thread.i ]
  %.117.i.6.i = phi i32 [ 128, %bb.bi ], [ %i.zw, %.lr.ph.i.6.i ], [ 64, %.lr.ph.i.6.thread.i ] ; 2 uses
  %i.aab = shl nuw i8 %i.zr, 2
  %i.aac = select i1 %.not5873.i, i8 0, i8 2
  %i.aad = or disjoint i8 %i.aac, %i.aab
  %i.aae = and i32 %.117.i.6.i, %.pre-phi45.i
  %i.aaf = icmp ne i32 %i.aae, 0
  %i.aag = zext i1 %i.aaf to i8
  %i.aah = or disjoint i8 %i.aad, %i.aag
  %i.aai = add nuw nsw i32 %i.aaa, 1              ; 2 uses
  store i32 %i.aai, ptr %i.h, align 4, !tbaa !12
  %.not21.i.7.i = icmp samesign ult i32 %.117.i.6.i, 2
  br i1 %.not21.i.7.i, label %bb.bj, label %readbits.exit.i229

bb.bj:                                            ; preds = %.lr.ph.i.7.i
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zz, i64 1 ; 2 uses
  store ptr %i.aaj, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  br label %readbits.exit.i229

readbits.exit.i229:                               ; preds = %bb.bj, %.lr.ph.i.7.i
  %i.aak = phi i32 [ 0, %bb.bj ], [ %i.aai, %.lr.ph.i.7.i ]
  %i.aal = phi ptr [ %i.aaj, %bb.bj ], [ %i.zz, %.lr.ph.i.7.i ]
  %i.aam = getelementptr inbounds nuw i8, ptr %.023.i, i64 1 ; 2 uses
  store i8 %i.aah, ptr %.023.i, align 1, !tbaa !19
  %i.aan = add nsw i32 %.0922.i, -8               ; 2 uses
  %exitcond.not = icmp eq ptr %.023.i, %scevgep
  br i1 %exitcond.not, label %._crit_edge.i, label %.lr.ph.i225, !llvm.loop !3

._crit_edge.i:                                    ; preds = %readbits.exit.i229, %.preheader
  %.09.lcssa.i = phi i32 [ %i.ny, %.preheader ], [ %i.aan, %readbits.exit.i229 ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.j, %.preheader ], [ %i.aam, %readbits.exit.i229 ]
  %.not.i224 = icmp eq i32 %.09.lcssa.i, 0
  br i1 %.not.i224, label %readmanybits.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i
  %i.aao = load ptr, ptr %i.g, align 8, !tbaa !16 ; 2 uses
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !19
  %i.aaq = load i32, ptr %i.h, align 4, !tbaa !12 ; 2 uses
  %i.aar = lshr i32 128, %i.aaq
  br label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %bb.bm, %.lr.ph.preheader.i.i
  %i.aas = phi ptr [ %i.abf, %bb.bm ], [ %i.aao, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.aat = phi i32 [ %i.abg, %bb.bm ], [ %i.aaq, %.lr.ph.preheader.i.i ]
  %.in.i11.i = phi i32 [ %i.aau, %bb.bm ], [ %.09.lcssa.i, %.lr.ph.preheader.i.i ]
  %.026.i12.i = phi i8 [ %.1.i17.i, %bb.bm ], [ %i.aap, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01625.i13.i = phi i32 [ %.117.i16.i, %bb.bm ], [ %i.aar, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01824.i14.i = phi i8 [ %i.aba, %bb.bm ], [ 0, %.lr.ph.preheader.i.i ]
  %i.aau = add nsw i32 %.in.i11.i, -1             ; 3 uses
  %i.aav = shl i8 %.01824.i14.i, 1
  %i.aaw = zext i8 %.026.i12.i to i32
  %i.aax = and i32 %.01625.i13.i, %i.aaw
  %i.aay = icmp ne i32 %i.aax, 0
  %i.aaz = zext i1 %i.aay to i8
  %i.aba = or disjoint i8 %i.aav, %i.aaz          ; 2 uses
  %i.abb = add nsw i32 %i.aat, 1                  ; 2 uses
  store i32 %i.abb, ptr %i.h, align 4, !tbaa !12
  %i.abc = lshr i32 %.01625.i13.i, 1              ; 2 uses
  %.not21.i15.i = icmp eq i32 %i.abc, 0
  br i1 %.not21.i15.i, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %.lr.ph.i10.i
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aas, i64 1 ; 3 uses
  store ptr %i.abd, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %.not22.i19.i = icmp eq i32 %i.aau, 0
  br i1 %.not22.i19.i, label %readbits.exit20.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !19
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.lr.ph.i10.i
  %i.abf = phi ptr [ %i.aas, %.lr.ph.i10.i ], [ %i.abd, %bb.bl ]
  %i.abg = phi i32 [ %i.abb, %.lr.ph.i10.i ], [ 0, %bb.bl ]
  %.117.i16.i = phi i32 [ %i.abc, %.lr.ph.i10.i ], [ 128, %bb.bl ]
  %.1.i17.i = phi i8 [ %.026.i12.i, %.lr.ph.i10.i ], [ %i.abe, %bb.bl ]
  %.not.i18.i = icmp eq i32 %i.aau, 0
  br i1 %.not.i18.i, label %readbits.exit20.i, label %.lr.ph.i10.i, !llvm.loop !2

readbits.exit20.i:                                ; preds = %bb.bm, %bb.bk
  store i8 %i.aba, ptr %.0.lcssa.i, align 1, !tbaa !19
  br label %readmanybits.exit

readmanybits.exit:                                ; preds = %._crit_edge.i, %readbits.exit20.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, ptr noundef nonnull align 16 dereferenceable(72) %i.j, i64 72, i1 false)
  store i32 0, ptr %i.oa, align 8, !tbaa !12
  %i.abh = call i32 @Ptngc_largeint_div(i32 noundef %i.xu, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 19) #11 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.a, ptr noundef nonnull align 16 dereferenceable(76) %i.b, i64 76, i1 false)
  store i32 %i.abh, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !12
  %i.abi = load i32, ptr %i.oi, align 4, !tbaa !12
  %i.abj = call i32 @Ptngc_largeint_div(i32 noundef %i.abi, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 19) #11 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.a, ptr noundef nonnull align 16 dereferenceable(76) %i.b, i64 76, i1 false)
  store i32 %i.abj, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !12
  %i.abk = load i32, ptr %i.ok, align 4, !tbaa !12
  %i.abl = call i32 @Ptngc_largeint_div(i32 noundef %i.abk, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 19) #11 ; 3 uses
  store i32 %i.abl, ptr %i.k, align 16, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.abm = add nsw i32 %i.abl, %spec.select.i
  %i.abn = getelementptr inbounds nuw i8, ptr %.4314, i64 4
  store i32 %i.abm, ptr %.4314, align 4, !tbaa !12
  %i.abo = add nsw i32 %i.abj, %spec.select.i137
  %i.abp = getelementptr inbounds nuw i8, ptr %.4314, i64 8
  store i32 %i.abo, ptr %i.abn, align 4, !tbaa !12
  %i.abq = add nsw i32 %i.abh, %spec.select.i149
  %i.abr = getelementptr inbounds nuw i8, ptr %.4314, i64 12 ; 2 uses
  store i32 %i.abq, ptr %i.abp, align 4, !tbaa !12
  %i.abs = add nuw nsw i32 %.0104313, 1           ; 2 uses
  %exitcond.not.a = icmp eq i32 %i.abs, %i.xt
  br i1 %exitcond.not.a, label %._crit_edge, label %.preheader, !llvm.loop !57

._crit_edge:                                      ; preds = %readmanybits.exit
  %i.abt = sub nsw i32 %.0114344, %i.xt
  %i.abu = insertelement <2 x i32> poison, i32 %i.abj, i64 0
  %i.abv = insertelement <2 x i32> %i.abu, i32 %i.abh, i64 1
  br label %bb.bu

.lr.ph.i241:                                      ; preds = %readbits.exit27.i
  br i1 %.not21.i246, label %bb.bn, label %.lr.ph.i241.1

bb.bn:                                            ; preds = %.lr.ph.i241
  %i.abw = getelementptr inbounds nuw i8, ptr %i.pq, i64 1 ; 3 uses
  store ptr %i.abw, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.abx = load i8, ptr %i.abw, align 1, !tbaa !19
  %.pre = zext i8 %i.abx to i32
  br label %.lr.ph.i241.1

.lr.ph.i241.1:                                    ; preds = %bb.bn, %.lr.ph.i241
  %.pre-phi = phi i32 [ %.pre, %bb.bn ], [ %i.pt, %.lr.ph.i241 ] ; 3 uses
  %i.aby = phi ptr [ %i.abw, %bb.bn ], [ %i.pq, %.lr.ph.i241 ] ; 3 uses
  %i.abz = phi i32 [ 0, %bb.bn ], [ %i.pv, %.lr.ph.i241 ]
  %.117.i247 = phi i32 [ 128, %bb.bn ], [ %i.pw, %.lr.ph.i241 ] ; 3 uses
  %i.aca = select i1 %.not567.a, i32 0, i32 2
  %i.acb = and i32 %.117.i247, %.pre-phi
  %i.acc = icmp ne i32 %i.acb, 0
  %i.acd = zext i1 %i.acc to i32
  %i.ace = or disjoint i32 %i.aca, %i.acd
  %i.acf = lshr i32 %.117.i247, 1                 ; 2 uses
  %.not21.i246.1 = icmp eq i32 %i.acf, 0
  br i1 %.not21.i246.1, label %.lr.ph.i241.2.thread, label %.lr.ph.i241.2

.lr.ph.i241.2.thread:                             ; preds = %.lr.ph.i241.1
  %i.acg = getelementptr inbounds nuw i8, ptr %i.aby, i64 1 ; 3 uses
  store ptr %i.acg, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.ach = load i8, ptr %i.acg, align 1, !tbaa !19 ; 2 uses
  %.pre422 = zext i8 %i.ach to i32
  %.not568666 = icmp sgt i8 %i.ach, -1
  br label %.lr.ph.i241.3

.lr.ph.i241.2:                                    ; preds = %.lr.ph.i241.1
  %i.aci = and i32 %i.acf, %.pre-phi
  %.not568 = icmp eq i32 %i.aci, 0                ; 2 uses
  %.reass692.a = add nuw nsw i32 %i.abz, 2
  %i.acj = lshr i32 %.117.i247, 2                 ; 2 uses
  %.not21.i246.2 = icmp eq i32 %i.acj, 0
  br i1 %.not21.i246.2, label %bb.bo, label %.lr.ph.i241.3

bb.bo:                                            ; preds = %.lr.ph.i241.2
  %i.ack = getelementptr inbounds nuw i8, ptr %i.aby, i64 1 ; 3 uses
  store ptr %i.ack, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.acl = load i8, ptr %i.ack, align 1, !tbaa !19
  %.pre424 = zext i8 %i.acl to i32
  br label %.lr.ph.i241.3

.lr.ph.i241.3:                                    ; preds = %.lr.ph.i241.2.thread, %bb.bo, %.lr.ph.i241.2
  %.not568668 = phi i1 [ %.not568, %bb.bo ], [ %.not568, %.lr.ph.i241.2 ], [ %.not568666, %.lr.ph.i241.2.thread ]
  %.pre-phi425 = phi i32 [ %.pre424, %bb.bo ], [ %.pre-phi, %.lr.ph.i241.2 ], [ %.pre422, %.lr.ph.i241.2.thread ]
  %i.acm = phi ptr [ %i.ack, %bb.bo ], [ %i.aby, %.lr.ph.i241.2 ], [ %i.acg, %.lr.ph.i241.2.thread ]
  %i.acn = phi i32 [ 0, %bb.bo ], [ %.reass692.a, %.lr.ph.i241.2 ], [ 1, %.lr.ph.i241.2.thread ]
  %.117.i247.2 = phi i32 [ 128, %bb.bo ], [ %i.acj, %.lr.ph.i241.2 ], [ 64, %.lr.ph.i241.2.thread ] ; 2 uses
  %i.aco = shl nuw nsw i32 %i.ace, 2
  %i.acp = select i1 %.not568668, i32 0, i32 2
  %i.acq = or disjoint i32 %i.aco, %i.acp
  %i.acr = and i32 %.117.i247.2, %.pre-phi425
  %i.acs = icmp ne i32 %i.acr, 0
  %i.act = zext i1 %i.acs to i32
  %i.acu = or disjoint i32 %i.acq, %i.act         ; 3 uses
  %i.acv = add nuw nsw i32 %i.acn, 1
  store i32 %i.acv, ptr %i.h, align 4, !tbaa !12
  %.not21.i246.3 = icmp samesign ult i32 %.117.i247.2, 2
  br i1 %.not21.i246.3, label %bb.bp, label %readbits.exit252

bb.bp:                                            ; preds = %.lr.ph.i241.3
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acm, i64 1
  store ptr %i.acw, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.h, align 4, !tbaa !12
  br label %readbits.exit252

readbits.exit252:                                 ; preds = %.lr.ph.i241.3, %bb.bp
  %i.acx = icmp eq i32 %i.acu, 15
  br i1 %i.acx, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %readbits.exit252
  %.lhs.trunc = trunc nuw nsw i32 %i.acu to i8
  %i.acy = urem i8 %.lhs.trunc, 3
  %.zext = zext nneg i8 %i.acy to i32
  %.lhs.trunc672 = trunc nuw nsw i32 %i.acu to i8
  %i.acz = udiv i8 %.lhs.trunc672, 3
  %narrow = add nuw nsw i8 %i.acz, 1
  %i.ada = zext nneg i8 %narrow to i32
  %i.adb = add nsw i32 %.zext, -1
  br label %bb.br

bb.br:                                            ; preds = %readbits.exit252, %bb.bq
  %.1110 = phi i32 [ %i.ada, %bb.bq ], [ 6, %readbits.exit252 ]
  %.0102 = phi i32 [ %i.adb, %bb.bq ], [ 0, %readbits.exit252 ]
  %i.adc = add nsw i32 %.0102, %.0118332
  br label %bb.bu

bb.bs:                                            ; preds = %readbits.exit49.i
  %i.add = sub nuw nsw i32 1, %.0112345
  br label %bb.bu

.lr.ph.i254:                                      ; preds = %readbits.exit38.i
  %i.ade = load i8, ptr %i.qj, align 1, !tbaa !19
  %i.adf = lshr i32 128, %i.qi
  %i.adg = zext i8 %i.ade to i32                  ; 2 uses
  %i.adh = and i32 %i.adf, %i.adg
  %.not566 = icmp eq i32 %i.adh, 0
  %.not21.i259 = icmp samesign ugt i32 %i.qi, 6
  br i1 %.not21.i259, label %.lr.ph.i254.1.thread, label %.lr.ph.i254.1
end_hunk_2
