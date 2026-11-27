Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/Cr2sRawInterpolator?download=true
inline.NumInlined: 607
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumUnrolled: 65
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array.81" = type { [8192 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

$_ZN8rawspeed19Cr2sRawInterpolator15interpolate_420ILi1EEEvv = comdat any

$_ZN8rawspeed19Cr2sRawInterpolator15interpolate_420ILi2EEEvv = comdat any

$_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz = comdat any

$_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi0EEEvi = comdat any

$_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi1EEEvi = comdat any

$_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi2EEEvi = comdat any

$_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi1EEEvi = comdat any

$_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi2EEEvi = comdat any

$_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZN8rawspeed17RawspeedExceptionC2EPKc = comdat any

$_ZN8rawspeed17RawspeedException3logEPKc = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = comdat any

@.str = private unnamed_addr constant [44 x i8] c"%s, line 542: Unknown subsampling: (%i; %i)\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed19Cr2sRawInterpolator11interpolateEi = private unnamed_addr constant [53 x i8] c"void rawspeed::Cr2sRawInterpolator::interpolate(int)\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.81" zeroinitializer, comdat, align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"EXCEPTION: %s\00", align 1
@_ZTIN8rawspeed19RawDecoderExceptionE = external constant ptr
@_ZTVN8rawspeed19RawDecoderExceptionE = external constant { [6 x ptr] }, align 8
@_ZTVN8rawspeed17RawspeedExceptionE = external constant { [6 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed19Cr2sRawInterpolator11interpolateEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp samesign ult i32 %1, 3
  tail call void @llvm.assume(i1 %i.a)
  %i.b = load ptr, ptr %0, align 8, !tbaa !18, !nonnull !19, !align !20
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 308
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.f = load i32, ptr %i.e, align 4, !tbaa !117  ; 2 uses
  %.pre = load i32, ptr %i.d, align 4, !tbaa !118 ; 3 uses
  switch i32 %i.f, label %.thread [
    i32 1, label %bb.b
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %.pre, 2
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 612
  %i.i = load i32, ptr %i.h, align 4, !tbaa !96, !noalias !19 ; 5 uses
  %i.j = icmp sgt i32 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %2 = icmp ne i32 %i.i, 0
  tail call void @llvm.assume(i1 %2)
  switch i32 %1, label %default.unreachable19 [
    i32 0, label %.preheader
    i32 1, label %.preheader22
    i32 2, label %.preheader24
  ]

.preheader:                                       ; preds = %bb.c, %.preheader
  %.018.i = phi i32 [ %i.k, %.preheader ], [ %1, %bb.c ] ; 2 uses
  tail call void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi0EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.018.i)
  %i.k = add nuw nsw i32 %.018.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.k, %i.i
  br i1 %exitcond.not.i, label %_ZN8rawspeed19Cr2sRawInterpolator15interpolate_422ILi0EEEvv.exit, label %.preheader, !llvm.loop !114

.preheader22:                                     ; preds = %bb.c, %.preheader22
  %.018.i10 = phi i32 [ %i.l, %.preheader22 ], [ 0, %bb.c ] ; 2 uses
  tail call void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi1EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.018.i10)
  %i.l = add nuw nsw i32 %.018.i10, 1             ; 2 uses
  %exitcond.not.i11 = icmp eq i32 %i.l, %i.i
  br i1 %exitcond.not.i11, label %_ZN8rawspeed19Cr2sRawInterpolator15interpolate_422ILi0EEEvv.exit, label %.preheader22, !llvm.loop !115

.preheader24:                                     ; preds = %bb.c, %.preheader24
  %.018.i12 = phi i32 [ %i.m, %.preheader24 ], [ 0, %bb.c ] ; 2 uses
  tail call void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi2EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.018.i12)
  %i.m = add nuw nsw i32 %.018.i12, 1             ; 2 uses
  %exitcond.not.i13 = icmp eq i32 %i.m, %i.i
  br i1 %exitcond.not.i13, label %_ZN8rawspeed19Cr2sRawInterpolator15interpolate_422ILi0EEEvv.exit, label %.preheader24, !llvm.loop !116

default.unreachable19:                            ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %.pre, 2
  br i1 %i.n, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.o = icmp eq i32 %1, 1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8rawspeed19Cr2sRawInterpolator15interpolate_420ILi1EEEvv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br label %_ZN8rawspeed19Cr2sRawInterpolator15interpolate_422ILi0EEEvv.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN8rawspeed19Cr2sRawInterpolator15interpolate_420ILi2EEEvv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br label %_ZN8rawspeed19Cr2sRawInterpolator15interpolate_422ILi0EEEvv.exit

.thread:                                          ; preds = %bb.a, %bb.b, %bb.d
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed19Cr2sRawInterpolator11interpolateEi, i32 noundef %.pre, i32 noundef %i.f) #10
  unreachable

_ZN8rawspeed19Cr2sRawInterpolator15interpolate_422ILi0EEEvv.exit: ; preds = %.preheader24, %.preheader22, %.preheader, %bb.g, %bb.f
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19Cr2sRawInterpolator15interpolate_420ILi1EEEvv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18, !nonnull !19, !align !20
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98, !noalias !130 ; 26 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !99, !noalias !130
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !100, !noalias !130
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96, !noalias !130 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !101, !noalias !130
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !102  ; 10 uses
  %i.t = icmp sgt i32 %i.s, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !103  ; 4 uses
  %i.w = icmp sgt i32 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !104  ; 2 uses
  %i.z = icmp sge i32 %i.y, %i.s
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp ne i32 %i.v, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = urem i32 %i.s, 6
  %i.ac = icmp eq i32 %i.ab, 0
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = udiv exact i32 %i.s, 6                  ; 2 uses
  %i.ae = icmp samesign ugt i32 %i.s, 6
  tail call void @llvm.assume(i1 %i.ae)
  %.sroa.0117.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !105 ; 3 uses
  %i.af = icmp samesign ugt i32 %i.v, 1
  br i1 %i.af, label %.lr.ph, label %.lr.ph229

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.051218 = phi i32 [ %i.ag, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  tail call void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi1EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.051218)
  %i.ag = add nuw nsw i32 %.051218, 1             ; 3 uses
  %i.ah = load i32, ptr %i.u, align 8, !tbaa !103 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nsw i32 %i.ah, -1
  %i.ak = icmp slt i32 %i.ag, %i.aj
  br i1 %i.ak, label %.lr.ph, label %.lr.ph229, !llvm.loop !121

