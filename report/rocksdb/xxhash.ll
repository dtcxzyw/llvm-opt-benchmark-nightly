Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/xxhash?download=true
inline.NumInlined: 910
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 57
begin_hunk_0_@ROCKSDB_XXH3_64bits_reset_withSecret:bb.a

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
  %i.an = phi <8 x i64> [ %.promoted21, %.preheader85.preheader.new ], [ %i.bq, %.preheader85 ]
  %.0.i39.i918 = phi i64 [ 0, %.preheader85.preheader.new ], [ %i.br, %.preheader85 ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader85.preheader.new ], [ %niter.next.1, %.preheader85 ]
  %i.ao = shl nuw nsw i64 %.0.i39.i918, 6
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aq, i32 0, i32 3, i32 1)
  %i.ar = shl nuw nsw i64 %.0.i39.i918, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ar
  %i.at = load <8 x i64>, ptr %i.ap, align 64, !tbaa !15 ; 2 uses
  %i.au = load <8 x i64>, ptr %i.as, align 1, !tbaa !15
  %i.av = xor <8 x i64> %i.au, %i.at              ; 2 uses
  %i.aw = lshr <8 x i64> %i.av, splat (i64 32)
  %i.ax = and <8 x i64> %i.av, splat (i64 4294967295)
  %i.ay = mul nuw <8 x i64> %i.ax, %i.aw
  %i.az = shufflevector <8 x i64> %i.at, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ba = add <8 x i64> %i.an, %i.az
  %i.bb = add <8 x i64> %i.ba, %i.ay              ; 2 uses
  store <8 x i64> %i.bb, ptr %0, align 64, !tbaa !15
  %i.bc = or disjoint i64 %.0.i39.i918, 1         ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 6
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bf, i32 0, i32 3, i32 1)
  %i.bg = shl nuw nsw i64 %i.bc, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bg
  %i.bi = load <8 x i64>, ptr %i.be, align 64, !tbaa !15 ; 2 uses
  %i.bj = load <8 x i64>, ptr %i.bh, align 1, !tbaa !15
  %i.bk = xor <8 x i64> %i.bj, %i.bi              ; 2 uses
  %i.bl = lshr <8 x i64> %i.bk, splat (i64 32)
  %i.bm = and <8 x i64> %i.bk, splat (i64 4294967295)
  %i.bn = mul nuw <8 x i64> %i.bm, %i.bl
  %i.bo = shufflevector <8 x i64> %i.bi, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.bp = add <8 x i64> %i.bb, %i.bo
  %i.bq = add <8 x i64> %i.bp, %i.bn              ; 4 uses
  store <8 x i64> %i.bq, ptr %0, align 64, !tbaa !15
  %i.br = add nuw i64 %.0.i39.i918, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa, label %.preheader85, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa: ; preds = %.preheader85
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10, label %.preheader85.epil.preheader

.preheader85.epil.preheader:                      ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa, %.preheader85.preheader
  %.epil.init = phi <8 x i64> [ %.promoted21, %.preheader85.preheader ], [ %i.bq, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa ]
  %.0.i39.i918.epil.init = phi i64 [ 0, %.preheader85.preheader ], [ %i.br, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa ] ; 2 uses
  %lcmp.mod104 = trunc i64 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod104)
  %i.bs = shl nuw nsw i64 %.0.i39.i918.epil.init, 6
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bu, i32 0, i32 3, i32 1)
  %i.bv = shl nuw nsw i64 %.0.i39.i918.epil.init, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bv
  %i.bx = load <8 x i64>, ptr %i.bt, align 64, !tbaa !15 ; 2 uses
  %i.by = load <8 x i64>, ptr %i.bw, align 1, !tbaa !15
  %i.bz = xor <8 x i64> %i.by, %i.bx              ; 2 uses
  %i.ca = lshr <8 x i64> %i.bz, splat (i64 32)
  %i.cb = and <8 x i64> %i.bz, splat (i64 4294967295)
  %i.cc = mul nuw <8 x i64> %i.cb, %i.ca
  %i.cd = shufflevector <8 x i64> %i.bx, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ce = add <8 x i64> %.epil.init, %i.cd
  %i.cf = add <8 x i64> %i.ce, %i.cc              ; 2 uses
  store <8 x i64> %i.cf, ptr %0, align 64, !tbaa !15
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10:  ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa, %.preheader85.epil.preheader
  %.lcssa102 = phi <8 x i64> [ %i.bq, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa ], [ %i.cf, %.preheader85.epil.preheader ] ; 2 uses
  %i.cg = sub nsw i64 4, %i.aj                    ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.af
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.ci = lshr <8 x i64> %.lcssa102, splat (i64 47)
  %i.cj = load <16 x i32>, ptr %i.ch, align 1, !tbaa !15
  %i.ck = bitcast <8 x i64> %.lcssa102 to <16 x i32>
  %i.cl = bitcast <8 x i64> %i.ci to <16 x i32>
  %i.cm = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.cj, <16 x i32> %i.ck, <16 x i32> %i.cl, i32 150) ; 2 uses
  %i.cn = bitcast <16 x i32> %i.cm to <8 x i64>
  %i.co = lshr <8 x i64> %i.cn, splat (i64 32)
  %i.cp = bitcast <16 x i32> %i.cm to <8 x i64>
  %i.cq = and <8 x i64> %i.cp, splat (i64 4294967295)
  %i.cr = mul nuw <8 x i64> %i.cq, splat (i64 2654435761)
  %i.cs = mul <8 x i64> %i.co, splat (i64 -7046029290881679360)
  %i.ct = add <8 x i64> %i.cr, %i.cs              ; 3 uses
  store <8 x i64> %i.ct, ptr %0, align 64, !tbaa !15
  %i.cu = shl nuw nsw i64 %i.aj, 6
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cu ; 3 uses
  %.not = icmp eq i64 %i.aj, 4
  br i1 %.not, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.cw = add i64 %i.ah, 3
  %xtraiter105 = and i64 %i.cg, 1
  %i.cx = icmp eq i64 %i.cw, %i.ad
  br i1 %i.cx, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter110 = and i64 %i.cg, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %i.cy = phi <8 x i64> [ %i.ct, %.lr.ph.new ], [ %i.eb, %bb.g ]
  %.0.i37.i1119 = phi i64 [ 0, %.lr.ph.new ], [ %i.ec, %bb.g ] ; 4 uses
  %niter111 = phi i64 [ 0, %.lr.ph.new ], [ %niter111.next.1, %bb.g ]
  %i.cz = shl nuw nsw i64 %.0.i37.i1119, 6
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.db, i32 0, i32 3, i32 1)
  %i.dc = shl nuw nsw i64 %.0.i37.i1119, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dc
  %i.de = load <8 x i64>, ptr %i.da, align 64, !tbaa !15 ; 2 uses
  %i.df = load <8 x i64>, ptr %i.dd, align 1, !tbaa !15
  %i.dg = xor <8 x i64> %i.df, %i.de              ; 2 uses
  %i.dh = lshr <8 x i64> %i.dg, splat (i64 32)
  %i.di = and <8 x i64> %i.dg, splat (i64 4294967295)
  %i.dj = mul nuw <8 x i64> %i.di, %i.dh
  %i.dk = shufflevector <8 x i64> %i.de, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.dl = add <8 x i64> %i.cy, %i.dk
  %i.dm = add <8 x i64> %i.dl, %i.dj              ; 2 uses
  store <8 x i64> %i.dm, ptr %0, align 64, !tbaa !15
  %i.dn = or disjoint i64 %.0.i37.i1119, 1        ; 2 uses
  %i.do = shl nuw nsw i64 %i.dn, 6
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dq, i32 0, i32 3, i32 1)
  %i.dr = shl nuw nsw i64 %i.dn, 3
  %i.ds = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dr
  %i.dt = load <8 x i64>, ptr %i.dp, align 64, !tbaa !15 ; 2 uses
  %i.du = load <8 x i64>, ptr %i.ds, align 1, !tbaa !15
  %i.dv = xor <8 x i64> %i.du, %i.dt              ; 2 uses
  %i.dw = lshr <8 x i64> %i.dv, splat (i64 32)
  %i.dx = and <8 x i64> %i.dv, splat (i64 4294967295)
  %i.dy = mul nuw <8 x i64> %i.dx, %i.dw
  %i.dz = shufflevector <8 x i64> %i.dt, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ea = add <8 x i64> %i.dm, %i.dz
  %i.eb = add <8 x i64> %i.ea, %i.dy              ; 3 uses
  store <8 x i64> %i.eb, ptr %0, align 64, !tbaa !15
  %i.ec = add nuw i64 %.0.i37.i1119, 2            ; 2 uses
  %niter111.next.1 = add i64 %niter111, 2         ; 2 uses
  %niter111.ncmp.1 = icmp eq i64 %niter111.next.1, %unroll_iter110
  br i1 %niter111.ncmp.1, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa, label %bb.g, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15:    ; preds = %bb.f
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ed, i32 0, i32 3, i32 1)
  %i.ee = load <8 x i64>, ptr %i.y, align 64, !tbaa !15 ; 2 uses
  %i.ef = load <8 x i64>, ptr %i.al, align 1, !tbaa !15
  %i.eg = xor <8 x i64> %i.ef, %i.ee              ; 2 uses
  %i.eh = lshr <8 x i64> %i.eg, splat (i64 32)
  %i.ei = and <8 x i64> %i.eg, splat (i64 4294967295)
  %i.ej = mul nuw <8 x i64> %i.ei, %i.eh
  %i.ek = shufflevector <8 x i64> %i.ee, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.el = add <8 x i64> %.promoted21, %i.ek
  %i.em = add <8 x i64> %i.el, %i.ej              ; 2 uses
  store <8 x i64> %i.em, ptr %0, align 64, !tbaa !15
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull %i.eo, i32 0, i32 3, i32 1)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.eq = load <8 x i64>, ptr %i.en, align 64, !tbaa !15 ; 2 uses
  %i.er = load <8 x i64>, ptr %i.ep, align 1, !tbaa !15
  %i.es = xor <8 x i64> %i.er, %i.eq              ; 2 uses
  %i.et = lshr <8 x i64> %i.es, splat (i64 32)
  %i.eu = and <8 x i64> %i.es, splat (i64 4294967295)
  %i.ev = mul nuw <8 x i64> %i.eu, %i.et
  %i.ew = shufflevector <8 x i64> %i.eq, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ex = add <8 x i64> %i.em, %i.ew
  %i.ey = add <8 x i64> %i.ex, %i.ev              ; 2 uses
  store <8 x i64> %i.ey, ptr %0, align 64, !tbaa !15
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fa, i32 0, i32 3, i32 1)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.fc = load <8 x i64>, ptr %i.ez, align 64, !tbaa !15 ; 2 uses
  %i.fd = load <8 x i64>, ptr %i.fb, align 1, !tbaa !15
  %i.fe = xor <8 x i64> %i.fd, %i.fc              ; 2 uses
  %i.ff = lshr <8 x i64> %i.fe, splat (i64 32)
  %i.fg = and <8 x i64> %i.fe, splat (i64 4294967295)
  %i.fh = mul nuw <8 x i64> %i.fg, %i.ff
  %i.fi = shufflevector <8 x i64> %i.fc, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.fj = add <8 x i64> %i.ey, %i.fi
  %i.fk = add <8 x i64> %i.fj, %i.fh              ; 2 uses
  store <8 x i64> %i.fk, ptr %0, align 64, !tbaa !15
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fm, i32 0, i32 3, i32 1)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.fo = load <8 x i64>, ptr %i.fl, align 64, !tbaa !15 ; 2 uses
  %i.fp = load <8 x i64>, ptr %i.fn, align 1, !tbaa !15
  %i.fq = xor <8 x i64> %i.fp, %i.fo              ; 2 uses
  %i.fr = lshr <8 x i64> %i.fq, splat (i64 32)
  %i.fs = and <8 x i64> %i.fq, splat (i64 4294967295)
  %i.ft = mul nuw <8 x i64> %i.fs, %i.fr
  %i.fu = shufflevector <8 x i64> %i.fo, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.fv = add <8 x i64> %i.fk, %i.fu
  %i.fw = add <8 x i64> %i.fv, %i.ft
  store <8 x i64> %i.fw, ptr %0, align 64, !tbaa !15
  %i.fx = add i64 %i.ah, 4
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod108.not = icmp eq i64 %xtraiter105, 0
  br i1 %lcmp.mod108.not, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa, %.lr.ph
  %.epil.init107 = phi <8 x i64> [ %i.ct, %.lr.ph ], [ %i.eb, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ]
  %.0.i37.i1119.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ec, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod109 = trunc i64 %i.cg to i1
  tail call void @llvm.assume(i1 %lcmp.mod109)
  %i.fy = shl nuw nsw i64 %.0.i37.i1119.epil.init, 6
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.fy ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ga, i32 0, i32 3, i32 1)
  %i.gb = shl nuw nsw i64 %.0.i37.i1119.epil.init, 3
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.gb
  %i.gd = load <8 x i64>, ptr %i.fz, align 64, !tbaa !15 ; 2 uses
  %i.ge = load <8 x i64>, ptr %i.gc, align 1, !tbaa !15
  %i.gf = xor <8 x i64> %i.ge, %i.gd              ; 2 uses
  %i.gg = lshr <8 x i64> %i.gf, splat (i64 32)
  %i.gh = and <8 x i64> %i.gf, splat (i64 4294967295)
  %i.gi = mul nuw <8 x i64> %i.gh, %i.gg
  %i.gj = shufflevector <8 x i64> %i.gd, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.gk = add <8 x i64> %.epil.init107, %i.gj
  %i.gl = add <8 x i64> %i.gk, %i.gi
  store <8 x i64> %i.gl, ptr %0, align 64, !tbaa !15
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16: ; preds = %.epil.preheader, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15
  %storemerge.i13 = phi i64 [ %i.fx, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15 ], [ 0, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10 ], [ %i.cg, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ], [ %i.cg, %.epil.preheader ]
  store i64 %storemerge.i13, ptr %i.ab, align 8, !tbaa !26
  store i32 0, ptr %i.l, align 64, !tbaa !51
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16
  %i.gm = phi i64 [ %i.ad, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16 ], [ %.pre, %._crit_edge ] ; 18 uses
  %.0125.i = phi ptr [ %i.aa, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16 ], [ %1, %._crit_edge ] ; 8 uses
  %i.gn = icmp ult ptr %.0125.i, %i.c
  tail call void @llvm.assume(i1 %i.gn)
  %i.go = ptrtoint ptr %i.c to i64                ; 3 uses
  %i.gp = ptrtoint ptr %.0125.i to i64            ; 2 uses
  %i.gq = sub i64 %i.go, %i.gp                    ; 3 uses
  %i.gr = shl i64 %i.gm, 6                        ; 2 uses
  %i.gs = icmp ugt i64 %i.gq, %i.gr
  br i1 %i.gs, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.gt = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.gu, %i.gp
  %i.gw = lshr i64 %i.gv, 6                       ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !52 ; 5 uses
  %i.gz = icmp uge i64 %i.gm, %i.gy
  tail call void @llvm.assume(i1 %i.gz)
  %i.ha = sub nuw i64 %i.gm, %i.gy                ; 6 uses
  %i.hb = icmp ule i64 %i.ha, %i.gw
  tail call void @llvm.assume(i1 %i.hb)
  %i.hc = shl i64 %i.gy, 3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.hc ; 3 uses
  %.not46 = icmp eq i64 %i.gm, %i.gy
  %.pre60 = load <8 x i64>, ptr %0, align 64, !tbaa !15 ; 3 uses
  br i1 %.not46, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %.neg155 = add i64 %i.gy, 1
  %xtraiter129 = and i64 %i.ha, 1
  %i.he = icmp eq i64 %i.gm, %.neg155
  br i1 %i.he, label %.epil.preheader128, label %.lr.ph33.new

