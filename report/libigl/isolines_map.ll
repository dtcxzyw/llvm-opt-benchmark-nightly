Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/isolines_map?download=true
inline.NumInlined: 194
inline.NumDeleted: 131
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [3 x double] }

$_ZN3igl12isolines_mapIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE = comdat any

$_ZN3igl12isolines_mapIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EEiiRNS1_15PlainObjectBaseIT1_EE = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl12isolines_mapIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.Eigen::Matrix", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN3igl12isolines_mapIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EEiiRNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 10, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl12isolines_mapIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EEiiRNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.d = sext i32 %2 to i64
  %i.e = mul nsw i64 %i.c, %i.d
  %i.f = add nsw i64 %i.c, -1
  %i.g = sext i32 %3 to i64
  %i.h = mul nsw i64 %i.f, %i.g
  %i.i = add nsw i64 %i.h, %i.e                   ; 3 uses
  %i.j = icmp sgt i64 %i.i, 3074457345618258602
  br i1 %i.j, label %bb.b, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #8
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.a
  %i.l = mul nsw i64 %i.i, 3
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.l, i64 noundef %i.i, i64 noundef 3)
  %i.m = load i64, ptr %i.b, align 8, !tbaa !13   ; 19 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.preheader42.lr.ph, label %._crit_edge52

.preheader42.lr.ph:                               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.o = icmp sgt i32 %2, 0
  %i.p = icmp slt i32 %3, 1                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br i1 %i.o, label %.preheader42.lr.ph.split.us, label %.preheader42.lr.ph.split

.preheader42.lr.ph.split.us:                      ; preds = %.preheader42.lr.ph
  %i.s = load ptr, ptr %0, align 8, !tbaa !16, !noalias !42 ; 3 uses
  %i.t = ptrtoaddr ptr %i.s to i64                ; 2 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !16, !noalias !43 ; 3 uses
  %i.v = ptrtoaddr ptr %i.u to i64                ; 2 uses
  %i.w = load i64, ptr %i.q, align 8, !tbaa !17, !noalias !43 ; 13 uses
  %i.x = load i64, ptr %i.r, align 8, !tbaa !13   ; 24 uses
  %i.y = icmp sgt i64 %i.w, 0                     ; 2 uses
  br i1 %i.p, label %.preheader42.lr.ph.split.us.split, label %.preheader42.us.us.preheader

.preheader42.us.us.preheader:                     ; preds = %.preheader42.lr.ph.split.us
  br i1 %i.y, label %.preheader42.us.us.preheader.a, label %.preheader42.us.us

.preheader42.us.us.preheader.a:                   ; preds = %.preheader42.us.us.preheader
  %min.iters.check226 = icmp ult i64 %i.w, 10
  %ident.check217 = icmp ne i64 %i.x, 1
  %ident.check218 = icmp ne i64 %i.m, 1
  %i.z = or i1 %ident.check217, %ident.check218
  %n.vec230 = and i64 %i.w, 9223372036854775804   ; 3 uses
  %cmp.n237 = icmp eq i64 %i.w, %n.vec230
  %xtraiter246 = and i64 %i.w, 3                  ; 2 uses
  %lcmp.mod247.not = icmp eq i64 %xtraiter246, 0
  %ident.check195.not = icmp eq i64 %i.x, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us.preheader

.preheader42.us.us:                               ; preds = %.preheader42.us.us.preheader
  %.not.us.us.not176 = icmp eq i64 %i.m, 1
  br i1 %.not.us.us.not176, label %._crit_edge52, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader: ; preds = %.preheader42.us.us
  %5 = load ptr, ptr %4, align 8, !tbaa !16, !noalias !44 ; 2 uses
  %6 = load i64, ptr %i.q, align 8, !tbaa !17, !noalias !44 ; 7 uses
  %7 = icmp sgt i64 %6, 0
  %8 = ptrtoaddr ptr %5 to i64
  %9 = sub i64 %8, %i.a
  %min.iters.check211 = icmp ugt i64 %6, 5
  %ident.check203.not = icmp eq i64 %i.x, 1
  %or.cond269 = select i1 %min.iters.check211, i1 %ident.check203.not, i1 false
  %invariant.op296 = add i64 %9, -1
  %n.vec215 = and i64 %6, 9223372036854775804     ; 3 uses
  %cmp.n222 = icmp eq i64 %6, %n.vec215
  %xtraiter281 = and i64 %6, 3                    ; 2 uses
  %lcmp.mod282.not = icmp eq i64 %xtraiter281, 0
  br label %.preheader.us.us

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us.preheader: ; preds = %.preheader42.us.us.us.backedge, %.preheader42.us.us.preheader.a
  %indvars.iv146.us = phi i64 [ 0, %.preheader42.us.us.preheader.a ], [ %indvars.iv.next147.us, %.preheader42.us.us.us.backedge ] ; 3 uses
  %.02450.us.us.us = phi i32 [ 0, %.preheader42.us.us.preheader.a ], [ %.02450.us.us.us.be, %.preheader42.us.us.us.backedge ]
  %i.aa = shl i64 %indvars.iv146.us, 3
  %i.ab = add i64 %i.aa, %i.t
  %i.ac = sub i64 %i.v, %i.ab
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv146.us ; 6 uses
  %i.ad = sext i32 %.02450.us.us.us to i64        ; 3 uses
  %invariant.op257 = add i64 %i.ac, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us
  %indvar223 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us.preheader ], [ %indvar.next224, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us ] ; 3 uses
  %indvars.iv138 = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us.preheader ], [ %indvars.iv.next139, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us ] ; 2 uses
  %.02244.us.us.us = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us.preheader ], [ %i.bs, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us ]
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.u, i64 %indvars.iv138 ; 6 uses
  %brmerge = select i1 %min.iters.check226, i1 true, i1 %i.z
  br i1 %brmerge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader, label %vector.memcheck227

