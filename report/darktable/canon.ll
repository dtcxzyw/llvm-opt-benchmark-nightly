Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/canon?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_ZN6LibRaw21_CanonConvertApertureEt:bb.a
  %i.a = uitofp reassoc nsz arcp contract afn i16 %0 to float
  %i.b = fmul reassoc nnan nsz arcp contract afn float %i.a, 1.562500e-02 ; 2 uses
  %or.cond.i.i = fcmp reassoc nsz arcp contract afn ogt float %i.b, 6.400000e+01
  %exp2 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.b)
  %i.c = select reassoc nsz arcp contract afn i1 %or.cond.i.i, float 0.000000e+00, float %exp2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.b
  %.0 = phi nsz float [ %i.c, %bb.b ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6LibRaw20setCanonBodyFeaturesEy(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(768512) initializes((1344, 1352)) %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i64 %1, ptr %i.a, align 8, !tbaa !104
  switch i64 %1, label %bb.f [
    i64 2147484289, label %.sink.split
    i64 2147484210, label %.sink.split
    i64 2147484020, label %.sink.split
    i64 2147484009, label %.sink.split
    i64 2147483649, label %.sink.split
    i64 2147484712, label %bb.b
    i64 2147484678, label %bb.b
    i64 2147484673, label %bb.b
    i64 2147484546, label %bb.b
    i64 2147484489, label %bb.b
    i64 2147484456, label %bb.b
    i64 2147484452, label %bb.b
    i64 2147484418, label %bb.b
    i64 2147484293, label %bb.b
    i64 2147484265, label %bb.b
    i64 2147484184, label %bb.b
    i64 2147484181, label %bb.b
    i64 2147484179, label %bb.b
    i64 2147484040, label %bb.b
    i64 2147484007, label %bb.b
    i64 2147484776, label %bb.c
    i64 2147484501, label %bb.c
    i64 2147484465, label %bb.c
    i64 67567616, label %bb.c
    i64 60293120, label %bb.c
    i64 60030976, label %bb.c
    i64 58982400, label %bb.c
    i64 57933824, label %bb.c
    i64 2065, label %bb.c
    i64 1042, label %bb.c
    i64 2147484822, label %bb.d
    i64 2147484821, label %bb.d
    i64 2147484807, label %bb.d
    i64 2147484801, label %bb.d
    i64 2147484755, label %bb.d
    i64 2147484752, label %bb.d
    i64 2147484723, label %bb.d
    i64 2147484708, label %bb.d
    i64 2147484705, label %bb.d
    i64 1073742360, label %bb.d
    i64 2147484824, label %bb.e
    i64 2147484800, label %bb.e
    i64 2147484773, label %bb.e
    i64 2147484772, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %.sink.split

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %.sink.split

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 2, ptr %i.b, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 6, ptr %i.c, align 2, !tbaa !106
  br label %.sink.split

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 1, ptr %i.d, align 8, !tbaa !105
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 6, ptr %i.e, align 2, !tbaa !106
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %1, 2147483648
  br i1 %i.f, label %.sink.split, label %switch.early.test

switch.early.test:                                ; preds = %bb.f
  %trunc = trunc nuw i64 %1 to i32
  switch i32 %trunc, label %bb.g [
    i32 23494656, label %.sink.split
    i32 18087936, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.f, %switch.early.test, %switch.early.test, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.c, %bb.e, %bb.d, %bb.b
  %.sink133 = phi i64 [ 1352, %bb.b ], [ 1336, %bb.d ], [ 1352, %bb.a ], [ 1336, %bb.e ], [ 1352, %bb.c ], [ 1352, %bb.a ], [ 1352, %bb.a ], [ 1352, %bb.a ], [ 1352, %bb.a ], [ 1352, %switch.early.test ], [ 1352, %switch.early.test ], [ 1352, %bb.f ]
  %.sink131 = phi i16 [ 2, %bb.b ], [ 2, %bb.d ], [ 4, %bb.a ], [ 1, %bb.e ], [ 1, %bb.c ], [ 4, %bb.a ], [ 4, %bb.a ], [ 4, %bb.a ], [ 4, %bb.a ], [ 1, %switch.early.test ], [ 1, %switch.early.test ], [ 1, %bb.f ]
  %.sink130 = phi i64 [ 1354, %bb.b ], [ 1338, %bb.d ], [ 1354, %bb.a ], [ 1338, %bb.e ], [ 1354, %bb.c ], [ 1354, %bb.a ], [ 1354, %bb.a ], [ 1354, %bb.a ], [ 1354, %bb.a ], [ 1354, %switch.early.test ], [ 1354, %switch.early.test ], [ 1354, %bb.f ]
  %.sink = phi i16 [ 5, %bb.b ], [ 5, %bb.d ], [ 5, %bb.a ], [ 5, %bb.e ], [ 3, %bb.c ], [ 5, %bb.a ], [ 5, %bb.a ], [ 5, %bb.a ], [ 5, %bb.a ], [ 5, %switch.early.test ], [ 5, %switch.early.test ], [ 5, %bb.f ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.sink133
  store i16 %.sink131, ptr %i.g, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sink130
  store i16 %.sink, ptr %i.h, align 2, !tbaa !74
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %switch.early.test
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw22processCanonCameraInfoEyPhjjj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %3, 16
  br i1 %i.a, label %bb.cm, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %2)
  store i8 0, ptr %2, align 1, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.c, align 1, !tbaa !75
  %i.d = icmp eq i32 %4, 4
  br i1 %i.d, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ugt i32 %3, 400
  br i1 %i.e, label %bb.d, label %switch.early.test

switch.early.test:                                ; preds = %bb.c
  switch i32 %3, label %bb.f [
    i32 264, label %bb.d
    i32 171, label %bb.d
    i32 167, label %bb.d
    i32 162, label %bb.d
    i32 156, label %bb.d
    i32 148, label %bb.d
    i32 138, label %bb.d
    i32 94, label %bb.d
    i32 72, label %bb.e
  ]

bb.d:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.c
  %i.f = shl i32 %3, 2
  %i.g = add i32 %i.f, -12
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  br label %.sink.split

bb.e:                                             ; preds = %switch.early.test
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 284
  br label %.sink.split

bb.f:                                             ; preds = %switch.early.test
  %i.k = and i32 %3, 503
  switch i32 %i.k, label %bb.i [
    i32 85, label %bb.g
    i32 96, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.l = shl nuw nsw i32 %3, 2
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr i8, ptr %2, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i32 %3, 2
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr i8, ptr %2, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.h, %bb.g, %bb.d
  %.sink = phi ptr [ %i.i, %bb.d ], [ %i.o, %bb.g ], [ %i.s, %bb.h ], [ %i.j, %bb.e ]
  %i.t = tail call noundef i32 @_ZN6LibRaw5sget4EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %.sink)
  %i.u = uitofp reassoc nsz arcp contract afn i32 %i.t to float
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4800
  store float %i.u, ptr %i.v, align 8, !tbaa !76
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.f, %bb.b
  switch i64 %1, label %.critedge.thread [
    i64 2147483649, label %bb.j
    i64 2147484007, label %bb.j
    i64 2147484020, label %bb.q
    i64 2147484040, label %bb.q
    i64 2147484210, label %bb.r
    i64 2147484009, label %.critedge
    i64 2147484181, label %.critedge
    i64 2147484289, label %bb.s
    i64 2147484265, label %bb.v
    i64 2147484179, label %bb.z
    i64 2147484184, label %bb.aa
    i64 2147484293, label %bb.ab
    i64 2147484489, label %bb.ai
    i64 2147484546, label %bb.aj
    i64 2147484673, label %bb.aj
    i64 2147484418, label %bb.ak
    i64 2147484240, label %bb.al
    i64 2147484048, label %6
    i64 2147484257, label %bb.ao
    i64 2147484244, label %bb.az
    i64 2147484487, label %bb.ay
    i64 2147484453, label %bb.ar
    i64 2147484496, label %bb.as
    i64 2147484022, label %bb.at
    i64 2147484242, label %bb.au
    i64 2147484272, label %bb.av
    i64 2147484294, label %bb.aw
    i64 2147484296, label %bb.aw
    i64 2147484417, label %bb.ax
    i64 2147484454, label %bb.ax
    i64 2147484563, label %bb.ay
    i64 2147484295, label %bb.aq
    i64 2147484455, label %bb.ap
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 2 uses
  %i.x = load float, ptr %i.w, align 8, !tbaa !77
  %i.y = fcmp reassoc nsz arcp contract afn une float %i.x, 0.000000e+00
  br i1 %i.y, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aa = tail call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.z)
  %i.ab = uitofp reassoc nsz arcp contract afn i16 %i.aa to float
  store float %i.ab, ptr %i.w, align 8, !tbaa !77
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !78
  %i.ae = fcmp reassoc nsz arcp contract afn une float %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.ag = tail call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.af)
  %i.ah = uitofp reassoc nsz arcp contract afn i16 %i.ag to float
  store float %i.ah, ptr %i.ac, align 8, !tbaa !78
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1460 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !79
  %i.ak = fcmp reassoc nsz arcp contract afn oeq float %i.aj, 0.000000e+00
  %i.al = icmp ugt i32 %3, 17
  %or.cond = and i1 %i.al, %i.ak
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = tail call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.am)
  %i.ao = uitofp reassoc nsz arcp contract afn i16 %i.an to float
  store float %i.ao, ptr %i.ai, align 4, !tbaa !79
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4800
  store float 0.000000e+00, ptr %i.ap, align 8, !tbaa !76
  br label %.critedge.thread

bb.q:                                             ; preds = %bb.i, %bb.i
  br label %.critedge.thread

bb.r:                                             ; preds = %bb.i
  br label %.critedge.thread

bb.s:                                             ; preds = %bb.i
  %i.aq = zext i32 %3 to i64                      ; 2 uses
  %i.ar = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 488, i64 noundef %i.aq)
  %.not282 = icmp eq i32 %i.ar, 0
  br i1 %.not282, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.as = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 493, i64 noundef %i.aq)
  %.not283 = icmp eq i32 %i.as, 0
  br i1 %.not283, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.at = phi i16 [ 0, %bb.t ], [ -1, %bb.s ]     ; 3 uses
  %i.au = add nsw i16 %i.at, 335
  %i.av = add nsw i16 %i.at, 337
  %i.aw = add nsw i16 %i.at, 339
  br label %.critedge

