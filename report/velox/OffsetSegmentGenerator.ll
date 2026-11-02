Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/OffsetSegmentGenerator?download=true
inline.NumInlined: 95
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.geos::geom::Coordinate" = type { double, double, double }
%"class.geos::geom::LineSegment" = type { %"class.geos::geom::Coordinate", %"class.geos::geom::Coordinate" }

$_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE = comdat any

@_ZN4geos9operation6buffer22OffsetSegmentGenerator33CURVE_VERTEX_SNAP_DISTANCE_FACTORE = local_unnamed_addr constant double f0x3EB0C6F7A0B5ED8D, align 8
@_ZN4geos9operation6buffer22OffsetSegmentGenerator32OFFSET_SEGMENT_SEPARATION_FACTORE = local_unnamed_addr constant double 1.000000e-03, align 8
@_ZN4geos9operation6buffer22OffsetSegmentGenerator39INSIDE_TURN_VERTEX_SNAP_DISTANCE_FACTORE = local_unnamed_addr constant double 1.000000e-03, align 8
@_ZN4geos9operation6buffer22OffsetSegmentGenerator15SIMPLIFY_FACTORE = local_unnamed_addr constant double 1.000000e+02, align 8

@_ZN4geos9operation6buffer22OffsetSegmentGeneratorC1EPKNS_4geom14PrecisionModelERKNS1_16BufferParametersEd = unnamed_addr alias void (ptr, ptr, ptr, double), ptr @_ZN4geos9operation6buffer22OffsetSegmentGeneratorC2EPKNS_4geom14PrecisionModelERKNS1_16BufferParametersEd

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGeneratorC2EPKNS_4geom14PrecisionModelERKNS1_16BufferParametersEd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(484) initializes((0, 8), (16, 20)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(25) %2, double noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store double 0.000000e+00, ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 1, ptr %i.a, align 8, !tbaa !26
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #9 ; 5 uses
  invoke void @_ZN4geos4geom23CoordinateArraySequenceC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #10
  resume { ptr, i32 } %i.c

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.d, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store double %3, ptr %i.f, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %2, ptr %i.h, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.i, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.j, align 8, !tbaa !30
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.k, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 0, ptr %i.l, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.n, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.p, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.r, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.t, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.v, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.x, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.z, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.ab, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 416
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.ad, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 440
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.af, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.ah, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 0, ptr %i.ai, align 8, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 476
  store i8 0, ptr %i.aj, align 4, !tbaa !57
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i32 0, ptr %i.ak, align 8, !tbaa !58
  %i.al = load i32, ptr %2, align 8, !tbaa !59    ; 2 uses
  %i.am = sitofp i32 %i.al to double
  %i.an = fdiv double f0x3FF921FB54442D18, %i.am  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.an, ptr %i.ao, align 8, !tbaa !35
  %i.ap = icmp sgt i32 %i.al, 7
  br i1 %i.ap, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !36
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 80, ptr %i.a, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  store double %3, ptr %i.f, align 8, !tbaa !28
  %i.at = fmul nnan double %i.an, 5.000000e-01
  %i.au = tail call double @cos(double noundef %i.at) #11
  %i.av = fsub double 1.000000e+00, %i.au
  %i.aw = fmul double %3, %i.av
  store double %i.aw, ptr %0, align 8, !tbaa !25
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !39 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !40
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, %i.ay
  br i1 %.not.i.i.i.i.i, label %bb.g, label %_ZSt8_DestroyIPN4geos4geom10CoordinateES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN4geos4geom10CoordinateES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %bb.f
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN4geos4geom10CoordinateES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, %bb.f
  store ptr %1, ptr %i.e, align 8, !tbaa !41
  %i.bb = fmul double %3, f0x3EB0C6F7A0B5ED8D
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.bb, ptr %i.bc, align 8, !tbaa !42
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator4initEd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(484) initializes((0, 8), (48, 56)) %0, double noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store double %1, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !35
  %i.d = fmul double %i.c, 5.000000e-01
  %i.e = tail call double @cos(double noundef %i.d) #11
  %i.f = fsub double 1.000000e+00, %i.e
  %i.g = fmul double %1, %i.f
  store double %i.g, ptr %0, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27   ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  %.not.i.i.i.i = icmp eq ptr %i.m, %i.k
  br i1 %.not.i.i.i.i, label %_ZN4geos9operation6buffer19OffsetSegmentString5resetEv.exit, label %_ZSt8_DestroyIPN4geos4geom10CoordinateES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN4geos4geom10CoordinateES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.k, ptr %i.l, align 8, !tbaa !40
  br label %_ZN4geos9operation6buffer19OffsetSegmentString5resetEv.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #9 ; 3 uses
  invoke void @_ZN4geos4geom23CoordinateArraySequenceC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.n)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.n, ptr %i.h, align 8, !tbaa !27
  %.pre = load double, ptr %i.a, align 8, !tbaa !28
  br label %_ZN4geos9operation6buffer19OffsetSegmentString5resetEv.exit

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #10
  resume { ptr, i32 } %i.o

