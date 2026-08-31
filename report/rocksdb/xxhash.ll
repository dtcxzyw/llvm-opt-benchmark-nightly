Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/xxhash?download=true
inline.NumInlined: 910
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 57
begin_hunk_0_@ROCKSDB_XXH3_64bits_reset:bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define range(i32 0, 2) i32 @ROCKSDB_XXH3_64bits_reset_withSecret(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef captures(address) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %i.c, align 32, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %i.d, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %1, ptr %i.e, align 8, !tbaa !46
  %i.f = icmp ugt i64 %2, 135
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add i64 %2, -64                          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %i.g, ptr %i.h, align 32, !tbaa !47
  %i.i = lshr i64 %i.g, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %i.i, ptr %i.j, align 8, !tbaa !48
  %i.k = icmp eq ptr %1, null
  %spec.select = zext i1 %i.k to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %spec.select, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define range(i32 0, 2) i32 @ROCKSDB_XXH3_64bits_reset_withSeed(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %ROCKSDB_XXH3_64bits_reset.exit, label %bb.c

ROCKSDB_XXH3_64bits_reset.exit:                   ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %i.d, align 32, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %i.e, align 8, !tbaa !42
  br label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !42
  %.not = icmp eq i64 %1, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %.not12 = icmp eq ptr %i.i, null
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.k = insertelement <8 x i64> poison, i64 %1, i64 0
  %i.l = shufflevector <8 x i64> %i.k, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.m = sub <8 x i64> <i64 poison, i64 0, i64 poison, i64 0, i64 poison, i64 0, i64 poison, i64 0>, %i.l
  %i.n = shufflevector <8 x i64> %i.l, <8 x i64> %i.m, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15> ; 3 uses
  %i.o = add <8 x i64> %i.n, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  store <8 x i64> %i.o, ptr %i.j, align 64, !tbaa !15
  %i.p = add <8 x i64> %i.n, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <8 x i64> %i.p, ptr %i.q, align 64, !tbaa !15
  %i.r = add <8 x i64> %i.n, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <8 x i64> %i.r, ptr %i.s, align 64, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %i.u, align 32, !tbaa !26
  store i64 %1, ptr %i.f, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 1, ptr %i.v, align 4, !tbaa !49
  br label %.sink.split

.sink.split:                                      ; preds = %ROCKSDB_XXH3_64bits_reset.exit, %bb.f
  %.sink = phi ptr [ null, %bb.f ], [ @_ZL12XXH3_kSecret, %ROCKSDB_XXH3_64bits_reset.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %.sink, ptr %i.w, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 128, ptr %i.x, align 32, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 16, ptr %i.y, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @ROCKSDB_XXH3_64bits_reset_withSecretandSeed(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef captures(address) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp ult i64 %2, 136
  %or.cond11 = or i1 %or.cond, %i.c
  br i1 %or.cond11, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %i.e, align 32, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 %3, ptr %i.f, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %1, ptr %i.h, align 8, !tbaa !46
  %i.i = add i64 %2, -64                          ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %i.i, ptr %i.j, align 32, !tbaa !47
  %i.k = lshr i64 %i.i, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %i.k, ptr %i.l, align 8, !tbaa !48
  store i32 1, ptr %i.g, align 4, !tbaa !49
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef i32 @ROCKSDB_XXH3_64bits_update(ptr nofree noundef captures(address) %0, ptr noundef captures(address) %1, i64 noundef %2) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %i.b)
  br label %_ZL11XXH3_updateP12XXH3_state_sPKhmPFvPmS2_S2_mEPFvPvPKvE.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = select i1 %i.f, ptr %i.g, ptr %i.e       ; 18 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.j = load i64, ptr %i.i, align 16, !tbaa !50
  %i.k = add i64 %i.j, %2
  store i64 %i.k, ptr %i.i, align 16, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.m = load i32, ptr %i.l, align 64, !tbaa !51  ; 4 uses
  %i.n = icmp ult i32 %i.m, 257
  tail call void @llvm.assume(i1 %i.n)
  %i.o = zext nneg i32 %i.m to i64                ; 3 uses
  %i.p = add i64 %2, %i.o
  %i.q = icmp ult i64 %i.p, 257
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %i.t = trunc i64 %2 to i32
  %i.u = load i32, ptr %i.l, align 64, !tbaa !51
  %i.v = add i32 %i.u, %i.t
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 536
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !48
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = sub nuw nsw i32 256, %i.m
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %1, i64 %i.x, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !48 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.af = load i64, ptr %i.ae, align 32, !tbaa !47
  %i.ag = icmp ugt i64 %i.ad, 3
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !26 ; 6 uses
  %i.ai = icmp ult i64 %i.ah, %i.ad
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = sub nuw i64 %i.ad, %i.ah                ; 7 uses
  %.not.i8 = icmp ugt i64 %i.aj, 4
  %i.ak = shl i64 %i.ah, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ak ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %.promoted21 = load <8 x i64>, ptr %0, align 64, !tbaa !15 ; 3 uses
  br i1 %.not.i8, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15, label %.preheader85.preheader

.preheader85.preheader:                           ; preds = %bb.f
  %.neg = add nuw i64 %i.ah, 1
  %xtraiter = and i64 %i.aj, 1
  %i.am = icmp eq i64 %i.ad, %.neg
  br i1 %i.am, label %.preheader85.epil.preheader, label %.preheader85.preheader.new

.preheader85.preheader.new:                       ; preds = %.preheader85.preheader
  %unroll_iter = and i64 %i.aj, 6
  br label %.preheader85

.preheader85:                                     ; preds = %.preheader85, %.preheader85.preheader.new
  %3 = phi <8 x i64> [ %.promoted21, %.preheader85.preheader.new ], [ %i.ay, %.preheader85 ]
  %.0.i39.i918 = phi i64 [ 0, %.preheader85.preheader.new ], [ %21, %.preheader85 ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader85.preheader.new ], [ %niter.next.1, %.preheader85 ]
  %4 = shl nuw nsw i64 %.0.i39.i918, 6
  %5 = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %6, i32 0, i32 3, i32 1)
  %7 = shl nuw nsw i64 %.0.i39.i918, 3
  %8 = getelementptr inbounds nuw i8, ptr %i.al, i64 %7
  %9 = load <8 x i64>, ptr %5, align 64, !tbaa !15 ; 2 uses
  %10 = load <8 x i64>, ptr %8, align 1, !tbaa !15
  %11 = xor <8 x i64> %10, %9                     ; 2 uses
  %12 = lshr <8 x i64> %11, splat (i64 32)
  %13 = and <8 x i64> %11, splat (i64 4294967295)
  %14 = mul nuw <8 x i64> %13, %12
  %15 = shufflevector <8 x i64> %9, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %16 = add <8 x i64> %3, %15
  %17 = add <8 x i64> %16, %14                    ; 2 uses
  store <8 x i64> %17, ptr %0, align 64, !tbaa !15
  %18 = or disjoint i64 %.0.i39.i918, 1           ; 2 uses
  %19 = shl nuw nsw i64 %18, 6
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 %19 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ao, i32 0, i32 3, i32 1)
  %20 = shl nuw nsw i64 %18, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %20
  %i.aq = load <8 x i64>, ptr %i.an, align 64, !tbaa !15 ; 2 uses
  %i.ar = load <8 x i64>, ptr %i.ap, align 1, !tbaa !15
  %i.as = xor <8 x i64> %i.ar, %i.aq              ; 2 uses
  %i.at = lshr <8 x i64> %i.as, splat (i64 32)
  %i.au = and <8 x i64> %i.as, splat (i64 4294967295)
  %i.av = mul nuw <8 x i64> %i.au, %i.at
  %i.aw = shufflevector <8 x i64> %i.aq, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ax = add <8 x i64> %17, %i.aw
  %i.ay = add <8 x i64> %i.ax, %i.av              ; 4 uses
  store <8 x i64> %i.ay, ptr %0, align 64, !tbaa !15
  %21 = add nuw i64 %.0.i39.i918, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.a = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.a, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa, label %.preheader85, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa: ; preds = %.preheader85
  %lcmp.mod.not.a = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not.a, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10, label %.preheader85.epil.preheader

.preheader85.epil.preheader:                      ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa, %.preheader85.preheader
  %.epil.init = phi <8 x i64> [ %.promoted21, %.preheader85.preheader ], [ %i.ay, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa ]
  %.0.i39.i918.epil.init = phi i64 [ 0, %.preheader85.preheader ], [ %21, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa ] ; 2 uses
  %lcmp.mod104 = trunc i64 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod104)
  %22 = shl nuw nsw i64 %.0.i39.i918.epil.init, 6
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 %22 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ba, i32 0, i32 3, i32 1)
  %23 = shl nuw nsw i64 %.0.i39.i918.epil.init, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 %23
  %i.bc = load <8 x i64>, ptr %i.az, align 64, !tbaa !15 ; 2 uses
  %i.bd = load <8 x i64>, ptr %i.bb, align 1, !tbaa !15
  %i.be = xor <8 x i64> %i.bd, %i.bc              ; 2 uses
  %i.bf = lshr <8 x i64> %i.be, splat (i64 32)
  %i.bg = and <8 x i64> %i.be, splat (i64 4294967295)
  %i.bh = mul nuw <8 x i64> %i.bg, %i.bf
  %i.bi = shufflevector <8 x i64> %i.bc, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.bj = add <8 x i64> %.epil.init, %i.bi
  %i.bk = add <8 x i64> %i.bj, %i.bh              ; 2 uses
  store <8 x i64> %i.bk, ptr %0, align 64, !tbaa !15
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10:  ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa, %.preheader85.epil.preheader
  %.lcssa102 = phi <8 x i64> [ %i.ay, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa ], [ %i.bk, %.preheader85.epil.preheader ] ; 2 uses
  %i.bl = sub nsw i64 4, %i.aj                    ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.af
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.bn = lshr <8 x i64> %.lcssa102, splat (i64 47)
  %i.bo = load <16 x i32>, ptr %i.bm, align 1, !tbaa !15
  %i.bp = bitcast <8 x i64> %.lcssa102 to <16 x i32>
  %i.bq = bitcast <8 x i64> %i.bn to <16 x i32>
  %i.br = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.bo, <16 x i32> %i.bp, <16 x i32> %i.bq, i32 150) ; 2 uses
  %i.bs = bitcast <16 x i32> %i.br to <8 x i64>
  %i.bt = lshr <8 x i64> %i.bs, splat (i64 32)
  %i.bu = bitcast <16 x i32> %i.br to <8 x i64>
  %i.bv = and <8 x i64> %i.bu, splat (i64 4294967295)
  %i.bw = mul nuw <8 x i64> %i.bv, splat (i64 2654435761)
  %i.bx = mul <8 x i64> %i.bt, splat (i64 -7046029290881679360)
  %i.by = add <8 x i64> %i.bw, %i.bx              ; 3 uses
  store <8 x i64> %i.by, ptr %0, align 64, !tbaa !15
  %i.bz = shl nuw nsw i64 %i.aj, 6
  %i.ca = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bz ; 3 uses
  %.not = icmp eq i64 %i.aj, 4
  br i1 %.not, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.cb = add i64 %i.ah, 3
  %xtraiter105.a = and i64 %i.bl, 1
  %i.cc = icmp eq i64 %i.cb, %i.ad
  br i1 %i.cc, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter110.a = and i64 %i.bl, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %i.cd = phi <8 x i64> [ %i.by, %.lr.ph.new ], [ %i.dg, %bb.g ]
  %.0.i37.i1119 = phi i64 [ 0, %.lr.ph.new ], [ %i.dh, %bb.g ] ; 4 uses
  %niter111.a = phi i64 [ 0, %.lr.ph.new ], [ %niter111.next.1.a, %bb.g ]
  %i.ce = shl nuw nsw i64 %.0.i37.i1119, 6
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cg, i32 0, i32 3, i32 1)
  %i.ch = shl nuw nsw i64 %.0.i37.i1119, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ch
  %i.cj = load <8 x i64>, ptr %i.cf, align 64, !tbaa !15 ; 2 uses
  %i.ck = load <8 x i64>, ptr %i.ci, align 1, !tbaa !15
  %i.cl = xor <8 x i64> %i.ck, %i.cj              ; 2 uses
  %i.cm = lshr <8 x i64> %i.cl, splat (i64 32)
  %i.cn = and <8 x i64> %i.cl, splat (i64 4294967295)
  %i.co = mul nuw <8 x i64> %i.cn, %i.cm
  %i.cp = shufflevector <8 x i64> %i.cj, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.cq = add <8 x i64> %i.cd, %i.cp
  %i.cr = add <8 x i64> %i.cq, %i.co              ; 2 uses
  store <8 x i64> %i.cr, ptr %0, align 64, !tbaa !15
  %i.cs = or disjoint i64 %.0.i37.i1119, 1        ; 2 uses
  %i.ct = shl nuw nsw i64 %i.cs, 6
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cv, i32 0, i32 3, i32 1)
  %i.cw = shl nuw nsw i64 %i.cs, 3
  %i.cx = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cw
  %i.cy = load <8 x i64>, ptr %i.cu, align 64, !tbaa !15 ; 2 uses
  %i.cz = load <8 x i64>, ptr %i.cx, align 1, !tbaa !15
  %i.da = xor <8 x i64> %i.cz, %i.cy              ; 2 uses
  %i.db = lshr <8 x i64> %i.da, splat (i64 32)
  %i.dc = and <8 x i64> %i.da, splat (i64 4294967295)
  %i.dd = mul nuw <8 x i64> %i.dc, %i.db
  %i.de = shufflevector <8 x i64> %i.cy, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.df = add <8 x i64> %i.cr, %i.de
  %i.dg = add <8 x i64> %i.df, %i.dd              ; 3 uses
  store <8 x i64> %i.dg, ptr %0, align 64, !tbaa !15
  %i.dh = add nuw i64 %.0.i37.i1119, 2            ; 2 uses
  %niter111.next.1.a = add i64 %niter111.a, 2     ; 2 uses
  %niter111.ncmp.1.a = icmp eq i64 %niter111.next.1.a, %unroll_iter110.a
  br i1 %niter111.ncmp.1.a, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa, label %bb.g, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15:    ; preds = %bb.f
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull %i.di, i32 0, i32 3, i32 1)
  %i.dj = load <8 x i64>, ptr %i.y, align 64, !tbaa !15 ; 2 uses
  %i.dk = load <8 x i64>, ptr %i.al, align 1, !tbaa !15
  %i.dl = xor <8 x i64> %i.dk, %i.dj              ; 2 uses
  %i.dm = lshr <8 x i64> %i.dl, splat (i64 32)
  %i.dn = and <8 x i64> %i.dl, splat (i64 4294967295)
  %i.do = mul nuw <8 x i64> %i.dn, %i.dm
  %i.dp = shufflevector <8 x i64> %i.dj, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.dq = add <8 x i64> %.promoted21, %i.dp
  %i.dr = add <8 x i64> %i.dq, %i.do              ; 2 uses
  store <8 x i64> %i.dr, ptr %0, align 64, !tbaa !15
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dt, i32 0, i32 3, i32 1)
  %i.du = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.dv = load <8 x i64>, ptr %i.ds, align 64, !tbaa !15 ; 2 uses
  %i.dw = load <8 x i64>, ptr %i.du, align 1, !tbaa !15
  %i.dx = xor <8 x i64> %i.dw, %i.dv              ; 2 uses
  %i.dy = lshr <8 x i64> %i.dx, splat (i64 32)
  %i.dz = and <8 x i64> %i.dx, splat (i64 4294967295)
  %i.ea = mul nuw <8 x i64> %i.dz, %i.dy
  %i.eb = shufflevector <8 x i64> %i.dv, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ec = add <8 x i64> %i.dr, %i.eb
  %i.ed = add <8 x i64> %i.ec, %i.ea              ; 2 uses
  store <8 x i64> %i.ed, ptr %0, align 64, !tbaa !15
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ef, i32 0, i32 3, i32 1)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.eh = load <8 x i64>, ptr %i.ee, align 64, !tbaa !15 ; 2 uses
  %i.ei = load <8 x i64>, ptr %i.eg, align 1, !tbaa !15
  %i.ej = xor <8 x i64> %i.ei, %i.eh              ; 2 uses
  %i.ek = lshr <8 x i64> %i.ej, splat (i64 32)
  %i.el = and <8 x i64> %i.ej, splat (i64 4294967295)
  %i.em = mul nuw <8 x i64> %i.el, %i.ek
  %i.en = shufflevector <8 x i64> %i.eh, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.eo = add <8 x i64> %i.ed, %i.en
  %i.ep = add <8 x i64> %i.eo, %i.em              ; 2 uses
  store <8 x i64> %i.ep, ptr %0, align 64, !tbaa !15
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull %i.er, i32 0, i32 3, i32 1)
  %i.es = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.et = load <8 x i64>, ptr %i.eq, align 64, !tbaa !15 ; 2 uses
  %i.eu = load <8 x i64>, ptr %i.es, align 1, !tbaa !15
  %i.ev = xor <8 x i64> %i.eu, %i.et              ; 2 uses
  %i.ew = lshr <8 x i64> %i.ev, splat (i64 32)
  %i.ex = and <8 x i64> %i.ev, splat (i64 4294967295)
  %i.ey = mul nuw <8 x i64> %i.ex, %i.ew
  %i.ez = shufflevector <8 x i64> %i.et, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.fa = add <8 x i64> %i.ep, %i.ez
  %i.fb = add <8 x i64> %i.fa, %i.ey
  store <8 x i64> %i.fb, ptr %0, align 64, !tbaa !15
  %i.fc = add i64 %i.ah, 4
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod108.not.a = icmp eq i64 %xtraiter105.a, 0
  br i1 %lcmp.mod108.not.a, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa, %.lr.ph
  %.epil.init107.a = phi <8 x i64> [ %i.by, %.lr.ph ], [ %i.dg, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ]
  %.0.i37.i1119.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.dh, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod109.a = trunc i64 %i.bl to i1
  tail call void @llvm.assume(i1 %lcmp.mod109.a)
  %i.fd = shl nuw nsw i64 %.0.i37.i1119.epil.init, 6
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ff, i32 0, i32 3, i32 1)
  %i.fg = shl nuw nsw i64 %.0.i37.i1119.epil.init, 3
  %i.fh = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fg
  %i.fi = load <8 x i64>, ptr %i.fe, align 64, !tbaa !15 ; 2 uses
  %i.fj = load <8 x i64>, ptr %i.fh, align 1, !tbaa !15
  %i.fk = xor <8 x i64> %i.fj, %i.fi              ; 2 uses
  %i.fl = lshr <8 x i64> %i.fk, splat (i64 32)
  %i.fm = and <8 x i64> %i.fk, splat (i64 4294967295)
  %i.fn = mul nuw <8 x i64> %i.fm, %i.fl
  %i.fo = shufflevector <8 x i64> %i.fi, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.fp = add <8 x i64> %.epil.init107.a, %i.fo
  %i.fq = add <8 x i64> %i.fp, %i.fn
  store <8 x i64> %i.fq, ptr %0, align 64, !tbaa !15
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16: ; preds = %.epil.preheader, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15
  %storemerge.i13 = phi i64 [ %i.fc, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15 ], [ 0, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10 ], [ %i.bl, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ], [ %i.bl, %.epil.preheader ]
  store i64 %storemerge.i13, ptr %i.ab, align 8, !tbaa !26
  store i32 0, ptr %i.l, align 64, !tbaa !51
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16
  %i.fr = phi i64 [ %i.ad, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16 ], [ %.pre, %._crit_edge ] ; 18 uses
  %.0125.i = phi ptr [ %i.aa, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16 ], [ %1, %._crit_edge ] ; 8 uses
  %i.fs = icmp ult ptr %.0125.i, %i.c
  tail call void @llvm.assume(i1 %i.fs)
  %i.ft = ptrtoint ptr %i.c to i64                ; 3 uses
  %i.fu = ptrtoint ptr %.0125.i to i64            ; 2 uses
  %i.fv = sub i64 %i.ft, %i.fu                    ; 3 uses
  %i.fw = shl i64 %i.fr, 6                        ; 2 uses
  %i.fx = icmp ugt i64 %i.fv, %i.fw
  br i1 %i.fx, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.fy = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = sub i64 %i.fz, %i.fu
  %i.gb = lshr i64 %i.ga, 6                       ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !52 ; 5 uses
  %i.ge = icmp uge i64 %i.fr, %i.gd
  tail call void @llvm.assume(i1 %i.ge)
  %i.gf = sub nuw i64 %i.fr, %i.gd                ; 6 uses
  %i.gg = icmp ule i64 %i.gf, %i.gb
  tail call void @llvm.assume(i1 %i.gg)
  %i.gh = shl i64 %i.gd, 3
  %i.gi = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.gh ; 3 uses
  %.not46 = icmp eq i64 %i.fr, %i.gd
  %.pre60 = load <8 x i64>, ptr %0, align 64, !tbaa !15 ; 3 uses
  br i1 %.not46, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %.neg155 = add i64 %i.gd, 1
  %xtraiter129 = and i64 %i.gf, 1
  %i.gj = icmp eq i64 %i.fr, %.neg155
  br i1 %i.gj, label %.epil.preheader128, label %.lr.ph33.new