bb.v:                                             ; preds = %bb.i
  %i.ax = zext i32 %3 to i64                      ; 4 uses
  %i.ay = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 625, i64 noundef %i.ax)
  %.not276 = icmp eq i32 %i.ay, 0
  br i1 %.not276, label %bb.w, label %.thread349

bb.w:                                             ; preds = %bb.v
  %i.az = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 633, i64 noundef %i.ax)
  %.not277 = icmp eq i32 %i.az, 0
  br i1 %.not277, label %bb.x, label %.thread349

bb.x:                                             ; preds = %bb.w
  %i.ba = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 640, i64 noundef %i.ax)
  %.not278 = icmp eq i32 %i.ba, 0
  br i1 %.not278, label %bb.y, label %.thread349

bb.y:                                             ; preds = %bb.x
  %i.bb = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 645, i64 noundef %i.ax)
  %.not279 = icmp eq i32 %i.bb, 0                 ; 3 uses
  %.446.a = select i1 %.not279, i16 32, i16 35
  %.447.a = select i1 %.not279, i16 122, i16 125
  %.448 = select i1 %.not279, i16 -7, i16 5
  br label %.thread349

.thread349:                                       ; preds = %bb.x, %bb.y, %bb.v, %bb.w
  %i.bc = phi i16 [ %.446.a, %bb.y ], [ 32, %bb.v ], [ 32, %bb.w ], [ 35, %bb.x ]
  %i.bd = phi i16 [ %.447.a, %bb.y ], [ 122, %bb.v ], [ 122, %bb.w ], [ 125, %bb.x ]
  %i.be = phi i16 [ %.448, %bb.y ], [ -7, %bb.v ], [ -7, %bb.w ], [ 0, %bb.x ] ; 3 uses
  %i.bf = add nsw i16 %i.be, 423
  %i.bg = add nsw i16 %i.be, 425
  %narrow281 = add nsw i16 %i.be, 427
  br label %.critedge

