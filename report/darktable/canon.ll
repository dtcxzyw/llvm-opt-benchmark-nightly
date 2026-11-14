Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/canon?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumUnrolled: 74
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.libraw_static_table_t = type <{ ptr, i32, [4 x i8] }>

@.str = private unnamed_addr constant [4 x i8] c"065\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"EF-S\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"EF-M\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"CN-E\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"TS-E\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"MP-E\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_ZN6LibRaw26Canon_G9_linenums_2_StdWBiE = external local_unnamed_addr global %class.libraw_static_table_t, align 8
@_ZN6LibRaw13Canon_wbi2stdE = external local_unnamed_addr global %class.libraw_static_table_t, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"RF-S\00", align 1

; Function Attrs: mustprogress uwtable
define i64 @_ZN6LibRaw13get_CanonAreaEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.b = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.c = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.d = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.e = insertelement <4 x i16> poison, i16 %i.b, i64 0
  %i.f = insertelement <4 x i16> %i.e, i16 %i.a, i64 1
  %i.g = insertelement <4 x i16> %i.f, i16 %i.d, i64 2
  %i.h = insertelement <4 x i16> %i.g, i16 %i.c, i64 3
  %i.i = bitcast <4 x i16> %i.h to i64
  ret i64 %i.i
}

declare noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef float @_ZN6LibRaw21_CanonConvertApertureEt(i16 noundef zeroext %0) local_unnamed_addr #2 align 2 {
bb.a:
  switch i16 %0, label %bb.b [
    i16 -32, label %bb.c
    i16 32767, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = uitofp reassoc nsz arcp contract afn i16 %0 to float
  %i.b = fmul reassoc nsz arcp contract afn float %i.a, 1.562500e-02 ; 2 uses
  %1 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.b)
  %or.cond.i.i = fcmp reassoc nsz arcp contract afn ogt float %1, 6.400000e+01
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
  br i1 %i.a, label %bb.cn, label %bb.b

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
    i64 2147484048, label %bb.ao
    i64 2147484257, label %bb.ap
    i64 2147484244, label %bb.ba
end_hunk_0
begin_hunk_1_@_ZN6LibRaw22processCanonCameraInfoEyPhjjj:bb.a
  br i1 %.not302, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.hr = load i32, ptr %i.ge, align 1
  store i32 %i.hr, ptr %i.fz, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 1212
  store i8 32, ptr %i.hs, align 4, !tbaa !75
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 1422
  %i.hu = load i32, ptr %i.ge, align 1
  store i32 %i.hu, ptr %i.ht, align 2
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 5, ptr %i.hv, align 2, !tbaa !86
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 2, ptr %i.hw, align 8, !tbaa !87
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 1213
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.hx, ptr noundef nonnull align 1 dereferenceable(60) %i.hy, i64 60, i1 false)
  br label %bb.cn

bb.ck:                                            ; preds = %bb.ci
  %i.hz = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ge, ptr noundef nonnull dereferenceable(5) @.str.6, i64 noundef 4) #11
  %.not303 = icmp eq i32 %i.hz, 0
  br i1 %.not303, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ia = load i32, ptr %i.ge, align 1
  store i32 %i.ia, ptr %i.fz, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 1212
  store i8 32, ptr %i.ib, align 4, !tbaa !75
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 1422
  %i.id = load i32, ptr %i.ge, align 1
  store i32 %i.id, ptr %i.ic, align 2
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 5, ptr %i.ie, align 2, !tbaa !86
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 2, ptr %i.if, align 8, !tbaa !87
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 1213
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.ig, ptr noundef nonnull align 1 dereferenceable(60) %i.ih, i64 60, i1 false)
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fz, ptr noundef nonnull align 1 dereferenceable(64) %i.ge, i64 64, i1 false)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cb, %bb.cf, %bb.ch, %bb.cl, %bb.cm, %bb.cj, %bb.cg, %bb.cd, %bb.bz, %bb.bw, %bb.bt, %bb.bq, %bb.bn, %bb.a
  ret void
}

declare noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZN6LibRaw5sget4EPh(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 424, 646) %1, i64 noundef range(i64 16, 4294967296) %2) unnamed_addr #4 {
bb.a:
  %i.a = add nuw nsw i64 %1, 5
  %i.b = icmp samesign ult i64 %2, %i.a
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !75
  %i.e = add i8 %i.d, -48
  %isdigit = icmp ult i8 %i.e, 10
  br i1 %isdigit, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !75
  %i.h = add i8 %i.g, -48
  %isdigit12 = icmp ult i8 %i.h, 10
  br i1 %isdigit12, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load i8, ptr %i.i, align 1, !tbaa !75
  %i.k = add i8 %i.j, -48
  %isdigit13 = icmp ult i8 %i.k, 10
  br i1 %isdigit13, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !75
  %i.n = icmp eq i8 %i.m, 46
  br i1 %i.n, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !75
  %i.q = icmp eq i8 %i.p, 46
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.s = load i8, ptr %i.r, align 1, !tbaa !75    ; 2 uses
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = zext i8 %i.s to i32
  %i.v = tail call i32 @isspace(i32 noundef %i.u) #11
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.i ], [ 1, %bb.h ], [ 1, %bb.g ]
  ret i32 %.1
}

declare noundef zeroext i16 @_ZN6LibRaw8sget2RevEPh(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw20Canon_CameraSettingsEj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 6, i32 noundef 1), !call_target !99 ; 0 uses
  %i.g = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2052
  store i16 %i.g, ptr %i.h, align 4, !tbaa !111
  %i.i = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.j = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5096
  store i16 %i.j, ptr %i.k, align 8, !tbaa !112
  %i.l = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.m = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5098
  store i16 %i.m, ptr %i.n, align 2, !tbaa !113
  %i.o = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.p = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2032
  store i16 %i.p, ptr %i.q, align 8, !tbaa !114
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !90
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef 14, i32 noundef 1), !call_target !99 ; 0 uses
  %i.w = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5100
  store i16 %i.w, ptr %i.x, align 4, !tbaa !115
  %i.y = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.z = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5102
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !116
  %i.ab = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 5104
  store i16 %i.ab, ptr %i.ac, align 8, !tbaa !117
  %i.ad = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.ae = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1200
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !85
  %i.ah = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ai = uitofp reassoc nsz arcp contract afn i16 %i.ah to float
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store float %i.ai, ptr %i.aj, align 4, !tbaa !79
  %i.ak = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.al = uitofp reassoc nsz arcp contract afn i16 %i.ak to float
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 3 uses
  store float %i.al, ptr %i.am, align 8, !tbaa !78
  %i.an = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1928
  store i16 %i.an, ptr %i.ao, align 8, !tbaa !100
  %i.ap = icmp ugt i16 %i.an, 1
  br i1 %i.ap, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aq = uitofp reassoc nsz arcp contract afn i16 %i.an to float
  %i.ar = load <2 x float>, ptr %i.am, align 8, !tbaa !101
  %i.as = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fdiv reassoc nsz arcp contract afn <2 x float> %i.ar, %i.at
  store <2 x float> %i.au, ptr %i.am, align 8, !tbaa !101
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.av = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  switch i16 %i.av, label %bb.d [
    i16 -32, label %_ZN6LibRaw21_CanonConvertApertureEt.exit
    i16 32767, label %_ZN6LibRaw21_CanonConvertApertureEt.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.aw = uitofp reassoc nsz arcp contract afn i16 %i.av to float
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, 1.562500e-02 ; 2 uses
  %2 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ax)
  %or.cond.i.i.i = fcmp reassoc nsz arcp contract afn ogt float %2, 6.400000e+01
  %exp2.i = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ax)
  %i.ay = select reassoc nsz arcp contract afn i1 %or.cond.i.i.i, float 0.000000e+00, float %exp2.i
  br label %_ZN6LibRaw21_CanonConvertApertureEt.exit

_ZN6LibRaw21_CanonConvertApertureEt.exit:         ; preds = %bb.c, %bb.c, %bb.d
  %.0.i = phi nsz float [ %i.ay, %bb.d ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.c ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store float %.0.i, ptr %i.az, align 8, !tbaa !118
  %i.ba = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  switch i16 %i.ba, label %bb.e [
    i16 -32, label %_ZN6LibRaw21_CanonConvertApertureEt.exit5
    i16 32767, label %_ZN6LibRaw21_CanonConvertApertureEt.exit5
  ]

bb.e:                                             ; preds = %_ZN6LibRaw21_CanonConvertApertureEt.exit
  %i.bb = uitofp reassoc nsz arcp contract afn i16 %i.ba to float
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, 1.562500e-02 ; 2 uses
  %3 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bc)
  %or.cond.i.i.i3 = fcmp reassoc nsz arcp contract afn ogt float %3, 6.400000e+01
  %exp2.i4 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.bc)
  %i.bd = select reassoc nsz arcp contract afn i1 %or.cond.i.i.i3, float 0.000000e+00, float %exp2.i4
  br label %_ZN6LibRaw21_CanonConvertApertureEt.exit5

_ZN6LibRaw21_CanonConvertApertureEt.exit5:        ; preds = %_ZN6LibRaw21_CanonConvertApertureEt.exit, %_ZN6LibRaw21_CanonConvertApertureEt.exit, %bb.e
  %.0.i2 = phi nsz float [ %i.bd, %bb.e ], [ 0.000000e+00, %_ZN6LibRaw21_CanonConvertApertureEt.exit ], [ 0.000000e+00, %_ZN6LibRaw21_CanonConvertApertureEt.exit ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1484
  store float %.0.i2, ptr %i.be, align 4, !tbaa !119
  %i.bf = icmp ugt i32 %1, 35
  br i1 %i.bf, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN6LibRaw21_CanonConvertApertureEt.exit5
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !90
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef i32 %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i64 noundef 12, i32 noundef 1), !call_target !99 ; 0 uses
  %i.bl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 5108
  store i16 %i.bl, ptr %i.bm, align 4, !tbaa !120
  %i.bn = icmp ugt i32 %1, 47
  br i1 %i.bn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !90
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef i32 %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, i64 noundef 22, i32 noundef 1), !call_target !99 ; 0 uses
  %i.bt = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2034
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !121
  br label %bb.h

bb.h:                                             ; preds = %_ZN6LibRaw21_CanonConvertApertureEt.exit5, %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 187240
  %i.b = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.c = zext i16 %i.b to i32
  store i32 %i.c, ptr %i.a, align 8, !tbaa !102
  %i.d = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.e = zext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 187244
  store i32 %i.e, ptr %i.f, align 4, !tbaa !102
  %i.g = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.h = zext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 187252
  store i32 %i.h, ptr %i.i, align 4, !tbaa !102
  %i.j = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.k = zext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 187248
  store i32 %i.k, ptr %i.l, align 8, !tbaa !102
  %.not = icmp eq i32 %1, 0                       ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !88   ; 2 uses
  %i.o = sext i32 %1 to i64
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !90
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %i.o, i32 noundef 1), !call_target !99 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 187400
  %i.u = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.v = zext i16 %i.u to i32
  store i32 %i.v, ptr %i.t, align 8, !tbaa !102
  %i.w = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.x = zext i16 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 187404
  store i32 %i.x, ptr %i.y, align 4, !tbaa !102
  %i.z = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aa = zext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 187412
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !102
  %i.ac = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ad = zext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 187408
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !102
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !88 ; 2 uses
  %i.ah = sext i32 %1 to i64
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !90
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef i32 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i64 noundef %i.ah, i32 noundef 1), !call_target !99 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 187384
  %i.an = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ao = zext i16 %i.an to i32
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !102
  %i.ap = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aq = zext i16 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 187388
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !102
  %i.as = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.at = zext i16 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 187396
  store i32 %i.at, ptr %i.au, align 4, !tbaa !102
  %i.av = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aw = zext i16 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 187392
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !102
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !88 ; 2 uses
  %i.ba = sext i32 %1 to i64
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !90
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef i32 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i64 noundef %i.ba, i32 noundef 1), !call_target !99 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 187272
  %i.bg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bh = zext i16 %i.bg to i32
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !102
  %i.bi = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bj = zext i16 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 187276
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !102
  %i.bl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bm = zext i16 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 187284
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !102
  %i.bo = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bp = zext i16 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 187280
  store i32 %i.bp, ptr %i.bq, align 8, !tbaa !102
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !88 ; 2 uses
  %i.bt = sext i32 %1 to i64
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !90
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = tail call noundef i32 %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i64 noundef %i.bt, i32 noundef 1), !call_target !99 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 187448
  %i.bz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ca = zext i16 %i.bz to i32
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !102
  %i.cb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cc = zext i16 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 187452
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !102
  %i.ce = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cf = zext i16 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 187460
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !102
  %i.ch = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ci = zext i16 %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 187456
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !102
  %.not39 = icmp eq i32 %2, 0
  br i1 %.not39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !88 ; 2 uses
  %i.cm = sext i32 %2 to i64
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !90
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call noundef i32 %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, i64 noundef %i.cm, i32 noundef 1), !call_target !99 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 187288
  %i.cs = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ct = zext i16 %i.cs to i32
  store i32 %i.ct, ptr %i.cr, align 8, !tbaa !102
  %i.cu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cv = zext i16 %i.cu to i32
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 187292
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !102
  %i.cx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cy = zext i16 %i.cx to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 187300
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !102
  %i.da = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.db = zext i16 %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 187296
  store i32 %i.db, ptr %i.dc, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext %1) local_unnamed_addr #0 align 2 {
bb.a:
  switch i16 %1, label %.loopexit [
    i16 0, label %.preheader
    i16 1, label %.preheader44
    i16 2, label %bb.d
  ]

.preheader44:                                     ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 191320
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381592
  br label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 191320
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 381592
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv65 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next66, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [20 x i8], ptr %i.c, i64 %indvars.iv65 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store float 1.000000e+00, ptr %i.f, align 4, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store float 1.000000e+00, ptr %i.g, align 4, !tbaa !101
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !90
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 2, i32 noundef 1), !call_target !99 ; 0 uses
  %i.m = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.n = uitofp reassoc nsz arcp contract afn i16 %i.m to float ; 2 uses
  %i.o = fcmp reassoc nsz arcp contract afn ogt float %i.n, 1.000000e+00
  %i.p = select reassoc nsz arcp contract afn i1 %i.o, float %i.n, float 1.000000e+00
  %i.q = fdiv reassoc nsz arcp contract afn float 1.024000e+03, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store float %i.q, ptr %i.r, align 4, !tbaa !101
  %i.s = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.t = uitofp reassoc nsz arcp contract afn i16 %i.s to float ; 2 uses
  %i.u = fcmp reassoc nsz arcp contract afn ogt float %i.t, 1.000000e+00
  %i.v = select reassoc nsz arcp contract afn i1 %i.u, float %i.t, float 1.000000e+00
  %i.w = fdiv reassoc nsz arcp contract afn float 1.024000e+03, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store float %i.w, ptr %i.x, align 4, !tbaa !101
  %i.y = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.z = uitofp reassoc nsz arcp contract afn i16 %i.y to float
  store float %i.z, ptr %i.e, align 4, !tbaa !101
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next66, 15
  br i1 %exitcond68.not, label %.loopexit, label %bb.b, !llvm.loop !122

