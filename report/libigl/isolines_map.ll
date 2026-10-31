Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/isolines_map?download=true
inline.NumInlined: 194
inline.NumDeleted: 131
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
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
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
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
  %i.m = load i64, ptr %i.b, align 8, !tbaa !13   ; 17 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.preheader42.lr.ph, label %._crit_edge52

.preheader42.lr.ph:                               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.o = icmp sgt i32 %2, 0
  %i.p = icmp slt i32 %3, 1                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br i1 %i.o, label %.preheader42.lr.ph.split.us, label %.preheader42.lr.ph.split

.preheader42.lr.ph.split.us:                      ; preds = %.preheader42.lr.ph
  %i.s = load ptr, ptr %0, align 8, !tbaa !16, !noalias !39 ; 3 uses
  %i.t = ptrtoaddr ptr %i.s to i64                ; 2 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !16, !noalias !40 ; 3 uses
  %i.v = ptrtoaddr ptr %i.u to i64                ; 2 uses
  %i.w = load i64, ptr %i.q, align 8, !tbaa !17, !noalias !40 ; 13 uses
  %i.x = load i64, ptr %i.r, align 8, !tbaa !13   ; 18 uses
  %i.y = icmp sgt i64 %i.w, 0                     ; 2 uses
  br i1 %i.p, label %.preheader42.lr.ph.split.us.split, label %.preheader42.us.us.preheader

.preheader42.us.us.preheader:                     ; preds = %.preheader42.lr.ph.split.us
  %min.iters.check216 = icmp ult i64 %i.w, 10
  %ident.check209 = icmp ne i64 %i.x, 1
  %ident.check210 = icmp ne i64 %i.m, 1
  %i.z = or i1 %ident.check209, %ident.check210
  %n.vec218 = and i64 %i.w, 9223372036854775804   ; 3 uses
  %cmp.n225 = icmp eq i64 %i.w, %n.vec218
  %xtraiter240 = and i64 %i.w, 3                  ; 2 uses
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  %ident.check195.not = icmp eq i64 %i.x, 1
  %invariant.op255.a = sub i64 -1, %i.a
  br label %.preheader42.us.us

.preheader42.us.us:                               ; preds = %.preheader42.us.us.backedge, %.preheader42.us.us.preheader
  %indvars.iv146 = phi i64 [ 0, %.preheader42.us.us.preheader ], [ %indvars.iv.next147, %.preheader42.us.us.backedge ] ; 3 uses
  %.02450.us.us = phi i32 [ 0, %.preheader42.us.us.preheader ], [ %.02450.us.us.be, %.preheader42.us.us.backedge ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv146 ; 6 uses
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader: ; preds = %.preheader42.us.us
  %i.ab = add i32 %2, %.02450.us.us
  br label %._crit_edge.us.us

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us.preheader: ; preds = %.preheader42.us.us
  %i.ac = shl i64 %indvars.iv146, 3
  %i.ad = add i64 %i.ac, %i.t
  %i.ae = sub i64 %i.v, %i.ad
  %i.af = sext i32 %.02450.us.us to i64           ; 2 uses
  %invariant.op251 = add i64 %i.ae, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us
  %indvar212 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us.preheader ], [ %indvar.next213, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us ] ; 2 uses
  %indvars.iv138 = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us.preheader ], [ %indvars.iv.next139, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us ] ; 2 uses
  %.02244.us.us.us = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us.preheader ], [ %i.bu, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us ]
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.u, i64 %indvars.iv138 ; 6 uses
  %brmerge = select i1 %min.iters.check216, i1 true, i1 %i.z
  br i1 %brmerge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader, label %vector.scevcheck208

vector.scevcheck208:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us
  %i.ah = add i64 %indvar212, %i.af
  %i.ai = shl i64 %i.ah, 3
  %.reass252 = add i64 %i.ai, %invariant.op251
  %diff.check214 = icmp ult i64 %.reass252, 31
  br i1 %diff.check214, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader, label %vector.body219

