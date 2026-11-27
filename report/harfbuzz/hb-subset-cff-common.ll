Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff-common?download=true
inline.NumInlined: 405
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hb_set_t = type { %struct.hb_sparseset_t }
%struct.hb_sparseset_t = type { %struct.hb_object_header_t, %struct.hb_bit_set_invertible_t }
%struct.hb_object_header_t = type { %struct.hb_reference_count_t, %struct.hb_atomic_t.0, %struct.hb_atomic_t.1 }
%struct.hb_reference_count_t = type { %struct.hb_atomic_t }
%struct.hb_atomic_t = type { i32 }
%struct.hb_atomic_t.0 = type { i8 }
%struct.hb_atomic_t.1 = type { ptr }
%struct.hb_bit_set_invertible_t = type <{ %struct.hb_bit_set_t, i8, [7 x i8] }>
%struct.hb_bit_set_t = type { i8, i32, %struct.hb_atomic_t.7, %struct.hb_vector_t, %struct.hb_vector_t.8 }
%struct.hb_atomic_t.7 = type { i32 }
%struct.hb_vector_t = type { i32, i32, ptr }
%struct.hb_vector_t.8 = type { i32, i32, ptr }

$_ZNK3CFF8FDSelect12get_fd_rangeEj = comdat any

$_ZN14hb_inc_bimap_t3addEj = comdat any

$_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev = comdat any

$_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b = comdat any

$_ZN12hb_hashmap_tIjjLb1EE5allocEj = comdat any

$_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIjjEEbOT_jOT0_b = comdat any

$_ZN11hb_vector_tIjLb0EE5allocEjb = comdat any

$_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_ = comdat any

$_ZN12hb_bit_set_t3delEj = comdat any

$_ZN12hb_bit_set_t3addEj = comdat any

$_ZN12hb_bit_set_t6resizeEjbb = comdat any

$_ZN11hb_vector_tI13hb_bit_page_tLb0EE11resize_fullEibb = comdat any

$_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb = comdat any

$_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5allocEjb = comdat any

$_ZNK23hb_bit_set_invertible_t14get_populationEv = comdat any

$_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE5allocEjb = comdat any

$_ZNK12hb_bit_set_t4nextEPj = comdat any

$_ZNK12hb_bit_set_t10next_rangeEPjS0_ = comdat any

$_ZNK12hb_bit_set_t7get_minEv = comdat any

@_hb_NullPool = external hidden constant [80 x i64], align 16
@minus_1 = external hidden local_unnamed_addr constant i32, align 4
@__const._ZN12hb_hashmap_tIjjLb1EE9prime_forEj.prime_mod = private unnamed_addr constant [32 x i32] [i32 1, i32 2, i32 3, i32 7, i32 13, i32 31, i32 61, i32 127, i32 251, i32 509, i32 1021, i32 2039, i32 4093, i32 8191, i32 16381, i32 32749, i32 65521, i32 131071, i32 262139, i32 524287, i32 1048573, i32 2097143, i32 4194301, i32 8388593, i32 16777213, i32 33554393, i32 67108859, i32 134217689, i32 268435399, i32 536870909, i32 1073741789, i32 2147483647], align 16
@_hb_CrapPool = external hidden local_unnamed_addr global [80 x i64], align 16

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_Z27hb_plan_subset_cff_fdselectPK16hb_subset_plan_tjRKN3CFF8FDSelectERjS6_S6_R11hb_vector_tINS2_11code_pair_tELb0EER14hb_inc_bimap_t(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef nonnull align 1 dereferenceable(6) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(64) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %8 = alloca %struct.hb_set_t, align 8           ; 13 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  store i32 0, ptr %3, align 4, !tbaa !11
  store i32 0, ptr %4, align 4, !tbaa !11
  store i32 0, ptr %5, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !133  ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 32
  store atomic i32 1, ptr %8 monotonic, align 8
  store atomic i8 1, ptr %i.g monotonic, align 4
  store atomic ptr null, ptr %i.h monotonic, align 8
  store i8 1, ptr %i.i, align 8, !tbaa !33
  store i32 0, ptr %i.j, align 4, !tbaa !34
  store atomic i32 0, ptr %i.k monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.l, i8 0, i64 33, i1 false)
  %i.m = getelementptr i8, ptr %0, i64 196
  %.val = load i32, ptr %i.m, align 4, !tbaa !134
  %.val.fr = freeze i32 %.val                     ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 200
  %.val70 = load ptr, ptr %i.n, align 8, !tbaa !135 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %.val.fr to i64
  %.not.i.i = icmp eq i32 %.val.fr, 0
  %spec.select.i.i = select i1 %.not.i.i, ptr @_hb_NullPool, ptr %.val70, !prof !35 ; 2 uses
  %.sroa.018.0.copyload = load i32, ptr %spec.select.i.i, align 4, !tbaa !11
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 4
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 6 uses
  %i.q = load i64, ptr @_hb_NullPool, align 16    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.n
  %i.s = call noundef i32 @_ZNK23hb_bit_set_invertible_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(49) %i.i) ; 2 uses
  store i32 %i.s, ptr %3, align 4, !tbaa !11
  %i.t = icmp eq i32 %i.s, %1
  br i1 %i.t, label %bb.o, label %bb.q

