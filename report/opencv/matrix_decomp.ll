Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matrix_decomp?download=true
inline.NumInlined: 63
inline.NumDeleted: 38
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 44
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.cv::utils::trace::details::Region::LocationStaticStorage" = type { ptr, ptr, ptr, i32, i32 }
%"class.cv::utils::trace::details::Region" = type <{ ptr, i32, [4 x i8] }>
%"class.cv::AutoBuffer" = type { ptr, i64, [264 x float] }
%"class.cv::AutoBuffer.0" = type { ptr, i64, [136 x double] }

$_ZN2cv5utils5trace7details6RegionD2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZZN2cv3hal5LU32fEPfmiS1_miE30__cv_trace_location_extra_fn75 = internal global ptr null, align 8
@_ZZN2cv3hal5LU32fEPfmiS1_miE24__cv_trace_location_fn75 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal5LU32fEPfmiS1_miE30__cv_trace_location_extra_fn75, ptr @.str, ptr @.str.1, i32 75, i32 1 }, align 8
@.str = private unnamed_addr constant [63 x i8] c"int cv::hal::LU32f(float *, size_t, int, float *, size_t, int)\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"/opt-bench/work/opencv/opencv/modules/core/src/matrix_decomp.cpp\00", align 1
@_ZZN2cv3hal5LU64fEPdmiS1_miE30__cv_trace_location_extra_fn86 = internal global ptr null, align 8
@_ZZN2cv3hal5LU64fEPdmiS1_miE24__cv_trace_location_fn86 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal5LU64fEPdmiS1_miE30__cv_trace_location_extra_fn86, ptr @.str.3, ptr @.str.1, i32 86, i32 1 }, align 8
@.str.3 = private unnamed_addr constant [65 x i8] c"int cv::hal::LU64f(double *, size_t, int, double *, size_t, int)\00", align 1
@_ZZN2cv3hal11Cholesky32fEPfmiS1_miE31__cv_trace_location_extra_fn175 = internal global ptr null, align 8
@_ZZN2cv3hal11Cholesky32fEPfmiS1_miE25__cv_trace_location_fn175 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal11Cholesky32fEPfmiS1_miE31__cv_trace_location_extra_fn175, ptr @.str.5, ptr @.str.1, i32 175, i32 1 }, align 8
@.str.5 = private unnamed_addr constant [70 x i8] c"bool cv::hal::Cholesky32f(float *, size_t, int, float *, size_t, int)\00", align 1
@_ZZN2cv3hal11Cholesky64fEPdmiS1_miE31__cv_trace_location_extra_fn184 = internal global ptr null, align 8
@_ZZN2cv3hal11Cholesky64fEPdmiS1_miE25__cv_trace_location_fn184 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal11Cholesky64fEPdmiS1_miE31__cv_trace_location_extra_fn184, ptr @.str.7, ptr @.str.1, i32 184, i32 1 }, align 8
@.str.7 = private unnamed_addr constant [72 x i8] c"bool cv::hal::Cholesky64f(double *, size_t, int, double *, size_t, int)\00", align 1
@_ZZN2cv3hal5QR32fEPfmiiiS1_mS1_E31__cv_trace_location_extra_fn296 = internal global ptr null, align 8
@_ZZN2cv3hal5QR32fEPfmiiiS1_mS1_E25__cv_trace_location_fn296 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal5QR32fEPfmiiiS1_mS1_E31__cv_trace_location_extra_fn296, ptr @.str.9, ptr @.str.1, i32 296, i32 1 }, align 8
@.str.9 = private unnamed_addr constant [77 x i8] c"int cv::hal::QR32f(float *, size_t, int, int, int, float *, size_t, float *)\00", align 1
@_ZZN2cv3hal5QR64fEPdmiiiS1_mS1_E31__cv_trace_location_extra_fn306 = internal global ptr null, align 8
@_ZZN2cv3hal5QR64fEPdmiiiS1_mS1_E25__cv_trace_location_fn306 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal5QR64fEPdmiiiS1_mS1_E31__cv_trace_location_extra_fn306, ptr @.str.11, ptr @.str.1, i32 306, i32 1 }, align 8
@.str.11 = private unnamed_addr constant [80 x i8] c"int cv::hal::QR64f(double *, size_t, int, int, int, double *, size_t, double *)\00", align 1

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 2) i32 @_ZN2cv3hal5LU32fEPfmiS1_mi(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv3hal5LU32fEPfmiS1_miE24__cv_trace_location_fn75)
  %i.a = call fastcc noundef i32 @_ZN2cv3halL6LUImplIfEEiPT_miS3_miS2_(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !11
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #16
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 -1, 2) i32 @_ZN2cv3halL6LUImplIfEEiPT_miS3_miS2_(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3, i64 noundef %4, i32 noundef %5) unnamed_addr #3 {
bb.a:
  %i.a = lshr i64 %1, 2                           ; 13 uses
  %i.b = lshr i64 %4, 2                           ; 10 uses
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph174, label %.loopexit144

.lr.ph174:                                        ; preds = %bb.a
  %.not141 = icmp eq ptr %3, null                 ; 2 uses
  %i.d = icmp slt i32 %5, 1                       ; 2 uses
  %i.e = zext nneg i32 %2 to i64
  %wide.trip.count227 = zext nneg i32 %2 to i64   ; 18 uses
  %brmerge = or i1 %.not141, %i.d
  %wide.trip.count209 = zext i32 %5 to i64        ; 17 uses
  %brmerge192 = or i1 %.not141, %i.d
  %wide.trip.count219 = zext nneg i32 %5 to i64
  %i.f = and i64 %4, -4
  %i.g = and i64 %4, -4
  %i.h = shl nuw nsw i64 %wide.trip.count227, 2
  %i.i = add nsw i64 %i.h, -4
  %i.j = mul i64 %i.b, %i.i
  %i.k = shl nuw nsw i64 %wide.trip.count209, 2   ; 2 uses
  %i.l = getelementptr i8, ptr %3, i64 %i.j
  %scevgep3 = getelementptr i8, ptr %i.l, i64 %i.k
  %i.m = and i64 %1, -4
  %i.n = add i64 %i.m, 4                          ; 2 uses
  %i.o = shl nuw nsw i64 %wide.trip.count227, 2   ; 3 uses
  %i.p = add nsw i64 %i.o, -4
  %i.q = mul i64 %i.a, %i.p
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %scevgep10 = getelementptr i8, ptr %i.r, i64 %i.o
  %i.s = and i64 %1, -4
  %i.t = add nuw nsw i64 %wide.trip.count227, 4611686018427387903
  %i.u = mul i64 %i.b, %i.t
  %i.v = shl nuw nsw i64 %wide.trip.count209, 2
  %i.w = add i64 %i.u, %wide.trip.count209
  %i.x = shl i64 %i.w, 2
  %scevgep34 = getelementptr i8, ptr %3, i64 %i.x
  %scevgep35 = getelementptr i8, ptr %3, i64 %i.v
  %i.y = and i64 %4, -4
  %i.z = and i64 %1, -4
  %i.aa = add i64 %i.z, 4
  %i.ab = shl nuw nsw i64 %wide.trip.count227, 2  ; 2 uses
  %i.ac = and i64 %1, -4
  %i.ad = and i64 %1, -4
  %scevgep60 = getelementptr i8, ptr %0, i64 %i.ab
  %i.ae = add nsw i64 %wide.trip.count227, -2
  %i.af = getelementptr i8, ptr %0, i64 %i.ab
  %i.ag = getelementptr i8, ptr %0, i64 %i.n
  %i.ah = getelementptr i8, ptr %0, i64 %i.o
  %i.ai = getelementptr i8, ptr %3, i64 %i.f
  %i.aj = getelementptr i8, ptr %3, i64 %i.k
  %i.ak = add nsw i64 %wide.trip.count227, -1
  %min.iters.check42 = icmp ult i32 %5, 8
  %stride.check40 = icmp slt i64 %4, 0
  %n.vec44 = and i64 %wide.trip.count209, 2147483640 ; 3 uses
  %cmp.n53 = icmp eq i64 %n.vec44, %wide.trip.count209
  %xtraiter108 = and i64 %wide.trip.count209, 1
  %lcmp.mod109.not = icmp eq i64 %xtraiter108, 0
  %i.al = add nsw i64 %wide.trip.count209, -1
  %stride.check16 = icmp slt i64 %1, 0
  %i.am = add nsw i64 %wide.trip.count227, -1
  %min.iters.check = icmp ult i32 %5, 8
  %stride.check = icmp slt i64 %4, 0
  %n.vec = and i64 %wide.trip.count209, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count209
  %xtraiter112 = and i64 %wide.trip.count209, 1
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  %i.an = add nsw i64 %wide.trip.count209, -1
  br label %bb.b

.loopexit147:                                     ; preds = %.loopexit146, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond228.not = icmp eq i64 %indvars.iv.next200, %wide.trip.count227
  br i1 %exitcond228.not, label %._crit_edge175, label %bb.b, !llvm.loop !22