vector.body219:                                   ; preds = %vector.scevcheck208, %vector.body219
  %index220 = phi i64 [ %index.next223, %vector.body219 ], [ 0, %vector.scevcheck208 ] ; 3 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %index220 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %index220 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load221 = load <2 x double>, ptr %i.ak, align 8, !tbaa !42
  %wide.load222 = load <2 x double>, ptr %i.al, align 8, !tbaa !42
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <2 x double> %wide.load221, ptr %i.aj, align 8, !tbaa !42
  store <2 x double> %wide.load222, ptr %i.am, align 8, !tbaa !42
  %index.next223 = add nuw i64 %index220, 4       ; 2 uses
  %i.an = icmp eq i64 %index.next223, %n.vec218
  br i1 %i.an, label %middle.block224, label %vector.body219, !llvm.loop !22

middle.block224:                                  ; preds = %vector.body219
  br i1 %cmp.n225, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us, %vector.scevcheck208, %middle.block224
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.ph = phi i64 [ 0, %vector.scevcheck208 ], [ %n.vec218, %middle.block224 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us ] ; 3 uses
  br i1 %lcmp.mod241.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.prol = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader ] ; 3 uses
  %prol.iter242 = phi i64 [ %prol.iter242.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader ]
  %i.ao = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.prol, %i.x
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ao
  %i.aq = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.prol, %i.m
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !42
  store double %i.as, ptr %i.ap, align 8, !tbaa !42
  %i.at = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.prol, 1 ; 2 uses
  %prol.iter242.next = add i64 %prol.iter242, 1   ; 2 uses
  %prol.iter242.cmp.not = icmp eq i64 %prol.iter242.next, %xtraiter240
  br i1 %prol.iter242.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol, !llvm.loop !23

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol ]
  %i.au = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.ph, %i.w
  %i.av = icmp ugt i64 %i.au, -4
  br i1 %i.av, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol.loopexit ] ; 6 uses
  %i.aw = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us, %i.x
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.aw
  %i.ay = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us, %i.m
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !42
  store double %i.ba, ptr %i.ax, align 8, !tbaa !42
  %i.bb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us, 1 ; 2 uses
  %i.bc = mul nsw i64 %i.bb, %i.x
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.bc
  %i.be = mul nuw nsw i64 %i.bb, %i.m
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !42
  store double %i.bg, ptr %i.bd, align 8, !tbaa !42
  %i.bh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us, 2 ; 2 uses
  %i.bi = mul nsw i64 %i.bh, %i.x
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.bi
  %i.bk = mul nuw nsw i64 %i.bh, %i.m
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !42
  store double %i.bm, ptr %i.bj, align 8, !tbaa !42
  %i.bn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us, 3 ; 2 uses
  %i.bo = mul nsw i64 %i.bn, %i.x
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.bo
  %i.bq = mul nuw nsw i64 %i.bn, %i.m
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !42
  store double %i.bs, ptr %i.bp, align 8, !tbaa !42
  %i.bt = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.us.us.3 = icmp eq i64 %i.bt, %i.w
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.us.us.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us, !llvm.loop !24

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us, %middle.block224
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.bu = add nuw nsw i32 %.02244.us.us.us, 1     ; 2 uses
  %exitcond141.not = icmp eq i32 %i.bu, %2
  %indvar.next213 = add i64 %indvar212, 1
  br i1 %exitcond141.not, label %._crit_edge.us.us.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us, !llvm.loop !25

._crit_edge.us.us.loopexit:                       ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us
  %i.bv = trunc nsw i64 %indvars.iv.next139 to i32
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader, %._crit_edge.us.us.loopexit
  %.us-phi.us.us = phi i32 [ %i.bv, %._crit_edge.us.us.loopexit ], [ %i.ab, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader ] ; 2 uses
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %.not.us.us.not = icmp eq i64 %i.m, %indvars.iv.next147
  br i1 %.not.us.us.not, label %._crit_edge52, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us
  %i.bw = load ptr, ptr %4, align 8, !tbaa !16, !noalias !47 ; 2 uses
  %i.bx = load i64, ptr %i.q, align 8, !tbaa !17, !noalias !47 ; 7 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader: ; preds = %.preheader.us.us
  %i.bz = add i32 %3, %.us-phi.us.us
  br label %.preheader42.us.us.backedge

