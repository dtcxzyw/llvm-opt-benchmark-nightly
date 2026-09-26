Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff-common?download=true
inline.NumInlined: 405
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0

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
  %.val = load i32, ptr %i.m, align 4, !tbaa !134 ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 200
  %.val70 = load ptr, ptr %i.n, align 8, !tbaa !135 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %.val to i64
  %.not.i.i = icmp eq i32 %.val, 0
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
  store i64 %.sroa.0.0.insert.insert, ptr %i.am, align 4
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
  %i.br = add nsw i64 %.idx.i.i.i84, -12
  %i.bs = urem i64 %i.br, 12
  %i.bt = sub nuw nsw i64 %.idx.i.i.i84, %i.bs
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bq, i8 0, i64 %i.bt, i1 false)
  br label %._crit_edge.i.i.i85

._crit_edge.i.i.i85:                              ; preds = %.lr.ph.preheader.i.i.i82, %bb.r
  store i32 0, ptr %i.bk, align 8, !tbaa !49
  store i32 0, ptr %i.bi, align 4, !tbaa !46
  br label %_ZN12hb_hashmap_tIjjLb1EE5resetEv.exit.i

_ZN12hb_hashmap_tIjjLb1EE5resetEv.exit.i:         ; preds = %._crit_edge.i.i.i85, %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !52 ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %bb.s, label %_ZN14hb_inc_bimap_t5resetEv.exit, !prof !35

bb.s:                                             ; preds = %_ZN12hb_hashmap_tIjjLb1EE5resetEv.exit.i
  %i.bx = xor i32 %i.bv, -1
  store i32 %i.bx, ptr %i.bu, align 8, !tbaa !52
  br label %_ZN14hb_inc_bimap_t5resetEv.exit

_ZN14hb_inc_bimap_t5resetEv.exit:                 ; preds = %_ZN12hb_hashmap_tIjjLb1EE5resetEv.exit.i, %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 52
  store i32 0, ptr %i.by, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 -1, ptr %i.c, align 4, !tbaa !11
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %_ZN14hb_inc_bimap_t5resetEv.exit
  %i.bz = load i8, ptr %i.o, align 8, !tbaa !36, !range !37, !noundef !38
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.u, label %.split, !prof !35

.split:                                           ; preds = %bb.t
  %i.cb = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.i, ptr noundef nonnull %i.c)
  br i1 %i.cb, label %.split._crit_edge, label %.loopexit

.split._crit_edge:                                ; preds = %.split
  %.pre = load i32, ptr %i.c, align 4, !tbaa !11
  br label %bb.w

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.cc = load i32, ptr %i.c, align 4, !tbaa !11  ; 5 uses
  store i32 %i.cc, ptr %i.a, align 4, !tbaa !11
  %i.cd = icmp eq i32 %i.cc, -2
  br i1 %i.cd, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread, label %bb.v, !prof !35

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.loopexit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.cc, ptr %i.b, align 4, !tbaa !11
  %i.ce = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.i, ptr noundef nonnull %i.b) ; 0 uses
  %i.cf = add i32 %i.cc, 1                        ; 3 uses
  %i.cg = load i32, ptr %i.b, align 4, !tbaa !11
  %i.ch = icmp ult i32 %i.cf, %i.cg
  br i1 %i.ch, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread103, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread103: ; preds = %bb.v
  store i32 %i.cf, ptr %i.c, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.w

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit: ; preds = %bb.v
  store i32 %i.cc, ptr %i.b, align 4, !tbaa !11
  %i.ci = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.cj = load i32, ptr %i.b, align 4, !tbaa !11
  %i.ck = add i32 %i.cj, 1                        ; 3 uses
  %.not106 = icmp eq i32 %i.ck, -1
  store i32 %i.ck, ptr %i.c, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br i1 %.not106, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %.split._crit_edge, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread103, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit
  %i.cl = phi i32 [ %.pre, %.split._crit_edge ], [ %i.cf, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread103 ], [ %i.ck, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit ]
  %i.cm = call noundef i32 @_ZN14hb_inc_bimap_t3addEj(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %i.cl) ; 0 uses
  br label %bb.t, !llvm.loop !90

