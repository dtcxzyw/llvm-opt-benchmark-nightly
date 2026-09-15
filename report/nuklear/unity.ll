Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_tree_base:bb.a
  br i1 %.not26.i, label %.loopexit, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %bb.d, %._crit_edge.i
  %.01627.i = phi ptr [ %.016.i, %._crit_edge.i ], [ %.01625.i, %bb.d ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01627.i, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !555  ; 2 uses
  %.not1923.not.i = icmp eq i32 %i.j, 0
  br i1 %.not1923.not.i, label %._crit_edge.i, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.lr.ph29.i
  %i.k = getelementptr inbounds nuw i8, ptr %.01627.i, i64 8
  %wide.trip.count.i = zext i32 %i.j to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.f, !llvm.loop !40

bb.f:                                             ; preds = %bb.e, %.lr.ph.i25
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i25 ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !55
  %i.n = icmp eq i32 %i.m, %.021
  br i1 %i.n, label %nk_find_value.exit, label %bb.e

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph29.i
  %i.o = getelementptr inbounds nuw i8, ptr %.01627.i, i64 560
  %.016.i = load ptr, ptr %i.o, align 8, !tbaa !554 ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph29.i

nk_find_value.exit:                               ; preds = %bb.f
  %i.p = load i32, ptr %i.b, align 8, !tbaa !236
  store i32 %i.p, ptr %.01627.i, align 8, !tbaa !468
  %i.q = getelementptr inbounds nuw i8, ptr %.01627.i, i64 284
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
  br label %bb.g

.loopexit:                                        ; preds = %._crit_edge.i, %bb.d
  %i.s = tail call fastcc ptr @nk_add_value(ptr noundef %0, ptr noundef %i.b, i32 noundef %.021) ; 2 uses
  store i32 %4, ptr %i.s, align 4, !tbaa !55
  br label %bb.g

bb.g:                                             ; preds = %nk_find_value.exit, %.loopexit
  %.0 = phi ptr [ %i.r, %nk_find_value.exit ], [ %i.s, %.loopexit ]
  %i.t = tail call fastcc i32 @nk_tree_state_base(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %.0)
  ret i32 %i.t
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_tree_image_push_hashed(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(address_is_null) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #17 {
bb.a:
  %i.a = call fastcc i32 @nk_tree_base(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7)
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_tree_pop(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #22 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nk_tree_state_pop.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not14.i = icmp eq ptr %i.b, null
  br i1 %.not14.i, label %nk_tree_state_pop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 5 uses
  %.not15.i = icmp eq ptr %i.d, null
  br i1 %.not15.i, label %nk_tree_state_pop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8432
  %i.f = load float, ptr %i.e, align 8, !tbaa !552 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !485
  %i.i = load i32, ptr %i.h, align 4, !tbaa !55
  %i.j = uitofp i32 %i.i to float
  %i.k = fadd float %i.f, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.m = load float, ptr %i.l, align 8, !tbaa !538
  %i.n = fsub float %i.m, %i.k
  store float %i.n, ptr %i.l, align 8, !tbaa !538
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9668
  %i.p = load float, ptr %i.o, align 4, !tbaa !553
  %i.q = fadd float %i.f, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.s = load float, ptr %i.r, align 8, !tbaa !490
  %i.t = fadd float %i.s, %i.q
  store float %i.t, ptr %i.r, align 8, !tbaa !490
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !498
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.u, align 8, !tbaa !498
  br label %nk_tree_state_pop.exit

nk_tree_state_pop.exit:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_tree_element_push_hashed(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call fastcc i32 @nk_tree_element_base(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7)
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @nk_tree_element_base(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef captures(address_is_null) %5, ptr nofree noundef readonly captures(address_is_null) %6, i32 noundef %7, i32 noundef %8) unnamed_addr #20 {
bb.a:
  %9 = alloca %struct.nk_rect, align 8            ; 12 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !415  ; 3 uses
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not5.i = icmp eq ptr %3, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.e = load i8, ptr %3, align 1, !tbaa !56
  %.not4.i41 = icmp eq i8 %i.e, 0
  br i1 %.not4.i41, label %nk_strlen.exit, label %.lr.ph.i.preheader50

.lr.ph.i.preheader50:                             ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %3, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.f = trunc i64 %strlen to i32
  %i.g = add i32 %i.f, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader50, %.lr.ph.i.preheader, %bb.b
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ 0, %.lr.ph.i.preheader ], [ %i.g, %.lr.ph.i.preheader50 ]
  %i.h = tail call i32 @nk_murmur_hash(ptr noundef %3, i32 noundef %.0.lcssa.i, i32 noundef %8)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i32 @nk_murmur_hash(ptr noundef nonnull %6, i32 noundef %7, i32 noundef %8)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %nk_strlen.exit
  %.023 = phi i32 [ %i.i, %bb.c ], [ %i.h, %nk_strlen.exit ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  %.01625.i = load ptr, ptr %i.j, align 8, !tbaa !554 ; 2 uses
  %.not26.i = icmp eq ptr %.01625.i, null
  br i1 %.not26.i, label %.loopexit, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %bb.d, %._crit_edge.i
  %.01627.i = phi ptr [ %.016.i, %._crit_edge.i ], [ %.01625.i, %bb.d ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01627.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !555  ; 2 uses
  %.not1923.not.i = icmp eq i32 %i.l, 0
  br i1 %.not1923.not.i, label %._crit_edge.i, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph29.i
  %i.m = getelementptr inbounds nuw i8, ptr %.01627.i, i64 8
  %wide.trip.count.i = zext i32 %i.l to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.f, !llvm.loop !40

bb.f:                                             ; preds = %bb.e, %.lr.ph.i27
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i27 ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !55
  %i.p = icmp eq i32 %i.o, %.023
  br i1 %i.p, label %nk_find_value.exit, label %bb.e

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph29.i
  %i.q = getelementptr inbounds nuw i8, ptr %.01627.i, i64 560
  %.016.i = load ptr, ptr %i.q, align 8, !tbaa !554 ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph29.i

nk_find_value.exit:                               ; preds = %bb.f
  %i.r = load i32, ptr %i.d, align 8, !tbaa !236
  store i32 %i.r, ptr %.01627.i, align 8, !tbaa !468
  %i.s = getelementptr inbounds nuw i8, ptr %.01627.i, i64 284
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  br label %bb.g

.loopexit:                                        ; preds = %._crit_edge.i, %bb.d
  %i.u = tail call fastcc ptr @nk_add_value(ptr noundef %0, ptr noundef %i.d, i32 noundef %.023) ; 2 uses
  store i32 %4, ptr %i.u, align 4, !tbaa !55
  br label %bb.g

bb.g:                                             ; preds = %nk_find_value.exit, %.loopexit
  %.0 = phi ptr [ %i.t, %nk_find_value.exit ], [ %i.u, %.loopexit ] ; 4 uses
  %.not5.i28 = icmp ne ptr %3, null               ; 3 uses
  br i1 %.not5.i28, label %.lr.ph.i29.preheader, label %nk_strlen.exit34

.lr.ph.i29.preheader:                             ; preds = %bb.g
  %i.v = load i8, ptr %3, align 1, !tbaa !56
  %.not4.i3244 = icmp eq i8 %i.v, 0
  br i1 %.not4.i3244, label %nk_strlen.exit34, label %.lr.ph.i29.preheader49

.lr.ph.i29.preheader49:                           ; preds = %.lr.ph.i29.preheader
  %scevgep54 = getelementptr i8, ptr %3, i64 1
  %strlen55 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep54)
  %i.w = trunc i64 %strlen55 to i32
  %i.x = add i32 %i.w, 1
  br label %nk_strlen.exit34

nk_strlen.exit34:                                 ; preds = %.lr.ph.i29.preheader49, %.lr.ph.i29.preheader, %bb.g
  %.0.lcssa.i33 = phi i32 [ 0, %bb.g ], [ 0, %.lr.ph.i29.preheader ], [ %i.x, %.lr.ph.i29.preheader49 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i32 0, ptr %i.a, align 4, !tbaa !55
  %.not.i35 = icmp eq ptr %0, null
  br i1 %.not.i35, label %nk_tree_element_image_push_hashed_base.exit, label %bb.h

bb.h:                                             ; preds = %nk_strlen.exit34
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !415  ; 5 uses
  %.not139.i = icmp eq ptr %i.y, null
  br i1 %.not139.i, label %nk_tree_element_image_push_hashed_base.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 168 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !416 ; 16 uses
  %.not140.i = icmp eq ptr %i.aa, null
  br i1 %.not140.i, label %nk_tree_element_image_push_hashed_base.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 104 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 9644
  %.sroa.028.0.copyload.i = load float, ptr %i.ad, align 4, !tbaa !54 ; 2 uses
  %.sroa.631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9648 ; 2 uses
  %.sroa.631.0.copyload.i = load float, ptr %.sroa.631.0..sroa_idx.i, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1720 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1996
  %.sroa.037.0.copyload.i = load float, ptr %i.af, align 4, !tbaa !54
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !414
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !140
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8436
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8440
  %i.al = load float, ptr %i.ak, align 8, !tbaa !546
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float 2.000000e+00, float %i.ai) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 124
  store float %i.am, ptr %i.an, align 4, !tbaa !425
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 9536
  %.sroa.03.0.copyload.i.i.i.i = load i32, ptr %i.ao, align 8
  %.sroa.3.0.copyload.i.i.i.i = load float, ptr %.sroa.631.0..sroa_idx.i, align 8, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 116
  store i32 0, ptr %i.ap, align 4, !tbaa !494
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 120 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !499
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 44 ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !502
  %i.au = fadd float %i.ar, %i.at                 ; 2 uses
  store float %i.au, ptr %i.as, align 4, !tbaa !502
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  store i32 1, ptr %i.av, align 8, !tbaa !495
  %storemerge.i.i.i.i = fadd float %i.am, %.sroa.3.0.copyload.i.i.i.i ; 2 uses
  store float %storemerge.i.i.i.i, ptr %i.aq, align 8, !tbaa !499
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 152 ; 2 uses
  store float 0.000000e+00, ptr %i.aw, align 8, !tbaa !543
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !488
  %i.az = and i32 %i.ay, 2048
  %.not36.i.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not36.i.i.i.i, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  store i32 0, ptr %i.ba, align 8, !tbaa !544
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  store ptr null, ptr %i.bb, align 8, !tbaa !496
  store <2 x float> zeroinitializer, ptr %i.aw, align 8, !tbaa !54
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  store float 0.000000e+00, ptr %i.bc, align 8, !tbaa !497
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 76
  %i.be = load float, ptr %i.bd, align 4, !tbaa !480
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 84
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !478
  %.sroa.5.8.vec.insert.i.i.i.i = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bh = fadd float %i.au, -1.000000e+00
  %.sroa.0.4.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i.i, float %i.bh, i64 1
  %i.bi = fadd float %storemerge.i.i.i.i, 1.000000e+00
  %.sroa.5.12.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.5.8.vec.insert.i.i.i.i, float %i.bi, i64 1
  tail call void @nk_fill_rect(ptr noundef nonnull %i.ab, <2 x float> %.sroa.0.4.vec.insert.i.i.i.i, <2 x float> %.sroa.5.12.vec.insert.i.i.i.i, float noundef 0.000000e+00, i32 %.sroa.03.0.copyload.i.i.i.i)
  %.pre.i.i = load ptr, ptr %i.z, align 8, !tbaa !416 ; 4 uses
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !415 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 112
  store i32 0, ptr %i.bj, align 8, !tbaa !544
  %i.bk = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 136
  store ptr null, ptr %i.bk, align 8, !tbaa !496
  %i.bl = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 152
  store <2 x float> zeroinitializer, ptr %i.bl, align 8, !tbaa !54
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 144
  store float 0.000000e+00, ptr %i.bm, align 8, !tbaa !497
  %.not13.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not13.i.i, label %nk_layout_reset_min_row_height.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.i, i64 168
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !416 ; 2 uses
  %.not14.i.i = icmp eq ptr %.pre, null
  br i1 %.not14.i.i, label %nk_layout_reset_min_row_height.exit.i, label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  %i.bn = phi ptr [ %i.aa, %.thread ], [ %.pre, %bb.l ]
  %i.bo = load ptr, ptr %i.ac, align 8, !tbaa !426
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !140
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 124
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !417
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float 2.000000e+00, float %i.bq)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 9636
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !418
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float 2.000000e+00, float %i.bu)
  store float %i.bx, ptr %i.br, align 4, !tbaa !425
  br label %nk_layout_reset_min_row_height.exit.i

nk_layout_reset_min_row_height.exit.i:            ; preds = %bb.m, %bb.l, %bb.k
  %i.by = call i32 @nk_widget(ptr noundef nonnull %9, ptr noundef nonnull readonly %0)
  %i.bz = icmp eq i32 %1, 1
  br i1 %i.bz, label %bb.n, label %bb.t

bb.n:                                             ; preds = %nk_layout_reset_min_row_height.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 7504
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !413
  switch i32 %i.cb, label %bb.t [
    i32 1, label %nk_rgb_factor.exit.i
    i32 2, label %nk_rgb_factor.exit156.i
    i32 0, label %bb.o
  ]

nk_rgb_factor.exit.i:                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 7512
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8452
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !547 ; 2 uses
  %i.cf = fcmp oeq float %i.ce, 1.000000e+00
  %i.cg = fmul float %i.ce, 2.550000e+02
  %i.ch = fptoui float %i.cg to i8
  %i.ci = zext i8 %i.ch to i32
  %i.cj = mul nuw nsw i32 %i.ci, 65793
  %i.ck = or disjoint i32 %i.cj, -16777216
  %.sroa.011.0.insert.insert.i.i = select i1 %i.cf, i32 -1, i32 %i.ck
  %i.cl = load <2 x float>, ptr %9, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cn = load <2 x float>, ptr %i.cm, align 8
  tail call void @nk_draw_image(ptr noundef nonnull %i.ab, <2 x float> %i.cl, <2 x float> %i.cn, ptr noundef nonnull readonly %i.cc, i32 %.sroa.011.0.insert.insert.i.i)
  br label %bb.t

nk_rgb_factor.exit156.i:                          ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 7512
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8452
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !547 ; 2 uses
  %i.cr = fcmp oeq float %i.cq, 1.000000e+00
  %i.cs = fmul float %i.cq, 2.550000e+02
  %i.ct = fptoui float %i.cs to i8
  %i.cu = zext i8 %i.ct to i32
  %i.cv = mul nuw nsw i32 %i.cu, 65793
  %i.cw = or disjoint i32 %i.cv, -16777216
  %.sroa.011.0.insert.insert.i155.i = select i1 %i.cr, i32 -1, i32 %i.cw
  %i.cx = load <2 x float>, ptr %9, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cz = load <2 x float>, ptr %i.cy, align 8
  tail call void @nk_draw_nine_slice(ptr noundef nonnull %i.ab, <2 x float> %i.cx, <2 x float> %i.cz, ptr noundef nonnull readonly %i.co, i32 %.sroa.011.0.insert.insert.i155.i)
  br label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 7544
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8452 ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !547 ; 4 uses
  %i.dd = load i32, ptr %i.da, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i.i = lshr i32 %i.dd, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i = lshr i32 %i.dd, 16 ; 2 uses
  %i.de = fcmp oeq float %i.dc, 1.000000e+00
  br i1 %i.de, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.7.0.extract.trunc.i.i = trunc i32 %.sroa.7.0.extract.shift.i.i to i8
  %.sroa.5.0.extract.trunc.i.i = trunc i32 %.sroa.5.0.extract.shift.i.i to i8
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.dd to i8
  br label %nk_rgb_factor.exit168.i

bb.q:                                             ; preds = %bb.o
  %i.df = and i32 %i.dd, 255
  %i.dg = uitofp nneg i32 %i.df to float
  %i.dh = fmul float %i.dc, %i.dg
  %i.di = fptoui float %i.dh to i8
  %i.dj = and i32 %.sroa.5.0.extract.shift.i.i, 255
  %i.dk = uitofp nneg i32 %i.dj to float
  %i.dl = fmul float %i.dc, %i.dk
  %i.dm = fptoui float %i.dl to i8
  %i.dn = and i32 %.sroa.7.0.extract.shift.i.i, 255
  %i.do = uitofp nneg i32 %i.dn to float
  %i.dp = fmul float %i.dc, %i.do
  %i.dq = fptoui float %i.dp to i8
  br label %nk_rgb_factor.exit168.i

nk_rgb_factor.exit168.i:                          ; preds = %bb.q, %bb.p
  %.sroa.3.0.i157.i = phi i8 [ %.sroa.5.0.extract.trunc.i.i, %bb.p ], [ %i.dm, %bb.q ]
  %.sroa.011.0.i158.i = phi i8 [ %.sroa.0.0.extract.trunc.i.i, %bb.p ], [ %i.di, %bb.q ]
  %.sroa.512.0.i159.i = phi i8 [ %.sroa.7.0.extract.trunc.i.i, %bb.p ], [ %i.dq, %bb.q ]
  %.sroa.9.0.extract.shift.i.i = and i32 %i.dd, -16777216
  %.sroa.512.0.insert.ext.i160.i = zext i8 %.sroa.512.0.i159.i to i32
  %.sroa.512.0.insert.shift.i161.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i160.i, 16
  %.sroa.512.0.insert.insert.i162.i = or disjoint i32 %.sroa.512.0.insert.shift.i161.i, %.sroa.9.0.extract.shift.i.i
  %.sroa.3.0.insert.ext.i163.i = zext i8 %.sroa.3.0.i157.i to i32
  %.sroa.3.0.insert.shift.i164.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i163.i, 8
  %.sroa.3.0.insert.insert.i165.i = or disjoint i32 %.sroa.512.0.insert.insert.i162.i, %.sroa.3.0.insert.shift.i164.i
  %.sroa.011.0.insert.ext.i166.i = zext i8 %.sroa.011.0.i158.i to i32
  %.sroa.011.0.insert.insert.i167.i = or disjoint i32 %.sroa.3.0.insert.insert.i165.i, %.sroa.011.0.insert.ext.i166.i
  %i.dr = load <2 x float>, ptr %9, align 8       ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dt = load <2 x float>, ptr %i.ds, align 8    ; 3 uses
  tail call void @nk_fill_rect(ptr noundef nonnull %i.ab, <2 x float> %i.dr, <2 x float> %i.dt, float noundef 0.000000e+00, i32 %.sroa.011.0.insert.insert.i167.i)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8424
  %i.dv = load float, ptr %i.du, align 8, !tbaa !548 ; 2 uses
  %i.dw = fmul float %i.dv, 2.000000e+00
  %i.dx = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dz = fadd <2 x float> %i.dr, %i.dy
  %i.ea = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ec = fcmp olt <2 x float> %i.dt, %i.eb
  %i.ed = select <2 x i1> %i.ec, <2 x float> %i.eb, <2 x float> %i.dt
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> splat (float -2.000000e+00), <2 x float> %i.ed)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8428
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !549
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 7512
  %i.ei = load float, ptr %i.db, align 4, !tbaa !547 ; 4 uses
  %i.ej = load i32, ptr %i.eh, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i169.i = lshr i32 %i.ej, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i170.i = lshr i32 %i.ej, 16 ; 2 uses
  %i.ek = fcmp oeq float %i.ei, 1.000000e+00
  br i1 %i.ek, label %bb.r, label %bb.s

bb.r:                                             ; preds = %nk_rgb_factor.exit168.i
  %.sroa.7.0.extract.trunc.i183.i = trunc i32 %.sroa.7.0.extract.shift.i170.i to i8
  %.sroa.5.0.extract.trunc.i184.i = trunc i32 %.sroa.5.0.extract.shift.i169.i to i8
  %.sroa.0.0.extract.trunc.i185.i = trunc i32 %i.ej to i8
  br label %nk_rgb_factor.exit186.i

bb.s:                                             ; preds = %nk_rgb_factor.exit168.i
  %i.el = and i32 %i.ej, 255
  %i.em = uitofp nneg i32 %i.el to float
  %i.en = fmul float %i.ei, %i.em
  %i.eo = fptoui float %i.en to i8
  %i.ep = and i32 %.sroa.5.0.extract.shift.i169.i, 255
  %i.eq = uitofp nneg i32 %i.ep to float
  %i.er = fmul float %i.ei, %i.eq
  %i.es = fptoui float %i.er to i8
  %i.et = and i32 %.sroa.7.0.extract.shift.i170.i, 255
  %i.eu = uitofp nneg i32 %i.et to float
  %i.ev = fmul float %i.ei, %i.eu
  %i.ew = fptoui float %i.ev to i8
  br label %nk_rgb_factor.exit186.i

nk_rgb_factor.exit186.i:                          ; preds = %bb.s, %bb.r
  %.sroa.3.0.i171.i = phi i8 [ %.sroa.5.0.extract.trunc.i184.i, %bb.r ], [ %i.es, %bb.s ]
  %.sroa.011.0.i172.i = phi i8 [ %.sroa.0.0.extract.trunc.i185.i, %bb.r ], [ %i.eo, %bb.s ]
  %.sroa.512.0.i173.i = phi i8 [ %.sroa.7.0.extract.trunc.i183.i, %bb.r ], [ %i.ew, %bb.s ]
  %.sroa.9.0.extract.shift.i174.i = and i32 %i.ej, -16777216
  %.sroa.512.0.insert.ext.i175.i = zext i8 %.sroa.512.0.i173.i to i32
  %.sroa.512.0.insert.shift.i176.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i175.i, 16
  %.sroa.512.0.insert.insert.i177.i = or disjoint i32 %.sroa.512.0.insert.shift.i176.i, %.sroa.9.0.extract.shift.i174.i
  %.sroa.3.0.insert.ext.i178.i = zext i8 %.sroa.3.0.i171.i to i32
  %.sroa.3.0.insert.shift.i179.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i178.i, 8
  %.sroa.3.0.insert.insert.i180.i = or disjoint i32 %.sroa.512.0.insert.insert.i177.i, %.sroa.3.0.insert.shift.i179.i
  %.sroa.011.0.insert.ext.i181.i = zext i8 %.sroa.011.0.i172.i to i32
  %.sroa.011.0.insert.insert.i182.i = or disjoint i32 %.sroa.3.0.insert.insert.i180.i, %.sroa.011.0.insert.ext.i181.i
  tail call void @nk_fill_rect(ptr noundef nonnull %i.ab, <2 x float> %i.dz, <2 x float> %i.ee, float noundef %i.eg, i32 %.sroa.011.0.insert.insert.i182.i)
  br label %bb.t

bb.t:                                             ; preds = %nk_rgb_factor.exit186.i, %nk_rgb_factor.exit156.i, %nk_rgb_factor.exit.i, %bb.n, %nk_layout_reset_min_row_height.exit.i
  %.209.i = phi i64 [ 7552, %nk_rgb_factor.exit186.i ], [ 7552, %nk_rgb_factor.exit156.i ], [ 7552, %nk_rgb_factor.exit.i ], [ 7552, %bb.n ], [ 7984, %nk_layout_reset_min_row_height.exit.i ]
  %.210.i = phi i64 [ 7768, %nk_rgb_factor.exit186.i ], [ 7768, %nk_rgb_factor.exit156.i ], [ 7768, %nk_rgb_factor.exit.i ], [ 7768, %bb.n ], [ 8200, %nk_layout_reset_min_row_height.exit.i ]
  %i.ex = load i32, ptr %i.ax, align 4, !tbaa !488
  %i.ey = and i32 %i.ex, 4096
  %.not141.i = icmp eq i32 %i.ey, 0
  %i.ez = icmp eq i32 %i.by, 1
  %or.cond.i = select i1 %.not141.i, i1 %i.ez, i1 false
  %i.fa = select i1 %or.cond.i, ptr %0, ptr null  ; 3 uses
  %i.fb = load i32, ptr %.0, align 4, !tbaa !55
  %i.fc = icmp eq i32 %i.fb, 1                    ; 2 uses
  %.sink.i = select i1 %i.fc, i64 %.209.i, i64 %.210.i
  %.0129.in.i.v = select i1 %i.fc, i64 8420, i64 8416
  %.0129.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0129.in.i.v
  %.0129.i = load i32, ptr %.0129.in.i, align 4, !tbaa !55
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  %i.fe = load ptr, ptr %i.ac, align 8, !tbaa !414 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load float, ptr %i.ff, align 8, !tbaa !140 ; 4 uses
  %i.fh = insertelement <2 x float> poison, float %i.fg, i64 0
  %.sroa.8.8.vec.insert.i = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = load <2 x float>, ptr %9, align 8, !tbaa !54 ; 2 uses
  %i.fj = load <2 x float>, ptr %i.aj, align 4, !tbaa !54
  %i.fk = fadd <2 x float> %i.fi, %i.fj           ; 4 uses
  %i.fl = call fastcc zeroext i1 @nk_do_button_symbol(ptr noundef %i.a, ptr noundef nonnull %i.ab, <2 x float> %i.fk, <2 x float> %.sroa.8.8.vec.insert.i, i32 noundef %.0129.i, i32 noundef 0, ptr noundef nonnull readonly %i.fd, ptr noundef %i.fa, ptr noundef %i.fe)
  br i1 %i.fl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fm = load i32, ptr %.0, align 4, !tbaa !55
  %i.fn = icmp ne i32 %i.fm, 1
  %i.fo = zext i1 %i.fn to i32
  store i32 %i.fo, ptr %.0, align 4, !tbaa !55
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  store i32 0, ptr %i.b, align 4, !tbaa !55
  br i1 %.not5.i28, label %.lr.ph.i.preheader.i, label %nk_strlen.exit.i

.lr.ph.i.preheader.i:                             ; preds = %bb.v
  %i.fp = load i8, ptr %3, align 1, !tbaa !56
  %.not4.i190.i = icmp eq i8 %i.fp, 0
  br i1 %.not4.i190.i, label %nk_strlen.exit.i, label %.lr.ph.i.preheader193.i

.lr.ph.i.preheader193.i:                          ; preds = %.lr.ph.i.preheader.i
  %scevgep.i = getelementptr i8, ptr %3, i64 1
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep.i)
  %i.fq = trunc i64 %strlen.i to i32
  %i.fr = add i32 %i.fq, 1
  br label %nk_strlen.exit.i