.preheader42.us.us.backedge:                      ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader, %..loopexit_crit_edge.us.us.loopexit
  %.02450.us.us.be = phi i32 [ %i.dl, %..loopexit_crit_edge.us.us.loopexit ], [ %i.bz, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us.us.preheader ]
  br label %.preheader42.us.us, !llvm.loop !28

.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.preheader: ; preds = %.preheader.us.us
  %i.ca = ptrtoaddr ptr %i.bw to i64
  %i.cb = sext i32 %.us-phi.us.us to i64          ; 2 uses
  %min.iters.check203 = icmp ugt i64 %i.bx, 5
  %or.cond227.not234 = select i1 %min.iters.check203, i1 %ident.check195.not, i1 false
  %invariant.op253.reass = add i64 %i.ca, %invariant.op255.a
  %n.vec199 = and i64 %i.bx, 9223372036854775804  ; 3 uses
  %cmp.n206 = icmp eq i64 %i.bx, %n.vec199
  %xtraiter243.a = and i64 %i.bx, 3               ; 2 uses
  %lcmp.mod244.not.a = icmp eq i64 %xtraiter243.a, 0
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us

.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us
  %indvar200 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.preheader ], [ %indvar.next194, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us ] ; 2 uses
  %indvars.iv142 = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.preheader ], [ %indvars.iv.next143, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us ] ; 2 uses
  %.046.us.us.us = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.preheader ], [ %i.dk, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us ]
  %5 = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %indvars.iv142 ; 6 uses
  br i1 %or.cond227.not234, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.a, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.a: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us
  %i.cc = add i64 %indvar200, %i.cb
  %i.cd = shl i64 %i.cc, 3
  %.reass254 = add i64 %i.cd, %invariant.op253.reass
  %diff.check195 = icmp ult i64 %.reass254, 31
  br i1 %diff.check195, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader, label %vector.body200

vector.body200:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.a, %vector.body200
  %index201 = phi i64 [ %index.next204, %vector.body200 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.a ] ; 3 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %5, i64 %index201 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index201 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load202 = load <2 x double>, ptr %i.cf, align 8, !tbaa !42
  %wide.load203 = load <2 x double>, ptr %i.cg, align 8, !tbaa !42
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store <2 x double> %wide.load202, ptr %i.ce, align 8, !tbaa !42
  store <2 x double> %wide.load203, ptr %i.ch, align 8, !tbaa !42
  %index.next204 = add nuw i64 %index201, 4       ; 2 uses
  %i.ci = icmp eq i64 %index.next204, %n.vec199
  br i1 %i.ci, label %middle.block205, label %vector.body200, !llvm.loop !29

