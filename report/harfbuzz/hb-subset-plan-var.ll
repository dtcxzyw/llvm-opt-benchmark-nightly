Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan-var?download=true
inline.NumInlined: 3771
inline.NumDeleted: 1746
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN14hb_inc_bimap_t3addEj:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 4 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNK12hb_hashmap_tIjjLb1EEixEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = mul i32 %1, 506952113
  %i.f = and i32 %i.e, 1073741823
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !53
  %i.i = urem i32 %i.f, %i.h                      ; 2 uses
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = and i32 %i.m, 2
  %.not15.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not15.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EEixEj.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4
  %i.q = load i32, ptr %i.k, align 4, !tbaa !19
  %i.r = icmp eq i32 %i.q, %1
  br i1 %i.r, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.s = load i32, ptr %i.ac, align 4, !tbaa !19
  %i.t = icmp eq i32 %i.s, %1
  br i1 %i.t, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

._crit_edge.i.i.i:                                ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.lcssa10.i.i.i = phi i32 [ %i.m, %.lr.ph.i.i.i.i ], [ %i.ae, %bb.c ]
  %i.u = phi i64 [ %i.j, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.c ]
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %i.u
  %i.w = trunc i32 %.lcssa10.i.i.i to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %spec.select.i.i.i = select i1 %i.w, ptr %i.x, ptr @minus_1
  br label %_ZNK12hb_hashmap_tIjjLb1EEixEj.exit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.01016.i13.i.i.i = phi i32 [ %i.aa, %bb.c ], [ %i.i, %.lr.ph.i.i.i.i ]
  %.017.i12.i.i.i = phi i32 [ %i.y, %bb.c ], [ 0, %.lr.ph.i.i.i.i ]
  %i.y = add i32 %.017.i12.i.i.i, 1               ; 2 uses
  %i.z = add i32 %i.y, %.01016.i13.i.i.i
  %i.aa = and i32 %i.z, %i.p                      ; 2 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = and i32 %i.ae, 2
  %.not.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EEixEj.exit, label %bb.c, !llvm.loop !0

_ZNK12hb_hashmap_tIjjLb1EEixEj.exit:              ; preds = %.lr.ph.i.i.i, %bb.a, %bb.b, %._crit_edge.i.i.i
  %.0.i.i = phi ptr [ @minus_1, %bb.a ], [ %spec.select.i.i.i, %._crit_edge.i.i.i ], [ @minus_1, %bb.b ], [ @minus_1, %.lr.ph.i.i.i ]
  %i.ag = load i32, ptr %.0.i.i, align 4, !tbaa !19 ; 2 uses
  store i32 %i.ag, ptr %i.b, align 4, !tbaa !19
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.d, label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

bb.d:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb1EEixEj.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !371
  store i32 %i.ak, ptr %i.b, align 4, !tbaa !19
  %i.al = mul i32 %1, -1640531535
  %i.am = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.al, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 0 uses
  %i.an = load i32, ptr %i.aj, align 4, !tbaa !58 ; 3 uses
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !59
  %.not.i = icmp slt i32 %i.an, %i.ao
  br i1 %.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = add i32 %i.an, 1
  %i.aq = call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i32 noundef %i.ap, i1 noundef zeroext false)
  br i1 %i.aq, label %..critedge_crit_edge.i, label %bb.f, !prof !33

..critedge_crit_edge.i:                           ; preds = %bb.e
  %.pre.i = load i32, ptr %i.aj, align 4, !tbaa !58
  br label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ar = load i32, ptr @_hb_NullPool, align 16
  store i32 %i.ar, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.d
  %i.as = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.an, %bb.d ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !60
  %i.av = add i32 %i.as, 1
  store i32 %i.av, ptr %i.aj, align 4, !tbaa !58
  %i.aw = zext i32 %i.as to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.aw
  %i.ay = load i32, ptr %i.a, align 4, !tbaa !19
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !19
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit:  ; preds = %.critedge.i, %bb.f, %_ZNK12hb_hashmap_tIjjLb1EEixEj.exit
  %i.az = load i32, ptr %i.b, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret i32 %i.az
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_Z23remap_variation_indicesIN2OT18ItemVariationStoreEEvRKT_RK8hb_set_tRK11hb_vector_tIiLb0EEbbR12hb_hashmap_tIj9hb_pair_tIjiELb0EE(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(48) %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %6 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 3 uses
  %7 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 6 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %9 = alloca %struct.hb_pair_t, align 4          ; 5 uses
  %10 = alloca %struct.hb_pair_t, align 4         ; 5 uses
  %i.g = icmp eq ptr %0, @_hb_NullPool
  br i1 %i.g, label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.i = load i16, ptr %i.h, align 1, !tbaa !62
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  %i.k = zext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.m = load i32, ptr %i.l, align 1, !tbaa !64   ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.m)
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %.0.i.i.i = select i1 %i.n, ptr @_hb_NullPool, ptr %i.q, !prof !32
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.s = load i16, ptr %i.r, align 1, !tbaa !62   ; 2 uses
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s) ; 3 uses
  %i.u = zext i16 %i.t to i32                     ; 2 uses
  %.not.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = zext i16 %i.t to i64                     ; 5 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 4
  %i.y = tail call ptr @hb_malloc(i64 noundef %i.x) #10 ; 6 uses
  %.not16.i.i = icmp eq ptr %i.y, null
  br i1 %.not16.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.d, !prof !32

bb.d:                                             ; preds = %bb.c
  store i32 %i.u, ptr %i.y, align 4, !tbaa !66
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 12 uses
  %i.aa = icmp ugt i16 %i.t, 3
  br i1 %i.aa, label %.lr.ph.i25.i.i.preheader, label %.preheader.i17.i.i

.lr.ph.i25.i.i.preheader:                         ; preds = %bb.d
  %i.ab = add nsw i64 %i.v, -4                    ; 2 uses
  %i.ac = lshr i64 %i.ab, 2                       ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %i.ae = icmp eq i64 %i.ac, 0
  br i1 %i.ae, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i64 %i.ad, 9223372036854775806
  br label %.lr.ph.i25.i.i

.preheader.i17.i.loopexit.i.unr-lcssa:            ; preds = %.lr.ph.i25.i.i
  %i.af = and i64 %i.ab, 4
  %lcmp.mod.not.not = icmp eq i64 %i.af, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i25.i.i.epil.preheader, label %.preheader.i17.i.loopexit.i

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i25.i.i.preheader ], [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod73 = trunc i64 %i.ad to i1
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.ag monotonic, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store atomic i32 -2147483648, ptr %i.ah monotonic, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store atomic i32 -2147483648, ptr %i.ai monotonic, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store atomic i32 -2147483648, ptr %i.aj monotonic, align 4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil.init, 4
  br label %.preheader.i17.i.loopexit.i

.preheader.i17.i.loopexit.i:                      ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.epil.preheader
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ], [ %indvars.iv.next.i.epil, %.lr.ph.i25.i.i.epil.preheader ]
  %i.ak = trunc nuw nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %.preheader.i17.i.i

.preheader.i17.i.i:                               ; preds = %.preheader.i17.i.loopexit.i, %bb.d
  %.0.lcssa.i18.i.i = phi i32 [ 0, %bb.d ], [ %i.ak, %.preheader.i17.i.loopexit.i ] ; 2 uses
  %i.al = icmp samesign ult i32 %.0.lcssa.i18.i.i, %i.u
  br i1 %i.al, label %.lr.ph18.preheader.i19.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit

.lr.ph18.preheader.i19.i.i:                       ; preds = %.preheader.i17.i.i
  %i.am = zext nneg i32 %.0.lcssa.i18.i.i to i64  ; 4 uses
  %i.an = sub nsw i64 %i.v, %i.am
  %xtraiter74 = and i64 %i.an, 7                  ; 2 uses
  %lcmp.mod75.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod75.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol

.lr.ph18.i21.i.i.prol:                            ; preds = %.lr.ph18.preheader.i19.i.i, %.lr.ph18.i21.i.i.prol
  %indvars.iv.i22.i.i.prol = phi i64 [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ], [ %i.am, %.lr.ph18.preheader.i19.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i21.i.i.prol ], [ 0, %.lr.ph18.preheader.i19.i.i ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i22.i.i.prol
  store atomic i32 -2147483648, ptr %i.ao monotonic, align 4
  %indvars.iv.next.i23.i.i.prol = add nuw nsw i64 %indvars.iv.i22.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter74
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol, !llvm.loop !372

.lr.ph18.i21.i.i.prol.loopexit:                   ; preds = %.lr.ph18.i21.i.i.prol, %.lr.ph18.preheader.i19.i.i
  %indvars.iv.i22.i.i.unr = phi i64 [ %i.am, %.lr.ph18.preheader.i19.i.i ], [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ]
  %i.ap = sub nsw i64 %i.am, %i.v
  %i.aq = icmp ugt i64 %i.ap, -8
  br i1 %i.aq, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %.lr.ph18.i21.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i25.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i25.i.i ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i ; 4 uses
  store atomic i32 -2147483648, ptr %i.ar monotonic, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store atomic i32 -2147483648, ptr %i.as monotonic, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store atomic i32 -2147483648, ptr %i.at monotonic, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store atomic i32 -2147483648, ptr %i.au monotonic, align 4
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store atomic i32 -2147483648, ptr %i.aw monotonic, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  store atomic i32 -2147483648, ptr %i.ax monotonic, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store atomic i32 -2147483648, ptr %i.ay monotonic, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 28
  store atomic i32 -2147483648, ptr %i.az monotonic, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i17.i.loopexit.i.unr-lcssa, label %.lr.ph.i25.i.i, !llvm.loop !1

.lr.ph18.i21.i.i:                                 ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i
  %indvars.iv.i22.i.i = phi i64 [ %indvars.iv.next.i23.i.i.7, %.lr.ph18.i21.i.i ], [ %indvars.iv.i22.i.i.unr, %.lr.ph18.i21.i.i.prol.loopexit ] ; 9 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i22.i.i
  store atomic i32 -2147483648, ptr %i.ba monotonic, align 4
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i22.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store atomic i32 -2147483648, ptr %i.bc monotonic, align 4
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i22.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store atomic i32 -2147483648, ptr %i.be monotonic, align 4
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i22.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store atomic i32 -2147483648, ptr %i.bg monotonic, align 4
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i22.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store atomic i32 -2147483648, ptr %i.bi monotonic, align 4
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i22.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  store atomic i32 -2147483648, ptr %i.bk monotonic, align 4
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i22.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store atomic i32 -2147483648, ptr %i.bm monotonic, align 4
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i22.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 28
  store atomic i32 -2147483648, ptr %i.bo monotonic, align 4
  %indvars.iv.next.i23.i.i.7 = add nuw nsw i64 %indvars.iv.i22.i.i, 8 ; 2 uses
  %exitcond.not.i24.i.i.7 = icmp eq i64 %indvars.iv.next.i23.i.i.7, %i.v
  br i1 %exitcond.not.i24.i.i.7, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %.lr.ph18.i21.i.i, !llvm.loop !2

_ZNK2OT18ItemVariationStore12create_cacheEv.exit: ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i, %bb.b, %bb.c, %.preheader.i17.i.i
  %.1.i.i = phi ptr [ @_hb_NullPool, %bb.b ], [ @_hb_NullPool, %bb.c ], [ %i.y, %.preheader.i17.i.i ], [ %i.y, %.lr.ph18.i21.i.i ], [ %i.y, %.lr.ph18.i21.i.i.prol.loopexit ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store i32 -1, ptr %i.e, align 4, !tbaa !19
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !29, !range !30, !noundef !31
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.f, label %bb.e, !prof !32

bb.e:                                             ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit
  %i.bt = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.bp, ptr noundef nonnull %i.e) ; 0 uses
  %.pre.i.i = load i32, ptr %i.e, align 4, !tbaa !19
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE7get_minEv.exit

bb.f:                                             ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 -1, ptr %i.c, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 -1, ptr %i.d, align 4, !tbaa !19
  %i.bu = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.bp, ptr noundef nonnull %i.d) ; 0 uses
  %i.bv = load i32, ptr %i.d, align 4, !tbaa !19
  %.not.i.i43 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i43, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 -1, ptr %i.d, align 4, !tbaa !19
  %i.bw = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.bp, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 0 uses
  %i.bx = load i32, ptr %i.d, align 4, !tbaa !19
  %i.by = add i32 %i.bx, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i.i.i = phi i32 [ %i.by, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE7get_minEv.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE7get_minEv.exit: ; preds = %bb.e, %bb.h
  %i.bz = phi i32 [ %.pre.i.i, %bb.e ], [ %.sink.i.i.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(49) %i.bp, i1 noundef zeroext true)
  %.fca.0.load.i.i.i = load ptr, ptr %7, align 8
  %.fca.1.gep.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.fca.1.load.i.i.i = load i64, ptr %.fca.1.gep.i.i.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store ptr %.fca.0.load.i.i.i, ptr %8, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i64 %.fca.1.load.i.i.i, ptr %i.ca, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(49) %i.bp, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.cb = trunc i64 %.fca.1.load.i.i.i to i32     ; 2 uses
  %.not5859 = icmp eq i32 %i.cb, -1
  br i1 %.not5859, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE7get_minEv.exit
  %i.cc = lshr i32 %i.bz, 16
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit
  %i.cj = phi i32 [ %i.cb, %.lr.ph ], [ %i.ej, %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit ] ; 3 uses
  %.03062 = phi i32 [ %i.cc, %.lr.ph ], [ %.2.ph, %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit ] ; 2 uses
  %.03261 = phi i32 [ 0, %.lr.ph ], [ %.3.ph, %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit ] ; 2 uses
  %.03560 = phi i32 [ 0, %.lr.ph ], [ %.338.ph, %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  store i32 %i.cj, ptr %i.f, align 4, !tbaa !19
  br i1 %3, label %bb.j, label %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit

bb.j:                                             ; preds = %bb.i
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !69
  %i.cl = load i32, ptr %i.ce, align 4, !tbaa !70
  %i.cm = lshr i32 %i.cj, 16                      ; 2 uses
  %i.cn = and i32 %i.cj, 65535
  %i.co = load i16, ptr %i.h, align 1, !tbaa !62
  %i.cp = call noundef i16 @llvm.bswap.i16(i16 %i.co)
  %i.cq = zext i16 %i.cp to i32
  %.not.i.i46 = icmp samesign ult i32 %i.cm, %i.cq
  br i1 %.not.i.i46, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i, label %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit, !prof !33

_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i: ; preds = %bb.j
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.cr = zext nneg i32 %i.cm to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 1, !tbaa !64 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0
  %i.cv = call i32 @llvm.bswap.i32(i32 %i.ct)
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %i.cw
  %.0.i.i.i.i = select i1 %i.cu, ptr @_hb_NullPool, ptr %i.cx, !prof !32 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4
  %i.cz = load i16, ptr %i.cy, align 1, !tbaa !62
  %.not.i.i.i = icmp eq i16 %i.cz, 0
  br i1 %.not.i.i.i, label %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i
  %i.da = load i32, ptr %i.l, align 1, !tbaa !64  ; 2 uses
  %i.db = icmp eq i32 %i.da, 0
  %i.dc = call i32 @llvm.bswap.i32(i32 %i.da)
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 %i.dd
  %.0.i.i10.i.i = select i1 %i.db, ptr @_hb_NullPool, ptr %i.de, !prof !32
  %i.df = call noundef float @_ZNK2OT7VarData10_get_deltaEjPKijRKNS_13VarRegionListEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i.i, i32 noundef %i.cn, ptr noundef %i.ck, i32 noundef %i.cl, ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i10.i.i, ptr noundef nonnull %.1.i.i)
  %i.dg = fadd float %i.df, 5.000000e-01
  %i.dh = call float @llvm.floor.f32(float %i.dg)
  %i.di = fptosi float %i.dh to i32
  br label %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit

_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit: ; preds = %bb.k, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i, %bb.j, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ 0, %bb.j ], [ %i.di, %bb.k ], [ 0, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i ] ; 2 uses
  br i1 %4, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  store i32 -1, ptr %9, align 4, !tbaa !73
  store i32 %.0, ptr %i.ch, align 4, !tbaa !74
  %.val.i = load i32, ptr %i.f, align 4, !tbaa !19
end_hunk_0
begin_hunk_1_@_ZNK2OT4avar15map_coords_2_14EPfjb:bb.a
  %.037107 = phi ptr [ %i.o, %.lr.ph ], [ %i.ag, %bb.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !142
  %i.t = tail call noundef float @_ZNK2OT11SegmentMaps9map_floatEfjj(ptr noundef nonnull align 1 dereferenceable(6) %.037107, float noundef %i.s, i32 noundef 0, i32 noundef 1)
  %i.u = fmul float %i.t, 1.638400e+04
  %i.v = fadd float %i.u, 5.000000e-01
  %i.w = tail call noundef float @llvm.floor.f32(float %i.v)
  %i.x = fptosi float %i.w to i32                 ; 2 uses
  br i1 %3, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.q
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !33

bb.g:                                             ; preds = %bb.f
  store i32 %i.p, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14.0, i64 %indvars.iv
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit

_ZN11hb_vector_tIiLb0EEixEi.exit:                 ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.g ], [ %i.y, %bb.h ]
  store i32 %i.x, ptr %.0.i, align 4, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit, %bb.e
  %i.z = sitofp i32 %i.x to float
  %i.aa = fmul nnan float %i.z, f0x38800000
  store float %i.aa, ptr %i.r, align 4, !tbaa !142
  %i.ab = load i16, ptr %.037107, align 1, !tbaa !62
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = zext i16 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = getelementptr inbounds nuw i8, ptr %.037107, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !405

bb.j:                                             ; preds = %._crit_edge
  %i.ah = load i16, ptr %0, align 1, !tbaa !62
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = icmp ult i16 %i.ai, 2
  br i1 %i.aj, label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.ak = load i16, ptr %i.l, align 1, !tbaa !62
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32                   ; 4 uses
  %i.an = icmp samesign ult i32 %spec.select.i, %i.am
  br i1 %i.an, label %.lr.ph112.preheader, label %._crit_edge113

.lr.ph112.preheader:                              ; preds = %bb.k
  %i.ao = sub nuw nsw i32 %i.am, %spec.select.i
  %xtraiter = and i32 %i.ao, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph112.prol.loopexit, label %.lr.ph112.prol

