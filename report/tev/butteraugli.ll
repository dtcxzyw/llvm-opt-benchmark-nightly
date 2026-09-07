Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/butteraugli?download=true
inline.NumInlined: 2552
inline.NumDeleted: 242
loop-unroll.NumCompletelyUnrolled: 72
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 138
begin_hunk_0_@_ZN3jxl27ButteraugliScoreFromDiffmapERKNS_5PlaneIfEEPKNS_17ButteraugliParamsE:bb.a
  %i.z = load float, ptr %i.y, align 4, !tbaa !58 ; 2 uses
  %i.aa = fcmp olt float %.sroa.speculated.us.2, %i.z
  %.sroa.speculated.us.3 = select i1 %i.aa, float %i.z, float %.sroa.speculated.us.2 ; 3 uses
  %i.ab = add nuw nsw i64 %.013.us, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !38

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.013.us.epil.init = phi i64 [ 0, %.lr.ph.us ], [ %i.ab, %._crit_edge.us.unr-lcssa ]
  %.112.us.epil.init = phi float [ %.01114.us, %.lr.ph.us ], [ %.sroa.speculated.us.3, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.013.us.epil = phi i64 [ %.013.us.epil.init, %.epil.preheader ], [ %i.af, %bb.b ] ; 2 uses
  %.112.us.epil = phi float [ %.112.us.epil.init, %.epil.preheader ], [ %.sroa.speculated.us.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.013.us.epil
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !58 ; 2 uses
  %i.ae = fcmp olt float %.112.us.epil, %i.ad
  %.sroa.speculated.us.epil = select i1 %i.ae, float %i.ad, float %.112.us.epil ; 2 uses
  %i.af = add nuw nsw i64 %.013.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !1484

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.sroa.speculated.us.lcssa = phi float [ %.sroa.speculated.us.3, %._crit_edge.us.unr-lcssa ], [ %.sroa.speculated.us.epil, %bb.b ] ; 2 uses
  %i.ag = add nuw nsw i64 %.0915.us, 1            ; 2 uses
  %exitcond22.not = icmp eq i64 %i.ag, %i.c
  br i1 %exitcond22.not, label %._crit_edge18.loopexit21, label %.lr.ph.us, !llvm.loop !39

._crit_edge18.loopexit21:                         ; preds = %._crit_edge.us
  %i.ah = fpext float %.sroa.speculated.us.lcssa to double
  br label %._crit_edge18

._crit_edge18:                                    ; preds = %.lr.ph17, %._crit_edge18.loopexit21, %bb.a
  %.011.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ah, %._crit_edge18.loopexit21 ], [ 0.000000e+00, %.lr.ph17 ]
  ret double %.011.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl18ButteraugliDiffmapERKNS_6Image3IfEES3_ddRNS_5PlaneIfEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, double noundef %2, double noundef %3, ptr noundef nonnull align 8 dereferenceable(56) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.jxl::StatusOr.6", align 8   ; 5 uses
  %6 = alloca %"struct.jxl::ButteraugliParams", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float 8.000000e+01, ptr %i.a, align 8, !tbaa !83
  %i.b = insertelement <2 x double> poison, double %2, i64 0
  %i.c = insertelement <2 x double> %i.b, double %3, i64 1
  %i.d = fptrunc <2 x double> %i.c to <2 x float>
  store <2 x float> %i.d, ptr %6, align 8, !tbaa !58
  %i.e = load i32, ptr %0, align 8, !tbaa !65     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !67   ; 3 uses
  %i.h = icmp eq i32 %i.e, 0
  %i.i = icmp eq i32 %i.g, 0
  %or.cond.i = or i1 %i.h, %i.i
  br i1 %or.cond.i, label %_ZN3jxl18ButteraugliDiffmapERKNS_6Image3IfEES3_RKNS_17ButteraugliParamsERNS_5PlaneIfEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %1, align 8, !tbaa !65
  %i.k = icmp eq i32 %i.e, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.g, %i.m
  %i.o = select i1 %i.k, i1 %i.n, i1 false
  br i1 %i.o, label %bb.c, label %_ZN3jxl18ButteraugliDiffmapERKNS_6Image3IfEES3_RKNS_17ButteraugliParamsERNS_5PlaneIfEE.exit

bb.c:                                             ; preds = %bb.b
  %i.p = icmp ult i32 %i.e, 8
  %i.q = icmp ult i32 %i.g, 8
  %or.cond3.i = or i1 %i.p, %i.q
  br i1 %or.cond3.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = call noundef zeroext i1 @_ZN3jxl23ButteraugliDiffmapSmallILm8EEEbRKNS_6Image3IfEES4_RKNS_17ButteraugliParamsERNS_5PlaneIfEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(56) %4) #50, !inline_history !107
  %not..i.i = xor i1 %i.r, true
  %i.s = zext i1 %not..i.i to i32
  br label %_ZN3jxl18ButteraugliDiffmapERKNS_6Image3IfEES3_RKNS_17ButteraugliParamsERNS_5PlaneIfEE.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  call void @_ZN3jxl21ButteraugliComparator4MakeERKNS_6Image3IfEERKNS_17ButteraugliParamsE(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.6") align 8 %5, ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 4 dereferenceable(12) %6) #49, !inline_history !107
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !104  ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %_ZN3jxl8StatusOrINSt3__110unique_ptrINS_21ButteraugliComparatorENS1_14default_deleteIS3_EEEEED2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %5, align 8, !tbaa !106, !noalias !1487 ; 3 uses
  %i.x = call i32 @_ZNK3jxl21ButteraugliComparator7DiffmapERKNS_6Image3IfEERNS_5PlaneIfEE(ptr noundef nonnull align 8 dereferenceable(840) %i.w, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(56) %4) #49, !inline_history !107
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !87
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(840) %i.w) #45, !inline_history !40
  br label %_ZN3jxl8StatusOrINSt3__110unique_ptrINS_21ButteraugliComparatorENS1_14default_deleteIS3_EEEEED2Ev.exit.i