.lr.ph33.new:                                     ; preds = %.lr.ph33
  %unroll_iter135 = and i64 %i.gf, -2
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph33.new
  %i.gk = phi <8 x i64> [ %.pre60, %.lr.ph33.new ], [ %i.hn, %bb.j ]
  %.0.i432 = phi i64 [ 0, %.lr.ph33.new ], [ %i.ho, %bb.j ] ; 4 uses
  %niter136 = phi i64 [ 0, %.lr.ph33.new ], [ %niter136.next.1, %bb.j ]
  %i.gl = shl i64 %.0.i432, 6
  %i.gm = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.gl ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.gn, i32 0, i32 3, i32 1)
  %i.go = shl i64 %.0.i432, 3
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.go
  %i.gq = load <8 x i64>, ptr %i.gm, align 1, !tbaa !15 ; 2 uses
  %i.gr = load <8 x i64>, ptr %i.gp, align 1, !tbaa !15
  %i.gs = xor <8 x i64> %i.gr, %i.gq              ; 2 uses
  %i.gt = lshr <8 x i64> %i.gs, splat (i64 32)
  %i.gu = and <8 x i64> %i.gs, splat (i64 4294967295)
  %i.gv = mul nuw <8 x i64> %i.gu, %i.gt
  %i.gw = shufflevector <8 x i64> %i.gq, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.gx = add <8 x i64> %i.gk, %i.gw
  %i.gy = add <8 x i64> %i.gx, %i.gv              ; 2 uses
  store <8 x i64> %i.gy, ptr %0, align 64, !tbaa !15
  %i.gz = or disjoint i64 %.0.i432, 1             ; 2 uses
  %i.ha = shl i64 %i.gz, 6
  %i.hb = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.ha ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.hc, i32 0, i32 3, i32 1)
  %i.hd = shl i64 %i.gz, 3
  %i.he = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.hd
  %i.hf = load <8 x i64>, ptr %i.hb, align 1, !tbaa !15 ; 2 uses
  %i.hg = load <8 x i64>, ptr %i.he, align 1, !tbaa !15
  %i.hh = xor <8 x i64> %i.hg, %i.hf              ; 2 uses
  %i.hi = lshr <8 x i64> %i.hh, splat (i64 32)
  %i.hj = and <8 x i64> %i.hh, splat (i64 4294967295)
  %i.hk = mul nuw <8 x i64> %i.hj, %i.hi
  %i.hl = shufflevector <8 x i64> %i.hf, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.hm = add <8 x i64> %i.gy, %i.hl
  %i.hn = add <8 x i64> %i.hm, %i.hk              ; 4 uses
  store <8 x i64> %i.hn, ptr %0, align 64, !tbaa !15
  %i.ho = add nuw i64 %.0.i432, 2                 ; 2 uses
  %niter136.next.1 = add i64 %niter136, 2         ; 2 uses
  %niter136.ncmp.1 = icmp eq i64 %niter136.next.1, %unroll_iter135
  br i1 %niter136.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, label %bb.j, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod132.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod132.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5, label %.epil.preheader128

.epil.preheader128:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, %.lr.ph33
  %.epil.init131 = phi <8 x i64> [ %.pre60, %.lr.ph33 ], [ %i.hn, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ]
  %.0.i432.epil.init = phi i64 [ 0, %.lr.ph33 ], [ %i.ho, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod134 = trunc i64 %i.gf to i1
  tail call void @llvm.assume(i1 %lcmp.mod134)
  %i.hp = shl i64 %.0.i432.epil.init, 6
  %i.hq = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.hp ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.hr, i32 0, i32 3, i32 1)
  %i.hs = shl i64 %.0.i432.epil.init, 3
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.hs
  %i.hu = load <8 x i64>, ptr %i.hq, align 1, !tbaa !15 ; 2 uses
  %i.hv = load <8 x i64>, ptr %i.ht, align 1, !tbaa !15
  %i.hw = xor <8 x i64> %i.hv, %i.hu              ; 2 uses
  %i.hx = lshr <8 x i64> %i.hw, splat (i64 32)
  %i.hy = and <8 x i64> %i.hw, splat (i64 4294967295)
  %i.hz = mul nuw <8 x i64> %i.hy, %i.hx
  %i.ia = shufflevector <8 x i64> %i.hu, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ib = add <8 x i64> %.epil.init131, %i.ia
  %i.ic = add <8 x i64> %i.ib, %i.hz              ; 2 uses
  store <8 x i64> %i.ic, ptr %0, align 64, !tbaa !15
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5:       ; preds = %.epil.preheader128, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, %bb.i
  %i.id = phi <8 x i64> [ %.pre60, %bb.i ], [ %i.hn, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ], [ %i.ic, %.epil.preheader128 ] ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.if = load i64, ptr %i.ie, align 32, !tbaa !47
  %i.ig = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.if ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.ih = lshr <8 x i64> %i.id, splat (i64 47)
  %i.ii = load <16 x i32>, ptr %i.ig, align 1, !tbaa !15
  %i.ij = bitcast <8 x i64> %i.id to <16 x i32>
  %i.ik = bitcast <8 x i64> %i.ih to <16 x i32>
  %i.il = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ii, <16 x i32> %i.ij, <16 x i32> %i.ik, i32 150) ; 2 uses
  %i.im = bitcast <16 x i32> %i.il to <8 x i64>
  %i.in = lshr <8 x i64> %i.im, splat (i64 32)
  %i.io = bitcast <16 x i32> %i.il to <8 x i64>
  %i.ip = and <8 x i64> %i.io, splat (i64 4294967295)
  %i.iq = mul nuw <8 x i64> %i.ip, splat (i64 2654435761)
  %i.ir = mul <8 x i64> %i.in, splat (i64 -7046029290881679360)
  %i.is = add <8 x i64> %i.iq, %i.ir              ; 3 uses
  store <8 x i64> %i.is, ptr %0, align 64, !tbaa !15
  store i64 0, ptr %i.gc, align 8, !tbaa !52
  %i.it = shl nuw i64 %i.gf, 6
  %i.iu = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.it ; 2 uses
  %i.iv = sub nuw nsw i64 %i.gb, %i.gf            ; 3 uses
  %.not133.i38 = icmp ult i64 %i.iv, %i.fr
  br i1 %.not133.i38, label %.preheader, label %.preheader17.lr.ph

.preheader17.lr.ph:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5
  %.not47 = icmp eq i64 %i.fr, 0
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %xtraiter138 = and i64 %i.fr, 1
  %i.iw = icmp eq i64 %i.fr, 1
  %unroll_iter144 = and i64 %i.fr, -2
  %lcmp.mod141.not = icmp eq i64 %xtraiter138, 0
  %lcmp.mod143 = trunc i64 %i.fr to i1
  br label %.preheader17

