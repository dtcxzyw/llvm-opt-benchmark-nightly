Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/bfrop_base_macro_backers?download=true
inline.NumInlined: 556
inline.NumDeleted: 143
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 43
begin_hunk_0_@pmix_bfrops_base_tma_argv_split_inter:bb.a

pmix_bfrops_base_tma_argv_append_nosize.exit61:   ; preds = %bb.h
  %i.ao = getelementptr i8, ptr %i.am, i64 8
  store ptr null, ptr %i.ao, align 8, !tbaa !42
  br label %.backedge

bb.i:                                             ; preds = %.critedge2
  %i.ap = icmp ugt i64 %i.f, 511
  br i1 %i.ap, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.aq = add i64 %.024, 2
  %i.ar = tail call noalias noundef ptr @malloc(i64 noundef %i.aq) #41 ; 6 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %.012.i = phi i64 [ %i.av, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.0811.i = phi ptr [ %i.ax, %bb.k ], [ %i.ar, %bb.j ] ; 3 uses
  %.0910.i = phi ptr [ %i.aw, %bb.k ], [ %.04029103, %bb.j ] ; 2 uses
  %i.at = load i8, ptr %.0910.i, align 1, !tbaa !36 ; 2 uses
  store i8 %i.at, ptr %.0811.i, align 1, !tbaa !36
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %pmix_strncpy.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.av = add nuw i64 %.012.i, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i, i64 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.0811.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.012.i, %.024
  br i1 %exitcond.not.i, label %pmix_strncpy.exit, label %.lr.ph.i, !llvm.loop !0

pmix_strncpy.exit:                                ; preds = %.lr.ph.i, %bb.k
  %.08.lcssa.i = phi ptr [ %i.ax, %bb.k ], [ %.0811.i, %.lr.ph.i ]
  store i8 0, ptr %.08.lcssa.i, align 1, !tbaa !36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f
  store i8 0, ptr %i.ay, align 1, !tbaa !36
  %i.az = icmp eq ptr %.0528104, null
  br i1 %i.az, label %bb.l, label %.preheader.i.i62

bb.l:                                             ; preds = %pmix_strncpy.exit
  %calloc.i72 = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 2 uses
  %i.ba = icmp eq ptr %calloc.i72, null
  br i1 %i.ba, label %bb.n, label %bb.m

.preheader.i.i62:                                 ; preds = %pmix_strncpy.exit
  %i.bb = load ptr, ptr %.0528104, align 8, !tbaa !42
  %.not1.i.i63 = icmp eq ptr %i.bb, null
  br i1 %.not1.i.i63, label %pmix_bfrops_base_tma_argv_count.exit.i68, label %.lr.ph.i.i64

.lr.ph.i.i64:                                     ; preds = %.preheader.i.i62, %.lr.ph.i.i64
  %.03.i.i65 = phi i32 [ %i.bc, %.lr.ph.i.i64 ], [ 0, %.preheader.i.i62 ]
  %.062.i.i66 = phi ptr [ %i.bd, %.lr.ph.i.i64 ], [ %.0528104, %.preheader.i.i62 ]
  %i.bc = add nuw nsw i32 %.03.i.i65, 1           ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.062.i.i66, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !42
  %.not.i.i67 = icmp eq ptr %i.be, null
  br i1 %.not.i.i67, label %pmix_bfrops_base_tma_argv_count.exit.i68, label %.lr.ph.i.i64, !llvm.loop !2