_ZN4geos9operation6buffer19OffsetSegmentString5resetEv.exit: ; preds = %bb.b, %_ZSt8_DestroyIPN4geos4geom10CoordinateES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %bb.d
  %i.p = phi double [ %1, %bb.b ], [ %1, %_ZSt8_DestroyIPN4geos4geom10CoordinateES2_EvT_S4_RSaIT0_E.exit.i.i.i.i ], [ %.pre, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29
  store ptr %i.s, ptr %i.q, align 8, !tbaa !41
  %i.t = fmul double %i.p, f0x3EB0C6F7A0B5ED8D
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.t, ptr %i.u, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator16initSideSegmentsERKNS_4geom10CoordinateES6_i(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(484) initializes((232, 280), (472, 476)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 %3, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load double, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.i = icmp eq i32 %3, 1
  %i.j = select i1 %i.i, i32 1, i32 -1
  %i.k = sitofp i32 %i.j to double
  %i.l = fmul double %i.g, %i.k
  %i.m = load <2 x double>, ptr %i.e, align 8, !tbaa !43 ; 3 uses
  %i.n = load <2 x double>, ptr %i.d, align 8, !tbaa !43 ; 3 uses
  %i.o = fsub <2 x double> %i.m, %i.n             ; 3 uses
  %i.p = fmul <2 x double> %i.o, %i.o             ; 2 uses
  %shift = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.p, %shift
  %i.q = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.q)
  %i.r = insertelement <2 x double> poison, double %i.l, i64 0
  %i.s = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.t = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.v = fmul <2 x double> %i.t, %i.u
  %i.w = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fdiv <2 x double> %i.v, %i.w             ; 4 uses
  %i.y = fsub <2 x double> %i.n, %i.x
  %i.z = fadd <2 x double> %i.n, %i.x
  %i.aa = shufflevector <2 x double> %i.y, <2 x double> %i.z, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.aa, ptr %i.h, align 8, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ac = fsub <2 x double> %i.m, %i.x
  %i.ad = fadd <2 x double> %i.m, %i.x
  %i.ae = shufflevector <2 x double> %i.ac, <2 x double> %i.ad, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ae, ptr %i.ab, align 8, !tbaa !43
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator20computeOffsetSegmentERKNS_4geom11LineSegmentEidRS4_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(484) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, i32 noundef %2, double noundef %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 16), (24, 40)) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  %i.b = select i1 %i.a, i32 1, i32 -1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = sitofp i32 %i.b to double
  %i.e = fmul double %3, %i.d
  %i.f = load <2 x double>, ptr %i.c, align 8, !tbaa !43 ; 3 uses
  %i.g = load <2 x double>, ptr %1, align 8, !tbaa !43 ; 3 uses
  %i.h = fsub <2 x double> %i.f, %i.g             ; 3 uses
  %i.i = fmul <2 x double> %i.h, %i.h             ; 2 uses
  %shift = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.i, %shift
  %i.j = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt = tail call double @llvm.sqrt.f64(double %i.j)
  %i.k = insertelement <2 x double> poison, double %i.e, i64 0
  %i.l = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.m = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.o = fmul <2 x double> %i.m, %i.n
  %i.p = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fdiv <2 x double> %i.o, %i.p             ; 4 uses
  %i.r = fsub <2 x double> %i.g, %i.q
  %i.s = fadd <2 x double> %i.g, %i.q
  %i.t = shufflevector <2 x double> %i.r, <2 x double> %i.s, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.t, ptr %4, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.v = fsub <2 x double> %i.f, %i.q
  %i.w = fadd <2 x double> %i.f, %i.q
  %i.x = shufflevector <2 x double> %i.v, <2 x double> %i.w, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.x, ptr %i.u, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator14addNextSegmentERKNS_4geom10CoordinateEb(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 5 uses
  %i.b = load <2 x double>, ptr %i.a, align 8
  %i.c = load <2 x double>, ptr %1, align 8
  %i.d = fcmp oeq <2 x double> %i.b, %i.c         ; 2 uses
  %i.e = extractelement <2 x i1> %i.d, i64 0
  %i.f = extractelement <2 x i1> %i.d, i64 1
  %.0.i.i = select i1 %i.e, i1 %i.f, i1 false
  br i1 %.0.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !44
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !44
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load double, ptr %i.m, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.p = icmp eq i32 %i.l, 1
  %i.q = select i1 %i.p, i32 1, i32 -1
  %i.r = sitofp i32 %i.q to double
  %i.s = fmul double %i.n, %i.r
  %i.t = load <2 x double>, ptr %i.j, align 8, !tbaa !43 ; 3 uses
  %i.u = load <2 x double>, ptr %i.i, align 8, !tbaa !43 ; 3 uses
  %i.v = fsub <2 x double> %i.t, %i.u             ; 3 uses
  %i.w = fmul <2 x double> %i.v, %i.v             ; 2 uses
  %i.x = insertelement <2 x double> poison, double %i.s, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = fmul <2 x double> %i.y, %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !44
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !44
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ae = load <2 x double>, ptr %i.ac, align 8, !tbaa !43 ; 3 uses
  %i.af = load <2 x double>, ptr %i.ab, align 8, !tbaa !43 ; 3 uses
  %i.ag = fsub <2 x double> %i.ae, %i.af          ; 3 uses
  %i.ah = fmul <2 x double> %i.ag, %i.ag          ; 2 uses
  %i.ai = shufflevector <2 x double> %i.w, <2 x double> %i.ah, <2 x i32> <i32 0, i32 2>
  %i.aj = shufflevector <2 x double> %i.w, <2 x double> %i.ah, <2 x i32> <i32 1, i32 3>
  %i.ak = fadd <2 x double> %i.ai, %i.aj
  %i.al = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ak) ; 2 uses
  %i.am = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.an = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fdiv <2 x double> %i.am, %i.an          ; 4 uses
  %i.ap = fsub <2 x double> %i.u, %i.ao
  %i.aq = fadd <2 x double> %i.u, %i.ao
  %i.ar = shufflevector <2 x double> %i.ap, <2 x double> %i.aq, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ar, ptr %i.o, align 8, !tbaa !43
  %i.as = fsub <2 x double> %i.t, %i.ao
  %i.at = fadd <2 x double> %i.t, %i.ao
  %i.au = shufflevector <2 x double> %i.as, <2 x double> %i.at, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.au, ptr %i.aa, align 8, !tbaa !43
  %i.av = fmul <2 x double> %i.y, %i.ag
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ax = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ay = fdiv <2 x double> %i.aw, %i.ax          ; 4 uses
  %i.az = fsub <2 x double> %i.af, %i.ay
  %i.ba = fadd <2 x double> %i.af, %i.ay
  %i.bb = shufflevector <2 x double> %i.az, <2 x double> %i.ba, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.bb, ptr %i.ad, align 8, !tbaa !43
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bd = fsub <2 x double> %i.ae, %i.ay
  %i.be = fadd <2 x double> %i.ae, %i.ay
  %i.bf = shufflevector <2 x double> %i.bd, <2 x double> %i.be, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.bf, ptr %i.bc, align 8, !tbaa !43
  %i.bg = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  switch i32 %i.bg, label %.thread15 [
    i32 -1, label %bb.c
    i32 1, label %bb.e
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.bh = load i32, ptr %i.k, align 8, !tbaa !31
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %.thread13, label %.thread15

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4geos9operation6buffer22OffsetSegmentGenerator12addCollinearEb(ptr noundef nonnull align 8 dereferenceable(484) %0, i1 noundef zeroext %2)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !31
  %i.bk = icmp eq i32 %i.bj, 2
  br i1 %i.bk, label %.thread13, label %.thread15

.thread13:                                        ; preds = %bb.c, %bb.e
  tail call void @_ZN4geos9operation6buffer22OffsetSegmentGenerator14addOutsideTurnEib(ptr noundef nonnull align 8 dereferenceable(484) %0, i32 noundef %i.bg, i1 noundef zeroext %2)
  br label %bb.f

.thread15:                                        ; preds = %bb.b, %bb.c, %bb.e
  tail call void @_ZN4geos9operation6buffer22OffsetSegmentGenerator13addInsideTurnEib(ptr noundef nonnull align 8 dereferenceable(484) %0, i32 poison, i1 zeroext poison)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %.thread15, %.thread13, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator12addCollinearEb(ptr noundef nonnull align 8 dereferenceable(484) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i64, ptr %i.e, align 8, !tbaa !45
  %i.g = icmp ugt i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !36
  %i.l = and i32 %i.k, -2
  %switch = icmp eq i32 %i.l, 2
  br i1 %switch, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 400
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load <1 x double>, ptr %i.s, align 8
  %i.u = load double, ptr %i.q, align 8, !tbaa !49
  %i.v = load double, ptr %i.c, align 8, !tbaa !49 ; 2 uses
  %i.w = fsub double %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.y = load double, ptr %i.x, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.aa = load double, ptr %i.z, align 8, !tbaa !50 ; 2 uses
  %i.ab = fsub double %i.y, %i.aa
  %i.ac = tail call double @atan2(double noundef %i.ab, double noundef %i.w) #11 ; 3 uses
  %i.ad = load double, ptr %i.r, align 8, !tbaa !49
  %i.ae = fsub double %i.ad, %i.v
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ag = load double, ptr %i.af, align 8, !tbaa !50
  %i.ah = fsub double %i.ag, %i.aa
  %i.ai = tail call double @atan2(double noundef %i.ah, double noundef %i.ae) #11 ; 2 uses
  %i.aj = fcmp ugt double %i.ac, %i.ai
  %i.ak = fadd double %i.ac, f0x401921FB54442D18
  %spec.select27.i = select i1 %i.aj, double %i.ac, double %i.ak ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.q)
  %i.am = fsub double %spec.select27.i, %i.ai
  %i.an = tail call double @llvm.fabs.f64(double %i.am) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !35
  %i.aq = fdiv double %i.an, %i.ap
  %i.ar = fadd double %i.aq, 5.000000e-01
  %i.as = fptosi double %i.ar to i32              ; 3 uses
  %i.at = icmp slt i32 %i.as, 1
  br i1 %i.at, label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = uitofp nneg i32 %i.as to double
  %i.av = fdiv double %i.an, %i.au
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double +qnan, ptr %i.aw, align 16, !tbaa !30
  %i.ax = shufflevector <1 x double> %i.t, <1 x double> poison, <2 x i32> zeroinitializer
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.i, %bb.g
  %.021.us.i = phi i32 [ %i.bh, %.split.us.i ], [ 0, %bb.g ] ; 2 uses
  %i.ay = sub nsw i32 0, %.021.us.i
  %i.az = sitofp i32 %i.ay to double
  %i.ba = fmul double %i.av, %i.az
  %i.bb = fadd double %spec.select27.i, %i.ba     ; 2 uses
  %3 = call double @cos(double noundef %i.bb) #11
  %4 = call double @sin(double noundef %i.bb) #11
  %i.bc = load <2 x double>, ptr %i.c, align 8, !tbaa !43
  %i.bd = insertelement <2 x double> poison, double %3, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %4, i64 1
  %i.bf = fmul <2 x double> %i.ax, %i.be
  %i.bg = fadd <2 x double> %i.bc, %i.bf
  store <2 x double> %i.bg, ptr %2, align 16, !tbaa !43
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.bh = add nuw nsw i32 %.021.us.i, 1           ; 2 uses
  %exitcond25.not.i = icmp eq i32 %i.bh, %i.as
  br i1 %exitcond25.not.i, label %.split23.us.i, label %.split.us.i, !llvm.loop !0

.split23.us.i:                                    ; preds = %.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit

_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit: ; preds = %bb.f, %.split23.us.i
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.r)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator14addOutsideTurnEib(ptr noundef nonnull align 8 dereferenceable(484) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.geos::geom::Coordinate", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 6 uses
  %i.d = load double, ptr %i.b, align 8, !tbaa !49 ; 2 uses
  %i.e = load double, ptr %i.c, align 8, !tbaa !49 ; 2 uses
  %i.f = fsub double %i.d, %i.e                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !50 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !50 ; 2 uses
  %i.k = fsub double %i.h, %i.j                   ; 2 uses
  %i.l = fmul double %i.f, %i.f
  %i.m = fmul double %i.k, %i.k
  %i.n = fadd double %i.l, %i.m
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !28 ; 5 uses
  %i.q = fmul double %i.p, 1.000000e-03
  %i.r = fcmp olt double %sqrt.i, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !36
  switch i32 %i.w, label %bb.j [
    i32 2, label %bb.d
    i32 3, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 448
  call void @_ZN4geos9algorithm12Intersection12intersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.geos::geom::Coordinate") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.y)
  %i.z = load <2 x double>, ptr %3, align 16      ; 3 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  %i.ab = fcmp uno double %i.aa, 0.000000e+00
  %i.ac = extractelement <2 x double> %i.z, i64 1
  %i.ad = fcmp uno double %i.ac, 0.000000e+00
  %or.cond.i.i = select i1 %i.ab, i1 %i.ad, i1 false
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load double, ptr %i.ae, align 16
  %i.ag = fcmp uno double %i.af, 0.000000e+00
  %i.ah = select i1 %or.cond.i.i, i1 %i.ag, i1 false
  br i1 %i.ah, label %..critedge_crit_edge.i, label %bb.e

..critedge_crit_edge.i:                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.t, align 8, !tbaa !46
  %.phi.trans.insert9.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %.pre10.i = load double, ptr %.phi.trans.insert9.i, align 8, !tbaa !52
  br label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.ai = fcmp ugt double %i.p, 0.000000e+00
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = load <2 x double>, ptr %i.x, align 8, !tbaa !43
  %i.ak = fsub <2 x double> %i.z, %i.aj           ; 2 uses
  %i.al = fmul <2 x double> %i.ak, %i.ak          ; 2 uses
  %shift = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.al, %shift
  %i.am = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.am)
  %i.an = call double @llvm.fabs.f64(double %i.p)
  %i.ao = fdiv double %sqrt.i.i, %i.an
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ap = phi double [ %i.ao, %bb.f ], [ 1.000000e+00, %bb.e ]
  %i.aq = load ptr, ptr %i.t, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load double, ptr %i.ar, align 8, !tbaa !52 ; 2 uses
  %i.at = fcmp ugt double %i.ap, %i.as
  br i1 %i.at, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZN4geos9operation6buffer22OffsetSegmentGenerator12addMitreJoinERKNS_4geom10CoordinateERKNS3_11LineSegmentES9_d.exit

.critedge.i:                                      ; preds = %bb.g, %..critedge_crit_edge.i
  %i.av = phi double [ %.pre10.i, %..critedge_crit_edge.i ], [ %i.as, %bb.g ]
  call void @_ZN4geos9operation6buffer22OffsetSegmentGenerator19addLimitedMitreJoinERKNS_4geom11LineSegmentES6_dd(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr nonnull readnone align 8 poison, ptr nonnull readnone align 8 poison, double noundef %i.p, double noundef %i.av)
  br label %_ZN4geos9operation6buffer22OffsetSegmentGenerator12addMitreJoinERKNS_4geom10CoordinateERKNS3_11LineSegmentES9_d.exit

_ZN4geos9operation6buffer22OffsetSegmentGenerator12addMitreJoinERKNS_4geom10CoordinateERKNS3_11LineSegmentES9_d.exit: ; preds = %bb.h, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.m

bb.i:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(48) %i.c)
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  br i1 %2, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %.pre = load double, ptr %i.o, align 8, !tbaa !28
  %.pre2 = load double, ptr %i.b, align 8, !tbaa !49
  %.pre3 = load double, ptr %i.g, align 8, !tbaa !50
  %.pre4 = load double, ptr %i.c, align 8, !tbaa !49
  %.pre5 = load double, ptr %i.i, align 8, !tbaa !50
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ay = phi double [ %.pre5, %bb.k ], [ %i.j, %bb.j ]
  %i.az = phi double [ %.pre4, %bb.k ], [ %i.e, %bb.j ]
  %i.ba = phi double [ %.pre3, %bb.k ], [ %i.h, %bb.j ]
  %i.bb = phi double [ %.pre2, %bb.k ], [ %i.d, %bb.j ]
  %i.bc = phi double [ %.pre, %bb.k ], [ %i.p, %bb.j ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !49 ; 2 uses
  %i.bf = fsub double %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !50 ; 2 uses
  %i.bi = fsub double %i.ba, %i.bh
  %i.bj = tail call double @atan2(double noundef %i.bi, double noundef %i.bf) #11 ; 4 uses
  %i.bk = fsub double %i.az, %i.be
  %i.bl = fsub double %i.ay, %i.bh
  %i.bm = tail call double @atan2(double noundef %i.bl, double noundef %i.bk) #11 ; 3 uses
  %i.bn = icmp eq i32 %1, -1                      ; 2 uses
  %i.bo = fcmp ult double %i.bj, %i.bm
  %i.bp = fcmp ugt double %i.bj, %i.bm
  %.sink29.i = select i1 %i.bn, double f0x401921FB54442D18, double f0xC01921FB54442D18
  %.sink.i = select i1 %i.bn, i1 %i.bp, i1 %i.bo
  %i.bq = fadd double %.sink29.i, %i.bj
  %spec.select27.i = select i1 %.sink.i, double %i.bj, double %i.bq
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  tail call void @_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bd, double noundef %spec.select27.i, double noundef %i.bm, i32 noundef %1, double noundef %i.bc)
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %_ZN4geos9operation6buffer22OffsetSegmentGenerator12addMitreJoinERKNS_4geom10CoordinateERKNS3_11LineSegmentES9_d.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator13addInsideTurnEib(ptr noundef nonnull align 8 dereferenceable(484) %0, i32 %1, i1 zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %4 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i64, ptr %i.f, align 8, !tbaa !45
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.j = load <2 x double>, ptr %i.c, align 8, !tbaa !43
  %i.k = load <2 x double>, ptr %i.d, align 8, !tbaa !43
  %i.l = fsub <2 x double> %i.j, %i.k             ; 2 uses
  %i.m = fmul <2 x double> %i.l, %i.l             ; 2 uses
  %shift = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.m, %shift
  %i.n = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load double, ptr %i.o, align 8, !tbaa !28
  %i.q = fmul double %i.p, 1.000000e-03
  %i.r = fcmp olt double %sqrt.i, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  br i1 %i.r, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !26   ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.w = uitofp nneg i32 %i.u to double
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.y = add nuw nsw i32 %i.u, 1
  %i.z = uitofp nneg i32 %i.y to double
  %i.aa = load <2 x double>, ptr %i.c, align 8, !tbaa !43
  %i.ab = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x double> %i.aa, %i.ac
  %i.ae = load <2 x double>, ptr %i.x, align 8, !tbaa !43
  %i.af = fadd <2 x double> %i.ad, %i.ae
  %i.ag = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fdiv <2 x double> %i.af, %i.ah
  store <2 x double> %i.ai, ptr %3, align 16, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double +qnan, ptr %i.aj, align 16, !tbaa !30
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ak = load i32, ptr %i.t, align 8, !tbaa !26  ; 2 uses
  %i.al = sitofp i32 %i.ak to double
  %i.am = add nsw i32 %i.ak, 1
  %i.an = sitofp i32 %i.am to double
  %i.ao = load <2 x double>, ptr %i.d, align 8, !tbaa !43
  %i.ap = insertelement <2 x double> poison, double %i.al, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x double> %i.ao, %i.aq
  %i.as = load <2 x double>, ptr %i.x, align 8, !tbaa !43
  %i.at = fadd <2 x double> %i.ar, %i.as
  %i.au = insertelement <2 x double> poison, double %i.an, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fdiv <2 x double> %i.at, %i.av
  store <2 x double> %i.aw, ptr %4, align 16, !tbaa !43
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double +qnan, ptr %i.ax, align 16, !tbaa !30
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.ay)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator13addLineEndCapERKNS_4geom10CoordinateES6_(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %4 = alloca %"class.geos::geom::LineSegment", align 8 ; 5 uses
  %5 = alloca %"class.geos::geom::LineSegment", align 8 ; 5 uses
  %6 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %7 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !28 ; 3 uses
  %i.d = load <2 x double>, ptr %1, align 8, !tbaa !43 ; 3 uses
  %i.e = load <2 x double>, ptr %2, align 8, !tbaa !43 ; 5 uses
  %i.f = fsub <2 x double> %i.e, %i.d             ; 6 uses
  %i.g = extractelement <2 x double> %i.f, i64 0
  %foldExtExtBinop = fmul <2 x double> %i.f, %i.f
  %i.h = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.i = extractelement <2 x double> %i.f, i64 1  ; 3 uses
  %i.j = fmul double %i.i, %i.i
  %i.k = fadd double %i.h, %i.j
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.k)
  %i.l = insertelement <2 x double> poison, double %i.c, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x double> %i.f, %i.m
  %i.o = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.q = fdiv <2 x double> %i.n, %i.p             ; 3 uses
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.s = fsub <2 x double> %i.e, %i.r             ; 2 uses
  %i.t = fadd <2 x double> %i.e, %i.r             ; 2 uses
  %i.u = shufflevector <2 x double> %i.d, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.v = shufflevector <4 x double> <double -0.000000e+00, double poison, double +qnan, double -0.000000e+00>, <4 x double> %i.u, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.w = shufflevector <2 x double> %i.q, <2 x double> %i.s, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.x = insertelement <4 x double> %i.w, double -0.000000e+00, i64 2
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = shufflevector <2 x double> %i.t, <2 x double> <double poison, double +qnan>, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.z, ptr %i.y, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ab = fneg double %i.c
  %i.ac = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x double> %i.f, %i.ad
  %i.af = fdiv <2 x double> %i.ae, %i.p           ; 3 uses
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ah = fsub <2 x double> %i.e, %i.ag           ; 2 uses
  %i.ai = fadd <2 x double> %i.e, %i.ag           ; 2 uses
  %i.aj = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = shufflevector <2 x double> %i.q, <2 x double> %i.af, <2 x i32> <i32 1, i32 3>
  %i.al = fsub <2 x double> %i.aj, %i.ak          ; 2 uses
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.an = shufflevector <4 x double> %i.am, <4 x double> %i.x, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ao = fadd <4 x double> %i.v, %i.an
  store <4 x double> %i.ao, ptr %4, align 8, !tbaa !43
  %i.ap = shufflevector <2 x double> %i.af, <2 x double> %i.ah, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.aq = insertelement <4 x double> %i.ap, double -0.000000e+00, i64 2
  %i.ar = shufflevector <2 x double> %i.al, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.as = shufflevector <4 x double> %i.ar, <4 x double> %i.aq, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.at = fadd <4 x double> %i.v, %i.as
  store <4 x double> %i.at, ptr %5, align 8, !tbaa !43
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.av = shufflevector <2 x double> %i.ai, <2 x double> <double poison, double +qnan>, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.av, ptr %i.au, align 8, !tbaa !43
  %i.aw = tail call double @atan2(double noundef %i.i, double noundef %i.g) #11 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !60
  switch i32 %i.ba, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.bc = fadd double %i.aw, f0x3FF921FB54442D18  ; 2 uses
  %i.bd = fadd double %i.aw, f0xBFF921FB54442D18
  %i.be = fsub double %i.bc, %i.bd
  %i.bf = call double @llvm.fabs.f64(double %i.be) ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !35
  %i.bi = fdiv double %i.bf, %i.bh
  %i.bj = fadd double %i.bi, 5.000000e-01
  %i.bk = fptosi double %i.bj to i32              ; 3 uses
  %i.bl = icmp slt i32 %i.bk, 1
  br i1 %i.bl, label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bm = load <1 x double>, ptr %i.b, align 8
  %i.bn = uitofp nneg i32 %i.bk to double
  %i.bo = fdiv double %i.bf, %i.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double +qnan, ptr %i.bp, align 16, !tbaa !30
  %i.bq = shufflevector <1 x double> %i.bm, <1 x double> poison, <2 x i32> zeroinitializer
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.i, %bb.c
  %.021.us.i = phi i32 [ %i.ca, %.split.us.i ], [ 0, %bb.c ] ; 2 uses
  %i.br = sub nsw i32 0, %.021.us.i
  %i.bs = sitofp i32 %i.br to double
  %i.bt = fmul double %i.bo, %i.bs
  %i.bu = fadd double %i.bc, %i.bt                ; 2 uses
  %8 = call double @cos(double noundef %i.bu) #11
  %9 = call double @sin(double noundef %i.bu) #11
  %i.bv = load <2 x double>, ptr %2, align 8, !tbaa !43
  %i.bw = insertelement <2 x double> poison, double %8, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %9, i64 1
  %i.by = fmul <2 x double> %i.bq, %i.bx
  %i.bz = fadd <2 x double> %i.bv, %i.by
  store <2 x double> %i.bz, ptr %3, align 16, !tbaa !43
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.ca = add nuw nsw i32 %.021.us.i, 1           ; 2 uses
  %exitcond25.not.i = icmp eq i32 %i.ca, %i.bk
  br i1 %exitcond25.not.i, label %.split23.us.i, label %.split.us.i, !llvm.loop !0