bb.z:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bi = tail call noundef zeroext i16 @_ZN6LibRaw8sget2RevEPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.bh)
  %.not275 = icmp eq i16 %i.bi, 0
  %spec.select311 = select i1 %.not275, i16 151, i16 12
  br label %.critedge

bb.aa:                                            ; preds = %bb.i
  br label %.critedge

bb.ab:                                            ; preds = %bb.i
  %i.bj = zext i32 %3 to i64                      ; 5 uses
  %i.bk = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 556, i64 noundef %i.bj)
  %.not267.not = icmp eq i32 %i.bk, 0
  br i1 %.not267.not, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.bl = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 557, i64 noundef %i.bj)
  %.not268 = icmp eq i32 %i.bl, 0
  br i1 %.not268, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.bm = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 572, i64 noundef %i.bj)
  %.not269 = icmp eq i32 %i.bm, 0
  br i1 %.not269, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bn = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 578, i64 noundef %i.bj)
  %.not270 = icmp eq i32 %i.bn, 0
  br i1 %.not270, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bo = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 583, i64 noundef %i.bj)
  %.not271 = icmp eq i32 %i.bo, 0
  br i1 %.not271, label %.critedge.thread, label %.thread385

bb.ag:                                            ; preds = %bb.ad, %bb.ae
  %.4.ph = phi i16 [ 6, %bb.ae ], [ 0, %bb.ad ]   ; 2 uses
  %i.bp = add nuw nsw i16 %.4.ph, 125
  br label %.thread385

bb.ah:                                            ; preds = %bb.ac, %bb.ab
  %.4.ph.ph = phi i16 [ -4, %bb.ab ], [ -3, %bb.ac ] ; 2 uses
  %i.bq = add nsw i16 %.4.ph.ph, 125
  %narrow273383392 = add nsw i16 %.4.ph.ph, -4
  br label %.thread385

.thread385:                                       ; preds = %bb.af, %bb.ag, %bb.ah
  %i.br = phi i16 [ 34, %bb.ah ], [ 35, %bb.ag ], [ 35, %bb.af ]
  %i.bs = phi i16 [ %i.bq, %bb.ah ], [ %i.bp, %bb.ag ], [ 131, %bb.af ]
  %i.bt = phi i16 [ %narrow273383392, %bb.ah ], [ %.4.ph, %bb.ag ], [ 11, %bb.af ] ; 3 uses
  %i.bu = add nsw i16 %i.bt, 339
  %i.bv = add nsw i16 %i.bt, 341
  %narrow274 = add nsw i16 %i.bt, 343
  br label %.critedge

bb.ai:                                            ; preds = %bb.i
  br label %.critedge

bb.aj:                                            ; preds = %bb.i, %bb.i
  br label %.critedge

bb.ak:                                            ; preds = %bb.i
  br label %.critedge

