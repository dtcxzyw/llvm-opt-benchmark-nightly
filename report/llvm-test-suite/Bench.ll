Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Bench?download=true
inline.NumInlined: 217
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN18CBenchProgressInfo12SetRatioInfoEPKyS1_:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !83
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !84, !range !85, !noundef !86
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZL13SetFinishTimeRK10CBenchInfoRS_.exit
  %i.ag = load i64, ptr %1, align 8, !tbaa !76
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !143
  %i.ai = load i64, ptr %2, align 8, !tbaa !76
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !144
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !75  ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !88
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(52) %4, i1 noundef zeroext false)
  br label %bb.h

bb.g:                                             ; preds = %_ZL13SetFinishTimeRK10CBenchInfoRS_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !145
  %i.ap = load i64, ptr %1, align 8, !tbaa !76
  %i.aq = add i64 %i.ap, %i.ao
  store i64 %i.aq, ptr %i.af, align 8, !tbaa !144
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !146
  %i.at = load i64, ptr %2, align 8, !tbaa !76
  %i.au = add i64 %i.at, %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.au, ptr %i.av, align 8, !tbaa !143
  %i.aw = load ptr, ptr %i.g, align 8, !tbaa !75  ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !88
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef i32 %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(52) %4, i1 noundef zeroext false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i32 [ %i.am, %bb.f ], [ %i.ba, %bb.g ] ; 3 uses
  %.not14 = icmp eq i32 %.0, 0
  br i1 %.not14, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !69  ; 3 uses
  %i.bc = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(45) %i.bb) #20 ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store i32 %.0, ptr %i.bd, align 8, !tbaa !74
  %i.be = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(45) %i.bb) #20 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.a, %bb.j
  %.011 = phi i32 [ %i.e, %bb.a ], [ %.0, %bb.j ], [ 0, %bb.b ]
  ret i32 %.011
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL13SetFinishTimeRK10CBenchInfoRS_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(52) initializes((0, 32)) %1) unnamed_addr #5 !guid !147 {
bb.a:
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1000000, ptr %i.a, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 1000000, ptr %i.b, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.c = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #20
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %2, align 8, !tbaa !80
  %i.f = mul i64 %i.e, 1000000
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !81
  %i.i = add i64 %i.f, %i.h
  br label %_ZL12GetTimeCountv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i64 @time(ptr noundef null) #20
  %i.k = mul i64 %i.j, 1000000
  br label %_ZL12GetTimeCountv.exit

_ZL12GetTimeCountv.exit:                          ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.i, %bb.b ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.l = load i64, ptr %0, align 8, !tbaa !82
  %i.m = sub i64 %.0.i, %i.l
  store i64 %i.m, ptr %1, align 8, !tbaa !82
  %i.n = tail call noundef i64 @clock() #20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !83
  %i.q = sub i64 %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.q, ptr %i.r, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i64 0, 1000000000000000001) i64 @_Z8GetUsageRK10CBenchInfo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %0) local_unnamed_addr #6 !guid !148 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !83   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !78   ; 2 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !82     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77   ; 3 uses
  %i.h = icmp ugt i64 %i.b, 1000000
  br i1 %i.h, label %.lr.ph.i, label %_ZL13NormalizeValsRyS_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.119 = phi i64 [ %i.k, %.lr.ph.i ], [ %i.d, %bb.a ]
  %i.i = phi i64 [ %i.j, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = lshr i64 %i.i, 1                         ; 2 uses
  %i.k = lshr i64 %.119, 1                        ; 2 uses
  %i.l = icmp ugt i64 %i.i, 2000001
  br i1 %i.l, label %.lr.ph.i, label %_ZL13NormalizeValsRyS_.exit, !llvm.loop !0

_ZL13NormalizeValsRyS_.exit:                      ; preds = %.lr.ph.i, %bb.a
  %.021 = phi i64 [ %i.b, %bb.a ], [ %i.j, %.lr.ph.i ]
  %.220 = phi i64 [ %i.d, %bb.a ], [ %i.k, %.lr.ph.i ]
  %i.m = icmp ugt i64 %i.g, 1000000
  br i1 %i.m, label %.lr.ph.i4, label %_ZL13NormalizeValsRyS_.exit5

.lr.ph.i4:                                        ; preds = %_ZL13NormalizeValsRyS_.exit, %.lr.ph.i4
  %.1 = phi i64 [ %i.p, %.lr.ph.i4 ], [ %i.e, %_ZL13NormalizeValsRyS_.exit ]
  %i.n = phi i64 [ %i.o, %.lr.ph.i4 ], [ %i.g, %_ZL13NormalizeValsRyS_.exit ] ; 2 uses
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = lshr i64 %.1, 1                          ; 2 uses
  %i.q = icmp ugt i64 %i.n, 2000001
  br i1 %i.q, label %.lr.ph.i4, label %_ZL13NormalizeValsRyS_.exit5, !llvm.loop !0

_ZL13NormalizeValsRyS_.exit5:                     ; preds = %.lr.ph.i4, %_ZL13NormalizeValsRyS_.exit
  %.2 = phi i64 [ %i.e, %_ZL13NormalizeValsRyS_.exit ], [ %i.p, %.lr.ph.i4 ]
  %.0 = phi i64 [ %i.g, %_ZL13NormalizeValsRyS_.exit ], [ %i.o, %.lr.ph.i4 ]
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.220, i64 1)
  %.017 = tail call i64 @llvm.umax.i64(i64 %.2, i64 1)
  %i.r = mul i64 %.021, 1000000
  %i.s = mul i64 %i.r, %.0
  %i.t = udiv i64 %i.s, %spec.select
  %i.u = udiv i64 %i.t, %.017
  ret i64 %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_Z17GetRatingPerUsageRK10CBenchInfoy(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %0, i64 noundef %1) local_unnamed_addr #6 !guid !149 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !78   ; 3 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !82     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77   ; 2 uses
  %i.h = icmp ugt i64 %i.d, 1000000
  br i1 %i.h, label %.lr.ph.i, label %_ZL13NormalizeValsRyS_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.120 = phi i64 [ %i.k, %.lr.ph.i ], [ %i.b, %bb.a ]
  %i.i = phi i64 [ %i.j, %.lr.ph.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = lshr i64 %i.i, 1                         ; 2 uses
  %i.k = lshr i64 %.120, 1                        ; 2 uses
  %i.l = icmp ugt i64 %i.i, 2000001
  br i1 %i.l, label %.lr.ph.i, label %_ZL13NormalizeValsRyS_.exit, !llvm.loop !0

_ZL13NormalizeValsRyS_.exit:                      ; preds = %.lr.ph.i, %bb.a
  %.221 = phi i64 [ %i.b, %bb.a ], [ %i.k, %.lr.ph.i ]
  %.018 = phi i64 [ %i.d, %bb.a ], [ %i.j, %.lr.ph.i ]
  %i.m = icmp ugt i64 %i.e, 1000000
  br i1 %i.m, label %.lr.ph.i4, label %_ZL13NormalizeValsRyS_.exit5

.lr.ph.i4:                                        ; preds = %_ZL13NormalizeValsRyS_.exit, %.lr.ph.i4
  %.1 = phi i64 [ %i.p, %.lr.ph.i4 ], [ %i.g, %_ZL13NormalizeValsRyS_.exit ]
  %i.n = phi i64 [ %i.o, %.lr.ph.i4 ], [ %i.e, %_ZL13NormalizeValsRyS_.exit ] ; 2 uses
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = lshr i64 %.1, 1                          ; 2 uses
  %i.q = icmp ugt i64 %i.n, 2000001
  br i1 %i.q, label %.lr.ph.i4, label %_ZL13NormalizeValsRyS_.exit5, !llvm.loop !0

_ZL13NormalizeValsRyS_.exit5:                     ; preds = %.lr.ph.i4, %_ZL13NormalizeValsRyS_.exit
  %.017 = phi i64 [ %i.e, %_ZL13NormalizeValsRyS_.exit ], [ %i.o, %.lr.ph.i4 ]
  %.2 = phi i64 [ %i.g, %_ZL13NormalizeValsRyS_.exit ], [ %i.p, %.lr.ph.i4 ]
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.2, i64 1)
  %.019 = tail call i64 @llvm.umax.i64(i64 %.221, i64 1)
  %i.r = mul nuw nsw i64 %.017, %.018
  %i.s = udiv i64 %i.r, %spec.select
  %i.t = mul i64 %i.s, %1
  %i.u = udiv i64 %i.t, %.019
  ret i64 %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_Z17GetCompressRatingjyyy(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #7 !guid !173 {
bb.a:
  %i.a = icmp ult i32 %0, 512
  br i1 %i.a, label %.loopexit30.i.loopexit77, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %0, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.b = shl <16 x i32> %vec.ind, splat (i32 1)
  %i.c = add <16 x i32> %i.b, splat (i32 512)
  %i.d = icmp ule <16 x i32> %broadcast.splat, %i.c ; 2 uses
  %i.e = bitcast <16 x i1> %i.d to i16
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %vector.body.interim, label %.loopexit30.i.loopexit194

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.f = icmp eq i32 %index.next, 256
  br i1 %i.f, label %vector.ph219, label %vector.body, !llvm.loop !150

vector.ph219:                                     ; preds = %vector.body.interim
  %broadcast.splatinsert220 = insertelement <16 x i32> poison, i32 %0, i64 0
  %broadcast.splat221 = shufflevector <16 x i32> %broadcast.splatinsert220, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body.interim227, %vector.ph219
  %index223 = phi i32 [ 0, %vector.ph219 ], [ %index.next225, %vector.body.interim227 ] ; 2 uses
  %vec.ind224 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph219 ], [ %vec.ind.next226, %vector.body.interim227 ] ; 2 uses
  %i.g = shl <16 x i32> %vec.ind224, splat (i32 2)
  %i.h = add <16 x i32> %i.g, splat (i32 1024)
  %i.i = icmp ule <16 x i32> %broadcast.splat221, %i.h ; 2 uses
  %i.j = bitcast <16 x i1> %i.i to i16
  %.not463 = icmp eq i16 %i.j, 0
  br i1 %.not463, label %vector.body.interim227, label %.loopexit30.i.loopexit193