.lr.ph33.new:                                     ; preds = %.lr.ph33
  %unroll_iter135 = and i64 %i.ha, -2
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph33.new
  %i.hf = phi <8 x i64> [ %.pre60, %.lr.ph33.new ], [ %i.ii, %bb.j ]
  %.0.i432 = phi i64 [ 0, %.lr.ph33.new ], [ %i.ij, %bb.j ] ; 4 uses
  %niter136 = phi i64 [ 0, %.lr.ph33.new ], [ %niter136.next.1, %bb.j ]
  %i.hg = shl i64 %.0.i432, 6
  %i.hh = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.hg ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.hi, i32 0, i32 3, i32 1)
  %i.hj = shl i64 %.0.i432, 3
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hj
  %i.hl = load <8 x i64>, ptr %i.hh, align 1, !tbaa !15 ; 2 uses
  %i.hm = load <8 x i64>, ptr %i.hk, align 1, !tbaa !15
  %i.hn = xor <8 x i64> %i.hm, %i.hl              ; 2 uses
  %i.ho = lshr <8 x i64> %i.hn, splat (i64 32)
  %i.hp = and <8 x i64> %i.hn, splat (i64 4294967295)
  %i.hq = mul nuw <8 x i64> %i.hp, %i.ho
  %i.hr = shufflevector <8 x i64> %i.hl, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.hs = add <8 x i64> %i.hf, %i.hr
  %i.ht = add <8 x i64> %i.hs, %i.hq              ; 2 uses
  store <8 x i64> %i.ht, ptr %0, align 64, !tbaa !15
  %i.hu = or disjoint i64 %.0.i432, 1             ; 2 uses
  %i.hv = shl i64 %i.hu, 6
  %i.hw = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.hv ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.hx, i32 0, i32 3, i32 1)
  %i.hy = shl i64 %i.hu, 3
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hy
  %i.ia = load <8 x i64>, ptr %i.hw, align 1, !tbaa !15 ; 2 uses
  %i.ib = load <8 x i64>, ptr %i.hz, align 1, !tbaa !15
  %i.ic = xor <8 x i64> %i.ib, %i.ia              ; 2 uses
  %i.id = lshr <8 x i64> %i.ic, splat (i64 32)
  %i.ie = and <8 x i64> %i.ic, splat (i64 4294967295)
  %i.if = mul nuw <8 x i64> %i.ie, %i.id
  %i.ig = shufflevector <8 x i64> %i.ia, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ih = add <8 x i64> %i.ht, %i.ig
  %i.ii = add <8 x i64> %i.ih, %i.if              ; 4 uses
  store <8 x i64> %i.ii, ptr %0, align 64, !tbaa !15
  %i.ij = add nuw i64 %.0.i432, 2                 ; 2 uses
  %niter136.next.1 = add i64 %niter136, 2         ; 2 uses
  %niter136.ncmp.1 = icmp eq i64 %niter136.next.1, %unroll_iter135
  br i1 %niter136.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, label %bb.j, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod132.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod132.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5, label %.epil.preheader128

.epil.preheader128:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, %.lr.ph33
  %.epil.init131 = phi <8 x i64> [ %.pre60, %.lr.ph33 ], [ %i.ii, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ]
  %.0.i432.epil.init = phi i64 [ 0, %.lr.ph33 ], [ %i.ij, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod134 = trunc i64 %i.ha to i1
  tail call void @llvm.assume(i1 %lcmp.mod134)
  %i.ik = shl i64 %.0.i432.epil.init, 6
  %i.il = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.ik ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.im, i32 0, i32 3, i32 1)
  %i.in = shl i64 %.0.i432.epil.init, 3
  %i.io = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.in
  %i.ip = load <8 x i64>, ptr %i.il, align 1, !tbaa !15 ; 2 uses
  %i.iq = load <8 x i64>, ptr %i.io, align 1, !tbaa !15
  %i.ir = xor <8 x i64> %i.iq, %i.ip              ; 2 uses
  %i.is = lshr <8 x i64> %i.ir, splat (i64 32)
  %i.it = and <8 x i64> %i.ir, splat (i64 4294967295)
  %i.iu = mul nuw <8 x i64> %i.it, %i.is
  %i.iv = shufflevector <8 x i64> %i.ip, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.iw = add <8 x i64> %.epil.init131, %i.iv
  %i.ix = add <8 x i64> %i.iw, %i.iu              ; 2 uses
  store <8 x i64> %i.ix, ptr %0, align 64, !tbaa !15
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5:       ; preds = %.epil.preheader128, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, %bb.i
  %i.iy = phi <8 x i64> [ %.pre60, %bb.i ], [ %i.ii, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ], [ %i.ix, %.epil.preheader128 ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ja = load i64, ptr %i.iz, align 32, !tbaa !47
  %i.jb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ja ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.jc = lshr <8 x i64> %i.iy, splat (i64 47)
  %i.jd = load <16 x i32>, ptr %i.jb, align 1, !tbaa !15
  %i.je = bitcast <8 x i64> %i.iy to <16 x i32>
  %i.jf = bitcast <8 x i64> %i.jc to <16 x i32>
  %i.jg = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.jd, <16 x i32> %i.je, <16 x i32> %i.jf, i32 150) ; 2 uses
  %i.jh = bitcast <16 x i32> %i.jg to <8 x i64>
  %i.ji = lshr <8 x i64> %i.jh, splat (i64 32)
  %i.jj = bitcast <16 x i32> %i.jg to <8 x i64>
  %i.jk = and <8 x i64> %i.jj, splat (i64 4294967295)
  %i.jl = mul nuw <8 x i64> %i.jk, splat (i64 2654435761)
  %i.jm = mul <8 x i64> %i.ji, splat (i64 -7046029290881679360)
  %i.jn = add <8 x i64> %i.jl, %i.jm              ; 3 uses
  store <8 x i64> %i.jn, ptr %0, align 64, !tbaa !15
  store i64 0, ptr %i.gx, align 8, !tbaa !52
  %i.jo = shl nuw i64 %i.ha, 6
  %i.jp = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.jo ; 2 uses
  %i.jq = sub nuw nsw i64 %i.gw, %i.ha            ; 3 uses
  %.not133.i38 = icmp ult i64 %i.jq, %i.gm
  br i1 %.not133.i38, label %.preheader, label %.preheader17.lr.ph

.preheader17.lr.ph:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5
  %.not47 = icmp eq i64 %i.gm, 0
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %xtraiter138 = and i64 %i.gm, 1
  %i.jr = icmp eq i64 %i.gm, 1
  %unroll_iter144 = and i64 %i.gm, -2
  %lcmp.mod141.not = icmp eq i64 %xtraiter138, 0
  %lcmp.mod143 = trunc i64 %i.gm to i1
  br label %.preheader17

.preheader17:                                     ; preds = %.preheader17.lr.ph, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3
  %.promoted37 = phi <8 x i64> [ %i.jn, %.preheader17.lr.ph ], [ %i.ly, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 3 uses
  %.0124.i40 = phi i64 [ %i.jq, %.preheader17.lr.ph ], [ %i.ma, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ]
  %.1126.i39 = phi ptr [ %i.jp, %.preheader17.lr.ph ], [ %i.lz, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 4 uses
  br i1 %.not47, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3, label %.lr.ph36

.lr.ph36:                                         ; preds = %.preheader17
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  br i1 %i.jr, label %.epil.preheader137, label %.lr.ph36.new

.preheader:                                       ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5
  %.promoted44 = phi <8 x i64> [ %i.jn, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.ly, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 2 uses
  %.1126.i.lcssa = phi ptr [ %i.jp, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.lz, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 4 uses
  %.0124.i.lcssa = phi i64 [ %i.jq, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.ma, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 7 uses
  %.not48 = icmp eq i64 %.0124.i.lcssa, 0
  br i1 %.not48, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit, label %.lr.ph43

.lr.ph43:                                         ; preds = %.preheader
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %xtraiter147 = and i64 %.0124.i.lcssa, 1
  %i.js = icmp eq i64 %.0124.i.lcssa, 1
  br i1 %i.js, label %.epil.preheader146, label %.lr.ph43.new

.lr.ph43.new:                                     ; preds = %.lr.ph43
  %unroll_iter152 = and i64 %.0124.i.lcssa, -2
  br label %bb.k

.lr.ph36.new:                                     ; preds = %.lr.ph36, %.lr.ph36.new
  %i.jt = phi <8 x i64> [ %i.kw, %.lr.ph36.new ], [ %.promoted37, %.lr.ph36 ]
  %.0.i235 = phi i64 [ %i.kx, %.lr.ph36.new ], [ 0, %.lr.ph36 ] ; 4 uses
  %niter145 = phi i64 [ %niter145.next.1, %.lr.ph36.new ], [ 0, %.lr.ph36 ]
  %i.ju = shl i64 %.0.i235, 6
  %i.jv = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.ju ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.jw, i32 0, i32 3, i32 1)
end_hunk_0
begin_hunk_1_@ROCKSDB_XXH3_64bits_update:bb.a
  %i.kc = lshr <8 x i64> %i.kb, splat (i64 32)
  %i.kd = and <8 x i64> %i.kb, splat (i64 4294967295)
  %i.ke = mul nuw <8 x i64> %i.kd, %i.kc
  %i.kf = shufflevector <8 x i64> %i.jz, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.kg = add <8 x i64> %i.jt, %i.kf
  %i.kh = add <8 x i64> %i.kg, %i.ke              ; 2 uses
  store <8 x i64> %i.kh, ptr %0, align 64, !tbaa !15
  %i.ki = or disjoint i64 %.0.i235, 1             ; 2 uses
  %i.kj = shl i64 %i.ki, 6
  %i.kk = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.kj ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.kl, i32 0, i32 3, i32 1)
  %i.km = shl i64 %i.ki, 3
  %i.kn = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.km
  %i.ko = load <8 x i64>, ptr %i.kk, align 1, !tbaa !15 ; 2 uses
  %i.kp = load <8 x i64>, ptr %i.kn, align 1, !tbaa !15
  %i.kq = xor <8 x i64> %i.kp, %i.ko              ; 2 uses
  %i.kr = lshr <8 x i64> %i.kq, splat (i64 32)
  %i.ks = and <8 x i64> %i.kq, splat (i64 4294967295)
  %i.kt = mul nuw <8 x i64> %i.ks, %i.kr
  %i.ku = shufflevector <8 x i64> %i.ko, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.kv = add <8 x i64> %i.kh, %i.ku
  %i.kw = add <8 x i64> %i.kv, %i.kt              ; 4 uses
  store <8 x i64> %i.kw, ptr %0, align 64, !tbaa !15
  %i.kx = add nuw i64 %.0.i235, 2                 ; 2 uses
  %niter145.next.1 = add nuw i64 %niter145, 2     ; 2 uses
  %niter145.ncmp.1 = icmp eq i64 %niter145.next.1, %unroll_iter144
  br i1 %niter145.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa, label %.lr.ph36.new, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa: ; preds = %.lr.ph36.new
  br i1 %lcmp.mod141.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3, label %.epil.preheader137

.epil.preheader137:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa, %.lr.ph36
  %.epil.init140 = phi <8 x i64> [ %.promoted37, %.lr.ph36 ], [ %i.kw, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ]
  %.0.i235.epil.init = phi i64 [ 0, %.lr.ph36 ], [ %i.kx, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod143)
  %i.ky = shl i64 %.0.i235.epil.init, 6
  %i.kz = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.ky ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.la, i32 0, i32 3, i32 1)
  %i.lb = shl i64 %.0.i235.epil.init, 3
  %i.lc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.lb
  %i.ld = load <8 x i64>, ptr %i.kz, align 1, !tbaa !15 ; 2 uses
  %i.le = load <8 x i64>, ptr %i.lc, align 1, !tbaa !15
  %i.lf = xor <8 x i64> %i.le, %i.ld              ; 2 uses
  %i.lg = lshr <8 x i64> %i.lf, splat (i64 32)
  %i.lh = and <8 x i64> %i.lf, splat (i64 4294967295)
  %i.li = mul nuw <8 x i64> %i.lh, %i.lg
  %i.lj = shufflevector <8 x i64> %i.ld, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.lk = add <8 x i64> %.epil.init140, %i.lj
  %i.ll = add <8 x i64> %i.lk, %i.li              ; 2 uses
  store <8 x i64> %i.ll, ptr %0, align 64, !tbaa !15
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3:       ; preds = %.epil.preheader137, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa, %.preheader17
  %i.lm = phi <8 x i64> [ %.promoted37, %.preheader17 ], [ %i.kw, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ], [ %i.ll, %.epil.preheader137 ] ; 2 uses
  %i.ln = lshr <8 x i64> %i.lm, splat (i64 47)
  %i.lo = load <16 x i32>, ptr %i.jb, align 1, !tbaa !15
  %i.lp = bitcast <8 x i64> %i.lm to <16 x i32>
  %i.lq = bitcast <8 x i64> %i.ln to <16 x i32>
  %i.lr = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.lo, <16 x i32> %i.lp, <16 x i32> %i.lq, i32 150) ; 2 uses
  %i.ls = bitcast <16 x i32> %i.lr to <8 x i64>
  %i.lt = lshr <8 x i64> %i.ls, splat (i64 32)
  %i.lu = bitcast <16 x i32> %i.lr to <8 x i64>
  %i.lv = and <8 x i64> %i.lu, splat (i64 4294967295)
  %i.lw = mul nuw <8 x i64> %i.lv, splat (i64 2654435761)
  %i.lx = mul <8 x i64> %i.lt, splat (i64 -7046029290881679360)
  %i.ly = add <8 x i64> %i.lw, %i.lx              ; 3 uses
  store <8 x i64> %i.ly, ptr %0, align 64, !tbaa !15
  %i.lz = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.gr ; 2 uses
  %i.ma = sub nuw nsw i64 %.0124.i40, %i.gm       ; 3 uses
  %.not133.i = icmp ult i64 %i.ma, %i.gm
  br i1 %.not133.i, label %.preheader, label %.preheader17, !llvm.loop !53

bb.k:                                             ; preds = %bb.k, %.lr.ph43.new
  %i.mb = phi <8 x i64> [ %.promoted44, %.lr.ph43.new ], [ %i.ne, %bb.k ]
  %.0.i42 = phi i64 [ 0, %.lr.ph43.new ], [ %i.nf, %bb.k ] ; 4 uses
  %niter153 = phi i64 [ 0, %.lr.ph43.new ], [ %niter153.next.1, %bb.k ]
  %i.mc = shl i64 %.0.i42, 6
  %i.md = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.mc ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.me, i32 0, i32 3, i32 1)
  %i.mf = shl i64 %.0.i42, 3
  %i.mg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.mf
  %i.mh = load <8 x i64>, ptr %i.md, align 1, !tbaa !15 ; 2 uses
  %i.mi = load <8 x i64>, ptr %i.mg, align 1, !tbaa !15
  %i.mj = xor <8 x i64> %i.mi, %i.mh              ; 2 uses
  %i.mk = lshr <8 x i64> %i.mj, splat (i64 32)
  %i.ml = and <8 x i64> %i.mj, splat (i64 4294967295)
  %i.mm = mul nuw <8 x i64> %i.ml, %i.mk
  %i.mn = shufflevector <8 x i64> %i.mh, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.mo = add <8 x i64> %i.mb, %i.mn
  %i.mp = add <8 x i64> %i.mo, %i.mm              ; 2 uses
  store <8 x i64> %i.mp, ptr %0, align 64, !tbaa !15
  %i.mq = or disjoint i64 %.0.i42, 1              ; 2 uses
  %i.mr = shl i64 %i.mq, 6
  %i.ms = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.mr ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.mt, i32 0, i32 3, i32 1)
  %i.mu = shl i64 %i.mq, 3
  %i.mv = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.mu
  %i.mw = load <8 x i64>, ptr %i.ms, align 1, !tbaa !15 ; 2 uses
  %i.mx = load <8 x i64>, ptr %i.mv, align 1, !tbaa !15
  %i.my = xor <8 x i64> %i.mx, %i.mw              ; 2 uses
  %i.mz = lshr <8 x i64> %i.my, splat (i64 32)
  %i.na = and <8 x i64> %i.my, splat (i64 4294967295)
  %i.nb = mul nuw <8 x i64> %i.na, %i.mz
  %i.nc = shufflevector <8 x i64> %i.mw, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.nd = add <8 x i64> %i.mp, %i.nc
  %i.ne = add <8 x i64> %i.nd, %i.nb              ; 3 uses
  store <8 x i64> %i.ne, ptr %0, align 64, !tbaa !15
  %i.nf = add nuw i64 %.0.i42, 2                  ; 2 uses
  %niter153.next.1 = add nuw i64 %niter153, 2     ; 2 uses
  %niter153.ncmp.1 = icmp eq i64 %niter153.next.1, %unroll_iter152
  br i1 %niter153.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod150.not = icmp eq i64 %xtraiter147, 0
  br i1 %lcmp.mod150.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit, label %.epil.preheader146

