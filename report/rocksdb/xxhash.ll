Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/xxhash?download=true
inline.NumInlined: 910
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 57
begin_hunk_0_@ROCKSDB_XXH128_hashFromCanonical
define { i64, i64 } @ROCKSDB_XXH128_hashFromCanonical(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %.val2 = load i64, ptr %0, align 1, !tbaa !27
  %i.a = tail call noundef i64 @llvm.bswap.i64(i64 %.val2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.b, align 1, !tbaa !27
  %i.c = tail call noundef i64 @llvm.bswap.i64(i64 %.val)
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.a, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: none) uwtable
define range(i32 0, 2) i32 @ROCKSDB_XXH3_generateSecret(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3) local_unnamed_addr #22 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ult i64 %1, 136
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %3, 0                        ; 2 uses
  %spec.select = select i1 %i.c, i64 192, i64 %3  ; 2 uses
  %spec.select41 = select i1 %i.c, ptr @_ZL12XXH3_kSecret, ptr %2 ; 3 uses
  %i.d = icmp eq ptr %spec.select41, null
  br i1 %i.d, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.03650 = phi i64 [ %i.h, %.lr.ph ], [ 0, %bb.b ] ; 3 uses
  %i.e = sub nuw i64 %1, %.03650
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %spec.select) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.03650
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull align 1 %spec.select41, i64 %i.f, i1 false)
  %i.h = add i64 %i.f, %.03650                    ; 2 uses
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %.lr.ph, label %.lr.ph53, !llvm.loop !55