.preheader17:                                     ; preds = %.preheader17.lr.ph, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3
  %.promoted37 = phi <8 x i64> [ %i.is, %.preheader17.lr.ph ], [ %i.ld, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 3 uses
  %.0124.i40 = phi i64 [ %i.iv, %.preheader17.lr.ph ], [ %i.lf, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ]
  %.1126.i39 = phi ptr [ %i.iu, %.preheader17.lr.ph ], [ %i.le, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 4 uses
  br i1 %.not47, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3, label %.lr.ph36

.lr.ph36:                                         ; preds = %.preheader17
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  br i1 %i.iw, label %.epil.preheader137, label %.lr.ph36.new

.preheader:                                       ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5
  %.promoted44 = phi <8 x i64> [ %i.is, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.ld, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 2 uses
  %.1126.i.lcssa = phi ptr [ %i.iu, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.le, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 4 uses
  %.0124.i.lcssa = phi i64 [ %i.iv, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.lf, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 7 uses
  %.not48 = icmp eq i64 %.0124.i.lcssa, 0
  br i1 %.not48, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit, label %.lr.ph43

.lr.ph43:                                         ; preds = %.preheader
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %xtraiter147 = and i64 %.0124.i.lcssa, 1
  %i.ix = icmp eq i64 %.0124.i.lcssa, 1
  br i1 %i.ix, label %.epil.preheader146, label %.lr.ph43.new

.lr.ph43.new:                                     ; preds = %.lr.ph43
  %unroll_iter152 = and i64 %.0124.i.lcssa, -2
  br label %bb.k

.lr.ph36.new:                                     ; preds = %.lr.ph36, %.lr.ph36.new
  %i.iy = phi <8 x i64> [ %i.kb, %.lr.ph36.new ], [ %.promoted37, %.lr.ph36 ]
  %.0.i235 = phi i64 [ %i.kc, %.lr.ph36.new ], [ 0, %.lr.ph36 ] ; 4 uses
  %niter145 = phi i64 [ %niter145.next.1, %.lr.ph36.new ], [ 0, %.lr.ph36 ]
  %i.iz = shl i64 %.0.i235, 6
  %i.ja = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.iz ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.jb, i32 0, i32 3, i32 1)
  %i.jc = shl i64 %.0.i235, 3
  %i.jd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.jc
  %i.je = load <8 x i64>, ptr %i.ja, align 1, !tbaa !15 ; 2 uses
  %i.jf = load <8 x i64>, ptr %i.jd, align 1, !tbaa !15
  %i.jg = xor <8 x i64> %i.jf, %i.je              ; 2 uses
  %i.jh = lshr <8 x i64> %i.jg, splat (i64 32)
  %i.ji = and <8 x i64> %i.jg, splat (i64 4294967295)
  %i.jj = mul nuw <8 x i64> %i.ji, %i.jh
  %i.jk = shufflevector <8 x i64> %i.je, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.jl = add <8 x i64> %i.iy, %i.jk
  %i.jm = add <8 x i64> %i.jl, %i.jj              ; 2 uses
  store <8 x i64> %i.jm, ptr %0, align 64, !tbaa !15
  %i.jn = or disjoint i64 %.0.i235, 1             ; 2 uses
  %i.jo = shl i64 %i.jn, 6
  %i.jp = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.jo ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.jq, i32 0, i32 3, i32 1)
  %i.jr = shl i64 %i.jn, 3
  %i.js = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.jr
  %i.jt = load <8 x i64>, ptr %i.jp, align 1, !tbaa !15 ; 2 uses
  %i.ju = load <8 x i64>, ptr %i.js, align 1, !tbaa !15
  %i.jv = xor <8 x i64> %i.ju, %i.jt              ; 2 uses
  %i.jw = lshr <8 x i64> %i.jv, splat (i64 32)
  %i.jx = and <8 x i64> %i.jv, splat (i64 4294967295)
  %i.jy = mul nuw <8 x i64> %i.jx, %i.jw
  %i.jz = shufflevector <8 x i64> %i.jt, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ka = add <8 x i64> %i.jm, %i.jz
  %i.kb = add <8 x i64> %i.ka, %i.jy              ; 4 uses
  store <8 x i64> %i.kb, ptr %0, align 64, !tbaa !15
  %i.kc = add nuw i64 %.0.i235, 2                 ; 2 uses
  %niter145.next.1 = add nuw i64 %niter145, 2     ; 2 uses
  %niter145.ncmp.1 = icmp eq i64 %niter145.next.1, %unroll_iter144
  br i1 %niter145.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa, label %.lr.ph36.new, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa: ; preds = %.lr.ph36.new
  br i1 %lcmp.mod141.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3, label %.epil.preheader137

.epil.preheader137:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa, %.lr.ph36
  %.epil.init140 = phi <8 x i64> [ %.promoted37, %.lr.ph36 ], [ %i.kb, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ]
  %.0.i235.epil.init = phi i64 [ 0, %.lr.ph36 ], [ %i.kc, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod143)
  %i.kd = shl i64 %.0.i235.epil.init, 6
  %i.ke = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.kd ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.kf, i32 0, i32 3, i32 1)
  %i.kg = shl i64 %.0.i235.epil.init, 3
  %i.kh = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.kg
  %i.ki = load <8 x i64>, ptr %i.ke, align 1, !tbaa !15 ; 2 uses
  %i.kj = load <8 x i64>, ptr %i.kh, align 1, !tbaa !15
  %i.kk = xor <8 x i64> %i.kj, %i.ki              ; 2 uses
  %i.kl = lshr <8 x i64> %i.kk, splat (i64 32)
  %i.km = and <8 x i64> %i.kk, splat (i64 4294967295)
  %i.kn = mul nuw <8 x i64> %i.km, %i.kl
  %i.ko = shufflevector <8 x i64> %i.ki, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.kp = add <8 x i64> %.epil.init140, %i.ko
  %i.kq = add <8 x i64> %i.kp, %i.kn              ; 2 uses
  store <8 x i64> %i.kq, ptr %0, align 64, !tbaa !15
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3:       ; preds = %.epil.preheader137, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa, %.preheader17
  %i.kr = phi <8 x i64> [ %.promoted37, %.preheader17 ], [ %i.kb, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ], [ %i.kq, %.epil.preheader137 ] ; 2 uses
  %i.ks = lshr <8 x i64> %i.kr, splat (i64 47)
  %i.kt = load <16 x i32>, ptr %i.ig, align 1, !tbaa !15
  %i.ku = bitcast <8 x i64> %i.kr to <16 x i32>
  %i.kv = bitcast <8 x i64> %i.ks to <16 x i32>
  %i.kw = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.kt, <16 x i32> %i.ku, <16 x i32> %i.kv, i32 150) ; 2 uses
  %i.kx = bitcast <16 x i32> %i.kw to <8 x i64>
  %i.ky = lshr <8 x i64> %i.kx, splat (i64 32)
  %i.kz = bitcast <16 x i32> %i.kw to <8 x i64>
  %i.la = and <8 x i64> %i.kz, splat (i64 4294967295)
  %i.lb = mul nuw <8 x i64> %i.la, splat (i64 2654435761)
  %i.lc = mul <8 x i64> %i.ky, splat (i64 -7046029290881679360)
  %i.ld = add <8 x i64> %i.lb, %i.lc              ; 3 uses
  store <8 x i64> %i.ld, ptr %0, align 64, !tbaa !15
  %i.le = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.fw ; 2 uses
  %i.lf = sub nuw nsw i64 %.0124.i40, %i.fr       ; 3 uses
  %.not133.i = icmp ult i64 %i.lf, %i.fr
  br i1 %.not133.i, label %.preheader, label %.preheader17, !llvm.loop !53

bb.k:                                             ; preds = %bb.k, %.lr.ph43.new
  %i.lg = phi <8 x i64> [ %.promoted44, %.lr.ph43.new ], [ %i.mj, %bb.k ]
  %.0.i42 = phi i64 [ 0, %.lr.ph43.new ], [ %i.mk, %bb.k ] ; 4 uses
  %niter153 = phi i64 [ 0, %.lr.ph43.new ], [ %niter153.next.1, %bb.k ]
  %i.lh = shl i64 %.0.i42, 6
  %i.li = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.lh ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.lj, i32 0, i32 3, i32 1)
  %i.lk = shl i64 %.0.i42, 3
  %i.ll = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.lk
  %i.lm = load <8 x i64>, ptr %i.li, align 1, !tbaa !15 ; 2 uses
  %i.ln = load <8 x i64>, ptr %i.ll, align 1, !tbaa !15
  %i.lo = xor <8 x i64> %i.ln, %i.lm              ; 2 uses
  %i.lp = lshr <8 x i64> %i.lo, splat (i64 32)
  %i.lq = and <8 x i64> %i.lo, splat (i64 4294967295)
  %i.lr = mul nuw <8 x i64> %i.lq, %i.lp
  %i.ls = shufflevector <8 x i64> %i.lm, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.lt = add <8 x i64> %i.lg, %i.ls
  %i.lu = add <8 x i64> %i.lt, %i.lr              ; 2 uses
  store <8 x i64> %i.lu, ptr %0, align 64, !tbaa !15
  %i.lv = or disjoint i64 %.0.i42, 1              ; 2 uses
  %i.lw = shl i64 %i.lv, 6
  %i.lx = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.lw ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ly, i32 0, i32 3, i32 1)
  %i.lz = shl i64 %i.lv, 3
  %i.ma = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.lz
  %i.mb = load <8 x i64>, ptr %i.lx, align 1, !tbaa !15 ; 2 uses
  %i.mc = load <8 x i64>, ptr %i.ma, align 1, !tbaa !15
  %i.md = xor <8 x i64> %i.mc, %i.mb              ; 2 uses
  %i.me = lshr <8 x i64> %i.md, splat (i64 32)
  %i.mf = and <8 x i64> %i.md, splat (i64 4294967295)
  %i.mg = mul nuw <8 x i64> %i.mf, %i.me
  %i.mh = shufflevector <8 x i64> %i.mb, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.mi = add <8 x i64> %i.lu, %i.mh
  %i.mj = add <8 x i64> %i.mi, %i.mg              ; 3 uses
  store <8 x i64> %i.mj, ptr %0, align 64, !tbaa !15
  %i.mk = add nuw i64 %.0.i42, 2                  ; 2 uses
  %niter153.next.1 = add nuw i64 %niter153, 2     ; 2 uses
  %niter153.ncmp.1 = icmp eq i64 %niter153.next.1, %unroll_iter152
  br i1 %niter153.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod150.not = icmp eq i64 %xtraiter147, 0
  br i1 %lcmp.mod150.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit, label %.epil.preheader146

.epil.preheader146:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, %.lr.ph43
  %.epil.init149 = phi <8 x i64> [ %.promoted44, %.lr.ph43 ], [ %i.mj, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa ]
  %.0.i42.epil.init = phi i64 [ 0, %.lr.ph43 ], [ %i.mk, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod151 = trunc i64 %.0124.i.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod151)
  %i.ml = shl i64 %.0.i42.epil.init, 6
  %i.mm = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.ml ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.mn, i32 0, i32 3, i32 1)
  %i.mo = shl i64 %.0.i42.epil.init, 3
  %i.mp = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.mo
  %i.mq = load <8 x i64>, ptr %i.mm, align 1, !tbaa !15 ; 2 uses
  %i.mr = load <8 x i64>, ptr %i.mp, align 1, !tbaa !15
  %i.ms = xor <8 x i64> %i.mr, %i.mq              ; 2 uses
  %i.mt = lshr <8 x i64> %i.ms, splat (i64 32)
  %i.mu = and <8 x i64> %i.ms, splat (i64 4294967295)
  %i.mv = mul nuw <8 x i64> %i.mu, %i.mt
  %i.mw = shufflevector <8 x i64> %i.mq, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.mx = add <8 x i64> %.epil.init149, %i.mw
  %i.my = add <8 x i64> %i.mx, %i.mv
  store <8 x i64> %i.my, ptr %0, align 64, !tbaa !15
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit:        ; preds = %.epil.preheader146, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, %.preheader
  %i.mz = shl nuw i64 %.0124.i.lcssa, 6
  %i.na = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.mz ; 4 uses
  %i.nb = icmp ult ptr %i.na, %i.c
  tail call void @llvm.assume(i1 %i.nb)
  store i64 %.0124.i.lcssa, ptr %i.gc, align 8, !tbaa !52
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.nd = getelementptr inbounds i8, ptr %i.na, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.nc, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.nd, i64 64, i1 false)
  %i.ne = ptrtoint ptr %i.na to i64
  %i.nf = sub i64 %i.ft, %i.ne                    ; 2 uses
  %i.ng = icmp slt i64 %i.nf, 65
  tail call void @llvm.assume(i1 %i.ng)
  br label %bb.q

bb.l:                                             ; preds = %bb.h
  %i.nh = icmp sgt i64 %i.fv, 256
  br i1 %i.nh, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ni = getelementptr inbounds i8, ptr %i.c, i64 -256
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.nl = load i64, ptr %i.nk, align 32, !tbaa !47
  %i.nm = icmp ugt i64 %i.fr, 3
  tail call void @llvm.assume(i1 %i.nm)
  %.promoted30 = load i64, ptr %i.nj, align 8, !tbaa !26
  %i.nn = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nl
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %invariant.op = sub nuw i64 %i.fr, 1
  br label %bb.n

bb.n:                                             ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, %bb.m
  %storemerge.i731 = phi i64 [ %.promoted30, %bb.m ], [ %storemerge.i7, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit ] ; 6 uses
  %.2.i = phi ptr [ %.0125.i, %bb.m ], [ %i.sv, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit ] ; 14 uses
  %i.no = icmp ult i64 %storemerge.i731, %i.fr
  tail call void @llvm.assume(i1 %i.no)
  %i.np = sub nuw i64 %i.fr, %storemerge.i731     ; 7 uses
  %.not.i6 = icmp ugt i64 %i.np, 4
  %i.nq = shl i64 %storemerge.i731, 3
  %i.nr = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nq ; 7 uses
  %.promoted28 = load <8 x i64>, ptr %0, align 64, !tbaa !15 ; 3 uses
  br i1 %.not.i6, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i, label %.preheader84.preheader

.preheader84.preheader:                           ; preds = %bb.n
  %xtraiter112 = and i64 %i.np, 1
  %i.ns = icmp eq i64 %storemerge.i731, %invariant.op
  br i1 %i.ns, label %.preheader84.epil.preheader, label %.preheader84.preheader.new

.preheader84.preheader.new:                       ; preds = %.preheader84.preheader
  %unroll_iter118 = and i64 %i.np, 6
  br label %.preheader84

.preheader84:                                     ; preds = %.preheader84, %.preheader84.preheader.new
  %24 = phi <8 x i64> [ %.promoted28, %.preheader84.preheader.new ], [ %i.oe, %.preheader84 ]
  %.0.i39.i23 = phi i64 [ 0, %.preheader84.preheader.new ], [ %42, %.preheader84 ] ; 4 uses
  %niter119 = phi i64 [ 0, %.preheader84.preheader.new ], [ %niter119.next.1, %.preheader84 ]
  %25 = shl nuw nsw i64 %.0.i39.i23, 6
  %26 = getelementptr inbounds nuw i8, ptr %.2.i, i64 %25 ; 2 uses
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %27, i32 0, i32 3, i32 1)
  %28 = shl nuw nsw i64 %.0.i39.i23, 3
  %29 = getelementptr inbounds nuw i8, ptr %i.nr, i64 %28
  %30 = load <8 x i64>, ptr %26, align 1, !tbaa !15 ; 2 uses
  %31 = load <8 x i64>, ptr %29, align 1, !tbaa !15
  %32 = xor <8 x i64> %31, %30                    ; 2 uses
  %33 = lshr <8 x i64> %32, splat (i64 32)
  %34 = and <8 x i64> %32, splat (i64 4294967295)
  %35 = mul nuw <8 x i64> %34, %33
  %36 = shufflevector <8 x i64> %30, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %37 = add <8 x i64> %24, %36
  %38 = add <8 x i64> %37, %35                    ; 2 uses
  store <8 x i64> %38, ptr %0, align 64, !tbaa !15
  %39 = or disjoint i64 %.0.i39.i23, 1            ; 2 uses
  %40 = shl nuw nsw i64 %39, 6
  %i.nt = getelementptr inbounds nuw i8, ptr %.2.i, i64 %40 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.nu, i32 0, i32 3, i32 1)
  %41 = shl nuw nsw i64 %39, 3
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 %41
  %i.nw = load <8 x i64>, ptr %i.nt, align 1, !tbaa !15 ; 2 uses
  %i.nx = load <8 x i64>, ptr %i.nv, align 1, !tbaa !15
  %i.ny = xor <8 x i64> %i.nx, %i.nw              ; 2 uses
  %i.nz = lshr <8 x i64> %i.ny, splat (i64 32)
  %i.oa = and <8 x i64> %i.ny, splat (i64 4294967295)
  %i.ob = mul nuw <8 x i64> %i.oa, %i.nz
  %i.oc = shufflevector <8 x i64> %i.nw, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.od = add <8 x i64> %38, %i.oc
  %i.oe = add <8 x i64> %i.od, %i.ob              ; 4 uses
  store <8 x i64> %i.oe, ptr %0, align 64, !tbaa !15
  %42 = add nuw i64 %.0.i39.i23, 2                ; 2 uses
  %niter119.next.1 = add i64 %niter119, 2         ; 2 uses
  %niter119.ncmp.1 = icmp eq i64 %niter119.next.1, %unroll_iter118
  br i1 %niter119.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa, label %.preheader84, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa: ; preds = %.preheader84
  %lcmp.mod115.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod115.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i, label %.preheader84.epil.preheader

