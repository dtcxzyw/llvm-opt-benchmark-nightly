Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/factor_equivs?download=true
inline.NumInlined: 371
inline.NumDeleted: 210
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN15obj_equiv_classI4expr11ast_managerE5mergeEPS0_S3_:bb.a
  %spec.select.i = select i1 %i.al, i32 %.2.i6.i, i32 %.2.i30.i
  %spec.select31.i = select i1 %i.al, i32 %.2.i30.i, i32 %.2.i6.i ; 2 uses
  %i.am = zext i32 %spec.select.i to i64          ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.am
  store i32 %spec.select31.i, ptr %i.an, align 4, !tbaa !21
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.am
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !21
  %i.aq = zext i32 %spec.select31.i to i64        ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !21
  %i.at = add i32 %i.as, %i.ap
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !36 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.am ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aq ; 2 uses
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !21
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !21
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !21
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !21
  br label %_ZN16basic_union_find5mergeEjj.exit

_ZN16basic_union_find5mergeEjj.exit:              ; preds = %_ZNK16basic_union_find4findEj.exit10.i, %_ZN16basic_union_find11ensure_sizeEj.exit16.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z10choose_repRN15obj_equiv_classI4expr11ast_managerE8eq_classERS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(952) %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !83 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i21 = load i64, ptr %.sroa.2.0..sroa_idx.i20, align 8 ; 2 uses
  %.sroa.3.12.extract.shift30 = lshr i64 %.sroa.2.0.copyload.i21, 32
  %.sroa.3.12.extract.trunc = trunc i64 %.sroa.3.12.extract.shift30 to i8 ; 2 uses
  %.sroa.3.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i21 to i32 ; 2 uses
  %.sroa.5.12.extract.shift3139 = lshr i64 %.sroa.2.0.copyload.i, 32
  %.sroa.5.12.extract.trunc32 = trunc i64 %.sroa.5.12.extract.shift3139 to i8
  %.not.i33 = icmp ne i8 %.sroa.5.12.extract.trunc32, %.sroa.3.12.extract.trunc
  %.sroa.5.8.extract.trunc34 = trunc i64 %.sroa.2.0.copyload.i to i32 ; 2 uses
  %i.a = icmp ne i32 %.sroa.5.8.extract.trunc34, %.sroa.3.8.extract.trunc
  %i.b = or i1 %i.a, %.not.i33
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %.not.i = icmp ne i8 %.sroa.3.12.extract.trunc, 0
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %.1, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ]
  ret ptr %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit
  %.sroa.5.8.extract.trunc38 = phi i32 [ %.sroa.5.8.extract.trunc34, %.lr.ph ], [ %.0.i.i, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ] ; 3 uses
  %.037 = phi ptr [ null, %.lr.ph ], [ %.1, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ] ; 3 uses
  %.01636 = phi i32 [ 0, %.lr.ph ], [ %.117, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ] ; 3 uses
  %.sroa.5.035 = phi i64 [ %.sroa.2.0.copyload.i, %.lr.ph ], [ %.sroa.5.8.insert.ext, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ]
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !20
  %.sroa.5.8.extract.trunc.mask = and i64 %.sroa.5.035, 4294967295 ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.sroa.5.8.extract.trunc.mask
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 3 uses
  %i.h = tail call noundef zeroext i1 @_ZNK11ast_manager8is_valueEP4expr(ptr noundef nonnull align 8 dereferenceable(952) %1, ptr noundef %i.g)
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i32 @_Z13get_num_exprsP4expr(ptr noundef %i.g) ; 2 uses
  %.not = icmp eq ptr %.037, null
  %i.j = icmp ugt i32 %.01636, %i.i
  %or.cond = select i1 %.not, i1 true, i1 %i.j    ; 2 uses
  %spec.select = select i1 %or.cond, i32 %i.i, i32 %.01636
  %spec.select18 = select i1 %or.cond, ptr %i.g, ptr %.037
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.117 = phi i32 [ %.01636, %bb.b ], [ %spec.select, %bb.c ]
  %.1 = phi ptr [ %.037, %bb.b ], [ %spec.select18, %bb.c ] ; 2 uses
  %i.k = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !36 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i

_ZNK16basic_union_find12get_num_varsEv.exit.i.i:  ; preds = %bb.d
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !21
  %.not.i.i = icmp ugt i32 %i.n, %.sroa.5.8.extract.trunc38
  br i1 %.not.i.i, label %bb.e, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit

bb.e:                                             ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.5.8.extract.trunc.mask
  %i.q = load i32, ptr %i.p, align 4, !tbaa !21
  br label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit

_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit: ; preds = %bb.d, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i, %bb.e
  %.0.i.i = phi i32 [ %i.q, %bb.e ], [ %.sroa.5.8.extract.trunc38, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i ], [ %.sroa.5.8.extract.trunc38, %bb.d ] ; 3 uses
  %.sroa.5.8.insert.ext = zext i32 %.0.i.i to i64
  %i.r = icmp ne i32 %.0.i.i, %.sroa.3.8.extract.trunc
  %i.s = or i1 %i.r, %.not.i
  br i1 %i.s, label %bb.b, label %._crit_edge
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef zeroext i1 @_ZNK11ast_manager8is_valueEP4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z13get_num_exprsP4expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_Z11rewrite_eqsR10ref_vectorI4expr11ast_managerER15obj_equiv_classIS0_S1_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.expr_safe_replace, align 8   ; 20 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !14, !nonnull !15, !align !16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr %i.a, ptr %2, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.c, ptr %i.e, align 8, !tbaa !84
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  store i64 %i.c, ptr %i.g, align 8, !tbaa !84
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr null, ptr %i.h, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 128
  store ptr %i.j, ptr %i.i, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 1, ptr %i.k, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.m, align 8, !tbaa !85
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20   ; 3 uses
  %i.q = load ptr, ptr %1, align 8
  %.fr7.i.i = freeze ptr %i.q                     ; 3 uses
  %i.r = icmp eq ptr %.fr7.i.i, null
  %i.s = getelementptr inbounds i8, ptr %.fr7.i.i, i64 -4
  %i.t = icmp eq ptr %i.p, null                   ; 2 uses
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.t
  br i1 %or.cond.i, label %bb.b, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i: ; preds = %bb.a
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !21   ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %.not.i.i125 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i125, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader

_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i
  %i.x = load i32, ptr %i.s, align 4, !tbaa !21
  %i.y = zext i32 %i.x to i64
  br label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i126, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.w
  br i1 %.not.i.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i, !llvm.loop !1

_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i: ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i
  %indvars.iv.i.i126 = phi i64 [ %indvars.iv.next.i.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i ], [ 0, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader ] ; 6 uses
  %.not.i.i.i = icmp samesign ult i64 %indvars.iv.i.i126, %i.y
  br i1 %.not.i.i.i, label %_ZNK16basic_union_find7is_rootEj.exit.i.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i

_ZNK16basic_union_find7is_rootEj.exit.i.i:        ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.fr7.i.i, i64 %indvars.iv.i.i126
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !21
  %i.ab = zext i32 %i.aa to i64
  %i.ac = icmp eq i64 %indvars.iv.i.i126, %i.ab
  br i1 %i.ac, label %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i, !llvm.loop !1

_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.i.i
  br label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, !llvm.loop !1

_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i, %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i
  %indvars.iv.i.lcssa.i = phi i64 [ %indvars.iv.i.i126, %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge ], [ %i.w, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i ], [ %i.w, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i ], [ %indvars.iv.i.i126, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i ]
  %i.ad = trunc nuw i64 %indvars.iv.i.lcssa.i to i32
  br label %bb.b

bb.b:                                             ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, %bb.a
  %.sroa.2.0.i = phi i32 [ %i.ad, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i ], [ 0, %bb.a ] ; 2 uses
  br i1 %i.t, label %.loopexit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i: ; preds = %bb.b
  %i.ae = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i
  %.sroa.2.0.i48 = phi i32 [ %i.af, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i ], [ 0, %bb.b ] ; 2 uses
  %.not91100 = icmp eq i32 %.sroa.2.0.i, %.sroa.2.0.i48
  br i1 %.not91100, label %._crit_edge102, label %.lr.ph.i.lr.ph

.lr.ph.i.lr.ph:                                   ; preds = %.loopexit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %.lr.ph.i

._crit_edge102:                                   ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, %.loopexit
  invoke void @_ZN17expr_safe_replaceclER10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.l unwind label %bb.m

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit
  %.sroa.687.0101 = phi i32 [ %.sroa.2.0.i, %.lr.ph.i.lr.ph ], [ %.sroa.687.1, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ] ; 6 uses
  %.sroa.679.8.insert.ext = zext i32 %.sroa.687.0101 to i64 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i, %.lr.ph.i
  %.sroa.5.8.extract.trunc38.i = phi i32 [ %.sroa.687.0101, %.lr.ph.i ], [ %.0.i.i.i, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i ] ; 3 uses
  %.037.i = phi ptr [ null, %.lr.ph.i ], [ %.1.i, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i ] ; 3 uses
  %.01636.i = phi i32 [ 0, %.lr.ph.i ], [ %.117.i, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i ] ; 3 uses
  %.sroa.5.035.i = phi i64 [ %.sroa.679.8.insert.ext, %.lr.ph.i ], [ %.sroa.5.8.insert.ext.i, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i ] ; 2 uses
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.sroa.5.035.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23 ; 3 uses
  %i.ak = invoke noundef zeroext i1 @_ZNK11ast_manager8is_valueEP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.a, ptr noundef %i.aj)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  br i1 %i.ak, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.al = invoke noundef i32 @_Z13get_num_exprsP4expr(ptr noundef %i.aj)
          to label %.noexc58 unwind label %bb.g   ; 2 uses

.noexc58:                                         ; preds = %bb.d
  %.not.i = icmp eq ptr %.037.i, null
  %i.am = icmp ugt i32 %.01636.i, %i.al
  %or.cond.i55 = select i1 %.not.i, i1 true, i1 %i.am ; 2 uses
  %spec.select.i = select i1 %or.cond.i55, i32 %i.al, i32 %.01636.i
  %spec.select18.i = select i1 %or.cond.i55, ptr %i.aj, ptr %.037.i
  br label %bb.e

bb.e:                                             ; preds = %.noexc58, %.noexc
  %.117.i = phi i32 [ %.01636.i, %.noexc ], [ %spec.select.i, %.noexc58 ]
  %.1.i = phi ptr [ %.037.i, %.noexc ], [ %spec.select18.i, %.noexc58 ] ; 3 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !36    ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i56

_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i56: ; preds = %bb.e
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !21
  %.not.i.i.i57 = icmp ugt i32 %i.aq, %.sroa.5.8.extract.trunc38.i
  br i1 %.not.i.i.i57, label %bb.f, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i

bb.f:                                             ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i56
  %i.ar = load ptr, ptr %i.ag, align 8, !tbaa !36
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.sroa.5.035.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !21
  br label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i

_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i: ; preds = %bb.f, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i56, %bb.e
  %.0.i.i.i = phi i32 [ %i.at, %bb.f ], [ %.sroa.5.8.extract.trunc38.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i56 ], [ %.sroa.5.8.extract.trunc38.i, %bb.e ] ; 3 uses
  %.sroa.5.8.insert.ext.i = zext i32 %.0.i.i.i to i64
  %.not92 = icmp eq i32 %.0.i.i.i, %.sroa.687.0101
  br i1 %.not92, label %.lr.ph, label %bb.c