middle.block205:                                  ; preds = %vector.body200
  br i1 %cmp.n206, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.a, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us, %middle.block205
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.a ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us ], [ %n.vec199, %middle.block205 ] ; 3 uses
  br i1 %lcmp.mod244.not.a, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.prol = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader ] ; 3 uses
  %prol.iter245.a = phi i64 [ %prol.iter245.next.a, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader ]
  %i.cj = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.prol, %i.x
  %i.ck = getelementptr inbounds [8 x i8], ptr %5, i64 %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.prol
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !42
  store double %i.cm, ptr %i.ck, align 8, !tbaa !42
  %i.cn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.prol, 1 ; 2 uses
  %prol.iter245.next.a = add i64 %prol.iter245.a, 1 ; 2 uses
  %prol.iter245.cmp.not.a = icmp eq i64 %prol.iter245.next.a, %xtraiter243.a
  br i1 %prol.iter245.cmp.not.a, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol, !llvm.loop !30

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol ]
  %i.co = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.ph, %i.bx
  %i.cp = icmp ugt i64 %i.co, -4
  br i1 %i.cp, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us = phi i64 [ %i.dj, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us ], [ %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol.loopexit ] ; 6 uses
  %i.cq = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us, %i.x
  %i.cr = getelementptr inbounds [8 x i8], ptr %5, i64 %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !42
  store double %i.ct, ptr %i.cr, align 8, !tbaa !42
  %i.cu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us, 1 ; 2 uses
  %i.cv = mul nsw i64 %i.cu, %i.x
  %i.cw = getelementptr inbounds [8 x i8], ptr %5, i64 %i.cv
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cu
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !42
  store double %i.cy, ptr %i.cw, align 8, !tbaa !42
  %i.cz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us, 2 ; 2 uses
  %i.da = mul nsw i64 %i.cz, %i.x
  %i.db = getelementptr inbounds [8 x i8], ptr %5, i64 %i.da
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cz
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !42
  store double %i.dd, ptr %i.db, align 8, !tbaa !42
  %i.de = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us, 3 ; 2 uses
  %i.df = mul nsw i64 %i.de, %i.x
  %i.dg = getelementptr inbounds [8 x i8], ptr %5, i64 %i.df
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.de
  %i.di = load double, ptr %i.dh, align 8, !tbaa !42
  store double %i.di, ptr %i.dg, align 8, !tbaa !42
  %i.dj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i28.us.us.us.3 = icmp eq i64 %i.dj, %i.bx
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i28.us.us.us.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us, !llvm.loop !31

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us, %middle.block205
  %indvars.iv.next143 = add nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.dk = add nuw nsw i32 %.046.us.us.us, 1       ; 2 uses
  %exitcond145.not = icmp eq i32 %i.dk, %3
  %indvar.next194 = add i64 %indvar200, 1
  br i1 %exitcond145.not, label %..loopexit_crit_edge.us.us.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us, !llvm.loop !32

..loopexit_crit_edge.us.us.loopexit:              ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us
  %i.dl = trunc nsw i64 %indvars.iv.next143 to i32
  br label %.preheader42.us.us.backedge

.preheader42.lr.ph.split.us.split:                ; preds = %.preheader42.lr.ph.split.us
  br i1 %i.y, label %.preheader42.us.us90.preheader, label %._crit_edge52

.preheader42.us.us90.preheader:                   ; preds = %.preheader42.lr.ph.split.us.split
  %min.iters.check179 = icmp ult i64 %i.w, 10
  %ident.check172 = icmp ne i64 %i.x, 1
  %ident.check173 = icmp ne i64 %i.m, 1
  %i.dm = or i1 %ident.check172, %ident.check173
  %n.vec181 = and i64 %i.w, 9223372036854775804   ; 3 uses
  %cmp.n188 = icmp eq i64 %i.w, %n.vec181
  %xtraiter237 = and i64 %i.w, 3                  ; 2 uses
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  br label %.preheader42.us.us90

.preheader42.us.us90:                             ; preds = %.preheader42.us.us90.preheader, %._crit_edge.split.us.us.us101
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %._crit_edge.split.us.us.us101 ], [ 0, %.preheader42.us.us90.preheader ] ; 3 uses
  %.02450.us.us92 = phi i32 [ %i.dt, %._crit_edge.split.us.us.us101 ], [ 0, %.preheader42.us.us90.preheader ] ; 3 uses
  %i.dn = shl i64 %indvars.iv134, 3
  %i.do = add i64 %i.dn, %i.t
  %i.dp = sub i64 %i.v, %i.do
  %i.dq = sext i32 %.02450.us.us92 to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv134 ; 6 uses
  %i.ds = sext i32 %.02450.us.us92 to i64
  %i.dt = add i32 %2, %.02450.us.us92             ; 2 uses
  %invariant.op249 = add i64 %i.dp, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us94

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us94:  ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us100, %.preheader42.us.us90
  %indvar175 = phi i64 [ %indvar.next176, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us100 ], [ 0, %.preheader42.us.us90 ] ; 2 uses
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us100 ], [ %i.ds, %.preheader42.us.us90 ] ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %i.u, i64 %indvars.iv130 ; 6 uses
  %brmerge262 = select i1 %min.iters.check179, i1 true, i1 %i.dm
  br i1 %brmerge262, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.preheader, label %vector.scevcheck171