.lr.ph229:                                        ; preds = %.lr.ph, %bb.a
  %.051.lcssa = phi i32 [ 0, %bb.a ], [ %i.ag, %.lr.ph ] ; 4 uses
  %i.al = add nsw i32 %i.ad, -1
  %i.am = icmp samesign ult i32 %.051.lcssa, %i.v
  tail call void @llvm.assume(i1 %i.am), !noalias !131
  %i.an = mul i32 %.051.lcssa, %i.y
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %i.ap = getelementptr [2 x i8], ptr %.sroa.0117.0.copyload, i64 %i.ao ; 20 uses
  %invariant.op = add nsw i32 %i.s, -6
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !106
  %i.as = add i32 %i.ar, -16384                   ; 2 uses
  %i.at = shl nuw nsw i32 %.051.lcssa, 1          ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.av = load <3 x i32>, ptr %i.au, align 8, !tbaa !107 ; 5 uses
  %i.aw = shufflevector <3 x i32> %i.av, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.ax = load <1 x i32>, ptr %i.au, align 8
  %i.ay = zext nneg i32 %i.s to i64               ; 3 uses
  %i.az = zext nneg i32 %invariant.op to i64
  %i.ba = zext nneg i32 %i.i to i64               ; 2 uses
  %i.bb = zext nneg i32 %i.at to i64              ; 2 uses
  %i.bc = zext i32 %i.n to i64                    ; 4 uses
  %i.bd = zext nneg i32 %i.k to i64
  %i.be = zext nneg i32 %i.ad to i64
  %wide.trip.count = zext i32 %i.al to i64        ; 4 uses
  %invariant.op395 = add nsw i64 %i.ay, -1
  %invariant.op396 = add nsw i64 %i.ay, -3
  %i.bf = icmp samesign ult i32 %i.at, %i.k
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = mul nuw nsw i64 %i.bb, %i.bc            ; 2 uses
  %i.bh = getelementptr [2 x i8], ptr %i.d, i64 %i.bg ; 15 uses
  %i.bi = or disjoint i64 %i.bb, 1                ; 3 uses
  %i.bj = icmp samesign ult i64 %i.bi, %i.bd
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = mul nuw nsw i64 %i.bi, %i.bc            ; 2 uses
  %i.bl = getelementptr [2 x i8], ptr %i.d, i64 %i.bk ; 15 uses
  %min.iters.check = icmp samesign ult i32 %i.s, 204
  br i1 %min.iters.check, label %.preheader215.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph229
  %i.bm = zext nneg i32 %.051.lcssa to i64
  %i.bn = mul nuw nsw i64 %i.bm, %i.bc
  %i.bo = shl i64 %i.bn, 2                        ; 6 uses
  %i.bp = mul nuw nsw i64 %wide.trip.count, 12    ; 3 uses
  %i.bq = add i64 %i.bo, %i.bp                    ; 6 uses
  %i.br = getelementptr i8, ptr %i.d, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 -10    ; 12 uses
  %i.bt = getelementptr i8, ptr %i.d, i64 %i.bo
  %i.bu = getelementptr i8, ptr %i.bt, i64 2      ; 12 uses
  %i.bv = getelementptr i8, ptr %i.d, i64 %i.bq
  %i.bw = getelementptr i8, ptr %i.bv, i64 -8     ; 12 uses
  %i.bx = getelementptr i8, ptr %i.d, i64 %i.bo
  %i.by = getelementptr i8, ptr %i.bx, i64 4      ; 12 uses
  %i.bz = getelementptr i8, ptr %i.d, i64 %i.bq
  %i.ca = getelementptr i8, ptr %i.bz, i64 -6     ; 12 uses
  %i.cb = getelementptr i8, ptr %i.d, i64 %i.bo
  %i.cc = getelementptr i8, ptr %i.cb, i64 6      ; 12 uses
  %i.cd = getelementptr i8, ptr %i.d, i64 %i.bq
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4     ; 12 uses
  %i.cf = getelementptr i8, ptr %i.d, i64 %i.bo
  %i.cg = getelementptr i8, ptr %i.cf, i64 8      ; 12 uses
  %i.ch = getelementptr i8, ptr %i.d, i64 %i.bq
  %i.ci = getelementptr i8, ptr %i.ch, i64 -2     ; 12 uses
  %i.cj = getelementptr i8, ptr %i.d, i64 %i.bo
  %i.ck = getelementptr i8, ptr %i.cj, i64 10     ; 12 uses
  %i.cl = getelementptr i8, ptr %i.d, i64 %i.bq   ; 12 uses
  %i.cm = mul nuw nsw i64 %i.bi, %i.bc
  %i.cn = shl nuw i64 %i.cm, 1                    ; 6 uses
  %i.co = add i64 %i.cn, %i.bp                    ; 6 uses
  %i.cp = getelementptr i8, ptr %i.d, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 -10    ; 12 uses
  %i.cr = getelementptr i8, ptr %i.d, i64 %i.cn
  %i.cs = getelementptr i8, ptr %i.cr, i64 2      ; 12 uses
  %i.ct = getelementptr i8, ptr %i.d, i64 %i.co
  %i.cu = getelementptr i8, ptr %i.ct, i64 -8     ; 12 uses
  %i.cv = getelementptr i8, ptr %i.d, i64 %i.cn
  %i.cw = getelementptr i8, ptr %i.cv, i64 4      ; 12 uses
  %i.cx = getelementptr i8, ptr %i.d, i64 %i.co
  %i.cy = getelementptr i8, ptr %i.cx, i64 -6     ; 12 uses
  %i.cz = getelementptr i8, ptr %i.d, i64 %i.cn
  %i.da = getelementptr i8, ptr %i.cz, i64 6      ; 12 uses
  %i.db = getelementptr i8, ptr %i.d, i64 %i.co
  %i.dc = getelementptr i8, ptr %i.db, i64 -4     ; 12 uses
end_hunk_0
begin_hunk_1_@_ZN8rawspeed19Cr2sRawInterpolator15interpolate_420ILi2EEEvv:bb.a
  %i.jc = add nsw i32 %i.ih, %i.ja
  %i.jd = ashr i32 %i.jc, 1                       ; 2 uses
  %i.je = mul nsw i32 %i.iz, -778
  %i.jf = shl nsw i32 %i.ja, 11
  %i.jg = sub nsw i32 %i.je, %i.jf
  %i.jh = ashr i32 %i.jg, 12
  %i.ji = insertelement <4 x i32> poison, i32 %i.ja, i64 0
  %i.jj = insertelement <4 x i32> %i.ji, i32 %i.jh, i64 1
  %i.jk = insertelement <4 x i32> %i.jj, i32 %i.iz, i64 2
  %i.jl = insertelement <4 x i32> %i.jk, i32 %i.jd, i64 3 ; 2 uses
  %i.jm = add nsw <4 x i32> %i.jl, %i.iy
  %i.jn = mul nsw <4 x i32> %i.jm, %i.hd
  %i.jo = shl nsw i32 %i.jd, 11
  %i.jp = ashr <4 x i32> %i.jn, splat (i32 8)
  %i.jq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.jp, <4 x i32> zeroinitializer)
  %i.jr = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.jq, <4 x i32> splat (i32 65535))
  %i.js = trunc nuw <4 x i32> %i.jr to <4 x i16>
  store <4 x i16> %i.js, ptr %i.ik, align 2, !tbaa !109
  %i.jt = add nsw <4 x i32> %i.jl, %i.it
  %i.ju = mul nsw <4 x i32> %i.aw, %i.jt
  %i.jv = ashr <4 x i32> %i.ju, splat (i32 8)
  %i.jw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.jv, <4 x i32> zeroinitializer)
  %i.jx = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.jw, <4 x i32> splat (i32 65535))
  %i.jy = trunc nuw <4 x i32> %i.jx to <4 x i16>
  %i.jz = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.ka = ashr i32 %i.jb, 1                       ; 3 uses
  %i.kb = mul nsw i32 %i.ka, -778
  %i.kc = sub nsw i32 %i.kb, %i.jo
  %i.kd = ashr i32 %i.kc, 12                      ; 2 uses
  %i.ke = insertelement <2 x i32> poison, i32 %i.kd, i64 0
  %i.kf = insertelement <2 x i32> %i.ke, i32 %i.ka, i64 1
  %i.kg = insertelement <2 x i32> poison, i32 %i.ix, i64 0
  %i.kh = shufflevector <2 x i32> %i.kg, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ki = add nsw <2 x i32> %i.kf, %i.kh
  %i.kj = mul nsw <2 x i32> %i.ki, %i.he
  %i.kk = ashr <2 x i32> %i.kj, splat (i32 8)
  %i.kl = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.kk, <2 x i32> zeroinitializer)
  %i.km = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.kl, <2 x i32> splat (i32 65535))
  %i.kn = trunc nuw <2 x i32> %i.km to <2 x i16>
  store <2 x i16> %i.kn, ptr %i.im, align 2, !tbaa !109
  %i.ko = add nsw i32 %i.kd, %i.is
  %i.kp = add nsw i32 %i.ka, %i.is
  %i.kq = insertelement <2 x i32> poison, i32 %i.ko, i64 0
  %i.kr = insertelement <2 x i32> %i.kq, i32 %i.kp, i64 1
  %i.ks = mul nsw <2 x i32> %i.kr, %i.he
  store <4 x i16> %i.jy, ptr %i.in, align 2, !tbaa !109
  %i.kt = ashr <2 x i32> %i.ks, splat (i32 8)
  %i.ku = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.kt, <2 x i32> zeroinitializer)
  %i.kv = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ku, <2 x i32> splat (i32 65535))
  %i.kw = trunc nuw <2 x i32> %i.kv to <2 x i16>
  store <2 x i16> %i.kw, ptr %i.jz, align 2, !tbaa !109
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge228, label %.preheader213, !llvm.loop !142

