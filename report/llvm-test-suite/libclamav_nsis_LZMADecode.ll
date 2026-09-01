Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_nsis_LZMADecode?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lzmaDecode:bb.a
  %.sroa.408.0.copyload = load i32, ptr %.sroa.408.0..sroa_idx, align 8, !tbaa !4
  %.sroa.396.0.copyload = load i32, ptr %.sroa.396.0..sroa_idx, align 4, !tbaa !4
  %.sroa.394.0.copyload = load i32, ptr %.sroa.394.0..sroa_idx, align 8, !tbaa !4
  %.sroa.392.0.copyload = load i32, ptr %.sroa.392.0..sroa_idx, align 4, !tbaa !4
  %.sroa.389.0.copyload = load i32, ptr %.sroa.389.0..sroa_idx, align 8, !tbaa !4
  %.sroa.384.0.copyload = load i32, ptr %.sroa.384.0..sroa_idx, align 4, !tbaa !4
  %.sroa.379.0.copyload = load i32, ptr %.sroa.379.0..sroa_idx, align 8, !tbaa !4
  %.sroa.362.0.copyload = load i32, ptr %.sroa.362.0..sroa_idx, align 4, !tbaa !4
  %.sroa.344.0.copyload = load i32, ptr %.sroa.344.0..sroa_idx, align 4, !tbaa !4
  %.sroa.325.0.copyload = load i32, ptr %.sroa.325.0..sroa_idx, align 8, !tbaa !4
  %.sroa.321.0.copyload = load i32, ptr %.sroa.321.0..sroa_idx, align 4, !tbaa !4
  %.sroa.294.0.copyload = load i32, ptr %.sroa.294.0..sroa_idx, align 8, !tbaa !4
  %.sroa.251.0.copyload = load i32, ptr %.sroa.251.0..sroa_idx, align 4, !tbaa !4
  %.sroa.227.0.copyload = load i32, ptr %.sroa.227.0..sroa_idx, align 8, !tbaa !4
  %.sroa.222.0.copyload = load i32, ptr %.sroa.222.0..sroa_idx, align 4, !tbaa !4
  %.sroa.207.0.copyload = load i32, ptr %.sroa.207.0..sroa_idx, align 8, !tbaa !4
  %.sroa.164.0.copyload = load ptr, ptr %.sroa.164.0..sroa_idx, align 8, !tbaa !16
  %.sroa.145144.0.copyload = load ptr, ptr %.sroa.145144.0..sroa_idx, align 8, !tbaa !16
  br label %.preheader.outer.outer

.preheader.outer:                                 ; preds = %bb.bv, %.preheader.outer.outer
  %.sroa.362.0.ph = phi i32 [ %.sroa.362.0.ph.ph, %.preheader.outer.outer ], [ %.sroa.362.12.ph, %bb.bv ] ; 32 uses
  %.sroa.347.0.ph = phi i32 [ %.sroa.347.0.ph.ph, %.preheader.outer.outer ], [ %i.jx, %bb.bv ]
  %.sroa.344.0.ph = phi i32 [ %.sroa.344.0.ph.ph, %.preheader.outer.outer ], [ %.sroa.344.0.ph5491398, %bb.bv ]
  %.sroa.325.0.ph = phi i32 [ %.sroa.325.0.ph.ph, %.preheader.outer.outer ], [ %.sroa.325.16.ph, %bb.bv ]
  %.sroa.294.0.ph = phi i32 [ %.sroa.294.0.ph.ph, %.preheader.outer.outer ], [ %.sroa.294.20.ph, %bb.bv ]
  %.sroa.251.0.ph = phi i32 [ %.sroa.251.0.ph.ph, %.preheader.outer.outer ], [ %.sroa.251.26.ph, %bb.bv ]
  %.sroa.227.0.ph = phi i32 [ %.sroa.227.0.ph.ph, %.preheader.outer.outer ], [ %.sroa.227.22.ph, %bb.bv ]
  %.sroa.207.0.ph = phi i32 [ %.sroa.207.0.ph.ph, %.preheader.outer.outer ], [ %.sroa.207.8.ph, %bb.bv ]
  %.sroa.164.0.ph = phi ptr [ %.sroa.164.0.ph.ph, %.preheader.outer.outer ], [ %.sroa.164.16.ph, %bb.bv ]
  %.sroa.145144.0.ph = phi ptr [ %.sroa.145144.0.ph.ph, %.preheader.outer.outer ], [ %.sroa.145144.19.ph, %bb.bv ]
  %.sroa.141.0.ph = phi i8 [ %.sroa.141.0.ph.ph, %.preheader.outer.outer ], [ %.sroa.141.0.ph5591191, %bb.bv ]
  %.sroa.130.0.ph = phi i8 [ %.sroa.130.0.ph.ph, %.preheader.outer.outer ], [ %i.jq, %bb.bv ]
  %.sroa.120.0.ph = phi i32 [ %.sroa.120.0.ph.ph, %.preheader.outer.outer ], [ %.sroa.120.2.ph, %bb.bv ]
  %.sroa.111.0.ph = phi i32 [ %.sroa.111.0.ph.ph, %.preheader.outer.outer ], [ %i.jw, %bb.bv ]
  %.sroa.102109.0.ph = phi ptr [ %.sroa.102109.0.ph.ph, %.preheader.outer.outer ], [ %i.jv, %bb.bv ]
  %.sroa.72.0.ph = phi i32 [ %.sroa.72.0.ph.ph, %.preheader.outer.outer ], [ %.sroa.72.27.ph, %bb.bv ]
  %.sroa.52.0.ph = phi ptr [ %.sroa.52.0.ph.ph, %.preheader.outer.outer ], [ %.sroa.52.27.ph, %bb.bv ]
  %.sroa.34.0.ph = phi i32 [ %.sroa.34.0.ph.ph, %.preheader.outer.outer ], [ %.sroa.34.0.ph532.ph1485, %bb.bv ]
  %.sroa.0.0.ph = phi i32 [ %.sroa.0.0.ph.ph, %.preheader.outer.outer ], [ 2, %bb.bv ]
  %.sroa.396.0.ph = phi i32 [ %.sroa.396.0.ph.ph, %.preheader.outer.outer ], [ %i.ju, %bb.bv ]
  %.sroa.408.0.ph = phi i32 [ %.sroa.408.0.ph.ph, %.preheader.outer.outer ], [ %.sroa.408.26.ph, %bb.bv ]
  %.sroa.457.0.ph = phi i32 [ %.sroa.457.0.ph.ph, %.preheader.outer.outer ], [ %.sroa.457.30.ph, %bb.bv ]
  br label %.preheader.outer511.outer