bb.c:                                             ; preds = %.preheader44, %bb.c
  %indvars.iv61 = phi i64 [ 0, %.preheader44 ], [ %indvars.iv.next62, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [20 x i8], ptr %i.a, i64 %indvars.iv61 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store float 1.000000e+00, ptr %i.ab, align 4, !tbaa !101
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store float 1.000000e+00, ptr %i.ac, align 4, !tbaa !101
  %i.ad = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ae = uitofp reassoc nsz arcp contract afn i16 %i.ad to float ; 2 uses
  %i.af = fcmp reassoc nsz arcp contract afn ogt float %i.ae, 1.000000e+00
  %i.ag = select reassoc nsz arcp contract afn i1 %i.af, float %i.ae, float 1.000000e+00
  %i.ah = fdiv reassoc nsz arcp contract afn float 1.024000e+03, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store float %i.ah, ptr %i.ai, align 4, !tbaa !101
  %i.aj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ak = uitofp reassoc nsz arcp contract afn i16 %i.aj to float ; 2 uses
  %i.al = fcmp reassoc nsz arcp contract afn ogt float %i.ak, 1.000000e+00
  %i.am = select reassoc nsz arcp contract afn i1 %i.al, float %i.ak, float 1.000000e+00
  %i.an = fdiv reassoc nsz arcp contract afn float 1.024000e+03, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store float %i.an, ptr %i.ao, align 4, !tbaa !101
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !88  ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !90
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef i32 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i64 noundef 2, i32 noundef 1), !call_target !99 ; 0 uses
  %i.au = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.av = uitofp reassoc nsz arcp contract afn i16 %i.au to float
  store float %i.av, ptr %i.aa, align 4, !tbaa !101
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next62, 15
  br i1 %exitcond64.not, label %.loopexit, label %bb.c, !llvm.loop !123

bb.d:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 381696
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !126
  switch i64 %i.ay, label %bb.e [
    i64 57933824, label %bb.f
    i64 58982400, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1940
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !103
  switch i32 %i.ba, label %.loopexit [
    i32 65532, label %bb.f
    i32 65533, label %.preheader47
  ]

.preheader47:                                     ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 191320
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 191320
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.g
  %indvars.iv57 = phi i64 [ 0, %bb.f ], [ %indvars.iv.next58, %bb.g ] ; 2 uses
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !88 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !90
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef i32 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, i64 noundef 4, i32 noundef 1), !call_target !99 ; 0 uses
  %i.bi = getelementptr inbounds nuw [20 x i8], ptr %i.bc, i64 %indvars.iv57 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store float 1.000000e+00, ptr %i.bj, align 4, !tbaa !101
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store float 1.000000e+00, ptr %i.bk, align 4, !tbaa !101
  %i.bl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bm = uitofp reassoc nsz arcp contract afn i16 %i.bl to float ; 2 uses
  %i.bn = fcmp reassoc nsz arcp contract afn olt float %i.bm, 1.000000e+00
  %i.bo = select reassoc nsz arcp contract afn i1 %i.bn, float 1.000000e+00, float %i.bm
  %i.bp = fdiv reassoc nsz arcp contract afn float 1.024000e+03, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store float %i.bp, ptr %i.bq, align 4, !tbaa !101
  %i.br = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bs = uitofp reassoc nsz arcp contract afn i16 %i.br to float ; 2 uses
  %i.bt = fcmp reassoc nsz arcp contract afn olt float %i.bs, 1.000000e+00
  %i.bu = select reassoc nsz arcp contract afn i1 %i.bt, float 1.000000e+00, float %i.bs
  %i.bv = fdiv reassoc nsz arcp contract afn float 1.024000e+03, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store float %i.bv, ptr %i.bw, align 4, !tbaa !101
  %i.bx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.by = uitofp reassoc nsz arcp contract afn i16 %i.bx to float
  store float %i.by, ptr %i.bi, align 4, !tbaa !101
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next58, 15
  br i1 %exitcond60.not, label %.loopexit, label %bb.g, !llvm.loop !124

bb.h:                                             ; preds = %.preheader47, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader47 ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.bz = load ptr, ptr %i.aw, align 8, !tbaa !88 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !90
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = tail call noundef i32 %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, i64 noundef 2, i32 noundef 1), !call_target !99 ; 0 uses
  %i.ce = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cf = sitofp reassoc nsz arcp contract afn i16 %i.ce to float
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, 1.250000e-01
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cg, 5.120000e+02 ; 3 uses
  %i.ci = getelementptr inbounds nuw [20 x i8], ptr %i.bb, i64 %indvars.iv ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store float 1.000000e+00, ptr %i.cj, align 4, !tbaa !101
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store float 1.000000e+00, ptr %i.ck, align 4, !tbaa !101
  %i.cl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cm = uitofp reassoc nsz arcp contract afn i16 %i.cl to float ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.co = fcmp reassoc nsz arcp contract afn ogt float %i.ch, 1.000000e-03 ; 2 uses
  %2 = fdiv reassoc nsz arcp contract afn float %i.cm, %i.ch
  %spec.select = select i1 %i.co, float %2, float %i.cm
  store float %spec.select, ptr %i.cn, align 4, !tbaa !101
  %i.cp = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cq = uitofp reassoc nsz arcp contract afn i16 %i.cp to float ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %storemerge43.a = fdiv reassoc nsz arcp contract afn float %i.cq, %i.ch
  %storemerge43 = select i1 %i.co, float %storemerge43.a, float %i.cq
  store float %storemerge43, ptr %i.cr, align 4, !tbaa !101
  %i.cs = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ct = uitofp reassoc nsz arcp contract afn i16 %i.cs to float
  store float %i.ct, ptr %i.ci, align 4, !tbaa !101
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %.loopexit, label %bb.h, !llvm.loop !125

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.c, %bb.b, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw20parseCanonMakernotesEjjjj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  switch i32 %1, label %bb.z [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6LibRaw20Canon_CameraSettingsEj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %3)
  br label %.thread595

bb.c:                                             ; preds = %bb.a
  %i.a = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1420
  store i16 %i.a, ptr %i.b, align 4, !tbaa !84
  %i.c = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.d = uitofp reassoc nsz arcp contract afn i16 %i.c to float ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 2 uses
  store float %i.d, ptr %i.e, align 8, !tbaa !77
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.g = load i16, ptr %i.f, align 8, !tbaa !100  ; 2 uses
  %i.h = icmp ugt i16 %i.g, 1
  br i1 %i.h, label %bb.d, label %.thread595

bb.d:                                             ; preds = %bb.c
  %i.i = uitofp reassoc nsz arcp contract afn i16 %i.g to float
  %i.j = fdiv reassoc nsz arcp contract afn float %i.d, %i.i
  store float %i.j, ptr %i.e, align 8, !tbaa !77
  br label %.thread595

bb.e:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %4, 0
  br i1 %i.k, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.l = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.m = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2100 ; 2 uses
  store i16 %i.m, ptr %i.n, align 4, !tbaa !74
  %i.o = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2102
  store i16 %i.o, ptr %i.p, align 2, !tbaa !74
  %.not529.a = icmp eq i16 %i.o, 32767
  br i1 %.not529.a, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = sext i16 %i.o to i32
  %i.r = load i16, ptr %i.n, align 4, !tbaa !74
  %i.s = sext i16 %i.r to i32
  %i.t = add nsw i32 %i.s, %i.q
  %i.u = sitofp reassoc nsz arcp contract afn i32 %i.t to float
  %i.v = fmul reassoc nsz arcp contract afn float %i.u, 3.125000e-02
  %i.w = fadd reassoc nsz arcp contract afn float %i.v, -5.000000e+00 ; 2 uses
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.w)
  %or.cond.i.i = fcmp reassoc nsz arcp contract afn ogt float %i.x, 6.400000e+01
  %exp2 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.w)
  %i.y = fmul reassoc nsz arcp contract afn float %exp2, 1.000000e+02
  %i.z = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.y)
  %i.aa = select i1 %or.cond.i.i, float 0.000000e+00, float %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4848
  store float %i.aa, ptr %i.ab, align 8, !tbaa !128
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 192688 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !129 ; 2 uses
  %i.ae = fcmp reassoc nsz arcp contract afn oeq float %i.ad, 0.000000e+00
  %i.af = fcmp reassoc nsz arcp contract afn oeq float %i.ad, 6.553500e+04
  %or.cond534 = or i1 %i.ae, %i.af
  br i1 %or.cond534, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store float %i.aa, ptr %i.ac, align 8, !tbaa !129
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.ag = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.ah = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %.not530.a = icmp eq i16 %i.ah, -1
  br i1 %.not530.a, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192692 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !130
  %i.ak = fcmp reassoc nsz arcp contract afn une float %i.aj, 0.000000e+00
  br i1 %i.ak, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = sitofp reassoc nsz arcp contract afn i16 %i.ah to float
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, -3.125000e-02 ; 2 uses
  %i.an = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.am)
  %or.cond.i.i541 = fcmp reassoc nsz arcp contract afn ogt float %i.an, 6.400000e+01
  %exp2596 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.am)
  %i.ao = select reassoc nsz arcp contract afn i1 %or.cond.i.i541, float 0.000000e+00, float %exp2596
  store float %i.ao, ptr %i.ai, align 4, !tbaa !130
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ap = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.aq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ar = zext i16 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2036
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !131
  %i.at = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.au = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.av = zext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 192712
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !132
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.l
  %.sink738 = phi i64 [ 4, %bb.l ], [ 24, %bb.e ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !88 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !90
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call noundef i32 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i64 noundef %.sink738, i32 noundef 1) ; 0 uses
  %i.bd = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %.not531 = icmp eq i16 %i.bd, 0
  br i1 %.not531, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = sext i16 %i.bd to i32
  %i.bf = add nsw i32 %i.be, -128
  %i.bg = sitofp reassoc nsz arcp contract afn i32 %i.bf to float
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4800
  store float %i.bg, ptr %i.bh, align 8, !tbaa !76
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bi = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %.not532 = icmp eq i16 %i.bi, -1
  br i1 %.not532, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = sitofp reassoc nsz arcp contract afn i16 %i.bi to float
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bj, 3.125000e-02
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4796
  store float %i.bk, ptr %i.bl, align 4, !tbaa !133
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.bn = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %.012.i = tail call i16 @llvm.abs.i16(i16 %i.bn, i1 false) ; 2 uses
  %i.bo = and i16 %.012.i, 31                     ; 2 uses
  switch i16 %i.bo, label %bb.s [
    i16 12, label %_ZL15_CanonConvertEVs.exit
    i16 20, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  br label %_ZL15_CanonConvertEVs.exit

bb.s:                                             ; preds = %bb.q
  %i.bp = uitofp nneg i16 %i.bo to float
  br label %_ZL15_CanonConvertEVs.exit

_ZL15_CanonConvertEVs.exit:                       ; preds = %bb.q, %bb.r, %bb.s
  %.0.i = phi nsz float [ %i.bp, %bb.s ], [ f0x41AAAAAB, %bb.r ], [ f0x412AAAAB, %bb.q ]
  %i.bq = icmp slt i16 %i.bn, 0
  %i.br = and i16 %.012.i, -32
  %i.bs = sitofp reassoc nsz arcp contract afn i16 %i.br to float
  %i.bt = fadd reassoc nsz arcp contract afn float %.0.i, %i.bs ; 2 uses
  %i.bu = fneg reassoc nsz arcp contract afn float %i.bt
  %i.bv = select reassoc nsz arcp contract afn i1 %i.bq, float %i.bu, float %i.bt
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, 3.125000e-02
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4792
  store float %i.bw, ptr %i.bx, align 8, !tbaa !134
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !88 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !90
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = tail call noundef i32 %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, i64 noundef -24, i32 noundef 1), !call_target !99 ; 0 uses
  %i.ce = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  switch i16 %i.ce, label %bb.t [
    i16 32767, label %_ZL15_CanonConvertEVs.exit._crit_edge
    i16 -32, label %_ZN6LibRaw21_CanonConvertApertureEt.exit
  ]

_ZL15_CanonConvertEVs.exit._crit_edge:            ; preds = %_ZL15_CanonConvertEVs.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1492
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !135
  br label %bb.u

bb.t:                                             ; preds = %_ZL15_CanonConvertEVs.exit
  %i.cf = uitofp reassoc nsz arcp contract afn i16 %i.ce to float
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, 1.562500e-02 ; 2 uses
  %5 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cg)
  %or.cond.i.i.i = fcmp reassoc nsz arcp contract afn ogt float %5, 6.400000e+01
  %exp2.i = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.cg)
  %i.ch = select reassoc nsz arcp contract afn i1 %or.cond.i.i.i, float 0.000000e+00, float %exp2.i
  br label %_ZN6LibRaw21_CanonConvertApertureEt.exit

_ZN6LibRaw21_CanonConvertApertureEt.exit:         ; preds = %_ZL15_CanonConvertEVs.exit, %bb.t
  %.0.i542 = phi nsz float [ %i.ch, %bb.t ], [ 0.000000e+00, %_ZL15_CanonConvertEVs.exit ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1492
  store float %.0.i542, ptr %i.ci, align 4, !tbaa !135
  br label %bb.u

bb.u:                                             ; preds = %_ZL15_CanonConvertEVs.exit._crit_edge, %_ZN6LibRaw21_CanonConvertApertureEt.exit
  %i.cj = phi float [ %.pre, %_ZL15_CanonConvertEVs.exit._crit_edge ], [ %.0.i542, %_ZN6LibRaw21_CanonConvertApertureEt.exit ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1492
  %i.cl = fcmp reassoc nsz arcp contract afn olt float %i.cj, f0x3F333333
  br i1 %i.cl, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cm = load ptr, ptr %i.by, align 8, !tbaa !88 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !90
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call noundef i32 %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, i64 noundef 32, i32 noundef 1), !call_target !99 ; 0 uses
  %i.cr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  switch i16 %i.cr, label %bb.w [
    i16 -32, label %_ZN6LibRaw21_CanonConvertApertureEt.exit546
    i16 32767, label %_ZN6LibRaw21_CanonConvertApertureEt.exit546
  ]

bb.w:                                             ; preds = %bb.v
  %i.cs = uitofp reassoc nsz arcp contract afn i16 %i.cr to float
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, 1.562500e-02 ; 2 uses
  %6 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ct)
  %or.cond.i.i.i544 = fcmp reassoc nsz arcp contract afn ogt float %6, 6.400000e+01
  %exp2.i545 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ct)
  %i.cu = select reassoc nsz arcp contract afn i1 %or.cond.i.i.i544, float 0.000000e+00, float %exp2.i545
  br label %_ZN6LibRaw21_CanonConvertApertureEt.exit546

_ZN6LibRaw21_CanonConvertApertureEt.exit546:      ; preds = %bb.v, %bb.v, %bb.w
  %.0.i543 = phi nsz float [ %i.cu, %bb.w ], [ 0.000000e+00, %bb.v ], [ 0.000000e+00, %bb.v ] ; 2 uses
  store float %.0.i543, ptr %i.ck, align 4, !tbaa !135
  br label %bb.x

bb.x:                                             ; preds = %_ZN6LibRaw21_CanonConvertApertureEt.exit546, %bb.u
  %i.cv = phi float [ %.0.i543, %_ZN6LibRaw21_CanonConvertApertureEt.exit546 ], [ %i.cj, %bb.u ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 192696 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !136
  %i.cy = fcmp reassoc nsz arcp contract afn une float %i.cx, 0.000000e+00
  br i1 %i.cy, label %.thread595, label %bb.y

bb.y:                                             ; preds = %bb.x
  store float %i.cv, ptr %i.cw, align 8, !tbaa !136
  br label %.thread595

bb.z:                                             ; preds = %bb.a
  %i.cz = icmp eq i32 %1, 7
  %i.da = icmp eq i32 %4, 0                       ; 7 uses
  %or.cond = and i1 %i.cz, %i.da
  br i1 %or.cond, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !88 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 153520
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !90
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = tail call noundef ptr %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull %i.dd, i32 noundef 64), !call_target !141 ; 0 uses
  br label %.thread595

bb.ab:                                            ; preds = %bb.z
  %i.di = icmp eq i32 %1, 8
  %or.cond3 = and i1 %i.di, %i.da
  br i1 %or.cond3, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dj = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 192712
  store i32 %i.dj, ptr %i.dk, align 8, !tbaa !132
  br label %.thread595