vector.scevcheck171:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us94
  %i.dv = add i64 %indvar175, %i.dq
  %i.dw = shl i64 %i.dv, 3
  %.reass250 = add i64 %i.dw, %invariant.op249
  %diff.check177 = icmp ult i64 %.reass250, 31
  br i1 %diff.check177, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.preheader, label %vector.body182

vector.body182:                                   ; preds = %vector.scevcheck171, %vector.body182
  %index183 = phi i64 [ %index.next186, %vector.body182 ], [ 0, %vector.scevcheck171 ] ; 3 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.du, i64 %index183 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %index183 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %wide.load184 = load <2 x double>, ptr %i.dy, align 8, !tbaa !42
  %wide.load185 = load <2 x double>, ptr %i.dz, align 8, !tbaa !42
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store <2 x double> %wide.load184, ptr %i.dx, align 8, !tbaa !42
  store <2 x double> %wide.load185, ptr %i.ea, align 8, !tbaa !42
  %index.next186 = add nuw i64 %index183, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next186, %n.vec181
  br i1 %i.eb, label %middle.block187, label %vector.body182, !llvm.loop !33

middle.block187:                                  ; preds = %vector.body182
  br i1 %cmp.n188, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us100, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.preheader:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us94, %vector.scevcheck171, %middle.block187
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98.ph = phi i64 [ 0, %vector.scevcheck171 ], [ %n.vec181, %middle.block187 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us94 ] ; 3 uses
  br i1 %lcmp.mod238.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98.prol = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.preheader ] ; 3 uses
  %prol.iter239 = phi i64 [ %prol.iter239.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.preheader ]
  %i.ec = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98.prol, %i.x
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.ec
  %i.ee = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98.prol, %i.m
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.ee
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !42
  store double %i.eg, ptr %i.ed, align 8, !tbaa !42
  %i.eh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98.prol, 1 ; 2 uses
  %prol.iter239.next = add i64 %prol.iter239, 1   ; 2 uses
  %prol.iter239.cmp.not = icmp eq i64 %prol.iter239.next, %xtraiter237
  br i1 %prol.iter239.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol, !llvm.loop !34

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.preheader ], [ %i.eh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol ]
  %i.ei = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98.ph, %i.w
  %i.ej = icmp ugt i64 %i.ei, -4
  br i1 %i.ej, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us100, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98 = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97 ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol.loopexit ] ; 6 uses
  %i.ek = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98, %i.x
  %i.el = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.ek
  %i.em = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98, %i.m
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.em
  %i.eo = load double, ptr %i.en, align 8, !tbaa !42
  store double %i.eo, ptr %i.el, align 8, !tbaa !42
  %i.ep = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98, 1 ; 2 uses
  %i.eq = mul nsw i64 %i.ep, %i.x
  %i.er = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.eq
  %i.es = mul nuw nsw i64 %i.ep, %i.m
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !42
  store double %i.eu, ptr %i.er, align 8, !tbaa !42
  %i.ev = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98, 2 ; 2 uses
  %i.ew = mul nsw i64 %i.ev, %i.x
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.ew
  %i.ey = mul nuw nsw i64 %i.ev, %i.m
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !42
  store double %i.fa, ptr %i.ex, align 8, !tbaa !42
  %i.fb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98, 3 ; 2 uses
  %i.fc = mul nsw i64 %i.fb, %i.x
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.fc
  %i.fe = mul nuw nsw i64 %i.fb, %i.m
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !42
  store double %i.fg, ptr %i.fd, align 8, !tbaa !42
  %i.fh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us98, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.us.us99.3 = icmp eq i64 %i.fh, %i.w
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.us.us99.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us100, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97, !llvm.loop !35

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us100: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us97, %middle.block187
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next131 to i32
  %exitcond133.not = icmp eq i32 %i.dt, %lftr.wideiv
  %indvar.next176 = add i64 %indvar175, 1
  br i1 %exitcond133.not, label %._crit_edge.split.us.us.us101, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us94, !llvm.loop !25