vector.memcheck227:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us
  %i.af = add i64 %indvar223, %i.ad
  %i.ag = shl i64 %i.af, 3
  %.reass258 = add i64 %i.ag, %invariant.op257
  %diff.check228 = icmp ult i64 %.reass258, 31
  br i1 %diff.check228, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader, label %vector.body231

vector.body231:                                   ; preds = %vector.memcheck227, %vector.body231
  %index232 = phi i64 [ %index.next235, %vector.body231 ], [ 0, %vector.memcheck227 ] ; 3 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %index232 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %index232 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load233 = load <2 x double>, ptr %i.ai, align 8, !tbaa !46
  %wide.load234 = load <2 x double>, ptr %i.aj, align 8, !tbaa !46
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <2 x double> %wide.load233, ptr %i.ah, align 8, !tbaa !46
  store <2 x double> %wide.load234, ptr %i.ak, align 8, !tbaa !46
  %index.next235 = add nuw i64 %index232, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next235, %n.vec230
  br i1 %i.al, label %middle.block236, label %vector.body231, !llvm.loop !24

middle.block236:                                  ; preds = %vector.body231
  br i1 %cmp.n237, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us, %vector.memcheck227, %middle.block236
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.ph = phi i64 [ 0, %vector.memcheck227 ], [ %n.vec230, %middle.block236 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us ] ; 3 uses
  br i1 %lcmp.mod247.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader ] ; 3 uses
  %prol.iter248 = phi i64 [ %prol.iter248.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader ]
  %i.am = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.prol, %i.x
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.am
  %i.ao = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.prol, %i.m
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !46
  store double %i.aq, ptr %i.an, align 8, !tbaa !46
  %i.ar = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.prol, 1 ; 2 uses
  %prol.iter248.next = add i64 %prol.iter248, 1   ; 2 uses
  %prol.iter248.cmp.not = icmp eq i64 %prol.iter248.next, %xtraiter246
  br i1 %prol.iter248.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol, !llvm.loop !25

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol ]
  %i.as = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.ph, %i.w
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol.loopexit ] ; 6 uses
  %i.au = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us, %i.x
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.au
  %i.aw = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us, %i.m
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !46
  store double %i.ay, ptr %i.av, align 8, !tbaa !46
  %i.az = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us, 1 ; 2 uses
  %i.ba = mul nsw i64 %i.az, %i.x
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ba
  %i.bc = mul nuw nsw i64 %i.az, %i.m
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !46
  store double %i.be, ptr %i.bb, align 8, !tbaa !46
  %i.bf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us, 2 ; 2 uses
  %i.bg = mul nsw i64 %i.bf, %i.x
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.bg
  %i.bi = mul nuw nsw i64 %i.bf, %i.m
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !46
  store double %i.bk, ptr %i.bh, align 8, !tbaa !46
  %i.bl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us, 3 ; 2 uses
  %i.bm = mul nsw i64 %i.bl, %i.x
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.bm
  %i.bo = mul nuw nsw i64 %i.bl, %i.m
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !46
  store double %i.bq, ptr %i.bn, align 8, !tbaa !46
  %i.br = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.us.us.3 = icmp eq i64 %i.br, %i.w
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.us.us.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us, !llvm.loop !26

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us, %middle.block236
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, 1 ; 3 uses
  %i.bs = add nuw nsw i32 %.02244.us.us.us, 1     ; 2 uses
  %exitcond141.not = icmp eq i32 %i.bs, %2
  %indvar.next224 = add i64 %indvar223, 1
  br i1 %exitcond141.not, label %._crit_edge.us.us.loopexit.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us, !llvm.loop !27

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.loopexit.us
  %11 = load ptr, ptr %4, align 8, !tbaa !16, !noalias !44 ; 2 uses
  %12 = load i64, ptr %i.q, align 8, !tbaa !17, !noalias !44 ; 7 uses
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %._crit_edge.us.us.loopexit, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader.us