._crit_edge228:                                   ; preds = %.preheader213
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0115.0.copyload, i64 %i.ao ; 5 uses
  %i.ky = add nsw i32 %i.s, -6
  %i.kz = zext nneg i32 %i.ky to i64              ; 7 uses
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %i.kx, i64 %i.kz
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.kx, i64 %i.kz
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 2
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %i.kx, i64 %i.kz
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %i.lf = add nuw nsw i64 %i.kz, 3                ; 2 uses
  %i.lg = icmp samesign ult i64 %i.lf, %i.ay
  tail call void @llvm.assume(i1 %i.lg), !noalias !148
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.kx, i64 %i.lf
  %i.li = zext nneg i32 %i.s to i64
  %i.lj = getelementptr [2 x i8], ptr %i.kx, i64 %i.li ; 2 uses
  %i.lk = getelementptr i8, ptr %i.lj, i64 -4
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !109, !noalias !148
  %i.lm = zext i16 %i.ll to i32
  %i.ln = getelementptr i8, ptr %i.lj, i64 -2
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !109, !noalias !148
  %i.lp = zext i16 %i.lo to i32
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !106
  %i.ls = add i32 %i.lr, -16384                   ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.lu = add nuw nsw i64 %i.kz, 3                ; 3 uses
  %i.lv = icmp samesign ule i64 %i.lu, %i.ba
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bg ; 2 uses
  tail call void @llvm.assume(i1 %i.lv)
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.lw, i64 %i.kz
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.lw, i64 %i.lu
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 2
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bk ; 2 uses
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %i.ma, i64 %i.kz
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %i.ma, i64 %i.lu
  %i.md = load i16, ptr %i.lh, align 2, !tbaa !109, !noalias !148
  %i.me = load <2 x i16>, ptr %i.le, align 2, !tbaa !109, !noalias !148
  %i.mf = shufflevector <2 x i16> %i.me, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.mg = zext i16 %i.md to i32                   ; 2 uses
  %i.mh = zext <4 x i16> %i.mf to <4 x i32>
  %i.mi = load <3 x i32>, ptr %i.lt, align 8, !tbaa !107 ; 2 uses
  %i.mj = shufflevector <3 x i32> %i.mi, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.mk = load <1 x i32>, ptr %i.lt, align 8
  %i.ml = load i16, ptr %i.lc, align 2, !tbaa !109, !noalias !148
  %i.mm = load <2 x i16>, ptr %i.la, align 2, !tbaa !109, !noalias !148
  %i.mn = shufflevector <2 x i16> %i.mm, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.mo = zext i16 %i.ml to i32
  %i.mp = zext <4 x i16> %i.mn to <4 x i32>
  %i.mq = add i32 %i.ls, %i.lp                    ; 2 uses
  %i.mr = shl nsw i32 %i.mq, 11
  %i.ms = insertelement <4 x i32> poison, i32 %i.mq, i64 0
  %i.mt = shufflevector <1 x i32> %i.mk, <1 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.mu = shufflevector <4 x i32> %i.mt, <4 x i32> %i.mj, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mc, i64 2
  %i.mw = add i32 %i.ls, %i.lm                    ; 4 uses
  %i.mx = mul nsw i32 %i.mw, -778
  %i.my = sub nsw i32 %i.mx, %i.mr
  %i.mz = ashr i32 %i.my, 12                      ; 3 uses
  %i.na = insertelement <4 x i32> %i.ms, i32 %i.mz, i64 1
  %i.nb = insertelement <4 x i32> %i.na, i32 %i.mw, i64 2
  %i.nc = shufflevector <4 x i32> %i.nb, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.nd = add nsw <4 x i32> %i.nc, %i.mp
  %i.ne = mul nsw <4 x i32> %i.nd, %i.mu
  %i.nf = insertelement <2 x i32> poison, i32 %i.mz, i64 0
  %i.ng = insertelement <2 x i32> %i.nf, i32 %i.mw, i64 1
  %i.nh = insertelement <2 x i32> poison, i32 %i.mo, i64 0
  %i.ni = shufflevector <2 x i32> %i.nh, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.nj = add nsw <2 x i32> %i.ng, %i.ni
  %i.nk = shufflevector <3 x i32> %i.mi, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.nl = mul nsw <2 x i32> %i.nj, %i.nk
  %i.nm = ashr <4 x i32> %i.ne, splat (i32 8)
  %i.nn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.nm, <4 x i32> zeroinitializer)
  %i.no = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.nn, <4 x i32> splat (i32 65535))
  %i.np = trunc nuw <4 x i32> %i.no to <4 x i16>
  store <4 x i16> %i.np, ptr %i.lx, align 2, !tbaa !109
  %i.nq = ashr <2 x i32> %i.nl, splat (i32 8)
  %i.nr = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.nq, <2 x i32> zeroinitializer)
  %i.ns = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.nr, <2 x i32> splat (i32 65535))
  %i.nt = trunc nuw <2 x i32> %i.ns to <2 x i16>
  store <2 x i16> %i.nt, ptr %i.lz, align 2, !tbaa !109
  %i.nu = add nsw <4 x i32> %i.nc, %i.mh
  %i.nv = mul nsw <4 x i32> %i.mj, %i.nu
  %i.nw = add nsw i32 %i.mz, %i.mg
  %i.nx = add nsw i32 %i.mw, %i.mg
  %i.ny = insertelement <2 x i32> poison, i32 %i.nw, i64 0
  %i.nz = insertelement <2 x i32> %i.ny, i32 %i.nx, i64 1
  %i.oa = mul nsw <2 x i32> %i.nz, %i.nk
  %i.ob = ashr <4 x i32> %i.nv, splat (i32 8)
  %i.oc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ob, <4 x i32> zeroinitializer)
  %i.od = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.oc, <4 x i32> splat (i32 65535))
  %i.oe = trunc nuw <4 x i32> %i.od to <4 x i16>
  store <4 x i16> %i.oe, ptr %i.mb, align 2, !tbaa !109
  %i.of = ashr <2 x i32> %i.oa, splat (i32 8)
  %i.og = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.of, <2 x i32> zeroinitializer)
  %i.oh = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.og, <2 x i32> splat (i32 65535))
  %i.oi = trunc nuw <2 x i32> %i.oh to <2 x i16>
  store <2 x i16> %i.oi, ptr %i.mv, align 2, !tbaa !109
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #13 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi0EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18, !nonnull !19, !align !20
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98, !noalias !160 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !99, !noalias !160
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !100, !noalias !160
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96, !noalias !160
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !101, !noalias !160
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %2 = zext nneg i32 %i.i to i64                  ; 2 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !102  ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !103
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !104  ; 3 uses
  %i.x = icmp sge i32 %i.w, %i.s
  tail call void @llvm.assume(i1 %i.x)
  %i.y = and i32 %i.s, 3
  %i.z = icmp eq i32 %i.y, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = lshr exact i32 %i.s, 2
  %i.ab = icmp samesign ugt i32 %i.s, 4
  tail call void @llvm.assume(i1 %i.ab)
  %.sroa.050.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !105 ; 3 uses
  %i.ac = add nsw i32 %i.aa, -1                   ; 3 uses
  %i.ad = icmp samesign ult i32 %1, %i.u
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = mul nuw nsw i32 %i.w, %1
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.sroa.050.0.copyload, i64 %i.af ; 7 uses
  %i.ah = zext nneg i32 %i.s to i64               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !106
  %i.ak = add i32 %i.aj, -16384                   ; 5 uses
  %i.al = icmp samesign ult i32 %1, %i.k
  tail call void @llvm.assume(i1 %i.al)
  %i.am = mul i32 %i.n, %1
  %i.an = zext i32 %i.am to i64                   ; 3 uses
  %i.ao = getelementptr [2 x i8], ptr %i.d, i64 %i.an ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ar = load <3 x i32>, ptr %i.ap, align 8, !tbaa !107 ; 5 uses
  %i.as = shufflevector <3 x i32> %i.ar, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !107
  %wide.trip.count = zext i32 %i.ac to i64        ; 5 uses
  %invariant.op = add nsw i64 %i.ah, -1
  %min.iters.check = icmp ult i32 %i.s, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.au = mul nuw nsw i64 %wide.trip.count, 12
  %i.av = shl nuw nsw i64 %i.an, 1
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.au
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.av
  %i.ay = zext i32 %i.w to i64
  %i.az = zext i32 %1 to i64
  %i.ba = mul nuw i64 %i.ay, %i.az
  %i.bb = shl i64 %i.ba, 1
  %i.bc = shl nuw nsw i64 %wide.trip.count, 3
  %i.bd = getelementptr i8, ptr %.sroa.050.0.copyload, i64 %i.bb
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.bc
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %bound0 = icmp ult ptr %i.ao, %i.bf
  %bound1 = icmp ult ptr %i.ag, %i.ax
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bg = and i64 %wide.trip.count, 7             ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  %i.bi = select i1 %i.bh, i64 8, i64 %i.bg
  %n.vec = sub nsw i64 %wide.trip.count, %i.bi    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat92 = shufflevector <3 x i32> %i.ar, <3 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat94 = shufflevector <3 x i32> %i.ar, <3 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat96 = shufflevector <3 x i32> %i.ar, <3 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = phi i64 [ 0, %vector.ph ], [ %i.do, %vector.body ] ; 3 uses
  %.idx = shl nuw nsw i64 %index, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx
  %wide.vec = load <32 x i16>, ptr %i.bk, align 2, !tbaa !109, !alias.scope !161, !noalias !162 ; 4 uses
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec101.a = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec102.a = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec103 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bl = zext <8 x i16> %strided.vec to <8 x i32>
  %i.bm = zext <8 x i16> %strided.vec101.a to <8 x i32>
  %i.bn = zext <8 x i16> %strided.vec102.a to <8 x i32>
  %i.bo = zext <8 x i16> %strided.vec103 to <8 x i32>
  %.idx107.a = shl i64 %i.bj, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx107.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %wide.vec104 = load <32 x i16>, ptr %i.bq, align 2, !tbaa !109, !alias.scope !161, !noalias !162 ; 2 uses
  %strided.vec105.a = shufflevector <32 x i16> %wide.vec104, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec106 = shufflevector <32 x i16> %wide.vec104, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.br = zext <8 x i16> %strided.vec105.a to <8 x i32>
  %i.bs = zext <8 x i16> %strided.vec106 to <8 x i32>
  %i.bt = add <8 x i32> %broadcast.splat, %i.bn   ; 3 uses
  %i.bu = add <8 x i32> %broadcast.splat, %i.bo   ; 3 uses
  %i.bv = add <8 x i32> %broadcast.splat, %i.br
  %i.bw = add <8 x i32> %broadcast.splat, %i.bs
  %i.bx = add nsw <8 x i32> %i.bv, %i.bt
  %i.by = ashr <8 x i32> %i.bx, splat (i32 1)     ; 2 uses
  %i.bz = add nsw <8 x i32> %i.bw, %i.bu
  %i.ca = ashr <8 x i32> %i.bz, splat (i32 1)     ; 2 uses
  %i.cb = add nsw <8 x i32> %i.bl, splat (i32 -512) ; 3 uses
  %i.cc = add <8 x i32> %i.cb, %i.bu
  %i.cd = mul nsw <8 x i32> %i.cc, %broadcast.splat92
  %i.ce = mul nsw <8 x i32> %i.bt, splat (i32 -778)
  %i.cf = shl nsw <8 x i32> %i.bu, splat (i32 11)
  %i.cg = sub nsw <8 x i32> %i.ce, %i.cf
  %i.ch = ashr <8 x i32> %i.cg, splat (i32 12)
  %i.ci = add nsw <8 x i32> %i.cb, %i.ch
  %i.cj = mul nsw <8 x i32> %i.ci, %broadcast.splat94
  %i.ck = add <8 x i32> %i.cb, %i.bt
  %i.cl = mul nsw <8 x i32> %i.ck, %broadcast.splat96
  %.idx108 = mul nuw nsw i64 %i.bj, 12
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx108
  %i.cn = add nsw <8 x i32> %i.bm, splat (i32 -512) ; 3 uses
  %i.co = add nsw <8 x i32> %i.cn, %i.ca
  %i.cp = mul nsw <8 x i32> %i.co, %broadcast.splat92
  %i.cq = mul nsw <8 x i32> %i.by, splat (i32 -778)
  %i.cr = shl nsw <8 x i32> %i.ca, splat (i32 11)
  %i.cs = sub nsw <8 x i32> %i.cq, %i.cr
  %i.ct = ashr <8 x i32> %i.cs, splat (i32 12)
  %i.cu = add nsw <8 x i32> %i.ct, %i.cn
  %i.cv = mul nsw <8 x i32> %i.cu, %broadcast.splat94
  %i.cw = add nsw <8 x i32> %i.by, %i.cn
  %i.cx = mul nsw <8 x i32> %i.cw, %broadcast.splat96
  %i.cy = ashr <8 x i32> %i.cv, splat (i32 8)
  %i.cz = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cy, <8 x i32> zeroinitializer)
  %i.da = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.cz, <8 x i32> splat (i32 65535))
  %i.db = trunc nuw <8 x i32> %i.da to <8 x i16>
  %i.dc = ashr <8 x i32> %i.cx, splat (i32 8)
  %i.dd = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dc, <8 x i32> zeroinitializer)
  %i.de = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dd, <8 x i32> splat (i32 65535))
  %i.df = trunc nuw <8 x i32> %i.de to <8 x i16>
  %i.dg = shufflevector <8 x i32> %i.cd, <8 x i32> %i.cj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dh = shufflevector <8 x i32> %i.cl, <8 x i32> %i.cp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.di = shufflevector <16 x i32> %i.dg, <16 x i32> %i.dh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dj = ashr <32 x i32> %i.di, splat (i32 8)
  %i.dk = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.dj, <32 x i32> zeroinitializer)
  %i.dl = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.dk, <32 x i32> splat (i32 65535))
  %i.dm = trunc nuw <32 x i32> %i.dl to <32 x i16>
  %i.dn = shufflevector <8 x i16> %i.db, <8 x i16> %i.df, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.dm, <32 x i16> %i.dn, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.cm, align 2, !tbaa !109, !alias.scope !163, !noalias !161
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.do = add nuw nsw i64 %i.bj, 8
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %scalar.ph.preheader, label %vector.body, !llvm.loop !156

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %i.dq = extractelement <3 x i32> %i.ar, i64 2
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %i.eg, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dr = shl nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !109, !noalias !162
  %i.du = zext i16 %i.dt to i32
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !109, !noalias !162
  %i.dy = zext i16 %i.dx to i32                   ; 2 uses
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dr ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !109, !noalias !162
  %i.ec = zext i16 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 6
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !109, !noalias !162
  %i.ef = zext i16 %i.ee to i32
  %i.eg = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.eh = shl nuw nsw i64 %i.eg, 2                ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %invariant.op
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.eh ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !109, !noalias !162
  %i.em = zext i16 %i.el to i32
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 6
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !109, !noalias !162
  %i.ep = zext i16 %i.eo to i32
  %i.eq = add i32 %i.ak, %i.ec                    ; 3 uses
  %i.er = add i32 %i.ak, %i.ef                    ; 3 uses
  %i.es = add i32 %i.ak, %i.em
  %i.et = add i32 %i.ak, %i.ep
  %i.eu = add nsw i32 %i.es, %i.eq
  %i.ev = ashr i32 %i.eu, 1                       ; 2 uses
  %i.ew = add nsw i32 %i.et, %i.er
  %i.ex = ashr i32 %i.ew, 1                       ; 2 uses
  %i.ey = mul nuw nsw i64 %indvars.iv, 6          ; 2 uses
  %i.ez = add nuw nsw i64 %i.ey, 3                ; 2 uses
  %i.fa = icmp samesign ule i64 %i.ez, %2
  tail call void @llvm.assume(i1 %i.fa)
  %i.fb = mul nsw i32 %i.eq, -778
  %i.fc = shl nsw i32 %i.er, 11
  %i.fd = sub nsw i32 %i.fb, %i.fc
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.ey
  %i.ff = mul nsw i32 %i.ev, -778
  %i.fg = shl nsw i32 %i.ex, 11
  %i.fh = sub nsw i32 %i.ff, %i.fg
  %i.fi = ashr i32 %i.fh, 12
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.ez ; 2 uses
  %i.fk = ashr i32 %i.fd, 12
  %i.fl = add nsw i32 %i.dy, -512                 ; 2 uses
  %i.fm = insertelement <4 x i32> poison, i32 %i.du, i64 0
  %i.fn = insertelement <4 x i32> %i.fm, i32 %i.fk, i64 1
  %i.fo = insertelement <4 x i32> %i.fn, i32 %i.dy, i64 3
  %i.fp = add nsw <4 x i32> %i.fo, <i32 -512, i32 0, i32 poison, i32 -512> ; 2 uses
  %i.fq = shufflevector <4 x i32> %i.fp, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.fr = insertelement <4 x i32> poison, i32 %i.er, i64 0
  %i.fs = shufflevector <4 x i32> %i.fr, <4 x i32> %i.fp, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ft = insertelement <4 x i32> %i.fs, i32 %i.eq, i64 2
  %i.fu = insertelement <4 x i32> %i.ft, i32 %i.ex, i64 3
  %i.fv = add <4 x i32> %i.fq, %i.fu
  %i.fw = mul nsw <4 x i32> %i.fv, %i.as
  %i.fx = add nsw i32 %i.fi, %i.fl
  %i.fy = mul nsw i32 %i.fx, %i.at
  %i.fz = add nsw i32 %i.ev, %i.fl
  %i.ga = mul nsw i32 %i.fz, %i.dq
  %i.gb = ashr <4 x i32> %i.fw, splat (i32 8)
  %i.gc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gb, <4 x i32> zeroinitializer)
  %i.gd = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gc, <4 x i32> splat (i32 65535))
  %i.ge = trunc nuw <4 x i32> %i.gd to <4 x i16>
  store <4 x i16> %i.ge, ptr %i.fe, align 2, !tbaa !109
  %i.gf = ashr i32 %i.fy, 8
  %.sroa.speculate.load.false.sroa.speculated.i3.i.i.1.i = tail call i32 @llvm.smax.i32(i32 %i.gf, i32 0)
  %i.gg = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i3.i.i.1.i, i32 65535)
  %i.gh = trunc nuw i32 %i.gg to i16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  store i16 %i.gh, ptr %i.gi, align 2, !tbaa !109
  %i.gj = ashr i32 %i.ga, 8
  %.sroa.speculate.load.false.sroa.speculated.i5.i.i.1.i = tail call i32 @llvm.smax.i32(i32 %i.gj, i32 0)
  %i.gk = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i5.i.i.1.i, i32 65535)
  %i.gl = trunc nuw i32 %i.gk to i16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  store i16 %i.gl, ptr %i.gm, align 2, !tbaa !109
  %exitcond.not = icmp eq i64 %i.eg, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !157

