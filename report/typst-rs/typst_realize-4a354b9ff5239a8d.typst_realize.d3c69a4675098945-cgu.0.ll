Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_realize-4a354b9ff5239a8d.typst_realize.d3c69a4675098945-cgu.0?download=true
inline.NumInlined: 1838
inline.NumDeleted: 1082
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvCsibhcYuwTAtB_13typst_realize15finish_grouping:bb.a

.lr.ph660:                                        ; preds = %.preheader413.preheader, %.preheader413
  %i.qb = phi ptr [ %i.qa, %.preheader413 ], [ %.sroa.0.0.copyload16.i155, %.preheader413.preheader ] ; 2 uses
  %.val2.i.i.i244 = load i128, ptr %i.qb, align 16, !alias.scope !2659, !noalias !2660, !noundef !11
  %i.qc = icmp eq i128 %.val2.i.i.i244, %i.il
  br i1 %i.qc, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread, label %.preheader413

.lr.ph.i.i246:                                    ; preds = %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread341, %.lr.ph.i.i246
  %.sroa.01.017.i.i247 = phi i64 [ %i.qj, %.lr.ph.i.i246 ], [ %.sroa.7.0.copyload15.i156, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread341 ] ; 2 uses
  %.sroa.05.016.i.i248 = phi i64 [ %i.qi, %.lr.ph.i.i246 ], [ 0, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread341 ] ; 2 uses
  %i.qd = lshr i64 %.sroa.01.017.i.i247, 1        ; 2 uses
  %i.qe = add nuw nsw i64 %i.qd, %.sroa.05.016.i.i248 ; 3 uses
  %i.qf = icmp ult i64 %i.qe, %.sroa.7.0.copyload15.i156
  tail call void @llvm.assume(i1 %i.qf)
  %i.qg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload16.i155, i64 %i.qe
  %.val12.i.i249 = load i128, ptr %i.qg, align 16, !alias.scope !2661, !noalias !2662, !noundef !11
  %i.qh = icmp ugt i128 %.val12.i.i249, %i.il
  %i.qi = select i1 %i.qh, i64 %.sroa.05.016.i.i248, i64 %i.qe, !unpredictable !11 ; 2 uses
  %i.qj = sub nuw nsw i64 %.sroa.01.017.i.i247, %i.qd ; 2 uses
  %i.qk = icmp ugt i64 %i.qj, 1
  br i1 %i.qk, label %.lr.ph.i.i246, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit252

_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit252: ; preds = %.lr.ph.i.i246
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload16.i155, i64 %i.qi
  %.val14.i.i251 = load i128, ptr %i.ql, align 16, !alias.scope !2661, !noalias !2662, !noundef !11
  %i.qm = icmp eq i128 %.val14.i.i251, %i.il
  br i1 %i.qm, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit252.thread344

_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit252.thread344: ; preds = %.preheader413, %.preheader413.preheader, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit252, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread
  %.sroa.0.2 = phi i64 [ %i.hx, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread ], [ %.sroa.0.1398, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit252 ], [ %.sroa.0.1398, %.preheader413.preheader ], [ %.sroa.0.1398, %.preheader413 ] ; 2 uses
  %i.qn = icmp eq ptr %i.hh, %i.hu
  br i1 %i.qn, label %.thread.loopexit, label %bb.bm