.preheader.outer511.outer:                        ; preds = %bb.ck, %.preheader.outer
  %.sroa.347.0.ph512.ph = phi i32 [ %.sroa.347.6, %bb.ck ], [ %.sroa.347.0.ph, %.preheader.outer ]
  %.sroa.344.0.ph513.ph = phi i32 [ %.sroa.344.0.ph5491395, %bb.ck ], [ %.sroa.344.0.ph, %.preheader.outer ]
  %.sroa.325.0.ph514.ph = phi i32 [ %.sroa.325.01018, %bb.ck ], [ %.sroa.325.0.ph, %.preheader.outer ]
  %.sroa.294.0.ph516.ph = phi i32 [ %.sroa.294.27, %bb.ck ], [ %.sroa.294.0.ph, %.preheader.outer ]
  %.sroa.251.0.ph517.ph = phi i32 [ %i.ml, %bb.ck ], [ %.sroa.251.0.ph, %.preheader.outer ]
  %.sroa.227.0.ph518.ph = phi i32 [ %.sroa.227.27, %bb.ck ], [ %.sroa.227.0.ph, %.preheader.outer ]
  %.sroa.207.0.ph520.ph = phi i32 [ %.sroa.207.10, %bb.ck ], [ %.sroa.207.0.ph, %.preheader.outer ] ; 29 uses
  %.sroa.164.0.ph521.ph = phi ptr [ %.sroa.164.21, %bb.ck ], [ %.sroa.164.0.ph, %.preheader.outer ]
  %.sroa.145144.0.ph522.ph = phi ptr [ %.sroa.145144.27, %bb.ck ], [ %.sroa.145144.0.ph, %.preheader.outer ]
  %.sroa.141.0.ph523.ph = phi i8 [ %.sroa.141.0.ph5591190, %bb.ck ], [ %.sroa.141.0.ph, %.preheader.outer ]
  %.sroa.130.0.ph524.ph = phi i8 [ %.sroa.130.0967, %bb.ck ], [ %.sroa.130.0.ph, %.preheader.outer ]
  %.sroa.120.0.ph525.ph = phi i32 [ %.sroa.120.0890, %bb.ck ], [ %.sroa.120.0.ph, %.preheader.outer ]
  %.sroa.111.0.ph526.ph = phi i32 [ %.sroa.111.0838, %bb.ck ], [ %.sroa.111.0.ph, %.preheader.outer ]
  %.sroa.102109.0.ph527.ph = phi ptr [ %.sroa.102109.0760, %bb.ck ], [ %.sroa.102109.0.ph, %.preheader.outer ]
  %.sroa.72.0.ph528.ph = phi i32 [ %.sroa.72.32, %bb.ck ], [ %.sroa.72.0.ph, %.preheader.outer ]
  %.sroa.52.0.ph529.ph = phi ptr [ %.sroa.52.32, %bb.ck ], [ %.sroa.52.0.ph, %.preheader.outer ]
  %.sroa.34.0.ph532.ph = phi i32 [ %.sroa.34.2, %bb.ck ], [ %.sroa.34.0.ph, %.preheader.outer ] ; 31 uses
  %.sroa.0.0.ph535.ph = phi i32 [ %.sroa.34.2, %bb.ck ], [ %.sroa.0.0.ph, %.preheader.outer ]
  %.sroa.396.0.ph541.ph = phi i32 [ %.sroa.396.0656, %bb.ck ], [ %.sroa.396.0.ph, %.preheader.outer ]
  %.sroa.408.0.ph542.ph = phi i32 [ %.sroa.408.31, %bb.ck ], [ %.sroa.408.0.ph, %.preheader.outer ]
  %.sroa.457.0.ph543.ph = phi i32 [ %.sroa.457.36, %bb.ck ], [ %.sroa.457.0.ph, %.preheader.outer ]
  br label %.preheader.outer511

.preheader.outer511:                              ; preds = %.preheader.outer511.outer, %.loopexit2134
  %.sroa.347.0.ph512 = phi i32 [ %i.mm, %.loopexit2134 ], [ %.sroa.347.0.ph512.ph, %.preheader.outer511.outer ] ; 34 uses
  %.sroa.344.0.ph513 = phi i32 [ %.sroa.344.0.ph549, %.loopexit2134 ], [ %.sroa.344.0.ph513.ph, %.preheader.outer511.outer ]
  %.sroa.325.0.ph514 = phi i32 [ %.sroa.325.0.ph550, %.loopexit2134 ], [ %.sroa.325.0.ph514.ph, %.preheader.outer511.outer ]
  %.sroa.294.0.ph516 = phi i32 [ %.sroa.294.0.ph552, %.loopexit2134 ], [ %.sroa.294.0.ph516.ph, %.preheader.outer511.outer ]
  %.sroa.251.0.ph517 = phi i32 [ %.sroa.251.0.ph553, %.loopexit2134 ], [ %.sroa.251.0.ph517.ph, %.preheader.outer511.outer ]
  %.sroa.227.0.ph518 = phi i32 [ %.sroa.227.0.ph554, %.loopexit2134 ], [ %.sroa.227.0.ph518.ph, %.preheader.outer511.outer ]
  %.sroa.164.0.ph521 = phi ptr [ %.sroa.164.0.ph557, %.loopexit2134 ], [ %.sroa.164.0.ph521.ph, %.preheader.outer511.outer ]
  %.sroa.145144.0.ph522 = phi ptr [ %.sroa.145144.0.ph558, %.loopexit2134 ], [ %.sroa.145144.0.ph522.ph, %.preheader.outer511.outer ]
  %.sroa.141.0.ph523 = phi i8 [ %.sroa.141.0.ph559, %.loopexit2134 ], [ %.sroa.141.0.ph523.ph, %.preheader.outer511.outer ]
  %.sroa.130.0.ph524 = phi i8 [ %.sroa.130.0.ph560, %.loopexit2134 ], [ %.sroa.130.0.ph524.ph, %.preheader.outer511.outer ]
  %.sroa.120.0.ph525 = phi i32 [ %.sroa.120.0.ph561, %.loopexit2134 ], [ %.sroa.120.0.ph525.ph, %.preheader.outer511.outer ]
  %.sroa.111.0.ph526 = phi i32 [ %.sroa.111.0.ph562, %.loopexit2134 ], [ %.sroa.111.0.ph526.ph, %.preheader.outer511.outer ]
  %.sroa.102109.0.ph527 = phi ptr [ %.sroa.102109.0.ph563, %.loopexit2134 ], [ %.sroa.102109.0.ph527.ph, %.preheader.outer511.outer ]
  %.sroa.72.0.ph528 = phi i32 [ %.sroa.72.0.ph564, %.loopexit2134 ], [ %.sroa.72.0.ph528.ph, %.preheader.outer511.outer ]
  %.sroa.52.0.ph529 = phi ptr [ %.sroa.52.0.ph565, %.loopexit2134 ], [ %.sroa.52.0.ph529.ph, %.preheader.outer511.outer ]
  %.sroa.0.0.ph535 = phi i32 [ %.sroa.31.0.ph.ph, %.loopexit2134 ], [ %.sroa.0.0.ph535.ph, %.preheader.outer511.outer ]
  %.sroa.396.0.ph541 = phi i32 [ %.sroa.396.0.ph577, %.loopexit2134 ], [ %.sroa.396.0.ph541.ph, %.preheader.outer511.outer ]
  %.sroa.408.0.ph542 = phi i32 [ %.sroa.408.0.ph578, %.loopexit2134 ], [ %.sroa.408.0.ph542.ph, %.preheader.outer511.outer ]
  %.sroa.457.0.ph543 = phi i32 [ %.sroa.457.0.ph579, %.loopexit2134 ], [ %.sroa.457.0.ph543.ph, %.preheader.outer511.outer ]
  br label %.preheader.outer548