_ZN3jxl8StatusOrINSt3__110unique_ptrINS_21ButteraugliComparatorENS1_14default_deleteIS3_EEEEED2Ev.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.027.135.i = phi i32 [ %i.u, %bb.e ], [ %i.x, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br label %_ZN3jxl18ButteraugliDiffmapERKNS_6Image3IfEES3_RKNS_17ButteraugliParamsERNS_5PlaneIfEE.exit

_ZN3jxl18ButteraugliDiffmapERKNS_6Image3IfEES3_RKNS_17ButteraugliParamsERNS_5PlaneIfEE.exit: ; preds = %bb.a, %bb.b, %bb.d, %_ZN3jxl8StatusOrINSt3__110unique_ptrINS_21ButteraugliComparatorENS1_14default_deleteIS3_EEEEED2Ev.exit.i
  %.sroa.027.2.i = phi i32 [ 1, %bb.a ], [ %i.s, %bb.d ], [ %.sroa.027.135.i, %_ZN3jxl8StatusOrINSt3__110unique_ptrINS_21ButteraugliComparatorENS1_14default_deleteIS3_EEEEED2Ev.exit.i ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  ret i32 %.sroa.027.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl18ButteraugliDiffmapERKNS_6Image3IfEES3_RKNS_17ButteraugliParamsERNS_5PlaneIfEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.jxl::StatusOr.6", align 8   ; 5 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !65     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !67   ; 3 uses
  %i.d = icmp eq i32 %i.a, 0
  %i.e = icmp eq i32 %i.c, 0
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 8, !tbaa !65
  %i.g = icmp eq i32 %i.a, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.c, %i.i
  %i.k = select i1 %i.g, i1 %i.j, i1 false
  br i1 %i.k, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.l = icmp ult i32 %i.a, 8
  %i.m = icmp ult i32 %i.c, 8
  %or.cond3 = or i1 %i.l, %i.m
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call noundef zeroext i1 @_ZN3jxl23ButteraugliDiffmapSmallILm8EEEbRKNS_6Image3IfEES4_RKNS_17ButteraugliParamsERNS_5PlaneIfEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) #49
  %not..i = xor i1 %i.n, true
  %i.o = zext i1 %not..i to i32
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @_ZN3jxl21ButteraugliComparator4MakeERKNS_6Image3IfEERKNS_17ButteraugliParamsE(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.6") align 8 %4, ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 4 dereferenceable(12) %2) #49
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !104  ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %_ZN3jxl8StatusOrINSt3__110unique_ptrINS_21ButteraugliComparatorENS1_14default_deleteIS3_EEEEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %4, align 8, !tbaa !106, !noalias !1490 ; 3 uses
  %i.t = tail call i32 @_ZNK3jxl21ButteraugliComparator7DiffmapERKNS_6Image3IfEERNS_5PlaneIfEE(ptr noundef nonnull align 8 dereferenceable(840) %i.s, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(56) %3) #49
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !87
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(840) %i.s) #45, !inline_history !37
  br label %_ZN3jxl8StatusOrINSt3__110unique_ptrINS_21ButteraugliComparatorENS1_14default_deleteIS3_EEEEED2Ev.exit

_ZN3jxl8StatusOrINSt3__110unique_ptrINS_21ButteraugliComparatorENS1_14default_deleteIS3_EEEEED2Ev.exit: ; preds = %bb.f, %bb.e
  %.sroa.027.135 = phi i32 [ %i.q, %bb.e ], [ %i.t, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %_ZN3jxl8StatusOrINSt3__110unique_ptrINS_21ButteraugliComparatorENS1_14default_deleteIS3_EEEEED2Ev.exit, %bb.d
  %.sroa.027.2 = phi i32 [ 1, %bb.a ], [ %i.o, %bb.d ], [ %.sroa.027.135, %_ZN3jxl8StatusOrINSt3__110unique_ptrINS_21ButteraugliComparatorENS1_14default_deleteIS3_EEEEED2Ev.exit ], [ 1, %bb.b ]
  ret i32 %.sroa.027.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3jxl23ButteraugliDiffmapSmallILm8EEEbRKNS_6Image3IfEES4_RKNS_17ButteraugliParamsERNS_5PlaneIfEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.jxl::Plane", align 8        ; 8 uses
  %5 = alloca %"class.jxl::StatusOr.1", align 8   ; 16 uses
  %6 = alloca %"class.jxl::Image3", align 8       ; 16 uses
  %7 = alloca %"class.jxl::StatusOr.1", align 8   ; 13 uses
  %8 = alloca %"class.jxl::Image3", align 8       ; 16 uses
  %9 = alloca %"class.jxl::Plane", align 8        ; 7 uses
  %10 = alloca %"class.jxl::StatusOr", align 8    ; 9 uses
  %11 = alloca %"class.jxl::Plane", align 8       ; 6 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !65     ; 5 uses
  %i.b = zext i32 %i.a to i64                     ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !67   ; 4 uses
  %i.e = zext i32 %i.d to i64                     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74   ; 3 uses
  %i.h = icmp ult i32 %i.a, 8
  %i.i = sub nsw i64 8, %i.b
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.h, i64 %i.j, i64 0          ; 11 uses
  %i.l = icmp ult i32 %i.d, 8
  %i.m = sub nsw i64 8, %i.e
  %i.n = lshr i64 %i.m, 1
  %i.o = select i1 %i.l, i64 %i.n, i64 0          ; 6 uses
  %.sroa.speculated97 = tail call i64 @llvm.umax.i64(i64 %i.b, i64 8) ; 11 uses
  %.sroa.speculated93 = tail call i64 @llvm.umax.i64(i64 %i.e, i64 8) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  call void @_ZN3jxl6Image3IfE6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.1") align 8 %5, ptr noundef %i.g, i64 noundef %.sroa.speculated97, i64 noundef %.sroa.speculated93) #49
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !81
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.b, label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit72

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.s, i8 0, i64 144, i1 false), !alias.scope !1508
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %6, ptr noundef nonnull align 8 dereferenceable(172) %5, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.u = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.t) #45 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !78, !noalias !1508
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 %i.w, ptr %i.x, align 8, !tbaa !78, !alias.scope !1508
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 8 dereferenceable(56) %i.y, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ac = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab) #45 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !78, !noalias !1508
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 104
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !78, !alias.scope !1508
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.ak = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj) #45 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.am = load i64, ptr %i.al, align 8, !tbaa !78, !noalias !1508
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 160
  store i64 %i.am, ptr %i.an, align 8, !tbaa !78, !alias.scope !1508
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  call void @_ZN3jxl6Image3IfE6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.1") align 8 %7, ptr noundef %i.g, i64 noundef %.sroa.speculated97, i64 noundef %.sroa.speculated93) #49
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 168 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !81
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.preheader124, label %bb.k