vector.body.interim227:                           ; preds = %vector.body222
  %vec.ind.next226 = add <16 x i32> %vec.ind224, splat (i32 16)
  %index.next225 = add nuw i32 %index223, 16      ; 2 uses
  %i.k = icmp eq i32 %index.next225, 256
  br i1 %i.k, label %vector.ph230, label %vector.body222, !llvm.loop !151

vector.ph230:                                     ; preds = %vector.body.interim227
  %broadcast.splatinsert231 = insertelement <16 x i32> poison, i32 %0, i64 0
  %broadcast.splat232 = shufflevector <16 x i32> %broadcast.splatinsert231, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body.interim238, %vector.ph230
  %index234 = phi i32 [ 0, %vector.ph230 ], [ %index.next236, %vector.body.interim238 ] ; 2 uses
  %vec.ind235 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph230 ], [ %vec.ind.next237, %vector.body.interim238 ] ; 2 uses
  %i.l = shl <16 x i32> %vec.ind235, splat (i32 3)
  %i.m = add <16 x i32> %i.l, splat (i32 2048)
  %i.n = icmp ule <16 x i32> %broadcast.splat232, %i.m ; 2 uses
  %i.o = bitcast <16 x i1> %i.n to i16
  %.not465 = icmp eq i16 %i.o, 0
  br i1 %.not465, label %vector.body.interim238, label %.loopexit30.i.loopexit192

vector.body.interim238:                           ; preds = %vector.body233
  %vec.ind.next237 = add <16 x i32> %vec.ind235, splat (i32 16)
  %index.next236 = add nuw i32 %index234, 16      ; 2 uses
  %i.p = icmp eq i32 %index.next236, 256
  br i1 %i.p, label %vector.ph241, label %vector.body233, !llvm.loop !152

vector.ph241:                                     ; preds = %vector.body.interim238
  %broadcast.splatinsert242 = insertelement <16 x i32> poison, i32 %0, i64 0
  %broadcast.splat243 = shufflevector <16 x i32> %broadcast.splatinsert242, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body.interim249, %vector.ph241
  %index245 = phi i32 [ 0, %vector.ph241 ], [ %index.next247, %vector.body.interim249 ] ; 2 uses
  %vec.ind246 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph241 ], [ %vec.ind.next248, %vector.body.interim249 ] ; 2 uses
  %i.q = shl <16 x i32> %vec.ind246, splat (i32 4)
  %i.r = add <16 x i32> %i.q, splat (i32 4096)
  %i.s = icmp ule <16 x i32> %broadcast.splat243, %i.r ; 2 uses
  %i.t = bitcast <16 x i1> %i.s to i16
  %.not467 = icmp eq i16 %i.t, 0
  br i1 %.not467, label %vector.body.interim249, label %.loopexit30.i.loopexit191

vector.body.interim249:                           ; preds = %vector.body244
  %vec.ind.next248 = add <16 x i32> %vec.ind246, splat (i32 16)
  %index.next247 = add nuw i32 %index245, 16      ; 2 uses
  %i.u = icmp eq i32 %index.next247, 256
  br i1 %i.u, label %vector.ph252, label %vector.body244, !llvm.loop !153

vector.ph252:                                     ; preds = %vector.body.interim249
  %broadcast.splatinsert253 = insertelement <16 x i32> poison, i32 %0, i64 0
  %broadcast.splat254 = shufflevector <16 x i32> %broadcast.splatinsert253, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body255

