inline.NumInlined: 3771
inline.NumDeleted: 1746
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN14hb_inc_bimap_t3addEj:bb.a
  %i.y = add i32 %.017.i12.i.i.i, 1               ; 2 uses
  %i.z = add i32 %i.y, %.01016.i13.i.i.i
  %i.aa = and i32 %i.z, %i.p                      ; 2 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = and i32 %i.ae, 2
  %.not.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EEixEj.exit, label %bb.c, !llvm.loop !43

_ZNK12hb_hashmap_tIjjLb1EEixEj.exit:              ; preds = %.lr.ph.i.i.i, %bb.a, %bb.b, %._crit_edge.i.i.i
  %.0.i.i = phi ptr [ @minus_1, %bb.a ], [ %spec.select.i.i.i, %._crit_edge.i.i.i ], [ @minus_1, %bb.b ], [ @minus_1, %.lr.ph.i.i.i ]
  %i.ag = load i32, ptr %.0.i.i, align 4, !tbaa !8 ; 2 uses
  store i32 %i.ag, ptr %i.b, align 4, !tbaa !8
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.d, label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

bb.d:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb1EEixEj.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !45
  store i32 %i.ak, ptr %i.b, align 4, !tbaa !8
  %i.al = mul i32 %1, -1640531535
  %i.am = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.al, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 0 uses
  %i.an = load i32, ptr %i.aj, align 4, !tbaa !50 ; 3 uses
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !51
  %.not.i = icmp slt i32 %i.an, %i.ao
  br i1 %.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = add i32 %i.an, 1
  %i.aq = call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i32 noundef %i.ap, i1 noundef zeroext false)
  br i1 %i.aq, label %..critedge_crit_edge.i, label %bb.f, !prof !22

..critedge_crit_edge.i:                           ; preds = %bb.e
  %.pre.i = load i32, ptr %i.aj, align 4, !tbaa !50
  br label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ar = load i32, ptr @_hb_NullPool, align 16
  store i32 %i.ar, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.d
  %i.as = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.an, %bb.d ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !52
  %i.av = add i32 %i.as, 1
  store i32 %i.av, ptr %i.aj, align 4, !tbaa !50
  %i.aw = zext i32 %i.as to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.aw
  %i.ay = load i32, ptr %i.a, align 4, !tbaa !8
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !8
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit:  ; preds = %.critedge.i, %bb.f, %_ZNK12hb_hashmap_tIjjLb1EEixEj.exit
  %i.az = load i32, ptr %i.b, align 4, !tbaa !8
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
  %i.i = load i16, ptr %i.h, align 1, !tbaa !53
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  %i.k = zext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.m = load i32, ptr %i.l, align 1, !tbaa !55   ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.m)
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %.0.i.i.i = select i1 %i.n, ptr @_hb_NullPool, ptr %i.q, !prof !21
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.s = load i16, ptr %i.r, align 1, !tbaa !53   ; 2 uses
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
  br i1 %.not16.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  store i32 %i.u, ptr %i.y, align 4, !tbaa !57
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
  %i.am = zext i32 %.0.lcssa.i18.i.i to i64       ; 4 uses
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
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol, !llvm.loop !59

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
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i17.i.loopexit.i.unr-lcssa, label %.lr.ph.i25.i.i, !llvm.loop !61

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
  br i1 %exitcond.not.i24.i.i.7, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %.lr.ph18.i21.i.i, !llvm.loop !62

_ZNK2OT18ItemVariationStore12create_cacheEv.exit: ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i, %bb.b, %bb.c, %.preheader.i17.i.i
  %.1.i.i = phi ptr [ @_hb_NullPool, %bb.b ], [ @_hb_NullPool, %bb.c ], [ %i.y, %.preheader.i17.i.i ], [ %i.y, %.lr.ph18.i21.i.i ], [ %i.y, %.lr.ph18.i21.i.i.prol.loopexit ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store i32 -1, ptr %i.e, align 4, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !9, !range !19, !noundef !20
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.f, label %bb.e, !prof !21

bb.e:                                             ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit
  %i.bt = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.bp, ptr noundef nonnull %i.e) ; 0 uses
  %.pre.i.i = load i32, ptr %i.e, align 4, !tbaa !8
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE7get_minEv.exit

bb.f:                                             ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 -1, ptr %i.c, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 -1, ptr %i.d, align 4, !tbaa !8
  %i.bu = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.bp, ptr noundef nonnull %i.d) ; 0 uses
  %i.bv = load i32, ptr %i.d, align 4, !tbaa !8
  %.not.i.i43 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i43, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 -1, ptr %i.d, align 4, !tbaa !8
  %i.bw = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.bp, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 0 uses
  %i.bx = load i32, ptr %i.d, align 4, !tbaa !8
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
  store i32 %i.cj, ptr %i.f, align 4, !tbaa !8
  br i1 %3, label %bb.j, label %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit

bb.j:                                             ; preds = %bb.i
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !63
  %i.cl = load i32, ptr %i.ce, align 4, !tbaa !65
  %i.cm = lshr i32 %i.cj, 16                      ; 2 uses
  %i.cn = and i32 %i.cj, 65535
  %i.co = load i16, ptr %i.h, align 1, !tbaa !53
  %i.cp = call noundef i16 @llvm.bswap.i16(i16 %i.co)
  %i.cq = zext i16 %i.cp to i32
  %.not.i.i46 = icmp samesign ult i32 %i.cm, %i.cq
  br i1 %.not.i.i46, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i, label %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit, !prof !22

_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i: ; preds = %bb.j
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.cr = zext nneg i32 %i.cm to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 1, !tbaa !55 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0
  %i.cv = call i32 @llvm.bswap.i32(i32 %i.ct)
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %i.cw
  %.0.i.i.i.i = select i1 %i.cu, ptr @_hb_NullPool, ptr %i.cx, !prof !21 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4
  %i.cz = load i16, ptr %i.cy, align 1, !tbaa !53
  %.not.i.i.i = icmp eq i16 %i.cz, 0
  br i1 %.not.i.i.i, label %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i
  %i.da = load i32, ptr %i.l, align 1, !tbaa !55  ; 2 uses
  %i.db = icmp eq i32 %i.da, 0
  %i.dc = call i32 @llvm.bswap.i32(i32 %i.da)
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 %i.dd
  %.0.i.i10.i.i = select i1 %i.db, ptr @_hb_NullPool, ptr %i.de, !prof !21
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
  store i32 -1, ptr %9, align 4, !tbaa !67
  store i32 %.0, ptr %i.ch, align 4, !tbaa !69
  %.val.i = load i32, ptr %i.f, align 4, !tbaa !8
  %i.dj = mul i32 %.val.i, -1640531535
  %i.dk = call noundef zeroext i1 @_ZN12hb_hashmap_tIj9hb_pair_tIjiELb0EE13set_with_hashIRKjS1_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.f, i32 noundef %i.dj, ptr noundef nonnull align 4 dereferenceable(8) %9, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %bb.p

bb.m:                                             ; preds = %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit
  %i.dl = load i32, ptr %i.f, align 4, !tbaa !8   ; 2 uses
  %i.dm = lshr i32 %i.dl, 16                      ; 3 uses
  %.not = icmp samesign ult i32 %i.dm, %i.k
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.not41 = icmp ne i32 %i.dm, %.03062            ; 2 uses
  %i.dn = zext i1 %.not41 to i32
  %spec.select = add i32 %.03560, %i.dn           ; 2 uses
  %spec.select42 = select i1 %.not41, i32 0, i32 %.03261 ; 2 uses
  %i.do = shl i32 %spec.select, 16
  %i.dp = add i32 %i.do, %spec.select42
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  store i32 %i.dp, ptr %10, align 4, !tbaa !67
  store i32 %.0, ptr %i.cg, align 4, !tbaa !69
  %i.dq = mul i32 %i.dl, -1640531535
  %i.dr = call noundef zeroext i1 @_ZN12hb_hashmap_tIj9hb_pair_tIjiELb0EE13set_with_hashIRKjS1_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.f, i32 noundef %i.dq, ptr noundef nonnull align 4 dereferenceable(8) %10, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  %i.ds = add i32 %spec.select42, 1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  br label %.loopexit