pmix_bfrops_base_tma_argv_count.exit.i68:         ; preds = %.lr.ph.i.i64, %.preheader.i.i62
  %.07.i.i69 = phi i32 [ 0, %.preheader.i.i62 ], [ %i.bc, %.lr.ph.i.i64 ] ; 2 uses
  %i.bf = add nsw i32 %.07.i.i69, 2
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 3
  %i.bi = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.0528104, i64 noundef %i.bh) #39 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %pmix_bfrops_base_tma_argv_count.exit.i68
  %.6 = phi ptr [ %i.bi, %pmix_bfrops_base_tma_argv_count.exit.i68 ], [ %calloc.i72, %bb.l ] ; 2 uses
  %.0.i70 = phi i32 [ %.07.i.i69, %pmix_bfrops_base_tma_argv_count.exit.i68 ], [ 0, %bb.l ]
  %i.bk = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.ar) #40 ; 2 uses
  %i.bl = sext i32 %.0.i70 to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %.6, i64 %i.bl ; 2 uses
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !42
  %i.bn = icmp eq ptr %i.bk, null
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.l, %pmix_bfrops_base_tma_argv_count.exit.i68, %bb.m
  tail call void @free(ptr noundef nonnull %i.ar) #40
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bo = getelementptr i8, ptr %i.bm, i64 8
  store ptr null, ptr %i.bo, align 8, !tbaa !42
  tail call void @free(ptr noundef nonnull %i.ar) #40
  br label %bb.t

bb.p:                                             ; preds = %bb.i
  %.not.i74 = icmp eq i64 %i.f, 0
  br i1 %.not.i74, label %pmix_strncpy.exit81, label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %bb.p, %bb.q
  %.012.i76 = phi i64 [ %i.br, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %.0811.i77 = phi ptr [ %i.bt, %bb.q ], [ %i.a, %bb.p ] ; 3 uses
  %.0910.i78 = phi ptr [ %i.bs, %bb.q ], [ %.04029103, %bb.p ] ; 2 uses
  %i.bp = load i8, ptr %.0910.i78, align 1, !tbaa !36 ; 2 uses
  store i8 %i.bp, ptr %.0811.i77, align 1, !tbaa !36
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %pmix_strncpy.exit81, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i75
  %i.br = add nuw nsw i64 %.012.i76, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.0910.i78, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i77, i64 1 ; 2 uses
  %exitcond.not.i79 = icmp eq i64 %.012.i76, %.024
  br i1 %exitcond.not.i79, label %pmix_strncpy.exit81, label %.lr.ph.i75, !llvm.loop !0

pmix_strncpy.exit81:                              ; preds = %.lr.ph.i75, %bb.q, %bb.p
  %.08.lcssa.i80 = phi ptr [ %i.a, %bb.p ], [ %.0811.i77, %.lr.ph.i75 ], [ %i.bt, %bb.q ]
  store i8 0, ptr %.08.lcssa.i80, align 1, !tbaa !36
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  store i8 0, ptr %i.bu, align 1, !tbaa !36
  %i.bv = icmp eq ptr %.0528104, null
  br i1 %i.bv, label %bb.r, label %.preheader.i.i82

bb.r:                                             ; preds = %pmix_strncpy.exit81
  %calloc.i92 = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 2 uses
  %i.bw = icmp eq ptr %calloc.i92, null
  br i1 %i.bw, label %.critedge, label %bb.s

.preheader.i.i82:                                 ; preds = %pmix_strncpy.exit81
  %i.bx = load ptr, ptr %.0528104, align 8, !tbaa !42
  %.not1.i.i83 = icmp eq ptr %i.bx, null
  br i1 %.not1.i.i83, label %pmix_bfrops_base_tma_argv_count.exit.i88, label %.lr.ph.i.i84

.lr.ph.i.i84:                                     ; preds = %.preheader.i.i82, %.lr.ph.i.i84
  %.03.i.i85 = phi i32 [ %i.by, %.lr.ph.i.i84 ], [ 0, %.preheader.i.i82 ]
  %.062.i.i86 = phi ptr [ %i.bz, %.lr.ph.i.i84 ], [ %.0528104, %.preheader.i.i82 ]
  %i.by = add nuw nsw i32 %.03.i.i85, 1           ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.062.i.i86, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !42
  %.not.i.i87 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i87, label %pmix_bfrops_base_tma_argv_count.exit.i88, label %.lr.ph.i.i84, !llvm.loop !2

pmix_bfrops_base_tma_argv_count.exit.i88:         ; preds = %.lr.ph.i.i84, %.preheader.i.i82
  %.07.i.i89 = phi i32 [ 0, %.preheader.i.i82 ], [ %i.by, %.lr.ph.i.i84 ] ; 2 uses
  %i.cb = add nsw i32 %.07.i.i89, 2
  %i.cc = sext i32 %i.cb to i64
  %i.cd = shl nsw i64 %i.cc, 3
  %i.ce = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.0528104, i64 noundef %i.cd) #39 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r, %pmix_bfrops_base_tma_argv_count.exit.i88
  %.8 = phi ptr [ %i.ce, %pmix_bfrops_base_tma_argv_count.exit.i88 ], [ %calloc.i92, %bb.r ] ; 2 uses
  %.0.i90 = phi i32 [ %.07.i.i89, %pmix_bfrops_base_tma_argv_count.exit.i88 ], [ 0, %bb.r ]
  %i.cg = call noalias ptr @strdup(ptr noundef nonnull readonly %i.a) #40 ; 2 uses
  %i.ch = sext i32 %.0.i90 to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %.8, i64 %i.ch ; 2 uses
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !42
  %i.cj = icmp eq ptr %i.cg, null
  br i1 %i.cj, label %.critedge, label %pmix_bfrops_base_tma_argv_append_nosize.exit93