bb.d:                                             ; preds = %bb.b, %bb.n
  %.059116 = phi i32 [ 0, %bb.b ], [ %i.aq, %bb.n ] ; 6 uses
  %.sroa.018.0115 = phi i32 [ %.sroa.018.0.copyload, %bb.b ], [ %.sroa.018.1, %bb.n ] ; 2 uses
  %.sroa.6.0114 = phi i32 [ %.sroa.6.0.copyload, %bb.b ], [ %.sroa.6.1, %bb.n ] ; 2 uses
  %.061113 = phi i32 [ -1, %bb.b ], [ %.162, %bb.n ] ; 2 uses
  %.065112 = phi i32 [ 0, %bb.b ], [ %.166, %bb.n ] ; 2 uses
  %.sroa.8.0111 = phi i64 [ %.sroa.2.8.insert.ext.i.i.i.i, %bb.b ], [ %.sroa.8.1, %bb.n ] ; 4 uses
  %.sroa.095.0110 = phi ptr [ %.val70, %bb.b ], [ %.sroa.095.1, %bb.n ] ; 3 uses
  %i.u = icmp eq i32 %.059116, %.sroa.018.0115
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = and i64 %.sroa.8.0111, 4294967295
  %.not.i.i71 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i71, label %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit, label %bb.f, !prof !35

bb.f:                                             ; preds = %bb.e
  %i.w = add i64 %.sroa.8.0111, 4294967295        ; 2 uses
  %.sroa.8.12.insert.insert = or i64 %i.w, 4294967296
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.095.0110, i64 8 ; 2 uses
  %.pre129 = and i64 %i.w, 4294967295
  %i.y = icmp eq i64 %.pre129, 0
  %i.z = select i1 %i.y, ptr @_hb_NullPool, ptr %i.x, !prof !35
  br label %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit

_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit: ; preds = %bb.e, %bb.f
  %.pre-phi = phi ptr [ @_hb_NullPool, %bb.e ], [ %i.z, %bb.f ] ; 2 uses
  %.sroa.095.2 = phi ptr [ %.sroa.095.0110, %bb.e ], [ %i.x, %bb.f ]
  %.sroa.8.2 = phi i64 [ %.sroa.8.0111, %bb.e ], [ %.sroa.8.12.insert.insert, %bb.f ]
  %.sroa.018.0.copyload20 = load i32, ptr %.pre-phi, align 4, !tbaa !11
  %.sroa.6.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 4
  %.sroa.6.0.copyload22 = load i32, ptr %.sroa.6.0..sroa_idx21, align 4, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit
  %.sroa.095.1 = phi ptr [ %.sroa.095.2, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit ], [ %.sroa.095.0110, %bb.d ]
  %.sroa.8.1 = phi i64 [ %.sroa.8.2, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit ], [ %.sroa.8.0111, %bb.d ]
  %.sroa.6.1 = phi i32 [ %.sroa.6.0.copyload22, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit ], [ %.sroa.6.0114, %bb.d ]
  %.sroa.018.1 = phi i32 [ %.sroa.018.0.copyload20, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit ], [ %.sroa.018.0115, %bb.d ] ; 2 uses
  %.058 = phi i32 [ %.sroa.6.0114, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit ], [ %.059116, %bb.d ] ; 2 uses
  %i.aa = call i64 @_ZNK3CFF8FDSelect12get_fd_rangeEj(ptr noundef nonnull align 1 dereferenceable(6) %2, i32 noundef %.058) ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.aa to i32 ; 5 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.aa, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %.not69 = icmp eq i32 %.061113, %.sroa.0.0.extract.trunc
  br i1 %.not69, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load i8, ptr %i.o, align 8, !tbaa !36, !range !37, !noundef !38
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.i, label %bb.j, !prof !35