bb.b:                                             ; preds = %.lr.ph174, %.loopexit147
  %indvars.iv199 = phi i64 [ 0, %.lr.ph174 ], [ %indvars.iv.next200, %.loopexit147 ] ; 26 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph174 ], [ %indvars.iv.next, %.loopexit147 ] ; 9 uses
  %.0124172 = phi i32 [ 1, %.lr.ph174 ], [ %.1, %.loopexit147 ] ; 2 uses
  %i.ao = mul i64 %i.aa, %indvars.iv199
  %scevgep56 = getelementptr i8, ptr %0, i64 %i.ao
  %i.ap = mul i64 %i.ac, %indvars.iv199
  %scevgep57 = getelementptr i8, ptr %i.af, i64 %i.ap
  %i.aq = shl nuw nsw i64 %indvars.iv199, 2
  %scevgep58 = getelementptr i8, ptr %0, i64 %i.aq
  %i.ar = mul i64 %i.n, %indvars.iv199            ; 2 uses
  %scevgep9 = getelementptr i8, ptr %i.ag, i64 %i.ar
  %i.as = getelementptr i8, ptr %0, i64 %i.ar
  %scevgep11 = getelementptr i8, ptr %i.as, i64 4
  %i.at = mul i64 %i.s, %indvars.iv199
  %scevgep12 = getelementptr i8, ptr %i.ah, i64 %i.at
  %i.au = mul i64 %i.g, %indvars.iv199            ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.au
  %scevgep4 = getelementptr i8, ptr %i.aj, i64 %i.au
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 3 uses
  %i.av = icmp samesign ult i64 %indvars.iv.next200, %i.e ; 2 uses
  %i.aw = trunc nuw nsw i64 %indvars.iv199 to i32 ; 3 uses
  br i1 %i.av, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %indvars.iv199 ; 6 uses
  %6 = sub nsw i64 %indvars.iv199, %wide.trip.count227
  %xtraiter = and i64 %6, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.ax = mul i64 %i.a, %indvars.iv
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ax
  %i.ay = load float, ptr %gep.prol, align 4, !tbaa !14
  %i.az = tail call noundef float @llvm.fabs.f32(float %i.ay)
  %i.ba = mul i64 %i.a, %indvars.iv199
  %gep156.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ba
  %i.bb = load float, ptr %gep156.prol, align 4, !tbaa !14
  %i.bc = tail call noundef float @llvm.fabs.f32(float %i.bb)
  %i.bd = fcmp ogt float %i.az, %i.bc
  %i.be = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select.prol = select i1 %i.bd, i32 %i.be, i32 %i.aw ; 2 uses
  %indvars.iv.next196.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %spec.select.lcssa.unr = phi i32 [ poison, %.lr.ph ], [ %spec.select.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv195.unr = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next196.prol, %.prol.loopexit.unr-lcssa ]
  %.0125154.unr = phi i32 [ %i.aw, %.lr.ph ], [ %spec.select.prol, %.prol.loopexit.unr-lcssa ]
  %i.bf = icmp eq i64 %i.ae, %indvars.iv199
  br i1 %i.bf, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv195 = phi i64 [ %indvars.iv.next196.1, %.lr.ph.new ], [ %indvars.iv195.unr, %.prol.loopexit ] ; 4 uses
  %.0125154 = phi i32 [ %spec.select.1, %.lr.ph.new ], [ %.0125154.unr, %.prol.loopexit ] ; 2 uses
  %i.bg = mul i64 %i.a, %indvars.iv195
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bg
  %i.bh = load float, ptr %gep, align 4, !tbaa !14
  %i.bi = tail call noundef float @llvm.fabs.f32(float %i.bh)
  %i.bj = sext i32 %.0125154 to i64
  %i.bk = mul i64 %i.a, %i.bj
  %gep156 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bk
  %i.bl = load float, ptr %gep156, align 4, !tbaa !14
  %i.bm = tail call noundef float @llvm.fabs.f32(float %i.bl)
  %i.bn = fcmp ogt float %i.bi, %i.bm
  %i.bo = trunc nuw nsw i64 %indvars.iv195 to i32
  %spec.select = select i1 %i.bn, i32 %i.bo, i32 %.0125154 ; 2 uses
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %i.bp = mul i64 %i.a, %indvars.iv.next196
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bp
  %i.bq = load float, ptr %gep.1, align 4, !tbaa !14
  %i.br = tail call noundef float @llvm.fabs.f32(float %i.bq)
  %i.bs = sext i32 %spec.select to i64
  %i.bt = mul i64 %i.a, %i.bs
  %gep156.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bt
  %i.bu = load float, ptr %gep156.1, align 4, !tbaa !14
  %i.bv = tail call noundef float @llvm.fabs.f32(float %i.bu)
  %i.bw = fcmp ogt float %i.br, %i.bv
  %i.bx = trunc nuw nsw i64 %indvars.iv.next196 to i32
  %spec.select.1 = select i1 %i.bw, i32 %i.bx, i32 %spec.select ; 2 uses
  %indvars.iv.next196.1 = add nuw nsw i64 %indvars.iv195, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next196.1, %wide.trip.count227
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !23

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %.0125.lcssa = phi i32 [ %i.aw, %bb.b ], [ %spec.select.lcssa.unr, %.prol.loopexit ], [ %spec.select.1, %.lr.ph.new ] ; 2 uses
  %i.by = sext i32 %.0125.lcssa to i64            ; 4 uses
  %i.bz = mul i64 %i.a, %i.by
  %i.ca = getelementptr [4 x i8], ptr %0, i64 %i.bz ; 5 uses
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv199
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !14
  %i.cd = tail call noundef float @llvm.fabs.f32(float %i.cc)
  %i.ce = fcmp olt float %i.cd, f0x35A00000
  br i1 %i.ce, label %.loopexit144, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.cf = zext i32 %.0125.lcssa to i64
  %.not140 = icmp eq i64 %indvars.iv199, %i.cf
  br i1 %.not140, label %bb.d, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.c
  %i.cg = mul i64 %i.a, %indvars.iv199
  %i.ch = getelementptr [4 x i8], ptr %0, i64 %i.cg ; 4 uses
  %7 = sub nsw i64 %wide.trip.count227, %indvars.iv199 ; 3 uses
  %min.iters.check66 = icmp ult i64 %7, 8
  br i1 %min.iters.check66, label %scalar.ph65.preheader, label %vector.memcheck55

vector.memcheck55:                                ; preds = %.lr.ph158
  %i.ci = mul i64 %i.ad, %i.by                    ; 2 uses
  %scevgep59 = getelementptr i8, ptr %scevgep58, i64 %i.ci
  %scevgep61 = getelementptr i8, ptr %scevgep60, i64 %i.ci
  %bound062 = icmp ult ptr %scevgep56, %scevgep61
  %bound163 = icmp ult ptr %scevgep59, %scevgep57
  %found.conflict64 = and i1 %bound062, %bound163
  br i1 %found.conflict64, label %scalar.ph65.preheader, label %vector.ph67

vector.ph67:                                      ; preds = %vector.memcheck55
  %n.vec68 = and i64 %7, -8                       ; 3 uses
  %i.cj = add i64 %indvars.iv199, %n.vec68
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next75, %vector.body69 ] ; 2 uses
  %i.ck = add nuw i64 %indvars.iv199, %index70    ; 2 uses
  %i.cl = getelementptr [4 x i8], ptr %i.ch, i64 %i.ck ; 3 uses
  %i.cm = getelementptr [4 x i8], ptr %i.ca, i64 %i.ck ; 3 uses
  %i.cn = getelementptr i8, ptr %i.cl, i64 16     ; 2 uses
  %wide.load71 = load <4 x float>, ptr %i.cl, align 4, !tbaa !14, !alias.scope !54, !noalias !55
  %wide.load72 = load <4 x float>, ptr %i.cn, align 4, !tbaa !14, !alias.scope !54, !noalias !55
  %i.co = getelementptr i8, ptr %i.cm, i64 16     ; 2 uses
  %wide.load73 = load <4 x float>, ptr %i.cm, align 4, !tbaa !14, !alias.scope !55
  %wide.load74 = load <4 x float>, ptr %i.co, align 4, !tbaa !14, !alias.scope !55
  store <4 x float> %wide.load73, ptr %i.cl, align 4, !tbaa !14, !alias.scope !54, !noalias !55
  store <4 x float> %wide.load74, ptr %i.cn, align 4, !tbaa !14, !alias.scope !54, !noalias !55
  store <4 x float> %wide.load71, ptr %i.cm, align 4, !tbaa !14, !alias.scope !55
  store <4 x float> %wide.load72, ptr %i.co, align 4, !tbaa !14, !alias.scope !55
  %index.next75 = add nuw i64 %index70, 8         ; 2 uses
  %i.cp = icmp eq i64 %index.next75, %n.vec68
  br i1 %i.cp, label %middle.block76, label %vector.body69, !llvm.loop !27

middle.block76:                                   ; preds = %vector.body69
  %cmp.n77 = icmp eq i64 %7, %n.vec68
  br i1 %cmp.n77, label %._crit_edge159, label %scalar.ph65.preheader

scalar.ph65.preheader:                            ; preds = %vector.memcheck55, %.lr.ph158, %middle.block76
  %indvars.iv201.ph = phi i64 [ %indvars.iv199, %vector.memcheck55 ], [ %indvars.iv199, %.lr.ph158 ], [ %i.cj, %middle.block76 ] ; 6 uses
  %i.cq = sub i64 %wide.trip.count227, %indvars.iv201.ph
  %xtraiter106 = and i64 %i.cq, 1
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %scalar.ph65.prol.loopexit, label %scalar.ph65.prol

scalar.ph65.prol:                                 ; preds = %scalar.ph65.preheader
  %i.cr = getelementptr [4 x i8], ptr %i.ch, i64 %indvars.iv201.ph ; 2 uses
  %i.cs = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv201.ph ; 2 uses
  %i.ct = load float, ptr %i.cr, align 4, !tbaa !14
  %i.cu = load float, ptr %i.cs, align 4, !tbaa !14
  store float %i.cu, ptr %i.cr, align 4, !tbaa !14
  store float %i.ct, ptr %i.cs, align 4, !tbaa !14
  %indvars.iv.next202.prol = add nuw nsw i64 %indvars.iv201.ph, 1
  br label %scalar.ph65.prol.loopexit

scalar.ph65.prol.loopexit:                        ; preds = %scalar.ph65.prol, %scalar.ph65.preheader
  %indvars.iv201.unr = phi i64 [ %indvars.iv201.ph, %scalar.ph65.preheader ], [ %indvars.iv.next202.prol, %scalar.ph65.prol ]
  %i.cv = icmp eq i64 %indvars.iv201.ph, %i.ak
  br i1 %i.cv, label %._crit_edge159, label %scalar.ph65

scalar.ph65:                                      ; preds = %scalar.ph65.prol.loopexit, %scalar.ph65
  %indvars.iv201 = phi i64 [ %indvars.iv.next202.1, %scalar.ph65 ], [ %indvars.iv201.unr, %scalar.ph65.prol.loopexit ] ; 4 uses
  %i.cw = getelementptr [4 x i8], ptr %i.ch, i64 %indvars.iv201 ; 2 uses
  %i.cx = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv201 ; 2 uses
  %i.cy = load float, ptr %i.cw, align 4, !tbaa !14
  %i.cz = load float, ptr %i.cx, align 4, !tbaa !14
  store float %i.cz, ptr %i.cw, align 4, !tbaa !14
  store float %i.cy, ptr %i.cx, align 4, !tbaa !14
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %i.da = getelementptr [4 x i8], ptr %i.ch, i64 %indvars.iv.next202 ; 2 uses
  %i.db = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv.next202 ; 2 uses
  %i.dc = load float, ptr %i.da, align 4, !tbaa !14
  %i.dd = load float, ptr %i.db, align 4, !tbaa !14
  store float %i.dd, ptr %i.da, align 4, !tbaa !14
  store float %i.dc, ptr %i.db, align 4, !tbaa !14
  %indvars.iv.next202.1 = add nuw nsw i64 %indvars.iv201, 2 ; 2 uses
  %exitcond205.not.1 = icmp eq i64 %indvars.iv.next202.1, %wide.trip.count227
  br i1 %exitcond205.not.1, label %._crit_edge159, label %scalar.ph65, !llvm.loop !28

._crit_edge159:                                   ; preds = %scalar.ph65.prol.loopexit, %scalar.ph65, %middle.block76
  br i1 %brmerge, label %.loopexit149, label %.lr.ph161

.lr.ph161:                                        ; preds = %._crit_edge159
  %i.de = mul i64 %i.b, %indvars.iv199
  %i.df = getelementptr [4 x i8], ptr %3, i64 %i.de ; 4 uses
  %i.dg = mul i64 %i.b, %i.by
  %i.dh = getelementptr [4 x i8], ptr %3, i64 %i.dg ; 5 uses
  br i1 %min.iters.check42, label %scalar.ph41.preheader, label %vector.memcheck33