bb.p:                                             ; preds = %bb.l, %bb.n
  %.338.ph = phi i32 [ %spec.select, %bb.n ], [ %.03560, %bb.l ]
  %.3.ph = phi i32 [ %i.ds, %bb.n ], [ %.03261, %bb.l ]
  %.2.ph = phi i32 [ %i.dm, %bb.n ], [ %.03062, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  %i.dt = load ptr, ptr %8, align 8, !tbaa !27    ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  %i.dv = load i8, ptr %i.du, align 8, !tbaa !9, !range !19, !noundef !20
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.r, label %bb.q, !prof !21

bb.q:                                             ; preds = %bb.p
end_hunk_0
begin_hunk_1_@_ZNK2OT4avar15map_coords_2_14EPfjb:bb.a
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = icmp ult i16 %i.ai, 2
  br i1 %i.aj, label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.ak = load i16, ptr %i.l, align 1, !tbaa !53
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32                   ; 4 uses
  %i.an = icmp samesign ult i32 %spec.select.i, %i.am
  br i1 %i.an, label %.lr.ph112.preheader, label %._crit_edge113

.lr.ph112.preheader:                              ; preds = %bb.l
  %i.ao = sub nuw nsw i32 %i.am, %spec.select.i
  %xtraiter = and i32 %i.ao, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph112.prol.loopexit, label %.lr.ph112.prol

.lr.ph112.prol:                                   ; preds = %.lr.ph112.preheader, %.lr.ph112.prol
  %.138110.prol = phi ptr [ %i.au, %.lr.ph112.prol ], [ %.037.lcssa, %.lr.ph112.preheader ] ; 2 uses
  %.039109.prol = phi i32 [ %i.av, %.lr.ph112.prol ], [ %spec.select.i, %.lr.ph112.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph112.prol ], [ 0, %.lr.ph112.preheader ]
  %i.ap = load i16, ptr %.138110.prol, align 1, !tbaa !53
  %i.aq = tail call noundef i16 @llvm.bswap.i16(i16 %i.ap)
  %i.ar = zext i16 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.138110.prol, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2 ; 3 uses
  %i.av = add nuw nsw i32 %.039109.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph112.prol.loopexit, label %.lr.ph112.prol, !llvm.loop !183

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
  %i.ay = load i16, ptr %.138110, align 1, !tbaa !53
  %i.az = tail call noundef i16 @llvm.bswap.i16(i16 %i.ay)
  %i.ba = zext i16 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.138110, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 1, !tbaa !53
  %i.bf = tail call noundef i16 @llvm.bswap.i16(i16 %i.be)
  %i.bg = zext i16 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 1, !tbaa !53
  %i.bl = tail call noundef i16 @llvm.bswap.i16(i16 %i.bk)
  %i.bm = zext i16 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2 ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 1, !tbaa !53
  %i.br = tail call noundef i16 @llvm.bswap.i16(i16 %i.bq)
  %i.bs = zext i16 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2 ; 2 uses
  %i.bw = add nuw nsw i32 %.039109, 4             ; 2 uses
  %exitcond122.not.3 = icmp eq i32 %i.bw, %i.am
  br i1 %exitcond122.not.3, label %._crit_edge113, label %.lr.ph112, !llvm.loop !184

._crit_edge113:                                   ; preds = %.lr.ph112.prol.loopexit, %.lr.ph112, %bb.l
  %.138.lcssa = phi ptr [ %.037.lcssa, %bb.l ], [ %.lcssa.unr, %.lr.ph112.prol.loopexit ], [ %i.bv, %.lr.ph112 ] ; 2 uses
  %i.bx = load i32, ptr %.138.lcssa, align 1, !tbaa !55 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  %i.bz = tail call i32 @llvm.bswap.i32(i32 %i.bx)
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ca
  %.0.i.i = select i1 %i.by, ptr @_hb_NullPool, ptr %i.cb, !prof !21
  %i.cc = getelementptr inbounds nuw i8, ptr %.138.lcssa, i64 4
  %i.cd = load i32, ptr %i.cc, align 1, !tbaa !55 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0
  %i.cf = tail call i32 @llvm.bswap.i32(i32 %i.cd)
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %i.cg
  %.0.i.i41 = select i1 %i.ce, ptr @_hb_NullPool, ptr %i.ch, !prof !21 ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 2 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 1, !tbaa !55 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 0
  %i.cl = tail call i32 @llvm.bswap.i32(i32 %i.cj)
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 %i.cm
  %.0.i.i.i = select i1 %i.ck, ptr @_hb_NullPool, ptr %i.cn, !prof !21
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.cp = load i16, ptr %i.co, align 1, !tbaa !53 ; 2 uses
  %i.cq = tail call noundef i16 @llvm.bswap.i16(i16 %i.cp) ; 3 uses
  %i.cr = zext i16 %i.cq to i32                   ; 2 uses
  %.not.i.i = icmp eq i16 %i.cp, 0
  br i1 %.not.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge113
  %i.cs = zext i16 %i.cq to i64                   ; 5 uses
  %i.ct = shl nuw nsw i64 %i.cs, 2
  %i.cu = add nuw nsw i64 %i.ct, 4
  %i.cv = tail call ptr @hb_malloc(i64 noundef %i.cu) #10 ; 6 uses
  %.not16.i.i = icmp eq ptr %i.cv, null
  br i1 %.not16.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.n, !prof !21

bb.n:                                             ; preds = %bb.m
  store i32 %i.cr, ptr %i.cv, align 4, !tbaa !57
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4 ; 12 uses
  %i.cx = icmp ugt i16 %i.cq, 3
  br i1 %i.cx, label %.lr.ph.i25.i.i.preheader, label %.preheader.i17.i.i

.lr.ph.i25.i.i.preheader:                         ; preds = %bb.n
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
  %lcmp.mod142.not.not = icmp eq i64 %i.dc, 0
  br i1 %lcmp.mod142.not.not, label %.lr.ph.i25.i.i.epil.preheader, label %.preheader.i17.i.loopexit.i

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i25.i.i.preheader ], [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod144 = trunc i64 %i.da to i1
  tail call void @llvm.assume(i1 %lcmp.mod144)
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

.preheader.i17.i.i:                               ; preds = %.preheader.i17.i.loopexit.i, %bb.n
  %.0.lcssa.i18.i.i = phi i32 [ 0, %bb.n ], [ %i.dh, %.preheader.i17.i.loopexit.i ] ; 2 uses
  %i.di = icmp samesign ult i32 %.0.lcssa.i18.i.i, %i.cr
  br i1 %i.di, label %.lr.ph18.preheader.i19.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit

.lr.ph18.preheader.i19.i.i:                       ; preds = %.preheader.i17.i.i
  %i.dj = zext i32 %.0.lcssa.i18.i.i to i64       ; 4 uses
  %i.dk = sub nsw i64 %i.cs, %i.dj
  %xtraiter145 = and i64 %i.dk, 7                 ; 2 uses
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol

.lr.ph18.i21.i.i.prol:                            ; preds = %.lr.ph18.preheader.i19.i.i, %.lr.ph18.i21.i.i.prol
  %indvars.iv.i22.i.i.prol = phi i64 [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ], [ %i.dj, %.lr.ph18.preheader.i19.i.i ] ; 2 uses
  %prol.iter147 = phi i64 [ %prol.iter147.next, %.lr.ph18.i21.i.i.prol ], [ 0, %.lr.ph18.preheader.i19.i.i ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i.prol
  store atomic i32 -2147483648, ptr %i.dl monotonic, align 4
  %indvars.iv.next.i23.i.i.prol = add nuw nsw i64 %indvars.iv.i22.i.i.prol, 1 ; 2 uses
  %prol.iter147.next = add i64 %prol.iter147, 1   ; 2 uses
  %prol.iter147.cmp.not = icmp eq i64 %prol.iter147.next, %xtraiter145
  br i1 %prol.iter147.cmp.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol, !llvm.loop !185

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
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i17.i.loopexit.i.unr-lcssa, label %.lr.ph.i25.i.i, !llvm.loop !61

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
  br i1 %exitcond.not.i24.i.i.7, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %.lr.ph18.i21.i.i, !llvm.loop !62

_ZNK2OT18ItemVariationStore12create_cacheEv.exit: ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i, %._crit_edge113, %bb.m, %.preheader.i17.i.i
  %.1.i.i42 = phi ptr [ @_hb_NullPool, %._crit_edge113 ], [ @_hb_NullPool, %bb.m ], [ %i.cv, %.preheader.i17.i.i ], [ %i.cv, %.lr.ph18.i21.i.i ], [ %i.cv, %.lr.ph18.i21.i.i.prol.loopexit ] ; 3 uses
  %.not118 = icmp eq i32 %2, 0
  br i1 %.not118, label %._crit_edge117, label %.lr.ph116

.lr.ph116:                                        ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit
  %i.em = load i32, ptr @_hb_NullPool, align 16   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 6
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 8
  %i.ep = zext nneg i32 %.sroa.7.0 to i64
  %wide.trip.count126 = zext i32 %2 to i64
  br label %bb.p

._crit_edge117:                                   ; preds = %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit, %_ZNK2OT18ItemVariationStore12create_cacheEv.exit
  %.not.i.i43 = icmp eq ptr %.1.i.i42, @_hb_NullPool
  br i1 %.not.i.i43, label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge117
  tail call void @hb_free(ptr noundef nonnull %.1.i.i42) #10
  br label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit

bb.p:                                             ; preds = %.lr.ph116, %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit
  %indvars.iv123 = phi i64 [ 0, %.lr.ph116 ], [ %indvars.iv.next124, %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit ] ; 5 uses
  %.not.i44 = icmp samesign ult i64 %indvars.iv123, %i.ep
  br i1 %.not.i44, label %bb.r, label %bb.q, !prof !22

bb.q:                                             ; preds = %bb.p
  store i32 %i.em, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit46

bb.r:                                             ; preds = %bb.p
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14.0, i64 %indvars.iv123
  %.pre = load i32, ptr %i.eq, align 4, !tbaa !8
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit46

_ZN11hb_vector_tIiLb0EEixEi.exit46:               ; preds = %bb.q, %bb.r
  %i.er = phi i32 [ %i.em, %bb.q ], [ %.pre, %bb.r ]
  %i.es = trunc nuw i64 %indvars.iv123 to i32
  %i.et = tail call noundef i32 @_ZNK2OT16DeltaSetIndexMap3mapEj(ptr noundef nonnull align 1 dereferenceable(7) %.0.i.i, i32 noundef %i.es) ; 2 uses
  %i.eu = lshr i32 %i.et, 16                      ; 2 uses
  %i.ev = and i32 %i.et, 65535
  %i.ew = load i16, ptr %i.en, align 1, !tbaa !53
  %i.ex = tail call noundef i16 @llvm.bswap.i16(i16 %i.ew)
  %i.ey = zext i16 %i.ex to i32
  %.not.i.i47 = icmp samesign ult i32 %i.eu, %i.ey
  br i1 %.not.i.i47, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i, label %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit, !prof !22

_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i: ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit46
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.ez = zext nneg i32 %i.eu to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 1, !tbaa !55 ; 2 uses
  %i.fc = icmp eq i32 %i.fb, 0
  %i.fd = tail call i32 @llvm.bswap.i32(i32 %i.fb)
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 %i.fe
  %.0.i.i.i.i = select i1 %i.fc, ptr @_hb_NullPool, ptr %i.ff, !prof !21 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4
  %i.fh = load i16, ptr %i.fg, align 1, !tbaa !53
  %.not.i.i.i = icmp eq i16 %i.fh, 0
  br i1 %.not.i.i.i, label %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit, label %bb.s

bb.s:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i
  %i.fi = load i32, ptr %i.ci, align 1, !tbaa !55 ; 2 uses
  %i.fj = icmp eq i32 %i.fi, 0
  %i.fk = tail call i32 @llvm.bswap.i32(i32 %i.fi)
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 %i.fl
  %.0.i.i10.i.i = select i1 %i.fj, ptr @_hb_NullPool, ptr %i.fm, !prof !21
  %i.fn = tail call noundef float @_ZNK2OT7VarData10_get_deltaEjPKijRKNS_13VarRegionListEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i.i, i32 noundef %i.ev, ptr noundef %.sroa.14.0, i32 noundef %.sroa.7.0, ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i10.i.i, ptr noundef nonnull %.1.i.i42)
  %i.fo = fadd float %i.fn, 5.000000e-01
  %i.fp = tail call float @llvm.floor.f32(float %i.fo)
  br label %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit

_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit: ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit46, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i, %bb.s
  %.0.i.i48 = phi float [ 0.000000e+00, %_ZN11hb_vector_tIiLb0EEixEi.exit46 ], [ %i.fp, %bb.s ], [ 0.000000e+00, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i ] ; 2 uses
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
  store float %i.fw, ptr %i.fx, align 4, !tbaa !138
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %._crit_edge117, label %bb.p, !llvm.loop !186

_ZN11hb_vector_tIiLb0EE6resizeEi.exit:            ; preds = %bb.o, %._crit_edge117, %._crit_edge, %bb.k
  br i1 %.not134, label %_ZN11hb_vector_tIiLb0EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN11hb_vector_tIiLb0EE6resizeEi.exit
  tail call void @hb_free(ptr noundef %.sroa.14.0) #10
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit

_ZN11hb_vector_tIiLb0EED2Ev.exit:                 ; preds = %.thread.i, %bb.b, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit, %bb.t
  %.1106 = phi i1 [ true, %bb.t ], [ true, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit ], [ false, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i ], [ false, %bb.b ], [ false, %.thread.i ]
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
  %i.f = load i16, ptr %3, align 1, !tbaa !53
  %i.g = tail call noundef i16 @llvm.bswap.i16(i16 %i.f)
  %i.h = icmp ugt i16 %i.g, 1
  br i1 %i.h, label %bb.b, label %_ZNK2OT4avar20get_v2_store_and_mapEPPKNS_18ItemVariationStoreEPPKNS_16DeltaSetIndexMapE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.k = load i16, ptr %i.j, align 1, !tbaa !53   ; 2 uses
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k) ; 2 uses
  %i.m = zext i16 %i.l to i32                     ; 2 uses
  %.not.i = icmp eq i16 %i.k, 0
  br i1 %.not.i, label %.loopexit346, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i32 %i.m, 3                     ; 3 uses
  %i.n = icmp ult i16 %i.l, 4
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.m, 65532
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.01013.i = phi ptr [ %i.i, %.lr.ph.i.preheader.new ], [ %i.al, %.lr.ph.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.o = load i16, ptr %.01013.i, align 1, !tbaa !53
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %i.q = zext i16 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = getelementptr inbounds nuw i8, ptr %.01013.i, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 2 uses
  %i.u = load i16, ptr %i.t, align 1, !tbaa !53
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u)
  %i.w = zext i16 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 1, !tbaa !53
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !53
  %i.ah = tail call noundef i16 @llvm.bswap.i16(i16 %i.ag)
  %i.ai = zext i16 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2 ; 3 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit346.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !187

