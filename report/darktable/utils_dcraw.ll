inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 39
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.libraw_static_table_t = type <{ ptr, i32, [4 x i8] }>

$_ZTI17LibRaw_exceptions = comdat any

$_ZTS17LibRaw_exceptions = comdat any

@_ZZN6LibRaw4fcolEiiE6filter = internal unnamed_addr constant [16 x [16 x i8]] [[16 x i8] c"\02\01\01\03\02\03\02\00\03\02\03\00\01\02\01\00", [16 x i8] c"\00\03\00\02\00\01\03\01\00\01\01\02\00\03\03\02", [16 x i8] c"\02\03\03\02\03\01\01\03\03\01\02\01\02\00\00\03", [16 x i8] c"\00\01\00\01\00\02\00\02\02\00\03\00\01\03\02\01", [16 x i8] c"\03\01\01\02\00\01\00\02\01\03\01\03\00\01\03\00", [16 x i8] c"\02\00\00\03\03\02\03\01\02\00\02\00\03\02\02\01", [16 x i8] c"\02\03\03\01\02\01\02\01\02\01\01\02\03\00\00\01", [16 x i8] c"\01\00\00\02\03\00\00\03\00\03\00\03\02\01\02\03", [16 x i8] c"\02\03\03\01\01\02\01\00\03\02\03\00\02\03\01\03", [16 x i8] c"\01\00\02\00\03\00\03\02\00\01\01\02\00\01\00\02", [16 x i8] c"\00\01\01\03\03\02\02\01\01\03\03\00\02\01\03\02", [16 x i8] c"\02\03\02\00\00\01\03\00\02\00\01\02\03\00\01\00", [16 x i8] c"\01\03\01\02\03\02\03\02\00\02\00\01\01\00\03\00", [16 x i8] c"\00\02\00\03\01\00\00\01\01\03\03\02\03\02\02\01", [16 x i8] c"\02\01\03\02\03\01\02\01\00\03\00\02\00\02\00\02", [16 x i8] c"\00\03\01\00\00\02\00\03\02\01\03\01\01\03\01\03"], align 16
@_ZTI17LibRaw_exceptions = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTS17LibRaw_exceptions }, comdat, align 8
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTS17LibRaw_exceptions = linkonce_odr constant [20 x i8] c"17LibRaw_exceptions\00", comdat, align 1
@_ZN16LibRaw_constants7xyz_rgbE = external local_unnamed_addr constant [3 x [3 x double]], align 16
@_ZN6LibRaw22tagtype_dataunit_bytesE = external local_unnamed_addr global %class.libraw_static_table_t, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -128, 128) i32 @_ZN6LibRaw4fcolEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  switch i32 %i.b, label %bb.d [
    i32 1, label %bb.b
    i32 9, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i16, ptr %i.c, align 8, !tbaa !74
  %i.e = zext i16 %i.d to i32
  %i.f = add nsw i32 %1, %i.e
  %i.g = and i32 %i.f, 15
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr @_ZZN6LibRaw4fcolEiiE6filter, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.k = load i16, ptr %i.j, align 2, !tbaa !75
  %i.l = zext i16 %i.k to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = and i32 %i.m, 15
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !76
  %i.r = sext i8 %i.q to i32
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 548
  %3 = add nsw i32 %1, 6
  %4 = srem i32 %3, 6
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [6 x i8], ptr %i.s, i64 %5
  %7 = add nsw i32 %2, 6
  %8 = srem i32 %7, 6
  %i.t = sext i32 %8 to i64
  %i.u = getelementptr inbounds i8, ptr %6, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !76
  %i.w = sext i8 %i.v to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.x = shl i32 %1, 1
  %i.y = and i32 %i.x, 14
  %i.z = and i32 %2, 1
  %i.aa = or disjoint i32 %i.y, %i.z
  %i.ab = shl nuw nsw i32 %i.aa, 1
  %i.ac = lshr i32 %i.b, %i.ab
  %i.ad = and i32 %i.ac, 3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.r, %bb.b ], [ %i.w, %bb.c ], [ %i.ad, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @memchr(ptr noundef %0, i32 noundef 0, i64 noundef %1) #18 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = select i1 %.not, i64 %1, i64 %i.d
  ret i64 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef ptr @_ZN6LibRaw6memmemEPcmS0_m(ptr nofree noundef readonly %0, i64 noundef %1, ptr nofree noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call ptr @memmem(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #18
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @memmem(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define noundef ptr @_ZN6LibRaw10strcasestrEPcPKc(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !76
  %.not10 = icmp eq i8 %i.a, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.011 = phi ptr [ %0, %.lr.ph ], [ %i.d, %bb.c ] ; 3 uses
  %i.c = tail call i32 @strncasecmp(ptr noundef nonnull %.011, ptr noundef nonnull %1, i64 noundef %i.b) #18
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.011, i64 1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !76
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %.08 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %.011, %bb.b ]
  ret ptr %.08
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @_ZN6LibRaw8initdataEv(ptr nofree noundef nonnull writeonly align 8 dereferenceable(768512) initializes((16, 28), (48, 52), (204, 205), (268, 269), (544, 548), (620, 621), (153096, 153100), (153520, 153521), (192688, 192704), (192892, 192893), (193404, 193405), (381670, 381672), (381696, 381704), (381712, 381720), (381738, 381740), (381828, 381832), (433512, 768232)) %0) local_unnamed_addr #7 align 2 {
.preheader.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 -1, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 -1, ptr %i.c, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 381716
  store i32 -1, ptr %i.d, align 4, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 381738
  store i16 0, ptr %i.e, align 2, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 381828
  store i32 0, ptr %i.f, align 4, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 381670
  store i16 0, ptr %i.g, align 2, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 0, ptr %i.h, align 8, !tbaa !84
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 153520
  store i8 0, ptr %i.i, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i8 0, ptr %i.j, align 4, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i8 0, ptr %i.k, align 4, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192688
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 193404
  store i8 0, ptr %i.m, align 4, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192892
  store i8 0, ptr %i.n, align 4, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 620
  store i8 0, ptr %i.o, align 4, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 381696
  store i64 0, ptr %i.p, align 8, !tbaa !85
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 381712
  store i32 0, ptr %i.q, align 8, !tbaa !86
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 433512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(334720) %i.r, i8 0, i64 334720, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 433832
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i16 -1, ptr %i.s, align 8, !tbaa !87
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 433664
  store i16 -1, ptr %i.t, align 8, !tbaa !87
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 466888
  store <4 x float> splat (float 1.000000e+00), ptr %i.u, align 8, !tbaa !89
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 467304
  store i16 -1, ptr %i.v, align 8, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 467136
  store i16 -1, ptr %i.w, align 8, !tbaa !87
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 500360
  store <4 x float> splat (float 1.000000e+00), ptr %i.x, align 8, !tbaa !89
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 500776
  store i16 -1, ptr %i.y, align 8, !tbaa !87
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 500608
  store i16 -1, ptr %i.z, align 8, !tbaa !87
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 533832
  store <4 x float> splat (float 1.000000e+00), ptr %i.aa, align 8, !tbaa !89
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 534248
  store i16 -1, ptr %i.ab, align 8, !tbaa !87
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 534080
  store i16 -1, ptr %i.ac, align 8, !tbaa !87
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 567304
  store <4 x float> splat (float 1.000000e+00), ptr %i.ad, align 8, !tbaa !89
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 567720
  store i16 -1, ptr %i.ae, align 8, !tbaa !87
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 567552
  store i16 -1, ptr %i.af, align 8, !tbaa !87
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 600776
  store <4 x float> splat (float 1.000000e+00), ptr %i.ag, align 8, !tbaa !89
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 601192
  store i16 -1, ptr %i.ah, align 8, !tbaa !87
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 601024
  store i16 -1, ptr %i.ai, align 8, !tbaa !87
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 634248
  store <4 x float> splat (float 1.000000e+00), ptr %i.aj, align 8, !tbaa !89
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 634664
  store i16 -1, ptr %i.ak, align 8, !tbaa !87
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 634496
  store i16 -1, ptr %i.al, align 8, !tbaa !87
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 667720
  store <4 x float> splat (float 1.000000e+00), ptr %i.am, align 8, !tbaa !89
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 668136
  store i16 -1, ptr %i.an, align 8, !tbaa !87
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 667968
  store i16 -1, ptr %i.ao, align 8, !tbaa !87
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 701192
  store <4 x float> splat (float 1.000000e+00), ptr %i.ap, align 8, !tbaa !89
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 701608
  store i16 -1, ptr %i.aq, align 8, !tbaa !87
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 701440
  store i16 -1, ptr %i.ar, align 8, !tbaa !87
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 734664
  store <4 x float> splat (float 1.000000e+00), ptr %i.as, align 8, !tbaa !89
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 735080
  store i16 -1, ptr %i.at, align 8, !tbaa !87
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 734912
  store i16 -1, ptr %i.au, align 8, !tbaa !87
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 768136
  store <4 x float> splat (float 1.000000e+00), ptr %i.av, align 8, !tbaa !89
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader.preheader
  %index = phi i64 [ 0, %.preheader.preheader ], [ %index.next.3, %vector.body ] ; 5 uses
  %vec.ind = phi <16 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>, %.preheader.preheader ], [ %vec.ind.next.3, %vector.body ] ; 17 uses
  %step.add = add <16 x i16> %vec.ind, splat (i16 16)
  %step.add.2 = add <16 x i16> %vec.ind, splat (i16 32)
  %step.add.3 = add <16 x i16> %vec.ind, splat (i16 48)
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %index ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  store <16 x i16> %vec.ind, ptr %i.ax, align 8, !tbaa !81
  store <16 x i16> %step.add, ptr %i.ay, align 8, !tbaa !81
  store <16 x i16> %step.add.2, ptr %i.az, align 8, !tbaa !81
  store <16 x i16> %step.add.3, ptr %i.ba, align 8, !tbaa !81
end_hunk_0
