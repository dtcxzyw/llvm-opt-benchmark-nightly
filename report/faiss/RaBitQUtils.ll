Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/RaBitQUtils?download=true
inline.NumInlined: 256
inline.NumDeleted: 145
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt6vectorIhSaIhEE17_M_default_appendEm:bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31, %bb.h
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #25
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34: ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, %bb.i
  store ptr %i.u, ptr %0, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !54
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5faiss12rabitq_utils20extract_bit_standardEPKhm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = lshr i64 %1, 3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !20
  %i.d = trunc i64 %1 to i8
  %i.e = and i8 %i.d, 7
  %i.f = lshr i8 %i.c, %i.e
  %i.g = trunc i8 %i.f to i1
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5faiss12rabitq_utils20extract_bit_fastscanEPKhm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = lshr i64 %1, 3                           ; 2 uses
  %i.b = trunc i64 %1 to i8
  %i.c = and i8 %i.b, 3                           ; 2 uses
  %i.d = and i64 %1, 4
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = shl nuw nsw i8 1, %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.h = load i8, ptr %i.g, align 1, !tbaa !20
  %i.i = and i8 %i.h, %i.f
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.k = load i8, ptr %i.j, align 1, !tbaa !20
  %i.l = shl nuw i8 16, %i.c
  %i.m = and i8 %i.k, %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.in = phi i8 [ %i.i, %bb.b ], [ %i.m, %bb.c ]
  %.0 = icmp ne i8 %.0.in, 0
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5faiss12rabitq_utils16set_bit_standardEPhm(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = lshr i64 %1, 3
  %i.b = trunc i64 %1 to i8
  %i.c = and i8 %i.b, 7
  %i.d = shl nuw i8 1, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !20
  %i.g = or i8 %i.f, %i.d
  store i8 %i.g, ptr %i.e, align 1, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5faiss12rabitq_utils16set_bit_fastscanEPhm(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = trunc i64 %1 to i8
  %i.b = and i8 %i.a, 3
  %i.c = lshr i64 %1, 3
  %i.d = and i64 %1, 4
  %i.e = icmp eq i64 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !20
  %. = select i1 %i.e, i8 1, i8 16
  %i.h = shl nuw i8 %., %i.b
  %i.i = or i8 %i.g, %i.h
  store i8 %i.i, ptr %i.f, align 1, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 8, 2305843009213693972) i64 @_ZN5faiss12rabitq_utils31compute_per_vector_storage_sizeEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #18 {
bb.a:
  %i.a = add i64 %0, -1                           ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = mul i64 %1, %i.a
  %i.d = add i64 %i.c, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = add nuw nsw i64 %i.e, 20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ 8, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define noundef float @_ZN5faiss12rabitq_utils30compute_full_multibit_distanceEPKhS2_RKNS0_16ExtraBitsFactorsEPKffmmNS_10MetricTypeE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(8) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i64 noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #19 {
bb.a:
  %i.a = trunc i64 %6 to i32                      ; 2 uses
  %i.b = shl nuw i32 1, %i.a
  %i.c = sitofp i32 %i.b to float
  %i.d = fadd float %i.c, -5.000000e-01
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %6
  %i.e = xor i64 %notmask.i.i.i.i.i.i, -1
  %.not.i.i.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i.i.i.i, label %"_ZN5faiss25with_selected_simd_levelsILi95EZNS_12rabitq_utils30compute_full_multibit_distanceEPKhS3_RKNS1_16ExtraBitsFactorsEPKffmmNS_10MetricTypeEE3$_0EEDaOT0_.exit", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.027.i.i.i.i.i.i = phi float [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ 0.000000e+00, %bb.a ]
  %.02526.i.i.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.a ] ; 5 uses
  %i.f = lshr i64 %.02526.i.i.i.i.i.i, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !20, !alias.scope !69, !noalias !70
  %i.i = zext i8 %i.h to i32
  %i.j = trunc i64 %.02526.i.i.i.i.i.i to i32
  %i.k = and i32 %i.j, 7
  %i.l = lshr i32 %i.i, %i.k
  %i.m = and i32 %i.l, 1
  %i.n = mul i64 %.02526.i.i.i.i.i.i, %6          ; 2 uses
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.n, 7
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.q, align 1, !alias.scope !71, !noalias !72
  %i.r = lshr i64 %.0.copyload.i.i.i.i.i.i, %i.p
  %i.s = and i64 %i.r, %i.e
  %i.t = trunc i64 %i.s to i32
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02526.i.i.i.i.i.i
  %i.v = load float, ptr %i.u, align 4, !tbaa !9, !alias.scope !73, !noalias !74
  %i.w = shl nuw i32 %i.m, %i.a
  %i.x = add nsw i32 %i.w, %i.t
  %i.y = sitofp i32 %i.x to float
  %i.z = fsub float %i.y, %i.d
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.v, float %i.z, float %.027.i.i.i.i.i.i) ; 2 uses
  %i.ab = add nuw i64 %.02526.i.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ab, %5
  br i1 %exitcond.not.i.i.i.i.i.i, label %"_ZN5faiss25with_selected_simd_levelsILi95EZNS_12rabitq_utils30compute_full_multibit_distanceEPKhS3_RKNS1_16ExtraBitsFactorsEPKffmmNS_10MetricTypeEE3$_0EEDaOT0_.exit", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !75