vector.memcheck33:                                ; preds = %.lr.ph161
  %i.di = mul i64 %i.y, %i.by
  %scevgep36 = getelementptr i8, ptr %scevgep35, i64 %i.di
  %bound037 = icmp ult ptr %3, %scevgep36
  %bound138 = icmp ult ptr %i.dh, %scevgep34
  %found.conflict39 = and i1 %bound037, %bound138
  %i.dj = or i1 %found.conflict39, %stride.check40
  br i1 %i.dj, label %scalar.ph41.preheader, label %vector.body45

vector.body45:                                    ; preds = %vector.memcheck33, %vector.body45
  %index46 = phi i64 [ %index.next51, %vector.body45 ], [ 0, %vector.memcheck33 ] ; 3 uses
  %i.dk = getelementptr [4 x i8], ptr %i.df, i64 %index46 ; 3 uses
  %i.dl = getelementptr [4 x i8], ptr %i.dh, i64 %index46 ; 3 uses
  %i.dm = getelementptr i8, ptr %i.dk, i64 16     ; 2 uses
  %wide.load47 = load <4 x float>, ptr %i.dk, align 4, !tbaa !14, !alias.scope !56, !noalias !57
  %wide.load48 = load <4 x float>, ptr %i.dm, align 4, !tbaa !14, !alias.scope !56, !noalias !57
  %i.dn = getelementptr i8, ptr %i.dl, i64 16     ; 2 uses
  %wide.load49 = load <4 x float>, ptr %i.dl, align 4, !tbaa !14, !alias.scope !57
  %wide.load50 = load <4 x float>, ptr %i.dn, align 4, !tbaa !14, !alias.scope !57
  store <4 x float> %wide.load49, ptr %i.dk, align 4, !tbaa !14, !alias.scope !56, !noalias !57
  store <4 x float> %wide.load50, ptr %i.dm, align 4, !tbaa !14, !alias.scope !56, !noalias !57
  store <4 x float> %wide.load47, ptr %i.dl, align 4, !tbaa !14, !alias.scope !57
  store <4 x float> %wide.load48, ptr %i.dn, align 4, !tbaa !14, !alias.scope !57
  %index.next51 = add nuw i64 %index46, 8         ; 2 uses
  %i.do = icmp eq i64 %index.next51, %n.vec44
  br i1 %i.do, label %middle.block52, label %vector.body45, !llvm.loop !32

middle.block52:                                   ; preds = %vector.body45
  br i1 %cmp.n53, label %.loopexit149, label %scalar.ph41.preheader

scalar.ph41.preheader:                            ; preds = %vector.memcheck33, %.lr.ph161, %middle.block52
  %indvars.iv206.ph = phi i64 [ 0, %vector.memcheck33 ], [ 0, %.lr.ph161 ], [ %n.vec44, %middle.block52 ] ; 5 uses
  br i1 %lcmp.mod109.not, label %scalar.ph41.prol.loopexit, label %scalar.ph41.prol

scalar.ph41.prol:                                 ; preds = %scalar.ph41.preheader
  %i.dp = getelementptr [4 x i8], ptr %i.df, i64 %indvars.iv206.ph ; 2 uses
  %i.dq = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv206.ph ; 2 uses
  %i.dr = load float, ptr %i.dp, align 4, !tbaa !14
  %i.ds = load float, ptr %i.dq, align 4, !tbaa !14
  store float %i.ds, ptr %i.dp, align 4, !tbaa !14
  store float %i.dr, ptr %i.dq, align 4, !tbaa !14
  %indvars.iv.next207.prol = or disjoint i64 %indvars.iv206.ph, 1
  br label %scalar.ph41.prol.loopexit

scalar.ph41.prol.loopexit:                        ; preds = %scalar.ph41.prol, %scalar.ph41.preheader
  %indvars.iv206.unr = phi i64 [ %indvars.iv206.ph, %scalar.ph41.preheader ], [ %indvars.iv.next207.prol, %scalar.ph41.prol ]
  %i.dt = icmp eq i64 %indvars.iv206.ph, %i.al
  br i1 %i.dt, label %.loopexit149, label %scalar.ph41

scalar.ph41:                                      ; preds = %scalar.ph41.prol.loopexit, %scalar.ph41
  %indvars.iv206 = phi i64 [ %indvars.iv.next207.1, %scalar.ph41 ], [ %indvars.iv206.unr, %scalar.ph41.prol.loopexit ] ; 4 uses
  %i.du = getelementptr [4 x i8], ptr %i.df, i64 %indvars.iv206 ; 2 uses
  %i.dv = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv206 ; 2 uses
  %i.dw = load float, ptr %i.du, align 4, !tbaa !14
  %i.dx = load float, ptr %i.dv, align 4, !tbaa !14
  store float %i.dx, ptr %i.du, align 4, !tbaa !14
  store float %i.dw, ptr %i.dv, align 4, !tbaa !14
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.dy = getelementptr [4 x i8], ptr %i.df, i64 %indvars.iv.next207 ; 2 uses
  %i.dz = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv.next207 ; 2 uses
  %i.ea = load float, ptr %i.dy, align 4, !tbaa !14
  %i.eb = load float, ptr %i.dz, align 4, !tbaa !14
  store float %i.eb, ptr %i.dy, align 4, !tbaa !14
  store float %i.ea, ptr %i.dz, align 4, !tbaa !14
  %indvars.iv.next207.1 = add nuw nsw i64 %indvars.iv206, 2 ; 2 uses
  %exitcond210.not.1 = icmp eq i64 %indvars.iv.next207.1, %wide.trip.count209
  br i1 %exitcond210.not.1, label %.loopexit149, label %scalar.ph41, !llvm.loop !33

.loopexit149:                                     ; preds = %scalar.ph41.prol.loopexit, %scalar.ph41, %middle.block52, %._crit_edge159
  %i.ec = sub nsw i32 0, %.0124172
  br label %bb.d

bb.d:                                             ; preds = %.loopexit149, %bb.c
  %.1 = phi i32 [ %i.ec, %.loopexit149 ], [ %.0124172, %bb.c ] ; 4 uses
  %i.ed = mul i64 %i.a, %indvars.iv199
  %i.ee = getelementptr [4 x i8], ptr %0, i64 %i.ed ; 5 uses
  %i.ef = getelementptr [4 x i8], ptr %i.ee, i64 %indvars.iv199
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !14
  %i.eh = fdiv float -1.000000e+00, %i.eg
  br i1 %i.av, label %.lr.ph170, label %.loopexit147

.lr.ph170:                                        ; preds = %bb.d
  %i.ei = mul i64 %i.b, %indvars.iv199
  %i.ej = getelementptr [4 x i8], ptr %3, i64 %i.ei ; 5 uses
  %8 = xor i64 %indvars.iv199, -1
  %9 = add nsw i64 %8, %wide.trip.count227        ; 3 uses
  %min.iters.check18 = icmp ult i64 %9, 8
  %bound013 = icmp ult ptr %scevgep9, %scevgep12
  %bound114 = icmp ult ptr %scevgep11, %scevgep10
  %found.conflict15 = and i1 %bound013, %bound114
  %i.ek = or i1 %found.conflict15, %stride.check16
  %n.vec20 = and i64 %9, -8                       ; 3 uses
  %i.el = add i64 %indvars.iv, %n.vec20
  %cmp.n31 = icmp eq i64 %9, %n.vec20
  %bound0 = icmp ult ptr %scevgep, %scevgep4
  %bound1 = icmp ult ptr %i.ej, %scevgep3
  %found.conflict = and i1 %bound0, %bound1
  %i.em = or i1 %found.conflict, %stride.check
  br label %.lr.ph164

.lr.ph164:                                        ; preds = %.lr.ph170, %.loopexit146
  %indvars.iv221 = phi i64 [ %indvars.iv, %.lr.ph170 ], [ %indvars.iv.next222, %.loopexit146 ] ; 3 uses
  %i.en = mul i64 %i.a, %indvars.iv221
  %i.eo = getelementptr [4 x i8], ptr %0, i64 %i.en ; 5 uses
  %i.ep = getelementptr [4 x i8], ptr %i.eo, i64 %indvars.iv199
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !14
  %i.er = fmul float %i.eh, %i.eq                 ; 8 uses
  %brmerge116 = select i1 %min.iters.check18, i1 true, i1 %i.ek
  br i1 %brmerge116, label %scalar.ph17.preheader, label %vector.ph19

vector.ph19:                                      ; preds = %.lr.ph164
  %broadcast.splatinsert21 = insertelement <4 x float> poison, float %i.er, i64 0
  %broadcast.splat22 = shufflevector <4 x float> %broadcast.splatinsert21, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body23

vector.body23:                                    ; preds = %vector.body23, %vector.ph19
  %index24 = phi i64 [ 0, %vector.ph19 ], [ %index.next29, %vector.body23 ] ; 2 uses
  %i.es = add nuw i64 %indvars.iv, %index24       ; 2 uses
  %i.et = getelementptr [4 x i8], ptr %i.ee, i64 %i.es ; 2 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 16
  %wide.load25 = load <4 x float>, ptr %i.et, align 4, !tbaa !14, !alias.scope !58
  %wide.load26 = load <4 x float>, ptr %i.eu, align 4, !tbaa !14, !alias.scope !58
  %i.ev = getelementptr [4 x i8], ptr %i.eo, i64 %i.es ; 3 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 16     ; 2 uses
  %wide.load27 = load <4 x float>, ptr %i.ev, align 4, !tbaa !14, !alias.scope !59, !noalias !58
  %wide.load28 = load <4 x float>, ptr %i.ew, align 4, !tbaa !14, !alias.scope !59, !noalias !58
  %i.ex = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat22, <4 x float> %wide.load25, <4 x float> %wide.load27)
  %i.ey = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat22, <4 x float> %wide.load26, <4 x float> %wide.load28)
  store <4 x float> %i.ex, ptr %i.ev, align 4, !tbaa !14, !alias.scope !59, !noalias !58
  store <4 x float> %i.ey, ptr %i.ew, align 4, !tbaa !14, !alias.scope !59, !noalias !58
  %index.next29 = add nuw i64 %index24, 8         ; 2 uses
  %i.ez = icmp eq i64 %index.next29, %n.vec20
  br i1 %i.ez, label %middle.block30, label %vector.body23, !llvm.loop !37

middle.block30:                                   ; preds = %vector.body23
  br i1 %cmp.n31, label %._crit_edge165, label %scalar.ph17.preheader

scalar.ph17.preheader:                            ; preds = %.lr.ph164, %middle.block30
  %indvars.iv211.ph = phi i64 [ %i.el, %middle.block30 ], [ %indvars.iv, %.lr.ph164 ] ; 6 uses
  %i.fa = sub i64 %wide.trip.count227, %indvars.iv211.ph
  %xtraiter110 = and i64 %i.fa, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %scalar.ph17.prol.loopexit, label %scalar.ph17.prol

