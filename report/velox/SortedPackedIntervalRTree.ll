inline.NumInlined: 379
inline.NumDeleted: 159
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<const geos::index::intervalrtree::IntervalRTreeNode *, std::allocator<const geos::index::intervalrtree::IntervalRTreeNode *>>::_Vector_impl" }
%"struct.std::_Vector_base<const geos::index::intervalrtree::IntervalRTreeNode *, std::allocator<const geos::index::intervalrtree::IntervalRTreeNode *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const geos::index::intervalrtree::IntervalRTreeNode *, std::allocator<const geos::index::intervalrtree::IntervalRTreeNode *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const geos::index::intervalrtree::IntervalRTreeNode *, std::allocator<const geos::index::intervalrtree::IntervalRTreeNode *>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE17_M_realloc_insertIJRPKNS2_17IntervalRTreeNodeESA_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@_ZTVN4geos5index13intervalrtree23IntervalRTreeBranchNodeE = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree4initEv(ptr noundef nonnull align 8 dereferenceable(60) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef ptr @_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree9buildTreeEv(ptr noundef nonnull align 8 dereferenceable(60) %0)
  store ptr %i.g, ptr %i.a, align 8, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree9buildTreeEv(ptr noundef nonnull align 8 dereferenceable(60) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.5", align 8     ; 11 uses
  %2 = alloca %"class.std::vector.5", align 8     ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 5
  %i.i = add nsw i64 %i.h, -1                     ; 4 uses
  %i.j = icmp ugt i64 %i.i, 230584300921369395
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 40
  %i.r = icmp ult i64 %i.q, %i.i
  br i1 %i.r, label %_ZNSt12_Vector_baseIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26   ; 3 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.o
  %i.w = mul nuw nsw i64 %i.i, 40
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #12 ; 4 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.m, %i.t
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.x, %_ZNSt12_Vector_baseIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_M_allocateEm.exit.i ] ; 4 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %i.m, %_ZNSt12_Vector_baseIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_M_allocateEm.exit.i ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !alias.scope !32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos5index13intervalrtree23IntervalRTreeBranchNodeE, i64 16), ptr %.012.i.i.i.i.i, align 8, !tbaa !33, !alias.scope !27, !noalias !30
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !alias.scope !32
  %i.ac = load ptr, ptr %.0911.i.i.i.i.i, align 8, !tbaa !33, !alias.scope !30, !noalias !27
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !32
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i) #13, !noalias !27, !inline_history !35
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 40 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %i.t
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !36

_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !25
  br label %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.loopexit.i, %_ZNSt12_Vector_baseIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_M_allocateEm.exit.i
  %i.ag = phi ptr [ %.pre.i, %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.loopexit.i ], [ %i.m, %_ZNSt12_Vector_baseIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.not.i8.i = icmp eq ptr %i.ag, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ag) #14
  br label %_ZNSt12_Vector_baseIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.s, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ai, ptr %i.k, align 8, !tbaa !24
  %.pre = load ptr, ptr %0, align 8, !tbaa !21
  %.pre22 = load ptr, ptr %i.b, align 8, !tbaa !21
  br label %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.aj = phi ptr [ %i.c, %bb.c ], [ %.pre22, %_ZNSt12_Vector_baseIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE13_M_deallocateEPS3_m.exit.i ] ; 7 uses
  %i.ak = phi ptr [ %i.d, %bb.c ], [ %.pre, %_ZNSt12_Vector_baseIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE13_M_deallocateEPS3_m.exit.i ] ; 14 uses
  %.not.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEEZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EvT_SD_T0_.exit", label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE7reserveEm.exit
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  %i.ao = ashr exact i64 %i.an, 5
  %i.ap = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ao, i1 true)
  %i.aq = shl nuw nsw i64 %i.ap, 1
  %i.ar = xor i64 %i.aq, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_T0_T1_"(ptr %i.ak, ptr %i.aj, i64 noundef %i.ar)
  %i.as = icmp sgt i64 %i.an, 512
  br i1 %i.as, label %.lr.ph.i.i.i.i, label %.preheader.i25.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e
  %i.at = getelementptr i8, ptr %i.ak, i64 8      ; 2 uses
  %i.au = getelementptr i8, ptr %i.ak, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %indvar = phi i64 [ %indvar.next, %bb.h ], [ 0, %.lr.ph.i.i.i.i ] ; 3 uses
  %.sroa.08.021.i.idx.i.i.i = phi i64 [ %.sroa.08.021.i.add.i.i.i, %bb.h ], [ 32, %.lr.ph.i.i.i.i ] ; 3 uses
  %.pn20.i.i.i.i = phi ptr [ %.sroa.08.021.i.ptr.i.i.i, %bb.h ], [ %i.ak, %.lr.ph.i.i.i.i ] ; 9 uses
  %.sroa.08.021.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sroa.08.021.i.idx.i.i.i ; 7 uses
  %i.aw = getelementptr i8, ptr %.pn20.i.i.i.i, i64 40 ; 2 uses
  %i.ax = load <2 x double>, ptr %i.aw, align 8, !tbaa !38 ; 3 uses
  %.val2.i.i.i.i.i = load double, ptr %i.at, align 8, !tbaa !40
  %.val3.i.i.i.i.i = load double, ptr %i.au, align 8, !tbaa !42
  %shift = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ax, %shift
  %i.ay = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.az = fadd double %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.ba = fcmp ogt double %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.preheader.i.i.i.i, label %bb.g

.lr.ph.i.i.i.i.i.preheader.i.i.i.i:               ; preds = %bb.f
  %.sroa.5.i.i.i.i.sroa.0.0.copyload = load <2 x double>, ptr %i.aw, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !43
  %i.bd = lshr exact i64 %.sroa.08.021.i.idx.i.i.i, 5 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i, i64 64
  %i.bf = and i64 %indvar, 1
  %lcmp.mod84.not.not = icmp eq i64 %i.bf, 0
  br i1 %lcmp.mod84.not.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.i.i
  %i.bg = getelementptr inbounds i8, ptr %.sroa.08.021.i.ptr.i.i.i, i64 -32
  %i.bh = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i, i64 40
  %i.bj = getelementptr inbounds i8, ptr %.sroa.08.021.i.ptr.i.i.i, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false)
  %i.bk = getelementptr inbounds i8, ptr %.sroa.08.021.i.ptr.i.i.i, i64 -8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i, i64 56
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !43
  %i.bn = add nsw i64 %i.bd, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.021.i.ptr.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.bo = icmp eq i64 %indvar, 0
  br i1 %i.bo, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.078.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.bp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -24
  %i.bq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false)
  %i.br = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !43
  %i.bt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -8
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !43
  %i.bu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -64
  %i.bv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -64
  %i.bw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -56
  %i.bx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false)
  %i.by = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !43
  %i.ca = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -40
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !43
  %i.cb = add nsw i64 %.010.i.i.i.i.i.i.i.i.i, -2
  %i.cc = icmp sgt i64 %.010.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !llvm.loop !45

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  store <2 x double> %.sroa.5.i.i.i.i.sroa.0.0.copyload, ptr %i.at, align 8
  store ptr %i.bc, ptr %i.av, align 8, !tbaa !43
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cd = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !43
  %i.cf = getelementptr i8, ptr %.pn20.i.i.i.i, i64 8 ; 2 uses
  %.val3.i11.i.i.i.i.i = load double, ptr %i.cf, align 8, !tbaa !40
  %i.cg = getelementptr i8, ptr %.pn20.i.i.i.i, i64 16
  %.val4.i12.i.i.i.i.i = load double, ptr %i.cg, align 8, !tbaa !42
  %i.ch = fadd double %.val3.i11.i.i.i.i.i, %.val4.i12.i.i.i.i.i
  %i.ci = fcmp ogt double %i.ay, %i.ch
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i9, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i9:                                ; preds = %bb.g, %.lr.ph.i.i.i.i.i9
  %i.cj = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i9 ], [ %i.cf, %bb.g ]
  %.sroa.08.013.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i9 ], [ %.sroa.08.021.i.ptr.i.i.i, %bb.g ] ; 6 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.013.i.i.i.i.i, i64 -32 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false)
  %i.cl = getelementptr inbounds i8, ptr %.sroa.08.013.i.i.i.i.i, i64 -8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !43
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i.i, i64 24
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !43
  %i.co = getelementptr i8, ptr %.sroa.08.013.i.i.i.i.i, i64 -56 ; 2 uses
  %.val3.i.i.i.i.i.i = load double, ptr %i.co, align 8, !tbaa !40
  %i.cp = getelementptr i8, ptr %.sroa.08.013.i.i.i.i.i, i64 -48
  %.val4.i.i.i.i.i.i = load double, ptr %i.cp, align 8, !tbaa !42
  %i.cq = fadd double %.val3.i.i.i.i.i.i, %.val4.i.i.i.i.i.i
  %i.cr = fcmp ogt double %i.ay, %i.cq
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i9, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !46

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i9, %bb.g
  %.sroa.08.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.08.021.i.ptr.i.i.i, %bb.g ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i9 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i.i.i, i64 8
  store <2 x double> %i.ax, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i.i.i, i64 24
  store ptr %i.ce, ptr %i.ct, align 8, !tbaa !43
  br label %bb.h