.preheader84.epil.preheader:                      ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa, %.preheader84.preheader
  %.epil.init114 = phi <8 x i64> [ %.promoted28, %.preheader84.preheader ], [ %i.oe, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa ]
  %.0.i39.i23.epil.init = phi i64 [ 0, %.preheader84.preheader ], [ %42, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa ] ; 2 uses
  %lcmp.mod117 = trunc i64 %i.np to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %43 = shl nuw nsw i64 %.0.i39.i23.epil.init, 6
  %i.of = getelementptr inbounds nuw i8, ptr %.2.i, i64 %43 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.og, i32 0, i32 3, i32 1)
  %44 = shl nuw nsw i64 %.0.i39.i23.epil.init, 3
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nr, i64 %44
  %i.oi = load <8 x i64>, ptr %i.of, align 1, !tbaa !15 ; 2 uses
  %i.oj = load <8 x i64>, ptr %i.oh, align 1, !tbaa !15
  %i.ok = xor <8 x i64> %i.oj, %i.oi              ; 2 uses
  %i.ol = lshr <8 x i64> %i.ok, splat (i64 32)
  %i.om = and <8 x i64> %i.ok, splat (i64 4294967295)
  %i.on = mul nuw <8 x i64> %i.om, %i.ol
  %i.oo = shufflevector <8 x i64> %i.oi, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.op = add <8 x i64> %.epil.init114, %i.oo
  %i.oq = add <8 x i64> %i.op, %i.on              ; 2 uses
  store <8 x i64> %i.oq, ptr %0, align 64, !tbaa !15
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i:    ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa, %.preheader84.epil.preheader
  %.lcssa100 = phi <8 x i64> [ %i.oe, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa ], [ %i.oq, %.preheader84.epil.preheader ] ; 2 uses
  %i.or = sub nsw i64 4, %i.np                    ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.os = lshr <8 x i64> %.lcssa100, splat (i64 47)
  %i.ot = load <16 x i32>, ptr %i.nn, align 1, !tbaa !15
  %i.ou = bitcast <8 x i64> %.lcssa100 to <16 x i32>
  %i.ov = bitcast <8 x i64> %i.os to <16 x i32>
  %i.ow = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ot, <16 x i32> %i.ou, <16 x i32> %i.ov, i32 150) ; 2 uses
  %i.ox = bitcast <16 x i32> %i.ow to <8 x i64>
  %i.oy = lshr <8 x i64> %i.ox, splat (i64 32)
  %i.oz = bitcast <16 x i32> %i.ow to <8 x i64>
  %i.pa = and <8 x i64> %i.oz, splat (i64 4294967295)
  %i.pb = mul nuw <8 x i64> %i.pa, splat (i64 2654435761)
  %i.pc = mul <8 x i64> %i.oy, splat (i64 -7046029290881679360)
  %i.pd = add <8 x i64> %i.pb, %i.pc              ; 3 uses
  store <8 x i64> %i.pd, ptr %0, align 64, !tbaa !15
  %i.pe = shl nuw nsw i64 %i.np, 6
  %i.pf = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.pe ; 3 uses
  %.not45 = icmp eq i64 %i.np, 4
  br i1 %.not45, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %reass.sub = sub i64 %storemerge.i731, %i.fr
  %xtraiter121 = and i64 %i.or, 1
  %i.pg = icmp eq i64 %reass.sub, -3
  br i1 %i.pg, label %.epil.preheader120, label %.lr.ph26.new

.lr.ph26.new:                                     ; preds = %.lr.ph26
  %unroll_iter126 = and i64 %i.or, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph26.new
  %i.ph = phi <8 x i64> [ %i.pd, %.lr.ph26.new ], [ %i.qk, %bb.o ]
  %.0.i37.i25 = phi i64 [ 0, %.lr.ph26.new ], [ %i.ql, %bb.o ] ; 4 uses
  %niter127 = phi i64 [ 0, %.lr.ph26.new ], [ %niter127.next.1, %bb.o ]
  %i.pi = shl nuw nsw i64 %.0.i37.i25, 6
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.pi ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.pk, i32 0, i32 3, i32 1)
  %i.pl = shl nuw nsw i64 %.0.i37.i25, 3
  %i.pm = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.pl
  %i.pn = load <8 x i64>, ptr %i.pj, align 1, !tbaa !15 ; 2 uses
  %i.po = load <8 x i64>, ptr %i.pm, align 1, !tbaa !15
  %i.pp = xor <8 x i64> %i.po, %i.pn              ; 2 uses
  %i.pq = lshr <8 x i64> %i.pp, splat (i64 32)
  %i.pr = and <8 x i64> %i.pp, splat (i64 4294967295)
  %i.ps = mul nuw <8 x i64> %i.pr, %i.pq
  %i.pt = shufflevector <8 x i64> %i.pn, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.pu = add <8 x i64> %i.ph, %i.pt
  %i.pv = add <8 x i64> %i.pu, %i.ps              ; 2 uses
  store <8 x i64> %i.pv, ptr %0, align 64, !tbaa !15
  %i.pw = or disjoint i64 %.0.i37.i25, 1          ; 2 uses
  %i.px = shl nuw nsw i64 %i.pw, 6
  %i.py = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.px ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.pz, i32 0, i32 3, i32 1)
  %i.qa = shl nuw nsw i64 %i.pw, 3
  %i.qb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.qa
  %i.qc = load <8 x i64>, ptr %i.py, align 1, !tbaa !15 ; 2 uses
  %i.qd = load <8 x i64>, ptr %i.qb, align 1, !tbaa !15
  %i.qe = xor <8 x i64> %i.qd, %i.qc              ; 2 uses
  %i.qf = lshr <8 x i64> %i.qe, splat (i64 32)
  %i.qg = and <8 x i64> %i.qe, splat (i64 4294967295)
  %i.qh = mul nuw <8 x i64> %i.qg, %i.qf
  %i.qi = shufflevector <8 x i64> %i.qc, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.qj = add <8 x i64> %i.pv, %i.qi
  %i.qk = add <8 x i64> %i.qj, %i.qh              ; 3 uses
  store <8 x i64> %i.qk, ptr %0, align 64, !tbaa !15
  %i.ql = add nuw i64 %.0.i37.i25, 2              ; 2 uses
  %niter127.next.1 = add i64 %niter127, 2         ; 2 uses
  %niter127.ncmp.1 = icmp eq i64 %niter127.next.1, %unroll_iter126
  br i1 %niter127.ncmp.1, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa, label %bb.o, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i:      ; preds = %bb.n
  %i.qm = getelementptr inbounds nuw i8, ptr %.2.i, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.qm, i32 0, i32 3, i32 1)
  %i.qn = load <8 x i64>, ptr %.2.i, align 1, !tbaa !15 ; 2 uses
  %i.qo = load <8 x i64>, ptr %i.nr, align 1, !tbaa !15
  %i.qp = xor <8 x i64> %i.qo, %i.qn              ; 2 uses
  %i.qq = lshr <8 x i64> %i.qp, splat (i64 32)
  %i.qr = and <8 x i64> %i.qp, splat (i64 4294967295)
  %i.qs = mul nuw <8 x i64> %i.qr, %i.qq
  %i.qt = shufflevector <8 x i64> %i.qn, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.qu = add <8 x i64> %.promoted28, %i.qt
  %i.qv = add <8 x i64> %i.qu, %i.qs              ; 2 uses
  store <8 x i64> %i.qv, ptr %0, align 64, !tbaa !15
  %i.qw = getelementptr inbounds nuw i8, ptr %.2.i, i64 64
  %i.qx = getelementptr inbounds nuw i8, ptr %.2.i, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %i.qx, i32 0, i32 3, i32 1)
  %i.qy = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %i.qz = load <8 x i64>, ptr %i.qw, align 1, !tbaa !15 ; 2 uses
  %i.ra = load <8 x i64>, ptr %i.qy, align 1, !tbaa !15
  %i.rb = xor <8 x i64> %i.ra, %i.qz              ; 2 uses
  %i.rc = lshr <8 x i64> %i.rb, splat (i64 32)
  %i.rd = and <8 x i64> %i.rb, splat (i64 4294967295)
  %i.re = mul nuw <8 x i64> %i.rd, %i.rc
  %i.rf = shufflevector <8 x i64> %i.qz, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.rg = add <8 x i64> %i.qv, %i.rf
  %i.rh = add <8 x i64> %i.rg, %i.re              ; 2 uses
  store <8 x i64> %i.rh, ptr %0, align 64, !tbaa !15
  %i.ri = getelementptr inbounds nuw i8, ptr %.2.i, i64 128
  %i.rj = getelementptr inbounds nuw i8, ptr %.2.i, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull %i.rj, i32 0, i32 3, i32 1)
  %i.rk = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.rl = load <8 x i64>, ptr %i.ri, align 1, !tbaa !15 ; 2 uses
  %i.rm = load <8 x i64>, ptr %i.rk, align 1, !tbaa !15
  %i.rn = xor <8 x i64> %i.rm, %i.rl              ; 2 uses
  %i.ro = lshr <8 x i64> %i.rn, splat (i64 32)
  %i.rp = and <8 x i64> %i.rn, splat (i64 4294967295)
  %i.rq = mul nuw <8 x i64> %i.rp, %i.ro
  %i.rr = shufflevector <8 x i64> %i.rl, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.rs = add <8 x i64> %i.rh, %i.rr
  %i.rt = add <8 x i64> %i.rs, %i.rq              ; 2 uses
  store <8 x i64> %i.rt, ptr %0, align 64, !tbaa !15
  %i.ru = getelementptr inbounds nuw i8, ptr %.2.i, i64 192
  %i.rv = getelementptr inbounds nuw i8, ptr %.2.i, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull %i.rv, i32 0, i32 3, i32 1)
  %i.rw = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  %i.rx = load <8 x i64>, ptr %i.ru, align 1, !tbaa !15 ; 2 uses
  %i.ry = load <8 x i64>, ptr %i.rw, align 1, !tbaa !15
  %i.rz = xor <8 x i64> %i.ry, %i.rx              ; 2 uses
  %i.sa = lshr <8 x i64> %i.rz, splat (i64 32)
  %i.sb = and <8 x i64> %i.rz, splat (i64 4294967295)
  %i.sc = mul nuw <8 x i64> %i.sb, %i.sa
  %i.sd = shufflevector <8 x i64> %i.rx, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.se = add <8 x i64> %i.rt, %i.sd
  %i.sf = add <8 x i64> %i.se, %i.sc
  store <8 x i64> %i.sf, ptr %0, align 64, !tbaa !15
  %i.sg = add i64 %storemerge.i731, 4
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa: ; preds = %bb.o
  %lcmp.mod124.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod124.not, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, label %.epil.preheader120

.epil.preheader120:                               ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa, %.lr.ph26
  %.epil.init123 = phi <8 x i64> [ %i.pd, %.lr.ph26 ], [ %i.qk, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa ]
  %.0.i37.i25.epil.init = phi i64 [ 0, %.lr.ph26 ], [ %i.ql, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod125 = trunc i64 %i.or to i1
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.sh = shl nuw nsw i64 %.0.i37.i25.epil.init, 6
  %i.si = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.sh ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.sj, i32 0, i32 3, i32 1)
  %i.sk = shl nuw nsw i64 %.0.i37.i25.epil.init, 3
  %i.sl = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.sk
  %i.sm = load <8 x i64>, ptr %i.si, align 1, !tbaa !15 ; 2 uses
  %i.sn = load <8 x i64>, ptr %i.sl, align 1, !tbaa !15
  %i.so = xor <8 x i64> %i.sn, %i.sm              ; 2 uses
  %i.sp = lshr <8 x i64> %i.so, splat (i64 32)
  %i.sq = and <8 x i64> %i.so, splat (i64 4294967295)
  %i.sr = mul nuw <8 x i64> %i.sq, %i.sp
  %i.ss = shufflevector <8 x i64> %i.sm, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.st = add <8 x i64> %.epil.init123, %i.ss
  %i.su = add <8 x i64> %i.st, %i.sr
  store <8 x i64> %i.su, ptr %0, align 64, !tbaa !15
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit: ; preds = %.epil.preheader120, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i
  %storemerge.i7 = phi i64 [ %i.sg, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i ], [ 0, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i ], [ %i.or, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa ], [ %i.or, %.epil.preheader120 ] ; 2 uses
  store i64 %storemerge.i7, ptr %i.nj, align 8, !tbaa !26
  %i.sv = getelementptr inbounds nuw i8, ptr %.2.i, i64 256 ; 4 uses
  %i.sw = icmp ult ptr %i.sv, %i.ni
  br i1 %i.sw, label %bb.n, label %bb.p, !llvm.loop !54

bb.p:                                             ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.sy = getelementptr inbounds nuw i8, ptr %.2.i, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.sx, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.sy, i64 64, i1 false)
  %.pre63 = ptrtoint ptr %i.sv to i64
  %.pre64 = sub i64 %i.ft, %.pre63
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit
  %.pre-phi65 = phi i64 [ %.pre64, %bb.p ], [ %i.fv, %bb.l ], [ %i.nf, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit ] ; 3 uses
  %.3.i = phi ptr [ %i.sv, %bb.p ], [ %.0125.i, %bb.l ], [ %i.na, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit ] ; 2 uses
  %i.sz = icmp ult ptr %.3.i, %i.c
  tail call void @llvm.assume(i1 %i.sz)
  %i.ta = icmp slt i64 %.pre-phi65, 257
  tail call void @llvm.assume(i1 %i.ta)
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.tb, ptr readonly align 1 %.3.i, i64 %.pre-phi65, i1 false)
  %i.tc = trunc i64 %.pre-phi65 to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.d
  %storemerge.i = phi i32 [ %i.tc, %bb.q ], [ %i.v, %bb.d ]
  store i32 %storemerge.i, ptr %i.l, align 64, !tbaa !51
  br label %_ZL11XXH3_updateP12XXH3_state_sPKhmPFvPmS2_S2_mEPFvPvPKvE.exit