._crit_edge.us.us.loopexit:                       ; preds = %.preheader.us.us.us
  %14 = ptrtoaddr ptr %11 to i64
  %15 = shl nsw i64 %i.ad, 3
  %reass.sub = sub i64 %15, %i.a
  %16 = shl nuw nsw i64 %indvar223, 3
  %min.iters.check237 = icmp ugt i64 %12, 5
  %or.cond = select i1 %min.iters.check237, i1 %ident.check195.not, i1 false
  %op.rdx272 = add i64 %16, %14
  %invariant.op300 = add i64 %op.rdx272, %reass.sub
  %n.vec241 = and i64 %12, 9223372036854775804    ; 3 uses
  %cmp.n248 = icmp eq i64 %12, %n.vec241
  %xtraiter287 = and i64 %12, 3                   ; 2 uses
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.us: ; preds = %._crit_edge.us.us.loopexit, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us.us
  %indvar232 = phi i64 [ 0, %._crit_edge.us.us.loopexit ], [ %indvar.next233, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us.us ] ; 2 uses
  %indvars.iv142.us = phi i64 [ %indvars.iv.next139, %._crit_edge.us.us.loopexit ], [ %indvars.iv.next143.us, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us.us ] ; 2 uses
  %.046.us.us.us.us = phi i32 [ 0, %._crit_edge.us.us.loopexit ], [ %50, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us.us ]
  %17 = getelementptr inbounds [8 x i8], ptr %11, i64 %indvars.iv142.us ; 6 uses
  br i1 %or.cond, label %._crit_edge.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.us.preheader

._crit_edge.us.us:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.us
  %18 = shl nuw nsw i64 %indvar232, 3
  %op.rdx = or disjoint i64 %18, 7
  %indvars.iv.next147.a = add i64 %op.rdx, %invariant.op300
  %diff.check239 = icmp ult i64 %indvars.iv.next147.a, 31
  br i1 %diff.check239, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.us.preheader, label %.preheader.us.us.a

.preheader.us.us.a:                               ; preds = %._crit_edge.us.us, %.preheader.us.us.a
  %index243 = phi i64 [ %index.next246, %.preheader.us.us.a ], [ 0, %._crit_edge.us.us ] ; 3 uses
  %19 = getelementptr inbounds [8 x i8], ptr %17, i64 %index243 ; 2 uses
  %20 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index243 ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %wide.load244 = load <2 x double>, ptr %20, align 8, !tbaa !46
  %wide.load245 = load <2 x double>, ptr %21, align 8, !tbaa !46
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store <2 x double> %wide.load244, ptr %19, align 8, !tbaa !46
  store <2 x double> %wide.load245, ptr %22, align 8, !tbaa !46
  %index.next246 = add nuw i64 %index243, 4       ; 2 uses
  %23 = icmp eq i64 %index.next246, %n.vec241
  br i1 %23, label %middle.block247, label %.preheader.us.us.a, !llvm.loop !28

middle.block247:                                  ; preds = %.preheader.us.us.a
  br i1 %cmp.n248, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.us.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.us.preheader: ; preds = %._crit_edge.us.us, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.us, %middle.block247
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.us.ph = phi i64 [ 0, %._crit_edge.us.us ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.us ], [ %n.vec241, %middle.block247 ] ; 3 uses
  br i1 %lcmp.mod288.not, label %.preheader42.us.us.backedge, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader.a

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader.a: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.us.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader.a
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.us.prol = phi i64 [ %28, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader.a ], [ %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.us.preheader ] ; 3 uses
  %prol.iter289 = phi i64 [ %prol.iter289.next, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader.a ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.us.preheader ]
  %24 = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.us.prol, %i.x
  %25 = getelementptr inbounds [8 x i8], ptr %17, i64 %24
  %26 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.us.prol
  %27 = load double, ptr %26, align 8, !tbaa !46
  store double %27, ptr %25, align 8, !tbaa !46
  %28 = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter289.next = add i64 %prol.iter289, 1   ; 2 uses
  %prol.iter289.cmp.not = icmp eq i64 %prol.iter289.next, %xtraiter287
  br i1 %prol.iter289.cmp.not, label %.preheader42.us.us.backedge, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader.a, !llvm.loop !29