.preheader124:                                    ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ar, i8 0, i64 144, i1 false), !alias.scope !1509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %8, ptr noundef nonnull align 8 dereferenceable(172) %7, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.at = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.as) #45 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.av = load i64, ptr %i.au, align 8, !tbaa !78, !noalias !1509
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !78, !alias.scope !1509
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ay, ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ba) #45 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !78, !noalias !1509
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 104
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !78, !alias.scope !1509
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, ptr noundef nonnull align 8 dereferenceable(56) %i.bf, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 136 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 2 uses
  %i.bj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.bi) #45 ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 160
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !78, !noalias !1509
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 160
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !78, !alias.scope !1509
  %i.bn = add nsw i64 %i.b, -1                    ; 9 uses
  %i.bo = add nsw i64 %i.e, -1                    ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !69 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !69 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !69 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !69 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !68 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.by, i64 64) ]
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !68 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ca, i64 64) ]
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !68 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cc, i64 64) ]
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !68 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ce, i64 64) ]
  %xtraiter = and i64 %.sroa.speculated97, 1
  %unroll_iter = and i64 %.sroa.speculated97, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod148 = trunc i64 %.sroa.speculated97 to i1
  br label %.preheader123

bb.c:                                             ; preds = %bb.f
  store i32 %i.gc, ptr %i.ge, align 8, !tbaa !77, !alias.scope !1510
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