pmix_bfrops_base_tma_argv_append_nosize.exit93:   ; preds = %bb.s
  %i.ck = getelementptr i8, ptr %i.ci, i64 8
  store ptr null, ptr %i.ck, align 8, !tbaa !42
  br label %bb.t

bb.t:                                             ; preds = %pmix_bfrops_base_tma_argv_append_nosize.exit93, %bb.o
  %.10 = phi ptr [ %.6, %bb.o ], [ %.8, %pmix_bfrops_base_tma_argv_append_nosize.exit93 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.03823, i64 2
  br label %.backedge

.critedge:                                        ; preds = %bb.s, %pmix_bfrops_base_tma_argv_count.exit.i88, %bb.r, %bb.h, %pmix_bfrops_base_tma_argv_count.exit.i56, %bb.g, %bb.d, %pmix_bfrops_base_tma_argv_count.exit.i, %bb.c, %.backedge, %bb.j, %.lr.ph30.preheader, %bb.a, %bb.n
  %.039 = phi ptr [ null, %bb.n ], [ null, %bb.a ], [ null, %.lr.ph30.preheader ], [ null, %bb.j ], [ null, %bb.h ], [ null, %bb.d ], [ %.05.be, %.backedge ], [ null, %bb.c ], [ null, %pmix_bfrops_base_tma_argv_count.exit.i ], [ null, %bb.g ], [ null, %pmix_bfrops_base_tma_argv_count.exit.i56 ], [ null, %bb.r ], [ null, %pmix_bfrops_base_tma_argv_count.exit.i88 ], [ null, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret ptr %.039
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define ptr @PMIx_Argv_split_with_empty(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc ptr @pmix_bfrops_base_tma_argv_split_inter(ptr noundef readonly %0, i32 noundef %1, i1 noundef zeroext true)
  ret ptr %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define ptr @PMIx_Argv_split(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc ptr @pmix_bfrops_base_tma_argv_split_inter(ptr noundef readonly %0, i32 noundef %1, i1 noundef zeroext false)
  ret ptr %i.a
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define noundef ptr @PMIx_Argv_join(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !42     ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %.preheader.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call noalias dereferenceable_or_null(1) ptr @strdup(ptr noundef nonnull @.str.1) #40
  br label %pmix_bfrops_base_tma_argv_join.exit

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.0272.i = phi i64 [ %i.h, %.preheader.i ], [ 0, %bb.b ]
  %.0291.i = phi ptr [ %i.i, %.preheader.i ], [ %0, %bb.b ]
  %i.e = phi ptr [ %.pr.i, %.preheader.i ], [ %i.b, %bb.b ]
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #38
  %i.g = add i64 %i.f, %.0272.i                   ; 7 uses
  %i.h = add i64 %i.g, 1                          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0291.i, i64 8 ; 2 uses
  %.pr.i = load ptr, ptr %i.i, align 8, !tbaa !42 ; 2 uses
  %.not.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i, label %bb.d, label %.preheader.i, !llvm.loop !153

bb.d:                                             ; preds = %.preheader.i
  %i.j = tail call noalias noundef ptr @malloc(i64 noundef %i.h) #41 ; 12 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %pmix_bfrops_base_tma_argv_join.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  store i8 0, ptr %i.l, align 1, !tbaa !36
  %.not6.i = icmp eq i64 %i.g, 0
  br i1 %.not6.i, label %pmix_bfrops_base_tma_argv_join.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.m = trunc i32 %1 to i8                       ; 3 uses
  %xtraiter = and i64 %i.g, 1
  %i.n = icmp eq i64 %i.g, 1
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.g, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %.lr.ph.i.new
  %.05.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ad, %bb.l ] ; 4 uses
  %.0284.i = phi ptr [ %i.b, %.lr.ph.i.new ], [ %.1.i.1, %bb.l ] ; 2 uses
  %.1303.i = phi ptr [ %0, %.lr.ph.i.new ], [ %.2.i.1, %bb.l ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.l ]
  %i.o = load i8, ptr %.0284.i, align 1, !tbaa !36 ; 2 uses
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %.05.i
  store i8 %i.m, ptr %i.q, align 1, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %.1303.i, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.0284.i, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.05.i
  store i8 %i.o, ptr %i.u, align 1, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2.i = phi ptr [ %i.r, %bb.g ], [ %.1303.i, %bb.h ] ; 2 uses
  %.1.i = phi ptr [ %i.s, %bb.g ], [ %i.t, %bb.h ] ; 2 uses
  %i.v = or disjoint i64 %.05.i, 1                ; 2 uses
  %i.w = load i8, ptr %.1.i, align 1, !tbaa !36   ; 2 uses
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.v
  store i8 %i.w, ptr %i.z, align 1, !tbaa !36
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.v
  store i8 %i.m, ptr %i.aa, align 1, !tbaa !36
  %i.ab = getelementptr inbounds nuw i8, ptr %.2.i, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2.i.1 = phi ptr [ %i.ab, %bb.k ], [ %.2.i, %bb.j ]
  %.1.i.1 = phi ptr [ %i.ac, %bb.k ], [ %i.y, %bb.j ] ; 2 uses
  %i.ad = add nuw i64 %.05.i, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %pmix_bfrops_base_tma_argv_join.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !154

pmix_bfrops_base_tma_argv_join.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %pmix_bfrops_base_tma_argv_join.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %pmix_bfrops_base_tma_argv_join.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.05.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ad, %pmix_bfrops_base_tma_argv_join.exit.loopexit.unr-lcssa ] ; 2 uses
  %.0284.i.epil.init = phi ptr [ %i.b, %.lr.ph.i ], [ %.1.i.1, %pmix_bfrops_base_tma_argv_join.exit.loopexit.unr-lcssa ]
  %lcmp.mod12 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.ae = load i8, ptr %.0284.i.epil.init, align 1, !tbaa !36 ; 2 uses
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.epil.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 %.05.i.epil.init
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !36
  br label %pmix_bfrops_base_tma_argv_join.exit

bb.n:                                             ; preds = %.epil.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 %.05.i.epil.init
  store i8 %i.m, ptr %i.ah, align 1, !tbaa !36
  br label %pmix_bfrops_base_tma_argv_join.exit

pmix_bfrops_base_tma_argv_join.exit:              ; preds = %pmix_bfrops_base_tma_argv_join.exit.loopexit.unr-lcssa, %bb.n, %bb.m, %bb.c, %bb.d, %bb.e
  %.031.i = phi ptr [ %i.d, %bb.c ], [ null, %bb.d ], [ %i.j, %bb.e ], [ %i.j, %bb.m ], [ %i.j, %bb.n ], [ %i.j, %pmix_bfrops_base_tma_argv_join.exit.loopexit.unr-lcssa ]
  ret ptr %.031.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @PMIx_Argv_copy(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %pmix_bfrops_base_tma_argv_copy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #41 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !42
  %i.c = load ptr, ptr %0, align 8, !tbaa !42     ; 2 uses
  %.not12.i = icmp eq ptr %i.c, null
  br i1 %.not12.i, label %pmix_bfrops_base_tma_argv_copy.exit, label %.preheader.i.i.i

.preheader.i.ithread-pre-split.i:                 ; preds = %bb.d
  %.pr.i = load ptr, ptr %i.l, align 8, !tbaa !42
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b, %.preheader.i.ithread-pre-split.i
  %i.d = phi ptr [ %.pr.i, %.preheader.i.ithread-pre-split.i ], [ null, %bb.b ]
  %i.e = phi ptr [ %i.x, %.preheader.i.ithread-pre-split.i ], [ %i.c, %bb.b ]
  %.0814.i = phi ptr [ %i.w, %.preheader.i.ithread-pre-split.i ], [ %0, %bb.b ]
  %.0313.i = phi ptr [ %i.l, %.preheader.i.ithread-pre-split.i ], [ %i.b, %bb.b ] ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not1.i.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.03.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i ], [ 0, %.preheader.i.i.i ]
  %.062.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %.0313.i, %.preheader.i.i.i ]
  %i.f = add nuw nsw i32 %.03.i.i.i, 1            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.062.i.i.i, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2

pmix_bfrops_base_tma_argv_count.exit.i.i:         ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  %.07.i.i.i = phi i32 [ 0, %.preheader.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 2 uses
  %i.i = add nsw i32 %.07.i.i.i, 2
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 3
  %i.l = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.0313.i, i64 noundef %i.k) #39 ; 8 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %pmix_bfrops_base_tma_argv_copy.exit, label %bb.c

bb.c:                                             ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i
  %i.n = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.e) #40 ; 2 uses
  %i.o = sext i32 %.07.i.i.i to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.o ; 2 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !42
  %i.q = icmp eq ptr %i.n, null
  br i1 %i.q, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %bb.c
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !42   ; 2 uses
  %.not101.i.i = icmp eq ptr %i.r, null
  br i1 %.not101.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  tail call void @free(ptr noundef nonnull %i.l) #40
  br label %pmix_bfrops_base_tma_argv_copy.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.s = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.r, %.preheader.i.i ]
  %.02.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.l, %.preheader.i.i ]
  tail call void @free(ptr noundef nonnull %i.s) #40
  %i.t = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.u, null
  br i1 %.not10.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !3

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.p, i64 8
  store ptr null, ptr %i.v, align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %.0814.i, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %pmix_bfrops_base_tma_argv_copy.exit, label %.preheader.i.ithread-pre-split.i, !llvm.loop !4

pmix_bfrops_base_tma_argv_copy.exit:              ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i, %bb.d, %bb.a, %bb.b, %._crit_edge.i.i
  %.1.i = phi ptr [ null, %bb.a ], [ null, %._crit_edge.i.i ], [ %i.b, %bb.b ], [ null, %pmix_bfrops_base_tma_argv_count.exit.i.i ], [ %i.l, %bb.d ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define range(i32 -29, 1) i32 @PMIx_Setenv(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = icmp eq ptr %3, null
  br i1 %i.c, label %pmix_bfrops_base_tma_setenv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !45
  %i.e = load ptr, ptr @environ, align 8, !tbaa !45
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %1, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @unsetenv(ptr noundef %0) #40 ; 0 uses
  br label %pmix_bfrops_base_tma_setenv.exit

bb.e:                                             ; preds = %bb.c
  %i.i = zext i1 %2 to i32
  %i.j = tail call i32 @setenv(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.i) #40 ; 0 uses
  br label %pmix_bfrops_base_tma_setenv.exit

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store ptr null, ptr %i.a, align 8, !tbaa !42
  %i.k = icmp eq ptr %1, null
  br i1 %i.k, label %bb.g, label %bb.h

end_hunk_0