_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread: ; preds = %.lr.ph658, %.lr.ph660, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit252, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242
  br label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit252.thread344
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvCsibhcYuwTAtB_13typst_realize16visit_show_rules(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 10 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 10 uses
  %i.e = alloca [72 x i8], align 8                ; 12 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 16               ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 16               ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [72 x i8], align 8                ; 18 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.641.i = alloca [29 x i8], align 1        ; 5 uses
  %i.t = alloca [96 x i8], align 16               ; 16 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [16 x i8], align 16               ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 4 uses
  %i.ac = alloca [16 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 12 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [16 x i8], align 8               ; 15 uses
  %i.ai = alloca [24 x i8], align 8               ; 13 uses
  %i.aj = alloca [16 x i8], align 8               ; 15 uses
  %i.ak = alloca [24 x i8], align 8               ; 9 uses
  %i.al = alloca [24 x i8], align 8               ; 19 uses
  %.sroa.4102 = alloca [47 x i8], align 1         ; 3 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [32 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [48 x i8], align 16              ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [48 x i8], align 16              ; 14 uses
  %i.au = alloca [48 x i8], align 16              ; 11 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [24 x i8], align 8               ; 8 uses
  %i.ax = alloca [24 x i8], align 8               ; 7 uses
  %i.ay = alloca [32 x i8], align 8               ; 8 uses
  %i.az = alloca [16 x i8], align 8               ; 5 uses
  %i.ba = alloca [24 x i8], align 8               ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 4 uses
  %i.bc = alloca [32 x i8], align 8               ; 6 uses
  %i.bd = alloca [64 x i8], align 16              ; 6 uses
  %i.be = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.3 = alloca [7 x i8], align 1             ; 3 uses
  %.sroa.629 = alloca [72 x i8], align 8          ; 3 uses
  %i.bf = alloca [96 x i8], align 16              ; 35 uses
  %i.bg = alloca [24 x i8], align 8               ; 45 uses
  %i.bh = alloca [16 x i8], align 8               ; 18 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2786)
  %i.bk = tail call noundef zeroext i1 @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB2_7Content11is_prepared(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2), !noalias !2787 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2788
  store ptr inttoptr (i64 16 to ptr), ptr %i.aj, align 8, !noalias !2788
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 6 uses
  store i64 0, ptr %i.bl, align 8, !noalias !2788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2788
  %.sroa.0.0.sroa.gep.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %.sroa.0.0.sroa.gep61.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  br i1 %i.bk, label %.outer.split.us.us.split.preheader.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bm = load ptr, ptr %.sroa.0.0.sroa.gep.i, align 8, !alias.scope !2785, !noalias !2787, !nonnull !11, !align !13, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2788
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) @13, i64 16, i1 false), !noalias !2788
  %i.bn = invoke noundef zeroext i1 @_RNvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7elementNtB2_7Element11can_type_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %i.bm, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.af)
          to label %bb.y unwind label %.thread107.i, !noalias !2789 ; 6 uses