.preheader42.us.us.backedge:                      ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader.a, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.us.preheader
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.us.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.us.preheader ], [ %28, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader.a ]
  %29 = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.us.ph, %12
  %30 = icmp ugt i64 %29, -4
  br i1 %30, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.preheader.a

.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.preheader.a: ; preds = %.preheader42.us.us.backedge, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.preheader.a
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.us = phi i64 [ %49, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.preheader.a ], [ %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.us.unr, %.preheader42.us.us.backedge ] ; 6 uses
  %31 = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.us, %i.x
  %32 = getelementptr inbounds [8 x i8], ptr %17, i64 %31
  %33 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.us
  %34 = load double, ptr %33, align 8, !tbaa !46
  store double %34, ptr %32, align 8, !tbaa !46
  %35 = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.us, 1 ; 2 uses
  %36 = mul nsw i64 %35, %i.x
  %37 = getelementptr inbounds [8 x i8], ptr %17, i64 %36
  %38 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %35
  %39 = load double, ptr %38, align 8, !tbaa !46
  store double %39, ptr %37, align 8, !tbaa !46
  %40 = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.us, 2 ; 2 uses
  %41 = mul nsw i64 %40, %i.x
  %42 = getelementptr inbounds [8 x i8], ptr %17, i64 %41
  %43 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %40
  %44 = load double, ptr %43, align 8, !tbaa !46
  store double %44, ptr %42, align 8, !tbaa !46
  %invariant.op259.reass = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.us, 3 ; 2 uses
  %45 = mul nsw i64 %invariant.op259.reass, %i.x
  %46 = getelementptr inbounds [8 x i8], ptr %17, i64 %45
  %47 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %invariant.op259.reass
  %48 = load double, ptr %47, align 8, !tbaa !46
  store double %48, ptr %46, align 8, !tbaa !46
  %49 = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.us, 4 ; 2 uses
  %lcmp.mod250.not = icmp eq i64 %49, %12
  br i1 %lcmp.mod250.not, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.preheader.a, !llvm.loop !30

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us.us: ; preds = %.preheader42.us.us.backedge, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.preheader.a, %middle.block247
  %indvars.iv.next143.us = add nsw i64 %indvars.iv142.us, 1 ; 2 uses
  %50 = add nuw nsw i32 %.046.us.us.us.us, 1      ; 2 uses
  %exitcond145.us.not = icmp eq i32 %50, %3
  %indvar.next233 = add i64 %indvar232, 1
  br i1 %exitcond145.us.not, label %..loopexit_crit_edge.us.us.loopexit.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.us, !llvm.loop !31

..loopexit_crit_edge.us.us.loopexit.us:           ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us.us
  %51 = trunc nsw i64 %indvars.iv.next143.us to i32
  br label %.preheader42.us.us.us.backedge

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader.us: ; preds = %.preheader.us.us.us
  %52 = add i32 %3, %53
  br label %.preheader42.us.us.us.backedge

.preheader42.us.us.us.backedge:                   ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader.us, %..loopexit_crit_edge.us.us.loopexit.us
  %.02450.us.us.us.be = phi i32 [ %51, %..loopexit_crit_edge.us.us.loopexit.us ], [ %52, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader.us ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us.preheader, !llvm.loop !32

._crit_edge.us.us.loopexit.us:                    ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us
  %53 = trunc nsw i64 %indvars.iv.next139 to i32
  %indvars.iv.next147.us = add nuw nsw i64 %indvars.iv146.us, 1 ; 2 uses
  %.not.us.us.us.not = icmp eq i64 %i.m, %indvars.iv.next147.us
  br i1 %.not.us.us.us.not, label %._crit_edge52, label %.preheader.us.us.us

.preheader.us.us:                                 ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader, %..loopexit_crit_edge.us.us
  %indvars.iv.next147177 = phi i64 [ %indvars.iv.next147, %..loopexit_crit_edge.us.us ], [ 1, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader ]
  %54 = phi i32 [ %57, %..loopexit_crit_edge.us.us ], [ %2, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader ] ; 2 uses
  br i1 %7, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader: ; preds = %.preheader.us.us
  %55 = add i32 %3, %54
  br label %..loopexit_crit_edge.us.us

.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.preheader: ; preds = %.preheader.us.us
  %56 = sext i32 %54 to i64                       ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us

.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us
  %indvar200 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.preheader ], [ %indvar.next201, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us ] ; 2 uses
  %indvars.iv142 = phi i64 [ %56, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.preheader ], [ %indvars.iv.next143, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us ] ; 2 uses
  %.046.us.us.us = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.preheader ], [ %i.dc, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us ]
  %i.bt = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv142 ; 6 uses
  br i1 %or.cond269, label %vector.memcheck204, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader

vector.memcheck204:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us
  %i.bu = add i64 %indvar200, %56
  %i.bv = shl i64 %i.bu, 3
  %.reass260 = add i64 %i.bv, %invariant.op296
  %diff.check205 = icmp ult i64 %.reass260, 31
  br i1 %diff.check205, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader, label %vector.body208

vector.body208:                                   ; preds = %vector.memcheck204, %vector.body208
  %index209 = phi i64 [ %index.next212, %vector.body208 ], [ 0, %vector.memcheck204 ] ; 3 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %index209 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index209 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load210 = load <2 x double>, ptr %i.bx, align 8, !tbaa !46
  %wide.load211 = load <2 x double>, ptr %i.by, align 8, !tbaa !46
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <2 x double> %wide.load210, ptr %i.bw, align 8, !tbaa !46
  store <2 x double> %wide.load211, ptr %i.bz, align 8, !tbaa !46
  %index.next212 = add nuw i64 %index209, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next212, %n.vec215
  br i1 %i.ca, label %middle.block213, label %vector.body208, !llvm.loop !33

middle.block213:                                  ; preds = %vector.body208
  br i1 %cmp.n222, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader:  ; preds = %vector.memcheck204, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us, %middle.block213
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.ph = phi i64 [ 0, %vector.memcheck204 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us ], [ %n.vec215, %middle.block213 ] ; 3 uses
  br i1 %lcmp.mod282.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.prol = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader ] ; 3 uses
  %prol.iter251 = phi i64 [ %prol.iter251.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader ]
  %i.cb = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.prol, %i.x
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.prol
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !46
  store double %i.ce, ptr %i.cc, align 8, !tbaa !46
  %i.cf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.prol, 1 ; 2 uses
  %prol.iter251.next = add i64 %prol.iter251, 1   ; 2 uses
  %prol.iter251.cmp.not = icmp eq i64 %prol.iter251.next, %xtraiter281
  br i1 %prol.iter251.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol, !llvm.loop !34

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol ]
  %i.cg = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.ph, %6
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us ], [ %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol.loopexit ] ; 6 uses
  %i.ci = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us, %i.x
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !46
  store double %i.cl, ptr %i.cj, align 8, !tbaa !46
  %i.cm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us, 1 ; 2 uses
  %i.cn = mul nsw i64 %i.cm, %i.x
  %i.co = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cm
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !46
  store double %i.cq, ptr %i.co, align 8, !tbaa !46
  %i.cr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us, 2 ; 2 uses
  %i.cs = mul nsw i64 %i.cr, %i.x
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cr
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !46
  store double %i.cv, ptr %i.ct, align 8, !tbaa !46
  %i.cw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us, 3 ; 2 uses
  %i.cx = mul nsw i64 %i.cw, %i.x
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.cx
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cw
  %i.da = load double, ptr %i.cz, align 8, !tbaa !46
  store double %i.da, ptr %i.cy, align 8, !tbaa !46
  %i.db = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i28.us.us.us.3 = icmp eq i64 %i.db, %6
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i28.us.us.us.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us, !llvm.loop !35

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us, %middle.block213
  %indvars.iv.next143 = add nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.dc = add nuw nsw i32 %.046.us.us.us, 1       ; 2 uses
  %exitcond145.not = icmp eq i32 %i.dc, %3
  %indvar.next201 = add i64 %indvar200, 1
  br i1 %exitcond145.not, label %..loopexit_crit_edge.us.us.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us, !llvm.loop !31

..loopexit_crit_edge.us.us.loopexit:              ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us
  %i.dd = trunc nsw i64 %indvars.iv.next143 to i32
  br label %..loopexit_crit_edge.us.us

..loopexit_crit_edge.us.us:                       ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader, %..loopexit_crit_edge.us.us.loopexit
  %.3.us.us = phi i32 [ %55, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader ], [ %i.dd, %..loopexit_crit_edge.us.us.loopexit ]
  %57 = add i32 %2, %.3.us.us
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv.next147177, 1 ; 2 uses
  %.not.us.us.not = icmp eq i64 %i.m, %indvars.iv.next147
  br i1 %.not.us.us.not, label %._crit_edge52, label %.preheader.us.us, !llvm.loop !32