.critedge.i:                                      ; preds = %bb.f
  store i32 0, ptr %i.ge, align 8, !tbaa !77, !alias.scope !1510
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %10, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 24, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.cg) #45
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !78, !noalias !1510
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !78, !alias.scope !1510
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit: ; preds = %bb.c, %.critedge.i
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ck) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46, !noalias !1510
  %i.cl = load i32, ptr %i.ge, align 8, !tbaa !77
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.h, label %.thread116

.preheader123:                                    ; preds = %.preheader124, %bb.g
  %.067126 = phi i64 [ 0, %.preheader124 ], [ %i.gm, %bb.g ] ; 4 uses
  %i.cn = call i64 @llvm.usub.sat.i64(i64 %.067126, i64 %i.o)
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.cn, i64 %i.bo) ; 2 uses
  %i.co = mul i64 %i.bq, %.sroa.speculated
  %i.cp = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.co ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cp, i64 64) ]
  %i.cq = mul i64 %i.bs, %.067126
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cq ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cr, i64 64) ]
  %i.cs = mul i64 %i.bu, %.sroa.speculated
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cs ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ct, i64 64) ]
  %i.cu = mul i64 %i.bw, %.067126
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cu ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cv, i64 64) ]
  br label %.preheader123.new

.preheader124.1:                                  ; preds = %bb.g
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !68 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cx, i64 64) ]
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !68 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cz, i64 64) ]
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !68 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.db, i64 64) ]
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !68 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dd, i64 64) ]
  %xtraiter153 = and i64 %.sroa.speculated97, 1
  %unroll_iter157 = and i64 %.sroa.speculated97, 4294967294
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  %lcmp.mod156 = trunc i64 %.sroa.speculated97 to i1
  br label %.preheader123.1

.preheader123.1:                                  ; preds = %bb.d, %.preheader124.1
  %.067126.1 = phi i64 [ 0, %.preheader124.1 ], [ %i.ek, %bb.d ] ; 4 uses
  %i.de = call i64 @llvm.usub.sat.i64(i64 %.067126.1, i64 %i.o)
  %.sroa.speculated.1 = call i64 @llvm.umin.i64(i64 %i.de, i64 %i.bo) ; 2 uses
  %i.df = mul i64 %i.bq, %.sroa.speculated.1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.df ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dg, i64 64) ]
  %i.dh = mul i64 %i.bs, %.067126.1
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dh ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.di, i64 64) ]
  %i.dj = mul i64 %i.bu, %.sroa.speculated.1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dj ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dk, i64 64) ]
  %i.dl = mul i64 %i.bw, %.067126.1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dl ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dm, i64 64) ]
  br label %.preheader123.1.new