bb.h:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_T0_.exit.i.i.i.i", %.loopexit.i.i.i.i
  %.sroa.08.021.i.add.i.i.i = add nuw nsw i64 %.sroa.08.021.i.idx.i.i.i, 32 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.08.021.i.add.i.i.i, 512
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_T0_.exit.i.i.i", label %bb.f, !llvm.loop !47

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_T0_.exit.i.i.i": ; preds = %bb.h
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ak, i64 512 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.cu, %i.aj
  br i1 %.not6.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEEZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EvT_SD_T0_.exit", label %.lr.ph.i12.i.i.i

.lr.ph.i12.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_T0_.exit.i15.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.dp, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_T0_.exit.i15.i.i.i" ], [ %i.cu, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_T0_.exit.i.i.i" ] ; 7 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8
  %i.cw = load <2 x double>, ptr %i.cv, align 8   ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !43
  %shift74 = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop75 = fadd <2 x double> %i.cw, %shift74
  %i.cz = extractelement <2 x double> %foldExtExtBinop75, i64 0 ; 2 uses
  %i.da = getelementptr i8, ptr %.sroa.0.07.i.i.i.i, i64 -24 ; 2 uses
  %.val3.i11.i.i13.i.i.i = load double, ptr %i.da, align 8, !tbaa !40
  %i.db = getelementptr i8, ptr %.sroa.0.07.i.i.i.i, i64 -16
  %.val4.i12.i.i14.i.i.i = load double, ptr %i.db, align 8, !tbaa !42
  %i.dc = fadd double %.val3.i11.i.i13.i.i.i, %.val4.i12.i.i14.i.i.i
  %i.dd = fcmp ogt double %i.cz, %i.dc
  br i1 %i.dd, label %.lr.ph.i.i19.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_T0_.exit.i15.i.i.i"

.lr.ph.i.i19.i.i.i:                               ; preds = %.lr.ph.i12.i.i.i, %.lr.ph.i.i19.i.i.i
  %i.de = phi ptr [ %i.dj, %.lr.ph.i.i19.i.i.i ], [ %i.da, %.lr.ph.i12.i.i.i ]
  %.sroa.08.013.i.i20.i.i.i = phi ptr [ %.sroa.0.0.i.i21.i.i.i, %.lr.ph.i.i19.i.i.i ], [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ] ; 6 uses
  %.sroa.0.0.i.i21.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.013.i.i20.i.i.i, i64 -32 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i20.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false)
  %i.dg = getelementptr inbounds i8, ptr %.sroa.08.013.i.i20.i.i.i, i64 -8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !43
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i20.i.i.i, i64 24
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !43
  %i.dj = getelementptr i8, ptr %.sroa.08.013.i.i20.i.i.i, i64 -56 ; 2 uses
  %.val3.i.i.i22.i.i.i = load double, ptr %i.dj, align 8, !tbaa !40
  %i.dk = getelementptr i8, ptr %.sroa.08.013.i.i20.i.i.i, i64 -48
  %.val4.i.i.i23.i.i.i = load double, ptr %i.dk, align 8, !tbaa !42
  %i.dl = fadd double %.val3.i.i.i22.i.i.i, %.val4.i.i.i23.i.i.i
  %i.dm = fcmp ogt double %i.cz, %i.dl
  br i1 %i.dm, label %.lr.ph.i.i19.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_T0_.exit.i15.i.i.i", !llvm.loop !46

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_T0_.exit.i15.i.i.i": ; preds = %.lr.ph.i.i19.i.i.i, %.lr.ph.i12.i.i.i
  %.sroa.08.0.lcssa.i.i16.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ], [ %.sroa.0.0.i.i21.i.i.i, %.lr.ph.i.i19.i.i.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i16.i.i.i, i64 8
  store <2 x double> %i.cw, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i16.i.i.i, i64 24
  store ptr %i.cy, ptr %i.do, align 8, !tbaa !43
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 32 ; 2 uses
  %.not.i18.i.i.i = icmp eq ptr %i.dp, %i.aj
  br i1 %.not.i18.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEEZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EvT_SD_T0_.exit", label %.lr.ph.i12.i.i.i, !llvm.loop !48

.preheader.i25.i.i.i:                             ; preds = %bb.e
  %.sroa.08.018.i26.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %.not19.i27.i.i.i = icmp eq ptr %.sroa.08.018.i26.i.i.i, %i.aj
  br i1 %.not19.i27.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEEZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EvT_SD_T0_.exit", label %.lr.ph.i28.i.i.i

.lr.ph.i28.i.i.i:                                 ; preds = %.preheader.i25.i.i.i
  %i.dq = getelementptr i8, ptr %i.ak, i64 8      ; 2 uses
  %i.dr = getelementptr i8, ptr %i.ak, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph.i28.i.i.i
  %.sroa.08.021.i29.i.i.i = phi ptr [ %.sroa.08.018.i26.i.i.i, %.lr.ph.i28.i.i.i ], [ %.sroa.08.0.i40.i.i.i, %bb.l ] ; 9 uses
  %.pn20.i30.i.i.i = phi ptr [ %i.ak, %.lr.ph.i28.i.i.i ], [ %.sroa.08.021.i29.i.i.i, %bb.l ] ; 9 uses
  %i.dt = getelementptr i8, ptr %.pn20.i30.i.i.i, i64 40 ; 2 uses
  %i.du = load <2 x double>, ptr %i.dt, align 8, !tbaa !38 ; 3 uses
  %.val2.i.i33.i.i.i = load double, ptr %i.dq, align 8, !tbaa !40
  %.val3.i.i34.i.i.i = load double, ptr %i.dr, align 8, !tbaa !42
  %shift77 = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop78 = fadd <2 x double> %i.du, %shift77
  %i.dv = extractelement <2 x double> %foldExtExtBinop78, i64 0 ; 3 uses
  %i.dw = fadd double %.val2.i.i33.i.i.i, %.val3.i.i34.i.i.i
  %i.dx = fcmp ogt double %i.dv, %i.dw
  br i1 %i.dx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.5.i24.i.i.i.sroa.0.0.copyload = load <2 x double>, ptr %i.dt, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %.pn20.i30.i.i.i, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !43
  %i.ea = ptrtoint ptr %.sroa.08.021.i29.i.i.i to i64
  %i.eb = sub i64 %i.ea, %i.am                    ; 3 uses
  %i.ec = ashr exact i64 %i.eb, 5                 ; 3 uses
  %i.ed = icmp sgt i64 %i.ec, 0
  br i1 %i.ed, label %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i, label %.loopexit.i47.i.i.i

.lr.ph.i.i.i.i.i.preheader.i48.i.i.i:             ; preds = %bb.j
  %i.ee = getelementptr inbounds nuw i8, ptr %.pn20.i30.i.i.i, i64 64
  %i.ef = and i64 %i.eb, 32
  %lcmp.mod.not = icmp eq i64 %i.ef, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i49.i.i.i.prol

.lr.ph.i.i.i.i.i.i49.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i
  %i.eg = getelementptr inbounds i8, ptr %.sroa.08.021.i29.i.i.i, i64 -32
  %i.eh = getelementptr inbounds nuw i8, ptr %.pn20.i30.i.i.i, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %.pn20.i30.i.i.i, i64 40
  %i.ej = getelementptr inbounds i8, ptr %.sroa.08.021.i29.i.i.i, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i64 16, i1 false)
  %i.ek = getelementptr inbounds i8, ptr %.sroa.08.021.i29.i.i.i, i64 -8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !43
  %i.em = getelementptr inbounds nuw i8, ptr %.pn20.i30.i.i.i, i64 56
  store ptr %i.el, ptr %i.em, align 8, !tbaa !43
  %i.en = add nsw i64 %i.ec, -1
  br label %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i49.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i
  %.010.i.i.i.i.i.i50.i.i.i.unr = phi i64 [ %i.ec, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ], [ %i.en, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ]
  %.069.i.i.i.i.i.i51.i.i.i.unr = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ], [ %i.eh, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ]
  %.078.i.i.i.i.i.i52.i.i.i.unr = phi ptr [ %.sroa.08.021.i29.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ], [ %i.eg, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ]
  %i.eo = icmp eq i64 %i.eb, 32
  br i1 %i.eo, label %.loopexit.i47.i.i.i, label %.lr.ph.i.i.i.i.i.i49.i.i.i