.preheader42.lr.ph.split.us.split:                ; preds = %.preheader42.lr.ph.split.us
  br i1 %i.y, label %.preheader42.us.us90.preheader, label %._crit_edge52

.preheader42.us.us90.preheader:                   ; preds = %.preheader42.lr.ph.split.us.split
  %min.iters.check181 = icmp ult i64 %i.w, 10
  %ident.check172 = icmp ne i64 %i.x, 1
  %ident.check173 = icmp ne i64 %i.m, 1
  %i.de = or i1 %ident.check172, %ident.check173
  %n.vec185 = and i64 %i.w, 9223372036854775804   ; 3 uses
  %cmp.n192 = icmp eq i64 %i.w, %n.vec185
  %xtraiter243 = and i64 %i.w, 3                  ; 2 uses
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  br label %.preheader42.us.us90

.preheader42.us.us90:                             ; preds = %.preheader42.us.us90.preheader, %._crit_edge.split.us.us.us101
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %._crit_edge.split.us.us.us101 ], [ 0, %.preheader42.us.us90.preheader ] ; 3 uses
  %.02450.us.us92 = phi i32 [ %i.dl, %._crit_edge.split.us.us.us101 ], [ 0, %.preheader42.us.us90.preheader ] ; 3 uses
  %i.df = shl i64 %indvars.iv134, 3
  %i.dg = add i64 %i.df, %i.t
  %i.dh = sub i64 %i.v, %i.dg
  %i.di = sext i32 %.02450.us.us92 to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv134 ; 6 uses
  %i.dk = sext i32 %.02450.us.us92 to i64
  %i.dl = add i32 %2, %.02450.us.us92             ; 2 uses
  %invariant.op255 = add i64 %i.dh, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us94

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us94:  ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us100, %.preheader42.us.us90
  %indvar178 = phi i64 [ %indvar.next179, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us100 ], [ 0, %.preheader42.us.us90 ] ; 2 uses
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us100 ], [ %i.dk, %.preheader42.us.us90 ] ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.u, i64 %indvars.iv130 ; 6 uses
  %brmerge262 = select i1 %min.iters.check181, i1 true, i1 %i.de
  br i1 %brmerge262, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.preheader, label %vector.memcheck182

vector.memcheck182:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us94
  %i.dn = add i64 %indvar178, %i.di
  %i.do = shl i64 %i.dn, 3
  %.reass256 = add i64 %i.do, %invariant.op255
  %diff.check183 = icmp ult i64 %.reass256, 31
  br i1 %diff.check183, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.preheader, label %vector.body186

vector.body186:                                   ; preds = %vector.memcheck182, %vector.body186
  %index187 = phi i64 [ %index.next190, %vector.body186 ], [ 0, %vector.memcheck182 ] ; 3 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %index187 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index187 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load188 = load <2 x double>, ptr %i.dq, align 8, !tbaa !46
  %wide.load189 = load <2 x double>, ptr %i.dr, align 8, !tbaa !46
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store <2 x double> %wide.load188, ptr %i.dp, align 8, !tbaa !46
  store <2 x double> %wide.load189, ptr %i.ds, align 8, !tbaa !46
  %index.next190 = add nuw i64 %index187, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next190, %n.vec185
  br i1 %i.dt, label %middle.block191, label %vector.body186, !llvm.loop !36