.preheader123.1.new:                              ; preds = %.preheader123.1.new, %.preheader123.1
  %.066125.1 = phi i64 [ 0, %.preheader123.1 ], [ %i.ec, %.preheader123.1.new ] ; 5 uses
  %niter158 = phi i64 [ 0, %.preheader123.1 ], [ %niter158.next.1, %.preheader123.1.new ]
  %i.dn = call i64 @llvm.usub.sat.i64(i64 %.066125.1, i64 %i.k)
  %.sroa.speculated80.1 = call i64 @llvm.umin.i64(i64 %i.dn, i64 %i.bn) ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.sroa.speculated80.1
  %i.dp = load float, ptr %i.do, align 4, !tbaa !58
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.066125.1
  store float %i.dp, ptr %i.dq, align 8, !tbaa !58
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.sroa.speculated80.1
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !58
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.066125.1
  store float %i.ds, ptr %i.dt, align 8, !tbaa !58
  %i.du = or disjoint i64 %.066125.1, 1           ; 3 uses
  %i.dv = call i64 @llvm.usub.sat.i64(i64 %i.du, i64 %i.k)
  %.sroa.speculated80.1.1 = call i64 @llvm.umin.i64(i64 %i.dv, i64 %i.bn) ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.sroa.speculated80.1.1
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !58
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.du
  store float %i.dx, ptr %i.dy, align 4, !tbaa !58
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.sroa.speculated80.1.1
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !58
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.du
  store float %i.ea, ptr %i.eb, align 4, !tbaa !58
  %i.ec = add nuw nsw i64 %.066125.1, 2           ; 4 uses
  %niter158.next.1 = add nuw nsw i64 %niter158, 2 ; 2 uses
  %niter158.ncmp.1 = icmp eq i64 %niter158.next.1, %unroll_iter157
  br i1 %niter158.ncmp.1, label %.unr-lcssa151, label %.preheader123.1.new, !llvm.loop !1497

.unr-lcssa151:                                    ; preds = %.preheader123.1.new
  br i1 %lcmp.mod154.not, label %bb.d, label %.epil.preheader152

.epil.preheader152:                               ; preds = %.unr-lcssa151
  call void @llvm.assume(i1 %lcmp.mod156)
  %i.ed = call i64 @llvm.usub.sat.i64(i64 %i.ec, i64 %i.k)
  %.sroa.speculated80.1.epil = call i64 @llvm.umin.i64(i64 %i.ed, i64 %i.bn) ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.sroa.speculated80.1.epil
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !58
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.ec
  store float %i.ef, ptr %i.eg, align 4, !tbaa !58
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.sroa.speculated80.1.epil
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !58
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.ec
  store float %i.ei, ptr %i.ej, align 4, !tbaa !58
  br label %bb.d

bb.d:                                             ; preds = %.unr-lcssa151, %.epil.preheader152
  %i.ek = add nuw nsw i64 %.067126.1, 1           ; 2 uses
  %exitcond132.1.not = icmp eq i64 %i.ek, %.sroa.speculated93
  br i1 %exitcond132.1.not, label %.preheader124.2, label %.preheader123.1, !llvm.loop !1498

.preheader124.2:                                  ; preds = %bb.d
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !68 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.em, i64 64) ]
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !68 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eo, i64 64) ]
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !68 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eq, i64 64) ]
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !68 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.es, i64 64) ]
  %xtraiter161 = and i64 %.sroa.speculated97, 1
  %unroll_iter165 = and i64 %.sroa.speculated97, 4294967294
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  %lcmp.mod164 = trunc i64 %.sroa.speculated97 to i1
  br label %.preheader123.2

.preheader123.2:                                  ; preds = %bb.e, %.preheader124.2
  %.067126.2 = phi i64 [ 0, %.preheader124.2 ], [ %i.fz, %bb.e ] ; 4 uses
  %i.et = call i64 @llvm.usub.sat.i64(i64 %.067126.2, i64 %i.o)
  %.sroa.speculated.2 = call i64 @llvm.umin.i64(i64 %i.et, i64 %i.bo) ; 2 uses
  %i.eu = mul i64 %i.bq, %.sroa.speculated.2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.eu ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ev, i64 64) ]
  %i.ew = mul i64 %i.bs, %.067126.2
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ew ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ex, i64 64) ]
  %i.ey = mul i64 %i.bu, %.sroa.speculated.2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ey ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ez, i64 64) ]
  %i.fa = mul i64 %i.bw, %.067126.2
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fa ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fb, i64 64) ]
  br label %.preheader123.2.new