.lr.ph.i.i.i.i.i.i49.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i49.i.i.i
  %.010.i.i.i.i.i.i50.i.i.i = phi i64 [ %i.fb, %.lr.ph.i.i.i.i.i.i49.i.i.i ], [ %.010.i.i.i.i.i.i50.i.i.i.unr, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i51.i.i.i = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i.i49.i.i.i ], [ %.069.i.i.i.i.i.i51.i.i.i.unr, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit ] ; 5 uses
  %.078.i.i.i.i.i.i52.i.i.i = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i.i49.i.i.i ], [ %.078.i.i.i.i.i.i52.i.i.i.unr, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit ] ; 5 uses
  %i.ep = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -24
  %i.eq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i64 16, i1 false)
  %i.er = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !43
  %i.et = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -8
  store ptr %i.es, ptr %i.et, align 8, !tbaa !43
  %i.eu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -64
  %i.ev = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -64
  %i.ew = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -56
  %i.ex = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %i.ex, i64 16, i1 false)
  %i.ey = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -40
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !43
  %i.fa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -40
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !43
  %i.fb = add nsw i64 %.010.i.i.i.i.i.i50.i.i.i, -2
  %i.fc = icmp sgt i64 %.010.i.i.i.i.i.i50.i.i.i, 2
  br i1 %i.fc, label %.lr.ph.i.i.i.i.i.i49.i.i.i, label %.loopexit.i47.i.i.i, !llvm.loop !45

.loopexit.i47.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i49.i.i.i, %bb.j
  store <2 x double> %.sroa.5.i24.i.i.i.sroa.0.0.copyload, ptr %i.dq, align 8
  store ptr %i.dz, ptr %i.ds, align 8, !tbaa !43
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.pn20.i30.i.i.i, i64 56
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !43
  %i.ff = getelementptr i8, ptr %.pn20.i30.i.i.i, i64 8 ; 2 uses
  %.val3.i11.i.i35.i.i.i = load double, ptr %i.ff, align 8, !tbaa !40
  %i.fg = getelementptr i8, ptr %.pn20.i30.i.i.i, i64 16
  %.val4.i12.i.i36.i.i.i = load double, ptr %i.fg, align 8, !tbaa !42
  %i.fh = fadd double %.val3.i11.i.i35.i.i.i, %.val4.i12.i.i36.i.i.i
  %i.fi = fcmp ogt double %i.dv, %i.fh
  br i1 %i.fi, label %.lr.ph.i.i42.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_T0_.exit.i37.i.i.i"

.lr.ph.i.i42.i.i.i:                               ; preds = %bb.k, %.lr.ph.i.i42.i.i.i
  %i.fj = phi ptr [ %i.fo, %.lr.ph.i.i42.i.i.i ], [ %i.ff, %bb.k ]
  %.sroa.08.013.i.i43.i.i.i = phi ptr [ %.sroa.0.0.i.i44.i.i.i, %.lr.ph.i.i42.i.i.i ], [ %.sroa.08.021.i29.i.i.i, %bb.k ] ; 6 uses
  %.sroa.0.0.i.i44.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.013.i.i43.i.i.i, i64 -32 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i43.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i64 16, i1 false)
  %i.fl = getelementptr inbounds i8, ptr %.sroa.08.013.i.i43.i.i.i, i64 -8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !43
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i43.i.i.i, i64 24
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !43
  %i.fo = getelementptr i8, ptr %.sroa.08.013.i.i43.i.i.i, i64 -56 ; 2 uses
  %.val3.i.i.i45.i.i.i = load double, ptr %i.fo, align 8, !tbaa !40
  %i.fp = getelementptr i8, ptr %.sroa.08.013.i.i43.i.i.i, i64 -48
  %.val4.i.i.i46.i.i.i = load double, ptr %i.fp, align 8, !tbaa !42
  %i.fq = fadd double %.val3.i.i.i45.i.i.i, %.val4.i.i.i46.i.i.i
  %i.fr = fcmp ogt double %i.dv, %i.fq
  br i1 %i.fr, label %.lr.ph.i.i42.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_T0_.exit.i37.i.i.i", !llvm.loop !46

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_T0_.exit.i37.i.i.i": ; preds = %.lr.ph.i.i42.i.i.i, %bb.k
  %.sroa.08.0.lcssa.i.i38.i.i.i = phi ptr [ %.sroa.08.021.i29.i.i.i, %bb.k ], [ %.sroa.0.0.i.i44.i.i.i, %.lr.ph.i.i42.i.i.i ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i38.i.i.i, i64 8
  store <2 x double> %i.du, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i38.i.i.i, i64 24
  store ptr %i.fe, ptr %i.ft, align 8, !tbaa !43
  br label %bb.l

bb.l:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_T0_.exit.i37.i.i.i", %.loopexit.i47.i.i.i
  %.sroa.08.0.i40.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.021.i29.i.i.i, i64 32 ; 2 uses
  %.not.i41.i.i.i = icmp eq ptr %.sroa.08.0.i40.i.i.i, %i.aj
  br i1 %.not.i41.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEEZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EvT_SD_T0_.exit", label %bb.i, !llvm.loop !47

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEEZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EvT_SD_T0_.exit": ; preds = %bb.l, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_T0_.exit.i15.i.i.i", %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE7reserveEm.exit, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_T0_.exit.i.i.i", %.preheader.i25.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.fu = load ptr, ptr %i.b, align 8, !tbaa !22  ; 3 uses
  %i.fv = load ptr, ptr %0, align 8, !tbaa !23    ; 7 uses
  %i.fw = ptrtoint ptr %i.fu to i64               ; 2 uses
  %i.fx = ptrtoint ptr %i.fv to i64               ; 2 uses
  %i.fy = sub i64 %i.fw, %i.fx                    ; 2 uses
  %i.fz = ashr exact i64 %i.fy, 5                 ; 3 uses
  %i.ga = icmp ugt i64 %i.fz, 1152921504606846975
  br i1 %i.ga, label %.noexc, label %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEEZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EvT_SD_T0_.exit"
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #11
  unreachable

_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEEZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EvT_SD_T0_.exit"
  %.not.i.i.i.i10 = icmp eq ptr %i.fu, %i.fv
  br i1 %.not.i.i.i.i10, label %bb.m, label %.noexc11

.noexc11:                                         ; preds = %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.gb = ashr exact i64 %i.fy, 2
  %i.gc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gb) #12 ; 12 uses
  store ptr %i.gc, ptr %1, align 8, !tbaa !49
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.fz ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !53
  store ptr null, ptr %i.gc, align 8, !tbaa !54
  %i.gf = getelementptr i8, ptr %i.gc, i64 8      ; 3 uses
  %i.gg = add nsw i64 %i.fz, -1                   ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %iter.check, label %_ZSt6fill_nIPPKN4geos5index13intervalrtree17IntervalRTreeNodeEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPKN4geos5index13intervalrtree17IntervalRTreeNodeEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc11
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.gg, 3  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gf, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !54
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.idx.i.i.i.i.i.i.i
  br label %iter.check

