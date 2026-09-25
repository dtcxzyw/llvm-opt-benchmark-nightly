Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/file_write?download=true
inline.NumInlined: 126
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tiff_hdr = type { i16, i16, i32, i16, i16, [23 x %struct.libraw_tiff_tag], i32, i16, i16, [4 x %struct.libraw_tiff_tag], i16, i16, [10 x %struct.libraw_tiff_tag], [4 x i16], [10 x i32], [26 x i32], [512 x i8], [64 x i8], [64 x i8], [32 x i8], [20 x i8], [64 x i8] }
%struct.libraw_tiff_tag = type { i16, i16, i32, %union.anon }
%union.anon = type { i32 }
%"class.std::__1::vector" = type { ptr, ptr, %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { ptr }

$__clang_call_terminate = comdat any

$_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__120__throw_length_errorB8ne180100EPKc = comdat any

$_ZNSt12length_errorC2B8ne180100EPKc = comdat any

$_ZTI17LibRaw_exceptions = comdat any

$_ZTS17LibRaw_exceptions = comdat any

@.str = private unnamed_addr constant [12 x i8] c"dcraw v9.26\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%04d:%02d:%02d %02d:%02d:%02d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"12435867\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Exif\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"\FF\E1  Exif\00\00\00", align 1
@.str.5 = private unnamed_addr constant [163 x i8] c"P7\0A# EXPTIME=%0.5f\0A# TIMESTAMP=%lld\0A# ISOSPEED=%d\0A# APERTURE=%0.1f\0A# FOCALLEN=%0.1f\0A# MAKE=%s\0A# MODEL=%s\0AWIDTH %d\0AHEIGHT %d\0ADEPTH %d\0AMAXVAL %d\0ATUPLTYPE %s\0AENDHDR\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"P7\0AWIDTH %d\0AHEIGHT %d\0ADEPTH %d\0AMAXVAL %d\0ATUPLTYPE %s\0AENDHDR\0A\00", align 1
@.str.7 = private unnamed_addr constant [116 x i8] c"P%d\0A# EXPTIME=%0.5f\0A# TIMESTAMP=%lld\0A# ISOSPEED=%d\0A# APERTURE=%0.1f\0A# FOCALLEN=%0.1f\0A# MAKE=%s\0A# MODEL=%s\0A%d %d\0A%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"P%d\0A%d %d\0A%d\0A\00", align 1
@_ZTI17LibRaw_exceptions = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTS17LibRaw_exceptions }, comdat, align 8
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTS17LibRaw_exceptions = linkonce_odr constant [20 x i8] c"17LibRaw_exceptions\00", comdat, align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external constant { [5 x ptr] }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN6LibRaw10flip_indexEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !70   ; 3 uses
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %spec.select = select i1 %.not, i32 %1, i32 %2  ; 2 uses
  %spec.select14 = select i1 %.not, i32 %2, i32 %1 ; 2 uses
  %i.d = and i32 %i.b, 2
  %.not12 = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i16, ptr %i.e, align 4
  %i.g = zext i16 %i.f to i32
  %i.h = xor i32 %spec.select, -1
  %i.i = add i32 %i.h, %i.g
  %.111 = select i1 %.not12, i32 %spec.select, i32 %i.i
  %i.j = and i32 %i.b, 1
  %.not13 = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.l = load i16, ptr %i.k, align 2
  %i.m = zext i16 %i.l to i32                     ; 2 uses
  %i.n = xor i32 %spec.select14, -1
  %i.o = add i32 %i.n, %i.m
  %.1 = select i1 %.not13, i32 %spec.select14, i32 %i.o
  %i.p = mul nsw i32 %.111, %i.m
  %i.q = add nsw i32 %i.p, %.1
  ret i32 %i.q
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw8tiff_setEP8tiff_hdrPtttii(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(768512) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.b = load i16, ptr %2, align 2, !tbaa !71     ; 2 uses
  %i.c = add i16 %i.b, 1
  store i16 %i.c, ptr %2, align 2, !tbaa !71
  %i.d = zext i16 %i.b to i64
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.d ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store i32 %6, ptr %i.f, align 4, !tbaa !72
  %i.g = icmp eq i16 %4, 1
  %i.h = icmp slt i32 %5, 5
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %.preheader.preheader, label %bb.b

.preheader.preheader:                             ; preds = %bb.a
  store i32 %6, ptr %i.f, align 4, !tbaa !72
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i16 %4, 2
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = sext i32 %6 to i64                       ; 4 uses
  %i.k = getelementptr inbounds i8, ptr %1, i64 %i.j ; 2 uses
  %i.l = add nsw i32 %5, -1
  %i.m = sext i32 %i.l to i64
  %i.n = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef %i.k, i64 noundef %i.m)
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = add nsw i32 %i.o, 1                      ; 2 uses
  %i.q = icmp slt i32 %i.o, 4
  br i1 %i.q, label %.preheader46.preheader, label %.loopexit