.lr.ph112.prol:                                   ; preds = %.lr.ph112.preheader, %.lr.ph112.prol
  %.138110.prol = phi ptr [ %i.au, %.lr.ph112.prol ], [ %.037.lcssa, %.lr.ph112.preheader ] ; 2 uses
  %.039109.prol = phi i32 [ %i.av, %.lr.ph112.prol ], [ %spec.select.i, %.lr.ph112.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph112.prol ], [ 0, %.lr.ph112.preheader ]
  %i.ap = load i16, ptr %.138110.prol, align 1, !tbaa !62
  %i.aq = tail call noundef i16 @llvm.bswap.i16(i16 %i.ap)
  %i.ar = zext i16 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.138110.prol, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2 ; 3 uses
  %i.av = add nuw nsw i32 %.039109.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph112.prol.loopexit, label %.lr.ph112.prol, !llvm.loop !406

.lr.ph112.prol.loopexit:                          ; preds = %.lr.ph112.prol, %.lr.ph112.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph112.preheader ], [ %i.au, %.lr.ph112.prol ]
  %.138110.unr = phi ptr [ %.037.lcssa, %.lr.ph112.preheader ], [ %i.au, %.lr.ph112.prol ]
  %.039109.unr = phi i32 [ %spec.select.i, %.lr.ph112.preheader ], [ %i.av, %.lr.ph112.prol ]
  %i.aw = sub nsw i32 %spec.select.i, %i.am
  %i.ax = icmp ugt i32 %i.aw, -4
  br i1 %i.ax, label %._crit_edge113, label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.prol.loopexit, %.lr.ph112
  %.138110 = phi ptr [ %i.bv, %.lr.ph112 ], [ %.138110.unr, %.lr.ph112.prol.loopexit ] ; 2 uses
  %.039109 = phi i32 [ %i.bw, %.lr.ph112 ], [ %.039109.unr, %.lr.ph112.prol.loopexit ]
  %i.ay = load i16, ptr %.138110, align 1, !tbaa !62
  %i.az = tail call noundef i16 @llvm.bswap.i16(i16 %i.ay)
  %i.ba = zext i16 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.138110, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 1, !tbaa !62
  %i.bf = tail call noundef i16 @llvm.bswap.i16(i16 %i.be)
  %i.bg = zext i16 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 1, !tbaa !62
  %i.bl = tail call noundef i16 @llvm.bswap.i16(i16 %i.bk)
  %i.bm = zext i16 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2 ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 1, !tbaa !62
  %i.br = tail call noundef i16 @llvm.bswap.i16(i16 %i.bq)
  %i.bs = zext i16 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2 ; 2 uses
  %i.bw = add nuw nsw i32 %.039109, 4             ; 2 uses
  %exitcond122.not.3 = icmp eq i32 %i.bw, %i.am
  br i1 %exitcond122.not.3, label %._crit_edge113, label %.lr.ph112, !llvm.loop !407

._crit_edge113:                                   ; preds = %.lr.ph112.prol.loopexit, %.lr.ph112, %bb.k
  %.138.lcssa = phi ptr [ %.037.lcssa, %bb.k ], [ %.lcssa.unr, %.lr.ph112.prol.loopexit ], [ %i.bv, %.lr.ph112 ] ; 2 uses
  %i.bx = load i32, ptr %.138.lcssa, align 1, !tbaa !64 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  %i.bz = tail call i32 @llvm.bswap.i32(i32 %i.bx)
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ca
  %.0.i.i = select i1 %i.by, ptr @_hb_NullPool, ptr %i.cb, !prof !32
  %i.cc = getelementptr inbounds nuw i8, ptr %.138.lcssa, i64 4
  %i.cd = load i32, ptr %i.cc, align 1, !tbaa !64 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0
  %i.cf = tail call i32 @llvm.bswap.i32(i32 %i.cd)
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %i.cg
  %.0.i.i41 = select i1 %i.ce, ptr @_hb_NullPool, ptr %i.ch, !prof !32 ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 2 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 1, !tbaa !64 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 0
  %i.cl = tail call i32 @llvm.bswap.i32(i32 %i.cj)
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 %i.cm
  %.0.i.i.i = select i1 %i.ck, ptr @_hb_NullPool, ptr %i.cn, !prof !32
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.cp = load i16, ptr %i.co, align 1, !tbaa !62 ; 2 uses
  %i.cq = tail call noundef i16 @llvm.bswap.i16(i16 %i.cp) ; 3 uses
  %i.cr = zext i16 %i.cq to i32                   ; 2 uses
  %.not.i.i = icmp eq i16 %i.cp, 0
  br i1 %.not.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge113
  %i.cs = zext i16 %i.cq to i64                   ; 5 uses
  %i.ct = shl nuw nsw i64 %i.cs, 2
  %i.cu = add nuw nsw i64 %i.ct, 4
  %i.cv = tail call ptr @hb_malloc(i64 noundef %i.cu) #10 ; 6 uses
  %.not16.i.i = icmp eq ptr %i.cv, null
  br i1 %.not16.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.m, !prof !32

bb.m:                                             ; preds = %bb.l
  store i32 %i.cr, ptr %i.cv, align 4, !tbaa !66
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4 ; 12 uses
  %i.cx = icmp ugt i16 %i.cq, 3
  br i1 %i.cx, label %.lr.ph.i25.i.i.preheader, label %.preheader.i17.i.i

.lr.ph.i25.i.i.preheader:                         ; preds = %bb.m
  %i.cy = add nsw i64 %i.cs, -4                   ; 2 uses
  %i.cz = lshr i64 %i.cy, 2                       ; 2 uses
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %i.db = icmp eq i64 %i.cz, 0
  br i1 %i.db, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i64 %i.da, 9223372036854775806
  br label %.lr.ph.i25.i.i

.preheader.i17.i.loopexit.i.unr-lcssa:            ; preds = %.lr.ph.i25.i.i
  %i.dc = and i64 %i.cy, 4
  %lcmp.mod140.not.not = icmp eq i64 %i.dc, 0
  br i1 %lcmp.mod140.not.not, label %.lr.ph.i25.i.i.epil.preheader, label %.preheader.i17.i.loopexit.i

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i25.i.i.preheader ], [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod142 = trunc i64 %i.da to i1
  tail call void @llvm.assume(i1 %lcmp.mod142)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.dd monotonic, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store atomic i32 -2147483648, ptr %i.de monotonic, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store atomic i32 -2147483648, ptr %i.df monotonic, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store atomic i32 -2147483648, ptr %i.dg monotonic, align 4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil.init, 4
  br label %.preheader.i17.i.loopexit.i

.preheader.i17.i.loopexit.i:                      ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.epil.preheader
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ], [ %indvars.iv.next.i.epil, %.lr.ph.i25.i.i.epil.preheader ]
  %i.dh = trunc nuw nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %.preheader.i17.i.i

.preheader.i17.i.i:                               ; preds = %.preheader.i17.i.loopexit.i, %bb.m
  %.0.lcssa.i18.i.i = phi i32 [ 0, %bb.m ], [ %i.dh, %.preheader.i17.i.loopexit.i ] ; 2 uses
  %i.di = icmp samesign ult i32 %.0.lcssa.i18.i.i, %i.cr
  br i1 %i.di, label %.lr.ph18.preheader.i19.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit

.lr.ph18.preheader.i19.i.i:                       ; preds = %.preheader.i17.i.i
  %i.dj = zext nneg i32 %.0.lcssa.i18.i.i to i64  ; 4 uses
  %i.dk = sub nsw i64 %i.cs, %i.dj
  %xtraiter143 = and i64 %i.dk, 7                 ; 2 uses
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod144.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol

.lr.ph18.i21.i.i.prol:                            ; preds = %.lr.ph18.preheader.i19.i.i, %.lr.ph18.i21.i.i.prol
  %indvars.iv.i22.i.i.prol = phi i64 [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ], [ %i.dj, %.lr.ph18.preheader.i19.i.i ] ; 2 uses
  %prol.iter145 = phi i64 [ %prol.iter145.next, %.lr.ph18.i21.i.i.prol ], [ 0, %.lr.ph18.preheader.i19.i.i ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i.prol
  store atomic i32 -2147483648, ptr %i.dl monotonic, align 4
  %indvars.iv.next.i23.i.i.prol = add nuw nsw i64 %indvars.iv.i22.i.i.prol, 1 ; 2 uses
  %prol.iter145.next = add i64 %prol.iter145, 1   ; 2 uses
  %prol.iter145.cmp.not = icmp eq i64 %prol.iter145.next, %xtraiter143
  br i1 %prol.iter145.cmp.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol, !llvm.loop !408

.lr.ph18.i21.i.i.prol.loopexit:                   ; preds = %.lr.ph18.i21.i.i.prol, %.lr.ph18.preheader.i19.i.i
  %indvars.iv.i22.i.i.unr = phi i64 [ %i.dj, %.lr.ph18.preheader.i19.i.i ], [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ]
  %i.dm = sub nsw i64 %i.dj, %i.cs
  %i.dn = icmp ugt i64 %i.dm, -8
  br i1 %i.dn, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %.lr.ph18.i21.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i25.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i25.i.i ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i ; 4 uses
  store atomic i32 -2147483648, ptr %i.do monotonic, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store atomic i32 -2147483648, ptr %i.dp monotonic, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store atomic i32 -2147483648, ptr %i.dq monotonic, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store atomic i32 -2147483648, ptr %i.dr monotonic, align 4
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store atomic i32 -2147483648, ptr %i.dt monotonic, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  store atomic i32 -2147483648, ptr %i.du monotonic, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store atomic i32 -2147483648, ptr %i.dv monotonic, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 28
  store atomic i32 -2147483648, ptr %i.dw monotonic, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i17.i.loopexit.i.unr-lcssa, label %.lr.ph.i25.i.i, !llvm.loop !1

.lr.ph18.i21.i.i:                                 ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i
  %indvars.iv.i22.i.i = phi i64 [ %indvars.iv.next.i23.i.i.7, %.lr.ph18.i21.i.i ], [ %indvars.iv.i22.i.i.unr, %.lr.ph18.i21.i.i.prol.loopexit ] ; 9 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i
  store atomic i32 -2147483648, ptr %i.dx monotonic, align 4
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store atomic i32 -2147483648, ptr %i.dz monotonic, align 4
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store atomic i32 -2147483648, ptr %i.eb monotonic, align 4
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  store atomic i32 -2147483648, ptr %i.ed monotonic, align 4
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store atomic i32 -2147483648, ptr %i.ef monotonic, align 4
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 20
  store atomic i32 -2147483648, ptr %i.eh monotonic, align 4
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store atomic i32 -2147483648, ptr %i.ej monotonic, align 4
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 28
  store atomic i32 -2147483648, ptr %i.el monotonic, align 4
  %indvars.iv.next.i23.i.i.7 = add nuw nsw i64 %indvars.iv.i22.i.i, 8 ; 2 uses
  %exitcond.not.i24.i.i.7 = icmp eq i64 %indvars.iv.next.i23.i.i.7, %i.cs
  br i1 %exitcond.not.i24.i.i.7, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %.lr.ph18.i21.i.i, !llvm.loop !2

_ZNK2OT18ItemVariationStore12create_cacheEv.exit: ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i, %._crit_edge113, %bb.l, %.preheader.i17.i.i
  %.1.i.i42 = phi ptr [ @_hb_NullPool, %._crit_edge113 ], [ @_hb_NullPool, %bb.l ], [ %i.cv, %.preheader.i17.i.i ], [ %i.cv, %.lr.ph18.i21.i.i ], [ %i.cv, %.lr.ph18.i21.i.i.prol.loopexit ] ; 3 uses
  %.not118 = icmp eq i32 %2, 0
  br i1 %.not118, label %._crit_edge117, label %.lr.ph116

.lr.ph116:                                        ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit
  %i.em = load i32, ptr @_hb_NullPool, align 16   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 6
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 8
  %i.ep = zext nneg i32 %.sroa.7.0 to i64
  %wide.trip.count126 = zext i32 %2 to i64
  br label %bb.o

._crit_edge117:                                   ; preds = %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit, %_ZNK2OT18ItemVariationStore12create_cacheEv.exit
  %.not.i.i43 = icmp eq ptr %.1.i.i42, @_hb_NullPool
  br i1 %.not.i.i43, label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge117
  tail call void @hb_free(ptr noundef nonnull %.1.i.i42) #10
  br label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit

bb.o:                                             ; preds = %.lr.ph116, %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit
  %indvars.iv123 = phi i64 [ 0, %.lr.ph116 ], [ %indvars.iv.next124, %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit ] ; 5 uses
  %.not.i44 = icmp samesign ult i64 %indvars.iv123, %i.ep
  br i1 %.not.i44, label %bb.q, label %bb.p, !prof !33

bb.p:                                             ; preds = %bb.o
  store i32 %i.em, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit46

bb.q:                                             ; preds = %bb.o
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14.0, i64 %indvars.iv123
  %.pre = load i32, ptr %i.eq, align 4, !tbaa !19
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit46

_ZN11hb_vector_tIiLb0EEixEi.exit46:               ; preds = %bb.p, %bb.q
  %i.er = phi i32 [ %i.em, %bb.p ], [ %.pre, %bb.q ]
  %i.es = trunc nuw i64 %indvars.iv123 to i32
  %i.et = tail call noundef i32 @_ZNK2OT16DeltaSetIndexMap3mapEj(ptr noundef nonnull align 1 dereferenceable(7) %.0.i.i, i32 noundef %i.es) ; 2 uses
  %i.eu = lshr i32 %i.et, 16                      ; 2 uses
  %i.ev = and i32 %i.et, 65535
  %i.ew = load i16, ptr %i.en, align 1, !tbaa !62
  %i.ex = tail call noundef i16 @llvm.bswap.i16(i16 %i.ew)
  %i.ey = zext i16 %i.ex to i32
  %.not.i.i47 = icmp samesign ult i32 %i.eu, %i.ey
  br i1 %.not.i.i47, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i, label %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit, !prof !33

_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i: ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit46
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.ez = zext nneg i32 %i.eu to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 1, !tbaa !64 ; 2 uses
  %i.fc = icmp eq i32 %i.fb, 0
  %i.fd = tail call i32 @llvm.bswap.i32(i32 %i.fb)
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 %i.fe
  %.0.i.i.i.i = select i1 %i.fc, ptr @_hb_NullPool, ptr %i.ff, !prof !32 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4
  %i.fh = load i16, ptr %i.fg, align 1, !tbaa !62
  %.not.i.i.i = icmp eq i16 %i.fh, 0
  br i1 %.not.i.i.i, label %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit, label %bb.r

bb.r:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i
  %i.fi = load i32, ptr %i.ci, align 1, !tbaa !64 ; 2 uses
  %i.fj = icmp eq i32 %i.fi, 0
  %i.fk = tail call i32 @llvm.bswap.i32(i32 %i.fi)
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 %i.fl
  %.0.i.i10.i.i = select i1 %i.fj, ptr @_hb_NullPool, ptr %i.fm, !prof !32
  %i.fn = tail call noundef float @_ZNK2OT7VarData10_get_deltaEjPKijRKNS_13VarRegionListEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i.i, i32 noundef %i.ev, ptr noundef %.sroa.14.0, i32 noundef %.sroa.7.0, ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i10.i.i, ptr noundef nonnull %.1.i.i42)
  %i.fo = fadd float %i.fn, 5.000000e-01
  %i.fp = tail call float @llvm.floor.f32(float %i.fo)
  br label %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit

_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit: ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit46, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i, %bb.r
  %.0.i.i48 = phi float [ 0.000000e+00, %_ZN11hb_vector_tIiLb0EEixEi.exit46 ], [ %i.fp, %bb.r ], [ 0.000000e+00, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i ] ; 2 uses
  %i.fq = fcmp oge float %.0.i.i48, -3.276800e+04
  %i.fr = select i1 %i.fq, float %.0.i.i48, float -3.276800e+04 ; 2 uses
  %i.fs = fcmp ole float %i.fr, 3.276800e+04
  %.sroa.speculated56 = select i1 %i.fs, float %i.fr, float 3.276800e+04
  %i.ft = fptosi float %.sroa.speculated56 to i32
  %i.fu = add nsw i32 %i.er, %i.ft
  %.sroa.speculate.load.false.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.fu, i32 -16384)
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated, i32 16384)
  %i.fv = sitofp i32 %.sroa.speculated to float
  %i.fw = fmul nnan float %i.fv, f0x38800000
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv123
  store float %i.fw, ptr %i.fx, align 4, !tbaa !142
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %._crit_edge117, label %bb.o, !llvm.loop !409

_ZN11hb_vector_tIiLb0EE6resizeEi.exit:            ; preds = %bb.n, %._crit_edge117, %._crit_edge, %bb.j
  br i1 %.sroa.0.0, label %bb.s, label %_ZN11hb_vector_tIiLb0EED2Ev.exit

bb.s:                                             ; preds = %_ZN11hb_vector_tIiLb0EE6resizeEi.exit
  tail call void @hb_free(ptr noundef %.sroa.14.0) #10
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit

_ZN11hb_vector_tIiLb0EED2Ev.exit:                 ; preds = %.thread.i, %bb.b, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit, %bb.s
  %.1106 = phi i1 [ true, %bb.s ], [ true, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit ], [ false, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i ], [ false, %bb.b ], [ false, %.thread.i ]
  ret i1 %.1106
}