bb.m:                                             ; preds = %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS1_IPPKNS4_17IntervalRTreeNodeES7_ISD_SaISD_EEEEZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_1ET0_T_SL_SK_T1_.exit"

iter.check:                                       ; preds = %_ZSt6fill_nIPPKN4geos5index13intervalrtree17IntervalRTreeNodeEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc11
  %.promoted19.ph = phi ptr [ %i.gi, %_ZSt6fill_nIPPKN4geos5index13intervalrtree17IntervalRTreeNodeEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.gf, %.noexc11 ] ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store ptr %.promoted19.ph, ptr %i.gk, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.gl = add i64 %i.fw, -32
  %i.gm = sub i64 %i.gl, %i.fx                    ; 3 uses
  %i.gn = lshr i64 %i.gm, 5
  %i.go = add nuw nsw i64 %i.gn, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.gm, 96
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check57 = icmp ult i64 %i.gm, 480
  br i1 %min.iters.check57, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.go, 12
  %n.vec = and i64 %i.go, 1152921504606846960     ; 5 uses
  %i.gp = shl nuw nsw i64 %n.vec, 3
  %i.gq = getelementptr i8, ptr %i.gc, i64 %i.gp
  %i.gr = shl i64 %n.vec, 5
  %i.gs = getelementptr i8, ptr %i.fv, i64 %i.gr  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %i.fv, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 32, i64 64, i64 96> ; 4 uses
  %step.add70 = getelementptr i8, <4 x ptr> %vector.gep, i64 128
  %step.add.271 = getelementptr i8, <4 x ptr> %vector.gep, i64 256
  %step.add.372 = getelementptr i8, <4 x ptr> %vector.gep, i64 384
  %i.gt = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.gc, i64 %i.gt ; 4 uses
  %i.gu = getelementptr i8, ptr %next.gep, i64 32
  %i.gv = getelementptr i8, ptr %next.gep, i64 64
  %i.gw = getelementptr i8, ptr %next.gep, i64 96
  store <4 x ptr> %vector.gep, ptr %next.gep, align 8, !tbaa !54
  store <4 x ptr> %step.add70, ptr %i.gu, align 8, !tbaa !54
  store <4 x ptr> %step.add.271, ptr %i.gv, align 8, !tbaa !54
  store <4 x ptr> %step.add.372, ptr %i.gw, align 8, !tbaa !54
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 512
  %i.gx = icmp eq i64 %index.next, %n.vec
  br i1 %i.gx, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.go, %n.vec
  br i1 %cmp.n, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS1_IPPKNS4_17IntervalRTreeNodeES7_ISD_SaISD_EEEEZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_1ET0_T_SL_SK_T1_.exit", label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !59

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val58 = phi ptr [ %i.gs, %vec.epilog.iter.check ], [ %i.fv, %vector.main.loop.iter.check ]
  %n.vec60 = and i64 %i.go, 1152921504606846972   ; 4 uses
  %i.gy = shl nuw nsw i64 %n.vec60, 3
  %i.gz = getelementptr i8, ptr %i.gc, i64 %i.gy
  %i.ha = shl i64 %n.vec60, 5
  %i.hb = getelementptr i8, ptr %i.fv, i64 %i.ha
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index61 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next65, %vec.epilog.vector.body ] ; 2 uses
  %pointer.phi62 = phi ptr [ %bc.resume.val58, %vec.epilog.ph ], [ %ptr.ind66, %vec.epilog.vector.body ] ; 2 uses
  %vector.gep63 = getelementptr i8, ptr %pointer.phi62, <4 x i64> <i64 0, i64 32, i64 64, i64 96>
  %i.hc = shl i64 %index61, 3
  %next.gep64 = getelementptr i8, ptr %i.gc, i64 %i.hc
  store <4 x ptr> %vector.gep63, ptr %next.gep64, align 8, !tbaa !54
  %index.next65 = add nuw i64 %index61, 4         ; 2 uses
  %ptr.ind66 = getelementptr i8, ptr %pointer.phi62, i64 128
  %i.hd = icmp eq i64 %index.next65, %n.vec60
  br i1 %i.hd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !60

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n67 = icmp eq i64 %i.go, %n.vec60
  br i1 %cmp.n67, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS1_IPPKNS4_17IntervalRTreeNodeES7_ISD_SaISD_EEEEZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_1ET0_T_SL_SK_T1_.exit", label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.ph = phi ptr [ %i.gc, %iter.check ], [ %i.gq, %vec.epilog.iter.check ], [ %i.gz, %vec.epilog.middle.block ]
  %.sroa.03.07.i.ph = phi ptr [ %i.fv, %iter.check ], [ %i.gs, %vec.epilog.iter.check ], [ %i.hb, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.hf, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.03.07.i = phi ptr [ %i.he, %.lr.ph.i ], [ %.sroa.03.07.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store ptr %.sroa.03.07.i, ptr %.sroa.0.08.i, align 8, !tbaa !54
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 32 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.not.i = icmp eq ptr %i.he, %i.fu
  br i1 %.not.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS1_IPPKNS4_17IntervalRTreeNodeES7_ISD_SaISD_EEEEZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_1ET0_T_SL_SK_T1_.exit", label %.lr.ph.i, !llvm.loop !61

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS1_IPPKNS4_17IntervalRTreeNodeES7_ISD_SaISD_EEEEZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_1ET0_T_SL_SK_T1_.exit": ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.m
  %i.hg = phi ptr [ %i.gj, %bb.m ], [ %i.gk, %middle.block ], [ %i.gk, %vec.epilog.middle.block ], [ %i.gk, %.lr.ph.i ]
  %.promoted1950 = phi ptr [ null, %bb.m ], [ %.promoted19.ph, %middle.block ], [ %.promoted19.ph, %vec.epilog.middle.block ], [ %.promoted19.ph, %.lr.ph.i ]
  %.promoted48 = phi ptr [ null, %bb.m ], [ %i.gc, %middle.block ], [ %i.gc, %vec.epilog.middle.block ], [ %i.gc, %.lr.ph.i ]
  %.promoted2046 = phi ptr [ null, %bb.m ], [ %i.gd, %middle.block ], [ %i.gd, %vec.epilog.middle.block ], [ %i.gd, %.lr.ph.i ]
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS1_IPPKNS4_17IntervalRTreeNodeES7_ISD_SaISD_EEEEZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_1ET0_T_SL_SK_T1_.exit", %bb.t
  %i.hk = phi ptr [ %.promoted2046, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS1_IPPKNS4_17IntervalRTreeNodeES7_ISD_SaISD_EEEEZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_1ET0_T_SL_SK_T1_.exit" ], [ %i.hw, %bb.t ]
  %i.hl = phi ptr [ %.promoted1950, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS1_IPPKNS4_17IntervalRTreeNodeES7_ISD_SaISD_EEEEZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_1ET0_T_SL_SK_T1_.exit" ], [ %i.hn, %bb.t ]
  %i.hm = phi ptr [ %.promoted48, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS1_IPPKNS4_17IntervalRTreeNodeES7_ISD_SaISD_EEEEZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_1ET0_T_SL_SK_T1_.exit" ], [ %i.ho, %bb.t ] ; 5 uses
  invoke void @_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree10buildLevelERSt6vectorIPKNS1_17IntervalRTreeNodeESaIS6_EES9_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.o unwind label %bb.q
end_hunk_0
begin_hunk_1_@_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree10buildLevelERSt6vectorIPKNS1_17IntervalRTreeNodeESaIS6_EES9_:bb.a
  %i.al = fcmp olt <2 x double> %i.aj, %i.ak
  %i.am = select <2 x i1> %i.al, <2 x double> %i.ai, <2 x double> %i.ah
  store <2 x double> %i.am, ptr %i.ag, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos5index13intervalrtree23IntervalRTreeBranchNodeE, i64 16), ptr %i.ac, align 8, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.x, ptr %i.an, align 8, !tbaa !64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.ab, ptr %i.ao, align 8, !tbaa !66
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  store ptr %i.ap, ptr %i.r, align 8, !tbaa !26
  br label %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE12emplace_backIJRPKNS2_17IntervalRTreeNodeESA_EEEvDpOT_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE17_M_realloc_insertIJRPKNS2_17IntervalRTreeNodeESA_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !67
  %.pre19 = load ptr, ptr %i.g, align 8, !tbaa !55
  br label %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE12emplace_backIJRPKNS2_17IntervalRTreeNodeESA_EEEvDpOT_.exit

_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE12emplace_backIJRPKNS2_17IntervalRTreeNodeESA_EEEvDpOT_.exit: ; preds = %bb.d, %bb.e
  %i.aq = phi ptr [ %i.u, %bb.d ], [ %.pre19, %bb.e ] ; 4 uses
  %i.ar = phi ptr [ %i.ap, %bb.d ], [ %.pre, %bb.e ]
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -40 ; 2 uses
  %i.at = load ptr, ptr %i.q, align 8, !tbaa !53
  %.not.i.i15 = icmp eq ptr %i.aq, %i.at
  br i1 %.not.i.i15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE12emplace_backIJRPKNS2_17IntervalRTreeNodeESA_EEEvDpOT_.exit
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !54
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.au, ptr %i.g, align 8, !tbaa !55
  br label %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE9push_backEOS5_.exit

bb.g:                                             ; preds = %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE12emplace_backIJRPKNS2_17IntervalRTreeNodeESA_EEEvDpOT_.exit
  %i.av = load ptr, ptr %2, align 8, !tbaa !49    ; 4 uses
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 5 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.h, label %_ZNKSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #11
  unreachable

_ZNKSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.be, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #12 ; 4 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ay ; 2 uses
  store ptr %i.as, ptr %i.bh, align 8, !tbaa !54
  %i.bi = icmp sgt i64 %i.ay, 0
  br i1 %i.bi, label %bb.i, label %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr align 8 %i.av, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i

_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.av) #14
  br label %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i
  store ptr %i.bg, ptr %2, align 8, !tbaa !49
  store ptr %i.bj, ptr %i.g, align 8, !tbaa !55
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.bk, ptr %i.q, align 8, !tbaa !53
  br label %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.f, %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.bl = phi ptr [ %i.au, %bb.f ], [ %i.bj, %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE9push_backERKS5_.exit

bb.k:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %i.q, align 8, !tbaa !53
  %.not.i16 = icmp eq ptr %i.u, %i.bm
  br i1 %.not.i16, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.x, ptr %i.u, align 8, !tbaa !54
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store ptr %i.bn, ptr %i.g, align 8, !tbaa !55
  br label %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE9push_backERKS5_.exit

bb.m:                                             ; preds = %bb.k
  %i.bo = load ptr, ptr %2, align 8, !tbaa !49    ; 4 uses
  %i.bp = ptrtoint ptr %i.u to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 5 uses
  %i.bs = icmp eq i64 %i.br, 9223372036854775800
  br i1 %i.bs, label %bb.n, label %_ZNKSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #11
  unreachable

_ZNKSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.bt = ashr exact i64 %i.br, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bt, i64 1)
  %i.bu = add nsw i64 %.sroa.speculated.i.i.i, %i.bt ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bt
  %i.bw = call i64 @llvm.umin.i64(i64 %i.bu, i64 1152921504606846975)
  %i.bx = select i1 %i.bv, i64 1152921504606846975, i64 %i.bw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bx, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.by = shl nuw nsw i64 %i.bx, 3
  %i.bz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #12 ; 4 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %i.br ; 2 uses
  store ptr %i.x, ptr %i.ca, align 8, !tbaa !54
  %i.cb = icmp sgt i64 %i.br, 0
  br i1 %i.cb, label %bb.o, label %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bz, ptr align 8 %i.bo, i64 %i.br, i1 false)
  br label %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i

_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i: ; preds = %bb.o, %_ZNKSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bo) #14
  br label %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i
  store ptr %i.bz, ptr %2, align 8, !tbaa !49
  store ptr %i.cc, ptr %i.g, align 8, !tbaa !55
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.bx
  store ptr %i.cd, ptr %i.q, align 8, !tbaa !53
  br label %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.l, %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE9push_backEOS5_.exit
  %i.ce = phi ptr [ %i.cc, %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.bn, %bb.l ], [ %i.bl, %_ZNSt6vectorIPKN4geos5index13intervalrtree17IntervalRTreeNodeESaIS5_EE9push_backEOS5_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.cf = add i64 %.018, 2                        ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.p
  br i1 %i.cg, label %bb.b, label %._crit_edge, !llvm.loop !68
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree5queryEddPNS0_11ItemVisitorE(ptr noundef nonnull align 8 dereferenceable(60) %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree4initEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree4initEv.exit.thread5, label %_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree4initEv.exit

_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree4initEv.exit: ; preds = %bb.b
  %i.g = tail call noundef ptr @_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree9buildTreeEv(ptr noundef nonnull align 8 dereferenceable(60) %0) ; 3 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !7
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree4initEv.exit.thread5, label %_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree4initEv.exit.thread

_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree4initEv.exit.thread: ; preds = %bb.a, %_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree4initEv.exit
  %i.i = phi ptr [ %i.g, %_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree4initEv.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(24) %i.i, double noundef %1, double noundef %2, ptr noundef %3)
  br label %_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree4initEv.exit.thread5

_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree4initEv.exit.thread5: ; preds = %bb.b, %_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree4initEv.exit, %_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree4initEv.exit.thread
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i26 = freeze i64 %i.c                      ; 2 uses
  %i.d = ashr exact i64 %.fr.i26, 5               ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr i8, ptr %0, i64 40         ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 48
  %i.i = getelementptr i8, ptr %0, i64 8          ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph54

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEET_SG_SG_T0_.exit"
  %i.n = icmp eq i64 %i.eg, 0
  br i1 %i.n, label %._crit_edge, label %.lr.ph54, !llvm.loop !69

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i29.lcssa = phi i64 [ %.fr.i26, %.lr.ph ], [ %.fr.i, %bb.b ] ; 3 uses
  %storemerge27.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.o = lshr i64 %.fr.i29.lcssa, 5               ; 2 uses
  %i.p = add nsw i64 %i.o, -2                     ; 2 uses
  %i.q = lshr i64 %i.p, 1                         ; 3 uses
  %i.r = add nsw i64 %i.o, -1
  %i.s = lshr i64 %i.r, 1                         ; 2 uses
  %i.t = and i64 %.fr.i29.lcssa, 32
  %i.u = icmp eq i64 %i.t, 0
  %i.v = or disjoint i64 %i.p, 1                  ; 2 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.q, %._crit_edge ], [ %i.bu, %.loopexit.i.i.i ] ; 8 uses
  %i.ac = getelementptr inbounds [32 x i8], ptr %0, i64 %.010.i.i.i ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load <2 x double>, ptr %i.ad, align 8   ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !43
  %i.ah = icmp slt i64 %.010.i.i.i, %i.s
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.040.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.ai = shl i64 %.040.i.i.i.i, 1                ; 2 uses
  %i.aj = add i64 %i.ai, 2                        ; 2 uses
  %i.ak = getelementptr inbounds [32 x i8], ptr %0, i64 %i.aj ; 2 uses
  %i.al = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.am = getelementptr inbounds [32 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.an = getelementptr i8, ptr %i.ak, i64 8
  %.val.i.i.i.i.i = load double, ptr %i.an, align 8, !tbaa !40
  %i.ao = getelementptr i8, ptr %i.ak, i64 16
  %.val1.i.i.i.i.i = load double, ptr %i.ao, align 8, !tbaa !42
  %i.ap = getelementptr i8, ptr %i.am, i64 8
  %.val2.i.i.i.i.i = load double, ptr %i.ap, align 8, !tbaa !40
  %i.aq = getelementptr i8, ptr %i.am, i64 16
  %.val3.i.i.i.i.i = load double, ptr %i.aq, align 8, !tbaa !42
  %i.ar = fadd double %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %i.as = fadd double %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.at = fcmp ogt double %i.ar, %i.as
  %spec.select.i.i.i.i = select i1 %i.at, i64 %i.al, i64 %i.aj ; 4 uses
  %i.au = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i.i ; 2 uses
  %i.av = getelementptr inbounds [32 x i8], ptr %0, i64 %.040.i.i.i.i ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !43
  %i.bb = icmp slt i64 %spec.select.i.i.i.i, %i.s
  br i1 %i.bb, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !70

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bc = icmp eq i64 %.0.lcssa.i.i.i.i, %i.q
  %or.cond.i.i.i = select i1 %i.u, i1 %i.bc, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false)
  %i.bd = load ptr, ptr %i.aa, align 8, !tbaa !43
  store ptr %i.bd, ptr %i.ab, align 8, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.v, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.be = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.be, label %.lr.ph.i.preheader.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.e
  %shift = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ae, %shift
  %i.bf = extractelement <2 x double> %foldExtExtBinop, i64 0
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.preheader.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0911.i.i.i.i.i ; 3 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 8      ; 2 uses
  %.val.i.i.i.i.i.i = load double, ptr %i.bh, align 8, !tbaa !40
  %i.bi = getelementptr i8, ptr %i.bg, i64 16
  %.val2.i.i.i.i.i.i = load double, ptr %i.bi, align 8, !tbaa !42
  %i.bj = fadd double %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i
  %i.bk = fcmp ogt double %i.bj, %i.bf
  br i1 %i.bk, label %bb.f, label %.loopexit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.010.i.i.i.i.i ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !43
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !43
  %i.bq = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !llvm.loop !71

.loopexit.i.i.i:                                  ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store <2 x double> %i.ae, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr %i.ag, ptr %i.bt, align 8, !tbaa !43
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.bu = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_RT0_.exit.i.i", label %bb.c, !llvm.loop !72

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_RT0_.exit.i.i": ; preds = %.loopexit.i.i.i
  %i.bv = icmp sgt i64 %.fr.i29.lcssa, 32
  br i1 %i.bv, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_RT0_.exit.i23.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bw, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_RT0_.exit.i23.i" ], [ %storemerge27.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_RT0_.exit.i.i" ] ; 3 uses
  %i.bw = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 2 uses
  %i.by = load <2 x double>, ptr %i.bx, align 8   ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.cb = load ptr, ptr %i.j, align 8, !tbaa !43
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !43
  %i.cc = ptrtoint ptr %i.bw to i64
  %i.cd = sub i64 %i.cc, %i.a                     ; 3 uses
  %i.ce = ashr exact i64 %i.cd, 5                 ; 3 uses
  %i.cf = add nsw i64 %i.ce, -1
  %i.cg = sdiv i64 %i.cf, 2
  %i.ch = icmp sgt i64 %i.ce, 2
  br i1 %i.ch, label %.lr.ph.i.i.i28.i, label %._crit_edge.i.i.i12.i

.lr.ph.i.i.i28.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i28.i
  %.040.i.i.i29.i = phi i64 [ %spec.select.i.i.i34.i, %.lr.ph.i.i.i28.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ci = shl i64 %.040.i.i.i29.i, 1              ; 2 uses
  %i.cj = add i64 %i.ci, 2                        ; 2 uses
  %i.ck = getelementptr inbounds [32 x i8], ptr %0, i64 %i.cj ; 2 uses
  %i.cl = or disjoint i64 %i.ci, 1                ; 2 uses
  %i.cm = getelementptr inbounds [32 x i8], ptr %0, i64 %i.cl ; 2 uses
  %i.cn = getelementptr i8, ptr %i.ck, i64 8
  %.val.i.i.i.i30.i = load double, ptr %i.cn, align 8, !tbaa !40
  %i.co = getelementptr i8, ptr %i.ck, i64 16
  %.val1.i.i.i.i31.i = load double, ptr %i.co, align 8, !tbaa !42
  %i.cp = getelementptr i8, ptr %i.cm, i64 8
  %.val2.i.i.i.i32.i = load double, ptr %i.cp, align 8, !tbaa !40
  %i.cq = getelementptr i8, ptr %i.cm, i64 16
  %.val3.i.i.i.i33.i = load double, ptr %i.cq, align 8, !tbaa !42
  %i.cr = fadd double %.val.i.i.i.i30.i, %.val1.i.i.i.i31.i
  %i.cs = fadd double %.val2.i.i.i.i32.i, %.val3.i.i.i.i33.i
  %i.ct = fcmp ogt double %i.cr, %i.cs
  %spec.select.i.i.i34.i = select i1 %i.ct, i64 %i.cl, i64 %i.cj ; 4 uses
  %i.cu = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i34.i ; 2 uses
  %i.cv = getelementptr inbounds [32 x i8], ptr %0, i64 %.040.i.i.i29.i ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i64 16, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !43
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !43
  %i.db = icmp slt i64 %spec.select.i.i.i34.i, %i.cg
  br i1 %i.db, label %.lr.ph.i.i.i28.i, label %._crit_edge.i.i.i12.i, !llvm.loop !70

._crit_edge.i.i.i12.i:                            ; preds = %.lr.ph.i.i.i28.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i13.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i34.i, %.lr.ph.i.i.i28.i ] ; 5 uses
  %i.dc = and i64 %i.cd, 32
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i12.i
  %i.de = add nsw i64 %i.ce, -2
  %i.df = ashr exact i64 %i.de, 1
  %i.dg = icmp eq i64 %.0.lcssa.i.i.i13.i, %i.df
  br i1 %i.dg, label %.thread.i.i27.i, label %bb.h

.thread.i.i27.i:                                  ; preds = %bb.g
  %i.dh = shl nuw nsw i64 %.0.lcssa.i.i.i13.i, 1
  %i.di = or disjoint i64 %i.dh, 1                ; 2 uses
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i13.i ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i64 16, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !43
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !43
  br label %.lr.ph.i.preheader.i.i.i15.i

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i12.i
  %.not.i.i14.i = icmp eq i64 %.0.lcssa.i.i.i13.i, 0
  br i1 %.not.i.i14.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_RT0_.exit.i23.i", label %.lr.ph.i.preheader.i.i.i15.i

.lr.ph.i.preheader.i.i.i15.i:                     ; preds = %bb.h, %.thread.i.i27.i
  %.1.i9.i.i16.i = phi i64 [ %i.di, %.thread.i.i27.i ], [ %.0.lcssa.i.i.i13.i, %bb.h ]
  %shift57 = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop58 = fadd <2 x double> %i.by, %shift57
  %i.dq = extractelement <2 x double> %foldExtExtBinop58, i64 0
  br label %.lr.ph.i.i.i.i17.i

.lr.ph.i.i.i.i17.i:                               ; preds = %bb.i, %.lr.ph.i.preheader.i.i.i15.i
  %.010.i.i.i.i18.i = phi i64 [ %.0911.i.i1011.i.i20.i, %bb.i ], [ %.1.i9.i.i16.i, %.lr.ph.i.preheader.i.i.i15.i ] ; 3 uses
  %.0911.in.i.i.i.i19.i = add nsw i64 %.010.i.i.i.i18.i, -1
  %.0911.i.i1011.i.i20.i = lshr i64 %.0911.in.i.i.i.i19.i, 1 ; 3 uses
  %i.dr = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0911.i.i1011.i.i20.i ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 8      ; 2 uses
  %.val.i.i.i.i.i21.i = load double, ptr %i.ds, align 8, !tbaa !40
  %i.dt = getelementptr i8, ptr %i.dr, i64 16
  %.val2.i.i.i.i.i22.i = load double, ptr %i.dt, align 8, !tbaa !42
  %i.du = fadd double %.val.i.i.i.i.i21.i, %.val2.i.i.i.i.i22.i
  %i.dv = fcmp ogt double %i.du, %i.dq
  br i1 %i.dv, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_RT0_.exit.i23.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i17.i
  %i.dw = getelementptr inbounds [32 x i8], ptr %0, i64 %.010.i.i.i.i18.i ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.ds, i64 16, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !43
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !43
  %.not12.i.i26.i = icmp eq i64 %.0911.i.i1011.i.i20.i, 0
  br i1 %.not12.i.i26.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_RT0_.exit.i23.i", label %.lr.ph.i.i.i.i17.i, !llvm.loop !71

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_RT0_.exit.i23.i": ; preds = %bb.i, %.lr.ph.i.i.i.i17.i, %bb.h
  %.0.lcssa.i.i.i.i24.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i18.i, %.lr.ph.i.i.i.i17.i ], [ 0, %bb.i ]
  %i.eb = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i24.i ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store <2 x double> %i.by, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  store ptr %i.ca, ptr %i.ed, align 8, !tbaa !43
  %i.ee = icmp sgt i64 %i.cd, 32
  br i1 %i.ee, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !73

