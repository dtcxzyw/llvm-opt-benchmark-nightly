Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/fit_rotations?download=true
inline.NumInlined: 1689
inline.NumDeleted: 1101
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.Eigen::Matrix.3" = type { %"class.Eigen::PlainObjectBase.4" }
%"class.Eigen::PlainObjectBase.4" = type { %"class.Eigen::DenseStorage.11" }
%"class.Eigen::DenseStorage.11" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [36 x float] }
%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { ptr, i64, i64 }
%"class.Eigen::CwiseUnaryOp" = type <{ ptr, [8 x i8] }>
%"class.Eigen::Matrix.56" = type { %"class.Eigen::PlainObjectBase.57" }
%"class.Eigen::PlainObjectBase.57" = type { %"class.Eigen::DenseStorage.64" }
%"class.Eigen::DenseStorage.64" = type { %"struct.Eigen::internal::plain_array.65" }
%"struct.Eigen::internal::plain_array.65" = type { [9 x double] }
%"class.Eigen::Matrix.66" = type { %"class.Eigen::PlainObjectBase.67" }
%"class.Eigen::PlainObjectBase.67" = type { %"class.Eigen::DenseStorage.74" }
%"class.Eigen::DenseStorage.74" = type { %"struct.Eigen::internal::plain_array.75" }
%"struct.Eigen::internal::plain_array.75" = type { [3 x double] }
%"class.Eigen::Matrix.106" = type { %"class.Eigen::PlainObjectBase.107" }
%"class.Eigen::PlainObjectBase.107" = type { %"class.Eigen::DenseStorage.114" }
%"class.Eigen::DenseStorage.114" = type { %"struct.Eigen::internal::plain_array.115" }
%"struct.Eigen::internal::plain_array.115" = type { [4 x double] }
%"class.Eigen::Matrix.116" = type { %"class.Eigen::PlainObjectBase.117" }
%"class.Eigen::PlainObjectBase.117" = type { %"class.Eigen::DenseStorage.124" }
%"class.Eigen::DenseStorage.124" = type { %"struct.Eigen::internal::plain_array.125" }
%"struct.Eigen::internal::plain_array.125" = type { [2 x double] }
%"class.Eigen::Matrix.150" = type { %"class.Eigen::PlainObjectBase.151" }
%"class.Eigen::PlainObjectBase.151" = type { %"class.Eigen::DenseStorage.158" }
%"class.Eigen::DenseStorage.158" = type { %"struct.Eigen::internal::plain_array.159" }
%"struct.Eigen::internal::plain_array.159" = type { [4 x float] }
%"class.Eigen::Matrix.160" = type { %"class.Eigen::PlainObjectBase.161" }
%"class.Eigen::PlainObjectBase.161" = type { %"class.Eigen::DenseStorage.168" }
%"class.Eigen::DenseStorage.168" = type { %"struct.Eigen::internal::plain_array.169" }
%"struct.Eigen::internal::plain_array.169" = type { [2 x float] }
%"class.Eigen::Matrix.198" = type { %"class.Eigen::PlainObjectBase.199" }
%"class.Eigen::PlainObjectBase.199" = type { %"class.Eigen::DenseStorage.206" }
%"class.Eigen::DenseStorage.206" = type { %"struct.Eigen::internal::plain_array.207" }
%"struct.Eigen::internal::plain_array.207" = type { [9 x float] }
%"class.Eigen::Matrix.208" = type { %"class.Eigen::PlainObjectBase.209" }
%"class.Eigen::PlainObjectBase.209" = type { %"class.Eigen::DenseStorage.216" }
%"class.Eigen::DenseStorage.216" = type { %"struct.Eigen::internal::plain_array.217" }
%"struct.Eigen::internal::plain_array.217" = type { [3 x float] }

$_ZN3igl13fit_rotationsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EEbRNS1_15PlainObjectBaseIT0_EE = comdat any

$_ZN3igl20fit_rotations_planarIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE = comdat any

$_ZN3igl20fit_rotations_planarIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE = comdat any

$_ZN3igl13fit_rotationsIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EEbRNS1_15PlainObjectBaseIT0_EE = comdat any

$_ZN3igl20fit_rotations_planarIN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE = comdat any

$_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEC2INS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEEEERKNS_9DenseBaseIT_EE = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl17fit_rotations_SSEERKN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEERS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix.3", align 16  ; 7 uses
  %3 = alloca %"class.Eigen::Matrix.3", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = sdiv i64 %i.b, 3                         ; 6 uses
  %i.d = trunc i64 %i.c to i32
  %sext = mul i64 %i.c, 12884901888               ; 2 uses
  %i.e = ashr exact i64 %sext, 32                 ; 3 uses
  %i.f = icmp eq i64 %sext, 0
  br i1 %i.f, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 9223372036854775807, %i.e
  %i.h = icmp slt i64 %i.g, 3
  br i1 %i.h, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.a, %bb.b
  %i.j = mul nsw i64 %i.e, 3
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j, i64 noundef 3, i64 noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.k = icmp sgt i32 %i.d, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge60

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = and i64 %i.c, 2147483647
  %.tr = trunc i64 %i.c to i32
  %i.n = shl nuw nsw i32 %.tr, 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %._crit_edge58
  %indvars.iv67 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next68, %._crit_edge58 ] ; 4 uses
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 4 ; 2 uses
  %.not = icmp samesign ult i64 %indvars.iv.next68, %i.m ; 2 uses
  %i.o = sub i64 %i.c, %indvars.iv67
  %i.p = trunc i64 %i.o to i32
  %spec.select = select i1 %.not, i32 4, i32 %i.p ; 3 uses
  %i.q = icmp sgt i32 %spec.select, 0
  br i1 %i.q, label %.preheader52.lr.ph, label %._crit_edge