_ZL11XXH3_updateP12XXH3_state_sPKhmPFvPmS2_S2_mEPFvPvPKvE.exit: ; preds = %bb.b, %bb.r
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define i64 @ROCKSDB_XXH3_64bits_digest(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
end_hunk_0
begin_hunk_1_@ROCKSDB_XXH3_128bits_reset:bb.a
  %.0.i = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define range(i32 0, 2) i32 @ROCKSDB_XXH3_128bits_reset_withSecret(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef captures(address) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ROCKSDB_XXH3_64bits_reset_withSecret.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %i.c, align 32, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %i.d, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %1, ptr %i.e, align 8, !tbaa !46
  %i.f = icmp ugt i64 %2, 135
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add i64 %2, -64                          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %i.g, ptr %i.h, align 32, !tbaa !47
  %i.i = lshr i64 %i.g, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %i.i, ptr %i.j, align 8, !tbaa !48
  %i.k = icmp eq ptr %1, null
  %spec.select.i = zext i1 %i.k to i32
  br label %ROCKSDB_XXH3_64bits_reset_withSecret.exit

ROCKSDB_XXH3_64bits_reset_withSecret.exit:        ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %spec.select.i, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define range(i32 0, 2) i32 @ROCKSDB_XXH3_128bits_reset_withSeed(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ROCKSDB_XXH3_64bits_reset_withSeed.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %ROCKSDB_XXH3_64bits_reset.exit.i, label %bb.c

ROCKSDB_XXH3_64bits_reset.exit.i:                 ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %i.d, align 32, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %i.e, align 8, !tbaa !42
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !42
  %.not.i = icmp eq i64 %1, %i.g
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %.not12.i = icmp eq ptr %i.i, null
  br i1 %.not12.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.k = insertelement <8 x i64> poison, i64 %1, i64 0
  %i.l = shufflevector <8 x i64> %i.k, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.m = sub <8 x i64> <i64 poison, i64 0, i64 poison, i64 0, i64 poison, i64 0, i64 poison, i64 0>, %i.l
  %i.n = shufflevector <8 x i64> %i.l, <8 x i64> %i.m, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15> ; 3 uses
  %i.o = add <8 x i64> %i.n, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  store <8 x i64> %i.o, ptr %i.j, align 64, !tbaa !15
  %i.p = add <8 x i64> %i.n, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <8 x i64> %i.p, ptr %i.q, align 64, !tbaa !15
  %i.r = add <8 x i64> %i.n, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <8 x i64> %i.r, ptr %i.s, align 64, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %i.u, align 32, !tbaa !26
  store i64 %1, ptr %i.f, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 1, ptr %i.v, align 4, !tbaa !49
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %ROCKSDB_XXH3_64bits_reset.exit.i
  %.sink.i = phi ptr [ null, %bb.f ], [ @_ZL12XXH3_kSecret, %ROCKSDB_XXH3_64bits_reset.exit.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %.sink.i, ptr %i.w, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 128, ptr %i.x, align 32, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 16, ptr %i.y, align 8, !tbaa !48
  br label %ROCKSDB_XXH3_64bits_reset_withSeed.exit

ROCKSDB_XXH3_64bits_reset_withSeed.exit:          ; preds = %bb.a, %.sink.split.i
  %.0.i = phi i32 [ 1, %bb.a ], [ 0, %.sink.split.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @ROCKSDB_XXH3_128bits_reset_withSecretandSeed(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef captures(address) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  %i.c = icmp ult i64 %2, 136
  %or.cond11.i = or i1 %or.cond.i, %i.c
  br i1 %or.cond11.i, label %ROCKSDB_XXH3_64bits_reset_withSecretandSeed.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %i.e, align 32, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 %3, ptr %i.f, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %1, ptr %i.h, align 8, !tbaa !46
  %i.i = add i64 %2, -64                          ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %i.i, ptr %i.j, align 32, !tbaa !47
  %i.k = lshr i64 %i.i, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %i.k, ptr %i.l, align 8, !tbaa !48
  store i32 1, ptr %i.g, align 4, !tbaa !49
  br label %ROCKSDB_XXH3_64bits_reset_withSecretandSeed.exit

ROCKSDB_XXH3_64bits_reset_withSecretandSeed.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef i32 @ROCKSDB_XXH3_128bits_update(ptr nofree noundef captures(address) %0, ptr noundef captures(address) %1, i64 noundef %2) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %i.b)
  br label %_ZL11XXH3_updateP12XXH3_state_sPKhmPFvPmS2_S2_mEPFvPvPKvE.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = select i1 %i.f, ptr %i.g, ptr %i.e       ; 18 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.j = load i64, ptr %i.i, align 16, !tbaa !50
  %i.k = add i64 %i.j, %2
  store i64 %i.k, ptr %i.i, align 16, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.m = load i32, ptr %i.l, align 64, !tbaa !51  ; 4 uses
  %i.n = icmp ult i32 %i.m, 257
  tail call void @llvm.assume(i1 %i.n)
  %i.o = zext nneg i32 %i.m to i64                ; 3 uses
  %i.p = add i64 %2, %i.o
  %i.q = icmp ult i64 %i.p, 257
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %i.t = trunc i64 %2 to i32
  %i.u = load i32, ptr %i.l, align 64, !tbaa !51
  %i.v = add i32 %i.u, %i.t
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 536
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !48
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = sub nuw nsw i32 256, %i.m
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %1, i64 %i.x, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !48 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.af = load i64, ptr %i.ae, align 32, !tbaa !47
  %i.ag = icmp ugt i64 %i.ad, 3
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !26 ; 6 uses
  %i.ai = icmp ult i64 %i.ah, %i.ad
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = sub nuw i64 %i.ad, %i.ah                ; 7 uses
  %.not.i8 = icmp ugt i64 %i.aj, 4
  %i.ak = shl i64 %i.ah, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ak ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %.promoted21 = load <8 x i64>, ptr %0, align 64, !tbaa !15 ; 3 uses
  br i1 %.not.i8, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15, label %.preheader85.preheader

.preheader85.preheader:                           ; preds = %bb.f
  %.neg = add nuw i64 %i.ah, 1
  %xtraiter = and i64 %i.aj, 1
  %i.am = icmp eq i64 %i.ad, %.neg
  br i1 %i.am, label %.preheader85.epil.preheader, label %.preheader85.preheader.new

.preheader85.preheader.new:                       ; preds = %.preheader85.preheader
  %unroll_iter = and i64 %i.aj, 6
  br label %.preheader85

.preheader85:                                     ; preds = %.preheader85, %.preheader85.preheader.new
  %3 = phi <8 x i64> [ %.promoted21, %.preheader85.preheader.new ], [ %i.ay, %.preheader85 ]
  %.0.i39.i918 = phi i64 [ 0, %.preheader85.preheader.new ], [ %21, %.preheader85 ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader85.preheader.new ], [ %niter.next.1, %.preheader85 ]
  %4 = shl nuw nsw i64 %.0.i39.i918, 6
  %5 = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %6, i32 0, i32 3, i32 1)
  %7 = shl nuw nsw i64 %.0.i39.i918, 3
  %8 = getelementptr inbounds nuw i8, ptr %i.al, i64 %7
  %9 = load <8 x i64>, ptr %5, align 64, !tbaa !15 ; 2 uses
  %10 = load <8 x i64>, ptr %8, align 1, !tbaa !15
  %11 = xor <8 x i64> %10, %9                     ; 2 uses
  %12 = lshr <8 x i64> %11, splat (i64 32)
  %13 = and <8 x i64> %11, splat (i64 4294967295)
  %14 = mul nuw <8 x i64> %13, %12
  %15 = shufflevector <8 x i64> %9, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %16 = add <8 x i64> %3, %15
  %17 = add <8 x i64> %16, %14                    ; 2 uses
  store <8 x i64> %17, ptr %0, align 64, !tbaa !15
  %18 = or disjoint i64 %.0.i39.i918, 1           ; 2 uses
  %19 = shl nuw nsw i64 %18, 6
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 %19 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ao, i32 0, i32 3, i32 1)
  %20 = shl nuw nsw i64 %18, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %20
  %i.aq = load <8 x i64>, ptr %i.an, align 64, !tbaa !15 ; 2 uses
  %i.ar = load <8 x i64>, ptr %i.ap, align 1, !tbaa !15
  %i.as = xor <8 x i64> %i.ar, %i.aq              ; 2 uses
  %i.at = lshr <8 x i64> %i.as, splat (i64 32)
  %i.au = and <8 x i64> %i.as, splat (i64 4294967295)
  %i.av = mul nuw <8 x i64> %i.au, %i.at
  %i.aw = shufflevector <8 x i64> %i.aq, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ax = add <8 x i64> %17, %i.aw
  %i.ay = add <8 x i64> %i.ax, %i.av              ; 4 uses
  store <8 x i64> %i.ay, ptr %0, align 64, !tbaa !15
  %21 = add nuw i64 %.0.i39.i918, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.a = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.a, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa, label %.preheader85, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa: ; preds = %.preheader85
  %lcmp.mod.not.a = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not.a, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10, label %.preheader85.epil.preheader

.preheader85.epil.preheader:                      ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa, %.preheader85.preheader
  %.epil.init = phi <8 x i64> [ %.promoted21, %.preheader85.preheader ], [ %i.ay, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa ]
  %.0.i39.i918.epil.init = phi i64 [ 0, %.preheader85.preheader ], [ %21, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa ] ; 2 uses
  %lcmp.mod104 = trunc i64 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod104)
  %22 = shl nuw nsw i64 %.0.i39.i918.epil.init, 6
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 %22 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ba, i32 0, i32 3, i32 1)
  %23 = shl nuw nsw i64 %.0.i39.i918.epil.init, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 %23
  %i.bc = load <8 x i64>, ptr %i.az, align 64, !tbaa !15 ; 2 uses
  %i.bd = load <8 x i64>, ptr %i.bb, align 1, !tbaa !15
  %i.be = xor <8 x i64> %i.bd, %i.bc              ; 2 uses
  %i.bf = lshr <8 x i64> %i.be, splat (i64 32)
  %i.bg = and <8 x i64> %i.be, splat (i64 4294967295)
  %i.bh = mul nuw <8 x i64> %i.bg, %i.bf
  %i.bi = shufflevector <8 x i64> %i.bc, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.bj = add <8 x i64> %.epil.init, %i.bi
  %i.bk = add <8 x i64> %i.bj, %i.bh              ; 2 uses
  store <8 x i64> %i.bk, ptr %0, align 64, !tbaa !15
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10:  ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa, %.preheader85.epil.preheader
  %.lcssa102 = phi <8 x i64> [ %i.ay, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa ], [ %i.bk, %.preheader85.epil.preheader ] ; 2 uses
  %i.bl = sub nsw i64 4, %i.aj                    ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.af
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.bn = lshr <8 x i64> %.lcssa102, splat (i64 47)
  %i.bo = load <16 x i32>, ptr %i.bm, align 1, !tbaa !15
  %i.bp = bitcast <8 x i64> %.lcssa102 to <16 x i32>
  %i.bq = bitcast <8 x i64> %i.bn to <16 x i32>
  %i.br = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.bo, <16 x i32> %i.bp, <16 x i32> %i.bq, i32 150) ; 2 uses
  %i.bs = bitcast <16 x i32> %i.br to <8 x i64>
  %i.bt = lshr <8 x i64> %i.bs, splat (i64 32)
  %i.bu = bitcast <16 x i32> %i.br to <8 x i64>
  %i.bv = and <8 x i64> %i.bu, splat (i64 4294967295)
  %i.bw = mul nuw <8 x i64> %i.bv, splat (i64 2654435761)
  %i.bx = mul <8 x i64> %i.bt, splat (i64 -7046029290881679360)
  %i.by = add <8 x i64> %i.bw, %i.bx              ; 3 uses
  store <8 x i64> %i.by, ptr %0, align 64, !tbaa !15
  %i.bz = shl nuw nsw i64 %i.aj, 6
  %i.ca = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bz ; 3 uses
  %.not = icmp eq i64 %i.aj, 4
  br i1 %.not, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.cb = add i64 %i.ah, 3
  %xtraiter105.a = and i64 %i.bl, 1
  %i.cc = icmp eq i64 %i.cb, %i.ad
  br i1 %i.cc, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter110.a = and i64 %i.bl, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %i.cd = phi <8 x i64> [ %i.by, %.lr.ph.new ], [ %i.dg, %bb.g ]
  %.0.i37.i1119 = phi i64 [ 0, %.lr.ph.new ], [ %i.dh, %bb.g ] ; 4 uses
  %niter111.a = phi i64 [ 0, %.lr.ph.new ], [ %niter111.next.1.a, %bb.g ]
  %i.ce = shl nuw nsw i64 %.0.i37.i1119, 6
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cg, i32 0, i32 3, i32 1)
  %i.ch = shl nuw nsw i64 %.0.i37.i1119, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ch
  %i.cj = load <8 x i64>, ptr %i.cf, align 64, !tbaa !15 ; 2 uses
  %i.ck = load <8 x i64>, ptr %i.ci, align 1, !tbaa !15
  %i.cl = xor <8 x i64> %i.ck, %i.cj              ; 2 uses
  %i.cm = lshr <8 x i64> %i.cl, splat (i64 32)
  %i.cn = and <8 x i64> %i.cl, splat (i64 4294967295)
  %i.co = mul nuw <8 x i64> %i.cn, %i.cm
  %i.cp = shufflevector <8 x i64> %i.cj, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.cq = add <8 x i64> %i.cd, %i.cp
  %i.cr = add <8 x i64> %i.cq, %i.co              ; 2 uses
  store <8 x i64> %i.cr, ptr %0, align 64, !tbaa !15
  %i.cs = or disjoint i64 %.0.i37.i1119, 1        ; 2 uses
  %i.ct = shl nuw nsw i64 %i.cs, 6
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cv, i32 0, i32 3, i32 1)
  %i.cw = shl nuw nsw i64 %i.cs, 3
  %i.cx = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cw
  %i.cy = load <8 x i64>, ptr %i.cu, align 64, !tbaa !15 ; 2 uses
  %i.cz = load <8 x i64>, ptr %i.cx, align 1, !tbaa !15
  %i.da = xor <8 x i64> %i.cz, %i.cy              ; 2 uses
  %i.db = lshr <8 x i64> %i.da, splat (i64 32)
  %i.dc = and <8 x i64> %i.da, splat (i64 4294967295)
  %i.dd = mul nuw <8 x i64> %i.dc, %i.db
  %i.de = shufflevector <8 x i64> %i.cy, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.df = add <8 x i64> %i.cr, %i.de
  %i.dg = add <8 x i64> %i.df, %i.dd              ; 3 uses
  store <8 x i64> %i.dg, ptr %0, align 64, !tbaa !15
  %i.dh = add nuw i64 %.0.i37.i1119, 2            ; 2 uses
  %niter111.next.1.a = add i64 %niter111.a, 2     ; 2 uses
  %niter111.ncmp.1.a = icmp eq i64 %niter111.next.1.a, %unroll_iter110.a
  br i1 %niter111.ncmp.1.a, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa, label %bb.g, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15:    ; preds = %bb.f
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull %i.di, i32 0, i32 3, i32 1)
  %i.dj = load <8 x i64>, ptr %i.y, align 64, !tbaa !15 ; 2 uses
  %i.dk = load <8 x i64>, ptr %i.al, align 1, !tbaa !15
  %i.dl = xor <8 x i64> %i.dk, %i.dj              ; 2 uses
  %i.dm = lshr <8 x i64> %i.dl, splat (i64 32)
  %i.dn = and <8 x i64> %i.dl, splat (i64 4294967295)
  %i.do = mul nuw <8 x i64> %i.dn, %i.dm
  %i.dp = shufflevector <8 x i64> %i.dj, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.dq = add <8 x i64> %.promoted21, %i.dp
  %i.dr = add <8 x i64> %i.dq, %i.do              ; 2 uses
  store <8 x i64> %i.dr, ptr %0, align 64, !tbaa !15
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dt, i32 0, i32 3, i32 1)
  %i.du = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.dv = load <8 x i64>, ptr %i.ds, align 64, !tbaa !15 ; 2 uses
  %i.dw = load <8 x i64>, ptr %i.du, align 1, !tbaa !15
  %i.dx = xor <8 x i64> %i.dw, %i.dv              ; 2 uses
  %i.dy = lshr <8 x i64> %i.dx, splat (i64 32)
  %i.dz = and <8 x i64> %i.dx, splat (i64 4294967295)
  %i.ea = mul nuw <8 x i64> %i.dz, %i.dy
  %i.eb = shufflevector <8 x i64> %i.dv, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ec = add <8 x i64> %i.dr, %i.eb
  %i.ed = add <8 x i64> %i.ec, %i.ea              ; 2 uses
  store <8 x i64> %i.ed, ptr %0, align 64, !tbaa !15
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ef, i32 0, i32 3, i32 1)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.eh = load <8 x i64>, ptr %i.ee, align 64, !tbaa !15 ; 2 uses
  %i.ei = load <8 x i64>, ptr %i.eg, align 1, !tbaa !15
  %i.ej = xor <8 x i64> %i.ei, %i.eh              ; 2 uses
  %i.ek = lshr <8 x i64> %i.ej, splat (i64 32)
  %i.el = and <8 x i64> %i.ej, splat (i64 4294967295)
  %i.em = mul nuw <8 x i64> %i.el, %i.ek
  %i.en = shufflevector <8 x i64> %i.eh, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.eo = add <8 x i64> %i.ed, %i.en
  %i.ep = add <8 x i64> %i.eo, %i.em              ; 2 uses
  store <8 x i64> %i.ep, ptr %0, align 64, !tbaa !15
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull %i.er, i32 0, i32 3, i32 1)
  %i.es = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.et = load <8 x i64>, ptr %i.eq, align 64, !tbaa !15 ; 2 uses
  %i.eu = load <8 x i64>, ptr %i.es, align 1, !tbaa !15
  %i.ev = xor <8 x i64> %i.eu, %i.et              ; 2 uses
  %i.ew = lshr <8 x i64> %i.ev, splat (i64 32)
  %i.ex = and <8 x i64> %i.ev, splat (i64 4294967295)
  %i.ey = mul nuw <8 x i64> %i.ex, %i.ew
  %i.ez = shufflevector <8 x i64> %i.et, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.fa = add <8 x i64> %i.ep, %i.ez
  %i.fb = add <8 x i64> %i.fa, %i.ey
  store <8 x i64> %i.fb, ptr %0, align 64, !tbaa !15
  %i.fc = add i64 %i.ah, 4
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod108.not.a = icmp eq i64 %xtraiter105.a, 0
  br i1 %lcmp.mod108.not.a, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa, %.lr.ph
  %.epil.init107.a = phi <8 x i64> [ %i.by, %.lr.ph ], [ %i.dg, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ]
  %.0.i37.i1119.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.dh, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod109.a = trunc i64 %i.bl to i1
  tail call void @llvm.assume(i1 %lcmp.mod109.a)
  %i.fd = shl nuw nsw i64 %.0.i37.i1119.epil.init, 6
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ff, i32 0, i32 3, i32 1)
  %i.fg = shl nuw nsw i64 %.0.i37.i1119.epil.init, 3
  %i.fh = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fg
  %i.fi = load <8 x i64>, ptr %i.fe, align 64, !tbaa !15 ; 2 uses
  %i.fj = load <8 x i64>, ptr %i.fh, align 1, !tbaa !15
  %i.fk = xor <8 x i64> %i.fj, %i.fi              ; 2 uses
  %i.fl = lshr <8 x i64> %i.fk, splat (i64 32)
  %i.fm = and <8 x i64> %i.fk, splat (i64 4294967295)
  %i.fn = mul nuw <8 x i64> %i.fm, %i.fl
  %i.fo = shufflevector <8 x i64> %i.fi, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.fp = add <8 x i64> %.epil.init107.a, %i.fo
  %i.fq = add <8 x i64> %i.fp, %i.fn
  store <8 x i64> %i.fq, ptr %0, align 64, !tbaa !15
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16: ; preds = %.epil.preheader, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15
  %storemerge.i13 = phi i64 [ %i.fc, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15 ], [ 0, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10 ], [ %i.bl, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ], [ %i.bl, %.epil.preheader ]
  store i64 %storemerge.i13, ptr %i.ab, align 8, !tbaa !26
  store i32 0, ptr %i.l, align 64, !tbaa !51
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16
  %i.fr = phi i64 [ %i.ad, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16 ], [ %.pre, %._crit_edge ] ; 18 uses
  %.0125.i = phi ptr [ %i.aa, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16 ], [ %1, %._crit_edge ] ; 8 uses
  %i.fs = icmp ult ptr %.0125.i, %i.c
  tail call void @llvm.assume(i1 %i.fs)
  %i.ft = ptrtoint ptr %i.c to i64                ; 3 uses
  %i.fu = ptrtoint ptr %.0125.i to i64            ; 2 uses
  %i.fv = sub i64 %i.ft, %i.fu                    ; 3 uses
  %i.fw = shl i64 %i.fr, 6                        ; 2 uses
  %i.fx = icmp ugt i64 %i.fv, %i.fw
  br i1 %i.fx, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.fy = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = sub i64 %i.fz, %i.fu
  %i.gb = lshr i64 %i.ga, 6                       ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !52 ; 5 uses
  %i.ge = icmp uge i64 %i.fr, %i.gd
  tail call void @llvm.assume(i1 %i.ge)
  %i.gf = sub nuw i64 %i.fr, %i.gd                ; 6 uses
  %i.gg = icmp ule i64 %i.gf, %i.gb
  tail call void @llvm.assume(i1 %i.gg)
  %i.gh = shl i64 %i.gd, 3
  %i.gi = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.gh ; 3 uses
  %.not46 = icmp eq i64 %i.fr, %i.gd
  %.pre60 = load <8 x i64>, ptr %0, align 64, !tbaa !15 ; 3 uses
  br i1 %.not46, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %.neg155 = add i64 %i.gd, 1
  %xtraiter129 = and i64 %i.gf, 1
  %i.gj = icmp eq i64 %i.fr, %.neg155
  br i1 %i.gj, label %.epil.preheader128, label %.lr.ph33.new