._crit_edge:                                      ; preds = %scalar.ph
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.050.0.copyload, i64 %i.af ; 3 uses
  %i.go = shl nuw nsw i32 %i.ac, 2                ; 3 uses
  %i.gp = zext nneg i32 %i.go to i64              ; 2 uses
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %i.gp
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !109, !noalias !164
  %i.gs = zext i16 %i.gr to i32
  %i.gt = or disjoint i64 %i.gp, 1                ; 2 uses
  %i.gu = icmp samesign ult i64 %i.gt, %i.ah
  tail call void @llvm.assume(i1 %i.gu)
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %i.gt
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !109, !noalias !164
  %i.gx = zext i16 %i.gw to i32
  %i.gy = icmp samesign ult i32 %i.go, %i.s
  tail call void @llvm.assume(i1 %i.gy)
  %i.gz = zext nneg i32 %i.go to i64
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %i.gz ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !109, !noalias !164
  %i.hd = zext i16 %i.hc to i32
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 6
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !109, !noalias !164
  %i.hg = zext i16 %i.hf to i32
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !106
  %i.hj = add i32 %i.hi, -16384                   ; 2 uses
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.an ; 2 uses
  %i.hl = mul nuw nsw i32 %i.ac, 6
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hn = zext nneg i32 %i.hl to i64              ; 2 uses
  %i.ho = add nuw nsw i64 %i.hn, 3                ; 2 uses
  %i.hp = icmp samesign ule i64 %i.ho, %2
  tail call void @llvm.assume(i1 %i.hp)
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.hk, i64 %i.hn
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.hk, i64 %i.ho
  %i.hs = add i32 %i.hj, %i.hg                    ; 2 uses
  %i.ht = load <3 x i32>, ptr %i.hm, align 8, !tbaa !107 ; 2 uses
  %i.hu = shufflevector <3 x i32> %i.ht, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hv = add nsw i32 %i.gs, -512
  %i.hw = shl nsw i32 %i.hs, 11
  %i.hx = add nsw i32 %i.gx, -512                 ; 2 uses
  %i.hy = insertelement <4 x i32> poison, i32 %i.hv, i64 0
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  %i.ia = add i32 %i.hj, %i.hd                    ; 3 uses
  %i.ib = mul nsw i32 %i.ia, -778
  %i.ic = sub nsw i32 %i.ib, %i.hw
  %i.id = ashr i32 %i.ic, 12                      ; 2 uses
  %i.ie = insertelement <4 x i32> %i.hy, i32 %i.id, i64 1
  %i.if = insertelement <4 x i32> %i.ie, i32 %i.ia, i64 2
  %i.ig = insertelement <4 x i32> %i.if, i32 %i.hs, i64 3 ; 2 uses
  %i.ih = shufflevector <4 x i32> %i.ig, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 0, i32 poison>
  %i.ii = insertelement <4 x i32> %i.ih, i32 %i.hx, i64 3
  %i.ij = add <4 x i32> %i.ig, %i.ii
  %i.ik = mul nsw <4 x i32> %i.ij, %i.hu
  %i.il = insertelement <2 x i32> poison, i32 %i.id, i64 0
  %i.im = insertelement <2 x i32> %i.il, i32 %i.ia, i64 1
  %i.in = insertelement <2 x i32> poison, i32 %i.hx, i64 0
  %i.io = shufflevector <2 x i32> %i.in, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ip = add <2 x i32> %i.im, %i.io
  %i.iq = shufflevector <3 x i32> %i.ht, <3 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.ir = mul nsw <2 x i32> %i.ip, %i.iq
  %i.is = ashr <4 x i32> %i.ik, splat (i32 8)
  %i.it = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.is, <4 x i32> zeroinitializer)
  %i.iu = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.it, <4 x i32> splat (i32 65535))
  %i.iv = trunc nuw <4 x i32> %i.iu to <4 x i16>
  store <4 x i16> %i.iv, ptr %i.hq, align 2, !tbaa !109
  %i.iw = ashr <2 x i32> %i.ir, splat (i32 8)
  %i.ix = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.iw, <2 x i32> zeroinitializer)
  %i.iy = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ix, <2 x i32> splat (i32 65535))
  %i.iz = trunc nuw <2 x i32> %i.iy to <2 x i16>
  store <2 x i16> %i.iz, ptr %i.hz, align 2, !tbaa !109
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi1EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18, !nonnull !19, !align !20
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98, !noalias !176 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !99, !noalias !176
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !100, !noalias !176
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96, !noalias !176
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !101, !noalias !176
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %2 = zext nneg i32 %i.i to i64                  ; 2 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !102  ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !103
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !104  ; 3 uses
  %i.x = icmp sge i32 %i.w, %i.s
  tail call void @llvm.assume(i1 %i.x)
  %i.y = and i32 %i.s, 3
  %i.z = icmp eq i32 %i.y, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = lshr exact i32 %i.s, 2
  %i.ab = icmp samesign ugt i32 %i.s, 4
  tail call void @llvm.assume(i1 %i.ab)
  %.sroa.054.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !105 ; 3 uses
  %i.ac = add nsw i32 %i.aa, -1                   ; 3 uses
  %i.ad = icmp samesign ult i32 %1, %i.u
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = mul nuw nsw i32 %i.w, %1
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.sroa.054.0.copyload, i64 %i.af ; 7 uses
  %i.ah = zext nneg i32 %i.s to i64               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !106
  %i.ak = add i32 %i.aj, -16384                   ; 2 uses
  %i.al = icmp samesign ult i32 %1, %i.k
  tail call void @llvm.assume(i1 %i.al)
  %i.am = mul i32 %i.n, %1
  %i.an = zext i32 %i.am to i64                   ; 3 uses
  %i.ao = getelementptr [2 x i8], ptr %i.d, i64 %i.an ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ar = load <3 x i32>, ptr %i.ap, align 8, !tbaa !107 ; 5 uses
  %i.as = shufflevector <3 x i32> %i.ar, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !107
  %wide.trip.count = zext i32 %i.ac to i64        ; 5 uses
  %invariant.op = add nsw i64 %i.ah, -1
  %min.iters.check = icmp ult i32 %i.s, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.au = mul nuw nsw i64 %wide.trip.count, 12
  %i.av = shl nuw nsw i64 %i.an, 1
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.au
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.av
  %i.ay = zext i32 %i.w to i64
  %i.az = zext i32 %1 to i64
  %i.ba = mul nuw i64 %i.ay, %i.az
  %i.bb = shl i64 %i.ba, 1
  %i.bc = shl nuw nsw i64 %wide.trip.count, 3
  %i.bd = getelementptr i8, ptr %.sroa.054.0.copyload, i64 %i.bb
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.bc
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %bound0 = icmp ult ptr %i.ao, %i.bf
  %bound1 = icmp ult ptr %i.ag, %i.ax
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bg = and i64 %wide.trip.count, 7             ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  %i.bi = select i1 %i.bh, i64 8, i64 %i.bg
  %n.vec = sub nsw i64 %wide.trip.count, %i.bi    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat96 = shufflevector <3 x i32> %i.ar, <3 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat98 = shufflevector <3 x i32> %i.ar, <3 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat100 = shufflevector <3 x i32> %i.ar, <3 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = phi i64 [ 0, %vector.ph ], [ %i.ec, %vector.body ] ; 3 uses
  %.idx = shl nuw nsw i64 %index, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx
  %wide.vec = load <32 x i16>, ptr %i.bk, align 2, !tbaa !109, !alias.scope !177, !noalias !178 ; 4 uses
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec105.a = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec106.a = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec107 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bl = zext <8 x i16> %strided.vec to <8 x i32> ; 3 uses
  %i.bm = zext <8 x i16> %strided.vec105.a to <8 x i32> ; 3 uses
  %i.bn = zext <8 x i16> %strided.vec106.a to <8 x i32>
  %i.bo = zext <8 x i16> %strided.vec107 to <8 x i32>
  %.idx111.a = shl i64 %i.bj, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx111.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %wide.vec108 = load <32 x i16>, ptr %i.bq, align 2, !tbaa !109, !alias.scope !177, !noalias !178 ; 2 uses
  %strided.vec109.a = shufflevector <32 x i16> %wide.vec108, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec110 = shufflevector <32 x i16> %wide.vec108, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.br = zext <8 x i16> %strided.vec109.a to <8 x i32>
  %i.bs = zext <8 x i16> %strided.vec110 to <8 x i32>
  %i.bt = add <8 x i32> %broadcast.splat, %i.bn   ; 4 uses
  %i.bu = add <8 x i32> %broadcast.splat, %i.bo   ; 4 uses
  %i.bv = add <8 x i32> %broadcast.splat, %i.br
  %i.bw = add <8 x i32> %broadcast.splat, %i.bs
  %i.bx = add nsw <8 x i32> %i.bv, %i.bt
  %i.by = ashr <8 x i32> %i.bx, splat (i32 1)     ; 3 uses
  %i.bz = add nsw <8 x i32> %i.bw, %i.bu
  %i.ca = ashr <8 x i32> %i.bz, splat (i32 1)     ; 3 uses
  %i.cb = mul nsw <8 x i32> %i.bt, splat (i32 50)
  %i.cc = mul nsw <8 x i32> %i.bu, splat (i32 22929)
  %i.cd = add nsw <8 x i32> %i.cc, %i.cb
  %i.ce = ashr <8 x i32> %i.cd, splat (i32 12)
  %i.cf = add nsw <8 x i32> %i.ce, %i.bl
  %i.cg = mul nsw <8 x i32> %i.cf, %broadcast.splat96
  %i.ch = mul nsw <8 x i32> %i.bt, splat (i32 -5640)
  %i.ci = mul <8 x i32> %i.bu, splat (i32 -11751)
  %i.cj = add <8 x i32> %i.ci, %i.ch
  %i.ck = ashr <8 x i32> %i.cj, splat (i32 12)
  %i.cl = add nsw <8 x i32> %i.ck, %i.bl
  %i.cm = mul nsw <8 x i32> %i.cl, %broadcast.splat98
  %i.cn = mul nsw <8 x i32> %i.bt, splat (i32 29040)
  %i.co = mul <8 x i32> %i.bu, splat (i32 -101)
  %i.cp = add <8 x i32> %i.co, %i.cn
  %i.cq = ashr <8 x i32> %i.cp, splat (i32 12)
  %i.cr = add nsw <8 x i32> %i.cq, %i.bl
  %i.cs = mul nsw <8 x i32> %i.cr, %broadcast.splat100
  %.idx112 = mul nuw nsw i64 %i.bj, 12
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx112
  %i.cu = mul nsw <8 x i32> %i.by, splat (i32 50)
  %i.cv = mul nsw <8 x i32> %i.ca, splat (i32 22929)
  %i.cw = add nsw <8 x i32> %i.cv, %i.cu
  %i.cx = ashr <8 x i32> %i.cw, splat (i32 12)
  %i.cy = add nsw <8 x i32> %i.cx, %i.bm
  %i.cz = mul nsw <8 x i32> %i.cy, %broadcast.splat96
  %i.da = mul nsw <8 x i32> %i.by, splat (i32 -5640)
  %i.db = mul <8 x i32> %i.ca, splat (i32 -11751)
  %i.dc = add <8 x i32> %i.db, %i.da
  %i.dd = ashr <8 x i32> %i.dc, splat (i32 12)
  %i.de = add nsw <8 x i32> %i.dd, %i.bm
  %i.df = mul nsw <8 x i32> %i.de, %broadcast.splat98
  %i.dg = mul nsw <8 x i32> %i.by, splat (i32 29040)
  %i.dh = mul <8 x i32> %i.ca, splat (i32 -101)
  %i.di = add <8 x i32> %i.dh, %i.dg
  %i.dj = ashr <8 x i32> %i.di, splat (i32 12)
  %i.dk = add nsw <8 x i32> %i.dj, %i.bm
  %i.dl = mul nsw <8 x i32> %i.dk, %broadcast.splat100
  %i.dm = ashr <8 x i32> %i.df, splat (i32 8)
  %i.dn = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dm, <8 x i32> zeroinitializer)
  %i.do = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dn, <8 x i32> splat (i32 65535))
  %i.dp = trunc nuw <8 x i32> %i.do to <8 x i16>
  %i.dq = ashr <8 x i32> %i.dl, splat (i32 8)
  %i.dr = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dq, <8 x i32> zeroinitializer)
  %i.ds = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dr, <8 x i32> splat (i32 65535))
  %i.dt = trunc nuw <8 x i32> %i.ds to <8 x i16>
  %i.du = shufflevector <8 x i32> %i.cg, <8 x i32> %i.cm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dv = shufflevector <8 x i32> %i.cs, <8 x i32> %i.cz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dw = shufflevector <16 x i32> %i.du, <16 x i32> %i.dv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dx = ashr <32 x i32> %i.dw, splat (i32 8)
  %i.dy = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.dx, <32 x i32> zeroinitializer)
  %i.dz = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.dy, <32 x i32> splat (i32 65535))
  %i.ea = trunc nuw <32 x i32> %i.dz to <32 x i16>
  %i.eb = shufflevector <8 x i16> %i.dp, <8 x i16> %i.dt, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.ea, <32 x i16> %i.eb, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.ct, align 2, !tbaa !109, !alias.scope !179, !noalias !177
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ec = add nuw nsw i64 %i.bj, 8
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %scalar.ph.preheader, label %vector.body, !llvm.loop !172

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %i.ee = insertelement <2 x i32> poison, i32 %i.ak, i64 0
  %i.ef = shufflevector <2 x i32> %i.ee, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eg = shufflevector <3 x i32> %i.ar, <3 x i32> poison, <2 x i32> <i32 poison, i32 2>
  %i.eh = insertelement <2 x i32> %i.eg, i32 %i.at, i64 0
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %i.eq, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ei = shl nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ei
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ei
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ei
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = load <2 x i16>, ptr %i.en, align 2, !tbaa !109, !noalias !178
  %i.ep = zext <2 x i16> %i.eo to <2 x i32>
  %i.eq = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.er = shl nuw nsw i64 %i.eq, 2                ; 2 uses
  %i.es = icmp ult i64 %i.er, %invariant.op
  tail call void @llvm.assume(i1 %i.es)
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.er
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ev = load <2 x i16>, ptr %i.eu, align 2, !tbaa !109, !noalias !178
  %i.ew = zext <2 x i16> %i.ev to <2 x i32>
  %i.ex = mul nuw nsw i64 %indvars.iv, 6          ; 2 uses
  %i.ey = add nuw nsw i64 %i.ex, 3                ; 2 uses
  %i.ez = icmp samesign ule i64 %i.ey, %2
  tail call void @llvm.assume(i1 %i.ez)
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.ex
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.ey
  %i.fc = load i16, ptr %i.el, align 2, !tbaa !109, !noalias !178
  %i.fd = load <2 x i16>, ptr %i.ej, align 2, !tbaa !109, !noalias !178
  %i.fe = shufflevector <2 x i16> %i.fd, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ff = zext i16 %i.fc to i32
  %i.fg = zext <4 x i16> %i.fe to <4 x i32>
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  %i.fi = add <2 x i32> %i.ef, %i.ew
  %i.fj = add <2 x i32> %i.ef, %i.ep              ; 3 uses
  %i.fk = add nsw <2 x i32> %i.fi, %i.fj
  %i.fl = ashr <2 x i32> %i.fk, splat (i32 1)     ; 4 uses
  %i.fm = shufflevector <2 x i32> %i.fj, <2 x i32> %i.fl, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.fn = mul <4 x i32> %i.fm, <i32 50, i32 -11751, i32 29040, i32 50>
  %i.fo = shufflevector <2 x i32> %i.fj, <2 x i32> %i.fl, <4 x i32> <i32 1, i32 0, i32 1, i32 3>
  %i.fp = mul <4 x i32> %i.fo, <i32 22929, i32 -5640, i32 -101, i32 22929>
  %i.fq = add <4 x i32> %i.fp, %i.fn
  %i.fr = ashr <4 x i32> %i.fq, splat (i32 12)
  %i.fs = add nsw <4 x i32> %i.fr, %i.fg
  %i.ft = mul nsw <4 x i32> %i.fs, %i.as
  %i.fu = mul <2 x i32> %i.fl, <i32 29040, i32 -11751>
  %i.fv = shufflevector <2 x i32> %i.fu, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.fw = mul <2 x i32> %i.fl, <i32 -5640, i32 -101>
  %i.fx = add <2 x i32> %i.fw, %i.fv
  %i.fy = ashr <2 x i32> %i.fx, splat (i32 12)
  %i.fz = insertelement <2 x i32> poison, i32 %i.ff, i64 0
  %i.ga = shufflevector <2 x i32> %i.fz, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.gb = add nsw <2 x i32> %i.fy, %i.ga
  %i.gc = mul nsw <2 x i32> %i.gb, %i.eh
  %i.gd = ashr <4 x i32> %i.ft, splat (i32 8)
  %i.ge = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gd, <4 x i32> zeroinitializer)
  %i.gf = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ge, <4 x i32> splat (i32 65535))
  %i.gg = trunc nuw <4 x i32> %i.gf to <4 x i16>
  store <4 x i16> %i.gg, ptr %i.fa, align 2, !tbaa !109
  %i.gh = ashr <2 x i32> %i.gc, splat (i32 8)
  %i.gi = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.gh, <2 x i32> zeroinitializer)
  %i.gj = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.gi, <2 x i32> splat (i32 65535))
  %i.gk = trunc nuw <2 x i32> %i.gj to <2 x i16>
  store <2 x i16> %i.gk, ptr %i.fh, align 2, !tbaa !109
  %exitcond.not = icmp eq i64 %i.eq, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !173