.outer.preheader.i:                               ; preds = %bb.ag, %bb.af, %bb.y
  %.sroa.0.0.sroa.phi71.ph.i = phi ptr [ %.sroa.0.0.sroa.gep61.i, %bb.af ], [ %.sroa.0.0.sroa.gep61.i, %bb.ag ], [ %.sroa.0.0.sroa.gep.i, %bb.y ]
  %.sroa.0.0.ph.i = phi ptr [ %i.ai, %bb.af ], [ %i.ai, %bb.ag ], [ %2, %bb.y ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2788
  store i64 0, ptr %i.ah, align 8, !noalias !2788
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.bo, align 8, !noalias !2788
  %.sroa.9.16.copyload326.i = load ptr, ptr %i.al, align 8, !alias.scope !2786, !noalias !2790
  %.sroa.12.16..sroa_idx327.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.12.16.copyload328.i = load i64, ptr %.sroa.12.16..sroa_idx327.i, align 8, !alias.scope !2786, !noalias !2790
  %.sroa.14.16..sroa_idx329.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.14.16.copyload330.i = load ptr, ptr %.sroa.14.16..sroa_idx329.i, align 8, !alias.scope !2786, !noalias !2790
  br label %bb.ah

.outer.split.us.us.split.preheader.i:             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2788
  store i64 0, ptr %i.ah, align 8, !noalias !2788
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.bp, align 8, !noalias !2788
  %.sroa.9.16.copyload.i = load ptr, ptr %i.al, align 8, !alias.scope !2786, !noalias !2790
  %.sroa.12.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.12.16.copyload.i = load i64, ptr %.sroa.12.16..sroa_idx.i, align 8, !alias.scope !2786, !noalias !2790
  %.sroa.14.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.14.16.copyload.i = load ptr, ptr %.sroa.14.16..sroa_idx.i, align 8, !alias.scope !2786, !noalias !2790
  br label %.outer.split.us.us.split.i

.outer.split.us.us.split.i:                       ; preds = %.outer.split.us.us.split.i.backedge, %.outer.split.us.us.split.preheader.i
  %.sroa.15.0.us.us.i = phi i64 [ 0, %.outer.split.us.us.split.preheader.i ], [ %i.bz, %.outer.split.us.us.split.i.backedge ] ; 2 uses
  %.sroa.14.0.us.us.i = phi ptr [ %.sroa.14.16.copyload.i, %.outer.split.us.us.split.preheader.i ], [ %.sroa.14.2.us.us.i, %.outer.split.us.us.split.i.backedge ]
  %.sroa.12.0.us.us.i = phi i64 [ %.sroa.12.16.copyload.i, %.outer.split.us.us.split.preheader.i ], [ %.sroa.12.2.us.us.i, %.outer.split.us.us.split.i.backedge ]
  %.sroa.9.0.us.us.i = phi ptr [ %.sroa.9.16.copyload.i, %.outer.split.us.us.split.preheader.i ], [ %.sroa.9.2.us.us.i, %.outer.split.us.us.split.i.backedge ] ; 2 uses
  %.sroa.5.0.us.us.i = phi ptr [ inttoptr (i64 16 to ptr), %.outer.split.us.us.split.preheader.i ], [ %i.bt, %.outer.split.us.us.split.i.backedge ]
  %.sroa.099.0.us.us.i = phi ptr [ inttoptr (i64 16 to ptr), %.outer.split.us.us.split.preheader.i ], [ %.sroa.099.2.us.us.i, %.outer.split.us.us.split.i.backedge ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.loopexit9.i.i.i.i.us.us.i, %.outer.split.us.us.split.i
  %.sroa.14.1.us.us.i = phi ptr [ %.sroa.14.0.us.us.i, %.outer.split.us.us.split.i ], [ %.sroa.14.2.us.us.i, %.loopexit9.i.i.i.i.us.us.i ] ; 2 uses
  %.sroa.12.1.us.us.i = phi i64 [ %.sroa.12.0.us.us.i, %.outer.split.us.us.split.i ], [ %.sroa.12.2.us.us.i, %.loopexit9.i.i.i.i.us.us.i ] ; 2 uses
  %.sroa.9.1.us.us.i = phi ptr [ %.sroa.9.0.us.us.i, %.outer.split.us.us.split.i ], [ %.sroa.9.2.us.us.i, %.loopexit9.i.i.i.i.us.us.i ]
  %.sroa.099.1.us.us.i = phi ptr [ %.sroa.099.0.us.us.i, %.outer.split.us.us.split.i ], [ %.sroa.099.2.us.us.i, %.loopexit9.i.i.i.i.us.us.i ]
  %.sroa.08.0.i19.i.i.i.i.us.us.i = phi ptr [ %.sroa.9.0.us.us.i, %.outer.split.us.us.split.i ], [ %.sroa.08.0.i18.i.i.i.i.us.us.i, %.loopexit9.i.i.i.i.us.us.i ] ; 2 uses
  %.sroa.08.025.i14.i.i.i.i.us.us.i = phi ptr [ %.sroa.099.0.us.us.i, %.outer.split.us.us.split.i ], [ %.sroa.08.025.i13.i.i.i.i.us.us.i, %.loopexit9.i.i.i.i.us.us.i ] ; 2 uses
  %i.bq = phi ptr [ %.sroa.5.0.us.us.i, %.outer.split.us.us.split.i ], [ %i.bt, %.loopexit9.i.i.i.i.us.us.i ] ; 2 uses
  %i.br = icmp eq ptr %.sroa.08.025.i14.i.i.i.i.us.us.i, %i.bq
  br i1 %i.br, label %.lr.ph.i.i.i.i.i.us.us.i, label %.loopexit9.i.i.i.i.us.us.i

.lr.ph.i.i.i.i.i.us.us.i:                         ; preds = %bb.c, %bb.f
  %.sroa.14.3.us.us.i = phi ptr [ %.sroa.510.i.i.i.i.i.sroa.4.0.us.us.i, %bb.f ], [ %.sroa.14.1.us.us.i, %bb.c ] ; 4 uses
  %.sroa.12.3.us.us.i = phi i64 [ %.sroa.510.i.i.i.i.i.sroa.0.0.us.us.i, %bb.f ], [ %.sroa.12.1.us.us.i, %bb.c ] ; 2 uses
  %.sroa.08.025.i.i.i.i.i.us.us.i = phi ptr [ %.sroa.08.0.i.i.i.i.i.us.us.i, %bb.f ], [ %.sroa.08.0.i19.i.i.i.i.us.us.i, %bb.c ] ; 4 uses
  %.not.i.i.i.i.i.us.us.i = icmp eq ptr %.sroa.08.025.i.i.i.i.i.us.us.i, null
  br i1 %.not.i.i.i.i.i.us.us.i, label %.split.us.thread.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.us.us.i
  %.not17.i.i.i.i.i.us.us.i = icmp eq ptr %.sroa.14.3.us.us.i, null
  br i1 %.not17.i.i.i.i.i.us.us.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.013.0.copyload.i.i.i.i.i.us.us.i = load ptr, ptr %.sroa.14.3.us.us.i, align 8, !noalias !2791
  %.sroa.414.0..sroa_idx.i.i.i.i.i.us.us.i = getelementptr inbounds nuw i8, ptr %.sroa.14.3.us.us.i, i64 8
  %.sroa.510.i.i.i.i.i.sroa.0.0.copyload.us.us.i = load i64, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i.us.us.i, align 8, !noalias !2791
  %.sroa.510.i.i.i.i.i.sroa.4.0..sroa.414.0..sroa_idx.i.i.i.i.i.sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %.sroa.14.3.us.us.i, i64 16
  %.sroa.510.i.i.i.i.i.sroa.4.0.copyload.us.us.i = load ptr, ptr %.sroa.510.i.i.i.i.i.sroa.4.0..sroa.414.0..sroa_idx.i.i.i.i.i.sroa_idx.us.us.i, align 8, !noalias !2791
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.510.i.i.i.i.i.sroa.4.0.us.us.i = phi ptr [ undef, %bb.d ], [ %.sroa.510.i.i.i.i.i.sroa.4.0.copyload.us.us.i, %bb.e ] ; 2 uses
  %.sroa.510.i.i.i.i.i.sroa.0.0.us.us.i = phi i64 [ undef, %bb.d ], [ %.sroa.510.i.i.i.i.i.sroa.0.0.copyload.us.us.i, %bb.e ] ; 2 uses
  %.sroa.08.0.i.i.i.i.i.us.us.i = phi ptr [ null, %bb.d ], [ %.sroa.013.0.copyload.i.i.i.i.i.us.us.i, %bb.e ] ; 3 uses
  %i.bs = icmp eq i64 %.sroa.12.3.us.us.i, 0
  br i1 %i.bs, label %.lr.ph.i.i.i.i.i.us.us.i, label %.loopexit9.i.i.i.i.loopexit.us.us.i

.loopexit9.i.i.i.i.us.us.i:                       ; preds = %.loopexit9.i.i.i.i.loopexit.us.us.i, %bb.c
  %.sroa.14.2.us.us.i = phi ptr [ %.sroa.14.1.us.us.i, %bb.c ], [ %.sroa.510.i.i.i.i.i.sroa.4.0.us.us.i, %.loopexit9.i.i.i.i.loopexit.us.us.i ] ; 2 uses
  %.sroa.12.2.us.us.i = phi i64 [ %.sroa.12.1.us.us.i, %bb.c ], [ %.sroa.510.i.i.i.i.i.sroa.0.0.us.us.i, %.loopexit9.i.i.i.i.loopexit.us.us.i ] ; 2 uses
  %.sroa.9.2.us.us.i = phi ptr [ %.sroa.9.1.us.us.i, %bb.c ], [ %.sroa.08.0.i.i.i.i.i.us.us.i, %.loopexit9.i.i.i.i.loopexit.us.us.i ] ; 2 uses
  %.sroa.099.2.us.us.i = phi ptr [ %.sroa.099.1.us.us.i, %bb.c ], [ %.sroa.08.025.i.i.i.i.i.us.us.i, %.loopexit9.i.i.i.i.loopexit.us.us.i ] ; 2 uses
  %.sroa.08.0.i18.i.i.i.i.us.us.i = phi ptr [ %.sroa.08.0.i19.i.i.i.i.us.us.i, %bb.c ], [ %.sroa.08.0.i.i.i.i.i.us.us.i, %.loopexit9.i.i.i.i.loopexit.us.us.i ]
  %.sroa.08.025.i13.i.i.i.i.us.us.i = phi ptr [ %.sroa.08.025.i14.i.i.i.i.us.us.i, %bb.c ], [ %.sroa.08.025.i.i.i.i.i.us.us.i, %.loopexit9.i.i.i.i.loopexit.us.us.i ]
  %.lcssa.i.i.i.i.i.us.us.i = phi ptr [ %i.bq, %bb.c ], [ %4, %.loopexit9.i.i.i.i.loopexit.us.us.i ] ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.us.us.i, i64 -128 ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.us.us.i, i64 -112
  %i.bv = load i64, ptr %i.bu, align 16, !range !23, !noalias !2792, !noundef !11 ; 2 uses
  %i.bw = icmp ne i64 %i.bv, 4
  call void @llvm.assume(i1 %i.bw)
  %i.bx = icmp samesign ugt i64 %i.bv, 2
  br i1 %i.bx, label %bb.c, label %bb.g

bb.g:                                             ; preds = %.loopexit9.i.i.i.i.us.us.i
  %i.by = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.us.us.i, i64 -112 ; 2 uses
  %i.bz = add i64 %.sroa.15.0.us.us.i, 1
  %i.ca = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.us.us.i, i64 -80 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 16, !range !25, !noalias !2789, !noundef !11
  %.not77.us.us.i = icmp eq i64 %i.cb, -1
  br i1 %.not77.us.us.i, label %.outer.split.us.us.split.i.backedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2788
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !2790
  %i.cc = invoke noundef zeroext i1 @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations8selectorNtB2_8Selector7matches(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ca, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ad)
          to label %bb.i unwind label %.loopexit.split.us.split.us.split.i, !noalias !2789

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2788
  br i1 %i.cc, label %bb.j, label %.outer.split.us.us.split.i.backedge

bb.j:                                             ; preds = %bb.i
  %i.cd = load i64, ptr %i.by, align 16, !range !26, !noalias !2789, !noundef !11
  %i.ce = icmp eq i64 %i.cd, 2
  br i1 %i.ce, label %.outer.split.us.us.split.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = load i64, ptr %i.ah, align 8, !range !26, !noalias !2788, !noundef !11
  switch i64 %i.cf, label %.unreachabledefault [
    i64 0, label %bb.l
    i64 1, label %bb.m
    i64 2, label %.split195.us.i
  ], !prof !2793

bb.l:                                             ; preds = %bb.k
  %i.cg = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtNtCs3oUPovFnLWP_4core4cell4lazyINtB2_8LazyCelljNCNvCsibhcYuwTAtB_13typst_realize7verdict0E11really_initBT_(ptr noundef nonnull align 8 %i.ah)
          to label %bb.m unwind label %.loopexit.split.us.split.us.split.i, !noalias !2789

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sroa.022.0.us.us.i = phi ptr [ %i.bp, %bb.k ], [ %i.cg, %bb.l ]
  %i.ch = load i64, ptr %.sroa.022.0.us.us.i, align 8, !noundef !11
  %i.ci = sub i64 %i.ch, %.sroa.15.0.us.us.i      ; 2 uses
  %i.cj = invoke noundef zeroext i1 @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB2_7Content10is_guarded(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i64 noundef %i.ci)
          to label %bb.n unwind label %.loopexit.split.us.split.us.split.i, !noalias !2789

bb.n:                                             ; preds = %bb.m
  br i1 %i.cj, label %.outer.split.us.us.split.i.backedge, label %.thread474

.outer.split.us.us.split.i.backedge:              ; preds = %bb.n, %bb.j, %bb.i, %bb.g
  br label %.outer.split.us.us.split.i

.thread474:                                       ; preds = %bb.n
  %i.ck = load ptr, ptr %i.aj, align 8, !noalias !2788, !nonnull !11, !noundef !11
  %i.cl = load i64, ptr %i.bl, align 8, !noalias !2788, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store ptr %i.ck, ptr %i.bh, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  store i64 %i.cl, ptr %i.cm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  store ptr %2, ptr %i.cn, align 8
  store ptr null, ptr %i.bg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i8 2, ptr %i.bf, align 16
  br label %bb.de

.loopexit9.i.i.i.i.loopexit.us.us.i:              ; preds = %bb.f
  %.idx.i.i.i.i.i.le.us.us.i = shl nuw nsw i64 %.sroa.12.3.us.us.i, 7
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i.i.i.i.i.us.us.i, i64 %.idx.i.i.i.i.i.le.us.us.i
  br label %.loopexit9.i.i.i.i.us.us.i

.loopexit.split.us.split.us.split.i:              ; preds = %bb.m, %bb.l, %bb.h
  %lpad.loopexit.us.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread135.i

.unreachabledefault:                              ; preds = %bb.k
  unreachable

default.unreachable:                              ; preds = %bb.ar
  unreachable

.outer.i.split.us:                                ; preds = %bb.aw, %.outer.i.split.us.backedge
  %.sroa.14.1.i.us = phi ptr [ %.sroa.14.2.i.us, %.outer.i.split.us.backedge ], [ %.sroa.14.2.i, %bb.aw ] ; 2 uses
  %.sroa.12.1.i.us = phi i64 [ %.sroa.12.2.i.us, %.outer.i.split.us.backedge ], [ %.sroa.12.2.i, %bb.aw ] ; 2 uses
  %.sroa.9.1.i.us = phi ptr [ %.sroa.9.2.i.us, %.outer.i.split.us.backedge ], [ %.sroa.9.2.i, %bb.aw ]
  %.sroa.099.1.i.us = phi ptr [ %.sroa.099.2.i.us, %.outer.i.split.us.backedge ], [ %.sroa.099.2.i, %bb.aw ]
  %.sroa.08.0.i19.i.i.i.i.i.us = phi ptr [ %.sroa.08.0.i19.i.i.i.i.i.us.be, %.outer.i.split.us.backedge ], [ %.sroa.9.2.i, %bb.aw ] ; 2 uses
  %.sroa.08.025.i14.i.i.i.i.i.us = phi ptr [ %.sroa.08.025.i14.i.i.i.i.i.us.be, %.outer.i.split.us.backedge ], [ %.sroa.099.2.i, %bb.aw ] ; 2 uses
  %i.co = phi ptr [ %i.cu, %.outer.i.split.us.backedge ], [ %i.dx, %bb.aw ] ; 2 uses
  %i.cp = icmp eq ptr %.sroa.08.025.i14.i.i.i.i.i.us, %i.co
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i.i.us, label %.loopexit9.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.us:                            ; preds = %.outer.i.split.us, %bb.q
  %.sroa.14.3.i.us = phi ptr [ %.sroa.510.i.i.i.i.i.sroa.4.0.i.us, %bb.q ], [ %.sroa.14.1.i.us, %.outer.i.split.us ] ; 4 uses
  %.sroa.12.3.i.us = phi i64 [ %.sroa.510.i.i.i.i.i.sroa.0.0.i.us, %bb.q ], [ %.sroa.12.1.i.us, %.outer.i.split.us ] ; 2 uses
  %.sroa.08.025.i.i.i.i.i.i.us = phi ptr [ %.sroa.08.0.i.i.i.i.i.i.us, %bb.q ], [ %.sroa.08.0.i19.i.i.i.i.i.us, %.outer.i.split.us ] ; 4 uses
  %.not.i.i.i.i.i.i.us = icmp eq ptr %.sroa.08.025.i.i.i.i.i.i.us, null
  br i1 %.not.i.i.i.i.i.i.us, label %.split.us.i.thread, label %bb.o

.split.us.i.thread:                               ; preds = %.lr.ph.i.i.i.i.i.i.us
  %i.cq = load ptr, ptr %i.aj, align 8, !noalias !2788, !nonnull !11, !noundef !11 ; 2 uses
  %i.cr = load i64, ptr %i.bl, align 8, !noalias !2788, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2788
  br i1 %i.bn, label %.split468, label %bb.bp

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.us
  %.not17.i.i.i.i.i.i.us = icmp eq ptr %.sroa.14.3.i.us, null
  br i1 %.not17.i.i.i.i.i.i.us, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.013.0.copyload.i.i.i.i.i.i.us = load ptr, ptr %.sroa.14.3.i.us, align 8, !noalias !2791
  %.sroa.414.0..sroa_idx.i.i.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %.sroa.14.3.i.us, i64 8
  %.sroa.510.i.i.i.i.i.sroa.0.0.copyload.i.us = load i64, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i.i.us, align 8, !noalias !2791
  %.sroa.510.i.i.i.i.i.sroa.4.0..sroa.414.0..sroa_idx.i.i.i.i.i.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.14.3.i.us, i64 16
  %.sroa.510.i.i.i.i.i.sroa.4.0.copyload.i.us = load ptr, ptr %.sroa.510.i.i.i.i.i.sroa.4.0..sroa.414.0..sroa_idx.i.i.i.i.i.sroa_idx.i.us, align 8, !noalias !2791
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.510.i.i.i.i.i.sroa.4.0.i.us = phi ptr [ undef, %bb.o ], [ %.sroa.510.i.i.i.i.i.sroa.4.0.copyload.i.us, %bb.p ] ; 2 uses
  %.sroa.510.i.i.i.i.i.sroa.0.0.i.us = phi i64 [ undef, %bb.o ], [ %.sroa.510.i.i.i.i.i.sroa.0.0.copyload.i.us, %bb.p ] ; 2 uses
  %.sroa.08.0.i.i.i.i.i.i.us = phi ptr [ null, %bb.o ], [ %.sroa.013.0.copyload.i.i.i.i.i.i.us, %bb.p ] ; 3 uses
  %i.cs = icmp eq i64 %.sroa.12.3.i.us, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i.i.us, label %.loopexit9.i.i.i.i.loopexit.i.us

.loopexit9.i.i.i.i.loopexit.i.us:                 ; preds = %bb.q
  %.idx.i.i.i.i.i.le.i.us = shl nuw nsw i64 %.sroa.12.3.i.us, 7
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i.i.i.i.i.i.us, i64 %.idx.i.i.i.i.i.le.i.us
  br label %.loopexit9.i.i.i.i.i.us

.loopexit9.i.i.i.i.i.us:                          ; preds = %.loopexit9.i.i.i.i.loopexit.i.us, %.outer.i.split.us
  %.sroa.14.2.i.us = phi ptr [ %.sroa.14.1.i.us, %.outer.i.split.us ], [ %.sroa.510.i.i.i.i.i.sroa.4.0.i.us, %.loopexit9.i.i.i.i.loopexit.i.us ]
  %.sroa.12.2.i.us = phi i64 [ %.sroa.12.1.i.us, %.outer.i.split.us ], [ %.sroa.510.i.i.i.i.i.sroa.0.0.i.us, %.loopexit9.i.i.i.i.loopexit.i.us ]
  %.sroa.9.2.i.us = phi ptr [ %.sroa.9.1.i.us, %.outer.i.split.us ], [ %.sroa.08.0.i.i.i.i.i.i.us, %.loopexit9.i.i.i.i.loopexit.i.us ] ; 5 uses
  %.sroa.099.2.i.us = phi ptr [ %.sroa.099.1.i.us, %.outer.i.split.us ], [ %.sroa.08.025.i.i.i.i.i.i.us, %.loopexit9.i.i.i.i.loopexit.i.us ] ; 5 uses
  %.sroa.08.0.i18.i.i.i.i.i.us = phi ptr [ %.sroa.08.0.i19.i.i.i.i.i.us, %.outer.i.split.us ], [ %.sroa.08.0.i.i.i.i.i.i.us, %.loopexit9.i.i.i.i.loopexit.i.us ]
  %.sroa.08.025.i13.i.i.i.i.i.us = phi ptr [ %.sroa.08.025.i14.i.i.i.i.i.us, %.outer.i.split.us ], [ %.sroa.08.025.i.i.i.i.i.i.us, %.loopexit9.i.i.i.i.loopexit.i.us ]
  %.lcssa.i.i.i.i.i.i.us = phi ptr [ %i.co, %.outer.i.split.us ], [ %i.ct, %.loopexit9.i.i.i.i.loopexit.i.us ] ; 6 uses
  %i.cu = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.us, i64 -128
  %i.cv = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.us, i64 -112
  %i.cw = load i64, ptr %i.cv, align 16, !range !23, !noalias !2792, !noundef !11 ; 2 uses
  %i.cx = icmp ne i64 %i.cw, 4
  call void @llvm.assume(i1 %i.cx)
  %i.cy = icmp samesign ugt i64 %i.cw, 2
  br i1 %i.cy, label %.outer.i.split.us.backedge, label %bb.r

.outer.i.split.us.backedge:                       ; preds = %.loopexit9.i.i.i.i.i.us, %bb.u, %bb.x, %bb.t, %bb.r
  %.sroa.08.0.i19.i.i.i.i.i.us.be = phi ptr [ %.sroa.08.0.i18.i.i.i.i.i.us, %.loopexit9.i.i.i.i.i.us ], [ %.sroa.9.2.i.us, %bb.r ], [ %.sroa.9.2.i.us, %bb.u ], [ %.sroa.9.2.i.us, %bb.x ], [ %.sroa.9.2.i.us, %bb.t ]
  %.sroa.08.025.i14.i.i.i.i.i.us.be = phi ptr [ %.sroa.08.025.i13.i.i.i.i.i.us, %.loopexit9.i.i.i.i.i.us ], [ %.sroa.099.2.i.us, %bb.r ], [ %.sroa.099.2.i.us, %bb.u ], [ %.sroa.099.2.i.us, %bb.x ], [ %.sroa.099.2.i.us, %bb.t ]
  br label %.outer.i.split.us

bb.r:                                             ; preds = %.loopexit9.i.i.i.i.i.us
  %i.cz = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.us, i64 -112
  %i.da = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.us, i64 -80 ; 2 uses
  %i.db = load i64, ptr %i.da, align 16, !range !25, !noalias !2789, !noundef !11
  %.not77.i.us = icmp eq i64 %i.db, -1
  br i1 %.not77.i.us, label %.outer.i.split.us.backedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2788
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !2790
  %i.dc = invoke noundef zeroext i1 @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations8selectorNtB2_8Selector7matches(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0.ph.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ad)
          to label %bb.t unwind label %.loopexit.i.split.us, !noalias !2789

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2788
  br i1 %i.dc, label %bb.u, label %.outer.i.split.us.backedge

bb.u:                                             ; preds = %bb.t
  %i.dd = load i64, ptr %i.cz, align 16, !range !26, !noalias !2789, !noundef !11
  %i.de = icmp eq i64 %i.dd, 2
  br i1 %i.de, label %bb.v, label %.outer.i.split.us.backedge

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.us, i64 -104
  %.val86.i.us = load ptr, ptr %i.df, align 8, !noalias !2789, !nonnull !11, !noundef !11 ; 4 uses
  %i.dg = getelementptr i8, ptr %.lcssa.i.i.i.i.i.i.us, i64 -96
  %.val87.i.us = load i64, ptr %i.dg, align 16, !noalias !2789 ; 2 uses
  %.not.i.i.i.us = icmp eq ptr %.val86.i.us, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.us, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = getelementptr inbounds i8, ptr %.val86.i.us, i64 -16
  %i.di = atomicrmw add ptr %i.dh, i64 1 monotonic, align 8, !noalias !2789
  %i.dj = icmp slt i64 %i.di, 0
  br i1 %i.dj, label %.split326.us, label %bb.x, !prof !12

bb.x:                                             ; preds = %bb.w, %bb.v
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB2_6Styles5apply(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull %.val86.i.us, i64 noundef %.val87.i.us)
          to label %.outer.i.split.us.backedge unwind label %.loopexit.i.split.us, !noalias !2789

.loopexit.i.split.us:                             ; preds = %bb.x, %bb.s
  %lpad.loopexit.i.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.thread.i:                                        ; preds = %bb.ag, %bb.ad, %bb.ac, %bb.aa
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.thread107.i:                                     ; preds = %bb.z, %bb.b
  %lpad.thr_comm105.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread135.i

.loopexit.split-lp.i:                             ; preds = %bb.bk, %bb.bi, %bb.bg, %bb.be, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtB8_7target_10TargetElemKh0_ECsibhcYuwTAtB_13typst_realize.exit.i, %bb.ay, %bb.ax, %.split.us.thread.i, %.split195.us.i, %.split326.us
  %.sroa.046.0335.i = phi i1 [ %.sroa.046.0336.i, %.split195.us.i ], [ %.sroa.046.0331352.i, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtB8_7target_10TargetElemKh0_ECsibhcYuwTAtB_13typst_realize.exit.i ], [ %.sroa.046.0331352.i, %bb.be ], [ %.sroa.046.0331352.i, %bb.bg ], [ %.sroa.046.0331352.i, %bb.bi ], [ %.sroa.046.0331352.i, %bb.bk ], [ %i.bn, %.split326.us ], [ %.sroa.046.0331352.i, %.split.us.thread.i ], [ %.sroa.046.0331352.i, %bb.ax ], [ %.sroa.046.0331352.i, %bb.ay ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.sroa.046.0335.i, label %bb.bn, label %.thread135.i

.loopexit.i.split:                                ; preds = %bb.av, %bb.au, %bb.at, %bb.an
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.split.us, %.loopexit.i.split
  %.us-phi324 = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i.split ], [ %lpad.loopexit.i.us, %.loopexit.i.split.us ] ; 2 uses
  br i1 %i.bn, label %bb.bn, label %.thread135.i

bb.y:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2788
  br i1 %i.bn, label %bb.z, label %.outer.preheader.i

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2788
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.aa unwind label %.thread107.i, !noalias !2789

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !noalias !2788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2788
  call void @llvm.experimental.noalias.scope.decl(metadata !2794)
  %i.dk = load ptr, ptr %.sroa.0.0.sroa.gep61.i, align 8, !alias.scope !2794, !noalias !2788, !nonnull !11, !align !13, !noundef !11
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 152
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !2795, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @13, i64 16, i1 false), !noalias !2796
  %i.dn = invoke noundef ptr %i.dm(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.y)
          to label %bb.ab unwind label %.thread.i, !noalias !2789, !inline_history !2680 ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2796
  %.not.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i, label %bb.ad, label %bb.ac, !prof !12

bb.ac:                                            ; preds = %bb.ab
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !invariant.load !11, !noalias !2789, !nonnull !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2788
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !2790
  %i.dq = invoke { ptr, i64 } %i.dp(ptr noundef nonnull %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.bj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ae)
          to label %bb.af unwind label %.thread.i, !noalias !2789 ; 2 uses

bb.ad:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #30
          to label %bb.ae unwind label %.thread.i, !noalias !2789

bb.ae:                                            ; preds = %.split195.us.i, %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2788
  %i.dr = extractvalue { ptr, i64 } %i.dq, 0      ; 2 uses
  %.not75.i = icmp eq ptr %i.dr, null
  br i1 %.not75.i, label %.outer.preheader.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ds = extractvalue { ptr, i64 } %i.dq, 1
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECsibhcYuwTAtB_13typst_realize(ptr nonnull %i.dr, i64 %i.ds)
end_hunk_0