scalar.ph17.prol:                                 ; preds = %scalar.ph17.preheader
  %i.fb = getelementptr [4 x i8], ptr %i.ee, i64 %indvars.iv211.ph
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !14
  %i.fd = getelementptr [4 x i8], ptr %i.eo, i64 %indvars.iv211.ph ; 2 uses
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !14
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.er, float %i.fc, float %i.fe)
  store float %i.ff, ptr %i.fd, align 4, !tbaa !14
  %indvars.iv.next212.prol = add nuw nsw i64 %indvars.iv211.ph, 1
  br label %scalar.ph17.prol.loopexit

scalar.ph17.prol.loopexit:                        ; preds = %scalar.ph17.prol, %scalar.ph17.preheader
  %indvars.iv211.unr = phi i64 [ %indvars.iv211.ph, %scalar.ph17.preheader ], [ %indvars.iv.next212.prol, %scalar.ph17.prol ]
  %i.fg = icmp eq i64 %indvars.iv211.ph, %i.am
  br i1 %i.fg, label %._crit_edge165, label %scalar.ph17

scalar.ph17:                                      ; preds = %scalar.ph17.prol.loopexit, %scalar.ph17
  %indvars.iv211 = phi i64 [ %indvars.iv.next212.1, %scalar.ph17 ], [ %indvars.iv211.unr, %scalar.ph17.prol.loopexit ] ; 4 uses
  %i.fh = getelementptr [4 x i8], ptr %i.ee, i64 %indvars.iv211
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !14
  %i.fj = getelementptr [4 x i8], ptr %i.eo, i64 %indvars.iv211 ; 2 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !14
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.er, float %i.fi, float %i.fk)
  store float %i.fl, ptr %i.fj, align 4, !tbaa !14
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %i.fm = getelementptr [4 x i8], ptr %i.ee, i64 %indvars.iv.next212
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !14
  %i.fo = getelementptr [4 x i8], ptr %i.eo, i64 %indvars.iv.next212 ; 2 uses
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !14
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.er, float %i.fn, float %i.fp)
  store float %i.fq, ptr %i.fo, align 4, !tbaa !14
  %indvars.iv.next212.1 = add nuw nsw i64 %indvars.iv211, 2 ; 2 uses
  %exitcond215.not.1 = icmp eq i64 %indvars.iv.next212.1, %wide.trip.count227
  br i1 %exitcond215.not.1, label %._crit_edge165, label %scalar.ph17, !llvm.loop !38

._crit_edge165:                                   ; preds = %scalar.ph17.prol.loopexit, %scalar.ph17, %middle.block30
  br i1 %brmerge192, label %.loopexit146, label %.lr.ph167

.lr.ph167:                                        ; preds = %._crit_edge165
  %i.fr = mul i64 %i.b, %indvars.iv221
  %i.fs = getelementptr [4 x i8], ptr %3, i64 %i.fr ; 4 uses
  %brmerge117 = select i1 %min.iters.check, i1 true, i1 %i.em
  br i1 %brmerge117, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph167
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.er, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ft = getelementptr [4 x i8], ptr %i.ej, i64 %index ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 16
  %wide.load = load <4 x float>, ptr %i.ft, align 4, !tbaa !14, !alias.scope !60
  %wide.load5 = load <4 x float>, ptr %i.fu, align 4, !tbaa !14, !alias.scope !60
  %i.fv = getelementptr [4 x i8], ptr %i.fs, i64 %index ; 3 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 16     ; 2 uses
  %wide.load6 = load <4 x float>, ptr %i.fv, align 4, !tbaa !14, !alias.scope !61, !noalias !60
  %wide.load7 = load <4 x float>, ptr %i.fw, align 4, !tbaa !14, !alias.scope !61, !noalias !60
  %i.fx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load6)
  %i.fy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load5, <4 x float> %wide.load7)
  store <4 x float> %i.fx, ptr %i.fv, align 4, !tbaa !14, !alias.scope !61, !noalias !60
  store <4 x float> %i.fy, ptr %i.fw, align 4, !tbaa !14, !alias.scope !61, !noalias !60
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph167, %middle.block
  %indvars.iv216.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph167 ] ; 5 uses
  br i1 %lcmp.mod113.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ga = getelementptr [4 x i8], ptr %i.ej, i64 %indvars.iv216.ph
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !14
  %i.gc = getelementptr [4 x i8], ptr %i.fs, i64 %indvars.iv216.ph ; 2 uses
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !14
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.er, float %i.gb, float %i.gd)
  store float %i.ge, ptr %i.gc, align 4, !tbaa !14
  %indvars.iv.next217.prol = or disjoint i64 %indvars.iv216.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv216.unr = phi i64 [ %indvars.iv216.ph, %scalar.ph.preheader ], [ %indvars.iv.next217.prol, %scalar.ph.prol ]
  %i.gf = icmp eq i64 %indvars.iv216.ph, %i.an
  br i1 %i.gf, label %.loopexit146, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv216 = phi i64 [ %indvars.iv.next217.1, %scalar.ph ], [ %indvars.iv216.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.gg = getelementptr [4 x i8], ptr %i.ej, i64 %indvars.iv216
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !14
  %i.gi = getelementptr [4 x i8], ptr %i.fs, i64 %indvars.iv216 ; 2 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !14
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.er, float %i.gh, float %i.gj)
  store float %i.gk, ptr %i.gi, align 4, !tbaa !14
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 2 uses
  %i.gl = getelementptr [4 x i8], ptr %i.ej, i64 %indvars.iv.next217
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !14
  %i.gn = getelementptr [4 x i8], ptr %i.fs, i64 %indvars.iv.next217 ; 2 uses
  %i.go = load float, ptr %i.gn, align 4, !tbaa !14
  %i.gp = tail call float @llvm.fmuladd.f32(float %i.er, float %i.gm, float %i.go)
  store float %i.gp, ptr %i.gn, align 4, !tbaa !14
  %indvars.iv.next217.1 = add nuw nsw i64 %indvars.iv216, 2 ; 2 uses
  %exitcond220.not.1 = icmp eq i64 %indvars.iv.next217.1, %wide.trip.count219
  br i1 %exitcond220.not.1, label %.loopexit146, label %scalar.ph, !llvm.loop !43

.loopexit146:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge165
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %exitcond225.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count227
  br i1 %exitcond225.not, label %.loopexit147, label %.lr.ph164, !llvm.loop !44

._crit_edge175:                                   ; preds = %.loopexit147
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.loopexit144, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %._crit_edge175
  %i.gq = icmp sgt i32 %5, 0
  %i.gr = add nuw nsw i64 %i.a, 1                 ; 2 uses
  br i1 %i.gq, label %.preheader.preheader, label %.loopexit144

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.gs = zext nneg i32 %2 to i64
  %i.gt = zext nneg i32 %2 to i64
  %wide.trip.count232 = zext nneg i32 %5 to i64
  %wide.trip.count242 = zext nneg i32 %5 to i64
  %i.gu = add nsw i64 %wide.trip.count227, -1     ; 2 uses
  %i.gv = mul i64 %i.b, %i.gu
  %i.gw = shl i64 %i.gv, 2
  %scevgep80 = getelementptr i8, ptr %3, i64 %i.gw
  %i.gx = shl nuw nsw i64 %wide.trip.count209, 2
  %scevgep81 = getelementptr i8, ptr %3, i64 %i.gx
  %i.gy = mul i64 %i.b, -4
  %i.gz = mul i64 %i.gu, %i.gr
  %i.ha = shl i64 %i.gz, 2
  %scevgep82 = getelementptr i8, ptr %0, i64 %i.ha
  %scevgep83 = getelementptr i8, ptr %0, i64 4
  %min.iters.check90 = icmp ult i32 %5, 4
  %bound084 = icmp ult ptr %scevgep80, %scevgep83
  %bound185 = icmp ult ptr %scevgep82, %scevgep81
  %found.conflict86 = and i1 %bound084, %bound185
  %stride.check87 = icmp slt i64 %i.gy, 0
  %i.hb = or i1 %found.conflict86, %stride.check87
  %stride.check88 = icmp sgt i64 %1, -1
  %i.hc = or i1 %i.hb, %stride.check88
  %n.vec92 = and i64 %wide.trip.count209, 2147483644 ; 3 uses
  %cmp.n100 = icmp eq i64 %n.vec92, %wide.trip.count209
  %xtraiter114 = and i64 %wide.trip.count209, 3   ; 2 uses
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br label %.preheader

..loopexit_crit_edge:                             ; preds = %.lr.ph186.split.prol.loopexit, %.lr.ph186.split, %._crit_edge183.us, %middle.block99
  %i.hd = icmp sgt i64 %indvars.iv234, 1
  br i1 %i.hd, label %.preheader, label %.loopexit144, !llvm.loop !45

.preheader:                                       ; preds = %.preheader.preheader, %..loopexit_crit_edge
  %indvars.iv234 = phi i64 [ %i.gs, %.preheader.preheader ], [ %indvars.iv.next235, %..loopexit_crit_edge ] ; 4 uses
  %indvars.iv.next235 = add nsw i64 %indvars.iv234, -1 ; 4 uses
  %i.he = mul i64 %i.b, %indvars.iv.next235
  %i.hf = getelementptr [4 x i8], ptr %3, i64 %i.he ; 7 uses
  %i.hg = icmp slt i64 %indvars.iv234, %i.gt
  %i.hh = mul i64 %i.a, %indvars.iv.next235
  %i.hi = getelementptr [4 x i8], ptr %0, i64 %i.hh
  %i.hj = mul i64 %i.gr, %indvars.iv.next235
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hj ; 7 uses
  br i1 %i.hg, label %.lr.ph182.us, label %.lr.ph186.split.preheader

.lr.ph186.split.preheader:                        ; preds = %.preheader
  %brmerge118 = select i1 %min.iters.check90, i1 true, i1 %i.hc
  br i1 %brmerge118, label %.lr.ph186.split.preheader103, label %vector.ph91

vector.ph91:                                      ; preds = %.lr.ph186.split.preheader
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !14, !alias.scope !62
  %broadcast.splatinsert96 = insertelement <4 x float> poison, float %i.hl, i64 0
  %broadcast.splat97 = shufflevector <4 x float> %broadcast.splatinsert96, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph91
  %index94 = phi i64 [ 0, %vector.ph91 ], [ %index.next98, %vector.body93 ] ; 2 uses
  %i.hm = getelementptr [4 x i8], ptr %i.hf, i64 %index94 ; 2 uses
  %wide.load95 = load <4 x float>, ptr %i.hm, align 4, !tbaa !14, !alias.scope !63, !noalias !62
  %i.hn = fdiv <4 x float> %wide.load95, %broadcast.splat97
  store <4 x float> %i.hn, ptr %i.hm, align 4, !tbaa !14, !alias.scope !63, !noalias !62
  %index.next98 = add nuw i64 %index94, 4         ; 2 uses
  %i.ho = icmp eq i64 %index.next98, %n.vec92
  br i1 %i.ho, label %middle.block99, label %vector.body93, !llvm.loop !49

middle.block99:                                   ; preds = %vector.body93
  br i1 %cmp.n100, label %..loopexit_crit_edge, label %.lr.ph186.split.preheader103