middle.block191:                                  ; preds = %vector.body186
  br i1 %cmp.n192, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us100, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.preheader:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us94, %vector.memcheck182, %middle.block191
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98.ph = phi i64 [ 0, %vector.memcheck182 ], [ %n.vec185, %middle.block191 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us94 ] ; 3 uses
  br i1 %lcmp.mod244.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98.prol = phi i64 [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.preheader ] ; 3 uses
  %prol.iter245 = phi i64 [ %prol.iter245.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.preheader ]
  %i.du = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98.prol, %i.x
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.du
  %i.dw = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98.prol, %i.m
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dw
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !46
  store double %i.dy, ptr %i.dv, align 8, !tbaa !46
  %i.dz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98.prol, 1 ; 2 uses
  %prol.iter245.next = add i64 %prol.iter245, 1   ; 2 uses
  %prol.iter245.cmp.not = icmp eq i64 %prol.iter245.next, %xtraiter243
  br i1 %prol.iter245.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol, !llvm.loop !37

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.preheader ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol ]
  %i.ea = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98.ph, %i.w
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us100, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98 = phi i64 [ %i.ez, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97 ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol.loopexit ] ; 6 uses
  %i.ec = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98, %i.x
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.ec
  %i.ee = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98, %i.m
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.ee
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !46
  store double %i.eg, ptr %i.ed, align 8, !tbaa !46
  %i.eh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98, 1 ; 2 uses
  %i.ei = mul nsw i64 %i.eh, %i.x
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.ei
  %i.ek = mul nuw nsw i64 %i.eh, %i.m
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !46
  store double %i.em, ptr %i.ej, align 8, !tbaa !46
  %i.en = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98, 2 ; 2 uses
  %i.eo = mul nsw i64 %i.en, %i.x
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.eo
  %i.eq = mul nuw nsw i64 %i.en, %i.m
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.eq
  %i.es = load double, ptr %i.er, align 8, !tbaa !46
  store double %i.es, ptr %i.ep, align 8, !tbaa !46
  %i.et = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98, 3 ; 2 uses
  %i.eu = mul nsw i64 %i.et, %i.x
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.eu
  %i.ew = mul nuw nsw i64 %i.et, %i.m
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.ew
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !46
  store double %i.ey, ptr %i.ev, align 8, !tbaa !46
  %i.ez = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.us.us99.3 = icmp eq i64 %i.ez, %i.w
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.us.us99.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us100, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97, !llvm.loop !38

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us100: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97, %middle.block191
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next131 to i32
  %exitcond133.not = icmp eq i32 %i.dl, %lftr.wideiv
  %indvar.next179 = add i64 %indvar178, 1
  br i1 %exitcond133.not, label %._crit_edge.split.us.us.us101, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us94, !llvm.loop !27

._crit_edge.split.us.us.us101:                    ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us100
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next135, %i.m
  br i1 %exitcond137.not, label %._crit_edge52, label %.preheader42.us.us90, !llvm.loop !32

.preheader42.lr.ph.split:                         ; preds = %.preheader42.lr.ph
  %.not.us66.not167 = icmp eq i64 %i.m, 1
  %or.cond240 = or i1 %i.p, %.not.us66.not167
  br i1 %or.cond240, label %._crit_edge52, label %.preheader.us67.preheader

.preheader.us67.preheader:                        ; preds = %.preheader42.lr.ph.split
  %i.fa = load ptr, ptr %4, align 8, !tbaa !16, !noalias !44 ; 2 uses
  %i.fb = load i64, ptr %i.q, align 8, !tbaa !17, !noalias !44 ; 7 uses
  %i.fc = load i64, ptr %i.r, align 8, !tbaa !13  ; 6 uses
  %i.fd = icmp sgt i64 %i.fb, 0
  %i.fe = ptrtoaddr ptr %i.fa to i64
  %i.ff = sub i64 %i.fe, %i.a
  %min.iters.check = icmp ugt i64 %i.fb, 5
  %ident.check.not = icmp eq i64 %i.fc, 1
  %or.cond239 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %invariant.op = add i64 %i.ff, -1
  %n.vec = and i64 %i.fb, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.fb, %n.vec
  %xtraiter = and i64 %i.fb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.us67

.preheader.us67:                                  ; preds = %.preheader.us67.preheader, %..loopexit_crit_edge.us85
  %indvars.iv.next124169 = phi i64 [ %indvars.iv.next124, %..loopexit_crit_edge.us85 ], [ 1, %.preheader.us67.preheader ]
  %.02450.us65168 = phi i32 [ %.3.us89, %..loopexit_crit_edge.us85 ], [ 0, %.preheader.us67.preheader ] ; 2 uses
  br i1 %i.fd, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us70.preheader

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us70.preheader: ; preds = %.preheader.us67
  %i.fg = add i32 %3, %.02450.us65168
  br label %..loopexit_crit_edge.us85

.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76.preheader: ; preds = %.preheader.us67
  %i.fh = sext i32 %.02450.us65168 to i64         ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76