.loopexit346.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit346, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit346.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.01013.i.epil.init = phi ptr [ %i.i, %.lr.ph.i.preheader ], [ %i.al, %.loopexit346.loopexit.unr-lcssa ]
  %lcmp.mod603 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod603)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.01013.i.epil = phi ptr [ %i.ar, %.lr.ph.i.epil ], [ %.01013.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.am = load i16, ptr %.01013.i.epil, align 1, !tbaa !53
  %i.an = tail call noundef i16 @llvm.bswap.i16(i16 %i.am)
  %i.ao = zext i16 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.01013.i.epil, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit346, label %.lr.ph.i.epil, !llvm.loop !188

.loopexit346:                                     ; preds = %.loopexit346.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  %.010.lcssa.i = phi ptr [ %i.i, %bb.b ], [ %i.al, %.loopexit346.loopexit.unr-lcssa ], [ %i.ar, %.lr.ph.i.epil ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.010.lcssa.i, i64 4
  %i.at = load i32, ptr %i.as, align 1, !tbaa !55 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  %i.av = tail call i32 @llvm.bswap.i32(i32 %i.at)
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 %i.aw
  %.0.i.i.i = select i1 %i.au, ptr @_hb_NullPool, ptr %i.ax, !prof !21 ; 5 uses
  %i.ay = load i32, ptr %.010.lcssa.i, align 1, !tbaa !55 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.ay)
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 %i.bb
  %.0.i.i11.i = select i1 %i.az, ptr @_hb_NullPool, ptr %i.bc, !prof !21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store atomic i32 1, ptr %5 monotonic, align 8
  store atomic i8 1, ptr %i.bd monotonic, align 4
  store atomic ptr null, ptr %i.be monotonic, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %i.bf, align 8, !tbaa !189
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr null, ptr %i.bh, align 8, !tbaa !192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.bg, i8 0, i64 18, i1 false)
  %i.bi = and i64 %2, 4294967295                  ; 3 uses
  %.idx = mul nuw nsw i64 %i.bi, 20
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not368 = icmp ne i64 %i.bi, 0                 ; 2 uses
  br i1 %.not368, label %.lr.ph, label %.critedge146