._crit_edge:                                      ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !20  ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i67.preheader

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader: ; preds = %._crit_edge
  %i.aw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.ax = icmp eq ptr %i.bu, null
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i67.preheader: ; preds = %._crit_edge
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !21
  %i.ba = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bb = icmp eq ptr %i.bu, null
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i67

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader, %_ZNK16basic_union_find7is_rootEj.exit.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZNK16basic_union_find7is_rootEj.exit.us.i ], [ %.sroa.679.8.insert.ext, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 6 uses
  %.not.us.i = icmp eq i32 %indvars.i, 0
  %brmerge = or i1 %.not.us.i, %i.ax
  br i1 %brmerge, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i

_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !21
  %.not.i.us.i = icmp ugt i32 %i.bc, %indvars.i
  br i1 %.not.i.us.i, label %_ZNK16basic_union_find7is_rootEj.exit.us.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZNK16basic_union_find7is_rootEj.exit.us.i:       ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i
  %i.bd = and i64 %indvars.iv.next.i, 4294967295
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !21
  %i.bg = icmp eq i32 %i.bf, %indvars.i
  br i1 %i.bg, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i, !llvm.loop !2

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i67: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i67.preheader, %_ZNK16basic_union_find7is_rootEj.exit.i
  %i.bh = phi i32 [ %i.bi, %_ZNK16basic_union_find7is_rootEj.exit.i ], [ %.sroa.687.0101, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i67.preheader ]
  %i.bi = add i32 %i.bh, 1                        ; 8 uses
  %.not.i68 = icmp eq i32 %i.bi, %i.az
  %brmerge120 = or i1 %.not.i68, %i.bb
  br i1 %brmerge120, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i

_ZNK16basic_union_find12get_num_varsEv.exit.i.i:  ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i67
  %i.bj = load i32, ptr %i.ba, align 4, !tbaa !21
  %.not.i.i69 = icmp ult i32 %i.bi, %i.bj
  br i1 %.not.i.i69, label %_ZNK16basic_union_find7is_rootEj.exit.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZNK16basic_union_find7is_rootEj.exit.i:          ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i
  %i.bk = zext i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !21
  %i.bn = icmp eq i32 %i.bm, %i.bi
  br i1 %i.bn, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i67, !llvm.loop !2

_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit: ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i, %_ZNK16basic_union_find7is_rootEj.exit.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i67, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i, %_ZNK16basic_union_find7is_rootEj.exit.us.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i
  %.sroa.687.1 = phi i32 [ %indvars.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i ], [ %indvars.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i ], [ %indvars.i, %_ZNK16basic_union_find7is_rootEj.exit.us.i ], [ %i.bi, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i67 ], [ %i.bi, %_ZNK16basic_union_find7is_rootEj.exit.i ], [ %i.bi, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i ] ; 2 uses
  %.not91 = icmp eq i32 %.sroa.687.1, %.sroa.2.0.i48
  br i1 %.not91, label %._crit_edge102, label %.lr.ph.i

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.lr.ph:                                           ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit
  %i.bp = phi ptr [ %i.bu, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ], [ %i.an, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i ]
  %.sroa.6.8.extract.trunc99 = phi i32 [ %.0.i.i, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ], [ %.sroa.687.0101, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i ] ; 3 uses
  %.sroa.6.098 = phi i64 [ %.sroa.6.8.insert.ext, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ], [ %.sroa.679.8.insert.ext, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i ] ; 2 uses
  %i.bq = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.sroa.6.098
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !23 ; 2 uses
  %.not = icmp eq ptr %i.bs, %.1.i
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  invoke void @_ZN17expr_safe_replace6insertEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef %i.bs, ptr noundef %.1.i)
          to label %._crit_edge107 unwind label %bb.i

._crit_edge107:                                   ; preds = %bb.h
  %.pre = load ptr, ptr %1, align 8, !tbaa !36
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %._crit_edge107, %.lr.ph
  %i.bu = phi ptr [ %.pre, %._crit_edge107 ], [ %i.bp, %.lr.ph ] ; 9 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i70

_ZNK16basic_union_find12get_num_varsEv.exit.i.i70: ; preds = %bb.j
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !21
  %.not.i.i71 = icmp ugt i32 %i.bx, %.sroa.6.8.extract.trunc99
  br i1 %.not.i.i71, label %bb.k, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit

bb.k:                                             ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i70
  %i.by = load ptr, ptr %i.ag, align 8, !tbaa !36
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.sroa.6.098
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !21
  br label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit

_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit: ; preds = %bb.j, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i70, %bb.k
  %.0.i.i = phi i32 [ %i.ca, %bb.k ], [ %.sroa.6.8.extract.trunc99, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i70 ], [ %.sroa.6.8.extract.trunc99, %bb.j ] ; 3 uses
  %.sroa.6.8.insert.ext = zext i32 %.0.i.i to i64
  %.not103 = icmp eq i32 %.sroa.687.0101, %.0.i.i
  br i1 %.not103, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %._crit_edge102
  call void @_ZN17expr_safe_replaceD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.m:                                             ; preds = %._crit_edge102
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.i, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.m ], [ %i.bt, %bb.i ], [ %i.bo, %bb.g ]
  call void @_ZN17expr_safe_replaceD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN17expr_safe_replace6insertEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef, ptr noundef) local_unnamed_addr #2

end_hunk_0
begin_hunk_1_@_ZN17expr_safe_replaceD2Ev:bb.a
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #16
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit:                      ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit2, %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !20 ; 5 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit14, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i4

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i4:          ; preds = %_ZN6vectorIjLb0EjED2Ev.exit
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !21 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bg
  %.not.i5 = icmp eq i32 %i.be, 0
  br i1 %.not.i5, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i13, label %.lr.ph.i.i6

.lr.ph.i.i6:                                      ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i4, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i9
  %.06.i.i7 = phi ptr [ %i.bo, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i9 ], [ %i.bb, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i4 ] ; 2 uses
  %i.bi = load ptr, ptr %.06.i.i7, align 8, !tbaa !23 ; 3 uses
  %i.bj = load ptr, ptr %i.az, align 8, !tbaa !14, !nonnull !15, !align !16
  %.not.i.i.i.i.i8 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i8, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i9, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i6
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !25
  %i.bm = add i32 %i.bl, -1                       ; 2 uses
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !25
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.n, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i9

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bj, ptr noundef nonnull %i.bi)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i9 unwind label %bb.p

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i9: ; preds = %bb.n, %bb.m, %.lr.ph.i.i6
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i7, i64 8 ; 2 uses
  %i.bp = icmp ult ptr %i.bo, %i.bh
  br i1 %i.bp, label %.lr.ph.i.i6, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i10, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i10: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i9
  %.pre.i11 = load ptr, ptr %i.ba, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %.pre.i11, null
  br i1 %.not.i.i.i12, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit14, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i13

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i13: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i10, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i4
  %i.bq = phi ptr [ %.pre.i11, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i10 ], [ %i.bb, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i4 ]
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.br)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit14 unwind label %bb.o