.preheader.outer548:                              ; preds = %.preheader.outer511, %bb.at
  %.sroa.344.0.ph549 = phi i32 [ %.sroa.344.0.ph513, %.preheader.outer511 ], [ %.sroa.344.1, %bb.at ] ; 37 uses
  %.sroa.325.0.ph550 = phi i32 [ %.sroa.325.0.ph514, %.preheader.outer511 ], [ %.sroa.325.12, %bb.at ] ; 45 uses
  %.sroa.294.0.ph552 = phi i32 [ %.sroa.294.0.ph516, %.preheader.outer511 ], [ %.sroa.294.12, %bb.at ] ; 28 uses
  %.sroa.251.0.ph553 = phi i32 [ %.sroa.251.0.ph517, %.preheader.outer511 ], [ %.sroa.251.14, %bb.at ] ; 41 uses
  %.sroa.227.0.ph554 = phi i32 [ %.sroa.227.0.ph518, %.preheader.outer511 ], [ %.sroa.227.12, %bb.at ] ; 29 uses
  %.sroa.164.0.ph557 = phi ptr [ %.sroa.164.0.ph521, %.preheader.outer511 ], [ %.sroa.164.9, %bb.at ] ; 25 uses
  %.sroa.145144.0.ph558 = phi ptr [ %.sroa.145144.0.ph522, %.preheader.outer511 ], [ %.sroa.145144.11, %bb.at ] ; 34 uses
  %.sroa.141.0.ph559 = phi i8 [ %.sroa.141.0.ph523, %.preheader.outer511 ], [ %.sroa.141.8, %bb.at ] ; 37 uses
  %.sroa.130.0.ph560 = phi i8 [ %.sroa.130.0.ph524, %.preheader.outer511 ], [ %.sroa.130.1, %bb.at ] ; 38 uses
  %.sroa.120.0.ph561 = phi i32 [ %.sroa.120.0.ph525, %.preheader.outer511 ], [ %i.fl, %bb.at ] ; 40 uses
  %.sroa.111.0.ph562 = phi i32 [ %.sroa.111.0.ph526, %.preheader.outer511 ], [ %i.fn, %bb.at ] ; 38 uses
  %.sroa.102109.0.ph563 = phi ptr [ %.sroa.102109.0.ph527, %.preheader.outer511 ], [ %i.fm, %bb.at ] ; 39 uses
  %.sroa.72.0.ph564 = phi i32 [ %.sroa.72.0.ph528, %.preheader.outer511 ], [ %.sroa.72.16, %bb.at ] ; 38 uses
  %.sroa.52.0.ph565 = phi ptr [ %.sroa.52.0.ph529, %.preheader.outer511 ], [ %.sroa.52.16, %bb.at ] ; 39 uses
  %.sroa.0.0.ph571 = phi i32 [ %.sroa.0.0.ph535, %.preheader.outer511 ], [ 2, %bb.at ] ; 7 uses
  %.sroa.396.0.ph577 = phi i32 [ %.sroa.396.0.ph541, %.preheader.outer511 ], [ %i.fr, %bb.at ] ; 41 uses
  %.sroa.408.0.ph578 = phi i32 [ %.sroa.408.0.ph542, %.preheader.outer511 ], [ %.sroa.408.14, %bb.at ] ; 38 uses
  %.sroa.457.0.ph579 = phi i32 [ %.sroa.457.0.ph543, %.preheader.outer511 ], [ %.sroa.457.17, %bb.at ] ; 38 uses
  switch i32 %.sroa.0.0.ph571, label %.loopexit470 [
    i32 0, label %.loopexit1704
    i32 1, label %.loopexit503
    i32 3, label %.loopexit504
    i32 2, label %.loopexit505
    i32 6, label %bb.s
    i32 13, label %.loopexit582
    i32 14, label %.loopexit499
    i32 15, label %.loopexit584
    i32 26, label %.loopexit585
    i32 7, label %.loopexit1790
    i32 8, label %.loopexit1811
    i32 9, label %bb.b
    i32 27, label %bb.e
    i32 10, label %.loopexit1832
    i32 11, label %.loopexit1853
    i32 21, label %.loopexit1873
    i32 22, label %.loopexit1895
    i32 25, label %.loopexit1911
    i32 12, label %.loopexit506
    i32 16, label %.loopexit507
    i32 28, label %.preheader500
    i32 4, label %.loopexit508
    i32 5, label %.loopexit509
    i32 17, label %.loopexit2041
    i32 18, label %.loopexit2061
    i32 19, label %.loopexit2080
    i32 23, label %.loopexit546
    i32 24, label %.loopexit547
    i32 20, label %.loopexit2134
  ]