.preheader52.lr.ph:                               ; preds = %bb.d
  %i.r = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.s = load i64, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.t = zext nneg i32 %spec.select to i64
  %i.u = shl nsw i64 %i.s, 1                      ; 3 uses
  br label %.preheader52

.preheader52:                                     ; preds = %.preheader52.lr.ph, %.preheader52
  %indvars.iv = phi i64 [ 0, %.preheader52.lr.ph ], [ %indvars.iv.next, %.preheader52 ] ; 3 uses
  %i.v = add nuw nsw i64 %indvars.iv, %indvars.iv67 ; 3 uses
  %i.w = mul nuw nsw i64 %indvars.iv, 3           ; 3 uses
  %i.x = trunc nuw i64 %i.v to i32
  %sext70 = shl i64 %i.v, 32
  %i.y = ashr exact i64 %sext70, 30
  %i.z = getelementptr i8, ptr %i.r, i64 %i.y     ; 3 uses
  %i.aa = getelementptr [4 x i8], ptr %2, i64 %i.w ; 3 uses
  %i.ab = load float, ptr %i.z, align 4, !tbaa !17
  store float %i.ab, ptr %i.aa, align 4, !tbaa !17
  %i.ac = getelementptr [4 x i8], ptr %i.z, i64 %i.s
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !17
  %i.ae = getelementptr i8, ptr %i.aa, i64 48
  store float %i.ad, ptr %i.ae, align 4, !tbaa !17
  %i.af = getelementptr [4 x i8], ptr %i.z, i64 %i.u
  %i.ag = load float, ptr %i.af, align 4, !tbaa !17
  %i.ah = getelementptr i8, ptr %i.aa, i64 96
  store float %i.ag, ptr %i.ah, align 4, !tbaa !17
  %i.ai = add i64 %i.v, %i.c
  %sext71 = shl i64 %i.ai, 32
  %i.aj = ashr exact i64 %sext71, 30
  %i.ak = getelementptr i8, ptr %i.r, i64 %i.aj   ; 3 uses
  %i.al = getelementptr [4 x i8], ptr %2, i64 %i.w ; 3 uses
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %i.an = load float, ptr %i.ak, align 4, !tbaa !17
  store float %i.an, ptr %i.am, align 4, !tbaa !17
  %i.ao = getelementptr [4 x i8], ptr %i.ak, i64 %i.s
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !17
  %i.aq = getelementptr i8, ptr %i.al, i64 52
  store float %i.ap, ptr %i.aq, align 4, !tbaa !17
  %i.ar = getelementptr [4 x i8], ptr %i.ak, i64 %i.u
  %i.as = load float, ptr %i.ar, align 4, !tbaa !17
  %i.at = getelementptr i8, ptr %i.al, i64 100
  store float %i.as, ptr %i.at, align 4, !tbaa !17
  %i.au = add i32 %i.n, %i.x
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr [4 x i8], ptr %i.r, i64 %i.av ; 3 uses
  %i.ax = getelementptr [4 x i8], ptr %2, i64 %i.w ; 3 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load float, ptr %i.aw, align 4, !tbaa !17
  store float %i.az, ptr %i.ay, align 4, !tbaa !17
  %i.ba = getelementptr [4 x i8], ptr %i.aw, i64 %i.s
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !17
  %i.bc = getelementptr i8, ptr %i.ax, i64 56
  store float %i.bb, ptr %i.bc, align 4, !tbaa !17
  %i.bd = getelementptr [4 x i8], ptr %i.aw, i64 %i.u
  %i.be = load float, ptr %i.bd, align 4, !tbaa !17
  %i.bf = getelementptr i8, ptr %i.ax, i64 104
  store float %i.be, ptr %i.bf, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = icmp samesign ult i64 %indvars.iv.next, %i.t
  br i1 %i.bg, label %.preheader52, label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN3igl16polar_svd3x3_sseIfEEvRKN5Eigen6MatrixIT_Li12ELi3ELi0ELi12ELi3EEERS4_(ptr noundef nonnull align 16 dereferenceable(144) %2, ptr noundef nonnull align 16 dereferenceable(144) %3)
  br label %._crit_edge58