.lr.ph:                                           ; preds = %.loopexit346
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2400
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2396
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2552
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2544
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2540
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %.0112369, i64 20 ; 2 uses
  %.not = icmp eq ptr %i.br, %i.bj
  br i1 %.not, label %.critedge146, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.0112369 = phi ptr [ %1, %.lr.ph ], [ %i.br, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.bs = load i32, ptr %.0112369, align 1, !tbaa !55
  %i.bt = call noundef i32 @llvm.bswap.i32(i32 %i.bs) ; 7 uses
  store i32 %i.bt, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store double -1.000000e+00, ptr %i.b, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !140
  %i.bu = load ptr, ptr %i.bk, align 8, !tbaa !130 ; 3 uses
  %.not.i157 = icmp eq ptr %i.bu, null
  br i1 %.not.i157, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bv = mul i32 %i.bt, 506952113
  %i.bw = and i32 %i.bv, 1073741823               ; 2 uses
  %i.bx = load i32, ptr %i.bl, align 8, !tbaa !131
  %i.by = urem i32 %i.bw, %i.bx                   ; 2 uses
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.bu, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.cd = and i32 %i.cc, 2
  %.not15.i.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.ce = load i32, ptr %i.bm, align 4
  %i.cf = load i32, ptr %i.ca, align 4, !tbaa !8
  %i.cg = icmp eq i32 %i.cf, %i.bt
  br i1 %i.cg, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit, label %.lr.ph.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ch = load i32, ptr %i.cn, align 4, !tbaa !8
  %i.ci = icmp eq i32 %i.ch, %i.bt
  br i1 %i.ci, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit, label %.lr.ph.i.i, !llvm.loop !132

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.f
  %.01016.i20.i.i = phi i32 [ %i.cl, %bb.f ], [ %i.by, %.lr.ph.i.i.i ]
  %.017.i19.i.i = phi i32 [ %i.cj, %bb.f ], [ 0, %.lr.ph.i.i.i ]
  %i.cj = add i32 %.017.i19.i.i, 1                ; 2 uses
  %i.ck = add i32 %i.cj, %.01016.i20.i.i
  %i.cl = and i32 %i.ck, %i.ce                    ; 2 uses
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.bu, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4            ; 2 uses
  %i.cq = and i32 %i.cp, 2
  %.not.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread, label %bb.f, !llvm.loop !132

_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit: ; preds = %bb.f, %.lr.ph.i.i.i
  %.lcssa17.i.i = phi i32 [ %i.cc, %.lr.ph.i.i.i ], [ %i.cp, %bb.f ]
  %i.cr = trunc i32 %.lcssa17.i.i to i1
  br i1 %i.cr, label %bb.g, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread

bb.g:                                             ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit
  %i.cs = load ptr, ptr %i.bn, align 8, !tbaa !130 ; 4 uses
  %.not.i158 = icmp eq ptr %i.cs, null
  br i1 %.not.i158, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ct = load i32, ptr %i.bo, align 8, !tbaa !131
  %i.cu = urem i32 %i.bw, %i.ct                   ; 2 uses
  %i.cv = zext nneg i32 %i.cu to i64              ; 2 uses
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cs, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load i32, ptr %i.cx, align 4            ; 2 uses
  %i.cz = and i32 %i.cy, 2
  %.not15.i.i.i160 = icmp eq i32 %i.cz, 0
  br i1 %.not15.i.i.i160, label %.critedge, label %.lr.ph.i.i.i161

.lr.ph.i.i.i161:                                  ; preds = %bb.h
  %i.da = load i32, ptr %i.bp, align 4
  %i.db = load i32, ptr %i.cw, align 4, !tbaa !8
  %i.dc = icmp eq i32 %i.db, %i.bt
  br i1 %i.dc, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i166, label %.lr.ph.i.i162

bb.i:                                             ; preds = %.lr.ph.i.i162
  %i.dd = load i32, ptr %i.dj, align 4, !tbaa !8
  %i.de = icmp eq i32 %i.dd, %i.bt
  br i1 %i.de, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i166, label %.lr.ph.i.i162, !llvm.loop !132

.lr.ph.i.i162:                                    ; preds = %.lr.ph.i.i.i161, %bb.i
  %.01016.i20.i.i163 = phi i32 [ %i.dh, %bb.i ], [ %i.cu, %.lr.ph.i.i.i161 ]
  %.017.i19.i.i164 = phi i32 [ %i.df, %bb.i ], [ 0, %.lr.ph.i.i.i161 ]
  %i.df = add i32 %.017.i19.i.i164, 1             ; 2 uses
  %i.dg = add i32 %i.df, %.01016.i20.i.i163
  %i.dh = and i32 %i.dg, %i.da                    ; 2 uses
  %i.di = zext i32 %i.dh to i64                   ; 2 uses
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr %i.cs, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i32, ptr %i.dk, align 4            ; 2 uses
  %i.dm = and i32 %i.dl, 2
  %.not.i.i.i165 = icmp eq i32 %i.dm, 0
  br i1 %.not.i.i.i165, label %.critedge, label %bb.i, !llvm.loop !132

_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i166: ; preds = %bb.i, %.lr.ph.i.i.i161
  %.lcssa17.i.i167 = phi i32 [ %i.cy, %.lr.ph.i.i.i161 ], [ %i.dl, %bb.i ]
  %i.dn = phi i64 [ %i.cv, %.lr.ph.i.i.i161 ], [ %i.di, %bb.i ]
  %i.do = trunc i32 %.lcssa17.i.i167 to i1
  br i1 %i.do, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i166
  %i.dp = getelementptr inbounds nuw [32 x i8], ptr %i.cs, i64 %i.dn ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !133
  store double %i.dr, ptr %i.b, align 8, !tbaa !140
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !137
  store double %i.dt, ptr %i.c, align 8, !tbaa !140
  br label %bb.l

_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread: ; preds = %.lr.ph.i.i, %bb.e, %bb.d, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit
  %i.du = getelementptr inbounds nuw i8, ptr %.0112369, i64 16
  %i.dv = load i16, ptr %i.du, align 1, !tbaa !53
  %i.dw = and i16 %i.dv, 256
  %.not339 = icmp eq i16 %i.dw, 0
  br i1 %.not339, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !140
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !140
  br label %bb.l

end_hunk_1
begin_hunk_2_@_Z37update_instance_metrics_map_from_cff2P16hb_subset_plan_t:bb.a
  %.sroa.065.1.i = phi ptr [ %.sroa.065.0122.i, %_ZN11hb_vector_tI14hb_variation_tLb0EE4pushIJRS0_EEEPS0_DpOT_.exit.i ], [ %i.by, %"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i" ] ; 3 uses
  %.not.i.i.i.i.i.i39.i = icmp eq i64 %.sroa.766.1.i, 0
  br i1 %.not.i.i.i.i.i.i39.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i, !prof !21

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
  br i1 %i.cb, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i", label %bb.o, !llvm.loop !242

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
  %i.ce = load i32, ptr %i.t, align 4, !tbaa !123
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
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !127, !range !19, !noundef !20
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = and i1 %i.cg, %i.cj                     ; 2 uses
  %i.cl = zext i1 %i.ck to i8
  store i8 %i.cl, ptr %i.ch, align 8, !tbaa !127
  br i1 %i.ck, label %bb.r, label %bb.q, !prof !317

bb.q:                                             ; preds = %_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit.thread, %_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit
  %.1.i223 = phi ptr [ null, %_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit.thread ], [ %i.m, %_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit ]
  call void @hb_font_destroy(ptr noundef %.1.i223) #10
  br label %bb.bn

bb.r:                                             ; preds = %_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) @__const._Z37update_instance_metrics_map_from_cff2P16hb_subset_plan_t.extents, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !253
  call void @_ZN2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_tC2EP9hb_face_t(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !318
  %.not230 = icmp eq i32 %i.co, 0
  br i1 %.not230, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !323 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cq, null
  %spec.select.i.i = select i1 %.not.i.i, ptr @_hb_NullPool, ptr %i.cq ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !74 ; 2 uses
  %.not = icmp eq i32 %i.cs, 0
  br i1 %.not, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !70
  %i.cv = icmp ult i32 %i.cs, 20
  %spec.select.i.i1.i.i = select i1 %i.cv, ptr @_hb_NullPool, ptr %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 4
  %i.cx = load i32, ptr %i.cw, align 1, !tbaa !55 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  %i.cz = call i32 @llvm.bswap.i32(i32 %i.cx)
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 %i.da
  %.0.i.i.i = select i1 %i.cy, ptr @_hb_NullPool, ptr %i.db, !prof !21 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.dd = load i32, ptr %i.dc, align 1, !tbaa !55 ; 2 uses
  %i.de = icmp eq i32 %i.dd, 0
  %i.df = call i32 @llvm.bswap.i32(i32 %i.dd)
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.dg
  %.0.i.i.i80 = select i1 %i.de, ptr @_hb_NullPool, ptr %i.dh, !prof !21
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i.i80, i64 2
  %i.dj = load i16, ptr %i.di, align 1, !tbaa !53 ; 2 uses
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
  br i1 %.not16.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.v, !prof !21

bb.v:                                             ; preds = %bb.u
  store i32 %i.dl, ptr %i.dp, align 4, !tbaa !57
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
  %i.ed = zext i32 %.0.lcssa.i18.i.i to i64       ; 4 uses
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
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol, !llvm.loop !324

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
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i17.i.loopexit.i.unr-lcssa, label %.lr.ph.i25.i.i, !llvm.loop !61

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
  br i1 %exitcond.not.i24.i.i.7, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %.lr.ph18.i21.i.i, !llvm.loop !62

_ZNK2OT18ItemVariationStore12create_cacheEv.exit: ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i, %.preheader.i17.i.i, %bb.u, %bb.t, %bb.s, %bb.r
  %.056 = phi ptr [ null, %bb.r ], [ null, %bb.s ], [ @_hb_NullPool, %bb.t ], [ @_hb_NullPool, %bb.u ], [ %i.dp, %.preheader.i17.i.i ], [ %i.dp, %.lr.ph18.i21.i.i ], [ %i.dp, %.lr.ph18.i21.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.fg = load ptr, ptr %i.h, align 8, !tbaa !253
  call void @_ZN2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_tC2EP9hb_face_t(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.fg)
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !325
  %.not231 = icmp eq i32 %i.fi, 0
  br i1 %.not231, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit104, label %bb.w

bb.w:                                             ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !323 ; 2 uses
  %.not.i.i82 = icmp eq ptr %i.fk, null
  %spec.select.i.i83 = select i1 %.not.i.i82, ptr @_hb_NullPool, ptr %i.fk ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %spec.select.i.i83, i64 24
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !74 ; 2 uses
  %.not58 = icmp eq i32 %i.fm, 0
  br i1 %.not58, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit104, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fn = getelementptr inbounds nuw i8, ptr %spec.select.i.i83, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !70
  %i.fp = icmp ult i32 %i.fm, 24
  %spec.select.i.i1.i.i86 = select i1 %i.fp, ptr @_hb_NullPool, ptr %i.fo ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i86, i64 4
  %i.fr = load i32, ptr %i.fq, align 1, !tbaa !55 ; 2 uses
  %i.fs = icmp eq i32 %i.fr, 0
  %i.ft = call i32 @llvm.bswap.i32(i32 %i.fr)
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i86, i64 %i.fu
  %.0.i.i.i87 = select i1 %i.fs, ptr @_hb_NullPool, ptr %i.fv, !prof !21 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i.i.i87, i64 2
  %i.fx = load i32, ptr %i.fw, align 1, !tbaa !55 ; 2 uses
  %i.fy = icmp eq i32 %i.fx, 0
  %i.fz = call i32 @llvm.bswap.i32(i32 %i.fx)
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i.i.i87, i64 %i.ga
  %.0.i.i.i88 = select i1 %i.fy, ptr @_hb_NullPool, ptr %i.gb, !prof !21
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.i.i.i88, i64 2
  %i.gd = load i16, ptr %i.gc, align 1, !tbaa !53 ; 2 uses
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
  br i1 %.not16.i.i90, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit104, label %bb.z, !prof !21

bb.z:                                             ; preds = %bb.y
  store i32 %i.gf, ptr %i.gj, align 4, !tbaa !57
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
  %i.gx = zext i32 %.0.lcssa.i18.i.i92 to i64     ; 4 uses
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
  br i1 %prol.iter321.cmp.not, label %.lr.ph18.i21.i.i95.prol.loopexit, label %.lr.ph18.i21.i.i95.prol, !llvm.loop !329

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
  %niter318.next.1 = add nuw i64 %niter318, 2     ; 2 uses
  %niter318.ncmp.1.not = icmp eq i64 %niter318.next.1, %unroll_iter317
  br i1 %niter318.ncmp.1.not, label %.preheader.i17.i.loopexit.i103.unr-lcssa, label %.lr.ph.i25.i.i100, !llvm.loop !61

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
  br i1 %exitcond.not.i24.i.i98.7, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit104, label %.lr.ph18.i21.i.i95, !llvm.loop !62

_ZNK2OT18ItemVariationStore12create_cacheEv.exit104: ; preds = %.lr.ph18.i21.i.i95.prol.loopexit, %.lr.ph18.i21.i.i95, %.preheader.i17.i.i91, %bb.y, %bb.x, %bb.w, %_ZNK2OT18ItemVariationStore12create_cacheEv.exit
  %.055 = phi ptr [ null, %_ZNK2OT18ItemVariationStore12create_cacheEv.exit ], [ null, %bb.w ], [ @_hb_NullPool, %bb.x ], [ @_hb_NullPool, %bb.y ], [ %i.gj, %.preheader.i17.i.i91 ], [ %i.gj, %.lr.ph18.i21.i.i95 ], [ %i.gj, %.lr.ph18.i21.i.i95.prol.loopexit ] ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !330 ; 2 uses
  %i.ic = getelementptr i8, ptr %i.ib, i64 28
  %.val = load i32, ptr %i.ic, align 4, !tbaa !249 ; 2 uses
  %i.id = getelementptr i8, ptr %i.ib, i64 40
  %.val70 = load ptr, ptr %i.id, align 8, !tbaa !32 ; 5 uses
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
  %i.ij = load i32, ptr %i.ii, align 4, !noalias !331
  %i.ik = trunc i32 %i.ij to i1
  br i1 %i.ik, label %_ZL5beginIR8hb_map_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS3_.exit, label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i
  %i.il = add i32 %.sroa.5.sroa.0.0.i.i.i, -1     ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i, i64 12
  %i.in = icmp eq i32 %i.il, 0
  br i1 %i.in, label %_ZL5beginIR8hb_map_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS3_.exit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i, !llvm.loop !344

_ZL5beginIR8hb_map_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS3_.exit: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i
  %.sroa.5.sroa.0.1.ph.i.i.i = phi i32 [ %.sroa.5.sroa.0.0.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i ]
  %.sroa.02.1.ph.i.i.i = phi ptr [ %.sroa.02.0.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i ], [ %scevgep.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i ]
  %i.io = zext i32 %.sroa.5.sroa.0.1.ph.i.i.i to i64
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i108

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i108: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i112, %_ZL5beginIR8hb_map_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS3_.exit
  %.sroa.5.sroa.0.0.i.i.i110 = phi i32 [ %i.is, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i112 ], [ %i.ie, %_ZL5beginIR8hb_map_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS3_.exit ] ; 2 uses
  %.sroa.02.0.i.i.i111 = phi ptr [ %i.it, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i112 ], [ %.val70, %_ZL5beginIR8hb_map_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS3_.exit ] ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i111, i64 4
  %i.iq = load i32, ptr %i.ip, align 4, !noalias !345
  %i.ir = trunc i32 %i.iq to i1
  br i1 %i.ir, label %_ZNK12hb_hashmap_tIjjLb1EE10iter_itemsEv.exit.loopexit.i.i.i113, label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i112

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i112: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i108
  %i.is = add i32 %.sroa.5.sroa.0.0.i.i.i110, -1  ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i111, i64 12
  %i.iu = icmp eq i32 %i.is, 0
  br i1 %i.iu, label %_ZNK12hb_hashmap_tIjjLb1EE10iter_itemsEv.exit.loopexit.i.i.i113, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i108, !llvm.loop !344

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
  br i1 %.not.i.i.i.i.i.i, label %bb.ab, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_9LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit", !prof !21

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_9LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_9LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit": ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.ab ], [ %.sroa.0212.0242, %bb.aa ] ; 2 uses
  %i.jz = load i32, ptr %.0.i.i.i.i.i.i, align 4, !tbaa !358 ; 15 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 8
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !360
  %.sroa.0.0.insert.ext.i = zext i32 %i.jz to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 %i.kb, ptr %i.a, align 4, !tbaa !8
  %i.kc = call noundef zeroext i1 @_ZNK2OT4cff213accelerator_t11get_extentsEP9hb_font_tjP18hb_glyph_extents_t(ptr noundef nonnull align 8 dereferenceable(204) %1, ptr noundef nonnull %i.m, i32 noundef %i.jz, ptr noundef nonnull %2) #10
  br i1 %i.kc, label %bb.ac, label %bb.bj

bb.ac:                                            ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_9LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit"
  %i.kd = load i32, ptr %2, align 4, !tbaa !361   ; 4 uses
  %i.ke = icmp ne i32 %i.kd, 0
  %i.kf = load i32, ptr %i.iz, align 4            ; 2 uses
  %i.kg = icmp ne i32 %i.kf, 0
  %or.cond.not66 = select i1 %i.ke, i1 true, i1 %i.kg
  %i.kh = load i32, ptr %i.ja, align 4            ; 2 uses
  %i.ki = icmp ne i32 %i.kh, 0
  %or.cond5.not63 = select i1 %or.cond.not66, i1 true, i1 %i.ki
  %i.kj = load i32, ptr %i.jb, align 4            ; 3 uses
  %i.kk = icmp ne i32 %i.kj, 0
  %or.cond8.not = select i1 %or.cond5.not63, i1 true, i1 %i.kk ; 3 uses
  br i1 %or.cond8.not, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.kl = load i32, ptr %i.jc, align 8, !tbaa !8
  %i.km = call i32 @llvm.smin.i32(i32 %i.kl, i32 %i.kd)
  store i32 %i.km, ptr %i.jc, align 8, !tbaa !363
  %i.kn = add nsw i32 %i.kf, %i.kd
  %i.ko = load i32, ptr %i.jd, align 4, !tbaa !8
  %.sroa.speculated209 = call i32 @llvm.smax.i32(i32 %i.ko, i32 %i.kn)
  store i32 %.sroa.speculated209, ptr %i.jd, align 4, !tbaa !364
  %i.kp = load i32, ptr %i.je, align 4, !tbaa !8
  %i.kq = call i32 @llvm.smax.i32(i32 %i.kp, i32 %i.kj)
  store i32 %i.kq, ptr %i.je, align 4, !tbaa !365
  %i.kr = add nsw i32 %i.kj, %i.kh
  %i.ks = load i32, ptr %i.jf, align 8, !tbaa !8
  %.sroa.speculated205 = call i32 @llvm.smin.i32(i32 %i.ks, i32 %i.kr)
  store i32 %.sroa.speculated205, ptr %i.jf, align 8, !tbaa !366
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.kt = load i32, ptr %i.cn, align 4, !tbaa !318 ; 2 uses
  %.not236 = icmp eq i32 %i.kt, 0
  br i1 %.not236, label %bb.at, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ku = icmp ugt i32 %i.kt, %i.jz
  br i1 %i.ku, label %bb.ag, label %bb.ah
end_hunk_2
begin_hunk_3_@_ZNK2OT16FeatMinMaxRecord25collect_variation_indicesEPK16hb_subset_plan_tPKvR8hb_set_t:bb.a
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.cc, i32 noundef %.0.i.i.i9)
  br label %_ZNK2OT9BaseCoord25collect_variation_indicesER8hb_set_t.exit10

_ZNK2OT9BaseCoord25collect_variation_indicesER8hb_set_t.exit10: ; preds = %bb.p, %bb.o, %_ZNK2OT9BaseCoord25collect_variation_indicesER8hb_set_t.exit, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !481
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !485
  %i.d = add i32 %i.c, -1
  %spec.select.i.i = icmp ult i32 %i.d, -2
  br i1 %spec.select.i.i, label %bb.c, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !486
  tail call void @hb_free(ptr noundef %i.f) #10
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit: ; preds = %bb.b, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #10 ; 0 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !481  ; 2 uses
  %.not59 = icmp eq i32 %i.h, 0
  br i1 %.not59, label %._crit_edge, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit: ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph, %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit
  %i.j = phi i32 [ %i.h, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph ], [ %i.q, %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit ]
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !486
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %.sroa.3.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..0.i.i.sroa_idx, align 8, !tbaa !487
  %.sroa.4.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..0.i.i.sroa_idx, align 8, !tbaa !487 ; 2 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !488, !noalias !489
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #10 ; 0 uses
  %.not.i6 = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i6, label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit
  tail call void %.sroa.4.0.copyload(ptr noundef %.sroa.3.0.copyload) #10, !inline_history !492
  br label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit

_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit: ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit, %bb.e
  %i.p = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #10 ; 0 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !481  ; 2 uses
  %.not5 = icmp eq i32 %i.q, 0
  br i1 %.not5, label %._crit_edge, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit, !llvm.loop !493

._crit_edge:                                      ; preds = %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit, %bb.d
  %i.r = load i32, ptr %0, align 8, !tbaa !485
  %i.s = add i32 %i.r, -1
  %spec.select.i.i7 = icmp ult i32 %i.s, -2
  br i1 %spec.select.i.i7, label %bb.f, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8

bb.f:                                             ; preds = %._crit_edge
  store i32 0, ptr %i.a, align 4, !tbaa !488
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !486
  tail call void @hb_free(ptr noundef %i.u) #10
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8: ; preds = %._crit_edge, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.v = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #10 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK2OT11SegmentMaps9map_floatEfjj(ptr noundef nonnull align 1 dereferenceable(6) %0, float noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 14 uses
  %i.b = load i16, ptr %0, align 1, !tbaa !53     ; 2 uses
  %i.c = tail call noundef i16 @llvm.bswap.i16(i16 %i.b) ; 3 uses
  %i.d = zext i16 %i.c to i32                     ; 4 uses
  %i.e = icmp ult i16 %i.c, 2
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext i32 %2 to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.f
  %i.h = load i16, ptr %i.g, align 1, !tbaa !53
  %i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.h)
  %i.j = sitofp i16 %i.i to float
  %i.k = fmul nnan float %i.j, f0x38800000
  %i.l = fsub float %1, %i.k
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.m
  %i.o = load i16, ptr %i.n, align 1, !tbaa !53
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %i.q = sitofp i16 %i.p to float
  %i.r = fmul nnan float %i.q, f0x38800000
  %i.s = fadd float %i.l, %i.r
  br label %bb.z