vector.body255:                                   ; preds = %vector.body.interim260, %vector.ph252
  %index256 = phi i32 [ 0, %vector.ph252 ], [ %index.next258, %vector.body.interim260 ] ; 2 uses
  %vec.ind257 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph252 ], [ %vec.ind.next259, %vector.body.interim260 ] ; 2 uses
  %i.v = shl <16 x i32> %vec.ind257, splat (i32 5)
  %i.w = add <16 x i32> %i.v, splat (i32 8192)
  %i.x = icmp ule <16 x i32> %broadcast.splat254, %i.w ; 2 uses
  %i.y = bitcast <16 x i1> %i.x to i16
  %.not469 = icmp eq i16 %i.y, 0
  br i1 %.not469, label %vector.body.interim260, label %.loopexit30.i.loopexit190

vector.body.interim260:                           ; preds = %vector.body255
  %vec.ind.next259 = add <16 x i32> %vec.ind257, splat (i32 16)
  %index.next258 = add nuw i32 %index256, 16      ; 2 uses
  %i.z = icmp eq i32 %index.next258, 256
  br i1 %i.z, label %vector.ph263, label %vector.body255, !llvm.loop !154

vector.ph263:                                     ; preds = %vector.body.interim260
  %broadcast.splatinsert264 = insertelement <16 x i32> poison, i32 %0, i64 0
  %broadcast.splat265 = shufflevector <16 x i32> %broadcast.splatinsert264, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body266

vector.body266:                                   ; preds = %vector.body.interim271, %vector.ph263
  %index267 = phi i32 [ 0, %vector.ph263 ], [ %index.next269, %vector.body.interim271 ] ; 2 uses
  %vec.ind268 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph263 ], [ %vec.ind.next270, %vector.body.interim271 ] ; 2 uses
  %i.aa = shl <16 x i32> %vec.ind268, splat (i32 6)
  %i.ab = add <16 x i32> %i.aa, splat (i32 16384)
  %i.ac = icmp ule <16 x i32> %broadcast.splat265, %i.ab ; 2 uses
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %.not471 = icmp eq i16 %i.ad, 0
  br i1 %.not471, label %vector.body.interim271, label %.loopexit30.i.loopexit189

vector.body.interim271:                           ; preds = %vector.body266
  %vec.ind.next270 = add <16 x i32> %vec.ind268, splat (i32 16)
  %index.next269 = add nuw i32 %index267, 16      ; 2 uses
  %i.ae = icmp eq i32 %index.next269, 256
  br i1 %i.ae, label %vector.ph274, label %vector.body266, !llvm.loop !155

vector.ph274:                                     ; preds = %vector.body.interim271
  %broadcast.splatinsert275 = insertelement <16 x i32> poison, i32 %0, i64 0
  %broadcast.splat276 = shufflevector <16 x i32> %broadcast.splatinsert275, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body277

vector.body277:                                   ; preds = %vector.body.interim282, %vector.ph274
  %index278 = phi i32 [ 0, %vector.ph274 ], [ %index.next280, %vector.body.interim282 ] ; 2 uses
  %vec.ind279 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph274 ], [ %vec.ind.next281, %vector.body.interim282 ] ; 2 uses
  %i.af = shl <16 x i32> %vec.ind279, splat (i32 7)
  %i.ag = add <16 x i32> %i.af, splat (i32 32768)
  %i.ah = icmp ule <16 x i32> %broadcast.splat276, %i.ag ; 2 uses
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %.not473 = icmp eq i16 %i.ai, 0
  br i1 %.not473, label %vector.body.interim282, label %.loopexit30.i.loopexit188

vector.body.interim282:                           ; preds = %vector.body277
  %vec.ind.next281 = add <16 x i32> %vec.ind279, splat (i32 16)
  %index.next280 = add nuw i32 %index278, 16      ; 2 uses
  %i.aj = icmp eq i32 %index.next280, 256
  br i1 %i.aj, label %vector.ph285, label %vector.body277, !llvm.loop !156

vector.ph285:                                     ; preds = %vector.body.interim282
  %broadcast.splatinsert286 = insertelement <16 x i32> poison, i32 %0, i64 0
  %broadcast.splat287 = shufflevector <16 x i32> %broadcast.splatinsert286, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body.interim293, %vector.ph285
  %index289 = phi i32 [ 0, %vector.ph285 ], [ %index.next291, %vector.body.interim293 ] ; 2 uses
  %vec.ind290 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph285 ], [ %vec.ind.next292, %vector.body.interim293 ] ; 2 uses
  %i.ak = shl <16 x i32> %vec.ind290, splat (i32 8)
  %i.al = add <16 x i32> %i.ak, splat (i32 65536)
  %i.am = icmp ule <16 x i32> %broadcast.splat287, %i.al ; 2 uses
  %i.an = bitcast <16 x i1> %i.am to i16
  %.not475 = icmp eq i16 %i.an, 0
  br i1 %.not475, label %vector.body.interim293, label %.loopexit30.i.loopexit187

vector.body.interim293:                           ; preds = %vector.body288
  %vec.ind.next292 = add <16 x i32> %vec.ind290, splat (i32 16)
  %index.next291 = add nuw i32 %index289, 16      ; 2 uses
  %i.ao = icmp eq i32 %index.next291, 256
  br i1 %i.ao, label %vector.ph296, label %vector.body288, !llvm.loop !157

vector.ph296:                                     ; preds = %vector.body.interim293
  %broadcast.splatinsert297 = insertelement <16 x i32> poison, i32 %0, i64 0
  %broadcast.splat298 = shufflevector <16 x i32> %broadcast.splatinsert297, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body.interim304, %vector.ph296
  %index300 = phi i32 [ 0, %vector.ph296 ], [ %index.next302, %vector.body.interim304 ] ; 2 uses
  %vec.ind301 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph296 ], [ %vec.ind.next303, %vector.body.interim304 ] ; 2 uses
  %i.ap = shl <16 x i32> %vec.ind301, splat (i32 9)
  %i.aq = add <16 x i32> %i.ap, splat (i32 131072)
  %i.ar = icmp ule <16 x i32> %broadcast.splat298, %i.aq ; 2 uses
  %i.as = bitcast <16 x i1> %i.ar to i16
  %.not477 = icmp eq i16 %i.as, 0
  br i1 %.not477, label %vector.body.interim304, label %.loopexit30.i.loopexit186

vector.body.interim304:                           ; preds = %vector.body299
  %vec.ind.next303 = add <16 x i32> %vec.ind301, splat (i32 16)
  %index.next302 = add nuw i32 %index300, 16      ; 2 uses
  %i.at = icmp eq i32 %index.next302, 256
  br i1 %i.at, label %vector.ph307, label %vector.body299, !llvm.loop !158