bb.al:                                            ; preds = %bb.i
  %i.bw = zext i32 %3 to i64                      ; 2 uses
  %i.bx = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 424, i64 noundef %i.bw)
  %.not = icmp eq i32 %i.bx, 0
  br i1 %.not, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.by = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 428, i64 noundef %i.bw)
  %.not265 = icmp eq i32 %i.by, 0
  br i1 %.not265, label %.critedge.thread, label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.bz = phi i16 [ 0, %bb.am ], [ -4, %bb.al ]   ; 4 uses
  %i.ca = add nsw i16 %i.bz, 53
  %i.cb = add nsw i16 %i.bz, 274
  %i.cc = add nsw i16 %i.bz, 276
  %i.cd = add nsw i16 %i.bz, 278
  br label %.critedge

6:                                                ; preds = %bb.i
  br label %.critedge

bb.ao:                                            ; preds = %bb.i
  br label %.critedge

bb.ap:                                            ; preds = %bb.i
  br label %.critedge

bb.aq:                                            ; preds = %bb.i
  br label %.critedge

bb.ar:                                            ; preds = %bb.i
  br label %.critedge

bb.as:                                            ; preds = %bb.i
  br label %.critedge

bb.at:                                            ; preds = %bb.i
  br label %.critedge

bb.au:                                            ; preds = %bb.i
  br label %.critedge

bb.av:                                            ; preds = %bb.i
  br label %.critedge

bb.aw:                                            ; preds = %bb.i, %bb.i
  br label %.critedge

bb.ax:                                            ; preds = %bb.i, %bb.i
  br label %.critedge

bb.ay:                                            ; preds = %bb.i, %bb.i
  br label %.critedge