.lr.ph186.split.preheader103:                     ; preds = %.lr.ph186.split.preheader, %middle.block99
  %indvars.iv229.ph = phi i64 [ %n.vec92, %middle.block99 ], [ 0, %.lr.ph186.split.preheader ] ; 3 uses
  br i1 %lcmp.mod115.not, label %.lr.ph186.split.prol.loopexit, label %.lr.ph186.split.prol

.lr.ph186.split.prol:                             ; preds = %.lr.ph186.split.preheader103, %.lr.ph186.split.prol
  %indvars.iv229.prol = phi i64 [ %indvars.iv.next230.prol, %.lr.ph186.split.prol ], [ %indvars.iv229.ph, %.lr.ph186.split.preheader103 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph186.split.prol ], [ 0, %.lr.ph186.split.preheader103 ]
  %i.hp = getelementptr [4 x i8], ptr %i.hf, i64 %indvars.iv229.prol ; 2 uses
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !14
  %i.hr = load float, ptr %i.hk, align 4, !tbaa !14
  %i.hs = fdiv float %i.hq, %i.hr
  store float %i.hs, ptr %i.hp, align 4, !tbaa !14
  %indvars.iv.next230.prol = add nuw nsw i64 %indvars.iv229.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter114
  br i1 %prol.iter.cmp.not, label %.lr.ph186.split.prol.loopexit, label %.lr.ph186.split.prol, !llvm.loop !50

.lr.ph186.split.prol.loopexit:                    ; preds = %.lr.ph186.split.prol, %.lr.ph186.split.preheader103
  %indvars.iv229.unr = phi i64 [ %indvars.iv229.ph, %.lr.ph186.split.preheader103 ], [ %indvars.iv.next230.prol, %.lr.ph186.split.prol ]
  %i.ht = sub nsw i64 %indvars.iv229.ph, %wide.trip.count209
  %i.hu = icmp ugt i64 %i.ht, -4
  br i1 %i.hu, label %..loopexit_crit_edge, label %.lr.ph186.split

.lr.ph182.us:                                     ; preds = %.preheader, %._crit_edge183.us
  %indvars.iv239 = phi i64 [ %indvars.iv.next240, %._crit_edge183.us ], [ 0, %.preheader ] ; 3 uses
  %i.hv = getelementptr [4 x i8], ptr %i.hf, i64 %indvars.iv239 ; 2 uses
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !14
  %invariant.gep177.us = getelementptr [4 x i8], ptr %3, i64 %indvars.iv239
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph182.us, %bb.e
  %indvars.iv236 = phi i64 [ %indvars.iv234, %.lr.ph182.us ], [ %indvars.iv.next237, %bb.e ] ; 3 uses
  %.0180.us = phi float [ %i.hw, %.lr.ph182.us ], [ %i.ic, %bb.e ]
  %i.hx = getelementptr [4 x i8], ptr %i.hi, i64 %indvars.iv236
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !14
  %i.hz = mul i64 %i.b, %indvars.iv236
  %gep178.us = getelementptr [4 x i8], ptr %invariant.gep177.us, i64 %i.hz
  %i.ia = load float, ptr %gep178.us, align 4, !tbaa !14
  %i.ib = fneg float %i.hy
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.ib, float %i.ia, float %.0180.us) ; 2 uses
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %i.id = trunc nuw i64 %indvars.iv.next237 to i32
  %i.ie = icmp sgt i32 %2, %i.id
  br i1 %i.ie, label %bb.e, label %._crit_edge183.us, !llvm.loop !51

._crit_edge183.us:                                ; preds = %bb.e
  %i.if = load float, ptr %i.hk, align 4, !tbaa !14
  %i.ig = fdiv float %i.ic, %i.if
  store float %i.ig, ptr %i.hv, align 4, !tbaa !14
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 2 uses
  %exitcond243.not = icmp eq i64 %indvars.iv.next240, %wide.trip.count242
  br i1 %exitcond243.not, label %..loopexit_crit_edge, label %.lr.ph182.us, !llvm.loop !52

.lr.ph186.split:                                  ; preds = %.lr.ph186.split.prol.loopexit, %.lr.ph186.split
  %indvars.iv229 = phi i64 [ %indvars.iv.next230.3, %.lr.ph186.split ], [ %indvars.iv229.unr, %.lr.ph186.split.prol.loopexit ] ; 5 uses
  %i.ih = getelementptr [4 x i8], ptr %i.hf, i64 %indvars.iv229 ; 2 uses
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !14
  %i.ij = load float, ptr %i.hk, align 4, !tbaa !14
  %i.ik = fdiv float %i.ii, %i.ij
  store float %i.ik, ptr %i.ih, align 4, !tbaa !14
  %i.il = getelementptr [4 x i8], ptr %i.hf, i64 %indvars.iv229
  %i.im = getelementptr i8, ptr %i.il, i64 4      ; 2 uses
  %i.in = load float, ptr %i.im, align 4, !tbaa !14
  %i.io = load float, ptr %i.hk, align 4, !tbaa !14
  %i.ip = fdiv float %i.in, %i.io
  store float %i.ip, ptr %i.im, align 4, !tbaa !14
  %i.iq = getelementptr [4 x i8], ptr %i.hf, i64 %indvars.iv229
  %i.ir = getelementptr i8, ptr %i.iq, i64 8      ; 2 uses
  %i.is = load float, ptr %i.ir, align 4, !tbaa !14
  %i.it = load float, ptr %i.hk, align 4, !tbaa !14
  %i.iu = fdiv float %i.is, %i.it
  store float %i.iu, ptr %i.ir, align 4, !tbaa !14
  %i.iv = getelementptr [4 x i8], ptr %i.hf, i64 %indvars.iv229
  %i.iw = getelementptr i8, ptr %i.iv, i64 12     ; 2 uses
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !14
  %i.iy = load float, ptr %i.hk, align 4, !tbaa !14
  %i.iz = fdiv float %i.ix, %i.iy
  store float %i.iz, ptr %i.iw, align 4, !tbaa !14
  %indvars.iv.next230.3 = add nuw nsw i64 %indvars.iv229, 4 ; 2 uses
  %exitcond233.not.3 = icmp eq i64 %indvars.iv.next230.3, %wide.trip.count232
  br i1 %exitcond233.not.3, label %..loopexit_crit_edge, label %.lr.ph186.split, !llvm.loop !53

.loopexit144:                                     ; preds = %._crit_edge, %..loopexit_crit_edge, %._crit_edge175, %bb.a, %.preheader.lr.ph
  %.0134 = phi i32 [ 1, %bb.a ], [ %.1, %._crit_edge175 ], [ %.1, %.preheader.lr.ph ], [ %.1, %..loopexit_crit_edge ], [ 0, %._crit_edge ]
  ret i32 %.0134
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #16
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 2) i32 @_ZN2cv3hal5LU64fEPdmiS1_mi(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv3hal5LU64fEPdmiS1_miE24__cv_trace_location_fn86)
  %i.a = call fastcc noundef i32 @_ZN2cv3halL6LUImplIdEEiPT_miS3_miS2_(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !11
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #16
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret i32 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 -1, 2) i32 @_ZN2cv3halL6LUImplIdEEiPT_miS3_miS2_(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3, i64 noundef %4, i32 noundef %5) unnamed_addr #3 {
bb.a:
  %i.a = lshr i64 %1, 3                           ; 13 uses
  %i.b = lshr i64 %4, 3                           ; 10 uses
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph174, label %.loopexit144

.lr.ph174:                                        ; preds = %bb.a
  %.not141 = icmp eq ptr %3, null                 ; 2 uses
  %i.d = icmp slt i32 %5, 1                       ; 2 uses
  %i.e = zext nneg i32 %2 to i64
  %wide.trip.count227 = zext nneg i32 %2 to i64   ; 18 uses
  %brmerge = or i1 %.not141, %i.d
  %wide.trip.count209 = zext i32 %5 to i64        ; 17 uses
  %brmerge192 = or i1 %.not141, %i.d
  %wide.trip.count219 = zext nneg i32 %5 to i64
  %i.f = and i64 %4, -8
  %i.g = and i64 %4, -8
  %i.h = shl nuw nsw i64 %wide.trip.count227, 3
  %i.i = add nsw i64 %i.h, -8
  %i.j = mul i64 %i.b, %i.i
  %i.k = shl nuw nsw i64 %wide.trip.count209, 3   ; 2 uses
  %i.l = getelementptr i8, ptr %3, i64 %i.j
  %scevgep3 = getelementptr i8, ptr %i.l, i64 %i.k
  %i.m = and i64 %1, -8
  %i.n = add i64 %i.m, 8                          ; 2 uses
  %i.o = shl nuw nsw i64 %wide.trip.count227, 3   ; 3 uses
  %i.p = add nsw i64 %i.o, -8
  %i.q = mul i64 %i.a, %i.p
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %scevgep10 = getelementptr i8, ptr %i.r, i64 %i.o
  %i.s = and i64 %1, -8
  %i.t = add nuw nsw i64 %wide.trip.count227, 2305843009213693951
  %i.u = mul i64 %i.b, %i.t
  %i.v = shl nuw nsw i64 %wide.trip.count209, 3
  %i.w = add i64 %i.u, %wide.trip.count209
  %i.x = shl i64 %i.w, 3
  %scevgep34 = getelementptr i8, ptr %3, i64 %i.x
  %scevgep35 = getelementptr i8, ptr %3, i64 %i.v
  %i.y = and i64 %4, -8
  %i.z = and i64 %1, -8
  %i.aa = add i64 %i.z, 8
  %i.ab = shl nuw nsw i64 %wide.trip.count227, 3  ; 2 uses
  %i.ac = and i64 %1, -8
  %i.ad = and i64 %1, -8
  %scevgep60 = getelementptr i8, ptr %0, i64 %i.ab
  %i.ae = add nsw i64 %wide.trip.count227, -2
  %i.af = getelementptr i8, ptr %0, i64 %i.ab
  %i.ag = getelementptr i8, ptr %0, i64 %i.n
  %i.ah = getelementptr i8, ptr %0, i64 %i.o
  %i.ai = getelementptr i8, ptr %3, i64 %i.f
  %i.aj = getelementptr i8, ptr %3, i64 %i.k
  %i.ak = add nsw i64 %wide.trip.count227, -1
  %min.iters.check42 = icmp ult i32 %5, 6
  %stride.check40 = icmp slt i64 %4, 0
  %n.vec44 = and i64 %wide.trip.count209, 2147483644 ; 3 uses
  %cmp.n53 = icmp eq i64 %n.vec44, %wide.trip.count209
  %xtraiter108 = and i64 %wide.trip.count209, 1
  %lcmp.mod109.not = icmp eq i64 %xtraiter108, 0
  %i.al = add nsw i64 %wide.trip.count209, -1
  %stride.check16 = icmp slt i64 %1, 0
  %i.am = add nsw i64 %wide.trip.count227, -1
  %min.iters.check = icmp ult i32 %5, 4
  %stride.check = icmp slt i64 %4, 0
  %n.vec = and i64 %wide.trip.count209, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count209
  %xtraiter112 = and i64 %wide.trip.count209, 1
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  %i.an = add nsw i64 %wide.trip.count209, -1
  br label %bb.b

