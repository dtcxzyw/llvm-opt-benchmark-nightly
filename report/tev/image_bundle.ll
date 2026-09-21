Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/image_bundle?download=true
inline.NumInlined: 498
inline.NumDeleted: 268
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK3jxl11ImageBundle14VerifyMetadataEv:bb.a
  br i1 %.not15.i.i23, label %_ZNK3jxl13ImageMetadata12GetAlphaBitsEv.exit26.thread, label %.lr.ph.i.i20

_ZNK3jxl13ImageMetadata12GetAlphaBitsEv.exit26:   ; preds = %.lr.ph.i.i20
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i21, i64 28
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !107
  %i.ap = icmp ult i32 %i.ao, 33
  br i1 %i.ap, label %_ZNK3jxl13ImageMetadata12GetAlphaBitsEv.exit26.thread, label %.thread38

_ZNK3jxl13ImageMetadata12GetAlphaBitsEv.exit26.thread: ; preds = %bb.f, %bb.c, %_ZNK3jxl13ImageMetadata12GetAlphaBitsEv.exit26
  br label %.thread38

.thread38:                                        ; preds = %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit.i, %_ZNK3jxl13ImageMetadata12GetAlphaBitsEv.exit26, %bb.b, %bb.a, %_ZNK3jxl13ImageMetadata12GetAlphaBitsEv.exit26.thread
  %.sroa.030.1 = phi i32 [ 1, %bb.b ], [ 1, %bb.a ], [ 0, %_ZNK3jxl13ImageMetadata12GetAlphaBitsEv.exit26.thread ], [ 1, %_ZNK3jxl13ImageMetadata12GetAlphaBitsEv.exit26 ], [ 1, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit.i ]
  ret i32 %.sroa.030.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK3jxl11ImageBundle5alphaEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92   ; 3 uses
  %.not1516.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not1516.i.i, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.sroa.010.017.i.i = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !96
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i, i64 96 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.i, %i.f
  br i1 %.not15.i.i, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit, label %.lr.ph.i.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.010.017.i = phi ptr [ %i.l, %bb.c ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 96 ; 2 uses
  %.not15.i = icmp eq ptr %i.l, %i.f
  br i1 %.not15.i, label %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit, label %.lr.ph.i

_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit: ; preds = %.lr.ph.i, %bb.c
  %i.m = phi ptr [ %.sroa.010.017.i, %.lr.ph.i ], [ null, %bb.c ]
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.d to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %i.s, i64 %i.q
  br label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit

_ZNK3jxl11ImageBundle8HasAlphaEv.exit:            ; preds = %bb.b, %bb.a, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit
  %.0 = phi ptr [ %i.t, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i64 0, 4294967296) i64 @_ZNK3jxl11ImageBundle18DetectRealBitdepthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !114
  %i.e = zext i32 %i.d to i64
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK3jxl11ImageBundle5blackEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92   ; 3 uses
  %.not1516.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not1516.i.i, label %_ZNK3jxl11ImageBundle8HasBlackEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.sroa.010.017.i.i = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !96
  %.not.i.i = icmp eq i32 %i.h, 4
  br i1 %.not.i.i, label %.lr.ph.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i, i64 96 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.i, %i.f
  br i1 %.not15.i.i, label %_ZNK3jxl11ImageBundle8HasBlackEv.exit, label %.lr.ph.i.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.010.017.i = phi ptr [ %i.l, %bb.c ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96
  %.not.i = icmp eq i32 %i.k, 4
  br i1 %.not.i, label %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 96 ; 2 uses
  %.not15.i = icmp eq ptr %i.l, %i.f
  br i1 %.not15.i, label %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit, label %.lr.ph.i

_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit: ; preds = %.lr.ph.i, %bb.c
  %i.m = phi ptr [ %.sroa.010.017.i, %.lr.ph.i ], [ null, %bb.c ]
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.d to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %i.s, i64 %i.q
  br label %_ZNK3jxl11ImageBundle8HasBlackEv.exit

_ZNK3jxl11ImageBundle8HasBlackEv.exit:            ; preds = %bb.b, %bb.a, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit
  %.0 = phi ptr [ %i.t, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN3jxl11ImageBundle5alphaEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92   ; 3 uses
  %.not1516.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not1516.i.i, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.sroa.010.017.i.i = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !96
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i, i64 96 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.i, %i.f
  br i1 %.not15.i.i, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit, label %.lr.ph.i.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.010.017.i = phi ptr [ %i.l, %bb.c ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 96 ; 2 uses
  %.not15.i = icmp eq ptr %i.l, %i.f
  br i1 %.not15.i, label %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit, label %.lr.ph.i

_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit: ; preds = %.lr.ph.i, %bb.c
  %i.m = phi ptr [ %.sroa.010.017.i, %.lr.ph.i ], [ null, %bb.c ]
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.d to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %i.s, i64 %i.q
  br label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit

_ZNK3jxl11ImageBundle8HasAlphaEv.exit:            ; preds = %bb.b, %bb.a, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit
  %.0 = phi ptr [ %i.t, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl11ImageBundle8SetAlphaEONS_5PlaneIfEE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92   ; 3 uses
  %.not1516.i = icmp eq ptr %i.d, %i.f
  br i1 %.not1516.i, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.010.017.i = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !96
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 96 ; 2 uses
  %.not15.i = icmp eq ptr %i.i, %i.f
  br i1 %.not15.i, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %2 = load i32, ptr %1, align 8, !tbaa !15
  %.not12 = icmp eq i32 %2, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %.not13 = icmp eq i32 %i.k, 0
  %or.cond = select i1 %.not12, i1 true, i1 %.not13
  br i1 %or.cond, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 56
  %i.t = ptrtoint ptr %i.f to i64
  %i.u = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 96
  %i.x = icmp ult i64 %i.s, %i.w
  %i.y = ptrtoint ptr %.sroa.010.017.i to i64
  %i.z = sub i64 %i.y, %i.u
  %i.aa = sdiv exact i64 %i.z, 96
  %i.ab = getelementptr inbounds [56 x i8], ptr %i.o, i64 %i.aa ; 4 uses
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call ptr @_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE6insertENS_11__wrap_iterIPKS3_EEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %1) #13 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ae) #12 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !57
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 3 uses
  %.not1.i.i = icmp eq ptr %i.ak, null
  br i1 %.not1.i.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = load i32, ptr %i.al, align 8, !tbaa !15 ; 2 uses
  %.not.i.i = icmp eq i32 %i.am, 0
  %.pre31.pre = load ptr, ptr %i.l, align 8, !tbaa !21 ; 6 uses
  %.pre33.pre = load ptr, ptr %i.m, align 8, !tbaa !22 ; 4 uses
  br i1 %.not.i.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.an = icmp eq ptr %.pre31.pre, %.pre33.pre
  br i1 %i.an, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = load i32, ptr %.pre31.pre, align 8, !tbaa !15
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !85
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !86
  %i.au = sext i32 %i.at to i64
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !21
  %.pre32 = load ptr, ptr %i.m, align 8, !tbaa !22
  br label %_ZNK3jxl11ImageBundle5ysizeEv.exit.i

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.0.i.ph.shrunk.i = phi i32 [ %i.am, %bb.h ], [ %i.ao, %bb.j ], [ 0, %bb.i ]
  %.0.i.ph.i = zext i32 %.0.i.ph.shrunk.i to i64  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !16 ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %.not.i19.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i19.i, label %bb.m, label %_ZNK3jxl11ImageBundle5ysizeEv.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ay = icmp eq ptr %.pre31.pre, %.pre33.pre
  br i1 %i.ay, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %.pre31.pre, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !16
  %i.bb = zext i32 %i.ba to i64
  br label %_ZNK3jxl11ImageBundle5ysizeEv.exit.i

_ZNK3jxl11ImageBundle5ysizeEv.exit.i:             ; preds = %bb.n, %bb.l, %bb.k
  %i.bc = phi ptr [ %.pre32, %bb.k ], [ %.pre33.pre, %bb.l ], [ %.pre33.pre, %bb.n ] ; 2 uses
  %i.bd = phi ptr [ %.pre, %bb.k ], [ %.pre31.pre, %bb.l ], [ %.pre31.pre, %bb.n ] ; 2 uses
  %.0.i28.i = phi i64 [ %i.ar, %bb.k ], [ %.0.i.ph.i, %bb.l ], [ %.0.i.ph.i, %bb.n ] ; 2 uses
  %.0.i18.i = phi i64 [ %i.au, %bb.k ], [ %i.ax, %bb.l ], [ %i.bb, %bb.n ] ; 2 uses
  %.not.i14 = icmp eq ptr %i.bd, %i.bc
  br i1 %.not.i14, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK3jxl11ImageBundle5ysizeEv.exit.i
  %i.be = icmp ne i64 %.0.i28.i, 0
  %i.bf = icmp ne i64 %.0.i18.i, 0
  %or.cond.i = and i1 %i.be, %i.bf
  br i1 %or.cond.i, label %.lr.ph.i15, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit

bb.p:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.022.032.i, i64 56 ; 2 uses
  %.not30.i = icmp eq ptr %i.bg, %i.bc
  br i1 %.not30.i, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.o, %bb.p
  %.sroa.022.032.i = phi ptr [ %i.bg, %bb.p ], [ %i.bd, %bb.o ] ; 3 uses
  %i.bh = load i32, ptr %.sroa.022.032.i, align 8, !tbaa !15
  %i.bi = zext i32 %i.bh to i64
  %i.bj = icmp eq i64 %.0.i28.i, %i.bi
  br i1 %i.bj, label %bb.q, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit

bb.q:                                             ; preds = %.lr.ph.i15
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.022.032.i, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !16
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp eq i64 %.0.i18.i, %i.bm
  br i1 %i.bn, label %bb.p, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit

_ZNK3jxl11ImageBundle11VerifySizesEv.exit:        ; preds = %bb.b, %bb.p, %bb.q, %.lr.ph.i15, %bb.m, %_ZNK3jxl11ImageBundle5ysizeEv.exit.i, %bb.o, %bb.c, %bb.a
  %.sroa.020.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.q ], [ 1, %bb.o ], [ 1, %bb.a ], [ 0, %_ZNK3jxl11ImageBundle5ysizeEv.exit.i ], [ 0, %bb.m ], [ 0, %bb.p ], [ 1, %.lr.ph.i15 ], [ 1, %bb.b ]
  ret i32 %.sroa.020.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE6insertENS_11__wrap_iterIPKS3_EEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::__1::__split_buffer", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !97   ; 2 uses
  %i.j = icmp ult ptr %i.g, %i.i
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq ptr %1, %i.g
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m) #12
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !57
  store i64 %i.p, ptr %i.n, align 8, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %i.q, ptr %i.f, align 8, !tbaa !22
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.s = ptrtoint ptr %i.g to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.e, i64 %i.u ; 3 uses
  %i.w = icmp ult ptr %i.v, %i.g
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.d
  %.sroa.4.0.lcssa.i = phi ptr [ %i.g, %bb.d ], [ %i.al, %.lr.ph.i ]
  store ptr %.sroa.4.0.lcssa.i, ptr %i.f, align 8, !tbaa !22
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.g, %i.r
  br i1 %.not8.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %._crit_edge.i ] ; 3 uses
  %.079.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.g, %._crit_edge.i ] ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -56 ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -56 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 24, i1 false)
  %i.z = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -32
  %i.aa = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -32
  %i.ab = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #12 ; 0 uses
  %i.ac = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !57
  %i.ae = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !57
  %.not.i.i.i.i.i.i = icmp eq ptr %1, %i.x
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !115

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.01720.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.v, %bb.d ] ; 4 uses
  %.sroa.4.019.i = phi ptr [ %i.al, %.lr.ph.i ], [ %i.g, %bb.d ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.019.i, ptr noundef nonnull align 8 dereferenceable(56) %.01720.i, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.4.019.i, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %.01720.i, i64 24
  tail call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ag) #12
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.4.019.i, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %.01720.i, i64 48
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !57
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !57
  %i.ak = getelementptr inbounds nuw i8, ptr %.01720.i, i64 56 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.4.019.i, i64 56 ; 2 uses
  %i.am = icmp ult ptr %i.ak, %i.g
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !116