"_ZN5faiss25with_selected_simd_levelsILi95EZNS_12rabitq_utils30compute_full_multibit_distanceEPKhS3_RKNS1_16ExtraBitsFactorsEPKffmmNS_10MetricTypeEE3$_0EEDaOT0_.exit": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.a
  %.0.lcssa.i.i.i.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %i.aa, %.lr.ph.i.i.i.i.i.i ]
  %i.ac = load float, ptr %2, align 1, !tbaa !76
  %i.ad = fadd float %4, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.af = load float, ptr %i.ae, align 1, !tbaa !78
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float %.0.lcssa.i.i.i.i.i.i, float %i.ad) ; 2 uses
  %i.ah = icmp eq i32 %7, 1
  %i.ai = fcmp ule float %i.ag, 0.000000e+00
  %i.aj = select i1 %i.ah, i1 %i.ai, i1 false
  %.0.i.i.i.i = select i1 %i.aj, float 0.000000e+00, float %i.ag
  ret float %.0.i.i.i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss12rabitq_utils36populate_block_aux_from_flat_storageERKSt6vectorIhSaIhEERNS_12AlignedTableIhLi32EEEmmmmmmPKl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(address_is_null) %8) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"struct.faiss::AlignedTable", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79
  %i.d = icmp eq ptr %i.a, %i.c
  %i.e = icmp eq i64 %2, 0
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %4, 1
  %i.g = lshr i64 %i.f, 1
  %i.h = mul i64 %i.g, %3                         ; 5 uses
  %i.i = add i64 %2, -1
  %i.j = add i64 %i.i, %3                         ; 2 uses
  %i.k = udiv i64 %i.j, %3                        ; 3 uses
  %i.l = icmp ult i64 %5, %6
  br i1 %i.l, label %bb.c, label %.lr.ph75

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !80
  invoke void @_ZN5faiss12AlignedTableIhLi32EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.n)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %9, align 8, !tbaa !83
  %i.p = load ptr, ptr %1, align 8, !tbaa !83
  %i.q = load i64, ptr %i.m, align 8, !tbaa !80
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.p, i64 %i.q, i1 false)
  %i.r = mul i64 %i.k, %6                         ; 2 uses
  invoke void @_ZN5faiss12AlignedTableIhLi32EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.r)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %1, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 0, i64 %i.r, i1 false)
  %.not76 = icmp ugt i64 %3, %i.j
  br i1 %.not76, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %umax = call i64 @llvm.umax.i64(i64 %i.k, i64 1) ; 3 uses
  %xtraiter = and i64 %umax, 1
  %11 = icmp ult i64 %i.k, 2
  br i1 %11, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %umax, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.05672.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod97 = trunc i64 %umax to i1
  call void @llvm.assume(i1 %lcmp.mod97)
  %i.t = load ptr, ptr %1, align 8, !tbaa !83
  %i.u = load ptr, ptr %9, align 8, !tbaa !83
  %i.v = mul i64 %.05672.epil.init, %6
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v
  %i.x = mul i64 %.05672.epil.init, %5
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.y, i64 %i.h, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.e
  %i.z = load ptr, ptr %9, align 8, !tbaa !83
  call void @free(ptr noundef %i.z) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.lr.ph75

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %9, align 8, !tbaa !83
  call void @free(ptr noundef %i.ab) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.r

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.05672 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ap, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ac = load ptr, ptr %1, align 8, !tbaa !83
  %i.ad = load ptr, ptr %9, align 8, !tbaa !83
  %i.ae = mul i64 %.05672, %6
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.ag = mul i64 %.05672, %5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.ah, i64 %i.h, i1 false)
  %i.ai = or disjoint i64 %.05672, 1              ; 2 uses
  %i.aj = load ptr, ptr %1, align 8, !tbaa !83
  %i.ak = load ptr, ptr %9, align 8, !tbaa !83
  %i.al = mul i64 %i.ai, %6
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  %i.an = mul i64 %i.ai, %5
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.ao, i64 %i.h, i1 false)
  %i.ap = add nuw i64 %.05672, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !84