.loopexit147:                                     ; preds = %.loopexit146, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond228.not = icmp eq i64 %indvars.iv.next200, %wide.trip.count227
  br i1 %exitcond228.not, label %._crit_edge175, label %bb.b, !llvm.loop !64

bb.b:                                             ; preds = %.lr.ph174, %.loopexit147
  %indvars.iv199 = phi i64 [ 0, %.lr.ph174 ], [ %indvars.iv.next200, %.loopexit147 ] ; 26 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph174 ], [ %indvars.iv.next, %.loopexit147 ] ; 9 uses
  %.0124172 = phi i32 [ 1, %.lr.ph174 ], [ %.1, %.loopexit147 ] ; 2 uses
  %i.ao = mul i64 %i.aa, %indvars.iv199
  %scevgep56 = getelementptr i8, ptr %0, i64 %i.ao
  %i.ap = mul i64 %i.ac, %indvars.iv199
  %scevgep57 = getelementptr i8, ptr %i.af, i64 %i.ap
  %i.aq = shl nuw nsw i64 %indvars.iv199, 3
  %scevgep58 = getelementptr i8, ptr %0, i64 %i.aq
  %i.ar = mul i64 %i.n, %indvars.iv199            ; 2 uses
  %scevgep9 = getelementptr i8, ptr %i.ag, i64 %i.ar
  %i.as = getelementptr i8, ptr %0, i64 %i.ar
  %scevgep11 = getelementptr i8, ptr %i.as, i64 8
  %i.at = mul i64 %i.s, %indvars.iv199
  %scevgep12 = getelementptr i8, ptr %i.ah, i64 %i.at
  %i.au = mul i64 %i.g, %indvars.iv199            ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.au
  %scevgep4 = getelementptr i8, ptr %i.aj, i64 %i.au
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 3 uses
  %i.av = icmp samesign ult i64 %indvars.iv.next200, %i.e ; 2 uses
  %i.aw = trunc nuw nsw i64 %indvars.iv199 to i32 ; 3 uses
  br i1 %i.av, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %invariant.gep = getelementptr [8 x i8], ptr %0, i64 %indvars.iv199 ; 6 uses
  %6 = sub nsw i64 %indvars.iv199, %wide.trip.count227
  %xtraiter = and i64 %6, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.ax = mul i64 %i.a, %indvars.iv
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ax
  %i.ay = load double, ptr %gep.prol, align 8, !tbaa !19
  %i.az = tail call noundef double @llvm.fabs.f64(double %i.ay)
  %i.ba = mul i64 %i.a, %indvars.iv199
  %gep156.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ba
  %i.bb = load double, ptr %gep156.prol, align 8, !tbaa !19
  %i.bc = tail call noundef double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp ogt double %i.az, %i.bc
  %i.be = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select.prol = select i1 %i.bd, i32 %i.be, i32 %i.aw ; 2 uses
  %indvars.iv.next196.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %spec.select.lcssa.unr = phi i32 [ poison, %.lr.ph ], [ %spec.select.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv195.unr = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next196.prol, %.prol.loopexit.unr-lcssa ]
  %.0125154.unr = phi i32 [ %i.aw, %.lr.ph ], [ %spec.select.prol, %.prol.loopexit.unr-lcssa ]
  %i.bf = icmp eq i64 %i.ae, %indvars.iv199
  br i1 %i.bf, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv195 = phi i64 [ %indvars.iv.next196.1, %.lr.ph.new ], [ %indvars.iv195.unr, %.prol.loopexit ] ; 4 uses
  %.0125154 = phi i32 [ %spec.select.1, %.lr.ph.new ], [ %.0125154.unr, %.prol.loopexit ] ; 2 uses
  %i.bg = mul i64 %i.a, %indvars.iv195
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bg
  %i.bh = load double, ptr %gep, align 8, !tbaa !19
  %i.bi = tail call noundef double @llvm.fabs.f64(double %i.bh)
  %i.bj = sext i32 %.0125154 to i64
  %i.bk = mul i64 %i.a, %i.bj
  %gep156 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bk
  %i.bl = load double, ptr %gep156, align 8, !tbaa !19
  %i.bm = tail call noundef double @llvm.fabs.f64(double %i.bl)
  %i.bn = fcmp ogt double %i.bi, %i.bm
  %i.bo = trunc nuw nsw i64 %indvars.iv195 to i32
  %spec.select = select i1 %i.bn, i32 %i.bo, i32 %.0125154 ; 2 uses
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %i.bp = mul i64 %i.a, %indvars.iv.next196
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bp
  %i.bq = load double, ptr %gep.1, align 8, !tbaa !19
  %i.br = tail call noundef double @llvm.fabs.f64(double %i.bq)
  %i.bs = sext i32 %spec.select to i64
  %i.bt = mul i64 %i.a, %i.bs
  %gep156.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bt
  %i.bu = load double, ptr %gep156.1, align 8, !tbaa !19
  %i.bv = tail call noundef double @llvm.fabs.f64(double %i.bu)
  %i.bw = fcmp ogt double %i.br, %i.bv
  %i.bx = trunc nuw nsw i64 %indvars.iv.next196 to i32
  %spec.select.1 = select i1 %i.bw, i32 %i.bx, i32 %spec.select ; 2 uses
  %indvars.iv.next196.1 = add nuw nsw i64 %indvars.iv195, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next196.1, %wide.trip.count227
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !65

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %.0125.lcssa = phi i32 [ %i.aw, %bb.b ], [ %spec.select.lcssa.unr, %.prol.loopexit ], [ %spec.select.1, %.lr.ph.new ] ; 2 uses
  %i.by = sext i32 %.0125.lcssa to i64            ; 4 uses
  %i.bz = mul i64 %i.a, %i.by
  %i.ca = getelementptr [8 x i8], ptr %0, i64 %i.bz ; 5 uses
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %indvars.iv199
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !19
  %i.cd = tail call noundef double @llvm.fabs.f64(double %i.cc)
  %i.ce = fcmp olt double %i.cd, f0x3D19000000000000
  br i1 %i.ce, label %.loopexit144, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.cf = zext i32 %.0125.lcssa to i64
  %.not140 = icmp eq i64 %indvars.iv199, %i.cf
  br i1 %.not140, label %bb.d, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.c
  %i.cg = mul i64 %i.a, %indvars.iv199
  %i.ch = getelementptr [8 x i8], ptr %0, i64 %i.cg ; 4 uses
  %7 = sub nsw i64 %wide.trip.count227, %indvars.iv199 ; 3 uses
  %min.iters.check66 = icmp ult i64 %7, 4
  br i1 %min.iters.check66, label %scalar.ph65.preheader, label %vector.memcheck55

vector.memcheck55:                                ; preds = %.lr.ph158
  %i.ci = mul i64 %i.ad, %i.by                    ; 2 uses
  %scevgep59 = getelementptr i8, ptr %scevgep58, i64 %i.ci
  %scevgep61 = getelementptr i8, ptr %scevgep60, i64 %i.ci
  %bound062 = icmp ult ptr %scevgep56, %scevgep61
  %bound163 = icmp ult ptr %scevgep59, %scevgep57
  %found.conflict64 = and i1 %bound062, %bound163
  br i1 %found.conflict64, label %scalar.ph65.preheader, label %vector.ph67

vector.ph67:                                      ; preds = %vector.memcheck55
  %n.vec68 = and i64 %7, -4                       ; 3 uses
  %i.cj = add i64 %indvars.iv199, %n.vec68
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next75, %vector.body69 ] ; 2 uses
  %i.ck = add nuw i64 %indvars.iv199, %index70    ; 2 uses
  %i.cl = getelementptr [8 x i8], ptr %i.ch, i64 %i.ck ; 3 uses
  %i.cm = getelementptr [8 x i8], ptr %i.ca, i64 %i.ck ; 3 uses
  %i.cn = getelementptr i8, ptr %i.cl, i64 16     ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.cl, align 8, !tbaa !19, !alias.scope !96, !noalias !97
  %wide.load72 = load <2 x double>, ptr %i.cn, align 8, !tbaa !19, !alias.scope !96, !noalias !97
  %i.co = getelementptr i8, ptr %i.cm, i64 16     ; 2 uses
  %wide.load73 = load <2 x double>, ptr %i.cm, align 8, !tbaa !19, !alias.scope !97
  %wide.load74 = load <2 x double>, ptr %i.co, align 8, !tbaa !19, !alias.scope !97
  store <2 x double> %wide.load73, ptr %i.cl, align 8, !tbaa !19, !alias.scope !96, !noalias !97
  store <2 x double> %wide.load74, ptr %i.cn, align 8, !tbaa !19, !alias.scope !96, !noalias !97
  store <2 x double> %wide.load71, ptr %i.cm, align 8, !tbaa !19, !alias.scope !97
  store <2 x double> %wide.load72, ptr %i.co, align 8, !tbaa !19, !alias.scope !97
  %index.next75 = add nuw i64 %index70, 4         ; 2 uses
  %i.cp = icmp eq i64 %index.next75, %n.vec68
  br i1 %i.cp, label %middle.block76, label %vector.body69, !llvm.loop !69

middle.block76:                                   ; preds = %vector.body69
  %cmp.n77 = icmp eq i64 %7, %n.vec68
  br i1 %cmp.n77, label %._crit_edge159, label %scalar.ph65.preheader

scalar.ph65.preheader:                            ; preds = %vector.memcheck55, %.lr.ph158, %middle.block76
  %indvars.iv201.ph = phi i64 [ %indvars.iv199, %vector.memcheck55 ], [ %indvars.iv199, %.lr.ph158 ], [ %i.cj, %middle.block76 ] ; 6 uses
  %i.cq = sub i64 %wide.trip.count227, %indvars.iv201.ph
  %xtraiter106 = and i64 %i.cq, 1
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %scalar.ph65.prol.loopexit, label %scalar.ph65.prol

scalar.ph65.prol:                                 ; preds = %scalar.ph65.preheader
  %i.cr = getelementptr [8 x i8], ptr %i.ch, i64 %indvars.iv201.ph ; 2 uses
  %i.cs = getelementptr [8 x i8], ptr %i.ca, i64 %indvars.iv201.ph ; 2 uses
  %i.ct = load double, ptr %i.cr, align 8, !tbaa !19
  %i.cu = load double, ptr %i.cs, align 8, !tbaa !19
  store double %i.cu, ptr %i.cr, align 8, !tbaa !19
  store double %i.ct, ptr %i.cs, align 8, !tbaa !19
  %indvars.iv.next202.prol = add nuw nsw i64 %indvars.iv201.ph, 1
  br label %scalar.ph65.prol.loopexit