.epil.preheader146:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, %.lr.ph43
  %.epil.init149 = phi <8 x i64> [ %.promoted44, %.lr.ph43 ], [ %i.ne, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa ]
  %.0.i42.epil.init = phi i64 [ 0, %.lr.ph43 ], [ %i.nf, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod151 = trunc i64 %.0124.i.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod151)
  %i.ng = shl i64 %.0.i42.epil.init, 6
  %i.nh = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.ng ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ni, i32 0, i32 3, i32 1)
  %i.nj = shl i64 %.0.i42.epil.init, 3
  %i.nk = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nj
  %i.nl = load <8 x i64>, ptr %i.nh, align 1, !tbaa !15 ; 2 uses
  %i.nm = load <8 x i64>, ptr %i.nk, align 1, !tbaa !15
  %i.nn = xor <8 x i64> %i.nm, %i.nl              ; 2 uses
  %i.no = lshr <8 x i64> %i.nn, splat (i64 32)
  %i.np = and <8 x i64> %i.nn, splat (i64 4294967295)
  %i.nq = mul nuw <8 x i64> %i.np, %i.no
  %i.nr = shufflevector <8 x i64> %i.nl, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ns = add <8 x i64> %.epil.init149, %i.nr
  %i.nt = add <8 x i64> %i.ns, %i.nq
  store <8 x i64> %i.nt, ptr %0, align 64, !tbaa !15
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit:        ; preds = %.epil.preheader146, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, %.preheader
  %i.nu = shl nuw i64 %.0124.i.lcssa, 6
  %i.nv = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.nu ; 4 uses
  %i.nw = icmp ult ptr %i.nv, %i.c
  tail call void @llvm.assume(i1 %i.nw)
  store i64 %.0124.i.lcssa, ptr %i.gx, align 8, !tbaa !52
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ny = getelementptr inbounds i8, ptr %i.nv, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.nx, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.ny, i64 64, i1 false)
  %i.nz = ptrtoint ptr %i.nv to i64
  %i.oa = sub i64 %i.go, %i.nz                    ; 2 uses
  %i.ob = icmp slt i64 %i.oa, 65
  tail call void @llvm.assume(i1 %i.ob)
  br label %bb.q

bb.l:                                             ; preds = %bb.h
  %i.oc = icmp sgt i64 %i.gq, 256
  br i1 %i.oc, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.od = getelementptr inbounds i8, ptr %i.c, i64 -256
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.og = load i64, ptr %i.of, align 32, !tbaa !47
  %i.oh = icmp ugt i64 %i.gm, 3
  tail call void @llvm.assume(i1 %i.oh)
  %.promoted30 = load i64, ptr %i.oe, align 8, !tbaa !26
  %i.oi = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.og
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %invariant.op = sub nuw i64 %i.gm, 1
  br label %bb.n

bb.n:                                             ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, %bb.m
  %storemerge.i731 = phi i64 [ %.promoted30, %bb.m ], [ %storemerge.i7, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit ] ; 6 uses
  %.2.i = phi ptr [ %.0125.i, %bb.m ], [ %i.ul, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit ] ; 14 uses
  %i.oj = icmp ult i64 %storemerge.i731, %i.gm
  tail call void @llvm.assume(i1 %i.oj)
  %i.ok = sub nuw i64 %i.gm, %storemerge.i731     ; 7 uses
  %.not.i6 = icmp ugt i64 %i.ok, 4
  %i.ol = shl i64 %storemerge.i731, 3
  %i.om = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ol ; 7 uses
  %.promoted28 = load <8 x i64>, ptr %0, align 64, !tbaa !15 ; 3 uses
  br i1 %.not.i6, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i, label %.preheader84.preheader

.preheader84.preheader:                           ; preds = %bb.n
  %xtraiter112 = and i64 %i.ok, 1
  %i.on = icmp eq i64 %storemerge.i731, %invariant.op
  br i1 %i.on, label %.preheader84.epil.preheader, label %.preheader84.preheader.new

.preheader84.preheader.new:                       ; preds = %.preheader84.preheader
  %unroll_iter118 = and i64 %i.ok, 6
  br label %.preheader84

.preheader84:                                     ; preds = %.preheader84, %.preheader84.preheader.new
  %i.oo = phi <8 x i64> [ %.promoted28, %.preheader84.preheader.new ], [ %i.pr, %.preheader84 ]
  %.0.i39.i23 = phi i64 [ 0, %.preheader84.preheader.new ], [ %i.ps, %.preheader84 ] ; 4 uses
  %niter119 = phi i64 [ 0, %.preheader84.preheader.new ], [ %niter119.next.1, %.preheader84 ]
  %i.op = shl nuw nsw i64 %.0.i39.i23, 6
  %i.oq = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.op ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.or, i32 0, i32 3, i32 1)
  %i.os = shl nuw nsw i64 %.0.i39.i23, 3
  %i.ot = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.os
  %i.ou = load <8 x i64>, ptr %i.oq, align 1, !tbaa !15 ; 2 uses
  %i.ov = load <8 x i64>, ptr %i.ot, align 1, !tbaa !15
  %i.ow = xor <8 x i64> %i.ov, %i.ou              ; 2 uses
  %i.ox = lshr <8 x i64> %i.ow, splat (i64 32)
  %i.oy = and <8 x i64> %i.ow, splat (i64 4294967295)
  %i.oz = mul nuw <8 x i64> %i.oy, %i.ox
  %i.pa = shufflevector <8 x i64> %i.ou, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.pb = add <8 x i64> %i.oo, %i.pa
  %i.pc = add <8 x i64> %i.pb, %i.oz              ; 2 uses
  store <8 x i64> %i.pc, ptr %0, align 64, !tbaa !15
  %i.pd = or disjoint i64 %.0.i39.i23, 1          ; 2 uses
  %i.pe = shl nuw nsw i64 %i.pd, 6
  %i.pf = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.pe ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.pg, i32 0, i32 3, i32 1)
  %i.ph = shl nuw nsw i64 %i.pd, 3
  %i.pi = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.ph
  %i.pj = load <8 x i64>, ptr %i.pf, align 1, !tbaa !15 ; 2 uses
  %i.pk = load <8 x i64>, ptr %i.pi, align 1, !tbaa !15
  %i.pl = xor <8 x i64> %i.pk, %i.pj              ; 2 uses
  %i.pm = lshr <8 x i64> %i.pl, splat (i64 32)
  %i.pn = and <8 x i64> %i.pl, splat (i64 4294967295)
  %i.po = mul nuw <8 x i64> %i.pn, %i.pm
  %i.pp = shufflevector <8 x i64> %i.pj, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.pq = add <8 x i64> %i.pc, %i.pp
  %i.pr = add <8 x i64> %i.pq, %i.po              ; 4 uses
  store <8 x i64> %i.pr, ptr %0, align 64, !tbaa !15
  %i.ps = add nuw i64 %.0.i39.i23, 2              ; 2 uses
  %niter119.next.1 = add i64 %niter119, 2         ; 2 uses
  %niter119.ncmp.1 = icmp eq i64 %niter119.next.1, %unroll_iter118
  br i1 %niter119.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa, label %.preheader84, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa: ; preds = %.preheader84
  %lcmp.mod115.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod115.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i, label %.preheader84.epil.preheader

.preheader84.epil.preheader:                      ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa, %.preheader84.preheader
  %.epil.init114 = phi <8 x i64> [ %.promoted28, %.preheader84.preheader ], [ %i.pr, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa ]
  %.0.i39.i23.epil.init = phi i64 [ 0, %.preheader84.preheader ], [ %i.ps, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa ] ; 2 uses
  %lcmp.mod117 = trunc i64 %i.ok to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.pt = shl nuw nsw i64 %.0.i39.i23.epil.init, 6
  %i.pu = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.pt ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.pv, i32 0, i32 3, i32 1)
  %i.pw = shl nuw nsw i64 %.0.i39.i23.epil.init, 3
  %i.px = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.pw
  %i.py = load <8 x i64>, ptr %i.pu, align 1, !tbaa !15 ; 2 uses
  %i.pz = load <8 x i64>, ptr %i.px, align 1, !tbaa !15
  %i.qa = xor <8 x i64> %i.pz, %i.py              ; 2 uses
  %i.qb = lshr <8 x i64> %i.qa, splat (i64 32)
  %i.qc = and <8 x i64> %i.qa, splat (i64 4294967295)
  %i.qd = mul nuw <8 x i64> %i.qc, %i.qb
  %i.qe = shufflevector <8 x i64> %i.py, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.qf = add <8 x i64> %.epil.init114, %i.qe
  %i.qg = add <8 x i64> %i.qf, %i.qd              ; 2 uses
  store <8 x i64> %i.qg, ptr %0, align 64, !tbaa !15
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i:    ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa, %.preheader84.epil.preheader
  %.lcssa100 = phi <8 x i64> [ %i.pr, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa ], [ %i.qg, %.preheader84.epil.preheader ] ; 2 uses
  %i.qh = sub nsw i64 4, %i.ok                    ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.qi = lshr <8 x i64> %.lcssa100, splat (i64 47)
  %i.qj = load <16 x i32>, ptr %i.oi, align 1, !tbaa !15
  %i.qk = bitcast <8 x i64> %.lcssa100 to <16 x i32>
  %i.ql = bitcast <8 x i64> %i.qi to <16 x i32>
  %i.qm = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.qj, <16 x i32> %i.qk, <16 x i32> %i.ql, i32 150) ; 2 uses
  %i.qn = bitcast <16 x i32> %i.qm to <8 x i64>
  %i.qo = lshr <8 x i64> %i.qn, splat (i64 32)
  %i.qp = bitcast <16 x i32> %i.qm to <8 x i64>
  %i.qq = and <8 x i64> %i.qp, splat (i64 4294967295)
  %i.qr = mul nuw <8 x i64> %i.qq, splat (i64 2654435761)
  %i.qs = mul <8 x i64> %i.qo, splat (i64 -7046029290881679360)
  %i.qt = add <8 x i64> %i.qr, %i.qs              ; 3 uses
  store <8 x i64> %i.qt, ptr %0, align 64, !tbaa !15
  %i.qu = shl nuw nsw i64 %i.ok, 6
  %i.qv = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.qu ; 3 uses
  %.not45 = icmp eq i64 %i.ok, 4
  br i1 %.not45, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %reass.sub = sub i64 %storemerge.i731, %i.gm
  %xtraiter121 = and i64 %i.qh, 1
  %i.qw = icmp eq i64 %reass.sub, -3
  br i1 %i.qw, label %.epil.preheader120, label %.lr.ph26.new