bb.i:                                             ; preds = %bb.h
  call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.i, i32 noundef %.sroa.0.0.extract.trunc)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.j:                                             ; preds = %bb.h
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.i, i32 noundef %.sroa.0.0.extract.trunc)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit: ; preds = %bb.i, %bb.j
  %i.ad = add i32 %.065112, 1                     ; 2 uses
  %i.ae = load i32, ptr %i.p, align 4, !tbaa !41  ; 3 uses
  %i.af = load i32, ptr %6, align 8, !tbaa !42
  %.not.i = icmp slt i32 %i.ae, %i.af
  br i1 %.not.i, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  %i.ag = add i32 %i.ae, 1
  %i.ah = call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %i.ag, i1 noundef zeroext false)
  br i1 %i.ah, label %..critedge_crit_edge.i, label %bb.l, !prof !43

..critedge_crit_edge.i:                           ; preds = %bb.k
  %.pre.i = load i32, ptr %i.p, align 4, !tbaa !41
  br label %.critedge.i

bb.l:                                             ; preds = %bb.k
  store i64 %i.q, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  %i.ai = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.ae, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit ] ; 2 uses
  %i.aj = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.ak = add i32 %i.ai, 1
  store i32 %i.ak, ptr %i.p, align 4, !tbaa !41
  %i.al = zext i32 %i.ai to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.al
  %.sroa.4.0.insert.ext = zext i32 %.059116 to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0.0.insert.ext = and i64 %i.aa, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, %.sroa.4.0.insert.shift
  store i64 %.sroa.0.0.insert.insert, ptr %i.am, align 4, !tbaa !11
  br label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit

_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit: ; preds = %bb.l, %.critedge.i
  %i.an = icmp eq i32 %.059116, %.058
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit
  %i.ao = add i32 %.sroa.018.1, -1
  %i.ap = add i32 %.sroa.4.0.extract.trunc, -1
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.ao, i32 %i.ap)
  br label %bb.n

bb.n:                                             ; preds = %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit, %bb.m, %bb.g
  %.166 = phi i32 [ %i.ad, %bb.m ], [ %i.ad, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit ], [ %.065112, %bb.g ] ; 3 uses
  %.162 = phi i32 [ %.sroa.0.0.extract.trunc, %bb.m ], [ %.sroa.0.0.extract.trunc, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit ], [ %.061113, %bb.g ]
  %.160 = phi i32 [ %.sroa.speculated, %bb.m ], [ %.059116, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit ], [ %.059116, %bb.g ]
  %i.aq = add i32 %.160, 1                        ; 2 uses
  %i.ar = icmp ult i32 %i.aq, %i.e
  br i1 %i.ar, label %bb.d, label %bb.c, !llvm.loop !88

bb.o:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !46
  %.not.i.i.i = icmp eq i32 %i.at, 0
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8
  %.not8.i.i.i = icmp eq i32 %i.av, 0
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %.not8.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %_ZN14hb_inc_bimap_t5clearEv.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !47
  %.fr15.i.i.i = freeze i32 %i.ax
  %i.ay = add i32 %.fr15.i.i.i, 1                 ; 2 uses
  %.not912.i.i.i = icmp ult i32 %i.ay, 2
  br i1 %.not912.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.p
  %.sroa.2.8.insert.ext.i.i.i.i75 = zext i32 %i.ay to i64
  %.idx.i.i.i = mul nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i75, 12 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !48
  %i.bb = add nsw i64 %.idx.i.i.i, -12
  %i.bc = urem i64 %i.bb, 12
  %i.bd = sub nuw nsw i64 %.idx.i.i.i, %i.bc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ba, i8 0, i64 %i.bd, i1 false)
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %bb.p
  store i32 0, ptr %i.au, align 8, !tbaa !49
  store i32 0, ptr %i.as, align 4, !tbaa !46
  br label %_ZN14hb_inc_bimap_t5clearEv.exit.i