.lr.ph54:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2753 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 6 uses
  %.02852 = phi i64 [ %i.eg, %bb.b ], [ %2, %.lr.ph ]
  %i.ef = phi i64 [ %i.ge, %bb.b ], [ %i.d, %.lr.ph ]
  %i.eg = add nsw i64 %.02852, -1                 ; 3 uses
  %i.eh = lshr i64 %i.ef, 1
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.eh ; 4 uses
  %.val.i.i.i = load double, ptr %i.g, align 8, !tbaa !40
  %.val1.i.i.i = load double, ptr %i.h, align 8, !tbaa !42
  %i.ej = getelementptr i8, ptr %i.ei, i64 8      ; 5 uses
  %.val2.i.i.i = load double, ptr %i.ej, align 8, !tbaa !40
  %i.ek = getelementptr i8, ptr %i.ei, i64 16
  %.val3.i.i.i = load double, ptr %i.ek, align 8, !tbaa !42
  %i.el = fadd double %.val.i.i.i, %.val1.i.i.i   ; 3 uses
  %i.em = fadd double %.val2.i.i.i, %.val3.i.i.i  ; 3 uses
  %i.en = fcmp ogt double %i.el, %i.em
  %i.eo = getelementptr i8, ptr %storemerge2753, i64 -24 ; 5 uses
  %.val2.i28.i.i = load double, ptr %i.eo, align 8, !tbaa !40
  %i.ep = getelementptr i8, ptr %storemerge2753, i64 -16
  %.val3.i29.i.i = load double, ptr %i.ep, align 8, !tbaa !42
  %i.eq = fadd double %.val2.i28.i.i, %.val3.i29.i.i ; 4 uses
  br i1 %i.en, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph54
  %i.er = fcmp ogt double %i.em, %i.eq
  br i1 %i.er, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.4.i.i.i.i.sroa.0.0.copyload = load <2 x double>, ptr %i.i, align 8
  %i.es = load ptr, ptr %i.j, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i64 16, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %i.ei, i64 24 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !43
  store ptr %i.eu, ptr %i.j, align 8, !tbaa !43
  store <2 x double> %.sroa.4.i.i.i.i.sroa.0.0.copyload, ptr %i.ej, align 8
  store ptr %i.es, ptr %i.et, align 8, !tbaa !43
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.ev = fcmp ogt double %i.el, %i.eq
  br i1 %i.ev, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.4.i.i34.i.i.sroa.0.0.copyload = load <2 x double>, ptr %i.i, align 8
  %i.ew = load ptr, ptr %i.j, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false)
  %i.ex = getelementptr inbounds i8, ptr %storemerge2753, i64 -8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !43
  store ptr %i.ey, ptr %i.j, align 8, !tbaa !43
  store <2 x double> %.sroa.4.i.i34.i.i.sroa.0.0.copyload, ptr %i.eo, align 8
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !43
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %.sroa.4.i.i35.i.i.sroa.0.0.copyload = load <2 x double>, ptr %i.i, align 8
  %i.ez = load ptr, ptr %i.j, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.fa = load ptr, ptr %i.k, align 8, !tbaa !43
  store ptr %i.fa, ptr %i.j, align 8, !tbaa !43
  store <2 x double> %.sroa.4.i.i35.i.i.sroa.0.0.copyload, ptr %i.g, align 8
  store ptr %i.ez, ptr %i.k, align 8, !tbaa !43
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph54
  %i.fb = fcmp ogt double %i.el, %i.eq
  br i1 %i.fb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.4.i.i40.i.i.sroa.0.0.copyload = load <2 x double>, ptr %i.i, align 8
  %i.fc = load ptr, ptr %i.j, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.fd = load ptr, ptr %i.k, align 8, !tbaa !43
  store ptr %i.fd, ptr %i.j, align 8, !tbaa !43
  store <2 x double> %.sroa.4.i.i40.i.i.sroa.0.0.copyload, ptr %i.g, align 8
  store ptr %i.fc, ptr %i.k, align 8, !tbaa !43
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.fe = fcmp ogt double %i.em, %i.eq
  br i1 %i.fe, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.4.i.i45.i.i.sroa.0.0.copyload = load <2 x double>, ptr %i.i, align 8
  %i.ff = load ptr, ptr %i.j, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false)
  %i.fg = getelementptr inbounds i8, ptr %storemerge2753, i64 -8 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !43
  store ptr %i.fh, ptr %i.j, align 8, !tbaa !43
  store <2 x double> %.sroa.4.i.i45.i.i.sroa.0.0.copyload, ptr %i.eo, align 8
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !43
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %.sroa.4.i.i46.i.i.sroa.0.0.copyload = load <2 x double>, ptr %i.i, align 8
  %i.fi = load ptr, ptr %i.j, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i64 16, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ei, i64 24 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !43
  store ptr %i.fk, ptr %i.j, align 8, !tbaa !43
  store <2 x double> %.sroa.4.i.i46.i.i.sroa.0.0.copyload, ptr %i.ej, align 8
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !43
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader", %bb.v
  %.sroa.014.0.i.i = phi ptr [ %i.fq, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2753, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader" ]
  %.val2.i.i14.i = load double, ptr %i.i, align 8, !tbaa !40
  %.val3.i.i15.i = load double, ptr %i.l, align 8, !tbaa !42
  %i.fl = fadd double %.val2.i.i14.i, %.val3.i.i15.i ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i"
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i" ], [ %i.fq, %bb.t ] ; 10 uses
  %i.fm = getelementptr i8, ptr %.sroa.014.1.i.i, i64 8
  %.val.i.i16.i = load double, ptr %i.fm, align 8, !tbaa !40
  %i.fn = getelementptr i8, ptr %.sroa.014.1.i.i, i64 16
  %.val1.i.i17.i = load double, ptr %i.fn, align 8, !tbaa !42
  %i.fo = fadd double %.val.i.i16.i, %.val1.i.i17.i
  %i.fp = fcmp ogt double %i.fo, %i.fl
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 32 ; 2 uses
  br i1 %i.fp, label %bb.t, label %.preheader.i.i.preheader, !llvm.loop !74

.preheader.i.i.preheader:                         ; preds = %bb.t
  %i.fr = getelementptr i8, ptr %.sroa.014.1.i.i, i64 8 ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 5 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 3 uses
  %i.fs = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -24
  %.val2.i10.i.i = load double, ptr %i.fs, align 8, !tbaa !40
  %i.ft = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -16
  %.val3.i11.i.i = load double, ptr %i.ft, align 8, !tbaa !42
  %i.fu = fadd double %.val2.i10.i.i, %.val3.i11.i.i
  %i.fv = fcmp ogt double %i.fl, %i.fu
  br i1 %i.fv, label %.preheader.i.i, label %bb.u, !llvm.loop !75

bb.u:                                             ; preds = %.preheader.i.i
  %i.fw = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %i.fw, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEET_SG_SG_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %i.fx = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 2 uses
  %.sroa.4.i.i.i13.i.sroa.0.0.copyload = load <2 x double>, ptr %i.fr, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 24 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i64 16, i1 false)
  %i.ga = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !43
  store ptr %i.gb, ptr %i.fy, align 8, !tbaa !43
  store <2 x double> %.sroa.4.i.i.i13.i.sroa.0.0.copyload, ptr %i.fx, align 8
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !43
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i", !llvm.loop !76

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEET_SG_SG_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_T0_T1_"(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2753, i64 noundef %i.eg)
  %i.gc = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.gd = sub i64 %i.gc, %i.a
  %.fr.i = freeze i64 %i.gd                       ; 2 uses
  %i.ge = ashr exact i64 %.fr.i, 5                ; 2 uses
  %i.gf = icmp sgt i64 %i.ge, 16
  br i1 %i.gf, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !69

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEET_SG_SG_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_RT0_.exit.i23.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_RT0_.exit.i.i"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE17_M_realloc_insertIJRPKNS2_17IntervalRTreeNodeESA_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !25     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #11
  unreachable

_ZNKSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #12 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !54     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load <2 x double>, ptr %i.t, align 8, !tbaa !38 ; 3 uses
  %i.x = load <2 x double>, ptr %i.u, align 8, !tbaa !38 ; 3 uses
  %i.y = shufflevector <2 x double> %i.x, <2 x double> %i.w, <2 x i32> <i32 0, i32 3>
  %i.z = shufflevector <2 x double> %i.w, <2 x double> %i.x, <2 x i32> <i32 0, i32 3>
  %i.aa = fcmp olt <2 x double> %i.y, %i.z
  %i.ab = select <2 x i1> %i.aa, <2 x double> %i.x, <2 x double> %i.w
  store <2 x double> %i.ab, ptr %i.v, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos5index13intervalrtree23IntervalRTreeBranchNodeE, i64 16), ptr %i.q, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.r, ptr %i.ac, align 8, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.s, ptr %i.ad, align 8, !tbaa !66
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !alias.scope !82
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos5index13intervalrtree23IntervalRTreeBranchNodeE, i64 16), ptr %.012.i.i.i.i, align 8, !tbaa !33, !alias.scope !77, !noalias !80
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !alias.scope !82
  %i.ai = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !33, !alias.scope !80, !noalias !77
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !82
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i) #13, !noalias !77, !inline_history !83
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !36