.lr.ph26.new:                                     ; preds = %.lr.ph26
  %unroll_iter126 = and i64 %i.qh, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph26.new
  %i.qx = phi <8 x i64> [ %i.qt, %.lr.ph26.new ], [ %i.sa, %bb.o ]
  %.0.i37.i25 = phi i64 [ 0, %.lr.ph26.new ], [ %i.sb, %bb.o ] ; 4 uses
  %niter127 = phi i64 [ 0, %.lr.ph26.new ], [ %niter127.next.1, %bb.o ]
  %i.qy = shl nuw nsw i64 %.0.i37.i25, 6
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.qy ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ra, i32 0, i32 3, i32 1)
  %i.rb = shl nuw nsw i64 %.0.i37.i25, 3
  %i.rc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.rb
  %i.rd = load <8 x i64>, ptr %i.qz, align 1, !tbaa !15 ; 2 uses
  %i.re = load <8 x i64>, ptr %i.rc, align 1, !tbaa !15
  %i.rf = xor <8 x i64> %i.re, %i.rd              ; 2 uses
  %i.rg = lshr <8 x i64> %i.rf, splat (i64 32)
  %i.rh = and <8 x i64> %i.rf, splat (i64 4294967295)
  %i.ri = mul nuw <8 x i64> %i.rh, %i.rg
  %i.rj = shufflevector <8 x i64> %i.rd, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.rk = add <8 x i64> %i.qx, %i.rj
  %i.rl = add <8 x i64> %i.rk, %i.ri              ; 2 uses
  store <8 x i64> %i.rl, ptr %0, align 64, !tbaa !15
  %i.rm = or disjoint i64 %.0.i37.i25, 1          ; 2 uses
  %i.rn = shl nuw nsw i64 %i.rm, 6
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.rn ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.rp, i32 0, i32 3, i32 1)
  %i.rq = shl nuw nsw i64 %i.rm, 3
  %i.rr = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.rq
  %i.rs = load <8 x i64>, ptr %i.ro, align 1, !tbaa !15 ; 2 uses
  %i.rt = load <8 x i64>, ptr %i.rr, align 1, !tbaa !15
  %i.ru = xor <8 x i64> %i.rt, %i.rs              ; 2 uses
  %i.rv = lshr <8 x i64> %i.ru, splat (i64 32)
  %i.rw = and <8 x i64> %i.ru, splat (i64 4294967295)
  %i.rx = mul nuw <8 x i64> %i.rw, %i.rv
  %i.ry = shufflevector <8 x i64> %i.rs, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.rz = add <8 x i64> %i.rl, %i.ry
  %i.sa = add <8 x i64> %i.rz, %i.rx              ; 3 uses
  store <8 x i64> %i.sa, ptr %0, align 64, !tbaa !15
  %i.sb = add nuw i64 %.0.i37.i25, 2              ; 2 uses
  %niter127.next.1 = add i64 %niter127, 2         ; 2 uses
  %niter127.ncmp.1 = icmp eq i64 %niter127.next.1, %unroll_iter126
  br i1 %niter127.ncmp.1, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa, label %bb.o, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i:      ; preds = %bb.n
  %i.sc = getelementptr inbounds nuw i8, ptr %.2.i, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.sc, i32 0, i32 3, i32 1)
  %i.sd = load <8 x i64>, ptr %.2.i, align 1, !tbaa !15 ; 2 uses
  %i.se = load <8 x i64>, ptr %i.om, align 1, !tbaa !15
  %i.sf = xor <8 x i64> %i.se, %i.sd              ; 2 uses
  %i.sg = lshr <8 x i64> %i.sf, splat (i64 32)
  %i.sh = and <8 x i64> %i.sf, splat (i64 4294967295)
  %i.si = mul nuw <8 x i64> %i.sh, %i.sg
  %i.sj = shufflevector <8 x i64> %i.sd, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.sk = add <8 x i64> %.promoted28, %i.sj
  %i.sl = add <8 x i64> %i.sk, %i.si              ; 2 uses
  store <8 x i64> %i.sl, ptr %0, align 64, !tbaa !15
  %i.sm = getelementptr inbounds nuw i8, ptr %.2.i, i64 64
  %i.sn = getelementptr inbounds nuw i8, ptr %.2.i, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %i.sn, i32 0, i32 3, i32 1)
  %i.so = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.sp = load <8 x i64>, ptr %i.sm, align 1, !tbaa !15 ; 2 uses
  %i.sq = load <8 x i64>, ptr %i.so, align 1, !tbaa !15
  %i.sr = xor <8 x i64> %i.sq, %i.sp              ; 2 uses
  %i.ss = lshr <8 x i64> %i.sr, splat (i64 32)
  %i.st = and <8 x i64> %i.sr, splat (i64 4294967295)
  %i.su = mul nuw <8 x i64> %i.st, %i.ss
  %i.sv = shufflevector <8 x i64> %i.sp, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.sw = add <8 x i64> %i.sl, %i.sv
  %i.sx = add <8 x i64> %i.sw, %i.su              ; 2 uses
  store <8 x i64> %i.sx, ptr %0, align 64, !tbaa !15
  %i.sy = getelementptr inbounds nuw i8, ptr %.2.i, i64 128
  %i.sz = getelementptr inbounds nuw i8, ptr %.2.i, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull %i.sz, i32 0, i32 3, i32 1)
  %i.ta = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.tb = load <8 x i64>, ptr %i.sy, align 1, !tbaa !15 ; 2 uses
  %i.tc = load <8 x i64>, ptr %i.ta, align 1, !tbaa !15
  %i.td = xor <8 x i64> %i.tc, %i.tb              ; 2 uses
  %i.te = lshr <8 x i64> %i.td, splat (i64 32)
  %i.tf = and <8 x i64> %i.td, splat (i64 4294967295)
  %i.tg = mul nuw <8 x i64> %i.tf, %i.te
  %i.th = shufflevector <8 x i64> %i.tb, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ti = add <8 x i64> %i.sx, %i.th
  %i.tj = add <8 x i64> %i.ti, %i.tg              ; 2 uses
  store <8 x i64> %i.tj, ptr %0, align 64, !tbaa !15
  %i.tk = getelementptr inbounds nuw i8, ptr %.2.i, i64 192
  %i.tl = getelementptr inbounds nuw i8, ptr %.2.i, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull %i.tl, i32 0, i32 3, i32 1)
  %i.tm = getelementptr inbounds nuw i8, ptr %i.om, i64 24
  %i.tn = load <8 x i64>, ptr %i.tk, align 1, !tbaa !15 ; 2 uses
  %i.to = load <8 x i64>, ptr %i.tm, align 1, !tbaa !15
  %i.tp = xor <8 x i64> %i.to, %i.tn              ; 2 uses
  %i.tq = lshr <8 x i64> %i.tp, splat (i64 32)
  %i.tr = and <8 x i64> %i.tp, splat (i64 4294967295)
  %i.ts = mul nuw <8 x i64> %i.tr, %i.tq
  %i.tt = shufflevector <8 x i64> %i.tn, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.tu = add <8 x i64> %i.tj, %i.tt
  %i.tv = add <8 x i64> %i.tu, %i.ts
  store <8 x i64> %i.tv, ptr %0, align 64, !tbaa !15
  %i.tw = add i64 %storemerge.i731, 4
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa: ; preds = %bb.o
  %lcmp.mod124.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod124.not, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, label %.epil.preheader120

.epil.preheader120:                               ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa, %.lr.ph26
  %.epil.init123 = phi <8 x i64> [ %i.qt, %.lr.ph26 ], [ %i.sa, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa ]
  %.0.i37.i25.epil.init = phi i64 [ 0, %.lr.ph26 ], [ %i.sb, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod125 = trunc i64 %i.qh to i1
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.tx = shl nuw nsw i64 %.0.i37.i25.epil.init, 6
  %i.ty = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.tx ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.tz, i32 0, i32 3, i32 1)
  %i.ua = shl nuw nsw i64 %.0.i37.i25.epil.init, 3
  %i.ub = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ua
  %i.uc = load <8 x i64>, ptr %i.ty, align 1, !tbaa !15 ; 2 uses
  %i.ud = load <8 x i64>, ptr %i.ub, align 1, !tbaa !15
  %i.ue = xor <8 x i64> %i.ud, %i.uc              ; 2 uses
  %i.uf = lshr <8 x i64> %i.ue, splat (i64 32)
  %i.ug = and <8 x i64> %i.ue, splat (i64 4294967295)
  %i.uh = mul nuw <8 x i64> %i.ug, %i.uf
  %i.ui = shufflevector <8 x i64> %i.uc, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.uj = add <8 x i64> %.epil.init123, %i.ui
  %i.uk = add <8 x i64> %i.uj, %i.uh
  store <8 x i64> %i.uk, ptr %0, align 64, !tbaa !15
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit: ; preds = %.epil.preheader120, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i
  %storemerge.i7 = phi i64 [ %i.tw, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i ], [ 0, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i ], [ %i.qh, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa ], [ %i.qh, %.epil.preheader120 ] ; 2 uses
  store i64 %storemerge.i7, ptr %i.oe, align 8, !tbaa !26
  %i.ul = getelementptr inbounds nuw i8, ptr %.2.i, i64 256 ; 4 uses
  %i.um = icmp ult ptr %i.ul, %i.od
  br i1 %i.um, label %bb.n, label %bb.p, !llvm.loop !54

bb.p:                                             ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.uo = getelementptr inbounds nuw i8, ptr %.2.i, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.un, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.uo, i64 64, i1 false)
  %.pre63 = ptrtoint ptr %i.ul to i64
  %.pre64 = sub i64 %i.go, %.pre63
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit
  %.pre-phi65 = phi i64 [ %.pre64, %bb.p ], [ %i.gq, %bb.l ], [ %i.oa, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit ] ; 3 uses
  %.3.i = phi ptr [ %i.ul, %bb.p ], [ %.0125.i, %bb.l ], [ %i.nv, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit ] ; 2 uses
  %i.up = icmp ult ptr %.3.i, %i.c
  tail call void @llvm.assume(i1 %i.up)
  %i.uq = icmp slt i64 %.pre-phi65, 257
  tail call void @llvm.assume(i1 %i.uq)
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.ur, ptr readonly align 1 %.3.i, i64 %.pre-phi65, i1 false)
  %i.us = trunc i64 %.pre-phi65 to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.d
  %storemerge.i = phi i32 [ %i.us, %bb.q ], [ %i.v, %bb.d ]
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
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = select i1 %i.d, ptr %i.e, ptr %i.c       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.h = load i64, ptr %i.g, align 16, !tbaa !50  ; 4 uses
  %i.i = icmp ugt i64 %i.h, 240
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load <8 x i64>, ptr %0, align 16 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.k = load i32, ptr %i.j, align 64, !tbaa !51  ; 6 uses
  %i.l = icmp ugt i32 %i.k, 63
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = add i32 %i.k, -1
  %i.n = lshr i32 %i.m, 6                         ; 4 uses
  %i.o = zext nneg i32 %i.n to i64                ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.q = load i64, ptr %i.p, align 8, !tbaa !52   ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.s = load i64, ptr %i.r, align 8, !tbaa !48   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.v = load i64, ptr %i.u, align 32, !tbaa !47  ; 2 uses
  %i.w = icmp uge i64 %i.s, %i.o
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp ult i64 %i.q, %i.s
  tail call void @llvm.assume(i1 %i.x)
  %i.y = sub nuw i64 %i.s, %i.q                   ; 7 uses
  %.not.i = icmp ugt i64 %i.y, %i.o
  %i.z = shl i64 %i.q, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.z ; 6 uses
  br i1 %.not.i, label %bb.d, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %.neg = add nuw i64 %i.q, 1
  %xtraiter = and i64 %i.y, 1
  %i.ab = icmp eq i64 %i.s, %.neg
  br i1 %i.ab, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.y, -2
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.0.i39.i27 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.bf, %.preheader ] ; 4 uses
  %.sroa.0.126 = phi <8 x i64> [ %.sroa.0.0.copyload, %.preheader.preheader.new ], [ %i.be, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.ac = shl i64 %.0.i39.i27, 6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ae, i32 0, i32 3, i32 1)
  %i.af = shl i64 %.0.i39.i27, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  %i.ah = load <8 x i64>, ptr %i.ad, align 1, !tbaa !15 ; 2 uses
  %i.ai = load <8 x i64>, ptr %i.ag, align 1, !tbaa !15
  %i.aj = xor <8 x i64> %i.ai, %i.ah              ; 2 uses
  %i.ak = lshr <8 x i64> %i.aj, splat (i64 32)
  %i.al = and <8 x i64> %i.aj, splat (i64 4294967295)
  %i.am = mul nuw <8 x i64> %i.al, %i.ak
  %i.an = shufflevector <8 x i64> %i.ah, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ao = add <8 x i64> %.sroa.0.126, %i.an
  %i.ap = add <8 x i64> %i.ao, %i.am
  %i.aq = or disjoint i64 %.0.i39.i27, 1          ; 2 uses
  %i.ar = shl i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.at, i32 0, i32 3, i32 1)
  %i.au = shl i64 %i.aq, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.au
  %i.aw = load <8 x i64>, ptr %i.as, align 1, !tbaa !15 ; 2 uses
  %i.ax = load <8 x i64>, ptr %i.av, align 1, !tbaa !15
  %i.ay = xor <8 x i64> %i.ax, %i.aw              ; 2 uses
  %i.az = lshr <8 x i64> %i.ay, splat (i64 32)
  %i.ba = and <8 x i64> %i.ay, splat (i64 4294967295)
  %i.bb = mul nuw <8 x i64> %i.ba, %i.az
  %i.bc = shufflevector <8 x i64> %i.aw, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.bd = add <8 x i64> %i.ap, %i.bc
  %i.be = add <8 x i64> %i.bd, %i.bb              ; 3 uses
  %i.bf = add nuw i64 %.0.i39.i27, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa, label %.preheader, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa, %.preheader.preheader
  %.0.i39.i27.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.bf, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa ] ; 2 uses
  %.sroa.0.126.epil.init = phi <8 x i64> [ %.sroa.0.0.copyload, %.preheader.preheader ], [ %i.be, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa ]
  %lcmp.mod57 = trunc i64 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod57)
  %i.bg = shl i64 %.0.i39.i27.epil.init, 6
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bi, i32 0, i32 3, i32 1)
  %i.bj = shl i64 %.0.i39.i27.epil.init, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bj
  %i.bl = load <8 x i64>, ptr %i.bh, align 1, !tbaa !15 ; 2 uses
  %i.bm = load <8 x i64>, ptr %i.bk, align 1, !tbaa !15
  %i.bn = xor <8 x i64> %i.bm, %i.bl              ; 2 uses
  %i.bo = lshr <8 x i64> %i.bn, splat (i64 32)
  %i.bp = and <8 x i64> %i.bn, splat (i64 4294967295)
  %i.bq = mul nuw <8 x i64> %i.bp, %i.bo
  %i.br = shufflevector <8 x i64> %i.bl, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.bs = add <8 x i64> %.sroa.0.126.epil.init, %i.br
  %i.bt = add <8 x i64> %i.bs, %i.bq
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i:    ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa, %.preheader.epil.preheader
  %.lcssa55 = phi <8 x i64> [ %i.be, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa ], [ %i.bt, %.preheader.epil.preheader ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v
  %i.bv = lshr <8 x i64> %.lcssa55, splat (i64 47)
  %i.bw = load <16 x i32>, ptr %i.bu, align 1, !tbaa !15
  %i.bx = bitcast <8 x i64> %.lcssa55 to <16 x i32>
  %i.by = bitcast <8 x i64> %i.bv to <16 x i32>
  %i.bz = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.bw, <16 x i32> %i.bx, <16 x i32> %i.by, i32 150) ; 2 uses
  %i.ca = bitcast <16 x i32> %i.bz to <8 x i64>
  %i.cb = lshr <8 x i64> %i.ca, splat (i64 32)
  %i.cc = bitcast <16 x i32> %i.bz to <8 x i64>
  %i.cd = and <8 x i64> %i.cc, splat (i64 4294967295)
  %i.ce = mul nuw <8 x i64> %i.cd, splat (i64 2654435761)
  %i.cf = mul <8 x i64> %i.cb, splat (i64 -7046029290881679360)
  %i.cg = add <8 x i64> %i.ce, %i.cf              ; 3 uses
  %i.ch = shl nuw nsw i64 %i.y, 6
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ch ; 3 uses
  %.not34 = icmp eq i64 %i.y, %i.o
  br i1 %.not34, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i
  %i.cj = sub nsw i64 %i.o, %i.y                  ; 3 uses
  %i.ck = add i64 %i.q, %i.o
  %.neg70 = add i64 %i.s, 1
  %xtraiter58 = and i64 %i.cj, 1
  %i.cl = icmp eq i64 %i.ck, %.neg70
  br i1 %i.cl, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter62 = and i64 %i.cj, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