_ZN14hb_inc_bimap_t5clearEv.exit.i:               ; preds = %._crit_edge.i.i.i, %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 52
  store i32 0, ptr %i.be, align 4, !tbaa !50
  %.not.i76 = icmp eq i32 %1, 0
  br i1 %.not.i76, label %_ZN14hb_inc_bimap_t8identityEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN14hb_inc_bimap_t5clearEv.exit.i, %.lr.ph.i
  %.05.i = phi i32 [ %i.bg, %.lr.ph.i ], [ 0, %_ZN14hb_inc_bimap_t5clearEv.exit.i ] ; 2 uses
  %i.bf = call noundef i32 @_ZN14hb_inc_bimap_t3addEj(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %.05.i) ; 0 uses
  %i.bg = add nuw i32 %.05.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bg, %1
  br i1 %exitcond.not.i, label %_ZN14hb_inc_bimap_t8identityEj.exit, label %.lr.ph.i, !llvm.loop !89

bb.q:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 1, ptr %i.bh, align 8, !tbaa !51
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !46
  %.not.i.i.i77 = icmp eq i32 %i.bj, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8
  %.not8.i.i.i78 = icmp eq i32 %i.bl, 0
  %or.cond.i.i.i79 = select i1 %.not.i.i.i77, i1 %.not8.i.i.i78, i1 false
  br i1 %or.cond.i.i.i79, label %_ZN12hb_hashmap_tIjjLb1EE5resetEv.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !47
  %.fr15.i.i.i80 = freeze i32 %i.bn
  %i.bo = add i32 %.fr15.i.i.i80, 1               ; 2 uses
  %.not912.i.i.i81 = icmp ult i32 %i.bo, 2
  br i1 %.not912.i.i.i81, label %._crit_edge.i.i.i85, label %.lr.ph.preheader.i.i.i82

.lr.ph.preheader.i.i.i82:                         ; preds = %bb.r
  %.sroa.2.8.insert.ext.i.i.i.i83 = zext i32 %i.bo to i64
  %.idx.i.i.i84 = mul nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i83, 12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !48
end_hunk_0
begin_hunk_1_@_Z25hb_serialize_cff_fdselectP22hb_serialize_context_tjRKN3CFF8FDSelectEjjjRK11hb_vector_tINS1_11code_pair_tELb0EE:bb.a
  %i.df = load i32, ptr %i.bw, align 4, !tbaa !41
  %i.dg = zext i32 %i.df to i64
  %i.dh = icmp samesign ult i64 %indvars.iv.next.i33, %i.dg
  br i1 %i.dh, label %bb.y, label %._crit_edge.loopexit.i34, !llvm.loop !140

