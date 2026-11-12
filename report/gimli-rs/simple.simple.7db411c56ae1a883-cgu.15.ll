Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/simple.simple.7db411c56ae1a883-cgu.15?download=true
inline.NumInlined: 115
inline.NumDeleted: 56
begin_hunk_0_@_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_12DwarfPackageINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEE7find_cuB2E_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %i.eg, ptr %0, align 8
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4122.0..sroa_idx, align 8
  %.sroa.6124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6124.0..sroa_idx, align 8
  %.sroa.7125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.020.i.i.sroa.0.0.copyload229, ptr %.sroa.7125.0..sroa_idx, align 8
  %.sroa.7125.sroa.4.0..sroa.7125.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.020.i.i.sroa.7.0.copyload232, ptr %.sroa.7125.sroa.4.0..sroa.7125.0..sroa_idx.sroa_idx, align 8
  %.sroa.8126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.ae, ptr %.sroa.8126.0..sroa_idx, align 8
  %.sroa.10128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store <2 x ptr> %i.dj, ptr %.sroa.10128.0..sroa_idx, align 8
  %.sroa.12130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.dc, ptr %.sroa.12130.0..sroa_idx, align 8
  %.sroa.13131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %.val.i.i226.i.i, ptr %.sroa.13131.0..sroa_idx, align 8
  %.sroa.15133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.df, ptr %.sroa.15133.0..sroa_idx, align 8
  %.sroa.16134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.dh, ptr %.sroa.16134.0..sroa_idx, align 8
  %.sroa.17135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 %.val.i1.i227.i.i, ptr %.sroa.17135.0..sroa_idx, align 8
  %.sroa.19137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.ef, ptr %.sroa.19137.0..sroa_idx, align 8
  %.sroa.20138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.dw, ptr %.sroa.20138.0..sroa_idx, align 8
  %.sroa.21139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.dy, ptr %.sroa.21139.0..sroa_idx, align 8
  %.sroa.22140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 %.val.i.i238.i.i, ptr %.sroa.22140.0..sroa_idx, align 8
  %.sroa.24142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.eb, ptr %.sroa.24142.0..sroa_idx, align 8
  %.sroa.25143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.ed, ptr %.sroa.25143.0..sroa_idx, align 8
  %.sroa.26144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 %.val.i1.i239.i.i, ptr %.sroa.26144.0..sroa_idx, align 8
  %.sroa.27145.sroa.4.0..sroa.27145.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %.sroa.027.i.i.sroa.0.0.copyload234, ptr %.sroa.27145.sroa.4.0..sroa.27145.0..sroa_idx.sroa_idx, align 8
  %.sroa.27145.sroa.5.0..sroa.27145.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %.sroa.027.i.i.sroa.7.0.copyload237, ptr %.sroa.27145.sroa.5.0..sroa.27145.0..sroa_idx.sroa_idx, align 8
  %.sroa.28146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 %i.ai, ptr %.sroa.28146.0..sroa_idx, align 8
  %.sroa.30148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %.sroa.039.i.i.sroa.0.0.copyload239, ptr %.sroa.30148.0..sroa_idx, align 8
  %.sroa.30148.sroa.4.0..sroa.30148.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %.sroa.039.i.i.sroa.7.0.copyload242, ptr %.sroa.30148.sroa.4.0..sroa.30148.0..sroa_idx.sroa_idx, align 8
  %.sroa.31149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 %i.am, ptr %.sroa.31149.0..sroa_idx, align 8
  %.sroa.33151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.ef, ptr %.sroa.33151.0..sroa_idx, align 8
  %.sroa.34152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %i.dw, ptr %.sroa.34152.0..sroa_idx, align 8
  %.sroa.35153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 %i.dy, ptr %.sroa.35153.0..sroa_idx, align 8
  %.sroa.36154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i8 %.val.i.i238.i.i, ptr %.sroa.36154.0..sroa_idx, align 8
  %.sroa.38156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.eb, ptr %.sroa.38156.0..sroa_idx, align 8
  %.sroa.39157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 %i.ed, ptr %.sroa.39157.0..sroa_idx, align 8
  %.sroa.40158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i8 %.val.i1.i239.i.i, ptr %.sroa.40158.0..sroa_idx, align 8
  %.sroa.41159.sroa.4.0..sroa.41159.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %.sroa.075.i.i.sroa.0.0.copyload244, ptr %.sroa.41159.sroa.4.0..sroa.41159.0..sroa_idx.sroa_idx, align 8
  %.sroa.41159.sroa.5.0..sroa.41159.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 %.sroa.075.i.i.sroa.7.0.copyload247, ptr %.sroa.41159.sroa.5.0..sroa.41159.0..sroa_idx.sroa_idx, align 8
  %.sroa.42160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i8 %i.by, ptr %.sroa.42160.0..sroa_idx, align 8
  %.sroa.44162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %.sroa.087.i.i.sroa.0.0.copyload249, ptr %.sroa.44162.0..sroa_idx, align 8
  %.sroa.44162.sroa.4.0..sroa.44162.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i64 %.sroa.087.i.i.sroa.7.0.copyload252, ptr %.sroa.44162.sroa.4.0..sroa.44162.0..sroa_idx.sroa_idx, align 8
  %.sroa.45163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i8 %i.cc, ptr %.sroa.45163.0..sroa_idx, align 8
  %.sroa.47165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr %i.ef, ptr %.sroa.47165.0..sroa_idx, align 8
  %.sroa.48166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %i.dw, ptr %.sroa.48166.0..sroa_idx, align 8
  %.sroa.49167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i64 %i.dy, ptr %.sroa.49167.0..sroa_idx, align 8
  %.sroa.50168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i8 %.val.i.i238.i.i, ptr %.sroa.50168.0..sroa_idx, align 8
  %.sroa.52170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.eb, ptr %.sroa.52170.0..sroa_idx, align 8
  %.sroa.53171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i64 %i.ed, ptr %.sroa.53171.0..sroa_idx, align 8
  %.sroa.54172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i8 %.val.i1.i239.i.i, ptr %.sroa.54172.0..sroa_idx, align 8
  %.sroa.56174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 536
  store <2 x ptr> %i.cz, ptr %.sroa.56174.0..sroa_idx, align 8
  %.sroa.58176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 %i.cs, ptr %.sroa.58176.0..sroa_idx, align 8
  %.sroa.59177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i8 %.val.i.i.i.i, ptr %.sroa.59177.0..sroa_idx, align 8
  %.sroa.61179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %i.cv, ptr %.sroa.61179.0..sroa_idx, align 8
  %.sroa.62180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 576
  store i64 %i.cx, ptr %.sroa.62180.0..sroa_idx, align 8
  %.sroa.63181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i8 %.val.i1.i.i.i, ptr %.sroa.63181.0..sroa_idx, align 8
  %.sroa.64182.sroa.4.0..sroa.64182.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr %.sroa.099.i.i.sroa.0.0.copyload254, ptr %.sroa.64182.sroa.4.0..sroa.64182.0..sroa_idx.sroa_idx, align 8
  %.sroa.64182.sroa.5.0..sroa.64182.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i64 %.sroa.099.i.i.sroa.7.0.copyload257, ptr %.sroa.64182.sroa.5.0..sroa.64182.0..sroa_idx.sroa_idx, align 8
  %.sroa.65183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i8 %i.cg, ptr %.sroa.65183.0..sroa_idx, align 8
  %.sroa.67185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 648
  store ptr %.sroa.0123.i.i.sroa.0.0.copyload264, ptr %.sroa.67185.0..sroa_idx, align 8
  %.sroa.67185.sroa.4.0..sroa.67185.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i64 %.sroa.0123.i.i.sroa.7.0.copyload267, ptr %.sroa.67185.sroa.4.0..sroa.67185.0..sroa_idx.sroa_idx, align 8
  %.sroa.68186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i8 %i.co, ptr %.sroa.68186.0..sroa_idx, align 8
  %.sroa.70188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.az, ptr %.sroa.70188.0..sroa_idx, align 8
  %.sroa.71189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 712
  store i64 %i.be, ptr %.sroa.71189.0..sroa_idx, align 8
  %.sroa.72190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 720
  store i64 %i.as, ptr %.sroa.72190.0..sroa_idx, align 8
  %.sroa.73191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i8 %.val.i.i.i.i.i, ptr %.sroa.73191.0..sroa_idx, align 8
  %.sroa.75193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %i.bc, ptr %.sroa.75193.0..sroa_idx, align 8
  %.sroa.76194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 744
  store i64 %.sroa.07.0.lcssa.i.i, ptr %.sroa.76194.0..sroa_idx, align 8
  %.sroa.77195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 752
  store i8 %.val.i1.i.i.i.i, ptr %.sroa.77195.0..sroa_idx, align 8
  %.sroa.79197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 760
  store ptr %i.bq, ptr %.sroa.79197.0..sroa_idx, align 8
  %.sroa.80198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 768
  store i64 %i.bv, ptr %.sroa.80198.0..sroa_idx, align 8
  %.sroa.81199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 776
  store i64 %i.bj, ptr %.sroa.81199.0..sroa_idx, align 8
  %.sroa.82200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i8 %.val.i.i.i216.i.i, ptr %.sroa.82200.0..sroa_idx, align 8
  %.sroa.84202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 792
  store ptr %i.bt, ptr %.sroa.84202.0..sroa_idx, align 8
  %.sroa.85203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i64 %.sroa.09.0.lcssa.i.i, ptr %.sroa.85203.0..sroa_idx, align 8
  %.sroa.86204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 808
  store i8 %.val.i1.i.i217.i.i, ptr %.sroa.86204.0..sroa_idx, align 8
  %.sroa.88206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 816
  store <2 x ptr> %i.dt, ptr %.sroa.88206.0..sroa_idx, align 8
  %.sroa.90208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 832
  store i64 %i.dm, ptr %.sroa.90208.0..sroa_idx, align 8
  %.sroa.91209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 840
  store i8 %.val.i.i232.i.i, ptr %.sroa.91209.0..sroa_idx, align 8
  %.sroa.93211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 848
  store ptr %i.dp, ptr %.sroa.93211.0..sroa_idx, align 8
  %.sroa.94212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 856
  store i64 %i.dr, ptr %.sroa.94212.0..sroa_idx, align 8
  %.sroa.95213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 864
  store i8 %.val.i1.i233.i.i, ptr %.sroa.95213.0..sroa_idx, align 8
  %.sroa.96214.sroa.4.0..sroa.96214.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 872
  store ptr %.sroa.0111.i.i.sroa.0.0.copyload259, ptr %.sroa.96214.sroa.4.0..sroa.96214.0..sroa_idx.sroa_idx, align 8
  %.sroa.96214.sroa.5.0..sroa.96214.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 880
  store i64 %.sroa.0111.i.i.sroa.7.0.copyload262, ptr %.sroa.96214.sroa.5.0..sroa.96214.0..sroa_idx.sroa_idx, align 8
  %.sroa.96214.sroa.6.0..sroa.96214.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.96214.sroa.6.0..sroa.96214.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.96214.sroa.6, i64 32, i1 false)
  %.sroa.97215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i8 %i.ck, ptr %.sroa.97215.0..sroa_idx, align 8
  %.sroa.98216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 921
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.98216.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.98216, i64 7, i1 false)
  %.sroa.99217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i8 1, ptr %.sroa.99217.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.96214.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.98216)
  br label %bb.an
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB2_22CoffRelocationIteratorRShNtNtB8_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((8, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store ptr %i.f, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.06.0.copyload.i = load i16, ptr %i.g, align 1, !alias.scope !392 ; 5 uses
  %i.h = load ptr, ptr %1, align 8, !noalias !393, !nonnull !6, !align !11, !noundef !6
  %i.i = load ptr, ptr %i.h, align 8, !noalias !393, !nonnull !6, !noundef !6
  %i.j = getelementptr i8, ptr %i.i, i64 6
  %.val.i = load i16, ptr %i.j, align 1, !noalias !393
  switch i16 %.val.i, label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0CsaN7cMqnSAH7_6simple.exit [
    i16 452, label %bb.c
    i16 -21916, label %bb.d
    i16 -22975, label %bb.d
    i16 332, label %bb.e
    i16 -31132, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %switch.tableidx = add i16 %.sroa.06.0.copyload.i, -1 ; 4 uses
  %i.k = icmp ult i16 %switch.tableidx, 15
  br i1 %i.k, label %switch.lookup, label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0CsaN7cMqnSAH7_6simple.exit

bb.d:                                             ; preds = %bb.b, %bb.b
  %switch.tableidx11 = add i16 %.sroa.06.0.copyload.i, -1 ; 4 uses
  %i.l = icmp ult i16 %switch.tableidx11, 17
  br i1 %i.l, label %switch.lookup12, label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0CsaN7cMqnSAH7_6simple.exit

bb.e:                                             ; preds = %bb.b
  %switch.tableidx21 = add i16 %.sroa.06.0.copyload.i, -1 ; 4 uses
  %i.m = icmp ult i16 %switch.tableidx21, 20
  br i1 %i.m, label %switch.lookup22, label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0CsaN7cMqnSAH7_6simple.exit

bb.f:                                             ; preds = %bb.b
  %switch.tableidx31 = add i16 %.sroa.06.0.copyload.i, -1 ; 3 uses
  %i.n = icmp ult i16 %switch.tableidx31, 12
  br i1 %i.n, label %switch.lookup32, label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0CsaN7cMqnSAH7_6simple.exit

switch.lookup:                                    ; preds = %bb.c
  %i.o = zext nneg i16 %switch.tableidx to i64
  %switch.gep5.a = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple, i64 %i.o
  %i.p = zext nneg i16 %switch.tableidx to i64
  %switch.gep7 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.24, i64 %i.p
  %switch.load8 = load i8, ptr %switch.gep7, align 1
  br label %switch.lookup32.a

switch.lookup12:                                  ; preds = %bb.d
  %i.q = zext nneg i16 %switch.tableidx11 to i64
  %switch.gep15.a = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.27, i64 %i.q
  %i.r = zext nneg i16 %switch.tableidx11 to i64
  %switch.gep17 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.28, i64 %i.r
  %switch.load18 = load i8, ptr %switch.gep17, align 1
  br label %switch.lookup32.a

switch.lookup22:                                  ; preds = %bb.e
  %i.s = zext nneg i16 %switch.tableidx21 to i64
  %switch.gep25.a = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.31, i64 %i.s
  %i.t = zext nneg i16 %switch.tableidx21 to i64
  %switch.gep27 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.32, i64 %i.t
  %switch.load28 = load i8, ptr %switch.gep27, align 1
  br label %switch.lookup32.a

switch.lookup32:                                  ; preds = %bb.f
  %2 = zext nneg i16 %switch.tableidx31 to i64
  %switch.gep33 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.35, i64 %2
  br label %switch.lookup32.a

switch.lookup32.a:                                ; preds = %switch.lookup, %switch.lookup12, %switch.lookup22, %switch.lookup32
  %switch.tableidx31.sink39 = phi i16 [ %switch.tableidx31, %switch.lookup32 ], [ %switch.tableidx21, %switch.lookup22 ], [ %switch.tableidx11, %switch.lookup12 ], [ %switch.tableidx, %switch.lookup ] ; 2 uses
  %switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB2_22CoffRelocationIteratorRShNtNtB8_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.22.sink = phi ptr [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.36, %switch.lookup32 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.33, %switch.lookup22 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.29, %switch.lookup12 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.25, %switch.lookup ]
  %switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB2_22CoffRelocationIteratorRShNtNtB8_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.23.sink = phi ptr [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.37, %switch.lookup32 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.34, %switch.lookup22 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.30, %switch.lookup12 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.26, %switch.lookup ]
  %.sroa.07.0.i.ph.in = phi ptr [ %switch.gep33, %switch.lookup32 ], [ %switch.gep25.a, %switch.lookup22 ], [ %switch.gep15.a, %switch.lookup12 ], [ %switch.gep5.a, %switch.lookup ]
  %.sroa.08.0.i.ph = phi i8 [ 1, %switch.lookup32 ], [ %switch.load28, %switch.lookup22 ], [ %switch.load18, %switch.lookup12 ], [ %switch.load8, %switch.lookup ]
  %switch.load34 = load i8, ptr %.sroa.07.0.i.ph.in, align 1
  %i.u = zext nneg i16 %switch.tableidx31.sink39 to i64
  %switch.gep35 = getelementptr inbounds nuw i8, ptr %switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB2_22CoffRelocationIteratorRShNtNtB8_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.22.sink, i64 %i.u
  %switch.load36 = load i8, ptr %switch.gep35, align 1
  %i.v = zext nneg i16 %switch.tableidx31.sink39 to i64
  %switch.gep37 = getelementptr inbounds nuw [8 x i8], ptr %switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB2_22CoffRelocationIteratorRShNtNtB8_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.23.sink, i64 %i.v
  %switch.load38 = load i64, ptr %switch.gep37, align 8
  br label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0CsaN7cMqnSAH7_6simple.exit

_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0CsaN7cMqnSAH7_6simple.exit: ; preds = %switch.lookup32.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.07.0.i = phi i8 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ], [ %switch.load34, %switch.lookup32.a ]
  %.sroa.08.0.i = phi i8 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ], [ %.sroa.08.0.i.ph, %switch.lookup32.a ]
  %.sroa.09.0.i = phi i8 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ], [ %switch.load36, %switch.lookup32.a ]
  %.sroa.010.0.i = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ], [ %switch.load38, %switch.lookup32.a ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.05.0.copyload.i = load i32, ptr %i.w, align 1, !alias.scope !392
  %i.x = zext i32 %.sroa.05.0.copyload.i to i64
  %.sroa.011.0.copyload.i = load i32, ptr %i.b, align 1, !alias.scope !392
  %i.y = zext i32 %.sroa.011.0.copyload.i to i64
  store i64 %i.y, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 3, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.83.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i16 %.sroa.06.0.copyload.i, ptr %.sroa.83.0..sroa_idx, align 2
  %.sroa.94.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.010.0.i, ptr %.sroa.94.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %.sroa.07.0.i, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 %.sroa.08.0.i, ptr %.sroa.12.0..sroa_idx, align 2
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 %.sroa.09.0.i, ptr %.sroa.13.0..sroa_idx, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.z, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0CsaN7cMqnSAH7_6simple.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((8, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store ptr %i.f, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.06.0.copyload.i = load i16, ptr %i.g, align 1, !alias.scope !397 ; 5 uses
  %i.h = load ptr, ptr %1, align 8, !noalias !398, !nonnull !6, !align !11, !noundef !6
  %i.i = load ptr, ptr %i.h, align 8, !noalias !398, !nonnull !6, !noundef !6
  %.val.i = load i16, ptr %i.i, align 1, !noalias !398
  switch i16 %.val.i, label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0CsaN7cMqnSAH7_6simple.exit [
    i16 452, label %bb.c
    i16 -21916, label %bb.d
    i16 -22975, label %bb.d
    i16 332, label %bb.e
    i16 -31132, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %switch.tableidx = add i16 %.sroa.06.0.copyload.i, -1 ; 4 uses
  %i.j = icmp ult i16 %switch.tableidx, 15
  br i1 %i.j, label %switch.lookup, label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0CsaN7cMqnSAH7_6simple.exit

bb.d:                                             ; preds = %bb.b, %bb.b
  %switch.tableidx11 = add i16 %.sroa.06.0.copyload.i, -1 ; 4 uses
  %i.k = icmp ult i16 %switch.tableidx11, 17
  br i1 %i.k, label %switch.lookup12, label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0CsaN7cMqnSAH7_6simple.exit

bb.e:                                             ; preds = %bb.b
  %switch.tableidx21 = add i16 %.sroa.06.0.copyload.i, -1 ; 4 uses
  %i.l = icmp ult i16 %switch.tableidx21, 20
  br i1 %i.l, label %switch.lookup22, label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0CsaN7cMqnSAH7_6simple.exit

bb.f:                                             ; preds = %bb.b
  %switch.tableidx31 = add i16 %.sroa.06.0.copyload.i, -1 ; 3 uses
  %i.m = icmp ult i16 %switch.tableidx31, 12
  br i1 %i.m, label %switch.lookup32, label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0CsaN7cMqnSAH7_6simple.exit

switch.lookup:                                    ; preds = %bb.c
  %i.n = zext nneg i16 %switch.tableidx to i64
  %switch.gep5.a = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple, i64 %i.n
  %i.o = zext nneg i16 %switch.tableidx to i64
  %switch.gep7 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.24, i64 %i.o
  %switch.load8 = load i8, ptr %switch.gep7, align 1
  br label %switch.lookup32.a

switch.lookup12:                                  ; preds = %bb.d
  %i.p = zext nneg i16 %switch.tableidx11 to i64
  %switch.gep15.a = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.27, i64 %i.p
  %i.q = zext nneg i16 %switch.tableidx11 to i64
  %switch.gep17 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.28, i64 %i.q
  %switch.load18 = load i8, ptr %switch.gep17, align 1
  br label %switch.lookup32.a

switch.lookup22:                                  ; preds = %bb.e
  %i.r = zext nneg i16 %switch.tableidx21 to i64
  %switch.gep25.a = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.31, i64 %i.r
  %i.s = zext nneg i16 %switch.tableidx21 to i64
  %switch.gep27 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.32, i64 %i.s
  %switch.load28 = load i8, ptr %switch.gep27, align 1
  br label %switch.lookup32.a

switch.lookup32:                                  ; preds = %bb.f
  %2 = zext nneg i16 %switch.tableidx31 to i64
  %switch.gep33 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.35, i64 %2
  br label %switch.lookup32.a

switch.lookup32.a:                                ; preds = %switch.lookup, %switch.lookup12, %switch.lookup22, %switch.lookup32
  %switch.tableidx31.sink39 = phi i16 [ %switch.tableidx31, %switch.lookup32 ], [ %switch.tableidx21, %switch.lookup22 ], [ %switch.tableidx11, %switch.lookup12 ], [ %switch.tableidx, %switch.lookup ] ; 2 uses
  %switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.36.sink = phi ptr [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.36, %switch.lookup32 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.33, %switch.lookup22 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.29, %switch.lookup12 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.25, %switch.lookup ]
  %switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.37.sink = phi ptr [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.37, %switch.lookup32 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.34, %switch.lookup22 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.30, %switch.lookup12 ], [ @switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.26, %switch.lookup ]
  %.sroa.07.0.i.ph.in = phi ptr [ %switch.gep33, %switch.lookup32 ], [ %switch.gep25.a, %switch.lookup22 ], [ %switch.gep15.a, %switch.lookup12 ], [ %switch.gep5.a, %switch.lookup ]
  %.sroa.08.0.i.ph = phi i8 [ 1, %switch.lookup32 ], [ %switch.load28, %switch.lookup22 ], [ %switch.load18, %switch.lookup12 ], [ %switch.load8, %switch.lookup ]
  %switch.load34 = load i8, ptr %.sroa.07.0.i.ph.in, align 1
  %i.t = zext nneg i16 %switch.tableidx31.sink39 to i64
  %switch.gep35 = getelementptr inbounds nuw i8, ptr %switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.36.sink, i64 %i.t
  %switch.load36 = load i8, ptr %switch.gep35, align 1
  %i.u = zext nneg i16 %switch.tableidx31.sink39 to i64
  %switch.gep37 = getelementptr inbounds nuw [8 x i8], ptr %switch.table._RNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.37.sink, i64 %i.u
  %switch.load38 = load i64, ptr %switch.gep37, align 8
  br label %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0CsaN7cMqnSAH7_6simple.exit

_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0CsaN7cMqnSAH7_6simple.exit: ; preds = %switch.lookup32.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.07.0.i = phi i8 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ], [ %switch.load34, %switch.lookup32.a ]
  %.sroa.08.0.i = phi i8 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ], [ %.sroa.08.0.i.ph, %switch.lookup32.a ]
  %.sroa.09.0.i = phi i8 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ], [ %switch.load36, %switch.lookup32.a ]
  %.sroa.010.0.i = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ], [ %switch.load38, %switch.lookup32.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.05.0.copyload.i = load i32, ptr %i.v, align 1, !alias.scope !397
  %i.w = zext i32 %.sroa.05.0.copyload.i to i64
  %.sroa.011.0.copyload.i = load i32, ptr %i.b, align 1, !alias.scope !397
  %i.x = zext i32 %.sroa.011.0.copyload.i to i64
  store i64 %i.x, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 3, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.83.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i16 %.sroa.06.0.copyload.i, ptr %.sroa.83.0..sroa_idx, align 2
  %.sroa.94.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.010.0.i, ptr %.sroa.94.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %.sroa.07.0.i, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 %.sroa.08.0.i, ptr %.sroa.12.0..sroa_idx, align 2
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 %.sroa.09.0.i, ptr %.sroa.13.0..sroa_idx, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.y, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNCNvXNtNtNtCs9Jn0q30Ea0B_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0CsaN7cMqnSAH7_6simple.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtCsi68uqYEhoRA_5gimli4read2op10ExpressionINtNtBB_8relocate14RelocateReaderINtNtBB_12endian_slice11EndianSliceNtNtBD_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEENtB6_5Debug3fmtB2X_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !402
  store ptr %i.b, ptr %i.a, align 8, !noalias !402
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !402
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 24                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsaN7cMqnSAH7_6simple.exit, label %.lr.ph

.body:                                            ; preds = %bb.d, %.body.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.h unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsaN7cMqnSAH7_6simple.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECsaN7cMqnSAH7_6simple.exit.i.i
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsaN7cMqnSAH7_6simple.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsaN7cMqnSAH7_6simple.exit.i
  %.sroa.0.0.i16 = phi i64 [ %i.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsaN7cMqnSAH7_6simple.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.0.i16 ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.0.0.i16, 1        ; 4 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECsaN7cMqnSAH7_6simple.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECsaN7cMqnSAH7_6simple.exit.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsaN7cMqnSAH7_6simple.exit.i unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph18
  %i.s = add nuw nsw i64 %.sroa.0.1.i17, 1        ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.h
  br i1 %i.t, label %.body, label %.lr.ph18

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECsaN7cMqnSAH7_6simple.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.q, %bb.b ]
  %i.v = icmp eq i64 %i.p, %i.h
  br i1 %i.v, label %.body, label %.lr.ph18

.lr.ph18:                                         ; preds = %.body.i, %bb.d
  %.sroa.0.1.i17 = phi i64 [ %i.s, %bb.d ], [ %i.p, %.body.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i17
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #9
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph18
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsaN7cMqnSAH7_6simple.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsaN7cMqnSAH7_6simple.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !6
  store i64 %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.y, ptr %i.ab, align 8
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.h:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read6abbrev11DebugAbbrevNtCsaN7cMqnSAH7_6simple7SectionEINtB8_7SectionBT_E4loadQNCNvBV_9dump_file0INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBV_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read4addr9DebugAddrNtCsaN7cMqnSAH7_6simple7SectionEINtB8_7SectionBO_E4loadQNCNvBQ_9dump_file0INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBQ_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read7aranges12DebugArangesNtCsaN7cMqnSAH7_6simple7SectionEINtB8_7SectionBV_E4loadQNCNvBX_9dump_file0INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBX_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read4unit9DebugInfoNtCsaN7cMqnSAH7_6simple7SectionEINtB8_7SectionBO_E4loadQNCNvBQ_9dump_file0INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBQ_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read4line9DebugLineNtCsaN7cMqnSAH7_6simple7SectionEINtB8_7SectionBO_E4loadQNCNvBQ_9dump_file0INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBQ_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read3str12DebugLineStrNtCsaN7cMqnSAH7_6simple7SectionEINtB8_7SectionBR_E4loadQNCNvBT_9dump_file0INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBT_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read6macros12DebugMacinfoNtCsaN7cMqnSAH7_6simple7SectionEINtB8_7SectionBU_E4loadQNCNvBW_9dump_file0INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBW_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read6macros10DebugMacroNtCsaN7cMqnSAH7_6simple7SectionEINtB8_7SectionBS_E4loadQNCNvBU_9dump_file0INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBU_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read3str8DebugStrNtCsaN7cMqnSAH7_6simple7SectionEINtB8_7SectionBM_E4loadQNCNvBO_9dump_file0INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBO_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read3str15DebugStrOffsetsNtCsaN7cMqnSAH7_6simple7SectionEINtB8_7SectionBU_E4loadQNCNvBW_9dump_file0INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBW_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read4unit10DebugTypesNtCsaN7cMqnSAH7_6simple7SectionEINtB8_7SectionBQ_E4loadQNCNvBS_9dump_file0INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBS_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read8rnglists11DebugRangesNtCsaN7cMqnSAH7_6simple7SectionEINtB8_7SectionBV_E4loadQNCNvBX_9dump_file0INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBX_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0
end_hunk_0