declare ptr @hb_face_reference_table(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @hb_blob_get_length(ptr noundef) local_unnamed_addr #2

declare void @hb_blob_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL31_compute_avar2_reachable_rangesP16hb_subset_plan_t10hb_array_tIKN2OT10AxisRecordEEPKNS2_4avarEb(ptr noundef %0, ptr nofree readonly captures(address) %1, i64 %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.hb_hashmap_t.304, align 8   ; 12 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %i.c = alloca double, align 8                   ; 7 uses
  %6 = alloca %struct.hb_pair_t.305, align 8      ; 5 uses
  %7 = alloca %struct.hb_vector_t.306, align 8    ; 10 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %8 = alloca %struct.Triple, align 8             ; 6 uses
  %i.f = load i16, ptr %3, align 1, !tbaa !62
  %i.g = tail call noundef i16 @llvm.bswap.i16(i16 %i.f)
  %i.h = icmp ugt i16 %i.g, 1
end_hunk_1
begin_hunk_2_@_Z37update_instance_metrics_map_from_cff2P16hb_subset_plan_t:bb.a
  br i1 %.not.i.i.i.i59.i, label %.critedge.i38.i, label %bb.n, !prof !32

bb.n:                                             ; preds = %bb.m
  %i.bo = zext i32 %.sroa.11.0118.i to i64
  %i.bp = shl nuw nsw i64 %i.bo, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr nonnull readonly align 1 %.sroa.17.0120.i, i64 range(i64 0, 309237645241) %i.bp, i1 false), !alias.scope !520
  br label %.critedge.i38.i

_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i48.i: ; preds = %bb.k, %bb.j
  %i.bq = phi ptr [ null, %bb.k ], [ %.sroa.17.0120.i, %bb.j ]
  %i.br = shl nuw i32 %i.bh, 3
  %i.bs = zext i32 %i.br to i64
  %i.bt = call ptr @hb_realloc(ptr noundef %i.bq, i64 noundef %i.bs) #10 ; 2 uses
  %.not22.i49.i = icmp eq ptr %i.bt, null
  br i1 %.not22.i49.i, label %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i55.i, label %.critedge.i38.i, !prof !133

_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i55.i: ; preds = %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i48.i, %bb.l
  %i.bu = xor i32 %.sroa.071.0117.i, -1
  br label %_ZN11hb_vector_tI14hb_variation_tLb0EE5allocEjb.exit61.i

_ZN11hb_vector_tI14hb_variation_tLb0EE5allocEjb.exit61.i: ; preds = %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i55.i, %.critedge.i60.i, %bb.h
  %.sroa.071.5.i = phi i32 [ %.sroa.071.0117.i, %bb.h ], [ %i.bu, %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i55.i ], [ %i.bk, %.critedge.i60.i ]
  store i64 %i.bb, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tI14hb_variation_tLb0EE4pushIJRS0_EEEPS0_DpOT_.exit.i

.critedge.i38.i:                                  ; preds = %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i48.i, %bb.n, %bb.m, %bb.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv.exit.i"
  %.sroa.071.3.i = phi i32 [ %.sroa.071.0117.i, %bb.i ], [ %i.bh, %bb.m ], [ %i.bh, %bb.n ], [ %i.bh, %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i48.i ], [ %.sroa.071.0117.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv.exit.i" ]
  %.sroa.17.4.i = phi ptr [ %.sroa.17.0120.i, %bb.i ], [ %i.bn, %bb.m ], [ %i.bn, %bb.n ], [ %i.bt, %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i48.i ], [ %.sroa.17.0120.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv.exit.i" ] ; 2 uses
  %i.bv = zext i32 %.sroa.11.0118.i to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.17.4.i, i64 %i.bv ; 2 uses
  store i32 %i.bc, ptr %i.bw, align 4
  %.sroa_idx62.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store float %i.bd, ptr %.sroa_idx62.i, align 4
  br label %_ZN11hb_vector_tI14hb_variation_tLb0EE4pushIJRS0_EEEPS0_DpOT_.exit.i

_ZN11hb_vector_tI14hb_variation_tLb0EE4pushIJRS0_EEEPS0_DpOT_.exit.i: ; preds = %.critedge.i38.i, %_ZN11hb_vector_tI14hb_variation_tLb0EE5allocEjb.exit61.i
  %.sroa.071.4.i = phi i32 [ %.sroa.071.3.i, %.critedge.i38.i ], [ %.sroa.071.5.i, %_ZN11hb_vector_tI14hb_variation_tLb0EE5allocEjb.exit61.i ] ; 2 uses
  %.sroa.11.1.i = phi i32 [ %.pre.i, %.critedge.i38.i ], [ %.sroa.11.0118.i, %_ZN11hb_vector_tI14hb_variation_tLb0EE5allocEjb.exit61.i ]
  %.sroa.17.5.i = phi ptr [ %.sroa.17.4.i, %.critedge.i38.i ], [ %.sroa.17.0120.i, %_ZN11hb_vector_tI14hb_variation_tLb0EE5allocEjb.exit61.i ] ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i", %_ZN11hb_vector_tI14hb_variation_tLb0EE4pushIJRS0_EEEPS0_DpOT_.exit.i
  %.sroa.766.1.i = phi i64 [ %.sroa.766.0121.i, %_ZN11hb_vector_tI14hb_variation_tLb0EE4pushIJRS0_EEEPS0_DpOT_.exit.i ], [ %.sroa.766.8.insert.ext.i, %"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.065.1.i = phi ptr [ %.sroa.065.0122.i, %_ZN11hb_vector_tI14hb_variation_tLb0EE4pushIJRS0_EEEPS0_DpOT_.exit.i ], [ %i.by, %"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i" ] ; 3 uses
  %.not.i.i.i.i.i.i39.i = icmp eq i64 %.sroa.766.1.i, 0
  br i1 %.not.i.i.i.i.i.i39.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i, !prof !32

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i: ; preds = %bb.o
  %.sroa.766.8.extract.trunc70.i = trunc nuw i64 %.sroa.766.1.i to i32
  %i.bx = add i32 %.sroa.766.8.extract.trunc70.i, -1 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.065.1.i, i64 32 ; 3 uses
  %.not.i.i.i.i40.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i.i.i40.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i", label %"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i"

"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i
  %.sroa.766.8.insert.ext.i = zext i32 %i.bx to i64 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.065.1.i, i64 36
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = trunc i32 %i.ca to i1
  br i1 %i.cb, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i", label %bb.o, !llvm.loop !6

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i": ; preds = %"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i", %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i, %bb.o
  %.sroa.766.2.i = phi i64 [ 0, %bb.o ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i ], [ %.sroa.766.8.insert.ext.i, %"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.065.2.i = phi ptr [ %.sroa.065.1.i, %bb.o ], [ %i.by, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i ], [ %i.by, %"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i" ] ; 2 uses
  %.not.i.i.i36.i = icmp ne ptr %.sroa.065.2.i, %i.ay
  %i.cc = icmp ne i64 %.sroa.766.2.i, 0
  %i.cd = or i1 %i.cc, %.not.i.i.i36.i
  br i1 %i.cd, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i", %_ZL3endIRK12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E3endEEOS6_.exit.i
  %.sroa.071.0.lcssa.i = phi i32 [ %.sroa.071.2.ph.i, %_ZL3endIRK12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E3endEEOS6_.exit.i ], [ %.sroa.071.4.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i" ]
  %.sroa.17.0.lcssa.i = phi ptr [ %.sroa.17.3.ph.i, %_ZL3endIRK12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E3endEEOS6_.exit.i ], [ %.sroa.17.5.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i" ] ; 2 uses
  %i.ce = load i32, ptr %i.t, align 4, !tbaa !128
  call void @hb_font_set_variations(ptr noundef %i.m, ptr noundef %.sroa.17.0.lcssa.i, i32 noundef %i.ce) #10
  %i.cf = add i32 %.sroa.071.0.lcssa.i, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.cf, -2
  br i1 %spec.select.i.i.i.i, label %bb.p, label %_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit

bb.p:                                             ; preds = %._crit_edge.i
  call void @hb_free(ptr noundef %.sroa.17.0.lcssa.i) #10
  br label %_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit

_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit: ; preds = %bb.d, %._crit_edge.i, %bb.p
  %i.cg = icmp ne ptr %i.m, null
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !132, !range !30, !noundef !31
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = and i1 %i.cg, %i.cj                     ; 2 uses
  %i.cl = zext i1 %i.ck to i8
  store i8 %i.cl, ptr %i.ch, align 8, !tbaa !132
  br i1 %i.ck, label %bb.r, label %bb.q, !prof !521

bb.q:                                             ; preds = %_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit.thread, %_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit
  %.1.i223 = phi ptr [ null, %_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit.thread ], [ %i.m, %_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit ]
  call void @hb_font_destroy(ptr noundef %.1.i223) #10
  br label %bb.bn

bb.r:                                             ; preds = %_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) @__const._Z37update_instance_metrics_map_from_cff2P16hb_subset_plan_t.extents, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !175
  call void @_ZN2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_tC2EP9hb_face_t(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !202
  %.not230 = icmp eq i32 %i.co, 0
  br i1 %.not230, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !203 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cq, null
  %spec.select.i.i = select i1 %.not.i.i, ptr @_hb_NullPool, ptr %i.cq ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !79 ; 2 uses
  %.not = icmp eq i32 %i.cs, 0
  br i1 %.not, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !78
  %i.cv = icmp ult i32 %i.cs, 20
  %spec.select.i.i1.i.i = select i1 %i.cv, ptr @_hb_NullPool, ptr %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 4
  %i.cx = load i32, ptr %i.cw, align 1, !tbaa !64 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  %i.cz = call i32 @llvm.bswap.i32(i32 %i.cx)
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 %i.da
  %.0.i.i.i = select i1 %i.cy, ptr @_hb_NullPool, ptr %i.db, !prof !32 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.dd = load i32, ptr %i.dc, align 1, !tbaa !64 ; 2 uses
  %i.de = icmp eq i32 %i.dd, 0
  %i.df = call i32 @llvm.bswap.i32(i32 %i.dd)
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.dg
  %.0.i.i.i80 = select i1 %i.de, ptr @_hb_NullPool, ptr %i.dh, !prof !32
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i.i80, i64 2
  %i.dj = load i16, ptr %i.di, align 1, !tbaa !62 ; 2 uses
  %i.dk = call noundef i16 @llvm.bswap.i16(i16 %i.dj) ; 3 uses
  %i.dl = zext i16 %i.dk to i32                   ; 2 uses
  %.not.i.i81 = icmp eq i16 %i.dj, 0
  br i1 %.not.i.i81, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dm = zext i16 %i.dk to i64                   ; 5 uses
  %i.dn = shl nuw nsw i64 %i.dm, 2
  %i.do = add nuw nsw i64 %i.dn, 4
  %i.dp = call ptr @hb_malloc(i64 noundef %i.do) #10 ; 6 uses
  %.not16.i.i = icmp eq ptr %i.dp, null
  br i1 %.not16.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.v, !prof !32

bb.v:                                             ; preds = %bb.u
  store i32 %i.dl, ptr %i.dp, align 4, !tbaa !66
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 12 uses
  %i.dr = icmp ugt i16 %i.dk, 3
  br i1 %i.dr, label %.lr.ph.i25.i.i.preheader, label %.preheader.i17.i.i

.lr.ph.i25.i.i.preheader:                         ; preds = %bb.v
  %i.ds = add nsw i64 %i.dm, -4                   ; 2 uses
  %i.dt = lshr i64 %i.ds, 2                       ; 2 uses
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %i.dv = icmp eq i64 %i.dt, 0
  br i1 %i.dv, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i64 %i.du, 9223372036854775806
  br label %.lr.ph.i25.i.i

.preheader.i17.i.loopexit.i.unr-lcssa:            ; preds = %.lr.ph.i25.i.i
  %i.dw = and i64 %i.ds, 4
  %lcmp.mod.not.not = icmp eq i64 %i.dw, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i25.i.i.epil.preheader, label %.preheader.i17.i.loopexit.i

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i25.i.i.preheader ], [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod310 = trunc i64 %i.du to i1
  call void @llvm.assume(i1 %lcmp.mod310)
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv.i.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.dx monotonic, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  store atomic i32 -2147483648, ptr %i.dy monotonic, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store atomic i32 -2147483648, ptr %i.dz monotonic, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store atomic i32 -2147483648, ptr %i.ea monotonic, align 4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil.init, 4
  br label %.preheader.i17.i.loopexit.i

.preheader.i17.i.loopexit.i:                      ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.epil.preheader
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ], [ %indvars.iv.next.i.epil, %.lr.ph.i25.i.i.epil.preheader ]
  %i.eb = trunc nuw nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %.preheader.i17.i.i

.preheader.i17.i.i:                               ; preds = %.preheader.i17.i.loopexit.i, %bb.v
  %.0.lcssa.i18.i.i = phi i32 [ 0, %bb.v ], [ %i.eb, %.preheader.i17.i.loopexit.i ] ; 2 uses
  %i.ec = icmp samesign ult i32 %.0.lcssa.i18.i.i, %i.dl
  br i1 %i.ec, label %.lr.ph18.preheader.i19.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit

.lr.ph18.preheader.i19.i.i:                       ; preds = %.preheader.i17.i.i
  %i.ed = zext nneg i32 %.0.lcssa.i18.i.i to i64  ; 4 uses
  %i.ee = sub nsw i64 %i.dm, %i.ed
  %xtraiter311 = and i64 %i.ee, 7                 ; 2 uses
  %lcmp.mod312.not = icmp eq i64 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol

.lr.ph18.i21.i.i.prol:                            ; preds = %.lr.ph18.preheader.i19.i.i, %.lr.ph18.i21.i.i.prol
  %indvars.iv.i22.i.i.prol = phi i64 [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ], [ %i.ed, %.lr.ph18.preheader.i19.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i21.i.i.prol ], [ 0, %.lr.ph18.preheader.i19.i.i ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv.i22.i.i.prol
  store atomic i32 -2147483648, ptr %i.ef monotonic, align 4
  %indvars.iv.next.i23.i.i.prol = add nuw nsw i64 %indvars.iv.i22.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter311
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol, !llvm.loop !486

.lr.ph18.i21.i.i.prol.loopexit:                   ; preds = %.lr.ph18.i21.i.i.prol, %.lr.ph18.preheader.i19.i.i
  %indvars.iv.i22.i.i.unr = phi i64 [ %i.ed, %.lr.ph18.preheader.i19.i.i ], [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ]
  %i.eg = sub nsw i64 %i.ed, %i.dm
  %i.eh = icmp ugt i64 %i.eg, -8
  br i1 %i.eh, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %.lr.ph18.i21.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i25.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i25.i.i ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv.i ; 4 uses
  store atomic i32 -2147483648, ptr %i.ei monotonic, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store atomic i32 -2147483648, ptr %i.ej monotonic, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store atomic i32 -2147483648, ptr %i.ek monotonic, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store atomic i32 -2147483648, ptr %i.el monotonic, align 4
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv.i ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store atomic i32 -2147483648, ptr %i.en monotonic, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  store atomic i32 -2147483648, ptr %i.eo monotonic, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  store atomic i32 -2147483648, ptr %i.ep monotonic, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 28
  store atomic i32 -2147483648, ptr %i.eq monotonic, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i17.i.loopexit.i.unr-lcssa, label %.lr.ph.i25.i.i, !llvm.loop !1

.lr.ph18.i21.i.i:                                 ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i
  %indvars.iv.i22.i.i = phi i64 [ %indvars.iv.next.i23.i.i.7, %.lr.ph18.i21.i.i ], [ %indvars.iv.i22.i.i.unr, %.lr.ph18.i21.i.i.prol.loopexit ] ; 9 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv.i22.i.i
  store atomic i32 -2147483648, ptr %i.er monotonic, align 4
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv.i22.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store atomic i32 -2147483648, ptr %i.et monotonic, align 4
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv.i22.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store atomic i32 -2147483648, ptr %i.ev monotonic, align 4
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv.i22.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  store atomic i32 -2147483648, ptr %i.ex monotonic, align 4
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv.i22.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store atomic i32 -2147483648, ptr %i.ez monotonic, align 4
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv.i22.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 20
  store atomic i32 -2147483648, ptr %i.fb monotonic, align 4
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv.i22.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  store atomic i32 -2147483648, ptr %i.fd monotonic, align 4
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv.i22.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 28
  store atomic i32 -2147483648, ptr %i.ff monotonic, align 4
  %indvars.iv.next.i23.i.i.7 = add nuw nsw i64 %indvars.iv.i22.i.i, 8 ; 2 uses
  %exitcond.not.i24.i.i.7 = icmp eq i64 %indvars.iv.next.i23.i.i.7, %i.dm
  br i1 %exitcond.not.i24.i.i.7, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %.lr.ph18.i21.i.i, !llvm.loop !2

_ZNK2OT18ItemVariationStore12create_cacheEv.exit: ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i, %.preheader.i17.i.i, %bb.u, %bb.t, %bb.s, %bb.r
  %.056 = phi ptr [ null, %bb.r ], [ null, %bb.s ], [ @_hb_NullPool, %bb.t ], [ @_hb_NullPool, %bb.u ], [ %i.dp, %.preheader.i17.i.i ], [ %i.dp, %.lr.ph18.i21.i.i ], [ %i.dp, %.lr.ph18.i21.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.fg = load ptr, ptr %i.h, align 8, !tbaa !175
  call void @_ZN2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_tC2EP9hb_face_t(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.fg)
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !207
  %.not231 = icmp eq i32 %i.fi, 0
  br i1 %.not231, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit104, label %bb.w

bb.w:                                             ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !203 ; 2 uses
  %.not.i.i82 = icmp eq ptr %i.fk, null
  %spec.select.i.i83 = select i1 %.not.i.i82, ptr @_hb_NullPool, ptr %i.fk ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %spec.select.i.i83, i64 24
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !79 ; 2 uses
  %.not58 = icmp eq i32 %i.fm, 0
  br i1 %.not58, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit104, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fn = getelementptr inbounds nuw i8, ptr %spec.select.i.i83, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !78
  %i.fp = icmp ult i32 %i.fm, 24
  %spec.select.i.i1.i.i86 = select i1 %i.fp, ptr @_hb_NullPool, ptr %i.fo ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i86, i64 4
  %i.fr = load i32, ptr %i.fq, align 1, !tbaa !64 ; 2 uses
  %i.fs = icmp eq i32 %i.fr, 0
  %i.ft = call i32 @llvm.bswap.i32(i32 %i.fr)
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i86, i64 %i.fu
  %.0.i.i.i87 = select i1 %i.fs, ptr @_hb_NullPool, ptr %i.fv, !prof !32 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i.i.i87, i64 2
  %i.fx = load i32, ptr %i.fw, align 1, !tbaa !64 ; 2 uses
  %i.fy = icmp eq i32 %i.fx, 0
  %i.fz = call i32 @llvm.bswap.i32(i32 %i.fx)
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i.i.i87, i64 %i.ga
  %.0.i.i.i88 = select i1 %i.fy, ptr @_hb_NullPool, ptr %i.gb, !prof !32
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.i.i.i88, i64 2
  %i.gd = load i16, ptr %i.gc, align 1, !tbaa !62 ; 2 uses
  %i.ge = call noundef i16 @llvm.bswap.i16(i16 %i.gd) ; 3 uses
  %i.gf = zext i16 %i.ge to i32                   ; 2 uses
  %.not.i.i89 = icmp eq i16 %i.gd, 0
  br i1 %.not.i.i89, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit104, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gg = zext i16 %i.ge to i64                   ; 5 uses
  %i.gh = shl nuw nsw i64 %i.gg, 2
  %i.gi = add nuw nsw i64 %i.gh, 4
  %i.gj = call ptr @hb_malloc(i64 noundef %i.gi) #10 ; 6 uses
  %.not16.i.i90 = icmp eq ptr %i.gj, null
  br i1 %.not16.i.i90, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit104, label %bb.z, !prof !32

bb.z:                                             ; preds = %bb.y
  store i32 %i.gf, ptr %i.gj, align 4, !tbaa !66
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4 ; 12 uses
  %i.gl = icmp ugt i16 %i.ge, 3
  br i1 %i.gl, label %.lr.ph.i25.i.i100.preheader, label %.preheader.i17.i.i91

.lr.ph.i25.i.i100.preheader:                      ; preds = %bb.z
  %i.gm = add nsw i64 %i.gg, -4                   ; 2 uses
  %i.gn = lshr i64 %i.gm, 2                       ; 2 uses
  %i.go = add nuw nsw i64 %i.gn, 1                ; 2 uses
  %i.gp = icmp eq i64 %i.gn, 0
  br i1 %i.gp, label %.lr.ph.i25.i.i100.epil.preheader, label %.lr.ph.i25.i.i100.preheader.new

.lr.ph.i25.i.i100.preheader.new:                  ; preds = %.lr.ph.i25.i.i100.preheader
  %unroll_iter317 = and i64 %i.go, 9223372036854775806
  br label %.lr.ph.i25.i.i100

.preheader.i17.i.loopexit.i103.unr-lcssa:         ; preds = %.lr.ph.i25.i.i100
  %i.gq = and i64 %i.gm, 4
  %lcmp.mod314.not.not = icmp eq i64 %i.gq, 0
  br i1 %lcmp.mod314.not.not, label %.lr.ph.i25.i.i100.epil.preheader, label %.preheader.i17.i.loopexit.i103

.lr.ph.i25.i.i100.epil.preheader:                 ; preds = %.preheader.i17.i.loopexit.i103.unr-lcssa, %.lr.ph.i25.i.i100.preheader
  %indvars.iv.i101.epil.init = phi i64 [ 0, %.lr.ph.i25.i.i100.preheader ], [ %indvars.iv.next.i102.1, %.preheader.i17.i.loopexit.i103.unr-lcssa ] ; 2 uses
  %lcmp.mod316 = trunc i64 %i.go to i1
  call void @llvm.assume(i1 %lcmp.mod316)
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.i101.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.gr monotonic, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  store atomic i32 -2147483648, ptr %i.gs monotonic, align 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store atomic i32 -2147483648, ptr %i.gt monotonic, align 4
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  store atomic i32 -2147483648, ptr %i.gu monotonic, align 4
  %indvars.iv.next.i102.epil = add nuw nsw i64 %indvars.iv.i101.epil.init, 4
  br label %.preheader.i17.i.loopexit.i103

.preheader.i17.i.loopexit.i103:                   ; preds = %.preheader.i17.i.loopexit.i103.unr-lcssa, %.lr.ph.i25.i.i100.epil.preheader
  %indvars.iv.next.i102.lcssa = phi i64 [ %indvars.iv.next.i102.1, %.preheader.i17.i.loopexit.i103.unr-lcssa ], [ %indvars.iv.next.i102.epil, %.lr.ph.i25.i.i100.epil.preheader ]
  %i.gv = trunc nuw nsw i64 %indvars.iv.next.i102.lcssa to i32
  br label %.preheader.i17.i.i91

.preheader.i17.i.i91:                             ; preds = %.preheader.i17.i.loopexit.i103, %bb.z
  %.0.lcssa.i18.i.i92 = phi i32 [ 0, %bb.z ], [ %i.gv, %.preheader.i17.i.loopexit.i103 ] ; 2 uses
  %i.gw = icmp samesign ult i32 %.0.lcssa.i18.i.i92, %i.gf
  br i1 %i.gw, label %.lr.ph18.preheader.i19.i.i94, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit104

.lr.ph18.preheader.i19.i.i94:                     ; preds = %.preheader.i17.i.i91
  %i.gx = zext nneg i32 %.0.lcssa.i18.i.i92 to i64 ; 4 uses
  %i.gy = sub nsw i64 %i.gg, %i.gx
  %xtraiter319 = and i64 %i.gy, 7                 ; 2 uses
  %lcmp.mod320.not = icmp eq i64 %xtraiter319, 0
  br i1 %lcmp.mod320.not, label %.lr.ph18.i21.i.i95.prol.loopexit, label %.lr.ph18.i21.i.i95.prol

.lr.ph18.i21.i.i95.prol:                          ; preds = %.lr.ph18.preheader.i19.i.i94, %.lr.ph18.i21.i.i95.prol
  %indvars.iv.i22.i.i96.prol = phi i64 [ %indvars.iv.next.i23.i.i97.prol, %.lr.ph18.i21.i.i95.prol ], [ %i.gx, %.lr.ph18.preheader.i19.i.i94 ] ; 2 uses
  %prol.iter321 = phi i64 [ %prol.iter321.next, %.lr.ph18.i21.i.i95.prol ], [ 0, %.lr.ph18.preheader.i19.i.i94 ]
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.i22.i.i96.prol
  store atomic i32 -2147483648, ptr %i.gz monotonic, align 4
  %indvars.iv.next.i23.i.i97.prol = add nuw nsw i64 %indvars.iv.i22.i.i96.prol, 1 ; 2 uses
  %prol.iter321.next = add i64 %prol.iter321, 1   ; 2 uses
  %prol.iter321.cmp.not = icmp eq i64 %prol.iter321.next, %xtraiter319
  br i1 %prol.iter321.cmp.not, label %.lr.ph18.i21.i.i95.prol.loopexit, label %.lr.ph18.i21.i.i95.prol, !llvm.loop !487

.lr.ph18.i21.i.i95.prol.loopexit:                 ; preds = %.lr.ph18.i21.i.i95.prol, %.lr.ph18.preheader.i19.i.i94
  %indvars.iv.i22.i.i96.unr = phi i64 [ %i.gx, %.lr.ph18.preheader.i19.i.i94 ], [ %indvars.iv.next.i23.i.i97.prol, %.lr.ph18.i21.i.i95.prol ]
  %i.ha = sub nsw i64 %i.gx, %i.gg
  %i.hb = icmp ugt i64 %i.ha, -8
  br i1 %i.hb, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit104, label %.lr.ph18.i21.i.i95

.lr.ph.i25.i.i100:                                ; preds = %.lr.ph.i25.i.i100, %.lr.ph.i25.i.i100.preheader.new
  %indvars.iv.i101 = phi i64 [ 0, %.lr.ph.i25.i.i100.preheader.new ], [ %indvars.iv.next.i102.1, %.lr.ph.i25.i.i100 ] ; 3 uses
  %niter318 = phi i64 [ 0, %.lr.ph.i25.i.i100.preheader.new ], [ %niter318.next.1, %.lr.ph.i25.i.i100 ]
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.i101 ; 4 uses
  store atomic i32 -2147483648, ptr %i.hc monotonic, align 4
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store atomic i32 -2147483648, ptr %i.hd monotonic, align 4
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store atomic i32 -2147483648, ptr %i.he monotonic, align 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  store atomic i32 -2147483648, ptr %i.hf monotonic, align 4
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.i101 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store atomic i32 -2147483648, ptr %i.hh monotonic, align 4
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 20
  store atomic i32 -2147483648, ptr %i.hi monotonic, align 4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  store atomic i32 -2147483648, ptr %i.hj monotonic, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 28
  store atomic i32 -2147483648, ptr %i.hk monotonic, align 4
  %indvars.iv.next.i102.1 = add nuw nsw i64 %indvars.iv.i101, 8 ; 3 uses
  %niter318.next.1 = add i64 %niter318, 2         ; 2 uses
  %niter318.ncmp.1.not = icmp eq i64 %niter318.next.1, %unroll_iter317
  br i1 %niter318.ncmp.1.not, label %.preheader.i17.i.loopexit.i103.unr-lcssa, label %.lr.ph.i25.i.i100, !llvm.loop !1

.lr.ph18.i21.i.i95:                               ; preds = %.lr.ph18.i21.i.i95.prol.loopexit, %.lr.ph18.i21.i.i95
  %indvars.iv.i22.i.i96 = phi i64 [ %indvars.iv.next.i23.i.i97.7, %.lr.ph18.i21.i.i95 ], [ %indvars.iv.i22.i.i96.unr, %.lr.ph18.i21.i.i95.prol.loopexit ] ; 9 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.i22.i.i96
  store atomic i32 -2147483648, ptr %i.hl monotonic, align 4
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.i22.i.i96
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  store atomic i32 -2147483648, ptr %i.hn monotonic, align 4
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.i22.i.i96
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store atomic i32 -2147483648, ptr %i.hp monotonic, align 4
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.i22.i.i96
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  store atomic i32 -2147483648, ptr %i.hr monotonic, align 4
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.i22.i.i96
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store atomic i32 -2147483648, ptr %i.ht monotonic, align 4
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.i22.i.i96
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 20
  store atomic i32 -2147483648, ptr %i.hv monotonic, align 4
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.i22.i.i96
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  store atomic i32 -2147483648, ptr %i.hx monotonic, align 4
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.i22.i.i96
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 28
  store atomic i32 -2147483648, ptr %i.hz monotonic, align 4
  %indvars.iv.next.i23.i.i97.7 = add nuw nsw i64 %indvars.iv.i22.i.i96, 8 ; 2 uses
  %exitcond.not.i24.i.i98.7 = icmp eq i64 %indvars.iv.next.i23.i.i97.7, %i.gg
  br i1 %exitcond.not.i24.i.i98.7, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit104, label %.lr.ph18.i21.i.i95, !llvm.loop !2

_ZNK2OT18ItemVariationStore12create_cacheEv.exit104: ; preds = %.lr.ph18.i21.i.i95.prol.loopexit, %.lr.ph18.i21.i.i95, %.preheader.i17.i.i91, %bb.y, %bb.x, %bb.w, %_ZNK2OT18ItemVariationStore12create_cacheEv.exit
  %.055 = phi ptr [ null, %_ZNK2OT18ItemVariationStore12create_cacheEv.exit ], [ null, %bb.w ], [ @_hb_NullPool, %bb.x ], [ @_hb_NullPool, %bb.y ], [ %i.gj, %.preheader.i17.i.i91 ], [ %i.gj, %.lr.ph18.i21.i.i95 ], [ %i.gj, %.lr.ph18.i21.i.i95.prol.loopexit ] ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !522 ; 2 uses
  %i.ic = getelementptr i8, ptr %i.ib, i64 28
  %.val = load i32, ptr %i.ic, align 4, !tbaa !171 ; 2 uses
  %i.id = getelementptr i8, ptr %i.ib, i64 40
  %.val70 = load ptr, ptr %i.id, align 8, !tbaa !52 ; 5 uses
  %i.ie = add i32 %.val, 1                        ; 3 uses
  %.not15.i.i.i.i.i.i.i = icmp ult i32 %i.ie, 2
  br i1 %.not15.i.i.i.i.i.i.i, label %_ZL3endIR8hb_map_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E3endEEOS3_.exit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i: ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit104
  %i.if = zext i32 %.val to i64
  %i.ig = mul nuw nsw i64 %i.if, 12
  %i.ih = getelementptr i8, ptr %.val70, i64 %i.ig
  %scevgep.i.i.i = getelementptr i8, ptr %i.ih, i64 12 ; 2 uses
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i
  %.sroa.5.sroa.0.0.i.i.i = phi i32 [ %i.il, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i ], [ %i.ie, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i = phi ptr [ %i.im, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i ], [ %.val70, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i ] ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i, i64 4
  %i.ij = load i32, ptr %i.ii, align 4, !noalias !523
  %i.ik = trunc i32 %i.ij to i1
  br i1 %i.ik, label %_ZL5beginIR8hb_map_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS3_.exit, label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i
  %i.il = add i32 %.sroa.5.sroa.0.0.i.i.i, -1     ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i, i64 12
  %i.in = icmp eq i32 %i.il, 0
  br i1 %i.in, label %_ZL5beginIR8hb_map_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS3_.exit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i, !llvm.loop !500

_ZL5beginIR8hb_map_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS3_.exit: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i
  %.sroa.5.sroa.0.1.ph.i.i.i = phi i32 [ %.sroa.5.sroa.0.0.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i ]
  %.sroa.02.1.ph.i.i.i = phi ptr [ %.sroa.02.0.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i ], [ %scevgep.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i ]
  %i.io = zext i32 %.sroa.5.sroa.0.1.ph.i.i.i to i64
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i108

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i108: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i112, %_ZL5beginIR8hb_map_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS3_.exit
  %.sroa.5.sroa.0.0.i.i.i110 = phi i32 [ %i.is, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i112 ], [ %i.ie, %_ZL5beginIR8hb_map_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS3_.exit ] ; 2 uses
  %.sroa.02.0.i.i.i111 = phi ptr [ %i.it, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i112 ], [ %.val70, %_ZL5beginIR8hb_map_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS3_.exit ] ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i111, i64 4
  %i.iq = load i32, ptr %i.ip, align 4, !noalias !524
  %i.ir = trunc i32 %i.iq to i1
  br i1 %i.ir, label %_ZNK12hb_hashmap_tIjjLb1EE10iter_itemsEv.exit.loopexit.i.i.i113, label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i112

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i112: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i108
  %i.is = add i32 %.sroa.5.sroa.0.0.i.i.i110, -1  ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i111, i64 12
  %i.iu = icmp eq i32 %i.is, 0
  br i1 %i.iu, label %_ZNK12hb_hashmap_tIjjLb1EE10iter_itemsEv.exit.loopexit.i.i.i113, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i108, !llvm.loop !500

_ZNK12hb_hashmap_tIjjLb1EE10iter_itemsEv.exit.loopexit.i.i.i113: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i112, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i108
  %.sroa.5.sroa.0.1.ph.i.i.i115 = phi i32 [ %.sroa.5.sroa.0.0.i.i.i110, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i108 ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i112 ]
  %.sroa.02.1.ph.i.i.i116 = phi ptr [ %.sroa.02.0.i.i.i111, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i108 ], [ %scevgep.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i112 ]
  %i.iv = zext i32 %.sroa.5.sroa.0.1.ph.i.i.i115 to i64
  br label %_ZL3endIR8hb_map_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E3endEEOS3_.exit

_ZL3endIR8hb_map_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E3endEEOS3_.exit: ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit104, %_ZNK12hb_hashmap_tIjjLb1EE10iter_itemsEv.exit.loopexit.i.i.i113
  %.sroa.5.sroa.0.0.insert.insert.i.i.i227 = phi i64 [ %i.io, %_ZNK12hb_hashmap_tIjjLb1EE10iter_itemsEv.exit.loopexit.i.i.i113 ], [ 0, %_ZNK2OT18ItemVariationStore12create_cacheEv.exit104 ] ; 3 uses
  %.sroa.02.1.i.i.i226 = phi ptr [ %.sroa.02.1.ph.i.i.i, %_ZNK12hb_hashmap_tIjjLb1EE10iter_itemsEv.exit.loopexit.i.i.i113 ], [ %.val70, %_ZNK2OT18ItemVariationStore12create_cacheEv.exit104 ] ; 2 uses
  %.sroa.02.1.i.i.i117 = phi ptr [ %.sroa.02.1.ph.i.i.i116, %_ZNK12hb_hashmap_tIjjLb1EE10iter_itemsEv.exit.loopexit.i.i.i113 ], [ %.val70, %_ZNK2OT18ItemVariationStore12create_cacheEv.exit104 ]
  %.sroa.5.sroa.0.0.insert.insert.i.i.i118 = phi i64 [ %i.iv, %_ZNK12hb_hashmap_tIjjLb1EE10iter_itemsEv.exit.loopexit.i.i.i113 ], [ 0, %_ZNK2OT18ItemVariationStore12create_cacheEv.exit104 ]
  %i.iw = getelementptr inbounds nuw [12 x i8], ptr %.sroa.02.1.i.i.i117, i64 %.sroa.5.sroa.0.0.insert.insert.i.i.i118 ; 2 uses
  %.not.i.i.i241 = icmp ne ptr %.sroa.02.1.i.i.i226, %i.iw
  %i.ix = icmp ne i64 %.sroa.5.sroa.0.0.insert.insert.i.i.i227, 0
  %i.iy = or i1 %i.ix, %.not.i.i.i241
  br i1 %i.iy, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZL3endIR8hb_map_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E3endEEOS3_.exit
  %.sroa.7213.8.extract.trunc240 = trunc nuw i64 %.sroa.5.sroa.0.0.insert.insert.i.i.i227 to i32
  %i.iz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 3032 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 3036 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 3044 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 3040 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ji = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.jk = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.m, i64 124 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 2720
  %i.jn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %i.jp = load i32, ptr @_hb_NullPool, align 16   ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %i.jr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.js = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.jt = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.jw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 2836
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 2840
  br label %bb.aa

._crit_edge:                                      ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_9LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit", %_ZL3endIR8hb_map_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E3endEEOS3_.exit
  call void @hb_font_destroy(ptr noundef nonnull %i.m) #10
  %.not59 = icmp eq ptr %.056, null
  %.not.i.i177 = icmp eq ptr %.056, @_hb_NullPool
  %or.cond = or i1 %.not59, %.not.i.i177
  br i1 %or.cond, label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit, label %bb.bl

bb.aa:                                            ; preds = %.lr.ph, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_9LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit"
  %.sroa.7213.8.extract.trunc244 = phi i32 [ %.sroa.7213.8.extract.trunc240, %.lr.ph ], [ %.sroa.7213.8.extract.trunc, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_9LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit" ]
  %.sroa.7213.0243 = phi i64 [ %.sroa.5.sroa.0.0.insert.insert.i.i.i227, %.lr.ph ], [ %.sroa.7213.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_9LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit" ]
  %.sroa.0212.0242 = phi ptr [ %.sroa.02.1.i.i.i226, %.lr.ph ], [ %.sroa.0212.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_9LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit" ] ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.7213.8.extract.trunc244, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ab, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_9LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit", !prof !32

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_9LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_9LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit": ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.ab ], [ %.sroa.0212.0242, %bb.aa ] ; 2 uses
  %i.jz = load i32, ptr %.0.i.i.i.i.i.i, align 4, !tbaa !209 ; 15 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 8
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !210
  %.sroa.0.0.insert.ext.i = zext i32 %i.jz to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
end_hunk_2