nk_strlen.exit.i:                                 ; preds = %.lr.ph.i.preheader193.i, %.lr.ph.i.preheader.i, %bb.v
  %.0.lcssa.i.i = phi i32 [ 0, %bb.v ], [ 0, %.lr.ph.i.preheader.i ], [ %i.fr, %.lr.ph.i.preheader193.i ]
  %i.fs = load ptr, ptr %i.ac, align 8, !tbaa !414 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !139
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fw = load float, ptr %i.fv, align 8, !tbaa !140
  %i.fx = load ptr, ptr %i.fs, align 8
  %i.fy = tail call float %i.fu(ptr %i.fx, float noundef %i.fw, ptr noundef %3, i32 noundef %.0.lcssa.i.i) #50, !inline_history !1073
  %i.fz = tail call float @llvm.fmuladd.f32(float %.sroa.037.0.copyload.i, float 4.000000e+00, float %i.fy) ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gb = load float, ptr %i.ga, align 8, !tbaa !113 ; 2 uses
  %i.gc = fadd float %.sroa.028.0.copyload.i, %i.fg ; 2 uses
  %i.gd = fcmp olt float %i.gb, %i.gc
  %i.ge = select i1 %i.gd, float %i.gc, float %i.gb
  %i.gf = extractelement <2 x float> %i.fk, i64 0
  %i.gg = fadd float %i.fg, %i.gf
  %i.gh = fadd float %.sroa.028.0.copyload.i, %i.gg ; 2 uses
  %i.gi = insertelement <2 x float> %i.fk, float %i.gh, i64 0 ; 2 uses
  %i.gj = fadd float %.sroa.631.0.copyload.i, %i.fg
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8432 ; 2 uses
  %i.gl = load float, ptr %i.gk, align 8, !tbaa !550
  %i.gm = fadd float %i.gj, %i.gl
  %i.gn = fsub float %i.ge, %i.gm                 ; 2 uses
  %i.go = fcmp olt float %i.gn, %i.fz
  %..i = select i1 %i.go, float %i.gn, float %i.fz
  %.sroa.6.8.vec.insert.i = insertelement <2 x float> poison, float %..i, i64 0
  %i.gp = load ptr, ptr %i.ac, align 8, !tbaa !414 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load float, ptr %i.gq, align 8, !tbaa !140
  %.sroa.6.12.vec.insert.i = insertelement <2 x float> %.sroa.6.8.vec.insert.i, float %i.gr, i64 1 ; 3 uses
  %.not142.i = icmp eq ptr %2, null
  br i1 %.not142.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %nk_strlen.exit.i
  %i.gs = call fastcc zeroext i1 @nk_do_selectable_image(ptr noundef %i.b, ptr noundef %i.ab, <2 x float> %i.gi, <2 x float> %.sroa.6.12.vec.insert.i, ptr noundef %3, i32 noundef %.0.lcssa.i33, i32 noundef 17, ptr noundef %5, ptr noundef nonnull readonly %2, ptr noundef readonly %i.ae, ptr noundef %i.fa, ptr noundef nonnull %i.gp) ; 0 uses
  br label %nk_do_selectable.exit.i