.preheader123.2.new:                              ; preds = %.preheader123.2.new, %.preheader123.2
  %.066125.2 = phi i64 [ 0, %.preheader123.2 ], [ %i.fr, %.preheader123.2.new ] ; 5 uses
  %niter166 = phi i64 [ 0, %.preheader123.2 ], [ %niter166.next.1, %.preheader123.2.new ]
  %i.fc = call i64 @llvm.usub.sat.i64(i64 %.066125.2, i64 %i.k)
  %.sroa.speculated80.2 = call i64 @llvm.umin.i64(i64 %i.fc, i64 %i.bn) ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.sroa.speculated80.2
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !58
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.066125.2
  store float %i.fe, ptr %i.ff, align 8, !tbaa !58
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %.sroa.speculated80.2
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !58
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %.066125.2
  store float %i.fh, ptr %i.fi, align 8, !tbaa !58
  %i.fj = or disjoint i64 %.066125.2, 1           ; 3 uses
  %i.fk = call i64 @llvm.usub.sat.i64(i64 %i.fj, i64 %i.k)
  %.sroa.speculated80.2.1 = call i64 @llvm.umin.i64(i64 %i.fk, i64 %i.bn) ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.sroa.speculated80.2.1
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !58
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fj
  store float %i.fm, ptr %i.fn, align 4, !tbaa !58
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %.sroa.speculated80.2.1
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !58
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fj
  store float %i.fp, ptr %i.fq, align 4, !tbaa !58
  %i.fr = add nuw nsw i64 %.066125.2, 2           ; 4 uses
  %niter166.next.1 = add nuw nsw i64 %niter166, 2 ; 2 uses
  %niter166.ncmp.1 = icmp eq i64 %niter166.next.1, %unroll_iter165
  br i1 %niter166.ncmp.1, label %.unr-lcssa159, label %.preheader123.2.new, !llvm.loop !1497

.unr-lcssa159:                                    ; preds = %.preheader123.2.new
  br i1 %lcmp.mod162.not, label %bb.e, label %.epil.preheader160

.epil.preheader160:                               ; preds = %.unr-lcssa159
  call void @llvm.assume(i1 %lcmp.mod164)
  %i.fs = call i64 @llvm.usub.sat.i64(i64 %i.fr, i64 %i.k)
  %.sroa.speculated80.2.epil = call i64 @llvm.umin.i64(i64 %i.fs, i64 %i.bn) ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.sroa.speculated80.2.epil
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !58
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fr
  store float %i.fu, ptr %i.fv, align 4, !tbaa !58
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %.sroa.speculated80.2.epil
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !58
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fr
  store float %i.fx, ptr %i.fy, align 4, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa159, %.epil.preheader160
  %i.fz = add nuw nsw i64 %.067126.2, 1           ; 2 uses
  %exitcond132.2.not = icmp eq i64 %i.fz, %.sroa.speculated93
  br i1 %exitcond132.2.not, label %bb.f, label %.preheader123.2, !llvm.loop !1498

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 56, i1 false)
  %i.ga = call i32 @_ZN3jxl18ButteraugliDiffmapERKNS_6Image3IfEES3_RKNS_17ButteraugliParamsERNS_5PlaneIfEE(ptr noundef nonnull align 8 dereferenceable(168) %6, ptr noundef nonnull align 8 dereferenceable(168) %8, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(56) %9) #49
  %i.gb = icmp eq i32 %i.ga, 0                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #46
  call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46, !noalias !1510
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %4, i32 noundef %i.a, i32 noundef %i.d, i64 noundef 4) #45, !noalias !1510
  %i.gc = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %i.g, i64 noundef 0) #45, !noalias !1510 ; 2 uses
  %i.gd = icmp eq i32 %i.gc, 0
  %i.ge = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 4 uses
  br i1 %i.gd, label %.critedge.i, label %bb.c

.unr-lcssa:                                       ; preds = %.preheader123.new
  br i1 %lcmp.mod.not, label %bb.g, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod148)
  %i.gf = call i64 @llvm.usub.sat.i64(i64 %i.hc, i64 %i.k)
  %.sroa.speculated80.epil = call i64 @llvm.umin.i64(i64 %i.gf, i64 %i.bn) ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.sroa.speculated80.epil
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !58
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.hc
  store float %i.gh, ptr %i.gi, align 4, !tbaa !58
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.sroa.speculated80.epil
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !58
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.hc
  store float %i.gk, ptr %i.gl, align 4, !tbaa !58
  br label %bb.g

bb.g:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.gm = add nuw nsw i64 %.067126, 1             ; 2 uses
  %exitcond132.not = icmp eq i64 %i.gm, %.sroa.speculated93
  br i1 %exitcond132.not, label %.preheader124.1, label %.preheader123, !llvm.loop !1498