_ZL22serialize_fdselect_3_4IN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEEEbP22hb_serialize_context_tjRKNS0_8FDSelectEjRK11hb_vector_tINS0_11code_pair_tELb0EE.exit: ; preds = %bb.a, %.critedge.i.i, %bb.c, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit.i, %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS4_ILb1EtLj2EEEEEEEPT_mb.exit.i, %.critedge.i.i39, %bb.q, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit.i, %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEEEPT_mb.exit.i, %.critedge.i.i18, %bb.d, %_ZN22hb_serialize_context_t12allocate_minIN3CFF8FDSelectEEEPT_v.exit
  %.0 = phi i1 [ false, %bb.d ], [ false, %bb.q ], [ false, %_ZN22hb_serialize_context_t12allocate_minIN3CFF8FDSelectEEEPT_v.exit ], [ false, %bb.c ], [ true, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit.i ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEEEPT_mb.exit.i ], [ false, %.critedge.i.i18 ], [ true, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit.i ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS4_ILb1EtLj2EEEEEEEPT_mb.exit.i ], [ false, %.critedge.i.i39 ], [ false, %.critedge.i.i ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !37, !noundef !38
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !47
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !43

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !55
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48   ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !11
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.loopexit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc i32 %i.w to i1
  %i.ab = icmp ne i32 %.03045, -1
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ab
  %spec.select = select i1 %or.cond.not, i32 %.03045, i32 %.02946 ; 2 uses
  %i.ac = add i32 %.048, 1                        ; 3 uses
  %i.ad = add i32 %i.ac, %.02946
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !47
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !160

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03043 = phi i32 [ %.03045, %bb.e ], [ %spec.select, %bb.f ]
  %.02941 = phi i32 [ %.02946, %bb.e ], [ %i.af, %bb.f ]
  %.02839 = phi i32 [ %.048, %bb.e ], [ %i.ac, %bb.f ]
  %.03043.fr = freeze i32 %.03043                 ; 2 uses
  %i.al = icmp eq i32 %.03043.fr, -1
  %spec.select67 = select i1 %i.al, i32 %.02941, i32 %.03043.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0283961 = phi i32 [ %.02839, %.loopexit ], [ 0, %.critedge ]
  %i.am = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !49
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !49
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !46
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !46
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !11
  store i32 %i.az, ptr %i.ao, align 4, !tbaa !71
  %i.ba = load i32, ptr %3, align 4, !tbaa !11
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !72
  %i.bc = shl nuw i32 %i.k, 2
  %i.bd = or disjoint i32 %i.bc, 3
  store i32 %i.bd, ptr %i.ap, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !tbaa !11
  %i.bg = add <2 x i32> %i.bf, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bg, ptr %i.be, align 4, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !73
  %i.bj = zext i16 %i.bi to i32
  %i.bk = icmp ugt i32 %.0283961, %i.bj
  br i1 %i.bk, label %bb.i, label %bb.k, !prof !35

bb.i:                                             ; preds = %bb.h
  %i.bl = extractelement <2 x i32> %i.bg, i64 1
  %i.bm = shl i32 %i.bl, 3
  %i.bn = load i32, ptr %i.h, align 4, !tbaa !47  ; 2 uses
  %i.bo = icmp ugt i32 %i.bm, %i.bn
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = add i32 %i.bn, -8
  %i.bq = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bp) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.132
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !37, !noundef !38
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !43

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i32 %1, 1
  %i.e = add i32 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !47
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !46
  %.sroa.speculated35 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %1)
  %i.k = shl i32 %.sroa.speculated35, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.k, i32 4)
  %i.l = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.speculated, i1 true) ; 2 uses
  %narrow.i = sub nuw nsw i32 32, %i.l            ; 3 uses
  %i.m = zext nneg i32 %narrow.i to i64           ; 2 uses
  %i.n = shl nuw nsw i64 12, %i.m                 ; 2 uses
  %i.o = tail call noundef ptr @hb_malloc(i64 noundef %i.n) #7 ; 3 uses
  %.not29.not = icmp eq ptr %i.o, null
  br i1 %.not29.not, label %bb.e, label %bb.f, !prof !35

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.a, align 8, !tbaa !51
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.p = and i64 %i.n, 4294967288                 ; 2 uses
  %.not.i31 = icmp eq i64 %i.p, 0
  br i1 %.not.i31, label %_ZL9hb_memsetPvij.exit, label %bb.g, !prof !35

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.o, i8 0, i64 %i.p, i1 false)
  br label %_ZL9hb_memsetPvij.exit

_ZL9hb_memsetPvij.exit:                           ; preds = %bb.f, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !47   ; 2 uses
  %.not.i32 = icmp eq i32 %i.r, 0
  %i.s = add i32 %i.r, 1
  %spec.select.i = select i1 %.not.i32, i32 0, i32 %i.s ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !48   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.i, align 4, !tbaa !46
  %notmask = shl nsw i32 -1, %narrow.i
  %notmask.fr = freeze i32 %notmask
  %i.w = xor i32 %notmask.fr, -1
  %2 = zext i32 %i.w to i64
  %3 = shl nuw i64 %2, 32
  store i64 %3, ptr %i.v, align 8
  %i.x = icmp eq i32 %i.l, 0
  br i1 %i.x, label %_ZN12hb_hashmap_tIjjLb1EE9prime_forEj.exit, label %bb.h, !prof !35