bb.x:                                             ; preds = %nk_strlen.exit.i
  %i.gt = icmp ne i32 %.0.lcssa.i33, 0
  %i.gu = icmp ne ptr %5, null
  %or.cond5.i.i = and i1 %i.gu, %i.gt
  %or.cond7.i.i = and i1 %.not5.i28, %or.cond5.i.i
  br i1 %or.cond7.i.i, label %bb.y, label %nk_do_selectable.exit.i

bb.y:                                             ; preds = %bb.x
  %i.gv = load i8, ptr %5, align 1, !tbaa !556, !range !88, !noundef !89 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 2004
  %i.gx = load <2 x float>, ptr %i.gw, align 4, !tbaa !54 ; 2 uses
  %i.gy = insertelement <2 x float> %i.fk, float %i.gh, i64 0
  %i.gz = fsub <2 x float> %i.gy, %i.gx
  %i.ha = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gx, <2 x float> splat (float 2.000000e+00), <2 x float> %.sroa.6.12.vec.insert.i)
  %i.hb = call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %i.b, <2 x float> %i.gz, <2 x float> %i.ha, ptr noundef readonly %i.fa, i32 noundef 0)
  br i1 %i.hb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hc = xor i8 %i.gv, 1                         ; 2 uses
  store i8 %i.hc, ptr %5, align 1, !tbaa !556
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.hd = phi i8 [ %i.hc, %bb.z ], [ %i.gv, %bb.y ]
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !557 ; 2 uses
  %.not.i189.i = icmp eq ptr %i.hf, null
  br i1 %.not.i189.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 2032
  %i.hh = load ptr, ptr %i.hg, align 8
  tail call void %i.hf(ptr noundef nonnull %i.ab, ptr %i.hh) #50, !inline_history !1074
  %.pre194.i = load i8, ptr %5, align 1, !tbaa !556, !range !88
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.hi = phi i8 [ %.pre194.i, %bb.ab ], [ %i.hd, %bb.aa ]
  %i.hj = load i32, ptr %i.b, align 4, !tbaa !55
  %i.hk = trunc nuw i8 %i.hi to i1
  tail call fastcc void @nk_draw_selectable(ptr noundef nonnull %i.ab, i32 noundef %i.hj, ptr noundef nonnull readonly %i.ae, i1 noundef zeroext %i.hk, <2 x float> %i.gi, <2 x float> %.sroa.6.12.vec.insert.i, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %3, i32 noundef %.0.lcssa.i33, i32 noundef 17, ptr noundef nonnull %i.gp)
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !558 ; 2 uses
  %.not51.i.i = icmp eq ptr %i.hm, null
  br i1 %.not51.i.i, label %nk_do_selectable.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 2032
  %i.ho = load ptr, ptr %i.hn, align 8
  tail call void %i.hm(ptr noundef nonnull %i.ab, ptr %i.ho) #50, !inline_history !1074
  br label %nk_do_selectable.exit.i