.preheader46.preheader:                           ; preds = %bb.c
  %i.r = load i8, ptr %i.k, align 1, !tbaa !72
  store i8 %i.r, ptr %i.f, align 4, !tbaa !72
  %i.s = getelementptr i8, ptr %1, i64 %i.j
  %i.t = getelementptr i8, ptr %i.s, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !72
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  store i8 %i.u, ptr %i.v, align 1, !tbaa !72
  %i.w = getelementptr i8, ptr %1, i64 %i.j
  %i.x = getelementptr i8, ptr %i.w, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i8 %i.y, ptr %i.z, align 2, !tbaa !72
  %i.aa = getelementptr i8, ptr %1, i64 %i.j
  %i.ab = getelementptr i8, ptr %i.aa, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !72
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 11
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !72
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.ae = icmp eq i16 %4, 3
  %i.af = icmp slt i32 %5, 3
  %or.cond3 = and i1 %i.ae, %i.af
  br i1 %or.cond3, label %.preheader48.preheader, label %.loopexit

.preheader48.preheader:                           ; preds = %bb.d
  %i.ag = trunc i32 %6 to i16
  store i16 %i.ag, ptr %i.f, align 4, !tbaa !72
  %i.ah = lshr i32 %6, 16
  %i.ai = trunc nuw i32 %i.ah to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !72
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader48.preheader, %.preheader46.preheader, %.preheader.preheader, %bb.c, %bb.d
  %.040 = phi i32 [ %5, %bb.d ], [ %5, %.preheader.preheader ], [ %i.p, %bb.c ], [ %i.p, %.preheader46.preheader ], [ %5, %.preheader48.preheader ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.040, ptr %i.ak, align 4, !tbaa !74
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 %4, ptr %i.al, align 2, !tbaa !75
  store i16 %3, ptr %i.e, align 4, !tbaa !76
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw9tiff_headEP8tiff_hdri(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef initializes((0, 1376)) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 7 uses
  %i.b = alloca [4 x i8], align 1                 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1368) %i.c, i8 0, i64 1368, i1 false)
  store i16 18761, ptr %1, align 4, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 42, ptr %i.d, align 2, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 10, ptr %i.e, align 4, !tbaa !89
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 476
  store <4 x i32> <i32 300, i32 1, i32 300, i32 1>, ptr %i.f, align 4, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 496
  store i32 1000000, ptr %i.g, align 4, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 504
  store i32 1000000, ptr %i.h, align 4, !tbaa !77
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 512
  store i32 1000000, ptr %i.i, align 4, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192688
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192692
  %i.l = load float, ptr %i.k, align 4, !tbaa !78
  %i.m = fmul float %i.l, 1.000000e+06
  %i.n = fptosi float %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 492
  store i32 %i.n, ptr %i.o, align 4, !tbaa !77
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192696
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 500
  %i.r = load <2 x float>, ptr %i.p, align 8, !tbaa !79
  %i.s = fmul <2 x float> %i.r, splat (float 1.000000e+06) ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 0
  %i.u = fptosi float %i.t to i32
  store i32 %i.u, ptr %i.q, align 4, !tbaa !77
  %i.v = extractelement <2 x float> %i.s, i64 1
  %i.w = fptosi float %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 508
  store i32 %i.w, ptr %i.x, align 4, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 620 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192892
  %i.aa = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) %i.z, i64 noundef 512) #17 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1132 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.ad = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(1) %i.ac, i64 noundef 64) #17 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1196 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ag = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(1) %i.af, i64 noundef 64) #17 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1260 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ah, ptr noundef nonnull align 1 dereferenceable(12) @.str, i64 12, i1 false) #17
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192704
  %i.aj = tail call ptr @localtime(ptr noundef nonnull %i.ai) #17 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1292 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !91
  %i.an = add nsw i32 %i.am, 1900
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !92
  %i.aq = add nsw i32 %i.ap, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !93
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !94
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !95
  %i.ax = load i32, ptr %i.aj, align 8, !tbaa !96
  %i.ay = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ak, ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.an, i32 noundef %i.aq, i32 noundef %i.as, i32 noundef %i.au, i32 noundef %i.aw, i32 noundef %i.ax) #17 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 1312 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 193404
  %i.bb = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.az, ptr noundef nonnull dereferenceable(1) %i.ba, i64 noundef 64) #17 ; 0 uses
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 6 uses
  br i1 %.not, label %._crit_edge, label %_ZN6LibRaw8tiff_setEP8tiff_hdrPtttii.exit