.loopexit:                                        ; preds = %.split, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread
  %i.cn = load i32, ptr %i.bi, align 4, !tbaa !46
  %i.co = load i32, ptr %3, align 4, !tbaa !11
  %.not = icmp eq i32 %i.cn, %i.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br i1 %.not, label %_ZN14hb_inc_bimap_t8identityEj.exit, label %.critedge

_ZN14hb_inc_bimap_t8identityEj.exit:              ; preds = %.lr.ph.i, %_ZN14hb_inc_bimap_t5clearEv.exit.i, %.loopexit
  %i.cp = load i32, ptr %i.p, align 4, !tbaa !41  ; 3 uses
  %.not118 = icmp eq i32 %i.cp, 0
  br i1 %.not118, label %._crit_edge, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EEixEi.exit.lr.ph

_ZN11hb_vector_tIN3CFF11code_pair_tELb0EEixEi.exit.lr.ph: ; preds = %_ZN14hb_inc_bimap_t8identityEj.exit
  %i.cq = load ptr, ptr %i.r, align 8, !tbaa !44  ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !48 ; 4 uses
  %.not.i.i.i88 = icmp eq ptr %i.cs, null
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 28
  br i1 %.not.i.i.i88, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EEixEi.exit.lr.ph.split.us, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EEixEi.exit.lr.ph.split

_ZN11hb_vector_tIN3CFF11code_pair_tELb0EEixEi.exit.lr.ph.split.us: ; preds = %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EEixEi.exit.lr.ph
  %i.cu = load i32, ptr @minus_1, align 4, !tbaa !11
  br label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EEixEi.exit.us

end_hunk_0
begin_hunk_1_@_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_:bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !176
  %i.d = add i32 %i.c, -1
  %spec.select.i.i = icmp ult i32 %i.d, -2
  br i1 %spec.select.i.i, label %bb.c, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !177
  tail call void @hb_free(ptr noundef %i.f) #7
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit: ; preds = %bb.b, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #7 ; 0 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !175  ; 2 uses
  %.not59 = icmp eq i32 %i.h, 0
  br i1 %.not59, label %._crit_edge, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit: ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph, %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit
  %i.j = phi i32 [ %i.h, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph ], [ %i.q, %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit ]
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !177
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %.sroa.3.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..0.i.i.sroa_idx, align 8, !tbaa !178
  %.sroa.4.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..0.i.i.sroa_idx, align 8, !tbaa !178 ; 2 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !179, !noalias !180
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #7 ; 0 uses
  %.not.i6 = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i6, label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit
  tail call void %.sroa.4.0.copyload(ptr noundef %.sroa.3.0.copyload) #7, !inline_history !170
  br label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit

_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit: ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit, %bb.e
  %i.p = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #7 ; 0 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !175  ; 2 uses
  %.not5 = icmp eq i32 %i.q, 0
  br i1 %.not5, label %._crit_edge, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit, !llvm.loop !171

._crit_edge:                                      ; preds = %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit, %bb.d
  %i.r = load i32, ptr %0, align 8, !tbaa !176
  %i.s = add i32 %i.r, -1
  %spec.select.i.i7 = icmp ult i32 %i.s, -2
  br i1 %spec.select.i.i7, label %bb.f, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8

bb.f:                                             ; preds = %._crit_edge
  store i32 0, ptr %i.a, align 4, !tbaa !179
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !177
  tail call void @hb_free(ptr noundef %i.u) #7
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8: ; preds = %._crit_edge, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.v = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #7 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !33, !range !37, !noundef !38
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %1, 9                           ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !75   ; 3 uses
  %i.h = icmp ult i32 %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66   ; 3 uses
  br i1 %i.h, label %bb.c, label %._crit_edge.i, !prof !43