scalar.ph65.prol.loopexit:                        ; preds = %scalar.ph65.prol, %scalar.ph65.preheader
  %indvars.iv201.unr = phi i64 [ %indvars.iv201.ph, %scalar.ph65.preheader ], [ %indvars.iv.next202.prol, %scalar.ph65.prol ]
  %i.cv = icmp eq i64 %indvars.iv201.ph, %i.ak
  br i1 %i.cv, label %._crit_edge159, label %scalar.ph65

scalar.ph65:                                      ; preds = %scalar.ph65.prol.loopexit, %scalar.ph65
  %indvars.iv201 = phi i64 [ %indvars.iv.next202.1, %scalar.ph65 ], [ %indvars.iv201.unr, %scalar.ph65.prol.loopexit ] ; 4 uses
  %i.cw = getelementptr [8 x i8], ptr %i.ch, i64 %indvars.iv201 ; 2 uses
  %i.cx = getelementptr [8 x i8], ptr %i.ca, i64 %indvars.iv201 ; 2 uses
  %i.cy = load double, ptr %i.cw, align 8, !tbaa !19
  %i.cz = load double, ptr %i.cx, align 8, !tbaa !19
  store double %i.cz, ptr %i.cw, align 8, !tbaa !19
  store double %i.cy, ptr %i.cx, align 8, !tbaa !19
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %i.da = getelementptr [8 x i8], ptr %i.ch, i64 %indvars.iv.next202 ; 2 uses
  %i.db = getelementptr [8 x i8], ptr %i.ca, i64 %indvars.iv.next202 ; 2 uses
  %i.dc = load double, ptr %i.da, align 8, !tbaa !19
  %i.dd = load double, ptr %i.db, align 8, !tbaa !19
  store double %i.dd, ptr %i.da, align 8, !tbaa !19
  store double %i.dc, ptr %i.db, align 8, !tbaa !19
  %indvars.iv.next202.1 = add nuw nsw i64 %indvars.iv201, 2 ; 2 uses
  %exitcond205.not.1 = icmp eq i64 %indvars.iv.next202.1, %wide.trip.count227
  br i1 %exitcond205.not.1, label %._crit_edge159, label %scalar.ph65, !llvm.loop !70

._crit_edge159:                                   ; preds = %scalar.ph65.prol.loopexit, %scalar.ph65, %middle.block76
  br i1 %brmerge, label %.loopexit149, label %.lr.ph161

.lr.ph161:                                        ; preds = %._crit_edge159
  %i.de = mul i64 %i.b, %indvars.iv199
  %i.df = getelementptr [8 x i8], ptr %3, i64 %i.de ; 4 uses
  %i.dg = mul i64 %i.b, %i.by
  %i.dh = getelementptr [8 x i8], ptr %3, i64 %i.dg ; 5 uses
  br i1 %min.iters.check42, label %scalar.ph41.preheader, label %vector.memcheck33

vector.memcheck33:                                ; preds = %.lr.ph161
  %i.di = mul i64 %i.y, %i.by
  %scevgep36 = getelementptr i8, ptr %scevgep35, i64 %i.di
  %bound037 = icmp ult ptr %3, %scevgep36
  %bound138 = icmp ult ptr %i.dh, %scevgep34
  %found.conflict39 = and i1 %bound037, %bound138
  %i.dj = or i1 %found.conflict39, %stride.check40
  br i1 %i.dj, label %scalar.ph41.preheader, label %vector.body45

vector.body45:                                    ; preds = %vector.memcheck33, %vector.body45
  %index46 = phi i64 [ %index.next51, %vector.body45 ], [ 0, %vector.memcheck33 ] ; 3 uses
  %i.dk = getelementptr [8 x i8], ptr %i.df, i64 %index46 ; 3 uses
  %i.dl = getelementptr [8 x i8], ptr %i.dh, i64 %index46 ; 3 uses
  %i.dm = getelementptr i8, ptr %i.dk, i64 16     ; 2 uses
  %wide.load47 = load <2 x double>, ptr %i.dk, align 8, !tbaa !19, !alias.scope !98, !noalias !99
  %wide.load48 = load <2 x double>, ptr %i.dm, align 8, !tbaa !19, !alias.scope !98, !noalias !99
  %i.dn = getelementptr i8, ptr %i.dl, i64 16     ; 2 uses
  %wide.load49 = load <2 x double>, ptr %i.dl, align 8, !tbaa !19, !alias.scope !99
  %wide.load50 = load <2 x double>, ptr %i.dn, align 8, !tbaa !19, !alias.scope !99
  store <2 x double> %wide.load49, ptr %i.dk, align 8, !tbaa !19, !alias.scope !98, !noalias !99
  store <2 x double> %wide.load50, ptr %i.dm, align 8, !tbaa !19, !alias.scope !98, !noalias !99
  store <2 x double> %wide.load47, ptr %i.dl, align 8, !tbaa !19, !alias.scope !99
  store <2 x double> %wide.load48, ptr %i.dn, align 8, !tbaa !19, !alias.scope !99
  %index.next51 = add nuw i64 %index46, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next51, %n.vec44
  br i1 %i.do, label %middle.block52, label %vector.body45, !llvm.loop !74

middle.block52:                                   ; preds = %vector.body45
  br i1 %cmp.n53, label %.loopexit149, label %scalar.ph41.preheader

scalar.ph41.preheader:                            ; preds = %vector.memcheck33, %.lr.ph161, %middle.block52
  %indvars.iv206.ph = phi i64 [ 0, %vector.memcheck33 ], [ 0, %.lr.ph161 ], [ %n.vec44, %middle.block52 ] ; 5 uses
  br i1 %lcmp.mod109.not, label %scalar.ph41.prol.loopexit, label %scalar.ph41.prol

scalar.ph41.prol:                                 ; preds = %scalar.ph41.preheader
  %i.dp = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv206.ph ; 2 uses
  %i.dq = getelementptr [8 x i8], ptr %i.dh, i64 %indvars.iv206.ph ; 2 uses
  %i.dr = load double, ptr %i.dp, align 8, !tbaa !19
  %i.ds = load double, ptr %i.dq, align 8, !tbaa !19
  store double %i.ds, ptr %i.dp, align 8, !tbaa !19
  store double %i.dr, ptr %i.dq, align 8, !tbaa !19
  %indvars.iv.next207.prol = or disjoint i64 %indvars.iv206.ph, 1
  br label %scalar.ph41.prol.loopexit

scalar.ph41.prol.loopexit:                        ; preds = %scalar.ph41.prol, %scalar.ph41.preheader
  %indvars.iv206.unr = phi i64 [ %indvars.iv206.ph, %scalar.ph41.preheader ], [ %indvars.iv.next207.prol, %scalar.ph41.prol ]
  %i.dt = icmp eq i64 %indvars.iv206.ph, %i.al
  br i1 %i.dt, label %.loopexit149, label %scalar.ph41

scalar.ph41:                                      ; preds = %scalar.ph41.prol.loopexit, %scalar.ph41
  %indvars.iv206 = phi i64 [ %indvars.iv.next207.1, %scalar.ph41 ], [ %indvars.iv206.unr, %scalar.ph41.prol.loopexit ] ; 4 uses
  %i.du = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv206 ; 2 uses
  %i.dv = getelementptr [8 x i8], ptr %i.dh, i64 %indvars.iv206 ; 2 uses
  %i.dw = load double, ptr %i.du, align 8, !tbaa !19
  %i.dx = load double, ptr %i.dv, align 8, !tbaa !19
  store double %i.dx, ptr %i.du, align 8, !tbaa !19
  store double %i.dw, ptr %i.dv, align 8, !tbaa !19
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.dy = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.next207 ; 2 uses
  %i.dz = getelementptr [8 x i8], ptr %i.dh, i64 %indvars.iv.next207 ; 2 uses
  %i.ea = load double, ptr %i.dy, align 8, !tbaa !19
  %i.eb = load double, ptr %i.dz, align 8, !tbaa !19
  store double %i.eb, ptr %i.dy, align 8, !tbaa !19
  store double %i.ea, ptr %i.dz, align 8, !tbaa !19
  %indvars.iv.next207.1 = add nuw nsw i64 %indvars.iv206, 2 ; 2 uses
  %exitcond210.not.1 = icmp eq i64 %indvars.iv.next207.1, %wide.trip.count209
  br i1 %exitcond210.not.1, label %.loopexit149, label %scalar.ph41, !llvm.loop !75

.loopexit149:                                     ; preds = %scalar.ph41.prol.loopexit, %scalar.ph41, %middle.block52, %._crit_edge159
  %i.ec = sub nsw i32 0, %.0124172
  br label %bb.d

bb.d:                                             ; preds = %.loopexit149, %bb.c
  %.1 = phi i32 [ %i.ec, %.loopexit149 ], [ %.0124172, %bb.c ] ; 4 uses
  %i.ed = mul i64 %i.a, %indvars.iv199
  %i.ee = getelementptr [8 x i8], ptr %0, i64 %i.ed ; 5 uses
  %i.ef = getelementptr [8 x i8], ptr %i.ee, i64 %indvars.iv199
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !19
  %i.eh = fdiv double -1.000000e+00, %i.eg
  br i1 %i.av, label %.lr.ph170, label %.loopexit147

.lr.ph170:                                        ; preds = %bb.d
  %i.ei = mul i64 %i.b, %indvars.iv199
  %i.ej = getelementptr [8 x i8], ptr %3, i64 %i.ei ; 5 uses
  %8 = xor i64 %indvars.iv199, -1
  %9 = add nsw i64 %8, %wide.trip.count227        ; 3 uses
  %min.iters.check18 = icmp ult i64 %9, 4
  %bound013 = icmp ult ptr %scevgep9, %scevgep12
  %bound114 = icmp ult ptr %scevgep11, %scevgep10
  %found.conflict15 = and i1 %bound013, %bound114
  %i.ek = or i1 %found.conflict15, %stride.check16
  %n.vec20 = and i64 %9, -4                       ; 3 uses
  %i.el = add i64 %indvars.iv, %n.vec20
  %cmp.n31 = icmp eq i64 %9, %n.vec20
  %bound0 = icmp ult ptr %scevgep, %scevgep4
  %bound1 = icmp ult ptr %i.ej, %scevgep3
  %found.conflict = and i1 %bound0, %bound1
  %i.em = or i1 %found.conflict, %stride.check
  br label %.lr.ph164

.lr.ph164:                                        ; preds = %.lr.ph170, %.loopexit146
  %indvars.iv221 = phi i64 [ %indvars.iv, %.lr.ph170 ], [ %indvars.iv.next222, %.loopexit146 ] ; 3 uses
  %i.en = mul i64 %i.a, %indvars.iv221
  %i.eo = getelementptr [8 x i8], ptr %0, i64 %i.en ; 5 uses
  %i.ep = getelementptr [8 x i8], ptr %i.eo, i64 %indvars.iv199
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !19
  %i.er = fmul double %i.eh, %i.eq                ; 8 uses
  %brmerge116 = select i1 %min.iters.check18, i1 true, i1 %i.ek
  br i1 %brmerge116, label %scalar.ph17.preheader, label %vector.ph19