.preheader123.new:                                ; preds = %.preheader123.new, %.preheader123
  %.066125 = phi i64 [ 0, %.preheader123 ], [ %i.hc, %.preheader123.new ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader123 ], [ %niter.next.1, %.preheader123.new ]
  %i.gn = call i64 @llvm.usub.sat.i64(i64 %.066125, i64 %i.k)
  %.sroa.speculated80 = call i64 @llvm.umin.i64(i64 %i.gn, i64 %i.bn) ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.sroa.speculated80
  %i.gp = load float, ptr %i.go, align 4, !tbaa !58
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.066125
  store float %i.gp, ptr %i.gq, align 8, !tbaa !58
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.sroa.speculated80
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !58
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.066125
  store float %i.gs, ptr %i.gt, align 8, !tbaa !58
  %i.gu = or disjoint i64 %.066125, 1             ; 3 uses
  %i.gv = call i64 @llvm.usub.sat.i64(i64 %i.gu, i64 %i.k)
  %.sroa.speculated80.1150 = call i64 @llvm.umin.i64(i64 %i.gv, i64 %i.bn) ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.sroa.speculated80.1150
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !58
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.gu
  store float %i.gx, ptr %i.gy, align 4, !tbaa !58
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.sroa.speculated80.1150
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !58
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.gu
  store float %i.ha, ptr %i.hb, align 4, !tbaa !58
  %i.hc = add nuw nsw i64 %.066125, 2             ; 4 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader123.new, !llvm.loop !1497