bb.c:                                             ; preds = %bb.b
  %i.k = zext i32 %i.e to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !77
  %.not.i = icmp eq i32 %i.m, %i.c
  br i1 %.not.i, label %_ZN12hb_bit_set_t8page_forEjb.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %.not1.i.i.i.i.i = icmp sgt i32 %i.g, 0
  br i1 %.not1.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge.i
  %i.n = add nsw i32 %i.g, -1
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i.i
  %.0203.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i, %bb.g ], [ %i.n, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i, %bb.g ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.o = add i32 %.0212.i.i.i.i.i, %.0203.i.i.i.i.i
  %i.p = lshr i32 %i.o, 1                         ; 4 uses
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !77   ; 2 uses
  %i.u = icmp slt i32 %i.c, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.v = add nsw i32 %i.p, -1
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.not28.i.i.i.i.i = icmp eq i32 %i.c, %i.t
  br i1 %.not28.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = add nuw nsw i32 %i.p, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.223.i.i.i.i.i = phi i32 [ %i.w, %bb.f ], [ %.0212.i.i.i.i.i, %bb.d ] ; 2 uses
  %.2.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i, %bb.f ], [ %i.v, %bb.d ] ; 2 uses
  %.not.not.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i, %.2.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i: ; preds = %bb.e
  store atomic i32 %i.p, ptr %i.d monotonic, align 8
  br label %_ZN12hb_bit_set_t8page_forEjb.exit

_ZN12hb_bit_set_t8page_forEjb.exit:               ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i, %bb.c
  %i.x = phi i64 [ %i.q, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i ], [ %i.k, %bb.c ]
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !78 ; 2 uses
  %.not = icmp eq ptr %.sink.i, null
  br i1 %.not, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !79
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %.sink.i, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.ad, align 4, !tbaa !34
  %i.ae = and i32 %1, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = xor i64 %i.ag, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aj = lshr i32 %1, 6
  %i.ak = and i32 %i.aj, 7
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.al ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !81
  %i.ao = and i64 %i.an, %i.ah
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !81
  store i32 -1, ptr %i.ac, align 8, !tbaa !84
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.thread

_ZN12hb_bit_set_t8page_forEjb.exit.thread:        ; preds = %bb.g, %._crit_edge.i, %bb.h, %_ZN12hb_bit_set_t8page_forEjb.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !33, !range !37, !noundef !38
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = icmp ne i32 %1, -1
  %or.cond.not = and i1 %i.c, %i.b
  br i1 %or.cond.not, label %bb.b, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, !prof !181

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.d, align 4, !tbaa !34
  %i.e = lshr i32 %1, 9                           ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !75   ; 3 uses
  %i.j = icmp ult i32 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !66   ; 3 uses
  br i1 %i.j, label %bb.c, label %._crit_edge.i, !prof !43

bb.c:                                             ; preds = %bb.b
  %i.m = zext i32 %i.g to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !77
  %.not.i = icmp eq i32 %i.o, %i.e
  br i1 %.not.i, label %_ZN12hb_bit_set_t8page_forEjb.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !85   ; 2 uses
  %.not1.i.i.i.i.i = icmp sgt i32 %i.i, 0
  br i1 %.not1.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge.i
  %i.r = add nsw i32 %i.i, -1
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i.i
  %.0203.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i, %bb.g ], [ %i.r, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i, %bb.g ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.s = add i32 %.0212.i.i.i.i.i, %.0203.i.i.i.i.i
  %i.t = lshr i32 %i.s, 1                         ; 4 uses
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !77   ; 2 uses
  %i.y = icmp slt i32 %i.e, %i.x
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.z = add nsw i32 %i.t, -1
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.not28.i.i.i.i.i = icmp eq i32 %i.e, %i.x
  br i1 %.not28.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add nuw nsw i32 %i.t, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.223.i.i.i.i.i = phi i32 [ %i.aa, %bb.f ], [ %.0212.i.i.i.i.i, %bb.d ] ; 3 uses
  %.2.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i, %bb.f ], [ %i.z, %bb.d ] ; 2 uses
  %.not.not.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i, %.2.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