end_hunk_1
begin_hunk_2_@ROCKSDB_XXH3_128bits_reset_withSecret:bb.a

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
  %i.an = phi <8 x i64> [ %.promoted21, %.preheader85.preheader.new ], [ %i.bq, %.preheader85 ]
  %.0.i39.i918 = phi i64 [ 0, %.preheader85.preheader.new ], [ %i.br, %.preheader85 ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader85.preheader.new ], [ %niter.next.1, %.preheader85 ]
  %i.ao = shl nuw nsw i64 %.0.i39.i918, 6
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aq, i32 0, i32 3, i32 1)
  %i.ar = shl nuw nsw i64 %.0.i39.i918, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ar
  %i.at = load <8 x i64>, ptr %i.ap, align 64, !tbaa !15 ; 2 uses
  %i.au = load <8 x i64>, ptr %i.as, align 1, !tbaa !15
  %i.av = xor <8 x i64> %i.au, %i.at              ; 2 uses
  %i.aw = lshr <8 x i64> %i.av, splat (i64 32)
  %i.ax = and <8 x i64> %i.av, splat (i64 4294967295)
  %i.ay = mul nuw <8 x i64> %i.ax, %i.aw
  %i.az = shufflevector <8 x i64> %i.at, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ba = add <8 x i64> %i.an, %i.az
  %i.bb = add <8 x i64> %i.ba, %i.ay              ; 2 uses
  store <8 x i64> %i.bb, ptr %0, align 64, !tbaa !15
  %i.bc = or disjoint i64 %.0.i39.i918, 1         ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 6
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bf, i32 0, i32 3, i32 1)
  %i.bg = shl nuw nsw i64 %i.bc, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bg
  %i.bi = load <8 x i64>, ptr %i.be, align 64, !tbaa !15 ; 2 uses
  %i.bj = load <8 x i64>, ptr %i.bh, align 1, !tbaa !15
  %i.bk = xor <8 x i64> %i.bj, %i.bi              ; 2 uses
  %i.bl = lshr <8 x i64> %i.bk, splat (i64 32)
  %i.bm = and <8 x i64> %i.bk, splat (i64 4294967295)
  %i.bn = mul nuw <8 x i64> %i.bm, %i.bl
  %i.bo = shufflevector <8 x i64> %i.bi, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.bp = add <8 x i64> %i.bb, %i.bo
  %i.bq = add <8 x i64> %i.bp, %i.bn              ; 4 uses
  store <8 x i64> %i.bq, ptr %0, align 64, !tbaa !15
  %i.br = add nuw i64 %.0.i39.i918, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa, label %.preheader85, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa: ; preds = %.preheader85
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10, label %.preheader85.epil.preheader

.preheader85.epil.preheader:                      ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa, %.preheader85.preheader
  %.epil.init = phi <8 x i64> [ %.promoted21, %.preheader85.preheader ], [ %i.bq, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa ]
  %.0.i39.i918.epil.init = phi i64 [ 0, %.preheader85.preheader ], [ %i.br, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa ] ; 2 uses
  %lcmp.mod104 = trunc i64 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod104)
  %i.bs = shl nuw nsw i64 %.0.i39.i918.epil.init, 6
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bu, i32 0, i32 3, i32 1)
  %i.bv = shl nuw nsw i64 %.0.i39.i918.epil.init, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bv
  %i.bx = load <8 x i64>, ptr %i.bt, align 64, !tbaa !15 ; 2 uses
  %i.by = load <8 x i64>, ptr %i.bw, align 1, !tbaa !15
  %i.bz = xor <8 x i64> %i.by, %i.bx              ; 2 uses
  %i.ca = lshr <8 x i64> %i.bz, splat (i64 32)
  %i.cb = and <8 x i64> %i.bz, splat (i64 4294967295)
  %i.cc = mul nuw <8 x i64> %i.cb, %i.ca
  %i.cd = shufflevector <8 x i64> %i.bx, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ce = add <8 x i64> %.epil.init, %i.cd
  %i.cf = add <8 x i64> %i.ce, %i.cc              ; 2 uses
  store <8 x i64> %i.cf, ptr %0, align 64, !tbaa !15
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10:  ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa, %.preheader85.epil.preheader
  %.lcssa102 = phi <8 x i64> [ %i.bq, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10.unr-lcssa ], [ %i.cf, %.preheader85.epil.preheader ] ; 2 uses
  %i.cg = sub nsw i64 4, %i.aj                    ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.af
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.ci = lshr <8 x i64> %.lcssa102, splat (i64 47)
  %i.cj = load <16 x i32>, ptr %i.ch, align 1, !tbaa !15
  %i.ck = bitcast <8 x i64> %.lcssa102 to <16 x i32>
  %i.cl = bitcast <8 x i64> %i.ci to <16 x i32>
  %i.cm = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.cj, <16 x i32> %i.ck, <16 x i32> %i.cl, i32 150) ; 2 uses
  %i.cn = bitcast <16 x i32> %i.cm to <8 x i64>
  %i.co = lshr <8 x i64> %i.cn, splat (i64 32)
  %i.cp = bitcast <16 x i32> %i.cm to <8 x i64>
  %i.cq = and <8 x i64> %i.cp, splat (i64 4294967295)
  %i.cr = mul nuw <8 x i64> %i.cq, splat (i64 2654435761)
  %i.cs = mul <8 x i64> %i.co, splat (i64 -7046029290881679360)
  %i.ct = add <8 x i64> %i.cr, %i.cs              ; 3 uses
  store <8 x i64> %i.ct, ptr %0, align 64, !tbaa !15
  %i.cu = shl nuw nsw i64 %i.aj, 6
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cu ; 3 uses
  %.not = icmp eq i64 %i.aj, 4
  br i1 %.not, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.cw = add i64 %i.ah, 3
  %xtraiter105 = and i64 %i.cg, 1
  %i.cx = icmp eq i64 %i.cw, %i.ad
  br i1 %i.cx, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter110 = and i64 %i.cg, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %i.cy = phi <8 x i64> [ %i.ct, %.lr.ph.new ], [ %i.eb, %bb.g ]
  %.0.i37.i1119 = phi i64 [ 0, %.lr.ph.new ], [ %i.ec, %bb.g ] ; 4 uses
  %niter111 = phi i64 [ 0, %.lr.ph.new ], [ %niter111.next.1, %bb.g ]
  %i.cz = shl nuw nsw i64 %.0.i37.i1119, 6
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.db, i32 0, i32 3, i32 1)
  %i.dc = shl nuw nsw i64 %.0.i37.i1119, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dc
  %i.de = load <8 x i64>, ptr %i.da, align 64, !tbaa !15 ; 2 uses
  %i.df = load <8 x i64>, ptr %i.dd, align 1, !tbaa !15
  %i.dg = xor <8 x i64> %i.df, %i.de              ; 2 uses
  %i.dh = lshr <8 x i64> %i.dg, splat (i64 32)
  %i.di = and <8 x i64> %i.dg, splat (i64 4294967295)
  %i.dj = mul nuw <8 x i64> %i.di, %i.dh
  %i.dk = shufflevector <8 x i64> %i.de, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.dl = add <8 x i64> %i.cy, %i.dk
  %i.dm = add <8 x i64> %i.dl, %i.dj              ; 2 uses
  store <8 x i64> %i.dm, ptr %0, align 64, !tbaa !15
  %i.dn = or disjoint i64 %.0.i37.i1119, 1        ; 2 uses
  %i.do = shl nuw nsw i64 %i.dn, 6
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dq, i32 0, i32 3, i32 1)
  %i.dr = shl nuw nsw i64 %i.dn, 3
  %i.ds = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dr
  %i.dt = load <8 x i64>, ptr %i.dp, align 64, !tbaa !15 ; 2 uses
  %i.du = load <8 x i64>, ptr %i.ds, align 1, !tbaa !15
  %i.dv = xor <8 x i64> %i.du, %i.dt              ; 2 uses
  %i.dw = lshr <8 x i64> %i.dv, splat (i64 32)
  %i.dx = and <8 x i64> %i.dv, splat (i64 4294967295)
  %i.dy = mul nuw <8 x i64> %i.dx, %i.dw
  %i.dz = shufflevector <8 x i64> %i.dt, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ea = add <8 x i64> %i.dm, %i.dz
  %i.eb = add <8 x i64> %i.ea, %i.dy              ; 3 uses
  store <8 x i64> %i.eb, ptr %0, align 64, !tbaa !15
  %i.ec = add nuw i64 %.0.i37.i1119, 2            ; 2 uses
  %niter111.next.1 = add i64 %niter111, 2         ; 2 uses
  %niter111.ncmp.1 = icmp eq i64 %niter111.next.1, %unroll_iter110
  br i1 %niter111.ncmp.1, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa, label %bb.g, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15:    ; preds = %bb.f
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ed, i32 0, i32 3, i32 1)
  %i.ee = load <8 x i64>, ptr %i.y, align 64, !tbaa !15 ; 2 uses
  %i.ef = load <8 x i64>, ptr %i.al, align 1, !tbaa !15
  %i.eg = xor <8 x i64> %i.ef, %i.ee              ; 2 uses
  %i.eh = lshr <8 x i64> %i.eg, splat (i64 32)
  %i.ei = and <8 x i64> %i.eg, splat (i64 4294967295)
  %i.ej = mul nuw <8 x i64> %i.ei, %i.eh
  %i.ek = shufflevector <8 x i64> %i.ee, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.el = add <8 x i64> %.promoted21, %i.ek
  %i.em = add <8 x i64> %i.el, %i.ej              ; 2 uses
  store <8 x i64> %i.em, ptr %0, align 64, !tbaa !15
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull %i.eo, i32 0, i32 3, i32 1)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.eq = load <8 x i64>, ptr %i.en, align 64, !tbaa !15 ; 2 uses
  %i.er = load <8 x i64>, ptr %i.ep, align 1, !tbaa !15
  %i.es = xor <8 x i64> %i.er, %i.eq              ; 2 uses
  %i.et = lshr <8 x i64> %i.es, splat (i64 32)
  %i.eu = and <8 x i64> %i.es, splat (i64 4294967295)
  %i.ev = mul nuw <8 x i64> %i.eu, %i.et
  %i.ew = shufflevector <8 x i64> %i.eq, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ex = add <8 x i64> %i.em, %i.ew
  %i.ey = add <8 x i64> %i.ex, %i.ev              ; 2 uses
  store <8 x i64> %i.ey, ptr %0, align 64, !tbaa !15
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fa, i32 0, i32 3, i32 1)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.fc = load <8 x i64>, ptr %i.ez, align 64, !tbaa !15 ; 2 uses
  %i.fd = load <8 x i64>, ptr %i.fb, align 1, !tbaa !15
  %i.fe = xor <8 x i64> %i.fd, %i.fc              ; 2 uses
  %i.ff = lshr <8 x i64> %i.fe, splat (i64 32)
  %i.fg = and <8 x i64> %i.fe, splat (i64 4294967295)
  %i.fh = mul nuw <8 x i64> %i.fg, %i.ff
  %i.fi = shufflevector <8 x i64> %i.fc, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.fj = add <8 x i64> %i.ey, %i.fi
  %i.fk = add <8 x i64> %i.fj, %i.fh              ; 2 uses
  store <8 x i64> %i.fk, ptr %0, align 64, !tbaa !15
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fm, i32 0, i32 3, i32 1)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.fo = load <8 x i64>, ptr %i.fl, align 64, !tbaa !15 ; 2 uses
  %i.fp = load <8 x i64>, ptr %i.fn, align 1, !tbaa !15
  %i.fq = xor <8 x i64> %i.fp, %i.fo              ; 2 uses
  %i.fr = lshr <8 x i64> %i.fq, splat (i64 32)
  %i.fs = and <8 x i64> %i.fq, splat (i64 4294967295)
  %i.ft = mul nuw <8 x i64> %i.fs, %i.fr
  %i.fu = shufflevector <8 x i64> %i.fo, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.fv = add <8 x i64> %i.fk, %i.fu
  %i.fw = add <8 x i64> %i.fv, %i.ft
  store <8 x i64> %i.fw, ptr %0, align 64, !tbaa !15
  %i.fx = add i64 %i.ah, 4
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod108.not = icmp eq i64 %xtraiter105, 0
  br i1 %lcmp.mod108.not, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa, %.lr.ph
  %.epil.init107 = phi <8 x i64> [ %i.ct, %.lr.ph ], [ %i.eb, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ]
  %.0.i37.i1119.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ec, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod109 = trunc i64 %i.cg to i1
  tail call void @llvm.assume(i1 %lcmp.mod109)
  %i.fy = shl nuw nsw i64 %.0.i37.i1119.epil.init, 6
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.fy ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ga, i32 0, i32 3, i32 1)
  %i.gb = shl nuw nsw i64 %.0.i37.i1119.epil.init, 3
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.gb
  %i.gd = load <8 x i64>, ptr %i.fz, align 64, !tbaa !15 ; 2 uses
  %i.ge = load <8 x i64>, ptr %i.gc, align 1, !tbaa !15
  %i.gf = xor <8 x i64> %i.ge, %i.gd              ; 2 uses
  %i.gg = lshr <8 x i64> %i.gf, splat (i64 32)
  %i.gh = and <8 x i64> %i.gf, splat (i64 4294967295)
  %i.gi = mul nuw <8 x i64> %i.gh, %i.gg
  %i.gj = shufflevector <8 x i64> %i.gd, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.gk = add <8 x i64> %.epil.init107, %i.gj
  %i.gl = add <8 x i64> %i.gk, %i.gi
  store <8 x i64> %i.gl, ptr %0, align 64, !tbaa !15
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16: ; preds = %.epil.preheader, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15
  %storemerge.i13 = phi i64 [ %i.fx, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15 ], [ 0, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10 ], [ %i.cg, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ], [ %i.cg, %.epil.preheader ]
  store i64 %storemerge.i13, ptr %i.ab, align 8, !tbaa !26
  store i32 0, ptr %i.l, align 64, !tbaa !51
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16
  %i.gm = phi i64 [ %i.ad, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16 ], [ %.pre, %._crit_edge ] ; 18 uses
  %.0125.i = phi ptr [ %i.aa, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16 ], [ %1, %._crit_edge ] ; 8 uses
  %i.gn = icmp ult ptr %.0125.i, %i.c
  tail call void @llvm.assume(i1 %i.gn)
  %i.go = ptrtoint ptr %i.c to i64                ; 3 uses
  %i.gp = ptrtoint ptr %.0125.i to i64            ; 2 uses
  %i.gq = sub i64 %i.go, %i.gp                    ; 3 uses
  %i.gr = shl i64 %i.gm, 6                        ; 2 uses
  %i.gs = icmp ugt i64 %i.gq, %i.gr
  br i1 %i.gs, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.gt = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.gu, %i.gp
  %i.gw = lshr i64 %i.gv, 6                       ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !52 ; 5 uses
  %i.gz = icmp uge i64 %i.gm, %i.gy
  tail call void @llvm.assume(i1 %i.gz)
  %i.ha = sub nuw i64 %i.gm, %i.gy                ; 6 uses
  %i.hb = icmp ule i64 %i.ha, %i.gw
  tail call void @llvm.assume(i1 %i.hb)
  %i.hc = shl i64 %i.gy, 3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.hc ; 3 uses
  %.not46 = icmp eq i64 %i.gm, %i.gy
  %.pre60 = load <8 x i64>, ptr %0, align 64, !tbaa !15 ; 3 uses
  br i1 %.not46, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %.neg155 = add i64 %i.gy, 1
  %xtraiter129 = and i64 %i.ha, 1
  %i.he = icmp eq i64 %i.gm, %.neg155
  br i1 %i.he, label %.epil.preheader128, label %.lr.ph33.new