.lr.ph53:                                         ; preds = %.lr.ph
  %i.j = lshr i64 %1, 4                           ; 3 uses
  %i.k = tail call { i64, i64 } @ROCKSDB_XXH3_128bits_withSeed(ptr noundef nonnull readonly captures(address) %spec.select41, i64 noundef %spec.select, i64 noundef 0) #34 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.k, 1        ; 2 uses
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.l) ; 3 uses
  %i.o = tail call noundef i64 @llvm.bswap.i64(i64 %i.m) ; 2 uses
  %min.iters.check = icmp ult i64 %1, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph53
  %n.vec = and i64 %i.j, 1152921504606846972      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert59 = insertelement <4 x i64> poison, i64 %i.o, i64 0
  %broadcast.splat60 = shufflevector <4 x i64> %broadcast.splatinsert59, <4 x i64> poison, <4 x i32> zeroinitializer
  %invariant.op = xor <4 x i64> %broadcast.splat60, %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.p = sub nuw nsw <4 x i64> splat (i64 6455697860950631241), %vec.ind
  %i.q = add nuw nsw <4 x i64> %vec.ind, splat (i64 -4466874330221494952)
  %.reass62 = xor <4 x i64> %i.p, %invariant.op
  %i.r = zext <4 x i64> %.reass62 to <4 x i128>
  %i.s = mul nuw <4 x i128> %i.r, splat (i128 11400714785074694791) ; 2 uses
  %i.t = trunc <4 x i128> %i.s to <4 x i64>
  %i.u = lshr <4 x i128> %i.s, splat (i128 64)
  %i.v = trunc nuw <4 x i128> %i.u to <4 x i64>
  %i.w = add <4 x i64> %i.t, splat (i64 270215977642229760)
  %i.x = xor <4 x i64> %i.q, %broadcast.splat     ; 2 uses
  %i.y = and <4 x i64> %i.x, splat (i64 4294967295)
  %i.z = mul nuw <4 x i64> %i.y, splat (i64 2246822518)
  %i.aa = add <4 x i64> %i.z, %i.x
  %i.ab = add <4 x i64> %i.aa, %i.v               ; 2 uses
  %i.ac = tail call <4 x i64> @llvm.bswap.v4i64(<4 x i64> %i.ab)
  %i.ad = xor <4 x i64> %i.ac, %i.w
  %i.ae = zext <4 x i64> %i.ad to <4 x i128>
  %i.af = mul nuw <4 x i128> %i.ae, splat (i128 14029467366897019727) ; 2 uses
  %i.ag = trunc <4 x i128> %i.af to <4 x i64>     ; 2 uses
  %i.ah = lshr <4 x i128> %i.af, splat (i128 64)
  %i.ai = trunc nuw <4 x i128> %i.ah to <4 x i64>
  %i.aj = mul <4 x i64> %i.ab, splat (i64 -4417276706812531889)
  %i.ak = add <4 x i64> %i.aj, %i.ai              ; 2 uses
  %i.al = lshr <4 x i64> %i.ag, splat (i64 37)
  %i.am = xor <4 x i64> %i.al, %i.ag
  %i.an = mul <4 x i64> %i.am, splat (i64 1609587791953885689) ; 2 uses
  %i.ao = lshr <4 x i64> %i.an, splat (i64 32)
  %i.ap = lshr <4 x i64> %i.ak, splat (i64 37)
  %i.aq = xor <4 x i64> %i.ap, %i.ak
  %i.ar = mul <4 x i64> %i.aq, splat (i64 1609587791953885689) ; 2 uses
  %i.as = lshr <4 x i64> %i.ar, splat (i64 32)
  %i.at = shl nuw i64 %index, 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.at ; 2 uses
  %wide.vec = load <8 x i64>, ptr %i.au, align 1, !tbaa !27 ; 2 uses
  %strided.vec = shufflevector <8 x i64> %wide.vec, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec61 = shufflevector <8 x i64> %wide.vec, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.av = xor <4 x i64> %i.ao, %strided.vec
  %i.aw = xor <4 x i64> %i.av, %i.an
  %i.ax = xor <4 x i64> %i.as, %strided.vec61
  %i.ay = xor <4 x i64> %i.ax, %i.ar
  %interleaved.vec = shufflevector <4 x i64> %i.aw, <4 x i64> %i.ay, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i64> %interleaved.vec, ptr %i.au, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge54, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph53, %middle.block
  %.03751.ph = phi i64 [ 0, %.lr.ph53 ], [ %n.vec, %middle.block ]
  %invariant.op63 = xor i64 %i.o, %i.n
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03751 = phi i64 [ %i.ch, %scalar.ph ], [ %.03751.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ba = sub nuw nsw i64 6455697860950631241, %.03751
  %i.bb = add nuw nsw i64 %.03751, -4466874330221494952
  %.reass.reass = xor i64 %i.ba, %invariant.op63
  %i.bc = zext i64 %.reass.reass to i128
  %i.bd = mul nuw i128 %i.bc, 11400714785074694791 ; 2 uses
  %i.be = trunc i128 %i.bd to i64
  %i.bf = lshr i128 %i.bd, 64
  %i.bg = trunc nuw i128 %i.bf to i64
  %i.bh = add i64 %i.be, 270215977642229760
  %i.bi = xor i64 %i.bb, %i.n                     ; 2 uses
  %i.bj = and i64 %i.bi, 4294967295
  %i.bk = mul nuw i64 %i.bj, 2246822518
  %i.bl = add i64 %i.bk, %i.bi
  %i.bm = add i64 %i.bl, %i.bg                    ; 2 uses
  %i.bn = tail call noundef i64 @llvm.bswap.i64(i64 %i.bm)
  %i.bo = xor i64 %i.bn, %i.bh
  %i.bp = zext i64 %i.bo to i128
  %i.bq = mul nuw i128 %i.bp, 14029467366897019727 ; 2 uses
  %i.br = trunc i128 %i.bq to i64
  %i.bs = lshr i128 %i.bq, 64
  %i.bt = trunc nuw i128 %i.bs to i64
  %i.bu = mul i64 %i.bm, -4417276706812531889
  %i.bv = add i64 %i.bu, %i.bt
  %i.bw = shl nuw i64 %.03751, 4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %i.bw ; 2 uses
  %i.by = insertelement <2 x i64> poison, i64 %i.br, i64 0
  %i.bz = insertelement <2 x i64> %i.by, i64 %i.bv, i64 1 ; 2 uses
  %i.ca = lshr <2 x i64> %i.bz, splat (i64 37)
  %i.cb = xor <2 x i64> %i.ca, %i.bz
  %i.cc = mul <2 x i64> %i.cb, splat (i64 1609587791953885689) ; 2 uses
  %i.cd = lshr <2 x i64> %i.cc, splat (i64 32)
  %i.ce = load <2 x i64>, ptr %i.bx, align 1, !tbaa !27
  %i.cf = xor <2 x i64> %i.cd, %i.ce
  %i.cg = xor <2 x i64> %i.cf, %i.cc
  store <2 x i64> %i.cg, ptr %i.bx, align 1
  %i.ch = add nuw nsw i64 %.03751, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ch, %i.j
  br i1 %exitcond.not, label %._crit_edge54, label %scalar.ph, !llvm.loop !57

._crit_edge54:                                    ; preds = %scalar.ph, %middle.block
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -16 ; 2 uses
  %i.ck = load <2 x i64>, ptr %i.cj, align 1, !tbaa !27
  %i.cl = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.cm = insertelement <2 x i64> %i.cl, i64 %i.m, i64 1
  %i.cn = xor <2 x i64> %i.ck, %i.cm
  store <2 x i64> %i.cn, ptr %i.cj, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge54
  %.0 = phi i32 [ 0, %._crit_edge54 ], [ 1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define void @ROCKSDB_XXH3_generateSecret_fromSeed(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #23 {
bb.a:
  %i.a = insertelement <8 x i64> poison, i64 %1, i64 0
  %i.b = shufflevector <8 x i64> %i.a, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.c = sub <8 x i64> <i64 poison, i64 0, i64 poison, i64 0, i64 poison, i64 0, i64 poison, i64 0>, %i.b
  %i.d = shufflevector <8 x i64> %i.b, <8 x i64> %i.c, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15> ; 3 uses
  %i.e = add <8 x i64> %i.d, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %i.f = add <8 x i64> %i.d, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %i.g = add <8 x i64> %i.d, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store <8 x i64> %i.e, ptr %0, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i64> %i.f, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <8 x i64> %i.g, ptr %.sroa.5.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(read) uwtable
define internal fastcc noundef i64 @_ZL21XXH3_len_129to240_64bPKhmS0_mm(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 129, 241) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #26 {
bb.a:
  %i.a = mul i64 %1, -7046029288634856825
  %4 = load <4 x i64>, ptr %0, align 1, !tbaa !27
  %5 = load <4 x i64>, ptr %2, align 1, !tbaa !27 ; 2 uses
  %6 = insertelement <4 x i64> poison, i64 %3, i64 0
  %7 = shufflevector <4 x i64> %6, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %8 = add <4 x i64> %5, %7
  %9 = sub <4 x i64> %5, %7
  %10 = shufflevector <4 x i64> %8, <4 x i64> %9, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %11 = xor <4 x i64> %10, %4                     ; 4 uses
  %12 = extractelement <4 x i64> %11, i64 0
  %13 = zext i64 %12 to i128
  %14 = extractelement <4 x i64> %11, i64 1
  %15 = zext i64 %14 to i128
  %16 = mul nuw i128 %15, %13                     ; 2 uses
  %17 = lshr i128 %16, 64
  %18 = xor i128 %17, %16
  %19 = trunc i128 %18 to i64
  %20 = add i64 %i.a, %19
  %21 = extractelement <4 x i64> %11, i64 2
  %22 = zext i64 %21 to i128
  %23 = extractelement <4 x i64> %11, i64 3
  %24 = zext i64 %23 to i128
  %25 = mul nuw i128 %24, %22                     ; 2 uses
  %26 = lshr i128 %25, 64
  %27 = xor i128 %26, %25
  %28 = trunc i128 %27 to i64
  %29 = add i64 %20, %28
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %32 = load <4 x i64>, ptr %30, align 1, !tbaa !27 ; 2 uses
  %33 = load <4 x i64>, ptr %31, align 1, !tbaa !27 ; 2 uses
  %34 = shufflevector <4 x i64> %33, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %35 = insertelement <2 x i64> poison, i64 %3, i64 0
  %36 = shufflevector <2 x i64> %35, <2 x i64> poison, <2 x i32> zeroinitializer ; 6 uses
  %37 = add <2 x i64> %34, %36
  %38 = shufflevector <4 x i64> %32, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %39 = xor <2 x i64> %37, %38
  %40 = shufflevector <4 x i64> %33, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %41 = sub <2 x i64> %40, %36
  %42 = shufflevector <4 x i64> %32, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %43 = xor <2 x i64> %41, %42
  %44 = zext <2 x i64> %39 to <2 x i128>
  %45 = zext <2 x i64> %43 to <2 x i128>
  %46 = mul nuw <2 x i128> %45, %44               ; 2 uses
  %47 = lshr <2 x i128> %46, splat (i128 64)
  %48 = xor <2 x i128> %47, %46                   ; 2 uses
  %49 = bitcast <2 x i128> %48 to <4 x i64>
  %50 = extractelement <4 x i64> %49, i64 0
  %51 = add i64 %29, %50
  %52 = bitcast <2 x i128> %48 to <4 x i64>
  %53 = extractelement <4 x i64> %52, i64 2
  %54 = add i64 %51, %53
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %57 = load <4 x i64>, ptr %55, align 1, !tbaa !27 ; 2 uses
  %58 = load <4 x i64>, ptr %56, align 1, !tbaa !27 ; 2 uses
  %59 = shufflevector <4 x i64> %58, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %60 = add <2 x i64> %59, %36
  %61 = shufflevector <4 x i64> %57, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %62 = xor <2 x i64> %60, %61
  %63 = shufflevector <4 x i64> %58, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %64 = sub <2 x i64> %63, %36
  %65 = shufflevector <4 x i64> %57, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %66 = xor <2 x i64> %64, %65
  %67 = zext <2 x i64> %62 to <2 x i128>
  %68 = zext <2 x i64> %66 to <2 x i128>
  %69 = mul nuw <2 x i128> %68, %67               ; 2 uses
  %70 = lshr <2 x i128> %69, splat (i128 64)
  %71 = xor <2 x i128> %70, %69                   ; 2 uses
  %72 = bitcast <2 x i128> %71 to <4 x i64>
  %73 = extractelement <4 x i64> %72, i64 0
  %74 = add i64 %54, %73
  %75 = bitcast <2 x i128> %71 to <4 x i64>
  %76 = extractelement <4 x i64> %75, i64 2
  %77 = add i64 %74, %76
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %79 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %80 = load <4 x i64>, ptr %78, align 1, !tbaa !27 ; 2 uses
  %81 = load <4 x i64>, ptr %79, align 1, !tbaa !27 ; 2 uses
  %82 = shufflevector <4 x i64> %81, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %83 = add <2 x i64> %82, %36
  %84 = shufflevector <4 x i64> %80, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %85 = xor <2 x i64> %83, %84
  %86 = shufflevector <4 x i64> %81, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %87 = sub <2 x i64> %86, %36
  %88 = shufflevector <4 x i64> %80, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %89 = xor <2 x i64> %87, %88
  %90 = zext <2 x i64> %85 to <2 x i128>
  %91 = zext <2 x i64> %89 to <2 x i128>
  %92 = mul nuw <2 x i128> %91, %90               ; 2 uses
  %93 = lshr <2 x i128> %92, splat (i128 64)
  %94 = xor <2 x i128> %93, %92                   ; 2 uses
  %95 = bitcast <2 x i128> %94 to <4 x i64>
  %96 = extractelement <4 x i64> %95, i64 0
  %97 = add i64 %77, %96
  %98 = bitcast <2 x i128> %94 to <4 x i64>
  %99 = extractelement <4 x i64> %98, i64 2
  %op.rdx = add i64 %97, %99                      ; 2 uses
  %i.b = trunc nuw nsw i64 %1 to i32
  %i.c = lshr i32 %i.b, 4                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 119
  %.val44 = load i64, ptr %i.e, align 1, !tbaa !27
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -8
  %.val43 = load i64, ptr %i.g, align 1, !tbaa !27
  %.val42 = load i64, ptr %i.f, align 1, !tbaa !27
  %i.h = add i64 %.val42, %3
  %i.i = xor i64 %i.h, %.val44
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 127
  %.val41 = load i64, ptr %i.j, align 1, !tbaa !27
  %i.k = sub i64 %.val41, %3
  %i.l = xor i64 %i.k, %.val43
  %i.m = zext i64 %i.i to i128
  %i.n = zext i64 %i.l to i128
  %i.o = mul nuw i128 %i.n, %i.m                  ; 2 uses
  %i.p = lshr i128 %i.o, 64
  %i.q = xor i128 %i.p, %i.o
  %i.r = trunc i128 %i.q to i64                   ; 2 uses
  %i.s = lshr i64 %op.rdx, 37
  %i.t = xor i64 %i.s, %op.rdx
  %i.u = mul i64 %i.t, 1609587791953885689        ; 2 uses
  %i.v = lshr i64 %i.u, 32
  %i.w = xor i64 %i.v, %i.u                       ; 2 uses
  %.not = icmp eq i32 %i.c, 8
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.03552 = phi i64 [ %i.r, %.lr.ph.preheader ], [ %i.ao, %.lr.ph ]
  %.13751 = phi i64 [ %i.w, %.lr.ph.preheader ], [ %i.x, %.lr.ph ]
  %i.x = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.13751) #32, !srcloc !61 ; 2 uses
  %i.y = shl nuw nsw i64 %indvars.iv, 4           ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %2, i64 %i.y      ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -125
  %.val48 = load i64, ptr %i.z, align 1, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val47 = load i64, ptr %i.ac, align 1, !tbaa !27
  %.val46 = load i64, ptr %i.ab, align 1, !tbaa !27
  %i.ad = add i64 %.val46, %3
  %i.ae = xor i64 %i.ad, %.val48
  %i.af = getelementptr i8, ptr %i.aa, i64 -117
  %.val45 = load i64, ptr %i.af, align 1, !tbaa !27
  %i.ag = sub i64 %.val45, %3
  %i.ah = xor i64 %i.ag, %.val47
  %i.ai = zext i64 %i.ae to i128
  %i.aj = zext i64 %i.ah to i128
  %i.ak = mul nuw i128 %i.aj, %i.ai               ; 2 uses
  %i.al = lshr i128 %i.ak, 64
  %i.am = xor i128 %i.al, %i.ak
  %i.an = trunc i128 %i.am to i64
  %i.ao = add i64 %.03552, %i.an                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.137.lcssa = phi i64 [ %i.w, %bb.a ], [ %i.x, %.lr.ph ]
  %.035.lcssa = phi i64 [ %i.r, %bb.a ], [ %i.ao, %.lr.ph ]
  %i.ap = add i64 %.035.lcssa, %.137.lcssa        ; 2 uses
  %i.aq = lshr i64 %i.ap, 37
  %i.ar = xor i64 %i.aq, %i.ap
  %i.as = mul i64 %i.ar, 1609587791953885689      ; 2 uses
  %i.at = lshr i64 %i.as, 32
  %i.au = xor i64 %i.at, %i.as
  ret i64 %i.au
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32>, <16 x i32>, <16 x i32>, i32 immarg) #28

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @_ZL22XXH3_len_129to240_128bPKhmS0_mm(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 129, 241) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #29 {
bb.a:
  %i.a = mul i64 %1, -7046029288634856825
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val71 = load i64, ptr %0, align 1, !tbaa !27  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val70 = load i64, ptr %i.c, align 1, !tbaa !27 ; 2 uses
  %.val69 = load i64, ptr %2, align 1, !tbaa !27
  %i.d = add i64 %.val69, %3
  %i.e = xor i64 %i.d, %.val71
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val68 = load i64, ptr %i.f, align 1, !tbaa !27
  %i.g = sub i64 %.val68, %3
  %i.h = xor i64 %i.g, %.val70
  %i.i = zext i64 %i.e to i128
  %i.j = zext i64 %i.h to i128
  %i.k = mul nuw i128 %i.j, %i.i                  ; 2 uses
  %i.l = lshr i128 %i.k, 64
  %i.m = xor i128 %i.l, %i.k
  %i.n = trunc i128 %i.m to i64
  %i.o = add i64 %i.a, %i.n
  %.val67 = load i64, ptr %i.b, align 1, !tbaa !27 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val66 = load i64, ptr %i.p, align 1, !tbaa !27 ; 2 uses
  %i.q = add i64 %.val66, %.val67
  %i.r = xor i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val63 = load i64, ptr %i.s, align 1, !tbaa !27
  %i.t = add i64 %.val63, %3
  %i.u = xor i64 %i.t, %.val67
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val62 = load i64, ptr %i.v, align 1, !tbaa !27
  %i.w = sub i64 %.val62, %3
  %i.x = xor i64 %i.w, %.val66
  %i.y = zext i64 %i.u to i128
  %i.z = zext i64 %i.x to i128
  %i.aa = mul nuw i128 %i.z, %i.y                 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = xor i128 %i.ab, %i.aa
  %i.ad = trunc i128 %i.ac to i64
  %i.ae = add i64 %.val70, %.val71
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val71.1 = load i64, ptr %i.ag, align 1, !tbaa !27 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val70.1 = load i64, ptr %i.aj, align 1, !tbaa !27 ; 2 uses
  %.val69.1 = load i64, ptr %i.ai, align 1, !tbaa !27
  %i.ak = add i64 %.val69.1, %3
  %i.al = xor i64 %i.ak, %.val71.1
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val68.1 = load i64, ptr %i.am, align 1, !tbaa !27
  %i.an = sub i64 %.val68.1, %3
  %i.ao = xor i64 %i.an, %.val70.1
  %i.ap = zext i64 %i.al to i128
  %i.aq = zext i64 %i.ao to i128
  %i.ar = mul nuw i128 %i.aq, %i.ap               ; 2 uses
  %i.as = lshr i128 %i.ar, 64
  %i.at = xor i128 %i.as, %i.ar
  %i.au = trunc i128 %i.at to i64
  %i.av = add i64 %i.r, %i.au
  %.val67.1 = load i64, ptr %i.ah, align 1, !tbaa !27 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val66.1 = load i64, ptr %i.aw, align 1, !tbaa !27 ; 2 uses
  %i.ax = add i64 %.val66.1, %.val67.1
  %i.ay = xor i64 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val63.1 = load i64, ptr %i.az, align 1, !tbaa !27
  %i.ba = add i64 %.val63.1, %3
  %i.bb = xor i64 %i.ba, %.val67.1
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val62.1 = load i64, ptr %i.bc, align 1, !tbaa !27
  %i.bd = sub i64 %.val62.1, %3
  %i.be = xor i64 %i.bd, %.val66.1
  %i.bf = zext i64 %i.bb to i128
  %i.bg = zext i64 %i.be to i128
  %i.bh = mul nuw i128 %i.bg, %i.bf               ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
  %i.bk = trunc i128 %i.bj to i64
  %i.bl = add i64 %i.af, %i.bk
  %i.bm = add i64 %.val70.1, %.val71.1
  %i.bn = xor i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.val71.2 = load i64, ptr %i.bo, align 1, !tbaa !27 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val70.2 = load i64, ptr %i.br, align 1, !tbaa !27 ; 2 uses
  %.val69.2 = load i64, ptr %i.bq, align 1, !tbaa !27
  %i.bs = add i64 %.val69.2, %3
  %i.bt = xor i64 %i.bs, %.val71.2
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.val68.2 = load i64, ptr %i.bu, align 1, !tbaa !27
  %i.bv = sub i64 %.val68.2, %3
  %i.bw = xor i64 %i.bv, %.val70.2
  %i.bx = zext i64 %i.bt to i128
  %i.by = zext i64 %i.bw to i128
  %i.bz = mul nuw i128 %i.by, %i.bx               ; 2 uses
  %i.ca = lshr i128 %i.bz, 64
  %i.cb = xor i128 %i.ca, %i.bz
  %i.cc = trunc i128 %i.cb to i64
  %i.cd = add i64 %i.ay, %i.cc
  %.val67.2 = load i64, ptr %i.bp, align 1, !tbaa !27 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val66.2 = load i64, ptr %i.ce, align 1, !tbaa !27 ; 2 uses
  %i.cf = add i64 %.val66.2, %.val67.2
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.val63.2 = load i64, ptr %i.cg, align 1, !tbaa !27
  %i.ch = add i64 %.val63.2, %3
  %i.ci = xor i64 %i.ch, %.val67.2
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.val62.2 = load i64, ptr %i.cj, align 1, !tbaa !27
  %i.ck = sub i64 %.val62.2, %3
  %i.cl = xor i64 %i.ck, %.val66.2
  %i.cm = zext i64 %i.ci to i128
  %i.cn = zext i64 %i.cl to i128
end_hunk_0
begin_hunk_1_@_ZL22XXH3_len_129to240_128bPKhmS0_mm:bb.a
  %i.dm = xor <2 x i64> %i.dk, %i.dl
  %i.dn = zext <2 x i64> %i.dm to <2 x i128>
  %i.do = insertelement <2 x i64> %i.dd, i64 %.val71.3, i64 0
  %i.dp = xor <2 x i64> %i.di, %i.do
  %i.dq = zext <2 x i64> %i.dp to <2 x i128>
  %i.dr = mul nuw <2 x i128> %i.dn, %i.dq         ; 3 uses
  %i.ds = extractelement <2 x i128> %i.dr, i64 0
  %i.dt = lshr i128 %i.ds, 64
  %i.du = extractelement <2 x i128> %i.dr, i64 1
  %i.dv = lshr i128 %i.du, 64
  %i.dw = insertelement <2 x i128> poison, i128 %i.dt, i64 0
  %i.dx = insertelement <2 x i128> %i.dw, i128 %i.dv, i64 1
  %i.dy = xor <2 x i128> %i.dx, %i.dr
  %i.dz = trunc <2 x i128> %i.dy to <2 x i64>
  %i.ea = add <2 x i64> %i.dc, %i.dz
  %i.eb = insertelement <2 x i64> poison, i64 %.val71.3, i64 0
  %i.ec = insertelement <2 x i64> %i.eb, i64 %.val66.3, i64 1
  %i.ed = add <2 x i64> %i.dd, %i.ec
  %i.ee = shufflevector <2 x i64> %i.ed, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ef = xor <2 x i64> %i.ea, %i.ee              ; 2 uses
  %i.eg = lshr <2 x i64> %i.ef, splat (i64 37)
  %i.eh = xor <2 x i64> %i.eg, %i.ef
  %i.ei = mul <2 x i64> %i.eh, splat (i64 1609587791953885689) ; 2 uses
  %i.ej = lshr <2 x i64> %i.ei, splat (i64 32)
  %i.ek = xor <2 x i64> %i.ej, %i.ei              ; 2 uses
  %.not99 = icmp samesign ult i64 %1, 160
  br i1 %.not99, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.eo = load <2 x i64>, ptr %i.en, align 1, !tbaa !27 ; 3 uses
  %i.ep = tail call <4 x i64> @llvm.masked.load.v4i64.p0(ptr nonnull align 1 %i.el, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i64> poison), !tbaa !27
  %i.eq = shufflevector <4 x i64> %i.ep, <4 x i64> poison, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.er = load <4 x i64>, ptr %i.em, align 1, !tbaa !27 ; 2 uses
  %i.es = shufflevector <4 x i64> %i.er, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.et = add <2 x i64> %i.es, %i.dh
  %i.eu = shufflevector <2 x i64> %i.eq, <2 x i64> %i.eo, <2 x i32> <i32 0, i32 3>
  %i.ev = xor <2 x i64> %i.et, %i.eu
  %i.ew = shufflevector <4 x i64> %i.er, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.ex = sub <2 x i64> %i.ew, %i.dh
  %i.ey = shufflevector <2 x i64> %i.eo, <2 x i64> %i.eq, <2 x i32> <i32 0, i32 3>
  %i.ez = xor <2 x i64> %i.ex, %i.ey
  %i.fa = zext <2 x i64> %i.ev to <2 x i128>
  %i.fb = zext <2 x i64> %i.ez to <2 x i128>
  %i.fc = mul nuw <2 x i128> %i.fb, %i.fa         ; 2 uses
  %i.fd = lshr <2 x i128> %i.fc, splat (i128 64)
  %i.fe = xor <2 x i128> %i.fd, %i.fc
  %i.ff = trunc <2 x i128> %i.fe to <2 x i64>
  %i.fg = add <2 x i64> %i.ek, %i.ff
  %i.fh = add <2 x i64> %i.eo, %i.eq
  %i.fi = shufflevector <2 x i64> %i.fh, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fj = xor <2 x i64> %i.fg, %i.fi              ; 2 uses
  %.not = icmp samesign ult i64 %1, 192
  br i1 %.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 35
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fn = load <2 x i64>, ptr %i.fm, align 1, !tbaa !27 ; 3 uses
  %i.fo = tail call <4 x i64> @llvm.masked.load.v4i64.p0(ptr nonnull align 1 %i.fk, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i64> poison), !tbaa !27
  %i.fp = shufflevector <4 x i64> %i.fo, <4 x i64> poison, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.fq = load <4 x i64>, ptr %i.fl, align 1, !tbaa !27 ; 2 uses
  %i.fr = shufflevector <4 x i64> %i.fq, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.fs = add <2 x i64> %i.fr, %i.dh
  %i.ft = shufflevector <2 x i64> %i.fp, <2 x i64> %i.fn, <2 x i32> <i32 0, i32 3>
  %i.fu = xor <2 x i64> %i.fs, %i.ft
  %i.fv = shufflevector <4 x i64> %i.fq, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.fw = sub <2 x i64> %i.fv, %i.dh
  %i.fx = shufflevector <2 x i64> %i.fn, <2 x i64> %i.fp, <2 x i32> <i32 0, i32 3>
  %i.fy = xor <2 x i64> %i.fw, %i.fx
  %i.fz = zext <2 x i64> %i.fu to <2 x i128>
  %i.ga = zext <2 x i64> %i.fy to <2 x i128>
  %i.gb = mul nuw <2 x i128> %i.ga, %i.fz         ; 2 uses
  %i.gc = lshr <2 x i128> %i.gb, splat (i128 64)
  %i.gd = xor <2 x i128> %i.gc, %i.gb
  %i.ge = trunc <2 x i128> %i.gd to <2 x i64>
  %i.gf = add <2 x i64> %i.fj, %i.ge
  %i.gg = add <2 x i64> %i.fn, %i.fp
  %i.gh = shufflevector <2 x i64> %i.gg, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gi = xor <2 x i64> %i.gf, %i.gh              ; 2 uses
  %.not.1 = icmp samesign ult i64 %1, 224
  br i1 %.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 67
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.gm = load <2 x i64>, ptr %i.gl, align 1, !tbaa !27 ; 3 uses
  %i.gn = tail call <4 x i64> @llvm.masked.load.v4i64.p0(ptr nonnull align 1 %i.gj, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i64> poison), !tbaa !27
  %i.go = shufflevector <4 x i64> %i.gn, <4 x i64> poison, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.gp = load <4 x i64>, ptr %i.gk, align 1, !tbaa !27 ; 2 uses
  %i.gq = shufflevector <4 x i64> %i.gp, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.gr = add <2 x i64> %i.gq, %i.dh
  %i.gs = shufflevector <2 x i64> %i.go, <2 x i64> %i.gm, <2 x i32> <i32 0, i32 3>
  %i.gt = xor <2 x i64> %i.gr, %i.gs
  %i.gu = shufflevector <4 x i64> %i.gp, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.gv = sub <2 x i64> %i.gu, %i.dh
  %i.gw = shufflevector <2 x i64> %i.gm, <2 x i64> %i.go, <2 x i32> <i32 0, i32 3>
  %i.gx = xor <2 x i64> %i.gv, %i.gw
  %i.gy = zext <2 x i64> %i.gt to <2 x i128>
  %i.gz = zext <2 x i64> %i.gx to <2 x i128>
  %i.ha = mul nuw <2 x i128> %i.gz, %i.gy         ; 2 uses
  %i.hb = lshr <2 x i128> %i.ha, splat (i128 64)
  %i.hc = xor <2 x i128> %i.hb, %i.ha
  %i.hd = trunc <2 x i128> %i.hc to <2 x i64>
  %i.he = add <2 x i64> %i.gi, %i.hd
  %i.hf = add <2 x i64> %i.gm, %i.go
  %i.hg = shufflevector <2 x i64> %i.hf, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hh = xor <2 x i64> %i.he, %i.hg
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %bb.a
  %i.hi = phi <2 x i64> [ %i.ek, %bb.a ], [ %i.fj, %.lr.ph ], [ %i.gi, %.lr.ph.1 ], [ %i.hh, %.lr.ph.2 ]
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 -32
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 103
  %i.hm = load <4 x i64>, ptr %i.hk, align 1, !tbaa !27 ; 4 uses
  %i.hn = load <4 x i64>, ptr %i.hl, align 1, !tbaa !27 ; 2 uses
  %i.ho = shufflevector <4 x i64> %i.hn, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.hp = sub <2 x i64> %i.ho, %i.dh
  %i.hq = shufflevector <4 x i64> %i.hm, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %i.hr = xor <2 x i64> %i.hp, %i.hq
  %i.hs = shufflevector <4 x i64> %i.hn, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.ht = add <2 x i64> %i.hs, %i.dh
  %i.hu = shufflevector <4 x i64> %i.hm, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %i.hv = xor <2 x i64> %i.ht, %i.hu
  %i.hw = zext <2 x i64> %i.hr to <2 x i128>
  %i.hx = zext <2 x i64> %i.hv to <2 x i128>
  %i.hy = mul nuw <2 x i128> %i.hx, %i.hw         ; 2 uses
  %i.hz = lshr <2 x i128> %i.hy, splat (i128 64)
  %i.ia = xor <2 x i128> %i.hz, %i.hy
  %i.ib = trunc <2 x i128> %i.ia to <2 x i64>
  %i.ic = add <2 x i64> %i.hi, %i.ib
  %i.id = shufflevector <4 x i64> %i.hm, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.ie = shufflevector <4 x i64> %i.hm, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.if = add <2 x i64> %i.id, %i.ie
  %i.ig = xor <2 x i64> %i.ic, %i.if              ; 2 uses
  %i.ih = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ig) ; 2 uses
  %i.ii = mul <2 x i64> %i.ig, <i64 -7046029288634856825, i64 -8796714831421723037> ; 2 uses
  %i.ij = sub i64 %1, %3
  %i.ik = mul i64 %i.ij, -4417276706812531889
  %i.il = extractelement <2 x i64> %i.ii, i64 0
  %i.im = add i64 %i.il, %i.ik
  %i.in = extractelement <2 x i64> %i.ii, i64 1
  %i.io = add i64 %i.im, %i.in                    ; 2 uses
  %i.ip = lshr i64 %i.ih, 37
  %i.iq = xor i64 %i.ip, %i.ih
  %i.ir = mul i64 %i.iq, 1609587791953885689      ; 2 uses
  %i.is = lshr i64 %i.ir, 32
  %i.it = xor i64 %i.is, %i.ir
  %i.iu = lshr i64 %i.io, 37
  %i.iv = xor i64 %i.iu, %i.io
  %i.iw = mul i64 %i.iv, 1609587791953885689      ; 2 uses
  %i.ix = lshr i64 %i.iw, 32
  %i.iy = xor i64 %i.ix, %i.iw
  %i.iz = sub i64 0, %i.iy
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.it, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.iz, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.fshl.v2i64(<2 x i64>, <2 x i64>, <2 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.fshl.v4i64(<4 x i64>, <4 x i64>, <4 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.bswap.v4i64(<4 x i64>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i64> @llvm.masked.load.v4i64.p0(ptr captures(none), <4 x i1>, <4 x i64>) #31

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, target_mem: none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { mustprogress nofree noinline nounwind willreturn memory(read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #29 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nounwind }
attributes #33 = { nounwind allocsize(0) }
attributes #34 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !19}
!1 = distinct !{!1, !19}
!2 = distinct !{!2, !19}
!3 = distinct !{!3, !19}
!4 = distinct !{!4, !19}
!5 = distinct !{!5, !19}
!6 = distinct !{!6, !19}
!7 = distinct !{!7, !19}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"frame-pointer", i32 4}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!14, !14, i64 0}
!18 = !{i64 2148225614}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!13, !13, i64 0}
!22 = !{!"_ZTS13XXH32_state_s", !14, i64 0, !14, i64 4, !13, i64 8, !13, i64 24, !14, i64 40, !14, i64 44}
!23 = !{!22, !14, i64 0}
!24 = !{!22, !14, i64 4}
!25 = !{!22, !14, i64 40}
!26 = !{!"long", !13, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"_ZTS13XXH64_state_s", !26, i64 0, !13, i64 8, !13, i64 40, !14, i64 72, !14, i64 76, !26, i64 80}
!29 = !{!28, !26, i64 0}
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!31 = !{!"any pointer", !13, i64 0}
!32 = !{!"p1 omnipotent char", !31, i64 0}
!33 = !{!"_ZTS12XXH3_state_s", !13, i64 0, !13, i64 64, !13, i64 256, !14, i64 512, !14, i64 516, !26, i64 520, !26, i64 528, !26, i64 536, !26, i64 544, !26, i64 552, !26, i64 560, !32, i64 568}
!34 = !{!33, !26, i64 552}
!35 = !{!33, !32, i64 568}
!36 = !{!33, !26, i64 544}
!37 = !{!33, !26, i64 536}
!38 = !{!33, !14, i64 516}
!39 = !{!33, !26, i64 528}
!40 = !{!33, !14, i64 512}
!41 = !{!33, !26, i64 520}
!42 = distinct !{!42, !19}
!43 = distinct !{!43, !20}
!44 = distinct !{!44, !20}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !20}
!47 = distinct !{!47, !20}
!48 = distinct !{!48, !19}
!49 = distinct !{!49, !20}
!50 = distinct !{!50, !20}
!51 = distinct !{!51, !19}
!52 = !{!28, !14, i64 72}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !20}
!55 = distinct !{!55, !19}
!56 = distinct !{!56, !19, !58, !59}
!57 = distinct !{!57, !19, !59, !58}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = distinct !{!60, !19}
!61 = !{i64 2152231085}
end_hunk_1