vector.ph307:                                     ; preds = %vector.body.interim304
  %broadcast.splatinsert308 = insertelement <16 x i32> poison, i32 %0, i64 0
  %broadcast.splat309 = shufflevector <16 x i32> %broadcast.splatinsert308, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body310

vector.body310:                                   ; preds = %vector.body.interim315, %vector.ph307
  %index311 = phi i32 [ 0, %vector.ph307 ], [ %index.next313, %vector.body.interim315 ] ; 2 uses
  %vec.ind312 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph307 ], [ %vec.ind.next314, %vector.body.interim315 ] ; 2 uses
  %i.au = shl <16 x i32> %vec.ind312, splat (i32 10)
  %i.av = add <16 x i32> %i.au, splat (i32 262144)
end_hunk_0
begin_hunk_1_@_Z17GetCompressRatingjyyy:bb.a
  %i.bq = icmp ule <16 x i32> %broadcast.splat353, %i.bp ; 2 uses
  %i.br = bitcast <16 x i1> %i.bq to i16
  %.not487 = icmp eq i16 %i.br, 0
  br i1 %.not487, label %vector.body.interim359, label %.loopexit30.i.loopexit181

vector.body.interim359:                           ; preds = %vector.body354
  %vec.ind.next358 = add <16 x i32> %vec.ind356, splat (i32 16)
  %index.next357 = add nuw i32 %index355, 16      ; 2 uses
  %i.bs = icmp eq i32 %index.next357, 256
  br i1 %i.bs, label %vector.ph362, label %vector.body354, !llvm.loop !163

vector.ph362:                                     ; preds = %vector.body.interim359
  %broadcast.splatinsert363 = insertelement <16 x i32> poison, i32 %0, i64 0
  %broadcast.splat364 = shufflevector <16 x i32> %broadcast.splatinsert363, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body365

vector.body365:                                   ; preds = %vector.body.interim370, %vector.ph362
  %index366 = phi i32 [ 0, %vector.ph362 ], [ %index.next368, %vector.body.interim370 ] ; 2 uses
  %vec.ind367 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph362 ], [ %vec.ind.next369, %vector.body.interim370 ] ; 2 uses
  %i.bt = shl <16 x i32> %vec.ind367, splat (i32 15)
  %i.bu = add <16 x i32> %i.bt, splat (i32 8388608)
  %i.bv = icmp ule <16 x i32> %broadcast.splat364, %i.bu ; 2 uses
  %i.bw = bitcast <16 x i1> %i.bv to i16
  %.not489 = icmp eq i16 %i.bw, 0
  br i1 %.not489, label %vector.body.interim370, label %.loopexit30.i.loopexit180

vector.body.interim370:                           ; preds = %vector.body365
  %vec.ind.next369 = add <16 x i32> %vec.ind367, splat (i32 16)
  %index.next368 = add nuw i32 %index366, 16      ; 2 uses
  %i.bx = icmp eq i32 %index.next368, 256
  br i1 %i.bx, label %vector.ph373, label %vector.body365, !llvm.loop !164

vector.ph373:                                     ; preds = %vector.body.interim370
  %broadcast.splatinsert374 = insertelement <16 x i32> poison, i32 %0, i64 0
  %broadcast.splat375 = shufflevector <16 x i32> %broadcast.splatinsert374, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body376

vector.body376:                                   ; preds = %vector.body.interim381, %vector.ph373
  %index377 = phi i32 [ 0, %vector.ph373 ], [ %index.next379, %vector.body.interim381 ] ; 2 uses
  %vec.ind378 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph373 ], [ %vec.ind.next380, %vector.body.interim381 ] ; 2 uses
  %i.by = shl <16 x i32> %vec.ind378, splat (i32 16)
  %i.bz = add <16 x i32> %i.by, splat (i32 16777216)
  %i.ca = icmp ule <16 x i32> %broadcast.splat375, %i.bz ; 2 uses
  %i.cb = bitcast <16 x i1> %i.ca to i16
  %.not491 = icmp eq i16 %i.cb, 0
  br i1 %.not491, label %vector.body.interim381, label %.loopexit30.i.loopexit179

vector.body.interim381:                           ; preds = %vector.body376
  %vec.ind.next380 = add <16 x i32> %vec.ind378, splat (i32 16)
  %index.next379 = add nuw i32 %index377, 16      ; 2 uses
  %i.cc = icmp eq i32 %index.next379, 256
  br i1 %i.cc, label %vector.ph384, label %vector.body376, !llvm.loop !165

vector.ph384:                                     ; preds = %vector.body.interim381
  %broadcast.splatinsert385 = insertelement <16 x i32> poison, i32 %0, i64 0
  %broadcast.splat386 = shufflevector <16 x i32> %broadcast.splatinsert385, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body387

vector.body387:                                   ; preds = %vector.body.interim392, %vector.ph384
  %index388 = phi i32 [ 0, %vector.ph384 ], [ %index.next390, %vector.body.interim392 ] ; 2 uses
  %vec.ind389 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph384 ], [ %vec.ind.next391, %vector.body.interim392 ] ; 2 uses
  %i.cd = shl <16 x i32> %vec.ind389, splat (i32 17)
  %i.ce = add <16 x i32> %i.cd, splat (i32 33554432)
  %i.cf = icmp ule <16 x i32> %broadcast.splat386, %i.ce ; 2 uses
  %i.cg = bitcast <16 x i1> %i.cf to i16
  %.not493 = icmp eq i16 %i.cg, 0
  br i1 %.not493, label %vector.body.interim392, label %.loopexit30.i.loopexit178

vector.body.interim392:                           ; preds = %vector.body387
  %vec.ind.next391 = add <16 x i32> %vec.ind389, splat (i32 16)
  %index.next390 = add nuw i32 %index388, 16      ; 2 uses
  %i.ch = icmp eq i32 %index.next390, 256
  br i1 %i.ch, label %vector.ph395, label %vector.body387, !llvm.loop !166

vector.ph395:                                     ; preds = %vector.body.interim392
  %broadcast.splatinsert396 = insertelement <16 x i32> poison, i32 %0, i64 0
  %broadcast.splat397 = shufflevector <16 x i32> %broadcast.splatinsert396, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body.interim403, %vector.ph395
  %index399 = phi i32 [ 0, %vector.ph395 ], [ %index.next401, %vector.body.interim403 ] ; 2 uses
  %vec.ind400 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph395 ], [ %vec.ind.next402, %vector.body.interim403 ] ; 2 uses
  %i.ci = shl <16 x i32> %vec.ind400, splat (i32 18)
  %i.cj = add <16 x i32> %i.ci, splat (i32 67108864)
  %i.ck = icmp ule <16 x i32> %broadcast.splat397, %i.cj ; 2 uses
  %i.cl = bitcast <16 x i1> %i.ck to i16
  %.not495 = icmp eq i16 %i.cl, 0
  br i1 %.not495, label %vector.body.interim403, label %.loopexit30.i.loopexit177