.lr.ph33.new:                                     ; preds = %.lr.ph33
  %unroll_iter135 = and i64 %i.ha, -2
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph33.new
  %i.hf = phi <8 x i64> [ %.pre60, %.lr.ph33.new ], [ %i.ii, %bb.j ]
  %.0.i432 = phi i64 [ 0, %.lr.ph33.new ], [ %i.ij, %bb.j ] ; 4 uses
  %niter136 = phi i64 [ 0, %.lr.ph33.new ], [ %niter136.next.1, %bb.j ]
  %i.hg = shl i64 %.0.i432, 6
  %i.hh = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.hg ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.hi, i32 0, i32 3, i32 1)
  %i.hj = shl i64 %.0.i432, 3
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hj
  %i.hl = load <8 x i64>, ptr %i.hh, align 1, !tbaa !15 ; 2 uses
  %i.hm = load <8 x i64>, ptr %i.hk, align 1, !tbaa !15
  %i.hn = xor <8 x i64> %i.hm, %i.hl              ; 2 uses
  %i.ho = lshr <8 x i64> %i.hn, splat (i64 32)
  %i.hp = and <8 x i64> %i.hn, splat (i64 4294967295)
  %i.hq = mul nuw <8 x i64> %i.hp, %i.ho
  %i.hr = shufflevector <8 x i64> %i.hl, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.hs = add <8 x i64> %i.hf, %i.hr
  %i.ht = add <8 x i64> %i.hs, %i.hq              ; 2 uses
  store <8 x i64> %i.ht, ptr %0, align 64, !tbaa !15
  %i.hu = or disjoint i64 %.0.i432, 1             ; 2 uses
  %i.hv = shl i64 %i.hu, 6
  %i.hw = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.hv ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.hx, i32 0, i32 3, i32 1)
  %i.hy = shl i64 %i.hu, 3
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hy
  %i.ia = load <8 x i64>, ptr %i.hw, align 1, !tbaa !15 ; 2 uses
  %i.ib = load <8 x i64>, ptr %i.hz, align 1, !tbaa !15
  %i.ic = xor <8 x i64> %i.ib, %i.ia              ; 2 uses
  %i.id = lshr <8 x i64> %i.ic, splat (i64 32)
  %i.ie = and <8 x i64> %i.ic, splat (i64 4294967295)
  %i.if = mul nuw <8 x i64> %i.ie, %i.id
  %i.ig = shufflevector <8 x i64> %i.ia, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ih = add <8 x i64> %i.ht, %i.ig
  %i.ii = add <8 x i64> %i.ih, %i.if              ; 4 uses
  store <8 x i64> %i.ii, ptr %0, align 64, !tbaa !15
  %i.ij = add nuw i64 %.0.i432, 2                 ; 2 uses
  %niter136.next.1 = add i64 %niter136, 2         ; 2 uses
  %niter136.ncmp.1 = icmp eq i64 %niter136.next.1, %unroll_iter135
  br i1 %niter136.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, label %bb.j, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod132.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod132.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5, label %.epil.preheader128

.epil.preheader128:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, %.lr.ph33
  %.epil.init131 = phi <8 x i64> [ %.pre60, %.lr.ph33 ], [ %i.ii, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ]
  %.0.i432.epil.init = phi i64 [ 0, %.lr.ph33 ], [ %i.ij, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod134 = trunc i64 %i.ha to i1
  tail call void @llvm.assume(i1 %lcmp.mod134)
  %i.ik = shl i64 %.0.i432.epil.init, 6
  %i.il = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.ik ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.im, i32 0, i32 3, i32 1)
  %i.in = shl i64 %.0.i432.epil.init, 3
  %i.io = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.in
  %i.ip = load <8 x i64>, ptr %i.il, align 1, !tbaa !15 ; 2 uses
  %i.iq = load <8 x i64>, ptr %i.io, align 1, !tbaa !15
  %i.ir = xor <8 x i64> %i.iq, %i.ip              ; 2 uses
  %i.is = lshr <8 x i64> %i.ir, splat (i64 32)
  %i.it = and <8 x i64> %i.ir, splat (i64 4294967295)
  %i.iu = mul nuw <8 x i64> %i.it, %i.is
  %i.iv = shufflevector <8 x i64> %i.ip, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.iw = add <8 x i64> %.epil.init131, %i.iv
  %i.ix = add <8 x i64> %i.iw, %i.iu              ; 2 uses
  store <8 x i64> %i.ix, ptr %0, align 64, !tbaa !15
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5:       ; preds = %.epil.preheader128, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, %bb.i
  %i.iy = phi <8 x i64> [ %.pre60, %bb.i ], [ %i.ii, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ], [ %i.ix, %.epil.preheader128 ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ja = load i64, ptr %i.iz, align 32, !tbaa !47
  %i.jb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ja ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.jc = lshr <8 x i64> %i.iy, splat (i64 47)
  %i.jd = load <16 x i32>, ptr %i.jb, align 1, !tbaa !15
  %i.je = bitcast <8 x i64> %i.iy to <16 x i32>
  %i.jf = bitcast <8 x i64> %i.jc to <16 x i32>
  %i.jg = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.jd, <16 x i32> %i.je, <16 x i32> %i.jf, i32 150) ; 2 uses
  %i.jh = bitcast <16 x i32> %i.jg to <8 x i64>
  %i.ji = lshr <8 x i64> %i.jh, splat (i64 32)
  %i.jj = bitcast <16 x i32> %i.jg to <8 x i64>
  %i.jk = and <8 x i64> %i.jj, splat (i64 4294967295)
  %i.jl = mul nuw <8 x i64> %i.jk, splat (i64 2654435761)
  %i.jm = mul <8 x i64> %i.ji, splat (i64 -7046029290881679360)
  %i.jn = add <8 x i64> %i.jl, %i.jm              ; 3 uses
  store <8 x i64> %i.jn, ptr %0, align 64, !tbaa !15
  store i64 0, ptr %i.gx, align 8, !tbaa !52
  %i.jo = shl nuw i64 %i.ha, 6
  %i.jp = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.jo ; 2 uses
  %i.jq = sub nuw nsw i64 %i.gw, %i.ha            ; 3 uses
  %.not133.i38 = icmp ult i64 %i.jq, %i.gm
  br i1 %.not133.i38, label %.preheader, label %.preheader17.lr.ph

.preheader17.lr.ph:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5
  %.not47 = icmp eq i64 %i.gm, 0
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %xtraiter138 = and i64 %i.gm, 1
  %i.jr = icmp eq i64 %i.gm, 1
  %unroll_iter144 = and i64 %i.gm, -2
  %lcmp.mod141.not = icmp eq i64 %xtraiter138, 0
  %lcmp.mod143 = trunc i64 %i.gm to i1
  br label %.preheader17

.preheader17:                                     ; preds = %.preheader17.lr.ph, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3
  %.promoted37 = phi <8 x i64> [ %i.jn, %.preheader17.lr.ph ], [ %i.ly, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 3 uses
  %.0124.i40 = phi i64 [ %i.jq, %.preheader17.lr.ph ], [ %i.ma, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ]
  %.1126.i39 = phi ptr [ %i.jp, %.preheader17.lr.ph ], [ %i.lz, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 4 uses
  br i1 %.not47, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3, label %.lr.ph36

.lr.ph36:                                         ; preds = %.preheader17
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  br i1 %i.jr, label %.epil.preheader137, label %.lr.ph36.new

.preheader:                                       ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5
  %.promoted44 = phi <8 x i64> [ %i.jn, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.ly, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 2 uses
  %.1126.i.lcssa = phi ptr [ %i.jp, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.lz, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 4 uses
  %.0124.i.lcssa = phi i64 [ %i.jq, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.ma, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 7 uses
  %.not48 = icmp eq i64 %.0124.i.lcssa, 0
  br i1 %.not48, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit, label %.lr.ph43

.lr.ph43:                                         ; preds = %.preheader
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %xtraiter147 = and i64 %.0124.i.lcssa, 1
  %i.js = icmp eq i64 %.0124.i.lcssa, 1
  br i1 %i.js, label %.epil.preheader146, label %.lr.ph43.new

.lr.ph43.new:                                     ; preds = %.lr.ph43
  %unroll_iter152 = and i64 %.0124.i.lcssa, -2
  br label %bb.k

.lr.ph36.new:                                     ; preds = %.lr.ph36, %.lr.ph36.new
  %i.jt = phi <8 x i64> [ %i.kw, %.lr.ph36.new ], [ %.promoted37, %.lr.ph36 ]
  %.0.i235 = phi i64 [ %i.kx, %.lr.ph36.new ], [ 0, %.lr.ph36 ] ; 4 uses
  %niter145 = phi i64 [ %niter145.next.1, %.lr.ph36.new ], [ 0, %.lr.ph36 ]
  %i.ju = shl i64 %.0.i235, 6
  %i.jv = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.ju ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.jw, i32 0, i32 3, i32 1)
end_hunk_2
begin_hunk_3_@ROCKSDB_XXH3_128bits_update:bb.a
  %i.kc = lshr <8 x i64> %i.kb, splat (i64 32)
  %i.kd = and <8 x i64> %i.kb, splat (i64 4294967295)
  %i.ke = mul nuw <8 x i64> %i.kd, %i.kc
  %i.kf = shufflevector <8 x i64> %i.jz, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.kg = add <8 x i64> %i.jt, %i.kf
  %i.kh = add <8 x i64> %i.kg, %i.ke              ; 2 uses
  store <8 x i64> %i.kh, ptr %0, align 64, !tbaa !15
  %i.ki = or disjoint i64 %.0.i235, 1             ; 2 uses
  %i.kj = shl i64 %i.ki, 6
  %i.kk = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.kj ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.kl, i32 0, i32 3, i32 1)
  %i.km = shl i64 %i.ki, 3
  %i.kn = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.km
  %i.ko = load <8 x i64>, ptr %i.kk, align 1, !tbaa !15 ; 2 uses
  %i.kp = load <8 x i64>, ptr %i.kn, align 1, !tbaa !15
  %i.kq = xor <8 x i64> %i.kp, %i.ko              ; 2 uses
  %i.kr = lshr <8 x i64> %i.kq, splat (i64 32)
  %i.ks = and <8 x i64> %i.kq, splat (i64 4294967295)
  %i.kt = mul nuw <8 x i64> %i.ks, %i.kr
  %i.ku = shufflevector <8 x i64> %i.ko, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.kv = add <8 x i64> %i.kh, %i.ku
  %i.kw = add <8 x i64> %i.kv, %i.kt              ; 4 uses
  store <8 x i64> %i.kw, ptr %0, align 64, !tbaa !15
  %i.kx = add nuw i64 %.0.i235, 2                 ; 2 uses
  %niter145.next.1 = add nuw i64 %niter145, 2     ; 2 uses
  %niter145.ncmp.1 = icmp eq i64 %niter145.next.1, %unroll_iter144
  br i1 %niter145.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa, label %.lr.ph36.new, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa: ; preds = %.lr.ph36.new
  br i1 %lcmp.mod141.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3, label %.epil.preheader137

.epil.preheader137:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa, %.lr.ph36
  %.epil.init140 = phi <8 x i64> [ %.promoted37, %.lr.ph36 ], [ %i.kw, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ]
  %.0.i235.epil.init = phi i64 [ 0, %.lr.ph36 ], [ %i.kx, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod143)
  %i.ky = shl i64 %.0.i235.epil.init, 6
  %i.kz = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.ky ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.la, i32 0, i32 3, i32 1)
  %i.lb = shl i64 %.0.i235.epil.init, 3
  %i.lc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.lb
  %i.ld = load <8 x i64>, ptr %i.kz, align 1, !tbaa !15 ; 2 uses
  %i.le = load <8 x i64>, ptr %i.lc, align 1, !tbaa !15
  %i.lf = xor <8 x i64> %i.le, %i.ld              ; 2 uses
  %i.lg = lshr <8 x i64> %i.lf, splat (i64 32)
  %i.lh = and <8 x i64> %i.lf, splat (i64 4294967295)
  %i.li = mul nuw <8 x i64> %i.lh, %i.lg
  %i.lj = shufflevector <8 x i64> %i.ld, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.lk = add <8 x i64> %.epil.init140, %i.lj
  %i.ll = add <8 x i64> %i.lk, %i.li              ; 2 uses
  store <8 x i64> %i.ll, ptr %0, align 64, !tbaa !15
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3:       ; preds = %.epil.preheader137, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa, %.preheader17
  %i.lm = phi <8 x i64> [ %.promoted37, %.preheader17 ], [ %i.kw, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ], [ %i.ll, %.epil.preheader137 ] ; 2 uses
  %i.ln = lshr <8 x i64> %i.lm, splat (i64 47)
  %i.lo = load <16 x i32>, ptr %i.jb, align 1, !tbaa !15
  %i.lp = bitcast <8 x i64> %i.lm to <16 x i32>
  %i.lq = bitcast <8 x i64> %i.ln to <16 x i32>
  %i.lr = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.lo, <16 x i32> %i.lp, <16 x i32> %i.lq, i32 150) ; 2 uses
  %i.ls = bitcast <16 x i32> %i.lr to <8 x i64>
  %i.lt = lshr <8 x i64> %i.ls, splat (i64 32)
  %i.lu = bitcast <16 x i32> %i.lr to <8 x i64>
  %i.lv = and <8 x i64> %i.lu, splat (i64 4294967295)
  %i.lw = mul nuw <8 x i64> %i.lv, splat (i64 2654435761)
  %i.lx = mul <8 x i64> %i.lt, splat (i64 -7046029290881679360)
  %i.ly = add <8 x i64> %i.lw, %i.lx              ; 3 uses
  store <8 x i64> %i.ly, ptr %0, align 64, !tbaa !15
  %i.lz = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.gr ; 2 uses
  %i.ma = sub nuw nsw i64 %.0124.i40, %i.gm       ; 3 uses
  %.not133.i = icmp ult i64 %i.ma, %i.gm
  br i1 %.not133.i, label %.preheader, label %.preheader17, !llvm.loop !53

bb.k:                                             ; preds = %bb.k, %.lr.ph43.new
  %i.mb = phi <8 x i64> [ %.promoted44, %.lr.ph43.new ], [ %i.ne, %bb.k ]
  %.0.i42 = phi i64 [ 0, %.lr.ph43.new ], [ %i.nf, %bb.k ] ; 4 uses
  %niter153 = phi i64 [ 0, %.lr.ph43.new ], [ %niter153.next.1, %bb.k ]
  %i.mc = shl i64 %.0.i42, 6
  %i.md = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.mc ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.me, i32 0, i32 3, i32 1)
  %i.mf = shl i64 %.0.i42, 3
  %i.mg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.mf
  %i.mh = load <8 x i64>, ptr %i.md, align 1, !tbaa !15 ; 2 uses
  %i.mi = load <8 x i64>, ptr %i.mg, align 1, !tbaa !15
  %i.mj = xor <8 x i64> %i.mi, %i.mh              ; 2 uses
  %i.mk = lshr <8 x i64> %i.mj, splat (i64 32)
  %i.ml = and <8 x i64> %i.mj, splat (i64 4294967295)
  %i.mm = mul nuw <8 x i64> %i.ml, %i.mk
  %i.mn = shufflevector <8 x i64> %i.mh, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.mo = add <8 x i64> %i.mb, %i.mn
  %i.mp = add <8 x i64> %i.mo, %i.mm              ; 2 uses
  store <8 x i64> %i.mp, ptr %0, align 64, !tbaa !15
  %i.mq = or disjoint i64 %.0.i42, 1              ; 2 uses
  %i.mr = shl i64 %i.mq, 6
  %i.ms = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.mr ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.mt, i32 0, i32 3, i32 1)
  %i.mu = shl i64 %i.mq, 3
  %i.mv = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.mu
  %i.mw = load <8 x i64>, ptr %i.ms, align 1, !tbaa !15 ; 2 uses
  %i.mx = load <8 x i64>, ptr %i.mv, align 1, !tbaa !15
  %i.my = xor <8 x i64> %i.mx, %i.mw              ; 2 uses
  %i.mz = lshr <8 x i64> %i.my, splat (i64 32)
  %i.na = and <8 x i64> %i.my, splat (i64 4294967295)
  %i.nb = mul nuw <8 x i64> %i.na, %i.mz
  %i.nc = shufflevector <8 x i64> %i.mw, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.nd = add <8 x i64> %i.mp, %i.nc
  %i.ne = add <8 x i64> %i.nd, %i.nb              ; 3 uses
  store <8 x i64> %i.ne, ptr %0, align 64, !tbaa !15
  %i.nf = add nuw i64 %.0.i42, 2                  ; 2 uses
  %niter153.next.1 = add nuw i64 %niter153, 2     ; 2 uses
  %niter153.ncmp.1 = icmp eq i64 %niter153.next.1, %unroll_iter152
  br i1 %niter153.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod150.not = icmp eq i64 %xtraiter147, 0
  br i1 %lcmp.mod150.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit, label %.epil.preheader146