._crit_edge:                                      ; preds = %bb.a
  %.pre195 = load i16, ptr %.phi.trans.insert, align 2, !tbaa !71
  br label %bb.d

_ZN6LibRaw8tiff_setEP8tiff_hdrPtttii.exit:        ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 6 uses
  %i.bd = load i16, ptr %.phi.trans.insert, align 2, !tbaa !71 ; 5 uses
  %i.be = add i16 %i.bd, 1                        ; 2 uses
  store i16 %i.be, ptr %.phi.trans.insert, align 2, !tbaa !71
  %i.bf = zext i16 %i.bd to i64
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %i.bf ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 0, ptr %i.bh, align 4, !tbaa !72
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 1, ptr %i.bi, align 4, !tbaa !74
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i16 4, ptr %i.bj, align 2, !tbaa !75
  store i16 254, ptr %i.bg, align 4, !tbaa !76
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !80
  %i.bm = zext i16 %i.bl to i32
  %i.bn = add i16 %i.bd, 2                        ; 2 uses
  store i16 %i.bn, ptr %.phi.trans.insert, align 2, !tbaa !71
  %i.bo = zext i16 %i.be to i64
  %i.bp = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %i.bo ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i32 %i.bm, ptr %i.bq, align 4, !tbaa !72
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 1, ptr %i.br, align 4, !tbaa !74
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  store i16 4, ptr %i.bs, align 2, !tbaa !75
  store i16 256, ptr %i.bp, align 4, !tbaa !76
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bu = load i16, ptr %i.bt, align 4, !tbaa !81
  %i.bv = zext i16 %i.bu to i32
  %i.bw = add i16 %i.bd, 3
  %i.bx = zext i16 %i.bn to i64
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %i.bx ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 %i.bv, ptr %i.bz, align 4, !tbaa !72
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 1, ptr %i.ca, align 4, !tbaa !74
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store i16 4, ptr %i.cb, align 2, !tbaa !75
  store i16 257, ptr %i.by, align 4, !tbaa !76
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !82
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 5440 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !83
  %i.cg = add i16 %i.bd, 4                        ; 3 uses
  store i16 %i.cg, ptr %.phi.trans.insert, align 2, !tbaa !71
  %i.ch = zext i16 %i.bw to i64
  %i.ci = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %i.ch ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i32 %i.cf, ptr %i.cj, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 %i.cd, ptr %i.ck, align 4, !tbaa !74
end_hunk_0