vector.body.interim403:                           ; preds = %vector.body398
  %vec.ind.next402 = add <16 x i32> %vec.ind400, splat (i32 16)
  %index.next401 = add nuw i32 %index399, 16      ; 2 uses
  %i.cm = icmp eq i32 %index.next401, 256
  br i1 %i.cm, label %vector.ph406, label %vector.body398, !llvm.loop !167

vector.ph406:                                     ; preds = %vector.body.interim403
  %broadcast.splatinsert407 = insertelement <16 x i32> poison, i32 %0, i64 0
  %broadcast.splat408 = shufflevector <16 x i32> %broadcast.splatinsert407, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body409

vector.body409:                                   ; preds = %vector.body.interim414, %vector.ph406
  %index410 = phi i32 [ 0, %vector.ph406 ], [ %index.next412, %vector.body.interim414 ] ; 2 uses
  %vec.ind411 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph406 ], [ %vec.ind.next413, %vector.body.interim414 ] ; 2 uses
  %i.cn = shl <16 x i32> %vec.ind411, splat (i32 19)
  %i.co = add <16 x i32> %i.cn, splat (i32 134217728)
  %i.cp = icmp ule <16 x i32> %broadcast.splat408, %i.co ; 2 uses
  %i.cq = bitcast <16 x i1> %i.cp to i16
  %.not497 = icmp eq i16 %i.cq, 0
  br i1 %.not497, label %vector.body.interim414, label %.loopexit30.i.loopexit176

vector.body.interim414:                           ; preds = %vector.body409
  %vec.ind.next413 = add <16 x i32> %vec.ind411, splat (i32 16)
  %index.next412 = add nuw i32 %index410, 16      ; 2 uses
  %i.cr = icmp eq i32 %index.next412, 256
  br i1 %i.cr, label %vector.ph417, label %vector.body409, !llvm.loop !168

vector.ph417:                                     ; preds = %vector.body.interim414
  %broadcast.splatinsert418 = insertelement <16 x i32> poison, i32 %0, i64 0
  %broadcast.splat419 = shufflevector <16 x i32> %broadcast.splatinsert418, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body420

vector.body420:                                   ; preds = %vector.body.interim425, %vector.ph417
  %index421 = phi i32 [ 0, %vector.ph417 ], [ %index.next423, %vector.body.interim425 ] ; 2 uses
  %vec.ind422 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph417 ], [ %vec.ind.next424, %vector.body.interim425 ] ; 2 uses
  %i.cs = shl <16 x i32> %vec.ind422, splat (i32 20)
  %i.ct = add <16 x i32> %i.cs, splat (i32 268435456)
  %i.cu = icmp ule <16 x i32> %broadcast.splat419, %i.ct ; 2 uses
  %i.cv = bitcast <16 x i1> %i.cu to i16
  %.not499 = icmp eq i16 %i.cv, 0
  br i1 %.not499, label %vector.body.interim425, label %.loopexit30.i.loopexit175

vector.body.interim425:                           ; preds = %vector.body420
  %vec.ind.next424 = add <16 x i32> %vec.ind422, splat (i32 16)
  %index.next423 = add nuw i32 %index421, 16      ; 2 uses
  %i.cw = icmp eq i32 %index.next423, 256
  br i1 %i.cw, label %vector.ph428, label %vector.body420, !llvm.loop !169

vector.ph428:                                     ; preds = %vector.body.interim425
  %broadcast.splatinsert429 = insertelement <16 x i32> poison, i32 %0, i64 0
  %broadcast.splat430 = shufflevector <16 x i32> %broadcast.splatinsert429, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body431

vector.body431:                                   ; preds = %vector.body.interim436, %vector.ph428
  %index432 = phi i32 [ 0, %vector.ph428 ], [ %index.next434, %vector.body.interim436 ] ; 2 uses
  %vec.ind433 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph428 ], [ %vec.ind.next435, %vector.body.interim436 ] ; 2 uses
  %i.cx = shl <16 x i32> %vec.ind433, splat (i32 21)
  %i.cy = add <16 x i32> %i.cx, splat (i32 536870912)
  %i.cz = icmp ule <16 x i32> %broadcast.splat430, %i.cy ; 2 uses
  %i.da = bitcast <16 x i1> %i.cz to i16
  %.not501 = icmp eq i16 %i.da, 0
  br i1 %.not501, label %vector.body.interim436, label %.loopexit30.i.loopexit174

vector.body.interim436:                           ; preds = %vector.body431
  %vec.ind.next435 = add <16 x i32> %vec.ind433, splat (i32 16)
  %index.next434 = add nuw i32 %index432, 16      ; 2 uses
  %i.db = icmp eq i32 %index.next434, 256
  br i1 %i.db, label %vector.ph439, label %vector.body431, !llvm.loop !170

vector.ph439:                                     ; preds = %vector.body.interim436
  %broadcast.splatinsert440 = insertelement <16 x i32> poison, i32 %0, i64 0
  %broadcast.splat441 = shufflevector <16 x i32> %broadcast.splatinsert440, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body442

vector.body442:                                   ; preds = %vector.body.interim447, %vector.ph439
  %index443 = phi i32 [ 0, %vector.ph439 ], [ %index.next445, %vector.body.interim447 ] ; 2 uses
  %vec.ind444 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph439 ], [ %vec.ind.next446, %vector.body.interim447 ] ; 2 uses
  %i.dc = shl <16 x i32> %vec.ind444, splat (i32 22)
  %i.dd = add <16 x i32> %i.dc, splat (i32 1073741824)
  %i.de = icmp ule <16 x i32> %broadcast.splat441, %i.dd ; 2 uses
  %i.df = bitcast <16 x i1> %i.de to i16
  %.not503 = icmp eq i16 %i.df, 0
  br i1 %.not503, label %vector.body.interim447, label %.loopexit30.i.loopexit173

vector.body.interim447:                           ; preds = %vector.body442
  %vec.ind.next446 = add <16 x i32> %vec.ind444, splat (i32 16)
  %index.next445 = add nuw i32 %index443, 16      ; 2 uses
  %i.dg = icmp eq i32 %index.next445, 256
  br i1 %i.dg, label %vector.ph450, label %vector.body442, !llvm.loop !171

vector.ph450:                                     ; preds = %vector.body.interim447
  %broadcast.splatinsert451 = insertelement <16 x i32> poison, i32 %0, i64 0
  %broadcast.splat452 = shufflevector <16 x i32> %broadcast.splatinsert451, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body453