.split23.us.i:                                    ; preds = %.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit

_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit: ; preds = %bb.b, %.split23.us.i
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.cc = shufflevector <2 x double> %i.ah, <2 x double> %i.ai, <2 x i32> <i32 0, i32 3>
  %i.cd = shufflevector <2 x double> %i.s, <2 x double> %i.t, <2 x i32> <i32 0, i32 3>
  %i.ce = tail call double @llvm.fabs.f64(double %i.c)
  %10 = tail call double @cos(double noundef %i.aw) #11
  %11 = tail call double @sin(double noundef %i.aw) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.cf = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = insertelement <2 x double> poison, double %10, i64 0
  %i.ci = insertelement <2 x double> %i.ch, double %11, i64 1
  %i.cj = fmul <2 x double> %i.cg, %i.ci          ; 2 uses
  %i.ck = fadd <2 x double> %i.cd, %i.cj
  store <2 x double> %i.ck, ptr %6, align 16, !tbaa !43
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double +qnan, ptr %i.cl, align 16, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.cm = fadd <2 x double> %i.cc, %i.cj
  store <2 x double> %i.cm, ptr %7, align 16, !tbaa !43
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double +qnan, ptr %i.cn, align 16, !tbaa !30
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %6)
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.geos::geom::Coordinate", align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !66
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load double, ptr %2, align 16, !tbaa !49
  %i.f = tail call noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.b, double noundef %i.e)
  store double %i.f, ptr %2, align 16, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !50
  %i.i = tail call noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.b, double noundef %i.h)
  store double %i.i, ptr %i.g, align 8, !tbaa !50
  br label %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit

_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit: ; preds = %bb.a, %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j), !inline_history !61
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit.thread, label %_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit

_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit: ; preds = %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !27     ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p), !inline_history !62
  %i.u = add i64 %i.t, -1
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef %i.u), !inline_history !63
  %i.z = load <2 x double>, ptr %2, align 16, !tbaa !43
  %i.aa = load <2 x double>, ptr %i.y, align 8, !tbaa !43
  %i.ab = fsub <2 x double> %i.z, %i.aa           ; 2 uses
  %i.ac = fmul <2 x double> %i.ab, %i.ab          ; 2 uses
  %shift = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ac, %shift
  %i.ad = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load double, ptr %i.ae, align 8, !tbaa !42
  %i.ag = fcmp olt double %sqrt.i.i, %i.af
  br i1 %i.ag, label %bb.c, label %_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit.thread

_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit.thread: ; preds = %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit, %_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit
  %i.ah = load ptr, ptr %0, align 8, !tbaa !27
  call void @_ZN4geos4geom23CoordinateArraySequence3addERKNS0_10CoordinateEb(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true)
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit, %_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, double noundef %2, double noundef %3, i32 noundef %4, double noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.geos::geom::Coordinate", align 16 ; 8 uses
  %i.a = fsub double %2, %3
  %i.b = tail call double @llvm.fabs.f64(double %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !35
  %i.e = fdiv double %i.b, %i.d
  %i.f = fadd double %i.e, 5.000000e-01
  %i.g = fptosi double %i.f to i32                ; 4 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %4, -1
  %i.j = uitofp nneg i32 %i.g to double
  %i.k = fdiv double %i.b, %i.j                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.l, align 16, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.i, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.b
  %i.n = insertelement <2 x double> poison, double %5, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.split

.split.us.preheader:                              ; preds = %bb.b
  %i.p = insertelement <2 x double> poison, double %5, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.split.us
  %.021.us = phi i32 [ %i.aa, %.split.us ], [ 0, %.split.us.preheader ] ; 2 uses
  %i.r = sub nsw i32 0, %.021.us
  %i.s = sitofp i32 %i.r to double
  %i.t = fmul double %i.k, %i.s
  %i.u = fadd double %2, %i.t                     ; 2 uses
  %7 = call double @cos(double noundef %i.u) #11
  %8 = call double @sin(double noundef %i.u) #11
  %i.v = load <2 x double>, ptr %1, align 8, !tbaa !43
  %i.w = insertelement <2 x double> poison, double %7, i64 0
  %i.x = insertelement <2 x double> %i.w, double %8, i64 1
  %i.y = fmul <2 x double> %i.q, %i.x
  %i.z = fadd <2 x double> %i.v, %i.y
  store <2 x double> %i.z, ptr %6, align 16, !tbaa !43
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.aa = add nuw nsw i32 %.021.us, 1             ; 2 uses
  %exitcond25.not = icmp eq i32 %i.aa, %i.g
  br i1 %exitcond25.not, label %.split23.us, label %.split.us, !llvm.loop !0

.split23.us:                                      ; preds = %.split, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.c

.split:                                           ; preds = %.split.preheader, %.split
  %.021 = phi i32 [ %i.aj, %.split ], [ 0, %.split.preheader ] ; 2 uses
  %i.ab = uitofp nneg i32 %.021 to double
  %i.ac = fmul double %i.k, %i.ab
  %i.ad = fadd double %2, %i.ac                   ; 2 uses
  %9 = call double @cos(double noundef %i.ad) #11
  %10 = call double @sin(double noundef %i.ad) #11
  %i.ae = load <2 x double>, ptr %1, align 8, !tbaa !43
  %i.af = insertelement <2 x double> poison, double %9, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %10, i64 1
  %i.ah = fmul <2 x double> %i.o, %i.ag
  %i.ai = fadd <2 x double> %i.ae, %i.ah
  store <2 x double> %i.ai, ptr %6, align 16, !tbaa !43
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.aj = add nuw nsw i32 %.021, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.aj, %i.g
  br i1 %exitcond.not, label %.split23.us, label %.split, !llvm.loop !0

bb.c:                                             ; preds = %bb.a, %.split23.us
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateES6_S6_id(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4, double noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load double, ptr %2, align 8, !tbaa !49
  %i.b = load double, ptr %1, align 8, !tbaa !49  ; 2 uses
  %i.c = fsub double %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !50 ; 2 uses
  %i.h = fsub double %i.e, %i.g
  %i.i = tail call double @atan2(double noundef %i.h, double noundef %i.c) #11 ; 4 uses
  %i.j = load double, ptr %3, align 8, !tbaa !49
  %i.k = fsub double %i.j, %i.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !50
  %i.n = fsub double %i.m, %i.g
  %i.o = tail call double @atan2(double noundef %i.n, double noundef %i.k) #11 ; 3 uses
  %i.p = icmp eq i32 %4, -1                       ; 2 uses
  %i.q = fcmp ult double %i.i, %i.o
  %i.r = fcmp ugt double %i.i, %i.o
  %.sink29 = select i1 %i.p, double f0x401921FB54442D18, double f0xC01921FB54442D18
  %.sink = select i1 %i.p, i1 %i.r, i1 %i.q
  %i.s = fadd double %i.i, %.sink29
  %spec.select27 = select i1 %.sink, double %i.i, double %i.s
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %2)
  tail call void @_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %spec.select27, double noundef %i.o, i32 noundef %4, double noundef %5)
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator12createCircleERKNS_4geom10CoordinateEd(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, double noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %4 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !43
  %i.b = insertelement <2 x double> <double poison, double -0.000000e+00>, double %2, i64 0
  %i.c = fadd <2 x double> %i.b, %i.a
  store <2 x double> %i.c, ptr %4, align 16, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double +qnan, ptr %i.d, align 16, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !35
  %i.h = fdiv double f0x401921FB54442D18, %i.g
  %i.i = fadd double %i.h, 5.000000e-01
  %i.j = fptosi double %i.i to i32                ; 3 uses
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = uitofp nneg i32 %i.j to double
  %i.m = fdiv nnan double f0x401921FB54442D18, %i.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double +qnan, ptr %i.n, align 16, !tbaa !30
  %i.o = insertelement <2 x double> poison, double %2, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.i, %bb.b
  %.021.us.i = phi i32 [ %i.z, %.split.us.i ], [ 0, %bb.b ] ; 2 uses
  %i.q = sub nsw i32 0, %.021.us.i
  %i.r = sitofp i32 %i.q to double
  %i.s = fmul double %i.m, %i.r
  %i.t = fadd double %i.s, 0.000000e+00           ; 2 uses
  %5 = call double @cos(double noundef %i.t) #11
  %6 = call double @sin(double noundef %i.t) #11
  %i.u = load <2 x double>, ptr %1, align 8, !tbaa !43
  %i.v = insertelement <2 x double> poison, double %5, i64 0
  %i.w = insertelement <2 x double> %i.v, double %6, i64 1
  %i.x = fmul <2 x double> %i.p, %i.w
  %i.y = fadd <2 x double> %i.u, %i.x
  store <2 x double> %i.y, ptr %3, align 16, !tbaa !43
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.z = add nuw nsw i32 %.021.us.i, 1            ; 2 uses
  %exitcond25.not.i = icmp eq i32 %i.z, %i.j
  br i1 %exitcond25.not.i, label %.split23.us.i, label %.split.us.i, !llvm.loop !0

.split23.us.i:                                    ; preds = %.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit

_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit: ; preds = %bb.a, %.split23.us.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !27  ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa), !inline_history !1
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZN4geos9operation6buffer19OffsetSegmentString9closeRingEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !27  ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef nonnull align 8 dereferenceable(24) ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i64 noundef 0), !inline_history !2 ; 2 uses
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !27  ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.al), !inline_history !3
  %i.aq = add i64 %i.ap, -1
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call noundef nonnull align 8 dereferenceable(24) ptr %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.al, i64 noundef %i.aq), !inline_history !4
  %i.av = load <2 x double>, ptr %i.ak, align 8
  %i.aw = load <2 x double>, ptr %i.au, align 8
  %i.ax = fcmp oeq <2 x double> %i.av, %i.aw      ; 2 uses
  %i.ay = extractelement <2 x i1> %i.ax, i64 0
  %i.az = extractelement <2 x i1> %i.ax, i64 1
  %.0.i.i.i = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %.0.i.i.i, label %_ZN4geos9operation6buffer19OffsetSegmentString9closeRingEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !27
  call void @_ZN4geos4geom23CoordinateArraySequence3addERKNS0_10CoordinateEb(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i1 noundef zeroext true)
  br label %_ZN4geos9operation6buffer19OffsetSegmentString9closeRingEv.exit