bb.ad:                                            ; preds = %bb.ab
  %i.dl = icmp eq i32 %1, 9
  %or.cond5 = and i1 %i.dl, %i.da
  br i1 %or.cond5, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !88 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 193404
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !90
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = tail call noundef i32 %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull %i.do, i64 noundef 64, i64 noundef 1), !call_target !148 ; 0 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 193467
  store i8 0, ptr %i.dt, align 1, !tbaa !75
  br label %.thread595

bb.af:                                            ; preds = %bb.ad
  %i.du = add i32 %1, -12                         ; 2 uses
  %i.dv = tail call i32 @llvm.fshl.i32(i32 %i.du, i32 %i.du, i32 31)
  switch i32 %i.dv, label %bb.ao [
    i32 0, label %bb.ag
    i32 24, label %bb.ah
    i32 13, label %bb.ah
    i32 3, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.dw = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 5110
  %i.dy = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.dx, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.dw) #12 ; 0 uses
  br label %.thread595

bb.ah:                                            ; preds = %bb.af, %bb.af, %bb.af
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 5088 ; 6 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !149
  %.not526.a = icmp eq i32 %i.ea, 0
  br i1 %.not526.a, label %bb.ai, label %.thread595

bb.ai:                                            ; preds = %bb.ah
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 4992 ; 5 uses
  store i32 %1, ptr %i.eb, align 8, !tbaa !151
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 381728
  %i.ee = load i16, ptr %i.ed, align 8, !tbaa !152
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 4996
  store i16 %i.ee, ptr %i.ef, align 4, !tbaa !153
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 5004
  store i32 %3, ptr %i.eg, align 4, !tbaa !154
  %i.eh = tail call noundef i32 @_Z29libraw_tagtype_dataunit_bytesi(i32 noundef %2)
  %.not527 = icmp eq i32 %i.eh, 0
  br i1 %.not527, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ei = tail call noundef i32 @_Z29libraw_tagtype_dataunit_bytesi(i32 noundef %2)
  %i.ej = load i32, ptr %i.dz, align 8, !tbaa !149
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [24 x i8], ptr %i.eb, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 12 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !154
  %i.eo = mul i32 %i.en, %i.ei
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !154
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  switch i32 %1, label %..thread_crit_edge [
    i32 60, label %bb.al
    i32 38, label %bb.al
  ]

..thread_crit_edge:                               ; preds = %bb.ak
  %.pre709 = load i32, ptr %i.dz, align 8, !tbaa !149
  br label %.thread

bb.al:                                            ; preds = %bb.ak, %bb.ak
  %i.ep = load ptr, ptr %i.ec, align 8, !tbaa !88 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !90
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = tail call noundef i64 %i.es(ptr noundef nonnull align 8 dereferenceable(8) %i.ep), !call_target !157
  %i.eu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.ev = load ptr, ptr %i.ec, align 8, !tbaa !88 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !90
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = tail call noundef i32 %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, i64 noundef %i.et, i32 noundef 0), !call_target !99 ; 0 uses
  %.not528 = icmp eq i16 %i.eu, 0
  %.pre710 = load i32, ptr %i.dz, align 8, !tbaa !149 ; 3 uses
  br i1 %.not528, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fa = zext i16 %i.eu to i32
  %i.fb = sext i32 %.pre710 to i64
  %i.fc = getelementptr inbounds [24 x i8], ptr %i.eb, i64 %i.fb ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 12 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !154
  %i.ff = icmp eq i32 %i.fe, %i.fa
  br i1 %i.ff, label %.thread, label %bb.an

.thread:                                          ; preds = %..thread_crit_edge, %bb.am, %bb.al
  %i.fg = phi i32 [ %.pre709, %..thread_crit_edge ], [ %.pre710, %bb.am ], [ %.pre710, %bb.al ]
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [24 x i8], ptr %i.eb, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !154
  %i.fl = add i32 %i.fk, 1
  %i.fm = zext i32 %i.fl to i64
  %i.fn = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.fm, i64 noundef 1) ; 2 uses
  %i.fo = load i32, ptr %i.dz, align 8, !tbaa !149
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [24 x i8], ptr %i.eb, i64 %i.fp ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store ptr %i.fn, ptr %i.fr, align 8, !tbaa !158
  %i.fs = load ptr, ptr %i.ec, align 8, !tbaa !88 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !154
  %i.fv = zext i32 %i.fu to i64
  %i.fw = load ptr, ptr %i.fs, align 8, !tbaa !90
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = tail call noundef i32 %i.fy(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, ptr noundef %i.fn, i64 noundef %i.fv, i64 noundef 1), !call_target !148 ; 0 uses
  store i32 1, ptr %i.dz, align 8, !tbaa !149
  br label %.thread595

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.fc, align 8, !tbaa !151
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store i16 0, ptr %i.ga, align 4, !tbaa !153
  store i32 0, ptr %i.fd, align 4, !tbaa !154
  br label %.thread595

bb.ao:                                            ; preds = %bb.af
  %i.gb = icmp eq i32 %1, 41
  %or.cond13 = and i1 %i.gb, %i.da
  br i1 %or.cond13, label %bb.ap, label %bb.bn

bb.ap:                                            ; preds = %bb.ao
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !88 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !90
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = tail call noundef i32 %i.gg(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, i64 noundef 8, i32 noundef 1), !call_target !99 ; 0 uses
  %i.gi = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw26Canon_G9_linenums_2_StdWBiE, i64 8), align 8, !tbaa !160
  %.not687 = icmp eq i32 %i.gi, 0
  br i1 %.not687, label %.preheader, label %_ZNK21libraw_static_table_tixEj.exit.lr.ph

_ZNK21libraw_static_table_tixEj.exit.lr.ph:       ; preds = %bb.ap
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 187224 ; 8 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 2036
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 153252 ; 4 uses
  br label %_ZNK21libraw_static_table_tixEj.exit