vector.body453:                                   ; preds = %vector.body.interim458, %vector.ph450
  %index454 = phi i32 [ 0, %vector.ph450 ], [ %index.next456, %vector.body.interim458 ] ; 2 uses
  %vec.ind455 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph450 ], [ %vec.ind.next457, %vector.body.interim458 ] ; 2 uses
  %i.dh = shl <16 x i32> %vec.ind455, splat (i32 23)
  %i.di = or <16 x i32> %i.dh, splat (i32 -2147483648)
  %i.dj = icmp ule <16 x i32> %broadcast.splat452, %i.di ; 2 uses
  %i.dk = bitcast <16 x i1> %i.dj to i16
  %.not505 = icmp eq i16 %i.dk, 0
  br i1 %.not505, label %vector.body.interim458, label %.loopexit30.i.loopexit

vector.body.interim458:                           ; preds = %vector.body453
  %vec.ind.next457 = add <16 x i32> %vec.ind455, splat (i32 16)
  %index.next456 = add nuw i32 %index454, 16      ; 2 uses
  %i.dl = icmp eq i32 %index.next456, 256
  br i1 %i.dl, label %_ZL10GetLogSizej.exit, label %vector.body453, !llvm.loop !172

.loopexit30.i.loopexit77:                         ; preds = %bb.a
  %4 = tail call i32 @llvm.usub.sat.i32(i32 %0, i32 256)
  br label %.loopexit30.i

.loopexit30.i.loopexit:                           ; preds = %vector.body453
  %i.dm = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.dj, i1 false)
  %i.dn = trunc i64 %i.dm to i32
  %i.do = add i32 %index454, %i.dn
  br label %.loopexit30.i

.loopexit30.i.loopexit173:                        ; preds = %vector.body442
  %i.dp = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.de, i1 false)
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = add i32 %index443, %i.dq
  br label %.loopexit30.i

.loopexit30.i.loopexit174:                        ; preds = %vector.body431
  %i.ds = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.cz, i1 false)
  %i.dt = trunc i64 %i.ds to i32
  %i.du = add i32 %index432, %i.dt
  br label %.loopexit30.i

.loopexit30.i.loopexit175:                        ; preds = %vector.body420
  %i.dv = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.cu, i1 false)
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = add i32 %index421, %i.dw
  br label %.loopexit30.i

.loopexit30.i.loopexit176:                        ; preds = %vector.body409
  %i.dy = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.cp, i1 false)
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = add i32 %index410, %i.dz
  br label %.loopexit30.i

.loopexit30.i.loopexit177:                        ; preds = %vector.body398
  %i.eb = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.ck, i1 false)
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = add i32 %index399, %i.ec
  br label %.loopexit30.i

.loopexit30.i.loopexit178:                        ; preds = %vector.body387
  %i.ee = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.cf, i1 false)
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = add i32 %index388, %i.ef
  br label %.loopexit30.i

.loopexit30.i.loopexit179:                        ; preds = %vector.body376
  %i.eh = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.ca, i1 false)
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = add i32 %index377, %i.ei
  br label %.loopexit30.i

.loopexit30.i.loopexit180:                        ; preds = %vector.body365
  %i.ek = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.bv, i1 false)
  %i.el = trunc i64 %i.ek to i32
  %i.em = add i32 %index366, %i.el
  br label %.loopexit30.i

.loopexit30.i.loopexit181:                        ; preds = %vector.body354
  %i.en = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.bq, i1 false)
  %i.eo = trunc i64 %i.en to i32
  %i.ep = add i32 %index355, %i.eo
  br label %.loopexit30.i

.loopexit30.i.loopexit182:                        ; preds = %vector.body343
  %i.eq = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.bl, i1 false)
  %i.er = trunc i64 %i.eq to i32
  %i.es = add i32 %index344, %i.er
  br label %.loopexit30.i

.loopexit30.i.loopexit183:                        ; preds = %vector.body332
  %i.et = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.bg, i1 false)
  %i.eu = trunc i64 %i.et to i32
  %i.ev = add i32 %index333, %i.eu
  br label %.loopexit30.i

.loopexit30.i.loopexit184:                        ; preds = %vector.body321
  %i.ew = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.bb, i1 false)
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = add i32 %index322, %i.ex
  br label %.loopexit30.i

.loopexit30.i.loopexit185:                        ; preds = %vector.body310
  %i.ez = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.aw, i1 false)
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = add i32 %index311, %i.fa
  br label %.loopexit30.i

.loopexit30.i.loopexit186:                        ; preds = %vector.body299
  %i.fc = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.ar, i1 false)
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = add i32 %index300, %i.fd
  br label %.loopexit30.i

.loopexit30.i.loopexit187:                        ; preds = %vector.body288
  %i.ff = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.am, i1 false)
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = add i32 %index289, %i.fg
  br label %.loopexit30.i

.loopexit30.i.loopexit188:                        ; preds = %vector.body277
  %i.fi = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.ah, i1 false)
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = add i32 %index278, %i.fj
  br label %.loopexit30.i

.loopexit30.i.loopexit189:                        ; preds = %vector.body266
  %i.fl = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.ac, i1 false)
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = add i32 %index267, %i.fm
  br label %.loopexit30.i

.loopexit30.i.loopexit190:                        ; preds = %vector.body255
  %i.fo = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.x, i1 false)
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = add i32 %index256, %i.fp
  br label %.loopexit30.i

.loopexit30.i.loopexit191:                        ; preds = %vector.body244
  %i.fr = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.s, i1 false)
  %i.fs = trunc i64 %i.fr to i32
  %i.ft = add i32 %index245, %i.fs
  br label %.loopexit30.i

.loopexit30.i.loopexit192:                        ; preds = %vector.body233
  %i.fu = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.n, i1 false)
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = add i32 %index234, %i.fv
  br label %.loopexit30.i

.loopexit30.i.loopexit193:                        ; preds = %vector.body222
  %i.fx = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.i, i1 false)
  %i.fy = trunc i64 %i.fx to i32
  %i.fz = add i32 %index223, %i.fy
  br label %.loopexit30.i

.loopexit30.i.loopexit194:                        ; preds = %vector.body
  %i.ga = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.d, i1 false)
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = add i32 %index, %i.gb
  br label %.loopexit30.i