_ZN4geos9operation6buffer19OffsetSegmentString9closeRingEv.exit: ; preds = %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator12createSquareERKNS_4geom10CoordinateEd(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, double noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %4 = alloca %"class.geos::geom::Coordinate", align 8 ; 6 uses
  %5 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %6 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x double>, ptr %1, align 8, !tbaa !43
  %i.d = insertelement <2 x double> poison, double %2, i64 0
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.f = fadd <2 x double> %i.e, %i.c
  store <2 x double> %i.f, ptr %3, align 16, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double +qnan, ptr %i.g, align 16, !tbaa !30
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.h = load double, ptr %1, align 8, !tbaa !49
  %i.i = fadd double %2, %i.h
  %i.j = load double, ptr %i.b, align 8, !tbaa !50
  %i.k = fsub double %i.j, %2
  store double %i.i, ptr %4, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.k, ptr %i.l, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double +qnan, ptr %i.m, align 8, !tbaa !30
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.n = load <2 x double>, ptr %1, align 8, !tbaa !43
  %i.o = fsub <2 x double> %i.n, %i.e
  store <2 x double> %i.o, ptr %5, align 16, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double +qnan, ptr %i.p, align 16, !tbaa !30
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.q = load <2 x double>, ptr %1, align 8, !tbaa !43 ; 2 uses
  %i.r = fsub <2 x double> %i.q, %i.e
  %i.s = fadd <2 x double> %i.q, %i.e
  %i.t = shufflevector <2 x double> %i.r, <2 x double> %i.s, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.t, ptr %6, align 16, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double +qnan, ptr %i.u, align 16, !tbaa !30
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v), !inline_history !1
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN4geos9operation6buffer19OffsetSegmentString9closeRingEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef nonnull align 8 dereferenceable(24) ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i64 noundef 0), !inline_history !2 ; 2 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !27  ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag), !inline_history !3
  %i.al = add i64 %i.ak, -1
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef nonnull align 8 dereferenceable(24) ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i64 noundef %i.al), !inline_history !4
  %i.aq = load <2 x double>, ptr %i.af, align 8
  %i.ar = load <2 x double>, ptr %i.ap, align 8
  %i.as = fcmp oeq <2 x double> %i.aq, %i.ar      ; 2 uses
  %i.at = extractelement <2 x i1> %i.as, i64 0
  %i.au = extractelement <2 x i1> %i.as, i64 1
  %.0.i.i.i = select i1 %i.at, i1 %i.au, i1 false
  br i1 %.0.i.i.i, label %_ZN4geos9operation6buffer19OffsetSegmentString9closeRingEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !27
  call void @_ZN4geos4geom23CoordinateArraySequence3addERKNS0_10CoordinateEb(ptr noundef nonnull align 8 dereferenceable(40) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i1 noundef zeroext true)
  br label %_ZN4geos9operation6buffer19OffsetSegmentString9closeRingEv.exit