bb.az:                                            ; preds = %bb.i
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.i, %bb.ap, %bb.t, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ao, %6, %bb.an, %bb.ak, %bb.aj, %bb.ai, %.thread385, %bb.aa, %bb.z, %.thread349, %bb.u
  %.1254 = phi i16 [ 255, %bb.av ], [ 234, %bb.aw ], [ 295, %bb.ax ], [ 388, %bb.ay ], [ 246, %bb.au ], [ %i.au, %bb.u ], [ 0, %bb.t ], [ %i.bf, %.thread349 ], [ %spec.select311, %bb.z ], [ 230, %bb.aa ], [ %i.bu, %.thread385 ], [ 232, %bb.aq ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 353, %bb.ak ], [ %i.cb, %bb.an ], [ 232, %bb.ap ], [ 214, %6 ], [ 234, %bb.ao ], [ 226, %bb.az ], [ 358, %bb.ar ], [ 393, %bb.as ], [ 222, %bb.at ], [ 273, %bb.i ], [ 273, %bb.i ] ; 3 uses
  %.0252 = phi i16 [ 259, %bb.av ], [ 238, %bb.aw ], [ 299, %bb.ax ], [ 392, %bb.ay ], [ 250, %bb.au ], [ %i.aw, %bb.u ], [ 0, %bb.t ], [ %narrow281, %.thread349 ], [ 149, %bb.z ], [ 234, %bb.aa ], [ %narrow274, %.thread385 ], [ 236, %bb.aq ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 357, %bb.ak ], [ %i.cd, %bb.an ], [ 236, %bb.ap ], [ 218, %6 ], [ 238, %bb.ao ], [ 230, %bb.az ], [ 362, %bb.ar ], [ 397, %bb.as ], [ 0, %bb.at ], [ 277, %bb.i ], [ 277, %bb.i ] ; 3 uses
  %.0251 = phi i16 [ 257, %bb.av ], [ 236, %bb.aw ], [ 297, %bb.ax ], [ 390, %bb.ay ], [ 248, %bb.au ], [ %i.av, %bb.u ], [ 0, %bb.t ], [ %i.bg, %.thread349 ], [ 147, %bb.z ], [ 232, %bb.aa ], [ %i.bv, %.thread385 ], [ 234, %bb.aq ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 355, %bb.ak ], [ %i.cc, %bb.an ], [ 234, %bb.ap ], [ 216, %6 ], [ 236, %bb.ao ], [ 228, %bb.az ], [ 360, %bb.ar ], [ 395, %bb.as ], [ 0, %bb.at ], [ 275, %bb.i ], [ 275, %bb.i ] ; 3 uses
  %7 = phi i1 [ false, %bb.av ], [ false, %bb.aw ], [ false, %bb.ax ], [ false, %bb.ay ], [ false, %bb.au ], [ false, %bb.u ], [ false, %bb.t ], [ false, %.thread349 ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %.thread385 ], [ false, %bb.aq ], [ false, %bb.ai ], [ false, %bb.aj ], [ false, %bb.ak ], [ false, %bb.an ], [ false, %bb.ap ], [ true, %6 ], [ false, %bb.ao ], [ true, %bb.az ], [ false, %bb.ar ], [ false, %bb.as ], [ true, %bb.at ], [ false, %bb.i ], [ false, %bb.i ] ; 3 uses
  %.0250 = phi i32 [ 0, %bb.av ], [ 0, %bb.aw ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 0, %bb.au ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %.thread349 ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 0, %.thread385 ], [ 0, %bb.aq ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 0, %bb.an ], [ 0, %bb.ap ], [ 2347, %6 ], [ 0, %bb.ao ], [ 2359, %bb.az ], [ 0, %bb.ar ], [ 0, %bb.as ], [ 2355, %bb.at ], [ 0, %bb.i ], [ 0, %bb.i ] ; 3 uses
  %.0249 = phi i16 [ 30, %bb.av ], [ 30, %bb.aw ], [ 35, %bb.ax ], [ 35, %bb.ay ], [ 30, %bb.au ], [ 30, %bb.u ], [ 30, %bb.t ], [ %i.bc, %.thread349 ], [ 40, %bb.z ], [ 30, %bb.aa ], [ %i.br, %.thread385 ], [ 30, %bb.aq ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 35, %bb.ak ], [ 30, %bb.an ], [ 30, %bb.ap ], [ 29, %6 ], [ 30, %bb.ao ], [ 29, %bb.az ], [ 35, %bb.ar ], [ 35, %bb.as ], [ 29, %bb.at ], [ 29, %bb.i ], [ 29, %bb.i ] ; 3 uses
  %.1247 = phi i16 [ 53, %bb.av ], [ 56, %bb.aw ], [ 125, %bb.ax ], [ 150, %bb.ay ], [ 49, %bb.au ], [ 53, %bb.u ], [ 53, %bb.t ], [ %i.bd, %.thread349 ], [ 39, %bb.z ], [ 49, %bb.aa ], [ %i.bs, %.thread385 ], [ 54, %bb.aq ], [ 150, %bb.ai ], [ 150, %bb.aj ], [ 131, %bb.ak ], [ %i.ca, %bb.an ], [ 58, %bb.ap ], [ 48, %6 ], [ 49, %bb.ao ], [ 48, %bb.az ], [ 132, %bb.ar ], [ 150, %bb.as ], [ 48, %bb.at ], [ 48, %bb.i ], [ 48, %bb.i ] ; 2 uses
  %.not287 = phi i1 [ false, %bb.av ], [ false, %bb.aw ], [ true, %bb.ax ], [ true, %bb.ay ], [ false, %bb.au ], [ false, %bb.u ], [ false, %bb.t ], [ true, %.thread349 ], [ true, %bb.z ], [ false, %bb.aa ], [ true, %.thread385 ], [ true, %bb.aq ], [ true, %bb.ai ], [ true, %bb.aj ], [ true, %bb.ak ], [ false, %bb.an ], [ true, %bb.ap ], [ true, %6 ], [ false, %bb.ao ], [ true, %bb.az ], [ true, %bb.ar ], [ true, %bb.as ], [ true, %bb.at ], [ true, %bb.i ], [ true, %bb.i ] ; 3 uses
  %.0245 = phi i64 [ 7, %bb.av ], [ 7, %bb.aw ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 7, %bb.au ], [ 7, %bb.u ], [ 7, %bb.t ], [ 0, %.thread349 ], [ 0, %bb.z ], [ 7, %bb.aa ], [ 0, %.thread385 ], [ 0, %bb.aq ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 7, %bb.an ], [ 0, %bb.ap ], [ 0, %6 ], [ 7, %bb.ao ], [ 0, %bb.az ], [ 0, %bb.ar ], [ 0, %bb.as ], [ 0, %bb.at ], [ 0, %bb.i ], [ 0, %bb.i ] ; 3 uses
  %.not289 = phi i1 [ true, %bb.av ], [ true, %bb.aw ], [ true, %bb.ax ], [ true, %bb.ay ], [ false, %bb.au ], [ true, %bb.u ], [ true, %bb.t ], [ true, %.thread349 ], [ true, %bb.z ], [ false, %bb.aa ], [ true, %.thread385 ], [ true, %bb.aq ], [ true, %bb.ai ], [ true, %bb.aj ], [ true, %bb.ak ], [ true, %bb.an ], [ true, %bb.ap ], [ true, %6 ], [ false, %bb.ao ], [ true, %bb.az ], [ true, %bb.ar ], [ true, %bb.as ], [ true, %bb.at ], [ true, %bb.i ], [ true, %bb.i ] ; 3 uses
  %.0244 = phi i16 [ 0, %bb.av ], [ 0, %bb.aw ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 190, %bb.au ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %.thread349 ], [ 0, %bb.z ], [ 191, %bb.aa ], [ 0, %.thread385 ], [ 0, %bb.aq ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 0, %bb.an ], [ 0, %bb.ap ], [ 0, %6 ], [ 191, %bb.ao ], [ 0, %bb.az ], [ 0, %bb.ar ], [ 0, %bb.as ], [ 0, %bb.at ], [ 0, %bb.i ], [ 0, %bb.i ] ; 3 uses
  %.not286 = phi i1 [ true, %bb.av ], [ true, %bb.aw ], [ true, %bb.ax ], [ true, %bb.ay ], [ true, %bb.au ], [ true, %bb.u ], [ true, %bb.t ], [ true, %.thread349 ], [ true, %bb.z ], [ true, %bb.aa ], [ true, %.thread385 ], [ true, %bb.aq ], [ false, %bb.ai ], [ false, %bb.aj ], [ false, %bb.ak ], [ true, %bb.an ], [ true, %bb.ap ], [ true, %6 ], [ true, %bb.ao ], [ true, %bb.az ], [ true, %bb.ar ], [ true, %bb.as ], [ true, %bb.at ], [ true, %bb.i ], [ true, %bb.i ] ; 3 uses
  %.0243 = phi i16 [ 0, %bb.av ], [ 0, %bb.aw ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 0, %bb.au ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %.thread349 ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 0, %.thread385 ], [ 0, %bb.aq ], [ 1498, %bb.ai ], [ 1408, %bb.aj ], [ 946, %bb.ak ], [ 0, %bb.an ], [ 0, %bb.ap ], [ 0, %6 ], [ 0, %bb.ao ], [ 0, %bb.az ], [ 0, %bb.ar ], [ 0, %bb.as ], [ 0, %bb.at ], [ 0, %bb.i ], [ 0, %bb.i ] ; 3 uses
  %i.ce = zext nneg i16 %.1247 to i32
  %i.cf = icmp ugt i32 %3, %i.ce
  br i1 %i.cf, label %bb.ba, label %.critedge.thread