end_hunk_1
begin_hunk_2_@_ZN6LibRaw20parseCanonMakernotesEjjjj:bb.a
  store i32 %i.aak, ptr %i.aal, align 8, !tbaa !102
  %i.aam = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.aan = add nsw i64 %i.rh, 226
  %i.aao = load ptr, ptr %i.aam, align 8, !tbaa !90
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 32
  %i.aaq = load ptr, ptr %i.aap, align 8
  %i.aar = tail call noundef i32 %i.aaq(ptr noundef nonnull align 8 dereferenceable(8) %i.aam, i64 noundef %i.aan, i32 noundef 0), !call_target !99 ; 0 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 188664
  %i.aat = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aau = zext i16 %i.aat to i32
  store i32 %i.aau, ptr %i.aas, align 8, !tbaa !102
  %i.aav = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aaw = zext i16 %i.aav to i32
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 188668
  store i32 %i.aaw, ptr %i.aax, align 4, !tbaa !102
  %i.aay = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aaz = zext i16 %i.aay to i32
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 188676
  store i32 %i.aaz, ptr %i.aba, align 4, !tbaa !102
  %i.abb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.abc = zext i16 %i.abb to i32
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 188672
  store i32 %i.abc, ptr %i.abd, align 8, !tbaa !102
  %i.abe = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.abf = add nsw i64 %i.rh, 236
  %i.abg = load ptr, ptr %i.abe, align 8, !tbaa !90
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 32
  %i.abi = load ptr, ptr %i.abh, align 8
  %i.abj = tail call noundef i32 %i.abi(ptr noundef nonnull align 8 dereferenceable(8) %i.abe, i64 noundef %i.abf, i32 noundef 0), !call_target !99 ; 0 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %0, i64 188680
  %i.abl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.abm = zext i16 %i.abl to i32
  store i32 %i.abm, ptr %i.abk, align 8, !tbaa !102
  %i.abn = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.abo = zext i16 %i.abn to i32
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 188684
  store i32 %i.abo, ptr %i.abp, align 4, !tbaa !102
  %i.abq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.abr = zext i16 %i.abq to i32
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 188692
  store i32 %i.abr, ptr %i.abs, align 4, !tbaa !102
  %i.abt = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.abu = zext i16 %i.abt to i32
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 188688
  store i32 %i.abu, ptr %i.abv, align 8, !tbaa !102
  %i.abw = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.abx = add nsw i64 %i.rh, 246
  %i.aby = load ptr, ptr %i.abw, align 8, !tbaa !90
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 32
  %i.aca = load ptr, ptr %i.abz, align 8
  %i.acb = tail call noundef i32 %i.aca(ptr noundef nonnull align 8 dereferenceable(8) %i.abw, i64 noundef %i.abx, i32 noundef 0), !call_target !99 ; 0 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 188696
  %i.acd = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ace = zext i16 %i.acd to i32
  store i32 %i.ace, ptr %i.acc, align 8, !tbaa !102
  %i.acf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.acg = zext i16 %i.acf to i32
  %i.ach = getelementptr inbounds nuw i8, ptr %0, i64 188700
  store i32 %i.acg, ptr %i.ach, align 4, !tbaa !102
  %i.aci = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.acj = zext i16 %i.aci to i32
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 188708
  store i32 %i.acj, ptr %i.ack, align 4, !tbaa !102
  %i.acl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.acm = zext i16 %i.acl to i32
  %i.acn = getelementptr inbounds nuw i8, ptr %0, i64 188704
  store i32 %i.acm, ptr %i.acn, align 8, !tbaa !102
  %i.aco = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.acp = add nsw i64 %i.rh, 256
  %i.acq = load ptr, ptr %i.aco, align 8, !tbaa !90
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 32
  %i.acs = load ptr, ptr %i.acr, align 8
  %i.act = tail call noundef i32 %i.acs(ptr noundef nonnull align 8 dereferenceable(8) %i.aco, i64 noundef %i.acp, i32 noundef 0), !call_target !99 ; 0 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 188552
  %i.acv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.acw = zext i16 %i.acv to i32
  store i32 %i.acw, ptr %i.acu, align 8, !tbaa !102
  %i.acx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.acy = zext i16 %i.acx to i32
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 188556
  store i32 %i.acy, ptr %i.acz, align 4, !tbaa !102
  %i.ada = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.adb = zext i16 %i.ada to i32
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 188564
  store i32 %i.adb, ptr %i.adc, align 4, !tbaa !102
  %i.add = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ade = zext i16 %i.add to i32
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 188560
  store i32 %i.ade, ptr %i.adf, align 8, !tbaa !102
  %i.adg = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.adh = add nsw i64 %i.rh, 156
  %i.adi = load ptr, ptr %i.adg, align 8, !tbaa !90
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 32
  %i.adk = load ptr, ptr %i.adj, align 8
  %i.adl = tail call noundef i32 %i.adk(ptr noundef nonnull align 8 dereferenceable(8) %i.adg, i64 noundef %i.adh, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.adm = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.adn = add nsw i64 %i.rh, 266
  %i.ado = load ptr, ptr %i.adm, align 8, !tbaa !90
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 32
  %i.adq = load ptr, ptr %i.adp, align 8
  %i.adr = tail call noundef i32 %i.adq(ptr noundef nonnull align 8 dereferenceable(8) %i.adm, i64 noundef %i.adn, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.ads = add nsw i64 %i.rh, 392
  br label %bb.du

bb.da:                                            ; preds = %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 4, ptr %i.adt, align 8, !tbaa !176
  %i.adu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.adv = zext i16 %i.adu to i32
  %i.adw = getelementptr inbounds nuw i8, ptr %0, i64 1940 ; 2 uses
  store i32 %i.adv, ptr %i.adw, align 4, !tbaa !103
  %i.adx = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.ady = add nsw i64 %i.rh, 126
  %i.adz = load ptr, ptr %i.adx, align 8, !tbaa !90
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 32
  %i.aeb = load ptr, ptr %i.aea, align 8
  %i.aec = tail call noundef i32 %i.aeb(ptr noundef nonnull align 8 dereferenceable(8) %i.adx, i64 noundef %i.ady, i32 noundef 0), !call_target !99 ; 0 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.aee = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aef = uitofp reassoc nsz arcp contract afn i16 %i.aee to float
  store float %i.aef, ptr %i.aed, align 4, !tbaa !101
  %i.aeg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aeh = uitofp reassoc nsz arcp contract afn i16 %i.aeg to float
  %i.aei = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.aeh, ptr %i.aei, align 8, !tbaa !101
  %i.aej = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aek = uitofp reassoc nsz arcp contract afn i16 %i.aej to float
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.aek, ptr %i.ael, align 8, !tbaa !101
  %i.aem = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aen = uitofp reassoc nsz arcp contract afn i16 %i.aem to float
  %i.aeo = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.aen, ptr %i.aeo, align 4, !tbaa !101
  %i.aep = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.aer = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aes = zext i16 %i.aer to i32
  store i32 %i.aes, ptr %i.aeq, align 8, !tbaa !102
  %i.aet = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aeu = zext i16 %i.aet to i32
  %i.aev = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.aeu, ptr %i.aev, align 4, !tbaa !102
  %i.aew = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aex = zext i16 %i.aew to i32
  %i.aey = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.aex, ptr %i.aey, align 4, !tbaa !102
  %i.aez = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.afa = zext i16 %i.aez to i32
  %i.afb = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.afa, ptr %i.afb, align 8, !tbaa !102
  %i.afc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.afe = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aff = zext i16 %i.afe to i32
  store i32 %i.aff, ptr %i.afd, align 8, !tbaa !102
  %i.afg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.afh = zext i16 %i.afg to i32
  %i.afi = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.afh, ptr %i.afi, align 4, !tbaa !102
  %i.afj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.afk = zext i16 %i.afj to i32
  %i.afl = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.afk, ptr %i.afl, align 4, !tbaa !102
  %i.afm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.afn = zext i16 %i.afm to i32
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.afn, ptr %i.afo, align 8, !tbaa !102
  %i.afp = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.afq = add nsw i64 %i.rh, 156
  %i.afr = load ptr, ptr %i.afp, align 8, !tbaa !90
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 32
  %i.aft = load ptr, ptr %i.afs, align 8
  %i.afu = tail call noundef i32 %i.aft(ptr noundef nonnull align 8 dereferenceable(8) %i.afp, i64 noundef %i.afq, i32 noundef 0), !call_target !99 ; 0 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 381730 ; 3 uses
  %i.afw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  store i16 %i.afw, ptr %i.afv, align 2, !tbaa !74
  %i.afx = uitofp reassoc nsz arcp contract afn i16 %i.afw to float ; 2 uses
  %i.afy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %0, i64 381732
  store i16 %i.afy, ptr %i.afz, align 4, !tbaa !74
  %i.aga = uitofp reassoc nsz arcp contract afn i16 %i.afy to float ; 2 uses
  %i.agb = fcmp reassoc nsz arcp contract afn olt float %i.afx, %i.aga
  %spec.select.1 = select nsz i1 %i.agb, float %i.aga, float %i.afx ; 2 uses
  %i.agc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %0, i64 381736 ; 2 uses
  store i16 %i.agc, ptr %i.agd, align 8, !tbaa !74
  %i.age = uitofp reassoc nsz arcp contract afn i16 %i.agc to float ; 2 uses
  %i.agf = fcmp reassoc nsz arcp contract afn olt float %spec.select.1, %i.age
  %spec.select.2 = select nsz i1 %i.agf, float %i.age, float %spec.select.1 ; 2 uses
  %i.agg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.agh = load i16, ptr %i.agd, align 8, !tbaa !74
  %i.agi = load <4 x i16>, ptr %i.afv, align 2
  %i.agj = insertelement <4 x i16> %i.agi, i16 %i.agg, i64 2
  %i.agk = insertelement <4 x i16> %i.agj, i16 %i.agh, i64 3
  %i.agl = uitofp reassoc nsz arcp contract afn <4 x i16> %i.agk to <4 x float> ; 2 uses
  %i.agm = extractelement <4 x float> %i.agl, i64 2 ; 2 uses
  %i.agn = fcmp reassoc nsz arcp contract afn olt float %spec.select.2, %i.agm
  %spec.select.3 = select nsz i1 %i.agn, float %i.agm, float %spec.select.2
  %i.ago = fmul reassoc nsz arcp contract afn float %spec.select.3, f0x3A800000
  %i.agp = insertelement <4 x float> poison, float %i.ago, i64 0
  %i.agq = shufflevector <4 x float> %i.agp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.agr = fmul reassoc nsz arcp contract afn <4 x float> %i.agq, %i.agl
  %i.ags = fptoui <4 x float> %i.agr to <4 x i16>
  store <4 x i16> %i.ags, ptr %i.afv, align 2, !tbaa !74
  %i.agt = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.agu = add nsw i64 %i.rh, 166
  %i.agv = load ptr, ptr %i.agt, align 8, !tbaa !90
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 32
  %i.agx = load ptr, ptr %i.agw, align 8
  %i.agy = tail call noundef i32 %i.agx(ptr noundef nonnull align 8 dereferenceable(8) %i.agt, i64 noundef %i.agu, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.agz = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.aha = add nsw i64 %i.rh, 336
  %i.ahb = load ptr, ptr %i.agz, align 8, !tbaa !90
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 32
  %i.ahd = load ptr, ptr %i.ahc, align 8
  %i.ahe = tail call noundef i32 %i.ahd(ptr noundef nonnull align 8 dereferenceable(8) %i.agz, i64 noundef %i.aha, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.ahf = load i32, ptr %i.adw, align 4, !tbaa !103
  switch i32 %i.ahf, label %bb.de [
    i32 4, label %bb.db
    i32 5, label %bb.db
    i32 6, label %bb.dc
    i32 7, label %bb.dc
    i32 9, label %bb.dd
  ]

bb.db:                                            ; preds = %bb.da, %bb.da
  %i.ahg = add nsw i64 %i.rh, 1384
  %i.ahh = add nsw i64 %i.rh, 1392
  br label %bb.du

bb.dc:                                            ; preds = %bb.da, %bb.da
  %i.ahi = add nsw i64 %i.rh, 1430
  %i.ahj = add nsw i64 %i.rh, 1438
  br label %bb.du

bb.dd:                                            ; preds = %bb.da
  %i.ahk = add nsw i64 %i.rh, 1438
  %i.ahl = add nsw i64 %i.rh, 1446
  br label %bb.du

bb.de:                                            ; preds = %bb.da
  %i.ahm = add nsw i64 %i.rh, 462
  br label %bb.du

bb.df:                                            ; preds = %bb.cw
  %i.ahn = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 5, ptr %i.ahn, align 8, !tbaa !176
  %i.aho = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ahp = zext i16 %i.aho to i32
  %i.ahq = getelementptr inbounds nuw i8, ptr %0, i64 1940 ; 2 uses
  store i32 %i.ahp, ptr %i.ahq, align 4, !tbaa !103
  %i.ahr = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.ahs = add nsw i64 %i.rh, 142
  %i.aht = load ptr, ptr %i.ahr, align 8, !tbaa !90
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 32
  %i.ahv = load ptr, ptr %i.ahu, align 8
  %i.ahw = tail call noundef i32 %i.ahv(ptr noundef nonnull align 8 dereferenceable(8) %i.ahr, i64 noundef %i.ahs, i32 noundef 0), !call_target !99 ; 0 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.ahy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ahz = uitofp reassoc nsz arcp contract afn i16 %i.ahy to float
  store float %i.ahz, ptr %i.ahx, align 4, !tbaa !101
  %i.aia = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aib = uitofp reassoc nsz arcp contract afn i16 %i.aia to float
  %i.aic = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.aib, ptr %i.aic, align 8, !tbaa !101
  %i.aid = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aie = uitofp reassoc nsz arcp contract afn i16 %i.aid to float
  %i.aif = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.aie, ptr %i.aif, align 8, !tbaa !101
  %i.aig = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aih = uitofp reassoc nsz arcp contract afn i16 %i.aig to float
  %i.aii = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.aih, ptr %i.aii, align 4, !tbaa !101
  %i.aij = load i32, ptr %i.ahq, align 4, !tbaa !103
  switch i32 %i.aij, label %.thread587 [
    i32 65532, label %bb.dg
    i32 65533, label %bb.dh
  ]

bb.dg:                                            ; preds = %bb.df
  %i.aik = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.ail = add nsw i64 %i.rh, 158
  %i.aim = load ptr, ptr %i.aik, align 8, !tbaa !90
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 32
  %i.aio = load ptr, ptr %i.ain, align 8
  %i.aip = tail call noundef i32 %i.aio(ptr noundef nonnull align 8 dereferenceable(8) %i.aik, i64 noundef %i.ail, i32 noundef 0), !call_target !99 ; 0 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.air = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ais = zext i16 %i.air to i32
  store i32 %i.ais, ptr %i.aiq, align 8, !tbaa !102
  %i.ait = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aiu = zext i16 %i.ait to i32
  %i.aiv = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.aiu, ptr %i.aiv, align 4, !tbaa !102
  %i.aiw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aix = zext i16 %i.aiw to i32
  %i.aiy = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.aix, ptr %i.aiy, align 4, !tbaa !102
  %i.aiz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aja = zext i16 %i.aiz to i32
  %i.ajb = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.aja, ptr %i.ajb, align 8, !tbaa !102
  %i.ajc = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.ajd = load ptr, ptr %i.ajc, align 8, !tbaa !90
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 32
  %i.ajf = load ptr, ptr %i.aje, align 8
  %i.ajg = tail call noundef i32 %i.ajf(ptr noundef nonnull align 8 dereferenceable(8) %i.ajc, i64 noundef 8, i32 noundef 1), !call_target !99 ; 0 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.aji = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ajj = zext i16 %i.aji to i32
  store i32 %i.ajj, ptr %i.ajh, align 8, !tbaa !102
  %i.ajk = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ajl = zext i16 %i.ajk to i32
  %i.ajm = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.ajl, ptr %i.ajm, align 4, !tbaa !102
  %i.ajn = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ajo = zext i16 %i.ajn to i32
  %i.ajp = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.ajo, ptr %i.ajp, align 4, !tbaa !102
  %i.ajq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ajr = zext i16 %i.ajq to i32
  %i.ajs = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.ajr, ptr %i.ajs, align 8, !tbaa !102
  %i.ajt = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.aju = load ptr, ptr %i.ajt, align 8, !tbaa !90
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 32
  %i.ajw = load ptr, ptr %i.ajv, align 8
  %i.ajx = tail call noundef i32 %i.ajw(ptr noundef nonnull align 8 dereferenceable(8) %i.ajt, i64 noundef 8, i32 noundef 1), !call_target !99 ; 0 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %0, i64 191304
  %i.ajz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aka = zext i16 %i.ajz to i32
  store i32 %i.aka, ptr %i.ajy, align 8, !tbaa !102
  %i.akb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.akc = zext i16 %i.akb to i32
  %i.akd = getelementptr inbounds nuw i8, ptr %0, i64 191308
  store i32 %i.akc, ptr %i.akd, align 4, !tbaa !102
  %i.ake = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.akf = zext i16 %i.ake to i32
  %i.akg = getelementptr inbounds nuw i8, ptr %0, i64 191316
  store i32 %i.akf, ptr %i.akg, align 4, !tbaa !102
  %i.akh = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aki = zext i16 %i.akh to i32
  %i.akj = getelementptr inbounds nuw i8, ptr %0, i64 191312
  store i32 %i.aki, ptr %i.akj, align 8, !tbaa !102
  %i.akk = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !90
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 32
  %i.akn = load ptr, ptr %i.akm, align 8
  %i.ako = tail call noundef i32 %i.akn(ptr noundef nonnull align 8 dereferenceable(8) %i.akk, i64 noundef 8, i32 noundef 1), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 8, i32 noundef 24)
  %i.akp = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.akq = load ptr, ptr %i.akp, align 8, !tbaa !90
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 32
  %i.aks = load ptr, ptr %i.akr, align 8
  %i.akt = tail call noundef i32 %i.aks(ptr noundef nonnull align 8 dereferenceable(8) %i.akp, i64 noundef 168, i32 noundef 1), !call_target !99 ; 0 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %0, i64 187464
  %i.akv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.akw = zext i16 %i.akv to i32
  store i32 %i.akw, ptr %i.aku, align 8, !tbaa !102
  %i.akx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aky = zext i16 %i.akx to i32
  %i.akz = getelementptr inbounds nuw i8, ptr %0, i64 187468
  store i32 %i.aky, ptr %i.akz, align 4, !tbaa !102
  %i.ala = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.alb = zext i16 %i.ala to i32
  %i.alc = getelementptr inbounds nuw i8, ptr %0, i64 187476
  store i32 %i.alb, ptr %i.alc, align 4, !tbaa !102
  %i.ald = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ale = zext i16 %i.ald to i32
  %i.alf = getelementptr inbounds nuw i8, ptr %0, i64 187472
  store i32 %i.ale, ptr %i.alf, align 8, !tbaa !102
  %i.alg = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.alh = load ptr, ptr %i.alg, align 8, !tbaa !90
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 32
  %i.alj = load ptr, ptr %i.ali, align 8
  %i.alk = tail call noundef i32 %i.alj(ptr noundef nonnull align 8 dereferenceable(8) %i.alg, i64 noundef 24, i32 noundef 1), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 2)
  %i.all = add nsw i64 %i.rh, 666
  %i.alm = add nsw i64 %i.rh, 2770
  br label %bb.du

bb.dh:                                            ; preds = %bb.df
  %i.aln = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.alo = add nsw i64 %i.rh, 152
  %i.alp = load ptr, ptr %i.aln, align 8, !tbaa !90
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 32
  %i.alr = load ptr, ptr %i.alq, align 8
  %i.als = tail call noundef i32 %i.alr(ptr noundef nonnull align 8 dereferenceable(8) %i.aln, i64 noundef %i.alo, i32 noundef 0), !call_target !99 ; 0 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.alu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.alv = zext i16 %i.alu to i32
  store i32 %i.alv, ptr %i.alt, align 8, !tbaa !102
  %i.alw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.alx = zext i16 %i.alw to i32
  %i.aly = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.alx, ptr %i.aly, align 4, !tbaa !102
  %i.alz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ama = zext i16 %i.alz to i32
  %i.amb = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.ama, ptr %i.amb, align 4, !tbaa !102
  %i.amc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amd = zext i16 %i.amc to i32
  %i.ame = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.amd, ptr %i.ame, align 8, !tbaa !102
  %i.amf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.amh = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ami = zext i16 %i.amh to i32
  store i32 %i.ami, ptr %i.amg, align 8, !tbaa !102
  %i.amj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amk = zext i16 %i.amj to i32
  %i.aml = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.amk, ptr %i.aml, align 4, !tbaa !102
  %i.amm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amn = zext i16 %i.amm to i32
  %i.amo = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.amn, ptr %i.amo, align 4, !tbaa !102
  %i.amp = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amq = zext i16 %i.amp to i32
  %i.amr = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.amq, ptr %i.amr, align 8, !tbaa !102
  %i.ams = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %0, i64 191304
  %i.amu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amv = zext i16 %i.amu to i32
  store i32 %i.amv, ptr %i.amt, align 8, !tbaa !102
  %i.amw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amx = zext i16 %i.amw to i32
  %i.amy = getelementptr inbounds nuw i8, ptr %0, i64 191308
  store i32 %i.amx, ptr %i.amy, align 4, !tbaa !102
  %i.amz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ana = zext i16 %i.amz to i32
  %i.anb = getelementptr inbounds nuw i8, ptr %0, i64 191316
  store i32 %i.ana, ptr %i.anb, align 4, !tbaa !102
  %i.anc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.and = zext i16 %i.anc to i32
  %i.ane = getelementptr inbounds nuw i8, ptr %0, i64 191312
  store i32 %i.and, ptr %i.ane, align 8, !tbaa !102
  %i.anf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.ang = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.anh = add nsw i64 %i.rh, 372
  %i.ani = load ptr, ptr %i.ang, align 8, !tbaa !90
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 32
  %i.ank = load ptr, ptr %i.anj, align 8
  %i.anl = tail call noundef i32 %i.ank(ptr noundef nonnull align 8 dereferenceable(8) %i.ang, i64 noundef %i.anh, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 2)
  %i.anm = add nsw i64 %i.rh, 528
  br label %bb.du

bb.di:                                            ; preds = %bb.cw, %bb.cw
  %i.ann = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 6, ptr %i.ann, align 8, !tbaa !176
  %i.ano = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.anp = zext i16 %i.ano to i32
  %i.anq = getelementptr inbounds nuw i8, ptr %0, i64 1940
  store i32 %i.anp, ptr %i.anq, align 4, !tbaa !103
  %i.anr = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.ans = add nsw i64 %i.rh, 126
  %i.ant = load ptr, ptr %i.anr, align 8, !tbaa !90
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 32
  %i.anv = load ptr, ptr %i.anu, align 8
  %i.anw = tail call noundef i32 %i.anv(ptr noundef nonnull align 8 dereferenceable(8) %i.anr, i64 noundef %i.ans, i32 noundef 0), !call_target !99 ; 0 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.any = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.anz = uitofp reassoc nsz arcp contract afn i16 %i.any to float
  store float %i.anz, ptr %i.anx, align 4, !tbaa !101
  %i.aoa = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aob = uitofp reassoc nsz arcp contract afn i16 %i.aoa to float
  %i.aoc = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.aob, ptr %i.aoc, align 8, !tbaa !101
  %i.aod = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aoe = uitofp reassoc nsz arcp contract afn i16 %i.aod to float
  %i.aof = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.aoe, ptr %i.aof, align 8, !tbaa !101
  %i.aog = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aoh = uitofp reassoc nsz arcp contract afn i16 %i.aog to float
  %i.aoi = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.aoh, ptr %i.aoi, align 4, !tbaa !101
  %i.aoj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.aol = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aom = zext i16 %i.aol to i32
  store i32 %i.aom, ptr %i.aok, align 8, !tbaa !102
  %i.aon = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aoo = zext i16 %i.aon to i32
  %i.aop = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.aoo, ptr %i.aop, align 4, !tbaa !102
  %i.aoq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aor = zext i16 %i.aoq to i32
  %i.aos = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.aor, ptr %i.aos, align 4, !tbaa !102
  %i.aot = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aou = zext i16 %i.aot to i32
  %i.aov = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.aou, ptr %i.aov, align 8, !tbaa !102
  %i.aow = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.aoy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aoz = zext i16 %i.aoy to i32
  store i32 %i.aoz, ptr %i.aox, align 8, !tbaa !102
  %i.apa = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.apb = zext i16 %i.apa to i32
  %i.apc = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.apb, ptr %i.apc, align 4, !tbaa !102
  %i.apd = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ape = zext i16 %i.apd to i32
  %i.apf = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.ape, ptr %i.apf, align 4, !tbaa !102
  %i.apg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aph = zext i16 %i.apg to i32
  %i.api = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.aph, ptr %i.api, align 8, !tbaa !102
  %i.apj = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.apk = add nsw i64 %i.rh, 196
  %i.apl = load ptr, ptr %i.apj, align 8, !tbaa !90
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 32
  %i.apn = load ptr, ptr %i.apm, align 8
  %i.apo = tail call noundef i32 %i.apn(ptr noundef nonnull align 8 dereferenceable(8) %i.apj, i64 noundef %i.apk, i32 noundef 0), !call_target !99 ; 0 uses
  %i.app = getelementptr inbounds nuw i8, ptr %0, i64 381730 ; 3 uses
  %i.apq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  store i16 %i.apq, ptr %i.app, align 2, !tbaa !74
  %i.apr = uitofp reassoc nsz arcp contract afn i16 %i.apq to float ; 2 uses
  %i.aps = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %0, i64 381732
  store i16 %i.aps, ptr %i.apt, align 4, !tbaa !74
  %i.apu = uitofp reassoc nsz arcp contract afn i16 %i.aps to float ; 2 uses
  %i.apv = fcmp reassoc nsz arcp contract afn olt float %i.apr, %i.apu
  %spec.select535.1.a = select nsz i1 %i.apv, float %i.apu, float %i.apr ; 2 uses
  %i.apw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %0, i64 381736 ; 2 uses
  store i16 %i.apw, ptr %i.apx, align 8, !tbaa !74
  %i.apy = uitofp reassoc nsz arcp contract afn i16 %i.apw to float ; 2 uses
  %i.apz = fcmp reassoc nsz arcp contract afn olt float %spec.select535.1.a, %i.apy
  %spec.select535.2.a = select nsz i1 %i.apz, float %i.apy, float %spec.select535.1.a ; 2 uses
  %i.aqa = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aqb = load i16, ptr %i.apx, align 8, !tbaa !74
  %i.aqc = load <4 x i16>, ptr %i.app, align 2
  %i.aqd = insertelement <4 x i16> %i.aqc, i16 %i.aqa, i64 2
  %i.aqe = insertelement <4 x i16> %i.aqd, i16 %i.aqb, i64 3
  %i.aqf = uitofp reassoc nsz arcp contract afn <4 x i16> %i.aqe to <4 x float> ; 2 uses
  %i.aqg = extractelement <4 x float> %i.aqf, i64 2 ; 2 uses
  %i.aqh = fcmp reassoc nsz arcp contract afn olt float %spec.select535.2.a, %i.aqg
  %spec.select535.3.a = select nsz i1 %i.aqh, float %i.aqg, float %spec.select535.2.a
  %i.aqi = fmul reassoc nsz arcp contract afn float %spec.select535.3.a, f0x3A800000
  %i.aqj = insertelement <4 x float> poison, float %i.aqi, i64 0
  %i.aqk = shufflevector <4 x float> %i.aqj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aql = fmul reassoc nsz arcp contract afn <4 x float> %i.aqk, %i.aqf
  %i.aqm = fptoui <4 x float> %i.aql to <4 x i16>
  store <4 x i16> %i.aqm, ptr %i.app, align 2, !tbaa !74
  %i.aqn = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.aqo = add nsw i64 %i.rh, 206
  %i.aqp = load ptr, ptr %i.aqn, align 8, !tbaa !90
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 32
  %i.aqr = load ptr, ptr %i.aqq, align 8
  %i.aqs = tail call noundef i32 %i.aqr(ptr noundef nonnull align 8 dereferenceable(8) %i.aqn, i64 noundef %i.aqo, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.aqt = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.aqu = add nsw i64 %i.rh, 376
  %i.aqv = load ptr, ptr %i.aqt, align 8, !tbaa !90
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqv, i64 32
  %i.aqx = load ptr, ptr %i.aqw, align 8
  %i.aqy = tail call noundef i32 %i.aqx(ptr noundef nonnull align 8 dereferenceable(8) %i.aqt, i64 noundef %i.aqu, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.aqz = add nsw i64 %i.rh, 958
  %i.ara = add nsw i64 %i.rh, 966
  br label %bb.du

bb.dj:                                            ; preds = %bb.cw, %bb.cw, %bb.cw, %bb.cw
  %i.arb = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 7, ptr %i.arb, align 8, !tbaa !176
  %i.arc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ard = zext i16 %i.arc to i32
  %i.are = getelementptr inbounds nuw i8, ptr %0, i64 1940 ; 2 uses
  store i32 %i.ard, ptr %i.are, align 4, !tbaa !103
  %i.arf = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.arg = add nsw i64 %i.rh, 126
  %i.arh = load ptr, ptr %i.arf, align 8, !tbaa !90
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 32
  %i.arj = load ptr, ptr %i.ari, align 8
  %i.ark = tail call noundef i32 %i.arj(ptr noundef nonnull align 8 dereferenceable(8) %i.arf, i64 noundef %i.arg, i32 noundef 0), !call_target !99 ; 0 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.arm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.arn = uitofp reassoc nsz arcp contract afn i16 %i.arm to float
  store float %i.arn, ptr %i.arl, align 4, !tbaa !101
  %i.aro = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.arp = uitofp reassoc nsz arcp contract afn i16 %i.aro to float
  %i.arq = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.arp, ptr %i.arq, align 8, !tbaa !101
  %i.arr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ars = uitofp reassoc nsz arcp contract afn i16 %i.arr to float
  %i.art = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.ars, ptr %i.art, align 8, !tbaa !101
  %i.aru = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.arv = uitofp reassoc nsz arcp contract afn i16 %i.aru to float
  %i.arw = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.arv, ptr %i.arw, align 4, !tbaa !101
  %i.arx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.arz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.asa = zext i16 %i.arz to i32
  store i32 %i.asa, ptr %i.ary, align 8, !tbaa !102
  %i.asb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.asc = zext i16 %i.asb to i32
  %i.asd = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.asc, ptr %i.asd, align 4, !tbaa !102
  %i.ase = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.asf = zext i16 %i.ase to i32
  %i.asg = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.asf, ptr %i.asg, align 4, !tbaa !102
  %i.ash = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.asi = zext i16 %i.ash to i32
  %i.asj = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.asi, ptr %i.asj, align 8, !tbaa !102
  %i.ask = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.asm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.asn = zext i16 %i.asm to i32
  store i32 %i.asn, ptr %i.asl, align 8, !tbaa !102
  %i.aso = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.asp = zext i16 %i.aso to i32
  %i.asq = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.asp, ptr %i.asq, align 4, !tbaa !102
  %i.asr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ass = zext i16 %i.asr to i32
  %i.ast = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.ass, ptr %i.ast, align 4, !tbaa !102
  %i.asu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.asv = zext i16 %i.asu to i32
  %i.asw = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.asv, ptr %i.asw, align 8, !tbaa !102
  %i.asx = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.asy = add nsw i64 %i.rh, 246
  %i.asz = load ptr, ptr %i.asx, align 8, !tbaa !90
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 32
  %i.atb = load ptr, ptr %i.ata, align 8
  %i.atc = tail call noundef i32 %i.atb(ptr noundef nonnull align 8 dereferenceable(8) %i.asx, i64 noundef %i.asy, i32 noundef 0), !call_target !99 ; 0 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %0, i64 381730 ; 3 uses
  %i.ate = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  store i16 %i.ate, ptr %i.atd, align 2, !tbaa !74
  %i.atf = uitofp reassoc nsz arcp contract afn i16 %i.ate to float ; 2 uses
  %i.atg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %0, i64 381732
  store i16 %i.atg, ptr %i.ath, align 4, !tbaa !74
  %i.ati = uitofp reassoc nsz arcp contract afn i16 %i.atg to float ; 2 uses
  %i.atj = fcmp reassoc nsz arcp contract afn olt float %i.atf, %i.ati
  %spec.select536.1 = select nsz i1 %i.atj, float %i.ati, float %i.atf ; 2 uses
  %i.atk = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %0, i64 381736 ; 2 uses
  store i16 %i.atk, ptr %i.atl, align 8, !tbaa !74
  %i.atm = uitofp reassoc nsz arcp contract afn i16 %i.atk to float ; 2 uses
  %i.atn = fcmp reassoc nsz arcp contract afn olt float %spec.select536.1, %i.atm
  %spec.select536.2 = select nsz i1 %i.atn, float %i.atm, float %spec.select536.1 ; 2 uses
  %i.ato = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.atp = load i16, ptr %i.atl, align 8, !tbaa !74
  %i.atq = load <4 x i16>, ptr %i.atd, align 2
  %i.atr = insertelement <4 x i16> %i.atq, i16 %i.ato, i64 2
  %i.ats = insertelement <4 x i16> %i.atr, i16 %i.atp, i64 3
  %i.att = uitofp reassoc nsz arcp contract afn <4 x i16> %i.ats to <4 x float> ; 2 uses
  %i.atu = extractelement <4 x float> %i.att, i64 2 ; 2 uses
  %i.atv = fcmp reassoc nsz arcp contract afn olt float %spec.select536.2, %i.atu
  %spec.select536.3 = select nsz i1 %i.atv, float %i.atu, float %spec.select536.2
  %i.atw = fmul reassoc nsz arcp contract afn float %spec.select536.3, f0x3A800000
  %i.atx = insertelement <4 x float> poison, float %i.atw, i64 0
  %i.aty = shufflevector <4 x float> %i.atx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.atz = fmul reassoc nsz arcp contract afn <4 x float> %i.aty, %i.att
  %i.aua = fptoui <4 x float> %i.atz to <4 x i16>
  store <4 x i16> %i.aua, ptr %i.atd, align 2, !tbaa !74
  %i.aub = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.auc = add nsw i64 %i.rh, 256
  %i.aud = load ptr, ptr %i.aub, align 8, !tbaa !90
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 32
  %i.auf = load ptr, ptr %i.aue, align 8
  %i.aug = tail call noundef i32 %i.auf(ptr noundef nonnull align 8 dereferenceable(8) %i.aub, i64 noundef %i.auc, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.auh = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.aui = add nsw i64 %i.rh, 426
  %i.auj = load ptr, ptr %i.auh, align 8, !tbaa !90
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 32
  %i.aul = load ptr, ptr %i.auk, align 8
  %i.aum = tail call noundef i32 %i.aul(ptr noundef nonnull align 8 dereferenceable(8) %i.auh, i64 noundef %i.aui, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.aun = load i32, ptr %i.are, align 4, !tbaa !103
  switch i32 %i.aun, label %.thread587 [
    i32 10, label %bb.dk
    i32 11, label %bb.dl
  ]

bb.dk:                                            ; preds = %bb.dj
  %i.auo = add nsw i64 %i.rh, 1008
  %i.aup = add nsw i64 %i.rh, 1016
  br label %bb.du

bb.dl:                                            ; preds = %bb.dj
  %i.auq = add nsw i64 %i.rh, 1456
  %i.aur = add nsw i64 %i.rh, 1464
  br label %bb.du

bb.dm:                                            ; preds = %bb.cw, %bb.cw, %bb.cw, %bb.cw
  %i.aus = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 8, ptr %i.aus, align 8, !tbaa !176
  %i.aut = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.auu = zext i16 %i.aut to i32
  %i.auv = getelementptr inbounds nuw i8, ptr %0, i64 1940 ; 2 uses
  store i32 %i.auu, ptr %i.auv, align 4, !tbaa !103
  %i.auw = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.aux = add nsw i64 %i.rh, 126
  %i.auy = load ptr, ptr %i.auw, align 8, !tbaa !90
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 32
  %i.ava = load ptr, ptr %i.auz, align 8
  %i.avb = tail call noundef i32 %i.ava(ptr noundef nonnull align 8 dereferenceable(8) %i.auw, i64 noundef %i.aux, i32 noundef 0), !call_target !99 ; 0 uses
  %i.avc = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.avd = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ave = uitofp reassoc nsz arcp contract afn i16 %i.avd to float
  store float %i.ave, ptr %i.avc, align 4, !tbaa !101
  %i.avf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avg = uitofp reassoc nsz arcp contract afn i16 %i.avf to float
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.avg, ptr %i.avh, align 8, !tbaa !101
  %i.avi = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avj = uitofp reassoc nsz arcp contract afn i16 %i.avi to float
  %i.avk = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.avj, ptr %i.avk, align 8, !tbaa !101
  %i.avl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avm = uitofp reassoc nsz arcp contract afn i16 %i.avl to float
  %i.avn = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.avm, ptr %i.avn, align 4, !tbaa !101
  %i.avo = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.avq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avr = zext i16 %i.avq to i32
  store i32 %i.avr, ptr %i.avp, align 8, !tbaa !102
  %i.avs = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avt = zext i16 %i.avs to i32
  %i.avu = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.avt, ptr %i.avu, align 4, !tbaa !102
  %i.avv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avw = zext i16 %i.avv to i32
  %i.avx = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.avw, ptr %i.avx, align 4, !tbaa !102
  %i.avy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avz = zext i16 %i.avy to i32
  %i.awa = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.avz, ptr %i.awa, align 8, !tbaa !102
  %i.awb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.awc = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.awd = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.awe = zext i16 %i.awd to i32
  store i32 %i.awe, ptr %i.awc, align 8, !tbaa !102
  %i.awf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.awg = zext i16 %i.awf to i32
  %i.awh = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.awg, ptr %i.awh, align 4, !tbaa !102
  %i.awi = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.awj = zext i16 %i.awi to i32
  %i.awk = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.awj, ptr %i.awk, align 4, !tbaa !102
  %i.awl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.awm = zext i16 %i.awl to i32
  %i.awn = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.awm, ptr %i.awn, align 8, !tbaa !102
  %i.awo = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.awp = add nsw i64 %i.rh, 256
  %i.awq = load ptr, ptr %i.awo, align 8, !tbaa !90
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 32
  %i.aws = load ptr, ptr %i.awr, align 8
  %i.awt = tail call noundef i32 %i.aws(ptr noundef nonnull align 8 dereferenceable(8) %i.awo, i64 noundef %i.awp, i32 noundef 0), !call_target !99 ; 0 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %0, i64 381730 ; 3 uses
  %i.awv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  store i16 %i.awv, ptr %i.awu, align 2, !tbaa !74
  %i.aww = uitofp reassoc nsz arcp contract afn i16 %i.awv to float ; 2 uses
  %i.awx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.awy = getelementptr inbounds nuw i8, ptr %0, i64 381732
  store i16 %i.awx, ptr %i.awy, align 4, !tbaa !74
  %i.awz = uitofp reassoc nsz arcp contract afn i16 %i.awx to float ; 2 uses
  %i.axa = fcmp reassoc nsz arcp contract afn olt float %i.aww, %i.awz
  %spec.select537.1 = select nsz i1 %i.axa, float %i.awz, float %i.aww ; 2 uses
  %i.axb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.axc = getelementptr inbounds nuw i8, ptr %0, i64 381736 ; 2 uses
  store i16 %i.axb, ptr %i.axc, align 8, !tbaa !74
  %i.axd = uitofp reassoc nsz arcp contract afn i16 %i.axb to float ; 2 uses
  %i.axe = fcmp reassoc nsz arcp contract afn olt float %spec.select537.1, %i.axd
  %spec.select537.2 = select nsz i1 %i.axe, float %i.axd, float %spec.select537.1 ; 2 uses
  %i.axf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.axg = load i16, ptr %i.axc, align 8, !tbaa !74
  %i.axh = load <4 x i16>, ptr %i.awu, align 2
  %i.axi = insertelement <4 x i16> %i.axh, i16 %i.axf, i64 2
  %i.axj = insertelement <4 x i16> %i.axi, i16 %i.axg, i64 3
  %i.axk = uitofp reassoc nsz arcp contract afn <4 x i16> %i.axj to <4 x float> ; 2 uses
  %i.axl = extractelement <4 x float> %i.axk, i64 2 ; 2 uses
  %i.axm = fcmp reassoc nsz arcp contract afn olt float %spec.select537.2, %i.axl
  %spec.select537.3 = select nsz i1 %i.axm, float %i.axl, float %spec.select537.2
  %i.axn = fmul reassoc nsz arcp contract afn float %spec.select537.3, f0x3A800000
  %i.axo = insertelement <4 x float> poison, float %i.axn, i64 0
  %i.axp = shufflevector <4 x float> %i.axo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.axq = fmul reassoc nsz arcp contract afn <4 x float> %i.axp, %i.axk
  %i.axr = fptoui <4 x float> %i.axq to <4 x i16>
  store <4 x i16> %i.axr, ptr %i.awu, align 2, !tbaa !74
  %i.axs = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.axt = add nsw i64 %i.rh, 266
  %i.axu = load ptr, ptr %i.axs, align 8, !tbaa !90
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 32
  %i.axw = load ptr, ptr %i.axv, align 8
  %i.axx = tail call noundef i32 %i.axw(ptr noundef nonnull align 8 dereferenceable(8) %i.axs, i64 noundef %i.axt, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.axy = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.axz = add nsw i64 %i.rh, 526
  %i.aya = load ptr, ptr %i.axy, align 8, !tbaa !90
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 32
  %i.ayc = load ptr, ptr %i.ayb, align 8
  %i.ayd = tail call noundef i32 %i.ayc(ptr noundef nonnull align 8 dereferenceable(8) %i.axy, i64 noundef %i.axz, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.aye = load i32, ptr %i.auv, align 4, !tbaa !103
  %i.ayf = icmp eq i32 %i.aye, 14
  br i1 %i.ayf, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.ayg = add nsw i64 %i.rh, 1112
  %i.ayh = add nsw i64 %i.rh, 1120
  br label %bb.du

bb.do:                                            ; preds = %bb.dm
  %i.ayi = add nsw i64 %i.rh, 1556
  %i.ayj = add nsw i64 %i.rh, 1564
  br label %bb.du

bb.dp:                                            ; preds = %bb.cw, %bb.cw, %bb.cw
  %i.ayk = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 9, ptr %i.ayk, align 8, !tbaa !176
  %i.ayl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aym = zext i16 %i.ayl to i32
  %i.ayn = getelementptr inbounds nuw i8, ptr %0, i64 1940
  store i32 %i.aym, ptr %i.ayn, align 4, !tbaa !103
  %i.ayo = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.ayp = add nsw i64 %i.rh, 142
  %i.ayq = load ptr, ptr %i.ayo, align 8, !tbaa !90
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 32
  %i.ays = load ptr, ptr %i.ayr, align 8
  %i.ayt = tail call noundef i32 %i.ays(ptr noundef nonnull align 8 dereferenceable(8) %i.ayo, i64 noundef %i.ayp, i32 noundef 0), !call_target !99 ; 0 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.ayv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ayw = uitofp reassoc nsz arcp contract afn i16 %i.ayv to float
  store float %i.ayw, ptr %i.ayu, align 4, !tbaa !101
  %i.ayx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ayy = uitofp reassoc nsz arcp contract afn i16 %i.ayx to float
  %i.ayz = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.ayy, ptr %i.ayz, align 8, !tbaa !101
  %i.aza = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.azb = uitofp reassoc nsz arcp contract afn i16 %i.aza to float
  %i.azc = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.azb, ptr %i.azc, align 8, !tbaa !101
  %i.azd = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aze = uitofp reassoc nsz arcp contract afn i16 %i.azd to float
  %i.azf = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.aze, ptr %i.azf, align 4, !tbaa !101
  %i.azg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.azh = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.azi = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.azj = zext i16 %i.azi to i32
  store i32 %i.azj, ptr %i.azh, align 8, !tbaa !102
  %i.azk = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.azl = zext i16 %i.azk to i32
  %i.azm = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.azl, ptr %i.azm, align 4, !tbaa !102
  %i.azn = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.azo = zext i16 %i.azn to i32
  %i.azp = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.azo, ptr %i.azp, align 4, !tbaa !102
  %i.azq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.azr = zext i16 %i.azq to i32
  %i.azs = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.azr, ptr %i.azs, align 8, !tbaa !102
  %i.azt = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.azu = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.azv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.azw = zext i16 %i.azv to i32
  store i32 %i.azw, ptr %i.azu, align 8, !tbaa !102
  %i.azx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.azy = zext i16 %i.azx to i32
  %i.azz = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.azy, ptr %i.azz, align 4, !tbaa !102
  %i.baa = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bab = zext i16 %i.baa to i32
  %i.bac = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.bab, ptr %i.bac, align 4, !tbaa !102
  %i.bad = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bae = zext i16 %i.bad to i32
  %i.baf = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.bae, ptr %i.baf, align 8, !tbaa !102
  %i.bag = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.bah = add nsw i64 %i.rh, 272
  %i.bai = load ptr, ptr %i.bag, align 8, !tbaa !90
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bai, i64 32
  %i.bak = load ptr, ptr %i.baj, align 8
  %i.bal = tail call noundef i32 %i.bak(ptr noundef nonnull align 8 dereferenceable(8) %i.bag, i64 noundef %i.bah, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.bam = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.ban = add nsw i64 %i.rh, 532
  %i.bao = load ptr, ptr %i.bam, align 8, !tbaa !90
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bao, i64 32
  %i.baq = load ptr, ptr %i.bap, align 8
  %i.bar = tail call noundef i32 %i.baq(ptr noundef nonnull align 8 dereferenceable(8) %i.bam, i64 noundef %i.ban, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.bas = add nsw i64 %i.rh, 658
  %i.bat = add nsw i64 %i.rh, 1584
  %i.bau = add nsw i64 %i.rh, 1592
  br label %bb.du

bb.dq:                                            ; preds = %bb.cw, %bb.cw, %bb.cw
  %i.bav = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 10, ptr %i.bav, align 8, !tbaa !176
  %i.baw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bax = zext i16 %i.baw to i32
  %i.bay = getelementptr inbounds nuw i8, ptr %0, i64 1940
  store i32 %i.bax, ptr %i.bay, align 4, !tbaa !103
  %i.baz = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.bba = add nsw i64 %i.rh, 170
  %i.bbb = load ptr, ptr %i.baz, align 8, !tbaa !90
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bbb, i64 32
  %i.bbd = load ptr, ptr %i.bbc, align 8
  %i.bbe = tail call noundef i32 %i.bbd(ptr noundef nonnull align 8 dereferenceable(8) %i.baz, i64 noundef %i.bba, i32 noundef 0), !call_target !99 ; 0 uses
  %i.bbf = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.bbg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbh = uitofp reassoc nsz arcp contract afn i16 %i.bbg to float
  store float %i.bbh, ptr %i.bbf, align 4, !tbaa !101
  %i.bbi = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbj = uitofp reassoc nsz arcp contract afn i16 %i.bbi to float
  %i.bbk = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.bbj, ptr %i.bbk, align 8, !tbaa !101
  %i.bbl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbm = uitofp reassoc nsz arcp contract afn i16 %i.bbl to float
  %i.bbn = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.bbm, ptr %i.bbn, align 8, !tbaa !101
  %i.bbo = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbp = uitofp reassoc nsz arcp contract afn i16 %i.bbo to float
  %i.bbq = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.bbp, ptr %i.bbq, align 4, !tbaa !101
  %i.bbr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.bbt = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbu = zext i16 %i.bbt to i32
  store i32 %i.bbu, ptr %i.bbs, align 8, !tbaa !102
  %i.bbv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbw = zext i16 %i.bbv to i32
  %i.bbx = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.bbw, ptr %i.bbx, align 4, !tbaa !102
  %i.bby = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbz = zext i16 %i.bby to i32
  %i.bca = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.bbz, ptr %i.bca, align 4, !tbaa !102
  %i.bcb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bcc = zext i16 %i.bcb to i32
  %i.bcd = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.bcc, ptr %i.bcd, align 8, !tbaa !102
  %i.bce = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.bcg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bch = zext i16 %i.bcg to i32
  store i32 %i.bch, ptr %i.bcf, align 8, !tbaa !102
  %i.bci = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bcj = zext i16 %i.bci to i32
  %i.bck = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.bcj, ptr %i.bck, align 4, !tbaa !102
  %i.bcl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bcm = zext i16 %i.bcl to i32
  %i.bcn = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.bcm, ptr %i.bcn, align 4, !tbaa !102
  %i.bco = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bcp = zext i16 %i.bco to i32
  %i.bcq = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.bcp, ptr %i.bcq, align 8, !tbaa !102
  %i.bcr = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.bcs = add nsw i64 %i.rh, 300
  %i.bct = load ptr, ptr %i.bcr, align 8, !tbaa !90
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bct, i64 32
  %i.bcv = load ptr, ptr %i.bcu, align 8
  %i.bcw = tail call noundef i32 %i.bcv(ptr noundef nonnull align 8 dereferenceable(8) %i.bcr, i64 noundef %i.bcs, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.bcx = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.bcy = add nsw i64 %i.rh, 560
  %i.bcz = load ptr, ptr %i.bcx, align 8, !tbaa !90
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcz, i64 32
  %i.bdb = load ptr, ptr %i.bda, align 8
  %i.bdc = tail call noundef i32 %i.bdb(ptr noundef nonnull align 8 dereferenceable(8) %i.bcx, i64 noundef %i.bcy, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.bdd = add nsw i64 %i.rh, 686
  %i.bde = add nsw i64 %i.rh, 1612
  %i.bdf = add nsw i64 %i.rh, 1620
  br label %bb.du

bb.dr:                                            ; preds = %bb.cw, %bb.cw
  %i.bdg = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 11, ptr %i.bdg, align 8, !tbaa !176
end_hunk_2
begin_hunk_3_@_ZN6LibRaw20parseCanonMakernotesEjjjj:bb.a
  %i.bgf = uitofp reassoc nsz arcp contract afn i16 %i.bge to float
  %i.bgg = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.bgf, ptr %i.bgg, align 8, !tbaa !101
  %i.bgh = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bgi = uitofp reassoc nsz arcp contract afn i16 %i.bgh to float
  %i.bgj = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.bgi, ptr %i.bgj, align 8, !tbaa !101
  %i.bgk = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bgl = uitofp reassoc nsz arcp contract afn i16 %i.bgk to float
  %i.bgm = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.bgl, ptr %i.bgm, align 4, !tbaa !101
  %i.bgn = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.bgo = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.bgp = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bgq = zext i16 %i.bgp to i32
  store i32 %i.bgq, ptr %i.bgo, align 8, !tbaa !102
  %i.bgr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bgs = zext i16 %i.bgr to i32
  %i.bgt = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.bgs, ptr %i.bgt, align 4, !tbaa !102
  %i.bgu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bgv = zext i16 %i.bgu to i32
  %i.bgw = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.bgv, ptr %i.bgw, align 4, !tbaa !102
  %i.bgx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bgy = zext i16 %i.bgx to i32
  %i.bgz = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.bgy, ptr %i.bgz, align 8, !tbaa !102
  %i.bha = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.bhb = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.bhc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bhd = zext i16 %i.bhc to i32
  store i32 %i.bhd, ptr %i.bhb, align 8, !tbaa !102
  %i.bhe = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bhf = zext i16 %i.bhe to i32
  %i.bhg = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.bhf, ptr %i.bhg, align 4, !tbaa !102
  %i.bhh = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bhi = zext i16 %i.bhh to i32
  %i.bhj = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.bhi, ptr %i.bhj, align 4, !tbaa !102
  %i.bhk = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bhl = zext i16 %i.bhk to i32
  %i.bhm = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.bhl, ptr %i.bhm, align 8, !tbaa !102
  %i.bhn = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.bho = add nsw i64 %i.rh, 220
  %i.bhp = load ptr, ptr %i.bhn, align 8, !tbaa !90
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhp, i64 32
  %i.bhr = load ptr, ptr %i.bhq, align 8
  %i.bhs = tail call noundef i32 %i.bhr(ptr noundef nonnull align 8 dereferenceable(8) %i.bhn, i64 noundef %i.bho, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.bht = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.bhu = add nsw i64 %i.rh, 640
  %i.bhv = load ptr, ptr %i.bht, align 8, !tbaa !90
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhv, i64 32
  %i.bhx = load ptr, ptr %i.bhw, align 8
  %i.bhy = tail call noundef i32 %i.bhx(ptr noundef nonnull align 8 dereferenceable(8) %i.bht, i64 noundef %i.bhu, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.bhz = add nsw i64 %i.rh, 766
  %i.bia = add nsw i64 %i.rh, 1312
  %i.bib = add nsw i64 %i.rh, 1320
  br label %bb.du

bb.dt:                                            ; preds = %bb.cw
  %i.bic = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bid = zext i16 %i.bic to i32
  %i.bie = getelementptr inbounds nuw i8, ptr %0, i64 1940
  store i32 %i.bid, ptr %i.bie, align 4, !tbaa !103
  br label %.thread587

bb.du:                                            ; preds = %bb.dn, %bb.do, %bb.dk, %bb.dl, %bb.dg, %bb.dh, %bb.db, %bb.dd, %bb.de, %bb.dc, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.di, %bb.cz, %bb.cy, %bb.cx
  %.0474 = phi i64 [ %i.bde, %bb.dq ], [ %i.up, %bb.cx ], [ %i.yp, %bb.cy ], [ %i.ads, %bb.cz ], [ %i.ahg, %bb.db ], [ %i.ahi, %bb.dc ], [ %i.ahk, %bb.dd ], [ %i.ahm, %bb.de ], [ %i.all, %bb.dg ], [ %i.anm, %bb.dh ], [ %i.bfp, %bb.dr ], [ %i.aqz, %bb.di ], [ %i.auo, %bb.dk ], [ %i.auq, %bb.dl ], [ %i.bia, %bb.ds ], [ %i.ayg, %bb.dn ], [ %i.ayi, %bb.do ], [ %i.bat, %bb.dp ] ; 3 uses
  %.0473 = phi i64 [ %i.bdd, %bb.dq ], [ 0, %bb.cx ], [ 0, %bb.cy ], [ 0, %bb.cz ], [ 0, %bb.db ], [ 0, %bb.dc ], [ 0, %bb.dd ], [ 0, %bb.de ], [ 0, %bb.dg ], [ 0, %bb.dh ], [ %i.bfo, %bb.dr ], [ 0, %bb.di ], [ 0, %bb.dk ], [ 0, %bb.dl ], [ %i.bhz, %bb.ds ], [ 0, %bb.dn ], [ 0, %bb.do ], [ %i.bas, %bb.dp ] ; 2 uses
  %.0 = phi i64 [ %i.bdf, %bb.dq ], [ 0, %bb.cx ], [ 0, %bb.cy ], [ 0, %bb.cz ], [ %i.ahh, %bb.db ], [ %i.ahj, %bb.dc ], [ %i.ahl, %bb.dd ], [ 0, %bb.de ], [ %i.alm, %bb.dg ], [ 0, %bb.dh ], [ %i.bfq, %bb.dr ], [ %i.ara, %bb.di ], [ %i.aup, %bb.dk ], [ %i.aur, %bb.dl ], [ %i.bib, %bb.ds ], [ %i.ayh, %bb.dn ], [ %i.ayj, %bb.do ], [ %i.bau, %bb.dp ] ; 3 uses
  %.not520.a = icmp eq i64 %.0474, 0
  br i1 %.not520.a, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.bif = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.big = load ptr, ptr %i.bif, align 8, !tbaa !90
  %i.bih = getelementptr inbounds nuw i8, ptr %i.big, i64 32
  %i.bii = load ptr, ptr %i.bih, align 8
  %i.bij = tail call noundef i32 %i.bii(ptr noundef nonnull align 8 dereferenceable(8) %i.bif, i64 noundef %.0474, i32 noundef 0), !call_target !99 ; 0 uses
  %i.bik = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.bil = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bim = zext i16 %i.bil to i32                 ; 2 uses
  store i32 %i.bim, ptr %i.bik, align 8, !tbaa !102
  %i.bin = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bio = zext i16 %i.bin to i32                 ; 2 uses
  %i.bip = getelementptr inbounds nuw i8, ptr %0, i64 1956
  store i32 %i.bio, ptr %i.bip, align 4, !tbaa !102
  %i.biq = add nuw nsw i32 %i.bim, %i.bio
  %i.bir = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bis = zext i16 %i.bir to i32                 ; 2 uses
  %i.bit = getelementptr inbounds nuw i8, ptr %0, i64 1964
  store i32 %i.bis, ptr %i.bit, align 4, !tbaa !102
  %i.biu = add nuw nsw i32 %i.biq, %i.bis
  %i.biv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.biw = zext i16 %i.biv to i32                 ; 2 uses
  %i.bix = getelementptr inbounds nuw i8, ptr %0, i64 1960
  store i32 %i.biw, ptr %i.bix, align 8, !tbaa !102
  %i.biy = add nuw nsw i32 %i.biu, %i.biw         ; 2 uses
  %i.biz = lshr i32 %i.biy, 2
  %i.bja = getelementptr inbounds nuw i8, ptr %0, i64 1968
  store i32 %i.biz, ptr %i.bja, align 8, !tbaa !177
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.1 = phi i32 [ %i.biy, %bb.dv ], [ 0, %bb.du ]
  %.not521 = icmp eq i64 %.0, 0
  br i1 %.not521, label %.loopexit604, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.bjb = sub nsw i64 %.0, %.0474
  %.not522 = icmp eq i64 %i.bjb, 8
  br i1 %.not522, label %.loopexit604.loopexit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.bjc = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.bjd = load ptr, ptr %i.bjc, align 8, !tbaa !90
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjd, i64 32
  %i.bjf = load ptr, ptr %i.bje, align 8
  %i.bjg = tail call noundef i32 %i.bjf(ptr noundef nonnull align 8 dereferenceable(8) %i.bjc, i64 noundef %.0, i32 noundef 0), !call_target !99 ; 0 uses
  br label %.loopexit604.loopexit

.loopexit604.loopexit:                            ; preds = %bb.dy, %bb.dx
  %i.bjh = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bji = zext i16 %i.bjh to i32
  %i.bjj = getelementptr inbounds nuw i8, ptr %0, i64 1948
  store i32 %i.bji, ptr %i.bjj, align 4, !tbaa !178
  %i.bjk = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.bjl = zext i16 %i.bjk to i32
  %i.bjm = getelementptr inbounds nuw i8, ptr %0, i64 1944
  store i32 %i.bjl, ptr %i.bjm, align 8, !tbaa !179
  %i.bjn = getelementptr inbounds nuw i8, ptr %0, i64 153100
  %i.bjo = insertelement <4 x i16> poison, i16 %i.bjk, i64 0
  %i.bjp = shufflevector <4 x i16> %i.bjo, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.bjq = zext <4 x i16> %i.bjp to <4 x i32>
  store <4 x i32> %i.bjq, ptr %i.bjn, align 4, !tbaa !102
  br label %.loopexit604

.loopexit604:                                     ; preds = %.loopexit604.loopexit, %bb.dw
  %i.bjr = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 2 uses
  %i.bjs = load i32, ptr %i.bjr, align 8, !tbaa !177
  %i.bjt = icmp eq i32 %i.bjs, 0
  %i.bju = icmp ne i64 %.0473, 0
  %or.cond21 = select i1 %i.bjt, i1 %i.bju, i1 false
  br i1 %or.cond21, label %bb.dz, label %.thread587

bb.dz:                                            ; preds = %.loopexit604
  %i.bjv = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.bjw = load ptr, ptr %i.bjv, align 8, !tbaa !90
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjw, i64 32
  %i.bjy = load ptr, ptr %i.bjx, align 8
  %i.bjz = tail call noundef i32 %i.bjy(ptr noundef nonnull align 8 dereferenceable(8) %i.bjv, i64 noundef %.0473, i32 noundef 0), !call_target !99 ; 0 uses
  %i.bka = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.bkb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bkc = zext i16 %i.bkb to i32                 ; 2 uses
  store i32 %i.bkc, ptr %i.bka, align 8, !tbaa !102
  %i.bkd = add nuw nsw i32 %.1, %i.bkc
  %i.bke = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bkf = zext i16 %i.bke to i32                 ; 2 uses
  %i.bkg = getelementptr inbounds nuw i8, ptr %0, i64 1956
  store i32 %i.bkf, ptr %i.bkg, align 4, !tbaa !102
  %i.bkh = add nuw nsw i32 %i.bkd, %i.bkf
  %i.bki = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bkj = zext i16 %i.bki to i32                 ; 2 uses
  %i.bkk = getelementptr inbounds nuw i8, ptr %0, i64 1964
  store i32 %i.bkj, ptr %i.bkk, align 4, !tbaa !102
  %i.bkl = add nuw nsw i32 %i.bkh, %i.bkj
  %i.bkm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bkn = zext i16 %i.bkm to i32                 ; 2 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %0, i64 1960
  store i32 %i.bkn, ptr %i.bko, align 8, !tbaa !102
  %i.bkp = add nuw nsw i32 %i.bkl, %i.bkn
  %i.bkq = lshr i32 %i.bkp, 2
  store i32 %i.bkq, ptr %i.bjr, align 8, !tbaa !177
  br label %.thread587

.thread587:                                       ; preds = %bb.dj, %bb.df, %bb.dt, %bb.dz, %.loopexit604
  %i.bkr = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.bks = load ptr, ptr %i.bkr, align 8, !tbaa !90
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bks, i64 32
  %i.bku = load ptr, ptr %i.bkt, align 8
  %i.bkv = tail call noundef i32 %i.bku(ptr noundef nonnull align 8 dereferenceable(8) %i.bkr, i64 noundef %i.rh, i32 noundef 0), !call_target !99 ; 0 uses
  br label %.thread595

bb.ea:                                            ; preds = %bb.cv
  switch i32 %1, label %bb.ef [
    i32 16403, label %bb.eb
    i32 16408, label %bb.ed
  ]

bb.eb:                                            ; preds = %bb.ea
  %i.bkw = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.bkx = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bky = getelementptr inbounds nuw i8, ptr %0, i64 2020
  store i32 %i.bkx, ptr %i.bky, align 4, !tbaa !180
  %i.bkz = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bla = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %7 = uitofp reassoc nsz arcp contract afn i32 %i.bla to float ; 2 uses
  %8 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %7)
  %9 = fcmp reassoc nsz arcp contract afn ogt float %8, 1.000000e-03
  br i1 %9, label %bb.ec, label %.thread595

bb.ec:                                            ; preds = %bb.eb
  %i.blb = uitofp reassoc nsz arcp contract afn i32 %i.bkz to float
  %i.blc = fdiv reassoc nsz arcp contract afn float %i.blb, %7
  %i.bld = getelementptr inbounds nuw i8, ptr %0, i64 2024
  store float %i.blc, ptr %i.bld, align 8, !tbaa !181
  br label %.thread595

bb.ed:                                            ; preds = %bb.ea
  %i.ble = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.blf = load ptr, ptr %i.ble, align 8, !tbaa !88 ; 2 uses
  %i.blg = load ptr, ptr %i.blf, align 8, !tbaa !90
  %i.blh = getelementptr inbounds nuw i8, ptr %i.blg, i64 32
  %i.bli = load ptr, ptr %i.blh, align 8
  %i.blj = tail call noundef i32 %i.bli(ptr noundef nonnull align 8 dereferenceable(8) %i.blf, i64 noundef 8, i32 noundef 1), !call_target !99 ; 0 uses
  %i.blk = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bll = getelementptr inbounds nuw i8, ptr %0, i64 2044
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.blk, i32 3)
  store i32 %spec.store.select, ptr %i.bll, align 4, !tbaa !83
  %i.blm = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.bln = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %or.cond539 = icmp ugt i32 %i.blm, 5
  %spec.store.select540 = select i1 %or.cond539, i32 0, i32 %i.blm ; 3 uses
  store i32 %spec.store.select540, ptr %i.bln, align 8, !tbaa !81
  %.not518 = icmp eq i32 %spec.store.select540, 0
  br i1 %.not518, label %.thread595, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.blo = uitofp nneg i32 %spec.store.select540 to float
  %i.blp = getelementptr inbounds nuw i8, ptr %0, i64 4988 ; 2 uses
  %i.blq = load float, ptr %i.blp, align 4, !tbaa !82
  %i.blr = fsub reassoc nsz arcp contract afn float %i.blq, %i.blo
  store float %i.blr, ptr %i.blp, align 4, !tbaa !82
  br label %.thread595

bb.ef:                                            ; preds = %bb.ea
  %i.bls = icmp eq i32 %1, 16417
  %or.cond23 = and i1 %i.bls, %i.da
  br i1 %or.cond23, label %bb.eg, label %bb.ek

bb.eg:                                            ; preds = %bb.ef
  %i.blt = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.blu = getelementptr inbounds nuw i8, ptr %0, i64 1972
  store i32 %i.blt, ptr %i.blu, align 4, !tbaa !102
  %.not516.a = icmp eq i32 %i.blt, 0
  br i1 %.not516.a, label %.thread595, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.blv = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.blw = getelementptr inbounds nuw i8, ptr %0, i64 1976
  store i32 %i.blv, ptr %i.blw, align 8, !tbaa !102
  %.not517 = icmp eq i32 %i.blv, 0
  br i1 %.not517, label %.thread595, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.blx = icmp ugt i32 %3, 3
  br i1 %i.blx, label %bb.ej, label %.thread595.loopexit692

bb.ej:                                            ; preds = %bb.ei
  %i.bly = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.blz = getelementptr inbounds nuw i8, ptr %0, i64 1980
  store i32 %i.bly, ptr %i.blz, align 4, !tbaa !102
  %i.bma = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bmb = getelementptr inbounds nuw i8, ptr %0, i64 1984
  store i32 %i.bma, ptr %i.bmb, align 8, !tbaa !102
  br label %.thread595.loopexit692

.thread595.loopexit692:                           ; preds = %bb.ej, %bb.ei
  %i.bmc = getelementptr inbounds nuw i8, ptr %0, i64 153252
  store <4 x float> splat (float 1.024000e+03), ptr %i.bmc, align 4, !tbaa !101
  br label %.thread595

bb.ek:                                            ; preds = %bb.ef
  %i.bmd = icmp eq i32 %1, 16422
  br i1 %i.bmd, label %bb.el, label %.thread595

bb.el:                                            ; preds = %bb.ek
  %i.bme = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.bmf = load ptr, ptr %i.bme, align 8, !tbaa !88 ; 2 uses
  %i.bmg = load ptr, ptr %i.bmf, align 8, !tbaa !90
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.bmg, i64 32
  %i.bmi = load ptr, ptr %i.bmh, align 8
  %i.bmj = tail call noundef i32 %i.bmi(ptr noundef nonnull align 8 dereferenceable(8) %i.bmf, i64 noundef 44, i32 noundef 1), !call_target !99 ; 0 uses
  %i.bmk = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bml = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store i32 %i.bmk, ptr %i.bml, align 8, !tbaa !182
  br label %.thread595

.thread595:                                       ; preds = %sub_0598, %.thread595.loopexit692, %.thread595.loopexit691, %.preheader, %bb.bs, %bb.eg, %bb.eh, %bb.eb, %bb.ec, %._crit_edge, %.thread, %bb.an, %bb.x, %bb.y, %bb.d, %bb.c, %bb.aa, %bb.ae, %bb.ah, %bb.bo, %bb.bw, %bb.by, %bb.cc, %.tail597, %bb.cf, %bb.ce, %bb.ca, %bb.bx, %bb.bu, %bb.ct, %bb.cs, %bb.cr, %.thread587, %bb.ee, %bb.ed, %bb.ek, %bb.el, %bb.cu, %bb.cp, %bb.cm, %bb.bq, %bb.br, %bb.ag, %bb.ac, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #7

declare noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare noundef i32 @_Z29libraw_tagtype_dataunit_bytesi(i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_abstract_datastream", file: !91, line: 95, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26LibRaw_abstract_datastream")
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 short", !12, i64 0}
!14 = !{!"short", !8, i64 0}
!15 = !{!"double", !8, i64 0}
!16 = !{!"_ZTS20libraw_image_sizes_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !14, i64 12, !14, i64 14, !9, i64 16, !15, i64 24, !9, i64 32, !8, i64 36, !14, i64 164, !8, i64 166}
!17 = !{!"p1 omnipotent char", !12, i64 0}
!18 = !{!"_ZTS16libraw_iparams_t", !8, i64 0, !8, i64 4, !8, i64 68, !8, i64 132, !8, i64 196, !8, i64 260, !9, i64 324, !9, i64 328, !9, i64 332, !9, i64 336, !9, i64 340, !9, i64 344, !8, i64 348, !8, i64 384, !8, i64 420, !9, i64 428, !17, i64 432}
!19 = !{!"float", !8, i64 0}
!20 = !{!"_ZTS18libraw_nikonlens_t", !19, i64 0, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7}
!21 = !{!"_ZTS16libraw_dnglens_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12}
!22 = !{!"long long", !8, i64 0}
!23 = !{!"_ZTS24libraw_makernotes_lens_t", !22, i64 0, !8, i64 8, !14, i64 136, !14, i64 138, !22, i64 144, !14, i64 152, !14, i64 154, !8, i64 156, !14, i64 220, !8, i64 222, !8, i64 238, !19, i64 256, !19, i64 260, !19, i64 264, !19, i64 268, !19, i64 272, !19, i64 276, !19, i64 280, !19, i64 284, !19, i64 288, !19, i64 292, !19, i64 296, !19, i64 300, !19, i64 304, !19, i64 308, !19, i64 312, !22, i64 320, !8, i64 328, !22, i64 456, !8, i64 464, !22, i64 592, !8, i64 600, !14, i64 728, !19, i64 732}
!24 = !{!"_ZTS17libraw_lensinfo_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !8, i64 20, !8, i64 148, !8, i64 276, !8, i64 404, !14, i64 532, !20, i64 536, !21, i64 544, !23, i64 560}
!25 = !{!"_ZTS13libraw_area_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!26 = !{!"_ZTS25libraw_canon_makernotes_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !8, i64 16, !9, i64 32, !8, i64 36, !14, i64 52, !14, i64 54, !8, i64 56, !14, i64 58, !14, i64 60, !14, i64 62, !14, i64 64, !14, i64 66, !14, i64 68, !14, i64 70, !14, i64 72, !14, i64 74, !14, i64 76, !14, i64 78, !14, i64 80, !14, i64 82, !9, i64 84, !19, i64 88, !14, i64 92, !14, i64 94, !14, i64 96, !14, i64 98, !9, i64 100, !14, i64 104, !9, i64 108, !9, i64 112, !14, i64 116, !9, i64 120, !25, i64 124, !25, i64 132, !25, i64 140, !25, i64 148, !25, i64 156, !8, i64 164}
!27 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!28 = !{!"_ZTS25libraw_nikon_makernotes_t", !15, i64 0, !14, i64 8, !14, i64 10, !8, i64 12, !8, i64 19, !8, i64 20, !8, i64 21, !8, i64 34, !8, i64 54, !8, i64 58, !8, i64 62, !8, i64 66, !8, i64 67, !8, i64 68, !8, i64 69, !8, i64 70, !8, i64 71, !8, i64 73, !8, i64 74, !8, i64 75, !8, i64 76, !8, i64 77, !8, i64 78, !8, i64 82, !8, i64 86, !14, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !8, i64 112, !8, i64 144, !8, i64 145, !8, i64 146, !9, i64 148, !9, i64 152, !9, i64 156, !8, i64 160, !8, i64 162, !14, i64 170, !27, i64 172, !14, i64 180, !14, i64 182, !14, i64 184, !9, i64 188, !8, i64 192, !8, i64 212, !9, i64 232, !8, i64 236, !9, i64 248, !17, i64 256, !14, i64 264, !14, i64 266, !8, i64 268, !14, i64 270, !15, i64 272, !15, i64 280, !15, i64 288}
!29 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !9, i64 0, !15, i64 8, !8, i64 16, !8, i64 24, !8, i64 88, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !8, i64 168, !8, i64 200, !9, i64 264, !8, i64 268, !8, i64 276, !8, i64 288}
!30 = !{!"_ZTS18libraw_fuji_info_t", !19, i64 0, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !14, i64 12, !14, i64 14, !14, i64 16, !14, i64 18, !8, i64 20, !8, i64 53, !19, i64 88, !14, i64 92, !14, i64 94, !8, i64 96, !14, i64 100, !9, i64 104, !9, i64 108, !14, i64 112, !8, i64 114, !14, i64 120, !14, i64 122, !14, i64 124, !14, i64 126, !14, i64 128, !9, i64 132, !14, i64 136, !8, i64 138, !8, i64 151, !8, i64 156, !9, i64 164, !14, i64 168, !9, i64 172, !14, i64 176, !8, i64 178, !8, i64 196, !9, i64 324, !9, i64 328, !9, i64 332, !8, i64 336, !9, i64 344}
!31 = !{!"_ZTS27libraw_olympus_makernotes_t", !8, i64 0, !14, i64 6, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !8, i64 64, !8, i64 72, !14, i64 82, !8, i64 84, !14, i64 88, !14, i64 90, !8, i64 92, !8, i64 352, !14, i64 392, !8, i64 394, !8, i64 396, !8, i64 404, !14, i64 416, !14, i64 418, !14, i64 420, !14, i64 422, !15, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !9, i64 452, !14, i64 456, !14, i64 458}
!32 = !{!"_ZTS18libraw_sony_info_t", !14, i64 0, !8, i64 2, !8, i64 3, !9, i64 4, !8, i64 8, !9, i64 12, !8, i64 16, !8, i64 17, !14, i64 18, !8, i64 20, !8, i64 24, !8, i64 25, !14, i64 26, !8, i64 28, !8, i64 38, !8, i64 39, !8, i64 40, !14, i64 48, !8, i64 50, !8, i64 51, !8, i64 52, !14, i64 54, !9, i64 56, !14, i64 60, !8, i64 62, !14, i64 66, !14, i64 68, !14, i64 70, !14, i64 72, !14, i64 74, !14, i64 76, !14, i64 78, !9, i64 80, !19, i64 84, !14, i64 88, !9, i64 92, !9, i64 96, !14, i64 100, !8, i64 102, !9, i64 124, !14, i64 128, !9, i64 132, !8, i64 136, !8, i64 137, !14, i64 138, !14, i64 140, !14, i64 142, !14, i64 144, !14, i64 146, !14, i64 148, !14, i64 150, !14, i64 152, !14, i64 154, !9, i64 156, !14, i64 160, !8, i64 162, !19, i64 180}
!33 = !{!"_ZTS25libraw_kodak_makernotes_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !8, i64 12, !8, i64 48, !8, i64 84, !8, i64 120, !8, i64 156, !8, i64 192, !14, i64 228, !14, i64 230, !14, i64 232, !14, i64 234, !19, i64 236, !19, i64 240}
!34 = !{!"_ZTS29libraw_panasonic_makernotes_t", !14, i64 0, !14, i64 2, !8, i64 4, !9, i64 36, !19, i64 40, !8, i64 44, !14, i64 56, !14, i64 58, !9, i64 60, !9, i64 64}
!35 = !{!"_ZTS26libraw_pentax_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !14, i64 12, !9, i64 16, !9, i64 20, !14, i64 24, !8, i64 26, !14, i64 30, !8, i64 32, !8, i64 33, !14, i64 34}
!36 = !{!"_ZTS22libraw_p1_makernotes_t", !8, i64 0, !8, i64 64, !8, i64 128, !8, i64 384}
!37 = !{!"_ZTS25libraw_ricoh_makernotes_t", !14, i64 0, !8, i64 4, !8, i64 12, !14, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !14, i64 40, !14, i64 42, !14, i64 44, !14, i64 46, !14, i64 48, !14, i64 50, !15, i64 56, !15, i64 64}
!38 = !{!"_ZTS27libraw_samsung_makernotes_t", !8, i64 0, !8, i64 16, !8, i64 32, !8, i64 40, !15, i64 88, !9, i64 96, !8, i64 100}
!39 = !{!"_ZTS24libraw_metadata_common_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !19, i64 40, !19, i64 44, !19, i64 48, !19, i64 52, !19, i64 56, !19, i64 60, !14, i64 64, !8, i64 66, !19, i64 196, !8, i64 200, !9, i64 296}
!40 = !{!"_ZTS19libraw_makernotes_t", !26, i64 0, !28, i64 168, !29, i64 464, !30, i64 848, !31, i64 1200, !32, i64 1664, !33, i64 1848, !34, i64 2092, !35, i64 2160, !36, i64 2196, !37, i64 2648, !38, i64 2720, !39, i64 2856}
!41 = !{!"_ZTS21libraw_shootinginfo_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !14, i64 12, !8, i64 14, !8, i64 78}
!42 = !{!"_ZTS22libraw_output_params_t", !8, i64 0, !8, i64 16, !8, i64 32, !8, i64 64, !8, i64 112, !19, i64 128, !19, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !9, i64 160, !17, i64 168, !17, i64 176, !17, i64 184, !17, i64 192, !9, i64 200, !9, i64 204, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220, !8, i64 224, !9, i64 240, !9, i64 244, !19, i64 248, !19, i64 252, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !19, i64 288, !19, i64 292, !9, i64 296, !9, i64 300}
!43 = !{!"any p2 pointer", !12, i64 0}
!44 = !{!"p2 omnipotent char", !43, i64 0}
!45 = !{!"_ZTS26libraw_raw_unpack_params_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !19, i64 28, !8, i64 32, !44, i64 40}
!46 = !{!"_ZTS5ph1_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !19, i64 32}
!47 = !{!"_ZTS19libraw_dng_levels_t", !9, i64 0, !8, i64 4, !9, i64 16420, !8, i64 16424, !19, i64 32840, !8, i64 32844, !8, i64 32860, !8, i64 32868, !9, i64 32884, !8, i64 32888, !8, i64 32904, !19, i64 32920, !19, i64 32924, !8, i64 32928}
!48 = !{!"_ZTS18libraw_colordata_t", !8, i64 0, !8, i64 131072, !9, i64 147488, !9, i64 147492, !9, i64 147496, !8, i64 147500, !19, i64 147516, !19, i64 147520, !8, i64 147524, !8, i64 147652, !8, i64 147668, !8, i64 147684, !8, i64 147732, !8, i64 147780, !8, i64 147828, !46, i64 147876, !19, i64 147912, !19, i64 147916, !8, i64 147920, !8, i64 147984, !8, i64 148048, !8, i64 148112, !8, i64 148176, !8, i64 148193, !12, i64 148264, !9, i64 148272, !8, i64 148276, !8, i64 148308, !47, i64 148648, !8, i64 181624, !8, i64 185720, !9, i64 187000, !8, i64 187004, !9, i64 187076, !9, i64 187080}
!49 = !{!"long", !8, i64 0}
!50 = !{!"_ZTS17libraw_gps_info_t", !8, i64 0, !8, i64 12, !8, i64 24, !19, i64 36, !8, i64 40, !8, i64 41, !8, i64 42, !8, i64 43, !8, i64 44}
!51 = !{!"_ZTS17libraw_imgother_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !49, i64 16, !9, i64 24, !8, i64 28, !50, i64 156, !8, i64 204, !8, i64 716, !8, i64 780}
!52 = !{!"_ZTS24LibRaw_thumbnail_formats", !8, i64 0}
!53 = !{!"_ZTS18libraw_thumbnail_t", !52, i64 0, !14, i64 4, !14, i64 6, !9, i64 8, !9, i64 12, !17, i64 16}
!54 = !{!"_ZTS23libraw_thumbnail_list_t", !9, i64 0, !8, i64 8}
!55 = !{!"p1 float", !12, i64 0}
!56 = !{!"_ZTS31libraw_internal_output_params_t", !9, i64 0, !9, i64 4, !9, i64 8, !14, i64 12, !14, i64 14}
!57 = !{!"_ZTS16libraw_rawdata_t", !12, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !13, i64 56, !13, i64 64, !18, i64 72, !16, i64 512, !56, i64 696, !48, i64 712}
!58 = !{!"_ZTS13libraw_data_t", !13, i64 0, !16, i64 8, !18, i64 192, !24, i64 632, !40, i64 1928, !41, i64 5088, !42, i64 5232, !45, i64 5536, !9, i64 5584, !9, i64 5588, !48, i64 5592, !51, i64 192680, !53, i64 193480, !54, i64 193504, !57, i64 193768, !12, i64 381568}
!59 = !{!"p1 _ZTS10LibRaw_TLS", !12, i64 0}
!60 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !12, i64 0}
!61 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!62 = !{!"_ZTS15internal_data_t", !60, i64 0, !61, i64 8, !9, i64 16, !17, i64 24, !22, i64 32, !22, i64 40, !8, i64 48}
!63 = !{!"p1 int", !12, i64 0}
!64 = !{!"_ZTS13output_data_t", !63, i64 0, !63, i64 8}
!65 = !{!"_ZTS15identify_data_t", !9, i64 0, !22, i64 8, !22, i64 16, !9, i64 24, !9, i64 28, !9, i64 32}
!66 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !8, i64 0}
!67 = !{!"_ZTS12pana8_tags_t", !8, i64 0, !8, i64 24, !14, i64 36, !8, i64 38, !8, i64 46, !8, i64 80, !8, i64 114, !14, i64 148, !14, i64 150, !8, i64 152, !8, i64 192, !8, i64 204, !8, i64 224, !8, i64 234}
!68 = !{!"_ZTS15unpacker_data_t", !14, i64 0, !8, i64 2, !8, i64 10, !9, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !22, i64 72, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !66, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !22, i64 144, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !9, i64 184, !67, i64 192, !8, i64 440, !9, i64 2488, !9, i64 2492, !14, i64 2496, !14, i64 2498, !9, i64 2500, !9, i64 2504, !9, i64 2508, !9, i64 2512, !9, i64 2516, !9, i64 2520, !9, i64 2524, !8, i64 2528, !14, i64 2608}
!69 = !{!"_ZTS22libraw_internal_data_t", !62, i64 0, !56, i64 64, !64, i64 80, !65, i64 96, !68, i64 136}
!70 = !{!"p1 _ZTS6decode", !12, i64 0}
!71 = !{!"_ZTS13libraw_memmgr", !43, i64 0, !9, i64 8}
!72 = !{!"_ZTS18libraw_callbacks_t", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144}
!73 = !{!"_ZTS6LibRaw", !58, i64 8, !59, i64 381584, !69, i64 381592, !8, i64 384344, !70, i64 433496, !70, i64 433504, !8, i64 433512, !71, i64 768232, !72, i64 768248, !8, i64 768400, !8, i64 768416, !8, i64 768432, !12, i64 768448, !12, i64 768456, !12, i64 768464, !49, i64 768472, !12, i64 768480, !12, i64 768488, !12, i64 768496, !12, i64 768504}
!74 = !{!14, !14, i64 0}
!75 = !{!8, !8, i64 0}
!76 = !{!73, !19, i64 4800}
!77 = !{!73, !19, i64 1488}
!78 = !{!73, !19, i64 1456}
!79 = !{!73, !19, i64 1460}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!73, !9, i64 2048}
!82 = !{!73, !19, i64 4988}
!83 = !{!73, !9, i64 2044}
!84 = !{!73, !14, i64 1420}
!85 = !{!73, !22, i64 1200}
!86 = !{!73, !14, i64 1338}
!87 = !{!73, !14, i64 1336}
!88 = !{!73, !60, i64 381592}
!89 = !{!"vtable pointer", !7, i64 0}
!90 = !{!89, !89, i64 0}
!91 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_datastream.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "505b914805f57d87ebbd6647c463dab8")
!92 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !0, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!94 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_types.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "b83e9769365a38f23d349f0ab8a63a99")
!95 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT64", file: !94, line: 109, baseType: !95)
!97 = !{!92, !93, !96, !92}
!98 = !DISubroutineType(types: !97)
!99 = !DISubprogram(name: "seek", linkageName: "_ZN26LibRaw_abstract_datastream4seekExi", scope: !0, file: !91, line: 102, type: !98, scopeLine: 102, containingType: !0, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!100 = !{!73, !14, i64 1928}
!101 = !{!19, !19, i64 0}
!102 = !{!9, !9, i64 0}
!103 = !{!73, !9, i64 1940}
!104 = !{!73, !22, i64 1344}
!105 = !{!73, !14, i64 1352}
!106 = !{!73, !14, i64 1354}
!107 = distinct !{!107, !80}
!108 = distinct !{!108, !80}
!109 = !{!73, !14, i64 2028}
!110 = !{!73, !14, i64 2030}
!111 = !{!73, !14, i64 2052}
!112 = !{!73, !14, i64 5096}
!113 = !{!73, !14, i64 5098}
!114 = !{!73, !14, i64 2032}
!115 = !{!73, !14, i64 5100}
!116 = !{!73, !14, i64 5102}
!117 = !{!73, !14, i64 5104}
!118 = !{!73, !19, i64 1480}
!119 = !{!73, !19, i64 1484}
!120 = !{!73, !14, i64 5108}
!121 = !{!73, !14, i64 2034}
!122 = distinct !{!122, !80}
!123 = distinct !{!123, !80}
!124 = distinct !{!124, !80}
!125 = distinct !{!125, !80}
!126 = !{!73, !22, i64 381696}
!127 = distinct !{!127, !80}
!128 = !{!73, !19, i64 4848}
!129 = !{!73, !19, i64 192688}
!130 = !{!73, !19, i64 192692}
!131 = !{!73, !9, i64 2036}
!132 = !{!73, !9, i64 192712}
!133 = !{!73, !19, i64 4796}
!134 = !{!73, !19, i64 4792}
!135 = !{!73, !19, i64 1492}
!136 = !{!73, !19, i64 192696}
!137 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!139 = !{!138, !93, !138, !92}
!140 = !DISubroutineType(types: !139)
!141 = !DISubprogram(name: "gets", linkageName: "_ZN26LibRaw_abstract_datastream4getsEPci", scope: !0, file: !91, line: 106, type: !140, scopeLine: 106, containingType: !0, virtualIndex: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!143 = !DIFile(filename: "/usr/lib/llvm-24/lib/clang/24/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!144 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !143, line: 18, baseType: !144)
!146 = !{!92, !93, !142, !145, !145}
!147 = !DISubroutineType(types: !146)
!148 = !DISubprogram(name: "read", linkageName: "_ZN26LibRaw_abstract_datastream4readEPvmm", scope: !0, file: !91, line: 101, type: !147, scopeLine: 101, containingType: !0, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!149 = !{!73, !9, i64 5088}
!150 = !{!"_ZTS20libraw_afinfo_item_t", !9, i64 0, !14, i64 4, !9, i64 8, !9, i64 12, !17, i64 16}
!151 = !{!150, !9, i64 0}
!152 = !{!73, !14, i64 381728}
!153 = !{!150, !14, i64 4}
!154 = !{!150, !9, i64 12}
!155 = !{!96, !93}
!156 = !DISubroutineType(types: !155)
!157 = !DISubprogram(name: "tell", linkageName: "_ZN26LibRaw_abstract_datastream4tellEv", scope: !0, file: !91, line: 103, type: !156, scopeLine: 103, containingType: !0, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!158 = !{!150, !17, i64 16}
!159 = !{!"_ZTS21libraw_static_table_t", !63, i64 0, !9, i64 8}
!160 = !{!159, !9, i64 8}
!161 = !{!159, !63, i64 0}
!162 = !{!73, !22, i64 381760}
!163 = !{!73, !14, i64 16}
!164 = !{!73, !14, i64 18}
!165 = !{!73, !9, i64 544}
!166 = !{!73, !14, i64 2040}
!167 = !{!73, !14, i64 180}
end_hunk_3