bb.h:                                             ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #46
  call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(60) %10, i64 24, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.hd, ptr noundef nonnull align 8 dereferenceable(24) %i.he) #45
  %i.hf = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !78, !noalias !1511
  store i64 %i.hh, ptr %i.hf, align 8, !tbaa !78, !alias.scope !1511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %11, i64 24, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, ptr noundef nonnull align 8 dereferenceable(24) %i.hd) #45 ; 0 uses
  %i.hk = load i64, ptr %i.hf, align 8, !tbaa !78
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !78
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.hd) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge130.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.h
  %.not131 = icmp eq i32 %i.a, 0
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.hn = load ptr, ptr %i.hm, align 8            ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hp = load i64, ptr %i.ho, align 8            ; 4 uses
  br i1 %.not131, label %._crit_edge130.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !68 ; 3 uses
  %i.ht = load i64, ptr %i.hq, align 8, !tbaa !69 ; 3 uses
  %i.hu = mul i64 %i.ht, %i.bo
  %i.hv = shl nuw nsw i64 %i.b, 2                 ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hs, i64 %i.hu
  %scevgep = getelementptr i8, ptr %i.hw, i64 %i.hv
  %i.hx = mul i64 %i.o, %i.hp
  %i.hy = shl i64 %i.k, 2                         ; 2 uses
  %i.hz = getelementptr i8, ptr %i.hn, i64 %i.hx
  %scevgep144 = getelementptr i8, ptr %i.hz, i64 %i.hy
  %i.ia = add nuw i64 %i.o, %i.e
  %i.ib = add i64 %i.ia, -1
  %i.ic = mul i64 %i.hp, %i.ib
  %i.id = getelementptr i8, ptr %i.hn, i64 %i.ic
  %i.ie = getelementptr i8, ptr %i.id, i64 %i.hy
  %scevgep145 = getelementptr i8, ptr %i.ie, i64 %i.hv
  %min.iters.check = icmp ult i32 %i.a, 8
  %bound0 = icmp ult ptr %i.hs, %scevgep145
  %bound1 = icmp ult ptr %scevgep144, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.if = or i64 %i.hp, %i.ht
  %i.ig = icmp slt i64 %i.if, 0
  %i.ih = or i1 %found.conflict, %i.ig
  %n.vec = and i64 %i.b, 4294967288               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.b
  %xtraiter167 = and i64 %i.b, 3                  ; 2 uses
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.064129 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %i.ix, %._crit_edge ] ; 3 uses
  %i.ii = add nuw i64 %.064129, %i.o
  %i.ij = mul i64 %i.hp, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.ij ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ik, i64 64) ]
  %invariant.gep = getelementptr [4 x i8], ptr %i.ik, i64 %i.k ; 6 uses
  %i.il = mul i64 %i.ht, %.064129
  %i.im = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.il ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.im, i64 64) ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ih
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.in = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.io = getelementptr i8, ptr %i.in, i64 16
  %wide.load = load <4 x float>, ptr %i.in, align 4, !tbaa !58, !alias.scope !1512
  %wide.load147 = load <4 x float>, ptr %i.io, align 4, !tbaa !58, !alias.scope !1512
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %index ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store <4 x float> %wide.load, ptr %i.ip, align 32, !tbaa !58, !alias.scope !1513, !noalias !1512
  store <4 x float> %wide.load147, ptr %i.iq, align 16, !tbaa !58, !alias.scope !1513, !noalias !1512
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ir = icmp eq i64 %index.next, %n.vec
  br i1 %i.ir, label %middle.block, label %vector.body, !llvm.loop !1504

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %.0128.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 3 uses
  br i1 %lcmp.mod168.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0128.prol = phi i64 [ %i.iu, %scalar.ph.prol ], [ %.0128.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %.0128.prol
  %i.is = load float, ptr %gep.prol, align 4, !tbaa !58
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %.0128.prol
  store float %i.is, ptr %i.it, align 4, !tbaa !58
  %i.iu = add nuw nsw i64 %.0128.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter167
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1505

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0128.unr = phi i64 [ %.0128.ph, %scalar.ph.preheader ], [ %i.iu, %scalar.ph.prol ]
  %i.iv = sub nsw i64 %.0128.ph, %i.b
  %i.iw = icmp ugt i64 %i.iv, -4
  br i1 %i.iw, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ix = add nuw nsw i64 %.064129, 1             ; 2 uses
  %exitcond136.not = icmp eq i64 %i.ix, %i.e
  br i1 %exitcond136.not, label %._crit_edge130.split, label %.preheader, !llvm.loop !1506

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0128 = phi i64 [ %i.jj, %scalar.ph ], [ %.0128.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.0128
  %i.iy = load float, ptr %gep, align 4, !tbaa !58
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %.0128
  store float %i.iy, ptr %i.iz, align 4, !tbaa !58
  %i.ja = add nuw nsw i64 %.0128, 1               ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ja
  %i.jb = load float, ptr %gep.1, align 4, !tbaa !58
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.ja
  store float %i.jb, ptr %i.jc, align 4, !tbaa !58
  %i.jd = add nuw nsw i64 %.0128, 2               ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.jd
  %i.je = load float, ptr %gep.2, align 4, !tbaa !58
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.jd
  store float %i.je, ptr %i.jf, align 4, !tbaa !58
  %i.jg = add nuw nsw i64 %.0128, 3               ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.jg
  %i.jh = load float, ptr %gep.3, align 4, !tbaa !58
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.jg
  store float %i.jh, ptr %i.ji, align 4, !tbaa !58
  %i.jj = add nuw nsw i64 %.0128, 4               ; 2 uses
  %exitcond135.not.3 = icmp eq i64 %i.jj, %i.b
  br i1 %exitcond135.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !1507

._crit_edge130.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.h
  %.pr = load i32, ptr %i.ge, align 8, !tbaa !77
  %i.jk = icmp eq i32 %.pr, 0
  br i1 %i.jk, label %bb.i, label %.thread116

bb.i:                                             ; preds = %._crit_edge130.split
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.he) #45
  br label %.thread116

.thread116:                                       ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit, %bb.i, %._crit_edge130.split
  %.3118 = phi i1 [ %i.gb, %bb.i ], [ %i.gb, %._crit_edge130.split ], [ false, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  %i.jl = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.jl) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bh) #45
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.az) #45
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ar) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  %.pr119 = load i32, ptr %i.ao, align 8, !tbaa !81
  %i.jm = icmp eq i32 %.pr119, 0
  br i1 %i.jm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread116
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bi) #45
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ba) #45
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.as) #45
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread116, %bb.b
  %.4122 = phi i1 [ %.3118, %bb.j ], [ %.3118, %.thread116 ], [ false, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ai) #45
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aa) #45
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.s) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  %.pre = load i32, ptr %i.p, align 8, !tbaa !81
  %i.jn = icmp eq i32 %.pre, 0
  br i1 %i.jn, label %bb.l, label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit72

bb.l:                                             ; preds = %bb.k
  %i.jo = getelementptr inbounds nuw i8, ptr %5, i64 136
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.jo) #45
  %i.jp = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.jp) #45
  %i.jq = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.jq) #45
  br label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit72

_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit72:      ; preds = %bb.a, %bb.k, %bb.l
  %.5143 = phi i1 [ %.4122, %bb.l ], [ %.4122, %bb.k ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
end_hunk_0