.loopexit.i:                                      ; preds = %bb.g, %._crit_edge.i
  %storemerge.i.i.ph.sink.i.i.ph.i = phi i32 [ 0, %._crit_edge.i ], [ %.223.i.i.i.i.i, %bb.g ] ; 3 uses
  %i.ab = add i32 %i.q, 1
  %i.ac = tail call noundef zeroext i1 @_ZN12hb_bit_set_t6resizeEjbb(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.ab, i1 noundef zeroext true, i1 noundef zeroext false)
  br i1 %i.ac, label %bb.h, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, !prof !43

bb.h:                                             ; preds = %.loopexit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !78
  %i.af = zext i32 %i.q to i64                    ; 2 uses
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i8 0, i64 64, i1 false), !tbaa !81
  store i32 0, ptr %i.ag, align 8, !tbaa !84
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !86
  %i.aj = zext nneg i32 %storemerge.i.i.ph.sink.i.i.ph.i to i64 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.h, align 4, !tbaa !75
  %i.an = xor i32 %storemerge.i.i.ph.sink.i.i.ph.i, -1
  %i.ao = add i32 %i.am, %i.an
  %i.ap = shl i32 %i.ao, 3
  %i.aq = zext i32 %i.ap to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.al, ptr align 4 %i.ak, i64 %i.aq, i1 false)
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !86
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aj
  %.sroa.5.0.insert.shift.i = shl nuw i64 %i.af, 32
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.e to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.as, align 4
  %.pre20.i = load ptr, ptr %i.k, align 8, !tbaa !86
  br label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i: ; preds = %bb.e, %bb.h
  %.pre-phi.i = phi i64 [ %i.aj, %bb.h ], [ %i.u, %bb.e ]
  %i.at = phi ptr [ %.pre20.i, %bb.h ], [ %i.l, %bb.e ]
  %storemerge.i.i.ph.sink.i.i17.i = phi i32 [ %storemerge.i.i.ph.sink.i.i.ph.i, %bb.h ], [ %i.t, %bb.e ]
  store atomic i32 %storemerge.i.i.ph.sink.i.i17.i, ptr %i.f monotonic, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.pre-phi.i
  br label %_ZN12hb_bit_set_t8page_forEjb.exit

_ZN12hb_bit_set_t8page_forEjb.exit:               ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i, %bb.c
  %.sink30.i = phi ptr [ %i.au, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i ], [ %i.n, %bb.c ]
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !78 ; 2 uses
  %.not = icmp eq ptr %.sink.i, null
  br i1 %.not, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, label %bb.i, !prof !182

bb.i:                                             ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.sink30.i, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !79
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [72 x i8], ptr %.sink.i, i64 %i.ax ; 2 uses
  %i.az = and i32 %1, 63
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl nuw i64 1, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = lshr i32 %1, 6
  %i.be = and i32 %i.bd, 7
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bf ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !81
  %i.bi = or i64 %i.bh, %i.bb
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !81
  store i32 -1, ptr %i.ay, align 8, !tbaa !84
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.thread