.epil.preheader146:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, %.lr.ph43
  %.epil.init149 = phi <8 x i64> [ %.promoted44, %.lr.ph43 ], [ %i.ne, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa ]
  %.0.i42.epil.init = phi i64 [ 0, %.lr.ph43 ], [ %i.nf, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod151 = trunc i64 %.0124.i.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod151)
  %i.ng = shl i64 %.0.i42.epil.init, 6
  %i.nh = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.ng ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ni, i32 0, i32 3, i32 1)
  %i.nj = shl i64 %.0.i42.epil.init, 3
  %i.nk = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nj
  %i.nl = load <8 x i64>, ptr %i.nh, align 1, !tbaa !15 ; 2 uses
  %i.nm = load <8 x i64>, ptr %i.nk, align 1, !tbaa !15
  %i.nn = xor <8 x i64> %i.nm, %i.nl              ; 2 uses
  %i.no = lshr <8 x i64> %i.nn, splat (i64 32)
  %i.np = and <8 x i64> %i.nn, splat (i64 4294967295)
  %i.nq = mul nuw <8 x i64> %i.np, %i.no
  %i.nr = shufflevector <8 x i64> %i.nl, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ns = add <8 x i64> %.epil.init149, %i.nr
  %i.nt = add <8 x i64> %i.ns, %i.nq
  store <8 x i64> %i.nt, ptr %0, align 64, !tbaa !15
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit:        ; preds = %.epil.preheader146, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, %.preheader
  %i.nu = shl nuw i64 %.0124.i.lcssa, 6
  %i.nv = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.nu ; 4 uses
  %i.nw = icmp ult ptr %i.nv, %i.c
  tail call void @llvm.assume(i1 %i.nw)
  store i64 %.0124.i.lcssa, ptr %i.gx, align 8, !tbaa !52
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ny = getelementptr inbounds i8, ptr %i.nv, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.nx, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.ny, i64 64, i1 false)
  %i.nz = ptrtoint ptr %i.nv to i64
  %i.oa = sub i64 %i.go, %i.nz                    ; 2 uses
  %i.ob = icmp slt i64 %i.oa, 65
  tail call void @llvm.assume(i1 %i.ob)
  br label %bb.q

bb.l:                                             ; preds = %bb.h
  %i.oc = icmp sgt i64 %i.gq, 256
  br i1 %i.oc, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.od = getelementptr inbounds i8, ptr %i.c, i64 -256
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.og = load i64, ptr %i.of, align 32, !tbaa !47
  %i.oh = icmp ugt i64 %i.gm, 3
  tail call void @llvm.assume(i1 %i.oh)
  %.promoted30 = load i64, ptr %i.oe, align 8, !tbaa !26
  %i.oi = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.og
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %invariant.op = sub nuw i64 %i.gm, 1
  br label %bb.n

bb.n:                                             ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, %bb.m
  %storemerge.i731 = phi i64 [ %.promoted30, %bb.m ], [ %storemerge.i7, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit ] ; 6 uses
  %.2.i = phi ptr [ %.0125.i, %bb.m ], [ %i.ul, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit ] ; 14 uses
  %i.oj = icmp ult i64 %storemerge.i731, %i.gm
  tail call void @llvm.assume(i1 %i.oj)
  %i.ok = sub nuw i64 %i.gm, %storemerge.i731     ; 7 uses
  %.not.i6 = icmp ugt i64 %i.ok, 4
  %i.ol = shl i64 %storemerge.i731, 3
  %i.om = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ol ; 7 uses
  %.promoted28 = load <8 x i64>, ptr %0, align 64, !tbaa !15 ; 3 uses
  br i1 %.not.i6, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i, label %.preheader84.preheader

.preheader84.preheader:                           ; preds = %bb.n
  %xtraiter112 = and i64 %i.ok, 1
  %i.on = icmp eq i64 %storemerge.i731, %invariant.op
  br i1 %i.on, label %.preheader84.epil.preheader, label %.preheader84.preheader.new

.preheader84.preheader.new:                       ; preds = %.preheader84.preheader
  %unroll_iter118 = and i64 %i.ok, 6
  br label %.preheader84

.preheader84:                                     ; preds = %.preheader84, %.preheader84.preheader.new
  %i.oo = phi <8 x i64> [ %.promoted28, %.preheader84.preheader.new ], [ %i.pr, %.preheader84 ]
  %.0.i39.i23 = phi i64 [ 0, %.preheader84.preheader.new ], [ %i.ps, %.preheader84 ] ; 4 uses
  %niter119 = phi i64 [ 0, %.preheader84.preheader.new ], [ %niter119.next.1, %.preheader84 ]
  %i.op = shl nuw nsw i64 %.0.i39.i23, 6
  %i.oq = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.op ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.or, i32 0, i32 3, i32 1)
  %i.os = shl nuw nsw i64 %.0.i39.i23, 3
  %i.ot = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.os
  %i.ou = load <8 x i64>, ptr %i.oq, align 1, !tbaa !15 ; 2 uses
  %i.ov = load <8 x i64>, ptr %i.ot, align 1, !tbaa !15
  %i.ow = xor <8 x i64> %i.ov, %i.ou              ; 2 uses
  %i.ox = lshr <8 x i64> %i.ow, splat (i64 32)
  %i.oy = and <8 x i64> %i.ow, splat (i64 4294967295)
  %i.oz = mul nuw <8 x i64> %i.oy, %i.ox
  %i.pa = shufflevector <8 x i64> %i.ou, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.pb = add <8 x i64> %i.oo, %i.pa
  %i.pc = add <8 x i64> %i.pb, %i.oz              ; 2 uses
  store <8 x i64> %i.pc, ptr %0, align 64, !tbaa !15
  %i.pd = or disjoint i64 %.0.i39.i23, 1          ; 2 uses
  %i.pe = shl nuw nsw i64 %i.pd, 6
  %i.pf = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.pe ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.pg, i32 0, i32 3, i32 1)
  %i.ph = shl nuw nsw i64 %i.pd, 3
  %i.pi = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.ph
  %i.pj = load <8 x i64>, ptr %i.pf, align 1, !tbaa !15 ; 2 uses
  %i.pk = load <8 x i64>, ptr %i.pi, align 1, !tbaa !15
  %i.pl = xor <8 x i64> %i.pk, %i.pj              ; 2 uses
  %i.pm = lshr <8 x i64> %i.pl, splat (i64 32)
  %i.pn = and <8 x i64> %i.pl, splat (i64 4294967295)
  %i.po = mul nuw <8 x i64> %i.pn, %i.pm
  %i.pp = shufflevector <8 x i64> %i.pj, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.pq = add <8 x i64> %i.pc, %i.pp
  %i.pr = add <8 x i64> %i.pq, %i.po              ; 4 uses
  store <8 x i64> %i.pr, ptr %0, align 64, !tbaa !15
  %i.ps = add nuw i64 %.0.i39.i23, 2              ; 2 uses
  %niter119.next.1 = add i64 %niter119, 2         ; 2 uses
  %niter119.ncmp.1 = icmp eq i64 %niter119.next.1, %unroll_iter118
  br i1 %niter119.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa, label %.preheader84, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa: ; preds = %.preheader84
  %lcmp.mod115.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod115.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i, label %.preheader84.epil.preheader

.preheader84.epil.preheader:                      ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa, %.preheader84.preheader
  %.epil.init114 = phi <8 x i64> [ %.promoted28, %.preheader84.preheader ], [ %i.pr, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa ]
  %.0.i39.i23.epil.init = phi i64 [ 0, %.preheader84.preheader ], [ %i.ps, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa ] ; 2 uses
  %lcmp.mod117 = trunc i64 %i.ok to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.pt = shl nuw nsw i64 %.0.i39.i23.epil.init, 6
  %i.pu = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.pt ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.pv, i32 0, i32 3, i32 1)
  %i.pw = shl nuw nsw i64 %.0.i39.i23.epil.init, 3
  %i.px = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.pw
  %i.py = load <8 x i64>, ptr %i.pu, align 1, !tbaa !15 ; 2 uses
  %i.pz = load <8 x i64>, ptr %i.px, align 1, !tbaa !15
  %i.qa = xor <8 x i64> %i.pz, %i.py              ; 2 uses
  %i.qb = lshr <8 x i64> %i.qa, splat (i64 32)
  %i.qc = and <8 x i64> %i.qa, splat (i64 4294967295)
  %i.qd = mul nuw <8 x i64> %i.qc, %i.qb
  %i.qe = shufflevector <8 x i64> %i.py, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.qf = add <8 x i64> %.epil.init114, %i.qe
  %i.qg = add <8 x i64> %i.qf, %i.qd              ; 2 uses
  store <8 x i64> %i.qg, ptr %0, align 64, !tbaa !15
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i:    ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa, %.preheader84.epil.preheader
  %.lcssa100 = phi <8 x i64> [ %i.pr, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa ], [ %i.qg, %.preheader84.epil.preheader ] ; 2 uses
  %i.qh = sub nsw i64 4, %i.ok                    ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.qi = lshr <8 x i64> %.lcssa100, splat (i64 47)
  %i.qj = load <16 x i32>, ptr %i.oi, align 1, !tbaa !15
  %i.qk = bitcast <8 x i64> %.lcssa100 to <16 x i32>
  %i.ql = bitcast <8 x i64> %i.qi to <16 x i32>
  %i.qm = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.qj, <16 x i32> %i.qk, <16 x i32> %i.ql, i32 150) ; 2 uses
  %i.qn = bitcast <16 x i32> %i.qm to <8 x i64>
  %i.qo = lshr <8 x i64> %i.qn, splat (i64 32)
  %i.qp = bitcast <16 x i32> %i.qm to <8 x i64>
  %i.qq = and <8 x i64> %i.qp, splat (i64 4294967295)
  %i.qr = mul nuw <8 x i64> %i.qq, splat (i64 2654435761)
  %i.qs = mul <8 x i64> %i.qo, splat (i64 -7046029290881679360)
  %i.qt = add <8 x i64> %i.qr, %i.qs              ; 3 uses
  store <8 x i64> %i.qt, ptr %0, align 64, !tbaa !15
  %i.qu = shl nuw nsw i64 %i.ok, 6
  %i.qv = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.qu ; 3 uses
  %.not45 = icmp eq i64 %i.ok, 4
  br i1 %.not45, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %reass.sub = sub i64 %storemerge.i731, %i.gm
  %xtraiter121 = and i64 %i.qh, 1
  %i.qw = icmp eq i64 %reass.sub, -3
  br i1 %i.qw, label %.epil.preheader120, label %.lr.ph26.new