bb.b:                                             ; preds = %.preheader.outer548
  %i.b = icmp eq i32 %.sroa.294.0.ph552, 0
  br i1 %i.b, label %bb.c, label %.loopexit510

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %.sroa.120.0.ph561, 0
  br i1 %i.c, label %.loopexit470, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp slt i32 %.sroa.325.0.ph550, 7
  %i.e = select i1 %i.d, i32 9, i32 11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader.outer548
  %.sroa.325.13.peel = phi i32 [ %i.e, %bb.d ], [ %.sroa.325.0.ph550, %.preheader.outer548 ] ; 2 uses
  %.not446.peel = icmp eq i32 %.sroa.111.0.ph562, 0
  br i1 %.not446.peel, label %.loopexit501, label %.preheader.peel.next

.preheader.peel.next:                             ; preds = %bb.e
  %i.f = sub i32 %.sroa.396.0.ph577, %.sroa.362.0.ph ; 2 uses
  %.not447.peel = icmp ult i32 %i.f, %.sroa.39.0.ph.ph
  %i.g = select i1 %.not447.peel, i32 0, i32 %.sroa.39.0.ph.ph
  %spec.select468.peel = add i32 %i.g, %i.f
  %i.h = zext i32 %spec.select468.peel to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.494.0.ph.ph, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8     ; 3 uses
  %i.k = zext i32 %.sroa.396.0.ph577 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.494.0.ph.ph, i64 %i.k
  store i8 %i.j, ptr %i.l, align 1, !tbaa !8
  store i8 %i.j, ptr %.sroa.102109.0.ph563, align 1, !tbaa !8
  %i.m = add i32 %.sroa.396.0.ph577, 1
  %i.n = urem i32 %i.m, %.sroa.39.0.ph.ph
  %i.o = add i32 %.sroa.120.0.ph561, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.102109.0.ph563, i64 1
  %i.q = add i32 %.sroa.111.0.ph562, -1
  br label %.loopexit505

.loopexit1704:                                    ; preds = %.preheader.outer548
  %.not455 = icmp eq i32 %.sroa.72.0.ph564, 0
  br i1 %.not455, label %.loopexit501, label %bb.f

bb.f:                                             ; preds = %.loopexit1704
  %i.r = load i8, ptr %.sroa.52.0.ph565, align 1, !tbaa !8 ; 3 uses
  %i.s = icmp ugt i8 %i.r, -31
  br i1 %i.s, label %.loopexit470, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = udiv i8 %i.r, 45
  %i.u = zext nneg i8 %i.t to i32                 ; 2 uses
  %i.v = urem i8 %i.r, 45                         ; 2 uses
  %i.w = udiv i8 %i.v, 9
  %i.x = zext nneg i8 %i.w to i32
  %i.y = urem i8 %i.v, 9
  %i.z = zext nneg i8 %i.y to i32                 ; 2 uses
  %notmask = shl nsw i32 -1, %i.u
  %i.aa = xor i32 %notmask, -1
  %notmask456 = shl nsw i32 -1, %i.x
  %i.ab = xor i32 %notmask456, -1
  %i.ac = add nuw nsw i32 %i.z, %i.u
  %i.ad = shl nuw nsw i32 768, %i.ac              ; 2 uses
  %1 = add nuw nsw i32 %i.ad, 1846                ; 2 uses
  %2 = shl nuw nsw i32 %1, 1                      ; 3 uses
  %.not457 = icmp eq i32 %2, %.sroa.37.0.ph.ph
  br i1 %.not457, label %iter.check, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not458 = icmp eq ptr %.sroa.505.0.ph.ph, null
  br i1 %.not458, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %.sroa.505.0.ph.ph) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = zext nneg i32 %2 to i64
  %i.af = tail call ptr @cli_malloc(i64 noundef %i.ae) #8 ; 2 uses
  %.not459 = icmp eq ptr %i.af, null
  br i1 %.not459, label %.loopexit470, label %iter.check

iter.check:                                       ; preds = %bb.j, %bb.g
  %.sroa.37.1 = phi i32 [ %.sroa.37.0.ph.ph, %bb.g ], [ %2, %bb.j ]
  %.sroa.505.1 = phi ptr [ %.sroa.505.0.ph.ph, %bb.g ], [ %i.af, %bb.j ] ; 5 uses
  %narrow = add nuw i32 %i.ad, 1824
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %iter.check
  %index = phi i32 [ 0, %iter.check ], [ %index.next, %vector.body ] ; 3 uses
  %3 = xor i32 %index, -1
  %4 = add i32 %1, %3
  %5 = zext i32 %4 to i64
  %gep = getelementptr inbounds nuw [2 x i8], ptr %.sroa.505.1, i64 %5 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %gep, i64 -14
  %i.ah = getelementptr inbounds i8, ptr %gep, i64 -30
  store <8 x i16> splat (i16 1024), ptr %i.ag, align 2, !tbaa !17
  store <8 x i16> splat (i16 1024), ptr %i.ah, align 2, !tbaa !17
  %index.next = add nuw i32 %index, 16
  %i.ai = icmp eq i32 %index, %narrow
  br i1 %i.ai, label %vec.epilog.vector.body, label %vector.body, !llvm.loop !19