bb.d:                                             ; preds = %bb.a
  %i.t = zext i32 %2 to i64                       ; 8 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load i16, ptr %i.u, align 1, !tbaa !53
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = sitofp i16 %i.w to float
  %i.y = fmul nnan float %i.x, f0x38800000        ; 2 uses
  %i.z = fcmp oeq float %i.y, -1.000000e+00
  br i1 %i.z, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i32 %3 to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !53
  %i.ad = tail call noundef i16 @llvm.bswap.i16(i16 %i.ac)
  %i.ae = sitofp i16 %i.ad to float
  %i.af = fmul nnan float %i.ae, f0x38800000
  %i.ag = fcmp oeq float %i.af, -1.000000e+00
  br i1 %i.ag, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.t
  %i.aj = load i16, ptr %i.ai, align 1, !tbaa !53
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %i.aj)
  %i.al = sitofp i16 %i.ak to float
  %i.am = fmul nnan float %i.al, f0x38800000
  %i.an = fcmp oeq float %i.am, -1.000000e+00
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.0120 = phi i32 [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.ao = add nsw i32 %i.d, -1                    ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.t
  %i.as = load i16, ptr %i.ar, align 1, !tbaa !53
  %i.at = tail call noundef i16 @llvm.bswap.i16(i16 %i.as)
  %i.au = sitofp i16 %i.at to float
  %i.av = fmul nnan float %i.au, f0x38800000
  %i.aw = fcmp oeq float %i.av, 1.000000e+00
  br i1 %i.aw, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ax = zext i32 %3 to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 1, !tbaa !53
  %i.ba = tail call noundef i16 @llvm.bswap.i16(i16 %i.az)
  %i.bb = sitofp i16 %i.ba to float
  %i.bc = fmul nnan float %i.bb, f0x38800000
  %i.bd = fcmp oeq float %i.bc, 1.000000e+00
  br i1 %i.bd, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.be = zext i16 %i.c to i64
  %i.bf = getelementptr [4 x i8], ptr %i.a, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -8
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.t
  %i.bi = load i16, ptr %i.bh, align 1, !tbaa !53
  %i.bj = tail call noundef i16 @llvm.bswap.i16(i16 %i.bi)
  %i.bk = sitofp i16 %i.bj to float
  %i.bl = fmul nnan float %i.bk, f0x38800000
  %i.bm = fcmp oeq float %i.bl, 1.000000e+00
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.0119 = phi i32 [ %i.ao, %bb.k ], [ %i.d, %bb.j ], [ %i.d, %bb.i ], [ %i.d, %bb.h ] ; 6 uses
  %i.bn = icmp samesign ult i32 %.0120, %.0119
  br i1 %i.bn, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.bo = zext nneg i32 %.0120 to i64
  %wide.trip.count = zext nneg i32 %.0119 to i64  ; 3 uses
  br label %.lr.ph

.lr.ph126.preheader:                              ; preds = %bb.m
  %i.bp = zext nneg i32 %.0120 to i64
  %wide.trip.count136 = zext i32 %.0119 to i64
  br label %.lr.ph126

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ %i.bo, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 8 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %i.t
  %i.bs = load i16, ptr %i.br, align 1, !tbaa !53
  %i.bt = tail call noundef i16 @llvm.bswap.i16(i16 %i.bs)
  %i.bu = sitofp i16 %i.bt to float
  %i.bv = fmul nnan float %i.bu, f0x38800000
  %i.bw = fcmp oeq float %1, %i.bv
  br i1 %i.bw, label %.preheader, label %bb.m

.preheader:                                       ; preds = %.lr.ph
  %i.bx = trunc nuw i64 %indvars.iv to i32
  %indvars.iv.next140156 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.by = icmp samesign ult i64 %indvars.iv.next140156, %wide.trip.count
  br i1 %i.by, label %.lr.ph159, label %._crit_edge161

bb.m:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph126.preheader, label %.lr.ph, !llvm.loop !494

bb.n:                                             ; preds = %.lr.ph159
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv.next140158, 1 ; 2 uses
  %i.bz = icmp samesign ult i64 %indvars.iv.next140, %wide.trip.count
  br i1 %i.bz, label %.lr.ph159, label %._crit_edge161, !llvm.loop !495

.lr.ph159:                                        ; preds = %.preheader, %bb.n
  %indvars.iv.next140158 = phi i64 [ %indvars.iv.next140, %bb.n ], [ %indvars.iv.next140156, %.preheader ] ; 4 uses
  %indvars.iv139157 = phi i64 [ %indvars.iv.next140158, %bb.n ], [ %indvars.iv, %.preheader ]
  %gep129 = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next140158
  %i.ca = load i16, ptr %gep129, align 1, !tbaa !53
  %i.cb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ca)
  %i.cc = sitofp i16 %i.cb to float
  %i.cd = fmul nnan float %i.cc, f0x38800000
  %i.ce = fcmp une float %1, %i.cd
  br i1 %i.ce, label %._crit_edge160, label %bb.n, !llvm.loop !495