.lr.ph26.new:                                     ; preds = %.lr.ph26
  %unroll_iter126 = and i64 %i.qh, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph26.new
  %i.qx = phi <8 x i64> [ %i.qt, %.lr.ph26.new ], [ %i.sa, %bb.o ]
  %.0.i37.i25 = phi i64 [ 0, %.lr.ph26.new ], [ %i.sb, %bb.o ] ; 4 uses
  %niter127 = phi i64 [ 0, %.lr.ph26.new ], [ %niter127.next.1, %bb.o ]
  %i.qy = shl nuw nsw i64 %.0.i37.i25, 6
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.qy ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ra, i32 0, i32 3, i32 1)
  %i.rb = shl nuw nsw i64 %.0.i37.i25, 3
  %i.rc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.rb
  %i.rd = load <8 x i64>, ptr %i.qz, align 1, !tbaa !15 ; 2 uses
  %i.re = load <8 x i64>, ptr %i.rc, align 1, !tbaa !15
  %i.rf = xor <8 x i64> %i.re, %i.rd              ; 2 uses
  %i.rg = lshr <8 x i64> %i.rf, splat (i64 32)
  %i.rh = and <8 x i64> %i.rf, splat (i64 4294967295)
  %i.ri = mul nuw <8 x i64> %i.rh, %i.rg
  %i.rj = shufflevector <8 x i64> %i.rd, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.rk = add <8 x i64> %i.qx, %i.rj
  %i.rl = add <8 x i64> %i.rk, %i.ri              ; 2 uses
  store <8 x i64> %i.rl, ptr %0, align 64, !tbaa !15
  %i.rm = or disjoint i64 %.0.i37.i25, 1          ; 2 uses
  %i.rn = shl nuw nsw i64 %i.rm, 6
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.rn ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.rp, i32 0, i32 3, i32 1)
  %i.rq = shl nuw nsw i64 %i.rm, 3
  %i.rr = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.rq
  %i.rs = load <8 x i64>, ptr %i.ro, align 1, !tbaa !15 ; 2 uses
  %i.rt = load <8 x i64>, ptr %i.rr, align 1, !tbaa !15
  %i.ru = xor <8 x i64> %i.rt, %i.rs              ; 2 uses
  %i.rv = lshr <8 x i64> %i.ru, splat (i64 32)
  %i.rw = and <8 x i64> %i.ru, splat (i64 4294967295)
  %i.rx = mul nuw <8 x i64> %i.rw, %i.rv
  %i.ry = shufflevector <8 x i64> %i.rs, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.rz = add <8 x i64> %i.rl, %i.ry
  %i.sa = add <8 x i64> %i.rz, %i.rx              ; 3 uses
  store <8 x i64> %i.sa, ptr %0, align 64, !tbaa !15
  %i.sb = add nuw i64 %.0.i37.i25, 2              ; 2 uses
  %niter127.next.1 = add i64 %niter127, 2         ; 2 uses
  %niter127.ncmp.1 = icmp eq i64 %niter127.next.1, %unroll_iter126
  br i1 %niter127.ncmp.1, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa, label %bb.o, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i:      ; preds = %bb.n
  %i.sc = getelementptr inbounds nuw i8, ptr %.2.i, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.sc, i32 0, i32 3, i32 1)
  %i.sd = load <8 x i64>, ptr %.2.i, align 1, !tbaa !15 ; 2 uses
  %i.se = load <8 x i64>, ptr %i.om, align 1, !tbaa !15
  %i.sf = xor <8 x i64> %i.se, %i.sd              ; 2 uses
  %i.sg = lshr <8 x i64> %i.sf, splat (i64 32)
  %i.sh = and <8 x i64> %i.sf, splat (i64 4294967295)
  %i.si = mul nuw <8 x i64> %i.sh, %i.sg
  %i.sj = shufflevector <8 x i64> %i.sd, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.sk = add <8 x i64> %.promoted28, %i.sj
  %i.sl = add <8 x i64> %i.sk, %i.si              ; 2 uses
  store <8 x i64> %i.sl, ptr %0, align 64, !tbaa !15
  %i.sm = getelementptr inbounds nuw i8, ptr %.2.i, i64 64
  %i.sn = getelementptr inbounds nuw i8, ptr %.2.i, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %i.sn, i32 0, i32 3, i32 1)
  %i.so = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.sp = load <8 x i64>, ptr %i.sm, align 1, !tbaa !15 ; 2 uses
  %i.sq = load <8 x i64>, ptr %i.so, align 1, !tbaa !15
  %i.sr = xor <8 x i64> %i.sq, %i.sp              ; 2 uses
  %i.ss = lshr <8 x i64> %i.sr, splat (i64 32)
  %i.st = and <8 x i64> %i.sr, splat (i64 4294967295)
  %i.su = mul nuw <8 x i64> %i.st, %i.ss
  %i.sv = shufflevector <8 x i64> %i.sp, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.sw = add <8 x i64> %i.sl, %i.sv
  %i.sx = add <8 x i64> %i.sw, %i.su              ; 2 uses
  store <8 x i64> %i.sx, ptr %0, align 64, !tbaa !15
  %i.sy = getelementptr inbounds nuw i8, ptr %.2.i, i64 128
  %i.sz = getelementptr inbounds nuw i8, ptr %.2.i, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull %i.sz, i32 0, i32 3, i32 1)
  %i.ta = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.tb = load <8 x i64>, ptr %i.sy, align 1, !tbaa !15 ; 2 uses
  %i.tc = load <8 x i64>, ptr %i.ta, align 1, !tbaa !15
  %i.td = xor <8 x i64> %i.tc, %i.tb              ; 2 uses
  %i.te = lshr <8 x i64> %i.td, splat (i64 32)
  %i.tf = and <8 x i64> %i.td, splat (i64 4294967295)
  %i.tg = mul nuw <8 x i64> %i.tf, %i.te
  %i.th = shufflevector <8 x i64> %i.tb, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ti = add <8 x i64> %i.sx, %i.th
  %i.tj = add <8 x i64> %i.ti, %i.tg              ; 2 uses
  store <8 x i64> %i.tj, ptr %0, align 64, !tbaa !15
  %i.tk = getelementptr inbounds nuw i8, ptr %.2.i, i64 192
  %i.tl = getelementptr inbounds nuw i8, ptr %.2.i, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull %i.tl, i32 0, i32 3, i32 1)
  %i.tm = getelementptr inbounds nuw i8, ptr %i.om, i64 24
  %i.tn = load <8 x i64>, ptr %i.tk, align 1, !tbaa !15 ; 2 uses
  %i.to = load <8 x i64>, ptr %i.tm, align 1, !tbaa !15
  %i.tp = xor <8 x i64> %i.to, %i.tn              ; 2 uses
  %i.tq = lshr <8 x i64> %i.tp, splat (i64 32)
  %i.tr = and <8 x i64> %i.tp, splat (i64 4294967295)
  %i.ts = mul nuw <8 x i64> %i.tr, %i.tq
  %i.tt = shufflevector <8 x i64> %i.tn, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.tu = add <8 x i64> %i.tj, %i.tt
  %i.tv = add <8 x i64> %i.tu, %i.ts
  store <8 x i64> %i.tv, ptr %0, align 64, !tbaa !15
  %i.tw = add i64 %storemerge.i731, 4
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa: ; preds = %bb.o
  %lcmp.mod124.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod124.not, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, label %.epil.preheader120

.epil.preheader120:                               ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa, %.lr.ph26
  %.epil.init123 = phi <8 x i64> [ %i.qt, %.lr.ph26 ], [ %i.sa, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa ]
  %.0.i37.i25.epil.init = phi i64 [ 0, %.lr.ph26 ], [ %i.sb, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod125 = trunc i64 %i.qh to i1
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.tx = shl nuw nsw i64 %.0.i37.i25.epil.init, 6
  %i.ty = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.tx ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.tz, i32 0, i32 3, i32 1)
  %i.ua = shl nuw nsw i64 %.0.i37.i25.epil.init, 3
  %i.ub = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ua
  %i.uc = load <8 x i64>, ptr %i.ty, align 1, !tbaa !15 ; 2 uses
  %i.ud = load <8 x i64>, ptr %i.ub, align 1, !tbaa !15
  %i.ue = xor <8 x i64> %i.ud, %i.uc              ; 2 uses
  %i.uf = lshr <8 x i64> %i.ue, splat (i64 32)
  %i.ug = and <8 x i64> %i.ue, splat (i64 4294967295)
  %i.uh = mul nuw <8 x i64> %i.ug, %i.uf
  %i.ui = shufflevector <8 x i64> %i.uc, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.uj = add <8 x i64> %.epil.init123, %i.ui
  %i.uk = add <8 x i64> %i.uj, %i.uh
  store <8 x i64> %i.uk, ptr %0, align 64, !tbaa !15
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit: ; preds = %.epil.preheader120, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i
  %storemerge.i7 = phi i64 [ %i.tw, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i ], [ 0, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i ], [ %i.qh, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit.loopexit.unr-lcssa ], [ %i.qh, %.epil.preheader120 ] ; 2 uses
  store i64 %storemerge.i7, ptr %i.oe, align 8, !tbaa !26
  %i.ul = getelementptr inbounds nuw i8, ptr %.2.i, i64 256 ; 4 uses
  %i.um = icmp ult ptr %i.ul, %i.od
  br i1 %i.um, label %bb.n, label %bb.p, !llvm.loop !54

bb.p:                                             ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.uo = getelementptr inbounds nuw i8, ptr %.2.i, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.un, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.uo, i64 64, i1 false)
  %.pre63 = ptrtoint ptr %i.ul to i64
  %.pre64 = sub i64 %i.go, %.pre63
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit
  %.pre-phi65 = phi i64 [ %.pre64, %bb.p ], [ %i.gq, %bb.l ], [ %i.oa, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit ] ; 3 uses
  %.3.i = phi ptr [ %i.ul, %bb.p ], [ %.0125.i, %bb.l ], [ %i.nv, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit ] ; 2 uses
  %i.up = icmp ult ptr %.3.i, %i.c
  tail call void @llvm.assume(i1 %i.up)
  %i.uq = icmp slt i64 %.pre-phi65, 257
  tail call void @llvm.assume(i1 %i.uq)
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.ur, ptr readonly align 1 %.3.i, i64 %.pre-phi65, i1 false)
  %i.us = trunc i64 %.pre-phi65 to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.d
  %storemerge.i = phi i32 [ %i.us, %bb.q ], [ %i.v, %bb.d ]
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
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = select i1 %i.d, ptr %i.e, ptr %i.c       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.h = load i64, ptr %i.g, align 16, !tbaa !50  ; 4 uses
  %i.i = icmp ugt i64 %i.h, 240
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load <8 x i64>, ptr %0, align 16 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.k = load i32, ptr %i.j, align 64, !tbaa !51  ; 6 uses
  %i.l = icmp ugt i32 %i.k, 63
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = add i32 %i.k, -1
  %i.n = lshr i32 %i.m, 6                         ; 4 uses
  %i.o = zext nneg i32 %i.n to i64                ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.q = load i64, ptr %i.p, align 8, !tbaa !52   ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.s = load i64, ptr %i.r, align 8, !tbaa !48   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.v = load i64, ptr %i.u, align 32, !tbaa !47  ; 3 uses
  %i.w = icmp uge i64 %i.s, %i.o
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp ult i64 %i.q, %i.s
  tail call void @llvm.assume(i1 %i.x)
  %i.y = sub nuw i64 %i.s, %i.q                   ; 7 uses
  %.not.i = icmp ugt i64 %i.y, %i.o
  %i.z = shl i64 %i.q, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.z ; 6 uses
  br i1 %.not.i, label %bb.d, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %.neg = add nuw i64 %i.q, 1
  %xtraiter = and i64 %i.y, 1
  %i.ab = icmp eq i64 %i.s, %.neg
  br i1 %i.ab, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.y, -2
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.0.i39.i55 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.bf, %.preheader ] ; 4 uses
  %.sroa.0.154 = phi <8 x i64> [ %.sroa.0.0.copyload, %.preheader.preheader.new ], [ %i.be, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.ac = shl i64 %.0.i39.i55, 6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ae, i32 0, i32 3, i32 1)
  %i.af = shl i64 %.0.i39.i55, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  %i.ah = load <8 x i64>, ptr %i.ad, align 1, !tbaa !15 ; 2 uses
  %i.ai = load <8 x i64>, ptr %i.ag, align 1, !tbaa !15
  %i.aj = xor <8 x i64> %i.ai, %i.ah              ; 2 uses
  %i.ak = lshr <8 x i64> %i.aj, splat (i64 32)
  %i.al = and <8 x i64> %i.aj, splat (i64 4294967295)
  %i.am = mul nuw <8 x i64> %i.al, %i.ak
  %i.an = shufflevector <8 x i64> %i.ah, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ao = add <8 x i64> %.sroa.0.154, %i.an
  %i.ap = add <8 x i64> %i.ao, %i.am
  %i.aq = or disjoint i64 %.0.i39.i55, 1          ; 2 uses
  %i.ar = shl i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.at, i32 0, i32 3, i32 1)
  %i.au = shl i64 %i.aq, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.au
  %i.aw = load <8 x i64>, ptr %i.as, align 1, !tbaa !15 ; 2 uses
  %i.ax = load <8 x i64>, ptr %i.av, align 1, !tbaa !15
  %i.ay = xor <8 x i64> %i.ax, %i.aw              ; 2 uses
  %i.az = lshr <8 x i64> %i.ay, splat (i64 32)
  %i.ba = and <8 x i64> %i.ay, splat (i64 4294967295)
  %i.bb = mul nuw <8 x i64> %i.ba, %i.az
  %i.bc = shufflevector <8 x i64> %i.aw, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.bd = add <8 x i64> %i.ap, %i.bc
  %i.be = add <8 x i64> %i.bd, %i.bb              ; 3 uses
  %i.bf = add nuw i64 %.0.i39.i55, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa, label %.preheader, !llvm.loop !41

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa, %.preheader.preheader
  %.0.i39.i55.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.bf, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa ] ; 2 uses
  %.sroa.0.154.epil.init = phi <8 x i64> [ %.sroa.0.0.copyload, %.preheader.preheader ], [ %i.be, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa ]
  %lcmp.mod88 = trunc i64 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod88)
  %i.bg = shl i64 %.0.i39.i55.epil.init, 6
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bi, i32 0, i32 3, i32 1)
  %i.bj = shl i64 %.0.i39.i55.epil.init, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bj
  %i.bl = load <8 x i64>, ptr %i.bh, align 1, !tbaa !15 ; 2 uses
  %i.bm = load <8 x i64>, ptr %i.bk, align 1, !tbaa !15
  %i.bn = xor <8 x i64> %i.bm, %i.bl              ; 2 uses
  %i.bo = lshr <8 x i64> %i.bn, splat (i64 32)
  %i.bp = and <8 x i64> %i.bn, splat (i64 4294967295)
  %i.bq = mul nuw <8 x i64> %i.bp, %i.bo
  %i.br = shufflevector <8 x i64> %i.bl, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.bs = add <8 x i64> %.sroa.0.154.epil.init, %i.br
  %i.bt = add <8 x i64> %i.bs, %i.bq
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i:    ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa, %.preheader.epil.preheader
  %.lcssa86 = phi <8 x i64> [ %i.be, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i.unr-lcssa ], [ %i.bt, %.preheader.epil.preheader ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v
  %i.bv = lshr <8 x i64> %.lcssa86, splat (i64 47)
  %i.bw = load <16 x i32>, ptr %i.bu, align 1, !tbaa !15
  %i.bx = bitcast <8 x i64> %.lcssa86 to <16 x i32>
  %i.by = bitcast <8 x i64> %i.bv to <16 x i32>
  %i.bz = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.bw, <16 x i32> %i.bx, <16 x i32> %i.by, i32 150) ; 2 uses
  %i.ca = bitcast <16 x i32> %i.bz to <8 x i64>
  %i.cb = lshr <8 x i64> %i.ca, splat (i64 32)
  %i.cc = bitcast <16 x i32> %i.bz to <8 x i64>
  %i.cd = and <8 x i64> %i.cc, splat (i64 4294967295)
  %i.ce = mul nuw <8 x i64> %i.cd, splat (i64 2654435761)
  %i.cf = mul <8 x i64> %i.cb, splat (i64 -7046029290881679360)
  %i.cg = add <8 x i64> %i.ce, %i.cf              ; 3 uses
  %i.ch = shl nuw nsw i64 %i.y, 6
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ch ; 3 uses
  %.not62 = icmp eq i64 %i.y, %i.o
  br i1 %.not62, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i
  %i.cj = sub nsw i64 %i.o, %i.y                  ; 3 uses
  %i.ck = add i64 %i.q, %i.o
  %.neg101 = add i64 %i.s, 1
  %xtraiter89 = and i64 %i.cj, 1
  %i.cl = icmp eq i64 %i.ck, %.neg101
  br i1 %i.cl, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter93 = and i64 %i.cj, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
end_hunk_3