vec.epilog.vector.body:                           ; preds = %vector.body
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.505.1, i64 4
  store <4 x i16> splat (i16 1024), ptr %i.aj, align 2, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.505.1, i64 2
  store i16 1024, ptr %i.ak, align 2, !tbaa !17
  store i16 1024, ptr %.sroa.505.1, align 2, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %vec.epilog.vector.body, %bb.k
  %.sroa.347.0.ph5123734 = phi i32 [ %.sroa.347.0.ph5123735, %bb.k ], [ %.sroa.347.0.ph512, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.362.0.ph1555 = phi i32 [ %.sroa.362.0.ph1554, %bb.k ], [ %.sroa.362.0.ph, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.207.0.ph520.ph1517 = phi i32 [ %.sroa.207.0.ph520.ph1516, %bb.k ], [ %.sroa.207.0.ph520.ph, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.34.0.ph532.ph1473 = phi i32 [ %.sroa.34.0.ph532.ph1472, %bb.k ], [ %.sroa.34.0.ph532.ph, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.344.0.ph5491383 = phi i32 [ %.sroa.344.0.ph5491382, %bb.k ], [ %.sroa.344.0.ph549, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.251.0.ph5531320 = phi i32 [ %.sroa.251.0.ph5531319, %bb.k ], [ %.sroa.251.0.ph553, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.164.0.ph5571255 = phi ptr [ %.sroa.164.0.ph5571254, %bb.k ], [ %.sroa.164.0.ph557, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.145144.0.ph5581221 = phi ptr [ %.sroa.145144.0.ph5581220, %bb.k ], [ %.sroa.145144.0.ph558, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.141.0.ph5591176 = phi i8 [ %.sroa.141.0.ph5591175, %bb.k ], [ %.sroa.141.0.ph559, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.408.0.ph5781084 = phi i32 [ %.sroa.408.0.ph5781083, %bb.k ], [ %.sroa.408.0.ph578, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.457.0.ph5791052 = phi i32 [ %.sroa.457.0.ph5791053, %bb.k ], [ %.sroa.457.0.ph579, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.325.01009 = phi i32 [ %.sroa.325.01008, %bb.k ], [ %.sroa.325.0.ph550, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.130.0953 = phi i8 [ %.sroa.130.0952, %bb.k ], [ %.sroa.130.0.ph560, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.120.0887 = phi i32 [ %.sroa.120.0886, %bb.k ], [ %.sroa.120.0.ph561, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.111.0824 = phi i32 [ %.sroa.111.0823, %bb.k ], [ %.sroa.111.0.ph562, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.102109.0757 = phi ptr [ %.sroa.102109.0756, %bb.k ], [ %.sroa.102109.0.ph563, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.396.0653 = phi i32 [ %.sroa.396.0652, %bb.k ], [ %.sroa.396.0.ph577, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.321.1 = phi i32 [ %.sroa.321.2, %bb.k ], [ %i.z, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.294.1 = phi i32 [ %i.aq, %bb.k ], [ 0, %vec.epilog.vector.body ] ; 5 uses
  %.sroa.227.1 = phi i32 [ %i.ar, %bb.k ], [ 0, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.72.1.in = phi i32 [ %.sroa.72.2, %bb.k ], [ %.sroa.72.0.ph564, %vec.epilog.vector.body ]
  %.sroa.52.0.pn = phi ptr [ %.sroa.52.2, %bb.k ], [ %.sroa.52.0.ph565, %vec.epilog.vector.body ]
  %.sroa.37.2 = phi i32 [ %.sroa.37.3, %bb.k ], [ %.sroa.37.1, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.392.1 = phi i32 [ %.sroa.392.2, %bb.k ], [ %i.aa, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.394.1 = phi i32 [ %.sroa.394.2, %bb.k ], [ %i.ab, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.505.2 = phi ptr [ %.sroa.505.3, %bb.k ], [ %.sroa.505.1, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.52.1 = getelementptr inbounds nuw i8, ptr %.sroa.52.0.pn, i64 1 ; 2 uses
  %.sroa.72.1 = add i32 %.sroa.72.1.in, -1        ; 2 uses
  %i.al = icmp slt i32 %.sroa.227.1, 4
  br i1 %i.al, label %.loopexit503, label %bb.l

.loopexit503:                                     ; preds = %.preheader.outer548, %.loopexit
  %.sroa.347.0.ph5123735 = phi i32 [ %.sroa.347.0.ph5123734, %.loopexit ], [ %.sroa.347.0.ph512, %.preheader.outer548 ] ; 2 uses
  %.sroa.362.0.ph1554 = phi i32 [ %.sroa.362.0.ph1555, %.loopexit ], [ %.sroa.362.0.ph, %.preheader.outer548 ] ; 2 uses
  %.sroa.207.0.ph520.ph1516 = phi i32 [ %.sroa.207.0.ph520.ph1517, %.loopexit ], [ %.sroa.207.0.ph520.ph, %.preheader.outer548 ] ; 2 uses
  %.sroa.34.0.ph532.ph1472 = phi i32 [ %.sroa.34.0.ph532.ph1473, %.loopexit ], [ %.sroa.34.0.ph532.ph, %.preheader.outer548 ] ; 2 uses
  %.sroa.344.0.ph5491382 = phi i32 [ %.sroa.344.0.ph5491383, %.loopexit ], [ %.sroa.344.0.ph549, %.preheader.outer548 ] ; 2 uses
  %.sroa.251.0.ph5531319 = phi i32 [ %.sroa.251.0.ph5531320, %.loopexit ], [ %.sroa.251.0.ph553, %.preheader.outer548 ] ; 2 uses
  %.sroa.164.0.ph5571254 = phi ptr [ %.sroa.164.0.ph5571255, %.loopexit ], [ %.sroa.164.0.ph557, %.preheader.outer548 ] ; 2 uses
  %.sroa.145144.0.ph5581220 = phi ptr [ %.sroa.145144.0.ph5581221, %.loopexit ], [ %.sroa.145144.0.ph558, %.preheader.outer548 ] ; 2 uses
  %.sroa.141.0.ph5591175 = phi i8 [ %.sroa.141.0.ph5591176, %.loopexit ], [ %.sroa.141.0.ph559, %.preheader.outer548 ] ; 2 uses
  %.sroa.408.0.ph5781083 = phi i32 [ %.sroa.408.0.ph5781084, %.loopexit ], [ %.sroa.408.0.ph578, %.preheader.outer548 ] ; 2 uses
  %.sroa.457.0.ph5791053 = phi i32 [ %.sroa.457.0.ph5791052, %.loopexit ], [ %.sroa.457.0.ph579, %.preheader.outer548 ] ; 2 uses
  %.sroa.325.01008 = phi i32 [ %.sroa.325.01009, %.loopexit ], [ %.sroa.325.0.ph550, %.preheader.outer548 ] ; 2 uses
  %.sroa.130.0952 = phi i8 [ %.sroa.130.0953, %.loopexit ], [ %.sroa.130.0.ph560, %.preheader.outer548 ] ; 2 uses
  %.sroa.120.0886 = phi i32 [ %.sroa.120.0887, %.loopexit ], [ %.sroa.120.0.ph561, %.preheader.outer548 ] ; 2 uses
  %.sroa.111.0823 = phi i32 [ %.sroa.111.0824, %.loopexit ], [ %.sroa.111.0.ph562, %.preheader.outer548 ] ; 2 uses
  %.sroa.102109.0756 = phi ptr [ %.sroa.102109.0757, %.loopexit ], [ %.sroa.102109.0.ph563, %.preheader.outer548 ] ; 2 uses
  %.sroa.396.0652 = phi i32 [ %.sroa.396.0653, %.loopexit ], [ %.sroa.396.0.ph577, %.preheader.outer548 ] ; 2 uses
  %.sroa.321.2 = phi i32 [ %.sroa.321.1, %.loopexit ], [ %.sroa.321.0.ph.ph, %.preheader.outer548 ] ; 2 uses
  %.sroa.294.2 = phi i32 [ %.sroa.294.1, %.loopexit ], [ %.sroa.294.0.ph552, %.preheader.outer548 ] ; 2 uses
  %.sroa.227.2 = phi i32 [ %.sroa.227.1, %.loopexit ], [ %.sroa.227.0.ph554, %.preheader.outer548 ] ; 3 uses
  %.sroa.72.2 = phi i32 [ %.sroa.72.1, %.loopexit ], [ %.sroa.72.0.ph564, %.preheader.outer548 ] ; 2 uses
  %.sroa.52.2 = phi ptr [ %.sroa.52.1, %.loopexit ], [ %.sroa.52.0.ph565, %.preheader.outer548 ] ; 3 uses
  %.sroa.37.3 = phi i32 [ %.sroa.37.2, %.loopexit ], [ %.sroa.37.0.ph.ph, %.preheader.outer548 ] ; 2 uses
  %.sroa.392.2 = phi i32 [ %.sroa.392.1, %.loopexit ], [ %.sroa.392.0.ph.ph, %.preheader.outer548 ] ; 2 uses
  %.sroa.394.2 = phi i32 [ %.sroa.394.1, %.loopexit ], [ %.sroa.394.0.ph.ph, %.preheader.outer548 ] ; 2 uses
  %.sroa.505.3 = phi ptr [ %.sroa.505.2, %.loopexit ], [ %.sroa.505.0.ph.ph, %.preheader.outer548 ] ; 2 uses
  %.not467 = icmp eq i32 %.sroa.72.2, 0
  br i1 %.not467, label %.loopexit501, label %bb.k

bb.k:                                             ; preds = %.loopexit503
  %i.am = load i8, ptr %.sroa.52.2, align 1, !tbaa !8
  %i.an = zext i8 %i.am to i32
  %i.ao = shl nsw i32 %.sroa.227.2, 3
  %i.ap = shl i32 %i.an, %i.ao
  %i.aq = or i32 %i.ap, %.sroa.294.2
  %i.ar = add nsw i32 %.sroa.227.2, 1
  br label %.loopexit, !llvm.loop !23

bb.l:                                             ; preds = %.loopexit
  %.not461 = icmp eq i32 %.sroa.294.1, %.sroa.39.0.ph.ph
  br i1 %.not461, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not462 = icmp eq ptr %.sroa.494.0.ph.ph, null
  br i1 %.not462, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %.sroa.494.0.ph.ph) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.as = zext i32 %.sroa.294.1 to i64
  %i.at = tail call ptr @cli_malloc(i64 noundef %i.as) #8 ; 2 uses
  %.not463 = icmp eq ptr %i.at, null
  br i1 %.not463, label %.loopexit470, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.sroa.39.1 = phi i32 [ %.sroa.294.1, %bb.o ], [ %.sroa.39.0.ph.ph, %bb.l ] ; 2 uses
  %.sroa.494.1 = phi ptr [ %i.at, %bb.o ], [ %.sroa.494.0.ph.ph, %bb.l ] ; 2 uses
  %i.au = add i32 %.sroa.39.1, -1
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.494.1, i64 %i.av
  store i8 0, ptr %i.aw, align 1, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %.sroa.347.0.ph5123730 = phi i32 [ %.sroa.347.0.ph5123734, %bb.p ], [ %.sroa.347.0.ph5123732, %bb.r ] ; 2 uses
  %.sroa.362.0.ph1552 = phi i32 [ %.sroa.362.0.ph1555, %bb.p ], [ %.sroa.362.0.ph1553, %bb.r ] ; 2 uses
  %.sroa.207.0.ph520.ph1514 = phi i32 [ %.sroa.207.0.ph520.ph1517, %bb.p ], [ %.sroa.207.0.ph520.ph1515, %bb.r ] ; 2 uses
  %.sroa.34.0.ph532.ph1470 = phi i32 [ %.sroa.34.0.ph532.ph1473, %bb.p ], [ %.sroa.34.0.ph532.ph1471, %bb.r ] ; 2 uses
  %.sroa.344.0.ph5491380 = phi i32 [ %.sroa.344.0.ph5491383, %bb.p ], [ %.sroa.344.0.ph5491381, %bb.r ] ; 2 uses
  %.sroa.251.0.ph5531317 = phi i32 [ %.sroa.251.0.ph5531320, %bb.p ], [ %.sroa.251.0.ph5531318, %bb.r ] ; 2 uses
  %.sroa.164.0.ph5571252 = phi ptr [ %.sroa.164.0.ph5571255, %bb.p ], [ %.sroa.164.0.ph5571253, %bb.r ]
  %.sroa.145144.0.ph5581218 = phi ptr [ %.sroa.145144.0.ph5581221, %bb.p ], [ %.sroa.145144.0.ph5581219, %bb.r ] ; 2 uses
  %.sroa.141.0.ph5591173 = phi i8 [ %.sroa.141.0.ph5591176, %bb.p ], [ %.sroa.141.0.ph5591174, %bb.r ] ; 2 uses
  %.sroa.408.0.ph5781081 = phi i32 [ %.sroa.408.0.ph5781084, %bb.p ], [ %.sroa.408.0.ph5781082, %bb.r ] ; 2 uses
  %.sroa.325.01006 = phi i32 [ %.sroa.325.01009, %bb.p ], [ %.sroa.325.01007, %bb.r ] ; 2 uses
  %.sroa.130.0950 = phi i8 [ %.sroa.130.0953, %bb.p ], [ %.sroa.130.0951, %bb.r ] ; 2 uses
  %.sroa.120.0884 = phi i32 [ %.sroa.120.0887, %bb.p ], [ %.sroa.120.0885, %bb.r ] ; 2 uses
  %.sroa.111.0821 = phi i32 [ %.sroa.111.0824, %bb.p ], [ %.sroa.111.0822, %bb.r ] ; 2 uses
  %.sroa.102109.0754 = phi ptr [ %.sroa.102109.0757, %bb.p ], [ %.sroa.102109.0755, %bb.r ] ; 2 uses
  %.sroa.396.0650 = phi i32 [ %.sroa.396.0653, %bb.p ], [ %.sroa.396.0651, %bb.r ] ; 2 uses
  %.sroa.321.3 = phi i32 [ %.sroa.321.1, %bb.p ], [ %.sroa.321.4, %bb.r ] ; 2 uses
  %.sroa.294.3 = phi i32 [ %.sroa.294.1, %bb.p ], [ %.sroa.294.4, %bb.r ]
  %.sroa.227.3 = phi i32 [ 5, %bb.p ], [ %.sroa.227.4, %bb.r ] ; 2 uses
  %.sroa.72.3 = phi i32 [ %.sroa.72.1, %bb.p ], [ %i.az, %bb.r ] ; 2 uses
  %.sroa.52.3 = phi ptr [ %.sroa.52.1, %bb.p ], [ %i.ba, %bb.r ] ; 2 uses
  %.sroa.39.2 = phi i32 [ %.sroa.39.1, %bb.p ], [ %.sroa.39.3, %bb.r ] ; 2 uses
  %.sroa.37.4 = phi i32 [ %.sroa.37.2, %bb.p ], [ %.sroa.37.5, %bb.r ] ; 2 uses
  %.sroa.392.3 = phi i32 [ %.sroa.392.1, %bb.p ], [ %.sroa.392.4, %bb.r ] ; 2 uses
  %.sroa.394.3 = phi i32 [ %.sroa.394.1, %bb.p ], [ %.sroa.394.4, %bb.r ] ; 2 uses
  %.sroa.457.1 = phi i32 [ %.sroa.457.0.ph5791052, %bb.p ], [ %i.bd, %bb.r ] ; 2 uses
  %.sroa.494.2 = phi ptr [ %.sroa.494.1, %bb.p ], [ %.sroa.494.3, %bb.r ] ; 2 uses
  %.sroa.505.4 = phi ptr [ %.sroa.505.2, %bb.p ], [ %.sroa.505.5, %bb.r ] ; 2 uses
  %i.ax = add nsw i32 %.sroa.227.3, -1
  %.not464 = icmp eq i32 %.sroa.227.3, 0
  br i1 %.not464, label %.loopexit505, label %.loopexit504

.loopexit504:                                     ; preds = %.preheader.outer548, %bb.q
  %.sroa.347.0.ph5123732 = phi i32 [ %.sroa.347.0.ph5123730, %bb.q ], [ %.sroa.347.0.ph512, %.preheader.outer548 ] ; 2 uses
  %.sroa.362.0.ph1553 = phi i32 [ %.sroa.362.0.ph1552, %bb.q ], [ %.sroa.362.0.ph, %.preheader.outer548 ] ; 2 uses
  %.sroa.207.0.ph520.ph1515 = phi i32 [ %.sroa.207.0.ph520.ph1514, %bb.q ], [ %.sroa.207.0.ph520.ph, %.preheader.outer548 ] ; 2 uses
  %.sroa.34.0.ph532.ph1471 = phi i32 [ %.sroa.34.0.ph532.ph1470, %bb.q ], [ %.sroa.34.0.ph532.ph, %.preheader.outer548 ] ; 2 uses
  %.sroa.344.0.ph5491381 = phi i32 [ %.sroa.344.0.ph5491380, %bb.q ], [ %.sroa.344.0.ph549, %.preheader.outer548 ] ; 2 uses
  %.sroa.251.0.ph5531318 = phi i32 [ %.sroa.251.0.ph5531317, %bb.q ], [ %.sroa.251.0.ph553, %.preheader.outer548 ] ; 2 uses
  %.sroa.164.0.ph5571253 = phi ptr [ %.sroa.164.0.ph5571252, %bb.q ], [ %.sroa.164.0.ph557, %.preheader.outer548 ] ; 2 uses
  %.sroa.145144.0.ph5581219 = phi ptr [ %.sroa.145144.0.ph5581218, %bb.q ], [ %.sroa.145144.0.ph558, %.preheader.outer548 ] ; 2 uses
  %.sroa.141.0.ph5591174 = phi i8 [ %.sroa.141.0.ph5591173, %bb.q ], [ %.sroa.141.0.ph559, %.preheader.outer548 ] ; 2 uses
  %.sroa.408.0.ph5781082 = phi i32 [ %.sroa.408.0.ph5781081, %bb.q ], [ %.sroa.408.0.ph578, %.preheader.outer548 ] ; 2 uses
  %.sroa.325.01007 = phi i32 [ %.sroa.325.01006, %bb.q ], [ %.sroa.325.0.ph550, %.preheader.outer548 ] ; 2 uses
  %.sroa.130.0951 = phi i8 [ %.sroa.130.0950, %bb.q ], [ %.sroa.130.0.ph560, %.preheader.outer548 ] ; 2 uses
  %.sroa.120.0885 = phi i32 [ %.sroa.120.0884, %bb.q ], [ %.sroa.120.0.ph561, %.preheader.outer548 ] ; 2 uses
  %.sroa.111.0822 = phi i32 [ %.sroa.111.0821, %bb.q ], [ %.sroa.111.0.ph562, %.preheader.outer548 ] ; 2 uses
  %.sroa.102109.0755 = phi ptr [ %.sroa.102109.0754, %bb.q ], [ %.sroa.102109.0.ph563, %.preheader.outer548 ] ; 2 uses
  %.sroa.396.0651 = phi i32 [ %.sroa.396.0650, %bb.q ], [ %.sroa.396.0.ph577, %.preheader.outer548 ] ; 2 uses
  %.sroa.321.4 = phi i32 [ %.sroa.321.3, %bb.q ], [ %.sroa.321.0.ph.ph, %.preheader.outer548 ] ; 2 uses
  %.sroa.294.4 = phi i32 [ %.sroa.294.3, %bb.q ], [ %.sroa.294.0.ph552, %.preheader.outer548 ] ; 2 uses
  %.sroa.227.4 = phi i32 [ %i.ax, %bb.q ], [ %.sroa.227.0.ph554, %.preheader.outer548 ] ; 2 uses
  %.sroa.72.4 = phi i32 [ %.sroa.72.3, %bb.q ], [ %.sroa.72.0.ph564, %.preheader.outer548 ] ; 2 uses
  %.sroa.52.4 = phi ptr [ %.sroa.52.3, %bb.q ], [ %.sroa.52.0.ph565, %.preheader.outer548 ] ; 3 uses
  %.sroa.39.3 = phi i32 [ %.sroa.39.2, %bb.q ], [ %.sroa.39.0.ph.ph, %.preheader.outer548 ] ; 2 uses
  %.sroa.37.5 = phi i32 [ %.sroa.37.4, %bb.q ], [ %.sroa.37.0.ph.ph, %.preheader.outer548 ] ; 2 uses
  %.sroa.392.4 = phi i32 [ %.sroa.392.3, %bb.q ], [ %.sroa.392.0.ph.ph, %.preheader.outer548 ] ; 2 uses
  %.sroa.394.4 = phi i32 [ %.sroa.394.3, %bb.q ], [ %.sroa.394.0.ph.ph, %.preheader.outer548 ] ; 2 uses
  %.sroa.457.2 = phi i32 [ %.sroa.457.1, %bb.q ], [ %.sroa.457.0.ph579, %.preheader.outer548 ] ; 2 uses
  %.sroa.494.3 = phi ptr [ %.sroa.494.2, %bb.q ], [ %.sroa.494.0.ph.ph, %.preheader.outer548 ] ; 2 uses
  %.sroa.505.5 = phi ptr [ %.sroa.505.4, %bb.q ], [ %.sroa.505.0.ph.ph, %.preheader.outer548 ] ; 2 uses
  %.not466 = icmp eq i32 %.sroa.72.4, 0
  br i1 %.not466, label %.loopexit501, label %bb.r

bb.r:                                             ; preds = %.loopexit504
  %i.ay = shl i32 %.sroa.457.2, 8
  %i.az = add i32 %.sroa.72.4, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.52.4, i64 1
  %i.bb = load i8, ptr %.sroa.52.4, align 1, !tbaa !8
  %i.bc = zext i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ay, %i.bc
  br label %bb.q, !llvm.loop !24

.loopexit505:                                     ; preds = %.preheader.peel.next, %.preheader.outer548, %bb.q
  %.sroa.347.0.ph5123729 = phi i32 [ %.sroa.347.0.ph5123730, %bb.q ], [ %.sroa.347.0.ph512, %.preheader.outer548 ], [ %.sroa.347.0.ph512, %.preheader.peel.next ]
  %.sroa.362.0.ph1558 = phi i32 [ %.sroa.362.0.ph1552, %bb.q ], [ %.sroa.362.0.ph, %.preheader.outer548 ], [ %.sroa.362.0.ph, %.preheader.peel.next ]
  %.sroa.207.0.ph520.ph1513 = phi i32 [ %.sroa.207.0.ph520.ph1514, %bb.q ], [ %.sroa.207.0.ph520.ph, %.preheader.outer548 ], [ %.sroa.207.0.ph520.ph, %.preheader.peel.next ]
  %.sroa.34.0.ph532.ph1469 = phi i32 [ %.sroa.34.0.ph532.ph1470, %bb.q ], [ %.sroa.34.0.ph532.ph, %.preheader.outer548 ], [ %.sroa.34.0.ph532.ph, %.preheader.peel.next ]
  %.sroa.344.0.ph5491396 = phi i32 [ %.sroa.344.0.ph5491380, %bb.q ], [ %.sroa.344.0.ph549, %.preheader.outer548 ], [ %.sroa.344.0.ph549, %.preheader.peel.next ]
  %.sroa.251.0.ph5531316 = phi i32 [ %.sroa.251.0.ph5531317, %bb.q ], [ %.sroa.251.0.ph553, %.preheader.outer548 ], [ %.sroa.251.0.ph553, %.preheader.peel.next ]
  %.sroa.145144.0.ph5581225 = phi ptr [ %.sroa.145144.0.ph5581218, %bb.q ], [ %.sroa.145144.0.ph558, %.preheader.outer548 ], [ %.sroa.145144.0.ph558, %.preheader.peel.next ]
  %.sroa.141.0.ph5591172 = phi i8 [ %.sroa.141.0.ph5591173, %bb.q ], [ %.sroa.141.0.ph559, %.preheader.outer548 ], [ %.sroa.141.0.ph559, %.preheader.peel.next ]
  %.sroa.408.0.ph5781087 = phi i32 [ %.sroa.408.0.ph5781081, %bb.q ], [ %.sroa.408.0.ph578, %.preheader.outer548 ], [ %.sroa.408.0.ph578, %.preheader.peel.next ]
  %.sroa.325.01020 = phi i32 [ %.sroa.325.01006, %bb.q ], [ %.sroa.325.13.peel, %.preheader.peel.next ], [ %.sroa.325.0.ph550, %.preheader.outer548 ] ; 2 uses
  %.sroa.130.0949 = phi i8 [ %.sroa.130.0950, %bb.q ], [ %i.j, %.preheader.peel.next ], [ %.sroa.130.0.ph560, %.preheader.outer548 ]
  %.sroa.120.0883 = phi i32 [ %.sroa.120.0884, %bb.q ], [ %i.o, %.preheader.peel.next ], [ %.sroa.120.0.ph561, %.preheader.outer548 ] ; 2 uses
  %.sroa.111.0820 = phi i32 [ %.sroa.111.0821, %bb.q ], [ %i.q, %.preheader.peel.next ], [ %.sroa.111.0.ph562, %.preheader.outer548 ]
  %.sroa.102109.0753 = phi ptr [ %.sroa.102109.0754, %bb.q ], [ %i.p, %.preheader.peel.next ], [ %.sroa.102109.0.ph563, %.preheader.outer548 ]
  %.sroa.396.0649 = phi i32 [ %.sroa.396.0650, %bb.q ], [ %i.n, %.preheader.peel.next ], [ %.sroa.396.0.ph577, %.preheader.outer548 ]
  %.sroa.321.5 = phi i32 [ %.sroa.321.3, %bb.q ], [ %.sroa.321.0.ph.ph, %.preheader.outer548 ], [ %.sroa.321.0.ph.ph, %.preheader.peel.next ]
  %.sroa.227.5 = phi i32 [ -1, %bb.q ], [ %.sroa.227.0.ph554, %.preheader.outer548 ], [ %.sroa.227.0.ph554, %.preheader.peel.next ]
  %.sroa.72.5 = phi i32 [ %.sroa.72.3, %bb.q ], [ %.sroa.72.0.ph564, %.preheader.outer548 ], [ %.sroa.72.0.ph564, %.preheader.peel.next ]
  %.sroa.52.5 = phi ptr [ %.sroa.52.3, %bb.q ], [ %.sroa.52.0.ph565, %.preheader.outer548 ], [ %.sroa.52.0.ph565, %.preheader.peel.next ]
  %.sroa.39.4 = phi i32 [ %.sroa.39.2, %bb.q ], [ %.sroa.39.0.ph.ph, %.preheader.outer548 ], [ %.sroa.39.0.ph.ph, %.preheader.peel.next ]
  %.sroa.37.6 = phi i32 [ %.sroa.37.4, %bb.q ], [ %.sroa.37.0.ph.ph, %.preheader.outer548 ], [ %.sroa.37.0.ph.ph, %.preheader.peel.next ]
end_hunk_0