._crit_edge160:                                   ; preds = %.lr.ph159
  br label %._crit_edge161, !llvm.loop !495

._crit_edge161:                                   ; preds = %bb.n, %._crit_edge160, %.preheader
  %indvars.iv139.lcssa = phi i64 [ %indvars.iv139157, %._crit_edge160 ], [ %indvars.iv, %.preheader ], [ %indvars.iv.next140158, %bb.n ] ; 4 uses
  %i.cf = icmp eq i64 %indvars.iv, %indvars.iv139.lcssa
  br i1 %i.cf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge161
  %i.cg = zext i32 %3 to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 1, !tbaa !53
  %i.cj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ci)
  %i.ck = sitofp i16 %i.cj to float
  %i.cl = fmul nnan float %i.ck, f0x38800000
  br label %bb.z

bb.p:                                             ; preds = %._crit_edge161
  %i.cm = trunc nuw i64 %indvars.iv139.lcssa to i32
  %i.cn = add i32 %i.bx, 2
  %i.co = icmp eq i32 %i.cn, %i.cm
  br i1 %i.co, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cp = add nuw i64 %indvars.iv, 1
  %i.cq = and i64 %i.cp, 4294967295
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cq
  %i.cs = zext i32 %3 to i64
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 1, !tbaa !53
  %i.cv = tail call noundef i16 @llvm.bswap.i16(i16 %i.cu)
  %i.cw = sitofp i16 %i.cv to float
  %i.cx = fmul nnan float %i.cw, f0x38800000
  br label %bb.z