.lr.ph33.new:                                     ; preds = %.lr.ph33
  %unroll_iter135 = and i64 %i.gf, -2
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph33.new
  %i.gk = phi <8 x i64> [ %.pre60, %.lr.ph33.new ], [ %i.hn, %bb.j ]
  %.0.i432 = phi i64 [ 0, %.lr.ph33.new ], [ %i.ho, %bb.j ] ; 4 uses
  %niter136 = phi i64 [ 0, %.lr.ph33.new ], [ %niter136.next.1, %bb.j ]
  %i.gl = shl i64 %.0.i432, 6
  %i.gm = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.gl ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.gn, i32 0, i32 3, i32 1)
  %i.go = shl i64 %.0.i432, 3
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.go
  %i.gq = load <8 x i64>, ptr %i.gm, align 1, !tbaa !15 ; 2 uses
  %i.gr = load <8 x i64>, ptr %i.gp, align 1, !tbaa !15
  %i.gs = xor <8 x i64> %i.gr, %i.gq              ; 2 uses
  %i.gt = lshr <8 x i64> %i.gs, splat (i64 32)
  %i.gu = and <8 x i64> %i.gs, splat (i64 4294967295)
  %i.gv = mul nuw <8 x i64> %i.gu, %i.gt
  %i.gw = shufflevector <8 x i64> %i.gq, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.gx = add <8 x i64> %i.gk, %i.gw
  %i.gy = add <8 x i64> %i.gx, %i.gv              ; 2 uses
  store <8 x i64> %i.gy, ptr %0, align 64, !tbaa !15
  %i.gz = or disjoint i64 %.0.i432, 1             ; 2 uses
  %i.ha = shl i64 %i.gz, 6
  %i.hb = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.ha ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.hc, i32 0, i32 3, i32 1)
  %i.hd = shl i64 %i.gz, 3
  %i.he = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.hd
  %i.hf = load <8 x i64>, ptr %i.hb, align 1, !tbaa !15 ; 2 uses
  %i.hg = load <8 x i64>, ptr %i.he, align 1, !tbaa !15
  %i.hh = xor <8 x i64> %i.hg, %i.hf              ; 2 uses
  %i.hi = lshr <8 x i64> %i.hh, splat (i64 32)
  %i.hj = and <8 x i64> %i.hh, splat (i64 4294967295)
  %i.hk = mul nuw <8 x i64> %i.hj, %i.hi
  %i.hl = shufflevector <8 x i64> %i.hf, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.hm = add <8 x i64> %i.gy, %i.hl
  %i.hn = add <8 x i64> %i.hm, %i.hk              ; 4 uses
  store <8 x i64> %i.hn, ptr %0, align 64, !tbaa !15
  %i.ho = add nuw i64 %.0.i432, 2                 ; 2 uses
  %niter136.next.1 = add i64 %niter136, 2         ; 2 uses
  %niter136.ncmp.1 = icmp eq i64 %niter136.next.1, %unroll_iter135
  br i1 %niter136.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, label %bb.j, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod132.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod132.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5, label %.epil.preheader128

.epil.preheader128:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, %.lr.ph33
  %.epil.init131 = phi <8 x i64> [ %.pre60, %.lr.ph33 ], [ %i.hn, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ]
  %.0.i432.epil.init = phi i64 [ 0, %.lr.ph33 ], [ %i.ho, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod134 = trunc i64 %i.gf to i1
  tail call void @llvm.assume(i1 %lcmp.mod134)
  %i.hp = shl i64 %.0.i432.epil.init, 6
  %i.hq = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.hp ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.hr, i32 0, i32 3, i32 1)
  %i.hs = shl i64 %.0.i432.epil.init, 3
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.hs
  %i.hu = load <8 x i64>, ptr %i.hq, align 1, !tbaa !15 ; 2 uses
  %i.hv = load <8 x i64>, ptr %i.ht, align 1, !tbaa !15
  %i.hw = xor <8 x i64> %i.hv, %i.hu              ; 2 uses
  %i.hx = lshr <8 x i64> %i.hw, splat (i64 32)
  %i.hy = and <8 x i64> %i.hw, splat (i64 4294967295)
  %i.hz = mul nuw <8 x i64> %i.hy, %i.hx
  %i.ia = shufflevector <8 x i64> %i.hu, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ib = add <8 x i64> %.epil.init131, %i.ia
  %i.ic = add <8 x i64> %i.ib, %i.hz              ; 2 uses
  store <8 x i64> %i.ic, ptr %0, align 64, !tbaa !15
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5:       ; preds = %.epil.preheader128, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, %bb.i
  %i.id = phi <8 x i64> [ %.pre60, %bb.i ], [ %i.hn, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ], [ %i.ic, %.epil.preheader128 ] ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.if = load i64, ptr %i.ie, align 32, !tbaa !47
  %i.ig = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.if ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.ih = lshr <8 x i64> %i.id, splat (i64 47)
  %i.ii = load <16 x i32>, ptr %i.ig, align 1, !tbaa !15
  %i.ij = bitcast <8 x i64> %i.id to <16 x i32>
  %i.ik = bitcast <8 x i64> %i.ih to <16 x i32>
  %i.il = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ii, <16 x i32> %i.ij, <16 x i32> %i.ik, i32 150) ; 2 uses
  %i.im = bitcast <16 x i32> %i.il to <8 x i64>
  %i.in = lshr <8 x i64> %i.im, splat (i64 32)
  %i.io = bitcast <16 x i32> %i.il to <8 x i64>
  %i.ip = and <8 x i64> %i.io, splat (i64 4294967295)
  %i.iq = mul nuw <8 x i64> %i.ip, splat (i64 2654435761)
  %i.ir = mul <8 x i64> %i.in, splat (i64 -7046029290881679360)
  %i.is = add <8 x i64> %i.iq, %i.ir              ; 3 uses
  store <8 x i64> %i.is, ptr %0, align 64, !tbaa !15
  store i64 0, ptr %i.gc, align 8, !tbaa !52
  %i.it = shl nuw i64 %i.gf, 6
  %i.iu = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.it ; 2 uses
  %i.iv = sub nuw nsw i64 %i.gb, %i.gf            ; 3 uses
  %.not133.i38 = icmp ult i64 %i.iv, %i.fr
  br i1 %.not133.i38, label %.preheader, label %.preheader17.lr.ph

.preheader17.lr.ph:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5
  %.not47 = icmp eq i64 %i.fr, 0
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %xtraiter138 = and i64 %i.fr, 1
  %i.iw = icmp eq i64 %i.fr, 1
  %unroll_iter144 = and i64 %i.fr, -2
  %lcmp.mod141.not = icmp eq i64 %xtraiter138, 0
  %lcmp.mod143 = trunc i64 %i.fr to i1
  br label %.preheader17