bb.ba:                                            ; preds = %.critedge
  %i.cg = zext nneg i16 %.1247 to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !75  ; 2 uses
  %i.cj = icmp ult i8 %i.ci, 3
  br i1 %i.cj, label %.loopexit.sink.split, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.af, %bb.am, %bb.r, %bb.q, %bb.p, %bb.i, %bb.ba, %.critedge
  %.0243439 = phi i16 [ %.0243, %.critedge ], [ %.0243, %bb.ba ], [ 0, %bb.i ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.am ], [ 0, %bb.af ] ; 4 uses
  %.not286437 = phi i1 [ %.not286, %.critedge ], [ %.not286, %bb.ba ], [ true, %bb.i ], [ true, %bb.p ], [ true, %bb.q ], [ true, %bb.r ], [ true, %bb.am ], [ true, %bb.af ] ; 4 uses
  %.0244435 = phi i16 [ %.0244, %.critedge ], [ %.0244, %bb.ba ], [ 0, %bb.i ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.am ], [ 0, %bb.af ] ; 4 uses
  %.not289433 = phi i1 [ %.not289, %.critedge ], [ %.not289, %bb.ba ], [ true, %bb.i ], [ true, %bb.p ], [ true, %bb.q ], [ true, %bb.r ], [ true, %bb.am ], [ true, %bb.af ] ; 4 uses
  %.0245431 = phi i64 [ %.0245, %.critedge ], [ %.0245, %bb.ba ], [ 0, %bb.i ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 7, %bb.am ], [ 0, %bb.af ] ; 4 uses
  %.not287429 = phi i1 [ %.not287, %.critedge ], [ %.not287, %bb.ba ], [ true, %bb.i ], [ true, %bb.p ], [ true, %bb.q ], [ true, %bb.r ], [ false, %bb.am ], [ true, %bb.af ] ; 4 uses
  %.0248427 = phi i16 [ 0, %.critedge ], [ 0, %bb.ba ], [ 0, %bb.i ], [ 0, %bb.p ], [ 45, %bb.q ], [ 0, %bb.r ], [ 0, %bb.am ], [ 0, %bb.af ] ; 4 uses
  %.not290425 = phi i1 [ true, %.critedge ], [ true, %bb.ba ], [ true, %bb.i ], [ true, %bb.p ], [ false, %bb.q ], [ true, %bb.r ], [ true, %bb.am ], [ true, %bb.af ] ; 4 uses
  %.0249423 = phi i16 [ %.0249, %.critedge ], [ %.0249, %bb.ba ], [ 0, %bb.i ], [ 10, %bb.p ], [ 9, %bb.q ], [ 9, %bb.r ], [ 30, %bb.am ], [ 0, %bb.af ] ; 4 uses
  %.0250421 = phi i32 [ %.0250, %.critedge ], [ %.0250, %bb.ba ], [ 0, %bb.i ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.am ], [ 0, %bb.af ] ; 4 uses
  %i.ck = phi i1 [ %7, %.critedge ], [ %7, %bb.ba ], [ false, %bb.i ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.am ], [ false, %bb.af ] ; 4 uses
  %.0251419 = phi i16 [ %.0251, %.critedge ], [ %.0251, %bb.ba ], [ 0, %bb.i ], [ 14, %bb.p ], [ 17, %bb.q ], [ 17, %bb.r ], [ 0, %bb.am ], [ 0, %bb.af ] ; 4 uses
  %.0252417 = phi i16 [ %.0252, %.critedge ], [ %.0252, %bb.ba ], [ 0, %bb.i ], [ 16, %bb.p ], [ 19, %bb.q ], [ 19, %bb.r ], [ 0, %bb.am ], [ 0, %bb.af ] ; 4 uses
  %.1254415 = phi i16 [ %.1254, %.critedge ], [ %.1254, %bb.ba ], [ 0, %bb.i ], [ 13, %bb.p ], [ 12, %bb.q ], [ 12, %bb.r ], [ 0, %bb.am ], [ 0, %bb.af ] ; 4 uses
  %i.cl = icmp eq i32 %4, 7
  %i.cm = icmp eq i16 %i.b, -21846
  %or.cond22 = and i1 %i.cl, %i.cm
  %i.cn = icmp eq i32 %5, 0
  %or.cond24 = and i1 %i.cn, %or.cond22
  br i1 %or.cond24, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.critedge.thread
  %i.co = sext i32 %3 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv452 = phi i64 [ 4, %.preheader.preheader ], [ %indvars.iv.next453, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ 2, %.preheader.preheader ], [ %indvars.iv.next, %.preheader ] ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.cq = tail call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.cp)
  %i.cr = icmp ne i16 %i.cq, -17477
  %i.cs = icmp slt i64 %indvars.iv, %i.co
  %i.ct = and i1 %i.cs, %i.cr
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next453 = add nuw nsw i64 %indvars.iv452, 1
  br i1 %i.ct, label %.preheader, label %bb.bb, !llvm.loop !107