.loopexit30.i:                                    ; preds = %.loopexit30.i.loopexit194, %.loopexit30.i.loopexit193, %.loopexit30.i.loopexit192, %.loopexit30.i.loopexit191, %.loopexit30.i.loopexit190, %.loopexit30.i.loopexit189, %.loopexit30.i.loopexit188, %.loopexit30.i.loopexit187, %.loopexit30.i.loopexit186, %.loopexit30.i.loopexit185, %.loopexit30.i.loopexit184, %.loopexit30.i.loopexit183, %.loopexit30.i.loopexit182, %.loopexit30.i.loopexit181, %.loopexit30.i.loopexit180, %.loopexit30.i.loopexit179, %.loopexit30.i.loopexit178, %.loopexit30.i.loopexit177, %.loopexit30.i.loopexit176, %.loopexit30.i.loopexit175, %.loopexit30.i.loopexit174, %.loopexit30.i.loopexit173, %.loopexit30.i.loopexit, %.loopexit30.i.loopexit77
  %.01426.lcssa.i = phi i32 [ -768, %.loopexit30.i.loopexit188 ], [ -512, %.loopexit30.i.loopexit187 ], [ -256, %.loopexit30.i.loopexit186 ], [ 0, %.loopexit30.i.loopexit185 ], [ 256, %.loopexit30.i.loopexit184 ], [ 512, %.loopexit30.i.loopexit183 ], [ 768, %.loopexit30.i.loopexit182 ], [ 1024, %.loopexit30.i.loopexit181 ], [ 1280, %.loopexit30.i.loopexit180 ], [ 1536, %.loopexit30.i.loopexit179 ], [ 1792, %.loopexit30.i.loopexit178 ], [ 2048, %.loopexit30.i.loopexit177 ], [ 2304, %.loopexit30.i.loopexit176 ], [ 2560, %.loopexit30.i.loopexit175 ], [ 2816, %.loopexit30.i.loopexit174 ], [ 3072, %.loopexit30.i.loopexit173 ], [ 3328, %.loopexit30.i.loopexit ], [ -2048, %.loopexit30.i.loopexit193 ], [ -1792, %.loopexit30.i.loopexit192 ], [ -1536, %.loopexit30.i.loopexit191 ], [ -2560, %.loopexit30.i.loopexit77 ], [ -1280, %.loopexit30.i.loopexit190 ], [ -1024, %.loopexit30.i.loopexit189 ], [ -2304, %.loopexit30.i.loopexit194 ]
  %.025.lcssa.i = phi i32 [ %i.fk, %.loopexit30.i.loopexit188 ], [ %i.fh, %.loopexit30.i.loopexit187 ], [ %i.fe, %.loopexit30.i.loopexit186 ], [ %i.fb, %.loopexit30.i.loopexit185 ], [ %i.ey, %.loopexit30.i.loopexit184 ], [ %i.ev, %.loopexit30.i.loopexit183 ], [ %i.es, %.loopexit30.i.loopexit182 ], [ %i.ep, %.loopexit30.i.loopexit181 ], [ %i.em, %.loopexit30.i.loopexit180 ], [ %i.ej, %.loopexit30.i.loopexit179 ], [ %i.eg, %.loopexit30.i.loopexit178 ], [ %i.ed, %.loopexit30.i.loopexit177 ], [ %i.ea, %.loopexit30.i.loopexit176 ], [ %i.dx, %.loopexit30.i.loopexit175 ], [ %i.du, %.loopexit30.i.loopexit174 ], [ %i.dr, %.loopexit30.i.loopexit173 ], [ %i.do, %.loopexit30.i.loopexit ], [ %i.fz, %.loopexit30.i.loopexit193 ], [ %i.fw, %.loopexit30.i.loopexit192 ], [ %i.ft, %.loopexit30.i.loopexit191 ], [ %4, %.loopexit30.i.loopexit77 ], [ %i.fq, %.loopexit30.i.loopexit190 ], [ %i.fn, %.loopexit30.i.loopexit189 ], [ %i.gc, %.loopexit30.i.loopexit194 ]
  %i.gd = add i32 %.01426.lcssa.i, %.025.lcssa.i
  %i.ge = zext i32 %i.gd to i64                   ; 2 uses
  %i.gf = mul nuw nsw i64 %i.ge, 5
  %i.gg = mul i64 %i.gf, %i.ge
  %i.gh = lshr i64 %i.gg, 16
  %i.gi = add nuw nsw i64 %i.gh, 870
  br label %_ZL10GetLogSizej.exit

_ZL10GetLogSizej.exit:                            ; preds = %vector.body.interim458, %.loopexit30.i
  %i.gj = phi i64 [ %i.gi, %.loopexit30.i ], [ 1850, %vector.body.interim458 ]
  %i.gk = icmp ugt i64 %2, 1000000
  br i1 %i.gk, label %.lr.ph.i.i, label %_ZL11MyMultDiv64yyy.exit

.lr.ph.i.i:                                       ; preds = %_ZL10GetLogSizej.exit, %.lr.ph.i.i
  %.1.i = phi i64 [ %i.gn, %.lr.ph.i.i ], [ %1, %_ZL10GetLogSizej.exit ]
  %i.gl = phi i64 [ %i.gm, %.lr.ph.i.i ], [ %2, %_ZL10GetLogSizej.exit ] ; 2 uses
  %i.gm = lshr i64 %i.gl, 1                       ; 2 uses
  %i.gn = lshr i64 %.1.i, 1                       ; 2 uses
  %i.go = icmp ugt i64 %i.gl, 2000001
  br i1 %i.go, label %.lr.ph.i.i, label %_ZL11MyMultDiv64yyy.exit, !llvm.loop !0

_ZL11MyMultDiv64yyy.exit:                         ; preds = %.lr.ph.i.i, %_ZL10GetLogSizej.exit
  %.07.i = phi i64 [ %2, %_ZL10GetLogSizej.exit ], [ %i.gm, %.lr.ph.i.i ]
  %.2.i = phi i64 [ %1, %_ZL10GetLogSizej.exit ], [ %i.gn, %.lr.ph.i.i ]
  %i.gp = mul i64 %i.gj, %3
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %.2.i, i64 1)
  %i.gq = mul i64 %i.gp, %.07.i
  %i.gr = udiv i64 %i.gq, %spec.select.i
  ret i64 %i.gr
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_Z19GetDecompressRatingyyyyj(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #7 !guid !176 {
bb.a:
  %i.a = icmp ugt i64 %1, 1000000
  br i1 %i.a, label %.lr.ph.i.i, label %_ZL11MyMultDiv64yyy.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.1.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ %0, %bb.a ]
  %i.b = phi i64 [ %i.c, %.lr.ph.i.i ], [ %1, %bb.a ] ; 2 uses
  %i.c = lshr i64 %i.b, 1                         ; 2 uses
  %i.d = lshr i64 %.1.i, 1                        ; 2 uses
  %i.e = icmp ugt i64 %i.b, 2000001
  br i1 %i.e, label %.lr.ph.i.i, label %_ZL11MyMultDiv64yyy.exit, !llvm.loop !0