bb.o:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i13
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  tail call void @__clang_call_terminate(ptr %i.bt) #16
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  tail call void @__clang_call_terminate(ptr %i.bv) #16
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit14: ; preds = %_ZN6vectorIjLb0EjED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i10, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i13
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !20 ; 5 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit25, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i15

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i15:         ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit14
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !21 ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cd
  %.not.i16 = icmp eq i32 %i.cb, 0
  br i1 %.not.i16, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i24, label %.lr.ph.i.i17

.lr.ph.i.i17:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i15, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i20
  %.06.i.i18 = phi ptr [ %i.cl, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i20 ], [ %i.by, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i15 ] ; 2 uses
  %i.cf = load ptr, ptr %.06.i.i18, align 8, !tbaa !23 ; 3 uses
  %i.cg = load ptr, ptr %i.bw, align 8, !tbaa !14, !nonnull !15, !align !16
  %.not.i.i.i.i.i19 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i19, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i20, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i17
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !25
  %i.cj = add i32 %i.ci, -1                       ; 2 uses
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !25
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i20

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cg, ptr noundef nonnull %i.cf)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i20 unwind label %bb.t

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i20: ; preds = %bb.r, %bb.q, %.lr.ph.i.i17
  %i.cl = getelementptr inbounds nuw i8, ptr %.06.i.i18, i64 8 ; 2 uses
  %i.cm = icmp ult ptr %i.cl, %i.ce
  br i1 %i.cm, label %.lr.ph.i.i17, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i21, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i21: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i20
  %.pre.i22 = load ptr, ptr %i.bx, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %.pre.i22, null
  br i1 %.not.i.i.i23, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit25, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i24

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i24: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i21, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i15
  %i.cn = phi ptr [ %.pre.i22, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i21 ], [ %i.by, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i15 ]
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.co)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit25 unwind label %bb.s

bb.s:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i24
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  tail call void @__clang_call_terminate(ptr %i.cq) #16
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  tail call void @__clang_call_terminate(ptr %i.cs) #16
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit25: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit14, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i21, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i24
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z13equiv_to_exprR15obj_equiv_classI4expr11ast_managerER10ref_vectorIS0_S1_E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::allocator.34", align 1 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !14, !nonnull !15, !align !16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 3 uses
  %i.d = load ptr, ptr %0, align 8
  %.fr7.i.i = freeze ptr %i.d                     ; 3 uses
  %i.e = icmp eq ptr %.fr7.i.i, null
  %i.f = getelementptr inbounds i8, ptr %.fr7.i.i, i64 -4
  %i.g = icmp eq ptr %i.c, null                   ; 2 uses
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond.i, label %_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i: ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !21   ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %.not.i.i121 = icmp eq i32 %i.i, 0
  br i1 %.not.i.i121, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader

_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i
  %i.k = load i32, ptr %i.f, align 4, !tbaa !21
  %i.l = zext i32 %i.k to i64
  br label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i122, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.j
  br i1 %.not.i.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i, !llvm.loop !1

_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i: ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i
  %indvars.iv.i.i122 = phi i64 [ %indvars.iv.next.i.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i ], [ 0, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader ] ; 6 uses
  %.not.i.i.i = icmp samesign ult i64 %indvars.iv.i.i122, %i.l
  br i1 %.not.i.i.i, label %_ZNK16basic_union_find7is_rootEj.exit.i.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i

_ZNK16basic_union_find7is_rootEj.exit.i.i:        ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.fr7.i.i, i64 %indvars.iv.i.i122
  %i.n = load i32, ptr %i.m, align 4, !tbaa !21
  %i.o = zext i32 %i.n to i64
  %i.p = icmp eq i64 %indvars.iv.i.i122, %i.o
  br i1 %i.p, label %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i, !llvm.loop !1

_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.i.i
  br label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, !llvm.loop !1

_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i, %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i
  %indvars.iv.i.lcssa.i = phi i64 [ %indvars.iv.i.i122, %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge ], [ %i.j, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i ], [ %i.j, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i ], [ %indvars.iv.i.i122, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i ]
  %i.q = trunc nuw i64 %indvars.iv.i.lcssa.i to i32
  br label %_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit

_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit: ; preds = %bb.a, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i
  %.sroa.2.0.i = phi i32 [ %i.q, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i ], [ 0, %bb.a ] ; 2 uses
  br i1 %i.g, label %_ZN15obj_equiv_classI4expr11ast_managerE3endEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i: ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit
  %i.r = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !21
  br label %_ZN15obj_equiv_classI4expr11ast_managerE3endEv.exit

_ZN15obj_equiv_classI4expr11ast_managerE3endEv.exit: ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i
  %.sroa.2.0.i34 = phi i32 [ %i.s, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i ], [ 0, %_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit ] ; 2 uses
  %.not7786 = icmp eq i32 %.sroa.2.0.i, %.sroa.2.0.i34
  br i1 %.not7786, label %._crit_edge88, label %.lr.ph.i.lr.ph

.lr.ph.i.lr.ph:                                   ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE3endEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %.lr.ph.i

._crit_edge88:                                    ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, %_ZN15obj_equiv_classI4expr11ast_managerE3endEv.exit
  ret void

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit
  %.sroa.573.087 = phi i32 [ %.sroa.2.0.i, %.lr.ph.i.lr.ph ], [ %.sroa.573.1, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ] ; 6 uses
  %.sroa.565.8.insert.ext = zext i32 %.sroa.573.087 to i64 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i, %.lr.ph.i
  %.sroa.5.8.extract.trunc38.i = phi i32 [ %.sroa.573.087, %.lr.ph.i ], [ %.0.i.i.i, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i ] ; 3 uses
  %.037.i = phi ptr [ null, %.lr.ph.i ], [ %.1.i, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i ] ; 3 uses
  %.01636.i = phi i32 [ 0, %.lr.ph.i ], [ %.117.i, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i ] ; 3 uses
  %.sroa.5.035.i = phi i64 [ %.sroa.565.8.insert.ext, %.lr.ph.i ], [ %.sroa.5.8.insert.ext.i, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i ] ; 2 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.5.035.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !23   ; 3 uses
  %i.y = tail call noundef zeroext i1 @_ZNK11ast_manager8is_valueEP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.a, ptr noundef %i.x)
  br i1 %i.y, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = tail call noundef i32 @_Z13get_num_exprsP4expr(ptr noundef %i.x) ; 2 uses
  %.not.i = icmp eq ptr %.037.i, null
  %i.aa = icmp ugt i32 %.01636.i, %i.z
  %or.cond.i41 = select i1 %.not.i, i1 true, i1 %i.aa ; 2 uses
  %spec.select.i = select i1 %or.cond.i41, i32 %i.z, i32 %.01636.i
  %spec.select18.i = select i1 %or.cond.i41, ptr %i.x, ptr %.037.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.117.i = phi i32 [ %.01636.i, %bb.b ], [ %spec.select.i, %bb.c ]
  %.1.i = phi ptr [ %.037.i, %bb.b ], [ %spec.select18.i, %bb.c ] ; 3 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !36    ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i42