.preheader17:                                     ; preds = %.preheader17.lr.ph, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3
  %.promoted37 = phi <8 x i64> [ %i.is, %.preheader17.lr.ph ], [ %i.ld, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 3 uses
  %.0124.i40 = phi i64 [ %i.iv, %.preheader17.lr.ph ], [ %i.lf, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ]
  %.1126.i39 = phi ptr [ %i.iu, %.preheader17.lr.ph ], [ %i.le, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 4 uses
  br i1 %.not47, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3, label %.lr.ph36

.lr.ph36:                                         ; preds = %.preheader17
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  br i1 %i.iw, label %.epil.preheader137, label %.lr.ph36.new

.preheader:                                       ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5
  %.promoted44 = phi <8 x i64> [ %i.is, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.ld, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 2 uses
  %.1126.i.lcssa = phi ptr [ %i.iu, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.le, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 4 uses
  %.0124.i.lcssa = phi i64 [ %i.iv, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.lf, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 7 uses
  %.not48 = icmp eq i64 %.0124.i.lcssa, 0
  br i1 %.not48, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit, label %.lr.ph43

.lr.ph43:                                         ; preds = %.preheader
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %xtraiter147 = and i64 %.0124.i.lcssa, 1
  %i.ix = icmp eq i64 %.0124.i.lcssa, 1
  br i1 %i.ix, label %.epil.preheader146, label %.lr.ph43.new

.lr.ph43.new:                                     ; preds = %.lr.ph43
  %unroll_iter152 = and i64 %.0124.i.lcssa, -2
  br label %bb.k

.lr.ph36.new:                                     ; preds = %.lr.ph36, %.lr.ph36.new
  %i.iy = phi <8 x i64> [ %i.kb, %.lr.ph36.new ], [ %.promoted37, %.lr.ph36 ]
  %.0.i235 = phi i64 [ %i.kc, %.lr.ph36.new ], [ 0, %.lr.ph36 ] ; 4 uses
  %niter145 = phi i64 [ %niter145.next.1, %.lr.ph36.new ], [ 0, %.lr.ph36 ]
  %i.iz = shl i64 %.0.i235, 6
  %i.ja = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.iz ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.jb, i32 0, i32 3, i32 1)
  %i.jc = shl i64 %.0.i235, 3
  %i.jd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.jc
  %i.je = load <8 x i64>, ptr %i.ja, align 1, !tbaa !15 ; 2 uses
  %i.jf = load <8 x i64>, ptr %i.jd, align 1, !tbaa !15
  %i.jg = xor <8 x i64> %i.jf, %i.je              ; 2 uses
  %i.jh = lshr <8 x i64> %i.jg, splat (i64 32)
  %i.ji = and <8 x i64> %i.jg, splat (i64 4294967295)
  %i.jj = mul nuw <8 x i64> %i.ji, %i.jh
  %i.jk = shufflevector <8 x i64> %i.je, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.jl = add <8 x i64> %i.iy, %i.jk
  %i.jm = add <8 x i64> %i.jl, %i.jj              ; 2 uses
  store <8 x i64> %i.jm, ptr %0, align 64, !tbaa !15
  %i.jn = or disjoint i64 %.0.i235, 1             ; 2 uses
  %i.jo = shl i64 %i.jn, 6
  %i.jp = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.jo ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.jq, i32 0, i32 3, i32 1)
  %i.jr = shl i64 %i.jn, 3
  %i.js = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.jr
  %i.jt = load <8 x i64>, ptr %i.jp, align 1, !tbaa !15 ; 2 uses
  %i.ju = load <8 x i64>, ptr %i.js, align 1, !tbaa !15
  %i.jv = xor <8 x i64> %i.ju, %i.jt              ; 2 uses
  %i.jw = lshr <8 x i64> %i.jv, splat (i64 32)
  %i.jx = and <8 x i64> %i.jv, splat (i64 4294967295)
  %i.jy = mul nuw <8 x i64> %i.jx, %i.jw
  %i.jz = shufflevector <8 x i64> %i.jt, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ka = add <8 x i64> %i.jm, %i.jz
  %i.kb = add <8 x i64> %i.ka, %i.jy              ; 4 uses
  store <8 x i64> %i.kb, ptr %0, align 64, !tbaa !15
  %i.kc = add nuw i64 %.0.i235, 2                 ; 2 uses
  %niter145.next.1 = add nuw i64 %niter145, 2     ; 2 uses
  %niter145.ncmp.1 = icmp eq i64 %niter145.next.1, %unroll_iter144
  br i1 %niter145.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa, label %.lr.ph36.new, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa: ; preds = %.lr.ph36.new
  br i1 %lcmp.mod141.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3, label %.epil.preheader137

.epil.preheader137:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa, %.lr.ph36
  %.epil.init140 = phi <8 x i64> [ %.promoted37, %.lr.ph36 ], [ %i.kb, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ]
  %.0.i235.epil.init = phi i64 [ 0, %.lr.ph36 ], [ %i.kc, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod143)
  %i.kd = shl i64 %.0.i235.epil.init, 6
  %i.ke = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.kd ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.kf, i32 0, i32 3, i32 1)
  %i.kg = shl i64 %.0.i235.epil.init, 3
  %i.kh = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.kg
  %i.ki = load <8 x i64>, ptr %i.ke, align 1, !tbaa !15 ; 2 uses
  %i.kj = load <8 x i64>, ptr %i.kh, align 1, !tbaa !15
  %i.kk = xor <8 x i64> %i.kj, %i.ki              ; 2 uses
  %i.kl = lshr <8 x i64> %i.kk, splat (i64 32)
  %i.km = and <8 x i64> %i.kk, splat (i64 4294967295)
  %i.kn = mul nuw <8 x i64> %i.km, %i.kl
  %i.ko = shufflevector <8 x i64> %i.ki, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.kp = add <8 x i64> %.epil.init140, %i.ko
  %i.kq = add <8 x i64> %i.kp, %i.kn              ; 2 uses
  store <8 x i64> %i.kq, ptr %0, align 64, !tbaa !15
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3:       ; preds = %.epil.preheader137, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa, %.preheader17
  %i.kr = phi <8 x i64> [ %.promoted37, %.preheader17 ], [ %i.kb, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ], [ %i.kq, %.epil.preheader137 ] ; 2 uses
  %i.ks = lshr <8 x i64> %i.kr, splat (i64 47)
  %i.kt = load <16 x i32>, ptr %i.ig, align 1, !tbaa !15
  %i.ku = bitcast <8 x i64> %i.kr to <16 x i32>
  %i.kv = bitcast <8 x i64> %i.ks to <16 x i32>
  %i.kw = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.kt, <16 x i32> %i.ku, <16 x i32> %i.kv, i32 150) ; 2 uses
  %i.kx = bitcast <16 x i32> %i.kw to <8 x i64>
  %i.ky = lshr <8 x i64> %i.kx, splat (i64 32)
  %i.kz = bitcast <16 x i32> %i.kw to <8 x i64>
  %i.la = and <8 x i64> %i.kz, splat (i64 4294967295)
  %i.lb = mul nuw <8 x i64> %i.la, splat (i64 2654435761)
  %i.lc = mul <8 x i64> %i.ky, splat (i64 -7046029290881679360)
  %i.ld = add <8 x i64> %i.lb, %i.lc              ; 3 uses
  store <8 x i64> %i.ld, ptr %0, align 64, !tbaa !15
  %i.le = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.fw ; 2 uses
  %i.lf = sub nuw nsw i64 %.0124.i40, %i.fr       ; 3 uses
  %.not133.i = icmp ult i64 %i.lf, %i.fr
  br i1 %.not133.i, label %.preheader, label %.preheader17, !llvm.loop !53

bb.k:                                             ; preds = %bb.k, %.lr.ph43.new
  %i.lg = phi <8 x i64> [ %.promoted44, %.lr.ph43.new ], [ %i.mj, %bb.k ]
  %.0.i42 = phi i64 [ 0, %.lr.ph43.new ], [ %i.mk, %bb.k ] ; 4 uses
  %niter153 = phi i64 [ 0, %.lr.ph43.new ], [ %niter153.next.1, %bb.k ]
  %i.lh = shl i64 %.0.i42, 6
  %i.li = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.lh ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.lj, i32 0, i32 3, i32 1)
  %i.lk = shl i64 %.0.i42, 3
  %i.ll = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.lk
  %i.lm = load <8 x i64>, ptr %i.li, align 1, !tbaa !15 ; 2 uses
  %i.ln = load <8 x i64>, ptr %i.ll, align 1, !tbaa !15
  %i.lo = xor <8 x i64> %i.ln, %i.lm              ; 2 uses
  %i.lp = lshr <8 x i64> %i.lo, splat (i64 32)
  %i.lq = and <8 x i64> %i.lo, splat (i64 4294967295)
  %i.lr = mul nuw <8 x i64> %i.lq, %i.lp
  %i.ls = shufflevector <8 x i64> %i.lm, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.lt = add <8 x i64> %i.lg, %i.ls
  %i.lu = add <8 x i64> %i.lt, %i.lr              ; 2 uses
  store <8 x i64> %i.lu, ptr %0, align 64, !tbaa !15
  %i.lv = or disjoint i64 %.0.i42, 1              ; 2 uses
  %i.lw = shl i64 %i.lv, 6
  %i.lx = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.lw ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ly, i32 0, i32 3, i32 1)
  %i.lz = shl i64 %i.lv, 3
  %i.ma = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.lz
  %i.mb = load <8 x i64>, ptr %i.lx, align 1, !tbaa !15 ; 2 uses
  %i.mc = load <8 x i64>, ptr %i.ma, align 1, !tbaa !15
  %i.md = xor <8 x i64> %i.mc, %i.mb              ; 2 uses
  %i.me = lshr <8 x i64> %i.md, splat (i64 32)
  %i.mf = and <8 x i64> %i.md, splat (i64 4294967295)
  %i.mg = mul nuw <8 x i64> %i.mf, %i.me
  %i.mh = shufflevector <8 x i64> %i.mb, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.mi = add <8 x i64> %i.lu, %i.mh
  %i.mj = add <8 x i64> %i.mi, %i.mg              ; 3 uses
  store <8 x i64> %i.mj, ptr %0, align 64, !tbaa !15
  %i.mk = add nuw i64 %.0.i42, 2                  ; 2 uses
  %niter153.next.1 = add nuw i64 %niter153, 2     ; 2 uses
  %niter153.ncmp.1 = icmp eq i64 %niter153.next.1, %unroll_iter152
  br i1 %niter153.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod150.not = icmp eq i64 %xtraiter147, 0
  br i1 %lcmp.mod150.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit, label %.epil.preheader146

.epil.preheader146:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, %.lr.ph43
  %.epil.init149 = phi <8 x i64> [ %.promoted44, %.lr.ph43 ], [ %i.mj, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa ]
  %.0.i42.epil.init = phi i64 [ 0, %.lr.ph43 ], [ %i.mk, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod151 = trunc i64 %.0124.i.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod151)
  %i.ml = shl i64 %.0.i42.epil.init, 6
  %i.mm = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.ml ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.mn, i32 0, i32 3, i32 1)
  %i.mo = shl i64 %.0.i42.epil.init, 3
  %i.mp = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.mo
  %i.mq = load <8 x i64>, ptr %i.mm, align 1, !tbaa !15 ; 2 uses
  %i.mr = load <8 x i64>, ptr %i.mp, align 1, !tbaa !15
  %i.ms = xor <8 x i64> %i.mr, %i.mq              ; 2 uses
  %i.mt = lshr <8 x i64> %i.ms, splat (i64 32)
  %i.mu = and <8 x i64> %i.ms, splat (i64 4294967295)
  %i.mv = mul nuw <8 x i64> %i.mu, %i.mt
  %i.mw = shufflevector <8 x i64> %i.mq, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.mx = add <8 x i64> %.epil.init149, %i.mw
  %i.my = add <8 x i64> %i.mx, %i.mv
  store <8 x i64> %i.my, ptr %0, align 64, !tbaa !15
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit:        ; preds = %.epil.preheader146, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, %.preheader
  %i.mz = shl nuw i64 %.0124.i.lcssa, 6
  %i.na = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.mz ; 4 uses
  %i.nb = icmp ult ptr %i.na, %i.c
  tail call void @llvm.assume(i1 %i.nb)
  store i64 %.0124.i.lcssa, ptr %i.gc, align 8, !tbaa !52
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.nd = getelementptr inbounds i8, ptr %i.na, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.nc, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.nd, i64 64, i1 false)
  %i.ne = ptrtoint ptr %i.na to i64
  %i.nf = sub i64 %i.ft, %i.ne                    ; 2 uses
  %i.ng = icmp slt i64 %i.nf, 65
  tail call void @llvm.assume(i1 %i.ng)
  br label %bb.q

bb.l:                                             ; preds = %bb.h
  %i.nh = icmp sgt i64 %i.fv, 256
  br i1 %i.nh, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ni = getelementptr inbounds i8, ptr %i.c, i64 -256
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.nl = load i64, ptr %i.nk, align 32, !tbaa !47
  %i.nm = icmp ugt i64 %i.fr, 3
  tail call void @llvm.assume(i1 %i.nm)
  %.promoted30 = load i64, ptr %i.nj, align 8, !tbaa !26
  %i.nn = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nl
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %invariant.op = sub nuw i64 %i.fr, 1
  br label %bb.n

bb.n:                                             ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, %bb.m
  %storemerge.i731 = phi i64 [ %.promoted30, %bb.m ], [ %storemerge.i7, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit ] ; 6 uses
  %.2.i = phi ptr [ %.0125.i, %bb.m ], [ %i.sv, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit ] ; 14 uses
  %i.no = icmp ult i64 %storemerge.i731, %i.fr
  tail call void @llvm.assume(i1 %i.no)
  %i.np = sub nuw i64 %i.fr, %storemerge.i731     ; 7 uses
  %.not.i6 = icmp ugt i64 %i.np, 4
  %i.nq = shl i64 %storemerge.i731, 3
  %i.nr = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nq ; 7 uses
  %.promoted28 = load <8 x i64>, ptr %0, align 64, !tbaa !15 ; 3 uses
  br i1 %.not.i6, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i, label %.preheader84.preheader

.preheader84.preheader:                           ; preds = %bb.n
  %xtraiter112 = and i64 %i.np, 1
  %i.ns = icmp eq i64 %storemerge.i731, %invariant.op
  br i1 %i.ns, label %.preheader84.epil.preheader, label %.preheader84.preheader.new

.preheader84.preheader.new:                       ; preds = %.preheader84.preheader
  %unroll_iter118 = and i64 %i.np, 6
  br label %.preheader84

.preheader84:                                     ; preds = %.preheader84, %.preheader84.preheader.new
  %24 = phi <8 x i64> [ %.promoted28, %.preheader84.preheader.new ], [ %i.oe, %.preheader84 ]
  %.0.i39.i23 = phi i64 [ 0, %.preheader84.preheader.new ], [ %42, %.preheader84 ] ; 4 uses
  %niter119 = phi i64 [ 0, %.preheader84.preheader.new ], [ %niter119.next.1, %.preheader84 ]
  %25 = shl nuw nsw i64 %.0.i39.i23, 6
  %26 = getelementptr inbounds nuw i8, ptr %.2.i, i64 %25 ; 2 uses
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %27, i32 0, i32 3, i32 1)
  %28 = shl nuw nsw i64 %.0.i39.i23, 3
  %29 = getelementptr inbounds nuw i8, ptr %i.nr, i64 %28
  %30 = load <8 x i64>, ptr %26, align 1, !tbaa !15 ; 2 uses
  %31 = load <8 x i64>, ptr %29, align 1, !tbaa !15
  %32 = xor <8 x i64> %31, %30                    ; 2 uses
  %33 = lshr <8 x i64> %32, splat (i64 32)
  %34 = and <8 x i64> %32, splat (i64 4294967295)
  %35 = mul nuw <8 x i64> %34, %33
  %36 = shufflevector <8 x i64> %30, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %37 = add <8 x i64> %24, %36
  %38 = add <8 x i64> %37, %35                    ; 2 uses
  store <8 x i64> %38, ptr %0, align 64, !tbaa !15
  %39 = or disjoint i64 %.0.i39.i23, 1            ; 2 uses
  %40 = shl nuw nsw i64 %39, 6
  %i.nt = getelementptr inbounds nuw i8, ptr %.2.i, i64 %40 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.nu, i32 0, i32 3, i32 1)
  %41 = shl nuw nsw i64 %39, 3
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 %41
  %i.nw = load <8 x i64>, ptr %i.nt, align 1, !tbaa !15 ; 2 uses
  %i.nx = load <8 x i64>, ptr %i.nv, align 1, !tbaa !15
  %i.ny = xor <8 x i64> %i.nx, %i.nw              ; 2 uses
  %i.nz = lshr <8 x i64> %i.ny, splat (i64 32)
  %i.oa = and <8 x i64> %i.ny, splat (i64 4294967295)
  %i.ob = mul nuw <8 x i64> %i.oa, %i.nz
  %i.oc = shufflevector <8 x i64> %i.nw, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.od = add <8 x i64> %38, %i.oc
  %i.oe = add <8 x i64> %i.od, %i.ob              ; 4 uses
  store <8 x i64> %i.oe, ptr %0, align 64, !tbaa !15
  %42 = add nuw i64 %.0.i39.i23, 2                ; 2 uses
  %niter119.next.1 = add i64 %niter119, 2         ; 2 uses
  %niter119.ncmp.1 = icmp eq i64 %niter119.next.1, %unroll_iter118
  br i1 %niter119.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa, label %.preheader84, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa: ; preds = %.preheader84
  %lcmp.mod115.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod115.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i, label %.preheader84.epil.preheader