_ZN4geos9operation6buffer19OffsetSegmentString9closeRingEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

declare void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator12addMitreJoinERKNS_4geom10CoordinateERKNS3_11LineSegmentES9_d(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %3, double noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.geos::geom::Coordinate", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 448
  call void @_ZN4geos9algorithm12Intersection12intersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.geos::geom::Coordinate") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  %i.e = load <2 x double>, ptr %5, align 16      ; 3 uses
  %i.f = extractelement <2 x double> %i.e, i64 0
  %i.g = fcmp uno double %i.f, 0.000000e+00
  %i.h = extractelement <2 x double> %i.e, i64 1
  %i.i = fcmp uno double %i.h, 0.000000e+00
  %or.cond.i = select i1 %i.g, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = load double, ptr %i.j, align 16
  %i.l = fcmp uno double %i.k, 0.000000e+00
  %i.m = select i1 %or.cond.i, i1 %i.l, i1 false
  br i1 %i.m, label %..critedge_crit_edge, label %bb.b

..critedge_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !46
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre10 = load double, ptr %.phi.trans.insert9, align 8, !tbaa !52
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.n = fcmp ugt double %4, 0.000000e+00
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load <2 x double>, ptr %1, align 8, !tbaa !43
  %i.p = fsub <2 x double> %i.e, %i.o             ; 2 uses
  %i.q = fmul <2 x double> %i.p, %i.p             ; 2 uses
  %shift = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.q, %shift
  %i.r = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.r)
  %i.s = call double @llvm.fabs.f64(double %4)
  %i.t = fdiv double %sqrt.i, %i.s
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.u = phi double [ %i.t, %bb.c ], [ 1.000000e+00, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !52 ; 2 uses
  %i.z = fcmp ugt double %i.u, %i.y
  br i1 %i.z, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.f

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.d
  %i.ab = phi double [ %.pre10, %..critedge_crit_edge ], [ %i.y, %bb.d ]
  call void @_ZN4geos9operation6buffer22OffsetSegmentGenerator19addLimitedMitreJoinERKNS_4geom11LineSegmentES6_dd(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr nonnull align 8 poison, ptr nonnull align 8 poison, double noundef %4, double noundef %i.ab)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator12addBevelJoinERKNS_4geom11LineSegmentES6_(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

declare void @_ZN4geos9algorithm12Intersection12intersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr dead_on_unwind writable sret(%"class.geos::geom::Coordinate") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator19addLimitedMitreJoinERKNS_4geom11LineSegmentES6_dd(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, double noundef %3, double noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.geos::geom::LineSegment", align 8 ; 7 uses
  %6 = alloca %"class.geos::geom::Coordinate", align 8 ; 7 uses
  %7 = alloca %"class.geos::geom::Coordinate", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.c = tail call noundef double @_ZN4geos9algorithm5Angle5angleERKNS_4geom10CoordinateES5_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = tail call noundef double @_ZN4geos9algorithm5Angle20angleBetweenOrientedERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  %i.f = fmul double %i.e, 5.000000e-01           ; 2 uses
  %i.g = fadd double %i.c, %i.f
  %i.h = tail call noundef double @_ZN4geos9algorithm5Angle9normalizeEd(double noundef %i.g)
  %i.i = fadd double %i.h, f0x400921FB54442D18
  %i.j = tail call noundef double @_ZN4geos9algorithm5Angle9normalizeEd(double noundef %i.i) ; 2 uses
  %i.k = fmul double %3, %4                       ; 2 uses
  %i.l = tail call double @sin(double noundef %i.f) #11
  %i.m = tail call double @llvm.fabs.f64(double %i.l)
  %i.n = fmul double %i.k, %i.m
  %i.o = fsub double %3, %i.n                     ; 2 uses
  %8 = tail call double @cos(double noundef %i.j) #11
  %9 = tail call double @sin(double noundef %i.j) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.q = load <2 x double>, ptr %i.b, align 8, !tbaa !43
  %i.r = insertelement <2 x double> poison, double %i.k, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = insertelement <2 x double> poison, double %8, i64 0
  %i.u = insertelement <2 x double> %i.t, double %9, i64 1
  %i.v = fmul <2 x double> %i.s, %i.u
  %i.w = fadd <2 x double> %i.q, %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !44
  store <2 x double> %i.w, ptr %i.p, align 8, !tbaa !43
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store double +qnan, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.x, align 8, !tbaa !30
  call void @_ZNK4geos4geom11LineSegment16pointAlongOffsetEddRNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(48) %5, double noundef 1.000000e+00, double noundef %i.o, ptr noundef nonnull align 8 dereferenceable(24) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.y, align 8, !tbaa !30
  %i.z = fneg double %i.o
  call void @_ZNK4geos4geom11LineSegment16pointAlongOffsetEddRNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(48) %5, double noundef 1.000000e+00, double noundef %i.z, ptr noundef nonnull align 8 dereferenceable(24) %7)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !31
  %i.ac = icmp eq i32 %i.ab, 1                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %. = select i1 %i.ac, ptr %6, ptr %7
  %.27 = select i1 %i.ac, ptr %7, ptr %6
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %.)
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %.27)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret void
}