_ZN12hb_bit_set_t8page_forEjb.exit.thread:        ; preds = %.loopexit.i, %bb.i, %_ZN12hb_bit_set_t8page_forEjb.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_bit_set_t6resizeEjbb(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !33, !range !37, !noundef !38
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.j, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !85
  %i.f = icmp ult i32 %i.e, %1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.c, align 8, !tbaa !184
  %i.h = icmp ult i32 %i.g, %1
  %i.i = icmp ult i32 %1, 3
  %or.cond = and i1 %i.i, %i.h
  %spec.select = or i1 %3, %or.cond
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.shrunk = phi i1 [ %3, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %i.j = icmp slt i32 %1, 0
  br i1 %i.j, label %.critedge, label %bb.e, !prof !35

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %1, i1 noundef zeroext %.0.shrunk)
  br i1 %i.k, label %bb.f, label %.critedge, !prof !185

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.d, align 4, !tbaa !68   ; 2 uses
  %i.m = icmp ugt i32 %1, %i.l
  %brmerge.not.i = and i1 %2, %i.m
  br i1 %brmerge.not.i, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !69   ; 5 uses
  %i.p = zext i32 %i.l to i64                     ; 4 uses
  %wide.trip.count.i.i = zext nneg i32 %1 to i64  ; 3 uses
  %i.q = sub nsw i64 %wide.trip.count.i.i, %i.p
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i, %.prol.preheader
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.prol.preheader ], [ %i.p, %.lr.ph.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i ]
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i.i.prol ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, i8 0, i64 64, i1 false), !tbaa !81
  store i32 0, ptr %i.r, align 8, !tbaa !84
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !183

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.p, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.prol, %.prol.preheader ]
  %i.t = sub nsw i64 %i.p, %wide.trip.count.i.i
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i.new ], [ %indvars.iv.i.i.unr, %.prol.loopexit ] ; 5 uses
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i.i ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.w, i8 0, i64 64, i1 false), !tbaa !81
  store i32 0, ptr %i.v, align 8, !tbaa !84
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i.i ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, i8 0, i64 64, i1 false), !tbaa !81
  store i32 0, ptr %i.y, align 8, !tbaa !84
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i.i ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, i8 0, i64 64, i1 false), !tbaa !81
  store i32 0, ptr %i.ab, align 8, !tbaa !84
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i.i ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 216
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.af, i8 0, i64 64, i1 false), !tbaa !81
  store i32 0, ptr %i.ae, align 8, !tbaa !84
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %.loopexit, label %.lr.ph.i.i.new, !llvm.loop !2

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.i.i.new, %bb.f
  store i32 %1, ptr %i.d, align 4, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = tail call noundef zeroext i1 @_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i32 noundef %1, i1 noundef zeroext false)
  br i1 %i.ah, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.loopexit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !65 ; 3 uses
  %i.ak = icmp ugt i32 %1, %i.aj
  %brmerge.not.i15 = and i1 %2, %i.ak
  br i1 %brmerge.not.i15, label %bb.h, label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit

bb.h:                                             ; preds = %bb.g
  %i.al = sub nuw nsw i32 %1, %i.aj
  %i.am = shl i32 %i.al, 3                        ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit, label %bb.i, !prof !35

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !66
  %i.ap = zext nneg i32 %i.aj to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = zext i32 %i.am to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aq, i8 0, i64 %i.ar, i1 false)
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit

_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit: ; preds = %bb.g, %bb.h, %bb.i
  store i32 %1, ptr %i.ai, align 4, !tbaa !65
  br label %bb.j

.critedge:                                        ; preds = %.loopexit, %bb.e, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !75
  %i.au = tail call noundef zeroext i1 @_ZN11hb_vector_tI13hb_bit_page_tLb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %i.at, i1 noundef zeroext %2, i1 noundef zeroext %.0.shrunk) ; 0 uses
  store i8 0, ptr %0, align 8, !tbaa !33
  br label %bb.j

bb.j:                                             ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit, %bb.a, %.critedge
  %.012 = phi i1 [ false, %bb.a ], [ false, %.critedge ], [ true, %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit ]
  ret i1 %.012
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tI13hb_bit_page_tLb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %3)
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !68   ; 2 uses
  %i.e = icmp ugt i32 %1, %i.d
  %brmerge.not = and i1 %i.e, %2
  br i1 %brmerge.not, label %.lr.ph.i, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69   ; 5 uses
  %i.h = zext i32 %i.d to i64                     ; 4 uses
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 3 uses
  %i.i = sub nsw i64 %wide.trip.count.i, %i.h
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
end_hunk_1