nk_do_selectable.exit.i:                          ; preds = %bb.ad, %bb.ac, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  %i.hp = load i32, ptr %.0, align 4, !tbaa !55
  %i.hq = icmp eq i32 %i.hp, 1
  br i1 %i.hq, label %bb.ae, label %nk_tree_element_image_push_hashed_base.exit

bb.ae:                                            ; preds = %nk_do_selectable.exit.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !485
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !55
  %i.hu = uitofp i32 %i.ht to float
  %i.hv = extractelement <2 x float> %i.fi, i64 0
  %i.hw = fadd float %i.hv, %i.hu
  %i.hx = load float, ptr %i.gk, align 8, !tbaa !550 ; 4 uses
  %i.hy = fadd float %i.hx, %i.hw
  %i.hz = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store float %i.hy, ptr %i.hz, align 8, !tbaa !538
  %i.ia = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ib = load float, ptr %i.ia, align 8, !tbaa !490 ; 2 uses
  %i.ic = fcmp olt float %i.ib, %i.hx
  %.143.i = select i1 %i.ic, float %i.hx, float %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 9668
  %i.ie = load float, ptr %i.id, align 4, !tbaa !551
  %i.if = fadd float %i.hx, %i.ie
  %i.ig = fsub float %.143.i, %i.if
  store float %i.ig, ptr %i.ia, align 8, !tbaa !490
  %i.ih = getelementptr inbounds nuw i8, ptr %i.aa, i64 176 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !498
  %i.ij = add nsw i32 %i.ii, 1
  store i32 %i.ij, ptr %i.ih, align 8, !tbaa !498
  br label %nk_tree_element_image_push_hashed_base.exit