_ZL11MyMultDiv64yyy.exit:                         ; preds = %.lr.ph.i.i, %bb.a
  %.07.i = phi i64 [ %1, %bb.a ], [ %i.c, %.lr.ph.i.i ]
  %.2.i = phi i64 [ %0, %bb.a ], [ %i.d, %.lr.ph.i.i ]
  %i.f = mul i64 %3, 200
  %i.g = shl i64 %2, 2
  %i.h = add i64 %i.f, %i.g
  %i.i = zext i32 %4 to i64
  %i.j = mul i64 %i.h, %i.i
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %.2.i, i64 1)
  %i.k = mul i64 %i.j, %.07.i
  %i.l = udiv i64 %i.k, %spec.select.i
  ret i64 %i.l
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12CEncoderInfo4InitEjjP20CBaseRandomGenerator(ptr noundef nonnull align 8 dereferenceable(224) initializes((164, 168), (200, 208)) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !180 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 5 uses
  %4 = alloca [2 x %struct.tagPROPVARIANT], align 16 ; 8 uses
  %5 = alloca %class.CMyComPtr.2, align 8         ; 8 uses
  %6 = alloca %class.CMyComPtr.3, align 8         ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %3, ptr %i.c, align 8, !tbaa !91
  %i.d = add i32 %1, 65536                        ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %i.d, ptr %i.e, align 4, !tbaa !98
  %i.f = lshr i32 %i.d, 1
  %i.g = add nuw i32 %i.f, 1024
  %i.h = zext i32 %i.d to i64                     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60   ; 2 uses
  %.not.i = icmp ne ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp eq i64 %i.l, %i.h
  %or.cond.i = select i1 %.not.i, i1 %i.m, i1 false
  br i1 %or.cond.i, label %_ZN12CBenchBuffer5AllocEm.exit44, label %_ZN12CBenchBuffer5AllocEm.exit

_ZN12CBenchBuffer5AllocEm.exit:                   ; preds = %bb.a
  tail call void @MidFree(ptr noundef %i.j)
  store ptr null, ptr %i.i, align 8, !tbaa !60
  %i.n = tail call ptr @MidAlloc(i64 noundef %i.h) ; 2 uses
  store ptr %i.n, ptr %i.i, align 8, !tbaa !60
  store i64 %i.h, ptr %i.k, align 8, !tbaa !56
  %.not74 = icmp eq ptr %i.n, null
  br i1 %.not74, label %bb.w, label %_ZN12CBenchBuffer5AllocEm.exit44

_ZN12CBenchBuffer5AllocEm.exit44:                 ; preds = %_ZN12CBenchBuffer5AllocEm.exit, %bb.a
  tail call void @_ZN21CBenchRandomGenerator8GenerateEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !60
  %i.p = load i64, ptr %i.k, align 8, !tbaa !56
  %i.q = tail call i32 @CrcCalc(ptr noundef %i.o, i64 noundef %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.q, ptr %i.r, align 8, !tbaa !99
  %i.s = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 3 uses
  store ptr null, ptr %i.u, align 8, !tbaa !60
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i32 0, ptr %i.v, align 8, !tbaa !100
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV19CBenchmarkOutStream, i64 16), ptr %i.s, align 8, !tbaa !88
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV19CBenchmarkOutStream, i64 80), ptr %i.t, align 8, !tbaa !88
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.s, ptr %i.w, align 8, !tbaa !101
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.y = zext i32 %i.g to i64                     ; 2 uses
  tail call void @MidFree(ptr noundef null)
  store ptr null, ptr %i.u, align 8, !tbaa !60
  %i.z = tail call ptr @MidAlloc(i64 noundef %i.y) ; 2 uses
  store ptr %i.z, ptr %i.u, align 8, !tbaa !60
  store i64 %i.y, ptr %i.x, align 8, !tbaa !56
  %.not75 = icmp eq ptr %i.z, null
  br i1 %.not75, label %bb.w, label %_ZN12CBenchBuffer5AllocEm.exit44.thread

_ZN12CBenchBuffer5AllocEm.exit44.thread:          ; preds = %_ZN12CBenchBuffer5AllocEm.exit44
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !101 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %.not.i45 = icmp eq ptr %.pre, null
  br i1 %.not.i45, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN12CBenchBuffer5AllocEm.exit44.thread
  %i.ab = load ptr, ptr %.pre, align 8, !tbaa !88
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef i32 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %.pre), !inline_history !177 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN12CBenchBuffer5AllocEm.exit44.thread
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !102 ; 3 uses
  %.not6.i = icmp eq ptr %i.af, null
  br i1 %.not6.i, label %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !88
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef i32 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af), !inline_history !177 ; 0 uses
  br label %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit

_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit: ; preds = %bb.c, %bb.d
  store ptr %.pre, ptr %i.aa, align 8, !tbaa !102
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !103
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.am = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21 ; 9 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr null, ptr %i.ao, align 8, !tbaa !60
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV19CBenchmarkOutStream, i64 16), ptr %i.am, align 8, !tbaa !88
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV19CBenchmarkOutStream, i64 80), ptr %i.an, align 8, !tbaa !88
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !103
  store i32 1, ptr %i.ap, align 8, !tbaa !100
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !102 ; 3 uses
  %.not6.i47 = icmp eq ptr %i.aq, null
  br i1 %.not6.i47, label %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit48.thread, label %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit48

_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit48.thread: ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit
  store ptr %i.am, ptr %i.al, align 8, !tbaa !102
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  br label %_ZN12CBenchBuffer5AllocEm.exit52

_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit48: ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !88
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.aq), !inline_history !177 ; 0 uses
  %.pre77.pre = load ptr, ptr %i.ak, align 8, !tbaa !103 ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre77.pre, i64 24
  %.pre88 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !60 ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !102
  %.not.i49 = icmp ne ptr %.pre88, null
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre77.pre, i64 16 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = icmp eq i64 %i.ax, 5
  %or.cond.i50 = select i1 %.not.i49, i1 %i.ay, i1 false
  br i1 %or.cond.i50, label %_ZN12CBenchBuffer5AllocEm.exit52.thread, label %_ZN12CBenchBuffer5AllocEm.exit52

_ZN12CBenchBuffer5AllocEm.exit52:                 ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit48.thread, %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit48
  %i.az = phi ptr [ %i.ar, %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit48.thread ], [ %i.aw, %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit48 ]
  %.pre7799 = phi ptr [ %i.am, %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit48.thread ], [ %.pre77.pre, %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit48 ]
  %i.ba = phi ptr [ null, %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit48.thread ], [ %.pre88, %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit48 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre7799, i64 24 ; 2 uses
  tail call void @MidFree(ptr noundef %i.ba)
  store ptr null, ptr %i.bb, align 8, !tbaa !60
  %i.bc = tail call ptr @MidAlloc(i64 noundef 5)  ; 2 uses
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !60
  store i64 5, ptr %i.az, align 8, !tbaa !56
  %.not76 = icmp eq ptr %i.bc, null
  br i1 %.not76, label %bb.w, label %_ZN12CBenchBuffer5AllocEm.exit52._ZN12CBenchBuffer5AllocEm.exit52.thread_crit_edge

_ZN12CBenchBuffer5AllocEm.exit52._ZN12CBenchBuffer5AllocEm.exit52.thread_crit_edge: ; preds = %_ZN12CBenchBuffer5AllocEm.exit52
  %.pre78 = load ptr, ptr %i.ak, align 8, !tbaa !103
  br label %_ZN12CBenchBuffer5AllocEm.exit52.thread
end_hunk_1