declare noundef double @_ZN4geos9algorithm5Angle5angleERKNS_4geom10CoordinateES5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef double @_ZN4geos9algorithm5Angle20angleBetweenOrientedERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef double @_ZN4geos9algorithm5Angle9normalizeEd(double noundef) local_unnamed_addr #4

declare void @_ZNK4geos4geom11LineSegment16pointAlongOffsetEddRNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(48), double noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare void @_ZN4geos4geom23CoordinateArraySequenceC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

declare void @_ZN4geos4geom23CoordinateArraySequence3addERKNS0_10CoordinateEb(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #4

declare noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { builtin allocsize(0) }
attributes #10 = { builtin nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !51}
!1 = distinct !{null, null}
!2 = distinct !{null, null}
!3 = distinct !{null, null, null}
!4 = distinct !{null, null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"double", !9, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 _ZTSN4geos4geom23CoordinateArraySequenceE", !14, i64 0}
!16 = !{!"p1 _ZTSN4geos4geom14PrecisionModelE", !14, i64 0}
!17 = !{!"_ZTSN4geos9operation6buffer19OffsetSegmentStringE", !15, i64 0, !16, i64 8, !13, i64 16}
!18 = !{!"p1 _ZTSN4geos9operation6buffer16BufferParametersE", !14, i64 0}
!19 = !{!"long", !9, i64 0}
!20 = !{!"bool", !9, i64 0}
!21 = !{!"_ZTSN4geos9algorithm15LineIntersectorE", !16, i64 0, !19, i64 8, !9, i64 16, !9, i64 48, !9, i64 96, !20, i64 128}
!22 = !{!"_ZTSN4geos4geom10CoordinateE", !13, i64 0, !13, i64 8, !13, i64 16}
!23 = !{!"_ZTSN4geos4geom11LineSegmentE", !22, i64 0, !22, i64 24}
!24 = !{!"_ZTSN4geos9operation6buffer22OffsetSegmentGeneratorE", !13, i64 0, !13, i64 8, !10, i64 16, !17, i64 24, !13, i64 48, !16, i64 56, !18, i64 64, !21, i64 72, !22, i64 208, !22, i64 232, !22, i64 256, !23, i64 280, !23, i64 328, !23, i64 376, !23, i64 424, !10, i64 472, !20, i64 476, !10, i64 480}
!25 = !{!24, !13, i64 0}
!26 = !{!24, !10, i64 16}
!27 = !{!17, !15, i64 0}
!28 = !{!24, !13, i64 48}
!29 = !{!24, !16, i64 56}
!30 = !{!22, !13, i64 16}
!31 = !{!24, !10, i64 472}
!32 = !{!"_ZTSN4geos9operation6buffer16BufferParameters11EndCapStyleE", !9, i64 0}
!33 = !{!"_ZTSN4geos9operation6buffer16BufferParameters9JoinStyleE", !9, i64 0}
!34 = !{!"_ZTSN4geos9operation6buffer16BufferParametersE", !10, i64 0, !32, i64 4, !33, i64 8, !13, i64 16, !20, i64 24}
!35 = !{!24, !13, i64 8}
!36 = !{!34, !33, i64 8}
!37 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !14, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!38, !37, i64 0}
!40 = !{!38, !37, i64 8}
!41 = !{!17, !16, i64 8}
!42 = !{!17, !13, i64 16}
!43 = !{!13, !13, i64 0}
!44 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !43}
!45 = !{!21, !19, i64 8}
!46 = !{!24, !18, i64 64}
!47 = !{}
!48 = !{i64 8}
!49 = !{!22, !13, i64 0}
!50 = !{!22, !13, i64 8}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!34, !13, i64 16}
!53 = !{!"vtable pointer", !8, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!18, !18, i64 0}
!56 = !{!21, !20, i64 128}
!57 = !{!24, !20, i64 476}
!58 = !{!24, !10, i64 480}
!59 = !{!34, !10, i64 0}
!60 = !{!34, !32, i64 4}
!61 = distinct !{null, null}
!62 = distinct !{null, null, null}
!63 = distinct !{null, null}
!64 = !{!"_ZTSN4geos4geom14PrecisionModel4TypeE", !9, i64 0}
!65 = !{!"_ZTSN4geos4geom14PrecisionModelE", !64, i64 0, !13, i64 8}
!66 = !{!65, !64, i64 0}
end_hunk_0