bb.r:                                             ; preds = %bb.p
  %i.cy = fcmp olt float %1, 0.000000e+00
  %i.cz = zext i32 %3 to i64                      ; 3 uses
  br i1 %i.cy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv139.lcssa
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.cz
  %i.dc = load i16, ptr %i.db, align 1, !tbaa !53
  %i.dd = tail call noundef i16 @llvm.bswap.i16(i16 %i.dc)
  %i.de = sitofp i16 %i.dd to float
  %i.df = fmul nnan float %i.de, f0x38800000
  br label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.dg = fcmp ogt float %1, 0.000000e+00
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %i.cz
  %i.di = load i16, ptr %i.dh, align 1, !tbaa !53
  %i.dj = tail call noundef i16 @llvm.bswap.i16(i16 %i.di)
  %i.dk = sitofp i16 %i.dj to float
  %i.dl = fmul nnan float %i.dk, f0x38800000      ; 3 uses
  br i1 %i.dg, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dm = tail call float @llvm.fabs.f32(float %i.dl)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv139.lcssa
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.cz
  %i.dp = load i16, ptr %i.do, align 1, !tbaa !53
  %i.dq = tail call noundef i16 @llvm.bswap.i16(i16 %i.dp)
  %i.dr = sitofp i16 %i.dq to float
  %i.ds = fmul nnan float %i.dr, f0x38800000      ; 2 uses
  %i.dt = tail call float @llvm.fabs.f32(float %i.ds)
  %i.du = fcmp olt float %i.dm, %i.dt
  br i1 %i.du, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  br label %bb.z

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %.critedge
  %indvars.iv133 = phi i64 [ %i.bp, %.lr.ph126.preheader ], [ %indvars.iv.next134, %.critedge ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv133
  %i.dv = load i16, ptr %gep, align 1, !tbaa !53
  %i.dw = tail call noundef i16 @llvm.bswap.i16(i16 %i.dv)
  %i.dx = sitofp i16 %i.dw to float
  %i.dy = fmul nnan float %i.dx, f0x38800000
  %i.dz = fcmp olt float %1, %i.dy
  br i1 %i.dz, label %._crit_edge.split.loop.exit150, label %.critedge

.critedge:                                        ; preds = %.lr.ph126
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %._crit_edge, label %.lr.ph126, !llvm.loop !496

._crit_edge.split.loop.exit150:                   ; preds = %.lr.ph126
  %i.ea = trunc nuw i64 %indvars.iv133 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.critedge, %._crit_edge.split.loop.exit150
  %.1118.lcssa = phi i32 [ %i.ea, %._crit_edge.split.loop.exit150 ], [ %.0119, %.critedge ] ; 2 uses
  %i.eb = icmp eq i32 %.1118.lcssa, 0
  br i1 %i.eb, label %bb.w, label %._crit_edge.thread

bb.w:                                             ; preds = %._crit_edge
  %i.ec = fsub float %1, %i.y
  %i.ed = zext i32 %3 to i64
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 1, !tbaa !53
  %i.eg = tail call noundef i16 @llvm.bswap.i16(i16 %i.ef)
  %i.eh = sitofp i16 %i.eg to float
  %i.ei = fmul nnan float %i.eh, f0x38800000
  %i.ej = fadd float %i.ec, %i.ei
  br label %bb.z

._crit_edge.thread:                               ; preds = %bb.l, %._crit_edge
  %.1118.lcssa146 = phi i32 [ %.1118.lcssa, %._crit_edge ], [ 1, %bb.l ] ; 3 uses
  %i.ek = icmp eq i32 %.1118.lcssa146, %.0119
  br i1 %i.ek, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge.thread
  %i.el = add nsw i32 %.0119, -1
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.t
  %i.ep = load i16, ptr %i.eo, align 1, !tbaa !53
  %i.eq = tail call noundef i16 @llvm.bswap.i16(i16 %i.ep)
  %i.er = sitofp i16 %i.eq to float
  %i.es = fmul nnan float %i.er, f0x38800000
  %i.et = fsub float %1, %i.es
  %i.eu = zext i32 %3 to i64
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.eu
  %i.ew = load i16, ptr %i.ev, align 1, !tbaa !53
  %i.ex = tail call noundef i16 @llvm.bswap.i16(i16 %i.ew)
  %i.ey = sitofp i16 %i.ex to float
  %i.ez = fmul nnan float %i.ey, f0x38800000
  %i.fa = fadd float %i.et, %i.ez
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.thread
  %i.fb = add i32 %.1118.lcssa146, -1
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fc ; 2 uses
  %i.fe = zext i32 %.1118.lcssa146 to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fe ; 2 uses
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.ff, i64 %i.t
  %i.fh = load i16, ptr %i.fg, align 1, !tbaa !53
  %i.fi = tail call noundef i16 @llvm.bswap.i16(i16 %i.fh)
  %i.fj = sitofp i16 %i.fi to float
  %i.fk = fmul nnan float %i.fj, f0x38800000
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %i.t
  %i.fm = load i16, ptr %i.fl, align 1, !tbaa !53
  %i.fn = tail call noundef i16 @llvm.bswap.i16(i16 %i.fm)
  %i.fo = sitofp i16 %i.fn to float
  %i.fp = fmul nnan float %i.fo, f0x38800000      ; 2 uses
  %i.fq = fsub float %i.fk, %i.fp
  %i.fr = zext i32 %3 to i64                      ; 2 uses
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 1, !tbaa !53
  %i.fu = tail call noundef i16 @llvm.bswap.i16(i16 %i.ft)
  %i.fv = sitofp i16 %i.fu to float
  %i.fw = fmul nnan float %i.fv, f0x38800000      ; 2 uses
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.ff, i64 %i.fr
  %i.fy = load i16, ptr %i.fx, align 1, !tbaa !53
  %i.fz = tail call noundef i16 @llvm.bswap.i16(i16 %i.fy)
  %i.ga = sitofp i16 %i.fz to float
  %i.gb = fmul nnan float %i.ga, f0x38800000
  %i.gc = fsub nnan float %i.gb, %i.fw
  %i.gd = fsub float %1, %i.fp
  %i.ge = fmul float %i.gd, %i.gc
  %i.gf = fdiv float %i.ge, %i.fq
  %i.gg = fadd float %i.fw, %i.gf
  br label %bb.z

bb.z:                                             ; preds = %bb.t, %bb.u, %bb.w, %bb.x, %bb.y, %bb.v, %bb.s, %bb.q, %bb.o, %bb.b, %bb.c
  %.2 = phi float [ %i.s, %bb.c ], [ %1, %bb.b ], [ %i.gg, %bb.y ], [ %i.ej, %bb.w ], [ %i.fa, %bb.x ], [ %i.cl, %bb.o ], [ %i.cx, %bb.q ], [ %i.df, %bb.s ], [ %i.dl, %bb.u ], [ %i.ds, %bb.v ], [ %i.dl, %bb.t ]
  ret float %.2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT13VarRegionList15get_var_regionsERK8hb_map_tR11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %struct.hb_hashmap_t.22, align 8    ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !53
  %i.c = tail call noundef i16 @llvm.bswap.i16(i16 %i.b)
  %i.d = zext i16 %i.c to i32
  %i.e = tail call noundef zeroext i1 @_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.d, i1 noundef zeroext false)
  br i1 %i.e, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.a
  %i.f = load i16, ptr %i.a, align 1, !tbaa !53
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 18 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN12hb_hashmap_tIj6TripleLb0EED2Ev.exit
  %.01019 = phi i32 [ 0, %.lr.ph ], [ %i.az, %_ZN12hb_hashmap_tIj6TripleLb0EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store atomic i32 1, ptr %3 monotonic, align 8
  store atomic i8 1, ptr %i.g monotonic, align 4
  store atomic ptr null, ptr %i.h monotonic, align 8
  store i8 1, ptr %i.i, align 8, !tbaa !251
  store ptr null, ptr %i.k, align 8, !tbaa !130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.j, i8 0, i64 18, i1 false)
  %i.r = call noundef zeroext i1 @_ZNK2OT13VarRegionList14get_var_regionEjRK8hb_map_tR12hb_hashmap_tIj6TripleLb0EE(ptr noundef nonnull align 1 dereferenceable(10) %0, i32 noundef %.01019, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br i1 %i.r, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.s = load i32, ptr %i.l, align 4, !tbaa !197  ; 3 uses
  %i.t = load i32, ptr %2, align 8, !tbaa !245
  %.not.i = icmp slt i32 %i.s, %i.t
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = add i32 %i.s, 1
  %i.v = call noundef zeroext i1 @_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.u, i1 noundef zeroext false)
  br i1 %i.v, label %..critedge_crit_edge.i, label %bb.e, !prof !22