.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us82
  %indvar = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76.preheader ], [ %indvar.next, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us82 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76.preheader ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us82 ] ; 2 uses
  %.046.us.us77 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76.preheader ], [ %i.gr, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us82 ]
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %indvars.iv ; 6 uses
  br i1 %or.cond239, label %vector.memcheck, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.preheader

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76
  %i.fj = add i64 %indvar, %i.fh
  %i.fk = shl i64 %i.fj, 3
  %.reass = add i64 %i.fk, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %index ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %wide.load = load <2 x double>, ptr %i.fm, align 8, !tbaa !46
  %wide.load170 = load <2 x double>, ptr %i.fn, align 8, !tbaa !46
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <2 x double> %wide.load, ptr %i.fl, align 8, !tbaa !46
  store <2 x double> %wide.load170, ptr %i.fo, align 8, !tbaa !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fp = icmp eq i64 %index.next, %n.vec
  br i1 %i.fp, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us82, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.preheader:   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us80.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us80.prol = phi i64 [ %i.fu, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i27.us.us80.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.preheader ]
  %i.fq = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us80.prol, %i.fc
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fq
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us80.prol
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !46
  store double %i.ft, ptr %i.fr, align 8, !tbaa !46
  %i.fu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us80.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol, !llvm.loop !40

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.preheader
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us80.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i27.us.us80.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.preheader ], [ %i.fu, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol ]
  %i.fv = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us80.ph, %i.fb
  %i.fw = icmp ugt i64 %i.fv, -4
  br i1 %i.fw, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us82, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us80 = phi i64 [ %i.gq, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79 ], [ %.05.i.i.i.i.i.i.i.i.i.i27.us.us80.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol.loopexit ] ; 6 uses
  %i.fx = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us80, %i.fc
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fx
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us80
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !46
  store double %i.ga, ptr %i.fy, align 8, !tbaa !46
  %i.gb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us80, 1 ; 2 uses
  %i.gc = mul nsw i64 %i.gb, %i.fc
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.gc
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.gb
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !46
  store double %i.gf, ptr %i.gd, align 8, !tbaa !46
  %i.gg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us80, 2 ; 2 uses
  %i.gh = mul nsw i64 %i.gg, %i.fc
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.gh
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.gg
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !46
  store double %i.gk, ptr %i.gi, align 8, !tbaa !46
  %i.gl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us80, 3 ; 2 uses
  %i.gm = mul nsw i64 %i.gl, %i.fc
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.gm
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.gl
  %i.gp = load double, ptr %i.go, align 8, !tbaa !46
  store double %i.gp, ptr %i.gn, align 8, !tbaa !46
  %i.gq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us80, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i28.us.us81.3 = icmp eq i64 %i.gq, %i.fb
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i28.us.us81.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us82, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79, !llvm.loop !41

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us82: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.gr = add nuw nsw i32 %.046.us.us77, 1        ; 2 uses
  %exitcond.not = icmp eq i32 %i.gr, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %..loopexit_crit_edge.us85.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76, !llvm.loop !31

..loopexit_crit_edge.us85.loopexit:               ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us82
  %i.gs = trunc nsw i64 %indvars.iv.next to i32
  br label %..loopexit_crit_edge.us85

..loopexit_crit_edge.us85:                        ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us70.preheader, %..loopexit_crit_edge.us85.loopexit
  %.3.us89 = phi i32 [ %i.fg, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us70.preheader ], [ %i.gs, %..loopexit_crit_edge.us85.loopexit ]
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv.next124169, 1 ; 2 uses
  %.not.us66.not = icmp eq i64 %i.m, %indvars.iv.next124
  br i1 %.not.us66.not, label %._crit_edge52, label %.preheader.us67, !llvm.loop !32

._crit_edge52:                                    ; preds = %..loopexit_crit_edge.us85, %._crit_edge.split.us.us.us101, %..loopexit_crit_edge.us.us, %._crit_edge.us.us.loopexit.us, %.preheader42.us.us, %.preheader42.lr.ph.split, %.preheader42.lr.ph.split.us.split, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.f) #7
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #8
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #9 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #8
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !13
  store i64 %3, ptr %i.c, align 8, !tbaa !17
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 double", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !10, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!12, !11, i64 8}
!14 = !{!"vtable pointer", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!12, !10, i64 0}
!17 = !{!12, !11, i64 16}
!18 = distinct !{!18, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!19 = distinct !{!19, !18, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!20 = distinct !{!20, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!21 = distinct !{!21, !20, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!22 = distinct !{!22, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!23 = distinct !{!23, !22, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!24 = distinct !{!24, !47, !48, !49}
!25 = distinct !{!25, !50}
!26 = distinct !{!26, !47, !48}
!27 = distinct !{!27, !47}
!28 = distinct !{!28, !47, !48, !49}
!29 = distinct !{!29, !50}
!30 = distinct !{!30, !47, !48}
!31 = distinct !{!31, !47}
!32 = distinct !{!32, !47}
!33 = distinct !{!33, !47, !48, !49}
!34 = distinct !{!34, !50}
!35 = distinct !{!35, !47, !48}
!36 = distinct !{!36, !47, !48, !49}
!37 = distinct !{!37, !50}
!38 = distinct !{!38, !47, !48}
!39 = distinct !{!39, !47, !48, !49}
!40 = distinct !{!40, !50}
!41 = distinct !{!41, !47, !48}
!42 = !{!19}
!43 = !{!21}
!44 = !{!23}
!45 = !{!"double", !5, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