.preheader84.epil.preheader:                      ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa, %.preheader84.preheader
  %.epil.init114 = phi <8 x i64> [ %.promoted28, %.preheader84.preheader ], [ %i.oe, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa ]
  %.0.i39.i23.epil.init = phi i64 [ 0, %.preheader84.preheader ], [ %42, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa ] ; 2 uses
  %lcmp.mod117 = trunc i64 %i.np to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %43 = shl nuw nsw i64 %.0.i39.i23.epil.init, 6
  %i.of = getelementptr inbounds nuw i8, ptr %.2.i, i64 %43 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.og, i32 0, i32 3, i32 1)
  %44 = shl nuw nsw i64 %.0.i39.i23.epil.init, 3
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nr, i64 %44
  %i.oi = load <8 x i64>, ptr %i.of, align 1, !tbaa !15 ; 2 uses
  %i.oj = load <8 x i64>, ptr %i.oh, align 1, !tbaa !15
  %i.ok = xor <8 x i64> %i.oj, %i.oi              ; 2 uses
  %i.ol = lshr <8 x i64> %i.ok, splat (i64 32)
  %i.om = and <8 x i64> %i.ok, splat (i64 4294967295)
  %i.on = mul nuw <8 x i64> %i.om, %i.ol
  %i.oo = shufflevector <8 x i64> %i.oi, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.op = add <8 x i64> %.epil.init114, %i.oo
  %i.oq = add <8 x i64> %i.op, %i.on              ; 2 uses
  store <8 x i64> %i.oq, ptr %0, align 64, !tbaa !15
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i:    ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa, %.preheader84.epil.preheader
  %.lcssa100 = phi <8 x i64> [ %i.oe, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa ], [ %i.oq, %.preheader84.epil.preheader ] ; 2 uses
  %i.or = sub nsw i64 4, %i.np                    ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.os = lshr <8 x i64> %.lcssa100, splat (i64 47)
  %i.ot = load <16 x i32>, ptr %i.nn, align 1, !tbaa !15
  %i.ou = bitcast <8 x i64> %.lcssa100 to <16 x i32>
  %i.ov = bitcast <8 x i64> %i.os to <16 x i32>
  %i.ow = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ot, <16 x i32> %i.ou, <16 x i32> %i.ov, i32 150) ; 2 uses
  %i.ox = bitcast <16 x i32> %i.ow to <8 x i64>
  %i.oy = lshr <8 x i64> %i.ox, splat (i64 32)
  %i.oz = bitcast <16 x i32> %i.ow to <8 x i64>
  %i.pa = and <8 x i64> %i.oz, splat (i64 4294967295)
  %i.pb = mul nuw <8 x i64> %i.pa, splat (i64 2654435761)
  %i.pc = mul <8 x i64> %i.oy, splat (i64 -7046029290881679360)
  %i.pd = add <8 x i64> %i.pb, %i.pc              ; 3 uses
  store <8 x i64> %i.pd, ptr %0, align 64, !tbaa !15
  %i.pe = shl nuw nsw i64 %i.np, 6
  %i.pf = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.pe ; 3 uses
  %.not45 = icmp eq i64 %i.np, 4
  br i1 %.not45, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %reass.sub = sub i64 %storemerge.i731, %i.fr
  %xtraiter121 = and i64 %i.or, 1
  %i.pg = icmp eq i64 %reass.sub, -3
  br i1 %i.pg, label %.epil.preheader120, label %.lr.ph26.new

.lr.ph26.new:                                     ; preds = %.lr.ph26
  %unroll_iter126 = and i64 %i.or, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph26.new
  %i.ph = phi <8 x i64> [ %i.pd, %.lr.ph26.new ], [ %i.qk, %bb.o ]
  %.0.i37.i25 = phi i64 [ 0, %.lr.ph26.new ], [ %i.ql, %bb.o ] ; 4 uses
  %niter127 = phi i64 [ 0, %.lr.ph26.new ], [ %niter127.next.1, %bb.o ]
  %i.pi = shl nuw nsw i64 %.0.i37.i25, 6
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.pi ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.pk, i32 0, i32 3, i32 1)
  %i.pl = shl nuw nsw i64 %.0.i37.i25, 3
  %i.pm = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.pl
  %i.pn = load <8 x i64>, ptr %i.pj, align 1, !tbaa !15 ; 2 uses
  %i.po = load <8 x i64>, ptr %i.pm, align 1, !tbaa !15
  %i.pp = xor <8 x i64> %i.po, %i.pn              ; 2 uses
  %i.pq = lshr <8 x i64> %i.pp, splat (i64 32)
  %i.pr = and <8 x i64> %i.pp, splat (i64 4294967295)
  %i.ps = mul nuw <8 x i64> %i.pr, %i.pq
  %i.pt = shufflevector <8 x i64> %i.pn, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.pu = add <8 x i64> %i.ph, %i.pt
  %i.pv = add <8 x i64> %i.pu, %i.ps              ; 2 uses
  store <8 x i64> %i.pv, ptr %0, align 64, !tbaa !15
  %i.pw = or disjoint i64 %.0.i37.i25, 1          ; 2 uses
  %i.px = shl nuw nsw i64 %i.pw, 6
  %i.py = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.px ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.pz, i32 0, i32 3, i32 1)
  %i.qa = shl nuw nsw i64 %i.pw, 3
  %i.qb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.qa
  %i.qc = load <8 x i64>, ptr %i.py, align 1, !tbaa !15 ; 2 uses
  %i.qd = load <8 x i64>, ptr %i.qb, align 1, !tbaa !15
  %i.qe = xor <8 x i64> %i.qd, %i.qc              ; 2 uses
  %i.qf = lshr <8 x i64> %i.qe, splat (i64 32)
  %i.qg = and <8 x i64> %i.qe, splat (i64 4294967295)
  %i.qh = mul nuw <8 x i64> %i.qg, %i.qf
  %i.qi = shufflevector <8 x i64> %i.qc, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.qj = add <8 x i64> %i.pv, %i.qi
  %i.qk = add <8 x i64> %i.qj, %i.qh              ; 3 uses
  store <8 x i64> %i.qk, ptr %0, align 64, !tbaa !15
  %i.ql = add nuw i64 %.0.i37.i25, 2              ; 2 uses
  %niter127.next.1 = add i64 %niter127, 2         ; 2 uses
  %niter127.ncmp.1 = icmp eq i64 %niter127.next.1, %unroll_iter126
  br i1 %niter127.ncmp.1, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa, label %bb.o, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i:      ; preds = %bb.n
  %i.qm = getelementptr inbounds nuw i8, ptr %.2.i, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.qm, i32 0, i32 3, i32 1)
  %i.qn = load <8 x i64>, ptr %.2.i, align 1, !tbaa !15 ; 2 uses
  %i.qo = load <8 x i64>, ptr %i.nr, align 1, !tbaa !15
  %i.qp = xor <8 x i64> %i.qo, %i.qn              ; 2 uses
  %i.qq = lshr <8 x i64> %i.qp, splat (i64 32)
  %i.qr = and <8 x i64> %i.qp, splat (i64 4294967295)
  %i.qs = mul nuw <8 x i64> %i.qr, %i.qq
  %i.qt = shufflevector <8 x i64> %i.qn, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.qu = add <8 x i64> %.promoted28, %i.qt
  %i.qv = add <8 x i64> %i.qu, %i.qs              ; 2 uses
  store <8 x i64> %i.qv, ptr %0, align 64, !tbaa !15
  %i.qw = getelementptr inbounds nuw i8, ptr %.2.i, i64 64
  %i.qx = getelementptr inbounds nuw i8, ptr %.2.i, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %i.qx, i32 0, i32 3, i32 1)
  %i.qy = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %i.qz = load <8 x i64>, ptr %i.qw, align 1, !tbaa !15 ; 2 uses
  %i.ra = load <8 x i64>, ptr %i.qy, align 1, !tbaa !15
  %i.rb = xor <8 x i64> %i.ra, %i.qz              ; 2 uses
  %i.rc = lshr <8 x i64> %i.rb, splat (i64 32)
  %i.rd = and <8 x i64> %i.rb, splat (i64 4294967295)
  %i.re = mul nuw <8 x i64> %i.rd, %i.rc
  %i.rf = shufflevector <8 x i64> %i.qz, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.rg = add <8 x i64> %i.qv, %i.rf
  %i.rh = add <8 x i64> %i.rg, %i.re              ; 2 uses
  store <8 x i64> %i.rh, ptr %0, align 64, !tbaa !15
  %i.ri = getelementptr inbounds nuw i8, ptr %.2.i, i64 128
  %i.rj = getelementptr inbounds nuw i8, ptr %.2.i, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull %i.rj, i32 0, i32 3, i32 1)
  %i.rk = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.rl = load <8 x i64>, ptr %i.ri, align 1, !tbaa !15 ; 2 uses
  %i.rm = load <8 x i64>, ptr %i.rk, align 1, !tbaa !15
  %i.rn = xor <8 x i64> %i.rm, %i.rl              ; 2 uses
  %i.ro = lshr <8 x i64> %i.rn, splat (i64 32)
  %i.rp = and <8 x i64> %i.rn, splat (i64 4294967295)
  %i.rq = mul nuw <8 x i64> %i.rp, %i.ro
  %i.rr = shufflevector <8 x i64> %i.rl, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.rs = add <8 x i64> %i.rh, %i.rr
  %i.rt = add <8 x i64> %i.rs, %i.rq              ; 2 uses
  store <8 x i64> %i.rt, ptr %0, align 64, !tbaa !15
  %i.ru = getelementptr inbounds nuw i8, ptr %.2.i, i64 192
  %i.rv = getelementptr inbounds nuw i8, ptr %.2.i, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull %i.rv, i32 0, i32 3, i32 1)
  %i.rw = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  %i.rx = load <8 x i64>, ptr %i.ru, align 1, !tbaa !15 ; 2 uses
  %i.ry = load <8 x i64>, ptr %i.rw, align 1, !tbaa !15
  %i.rz = xor <8 x i64> %i.ry, %i.rx              ; 2 uses
  %i.sa = lshr <8 x i64> %i.rz, splat (i64 32)
  %i.sb = and <8 x i64> %i.rz, splat (i64 4294967295)
  %i.sc = mul nuw <8 x i64> %i.sb, %i.sa
  %i.sd = shufflevector <8 x i64> %i.rx, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.se = add <8 x i64> %i.rt, %i.sd
  %i.sf = add <8 x i64> %i.se, %i.sc
  store <8 x i64> %i.sf, ptr %0, align 64, !tbaa !15
  %i.sg = add i64 %storemerge.i731, 4
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa: ; preds = %bb.o
  %lcmp.mod124.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod124.not, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, label %.epil.preheader120

.epil.preheader120:                               ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa, %.lr.ph26
  %.epil.init123 = phi <8 x i64> [ %i.pd, %.lr.ph26 ], [ %i.qk, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa ]
  %.0.i37.i25.epil.init = phi i64 [ 0, %.lr.ph26 ], [ %i.ql, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod125 = trunc i64 %i.or to i1
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.sh = shl nuw nsw i64 %.0.i37.i25.epil.init, 6
  %i.si = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.sh ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.sj, i32 0, i32 3, i32 1)
  %i.sk = shl nuw nsw i64 %.0.i37.i25.epil.init, 3
  %i.sl = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.sk
  %i.sm = load <8 x i64>, ptr %i.si, align 1, !tbaa !15 ; 2 uses
  %i.sn = load <8 x i64>, ptr %i.sl, align 1, !tbaa !15
  %i.so = xor <8 x i64> %i.sn, %i.sm              ; 2 uses
  %i.sp = lshr <8 x i64> %i.so, splat (i64 32)
  %i.sq = and <8 x i64> %i.so, splat (i64 4294967295)
  %i.sr = mul nuw <8 x i64> %i.sq, %i.sp
  %i.ss = shufflevector <8 x i64> %i.sm, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.st = add <8 x i64> %.epil.init123, %i.ss
  %i.su = add <8 x i64> %i.st, %i.sr
  store <8 x i64> %i.su, ptr %0, align 64, !tbaa !15
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit: ; preds = %.epil.preheader120, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i
  %storemerge.i7 = phi i64 [ %i.sg, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i ], [ 0, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i ], [ %i.or, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa ], [ %i.or, %.epil.preheader120 ] ; 2 uses
  store i64 %storemerge.i7, ptr %i.nj, align 8, !tbaa !26
  %i.sv = getelementptr inbounds nuw i8, ptr %.2.i, i64 256 ; 4 uses
  %i.sw = icmp ult ptr %i.sv, %i.ni
  br i1 %i.sw, label %bb.n, label %bb.p, !llvm.loop !54

bb.p:                                             ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.sy = getelementptr inbounds nuw i8, ptr %.2.i, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.sx, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.sy, i64 64, i1 false)
  %.pre63 = ptrtoint ptr %i.sv to i64
  %.pre64 = sub i64 %i.ft, %.pre63
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit
  %.pre-phi65 = phi i64 [ %.pre64, %bb.p ], [ %i.fv, %bb.l ], [ %i.nf, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit ] ; 3 uses
  %.3.i = phi ptr [ %i.sv, %bb.p ], [ %.0125.i, %bb.l ], [ %i.na, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit ] ; 2 uses
  %i.sz = icmp ult ptr %.3.i, %i.c
  tail call void @llvm.assume(i1 %i.sz)
  %i.ta = icmp slt i64 %.pre-phi65, 257
  tail call void @llvm.assume(i1 %i.ta)
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.tb, ptr readonly align 1 %.3.i, i64 %.pre-phi65, i1 false)
  %i.tc = trunc i64 %.pre-phi65 to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.d
  %storemerge.i = phi i32 [ %i.tc, %bb.q ], [ %i.v, %bb.d ]
  store i32 %storemerge.i, ptr %i.l, align 64, !tbaa !51
  br label %_ZL11XXH3_updateP12XXH3_state_sPKhmPFvPmS2_S2_mEPFvPvPKvE.exit

_ZL11XXH3_updateP12XXH3_state_sPKhmPFvPmS2_S2_mEPFvPvPKvE.exit: ; preds = %bb.b, %bb.r
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, target_mem: none) uwtable
define { i64, i64 } @ROCKSDB_XXH3_128bits_digest(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #21 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
end_hunk_1