._crit_edge.split.us.us.us101:                    ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us100
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next135, %i.m
  br i1 %exitcond137.not, label %._crit_edge52, label %.preheader42.us.us90, !llvm.loop !28

.preheader42.lr.ph.split:                         ; preds = %.preheader42.lr.ph
  %.not.us66.not167 = icmp eq i64 %i.m, 1
  %or.cond232 = or i1 %i.p, %.not.us66.not167
  br i1 %or.cond232, label %._crit_edge52, label %.preheader.us67.preheader

.preheader.us67.preheader:                        ; preds = %.preheader42.lr.ph.split
  %i.fi = load ptr, ptr %4, align 8, !tbaa !16, !noalias !47 ; 2 uses
  %i.fj = load i64, ptr %i.q, align 8, !tbaa !17, !noalias !47 ; 7 uses
  %i.fk = load i64, ptr %i.r, align 8, !tbaa !13  ; 6 uses
  %i.fl = icmp sgt i64 %i.fj, 0
  %i.fm = ptrtoaddr ptr %i.fi to i64
  %i.fn = sub i64 %i.fm, %i.a
  %min.iters.check = icmp ugt i64 %i.fj, 5
  %ident.check.not = icmp eq i64 %i.fk, 1
  %or.cond230.not233 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %invariant.op = add i64 %i.fn, -1
  %n.vec = and i64 %i.fj, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.fj, %n.vec
  %xtraiter = and i64 %i.fj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.us67

.preheader.us67:                                  ; preds = %.preheader.us67.preheader, %..loopexit_crit_edge.us85
  %indvars.iv.next124169 = phi i64 [ %indvars.iv.next124, %..loopexit_crit_edge.us85 ], [ 1, %.preheader.us67.preheader ]
  %.02450.us65168 = phi i32 [ %.3.us89, %..loopexit_crit_edge.us85 ], [ 0, %.preheader.us67.preheader ] ; 2 uses
  br i1 %i.fl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us70.preheader

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us70.preheader: ; preds = %.preheader.us67
  %i.fo = add i32 %3, %.02450.us65168
  br label %..loopexit_crit_edge.us85

.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76.preheader: ; preds = %.preheader.us67
  %i.fp = sext i32 %.02450.us65168 to i64         ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76