vector.ph19:                                      ; preds = %.lr.ph164
  %broadcast.splatinsert21 = insertelement <2 x double> poison, double %i.er, i64 0
  %broadcast.splat22 = shufflevector <2 x double> %broadcast.splatinsert21, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body23

vector.body23:                                    ; preds = %vector.body23, %vector.ph19
  %index24 = phi i64 [ 0, %vector.ph19 ], [ %index.next29, %vector.body23 ] ; 2 uses
  %i.es = add nuw i64 %indvars.iv, %index24       ; 2 uses
  %i.et = getelementptr [8 x i8], ptr %i.ee, i64 %i.es ; 2 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 16
  %wide.load25 = load <2 x double>, ptr %i.et, align 8, !tbaa !19, !alias.scope !100
  %wide.load26 = load <2 x double>, ptr %i.eu, align 8, !tbaa !19, !alias.scope !100
  %i.ev = getelementptr [8 x i8], ptr %i.eo, i64 %i.es ; 3 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 16     ; 2 uses
  %wide.load27 = load <2 x double>, ptr %i.ev, align 8, !tbaa !19, !alias.scope !101, !noalias !100
  %wide.load28 = load <2 x double>, ptr %i.ew, align 8, !tbaa !19, !alias.scope !101, !noalias !100
  %i.ex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat22, <2 x double> %wide.load25, <2 x double> %wide.load27)
  %i.ey = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat22, <2 x double> %wide.load26, <2 x double> %wide.load28)
  store <2 x double> %i.ex, ptr %i.ev, align 8, !tbaa !19, !alias.scope !101, !noalias !100
  store <2 x double> %i.ey, ptr %i.ew, align 8, !tbaa !19, !alias.scope !101, !noalias !100
  %index.next29 = add nuw i64 %index24, 4         ; 2 uses
  %i.ez = icmp eq i64 %index.next29, %n.vec20
  br i1 %i.ez, label %middle.block30, label %vector.body23, !llvm.loop !79

middle.block30:                                   ; preds = %vector.body23
  br i1 %cmp.n31, label %._crit_edge165, label %scalar.ph17.preheader

scalar.ph17.preheader:                            ; preds = %.lr.ph164, %middle.block30
  %indvars.iv211.ph = phi i64 [ %i.el, %middle.block30 ], [ %indvars.iv, %.lr.ph164 ] ; 6 uses
  %i.fa = sub i64 %wide.trip.count227, %indvars.iv211.ph
  %xtraiter110 = and i64 %i.fa, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %scalar.ph17.prol.loopexit, label %scalar.ph17.prol

scalar.ph17.prol:                                 ; preds = %scalar.ph17.preheader
  %i.fb = getelementptr [8 x i8], ptr %i.ee, i64 %indvars.iv211.ph
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !19
  %i.fd = getelementptr [8 x i8], ptr %i.eo, i64 %indvars.iv211.ph ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !19
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.er, double %i.fc, double %i.fe)
  store double %i.ff, ptr %i.fd, align 8, !tbaa !19
  %indvars.iv.next212.prol = add nuw nsw i64 %indvars.iv211.ph, 1
  br label %scalar.ph17.prol.loopexit

scalar.ph17.prol.loopexit:                        ; preds = %scalar.ph17.prol, %scalar.ph17.preheader
  %indvars.iv211.unr = phi i64 [ %indvars.iv211.ph, %scalar.ph17.preheader ], [ %indvars.iv.next212.prol, %scalar.ph17.prol ]
  %i.fg = icmp eq i64 %indvars.iv211.ph, %i.am
  br i1 %i.fg, label %._crit_edge165, label %scalar.ph17

scalar.ph17:                                      ; preds = %scalar.ph17.prol.loopexit, %scalar.ph17
  %indvars.iv211 = phi i64 [ %indvars.iv.next212.1, %scalar.ph17 ], [ %indvars.iv211.unr, %scalar.ph17.prol.loopexit ] ; 4 uses
  %i.fh = getelementptr [8 x i8], ptr %i.ee, i64 %indvars.iv211
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !19
  %i.fj = getelementptr [8 x i8], ptr %i.eo, i64 %indvars.iv211 ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !19
  %i.fl = tail call double @llvm.fmuladd.f64(double %i.er, double %i.fi, double %i.fk)
  store double %i.fl, ptr %i.fj, align 8, !tbaa !19
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %i.fm = getelementptr [8 x i8], ptr %i.ee, i64 %indvars.iv.next212
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !19
  %i.fo = getelementptr [8 x i8], ptr %i.eo, i64 %indvars.iv.next212 ; 2 uses
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !19
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.er, double %i.fn, double %i.fp)
  store double %i.fq, ptr %i.fo, align 8, !tbaa !19
  %indvars.iv.next212.1 = add nuw nsw i64 %indvars.iv211, 2 ; 2 uses
  %exitcond215.not.1 = icmp eq i64 %indvars.iv.next212.1, %wide.trip.count227
  br i1 %exitcond215.not.1, label %._crit_edge165, label %scalar.ph17, !llvm.loop !80

._crit_edge165:                                   ; preds = %scalar.ph17.prol.loopexit, %scalar.ph17, %middle.block30
  br i1 %brmerge192, label %.loopexit146, label %.lr.ph167

.lr.ph167:                                        ; preds = %._crit_edge165
  %i.fr = mul i64 %i.b, %indvars.iv221
  %i.fs = getelementptr [8 x i8], ptr %3, i64 %i.fr ; 4 uses
  %brmerge117 = select i1 %min.iters.check, i1 true, i1 %i.em
  br i1 %brmerge117, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph167
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.er, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ft = getelementptr [8 x i8], ptr %i.ej, i64 %index ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 16
  %wide.load = load <2 x double>, ptr %i.ft, align 8, !tbaa !19, !alias.scope !102
  %wide.load5 = load <2 x double>, ptr %i.fu, align 8, !tbaa !19, !alias.scope !102
  %i.fv = getelementptr [8 x i8], ptr %i.fs, i64 %index ; 3 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 16     ; 2 uses
  %wide.load6 = load <2 x double>, ptr %i.fv, align 8, !tbaa !19, !alias.scope !103, !noalias !102
  %wide.load7 = load <2 x double>, ptr %i.fw, align 8, !tbaa !19, !alias.scope !103, !noalias !102
  %i.fx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load6)
  %i.fy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load5, <2 x double> %wide.load7)
  store <2 x double> %i.fx, ptr %i.fv, align 8, !tbaa !19, !alias.scope !103, !noalias !102
  store <2 x double> %i.fy, ptr %i.fw, align 8, !tbaa !19, !alias.scope !103, !noalias !102
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph167, %middle.block
  %indvars.iv216.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph167 ] ; 5 uses
  br i1 %lcmp.mod113.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ga = getelementptr [8 x i8], ptr %i.ej, i64 %indvars.iv216.ph
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !19
  %i.gc = getelementptr [8 x i8], ptr %i.fs, i64 %indvars.iv216.ph ; 2 uses
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !19
  %i.ge = tail call double @llvm.fmuladd.f64(double %i.er, double %i.gb, double %i.gd)
  store double %i.ge, ptr %i.gc, align 8, !tbaa !19
  %indvars.iv.next217.prol = or disjoint i64 %indvars.iv216.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv216.unr = phi i64 [ %indvars.iv216.ph, %scalar.ph.preheader ], [ %indvars.iv.next217.prol, %scalar.ph.prol ]
  %i.gf = icmp eq i64 %indvars.iv216.ph, %i.an
  br i1 %i.gf, label %.loopexit146, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv216 = phi i64 [ %indvars.iv.next217.1, %scalar.ph ], [ %indvars.iv216.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.gg = getelementptr [8 x i8], ptr %i.ej, i64 %indvars.iv216
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !19
  %i.gi = getelementptr [8 x i8], ptr %i.fs, i64 %indvars.iv216 ; 2 uses
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !19
  %i.gk = tail call double @llvm.fmuladd.f64(double %i.er, double %i.gh, double %i.gj)
  store double %i.gk, ptr %i.gi, align 8, !tbaa !19
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %i.ej, i64 %indvars.iv.next217
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !19
  %i.gn = getelementptr [8 x i8], ptr %i.fs, i64 %indvars.iv.next217 ; 2 uses
  %i.go = load double, ptr %i.gn, align 8, !tbaa !19
  %i.gp = tail call double @llvm.fmuladd.f64(double %i.er, double %i.gm, double %i.go)
  store double %i.gp, ptr %i.gn, align 8, !tbaa !19
  %indvars.iv.next217.1 = add nuw nsw i64 %indvars.iv216, 2 ; 2 uses
  %exitcond220.not.1 = icmp eq i64 %indvars.iv.next217.1, %wide.trip.count219
  br i1 %exitcond220.not.1, label %.loopexit146, label %scalar.ph, !llvm.loop !85

.loopexit146:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge165
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %exitcond225.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count227
  br i1 %exitcond225.not, label %.loopexit147, label %.lr.ph164, !llvm.loop !86

._crit_edge175:                                   ; preds = %.loopexit147
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.loopexit144, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %._crit_edge175
  %i.gq = icmp sgt i32 %5, 0
  %i.gr = add nuw nsw i64 %i.a, 1                 ; 2 uses
  br i1 %i.gq, label %.preheader.preheader, label %.loopexit144

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.gs = zext nneg i32 %2 to i64
  %i.gt = zext nneg i32 %2 to i64
  %wide.trip.count232 = zext nneg i32 %5 to i64
  %wide.trip.count242 = zext nneg i32 %5 to i64
  %i.gu = add nsw i64 %wide.trip.count227, -1     ; 2 uses
  %i.gv = mul i64 %i.b, %i.gu
  %i.gw = shl i64 %i.gv, 3
  %scevgep80 = getelementptr i8, ptr %3, i64 %i.gw
  %i.gx = shl nuw nsw i64 %wide.trip.count209, 3
  %scevgep81 = getelementptr i8, ptr %3, i64 %i.gx
  %i.gy = mul i64 %i.b, -8
  %i.gz = mul i64 %i.gu, %i.gr
  %i.ha = shl i64 %i.gz, 3
  %scevgep82 = getelementptr i8, ptr %0, i64 %i.ha
  %scevgep83 = getelementptr i8, ptr %0, i64 8
  %min.iters.check90 = icmp eq i32 %5, 1
  %bound084 = icmp ult ptr %scevgep80, %scevgep83
  %bound185 = icmp ult ptr %scevgep82, %scevgep81
  %found.conflict86 = and i1 %bound084, %bound185
  %stride.check87 = icmp slt i64 %i.gy, 0
  %i.hb = or i1 %found.conflict86, %stride.check87
  %stride.check88 = icmp sgt i64 %1, -1
  %i.hc = or i1 %i.hb, %stride.check88
  %n.vec92 = and i64 %wide.trip.count209, 2147483646 ; 3 uses
  %cmp.n100 = icmp eq i64 %n.vec92, %wide.trip.count209
  br label %.preheader

..loopexit_crit_edge:                             ; preds = %.lr.ph186.split.prol.loopexit, %.lr.ph186.split, %._crit_edge183.us, %middle.block99
end_hunk_0