bb.bb:                                            ; preds = %.preheader
  %i.cu = trunc nuw nsw i64 %indvars.iv to i32
  %i.cv = add nuw nsw i32 %i.cu, 2
  %i.cw = add i32 %3, -5                          ; 2 uses
  %i.cx = icmp slt i32 %i.cv, %i.cw
  br i1 %i.cx, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.bb, %bb.bd
  %indvars.iv454 = phi i64 [ %indvars.iv.next455, %bb.bd ], [ %indvars.iv452, %bb.bb ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv454 ; 2 uses
  %i.cz = tail call noundef i32 @_ZN6LibRaw5sget4EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.cy)
  %i.da = icmp eq i32 %i.cz, 257
  br i1 %i.da, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !75  ; 2 uses
  %i.dd = icmp ult i8 %i.dc, 3
  br i1 %i.dd, label %.loopexit.sink.split, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph
  %indvars.iv.next455 = add nuw nsw i64 %indvars.iv454, 4 ; 2 uses
  %i.de = trunc nuw i64 %indvars.iv.next455 to i32
  %i.df = icmp sgt i32 %i.cw, %i.de
  br i1 %i.df, label %.lr.ph, label %.loopexit, !llvm.loop !108

.loopexit.sink.split:                             ; preds = %bb.bc, %bb.ba
  %.lcssa.sink = phi i8 [ %i.ci, %bb.ba ], [ %i.dc, %bb.bc ]
  %.0243438.ph = phi i16 [ %.0243, %bb.ba ], [ %.0243439, %bb.bc ]
  %.not286436.ph = phi i1 [ %.not286, %bb.ba ], [ %.not286437, %bb.bc ]
  %.0244434.ph = phi i16 [ %.0244, %bb.ba ], [ %.0244435, %bb.bc ]
  %.not289432.ph = phi i1 [ %.not289, %bb.ba ], [ %.not289433, %bb.bc ]
  %.0245430.ph = phi i64 [ %.0245, %bb.ba ], [ %.0245431, %bb.bc ]
  %.not287428.ph = phi i1 [ %.not287, %bb.ba ], [ %.not287429, %bb.bc ]
  %.0248426.ph = phi i16 [ 0, %bb.ba ], [ %.0248427, %bb.bc ]
  %.not290424.ph = phi i1 [ true, %bb.ba ], [ %.not290425, %bb.bc ]
  %.0249422.ph = phi i16 [ %.0249, %bb.ba ], [ %.0249423, %bb.bc ]
  %.0250420.ph = phi i32 [ %.0250, %bb.ba ], [ %.0250421, %bb.bc ]
  %.ph = phi i1 [ %7, %bb.ba ], [ %i.ck, %bb.bc ]
  %.0251418.ph = phi i16 [ %.0251, %bb.ba ], [ %.0251419, %bb.bc ]
  %.0252416.ph = phi i16 [ %.0252, %bb.ba ], [ %.0252417, %bb.bc ]
  %.1254414.ph = phi i16 [ %.1254, %bb.ba ], [ %.1254415, %bb.bc ]
  %i.dg = zext nneg i8 %.lcssa.sink to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @.str, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !75
  %i.dj = sext i8 %i.di to i16
  %i.dk = add nsw i16 %i.dj, -48
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 2028
  store i16 %i.dk, ptr %i.dl, align 4, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bd, %.loopexit.sink.split, %bb.bb, %.critedge.thread
  %.0243438 = phi i16 [ %.0243439, %bb.bb ], [ %.0243438.ph, %.loopexit.sink.split ], [ %.0243439, %.critedge.thread ], [ %.0243439, %bb.bd ] ; 2 uses
  %.not286436 = phi i1 [ %.not286437, %bb.bb ], [ %.not286436.ph, %.loopexit.sink.split ], [ %.not286437, %.critedge.thread ], [ %.not286437, %bb.bd ]
  %.0244434 = phi i16 [ %.0244435, %bb.bb ], [ %.0244434.ph, %.loopexit.sink.split ], [ %.0244435, %.critedge.thread ], [ %.0244435, %bb.bd ] ; 2 uses
  %.not289432 = phi i1 [ %.not289433, %bb.bb ], [ %.not289432.ph, %.loopexit.sink.split ], [ %.not289433, %.critedge.thread ], [ %.not289433, %bb.bd ]
  %.0245430 = phi i64 [ %.0245431, %bb.bb ], [ %.0245430.ph, %.loopexit.sink.split ], [ %.0245431, %.critedge.thread ], [ %.0245431, %bb.bd ]
  %.not287428 = phi i1 [ %.not287429, %bb.bb ], [ %.not287428.ph, %.loopexit.sink.split ], [ %.not287429, %.critedge.thread ], [ %.not287429, %bb.bd ]
  %.0248426 = phi i16 [ %.0248427, %bb.bb ], [ %.0248426.ph, %.loopexit.sink.split ], [ %.0248427, %.critedge.thread ], [ %.0248427, %bb.bd ] ; 2 uses
  %.not290424 = phi i1 [ %.not290425, %bb.bb ], [ %.not290424.ph, %.loopexit.sink.split ], [ %.not290425, %.critedge.thread ], [ %.not290425, %bb.bd ]
  %.0249422 = phi i16 [ %.0249423, %bb.bb ], [ %.0249422.ph, %.loopexit.sink.split ], [ %.0249423, %.critedge.thread ], [ %.0249423, %bb.bd ] ; 3 uses
  %.0250420 = phi i32 [ %.0250421, %bb.bb ], [ %.0250420.ph, %.loopexit.sink.split ], [ %.0250421, %.critedge.thread ], [ %.0250421, %bb.bd ] ; 2 uses
  %i.dm = phi i1 [ %i.ck, %bb.bb ], [ %.ph, %.loopexit.sink.split ], [ %i.ck, %.critedge.thread ], [ %i.ck, %bb.bd ]
  %.0251418 = phi i16 [ %.0251419, %bb.bb ], [ %.0251418.ph, %.loopexit.sink.split ], [ %.0251419, %.critedge.thread ], [ %.0251419, %bb.bd ] ; 3 uses
  %.0252416 = phi i16 [ %.0252417, %bb.bb ], [ %.0252416.ph, %.loopexit.sink.split ], [ %.0252417, %.critedge.thread ], [ %.0252417, %bb.bd ] ; 3 uses
  %.1254414 = phi i16 [ %.1254415, %bb.bb ], [ %.1254414.ph, %.loopexit.sink.split ], [ %.1254415, %.critedge.thread ], [ %.1254415, %bb.bd ] ; 3 uses
  %i.dn = zext nneg i16 %.0243438 to i32
  %i.do = icmp ule i32 %3, %i.dn
  %or.cond321.not = select i1 %.not286436, i1 true, i1 %i.do
  br i1 %or.cond321.not, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %.loopexit
  %i.dp = zext nneg i16 %.0243438 to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !75  ; 2 uses
  %i.ds = icmp ult i8 %i.dr, 3
  br i1 %i.ds, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.dt = zext nneg i8 %i.dr to i16
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 2030
  store i16 %i.dt, ptr %i.du, align 2, !tbaa !110
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %.loopexit
  br i1 %.not287428, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 %.0245430
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !75  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.dy = icmp ugt i8 %i.dw, 5
  %narrow = select i1 %i.dy, i8 0, i8 %i.dw       ; 3 uses
  %spec.store.select324 = zext i8 %narrow to i32
  store i32 %spec.store.select324, ptr %i.dx, align 8, !tbaa !81
  %.not288 = icmp eq i8 %narrow, 0
  br i1 %.not288, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dz = uitofp i8 %narrow to float
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 4988 ; 2 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !82
  %i.ec = fsub reassoc nsz arcp contract afn float %i.eb, %i.dz
  store float %i.ec, ptr %i.ea, align 4, !tbaa !82
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi, %bb.bg
  %i.ed = zext nneg i16 %.0244434 to i32
  %i.ee = icmp ule i32 %3, %i.ed
  %or.cond323.not = select i1 %.not289432, i1 true, i1 %i.ee
  br i1 %or.cond323.not, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ef = zext nneg i16 %.0244434 to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !75
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 2044
  %narrow444 = tail call i8 @llvm.umin.i8(i8 %i.eh, i8 3)
  %spec.store.select325 = zext nneg i8 %narrow444 to i32
  store i32 %spec.store.select325, ptr %i.ei, align 4, !tbaa !83
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  br i1 %.not290424, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ej = zext nneg i16 %.0248426 to i32
  %.not291 = icmp ugt i32 %3, %i.ej
  br i1 %.not291, label %bb.bn, label %bb.cm

bb.bn:                                            ; preds = %bb.bm
  %i.ek = zext nneg i16 %.0248426 to i64
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !75
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 1420
  %narrow445 = tail call i8 @llvm.umax.i8(i8 %i.em, i8 1)
  %spec.store.select = zext i8 %narrow445 to i16
  store i16 %spec.store.select, ptr %i.en, align 4, !tbaa !84
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bl
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 2 uses
  %i.eq = load float, ptr %i.ep, align 8, !tbaa !77
  %i.er = fcmp reassoc nsz arcp contract afn oeq float %i.eq, 0.000000e+00
  %i.es = icmp ne i16 %.0249422, 0
  %or.cond26 = and i1 %i.es, %i.er
  br i1 %or.cond26, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.et = zext nneg i16 %.0249422 to i32
end_hunk_0