._crit_edge:                                      ; preds = %scalar.ph
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.054.0.copyload, i64 %i.af ; 3 uses
  %i.gm = shl nuw nsw i32 %i.ac, 2                ; 3 uses
  %i.gn = zext nneg i32 %i.gm to i64              ; 2 uses
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.gn
  %i.gp = or disjoint i64 %i.gn, 1                ; 2 uses
  %i.gq = icmp samesign ult i64 %i.gp, %i.ah
  tail call void @llvm.assume(i1 %i.gq)
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.gp
  %i.gs = icmp samesign ult i32 %i.gm, %i.s
  tail call void @llvm.assume(i1 %i.gs)
  %i.gt = zext nneg i32 %i.gm to i64
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !106
  %i.gy = add i32 %i.gx, -16384
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.an ; 2 uses
  %i.ha = mul nuw nsw i32 %i.ac, 6
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hc = zext nneg i32 %i.ha to i64              ; 2 uses
  %i.hd = add nuw nsw i64 %i.hc, 3                ; 2 uses
  %i.he = icmp samesign ule i64 %i.hd, %2
  tail call void @llvm.assume(i1 %i.he)
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.gz, i64 %i.hc
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.gz, i64 %i.hd
  %i.hh = load i16, ptr %i.gr, align 2, !tbaa !109, !noalias !180
  %i.hi = load <2 x i16>, ptr %i.go, align 2, !tbaa !109, !noalias !180
  %i.hj = shufflevector <2 x i16> %i.hi, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hk = zext i16 %i.hh to i32
  %i.hl = zext <4 x i16> %i.hj to <4 x i32>
  %i.hm = load <2 x i16>, ptr %i.gv, align 2, !tbaa !109, !noalias !180
  %i.hn = zext <2 x i16> %i.hm to <2 x i32>
  %i.ho = insertelement <2 x i32> poison, i32 %i.gy, i64 0
  %i.hp = shufflevector <2 x i32> %i.ho, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.hq = add <2 x i32> %i.hp, %i.hn              ; 2 uses
  %i.hr = shufflevector <2 x i32> %i.hq, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hs = load <3 x i32>, ptr %i.hb, align 8, !tbaa !107 ; 2 uses
  %i.ht = shufflevector <3 x i32> %i.hs, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hu = mul <4 x i32> %i.hr, <i32 50, i32 -11751, i32 29040, i32 22929>
  %i.hv = shufflevector <2 x i32> %i.hq, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.hw = mul <4 x i32> %i.hv, <i32 22929, i32 -5640, i32 -101, i32 50>
  %i.hx = add <4 x i32> %i.hu, %i.hw
  %i.hy = ashr <4 x i32> %i.hx, splat (i32 12)    ; 2 uses
  %i.hz = add nsw <4 x i32> %i.hy, %i.hl
  %i.ia = mul nsw <4 x i32> %i.hz, %i.ht
  %i.ib = ashr <4 x i32> %i.ia, splat (i32 8)
  %i.ic = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ib, <4 x i32> zeroinitializer)
  %i.id = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ic, <4 x i32> splat (i32 65535))
  %i.ie = trunc nuw <4 x i32> %i.id to <4 x i16>
  store <4 x i16> %i.ie, ptr %i.hf, align 2, !tbaa !109
  %i.if = getelementptr inbounds nuw i8, ptr %i.hg, i64 2
  %i.ig = shufflevector <4 x i32> %i.hy, <4 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.ih = insertelement <2 x i32> poison, i32 %i.hk, i64 0
  %i.ii = shufflevector <2 x i32> %i.ih, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ij = add nsw <2 x i32> %i.ig, %i.ii
  %i.ik = shufflevector <3 x i32> %i.hs, <3 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.il = mul nsw <2 x i32> %i.ij, %i.ik
  %i.im = ashr <2 x i32> %i.il, splat (i32 8)
  %i.in = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.im, <2 x i32> zeroinitializer)
  %i.io = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.in, <2 x i32> splat (i32 65535))
  %i.ip = trunc nuw <2 x i32> %i.io to <2 x i16>
  store <2 x i16> %i.ip, ptr %i.if, align 2, !tbaa !109
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi2EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18, !nonnull !19, !align !20
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98, !noalias !192 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !99, !noalias !192
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !100, !noalias !192
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96, !noalias !192
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !101, !noalias !192
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %2 = zext nneg i32 %i.i to i64                  ; 2 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !102  ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !103
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !104  ; 3 uses
  %i.x = icmp sge i32 %i.w, %i.s
  tail call void @llvm.assume(i1 %i.x)
  %i.y = and i32 %i.s, 3
  %i.z = icmp eq i32 %i.y, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = lshr exact i32 %i.s, 2
  %i.ab = icmp samesign ugt i32 %i.s, 4
  tail call void @llvm.assume(i1 %i.ab)
  %.sroa.050.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !105 ; 3 uses
  %i.ac = add nsw i32 %i.aa, -1                   ; 3 uses
  %i.ad = icmp samesign ult i32 %1, %i.u
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = mul nuw nsw i32 %i.w, %1
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.sroa.050.0.copyload, i64 %i.af ; 7 uses
  %i.ah = zext nneg i32 %i.s to i64               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !106
  %i.ak = add i32 %i.aj, -16384                   ; 5 uses
  %i.al = icmp samesign ult i32 %1, %i.k
  tail call void @llvm.assume(i1 %i.al)
  %i.am = mul i32 %i.n, %1
  %i.an = zext i32 %i.am to i64                   ; 3 uses
  %i.ao = getelementptr [2 x i8], ptr %i.d, i64 %i.an ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ar = load <3 x i32>, ptr %i.ap, align 8, !tbaa !107 ; 5 uses
  %i.as = shufflevector <3 x i32> %i.ar, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !107
  %wide.trip.count = zext i32 %i.ac to i64        ; 5 uses
  %invariant.op = add nsw i64 %i.ah, -1
  %min.iters.check = icmp ult i32 %i.s, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.au = mul nuw nsw i64 %wide.trip.count, 12
  %i.av = shl nuw nsw i64 %i.an, 1
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.au
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.av
  %i.ay = zext i32 %i.w to i64
  %i.az = zext i32 %1 to i64
  %i.ba = mul nuw i64 %i.ay, %i.az
  %i.bb = shl i64 %i.ba, 1
  %i.bc = shl nuw nsw i64 %wide.trip.count, 3
  %i.bd = getelementptr i8, ptr %.sroa.050.0.copyload, i64 %i.bb
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.bc
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %bound0 = icmp ult ptr %i.ao, %i.bf
  %bound1 = icmp ult ptr %i.ag, %i.ax
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bg = and i64 %wide.trip.count, 7             ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  %i.bi = select i1 %i.bh, i64 8, i64 %i.bg
  %n.vec = sub nsw i64 %wide.trip.count, %i.bi    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat92 = shufflevector <3 x i32> %i.ar, <3 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat94 = shufflevector <3 x i32> %i.ar, <3 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat96 = shufflevector <3 x i32> %i.ar, <3 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = phi i64 [ 0, %vector.ph ], [ %i.dm, %vector.body ] ; 3 uses
  %.idx = shl nuw nsw i64 %index, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx
  %wide.vec = load <32 x i16>, ptr %i.bk, align 2, !tbaa !109, !alias.scope !193, !noalias !194 ; 4 uses
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec101.a = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec102.a = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec103 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bl = zext <8 x i16> %strided.vec to <8 x i32> ; 3 uses
  %i.bm = zext <8 x i16> %strided.vec101.a to <8 x i32> ; 3 uses
  %i.bn = zext <8 x i16> %strided.vec102.a to <8 x i32>
  %i.bo = zext <8 x i16> %strided.vec103 to <8 x i32>
  %.idx107.a = shl i64 %i.bj, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx107.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %wide.vec104 = load <32 x i16>, ptr %i.bq, align 2, !tbaa !109, !alias.scope !193, !noalias !194 ; 2 uses
  %strided.vec105.a = shufflevector <32 x i16> %wide.vec104, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec106 = shufflevector <32 x i16> %wide.vec104, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.br = zext <8 x i16> %strided.vec105.a to <8 x i32>
  %i.bs = zext <8 x i16> %strided.vec106 to <8 x i32>
  %i.bt = add <8 x i32> %broadcast.splat, %i.bn   ; 3 uses
  %i.bu = add <8 x i32> %broadcast.splat, %i.bo   ; 3 uses
  %i.bv = add <8 x i32> %broadcast.splat, %i.br
  %i.bw = add <8 x i32> %broadcast.splat, %i.bs
  %i.bx = add nsw <8 x i32> %i.bv, %i.bt
  %i.by = ashr <8 x i32> %i.bx, splat (i32 1)     ; 2 uses
  %i.bz = add nsw <8 x i32> %i.bw, %i.bu
  %i.ca = ashr <8 x i32> %i.bz, splat (i32 1)     ; 2 uses
  %i.cb = add nsw <8 x i32> %i.bu, %i.bl
  %i.cc = mul nsw <8 x i32> %i.cb, %broadcast.splat92
  %i.cd = mul nsw <8 x i32> %i.bt, splat (i32 -778)
  %i.ce = shl nsw <8 x i32> %i.bu, splat (i32 11)
  %i.cf = sub nsw <8 x i32> %i.cd, %i.ce
  %i.cg = ashr <8 x i32> %i.cf, splat (i32 12)
  %i.ch = add nsw <8 x i32> %i.cg, %i.bl
  %i.ci = mul nsw <8 x i32> %i.ch, %broadcast.splat94
  %i.cj = add nsw <8 x i32> %i.bt, %i.bl
  %i.ck = mul nsw <8 x i32> %i.cj, %broadcast.splat96
  %.idx108 = mul nuw nsw i64 %i.bj, 12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx108
  %i.cm = add nsw <8 x i32> %i.ca, %i.bm
  %i.cn = mul nsw <8 x i32> %i.cm, %broadcast.splat92
  %i.co = mul nsw <8 x i32> %i.by, splat (i32 -778)
  %i.cp = shl nsw <8 x i32> %i.ca, splat (i32 11)
  %i.cq = sub nsw <8 x i32> %i.co, %i.cp
  %i.cr = ashr <8 x i32> %i.cq, splat (i32 12)
  %i.cs = add nsw <8 x i32> %i.cr, %i.bm
  %i.ct = mul nsw <8 x i32> %i.cs, %broadcast.splat94
  %i.cu = add nsw <8 x i32> %i.by, %i.bm
  %i.cv = mul nsw <8 x i32> %i.cu, %broadcast.splat96
  %i.cw = ashr <8 x i32> %i.ct, splat (i32 8)
  %i.cx = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cw, <8 x i32> zeroinitializer)
  %i.cy = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.cx, <8 x i32> splat (i32 65535))
  %i.cz = trunc nuw <8 x i32> %i.cy to <8 x i16>
  %i.da = ashr <8 x i32> %i.cv, splat (i32 8)
  %i.db = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.da, <8 x i32> zeroinitializer)
  %i.dc = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.db, <8 x i32> splat (i32 65535))
  %i.dd = trunc nuw <8 x i32> %i.dc to <8 x i16>
  %i.de = shufflevector <8 x i32> %i.cc, <8 x i32> %i.ci, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.df = shufflevector <8 x i32> %i.ck, <8 x i32> %i.cn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dg = shufflevector <16 x i32> %i.de, <16 x i32> %i.df, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dh = ashr <32 x i32> %i.dg, splat (i32 8)
  %i.di = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.dh, <32 x i32> zeroinitializer)
  %i.dj = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.di, <32 x i32> splat (i32 65535))
  %i.dk = trunc nuw <32 x i32> %i.dj to <32 x i16>
  %i.dl = shufflevector <8 x i16> %i.cz, <8 x i16> %i.dd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.dk, <32 x i16> %i.dl, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.cl, align 2, !tbaa !109, !alias.scope !195, !noalias !193
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dm = add nuw nsw i64 %i.bj, 8
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %scalar.ph.preheader, label %vector.body, !llvm.loop !188

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %i.do = extractelement <3 x i32> %i.ar, i64 2
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %i.ea, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dp = shl nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dp
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dp
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dp ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !109, !noalias !194
  %i.dw = zext i16 %i.dv to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 6
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !109, !noalias !194
  %i.dz = zext i16 %i.dy to i32
  %i.ea = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.eb = shl nuw nsw i64 %i.ea, 2                ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %invariant.op
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.eb ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !109, !noalias !194
  %i.eg = zext i16 %i.ef to i32
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 6
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !109, !noalias !194
  %i.ej = zext i16 %i.ei to i32
  %i.ek = add i32 %i.ak, %i.eg
  %i.el = add i32 %i.ak, %i.ej
  %i.em = mul nuw nsw i64 %indvars.iv, 6          ; 2 uses
  %i.en = add nuw nsw i64 %i.em, 3                ; 2 uses
  %i.eo = icmp samesign ule i64 %i.en, %2
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.em
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.en ; 2 uses
  %i.er = load i16, ptr %i.ds, align 2, !tbaa !109, !noalias !194
  %i.es = load <2 x i16>, ptr %i.dq, align 2, !tbaa !109, !noalias !194
  %i.et = shufflevector <2 x i16> %i.es, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.eu = zext i16 %i.er to i32                   ; 2 uses
  %i.ev = zext <4 x i16> %i.et to <4 x i32>
  %i.ew = add i32 %i.ak, %i.dw                    ; 3 uses
  %i.ex = add i32 %i.ak, %i.dz                    ; 3 uses
  %i.ey = add nsw i32 %i.ek, %i.ew
  %i.ez = ashr i32 %i.ey, 1                       ; 2 uses
  %i.fa = add nsw i32 %i.el, %i.ex
  %i.fb = ashr i32 %i.fa, 1                       ; 2 uses
  %i.fc = mul nsw i32 %i.ew, -778
  %i.fd = shl nsw i32 %i.ex, 11
  %i.fe = sub nsw i32 %i.fc, %i.fd
  %i.ff = ashr i32 %i.fe, 12
  %i.fg = insertelement <4 x i32> poison, i32 %i.ex, i64 0
  %i.fh = insertelement <4 x i32> %i.fg, i32 %i.ff, i64 1
  %i.fi = insertelement <4 x i32> %i.fh, i32 %i.ew, i64 2
  %i.fj = insertelement <4 x i32> %i.fi, i32 %i.fb, i64 3
  %i.fk = add nsw <4 x i32> %i.fj, %i.ev
  %i.fl = mul nsw <4 x i32> %i.fk, %i.as
  %i.fm = mul nsw i32 %i.ez, -778
  %i.fn = shl nsw i32 %i.fb, 11
  %i.fo = sub nsw i32 %i.fm, %i.fn
  %i.fp = ashr i32 %i.fo, 12
  %i.fq = add nsw i32 %i.fp, %i.eu
  %i.fr = mul nsw i32 %i.fq, %i.at
  %i.fs = add nsw i32 %i.ez, %i.eu
  %i.ft = mul nsw i32 %i.fs, %i.do
  %i.fu = ashr <4 x i32> %i.fl, splat (i32 8)
  %i.fv = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fu, <4 x i32> zeroinitializer)
  %i.fw = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fv, <4 x i32> splat (i32 65535))
  %i.fx = trunc nuw <4 x i32> %i.fw to <4 x i16>
  store <4 x i16> %i.fx, ptr %i.ep, align 2, !tbaa !109
  %i.fy = ashr i32 %i.fr, 8
  %.sroa.speculate.load.false.sroa.speculated.i3.i.i.1.i = tail call i32 @llvm.smax.i32(i32 %i.fy, i32 0)
  %i.fz = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i3.i.i.1.i, i32 65535)
  %i.ga = trunc nuw i32 %i.fz to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !109
  %i.gc = ashr i32 %i.ft, 8
  %.sroa.speculate.load.false.sroa.speculated.i5.i.i.1.i = tail call i32 @llvm.smax.i32(i32 %i.gc, i32 0)
  %i.gd = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i5.i.i.1.i, i32 65535)
  %i.ge = trunc nuw i32 %i.gd to i16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !109
  %exitcond.not = icmp eq i64 %i.ea, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !189

._crit_edge:                                      ; preds = %scalar.ph
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.050.0.copyload, i64 %i.af ; 3 uses
  %i.gh = shl nuw nsw i32 %i.ac, 2                ; 3 uses
  %i.gi = zext nneg i32 %i.gh to i64              ; 2 uses
end_hunk_1