..critedge_crit_edge.i:                           ; preds = %bb.d
  %.pre.i = load i32, ptr %i.l, align 4, !tbaa !197
  br label %.critedge.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(48) @_hb_NullPool, i64 48, i1 false)
  br label %_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.c
  %i.w = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !200
  %i.y = add i32 %i.w, 1
  store i32 %i.y, ptr %i.l, align 4, !tbaa !197
  %i.z = zext i32 %i.w to i64
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %i.z ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store atomic i32 1, ptr %i.aa monotonic, align 4
  store atomic i8 1, ptr %i.ab monotonic, align 4
  store atomic ptr null, ptr %i.ac monotonic, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i8 1, ptr %i.ad, align 8, !tbaa !251
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 18 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  store ptr null, ptr %i.af, align 8, !tbaa !130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ae, i8 0, i64 18, i1 false)
  %i.ag = load i8, ptr %i.i, align 8, !range !19
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit, !prof !22

bb.f:                                             ; preds = %.critedge.i
  %i.ai = load i16, ptr %i.j, align 2, !tbaa !464
  store i16 %i.ai, ptr %i.ae, align 2, !tbaa !464
  store i16 0, ptr %i.j, align 2, !tbaa !464
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ak = load i32, ptr %i.n, align 4, !tbaa !8
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !8
  store i32 0, ptr %i.n, align 4, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !8
  %i.an = load i32, ptr %i.o, align 8, !tbaa !8
  store i32 %i.an, ptr %i.al, align 8, !tbaa !8
  store i32 %i.am, ptr %i.o, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 28 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !8
  %i.aq = load i32, ptr %i.p, align 4, !tbaa !8
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !8
  store i32 %i.ap, ptr %i.p, align 4, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !8
  %i.at = load i32, ptr %i.q, align 8, !tbaa !8
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !8
  store i32 %i.as, ptr %i.q, align 8, !tbaa !8
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !497
  store ptr %i.au, ptr %i.af, align 8, !tbaa !497
  store ptr null, ptr %i.k, align 8, !tbaa !497
  br label %_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit

end_hunk_3