.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us82
  %indvar = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76.preheader ], [ %indvar.next, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us82 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.fp, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76.preheader ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us82 ] ; 2 uses
  %.046.us.us77 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76.preheader ], [ %i.gy, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us82 ]
  %6 = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %indvars.iv ; 6 uses
  br i1 %or.cond230.not233, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76.a, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76.a: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76
  %i.fq = add i64 %indvar, %i.fp
  %i.fr = shl i64 %i.fq, 3
  %.reass = add i64 %i.fr, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76.a ] ; 3 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %6, i64 %index ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %wide.load = load <2 x double>, ptr %i.ft, align 8, !tbaa !42
  %wide.load170 = load <2 x double>, ptr %i.fu, align 8, !tbaa !42
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store <2 x double> %wide.load, ptr %i.fs, align 8, !tbaa !42
  store <2 x double> %wide.load170, ptr %i.fv, align 8, !tbaa !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fw = icmp eq i64 %index.next, %n.vec
  br i1 %i.fw, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us82, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.preheader:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76.a, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us80.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76.a ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us80.prol = phi i64 [ %i.gb, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i27.us.us80.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.preheader ]
  %i.fx = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us80.prol, %i.fk
  %i.fy = getelementptr inbounds [8 x i8], ptr %6, i64 %i.fx
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us80.prol
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !42
  store double %i.ga, ptr %i.fy, align 8, !tbaa !42
  %i.gb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us80.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol, !llvm.loop !37

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.preheader
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us80.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i27.us.us80.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.preheader ], [ %i.gb, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol ]
  %i.gc = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us80.ph, %i.fj
  %i.gd = icmp ugt i64 %i.gc, -4
  br i1 %i.gd, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us82, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us80 = phi i64 [ %i.gx, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79 ], [ %.05.i.i.i.i.i.i.i.i.i.i27.us.us80.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol.loopexit ] ; 6 uses
  %i.ge = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us80, %i.fk
  %i.gf = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ge
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us80
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !42
  store double %i.gh, ptr %i.gf, align 8, !tbaa !42
  %i.gi = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us80, 1 ; 2 uses
  %i.gj = mul nsw i64 %i.gi, %i.fk
  %i.gk = getelementptr inbounds [8 x i8], ptr %6, i64 %i.gj
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.gi
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !42
  store double %i.gm, ptr %i.gk, align 8, !tbaa !42
  %i.gn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us80, 2 ; 2 uses
  %i.go = mul nsw i64 %i.gn, %i.fk
  %i.gp = getelementptr inbounds [8 x i8], ptr %6, i64 %i.go
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.gn
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !42
  store double %i.gr, ptr %i.gp, align 8, !tbaa !42
  %i.gs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us80, 3 ; 2 uses
  %i.gt = mul nsw i64 %i.gs, %i.fk
  %i.gu = getelementptr inbounds [8 x i8], ptr %6, i64 %i.gt
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.gs
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !42
  store double %i.gw, ptr %i.gu, align 8, !tbaa !42
  %i.gx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us80, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i28.us.us81.3 = icmp eq i64 %i.gx, %i.fj
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i28.us.us81.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us82, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79, !llvm.loop !38

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us82: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us79, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.gy = add nuw nsw i32 %.046.us.us77, 1        ; 2 uses
  %exitcond.not = icmp eq i32 %i.gy, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %..loopexit_crit_edge.us85.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us76, !llvm.loop !32

..loopexit_crit_edge.us85.loopexit:               ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us82
  %i.gz = trunc nsw i64 %indvars.iv.next to i32
  br label %..loopexit_crit_edge.us85

..loopexit_crit_edge.us85:                        ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us70.preheader, %..loopexit_crit_edge.us85.loopexit
  %.3.us89 = phi i32 [ %i.fo, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us70.preheader ], [ %i.gz, %..loopexit_crit_edge.us85.loopexit ]
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv.next124169, 1 ; 2 uses
  %.not.us66.not = icmp eq i64 %i.m, %indvars.iv.next124
  br i1 %.not.us66.not, label %._crit_edge52, label %.preheader.us67, !llvm.loop !28

._crit_edge52:                                    ; preds = %..loopexit_crit_edge.us85, %._crit_edge.split.us.us.us101, %._crit_edge.us.us, %.preheader42.lr.ph.split, %.preheader42.lr.ph.split.us.split, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
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
!22 = distinct !{!22, !43, !44, !45}
!23 = distinct !{!23, !46}
!24 = distinct !{!24, !43, !44}
!25 = distinct !{!25, !43}
!26 = distinct !{!26, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!27 = distinct !{!27, !26, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!28 = distinct !{!28, !43}
!29 = distinct !{!29, !43, !44, !45}
!30 = distinct !{!30, !46}
!31 = distinct !{!31, !43, !44}
!32 = distinct !{!32, !43}
!33 = distinct !{!33, !43, !44, !45}
!34 = distinct !{!34, !46}
!35 = distinct !{!35, !43, !44}
!36 = distinct !{!36, !43, !44, !45}
!37 = distinct !{!37, !46}
!38 = distinct !{!38, !43, !44}
!39 = !{!19}
!40 = !{!21}
!41 = !{!"double", !5, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!27}
end_hunk_0