.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.lr.ph:       ; preds = %.preheader52
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN3igl16polar_svd3x3_sseIfEEvRKN5Eigen6MatrixIT_Li12ELi3ELi0ELi12ELi3EEERS4_(ptr noundef nonnull align 16 dereferenceable(144) %2, ptr noundef nonnull align 16 dereferenceable(144) %3)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !16, !noalias !21
  %i.bi = load i64, ptr %i.l, align 8, !tbaa !9, !noalias !21 ; 3 uses
  %i.bj = zext nneg i32 %spec.select to i64
  %factor.op.mul = mul i64 %i.bi, 3
  %.idx72 = shl i64 %i.bi, 3
  br label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge58:                                    ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br i1 %.not, label %bb.d, label %._crit_edge60, !llvm.loop !24

.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.lr.ph, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i
  %indvars.iv64 = phi i64 [ 0, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.lr.ph ], [ %indvars.iv.next65, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv64, 12
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 9 uses
  %i.bl = add nuw nsw i64 %indvars.iv64, %indvars.iv67
  %.reass = mul i64 %i.bl, %factor.op.mul
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %.reass ; 5 uses
  %i.bn = load float, ptr %i.bk, align 4, !tbaa !17
  store float %i.bn, ptr %i.bm, align 4, !tbaa !17
  %i.bo = getelementptr i8, ptr %i.bm, i64 4
  %gep.i.i.i.i.i.i.i.i.i.i.1 = getelementptr i8, ptr %i.bk, i64 48
  %i.bp = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i.1, align 4, !tbaa !17
  store float %i.bp, ptr %i.bo, align 4, !tbaa !17
  %i.bq = getelementptr i8, ptr %i.bm, i64 8
  %gep.i.i.i.i.i.i.i.i.i.i.2 = getelementptr i8, ptr %i.bk, i64 96
  %i.br = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i.2, align 4, !tbaa !17
  store float %i.br, ptr %i.bq, align 4, !tbaa !17
  %i.bs = getelementptr [4 x i8], ptr %i.bm, i64 %i.bi ; 3 uses
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.1 = getelementptr i8, ptr %i.bk, i64 4
  %i.bt = load float, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.1, align 4, !tbaa !17
  store float %i.bt, ptr %i.bs, align 4, !tbaa !17
  %i.bu = getelementptr i8, ptr %i.bs, i64 4
  %gep.i.i.i.i.i.i.i.i.i.i.1.1 = getelementptr i8, ptr %i.bk, i64 52
  %i.bv = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i.1.1, align 4, !tbaa !17
  store float %i.bv, ptr %i.bu, align 4, !tbaa !17
  %i.bw = getelementptr i8, ptr %i.bs, i64 8
  %gep.i.i.i.i.i.i.i.i.i.i.2.1 = getelementptr i8, ptr %i.bk, i64 100
  %i.bx = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i.2.1, align 4, !tbaa !17
  store float %i.bx, ptr %i.bw, align 4, !tbaa !17
  %i.by = getelementptr i8, ptr %i.bm, i64 %.idx72 ; 3 uses
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.2 = getelementptr i8, ptr %i.bk, i64 8
  %i.bz = load float, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.2, align 4, !tbaa !17
  store float %i.bz, ptr %i.by, align 4, !tbaa !17
  %i.ca = getelementptr i8, ptr %i.by, i64 4
  %gep.i.i.i.i.i.i.i.i.i.i.1.2 = getelementptr i8, ptr %i.bk, i64 56
  %i.cb = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i.1.2, align 4, !tbaa !17
  store float %i.cb, ptr %i.ca, align 4, !tbaa !17
  %i.cc = getelementptr i8, ptr %i.by, i64 8
  %gep.i.i.i.i.i.i.i.i.i.i.2.2 = getelementptr i8, ptr %i.bk, i64 104
  %i.cd = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i.2.2, align 4, !tbaa !17
  store float %i.cd, ptr %i.cc, align 4, !tbaa !17
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %i.ce = icmp samesign ult i64 %indvars.iv.next65, %i.bj
  br i1 %i.ce, label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge58, !llvm.loop !25

._crit_edge60:                                    ; preds = %._crit_edge58, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN3igl16polar_svd3x3_sseIfEEvRKN5Eigen6MatrixIT_Li12ELi3ELi0ELi12ELi3EEERS4_(ptr noundef nonnull align 16 dereferenceable(144), ptr noundef nonnull align 16 dereferenceable(144)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl17fit_rotations_SSEERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix", align 8     ; 7 uses
  %3 = alloca %"class.Eigen::CwiseUnaryOp", align 8 ; 4 uses
  %4 = alloca %"class.Eigen::Matrix", align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %0, ptr %3, align 8, !tbaa !26, !alias.scope !28
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEC2INS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl17fit_rotations_SSEERKN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEERS2_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9    ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !31   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !32
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.g, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.i, %i.e
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i64 %i.c, 0
  %i.k = icmp eq i64 %i.e, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sdiv i64 9223372036854775807, %i.e
  %i.m = icmp sgt i64 %i.c, %i.l
  br i1 %i.m, label %.noexc.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.d
  %i.n = call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !14
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i.i
  unreachable
end_hunk_0