bb.h:                                             ; preds = %_ZL9hb_memsetPvij.exit
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN12hb_hashmap_tIjjLb1EE9prime_forEj.prime_mod, i64 %i.m
  %i.z = load i32, ptr %i.y, align 4, !tbaa !11
  br label %_ZN12hb_hashmap_tIjjLb1EE9prime_forEj.exit

_ZN12hb_hashmap_tIjjLb1EE9prime_forEj.exit:       ; preds = %_ZL9hb_memsetPvij.exit, %bb.h
  %.0.i = phi i32 [ %i.z, %bb.h ], [ 2147483647, %_ZL9hb_memsetPvij.exit ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0.i, ptr %i.aa, align 8, !tbaa !55
  %.tr = trunc nuw nsw i32 %narrow.i to i16
  %i.ab = shl nuw nsw i16 %.tr, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !73
  store ptr %i.o, ptr %i.t, align 8, !tbaa !48
  %.not43 = icmp eq i32 %spec.select.i, 0
  br i1 %.not43, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN12hb_hashmap_tIjjLb1EE9prime_forEj.exit
  %wide.trip.count = zext i32 %spec.select.i to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.j, %_ZN12hb_hashmap_tIjjLb1EE9prime_forEj.exit
  tail call void @hb_free(ptr noundef %i.u) #7
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %indvars.iv ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.ah = lshr i32 %i.af, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aj = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIjjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ad, i32 noundef %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.ai, i1 noundef zeroext true) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !161

bb.k:                                             ; preds = %bb.e, %.preheader, %bb.c, %bb.a
  %.1 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ true, %.preheader ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIjjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !37, !noundef !38
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !47
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !43

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !55
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48   ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !11
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.loopexit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc i32 %i.w to i1
  %i.ab = icmp ne i32 %.03045, -1
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ab
  %spec.select = select i1 %or.cond.not, i32 %.03045, i32 %.02946 ; 2 uses
  %i.ac = add i32 %.048, 1                        ; 3 uses
  %i.ad = add i32 %i.ac, %.02946
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !47
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !162

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03043 = phi i32 [ %.03045, %bb.e ], [ %spec.select, %bb.f ]
  %.02941 = phi i32 [ %.02946, %bb.e ], [ %i.af, %bb.f ]
  %.02839 = phi i32 [ %.048, %bb.e ], [ %i.ac, %bb.f ]
  %.03043.fr = freeze i32 %.03043                 ; 2 uses
  %i.al = icmp eq i32 %.03043.fr, -1
  %spec.select67 = select i1 %i.al, i32 %.02941, i32 %.03043.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0283961 = phi i32 [ %.02839, %.loopexit ], [ 0, %.critedge ]
  %i.am = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !49
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !49
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !46
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !46
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !11
  store i32 %i.az, ptr %i.ao, align 4, !tbaa !71
  %i.ba = load i32, ptr %3, align 4, !tbaa !11
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !72
  %i.bc = shl nuw i32 %i.k, 2
  %i.bd = or disjoint i32 %i.bc, 3
  store i32 %i.bd, ptr %i.ap, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !tbaa !11
  %i.bg = add <2 x i32> %i.bf, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bg, ptr %i.be, align 4, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !73
  %i.bj = zext i16 %i.bi to i32
  %i.bk = icmp ugt i32 %.0283961, %i.bj
  br i1 %i.bk, label %bb.i, label %bb.k, !prof !35

bb.i:                                             ; preds = %bb.h
  %i.bl = extractelement <2 x i32> %i.bg, i64 1
  %i.bm = shl i32 %i.bl, 3
  %i.bn = load i32, ptr %i.h, align 4, !tbaa !47  ; 2 uses
  %i.bo = icmp ugt i32 %i.bm, %i.bn
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = add i32 %i.bn, -8
  %i.bq = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bp) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.132
}

declare void @hb_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

declare ptr @hb_malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5
end_hunk_1