_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i42: ; preds = %bb.d
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !21
  %.not.i.i.i43 = icmp ugt i32 %i.ae, %.sroa.5.8.extract.trunc38.i
  br i1 %.not.i.i.i43, label %bb.e, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i

bb.e:                                             ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i42
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.sroa.5.035.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21
  br label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i

_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i: ; preds = %bb.e, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i42, %bb.d
  %.0.i.i.i = phi i32 [ %i.ah, %bb.e ], [ %.sroa.5.8.extract.trunc38.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i42 ], [ %.sroa.5.8.extract.trunc38.i, %bb.d ] ; 3 uses
  %.sroa.5.8.insert.ext.i = zext i32 %.0.i.i.i to i64
  %.not78 = icmp eq i32 %.0.i.i.i, %.sroa.573.087
  br i1 %.not78, label %.lr.ph, label %bb.b

._crit_edge:                                      ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !20  ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i52.preheader

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader: ; preds = %._crit_edge
  %i.ak = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.al = icmp eq ptr %i.de, null
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i52.preheader: ; preds = %._crit_edge
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !21
  %i.ao = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.ap = icmp eq ptr %i.de, null
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i52

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader, %_ZNK16basic_union_find7is_rootEj.exit.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZNK16basic_union_find7is_rootEj.exit.us.i ], [ %.sroa.565.8.insert.ext, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 6 uses
  %.not.us.i = icmp eq i32 %indvars.i, 0
  %brmerge = or i1 %.not.us.i, %i.al
  br i1 %brmerge, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i

_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i
  %i.aq = load i32, ptr %i.ak, align 4, !tbaa !21
  %.not.i.us.i = icmp ugt i32 %i.aq, %indvars.i
  br i1 %.not.i.us.i, label %_ZNK16basic_union_find7is_rootEj.exit.us.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZNK16basic_union_find7is_rootEj.exit.us.i:       ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i
  %i.ar = and i64 %indvars.iv.next.i, 4294967295
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !21
  %i.au = icmp eq i32 %i.at, %indvars.i
  br i1 %i.au, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i, !llvm.loop !2

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i52: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i52.preheader, %_ZNK16basic_union_find7is_rootEj.exit.i
  %i.av = phi i32 [ %i.aw, %_ZNK16basic_union_find7is_rootEj.exit.i ], [ %.sroa.573.087, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i52.preheader ]
  %i.aw = add i32 %i.av, 1                        ; 8 uses
  %.not.i53 = icmp eq i32 %i.aw, %i.an
  %brmerge116 = or i1 %.not.i53, %i.ap
  br i1 %brmerge116, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i

_ZNK16basic_union_find12get_num_varsEv.exit.i.i:  ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i52
  %i.ax = load i32, ptr %i.ao, align 4, !tbaa !21
  %.not.i.i54 = icmp ult i32 %i.aw, %i.ax
  br i1 %.not.i.i54, label %_ZNK16basic_union_find7is_rootEj.exit.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZNK16basic_union_find7is_rootEj.exit.i:          ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i
  %i.ay = zext i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !21
  %i.bb = icmp eq i32 %i.ba, %i.aw
  br i1 %i.bb, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i52, !llvm.loop !2

_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit: ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i, %_ZNK16basic_union_find7is_rootEj.exit.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i52, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i, %_ZNK16basic_union_find7is_rootEj.exit.us.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i
  %.sroa.573.1 = phi i32 [ %indvars.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i ], [ %indvars.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i ], [ %indvars.i, %_ZNK16basic_union_find7is_rootEj.exit.us.i ], [ %i.aw, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i52 ], [ %i.aw, %_ZNK16basic_union_find7is_rootEj.exit.i ], [ %i.aw, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i ] ; 2 uses
  %.not77 = icmp eq i32 %.sroa.573.1, %.sroa.2.0.i34
  br i1 %.not77, label %._crit_edge88, label %.lr.ph.i

.lr.ph:                                           ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit
  %i.bc = phi ptr [ %i.de, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ], [ %i.ab, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i ]
  %.sroa.5.8.extract.trunc85 = phi i32 [ %.0.i.i, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ], [ %.sroa.573.087, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i ] ; 3 uses
  %.sroa.5.084 = phi i64 [ %.sroa.5.8.insert.ext, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ], [ %.sroa.565.8.insert.ext, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i ] ; 2 uses
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.sroa.5.084
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !23 ; 2 uses
  %.not = icmp eq ptr %.1.i, %i.bf
  br i1 %.not, label %bb.t, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bg = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.a, i32 noundef 0, i32 noundef 2, ptr noundef %.1.i, ptr noundef %i.bf) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !25
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !25
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.g, %bb.f
  %i.bk = load ptr, ptr %i.u, align 8, !tbaa !20  ; 4 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !21 ; 5 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 -8 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !21
  %i.bq = icmp eq i32 %i.bn, %i.bp
  br i1 %i.bq, label %bb.j, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.i:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.br = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.br, align 4, !tbaa !21
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 0, ptr %i.bs, align 4, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.u, align 8, !tbaa !20
  br label %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit

bb.j:                                             ; preds = %bb.h
  %i.bu = mul i32 %i.bn, 3
  %i.bv = add i32 %i.bu, 1
  %i.bw = lshr i32 %i.bv, 1                       ; 3 uses
  %i.bx = shl i32 %i.bw, 3
  %i.by = add i32 %i.bx, 8                        ; 2 uses
  %.not.i57 = icmp ugt i32 %i.bw, %i.bn
  br i1 %.not.i57, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bz = shl i32 %i.bn, 3
  %i.ca = add i32 %i.bz, 8
  %.not27.i = icmp ugt i32 %i.by, %i.ca
  br i1 %.not27.i, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cb = tail call ptr @__cxa_allocate_exception(i64 40) #15 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.cb, align 8, !tbaa !47
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 3 uses
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !49
  %i.ce = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !52 ; 3 uses
  %i.cj = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.cj)
  %i.ck = add nuw nsw i64 %i.ci, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i64 %i.ck, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !51
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !53
  store i64 %i.cl, ptr %i.cd, align 8, !tbaa !53
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !52
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.n
  %i.cm = phi i64 [ %i.ci, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i64 %i.cm, ptr %i.co, align 8, !tbaa !52
  store ptr %i.cf, ptr %2, align 8, !tbaa !51
  store i64 0, ptr %i.cn, align 8, !tbaa !52
  store i8 0, ptr %i.cf, align 8, !tbaa !53
  invoke void @__cxa_throw(ptr nonnull %i.cb, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #18
          to label %bb.s unwind label %bb.o

bb.o:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %i.cq = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.cf
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.o
  %i.cs = load i64, ptr %i.cf, align 8, !tbaa !53
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @__cxa_free_exception(ptr %i.cb) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn32.i = phi { ptr, i32 } [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cu, %bb.p ]
  resume { ptr, i32 } %.pn32.i

bb.r:                                             ; preds = %bb.k
  %i.cv = zext i32 %i.by to i64
  %i.cw = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.bo, i64 noundef %i.cv) ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  store ptr %i.cx, ptr %i.u, align 8, !tbaa !20
  store i32 %i.bw, ptr %i.cw, align 4, !tbaa !21
  br label %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit

bb.s:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit:    ; preds = %bb.i, %bb.r
  %.pre.i.i = phi ptr [ %i.bt, %bb.i ], [ %i.cx, %bb.r ] ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !21
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.h, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit
  %i.cy = phi i32 [ %.pre2.i.i, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit ], [ %i.bn, %bb.h ] ; 2 uses
  %i.cz = phi ptr [ %.pre.i.i, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit ], [ %i.bk, %bb.h ] ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -4
  %i.db = zext i32 %i.cy to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.db
  store ptr %i.bg, ptr %i.dc, align 8, !tbaa !23
  %i.dd = add i32 %i.cy, 1
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !21
  %.pre = load ptr, ptr %0, align 8, !tbaa !36
  br label %bb.t

bb.t:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %.lr.ph
  %i.de = phi ptr [ %.pre, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ], [ %i.bc, %.lr.ph ] ; 9 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i55

_ZNK16basic_union_find12get_num_varsEv.exit.i.i55: ; preds = %bb.t
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !21
  %.not.i.i56 = icmp ugt i32 %i.dh, %.sroa.5.8.extract.trunc85
  br i1 %.not.i.i56, label %bb.u, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit

bb.u:                                             ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i55
  %i.di = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.sroa.5.084
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !21
  br label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit

_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit: ; preds = %bb.t, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i55, %bb.u
  %.0.i.i = phi i32 [ %i.dk, %bb.u ], [ %.sroa.5.8.extract.trunc85, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i55 ], [ %.sroa.5.8.extract.trunc85, %bb.t ] ; 3 uses
  %.sroa.5.8.insert.ext = zext i32 %.0.i.i to i64
  %.not89 = icmp eq i32 %.sroa.573.087, %.0.i.i
  br i1 %.not89, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_Z18equiv_to_expr_fullR15obj_equiv_classI4expr11ast_managerER10ref_vectorIS0_S1_E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !14, !nonnull !15, !align !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 3 uses
  %i.d = load ptr, ptr %0, align 8
  %.fr7.i.i = freeze ptr %i.d                     ; 6 uses
  %i.e = icmp eq ptr %.fr7.i.i, null
  %i.f = getelementptr inbounds i8, ptr %.fr7.i.i, i64 -4
  %i.g = icmp eq ptr %i.c, null                   ; 2 uses
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond.i, label %_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i: ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !21   ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %.not.i.i157 = icmp eq i32 %i.i, 0
  br i1 %.not.i.i157, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader

_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i
  %i.k = load i32, ptr %i.f, align 4, !tbaa !21
  %i.l = zext i32 %i.k to i64
  br label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i158, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.j
  br i1 %.not.i.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i, !llvm.loop !1

_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i: ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i
  %indvars.iv.i.i158 = phi i64 [ %indvars.iv.next.i.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i ], [ 0, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader ] ; 6 uses
  %.not.i.i.i = icmp samesign ult i64 %indvars.iv.i.i158, %i.l
  br i1 %.not.i.i.i, label %_ZNK16basic_union_find7is_rootEj.exit.i.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i

_ZNK16basic_union_find7is_rootEj.exit.i.i:        ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.fr7.i.i, i64 %indvars.iv.i.i158
  %i.n = load i32, ptr %i.m, align 4, !tbaa !21
  %i.o = zext i32 %i.n to i64
  %i.p = icmp eq i64 %indvars.iv.i.i158, %i.o
  br i1 %i.p, label %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i, !llvm.loop !1

_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.i.i
  br label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, !llvm.loop !1

_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i, %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i
  %indvars.iv.i.lcssa.i = phi i64 [ %indvars.iv.i.i158, %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge ], [ %i.j, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i ], [ %i.j, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i ], [ %indvars.iv.i.i158, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i ]
  %i.q = trunc nuw i64 %indvars.iv.i.lcssa.i to i32
  br label %_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit

_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit: ; preds = %bb.a, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i
  %.sroa.2.0.i = phi i32 [ %i.q, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i ], [ 0, %bb.a ] ; 2 uses
  br i1 %i.g, label %_ZN15obj_equiv_classI4expr11ast_managerE3endEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i: ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit
  %i.r = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !21
  br label %_ZN15obj_equiv_classI4expr11ast_managerE3endEv.exit

_ZN15obj_equiv_classI4expr11ast_managerE3endEv.exit: ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i
  %.sroa.2.0.i26 = phi i32 [ %i.s, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i ], [ 0, %_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit ] ; 2 uses
  %.not108 = icmp eq i32 %.sroa.2.0.i, %.sroa.2.0.i26
  br i1 %.not108, label %._crit_edge112, label %.lr.ph111

.lr.ph111:                                        ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE3endEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %.lr.ph106.preheader

._crit_edge112:                                   ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, %_ZN15obj_equiv_classI4expr11ast_managerE3endEv.exit
  %.0.lcssa = phi i1 [ false, %_ZN15obj_equiv_classI4expr11ast_managerE3endEv.exit ], [ %.2.lcssa, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ]
  ret i1 %.0.lcssa

.lr.ph106.preheader:                              ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, %.lr.ph111
  %i.v = phi ptr [ %.fr7.i.i, %.lr.ph111 ], [ %i.du, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ]
  %i.w = phi ptr [ %.fr7.i.i, %.lr.ph111 ], [ %i.bc, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ]
  %i.x = phi ptr [ %.fr7.i.i, %.lr.ph111 ], [ %i.bd, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ]
  %.0110 = phi i1 [ false, %.lr.ph111 ], [ %.2.lcssa, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ]
  %.sroa.585.0109 = phi i32 [ %.sroa.2.0.i, %.lr.ph111 ], [ %.sroa.585.1, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ] ; 6 uses
  %.sroa.4.8.insert.ext = zext i32 %.sroa.585.0109 to i64
  br label %.lr.ph106

._crit_edge107:                                   ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit52
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !20  ; 2 uses
  %i.y = icmp eq ptr %.pre, null
  br i1 %i.y, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39.preheader

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader: ; preds = %._crit_edge107
  %i.z = getelementptr inbounds i8, ptr %i.du, i64 -4 ; 2 uses
  %i.aa = icmp eq ptr %i.du, null                 ; 2 uses
  %indvars.iv.next.i.peel = add nuw nsw i64 %.sroa.4.8.insert.ext, 1 ; 3 uses
  %indvars.i.peel = trunc i64 %indvars.iv.next.i.peel to i32 ; 6 uses
  %.not.us.i.peel = icmp eq i32 %indvars.i.peel, 0 ; 3 uses
  %brmerge.peel = select i1 %.not.us.i.peel, i1 true, i1 %i.aa
  %.mux.peel = select i1 %.not.us.i.peel, ptr %i.dv, ptr null
  %.mux144.peel = select i1 %.not.us.i.peel, ptr %i.dw, ptr null
  br i1 %brmerge.peel, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.peel

_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.peel: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !21
  %.not.i.us.i.peel = icmp ugt i32 %i.ab, %indvars.i.peel
  br i1 %.not.i.us.i.peel, label %_ZNK16basic_union_find7is_rootEj.exit.us.i.peel, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZNK16basic_union_find7is_rootEj.exit.us.i.peel:  ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.peel
  %i.ac = and i64 %indvars.iv.next.i.peel, 4294967295
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !21
  %i.af = icmp eq i32 %i.ae, %indvars.i.peel
  br i1 %i.af, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39.preheader: ; preds = %._crit_edge107
  %i.ag = getelementptr inbounds i8, ptr %.pre, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.dv, i64 -4 ; 2 uses
  %i.aj = icmp eq ptr %i.dv, null                 ; 2 uses
  %i.ak = add i32 %.sroa.585.0109, 1              ; 8 uses
  %.not.i40.peel = icmp eq i32 %i.ak, %i.ah       ; 3 uses
  %brmerge146.peel = select i1 %.not.i40.peel, i1 true, i1 %i.aj
  %.lcssa142.mux.peel = select i1 %.not.i40.peel, ptr %i.dv, ptr null
  %.mux147.peel = select i1 %.not.i40.peel, ptr %i.dw, ptr null
  br i1 %brmerge146.peel, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.peel

_ZNK16basic_union_find12get_num_varsEv.exit.i.i.peel: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39.preheader
  %i.al = load i32, ptr %i.ai, align 4, !tbaa !21
  %.not.i.i41.peel = icmp ult i32 %i.ak, %i.al
  br i1 %.not.i.i41.peel, label %_ZNK16basic_union_find7is_rootEj.exit.i.peel, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZNK16basic_union_find7is_rootEj.exit.i.peel:     ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.peel
  %i.am = zext i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !21
  %i.ap = icmp eq i32 %i.ao, %i.ak
  br i1 %i.ap, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.us.i.peel, %_ZNK16basic_union_find7is_rootEj.exit.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZNK16basic_union_find7is_rootEj.exit.us.i ], [ %indvars.iv.next.i.peel, %_ZNK16basic_union_find7is_rootEj.exit.us.i.peel ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 6 uses
  %.not.us.i = icmp eq i32 %indvars.i, 0          ; 3 uses
  %brmerge = select i1 %.not.us.i, i1 true, i1 %i.aa
  br i1 %brmerge, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit.loopexit.split.loop.exit191, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i

_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i
  %i.aq = load i32, ptr %i.z, align 4, !tbaa !21
  %.not.i.us.i = icmp ugt i32 %i.aq, %indvars.i
  br i1 %.not.i.us.i, label %_ZNK16basic_union_find7is_rootEj.exit.us.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZNK16basic_union_find7is_rootEj.exit.us.i:       ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i
  %i.ar = and i64 %indvars.iv.next.i, 4294967295
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !21
  %i.au = icmp eq i32 %i.at, %indvars.i
  br i1 %i.au, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i, !llvm.loop !89

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.i.peel, %_ZNK16basic_union_find7is_rootEj.exit.i
  %i.av = phi i32 [ %i.aw, %_ZNK16basic_union_find7is_rootEj.exit.i ], [ %i.ak, %_ZNK16basic_union_find7is_rootEj.exit.i.peel ]
  %i.aw = add nuw i32 %i.av, 1                    ; 8 uses
  %.not.i40 = icmp eq i32 %i.aw, %i.ah            ; 3 uses
  %brmerge146 = select i1 %.not.i40, i1 true, i1 %i.aj
  br i1 %brmerge146, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit162.loopexit.split.loop.exit182, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i

_ZNK16basic_union_find12get_num_varsEv.exit.i.i:  ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39
  %i.ax = load i32, ptr %i.ai, align 4, !tbaa !21
  %.not.i.i41 = icmp ult i32 %i.aw, %i.ax
  br i1 %.not.i.i41, label %_ZNK16basic_union_find7is_rootEj.exit.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZNK16basic_union_find7is_rootEj.exit.i:          ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i
  %i.ay = zext i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !21
  %i.bb = icmp eq i32 %i.ba, %i.aw
  br i1 %i.bb, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39, !llvm.loop !90

_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit.loopexit.split.loop.exit191: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i
  %.mux.le = select i1 %.not.us.i, ptr %i.du, ptr null
  %.mux144.le = select i1 %.not.us.i, ptr %i.du, ptr null
  br label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit162.loopexit.split.loop.exit182: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39
  %.lcssa142.mux.le = select i1 %.not.i40, ptr %i.dv, ptr null
  %.mux147.le = select i1 %.not.i40, ptr %i.dv, ptr null
  br label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39.preheader, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.peel, %_ZNK16basic_union_find7is_rootEj.exit.i.peel, %_ZNK16basic_union_find7is_rootEj.exit.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit162.loopexit.split.loop.exit182, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.peel, %_ZNK16basic_union_find7is_rootEj.exit.us.i.peel, %_ZNK16basic_union_find7is_rootEj.exit.us.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit.loopexit.split.loop.exit191
  %i.bc = phi ptr [ %i.du, %_ZNK16basic_union_find7is_rootEj.exit.us.i ], [ %.mux.peel, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader ], [ %i.du, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.peel ], [ %i.du, %_ZNK16basic_union_find7is_rootEj.exit.us.i.peel ], [ %i.du, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i ], [ %.mux.le, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit.loopexit.split.loop.exit191 ], [ %.lcssa142.mux.peel, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39.preheader ], [ %i.dv, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.peel ], [ %i.dv, %_ZNK16basic_union_find7is_rootEj.exit.i.peel ], [ %i.dv, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i ], [ %.lcssa142.mux.le, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit162.loopexit.split.loop.exit182 ], [ %i.dv, %_ZNK16basic_union_find7is_rootEj.exit.i ]
  %i.bd = phi ptr [ %i.du, %_ZNK16basic_union_find7is_rootEj.exit.us.i ], [ %.mux144.peel, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader ], [ %i.du, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.peel ], [ %i.du, %_ZNK16basic_union_find7is_rootEj.exit.us.i.peel ], [ %i.du, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i ], [ %.mux144.le, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit.loopexit.split.loop.exit191 ], [ %.mux147.peel, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39.preheader ], [ %i.dv, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.peel ], [ %i.dv, %_ZNK16basic_union_find7is_rootEj.exit.i.peel ], [ %i.dv, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i ], [ %.mux147.le, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit162.loopexit.split.loop.exit182 ], [ %i.dv, %_ZNK16basic_union_find7is_rootEj.exit.i ]
  %.sroa.585.1 = phi i32 [ %indvars.i, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit.loopexit.split.loop.exit191 ], [ %indvars.i.peel, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader ], [ %indvars.i.peel, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.peel ], [ %indvars.i.peel, %_ZNK16basic_union_find7is_rootEj.exit.us.i.peel ], [ %indvars.i, %_ZNK16basic_union_find7is_rootEj.exit.us.i ], [ %indvars.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i ], [ %i.ak, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39.preheader ], [ %i.ak, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.peel ], [ %i.ak, %_ZNK16basic_union_find7is_rootEj.exit.i.peel ], [ %i.aw, %_ZNK16basic_union_find7is_rootEj.exit.i ], [ %i.aw, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i ], [ %i.aw, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit162.loopexit.split.loop.exit182 ] ; 2 uses
  %.not = icmp eq i32 %.sroa.585.1, %.sroa.2.0.i26
  br i1 %.not, label %._crit_edge112, label %.lr.ph106.preheader

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit52
  %i.be = phi ptr [ %i.du, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit52 ], [ %i.v, %.lr.ph106.preheader ]
  %i.bf = phi ptr [ %i.dv, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit52 ], [ %i.w, %.lr.ph106.preheader ]
  %i.bg = phi ptr [ %i.dw, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit52 ], [ %i.x, %.lr.ph106.preheader ] ; 3 uses
  %.sroa.669.8.extract.trunc104 = phi i32 [ %.0.i.i51, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit52 ], [ %.sroa.585.0109, %.lr.ph106.preheader ] ; 9 uses
  %.1103 = phi i1 [ %.2.lcssa, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit52 ], [ %.0110, %.lr.ph106.preheader ]
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i42

_ZNK16basic_union_find12get_num_varsEv.exit.i.i42: ; preds = %.lr.ph106
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !21
  %.not.i.i43 = icmp ugt i32 %i.bj, %.sroa.669.8.extract.trunc104
  br i1 %.not.i.i43, label %bb.b, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit

bb.b:                                             ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i42
  %i.bk = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.bl = zext i32 %.sroa.669.8.extract.trunc104 to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !21
  br label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit

_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit: ; preds = %.lr.ph106, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i42, %bb.b
  %.0.i.i = phi i32 [ %i.bn, %bb.b ], [ %.sroa.669.8.extract.trunc104, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i42 ], [ %.sroa.669.8.extract.trunc104, %.lr.ph106 ] ; 2 uses
  %.not8998 = icmp eq i32 %.0.i.i, %.sroa.585.0109
  br i1 %.not8998, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit
  %i.bo = zext i32 %.sroa.669.8.extract.trunc104 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit48
  %.sroa.6.099 = phi i32 [ %.0.i.i, %.lr.ph ], [ %.0.i.i47, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit48 ] ; 4 uses
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !20  ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !23
  %i.bs = zext i32 %.sroa.6.099 to i64            ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !23
  %i.bv = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.a, i32 noundef 0, i32 noundef 2, ptr noundef %i.br, ptr noundef %i.bu) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !25
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !25
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.d, %bb.c
  %i.bz = load ptr, ptr %i.u, align 8, !tbaa !20  ; 4 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 -4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !21 ; 5 uses
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 -8 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !21
  %i.cf = icmp eq i32 %i.cc, %i.ce
  br i1 %i.cf, label %bb.g, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.f:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.cg = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.cg, align 4, !tbaa !21
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 0, ptr %i.ch, align 4, !tbaa !21
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  store ptr %i.ci, ptr %i.u, align 8, !tbaa !20
  br label %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit
end_hunk_1