nk_tree_element_image_push_hashed_base.exit:      ; preds = %nk_strlen.exit34, %bb.h, %bb.i, %nk_do_selectable.exit.i, %bb.ae
  %.0.i = phi i32 [ 1, %bb.ae ], [ 0, %nk_strlen.exit34 ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %nk_do_selectable.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #50
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_tree_element_image_push_hashed(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(address_is_null) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef captures(address_is_null) %5, ptr nofree noundef readonly captures(address_is_null) %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #17 {
bb.a:
  %i.a = call fastcc i32 @nk_tree_element_base(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8)
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_tree_element_pop(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #22 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nk_tree_state_pop.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not14.i = icmp eq ptr %i.b, null
  br i1 %.not14.i, label %nk_tree_state_pop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 5 uses
  %.not15.i = icmp eq ptr %i.d, null
  br i1 %.not15.i, label %nk_tree_state_pop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8432
  %i.f = load float, ptr %i.e, align 8, !tbaa !552 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !485
  %i.i = load i32, ptr %i.h, align 4, !tbaa !55
  %i.j = uitofp i32 %i.i to float
  %i.k = fadd float %i.f, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.m = load float, ptr %i.l, align 8, !tbaa !538
  %i.n = fsub float %i.m, %i.k
  store float %i.n, ptr %i.l, align 8, !tbaa !538
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9668
  %i.p = load float, ptr %i.o, align 4, !tbaa !553
  %i.q = fadd float %i.f, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.s = load float, ptr %i.r, align 8, !tbaa !490
  %i.t = fadd float %i.s, %i.q
  store float %i.t, ptr %i.r, align 8, !tbaa !490
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !498
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.u, align 8, !tbaa !498
  br label %nk_tree_state_pop.exit

nk_tree_state_pop.exit:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_group_scrolled_offset_begin(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #17 {
bb.a:
  %5 = alloca %struct.nk_rect, align 4            ; 8 uses
  %6 = alloca %struct.nk_window, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 5 uses
  call fastcc void @nk_panel_alloc_space(ptr noundef nonnull %5, ptr noundef %0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.f = load float, ptr %5, align 4, !tbaa !112  ; 2 uses
  %i.g = load float, ptr %i.e, align 4, !tbaa !112 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.i = load float, ptr %i.h, align 4, !tbaa !113
  %i.j = fadd float %i.g, %i.i
  %i.k = fcmp olt float %i.f, %i.j
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !113
  %i.n = fadd float %i.f, %i.m
  %i.o = fcmp olt float %i.g, %i.n
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !114 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.s = load float, ptr %i.r, align 4, !tbaa !114 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.u = load float, ptr %i.t, align 4, !tbaa !115
  %i.v = fadd float %i.s, %i.u
  %i.w = fcmp olt float %i.q, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !115
  %i.z = fadd float %i.q, %i.y
  %i.aa = fcmp uge float %i.s, %i.z
  %i.ab = and i32 %4, 2
  %.not = icmp eq i32 %i.ab, 0
  %or.cond = and i1 %.not, %i.aa
  br i1 %or.cond, label %bb.n, label %.critedge

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.old = and i32 %4, 2
  %.not.old = icmp eq i32 %.old, 0
  br i1 %.not.old, label %bb.n, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !235
  %i.ae = and i32 %i.ad, 4096
  %.035 = or i32 %i.ae, %4
end_hunk_0
begin_hunk_1_@nk_selectable_symbol_label:bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.preheader8 ]
  %i.d = tail call zeroext i1 @nk_selectable_symbol_text(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %.0.lcssa.i, i32 noundef %3, ptr noundef %4)
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_select_text(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #20 {
bb.a:
  %5 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nk_selectable_text.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 3 uses
  %.not30.i = icmp eq ptr %i.b, null
  br i1 %.not30.i, label %nk_selectable_text.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %nk_selectable_text.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.f = call i32 @nk_widget(ptr noundef nonnull %5, ptr noundef nonnull %0)
  switch i32 %i.f, label %bb.f [
    i32 0, label %nk_selectable_text.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !488
  %i.i = and i32 %i.h, 4096
  %.not32.i = icmp eq i32 %i.i, 0
  %spec.select.i = select i1 %.not32.i, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ null, %bb.d ], [ %spec.select.i, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !414  ; 2 uses
  %i.o = load <2 x float>, ptr %5, align 8        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load <2 x float>, ptr %i.p, align 8      ; 2 uses
  %i.r = icmp ne ptr %1, null
  %i.s = icmp ne i32 %2, 0
  %or.cond5.i.i = and i1 %i.r, %i.s
  %i.t = icmp ne ptr %i.n, null
  %or.cond11.i.i = and i1 %or.cond5.i.i, %i.t
  br i1 %or.cond11.i.i, label %bb.g, label %nk_selectable_text.exit

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2004
  %i.v = load <2 x float>, ptr %i.u, align 4, !tbaa !54 ; 2 uses
  %i.w = fsub <2 x float> %i.o, %i.v
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> splat (float 2.000000e+00), <2 x float> %i.q)
  %i.y = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %i.k, <2 x float> %i.w, <2 x float> %i.x, ptr noundef readonly %i.j, i32 noundef 0)
  %spec.select7 = xor i1 %4, %i.y                 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !557 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2032
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.aa(ptr noundef nonnull %i.l, ptr %i.ac) #50, !inline_history !41
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = load i32, ptr %i.k, align 8, !tbaa !55
  tail call fastcc void @nk_draw_selectable(ptr noundef nonnull %i.l, i32 noundef %i.ad, ptr noundef nonnull readonly %i.m, i1 noundef zeroext %spec.select7, <2 x float> %i.o, <2 x float> %i.q, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %i.n)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !558 ; 2 uses
  %.not51.i.i = icmp eq ptr %i.af, null
  br i1 %.not51.i.i, label %nk_selectable_text.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2032
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.af(ptr noundef nonnull %i.l, ptr %i.ah) #50, !inline_history !41
  br label %nk_selectable_text.exit

nk_selectable_text.exit:                          ; preds = %bb.i, %bb.j, %bb.a, %bb.b, %bb.c, %bb.d, %bb.f
  %.1.in = phi i1 [ %4, %bb.a ], [ %4, %bb.b ], [ %4, %bb.c ], [ %4, %bb.f ], [ %4, %bb.d ], [ %spec.select7, %bb.j ], [ %spec.select7, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  ret i1 %.1.in
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_selectable_label(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #17 {
bb.a:
  %.not5.i = icmp eq ptr %1, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !56
  %.not4.i4 = icmp eq i8 %i.a, 0
  br i1 %.not4.i4, label %nk_strlen.exit, label %.lr.ph.i.preheader7

.lr.ph.i.preheader7:                              ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.b = trunc i64 %strlen to i32
  %i.c = add i32 %i.b, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader7, %.lr.ph.i.preheader, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.preheader7 ]
  %i.d = tail call zeroext i1 @nk_selectable_text(ptr noundef %0, ptr noundef %1, i32 noundef %.0.lcssa.i, i32 noundef %2, ptr noundef %3)
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_selectable_image_label(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #20 {
bb.a:
  %5 = alloca %struct.nk_rect, align 8            ; 5 uses
  %6 = alloca %struct.nk_image, align 8           ; 4 uses
  %.not5.i = icmp eq ptr %2, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.a = load i8, ptr %2, align 1, !tbaa !56
  %.not4.i4 = icmp eq i8 %i.a, 0
  br i1 %.not4.i4, label %nk_strlen.exit, label %.lr.ph.i.preheader7

.lr.ph.i.preheader7:                              ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %2, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.b = trunc i64 %strlen to i32
  %i.c = add i32 %i.b, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader7, %.lr.ph.i.preheader, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.preheader7 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nk_selectable_image_text.exit, label %bb.b

bb.b:                                             ; preds = %nk_strlen.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !415  ; 3 uses
  %.not30.i = icmp eq ptr %i.e, null
  br i1 %.not30.i, label %nk_selectable_image_text.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !416  ; 2 uses
  %i.h = icmp ne ptr %i.g, null
  %i.i = icmp ne ptr %4, null
  %or.cond.i = and i1 %i.i, %i.h
  br i1 %or.cond.i, label %bb.d, label %nk_selectable_image_text.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.k = call i32 @nk_widget(ptr noundef nonnull %5, ptr noundef nonnull %0)
  switch i32 %i.k, label %bb.f [
    i32 0, label %nk_selectable_image_text.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !488
  %i.n = and i32 %i.m, 4096
  %.not32.i = icmp eq i32 %i.n, 0
  %spec.select.i = select i1 %.not32.i, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ null, %bb.d ], [ %spec.select.i, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !414
  %i.t = load <2 x float>, ptr %5, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = load <2 x float>, ptr %i.u, align 8
  %i.w = call fastcc zeroext i1 @nk_do_selectable_image(ptr noundef %i.p, ptr noundef %i.q, <2 x float> %i.t, <2 x float> %i.v, ptr noundef %2, i32 noundef %.0.lcssa.i, i32 noundef %3, ptr noundef nonnull %4, ptr noundef nonnull readonly align 8 %6, ptr noundef %i.r, ptr noundef %i.o, ptr noundef %i.s)
  br label %nk_selectable_image_text.exit

nk_selectable_image_text.exit:                    ; preds = %nk_strlen.exit, %bb.b, %bb.c, %bb.d, %bb.f
  %.0.i = phi i1 [ %i.w, %bb.f ], [ false, %nk_strlen.exit ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_select_label(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #20 {
bb.a:
  %4 = alloca %struct.nk_rect, align 8            ; 5 uses
  %.not5.i = icmp ne ptr %1, null                 ; 2 uses
  br i1 %.not5.i, label %.lr.ph.i.preheader, label %nk_strlen.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !56
  %.not4.i8 = icmp eq i8 %i.a, 0
  br i1 %.not4.i8, label %nk_strlen.exit, label %.lr.ph.i.preheader11

.lr.ph.i.preheader11:                             ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.b = trunc i64 %strlen to i32
  %i.c = add i32 %i.b, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader11, %.lr.ph.i.preheader, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.preheader11 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nk_selectable_text.exit, label %bb.b

bb.b:                                             ; preds = %nk_strlen.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !415  ; 3 uses
  %.not30.i = icmp eq ptr %i.e, null
  br i1 %.not30.i, label %nk_selectable_text.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !416  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %nk_selectable_text.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.i = call i32 @nk_widget(ptr noundef nonnull %4, ptr noundef nonnull %0)
  switch i32 %i.i, label %bb.f [
    i32 0, label %nk_selectable_text.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !488
  %i.l = and i32 %i.k, 4096
  %.not32.i = icmp eq i32 %i.l, 0
  %spec.select.i = select i1 %.not32.i, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi ptr [ null, %bb.d ], [ %spec.select.i, %bb.e ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !414  ; 2 uses
  %i.r = load <2 x float>, ptr %4, align 8        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load <2 x float>, ptr %i.s, align 8      ; 2 uses
  %i.u = icmp ne i32 %.0.lcssa.i, 0
  %i.v = icmp ne ptr %i.q, null
  %or.cond5.i.i = and i1 %i.u, %i.v
  %or.cond11.i.i = and i1 %or.cond5.i.i, %.not5.i
  br i1 %or.cond11.i.i, label %bb.g, label %nk_selectable_text.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2004
  %i.x = load <2 x float>, ptr %i.w, align 4, !tbaa !54 ; 2 uses
  %i.y = fsub <2 x float> %i.r, %i.x
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> splat (float 2.000000e+00), <2 x float> %i.t)
  %i.aa = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %i.n, <2 x float> %i.y, <2 x float> %i.z, ptr noundef readonly %i.m, i32 noundef 0)
  %spec.select7 = xor i1 %3, %i.aa                ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !557 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2032
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ac(ptr noundef nonnull %i.o, ptr %i.ae) #50, !inline_history !41
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.af = load i32, ptr %i.n, align 8, !tbaa !55
  tail call fastcc void @nk_draw_selectable(ptr noundef nonnull %i.o, i32 noundef %i.af, ptr noundef nonnull readonly %i.p, i1 noundef zeroext %spec.select7, <2 x float> %i.r, <2 x float> %i.t, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %1, i32 noundef %.0.lcssa.i, i32 noundef %2, ptr noundef nonnull %i.q)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !558 ; 2 uses
  %.not51.i.i = icmp eq ptr %i.ah, null
  br i1 %.not51.i.i, label %nk_selectable_text.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2032
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.ah(ptr noundef nonnull %i.o, ptr %i.aj) #50, !inline_history !41
  br label %nk_selectable_text.exit

nk_selectable_text.exit:                          ; preds = %bb.i, %bb.j, %nk_strlen.exit, %bb.b, %bb.c, %bb.d, %bb.f
  %.1.in = phi i1 [ %3, %nk_strlen.exit ], [ %3, %bb.b ], [ %3, %bb.c ], [ %3, %bb.f ], [ %3, %bb.d ], [ %spec.select7, %bb.j ], [ %spec.select7, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  ret i1 %.1.in
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_select_image_label(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #20 {
bb.a:
  %5 = alloca %struct.nk_rect, align 8            ; 5 uses
  %6 = alloca %struct.nk_image, align 8           ; 4 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = zext i1 %4 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !556
  %.not5.i = icmp eq ptr %2, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.c = load i8, ptr %2, align 1, !tbaa !56
  %.not4.i3 = icmp eq i8 %i.c, 0
  br i1 %.not4.i3, label %nk_strlen.exit, label %.lr.ph.i.preheader6

.lr.ph.i.preheader6:                              ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %2, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.d = trunc i64 %strlen to i32
  %i.e = add i32 %i.d, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader6, %.lr.ph.i.preheader, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.i.preheader ], [ %i.e, %.lr.ph.i.preheader6 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nk_selectable_image_text.exit, label %bb.b

bb.b:                                             ; preds = %nk_strlen.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !415  ; 3 uses
  %.not30.i = icmp eq ptr %i.g, null
  br i1 %.not30.i, label %nk_selectable_image_text.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !416  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %nk_selectable_image_text.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.k = call i32 @nk_widget(ptr noundef nonnull %5, ptr noundef nonnull %0)
  switch i32 %i.k, label %bb.f [
    i32 0, label %nk_selectable_image_text.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !488
  %i.n = and i32 %i.m, 4096
  %.not32.i = icmp eq i32 %i.n, 0
  %spec.select.i = select i1 %.not32.i, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ null, %bb.d ], [ %spec.select.i, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !414
  %i.t = load <2 x float>, ptr %5, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = load <2 x float>, ptr %i.u, align 8
  %i.w = call fastcc zeroext i1 @nk_do_selectable_image(ptr noundef %i.p, ptr noundef %i.q, <2 x float> %i.t, <2 x float> %i.v, ptr noundef %2, i32 noundef %.0.lcssa.i, i32 noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull readonly align 8 %6, ptr noundef %i.r, ptr noundef %i.o, ptr noundef %i.s) ; 0 uses
  %.pre = load i8, ptr %i.a, align 1, !tbaa !556, !range !88
  %i.x = trunc nuw i8 %.pre to i1
  br label %nk_selectable_image_text.exit

nk_selectable_image_text.exit:                    ; preds = %nk_strlen.exit, %bb.b, %bb.c, %bb.d, %bb.f
  %i.y = phi i1 [ %4, %nk_strlen.exit ], [ %4, %bb.b ], [ %4, %bb.c ], [ %4, %bb.d ], [ %i.x, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i1 %i.y
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_select_image_text(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #20 {
bb.a:
  %6 = alloca %struct.nk_rect, align 8            ; 5 uses
  %7 = alloca %struct.nk_image, align 8           ; 4 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = zext i1 %5 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !556
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nk_selectable_image_text.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !415  ; 3 uses
  %.not30.i = icmp eq ptr %i.d, null
  br i1 %.not30.i, label %nk_selectable_image_text.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !416  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %nk_selectable_image_text.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.h = call i32 @nk_widget(ptr noundef nonnull %6, ptr noundef nonnull %0)
  switch i32 %i.h, label %bb.f [
    i32 0, label %nk_selectable_image_text.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !488
  %i.k = and i32 %i.j, 4096
  %.not32.i = icmp eq i32 %i.k, 0
  %spec.select.i = select i1 %.not32.i, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ null, %bb.d ], [ %spec.select.i, %bb.e ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !414
  %i.q = load <2 x float>, ptr %6, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load <2 x float>, ptr %i.r, align 8
  %i.t = call fastcc zeroext i1 @nk_do_selectable_image(ptr noundef %i.m, ptr noundef %i.n, <2 x float> %i.q, <2 x float> %i.s, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.a, ptr noundef nonnull readonly align 8 %7, ptr noundef %i.o, ptr noundef %i.l, ptr noundef %i.p) ; 0 uses
  %.pre = load i8, ptr %i.a, align 1, !tbaa !556, !range !88
  %i.u = trunc nuw i8 %.pre to i1
  br label %nk_selectable_image_text.exit

nk_selectable_image_text.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.f
  %i.v = phi i1 [ %5, %bb.a ], [ %5, %bb.b ], [ %5, %bb.c ], [ %5, %bb.d ], [ %i.u, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret i1 %i.v
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_select_symbol_text(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = zext i1 %5 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !556
  %i.c = call zeroext i1 @nk_selectable_symbol_text(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.a) ; 0 uses
  %i.d = load i8, ptr %i.a, align 1, !tbaa !556, !range !88, !noundef !89
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_select_symbol_label(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %.not5.i = icmp eq ptr %2, null
end_hunk_1
begin_hunk_2_@nk_edit_buffer:bb.a
  %i.z = load i32, ptr %i.y, align 8, !tbaa !629  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 172
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !627
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 176
  store i32 %i.z, ptr %i.ab, align 8, !tbaa !628
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = and i32 %.058, 64
  %.not70 = icmp eq i32 %i.ac, 0
  br i1 %.not70, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 9856
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !tbaa.struct !75
  %.pre = load i32, ptr %i.p, align 4, !tbaa !520
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ae = phi i32 [ %.pre, %bb.m ], [ %i.q, %bb.l ]
  %i.af = trunc i32 %i.ae to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.g, %bb.n
  %.sink = phi i8 [ %i.af, %bb.n ], [ 0, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 185
  store i8 %.sink, ptr %i.ag, align 1, !tbaa !636
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !635
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 180
  store i8 %i.ai, ptr %i.aj, align 4, !tbaa !630
  %.not71 = icmp eq ptr %3, null
  %i.ak = select i1 %.not71, ptr @nk_filter_default, ptr %3
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 185
  %i.am = and i32 %.058, 1
  %.not72 = icmp eq i32 %i.am, 0
  %i.an = select i1 %.not72, i1 %.not66, i1 false
  %i.ao = select i1 %i.an, ptr %0, ptr null
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4952
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !414
  %i.at = load <2 x float>, ptr %4, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.av = load <2 x float>, ptr %i.au, align 8
  %i.aw = tail call fastcc i32 @nk_do_edit(ptr noundef %i.ap, ptr noundef %i.aq, <2 x float> %i.at, <2 x float> %i.av, i32 noundef %.058, ptr noundef nonnull %i.ak, ptr noundef nonnull %2, ptr noundef %i.ar, ptr noundef %i.ao, ptr noundef %i.as) ; 3 uses
  %i.ax = load i32, ptr %i.ap, align 8, !tbaa !460
  %i.ay = and i32 %i.ax, 16
  %.not73 = icmp eq i32 %i.ay, 0
  br i1 %.not73, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !221
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !220
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bc = load i8, ptr %i.al, align 1, !tbaa !636 ; 2 uses
  %.not74 = icmp eq i8 %i.bc, 0                   ; 2 uses
  %.not75 = icmp eq i8 %.sink, %i.bc
  %or.cond = select i1 %.not74, i1 true, i1 %.not75
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %i.p, align 4, !tbaa !520
  store i32 %i.n, ptr %i.l, align 8, !tbaa !634
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %.not76 = icmp ne i8 %.sink, 0
  %brmerge.not = and i1 %.not76, %.not74
  br i1 %brmerge.not, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.p, align 4, !tbaa !520
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.t, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.f, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %i.aw, %bb.s ], [ %i.aw, %bb.r ], [ %i.aw, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 1, 27) i32 @nk_do_edit(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, <2 x float> %2, <2 x float> %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef nonnull readonly %7, ptr noundef %8, ptr noundef %9) unnamed_addr #20 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %10 = alloca %struct.nk_vec2, align 4           ; 3 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %11 = alloca %struct.nk_vec2, align 4           ; 3 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %12 = alloca %struct.nk_vec2, align 4           ; 3 uses
  %i.h = alloca ptr, align 8                      ; 3 uses
  %i.i = alloca i32, align 4                      ; 3 uses
  %13 = alloca %struct.nk_text, align 8           ; 7 uses
  %.sroa.0647.0.vec.extract = extractelement <2 x float> %2, i64 0
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 944
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 924 ; 3 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !1166 ; 2 uses
  %.sroa.0647.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.m = load <2 x float>, ptr %i.j, align 8, !tbaa !54 ; 2 uses
  %i.n = fadd <2 x float> %2, %i.m
  %i.o = insertelement <2 x float> poison, float %i.l, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fadd <2 x float> %i.n, %i.p              ; 15 uses
  %i.r = fmul float %i.l, 2.000000e+00
  %i.s = insertelement <2 x float> poison, float %i.r, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> splat (float 2.000000e+00), <2 x float> %i.t)
  %i.v = fsub <2 x float> %3, %i.u                ; 4 uses
  %i.w = and i32 %4, 1024                         ; 2 uses
  %.not.not = icmp eq i32 %i.w, 0                 ; 3 uses
  %i.x = extractelement <2 x float> %i.v, i64 1
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 936
  %i.z = load float, ptr %i.y, align 8, !tbaa !1167
  %i.aa = extractelement <2 x float> %i.v, i64 0
  %i.ab = fsub float %i.aa, %i.z                  ; 2 uses
  %i.ac = fcmp ogt float %i.ab, 0.000000e+00
  %i.ad = select i1 %i.ac, float %i.ab, float 0.000000e+00
  %.sroa.26.8.vec.insert343 = insertelement <2 x float> %i.v, float %i.ad, i64 0
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.af = load float, ptr %i.ae, align 8, !tbaa !140
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 952
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !1168
  %i.ai = fadd float %i.af, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.26.01093 = phi <2 x float> [ %.sroa.26.8.vec.insert343, %bb.b ], [ %i.v, %bb.a ] ; 4 uses
  %i.aj = phi float [ %i.ai, %bb.b ], [ %i.x, %bb.a ] ; 23 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.sroa.01082.0.copyload = load <2 x float>, ptr %i.ak, align 8 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.26.8.vec.extract345 = extractelement <2 x float> %.sroa.26.01093, i64 0
  %.sroa.26.12.vec.extract362 = extractelement <2 x float> %.sroa.26.01093, i64 1 ; 3 uses
  %i.al = fadd <2 x float> %i.q, %.sroa.26.01093  ; 4 uses
  %i.am = fcmp olt <2 x float> %.sroa.01082.0.copyload, %i.q
  %i.an = fadd <2 x float> %.sroa.01082.0.copyload, %.sroa.8.0.copyload ; 2 uses
  %i.ao = fcmp olt <2 x float> %i.an, %i.al
  %i.ap = select <2 x i1> %i.ao, <2 x float> %i.an, <2 x float> %i.al
  %i.aq = select <2 x i1> %i.am, <2 x float> %i.q, <2 x float> %.sroa.01082.0.copyload ; 4 uses
  %i.ar = fsub <2 x float> %i.ap, %i.aq           ; 2 uses
  %i.as = fcmp ogt <2 x float> %i.ar, zeroinitializer
  %i.at = select <2 x i1> %i.as, <2 x float> %i.ar, <2 x float> zeroinitializer ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 185 ; 4 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !636 ; 5 uses
  %.not723 = icmp eq ptr %8, null
  br i1 %.not723, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 264
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !383
  %.not724 = icmp eq i32 %i.ax, 0
  br i1 %.not724, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 260
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !388, !range !88, !noundef !89
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 356
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !391 ; 2 uses
  %i.bd = fcmp ole float %.sroa.0647.0.vec.extract, %i.bc
  %foldExtExtBinop = fadd <2 x float> %2, %3
  %i.be = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bf = fcmp olt float %i.bc, %i.be
  %or.cond = select i1 %i.bd, i1 %i.bf, i1 false
  br i1 %or.cond, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 360
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !392 ; 2 uses
  %i.bi = fcmp ugt float %.sroa.0647.4.vec.extract, %i.bh
  br i1 %i.bi, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop1378 = fadd <2 x float> %2, %3
  %i.bj = extractelement <2 x float> %foldExtExtBinop1378, i64 1
  %i.bk = fcmp olt float %i.bh, %i.bj
  %i.bl = zext i1 %i.bk to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.bm = phi i8 [ %i.bl, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ] ; 2 uses
  store i8 %i.bm, ptr %i.au, align 1, !tbaa !636
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e, %bb.d, %bb.c
  %i.bn = phi i8 [ %i.bm, %bb.i ], [ %i.av, %bb.e ], [ %i.av, %bb.d ], [ %i.av, %bb.c ] ; 4 uses
  %.not725 = icmp eq i8 %i.av, 0
  %.not726 = icmp eq i8 %i.bn, 0                  ; 2 uses
  br i1 %.not725, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  br i1 %.not726, label %.thread1095, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.lobit = lshr exact i32 %i.w, 10
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 5376
  store <4 x i16> <i16 0, i16 99, i16 0, i16 999>, ptr %i.bq, align 8, !tbaa !106
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 172
  store i32 0, ptr %i.br, align 4, !tbaa !627
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 176
  store i32 0, ptr %i.bs, align 8, !tbaa !628
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  store i32 0, ptr %i.bt, align 8, !tbaa !629
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 188
  store float 0.000000e+00, ptr %i.bu, align 4, !tbaa !633
  %i.bv = trunc nuw nsw i32 %.lobit to i8
  %i.bw = xor i8 %i.bv, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i8 %i.bw, ptr %i.bx, align 8, !tbaa !631
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 180
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.by, align 4, !tbaa !56
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 152
  store ptr %5, ptr %i.bz, align 8, !tbaa !632
  store i64 %i.bp, ptr %i.bo, align 8
  %i.ca = and i32 %4, 2
  %.not = icmp eq i32 %i.ca, 0                    ; 2 uses
  %i.cb = and i32 %4, 2048
  %.not727 = icmp eq i32 %i.cb, 0
  br i1 %.not727, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !626
  store i32 %i.cd, ptr %i.bt, align 8, !tbaa !629
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  br i1 %.not726, label %.thread1095, label %bb.o

.thread1095:                                      ; preds = %bb.k, %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 180
  store i8 0, ptr %i.ce, align 4, !tbaa !630
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n, %.thread1095
  %.1679 = phi i1 [ true, %bb.n ], [ true, %.thread1095 ], [ %.not, %bb.m ], [ %.not, %bb.l ]
  %.1 = phi ptr [ %8, %bb.n ], [ %8, %.thread1095 ], [ null, %bb.m ], [ %8, %bb.l ] ; 26 uses
  %.not729 = trunc i32 %4 to i1                   ; 2 uses
  br i1 %.not729, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = and i32 %4, 512
  %.not730 = icmp eq i32 %i.cf, 0
  br i1 %.not730, label %bb.q, label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.o
  %.sink = phi i8 [ 0, %bb.o ], [ 1, %bb.p ]
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 180
  store i8 %.sink, ptr %i.cg, align 4, !tbaa !630
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.p
  %i.ch = zext i8 %i.bn to i32
  %.not731 = icmp ne i8 %i.bn, 0                  ; 3 uses
  %i.ci = select i1 %.not731, i32 1, i32 2
  %i.cj = sext i8 %i.av to i32
  %.not732 = icmp eq i32 %i.cj, %i.ch
  %i.ck = select i1 %.not731, i32 5, i32 10
  %spec.select = select i1 %.not732, i32 %i.ci, i32 %i.ck ; 6 uses
  %i.cl = icmp ne ptr %.1, null
  %or.cond5 = and i1 %i.cl, %.not731
  br i1 %or.cond5, label %nk_input_is_mouse_hovering_rect.exit, label %bb.bt

nk_input_is_mouse_hovering_rect.exit:             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !387, !range !88, !noundef !89 ; 2 uses
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = zext nneg i8 %i.cn to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %.1, i64 260
  %i.cr = getelementptr inbounds nuw i8, ptr %.1, i64 356
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !391 ; 3 uses
  %i.ct = extractelement <2 x float> %i.q, i64 0  ; 2 uses
  %i.cu = fsub float %i.cs, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.cw = load float, ptr %i.cv, align 8, !tbaa !1169
  %i.cx = fadd float %i.cu, %i.cw                 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1, i64 360
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !392 ; 3 uses
  %i.da = extractelement <2 x float> %i.q, i64 1  ; 2 uses
  %i.db = fsub float %i.cz, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 164
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !1170
  %i.de = fadd float %i.db, %i.dd                 ; 2 uses
  %i.df = fcmp ole float %i.ct, %i.cs
  %i.dg = extractelement <2 x float> %i.al, i64 0
  %i.dh = fcmp olt float %i.cs, %i.dg
  %or.cond.i.not1130.not1134 = select i1 %i.df, i1 %i.dh, i1 false
  %i.di = fcmp ole float %i.da, %i.cz
  %or.cond1124.not = select i1 %or.cond.i.not1130.not1134, i1 %i.di, i1 false
  %i.dj = extractelement <2 x float> %i.al, i64 1
  %i.dk = fcmp olt float %i.cz, %i.dj
  %.0.i = select i1 %or.cond1124.not, i1 %i.dk, i1 false ; 2 uses
  %i.dl = zext i1 %.0.i to i8
  br i1 %.1679, label %bb.s, label %bb.r

bb.r:                                             ; preds = %nk_input_is_mouse_hovering_rect.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 172
  store i32 0, ptr %i.dm, align 4, !tbaa !627
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !626
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 176
  store i32 %i.do, ptr %i.dp, align 8, !tbaa !628
  br label %.critedge769

bb.s:                                             ; preds = %nk_input_is_mouse_hovering_rect.exit
  br i1 %.0.i, label %bb.t, label %.critedge769

bb.t:                                             ; preds = %bb.s
  %i.dq = load i8, ptr %i.cq, align 4, !tbaa !388, !range !88, !noundef !89
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.ds = getelementptr inbounds nuw i8, ptr %.1, i64 264
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !383
  %.not734 = icmp eq i32 %i.dt, 0
  br i1 %.not734, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.du = tail call fastcc i32 @nk_textedit_locate_coord(ptr noundef nonnull %6, float noundef %i.cx, float noundef %i.de, ptr noundef readonly %9, float noundef %i.aj) ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 168
  store i32 %i.du, ptr %i.dv, align 8, !tbaa !629
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 172
  store i32 %i.du, ptr %i.dw, align 4, !tbaa !627
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 176
  store i32 %i.du, ptr %i.dx, align 8, !tbaa !628
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 183
  store i8 0, ptr %i.dy, align 1, !tbaa !625
  br label %.critedge769

bb.w:                                             ; preds = %bb.u
  %i.dz = getelementptr inbounds nuw i8, ptr %.1, i64 372
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !395
  %i.eb = fcmp une float %i.ea, 0.000000e+00
  br i1 %i.eb, label %nk_input_is_mouse_moved.exit.thread, label %nk_input_is_mouse_moved.exit

nk_input_is_mouse_moved.exit:                     ; preds = %bb.w
  %i.ec = getelementptr inbounds nuw i8, ptr %.1, i64 376
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !396
  %i.ee = fcmp une float %i.ed, 0.000000e+00
  br i1 %i.ee, label %nk_input_is_mouse_moved.exit.thread, label %.critedge

nk_input_is_mouse_moved.exit.thread:              ; preds = %bb.w, %nk_input_is_mouse_moved.exit
  %i.ef = tail call fastcc i32 @nk_textedit_locate_coord(ptr noundef nonnull %6, float noundef %i.cx, float noundef %i.de, ptr noundef readonly %9, float noundef %i.aj) ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 172 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !627
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 176 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !628
  %i.ek = icmp eq i32 %i.eh, %i.ej
  br i1 %i.ek, label %bb.x, label %nk_textedit_drag.exit

bb.x:                                             ; preds = %nk_input_is_mouse_moved.exit.thread
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 168
  %i.em = load i32, ptr %i.el, align 8, !tbaa !629
  store i32 %i.em, ptr %i.eg, align 4, !tbaa !627
  br label %nk_textedit_drag.exit

nk_textedit_drag.exit:                            ; preds = %nk_input_is_mouse_moved.exit.thread, %bb.x
  store i32 %i.ef, ptr %i.ei, align 8, !tbaa !628
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 168
  store i32 %i.ef, ptr %i.en, align 8, !tbaa !629
  br label %.critedge769

.critedge:                                        ; preds = %nk_input_is_mouse_moved.exit, %bb.t
  %i.eo = getelementptr inbounds nuw i8, ptr %.1, i64 296
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !383
  %.not735 = icmp eq i32 %i.ep, 0
  br i1 %.not735, label %.critedge769, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.eq = getelementptr inbounds nuw i8, ptr %.1, i64 292
  %i.er = load i8, ptr %i.eq, align 4, !tbaa !388, !range !88, !noundef !89
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.z, label %.critedge769

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @nk_textedit_key(ptr noundef nonnull %6, i32 noundef 24, i32 noundef 0, ptr noundef %9, float noundef %i.aj)
  tail call fastcc void @nk_textedit_key(ptr noundef nonnull %6, i32 noundef 25, i32 noundef 1, ptr noundef %9, float noundef %i.aj)
  br label %.critedge769

.critedge769:                                     ; preds = %bb.s, %bb.v, %.critedge, %bb.y, %bb.z, %nk_textedit_drag.exit, %bb.r
  %.0680 = phi i8 [ 0, %bb.r ], [ 0, %bb.v ], [ 1, %nk_textedit_drag.exit ], [ 1, %bb.z ], [ 0, %bb.y ], [ 0, %.critedge ], [ 0, %bb.s ]
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 180 ; 3 uses
  %i.eu = load i8, ptr %i.et, align 4, !tbaa !630
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge769, %nk_input_is_key_pressed.exit
  %indvars.iv = phi i64 [ 0, %.critedge769 ], [ %indvars.iv.next, %nk_input_is_key_pressed.exit ] ; 3 uses
  %.16811160 = phi i8 [ %.0680, %.critedge769 ], [ %.2682, %nk_input_is_key_pressed.exit ] ; 3 uses
  %i.ev = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ew = and i32 %i.ev, 30
  %or.cond7 = icmp eq i32 %i.ew, 4
  br i1 %or.cond7, label %nk_input_is_key_pressed.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %indvars.iv ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 4, !tbaa !387, !range !88, !noundef !89
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !386 ; 2 uses
  br i1 %i.ez, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.not8.i = icmp eq i32 %i.fb, 0
  br i1 %.not8.i, label %nk_input_is_key_pressed.exit, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.fc = icmp ugt i32 %i.fb, 1
  br i1 %i.fc, label %bb.ae, label %nk_input_is_key_pressed.exit

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  tail call fastcc void @nk_textedit_key(ptr noundef %6, i32 noundef %i.ev, i32 noundef %i.cp, ptr noundef %9, float noundef %i.aj)
  br label %nk_input_is_key_pressed.exit

nk_input_is_key_pressed.exit:                     ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.aa
  %.2682 = phi i8 [ %.16811160, %bb.aa ], [ 1, %bb.ae ], [ %.16811160, %bb.ac ], [ %.16811160, %bb.ad ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond.not, label %bb.af, label %bb.aa, !llvm.loop !1164

bb.af:                                            ; preds = %nk_input_is_key_pressed.exit
  %i.fd = load i8, ptr %i.et, align 4, !tbaa !630
  %.not736 = icmp eq i8 %i.eu, %i.fd
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1, i64 256 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 2 uses
  br i1 %.not736, label %bb.ag, label %.thread

.thread:                                          ; preds = %bb.af
  store i32 0, ptr %.phi.trans.insert, align 4, !tbaa !384
  store ptr %5, ptr %i.fe, align 8, !tbaa !632
  br label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !384 ; 2 uses
  store ptr %5, ptr %i.fe, align 8, !tbaa !632
  %.not737 = icmp eq i32 %.pre, 0
  br i1 %.not737, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ff = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.fg = getelementptr inbounds nuw i8, ptr %.1, i64 240
  tail call void @nk_textedit_text(ptr noundef nonnull %6, ptr noundef nonnull %i.fg, i32 noundef %.pre)
  store i32 0, ptr %i.ff, align 4, !tbaa !384
  br label %bb.ai

bb.ai:                                            ; preds = %.thread, %bb.ag, %bb.ah
  %.3 = phi i8 [ 1, %bb.ah ], [ %.2682, %bb.ag ], [ %.2682, %.thread ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.fi = load i8, ptr %i.fh, align 4, !tbaa !387, !range !88, !noundef !89
  %i.fj = trunc nuw i8 %i.fi to i1
  %i.fk = getelementptr inbounds nuw i8, ptr %.1, i64 36
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !386 ; 2 uses
  br i1 %i.fj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.not8.i786 = icmp eq i32 %i.fl, 0
  br i1 %.not8.i786, label %nk_input_is_key_pressed.exit787, label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.fm = icmp ugt i32 %i.fl, 1
  br i1 %i.fm, label %bb.al, label %nk_input_is_key_pressed.exit787
end_hunk_2