.lr.ph75:                                         ; preds = %bb.b, %._crit_edge
  %.not = icmp eq ptr %8, null
  br i1 %.not, label %.lr.ph75.split.us, label %.lr.ph75.split

.lr.ph75.split.us:                                ; preds = %.lr.ph75, %bb.h
  %.073.us = phi i64 [ %i.bg, %bb.h ], [ 0, %.lr.ph75 ] ; 5 uses
  %exitcond80.not = icmp eq i64 %.073.us, -9223372036854775808
  br i1 %exitcond80.not, label %.split.us, label %bb.g

bb.g:                                             ; preds = %.lr.ph75.split.us
  %i.aq = mul i64 %.073.us, %7                    ; 2 uses
  %i.ar = add i64 %i.aq, %7
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.at = load ptr, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %.not67.us = icmp ugt i64 %i.ar, %i.aw
  br i1 %.not67.us, label %.split.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aq
  %i.ay = load ptr, ptr %1, align 8, !tbaa !83
  %i.az = udiv i64 %.073.us, %3
  %i.ba = mul i64 %i.az, %6
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.h
  %i.bd = urem i64 %.073.us, %3
  %i.be = mul i64 %i.bd, %7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.ax, i64 %7, i1 false)
  %i.bg = add nuw i64 %.073.us, 1                 ; 2 uses
  %exitcond81.not = icmp eq i64 %i.bg, %2
  br i1 %exitcond81.not, label %.loopexit, label %.lr.ph75.split.us, !llvm.loop !85

.lr.ph75.split:                                   ; preds = %.lr.ph75, %bb.q
  %.073 = phi i64 [ %i.cq, %bb.q ], [ 0, %.lr.ph75 ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.073
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !86 ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, -1
  br i1 %i.bj, label %bb.i, label %.split.us

bb.i:                                             ; preds = %.lr.ph75.split
  %i.bk = mul i64 %i.bi, %7                       ; 2 uses
  %i.bl = add i64 %i.bk, %7
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.bn = load ptr, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %.not67 = icmp ugt i64 %i.bl, %i.bq
  br i1 %.not67, label %.split.us, label %bb.q

.split.us:                                        ; preds = %bb.i, %.lr.ph75.split, %.lr.ph75.split.us, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.br, ptr %10, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.bs, align 8, !tbaa !17
  store i8 0, ptr %i.br, align 8, !tbaa !20
  %i.bt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #23 ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.split.us
  %i.bv = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.bw = add nuw nsw i64 %i.bv, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.bw)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bx = load ptr, ptr %10, align 8, !tbaa !21
  %i.by = load i64, ptr %i.bs, align 8, !tbaa !17
  %i.bz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bx, i64 noundef %i.by, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #23 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.bv)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k, %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %bb.k, %.split.us
  %i.cb = call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12rabitq_utils36populate_block_aux_from_flat_storageERKSt6vectorIhSaIhEERNS_12AlignedTableIhLi32EEEmmmmmmPKl, ptr noundef nonnull @.str.2, i32 noundef 385)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.cb, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #24
          to label %bb.s unwind label %bb.l

bb.o:                                             ; preds = %bb.m
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cb) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.l ], [ %i.cc, %bb.o ]
  %i.cd = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.br
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.cf = load i64, ptr %i.br, align 8, !tbaa !20
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.r

bb.q:                                             ; preds = %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bk
  %i.ci = load ptr, ptr %1, align 8, !tbaa !83
  %i.cj = udiv i64 %.073, %3
  %i.ck = mul i64 %i.cj, %6
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.h
  %i.cn = urem i64 %.073, %3
  %i.co = mul i64 %i.cn, %7
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %i.ch, i64 %7, i1 false)
  %i.cq = add nuw i64 %.073, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cq, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph75.split, !llvm.loop !85

.loopexit:                                        ; preds = %bb.q, %bb.h, %bb.a
  ret void

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn69.pn = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn69.pn

bb.s:                                             ; preds = %bb.n
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss12AlignedTableIhLi32EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %_ZN5faiss12AlignedTableIhLi32EE14round_capacityEm.exit.thread9, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %1, 256
  br i1 %i.c, label %_ZN5faiss12AlignedTableIhLi32EE14round_capacityEm.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.0.i = phi i64 [ %i.e, %.preheader.i ], [ 256, %bb.b ] ; 4 uses
  %i.d = icmp ult i64 %.0.i, %1
end_hunk_0