_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.al, %.lr.ph.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i28, label %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i.i29
  %.012.i.i.i.i30 = phi ptr [ %i.au, %.lr.ph.i.i.i.i29 ], [ %i.am, %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  %.0911.i.i.i.i31 = phi ptr [ %i.at, %.lr.ph.i.i.i.i29 ], [ %1, %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !89
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos5index13intervalrtree23IntervalRTreeBranchNodeE, i64 16), ptr %.012.i.i.i.i30, align 8, !tbaa !33, !alias.scope !84, !noalias !87
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !alias.scope !89
  %i.ar = load ptr, ptr %.0911.i.i.i.i31, align 8, !tbaa !33, !alias.scope !87, !noalias !84
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !89
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i31) #13, !noalias !84, !inline_history !83
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 40 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 40 ; 2 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.at, %i.b
  br i1 %.not.i.i.i.i32, label %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %.lr.ph.i.i.i.i29, !llvm.loop !36

_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34: ; preds = %.lr.ph.i.i.i.i29, %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i.i33 = phi ptr [ %i.am, %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.au, %.lr.ph.i.i.i.i29 ]
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #14
  br label %_ZNSt12_Vector_baseIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !25
  store ptr %.0.lcssa.i.i.i.i33, ptr %i.a, align 8, !tbaa !26
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noreturn }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !20, i64 48}
!8 = !{!"_ZTSN4geos5index13intervalrtree25SortedPackedIntervalRTreeE", !9, i64 0, !15, i64 24, !20, i64 48, !4, i64 56}
!9 = !{!"_ZTSSt6vectorIN4geos5index13intervalrtree21IntervalRTreeLeafNodeESaIS3_EE", !10, i64 0}
!10 = !{!"_ZTSSt12_Vector_baseIN4geos5index13intervalrtree21IntervalRTreeLeafNodeESaIS3_EE", !11, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseIN4geos5index13intervalrtree21IntervalRTreeLeafNodeESaIS3_EE12_Vector_implE", !12, i64 0}
!12 = !{!"_ZTSNSt12_Vector_baseIN4geos5index13intervalrtree21IntervalRTreeLeafNodeESaIS3_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!13 = !{!"p1 _ZTSN4geos5index13intervalrtree21IntervalRTreeLeafNodeE", !14, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"_ZTSSt6vectorIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE", !16, i64 0}
!16 = !{!"_ZTSSt12_Vector_baseIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE", !17, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE12_Vector_implE", !18, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIN4geos5index13intervalrtree23IntervalRTreeBranchNodeESaIS3_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"p1 _ZTSN4geos5index13intervalrtree23IntervalRTreeBranchNodeE", !14, i64 0}
!20 = !{!"p1 _ZTSN4geos5index13intervalrtree17IntervalRTreeNodeE", !14, i64 0}
!21 = !{!13, !13, i64 0}
!22 = !{!12, !13, i64 8}
!23 = !{!12, !13, i64 0}
!24 = !{!18, !19, i64 16}
!25 = !{!18, !19, i64 0}
!26 = !{!18, !19, i64 8}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZSt19__relocate_object_aIN4geos5index13intervalrtree23IntervalRTreeBranchNodeES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!29 = distinct !{!29, !"_ZSt19__relocate_object_aIN4geos5index13intervalrtree23IntervalRTreeBranchNodeES3_SaIS3_EEvPT_PT0_RT1_"}
end_hunk_1