_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ap = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.ao) #12 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !57
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !57
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.at = ptrtoint ptr %i.g to i64
  %i.au = sub i64 %i.at, %i.c
  %i.av = sdiv exact i64 %i.au, 56
  %i.aw = add nsw i64 %i.av, 1                    ; 2 uses
  %i.ax = icmp ugt i64 %i.aw, 329406144173384850
  br i1 %i.ax, label %bb.f, label %_ZNKSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNKSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  unreachable

_ZNKSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit: ; preds = %bb.e
  %i.ay = ptrtoint ptr %i.i to i64
  %i.az = sub i64 %i.ay, %i.c
  %i.ba = sdiv exact i64 %i.az, 56                ; 2 uses
  %.not.i = icmp ult i64 %i.ba, 164703072086692425
  %i.bb = shl nuw nsw i64 %i.ba, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.aw)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 329406144173384850 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.h, ptr %i.bd, align 8, !tbaa !119
  %i.be = icmp eq i64 %.0.i, 0
  br i1 %i.be, label %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit
  %i.bf = icmp ugt i64 %.0.i, 329406144173384850
  br i1 %i.bf, label %bb.h, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #15
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i: ; preds = %bb.g
  %i.bg = mul nuw i64 %.0.i, 56
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #16
  br label %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit

_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit: ; preds = %_ZNKSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i
  %storemerge.i = phi ptr [ %i.bh, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i ], [ null, %_ZNKSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit ] ; 3 uses
  store ptr %storemerge.i, ptr %3, align 8, !tbaa !103
  %i.bi = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.d ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !104
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !105
  %i.bl = getelementptr inbounds nuw [56 x i8], ptr %storemerge.i, i64 %.0.i
  store ptr %i.bl, ptr %i.bc, align 8, !tbaa !97
  call void @_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(56) %2) #13
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !105 ; 3 uses
  %i.bn = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %.not13.i.i = icmp eq ptr %1, %i.bn
  br i1 %.not13.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit, %.lr.ph.i.i
  %i.bo = phi ptr [ %i.bp, %.lr.ph.i.i ], [ %i.bm, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit ] ; 3 uses
  %.sroa.18.014.i.i = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %i.e, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit ] ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -56 ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -56 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, ptr noundef nonnull align 8 dereferenceable(56) %i.bq, i64 24, i1 false)
  %i.br = getelementptr inbounds i8, ptr %i.bo, i64 -32
  %i.bs = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -32
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.bs) #12
  %i.bt = getelementptr inbounds i8, ptr %i.bo, i64 -8
  %i.bu = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !57
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !57
  %.not.i.i = icmp eq ptr %i.bq, %i.bn
  br i1 %.not.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_.exit.i, label %.lr.ph.i.i, !llvm.loop !117

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_.exit.i: ; preds = %.lr.ph.i.i, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit
  %.sroa.2.0.copyload.i.i = phi ptr [ %i.bm, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit ], [ %i.bp, %.lr.ph.i.i ] ; 2 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.bk, align 8, !tbaa !105
  %i.bw = load ptr, ptr %i.f, align 8, !tbaa !22  ; 3 uses
  %i.bx = load ptr, ptr %i.bj, align 8, !tbaa !104 ; 2 uses
  %.not12.i.i = icmp eq ptr %1, %i.bw
  br i1 %.not12.i.i, label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EEPS3_.exit, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_.exit.i, %.lr.ph.i14.i
  %.014.i.i = phi ptr [ %i.cd, %.lr.ph.i14.i ], [ %i.e, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_.exit.i ] ; 4 uses
  %.01113.i.i = phi ptr [ %i.ce, %.lr.ph.i14.i ], [ %i.bx, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_.exit.i ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.01113.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.014.i.i, i64 24, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %.01113.i.i, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bz) #12
  %i.ca = getelementptr inbounds nuw i8, ptr %.01113.i.i, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 48
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !57
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !57
  %i.cd = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 56 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.01113.i.i, i64 56 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.cd, %i.bw
  br i1 %.not.i15.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEEPS4_S6_S6_EET2_RT_T0_T1_S7_.exit.loopexit.i, label %.lr.ph.i14.i, !llvm.loop !118

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEEPS4_S6_S6_EET2_RT_T0_T1_S7_.exit.loopexit.i: ; preds = %.lr.ph.i14.i
  %.pre.i = load ptr, ptr %i.bk, align 8, !tbaa !97
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !97
  br label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EEPS3_.exit

_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EEPS3_.exit: ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_.exit.i, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEEPS4_S6_S6_EET2_RT_T0_T1_S7_.exit.loopexit.i
  %i.cf = phi ptr [ %i.bw, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_.exit.i ], [ %.pre, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEEPS4_S6_S6_EET2_RT_T0_T1_S7_.exit.loopexit.i ] ; 3 uses
  %i.cg = phi ptr [ %.sroa.2.0.copyload.i.i, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_.exit.i ], [ %.pre.i, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEEPS4_S6_S6_EET2_RT_T0_T1_S7_.exit.loopexit.i ]
  %.011.lcssa.i.i = phi ptr [ %i.bx, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_.exit.i ], [ %i.ce, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEEPS4_S6_S6_EET2_RT_T0_T1_S7_.exit.loopexit.i ]
  %i.ch = load ptr, ptr %0, align 8, !tbaa !97    ; 5 uses
end_hunk_0
